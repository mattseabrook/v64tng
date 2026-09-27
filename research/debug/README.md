# Semantic capture and script inventory

The capture host, Frida agent, profiles and digester were recovered from Git
commit `3b388bf` (the parent of the research-source removal `6b366cb`) and are
maintained here again. Source files are tracked; traces, extracted game data,
binary blobs and caches remain ignored. No commercial assets are included.

From Windows, with the original game installed and working:

```powershell
py -m pip install -r research/debug/requirements.txt
py research/debug/capture.py --exe C:\T7G\v32tng.exe --doctor
py research/debug/capture.py --exe C:\T7G\v32tng.exe --compact
```

The host requires Python 3.10+, checks executable SHA-256, validates probe
bytes and handles rebasing. The included profile is v32tng 1.02b1, SHA-256
`3c8c3fd3edc27717ae2a08b1f98c7a58f72bd91860a080a29e40d1da8854c36c`.
Close the game or press Ctrl+C to finish. Press F9 for scene markers, or type
a label in the capture console. `--attach PID --exe ...` supports an existing
process. `--mode core` omits VDX and input hooks; `media` selects VDX/audio;
the default `full` keeps all groups. `--out PATH` controls capture location.

`--compact` suppresses only `grv.vm.enter` and `grv.vm.leave` output. Their
hooks still snapshot variables and clear instruction attribution correctly.
Instruction bytes, all dispatches, variable diffs, resource selections and
decoder events remain intact. An earlier non-dungeon capture contains 314,036
VM boundary records out of 658,559 events: omitting those would reduce event
count by 47.7%. This is a count projection, not a measured performance gain.

Add `--dump-decoded` to store the return bytes of the native VDX decompression
wrapper in `blobs/<sha256>.bin`. Each `vdx.decoded_blob` event carries its
relative path, hash, length, script and current instruction. Identical payloads
share a file; capture is bounded to 16 MiB per payload and records failed reads.
This captures decoded chunk payloads, not fully composited frames or raw CPU
memory. It adds copying and disk work; leave it off for routine captures.
Uncompressed chunks do not pass through this wrapper. The static extractor
preserves their original bytes as part of each complete VDX.

Digest an existing capture:

```sh
python3 research/debug/digest.py path/to/trace-directory
```

For assets from every listed branch without playing them, run on either OS:

```sh
python3 research/debug/script_inventory.py --scripts GRATE MAZE --extract --audio
```

This standard-library-only tool verifies the listing hash and every script
byte, resolves numeric references through RL/GJD, extracts each resource once,
indexes VDX chunks and exports native 8-bit mono 22,050 Hz PCM as WAV, including
compressed audio. Output defaults to `research/basement-inventory/`. Use
`--data`, `--listings`, and `--out` for other installations. Script names omit
`.GRV`. Add `--trace path/to/events.ndjson` to compare asset selections against
a single playthrough. The trace is streamed rather than loaded into memory.

`inventory.json` contains full instructions, branch/hotspot/call targets,
reference sites, resource hashes, offsets, sizes, chunk layouts and errors.
Missing assets, archive bounds violations, dynamic filenames and child-script
sites produce an incomplete report and a nonzero exit. Child scripts are not
automatically followed: include them explicitly in `--scripts`. Listings for
modified GRVs must be regenerated first. Static extraction cannot establish
feasible paths, timing, palette composition, ghost trigger conditions or PCM
mixing; those still need native execution evidence. No dungeon playthrough is
claimed. See [the basement inventory](../../docs/BASEMENT_STATIC_INVENTORY.md).

Verification:

```sh
python3 -m unittest discover -s research/debug -p 'test_*.py'
node --check research/debug/agent.js
```

The capture changes have offline tests and JavaScript syntax validation.
Live Frida injection on Windows has not been exercised in this pass.
