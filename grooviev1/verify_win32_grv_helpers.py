#!/usr/bin/env python3
"""Isolated retail Win32 GRV sequence/PRNG checks (pip install unicorn pefile).
Build disassembly/v32tng first. No game execution or real timer is modeled.
"""

from pathlib import Path
import struct
import pefile
from unicorn import Uc, UC_ARCH_X86, UC_MODE_32, UC_HOOK_CODE
from unicorn.x86_const import *

ROOT = Path(__file__).resolve().parents[1]
pe = pefile.PE(str(ROOT / "disassembly/v32tng/build/v32tng-rebuilt.exe"))
u = Uc(UC_ARCH_X86, UC_MODE_32)
u.mem_map(0x400000, 0x100000)
u.mem_write(0x400000, pe.get_memory_mapped_image())
SCRIPT, BANK, STACK, STOP = 0x480000, 0x481000, 0x4F0000, 0x4FFFF0
checks = 0


def dword(addr, value):
    u.mem_write(addr, struct.pack("<I", value & 0xFFFFFFFF))


def read32(addr):
    return struct.unpack("<I", u.mem_read(addr, 4))[0]


def run(entry, args=(), count=20000):
    global checks
    for reg in (
        UC_X86_REG_EAX,
        UC_X86_REG_EBX,
        UC_X86_REG_ECX,
        UC_X86_REG_EDX,
        UC_X86_REG_ESI,
        UC_X86_REG_EDI,
        UC_X86_REG_EBP,
    ):
        u.reg_write(reg, 0)
    u.reg_write(UC_X86_REG_ESP, STACK)
    u.reg_write(UC_X86_REG_EFLAGS, 2)
    u.mem_write(STACK, struct.pack("<" + "I" * (len(args) + 1), STOP, *args))
    u.emu_start(entry, STOP, count=count)
    checks += 1
    assert u.reg_read(UC_X86_REG_EIP) == STOP, hex(entry)
    return u.reg_read(UC_X86_REG_EAX)


def decode(encoded, expected):
    dword(0x41F284, SCRIPT)
    dword(0x41F300, 0)
    dword(0x41F2B8, BANK)
    u.mem_write(SCRIPT, encoded)
    assert run(0x4015E6) & 255 == expected
    assert read32(0x41F300) == len(encoded)


bank = bytes((i * 29 + 7) % 256 for i in range(1024))
u.mem_write(BANK, bank)
for terminal in (0, 0x80):
    for value in range(10):
        decode(bytes([0x30 + value + terminal]), value)
    for variable in range(26):
        decode(bytes([0x23, 0x61 + variable + terminal]), bank[variable])
    for row in range(10):
        for col in range(10):
            decode(
                bytes([0x7C, 0x30 + row, 0x30 + col + terminal]),
                bank[0x19 + row * 10 + col],
            )
u.mem_write(BANK, b"\x03\x06")
decode(b"|#a#\xe2", bank[0x19 + 36])
# Value operand helper dereferences the index; index reader returns the index.
for short in (0, 1):
    dword(0x41F300, 0)
    u.mem_write(SCRIPT, b"\xfe\x01")
    index = 254 if short else 510
    assert run(0x40179B, (short,)) & 255 == bank[index]
    assert read32(0x41F300) == (1 if short else 2)


# Translate the observed 16-bit stores, including intermediate carry handling.
# Do not silently truncate to eight bits: the Windows port retains word state.
def advance(state):
    a, b, c = state if any(state) else (0xE6, 0x1C, 0x0C)
    carry = 0
    for _ in range(16):
        x = a
        old = x & 1
        x = (x // 2 + carry) & 65535
        carry = x & 1
        x = (x // 2 + (old << 7)) & 65535
        old = x & 1
        x = (x // 2 + (carry << 7)) & 65535
        carry = (x ^ b) & 1
        old = c & 128
        c = (2 * c + carry) & 65535
        carry = b & 128
        b = (2 * b + (old >> 7)) & 65535
        old = a & 1
        a = (2 * a + (carry >> 7)) & 65535
        carry = old
    return (a, b, c), (a << 8) | b


for seed in (0, 1, 0x123456, 0xFFFFFF, 0x12345678, 0x80000000):
    run(0x406AB0, (seed,))
    state = tuple((seed >> shift) & 255 for shift in (0, 8, 16))
    assert (
        tuple(
            struct.unpack("<H", u.mem_read(addr, 2))[0]
            for addr in (0x41F4C0, 0x41F4C4, 0x41F4C8)
        )
        == state
    )
    for _ in range(64):
        state, result = advance(state)
        actual = run(0x406B14)
        assert actual == result, (
            hex(seed),
            state,
            hex(actual),
            hex(result),
            [
                struct.unpack("<H", u.mem_read(addr, 2))[0]
                for addr in (0x41F4C0, 0x41F4C4, 0x41F4C8)
            ],
        )
        assert (
            tuple(
                struct.unpack("<H", u.mem_read(addr, 2))[0]
                for addr in (0x41F4C0, 0x41F4C4, 0x41F4C8)
            )
            == state
        )

# Feed every possible low random byte into the original range-reduction code.
forced = 0
clock = 0
sleeps = 0


def hooks(cpu, addr, size, _):
    global clock, sleeps
    if addr == 0x406B14:
        cpu.reg_write(UC_X86_REG_EAX, forced)
        sp = cpu.reg_read(UC_X86_REG_ESP)
        cpu.reg_write(UC_X86_REG_EIP, read32(sp))
        cpu.reg_write(UC_X86_REG_ESP, sp + 4)
    elif addr in (0x4015C3, 0x4015D7):
        cpu.reg_write(UC_X86_REG_EAX, clock)
        cpu.reg_write(UC_X86_REG_EIP, addr + size)
    elif addr == 0x4015D1:
        sp = cpu.reg_read(UC_X86_REG_ESP)
        assert read32(sp) == 1
        cpu.reg_write(UC_X86_REG_ESP, sp + 4)
        cpu.reg_write(UC_X86_REG_EIP, addr + size)
        sleeps += 1
        clock = (clock + 1) & 0xFFFFFFFF


hook = u.hook_add(UC_HOOK_CODE, hooks)
u.ctl_flush_tb()
for forced in range(256):
    for limit in (1, 2, 3, 5, 17, 255, 256):
        actual = run(0x401572, (limit,))
        assert actual == (forced & 1 if limit == 1 else forced % limit), (
            forced,
            limit,
            actual,
        )
# Delay is a do/while with an unsigned absolute deadline, not wrap-safe elapsed time.
for initial, duration, expected_sleeps in [
    (100, 0, 1),
    (100, 5, 5),
    (0xFFFFFFFE, 5, 1),
]:
    clock, sleeps = initial, 0
    run(0x4015BF, (duration,))
    assert sleeps == expected_sleeps, (initial, duration, sleeps)
u.hook_del(hook)
# State export preserves all 16 bits of each word and writes through three pointers.
for state in ((0, 0, 0), (0x1234, 0x5678, 0x9ABC), (65535, 65535, 65535)):
    for addr, value in zip((0x41F4C0, 0x41F4C4, 0x41F4C8), state):
        u.mem_write(addr, struct.pack("<H", value))
    run(0x406AE9, (BANK, BANK + 2, BANK + 4))
    assert struct.unpack("<HHH", u.mem_read(BANK, 6)) == state
# All valid head/tail combinations: full queue rejects without changing storage.
for head in range(64):
    for tail in range(64):
        u.mem_write(0x41F4B8, bytes([head]))
        u.mem_write(0x41F4BC, bytes([tail]))
        u.mem_write(0x41F478, b"\x55" * 64)
        full = (tail + 1) % 64 == head
        assert run(0x406A48, (0x1234,)) & 255 == (255 if full else 0)
        assert u.mem_read(0x41F4BC, 1)[0] == (tail if full else (tail + 1) % 64)
        expected = bytearray(b"\x55" * 64)
        if not full:
            expected[tail] = 0x34
        assert u.mem_read(0x41F478, 64) == expected
# Resource-cache behavior: use counters (not timestamps), 1-based public handles.
FLAGS = 0x490000
dword(0x422448, FLAGS)
freed = []


def free_hook(cpu, addr, size, _):
    if addr == 0x40C9A0:
        sp = cpu.reg_read(UC_X86_REG_ESP)
        freed.append(read32(sp + 4))
        cpu.reg_write(UC_X86_REG_EIP, read32(sp))
        cpu.reg_write(UC_X86_REG_ESP, sp + 4)


u.hook_add(UC_HOOK_CODE, free_hook)
u.ctl_flush_tb()
for frequencies, sizes, requested, result, removed in [
    ([1, 9], [8, 8], 4, 0xFFFFFFFF, []),  # slot zero selected: historical failure
    ([9, 1], [8, 8], 4, 1, [1]),
    ([0, 3, 2], [0, 4, 8], 12, 1, [2, 1]),
    ([9, 1], [8, 4], 12, 0xFFFFFFFF, [1]),  # partial eviction before failure
    ([9, 1], [8, 8], 0, 1, [1]),  # zero requested still evicts one block
]:
    freed.clear()
    dword(0x420A04, len(sizes))
    u.mem_write(FLAGS, b"\x01" * 256)
    for i, (frequency, size) in enumerate(zip(frequencies, sizes)):
        u.mem_write(
            0x41F5F8 + 20 * i,
            struct.pack("<IIIII", 0x480000 + 256 * i, frequency, 100 + i, 0, size),
        )
    assert run(0x40A29F, (requested,)) == result
    assert freed == [0x480000 + 256 * i for i in removed]
    for i, size in enumerate(sizes):
        assert read32(0x41F608 + 20 * i) == (0 if i in removed else size)
        assert u.mem_read(FLAGS + 100 + i, 1)[0] == (0 if i in removed else 1)
# Getter increments the use count, including 32-bit wraparound.
dword(0x420A04, 1)
u.mem_write(0x41F5F8, struct.pack("<IIIII", 0x480321, 0xFFFFFFFF, 123, 0, 8))
assert run(0x40A39F, (1,)) == 0x480321
assert read32(0x41F5FC) == 0
u.mem_write(FLAGS + 123, b"\x7f")
run(0x409F0A, (123,))
assert u.mem_read(FLAGS + 123, 1) == b"\0"
print(f"Win32 GRV/input/cache helpers: {checks} machine-code cases passed")
