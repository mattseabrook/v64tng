#!/usr/bin/env python3
"""Lossless indexed-PNG front end for grooviev1 (requires Pillow)."""
import argparse
import hashlib
import json
from pathlib import Path
import subprocess
import tempfile
from PIL import Image


def run(tool, *args):
    subprocess.run([str(tool.resolve()), *map(str, args)], check=True)


def extract(tool, source, output):
    output.mkdir(parents=True, exist_ok=False)
    raw = output / 'raw'
    run(tool, 'extract-indexed', source, raw)
    w, h, fps, count = map(int, (raw / 'sequence.txt').read_text().split())
    metadata = dict(format='grooviev1.indexed-png', version=1, width=w, height=h,
                    fps=fps, frames=count)
    (output / 'sequence.json').write_text(json.dumps(metadata, indent=2) + '\n')
    for i in range(count):
        name = f'{i:05}'
        indices = (raw / (name + '.idx')).read_bytes()
        palette = (raw / (name + '.pal')).read_bytes()
        image = Image.frombytes('P', (w, h), indices)
        image.putpalette(palette)
        path = output / (name + '.png')
        image.save(path, optimize=False, bits=8)
        # Verify all 256 entries, including unused and duplicate colours.
        with Image.open(path) as saved:
            if saved.tobytes() != indices or bytes(saved.getpalette()) != palette:
                raise ValueError(f'PNG data loss: {path}')
            (raw / (name + '.rgb')).write_bytes(saved.convert('RGB').tobytes())
    print(f'Saved {count} lossless indexed PNGs and raw IDX/PAL/RGB frames to {output}')


def encode(tool, source, output):
    meta = json.loads((source / 'sequence.json').read_text())
    if meta['format'] != 'grooviev1.indexed-png' or meta['version'] != 1:
        raise ValueError('Unsupported sequence metadata')
    w, h, fps, count = [meta[k] for k in ('width', 'height', 'fps', 'frames')]
    if len(list(source.glob('*.png'))) != count:
        raise ValueError('PNG count differs from sequence metadata')
    with tempfile.TemporaryDirectory(prefix='grooviev1-png-') as folder:
        folder = Path(folder)
        (folder / 'sequence.txt').write_text(f'{w} {h} {fps} {count}\n')
        for i in range(count):
            name = f'{i:05}'
            with Image.open(source / (name + '.png')) as image:
                if image.mode != 'P' or image.size != (w, h) or 'transparency' in image.info:
                    raise ValueError(f'{name}: lossless input requires opaque indexed PNG of matching size')
                palette = bytes(image.getpalette())
                if len(palette) != 768:
                    raise ValueError(f'{name}: all 256 original palette entries are required')
                (folder / (name + '.idx')).write_bytes(image.tobytes())
                (folder / (name + '.pal')).write_bytes(palette)
        # Only PNG data and timing/geometry reach the encoder. No source VDX,
        # extraction raw files, original opcodes or compression tokens are used.
        run(tool, 'encode-indexed', folder, output)


def compare(tool, source, output, report):
    with tempfile.TemporaryDirectory(prefix='grooviev1-compare-') as root:
        roots = [Path(root) / 'source', Path(root) / 'encoded']
        for vdx, dest in zip((source, output), roots):
            run(tool, 'extract-indexed', vdx, dest)
        sequence = [list(map(int, (p / 'sequence.txt').read_text().split())) for p in roots]
        if sequence[0] != sequence[1]:
            raise ValueError('Geometry, timing or frame-count mismatch')
        records = []
        for i in range(sequence[0][3]):
            name = f'{i:05}'
            idx = [(p / (name + '.idx')).read_bytes() for p in roots]
            pal = [(p / (name + '.pal')).read_bytes() for p in roots]
            index_diff = sum(a != b for a, b in zip(*idx))
            palette_diff = sum(a != b for a, b in zip(*pal))
            rgb = [b''.join(palette[p*3:p*3+3] for p in indices) for indices, palette in zip(idx, pal)]
            records.append(dict(frame=i, index_mismatches=index_diff,
                                palette_byte_mismatches=palette_diff,
                                rgb_byte_mismatches=sum(a != b for a, b in zip(*rgb)),
                                indices_sha256=hashlib.sha256(idx[0]).hexdigest(),
                                palette_sha256=hashlib.sha256(pal[0]).hexdigest(),
                                rgb_sha256=hashlib.sha256(rgb[0]).hexdigest()))
        passed = all(not any(r[k] for k in ('index_mismatches', 'palette_byte_mismatches', 'rgb_byte_mismatches')) for r in records)
        data = dict(passed=passed, comparison='decoded indices, all palette entries and RGB',
                    compressed_bytes_identical=source.read_bytes() == output.read_bytes(),
                    source_sha256=hashlib.sha256(source.read_bytes()).hexdigest(),
                    encoded_sha256=hashlib.sha256(output.read_bytes()).hexdigest(), frames=records)
        report.write_text(json.dumps(data, indent=2) + '\n')
        if not passed:
            raise ValueError(f'Lossless comparison failed; see {report}')
        print(f'PASS: {len(records)} frames; zero index, palette or RGB mismatches. Report: {report}')


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--tool', type=Path, default=Path(__file__).parent / 'build' / 'grooviev1-native')
    sub = parser.add_subparsers(dest='command', required=True)
    for name in ('extract', 'encode', 'compare'):
        command = sub.add_parser(name)
        command.add_argument('source', type=Path)
        command.add_argument('output', type=Path)
        if name == 'compare':
            command.add_argument('--report', type=Path, required=True)
    args = parser.parse_args()
    if args.command == 'compare':
        compare(args.tool, args.source, args.output, args.report)
    else:
        globals()[args.command](args.tool, args.source, args.output)


if __name__ == '__main__':
    main()
