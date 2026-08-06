#!/usr/bin/env python3
"""Inspect DOS MZ and PE32 layout values needed by the lossless generator."""

from __future__ import annotations

import argparse
import hashlib
import json
import struct
from pathlib import Path


def u16(data: bytes, offset: int) -> int:
    return struct.unpack_from("<H", data, offset)[0]


def u32(data: bytes, offset: int) -> int:
    return struct.unpack_from("<I", data, offset)[0]


def inspect(path: Path) -> dict[str, object]:
    data = path.read_bytes()
    result: dict[str, object] = {
        "path": str(path),
        "size": len(data),
        "sha256": hashlib.sha256(data).hexdigest(),
        "format": "unknown",
    }
    if len(data) < 0x40 or data[:2] != b"MZ":
        return result

    header_paragraphs = u16(data, 0x08)
    mz: dict[str, object] = {
        "header_size": header_paragraphs * 16,
        "relocations": u16(data, 0x06),
        "relocation_table_offset": u16(data, 0x18),
        "entry_cs": u16(data, 0x16),
        "entry_ip": u16(data, 0x14),
        "initial_ss": u16(data, 0x0E),
        "initial_sp": u16(data, 0x10),
    }
    result["format"] = "DOS MZ"
    result["mz"] = mz
    marker_window = data[: min(len(data), 0x1000)]
    if b"LZ91" in marker_window or b"LZ90" in marker_window:
        result["packed_hint"] = "LZEXE marker present"

    pe_offset = u32(data, 0x3C)
    if pe_offset + 0x18 > len(data) or data[pe_offset : pe_offset + 4] != b"PE\0\0":
        result["generator_hint"] = {
            "bits": 16,
            "address_format": "segmented",
            "prefix_size": mz["header_size"],
            "origin": 0,
            "segment_base": "set this to Ghidra's segment for load-image offset 0",
        }
        return result

    coff = pe_offset + 4
    section_count = u16(data, coff + 2)
    optional_size = u16(data, coff + 16)
    optional = coff + 20
    magic = u16(data, optional)
    if magic != 0x10B:
        result["format"] = "PE (not PE32)"
        return result
    image_base = u32(data, optional + 28)
    entry_rva = u32(data, optional + 16)
    section_table = optional + optional_size
    sections: list[dict[str, object]] = []
    for index in range(section_count):
        offset = section_table + index * 40
        if offset + 40 > len(data):
            break
        name = data[offset : offset + 8].split(b"\0", 1)[0].decode(
            "ascii", errors="replace"
        )
        sections.append(
            {
                "name": name,
                "virtual_size": u32(data, offset + 8),
                "virtual_address": u32(data, offset + 12),
                "raw_size": u32(data, offset + 16),
                "raw_offset": u32(data, offset + 20),
            }
        )
    result["format"] = "PE32"
    result["pe"] = {
        "pe_offset": pe_offset,
        "image_base": image_base,
        "entry_rva": entry_rva,
        "entry_va": image_base + entry_rva,
        "sections": sections,
    }
    executable_sections = [
        section
        for section in sections
        if section["raw_size"] and section["virtual_address"]
    ]
    if executable_sections:
        first = min(executable_sections, key=lambda section: section["raw_offset"])
        flat_origin = (
            image_base + int(first["virtual_address"]) - int(first["raw_offset"])
        )
        result["generator_hint"] = {
            "bits": 32,
            "address_format": "hex",
            "prefix_size": 0,
            "origin": flat_origin,
            "derivation": (
                "image_base + first mapped section RVA - first mapped "
                "section raw offset"
            ),
        }
    return result


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("executable", type=Path)
    parser.add_argument("--json", action="store_true")
    args = parser.parse_args()
    result = inspect(args.executable)
    if args.json:
        print(json.dumps(result, indent=2, sort_keys=True))
        return 0
    print(f"path: {result['path']}")
    print(f"format: {result['format']}")
    print(f"size: {result['size']}")
    print(f"sha256: {result['sha256']}")
    if "mz" in result:
        print("MZ:", json.dumps(result["mz"], sort_keys=True))
    if "pe" in result:
        print("PE:", json.dumps(result["pe"], sort_keys=True))
    if "packed_hint" in result:
        print(f"packed hint: {result['packed_hint']}")
    if "generator_hint" in result:
        print("generator hint:", json.dumps(result["generator_hint"], sort_keys=True))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
