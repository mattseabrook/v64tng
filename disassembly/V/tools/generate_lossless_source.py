#!/usr/bin/env python3
"""Generate a complete, lossless NASM source tree for DOS V.EXE 1.30.

Ghidra supplies provisional function ownership ranges. ndisasm supplies NASM
instruction text and original encodings for those ranges. Every byte outside a
function range is emitted as explicit data. Candidate instructions which NASM
would encode differently are automatically preserved with `db` plus the
decoded instruction as a comment.

The generated source contains no incbin directives and must assemble
byte-for-byte to the deterministic UNLZEXE image.
"""

from __future__ import annotations

import argparse
import dataclasses
import re
import shutil
import subprocess
import sys
from pathlib import Path


HEADER_SIZE = 0x200
DATA_CHUNK_SIZE = 0x1000

VERIFIED_NAMES: dict[int, tuple[str, str]] = {
    0x0000: ("entry", "Verified DOS startup and @/! command-tail dispatch."),
    0x00D1: (
        "standalone_vdx_or_diagnostics",
        "Verified ?, empty-tail, ~name, and loose-name.vdx startup path.",
    ),
    0x0587: (
        "decode_vdx_bitmap_still",
        "Verified VDX 20h still/base-frame decoder; GRV video flags decide whether its pixels seed the displayed background or are skipped for a delta overlay.",
    ),
    0x105A: (
        "decode_vdx_delta_frame",
        "Verified VDX 25h palette-update and 4x4-tile delta compositor; unchanged tiles retain the prior persistent frame.",
    ),
    0x23A5: ("copy_rect_to_background", "Verified GRV background rectangle-copy implementation."),
    0x2591: ("copy_background_to_foreground", "Verified GRV background restore implementation."),
    0x2997: (
        "stream_media_buffer",
        "Verified VDX chunk-stream/refill path; distinguishes interleaved 80h PCM from visual chunks while one VIDEOREF remains synchronous.",
    ),
    0x2F84: ("detect_video_hardware", "Verified video hardware detection/diagnostic path."),
    0x368C: ("query_xms", "Verified XMS manager/version/free-memory query."),
    0x36D2: ("format_memory_diagnostic", "Verified diagnostic memory-number formatter."),
    0x382D: (
        "save_selected_archive_context",
        "Verified opcode 46h helper: snapshots the current packed-resource archive selector for later restoration.",
    ),
    0x3838: (
        "restore_selected_archive_context",
        "Verified opcode 47h helper: restores the saved archive selector and reopens its indexed resource context when necessary.",
    ),
    0x388A: (
        "select_grv_video_resource",
        "Verified packed GRV video ref resolver: selects archive, RL entry, and GJD offset.",
    ),
    0x3941: (
        "select_grv_song_resource",
        "Verified packed GRV song ref resolver: selects archive, RL entry, and GJD offset.",
    ),
    0x39EE: (
        "read_selected_archive",
        "Verified DOS read from the currently selected song/archive handle.",
    ),
    0x39F8: (
        "build_resource_filename",
        "Verified resource/save filename builder used before DOS file opens.",
    ),
    0x3A31: (
        "open_resource_read_only",
        "Verified filename-build plus DOS INT 21h read-only open wrapper.",
    ),
    0x3A47: ("close_resource_file", "Verified DOS INT 21h close wrapper."),
    0x3A5B: (
        "load_selected_resource_file",
        "Verified selected resource open/read/close path into the GRV media buffer.",
    ),
    0x3AC4: (
        "run_grv_vm",
        "Verified GRV bytecode interpreter entry.\n"
        "; VIDEOREF is synchronous: 03h/05h/06h/07h/0Ah stage bits 9/8/6/7/5, 09h resolves and plays one VDX, then transient flags clear.\n"
        "; SCRIPT.GRV uses bit 5 to discard an overlay still and composite its deltas over the held background; an 80h sound chunk remains inside that same blocking playback.",
    ),
    0x3EEA: (
        "grv_check_valid_saves",
        "Verified opcode 3Ch implementation: probes save.0 through save.9 and writes count/slot variables.",
    ),
    0x447B: (
        "run_grv_input_loop",
        "Verified GRV INPUTLOOPSTART (0x0B) setup and input-action interpreter.",
    ),
    0x4729: (
        "match_grv_key_action",
        "Verified GRV KEYACTION (0x0C) pending-key comparison and branch handler.",
    ),
    0x47DC: (
        "test_grv_hotspot_rect",
        "Verified GRV HOTSPOT_RECT (0x0D) coordinate hit-test and action handler.",
    ),
    0x576E: ("initialize_subsystems_xms", "Cross-version mapped main subsystem/XMS initialization."),
    0x5BD1: (
        "load_and_play_selected_xmi",
        "Verified selected XMI read, sequence initialization, and playback path.",
    ),
    0x5CED: ("shutdown_player", "Cross-version mapped global shutdown and cleanup path."),
}


@dataclasses.dataclass(frozen=True)
class Instruction:
    address: int
    raw: bytes
    text: str


@dataclasses.dataclass
class Function:
    entry: int
    ghidra_entry: str
    ghidra_name: str
    ranges: list[tuple[int, int]]
    source_name: str = ""
    note: str = ""
    source_path: Path | None = None


@dataclasses.dataclass(frozen=True)
class EmitRange:
    start: int
    end: int
    macro: str
    kind: str


def segmented_to_linear(value: str) -> int:
    segment_text, offset_text = value.split(":")
    segment = int(segment_text, 16)
    offset = int(offset_text, 16)
    return (segment - 0x1000) * 16 + offset


def parse_function_map(path: Path) -> list[Function]:
    functions: list[Function] = []
    lines = path.read_text(encoding="utf-8").splitlines()
    if not lines or lines[0] != "entry\tname\tbody":
        raise RuntimeError(f"Unexpected function-map header in {path}")

    range_pattern = re.compile(
        r"([0-9a-fA-F]+:[0-9a-fA-F]+), ([0-9a-fA-F]+:[0-9a-fA-F]+)"
    )
    for line in lines[1:]:
        entry_text, ghidra_name, body_text = line.split("\t")
        ranges = [
            (segmented_to_linear(start), segmented_to_linear(end) + 1)
            for start, end in range_pattern.findall(body_text)
        ]
        if not ranges:
            raise RuntimeError(f"No body ranges for {entry_text}")
        entry = segmented_to_linear(entry_text)
        if not any(start <= entry < end for start, end in ranges):
            raise RuntimeError(f"Entry {entry_text} is outside its body")
        source_name, note = VERIFIED_NAMES.get(
            entry,
            (f"func_{entry:05x}", "Role not yet verified; boundary is provisional."),
        )
        functions.append(
            Function(
                entry=entry,
                ghidra_entry=entry_text,
                ghidra_name=ghidra_name,
                ranges=ranges,
                source_name=source_name,
                note=note,
            )
        )

    entries = [function.entry for function in functions]
    if len(entries) != len(set(entries)):
        raise RuntimeError("Duplicate linear function entries")
    return sorted(functions, key=lambda function: function.entry)


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


def disassemble_range(image: bytes, start: int, end: int) -> list[Instruction]:
    process = subprocess.run(
        ["ndisasm", "-b", "16", "-o", f"0x{start:x}", "-"],
        input=image[start:end],
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE,
        check=True,
    )
    instructions = parse_ndisasm(process.stdout.decode("utf-8"))
    cursor = start
    for instruction in instructions:
        if instruction.address != cursor:
            raise RuntimeError(
                f"ndisasm coverage drift at {cursor:05X}: got {instruction.address:05X}"
            )
        cursor += len(instruction.raw)
    if cursor != end:
        raise RuntimeError(f"ndisasm ended at {cursor:05X}, expected {end:05X}")
    return instructions


def bytes_directive(data: bytes, indent: str = "    ") -> str:
    return indent + "db " + ", ".join(f"0x{value:02X}" for value in data)


def ascii_preview(data: bytes) -> str:
    return "".join(chr(value) if 0x20 <= value <= 0x7E else "." for value in data)


def data_lines(data: bytes, start: int, indent: str = "    ") -> list[str]:
    lines: list[str] = []
    for offset in range(0, len(data), 16):
        block = data[offset : offset + 16]
        lines.append(
            f"{bytes_directive(block, indent)}"
            f" ; {start + offset:05X} |{ascii_preview(block)}|"
        )
    return lines


def safe_macro_name(name: str, part: int) -> str:
    return f"emit_{name}_part_{part:02d}"


def nasm_candidate(instruction: Instruction) -> str:
    """Add distance qualifiers which ndisasm omits for numeric branch targets."""
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


def write_function_sources(
    root: Path,
    functions: list[Function],
    image: bytes,
    fallbacks: set[int],
) -> tuple[list[EmitRange], dict[int, Instruction], int]:
    function_root = root / "src" / "functions"
    function_root.mkdir(parents=True, exist_ok=True)
    all_includes: list[str] = []
    emit_ranges: list[EmitRange] = []
    instruction_index: dict[int, Instruction] = {}
    instruction_count = 0

    for function in functions:
        group = f"{function.entry >> 8:02x}"
        relative_path = Path("src") / "functions" / group / (
            f"{function.entry:05x}_{function.source_name}.asm"
        )
        output_path = root / relative_path
        output_path.parent.mkdir(parents=True, exist_ok=True)
        function.source_path = relative_path
        all_includes.append(f'%include "{relative_path.as_posix()}"')

        lines = [
            f"; Linear entry {function.entry:05X} ({function.ghidra_entry})",
            f"; Ghidra working symbol: {function.ghidra_name}",
            f"; {function.note}",
            "; Generated losslessly; edit names/comments only after preserving build identity.",
            "",
        ]

        for part, (start, end) in enumerate(function.ranges):
            macro = safe_macro_name(function.source_name, part)
            emit_ranges.append(EmitRange(start, end, macro, "function"))
            instructions = disassemble_range(image, start, end)
            instruction_count += len(instructions)
            lines.append(f"%macro {macro} 0")
            lines.append("    %%fragment_start:")
            for instruction in instructions:
                instruction_index[instruction.address] = instruction
                if instruction.address == function.entry:
                    lines.append(f"{function.source_name}:")
                raw_text = instruction.raw.hex().upper()
                if instruction.address in fallbacks:
                    lines.append(
                        f"{bytes_directive(instruction.raw)}"
                        f" ; {instruction.address:05X} {raw_text} | {instruction.text}"
                        " | encoding preserved"
                    )
                else:
                    candidate = nasm_candidate(instruction)
                    lines.append(
                        f"    %%insn_{instruction.address:05x}:"
                    )
                    lines.append(
                        f"    {candidate}"
                        f" ; {instruction.address:05X} {raw_text}"
                    )
                    lines.append(
                        f"    %if ($ - %%insn_{instruction.address:05x})"
                        f" > {len(instruction.raw)}"
                    )
                    lines.append(
                        f'        %error "LONG_{instruction.address:05X}"'
                    )
                    lines.append("    %endif")
                    lines.append(
                        f"    times {len(instruction.raw)}"
                        f" - ($ - %%insn_{instruction.address:05x}) db 0"
                    )
            lines.extend(
                [
                    f"    %if ($ - %%fragment_start) != {end - start}",
                    f'        %error "SIZE_{start:05X}"',
                    "    %endif",
                    "%endmacro",
                    "",
                ]
            )
        output_path.write_text("\n".join(lines), encoding="utf-8")

    (root / "src" / "functions" / "all.asm").write_text(
        "; Generated function macro inventory.\n" + "\n".join(all_includes) + "\n",
        encoding="utf-8",
    )
    return emit_ranges, instruction_index, instruction_count


def write_gap_sources(
    root: Path,
    image: bytes,
    occupied: list[tuple[int, int]],
    code_end: int,
) -> list[EmitRange]:
    gaps: list[tuple[int, int]] = []
    cursor = 0
    for start, end in sorted(occupied):
        if start < cursor:
            raise RuntimeError(f"Overlapping function bodies at {start:05X}")
        if cursor < start:
            gaps.append((cursor, start))
        cursor = end
    if cursor < code_end:
        gaps.append((cursor, code_end))

    output = [
        "; Bytes inside the analyzed code span which Ghidra does not own as a",
        "; function body. These may be jump tables, alignment, embedded data, or",
        "; undiscovered code. They remain data until evidence proves otherwise.",
        "",
    ]
    emit_ranges: list[EmitRange] = []
    for index, (start, end) in enumerate(gaps):
        macro = f"emit_gap_{index:03d}_{start:05x}"
        emit_ranges.append(EmitRange(start, end, macro, "gap"))
        output.extend(
            [
                f"%macro {macro} 0",
                "    %%gap_start:",
                *data_lines(image[start:end], start),
                f"    %if ($ - %%gap_start) != {end - start}",
                f'        %error "GAP_SIZE_{start:05X}"',
                "    %endif",
                "%endmacro",
                "",
            ]
        )
    (root / "src" / "data" / "gaps.asm").write_text(
        "\n".join(output), encoding="utf-8"
    )
    return emit_ranges


def write_post_code_data(
    root: Path, image: bytes, code_end: int
) -> list[EmitRange]:
    data_root = root / "src" / "data" / "segments"
    data_root.mkdir(parents=True, exist_ok=True)
    emit_ranges: list[EmitRange] = []
    includes: list[str] = []
    start = code_end
    while start < len(image):
        end = min(start + DATA_CHUNK_SIZE, len(image))
        macro = f"emit_data_{start:05x}"
        relative_path = Path("src") / "data" / "segments" / f"data_{start:05x}.asm"
        includes.append(f'%include "{relative_path.as_posix()}"')
        lines = [
            f"; Unclassified load-image data {start:05X}..{end - 1:05X}.",
            f"%macro {macro} 0",
            "    %%data_start:",
            *data_lines(image[start:end], start),
            f"    %if ($ - %%data_start) != {end - start}",
            f'        %error "DATA_SIZE_{start:05X}"',
            "    %endif",
            "%endmacro",
            "",
        ]
        (root / relative_path).write_text("\n".join(lines), encoding="utf-8")
        emit_ranges.append(EmitRange(start, end, macro, "data"))
        start = end
    (data_root / "all.asm").write_text(
        "; Generated post-code data macro inventory.\n" + "\n".join(includes) + "\n",
        encoding="utf-8",
    )
    return emit_ranges


def write_header_source(root: Path, header: bytes) -> None:
    if len(header) != HEADER_SIZE:
        raise RuntimeError("Unexpected MZ header size")
    field_names = [
        "e_magic",
        "e_cblp",
        "e_cp",
        "e_crlc",
        "e_cparhdr",
        "e_minalloc",
        "e_maxalloc",
        "e_ss",
        "e_sp",
        "e_csum",
        "e_ip",
        "e_cs",
        "e_lfarlc",
        "e_ovno",
    ]
    words = [
        int.from_bytes(header[offset : offset + 2], "little")
        for offset in range(0, 0x1C, 2)
    ]
    relocation_count = words[3]
    relocation_offset = words[12]
    lines = [
        "; Reconstructed DOS MZ header for the deterministic V1.30 unpacked image.",
        "mz_header_start:",
    ]
    for index, (name, value) in enumerate(zip(field_names, words)):
        lines.append(f"    dw 0x{value:04X} ; {index * 2:04X} {name}")
    lines.append("")
    lines.append(f"    ; {relocation_count} relocation entries (offset, segment)")
    cursor = relocation_offset
    for index in range(relocation_count):
        offset = int.from_bytes(header[cursor : cursor + 2], "little")
        segment = int.from_bytes(header[cursor + 2 : cursor + 4], "little")
        linear = segment * 16 + offset
        lines.append(
            f"    dw 0x{offset:04X}, 0x{segment:04X}"
            f" ; relocation {index:03d}, load-image {linear:05X}"
        )
        cursor += 4
    if cursor < len(header):
        lines.extend(["", "    ; Header padding", *data_lines(header[cursor:], cursor)])
    lines.extend(
        [
            "",
            "    %if ($ - mz_header_start) != 0x200",
            '        %error "MZ_HEADER_SIZE"',
            "    %endif",
            "",
        ]
    )
    (root / "src" / "header.asm").write_text("\n".join(lines), encoding="utf-8")


def write_layout(root: Path, emit_ranges: list[EmitRange], image_size: int) -> None:
    ordered = sorted(emit_ranges, key=lambda item: item.start)
    cursor = 0
    lines = [
        "; Complete load-image emission order. Every byte has exactly one owner.",
        "load_image_start:",
    ]
    for item in ordered:
        if item.start != cursor:
            raise RuntimeError(
                f"Layout coverage gap/overlap at {cursor:05X}; next {item.start:05X}"
            )
        lines.append(f"    ; {item.start:05X}..{item.end - 1:05X} {item.kind}")
        lines.append(f"    {item.macro}")
        cursor = item.end
    if cursor != image_size:
        raise RuntimeError(f"Layout ends at {cursor:05X}, expected {image_size:05X}")
    lines.extend(
        [
            "",
            f"    %if ($ - load_image_start) != 0x{image_size:X}",
            '        %error "LOAD_IMAGE_SIZE"',
            "    %endif",
            "",
        ]
    )
    (root / "src" / "layout.asm").write_text("\n".join(lines), encoding="utf-8")


def write_main(root: Path) -> None:
    main = """; DOS GROOVIE Player V.EXE 1.30 -- complete lossless source root.
;
; Generated functions use real NASM instructions where NASM reproduces the
; original encoding. Noncanonical encodings and non-code bytes use explicit db.
; There are no imported executable byte ranges and no incbin directives.

bits 16

%include "src/functions/all.asm"
%include "src/data/gaps.asm"
%include "src/data/segments/all.asm"

section .header start=0 vstart=0 align=1
%include "src/header.asm"

; The MZ loader maps this section at runtime offset 0000h even though it follows
; the 512-byte header in the file. vstart keeps numeric near branches identical.
section .image follows=.header vstart=0 align=1
%include "src/layout.asm"
"""
    (root / "main.asm").write_text(main, encoding="utf-8")


def write_inventory(root: Path, functions: list[Function]) -> None:
    lines = ["linear_entry\tworking_name\tstatus\tghidra_entry\tghidra_name\tsource"]
    for function in functions:
        status = "verified-role" if function.entry in VERIFIED_NAMES else "unidentified"
        lines.append(
            f"{function.entry:05X}\t{function.source_name}\t{status}\t"
            f"{function.ghidra_entry}\t{function.ghidra_name}\t"
            f"{function.source_path.as_posix() if function.source_path else ''}"
        )
    (root / "analysis" / "function-inventory.tsv").write_text(
        "\n".join(lines) + "\n", encoding="utf-8"
    )


def assemble(root: Path, output: Path) -> subprocess.CompletedProcess[bytes]:
    return subprocess.run(
        ["nasm", "-f", "bin", "-o", str(output), "main.asm"],
        cwd=root,
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE,
    )


def prepare_generated_tree(root: Path) -> None:
    for target in [
        root / "src" / "functions",
        root / "src" / "data",
    ]:
        if target.exists():
            shutil.rmtree(target)
    (root / "src" / "functions").mkdir(parents=True)
    (root / "src" / "data" / "segments").mkdir(parents=True)
    (root / "analysis").mkdir(parents=True, exist_ok=True)
    (root / "build").mkdir(parents=True, exist_ok=True)


def generate_once(
    root: Path,
    reference: bytes,
    image: bytes,
    functions: list[Function],
    fallbacks: set[int],
) -> tuple[dict[int, Instruction], int, int, int]:
    prepare_generated_tree(root)
    write_header_source(root, reference[:HEADER_SIZE])
    function_ranges, instruction_index, instruction_count = write_function_sources(
        root, functions, image, fallbacks
    )
    occupied = sorted((item.start, item.end) for item in function_ranges)
    code_end = max(end for _, end in occupied)
    gap_ranges = write_gap_sources(root, image, occupied, code_end)
    data_ranges = write_post_code_data(root, image, code_end)
    write_layout(root, function_ranges + gap_ranges + data_ranges, len(image))
    write_main(root)
    write_inventory(root, functions)
    function_bytes = sum(end - start for start, end in occupied)
    return instruction_index, instruction_count, function_bytes, code_end


def write_coverage(
    root: Path,
    functions: list[Function],
    image_size: int,
    instruction_count: int,
    function_bytes: int,
    code_end: int,
    fallbacks: set[int],
    fallback_bytes: int,
) -> None:
    verified = sum(function.entry in VERIFIED_NAMES for function in functions)
    text = f"""# DOS V1.30 lossless source coverage

This inventory describes **mechanical source coverage**, not complete semantic
understanding.

| Measure | Count |
|---|---:|
| Unpacked load-image bytes represented in source | {image_size:,} / {image_size:,} |
| `incbin` directives | 0 |
| Provisional Ghidra function entries | {len(functions)} |
| Function-body bytes | {function_bytes:,} |
| Function-body instructions decoded | {instruction_count:,} |
| Instructions requiring exact `db` encoding fallback | {len(fallbacks):,} |
| Bytes in encoding fallbacks | {fallback_bytes:,} |
| Verified semantic function roles | {verified} |
| Unidentified/provisionally bounded functions | {len(functions) - verified} |
| Analyzed function/gap span end | `{code_end:05X}h` |
| Non-function bytes in the load image | {image_size - function_bytes:,} |

Every function-body instruction retains its runtime offset and original opcode
bytes in a comment. A `db` line inside a function means the instruction was
decoded, but NASM's preferred spelling would emit different bytes; the decoded
mnemonic is preserved in the comment.

Bytes outside Ghidra-owned bodies remain explicit data. Some may later prove to
be undiscovered code, jump tables, inline constants, or alignment. Runtime
evidence should change ownership only after the byte-identical build remains
green.
"""
    (root / "analysis" / "SOURCE_COVERAGE.md").write_text(text, encoding="utf-8")


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--reference", required=True, type=Path)
    parser.add_argument(
        "--function-map",
        type=Path,
        default=Path("analysis/function-map.tsv"),
    )
    parser.add_argument("--root", type=Path, default=Path(__file__).resolve().parents[1])
    args = parser.parse_args()

    root = args.root.resolve()
    reference_path = args.reference.resolve()
    map_path = (
        args.function_map.resolve()
        if args.function_map.is_absolute()
        else (root / args.function_map).resolve()
    )
    reference = reference_path.read_bytes()
    if len(reference) < HEADER_SIZE:
        raise RuntimeError("Reference is too small")
    image = reference[HEADER_SIZE:]
    functions = parse_function_map(map_path)

    fallbacks: set[int] = set()
    instruction_index: dict[int, Instruction] = {}
    instruction_count = function_bytes = code_end = 0
    output = root / "build" / "generator-probe.exe"

    for _ in range(20):
        (
            instruction_index,
            instruction_count,
            function_bytes,
            code_end,
        ) = generate_once(root, reference, image, functions, fallbacks)
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
                f"Generated size {len(rebuilt)} differs from reference {len(reference)}"
            )
        mismatched = set()
        for address, instruction in instruction_index.items():
            actual = rebuilt[
                HEADER_SIZE + address : HEADER_SIZE + address + len(instruction.raw)
            ]
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
                        f"Non-instruction mismatch at file offset {offset:05X}: "
                        f"{actual:02X} != {expected:02X}"
                    )
            raise RuntimeError("Unexplained length or trailing mismatch")
        break
    else:
        raise RuntimeError("Encoding fallback generation did not converge")

    fallback_bytes = sum(len(instruction_index[address].raw) for address in fallbacks)
    write_coverage(
        root,
        functions,
        len(image),
        instruction_count,
        function_bytes,
        code_end,
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
