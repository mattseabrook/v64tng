#!/usr/bin/env python3
"""Check newly identified native helpers; models GDI calls, not Windows display.
Requires unicorn and pefile. Both canonical NASM rebuilds must exist.
"""
from pathlib import Path
import random
import struct
import pefile
from unicorn import Uc, UC_ARCH_X86, UC_MODE_16, UC_MODE_32, UC_HOOK_CODE
from unicorn.x86_const import *

ROOT = Path(__file__).resolve().parents[1]
image = (ROOT / 'disassembly/V/build/V130-rebuilt-unpacked.exe').read_bytes()
header = struct.unpack_from('<H', image, 8)[0] * 16
dos = Uc(UC_ARCH_X86, UC_MODE_16)
dos.mem_map(0, 0x200000)
dos.mem_write(0, image[header:])
pe = pefile.PE(str(ROOT / 'disassembly/v32tng/build/v32tng-rebuilt.exe'), fast_load=True)
win = Uc(UC_ARCH_X86, UC_MODE_32)
win.mem_map(0x400000, 0x400000)
win.mem_write(0x400000, pe.get_memory_mapped_image())
STOP, STACK, SRC, DST, OBJ, PAL = 0x7FF000, 0x7FE000, 0x600000, 0x610000, 0x660000, 0x661000
calls = []
checks = 0


def put(address, value):
    win.mem_write(address, struct.pack('<I', value & 0xFFFFFFFF))


def get(address):
    return struct.unpack('<I', win.mem_read(address, 4))[0]


apis = {0x4244EC: ('GetDC', 1, 10), 0x4244F0: ('ReleaseDC', 2, 1),
        0x424374: ('CreateCompatibleDC', 1, 20), 0x424370: ('SelectObject', 2, 30),
        0x4243A0: ('BitBlt', 9, 1), 0x4243A4: ('DeleteDC', 1, 1),
        0x42436C: ('SetDIBColorTable', 4, 256), 0x424388: ('DeleteObject', 1, 1)}
traps = {}
for i, (iat, spec) in enumerate(apis.items()):
    address = 0x7F0000 + i * 16
    put(iat, address)
    traps[address] = spec


def hook(cpu, address, size, _):
    if address == STOP:
        cpu.emu_stop()
    elif address == 0x40C9A0 or address in traps:
        name, count, result = ('free', 1, 0) if address == 0x40C9A0 else traps[address]
        sp = cpu.reg_read(UC_X86_REG_ESP)
        args = list(struct.unpack('<' + 'I' * count, cpu.mem_read(sp + 4, count * 4)))
        if name == 'SetDIBColorTable':
            args.append(bytes(cpu.mem_read(args[3], args[2] * 4)))
        calls.append((name, args))
        cpu.reg_write(UC_X86_REG_EAX, result)
        cpu.reg_write(UC_X86_REG_EIP, get(sp))
        cpu.reg_write(UC_X86_REG_ESP, sp + 4 + (0 if name == 'free' else count * 4))


win.hook_add(UC_HOOK_CODE, hook)


def run(entry, args=(), ecx=0):
    global checks
    calls.clear()
    win.mem_write(STACK, struct.pack('<' + 'I' * (len(args) + 1), STOP, *args))
    for reg, value in [(UC_X86_REG_ESP, STACK), (UC_X86_REG_EBP, 0),
                       (UC_X86_REG_ECX, ecx), (UC_X86_REG_EFLAGS, 2)]:
        win.reg_write(reg, value)
    win.emu_start(entry, STOP, count=2000000)
    assert win.reg_read(UC_X86_REG_EIP) == STOP
    checks += 1


def cursor_stream(seed, length):
    rng = random.Random(seed)
    decoded, encoded, items = bytearray(), bytearray(), []
    while len(decoded) < length:
        remaining = length - len(decoded)
        if len(decoded) and remaining >= 3 and rng.randrange(3):
            distance = rng.randrange(1, min(4095, len(decoded)) + 1)
            count = rng.randrange(3, min(18, remaining) + 1)
            token = (distance & 255) | ((distance >> 8) << 12) | ((count - 3) << 8)
            items.append((False, struct.pack('<H', token)))
            for _ in range(count):
                decoded.append(decoded[-distance])
        else:
            value = rng.randrange(256)
            items.append((True, bytes([value])))
            decoded.append(value)
    items.append((False, b'\0\0'))
    for start in range(0, len(items), 8):
        group = items[start:start + 8]
        encoded.append(sum(int(literal) << i for i, (literal, _) in enumerate(group)))
        for literal, payload in group:
            encoded.extend(payload)
    return bytes(encoded), bytes(decoded)


for seed in range(20):
    encoded, expected = cursor_stream(seed, 1 + seed * 317)
    win.mem_write(SRC, encoded)
    win.mem_write(DST, b'\xCD' * (len(expected) + 16))
    run(0x408BB4, (SRC, DST))
    assert win.reg_read(UC_X86_REG_EAX) == len(expected)
    assert bytes(win.mem_read(DST, len(expected))) == expected
    assert bytes(win.mem_read(DST + len(expected), 16)) == b'\xCD' * 16
    for crossing in (False, True):
        si = 0xF9F0 if crossing else 0
        di = 0xF9F0 if crossing else 0
        dos.mem_write(0x60000 + si, encoded)
        dos.mem_write(0x80000 + di, b'\xCD' * (len(expected) + 16))
        for reg, val in [(UC_X86_REG_CS, 0), (UC_X86_REG_SS, 0x5000),
                         (UC_X86_REG_DS, 0x6000), (UC_X86_REG_ES, 0x8000),
                         (UC_X86_REG_SI, si), (UC_X86_REG_DI, di),
                         (UC_X86_REG_SP, 0xFFFE), (UC_X86_REG_BX, 0),
                         (UC_X86_REG_EFLAGS, 2)]:
            dos.reg_write(reg, val)
        dos.mem_write(0x5FFFE, struct.pack('<H', 0x8800))
        dos.emu_start(0x230F, 0x8800, count=2000000)
        assert dos.reg_read(UC_X86_REG_IP) == 0x8800
        assert bytes(dos.mem_read(0x80000 + di, len(expected))) == expected
        checks += 1

for start in (0, 1, 0xFFFFFFFF):
    put(0x41F598, start)
    run(0x408D00)
    assert get(0x41F598) == (start + 1) & 0xFFFFFFFF
    run(0x408D12)
    assert get(0x41F598) == start

for a, b in [(0, 0), (DST, 0), (0, PAL), (DST, PAL)]:
    put(0x420A28, a); put(0x420E44, b)
    run(0x40C129)
    assert calls == [('free', [v]) for v in (a, b) if v]
    assert get(0x420A28) == get(0x420E44) == 0
    run(0x40C129)
    assert calls == []
for value in (0, DST):
    put(0x4212D0, value)
    run(0x40C197)
    assert calls == ([('free', [value])] if value else [])
    assert get(0x4212D0) == 0

put(OBJ + 0x3C, DST)
win.mem_write(DST, b'\xCD' * (0x4B000 + 16))
run(0x4087FB, ecx=OBJ)
assert not any(win.mem_read(DST, 0x4B000))
assert bytes(win.mem_read(DST + 0x4B000, 16)) == b'\xCD' * 16
put(0x41F58C, 99); put(0x41F57C, PAL)
run(0x40881E)
assert calls == [('DeleteObject', [99]), ('free', [PAL])]

for rectangle in ((5, 25, 7, 17), (5, 5, 7, 17), (5, 25, 7, 7)):
    for offset, value in zip((0x54, 0x58, 0x5C, 0x60), rectangle):
        put(OBJ + offset, value)
    put(0x41F578, 77)
    run(0x408846, ecx=OBJ)
    if rectangle == (5, 25, 7, 17):
        assert ('BitBlt', [10, 5, 7, 20, 10, 20, 5, 7, 0xCC0020]) in calls
        assert [name for name, args in calls] == ['GetDC', 'CreateCompatibleDC', 'SelectObject',
                                                 'BitBlt', 'ReleaseDC', 'SelectObject', 'DeleteDC']
    else:
        assert calls == []

palette = bytes((i * 17) % 256 for i in range(768))
win.mem_write(PAL, palette)
put(OBJ + 0x44, PAL)
run(0x408920, ecx=OBJ)
upload = next(args for name, args in calls if name == 'SetDIBColorTable')
assert upload[:3] == [20, 0, 256]
# RGBQUAD's reserved byte is uninitialized in the original; compare BGR only.
for i in range(256):
    assert upload[4][i * 4:i * 4 + 3] == palette[i * 3:i * 3 + 3][::-1]
assert [get(OBJ + off) for off in (0x54, 0x58, 0x5C, 0x60)] == [640, 0, 480, 0]
assert get(0x41F590) == 1
put(OBJ + 0x44, 0)
run(0x408920, ecx=OBJ)
assert calls == []
print(f'Recovered native media helpers: {checks} scenarios passed (cursor codec, counters, cleanup, GDI bounds/palette)')
