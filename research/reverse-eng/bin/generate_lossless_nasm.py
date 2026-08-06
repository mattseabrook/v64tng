#!/usr/bin/env python3
"""Generate a complete, byte-identical NASM source tree from an x86 binary.

Ghidra supplies provisional function ownership ranges. ndisasm supplies NASM
instruction text. Bytes outside those ranges are emitted as explicit data.
Instructions whose preferred NASM encoding differs from the reference are
automatically converted to exact ``db`` directives with the decoded mnemonic
retained in a comment.

This is intentionally a reconstruction tool, not a decompiler. Function
boundaries, names, types, and semantics remain research findings.
"""

from __future__ import annotations

import argparse
import dataclasses
import hashlib
import json
import re
import shutil
import stat
import subprocess
import sys
from pathlib import Path


@dataclasses.dataclass(frozen=True)
class AddressModel:
    address_format: str
    origin: int
    prefix_size: int
    segment_base: int

    def parse(self, value: str) -> int:
        value = value.strip()
        if self.address_format == "segmented":
            segment_text, offset_text = value.split(":", 1)
            segment = int(segment_text, 16)
            offset = int(offset_text, 16)
            return (segment - self.segment_base) * 16 + offset
        return int(value, 16)

    def raw_offset(self, address: int) -> int:
        return self.prefix_size + address - self.origin

    def display(self, address: int) -> str:
        width = 5 if self.address_format == "segmented" else 8
        return f"{address:0{width}X}"


@dataclasses.dataclass(frozen=True)
class Instruction:
    address: int
    raw_offset: int
    raw: bytes
    text: str


@dataclasses.dataclass
class Function:
    entry: int
    analyzer_entry: str
    analyzer_name: str
    ranges: list[tuple[int, int]]
    source_path: Path | None = None


@dataclasses.dataclass(frozen=True)
class EmitRange:
    raw_start: int
    raw_end: int
    macro: str
    kind: str


def parse_number(value: str) -> int:
    return int(value, 0)


def safe_name(value: str) -> str:
    result = re.sub(r"[^0-9A-Za-z_]+", "_", value).strip("_").lower()
    if not result:
        return "function"
    if result[0].isdigit():
        result = "fn_" + result
    return result


def require_tool(name: str) -> None:
    if shutil.which(name) is None:
        raise RuntimeError(f"Required command is absent: {name}")


def parse_function_map(path: Path | None, model: AddressModel) -> list[Function]:
    if path is None:
        return []

    lines = path.read_text(encoding="utf-8").splitlines()
    if not lines or lines[0] != "entry\tname\tbody":
        raise RuntimeError(
            f"{path} must begin with the Ghidra exporter header "
            "'entry\\tname\\tbody'"
        )

    if model.address_format == "segmented":
        address = r"[0-9A-Fa-f]+:[0-9A-Fa-f]+"
    else:
        address = r"[0-9A-Fa-f]+"
    range_pattern = re.compile(fr"({address}), ({address})")

    functions: list[Function] = []
    for line_number, line in enumerate(lines[1:], 2):
        try:
            entry_text, analyzer_name, body_text = line.split("\t")
        except ValueError as error:
            raise RuntimeError(f"Malformed TSV line {line_number}: {line}") from error
        ranges = [
            (model.parse(start), model.parse(end) + 1)
            for start, end in range_pattern.findall(body_text)
        ]
        if not ranges:
            raise RuntimeError(f"No body ranges on TSV line {line_number}")
        entry = model.parse(entry_text)
        if not any(start <= entry < end for start, end in ranges):
            raise RuntimeError(
                f"Function entry {entry_text} is outside its exported body"
            )
        functions.append(
            Function(
                entry=entry,
                analyzer_entry=entry_text,
                analyzer_name=analyzer_name,
                ranges=ranges,
            )
        )

    functions.sort(key=lambda item: item.entry)
    entries = [item.entry for item in functions]
    if len(entries) != len(set(entries)):
        raise RuntimeError("The function map contains duplicate entries")
    return functions


def validate_ranges(
    functions: list[Function],
    model: AddressModel,
    reference_size: int,
) -> None:
    owned: list[tuple[int, int, int]] = []
    for function in functions:
        for start, end in function.ranges:
            raw_start = model.raw_offset(start)
            raw_end = model.raw_offset(end)
            if raw_start < model.prefix_size or raw_end > reference_size:
                raise RuntimeError(
                    f"Function {function.analyzer_entry} range "
                    f"{model.display(start)}..{model.display(end - 1)} maps outside "
                    "the analyzable image"
                )
            if raw_start >= raw_end:
                raise RuntimeError(
                    f"Function {function.analyzer_entry} has an empty/reversed range"
                )
            owned.append((raw_start, raw_end, function.entry))

    owned.sort()
    for left, right in zip(owned, owned[1:]):
        if left[1] > right[0]:
            raise RuntimeError(
                "Overlapping analyzer-owned ranges at raw offsets "
                f"0x{left[0]:X} and 0x{right[0]:X}"
            )


def parse_ndisasm(output: str) -> list[tuple[int, bytes, str]]:
    main_pattern = re.compile(
        r"^([0-9A-Fa-f]+)\s+([0-9A-Fa-f]+)\s+(.+?)\s*$"
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
            raise RuntimeError(f"Cannot parse ndisasm output: {line}")
    return [
        (int(address), bytes.fromhex(str(raw_hex)), str(text))
        for address, raw_hex, text in records
    ]


def disassemble_range(
    reference: bytes,
    bits: int,
    model: AddressModel,
    start: int,
    end: int,
) -> list[Instruction]:
    raw_start = model.raw_offset(start)
    raw_end = model.raw_offset(end)
    process = subprocess.run(
        ["ndisasm", "-b", str(bits), "-o", f"0x{start:X}", "-"],
        input=reference[raw_start:raw_end],
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE,
        check=True,
    )
    decoded = parse_ndisasm(process.stdout.decode("utf-8"))
    instructions: list[Instruction] = []
    cursor = start
    raw_cursor = raw_start
    for address, raw, text in decoded:
        if address != cursor:
            raise RuntimeError(
                f"ndisasm coverage drift at {model.display(cursor)}: "
                f"got {model.display(address)}"
            )
        instructions.append(
            Instruction(
                address=address,
                raw_offset=raw_cursor,
                raw=raw,
                text=text,
            )
        )
        cursor += len(raw)
        raw_cursor += len(raw)
    if cursor != end:
        raise RuntimeError(
            f"ndisasm ended at {model.display(cursor)}, "
            f"expected {model.display(end)}"
        )
    return instructions


def bytes_directive(data: bytes, indent: str = "    ") -> str:
    return indent + "db " + ", ".join(f"0x{value:02X}" for value in data)


def ascii_preview(data: bytes) -> str:
    return "".join(chr(value) if 0x20 <= value <= 0x7E else "." for value in data)


def data_lines(data: bytes, raw_start: int) -> list[str]:
    result: list[str] = []
    for offset in range(0, len(data), 16):
        block = data[offset : offset + 16]
        result.append(
            f"{bytes_directive(block)}"
            f" ; raw {raw_start + offset:08X} |{ascii_preview(block)}|"
        )
    return result


def nasm_candidate(instruction: Instruction) -> str:
    """Restore distance qualifiers ndisasm omits for numeric short branches."""
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
    reference: bytes,
    bits: int,
    model: AddressModel,
    fallbacks: set[int],
) -> tuple[list[EmitRange], dict[int, Instruction], int, list[str]]:
    function_root = root / "src" / "functions"
    function_root.mkdir(parents=True, exist_ok=True)
    includes: list[str] = []
    emit_ranges: list[EmitRange] = []
    instruction_index: dict[int, Instruction] = {}
    instruction_count = 0

    for function in functions:
        display = model.display(function.entry).lower()
        analyzer = safe_name(function.analyzer_name)
        filename = f"{display}_{analyzer}.asm"
        relative_path = Path("src") / "functions" / filename
        function.source_path = relative_path
        includes.append(f'%include "{relative_path.as_posix()}"')
        lines = [
            f"; Analyzer entry: {function.analyzer_entry}",
            f"; Analyzer symbol: {function.analyzer_name}",
            "; Boundary and name are provisional until independently verified.",
            "",
        ]

        for part, (start, end) in enumerate(function.ranges):
            macro = f"emit_function_{display}_part_{part:02d}"
            raw_start = model.raw_offset(start)
            raw_end = model.raw_offset(end)
            emit_ranges.append(
                EmitRange(raw_start, raw_end, macro, "analyzer-owned function")
            )
            instructions = disassemble_range(
                reference, bits, model, start, end
            )
            instruction_count += len(instructions)
            lines.extend([f"%macro {macro} 0", "    %%fragment_start:"])
            for instruction in instructions:
                if instruction.address in instruction_index:
                    raise RuntimeError(
                        "Duplicate instruction address "
                        f"{model.display(instruction.address)}"
                    )
                instruction_index[instruction.address] = instruction
                address_text = model.display(instruction.address)
                if instruction.address == function.entry:
                    lines.append(f"function_{display}:")
                raw_text = instruction.raw.hex().upper()
                if instruction.address in fallbacks:
                    lines.append(
                        f"{bytes_directive(instruction.raw)}"
                        f" ; {address_text} {raw_text} | {instruction.text}"
                        " | exact encoding fallback"
                    )
                    continue
                local_label = f"%%insn_{display}_{instruction.address:X}"
                lines.extend(
                    [
                        f"    {local_label}:",
                        f"    {nasm_candidate(instruction)}"
                        f" ; {address_text} {raw_text}",
                        f"    %if ($ - {local_label}) > {len(instruction.raw)}",
                        f'        %error "LONG_{instruction.address:X}"',
                        "    %endif",
                        f"    times {len(instruction.raw)}"
                        f" - ($ - {local_label}) db 0",
                    ]
                )
            lines.extend(
                [
                    f"    %if ($ - %%fragment_start) != {end - start}",
                    f'        %error "function size drift: {model.display(start)}"',
                    "    %endif",
                    "%endmacro",
                    "",
                ]
            )
        (root / relative_path).write_text("\n".join(lines), encoding="utf-8")

    return emit_ranges, instruction_index, instruction_count, includes


def write_data_sources(
    root: Path,
    reference: bytes,
    function_ranges: list[EmitRange],
    prefix_size: int,
    chunk_size: int,
) -> tuple[list[EmitRange], list[str]]:
    data_root = root / "src" / "data"
    data_root.mkdir(parents=True, exist_ok=True)
    occupied = sorted(function_ranges, key=lambda item: item.raw_start)
    result = list(occupied)
    includes: list[str] = []
    data_index = 0

    def emit_gap(start: int, end: int) -> None:
        nonlocal data_index
        cursor = start
        while cursor < end:
            boundary = min(cursor + chunk_size, end)
            if cursor < prefix_size < boundary:
                boundary = prefix_size
            macro = f"emit_data_{data_index:04d}_{cursor:08x}"
            relative_path = (
                Path("src")
                / "data"
                / f"data_{data_index:04d}_{cursor:08x}.asm"
            )
            block = reference[cursor:boundary]
            lines = [
                f"; Explicit bytes at raw offsets {cursor:08X}..{boundary:08X}.",
                f"%macro {macro} 0",
                "    %%chunk_start:",
                *data_lines(block, cursor),
                f"    %if ($ - %%chunk_start) != {len(block)}",
                f'        %error "data size drift: raw {cursor:08X}"',
                "    %endif",
                "%endmacro",
                "",
            ]
            (root / relative_path).write_text("\n".join(lines), encoding="utf-8")
            includes.append(f'%include "{relative_path.as_posix()}"')
            result.append(EmitRange(cursor, boundary, macro, "explicit data"))
            cursor = boundary
            data_index += 1

    cursor = 0
    for item in occupied:
        if cursor < item.raw_start:
            emit_gap(cursor, item.raw_start)
        cursor = item.raw_end
    if cursor < len(reference):
        emit_gap(cursor, len(reference))

    return sorted(result, key=lambda item: item.raw_start), includes


def append_layout(
    lines: list[str],
    ranges: list[EmitRange],
    position_bias: int,
    expected_size: int,
) -> None:
    cursor = position_bias
    for item in ranges:
        if item.raw_start != cursor:
            raise RuntimeError(
                f"Layout gap/overlap at raw 0x{cursor:X}; "
                f"next range begins at 0x{item.raw_start:X}"
            )
        relative = item.raw_start - position_bias
        lines.extend(
            [
                f"; raw {item.raw_start:08X}..{item.raw_end:08X} ({item.kind})",
                f"%if ($ - $$) != 0x{relative:X}",
                f'    %error "layout drift at raw {item.raw_start:08X}"',
                "%endif",
                item.macro,
                "",
            ]
        )
        cursor = item.raw_end
    if cursor != expected_size:
        raise RuntimeError(
            f"Layout ends at raw 0x{cursor:X}, expected 0x{expected_size:X}"
        )
    lines.extend(
        [
            f"%if ($ - $$) != 0x{expected_size - position_bias:X}",
            '    %error "final section size drift"',
            "%endif",
            "",
        ]
    )


def write_main(
    root: Path,
    bits: int,
    model: AddressModel,
    ranges: list[EmitRange],
    reference_size: int,
    title: str,
    function_includes: list[str],
    data_includes: list[str],
) -> None:
    lines = [
        f"; {title} -- mechanically generated lossless source root.",
        ";",
        "; Analyzer-owned ranges use decoded instructions where NASM emits the",
        "; historical bytes. All other bytes and noncanonical encodings are",
        "; explicit db directives. No binary byte range is imported.",
        "",
        f"bits {bits}",
        "",
        "; Functions",
        *function_includes,
        "",
        "; Data Segments",
        *data_includes,
        "",
    ]
    if model.prefix_size:
        prefix = [item for item in ranges if item.raw_end <= model.prefix_size]
        image = [item for item in ranges if item.raw_start >= model.prefix_size]
        if len(prefix) + len(image) != len(ranges):
            raise RuntimeError("An emission range crosses the prefix boundary")
        lines.extend(
            [
                "section .prefix start=0 vstart=0 align=1",
                "",
            ]
        )
        append_layout(lines, prefix, 0, model.prefix_size)
        lines.extend(
            [
                "; The loader maps the image after the on-disk prefix at the",
                "; analysis origin below.",
                f"section .image follows=.prefix vstart=0x{model.origin:X} align=1",
                "",
            ]
        )
        append_layout(lines, image, model.prefix_size, reference_size)
    else:
        lines.extend([f"org 0x{model.origin:X}", ""])
        append_layout(lines, ranges, 0, reference_size)
    (root / "src" / "main.asm").write_text(
        "\n".join(lines), encoding="utf-8"
    )


def write_address_map(
    root: Path,
    functions: list[Function],
    model: AddressModel,
) -> None:
    lines = ["analysis_entry\tanalyzer_entry\tanalyzer_name\traw_ranges\tsource"]
    for function in functions:
        raw_ranges = ",".join(
            f"{model.raw_offset(start):08X}-{model.raw_offset(end) - 1:08X}"
            for start, end in function.ranges
        )
        assert function.source_path is not None
        lines.append(
            f"{model.display(function.entry)}\t{function.analyzer_entry}\t"
            f"{function.analyzer_name}\t{raw_ranges}\t"
            f"{function.source_path.as_posix()}"
        )
    (root / "ADDRESS_MAP.tsv").write_text(
        "\n".join(lines) + "\n", encoding="utf-8"
    )


def write_build_script(root: Path, digest: str, output_name: str) -> None:
    script = f"""#!/usr/bin/env bash
set -euo pipefail

project_dir="$(cd -- "$(dirname -- "${{BASH_SOURCE[0]}}")" && pwd)"
output="$project_dir/build/{output_name}"
expected_sha256="{digest}"

mkdir -p "$project_dir/build"
if rg --line-number '^[[:space:]]*incbin([[:space:]]|$)' "$project_dir/src"; then
    echo "error: source contains an incbin directive" >&2
    exit 1
fi

(
    cd "$project_dir"
    nasm -f bin -o "$output" src/main.asm
)

actual_sha256="$(sha256sum "$output" | cut -d' ' -f1)"
if [[ "$actual_sha256" != "$expected_sha256" ]]; then
    echo "error: canonical SHA-256 mismatch" >&2
    echo "expected $expected_sha256" >&2
    echo "actual   $actual_sha256" >&2
    exit 1
fi

echo "Canonical byte identity verified: $output"
"""
    path = root / "build.sh"
    path.write_text(script, encoding="utf-8")
    path.chmod(path.stat().st_mode | stat.S_IXUSR | stat.S_IXGRP | stat.S_IXOTH)


def prepare_output(root: Path, force: bool) -> None:
    marker = root / ".lossless-nasm-worktree"
    if root in {Path("/"), Path.home().resolve(), Path.cwd().resolve()}:
        raise RuntimeError(f"Refusing unsafe output directory: {root}")
    if root.exists() and any(root.iterdir()):
        if not force:
            raise RuntimeError(
                f"Output directory is not empty: {root}; use --force only to "
                "regenerate a marked worktree"
            )
        if not marker.is_file():
            raise RuntimeError(
                f"Refusing to overwrite unmarked directory: {root}"
            )
    root.mkdir(parents=True, exist_ok=True)
    for relative in ("src", "build", "ADDRESS_MAP.tsv", "build.sh", "generation.json"):
        target = root / relative
        if target.is_dir():
            shutil.rmtree(target)
        elif target.exists():
            target.unlink()
    (root / "build").mkdir()
    marker.write_text(
        "Generated by research/reverse-eng/bin/generate_lossless_nasm.py\n",
        encoding="utf-8",
    )


def assemble(root: Path) -> subprocess.CompletedProcess[bytes]:
    return subprocess.run(
        ["nasm", "-f", "bin", "-o", "build/generator-probe.bin", "src/main.asm"],
        cwd=root,
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE,
    )


def first_mismatch(expected: bytes, actual: bytes) -> int | None:
    for offset, (left, right) in enumerate(zip(expected, actual)):
        if left != right:
            return offset
    if len(expected) != len(actual):
        return min(len(expected), len(actual))
    return None


def main() -> int:
    parser = argparse.ArgumentParser(
        description="Generate byte-identical, explicit NASM source from x86 bytes"
    )
    parser.add_argument("--reference", required=True, type=Path)
    parser.add_argument("--output-dir", required=True, type=Path)
    parser.add_argument("--function-map", type=Path)
    parser.add_argument("--bits", required=True, type=int, choices=(16, 32, 64))
    parser.add_argument(
        "--address-format",
        choices=("hex", "segmented"),
        default="hex",
        help="format used by Ghidra in functions.tsv",
    )
    parser.add_argument(
        "--origin",
        type=parse_number,
        default=0,
        help="analysis address corresponding to the first byte after --prefix-size",
    )
    parser.add_argument(
        "--prefix-size",
        type=parse_number,
        default=0,
        help="on-disk bytes mapped separately from the analyzed image",
    )
    parser.add_argument(
        "--segment-base",
        type=parse_number,
        default=0,
        help="Ghidra segment corresponding to logical image offset zero",
    )
    parser.add_argument("--chunk-size", type=parse_number, default=0x1000)
    parser.add_argument("--title", default="x86 binary")
    parser.add_argument("--output-name", default="rebuilt.bin")
    parser.add_argument("--force", action="store_true")
    args = parser.parse_args()

    require_tool("nasm")
    require_tool("ndisasm")
    require_tool("rg")
    require_tool("sha256sum")

    reference_path = args.reference.resolve()
    map_path = args.function_map.resolve() if args.function_map else None
    root = args.output_dir.resolve()
    reference = reference_path.read_bytes()
    if not reference:
        raise RuntimeError("Reference binary is empty")
    if args.prefix_size < 0 or args.prefix_size > len(reference):
        raise RuntimeError("--prefix-size is outside the reference file")
    if args.chunk_size <= 0:
        raise RuntimeError("--chunk-size must be positive")

    model = AddressModel(
        address_format=args.address_format,
        origin=args.origin,
        prefix_size=args.prefix_size,
        segment_base=args.segment_base,
    )
    functions = parse_function_map(map_path, model)
    validate_ranges(functions, model, len(reference))
    prepare_output(root, args.force)

    fallbacks: set[int] = set()
    instruction_index: dict[int, Instruction] = {}
    instruction_count = 0
    convergence_limit = 50
    for _ in range(convergence_limit):
        function_ranges, instruction_index, instruction_count, function_includes = (
            write_function_sources(
                root,
                functions,
                reference,
                args.bits,
                model,
                fallbacks,
            )
        )
        ranges, data_includes = write_data_sources(
            root,
            reference,
            function_ranges,
            args.prefix_size,
            args.chunk_size,
        )
        write_main(
            root,
            args.bits,
            model,
            ranges,
            len(reference),
            args.title,
            function_includes,
            data_includes,
        )
        result = assemble(root)
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
            raise RuntimeError(
                "NASM failed without a recoverable exact-encoding marker"
            )

        rebuilt = (root / "build" / "generator-probe.bin").read_bytes()
        mismatched = {
            address
            for address, instruction in instruction_index.items()
            if rebuilt[
                instruction.raw_offset : instruction.raw_offset
                + len(instruction.raw)
            ]
            != instruction.raw
        }
        new = mismatched - fallbacks
        if new:
            fallbacks.update(new)
            continue
        mismatch = first_mismatch(reference, rebuilt)
        if mismatch is not None:
            expected = reference[mismatch] if mismatch < len(reference) else None
            actual = rebuilt[mismatch] if mismatch < len(rebuilt) else None
            raise RuntimeError(
                f"Non-instruction mismatch at raw 0x{mismatch:X}: "
                f"expected {expected!r}, got {actual!r}"
            )
        break
    else:
        raise RuntimeError("Exact-encoding fallback generation did not converge")

    digest = hashlib.sha256(reference).hexdigest()
    write_address_map(root, functions, model)
    write_build_script(root, digest, args.output_name)
    metadata = {
        "schema": 1,
        "title": args.title,
        "reference_name": reference_path.name,
        "reference_size": len(reference),
        "reference_sha256": digest,
        "bits": args.bits,
        "address_format": args.address_format,
        "origin": args.origin,
        "prefix_size": args.prefix_size,
        "segment_base": args.segment_base,
        "function_count": len(functions),
        "instruction_count": instruction_count,
        "exact_encoding_fallback_count": len(fallbacks),
        "canonical_output": f"build/{args.output_name}",
    }
    (root / "generation.json").write_text(
        json.dumps(metadata, indent=2, sort_keys=True) + "\n",
        encoding="utf-8",
    )
    final = root / "build" / args.output_name
    shutil.copyfile(root / "build" / "generator-probe.bin", final)
    print(
        f"Generated {len(functions)} functions and {instruction_count} "
        f"instructions with {len(fallbacks)} exact-encoding fallbacks"
    )
    print(f"Byte-identical output verified: {final}")
    print(f"SHA-256: {digest}")
    return 0


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except (OSError, RuntimeError, subprocess.CalledProcessError) as error:
        print(f"error: {error}", file=sys.stderr)
        raise SystemExit(1)
