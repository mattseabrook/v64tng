#!/usr/bin/env python3
"""Run retail stream/cache code with controlled allocation and mmio hooks.
Requires unicorn and pefile. Copies/memset execute original machine code.
Normal SEH paths only: exceptions, real files, and real audio are not modeled.
"""

from pathlib import Path
import struct
import pefile
from unicorn import Uc, UC_ARCH_X86, UC_MODE_32, UC_HOOK_CODE
from unicorn.x86_const import *

ROOT = Path(__file__).resolve().parents[1]
p = pefile.PE(str(ROOT / "disassembly/v32tng/build/v32tng-rebuilt.exe"))
u = Uc(UC_ARCH_X86, UC_MODE_32)
u.mem_map(0, 0x1000)
u.mem_map(0x400000, 0x400000)
u.mem_write(0x400000, p.get_memory_mapped_image())
STACK, STOP, RING, CACHE, FLAGS = 0x4F0000, 0x4FFFF0, 0x500000, 0x540000, 0x580000
checks = 0
reads = []
seeks = []
freed = []
background = 0
heap = 0x600000
fail_alloc = 0
read_result = None


def put(addr, value):
    u.mem_write(addr, struct.pack("<I", value & 0xFFFFFFFF))


def get(addr):
    return struct.unpack("<I", u.mem_read(addr, 4))[0]


def ret(value=0, args=0):
    sp = u.reg_read(UC_X86_REG_ESP)
    u.reg_write(UC_X86_REG_EAX, value & 0xFFFFFFFF)
    u.reg_write(UC_X86_REG_EIP, get(sp))
    u.reg_write(UC_X86_REG_ESP, sp + 4 + args)


def hooks(cpu, addr, size, _):
    global heap, background, fail_alloc
    sp = cpu.reg_read(UC_X86_REG_ESP)
    if addr == 0x40CDC0:
        length = get(sp + 4)
        if fail_alloc:
            fail_alloc -= 1
            ret(0)
        else:
            result = heap
            heap += (length + 4095) & ~4095
            ret(result)
    elif addr == 0x40C9A0:
        freed.append(get(sp + 4))
        ret()
    elif addr == 0x7F0000:
        handle, dst, length = struct.unpack("<III", u.mem_read(sp + 4, 12))
        reads.append((handle, dst, length))
        actual = length if read_result is None else min(length, read_result)
        u.mem_write(dst, b"\x69" * actual)
        ret(actual, 12)
    elif addr == 0x7F0010:
        args = struct.unpack("<III", u.mem_read(sp + 4, 12))
        seeks.append(args)
        ret(args[1], 12)
    elif addr == 0x7F0020:
        background += 1
        ret()


u.hook_add(UC_HOOK_CODE, hooks)
put(0x424594, 0x7F0000)
put(0x42459C, 0x7F0010)
put(0x42461C, 0x7F0020)


def run(entry, args=()):
    global checks
    u.reg_write(UC_X86_REG_ESP, STACK)
    u.reg_write(UC_X86_REG_EBP, 0)
    u.reg_write(UC_X86_REG_EFLAGS, 2)
    u.mem_write(STACK, struct.pack("<" + "I" * (len(args) + 1), STOP, *args))
    put(0, 0x12345678)
    u.emu_start(entry, STOP, count=2000000)
    assert u.reg_read(UC_X86_REG_EIP) == STOP, hex(entry)
    assert get(0) == 0x12345678, "SEH chain not restored"
    checks += 1
    return u.reg_read(UC_X86_REG_EAX)


def setup():
    global heap, background, fail_alloc, read_result
    read_result = None
    reads.clear()
    seeks.clear()
    freed.clear()
    background = 0
    heap = 0x600000
    fail_alloc = 0
    put(0x41F5F4, RING)
    put(0x420A00, RING + 0x20000)
    put(0x422448, FLAGS)
    put(0x420A04, 0)
    put(0x421422, 0)
    u.mem_write(0x41F5F8, b"\0" * (256 * 20))
    u.mem_write(RING, b"\x55" * 0x30000)
    u.mem_write(FLAGS, b"\x01" * 0x10000)


setup()
run(0x409A90)
assert get(0x41F5F4) == 0x600000 and get(0x420A00) == 0x620000

# The real copy routine is destination-first and handles both overlap directions.
for n in (0, 1, 2, 3, 4, 7, 31, 32, 33, 129):
    for src, dst in ((CACHE, CACHE + 7), (CACHE + 7, CACHE), (CACHE + 1, CACHE + 3)):
        original = bytes(range(256))
        u.mem_write(CACHE, original)
        want = bytearray(original)
        want[dst - CACHE : dst - CACHE + n] = original[src - CACHE : src - CACHE + n]
        assert run(0x40CA10, (dst, src, n)) == dst
        assert u.mem_read(CACHE, 256) == want
for alignment in range(4):
    for n in (0, 1, 3, 4, 31, 129):
        u.mem_write(CACHE, b"\x55" * 256)
        assert run(0x40D470, (CACHE + alignment, 0x1AB, n)) == CACHE + alignment
        assert u.mem_read(CACHE + alignment, n) == b"\xab" * n

# Opcode 22h snapshots display into saved band; 37h restores the opposite way.
DISPLAY, SAVED = 0x600000, 0x650000
put(0x42133C, DISPLAY)
put(0x4212D0, SAVED)
u.mem_write(DISPLAY, b"\x31" * 0x4B000)
u.mem_write(SAVED, b"\x72" * 0x32000)
run(0x40A786)
assert u.mem_read(SAVED, 0x32000) == b"\x31" * 0x32000
assert u.mem_read(DISPLAY, 0x4B000) == b"\x31" * 0x4B000
u.mem_write(SAVED, b"\x72" * 0x32000)
run(0x40A7AA, (3, 80, 7, 81))
for y in (80, 81):
    assert u.mem_read(DISPLAY + y * 640 + 3, 4) == b"\x72" * 4
assert u.mem_read(DISPLAY + 80 * 640 + 2, 1) == b"\x31"
assert u.mem_read(SAVED, 0x32000) == b"\x72" * 0x32000

# Direct prefetch chooses min(resource_size,16KiB); size zero defaults to128KiB.
for length in (0, 1, 0x3FFF, 0x4000, 0x10000):
    setup()
    put(0x42238C, length)
    run(0x409B1D, (0xABC, 0))
    expected = min(length or 0x20000, 0x4000)
    assert reads == [(0xABC, RING, expected)]
    assert get(0x41F5E8) == 0 and get(0x41F5F0) == expected
    assert get(0x420A10) == expected
    if expected < 0x4000:
        assert u.mem_read(RING + expected, 0x20000 - expected) == b"\xff" * (
            0x20000 - expected
        )

# Cached prefix skips16 bytes. A mode flag can defer the continuation seek.
for mode in (0, 2):
    setup()
    put(0x42238C, 0x20000)
    put(0x420A04, 1)
    put(0x421422, mode)
    u.mem_write(CACHE, b"\x38" * 16 + b"\x47" * 0xFFF0)
    u.mem_write(0x41F5F8, struct.pack("<IIIII", CACHE, 2, 7, 0x123456, 0x10000))
    run(0x409B1D, (0xABC, 1))
    assert u.mem_read(RING, 0xFFF0) == b"\x47" * 0xFFF0
    assert get(0x41F5FC) == 3 and not reads
    if mode:
        assert not seeks and get(0x41F5EC) == 1 and get(0x420A08) == 0
        run(0x409D1E)
        assert get(0x41F5EC) == 0 and get(0x420A08) == 1
    assert seeks == [(0xABC, 0x123456, 0)]
    run(0x409D55)
    assert get(0x420A08) == 0

# Consume across the ring end: copy wrapped prefix into the64KiB spill area.
for cursor, length in ((0, 16), (0x1FFF0, 16), (0x1FFF0, 32), (0x20000, 8)):
    setup()
    u.mem_write(RING, b"\x33" * 0x20000)
    put(0x41F5E8, cursor)
    put(0x420A10, 0x10000)
    put(0x420A14, 0)
    assert run(0x409E85, (length,)) == RING + cursor
    end = cursor + length
    assert get(0x41F5E8) == (end - 0x20000 if end > 0x20000 else end)
    assert get(0x420A10) == 0x10000 - length and get(0x420A14) == 1
    assert u.mem_read(RING + cursor, length) == b"\x33" * length

# Service reads at most16KiB and always uses requested count, not mmio result.
for enabled, available, reader, writer, want, services in [
    (0, 0, 0, 0, 0, 1),
    (1, 0x20000, 0, 0, 0, 1),
    (1, 0, 0x1000, 0, 0, 0),
    (1, 0, 0x5000, 0, 0x4000, 1),
    (1, 0, 0x100, 0x1FFF0, 16, 1),
]:
    setup()
    put(0x420A08, enabled)
    put(0x420A10, available)
    put(0x41F5E8, reader)
    put(0x41F5F0, writer)
    put(0x4209FC, 0xABC)
    run(0x409D64)
    assert reads == ([(0xABC, RING + writer, want)] if want else [])
    assert background == services
    assert get(0x420A10) == available + want

# Cache insertion caches at most64KiB, records continuation, and accepts slot0.
for length in (32, 0xFFFF, 0x10000, 0x20000):
    setup()
    put(0x42238C, length)
    assert run(0x409F1A, (0xABC, 123, 0x100000)) == 1
    ptr, use, resource, continuation, size = struct.unpack(
        "<IIIII", u.mem_read(0x41F5F8, 20)
    )
    assert (use, resource, continuation, size) == (
        1,
        123,
        0 if length < 0x10000 else 0x110000,
        min(length, 0x10000),
    )
    assert reads == [(0xABC, ptr, min(length, 0x10000))]
# Full table can evict slot0 (unlike the separate explicit eviction helper).
setup()
put(0x42238C, 32)
put(0x420A04, 256)
for i in range(256):
    u.mem_write(
        0x41F5F8 + 20 * i, struct.pack("<IIIII", CACHE + 16 * i, i + 1, i, 0, 8)
    )
assert run(0x409F1A, (0xABC, 123, 0)) == 1
assert freed == [CACHE] and u.mem_read(FLAGS, 1) == b"\0"
# First failed allocation with no existing blocks returns -1.
setup()
put(0x42238C, 32)
fail_alloc = 1
assert run(0x409F1A, (0xABC, 123, 0)) == 0xFFFFFFFF and not reads
# Allocation failure with an existing block evicts it and retries successfully.
setup()
put(0x42238C, 32)
put(0x420A04, 1)
fail_alloc = 1
u.mem_write(0x41F5F8, struct.pack("<IIIII", CACHE, 5, 7, 0, 8))
assert run(0x409F1A, (0xABC, 123, 0)) == 1 and freed == [CACHE]
# A failed/empty read is nevertheless accounted as the requested length.
setup()
read_result = 0
put(0x420A08, 1)
put(0x420A10, 0)
put(0x41F5E8, 0x5000)
put(0x41F5F0, 0)
put(0x4209FC, 0xABC)
run(0x409D64)
assert get(0x420A10) == 0x4000 and u.mem_read(RING, 16) == b"\x55" * 16
# Slot255 returns handle256; the actual caller narrows it to a zero byte.
setup()
put(0x42238C, 32)
put(0x420A04, 255)
for i in range(255):
    u.mem_write(0x41F5F8 + 20 * i, struct.pack("<IIIII", CACHE + 16 * i, 1, i, 0, 8))
assert run(0x409F1A, (0xABC, 123, 0)) == 256
u.reg_write(UC_X86_REG_EBP, STACK)
put(STACK + 8, 123)
put(STACK - 0x110, 256)
u.emu_start(0x401E9D, 0x401EBB, count=100)
assert u.mem_read(FLAGS + 123, 1) == b"\0"
checks += 1
# Destruction frees every nonnull slot, flag array, and ring, but leaves pointers.
setup()
put(0x41F5F8, CACHE)
put(0x41F5F8 + 255 * 20, CACHE + 16)
run(0x409AB6)
assert freed == [CACHE, CACHE + 16, FLAGS, RING] and get(0x41F5F8) == CACHE
print(f"Win32 resource stream/cache: {checks} machine-code scenarios passed")
