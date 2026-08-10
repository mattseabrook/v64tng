#!/usr/bin/env python3
"""Report compact, deterministic diagnostics for two binary files."""

from __future__ import annotations

import argparse
import hashlib
import json
from pathlib import Path


def digest(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def mismatch_ranges(left: bytes, right: bytes) -> list[tuple[int, int]]:
    limit = max(len(left), len(right))
    ranges: list[tuple[int, int]] = []
    start: int | None = None
    for offset in range(limit):
        differs = (
            offset >= len(left)
            or offset >= len(right)
            or left[offset] != right[offset]
        )
        if differs and start is None:
            start = offset
        elif not differs and start is not None:
            ranges.append((start, offset))
            start = None
    if start is not None:
        ranges.append((start, limit))
    return ranges


def hex_window(data: bytes, start: int, end: int) -> str:
    return " ".join(f"{value:02X}" for value in data[start:end])


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("reference", type=Path)
    parser.add_argument("candidate", type=Path)
    parser.add_argument("--context", type=int, default=16)
    parser.add_argument("--max-ranges", type=int, default=20)
    parser.add_argument("--json", action="store_true")
    args = parser.parse_args()

    left = args.reference.read_bytes()
    right = args.candidate.read_bytes()
    ranges = mismatch_ranges(left, right)
    report = {
        "identical": not ranges,
        "reference": {
            "path": str(args.reference),
            "size": len(left),
            "sha256": digest(left),
        },
        "candidate": {
            "path": str(args.candidate),
            "size": len(right),
            "sha256": digest(right),
        },
        "mismatch_range_count": len(ranges),
        "mismatch_ranges": [
            {"start": start, "end": end, "length": end - start}
            for start, end in ranges[: args.max_ranges]
        ],
    }
    if args.json:
        print(json.dumps(report, indent=2, sort_keys=True))
    else:
        print(
            f"reference: {len(left)} bytes  sha256={report['reference']['sha256']}"
        )
        print(
            f"candidate: {len(right)} bytes  sha256={report['candidate']['sha256']}"
        )
        if not ranges:
            print("IDENTICAL")
            return 0
        print(f"DIFFERENT: {len(ranges)} mismatch range(s)")
        for start, end in ranges[: args.max_ranges]:
            before = max(0, start - args.context)
            after = min(max(len(left), len(right)), end + args.context)
            print(f"  raw 0x{start:X}..0x{end:X} ({end - start} byte(s))")
            print(f"    reference: {hex_window(left, before, min(after, len(left)))}")
            print(f"    candidate: {hex_window(right, before, min(after, len(right)))}")
        if len(ranges) > args.max_ranges:
            print(f"  ... {len(ranges) - args.max_ranges} additional range(s)")
    return 0 if not ranges else 1


if __name__ == "__main__":
    raise SystemExit(main())
