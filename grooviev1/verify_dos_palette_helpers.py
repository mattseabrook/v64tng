#!/usr/bin/env python3
"""Execute newly identified DOS palette helpers from the hash-locked rebuild.

Requires unicorn; VGA status/DAC ports are modeled, palette machine code is real.
"""
from pathlib import Path
import struct
from unicorn import Uc, UC_ARCH_X86, UC_MODE_16, UC_HOOK_INSN
from unicorn.x86_const import *

ROOT = Path(__file__).resolve().parents[1]
image = (ROOT / 'disassembly/V/build/V130-rebuilt-unpacked.exe').read_bytes()
header = struct.unpack_from('<H', image, 8)[0] * 16
cpu = Uc(UC_ARCH_X86, UC_MODE_16)
cpu.mem_map(0, 0x200000)
cpu.mem_write(0, image[header:])
BASE, STOP = 0x8930, 0x8800
reads = []
writes = []


def port_in(cpu, port, size, _):
    assert port == 0x3DA and size == 1
    reads.append(port)
    return 8 if len(reads) % 2 == 0 else 0


def port_out(cpu, port, size, value, _):
    assert port in (0x3C8, 0x3C9) and size == 1
    writes.append((port, value))


cpu.hook_add(UC_HOOK_INSN, port_in, None, 1, 0, UC_X86_INS_IN)
cpu.hook_add(UC_HOOK_INSN, port_out, None, 1, 0, UC_X86_INS_OUT)


def run(entry, si=0):
    reads.clear()
    writes.clear()
    for reg, value in [(UC_X86_REG_CS, 0), (UC_X86_REG_SS, 0x893),
                       (UC_X86_REG_DS, 0x893), (UC_X86_REG_ES, 0x893),
                       (UC_X86_REG_SP, 0xBFFE), (UC_X86_REG_BP, 0),
                       (UC_X86_REG_SI, si), (UC_X86_REG_EFLAGS, 2)]:
        cpu.reg_write(reg, value)
    cpu.mem_write(BASE + 0xBFFE, struct.pack('<H', STOP))
    cpu.emu_start(entry, STOP, count=1000000)
    assert cpu.reg_read(UC_X86_REG_IP) == STOP
    assert reads == [0x3DA, 0x3DA]
    assert writes[0] == (0x3C8, 0)
    assert len(writes) == 769


# Saved palette restoration: exact workspace copy and DAC byte order.
saved = bytes(i % 64 for i in range(768))
cpu.mem_write(BASE + 0xCC20, saved)
cpu.mem_write(BASE + 0xCF8C, bytes(768))
run(0x2822)
assert bytes(cpu.mem_read(BASE + 0xCF8C, 768)) == saved
assert bytes(value for port, value in writes[1:]) == saved

# Merge 32 colors; preserve used slot 1 and slot zero, install in 2..33.
palette = bytes([17]) * 768
source = bytes(i % 256 for i in range(96))
cpu.mem_write(BASE + 0xCF8C, palette)
cpu.mem_write(BASE + 0xCB20, bytes([0, 1]) + bytes(254))
cpu.mem_write(BASE + 0xD9B0, b'\0\0')
cpu.mem_write(BASE + 0xE166, bytes(256))
cpu.mem_write(BASE + 0x6003, source)
run(0x26E5, 0x6003)
actual = bytes(cpu.mem_read(BASE + 0xCF8C, 768))
assert actual[:6] == palette[:6]
assert actual[6:102] == bytes(value >> 2 for value in source)
assert actual[102:] == palette[102:]
assert bytes(cpu.mem_read(BASE + 0xE167, 32)) == bytes(range(2, 34))

# No unused slots: execute the full translation builder and its real merge.
# The original fallback metric is asymmetric, NOT absolute RGB distance:
# when active < source, SUB AX,CX; SUB CX,AX gives 2*source-active.
# Source red 100: slot 1 red 40 scores 160; slot 2 red 240 scores 140.
# Consequently the original selects slot 2, although slot 1 is closer by |RGB|.
cpu.mem_write(BASE + 0xCB20, bytes([1]) * 256)
cpu.mem_write(BASE + 0xCF8C, bytes(3) + bytes([10, 0, 0, 60, 0, 0]) + bytes([255]) * (768 - 9))
cpu.mem_write(BASE + 0xD9BA, struct.pack('<H', 0x6000))
cpu.mem_write(BASE + 0x6003, bytes([100, 0, 0]) * 32)
run(0x4980)
assert bytes(cpu.mem_read(BASE + 0xE167, 31)) == bytes([2]) * 31
assert cpu.mem_read(BASE + 0xE166, 1)[0] == 0
print('DOS palette helpers: restore, protected-entry merge, 32 translations and asymmetric fallback verified')
