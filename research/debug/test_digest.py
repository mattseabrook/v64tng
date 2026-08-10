#!/usr/bin/env python3
"""Small offline regression tests for the Win32 trace digester."""

import json
import subprocess
import sys
import tempfile
import unittest
from pathlib import Path

import digest


HERE = Path(__file__).resolve().parent


class DecoderTests(unittest.TestCase):
    def test_video_reference_instruction(self):
        data = bytes.fromhex("091824")
        self.assertEqual(digest.instr_end(data, 0), 3)
        self.assertEqual(digest.decode(data, 0), "VIDEOREF 0x2418=INTRO[24]")

    def test_direct_trace_digest(self):
        records = [
            {"schema": "v64tng.trace/2", "seq": 1, "host_ms": 0, "probe": "session.start"},
            {
                "schema": "v64tng.trace/2",
                "seq": 2,
                "host_ms": 1,
                "probe": "tracer.ready",
                "profile": "test",
                "attached": ["grv.dispatch"],
                "failures": [],
                "input_hooks": [],
                "save_file_hooks": ["CreateFileA", "WriteFile"],
            },
            {
                "schema": "v64tng.trace/2",
                "seq": 3,
                "host_ms": 10,
                "probe": "grv.dispatch",
                "script": "SCRIPT.GRV",
                "script_base": "0x1000",
                "pc": 0,
                "bytes": "091824" + "00" * 253,
                "state": {"video_flags": 0},
            },
            {
                "schema": "v64tng.trace/2",
                "seq": 4,
                "host_ms": 11,
                "probe": "grv.variables",
                "origin_pc": 0,
                "origin_opcode": 9,
                "changes": [{"index": 0x104, "old": 0, "new": 1}],
            },
            {
                "schema": "v64tng.trace/2",
                "seq": 5,
                "host_ms": 12,
                "probe": "grv.video_select",
                "ref": 0x2418,
            },
            {
                "schema": "v64tng.trace/2",
                "seq": 6,
                "host_ms": 13,
                "probe": "vdx.chunk",
                "type": 0x20,
                "coding": 0x77,
                "payload_size": 1234,
            },
            {
                "schema": "v64tng.trace/2",
                "seq": 7,
                "host_ms": 14,
                "probe": "grv.save_game",
                "script": "SCRIPT.GRV",
                "pc_after_opcode": 3,
            },
            {
                "schema": "v64tng.trace/2",
                "seq": 8,
                "host_ms": 15,
                "probe": "save.file_write",
                "path": "C:\\T7G\\st7g.0",
                "requested": 1024,
                "actual": 1024,
                "success": True,
                "data": "00" * 1024,
            },
            {
                "schema": "v64tng.trace/2",
                "seq": 9,
                "host_ms": 16,
                "probe": "save.file_read",
                "path": "C:\\T7G\\st7g.0",
                "requested": 1024,
                "actual": 1024,
                "success": True,
                "data": "00" * 1024,
            },
            {
                "schema": "v64tng.trace/2",
                "seq": 10,
                "host_ms": 17,
                "probe": "save.file_read",
                "path": "C:\\T7G\\st7g.0",
                "requested": 1024,
                "actual": 1024,
                "success": True,
                "data": "00" * 1024,
            },
            {
                "schema": "v64tng.trace/2",
                "seq": 11,
                "host_ms": 18,
                "probe": "grv.dispatch",
                "script": "SCRIPT.GRV",
                "script_base": "0x1000",
                "pc": 3,
                "bytes": "26746573742e76647800" + "00" * 54,
                "video_name": "test.vdx",
                "state": {"video_flags": 0},
            },
            {
                "schema": "v64tng.trace/2",
                "seq": 12,
                "host_ms": 19,
                "probe": "ui.message_box.enter",
                "api": "MessageBoxA",
                "title": "VDX error",
                "text": "Cannot open test.vdx",
                "type": "0x00000010",
            },
            {
                "schema": "v64tng.trace/2",
                "seq": 13,
                "host_ms": 20,
                "probe": "grv.dispatch",
                "script": "SCRIPT.GRV",
                "script_base": "0x1000",
                "pc": 13,
                "bytes": "2a" + "00" * 255,
                "state": {"video_flags": 0},
            },
        ]
        with tempfile.TemporaryDirectory() as temporary:
            trace = Path(temporary)
            with (trace / "events.ndjson").open("w", encoding="utf-8") as handle:
                for record in records:
                    handle.write(json.dumps(record) + "\n")
            result = subprocess.run(
                [sys.executable, str(HERE / "digest.py"), str(trace)],
                check=False,
                capture_output=True,
                text=True,
            )
            self.assertEqual(result.returncode, 0, result.stderr)
            scene = (trace / "digest" / "00-boot.txt").read_text(encoding="utf-8")
            self.assertIn("0x2418=INTRO[24]", scene)
            self.assertIn("type=0x20 (still) coding=0x77", scene)
            self.assertIn("v[0x104] 0 -> 1", scene)
            self.assertIn("VIDEOREF 0x2418=INTRO[24]", scene)
            self.assertIn("grv.save_game: x1", scene)
            self.assertIn("write C:\\T7G\\st7g.0 requested=1024 actual=1024", scene)
            self.assertIn("read C:\\T7G\\st7g.0 requested=1024 actual=1024", scene)
            self.assertIn("success=True x2", scene)
            self.assertIn('VIDEO_NAME "test.vdx" => "test.vdx"', scene)
            self.assertIn("Application popup evidence:", scene)
            self.assertIn("Cannot open test.vdx", scene)
            self.assertTrue((trace / "digest" / "report.json").is_file())


if __name__ == "__main__":
    unittest.main()
