#!/usr/bin/env python3
"""Verify production-writer PNGs from verify_lossless against raw frame data."""
import json
from pathlib import Path
import sys
from PIL import Image

raw = Path(sys.argv[1])
outputs = [Path(p) for p in sys.argv[2:]]
w, h, fps, count = map(int, (raw / 'sequence.txt').read_text().split())
for output in outputs:
    for i in range(count):
        name = f'{i:05}'
        indices = (raw / (name + '.idx')).read_bytes()
        palette = (raw / (name + '.pal')).read_bytes()
        rgb = (raw / (name + '.rgb')).read_bytes()
        with Image.open(output / (name + '.png')) as image:
            assert image.size == (w, h) and image.mode == 'P'
            assert image.tobytes() == indices
            assert bytes(image.getpalette()) == palette
            assert image.convert('RGB').tobytes() == rgb
        with Image.open(output / (name + '_rgb.png')) as image:
            assert image.size == (w, h) and image.mode == 'RGB'
            assert image.tobytes() == rgb
        with Image.open(output / (name + '_rgba.png')) as image:
            assert image.size == (w, h) and image.mode == 'RGBA'
            assert image.convert('RGB').tobytes() == rgb  # includes transparent pixels
            assert image.getchannel('A').tobytes() == bytes(255 if p % 2 else 0 for p in range(w*h))
    report = dict(passed=True, frames=count, pngs=count*3,
                  checks=['indices', 'all 256 palette entries', 'RGB', 'RGBA including hidden RGB'])
    (output / 'verification.json').write_text(json.dumps(report, indent=2) + '\n')
    print(f'PASS: {count*3} production PNGs exactly match raw data: {output}')
