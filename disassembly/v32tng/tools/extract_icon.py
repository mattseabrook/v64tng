#!/usr/bin/env python3
"""Rebuild the original ICO container from v32tng.exe's PE resources."""

from __future__ import annotations

import argparse
import hashlib
import struct
from pathlib import Path


EXPECTED_EXE_SHA256 = "3c8c3fd3edc27717ae2a08b1f98c7a58f72bd91860a080a29e40d1da8854c36c"
EXPECTED_ICON_IMAGE_SHA256 = "9ff796e8b543f275852f509dadc62814106270592896f16efdf116d2d6acbed9"


def u16(data: bytes, offset: int) -> int:
    return struct.unpack_from("<H", data, offset)[0]


def u32(data: bytes, offset: int) -> int:
    return struct.unpack_from("<I", data, offset)[0]


class PeResources:
    def __init__(self, data: bytes) -> None:
        self.data = data
        pe = u32(data, 0x3C)
        if data[pe : pe + 4] != b"PE\0\0":
            raise ValueError("not a PE image")
        coff = pe + 4
        section_count = u16(data, coff + 2)
        optional_size = u16(data, coff + 16)
        optional = coff + 20
        if u16(data, optional) != 0x10B:
            raise ValueError("expected a PE32 optional header")
        directory = optional + 96
        self.resource_rva = u32(data, directory + 8 * 2)
        section_table = optional + optional_size
        self.sections: list[tuple[int, int, int, int]] = []
        for index in range(section_count):
            entry = section_table + index * 40
            virtual_size = u32(data, entry + 8)
            virtual_address = u32(data, entry + 12)
            raw_size = u32(data, entry + 16)
            raw_offset = u32(data, entry + 20)
            self.sections.append((virtual_address, virtual_size, raw_offset, raw_size))
        self.resource_raw = self.rva_to_raw(self.resource_rva)

    def rva_to_raw(self, rva: int) -> int:
        for virtual_address, virtual_size, raw_offset, raw_size in self.sections:
            extent = max(virtual_size, raw_size)
            if virtual_address <= rva < virtual_address + extent:
                delta = rva - virtual_address
                if delta >= raw_size:
                    raise ValueError(f"RVA {rva:08X} is not file-backed")
                return raw_offset + delta
        raise ValueError(f"RVA {rva:08X} is outside every section")

    def _directory_entry(self, relative: int, wanted_id: int) -> int:
        directory = self.resource_raw + relative
        named = u16(self.data, directory + 12)
        ids = u16(self.data, directory + 14)
        for index in range(named + ids):
            entry = directory + 16 + index * 8
            name = u32(self.data, entry)
            target = u32(self.data, entry + 4)
            if not (name & 0x80000000) and name == wanted_id:
                return target
        raise KeyError(f"resource ID {wanted_id} not found")

    def resource(self, type_id: int, item_id: int, language_id: int = 1033) -> bytes:
        type_target = self._directory_entry(0, type_id)
        if not type_target & 0x80000000:
            raise ValueError("resource type entry does not point to a directory")
        item_target = self._directory_entry(type_target & 0x7FFFFFFF, item_id)
        if not item_target & 0x80000000:
            raise ValueError("resource item entry does not point to a directory")
        language_target = self._directory_entry(item_target & 0x7FFFFFFF, language_id)
        if language_target & 0x80000000:
            raise ValueError("resource language entry unexpectedly points to a directory")
        data_entry = self.resource_raw + language_target
        payload_rva = u32(self.data, data_entry)
        payload_size = u32(self.data, data_entry + 4)
        payload_raw = self.rva_to_raw(payload_rva)
        return self.data[payload_raw : payload_raw + payload_size]


def rebuild_ico(pe: PeResources) -> tuple[bytes, list[str]]:
    group = pe.resource(14, 101)  # RT_GROUP_ICON, historical resource ID 101
    reserved, kind, count = struct.unpack_from("<HHH", group)
    if (reserved, kind) != (0, 1) or len(group) != 6 + count * 14:
        raise ValueError("malformed RT_GROUP_ICON resource")

    images: list[bytes] = []
    entries: list[bytes] = []
    descriptions: list[str] = []
    next_offset = 6 + count * 16
    for index in range(count):
        fields = struct.unpack_from("<BBBBHHIH", group, 6 + index * 14)
        width, height, colors, reserved_byte, planes, bit_count, declared_size, resource_id = fields
        image = pe.resource(3, resource_id)  # RT_ICON
        if len(image) != declared_size:
            raise ValueError(f"icon {resource_id} size mismatch: group={declared_size}, data={len(image)}")
        entries.append(struct.pack(
            "<BBBBHHII", width, height, colors, reserved_byte,
            planes, bit_count, len(image), next_offset,
        ))
        images.append(image)
        descriptions.append(
            f"resource {resource_id}: {width or 256}x{height or 256}, "
            f"{bit_count} bpp, {colors or 256} colors, {len(image)} bytes"
        )
        next_offset += len(image)

    if count == 1 and hashlib.sha256(images[0]).hexdigest() != EXPECTED_ICON_IMAGE_SHA256:
        raise ValueError("the embedded icon image does not match the verified v32tng.exe resource")
    return struct.pack("<HHH", 0, 1, count) + b"".join(entries) + b"".join(images), descriptions


def main() -> int:
    repo_root = Path(__file__).resolve().parents[3]
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "exe", nargs="?", type=Path,
        default=repo_root / "research/reverse-eng/v32tng/v32tng.exe",
        help="canonical v32tng.exe (default: research/reverse-eng/v32tng/v32tng.exe)",
    )
    parser.add_argument(
        "-o", "--output", type=Path,
        default=Path(__file__).resolve().parents[1] / "resources/v32tng.ico",
        help="output ICO path (default: disassembly/v32tng/resources/v32tng.ico)",
    )
    args = parser.parse_args()

    data = args.exe.read_bytes()
    digest = hashlib.sha256(data).hexdigest()
    if digest != EXPECTED_EXE_SHA256:
        raise SystemExit(f"wrong v32tng.exe SHA-256: {digest}")

    ico, descriptions = rebuild_ico(PeResources(data))
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_bytes(ico)
    print(f"wrote {args.output} ({len(ico)} bytes, SHA-256 {hashlib.sha256(ico).hexdigest()})")
    for description in descriptions:
        print(description)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
