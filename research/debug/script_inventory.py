#!/usr/bin/env python3
"""Inventory all direct GRV resource references without executing the game.

Uses the checked-in semantic listing, but verifies every listed byte against
the input script first. Includes unvisited code; never claims path feasibility.
"""
from __future__ import annotations

import argparse
from collections import Counter
import hashlib
import json
from pathlib import Path
import re
import struct
import wave

ROOT = Path(__file__).resolve().parents[2]
ARCHIVES = ('AT B CH D DR FH GA HDISK HTBD INTRO JHEK K LA LI MB MC MU N P XMI GAMWAV').split()
LINE = re.compile(r'^([0-9A-F]{4})  ((?:[0-9A-F]{2} ?)+)\s{2,}(\w+)\s*(.*)$')
MAX_DECODED = 16 * 1024 * 1024


def sha(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def listing(path: Path, script: bytes) -> list[dict]:
    text = path.read_text(encoding='utf-8')
    declared = re.search(r'; size=(\d+) sha256=([0-9a-f]{64})', text)
    if not declared or (int(declared[1]), declared[2]) != (len(script), sha(script)):
        raise ValueError(f'{path}: script size/hash differs from canonical listing')
    instructions = []
    position = 0
    for line in text.splitlines():
        match = LINE.match(line)
        if not match:
            if re.match(r'^[0-9A-F]{4}\s', line):
                raise ValueError(f'{path}: unrecognized instruction line: {line}')
            continue
        pc, encoded, name, operands = match.groups()
        pc = int(pc, 16)
        raw = bytes.fromhex(encoded)
        if pc != position or script[pc:pc + len(raw)] != raw:
            raise ValueError(f'{path}: byte coverage mismatch at {pc:04X}')
        position += len(raw)
        item = dict(pc=pc, bytes=raw.hex(), opcode=raw[0] & 0x7f,
                    name=name, operands=operands)
        target = re.search(r'target=0x([0-9A-F]+)', operands)
        if target:
            item['target'] = int(target[1], 16)
        instructions.append(item)
    if position != len(script):
        raise ValueError(f'{path}: listing does not cover the entire script')
    return instructions


def rl_entries(path: Path) -> list[tuple[str, int, int]]:
    data = path.read_bytes()
    if len(data) % 20:
        raise ValueError(f'{path}: partial RL record')
    result = []
    for pos in range(0, len(data), 20):
        name, offset, size = struct.unpack_from('<12sII', data, pos)
        name = name.split(b'\0')[0].decode('ascii').strip()
        if not name or '/' in name or '\\' in name or ':' in name or name in ('.', '..'):
            raise ValueError(f'{path}: invalid resource filename')
        result.append((name, offset, size))
    return result


def lzss(data: bytes, mask: int, bits: int) -> bytes:
    if not 1 <= bits <= 8:
        raise ValueError('invalid LZSS length bits')
    history = bytearray(1 << (16 - bits))
    wrap = len(history) - 1
    cursor = len(history) - (1 << bits)
    output = bytearray()

    def emit(value):
        nonlocal cursor
        if len(output) >= MAX_DECODED:
            raise ValueError('LZSS output exceeds limit')
        output.append(value)
        history[cursor] = value
        cursor = (cursor + 1) & wrap

    pos = 0
    while pos < len(data):
        flags = data[pos]
        pos += 1
        for bit in range(8):
            if pos == len(data):
                break
            if flags & (1 << bit):
                emit(data[pos])
                pos += 1
            else:
                if pos + 2 > len(data):
                    raise ValueError('truncated LZSS reference')
                encoded = struct.unpack_from('<H', data, pos)[0]
                pos += 2
                if encoded == 0:
                    return bytes(output)
                source = (cursor - (encoded >> bits)) & wrap
                for i in range((encoded & mask) + 3):
                    emit(history[(source + i) & wrap])
    raise ValueError('LZSS stream has no end marker')


def vdx_chunks(data: bytes) -> list[dict]:
    if len(data) < 8 or data[:2] != b'\x67\x92':
        raise ValueError('invalid VDX header')
    pos, chunks = 8, []
    while pos < len(data):
        if pos + 8 > len(data):
            raise ValueError('truncated VDX chunk header')
        kind, coding, size, mask, bits = struct.unpack_from('<BBIBB', data, pos)
        end = pos + 8 + size
        if end > len(data):
            raise ValueError('truncated VDX payload')
        chunks.append(dict(offset=pos, type=kind, coding=coding, size=size,
                           length_mask=mask, length_bits=bits))
        pos = end
    return chunks


def inventory(data_dir: Path, scripts: list[str], listing_dir: Path,
              out: Path, extract=False, export_audio=False, trace: Path | None = None) -> dict:
    out.mkdir(parents=True, exist_ok=True)
    result = dict(schema='v64tng.script-inventory/1', scripts=[], resources=[],
                  unresolved=[], errors=[], coverage='all listed instructions; path feasibility not evaluated')
    resources = {}
    for script in scripts:
        if not re.fullmatch(r'[A-Za-z0-9_]+', script):
            raise ValueError('script names must be basenames without an extension')
        data = (data_dir / f'{script.upper()}.GRV').read_bytes()
        instructions = listing(listing_dir / f'{script.upper()}.grv.asm', data)
        # Preserve exact script and its control-flow evidence alongside the assets.
        (out / f'{script.upper()}.GRV').write_bytes(data)
        result['scripts'].append(dict(name=script.upper() + '.GRV', sha256=sha(data),
                                      size=len(data), instructions=instructions))
        for item in instructions:
            opcode = item['opcode']
            if opcode in (0x02, 0x08, 0x09, 0x1c):
                raw = bytes.fromhex(item['bytes'])
                ref = struct.unpack_from('<H', raw, 1)[0]
                resources.setdefault(ref, []).append(dict(script=script.upper() + '.GRV',
                                                          pc=item['pc'], opcode=opcode))
            elif opcode in (0x26, 0x27, 0x42):
                result['unresolved'].append(dict(script=script.upper() + '.GRV', **item))
    observed = set()
    if trace:
        with trace.open(encoding='utf-8') as handle:
            for line in handle:
                event = json.loads(line)
                if event.get('probe') in ('grv.video_select', 'grv.song_select'):
                    ref = event['ref']
                    observed.add(int(ref, 0) if isinstance(ref, str) else ref)
        result['trace'] = dict(path=str(trace), sha256=sha_file(trace),
                               scope='resource selected anywhere in supplied trace; not proof of a script path')
    indexes = {}
    for ref, sites in sorted(resources.items()):
        entry = dict(ref=ref, sites=sites)
        if trace:
            entry['observed_in_trace'] = ref in observed
        try:
            archive_id, index = ref >> 10, ref & 0x3ff
            if archive_id >= len(ARCHIVES):
                raise ValueError('archive ID out of range')
            archive = ARCHIVES[archive_id]
            if archive not in indexes:
                indexes[archive] = rl_entries(data_dir / (archive + '.RL'))
            name, offset, size = indexes[archive][index]
            source = data_dir / (archive + '.GJD')
            if offset + size > source.stat().st_size:
                raise ValueError('RL resource extends beyond archive')
            with source.open('rb') as handle:
                handle.seek(offset)
                payload = handle.read(size)
            if len(payload) != size:
                raise ValueError('short archive read')
            entry.update(archive=archive, index=index, filename=name, offset=offset,
                         size=size, sha256=sha(payload), rl_sha256=sha_file(data_dir / (archive + '.RL')))
            target = out / 'assets' / archive / name
            if extract:
                target.parent.mkdir(parents=True, exist_ok=True)
                target.write_bytes(payload)
                entry['extracted'] = target.relative_to(out).as_posix()
            if name.lower().endswith('.vdx'):
                chunks = vdx_chunks(payload)
                entry['chunks'] = chunks
                entry['chunk_counts'] = dict(Counter(f'{c["type"]:02x}' for c in chunks))
                if export_audio:
                    audio = bytearray()
                    for chunk in chunks:
                        if chunk['type'] != 0x80:
                            continue
                        start = chunk['offset'] + 8
                        part = payload[start:start + chunk['size']]
                        # Native/original stream coding byte selects decompression.
                        if chunk['coding'] == 0x77:
                            part = lzss(part, chunk['length_mask'], chunk['length_bits'])
                        audio.extend(part)
                    if audio:
                        wav = target.with_suffix('.wav')
                        wav.parent.mkdir(parents=True, exist_ok=True)
                        with wave.open(str(wav), 'wb') as handle:
                            handle.setparams((1, 1, 22050, 0, 'NONE', 'not compressed'))
                            handle.writeframes(audio)
                        entry['audio'] = dict(path=wav.relative_to(out).as_posix(),
                                              pcm_sha256=sha(audio), pcm_bytes=len(audio),
                                              channels=1, sample_bits=8, sample_rate=22050)
        except (OSError, ValueError, IndexError, struct.error) as error:
            entry['error'] = str(error)
            result['errors'].append(dict(ref=ref, error=str(error)))
        result['resources'].append(entry)
    (out / 'inventory.json').write_text(json.dumps(result, indent=2) + '\n', encoding='utf-8')
    return result


def sha_file(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open('rb') as handle:
        for chunk in iter(lambda: handle.read(1 << 20), b''):
            digest.update(chunk)
    return digest.hexdigest()


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--data', type=Path, default=ROOT / 'T7G')
    parser.add_argument('--scripts', nargs='+', default=['GRATE', 'MAZE'])
    parser.add_argument('--listings', type=Path, default=ROOT / 'disassembly/GRV')
    parser.add_argument('--out', type=Path, default=ROOT / 'research/basement-inventory')
    parser.add_argument('--extract', action='store_true')
    parser.add_argument('--audio', action='store_true', help='export all referenced VDX audio to WAV')
    parser.add_argument('--trace', type=Path, help='optional events.ndjson to identify resources absent from a playthrough')
    args = parser.parse_args()
    try:
        report = inventory(args.data, args.scripts, args.listings, args.out,
                           args.extract, args.audio, args.trace)
    except (OSError, ValueError) as error:
        parser.exit(1, f'{error}\n')
    print(f'{len(report["scripts"])} scripts, {len(report["resources"])} resources, '
          f'{len(report["unresolved"])} dynamic/child-script sites, {len(report["errors"])} errors')
    print(args.out / 'inventory.json')
    return int(bool(report['errors'] or report['unresolved']))


if __name__ == '__main__':
    raise SystemExit(main())
