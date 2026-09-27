import hashlib
import json
from pathlib import Path
import struct
import tempfile
import unittest
import wave

import script_inventory as tool


class InventoryTests(unittest.TestCase):
    def test_listing_byte_identity_and_coverage(self):
        with tempfile.TemporaryDirectory() as directory:
            path = Path(directory) / 'MAZE.grv.asm'
            raw = bytes.fromhex('0900501700')
            header = f'; size={len(raw)} sha256={hashlib.sha256(raw).hexdigest()}\n'
            path.write_text(header + '0000  09 00 50  VIDEOREF  ref=0x5000\n0003  17 00  RET  value=0\n')
            self.assertEqual(len(tool.listing(path, raw)), 2)
            with self.assertRaises(ValueError):
                tool.listing(path, raw[:-1] + b'\x01')
            path.write_text(header + '0000  09 00 50  VIDEOREF  ref=0x5000\n')
            with self.assertRaises(ValueError):
                tool.listing(path, raw)

    def test_lzss_overlap_and_truncation(self):
        # Literal A, then distance=1 / length=3, then terminator.
        self.assertEqual(tool.lzss(b'\x01A\x20\x00\x00\x00', 31, 5), b'AAAA')
        with self.assertRaises(ValueError):
            tool.lzss(b'\x00\x20', 31, 5)
        with self.assertRaises(ValueError):
            tool.lzss(b'\x01A', 31, 5)

    def test_unvisited_resource_audio_and_trace_comparison(self):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            script = bytes.fromhex('0900500901501700')
            (root / 'MAZE.GRV').write_bytes(script)
            (root / 'MAZE.grv.asm').write_text(
                f'; size=8 sha256={tool.sha(script)}\n'
                '0000  09 00 50  VIDEOREF  ref=0x5000\n'
                '0003  09 01 50  VIDEOREF  ref=0x5001\n'
                '0006  17 00  RET  value=0\n')
            # A compressed chunk whose coding byte, rather than mask/bits alone,
            # determines whether to decode it.
            packed = b'\x01A\x20\x00\x00\x00'
            vdx = b'\x67\x92' + bytes(6) + struct.pack('<BBIBB', 128, 119, len(packed), 31, 5) + packed
            (root / 'GAMWAV.GJD').write_bytes(vdx * 2)
            (root / 'GAMWAV.RL').write_bytes(
                struct.pack('<12sII', b'first.vdx', 0, len(vdx)) +
                struct.pack('<12sII', b'second.vdx', len(vdx), len(vdx)))
            trace = root / 'events.ndjson'
            trace.write_text(json.dumps(dict(probe='grv.video_select', ref=0x5000)) + '\n')
            out = root / 'out'
            report = tool.inventory(root, ['MAZE'], root, out, True, True, trace)
            self.assertFalse(report['errors'])
            self.assertEqual(len(report['resources']), 2)
            self.assertEqual([r['observed_in_trace'] for r in report['resources']], [True, False])
            with wave.open(str(out / 'assets/GAMWAV/second.wav')) as wav:
                self.assertEqual(wav.readframes(wav.getnframes()), b'AAAA')
                self.assertEqual(wav.getframerate(), 22050)
            # Archive bounds violations must produce an incomplete report.
            (root / 'GAMWAV.GJD').write_bytes(vdx)
            report = tool.inventory(root, ['MAZE'], root, out)
            self.assertEqual(len(report['errors']), 1)

    def test_malformed_resource_records_and_chunks(self):
        with tempfile.TemporaryDirectory() as directory:
            path = Path(directory) / 'MC.RL'
            path.write_bytes(b'x')
            with self.assertRaises(ValueError):
                tool.rl_entries(path)
            path.write_bytes(struct.pack('<12sII', b'../oops', 0, 1))
            with self.assertRaises(ValueError):
                tool.rl_entries(path)
        with self.assertRaises(ValueError):
            tool.vdx_chunks(b'\x67\x92' + bytes(6) + b'x')


if __name__ == '__main__':
    unittest.main()
