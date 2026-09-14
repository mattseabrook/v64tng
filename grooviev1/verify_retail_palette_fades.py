#!/usr/bin/env python3
"""Execute retail DOS/Win32 palette fades and check every palette upload.

Requires: pip install unicorn pefile; a C++23 compiler (CXX or c++)
Build both canonical disassemblies first (DOS: V_DISASSEMBLY_NO_DEPLOY=1).
Also checks native renderer arithmetic and ordered GRV presentation commands.
Run from any directory: python3 grooviev1/verify_retail_palette_fades.py

This is isolated machine-code validation, not a full game/runtime capture.
VGA status alternates outside/inside retrace. Windows background-service calls
advance one synthetic timer tick; renderer callbacks capture palettes. The DOS
clear helper is intercepted at entry; the Win32 memset arguments are checked
and its effect supplied by the harness. Real scheduling and display are not
modeled. Windows can repeat/skip ticks and read a tick between channel loads.
"""

from pathlib import Path
import struct
import os
import subprocess
import tempfile
import pefile
from unicorn import Uc, UC_ARCH_X86, UC_MODE_16, UC_MODE_32, UC_HOOK_CODE, UC_HOOK_INSN
from unicorn.x86_const import *

ROOT = Path(__file__).resolve().parents[1]
# Every six-bit component value occurs repeatedly, with distinct RGB ordering.
palette = bytes((i * 17 + i // 3) % 64 for i in range(768))


def expected(gains):
    return bytes(c * gains[i % 3] // 256 for i, c in enumerate(palette))


def dos(start, end):
    u = Uc(UC_ARCH_X86, UC_MODE_16)
    u.mem_map(0, 0x200000)
    b = (ROOT / "disassembly/V/build/V130-rebuilt-unpacked.exe").read_bytes()
    h = struct.unpack_from("<H", b, 8)[0] * 16
    u.mem_write(0, b[h:])
    # Apply the MZ relocation records for load segment zero (no adjustment).
    base = 0x8930
    for reg, val in [
        (UC_X86_REG_CS, 0),
        (UC_X86_REG_SS, 0x893),
        (UC_X86_REG_DS, 0x893),
        (UC_X86_REG_SP, 0xC000),
        (UC_X86_REG_BP, 0),
    ]:
        u.reg_write(reg, val)
    u.mem_write(base + 0xD552, struct.pack("<H", 0x893))
    u.mem_write(base + 0xCF8C, palette)
    frames = []
    pending = bytearray()
    reads = 0
    cleared = False

    def inp(uc, port, size, data):
        nonlocal reads
        assert port == 0x3DA
        reads += 1
        return 8 if reads % 2 == 0 else 0

    def out(uc, port, size, val, data):
        if port == 0x3C8:
            assert val == 0
        else:
            assert port == 0x3C9
            pending.append(val)
            if len(pending) == 768:
                frames.append(bytes(pending))
                pending.clear()

    def code(uc, addr, size, data):
        nonlocal cleared
        if addr == 0x285D:
            cleared = True
            uc.emu_stop()
        if addr == end:
            uc.emu_stop()

    u.hook_add(UC_HOOK_INSN, inp, None, 1, 0, UC_X86_INS_IN)
    u.hook_add(UC_HOOK_INSN, out, None, 1, 0, UC_X86_INS_OUT)
    u.hook_add(UC_HOOK_CODE, code)
    u.emu_start(start, 0x19000, count=3000000)
    assert not pending
    assert u.mem_read(base + 0xCF8C, 768) == palette
    if start == 0xF33:
        want = [
            expected(tuple(min(256, 16 + n * s) for s in (8, 4, 2))) for n in range(121)
        ]
    else:
        want = [
            expected(tuple(max(0, 256 - n * s) for s in (2, 4, 4))) for n in range(129)
        ]
        assert cleared
    assert frames == want, (hex(start), len(frames), len(want))
    print(
        f"DOS {start:05X}: {len(frames)} uploads match all 768 components; source preserved; clear call={cleared}"
    )


def windows(start, end):
    p = pefile.PE(str(ROOT / "disassembly/v32tng/build/v32tng-rebuilt.exe"))
    u = Uc(UC_ARCH_X86, UC_MODE_32)
    u.mem_map(0x400000, 0x100000)
    u.mem_write(0x400000, p.get_memory_mapped_image())
    u.mem_map(0x1000000, 0x200000)
    u.reg_write(UC_X86_REG_ESP, 0x1010000)
    pal = 0x1100000
    pixels = 0x1110000
    u.mem_write(0x421344, struct.pack("<I", pal))
    u.mem_write(pal, palette)
    u.mem_write(0x42133C, struct.pack("<I", pixels))
    u.mem_write(pixels, b"\x7f" * 0x4B000)
    snapshot = b"".join(palette[i : i + 3] + b"\x00" for i in range(0, 768, 3))
    u.mem_write(0x420A40, snapshot)
    frames = []
    tick = 0
    cleared = False

    def code(uc, addr, size, data):
        nonlocal tick, cleared
        if addr == end:
            uc.emu_stop()
            return
        if addr in (0x40A8E9, 0x40AA7A):
            uc.mem_write(0x41F524, b"\0" * 4)
            uc.reg_write(UC_X86_REG_ESP, uc.reg_read(UC_X86_REG_ESP) + 8)
            uc.reg_write(UC_X86_REG_EIP, addr + size)
        elif addr in (0x40A9D7, 0x40AB5C):
            frames.append(bytes(uc.mem_read(pal, 768)))
            uc.reg_write(UC_X86_REG_EIP, addr + size)
        elif addr in (0x40A9E2, 0x40AB67, 0x40AA3B):
            uc.reg_write(UC_X86_REG_EIP, addr + size)
        elif addr in (0x40A9E8, 0x40AB6D):
            tick += 1
            uc.mem_write(0x41F524, struct.pack("<I", tick))
            uc.reg_write(UC_X86_REG_EIP, addr + size)
        elif addr == 0x40AA06:
            args = struct.unpack("<III", uc.mem_read(uc.reg_read(UC_X86_REG_ESP), 12))
            assert args == (pixels, 0, 0x4B000)
            uc.mem_write(pixels, b"\0" * 0x4B000)
            cleared = True
            uc.reg_write(UC_X86_REG_EIP, addr + size)

    u.hook_add(UC_HOOK_CODE, code)
    u.emu_start(start, 0x419500, count=3000000)
    want = [
        (
            expected(tuple(min(256, n * s) for s in (64, 32, 16)))
            if start == 0x40AA45
            else expected(tuple(max(0, 256 - n * s) for s in (16, 32, 32)))
        )
        for n in range(17)
    ]
    assert frames == want, (hex(start), len(frames))
    assert u.mem_read(0x420A40, 1024) == snapshot
    if start == 0x40A84B:
        assert cleared and not any(u.mem_read(pixels, 0x4B000))
    print(
        f"Win32 {start:08X}: {len(frames)} controlled-tick uploads match all 768 components; snapshot preserved; clear={cleared}"
    )

    return b"".join(frames)


if __name__ == "__main__":
    dos(0xF33, 0xFC5)
    dos(0xFC6, 0x1059)
    # Also cover every full eight-bit component value on Win32.
    palette = bytes((i * 17 + i // 3) % 256 for i in range(768))
    retail = windows(0x40AA45, 0x40AB83) + windows(0x40A84B, 0x40AA44)
    with tempfile.TemporaryDirectory(prefix="grv-palette-fade-") as temporary:
        adapter = Path(temporary) / "verify_palette_fade"
        subprocess.run(
            [
                os.environ.get("CXX", "c++"),
                "-std=c++20",
                "-O2",
                str(ROOT / "grooviev1/verify_palette_fade.cpp"),
                "-o",
                str(adapter),
            ],
            check=True,
        )
        actual = subprocess.run(
            [str(adapter)], input=palette, stdout=subprocess.PIPE, check=True
        ).stdout
        assert actual == retail, "v64tng renderer differs from retail palette fades"
        print(f"v64tng C++ renderer: {len(actual)} components match Win32 machine code")

        logger = Path(temporary) / "console_stub.h"
        logger.write_text(
            "#include <string_view>\n"
            "#define V64TNG_CONSOLE_H\n"
            "inline void consoleLog(std::string_view, std::string_view) {}\n"
            "template<class... T> void consoleLogf(T&&...) {}\n"
        )
        command_test = Path(temporary) / "verify_grv_fade_commands"
        subprocess.run(
            [
                os.environ.get("CXX", "c++"),
                "-std=c++23",
                "-O2",
                "-include",
                str(logger),
                "-I",
                str(ROOT / "include"),
                str(ROOT / "src/grv_runtime.cpp"),
                str(ROOT / "grooviev1/verify_grv_fade_commands.cpp"),
                "-o",
                str(command_test),
            ],
            check=True,
        )
        subprocess.run([str(command_test), temporary], check=True)
        print(
            "GRV command order: fades, one-shot video flags, copies, and end-script passed"
        )
