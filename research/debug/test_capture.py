import argparse
import json
from pathlib import Path
import tempfile
import unittest

import capture


class CaptureTests(unittest.TestCase):
    def test_blob_dedup_and_event_references(self):
        with tempfile.TemporaryDirectory() as directory:
            writer = capture.TraceWriter(Path(directory), 'test')
            first = writer.store_blob(b'\x00\xff\x80')
            self.assertEqual(first, writer.store_blob(b'\x00\xff\x80'))
            second = writer.store_blob(b'different')
            self.assertNotEqual(first['sha256'], second['sha256'])
            writer.write(dict(probe='vdx.decoded_blob', **first))
            writer.close()
            self.assertEqual(len(list((writer.directory / 'blobs').iterdir())), 2)
            event = json.loads(writer.path.read_text())
            self.assertEqual((writer.directory / event['blob']).read_bytes(), b'\x00\xff\x80')
            self.assertEqual(event['seq'], 1)

    def test_render_flags_and_identity_refusal(self):
        profile = capture.load_profiles()[0]
        args = argparse.Namespace(instruction_window=64, no_variables=False,
                                  compact=True, dump_decoded=True)
        agent = capture.render_agent(profile, ['grv', 'vdx'], args)
        self.assertNotIn('__V64TNG_CONFIG__', agent)
        self.assertIn('"compact":true', agent)
        self.assertIn('"dump_decoded":true', agent)
        with self.assertRaises(RuntimeError):
            capture.select_profile([profile], '0' * 64, None, False)


if __name__ == '__main__':
    unittest.main()
