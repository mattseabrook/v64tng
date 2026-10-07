#!/usr/bin/env python3
"""List, extract and replace Classic Mac resources in MacBinary II containers.

Replacement is deliberately restricted to the existing payload size, preserving
resource-map offsets and fork metadata. Originals are never opened for writing.
"""
import argparse
import json
from pathlib import Path
import struct


def span(data, start, size, what):
    if start < 0 or size < 0 or start > len(data) or size > len(data) - start:
        raise ValueError(f'Truncated {what}')
    return data[start:start + size]


def resources(path):
    data = path.read_bytes()
    header = span(data, 0, 128, 'MacBinary header')
    if header[0] or not 1 <= header[1] <= 63 or header[74] or header[82]:
        raise ValueError('Expected a MacBinary container')
    data_size, resource_size = struct.unpack_from('>II', header, 83)
    secondary_size = struct.unpack_from('>H', header, 120)[0]
    data_start = 128 + (secondary_size + 127) // 128 * 128
    span(data, data_start, data_size, 'data fork')
    base = data_start + (data_size + 127) // 128 * 128
    fork = span(data, base, resource_size, 'resource fork')
    data_offset, map_offset, data_length, map_length = struct.unpack('>IIII', span(fork, 0, 16, 'resource header'))
    resource_data = span(fork, data_offset, data_length, 'resource data')
    resource_map = span(fork, map_offset, map_length, 'resource map')
    type_offset, name_offset = struct.unpack('>HH', span(resource_map, 24, 4, 'resource-map offsets'))
    type_count = struct.unpack('>H', span(resource_map, type_offset, 2, 'type count'))[0]
    rows = []
    if type_count == 0xffff:
        return data, rows
    for i in range(type_count + 1):
        record = span(resource_map, type_offset + 2 + 8 * i, 8, 'type record')
        kind = record[:4].decode('mac_roman')
        count, references = struct.unpack_from('>HH', record, 4)
        for j in range(count + 1):
            ref = span(resource_map, type_offset + references + 12 * j, 12, 'resource reference')
            resource_id, name = struct.unpack_from('>hH', ref)
            offset = int.from_bytes(ref[5:8], 'big')
            size = struct.unpack('>I', span(resource_data, offset, 4, 'resource length'))[0]
            span(resource_data, offset + 4, size, 'resource payload')
            label = ''
            if name != 0xffff:
                p = name_offset + name
                length = span(resource_map, p, 1, 'resource name')[0]
                label = span(resource_map, p + 1, length, 'resource name').decode('mac_roman')
            rows.append(dict(type=kind, id=resource_id, name=label, bytes=size,
                             offset=base + data_offset + offset + 4))
    return data, rows


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('command', choices=('list', 'extract', 'replace'))
    parser.add_argument('input', type=Path)
    parser.add_argument('--type', dest='kind', help='Exact four-character resource type, e.g. T7GM')
    parser.add_argument('--id', type=int, help='Signed resource ID')
    parser.add_argument('--out-dir', type=Path)
    parser.add_argument('--replacement', type=Path)
    parser.add_argument('--output', type=Path)
    args = parser.parse_args()
    data, rows = resources(args.input)
    selected = [r for r in rows if (args.kind is None or r['type'] == args.kind)
                and (args.id is None or r['id'] == args.id)]
    if args.command == 'list':
        print(json.dumps(selected, indent=2, ensure_ascii=False))
    elif args.command == 'extract':
        if args.out_dir is None:
            parser.error('extract requires --out-dir')
        if not selected:
            raise ValueError('No matching resources')
        # Preserve asset names (at.rl, script.grv, etc.) when safe and unique.
        # Indexed fallback names preserve duplicates without overwriting them.
        used = {'resources.json'}
        for i, row in enumerate(selected):
            name = row['name']
            if (not name or name in ('.', '..') or any(c in name for c in '/\\:')
                    or any(ord(c) < 32 for c in name) or name.casefold() in used):
                name = f'resource_{i:05}_{row["id"]}.bin'
            used.add(name.casefold())
            row['filename'] = name
        args.out_dir.mkdir(parents=True, exist_ok=False)
        for row in selected:
            (args.out_dir / row['filename']).write_bytes(data[row['offset']:row['offset'] + row['bytes']])
        (args.out_dir / 'resources.json').write_text(json.dumps(selected, indent=2, ensure_ascii=False) + '\n')
    else:
        if args.kind is None or args.id is None or args.replacement is None or args.output is None:
            parser.error('replace requires --type, --id, --replacement and --output')
        if len(selected) != 1:
            raise ValueError('Replacement must select exactly one resource')
        row = selected[0]
        replacement = args.replacement.read_bytes()
        if len(replacement) != row['bytes']:
            raise ValueError(f'Replacement must be exactly {row["bytes"]} bytes; resource resizing is not implemented')
        output = bytearray(data)
        output[row['offset']:row['offset'] + row['bytes']] = replacement
        with args.output.open('xb') as file:
            file.write(output)


if __name__ == '__main__':
    main()
