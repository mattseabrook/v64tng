#!/usr/bin/env python3
"""Execute recovered DOS GRV helpers from the canonical rebuilt V.EXE.

Requires unicorn. Run disassembly/V/build.sh with V_DISASSEMBLY_NO_DEPLOY=1 first.
These are isolated machine-code tests, not DOSBox/game captures.
"""

from pathlib import Path
import struct
from unicorn import Uc, UC_ARCH_X86, UC_MODE_16, UC_HOOK_CODE
from unicorn.x86_const import *

ROOT = Path(__file__).resolve().parents[1]
image = (ROOT / "disassembly/V/build/V130-rebuilt-unpacked.exe").read_bytes()
header = struct.unpack_from("<H", image, 8)[0] * 16
cpu = Uc(UC_ARCH_X86, UC_MODE_16)
cpu.mem_map(0, 0x200000)
cpu.mem_write(0, image[header:])
BASE, BANK, SCRIPT, STOP = 0x8930, 0x8930 + 0xDBA2, 0x18000, 0x8800
checks = 0


def run(entry, operands=b"", ax=0, count=10000):
    global checks
    for reg, value in [
        (UC_X86_REG_CS, 0),
        (UC_X86_REG_SS, 0x893),
        (UC_X86_REG_DS, 0x1800),
        (UC_X86_REG_ES, 0x893),
        (UC_X86_REG_SP, 0xBFFE),
        (UC_X86_REG_BP, 0),
        (UC_X86_REG_SI, 0),
        (UC_X86_REG_DI, 0xDBA2),
        (UC_X86_REG_AX, ax),
        (UC_X86_REG_BX, 0),
        (UC_X86_REG_CX, 0),
        (UC_X86_REG_DX, 0),
        (UC_X86_REG_EFLAGS, 2),
    ]:
        cpu.reg_write(reg, value)
    cpu.mem_write(BASE + 0xBFFE, struct.pack("<H", STOP))
    cpu.mem_write(SCRIPT, operands or b"\0")
    cpu.emu_start(entry, STOP, count=count)
    checks += 1
    return cpu.reg_read(UC_X86_REG_IP) == STOP


def byte(address):
    return cpu.mem_read(address, 1)[0]


# Raw opcode bit 7 controls only the variable operand width.
assert run(0x400A, b"\x34\x12", 0x7F00)
assert cpu.reg_read(UC_X86_REG_AX) == 0x1234
assert cpu.reg_read(UC_X86_REG_SI) == 2
assert run(0x400A, b"\xfe\x12", 0x8000)
assert cpu.reg_read(UC_X86_REG_AX) == 0xFE
assert cpu.reg_read(UC_X86_REG_SI) == 1

# Every byte value, including wraparound and positive multiples of the divisor.
for value in range(256):
    cpu.mem_write(BANK, bytes([value]))
    assert run(0x40F7, b"\0", 0x9F00)
    assert byte(BANK) == (value + 1) % 256
    for divisor in (1, 2, 3, 5, 17, 255):
        cpu.mem_write(BANK, bytes([value]))
        assert run(0x41CB, bytes([0, divisor]), 0xBE00)
        expected = 0 if value == 0 else (value - 1) % divisor + 1
        assert byte(BANK) == expected, (value, divisor, byte(BANK))
    for source in (0, 1, 127, 255):
        for entry, sign in ((0x40C7, 1), (0x40DF, -1)):
            cpu.mem_write(BANK, bytes([value, source]))
            assert run(entry, b"\0\x01\0", 0x8000)
            assert byte(BANK) == (value + sign * source) % 256

# Explicitly distinguish zero-divisor nontermination from a safe modulo result.
cpu.mem_write(BANK, b"\x01")
assert not run(0x41CB, b"\0\0", 0xBE00, count=100)
assert byte(BANK) == 1

# Literal, variable substitution, grid lookup, and terminal-byte propagation.
cpu.mem_write(BANK, b"\x07")
cpu.mem_write(BANK + 0x19 + 23, b"\x09")
for encoded, expected in [(b"\xb5", 5), (b"#\xe1", 7), (b"|2\xb3", 9)]:
    assert run(0x4016, encoded)
    assert cpu.reg_read(UC_X86_REG_AX) & 255 == expected
    assert cpu.reg_read(UC_X86_REG_DX) >> 8 == encoded[-1]
    assert cpu.reg_read(UC_X86_REG_SI) == len(encoded)
assert run(0x4087, b"\x02" + b"12\xb3", 0x9600)
assert cpu.mem_read(BANK + 2, 3) == b"\x01\x02\x03"

# Equality and any-greater branches consume their full sequence and word target.
for entry in (0x41F8, 0x421E, 0x42CB):
    for values in (b"\x01\x02", b"\x02\x01", b"\x00\x02"):
        cpu.mem_write(BANK, values)
        assert run(entry, b"\0" + b"1\xb2" + b"\x34\x12", 0x8000)
        branch = {
            0x41F8: values != b"\x01\x02",
            0x421E: any(a > b for a, b in zip(values, (1, 2))),
            0x42CB: values == b"\x01\x02",
        }[entry]
        assert cpu.reg_read(UC_X86_REG_SI) == (0x1234 if branch else 5)

# ASCII folding has no locale/high-byte transformations.
for value in range(256):
    assert run(0x4FEB, ax=value)
    assert cpu.reg_read(UC_X86_REG_AX) & 255 == (
        value + 32 if 65 <= value <= 90 else value
    )
for left, right, equal in [
    (b"VDX\0", b"vdx\0", True),
    (b"intro\0", b"intros\0", False),
    (b"\0", b"\0", True),
    (b"\xc0\0", b"\xe0\0", False),
]:
    cpu.mem_write(BANK, right)
    assert run(0x4FF6, left)
    assert bool(cpu.reg_read(UC_X86_REG_EFLAGS) & 0x40) == equal
    assert cpu.reg_read(UC_X86_REG_SI) == 0
    assert cpu.reg_read(UC_X86_REG_DI) == 0xDBA2

# CALL writes the VM return stack rather than leaving a native return frame.
cpu.mem_write(BASE + 0xDE27, b"\0\0")
assert run(0x4461, b"\x34\x12")
assert cpu.reg_read(UC_X86_REG_SI) == 0x1234
assert cpu.mem_read(BASE + 0xDE27, 4) == b"\x01\0\x02\0"
assert run(0x444A, b"\x34\x12")
assert cpu.mem_read(BASE + 0xE029, 2) == b"\x35\x12"
assert run(0x4004, b"\x34\x12")
assert cpu.mem_read(BASE + 0xD9FD, 2) == b"\x34\x12"
assert cpu.reg_read(UC_X86_REG_SI) == 2
# DOS22h snapshots display to conventional scratch and then XMS (unbanked path).
for address, value in [
    (0xD558, 0xA000),
    (0xD554, 0x3000),
    (0xD552, 0x893),
    (0xD550, 0x1234),
    (0xCF22, 1),
]:
    cpu.mem_write(BASE + address, struct.pack("<H", value))
source = bytes(range(256)) * 250
cpu.mem_write(0xA0000, source)
cpu.mem_write(0x30000, b"\x55" * 65536)
xms_moves = []


def capture_xms(cpu, address, size, _):
    if address == 0x25F2:
        xms_moves.append(bytes(cpu.mem_read(BASE + 0xD46E, 16)))
        cpu.reg_write(UC_X86_REG_IP, address + size)


cpu.hook_add(UC_HOOK_CODE, capture_xms)
cpu.ctl_flush_tb()
assert run(0x2591, count=100000)
assert cpu.mem_read(0x30000, 64000) == source
assert cpu.mem_read(0xA0000, 64000) == source
assert struct.unpack("<IHIHI", xms_moves[0]) == (65536, 0, 0x30000000, 0x1234, 0)
print(f"DOS GRV helpers: {checks} machine-code cases passed")
