#!/usr/bin/env python3
"""Pack an unpacked DOS MZ image using the LZEXE 0.91 format.

Compression and layout follow lzss.asm and lzexe.pas by Fabrice Bellard.
Copyright (c) 1989-1990 Fabrice Bellard. See LICENSE.lzexe.
"""

import argparse
from collections import defaultdict, deque
from pathlib import Path
from struct import iter_unpack, pack, unpack_from

WINDOW = 0x2000
LOOKAHEAD = 253
HISTORY = WINDOW - LOOKAHEAD
PARAGRAPH = 16


def compress_image(image: bytes) -> tuple[bytearray, int]:
    ring = bytearray(WINDOW + LOOKAHEAD - 1)
    initial = image[:LOOKAHEAD]
    ring[HISTORY:HISTORY + len(initial)] = initial
    buckets = defaultdict(deque)

    # Each 16-bit control word precedes its payload. The stub fetches the
    # next word immediately on bit 16, before reading that token's payload.
    encoded = bytearray(2)
    control = control_bit = displacement = segment_size = 0

    def put_bits(*bits: int) -> None:
        nonlocal control, control_bit
        for bit in bits:
            if bit:
                encoded[control + control_bit // 8] |= 1 << (control_bit % 8)
            control_bit += 1
            if control_bit == 16:
                control = len(encoded)
                encoded.extend(b'\0\0')
                control_bit = 0

    def history_at(position: int, cursor: int) -> deque:
        key = ring[cursor] | ((ring[cursor + 1] & 0xf) << 8)
        bucket = buckets[key]
        while bucket and position - bucket[0] > HISTORY:
            bucket.popleft()
        return bucket

    pos = 0
    while pos < len(image):
        cursor = (pos + HISTORY) % WINDOW
        length = distance = 0
        # Search newest first. Full matches and ties retain the nearest source.
        for previous in reversed(history_at(pos, cursor)):
            start = (previous + HISTORY) % WINDOW
            if ring[start + length] != ring[cursor + length]:
                continue
            matched = 1
            while matched < LOOKAHEAD and ring[start + matched] == ring[cursor + matched]:
                matched += 1
            if matched > length:
                length, distance = matched, pos - previous
                if length == LOOKAHEAD:
                    break

        length = min(length, len(image) - pos)
        if length < 2 or (length == 2 and distance >= 256):
            put_bits(1)
            encoded.append(ring[cursor])
            length = 1
        elif length <= 5 and distance < 256:
            put_bits(0, 0, (length - 2) & 2, (length - 2) & 1)
            encoded.append(-distance & 0xff)
        else:
            put_bits(0, 1)
            offset = -distance & 0x1fff
            encoded.extend((offset & 0xff, (offset >> 8) << 3))
            if length <= 9:
                encoded[-1] |= length - 2
            else:
                encoded.append(length - 1)

        # The historical packer measures how far output lags consumed input,
        # counting only the bytes preceding the current control word.
        pos_end = pos + length
        displacement = max(displacement, (pos_end - control + PARAGRAPH - 1) // PARAGRAPH)
        segment_size += length
        if segment_size >= 0xa000:
            put_bits(0, 1)
            encoded.extend(b'\x00\xf0\x01')
            segment_size = 0

        for previous in range(pos, pos_end):
            at = (previous + HISTORY) % WINDOW
            history_at(previous, at).append(previous)
            lookahead = previous + LOOKAHEAD
            if lookahead < len(image):
                slot = previous % WINDOW
                ring[slot] = image[lookahead]
                if slot < LOOKAHEAD - 1:
                    ring[WINDOW + slot] = ring[slot]
        pos = pos_end

    put_bits(0, 1)
    encoded.extend(b'\x00\xf0\x00')
    return encoded, displacement + 16


def pack_relocations(records: bytes, image_size: int) -> bytearray:
    positions = sorted(segment * PARAGRAPH + offset
                       for offset, segment in iter_unpack('<HH', records))
    encoded = bytearray()
    previous = 0
    for position in positions:
        if position <= previous or position + 2 > image_size:
            raise ValueError('relocation is duplicated, zero, or outside the load image')
        delta = position - previous
        previous = position
        while delta > 0xfff0:
            encoded.extend(b'\0\0\0')
            delta -= 0xfff0
        if delta <= 255:
            encoded.append(delta)
        else:
            encoded.extend(pack('<BH', 0, delta))
    encoded.extend(b'\x00\x01\x00')
    return encoded


def pack_mz(source: bytes, stub: bytes) -> bytes:
    if len(stub) != 330:
        raise ValueError('expected the 330-byte LZEXE 0.91 stub')
    if len(source) < 28 or source[:2] != b'MZ' or source[28:32] in (b'LZ90', b'LZ91'):
        raise ValueError('expected an unpacked DOS MZ executable')
    (_, last_page, pages, count, header_paragraphs, min_alloc, max_alloc,
     ss, sp, _, ip, cs, reloc_start, overlay) = unpack_from('<14H', source)
    header_size = header_paragraphs * PARAGRAPH
    reloc_end = reloc_start + count * 4
    if overlay or last_page >= 512 or (pages - 1) * 512 + (last_page or 512) != len(source):
        raise ValueError('MZ overlays and appended data are unsupported')
    if not 28 <= reloc_start <= reloc_end <= header_size < len(source):
        raise ValueError('invalid MZ header size or relocation table')

    image = source[header_size:]
    relocations = pack_relocations(source[reloc_start:reloc_end], len(image))
    compressed, displacement = compress_image(image)
    compressed.extend(bytes(-len(compressed) % PARAGRAPH))
    packed_paragraphs = len(compressed) // PARAGRAPH
    depacker_size = 14 + len(stub) + len(relocations)
    depacker_paragraphs = (depacker_size + PARAGRAPH - 1) // PARAGRAPH
    extra_paragraphs = displacement + depacker_paragraphs + 9
    packed_ss = packed_paragraphs + displacement + depacker_paragraphs
    size = 32 + len(compressed) + depacker_size
    packed_header = pack(
        '<14H4s', 0x5a4d, size % 512, (size + 511) // 512, 0, 2,
        min_alloc + extra_paragraphs, min(0xffff, max_alloc + extra_paragraphs),
        packed_ss, 0x80, 0, 0x0e, packed_paragraphs, 0x1c, 0, b'LZ91',
    )
    depacker_header = pack('<7H', ip, cs, sp, ss, packed_paragraphs, displacement, depacker_size)
    return b''.join((packed_header, compressed, depacker_header, stub, relocations))


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('source', type=Path)
    parser.add_argument('stub', type=Path)
    parser.add_argument('output', type=Path)
    args = parser.parse_args()
    try:
        packed = pack_mz(args.source.read_bytes(), args.stub.read_bytes())
        args.output.write_bytes(packed)
    except (OSError, ValueError) as error:
        parser.exit(1, f'LZEXE pack failed: {error}\n')


if __name__ == '__main__':
    main()
