#!/usr/bin/env python3
"""CLI regressions for media authoring. Build grooviev1-native first."""
import json
from pathlib import Path
import shutil
import struct
import subprocess
import sys
import tempfile
import unittest
import wave

from PIL import Image

HERE = Path(__file__).resolve().parent
TOOL = HERE / 'build/grooviev1-native'


def chunk(kind, data, coding=0x67, mask=0, bits=0):
    return struct.pack('<BBIBB', kind, coding, len(data), mask, bits) + data


def still():
    palette = bytes(c for i in range(256) for c in (i, (i * 3) % 256, (i * 7) % 256))
    return struct.pack('<HHH', 160, 1, 8) + palette + bytes(640)


class ToolkitTests(unittest.TestCase):
    def setUp(self):
        self.temp = tempfile.TemporaryDirectory(prefix='grooviev1-test-')
        self.root = Path(self.temp.name)

    def tearDown(self):
        self.temp.cleanup()

    def run_tool(self, *args, success=True):
        result = subprocess.run([str(TOOL), *map(str, args)], capture_output=True, text=True)
        if success:
            self.assertEqual(result.returncode, 0, result.stderr)
        else:
            self.assertGreater(result.returncode, 0, 'Tool crashed or accepted invalid input: ' + result.stderr)
        return result

    def raw(self):
        path = self.root / 'frame.rgb'
        path.write_bytes((bytes([255, 0, 0, 0, 255, 0, 0, 0, 255]) * 854)[:640 * 4 * 3])
        return path

    def rgb_encode(self, output, *extra):
        frame = self.raw()
        return self.run_tool('--raw', '--width', 640, '--height', 4,
                             '--output', output, *extra, frame, frame)

    def source(self):
        # A before-still history-reference audio chunk expands to three zeros.
        source = self.root / 'source.vdx'
        source.write_bytes(b'\x67\x92' + bytes(4) + struct.pack('<H', 15) +
                           chunk(0x80, b'\x00\x20\x00\x00\x00', 0x77, 31, 5) +
                           chunk(0x20, still()) + chunk(0x80, b'\x00\x80\xff') +
                           chunk(0x00, b'', 0) + chunk(0x80, b'voice'))
        return source

    def test_rgb_first_still_reduction_and_delta_recovery(self):
        for compressed in (False, True):
            output = self.root / f'author-{compressed}.vdx'
            result = self.rgb_encode(output, *(['--compress'] if compressed else []))
            self.assertIn('Validation: PASS', result.stdout)
            self.assertIn('First-still pixels reduced', result.stdout)
            raw = self.root / f'frames-{compressed}'
            self.run_tool('extract-indexed', output, raw)
            first = (raw / '00000.idx').read_bytes()
            second = (raw / '00001.idx').read_bytes()
            palette = (raw / '00001.pal').read_bytes()
            rgb = b''.join(palette[index * 3:index * 3 + 3] for index in second)
            self.assertNotEqual(first, second)
            self.assertEqual(rgb, self.raw().read_bytes())

    def test_distinct_solid_tiles_use_compact_sequence_opcodes(self):
        first, second = self.root / 'first.rgb', self.root / 'second.rgb'
        first.write_bytes(bytes(640 * 4 * 3))
        row = b''.join(bytes([255, 0, 0] if tile % 2 else [0, 255, 0]) * 4 for tile in range(160))
        second.write_bytes(row * 4)
        output = self.root / 'runs.vdx'
        result = self.run_tool('--raw', '--width', 640, '--height', 4,
                               '--output', output, first, second)
        self.assertIn('opSolidSeq=16', result.stdout)
        data = output.read_bytes()
        first_size = struct.unpack_from('<I', data, 10)[0]
        delta_start = 16 + first_size
        self.assertEqual(data[delta_start], 0x25)
        self.assertEqual(struct.unpack_from('<I', data, delta_start + 2)[0], 2 + 16 * 11 + 1)

    def test_indexed_png_audio_roundtrip_without_raw_inputs(self):
        source = self.source()
        images = self.root / 'pngs'
        output = self.root / 'roundtrip.vdx'
        commands = [sys.executable, str(HERE / 'frames.py'), '--tool', str(TOOL)]
        subprocess.run(commands + ['extract', str(source), str(images)], check=True, capture_output=True)
        self.assertEqual((images / 'audio.pcm').read_bytes(), b'\0\0\0\0\x80\xffvoice')
        self.assertEqual((images / 'audio.txt').read_text(), '0 0 3\n1 3 3\n2 6 5\n')
        shutil.rmtree(images / 'raw')
        subprocess.run(commands + ['encode', str(images), str(output)], check=True, capture_output=True)
        report = self.root / 'report.json'
        subprocess.run(commands + ['compare', str(source), str(output), '--report', str(report)],
                       check=True, capture_output=True)
        data = json.loads(report.read_text())
        self.assertTrue(data['passed'])
        self.assertTrue(data['audio']['pcm_identical'])
        self.assertTrue(data['audio']['chunk_positions_identical'])
        self.assertEqual(data['audio']['bytes'], 11)

    def test_png_palette_edit_keeps_audio(self):
        source = self.source()
        images = self.root / 'pngs'
        commands = [sys.executable, str(HERE / 'frames.py'), '--tool', str(TOOL)]
        subprocess.run(commands + ['extract', str(source), str(images)], check=True, capture_output=True)
        path = images / '00001.png'
        with Image.open(path) as image:
            image.load()
            palette = image.getpalette()
            palette[:3] = [12, 34, 56]
            image.putpalette(palette)
            image.save(path, bits=8)
        output = self.root / 'edited.vdx'
        subprocess.run(commands + ['encode', str(images), str(output)], check=True, capture_output=True)
        raw = self.root / 'edited'
        self.run_tool('extract-indexed', output, raw)
        self.assertEqual((raw / '00001.pal').read_bytes()[:3], b'\x0c\x22\x38')
        self.assertEqual((raw / 'audio.pcm').read_bytes(), (images / 'audio.pcm').read_bytes())

    def test_audio_map_incomplete_is_rejected(self):
        raw = self.root / 'raw'
        self.run_tool('extract-indexed', self.source(), raw)
        (raw / 'audio.txt').write_text('0 1 3\n')
        self.run_tool('encode-indexed', raw, self.root / 'bad.vdx', success=False)

    def test_empty_audio_chunk_boundary_is_preserved(self):
        source = self.root / 'empty-audio.vdx'
        source.write_bytes(b'\x67\x92' + bytes(4) + struct.pack('<H', 15) +
                           chunk(0x80, b'') + chunk(0x20, still()))
        raw = self.root / 'raw'
        self.run_tool('extract-indexed', source, raw)
        self.assertEqual((raw / 'audio.pcm').read_bytes(), b'')
        self.assertEqual((raw / 'audio.txt').read_text(), '0 0 0\n')
        encoded = self.root / 'empty-roundtrip.vdx'
        self.run_tool('encode-indexed', raw, encoded)
        decoded = self.root / 'decoded'
        self.run_tool('extract-indexed', encoded, decoded)
        self.assertEqual((decoded / 'audio.txt').read_text(), '0 0 0\n')

    def test_wav_pcm_preserved(self):
        wav = self.root / 'audio.wav'
        pcm = bytes(range(255))  # Odd data length, supported even without final padding.
        with wave.open(str(wav), 'wb') as handle:
            handle.setparams((1, 1, 22050, 0, 'NONE', 'not compressed'))
            handle.writeframes(pcm)
        output = self.root / 'audio.vdx'
        self.rgb_encode(output, '--wav', wav, '--compress')
        raw = self.root / 'raw'
        self.run_tool('extract-indexed', output, raw)
        self.assertEqual((raw / 'audio.pcm').read_bytes(), pcm)

    def test_invalid_wav_formats_rejected_without_crashes(self):
        fmt = struct.pack('<HHIIHH', 1, 1, 22050, 22050, 1, 8)
        variants = [struct.pack('<HHIIHH', 1, 0, 22050, 0, 0, 8),
                    struct.pack('<HHIIHH', 1, 1, 0, 0, 1, 8),
                    struct.pack('<HHIIHH', 1, 1, 22050, 22050, 1, 9),
                    struct.pack('<HHIIHH', 1, 1, 22050, 44100, 2, 16), None]
        for i, form in enumerate(variants):
            payload = (b'fmt ' + struct.pack('<I', 16) + form) if form is not None else b'JUNK' + struct.pack('<I', 16) + fmt
            payload += b'data' + struct.pack('<I', 3) + b'abc'
            wav = self.root / f'invalid-{i}.wav'
            wav.write_bytes(b'RIFF' + struct.pack('<I', 4 + len(payload)) + b'WAVE' + payload)
            self.run_tool('--raw', '--width', 640, '--height', 4, '--output', self.root / f'bad-{i}.vdx',
                          '--wav', wav, self.raw(), success=False)

    def test_archive_explicit_index_order_and_preflight(self):
        a, b = self.root / 'A.VDX', self.root / 'B.VDX'
        a.write_bytes(b'a'); b.write_bytes(b'bb')
        rl, gjd = self.root / 'ROOM.RL', self.root / 'ROOM.GJD'
        self.run_tool('archive-pack', '--rl', rl, '--gjd', gjd, b, a)
        self.assertEqual(rl.read_bytes()[:12].split(b'\0')[0], b'B.VDX')
        self.assertEqual(gjd.read_bytes(), b'bba')
        original = rl.read_bytes(), gjd.read_bytes()
        duplicate = self.root / 'a.vdx'; duplicate.write_bytes(b'bad')
        self.run_tool('archive-pack', '--rl', rl, '--gjd', gjd, a, duplicate, success=False)
        self.assertEqual((rl.read_bytes(), gjd.read_bytes()), original)
        self.run_tool('archive-pack', '--rl', rl, '--gjd', gjd, a, self.root / 'MISSING.VDX', success=False)
        self.assertEqual((rl.read_bytes(), gjd.read_bytes()), original)

    def test_archive_invalid_names_and_bounds(self):
        rl, gjd = self.root / 'ROOM.RL', self.root / 'ROOM.GJD'
        gjd.write_bytes(b'hello')
        for name, offset, size in [(b'../escape', 0, 5), (b'A.VDX', 4, 5)]:
            rl.write_bytes(struct.pack('<12sII', name, offset, size))
            self.run_tool('archive-unpack', '--rl', rl, '--gjd', gjd, '--out-dir', self.root / 'out', success=False)
        self.assertFalse((self.root / 'out').exists())

    def test_archive_manifest_preserves_duplicate_names_and_indexes(self):
        rl, gjd = self.root / 'ROOM.RL', self.root / 'ROOM.GJD'
        gjd.write_bytes(b'firstsecond')
        rl.write_bytes(struct.pack('<12sII', b'same.vdx', 0, 5) +
                       struct.pack('<12sII', b'same.vdx', 5, 6))
        unpacked = self.root / 'out'
        self.run_tool('archive-unpack', '--rl', rl, '--gjd', gjd, '--out-dir', unpacked)
        self.assertEqual((unpacked / 'index00000_same.vdx').read_bytes(), b'first')
        self.assertEqual((unpacked / 'index00001_same.vdx').read_bytes(), b'second')
        new_rl, new_gjd = self.root / 'NEW.RL', self.root / 'NEW.GJD'
        self.run_tool('archive-pack', '--input-dir', unpacked, '--rl', new_rl, '--gjd', new_gjd)
        self.assertEqual(new_rl.read_bytes(), rl.read_bytes())
        self.assertEqual(new_gjd.read_bytes(), gjd.read_bytes())

    def test_font_unmapped_tail_glyph_roundtrip(self):
        # Character map uses only glyph zero; the first offset still defines
        # two table entries, so the unassigned second glyph must survive.
        glyph0, glyph1 = b'\x02\x04\x05\x10\x20', b'\x01\x07\x08\x30\x40'
        source = self.root / 'custom.fnt'
        source.write_bytes(bytes(128) + struct.pack('<HH', 132, 132 + len(glyph0)) + glyph0 + glyph1)
        unpacked = self.root / 'font'
        self.run_tool('fnt-extract', '--fnt', source, '--out-dir', unpacked)
        self.assertTrue((unpacked / 'glyph_01.bmp').exists())
        output = self.root / 'new.fnt'
        self.run_tool('fnt-pack', '--input-dir', unpacked, '--output', output)
        self.assertEqual(output.read_bytes(), source.read_bytes())

    def test_invalid_delta_sections_rejected(self):
        for i, delta in enumerate([b'\x01\x00x', b'\x20\x00' + b'\xff' * 32,
                                   b'\0\0' + b'\x6b' * 18, b'\0\0\x61\x61']):
            source = self.root / f'bad-{i}.vdx'
            source.write_bytes(b'\x67\x92' + bytes(6) + chunk(0x20, still()) + chunk(0x25, delta))
            self.run_tool('extract-indexed', source, self.root / f'raw-{i}', success=False)


if __name__ == '__main__':
    unittest.main()
