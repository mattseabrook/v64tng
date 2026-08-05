#!/usr/bin/env python3
"""Generate a complete lossless NASM tree for v32tng.exe 1.02b1.

Ghidra supplies provisional function ownership ranges in the PE .text section.
ndisasm supplies instruction text and original encodings for those ranges.
Every remaining file byte is emitted as explicit data. Instructions NASM would
encode differently are preserved with exact ``db`` bytes and a decoded comment.

The generated tree contains no incbin directives and must assemble byte-for-
byte to the immutable reference PE before this program succeeds.
"""

from __future__ import annotations

import argparse
import dataclasses
import re
import shutil
import subprocess
import sys
from pathlib import Path


EXPECTED_SIZE = 0x23600
IMAGE_BASE = 0x00400000
TEXT_VA = 0x00401000
TEXT_RAW = 0x00000400
TEXT_RAW_END = 0x00018C00
TEXT_FILE_BIAS = TEXT_VA - TEXT_RAW
DATA_CHUNK_SIZE = 0x1000

VERIFIED_NAMES: dict[int, tuple[str, str]] = {
    0x004011A3: (
        "load_grv_script_file",
        "Verified mmioOpen/mmioRead path used for script.grv and GRV LOADSCRIPT files.",
    ),
    0x00401202: (
        "initialize_grv_runtime_and_load_script",
        "Verified GRV state/variable initialization ending in the initial script.grv load.",
    ),
    0x00401449: (
        "grv_read_u8",
        "Verified GRV byte reader; advances the script PC by one.",
    ),
    0x00401473: (
        "grv_read_u16_le",
        "Verified GRV little-endian word reader; advances the script PC by two.",
    ),
    0x004014CB: (
        "grv_read_u32_le",
        "Verified GRV little-endian dword reader; advances the script PC by four.",
    ),
    0x00401D3A: (
        "select_grv_video_resource",
        "Verified packed GRV video ref resolver: selects archive/RL entry and stages its GJD stream.",
    ),
    0x00401F5F: (
        "select_grv_song_resource",
        "Verified packed GRV song ref resolver and sequence staging path.",
    ),
    0x004021D1: (
        "run_grv_vm",
        "Verified central GRV bytecode interpreter and opcode dispatcher.\n"
        "; VIDEOREF is synchronous: 03h/05h/06h/07h/0Ah stage bits 9/8/6/7/5, 09h resolves and plays one VDX, then transient flags clear.\n"
        "; SCRIPT.GRV uses bit 5 to discard an overlay still and composite its deltas over the held background; interleaved sound remains part of that playback.",
    ),
    0x00404350: (
        "init_game_subsystems",
        "Verified game subsystem initialization role.",
    ),
    0x004069E5: (
        "dequeue_key_input",
        "Verified 64-byte circular keyboard-buffer dequeue; returns FFh when empty.",
    ),
    0x00407146: (
        "is_midi_sequence_playing",
        "Verified Miles AIL sequence-status query; true when status is playing (4).",
    ),
    0x00408DF6: (
        "open_loose_vdx",
        "Verified exact-filename open and little-endian 9267h VDX magic check.",
    ),
    0x00408E75: (
        "dispatch_game_or_loose_vdx",
        "Verified empty command line selects game; non-empty selects loose VDX.",
    ),
    0x00408EB7: (
        "pump_media_and_game",
        "Verified media-aware game/message-loop pump role.",
    ),
    0x00409691: (
        "fatal_media_error",
        "Verified fatal media error-reporting path.",
    ),
    0x004095D7: (
        "enforce_single_instance",
        "Verified named-semaphore check and existing-player window activation.",
    ),
    0x004096F0: (
        "shutdown_player",
        "Verified global Win32 player shutdown role.",
    ),
    0x0040977B: (
        "winmain",
        "Verified WinMain body, SETUPEXEC handling, and message loop.",
    ),
    0x00409850: (
        "setup_window_and_runtime",
        "Verified window/runtime setup called by WinMain.",
    ),
    0x00409A90: (
        "init_game_state",
        "Verified game-state initialization role.",
    ),
    0x0040C0E7: (
        "allocate_grv_runtime_buffers",
        "Verified allocation/initialization of the 80400h runtime arena and 64 KiB GRV script buffer.",
    ),
    0x0040C180: (
        "init_archive_tables",
        "Verified archive table initialization role.",
    ),
    0x0040C1BD: (
        "configure_vdx_stream",
        "Verified VDX stream callback/configuration, header timing, and playback-state setup role.",
    ),
    0x0040C261: (
        "decode_vdx_stream",
        "Verified blocking VDX chunk decode/playback loop: still/delta composition and interleaved sound are consumed as one stream before GRV resumes.",
    ),
    0x0040D8A0: (
        "strcmp_runtime",
        "Compiler-runtime strcmp recognized statically and by call behavior.",
    ),
    0x0040DBF0: (
        "pe_entry",
        "Verified PE AddressOfEntryPoint.",
    ),
}

VERIFIED_INSTRUCTION_LABELS: dict[int, tuple[str, str]] = {
    0x00403B5F: (
        "grv_check_valid_saves",
        "Opcode 3Ch: probes st7g.0 through st7g.9 and stores slot flags plus v[104h] count.",
    ),
}


@dataclasses.dataclass(frozen=True)
class Instruction:
    address: int
    raw: bytes
    text: str


@dataclasses.dataclass
class Function:
    entry: int
    ghidra_name: str
    ranges: list[tuple[int, int]]
    source_name: str = ""
    note: str = ""
    source_path: Path | None = None


@dataclasses.dataclass(frozen=True)
class EmitRange:
    raw_start: int
    raw_end: int
    macro: str
    kind: str


def parse_function_map(path: Path) -> list[Function]:
    lines = path.read_text(encoding="utf-8").splitlines()
    if not lines or lines[0] != "entry\tname\tbody":
        raise RuntimeError(f"Unexpected function-map header in {path}")

    pattern = re.compile(r"([0-9A-Fa-f]+), ([0-9A-Fa-f]+)")
    functions: list[Function] = []
    for line in lines[1:]:
        entry_text, ghidra_name, body_text = line.split("\t")
        entry = int(entry_text, 16)
        ranges = [
            (int(start, 16), int(end, 16) + 1)
            for start, end in pattern.findall(body_text)
        ]
        if not ranges:
            raise RuntimeError(f"No body ranges for {entry_text}")
        if not any(start <= entry < end for start, end in ranges):
            raise RuntimeError(f"Entry {entry_text} is outside its body")
        source_name, note = VERIFIED_NAMES.get(
            entry,
            (
                f"func_{entry:08x}",
                "Role not yet verified; analyzer boundary is provisional.",
            ),
        )
        functions.append(
            Function(
                entry=entry,
                ghidra_name=ghidra_name,
                ranges=ranges,
                source_name=source_name,
                note=note,
            )
        )

    functions.sort(key=lambda function: function.entry)
    entries = [function.entry for function in functions]
    if len(entries) != len(set(entries)):
        raise RuntimeError("Duplicate function entry")

    owned = sorted(
        (start, end, function.entry)
        for function in functions
        for start, end in function.ranges
    )
    for start, end, entry in owned:
        if start < TEXT_VA or end > TEXT_VA + (TEXT_RAW_END - TEXT_RAW):
            raise RuntimeError(
                f"Function {entry:08X} body {start:08X}..{end:08X} "
                "is outside the raw .text extent"
            )
    for left, right in zip(owned, owned[1:]):
        if left[1] > right[0]:
            raise RuntimeError(
                f"Overlapping function bodies at {left[0]:08X} and {right[0]:08X}"
            )
    return functions


def va_to_raw(address: int) -> int:
    return address - TEXT_FILE_BIAS


def parse_ndisasm(output: str) -> list[Instruction]:
    main_pattern = re.compile(
        r"^([0-9A-Fa-f]{8})\s+([0-9A-Fa-f]+)\s+(.+?)\s*$"
    )
    continuation_pattern = re.compile(r"^\s+-([0-9A-Fa-f]+)\s*$")
    records: list[list[object]] = []
    for line in output.splitlines():
        main = main_pattern.match(line)
        if main:
            records.append([int(main.group(1), 16), main.group(2), main.group(3)])
            continue
        continuation = continuation_pattern.match(line)
        if continuation and records:
            records[-1][1] = str(records[-1][1]) + continuation.group(1)
            continue
        if line.strip():
            raise RuntimeError(f"Cannot parse ndisasm line: {line}")
    return [
        Instruction(int(address), bytes.fromhex(str(raw_hex)), str(text))
        for address, raw_hex, text in records
    ]


def disassemble_range(reference: bytes, start: int, end: int) -> list[Instruction]:
    raw_start = va_to_raw(start)
    raw_end = va_to_raw(end)
    process = subprocess.run(
        ["ndisasm", "-b", "32", "-o", f"0x{start:x}", "-"],
        input=reference[raw_start:raw_end],
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE,
        check=True,
    )
    instructions = parse_ndisasm(process.stdout.decode("utf-8"))
    cursor = start
    for instruction in instructions:
        if instruction.address != cursor:
            raise RuntimeError(
                f"ndisasm coverage drift at {cursor:08X}: "
                f"got {instruction.address:08X}"
            )
        cursor += len(instruction.raw)
    if cursor != end:
        raise RuntimeError(f"ndisasm ended at {cursor:08X}, expected {end:08X}")
    return instructions


def bytes_directive(data: bytes, indent: str = "    ") -> str:
    return indent + "db " + ", ".join(f"0x{value:02X}" for value in data)


def ascii_preview(data: bytes) -> str:
    return "".join(chr(value) if 0x20 <= value <= 0x7E else "." for value in data)


def data_lines(data: bytes, raw_start: int) -> list[str]:
    lines: list[str] = []
    for offset in range(0, len(data), 16):
        block = data[offset : offset + 16]
        lines.append(
            f"{bytes_directive(block)}"
            f" ; raw {raw_start + offset:06X} |{ascii_preview(block)}|"
        )
    return lines


def nasm_candidate(instruction: Instruction) -> str:
    if not instruction.raw:
        return instruction.text
    opcode_index = 0
    while (
        opcode_index < len(instruction.raw)
        and instruction.raw[opcode_index]
        in {0x26, 0x2E, 0x36, 0x3E, 0x64, 0x65, 0x66, 0x67, 0xF0, 0xF2, 0xF3}
    ):
        opcode_index += 1
    if opcode_index >= len(instruction.raw):
        return instruction.text
    opcode = instruction.raw[opcode_index]
    if 0x70 <= opcode <= 0x7F or opcode in {0xE0, 0xE1, 0xE2, 0xE3, 0xEB}:
        mnemonic, separator, operands = instruction.text.partition(" ")
        if separator and not operands.startswith("short "):
            return f"{mnemonic} short {operands}"
    return instruction.text


def safe_macro_name(source_name: str, part: int) -> str:
    return f"emit_{source_name}_part_{part:02d}"


def write_function_sources(
    root: Path,
    functions: list[Function],
    reference: bytes,
    fallbacks: set[int],
) -> tuple[list[EmitRange], dict[int, Instruction], int]:
    function_root = root / "src" / "functions"
    function_root.mkdir(parents=True, exist_ok=True)
    includes: list[str] = []
    emit_ranges: list[EmitRange] = []
    instruction_index: dict[int, Instruction] = {}
    instruction_count = 0

    for function in functions:
        group = f"{(function.entry >> 8) & 0xFF:02x}"
        relative_path = (
            Path("src")
            / "functions"
            / group
            / f"{function.entry:08x}_{function.source_name}.asm"
        )
        output_path = root / relative_path
        output_path.parent.mkdir(parents=True, exist_ok=True)
        function.source_path = relative_path
        includes.append(f'%include "{relative_path.as_posix()}"')
        lines = [
            f"; PE virtual entry {function.entry:08X}",
            f"; Ghidra working symbol: {function.ghidra_name}",
            f"; {function.note}",
            "; Generated losslessly; preserve byte identity after edits.",
            "",
        ]

        for part, (start, end) in enumerate(function.ranges):
            macro = safe_macro_name(function.source_name, part)
            raw_start = va_to_raw(start)
            raw_end = va_to_raw(end)
            emit_ranges.append(
                EmitRange(raw_start, raw_end, macro, "function")
            )
            instructions = disassemble_range(reference, start, end)
            instruction_count += len(instructions)
            lines.extend([f"%macro {macro} 0", "    %%fragment_start:"])
            for instruction in instructions:
                instruction_index[instruction.address] = instruction
                if instruction.address == function.entry:
                    lines.append(f"{function.source_name}:")
                if instruction.address in VERIFIED_INSTRUCTION_LABELS:
                    label_name, label_note = VERIFIED_INSTRUCTION_LABELS[instruction.address]
                    lines.extend([f"; {label_note}", f"{label_name}:"])
                raw_text = instruction.raw.hex().upper()
                if instruction.address in fallbacks:
                    lines.append(
                        f"{bytes_directive(instruction.raw)}"
                        f" ; {instruction.address:08X} {raw_text}"
                        f" | {instruction.text} | encoding preserved"
                    )
                    continue
                label = f"%%insn_{instruction.address:08x}"
                candidate = nasm_candidate(instruction)
                lines.extend(
                    [
                        f"    {label}:",
                        f"    {candidate} ; {instruction.address:08X} {raw_text}",
                        f"    %if ($ - {label}) > {len(instruction.raw)}",
                        f'        %error "LONG_{instruction.address:08X}"',
                        "    %endif",
                        f"    times {len(instruction.raw)} - ($ - {label}) db 0",
                    ]
                )
            lines.extend(
                [
                    f"    %if ($ - %%fragment_start) != {end - start}",
                    f'        %error "function fragment size drift: {start:08X}"',
                    "    %endif",
                    "%endmacro",
                    "",
                ]
            )
        output_path.write_text("\n".join(lines), encoding="utf-8")

    (function_root / "all.asm").write_text(
        "\n".join(includes) + "\n", encoding="utf-8"
    )
    return emit_ranges, instruction_index, instruction_count


def write_data_sources(
    root: Path,
    reference: bytes,
    function_ranges: list[EmitRange],
) -> list[EmitRange]:
    data_root = root / "src" / "data" / "chunks"
    data_root.mkdir(parents=True, exist_ok=True)
    ranges = sorted(function_ranges, key=lambda item: item.raw_start)
    result = list(ranges)
    includes: list[str] = []
    cursor = 0
    data_index = 0

    def emit_gap(start: int, end: int) -> None:
        nonlocal data_index
        for chunk_start in range(start, end, DATA_CHUNK_SIZE):
            chunk_end = min(chunk_start + DATA_CHUNK_SIZE, end)
            macro = f"emit_file_data_{data_index:04d}_{chunk_start:06x}"
            relative_path = (
                Path("src")
                / "data"
                / "chunks"
                / f"data_{data_index:04d}_{chunk_start:06x}.asm"
            )
            lines = [
                f"; Explicit file bytes raw {chunk_start:06X}..{chunk_end:06X}.",
                f"%macro {macro} 0",
                "    %%chunk_start:",
                *data_lines(reference[chunk_start:chunk_end], chunk_start),
                f"    %if ($ - %%chunk_start) != {chunk_end - chunk_start}",
                f'        %error "data chunk size drift: {chunk_start:06X}"',
                "    %endif",
                "%endmacro",
                "",
            ]
            (root / relative_path).write_text("\n".join(lines), encoding="utf-8")
            includes.append(f'%include "{relative_path.as_posix()}"')
            result.append(
                EmitRange(chunk_start, chunk_end, macro, "explicit-data")
            )
            data_index += 1

    for item in ranges:
        if cursor < item.raw_start:
            emit_gap(cursor, item.raw_start)
        cursor = max(cursor, item.raw_end)
    if cursor < len(reference):
        emit_gap(cursor, len(reference))

    (data_root / "all.asm").write_text(
        "\n".join(includes) + "\n", encoding="utf-8"
    )
    return sorted(result, key=lambda item: item.raw_start)


def write_layout(root: Path, ranges: list[EmitRange], file_size: int) -> None:
    cursor = 0
    lines = [
        "; Exact raw-file emission order. Generated; do not reorder.",
        "",
    ]
    for item in ranges:
        if item.raw_start != cursor:
            raise RuntimeError(
                f"Layout gap/overlap at raw {cursor:06X}; "
                f"next range starts {item.raw_start:06X}"
            )
        lines.extend(
            [
                f"; raw {item.raw_start:06X}..{item.raw_end:06X} ({item.kind})",
                f"%if ($ - $$) != 0x{item.raw_start:06X}",
                f'    %error "layout drift at raw {item.raw_start:06X}"',
                "%endif",
                item.macro,
                "",
            ]
        )
        cursor = item.raw_end
    if cursor != file_size:
        raise RuntimeError(f"Layout ends at {cursor:06X}, expected {file_size:06X}")
    lines.extend(
        [
            f"%if ($ - $$) != 0x{file_size:06X}",
            '    %error "final PE size drift"',
            "%endif",
            "",
        ]
    )
    (root / "src" / "layout.asm").write_text(
        "\n".join(lines), encoding="utf-8"
    )


def write_main(root: Path) -> None:
    text = """; v32tng.exe 1.02b1 -- complete lossless PE source root.
;
; Functions use NASM instructions where NASM reproduces the original encoding.
; Noncanonical encodings and non-code bytes use explicit db. No executable byte
; range is imported and there are no incbin directives.

bits 32

%include "src/functions/all.asm"
%include "src/data/chunks/all.asm"

; File offset 0400h is .text VA 00401000h. This flat-file origin therefore
; gives analyzer-owned .text labels their original PE virtual addresses.
org 0x00400C00

%include "src/layout.asm"
"""
    (root / "main.asm").write_text(text, encoding="utf-8")


def write_inventory(root: Path, functions: list[Function]) -> None:
    lines = ["entry\tworking_name\tstatus\tghidra_name\tsource"]
    for function in functions:
        status = (
            "verified-role"
            if function.entry in VERIFIED_NAMES
            else "unidentified"
        )
        assert function.source_path is not None
        lines.append(
            f"{function.entry:08X}\t{function.source_name}\t{status}\t"
            f"{function.ghidra_name}\t{function.source_path.as_posix()}"
        )
    (root / "analysis" / "function-inventory.tsv").write_text(
        "\n".join(lines) + "\n", encoding="utf-8"
    )


def write_coverage(
    root: Path,
    functions: list[Function],
    instruction_count: int,
    function_bytes: int,
    fallbacks: set[int],
    fallback_bytes: int,
) -> None:
    verified = sum(
        function.entry in VERIFIED_NAMES for function in functions
    )
    text = f"""# Win32 v32tng 1.02b1 lossless source coverage

This inventory describes **mechanical source coverage**, not complete semantic
understanding.

| Measure | Count |
|---|---:|
| PE file bytes represented in source | {EXPECTED_SIZE:,} / {EXPECTED_SIZE:,} |
| `incbin` directives | 0 |
| Provisional Ghidra function entries | {len(functions):,} |
| Function-body bytes | {function_bytes:,} |
| Function-body instructions decoded | {instruction_count:,} |
| Instructions requiring exact `db` encoding fallback | {len(fallbacks):,} |
| Bytes in encoding fallbacks | {fallback_bytes:,} |
| Verified semantic function roles | {verified:,} |
| Unidentified/provisionally bounded functions | {len(functions) - verified:,} |
| Non-function PE file bytes | {EXPECTED_SIZE - function_bytes:,} |

All headers, section padding, code gaps, `.rdata`, `.data`, imports, resources,
relocations, and the raw debug tail are explicit NASM data. Every decoded
instruction retains its PE virtual address and original opcode bytes.

A `db` line inside a function means the instruction is decoded but NASM's
preferred spelling emits different bytes. Its mnemonic remains in the comment.
Analyzer ownership is provisional: explicit data may later prove to be code,
jump tables, inline constants, or alignment.
"""
    (root / "analysis" / "SOURCE_COVERAGE.md").write_text(
        text, encoding="utf-8"
    )


def prepare_generated_tree(root: Path) -> None:
    for relative in (
        Path("src/functions"),
        Path("src/data"),
        Path("src/layout"),
        Path("src/media"),
        Path("src/platform"),
    ):
        path = root / relative
        if path.exists():
            shutil.rmtree(path)
    (root / "analysis").mkdir(parents=True, exist_ok=True)


def assemble(root: Path, output: Path) -> subprocess.CompletedProcess[bytes]:
    output.parent.mkdir(parents=True, exist_ok=True)
    return subprocess.run(
        ["nasm", "-f", "bin", "-o", str(output), "main.asm"],
        cwd=root,
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE,
    )


def generate_once(
    root: Path,
    reference: bytes,
    functions: list[Function],
    fallbacks: set[int],
) -> tuple[dict[int, Instruction], int, int]:
    prepare_generated_tree(root)
    write_main(root)
    function_ranges, instruction_index, instruction_count = (
        write_function_sources(root, functions, reference, fallbacks)
    )
    all_ranges = write_data_sources(root, reference, function_ranges)
    write_layout(root, all_ranges, len(reference))
    write_inventory(root, functions)
    function_bytes = sum(
        end - start
        for function in functions
        for start, end in function.ranges
    )
    return instruction_index, instruction_count, function_bytes


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--reference", required=True, type=Path)
    parser.add_argument(
        "--function-map",
        type=Path,
        default=Path("analysis/function-map.tsv"),
    )
    parser.add_argument(
        "--root",
        type=Path,
        default=Path(__file__).resolve().parents[1],
    )
    args = parser.parse_args()

    root = args.root.resolve()
    reference_path = args.reference.resolve()
    map_path = (
        args.function_map.resolve()
        if args.function_map.is_absolute()
        else (root / args.function_map).resolve()
    )
    reference = reference_path.read_bytes()
    if len(reference) != EXPECTED_SIZE:
        raise RuntimeError(
            f"Reference size {len(reference)} differs from {EXPECTED_SIZE}"
        )
    functions = parse_function_map(map_path)

    fallbacks: set[int] = set()
    instruction_index: dict[int, Instruction] = {}
    instruction_count = function_bytes = 0
    output = root / "build" / "generator-probe.exe"

    for _ in range(30):
        instruction_index, instruction_count, function_bytes = generate_once(
            root, reference, functions, fallbacks
        )
        result = assemble(root, output)
        stderr = result.stderr.decode("utf-8", errors="replace")
        if result.returncode != 0:
            too_long = {
                int(value, 16)
                for value in re.findall(r"LONG_([0-9A-Fa-f]+)", stderr)
            }
            new = too_long - fallbacks
            if new:
                fallbacks.update(new)
                continue
            sys.stderr.write(stderr)
            raise RuntimeError("NASM failed without a recoverable encoding marker")

        rebuilt = output.read_bytes()
        if len(rebuilt) != len(reference):
            raise RuntimeError(
                f"Generated size {len(rebuilt)} differs from {len(reference)}"
            )
        mismatched: set[int] = set()
        for address, instruction in instruction_index.items():
            raw_start = va_to_raw(address)
            actual = rebuilt[raw_start : raw_start + len(instruction.raw)]
            if actual != instruction.raw:
                mismatched.add(address)
        new = mismatched - fallbacks
        if new:
            fallbacks.update(new)
            continue
        if rebuilt != reference:
            for offset, (expected, actual) in enumerate(zip(reference, rebuilt)):
                if expected != actual:
                    raise RuntimeError(
                        f"Non-instruction mismatch at raw {offset:06X}: "
                        f"{actual:02X} != {expected:02X}"
                    )
            raise RuntimeError("Unexplained PE mismatch")
        break
    else:
        raise RuntimeError("Encoding fallback generation did not converge")

    fallback_bytes = sum(
        len(instruction_index[address].raw) for address in fallbacks
    )
    write_coverage(
        root,
        functions,
        instruction_count,
        function_bytes,
        fallbacks,
        fallback_bytes,
    )
    print(
        f"Generated {len(functions)} functions, {instruction_count} instructions, "
        f"{len(fallbacks)} exact-encoding fallbacks"
    )
    print(f"Byte-identical output verified: {output}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
