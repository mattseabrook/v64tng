# f_1bc lossless round trip

Source: `T7G/FH.RL` entry `f_1bc.vdx`, archive offset 30,137,945, size 711,018
bytes in `T7G/FH.GJD`. The clip has 31 visual frames at 640×320, 9 fps: one
`0x20` and thirty `0x25` chunks, with no audio chunks.

Artifacts are local, under `grooviev1/test_f_1bc/` (ignored by Git):

- `source.vdx`: extracted original.
- `frames/00000.png` … `00030.png`: lossless indexed PNGs with all palette entries.
- `frames/raw/`: original decoded indices, palettes and RGB.
- `reencoded.vdx`: 746,450-byte independently encoded result.
- `comparison.json`: per-frame hashes and mismatch counts.
- `core_source_png/`, `core_reencoded_png/`: production-writer PNG exports
  and `verification.json` results.
- `regression*`: focused multicolour, generic-map, palette-only and duplicate
  cases used while correcting the encoder.

## Observed results

All 31 frames match exactly in pixel indices, all 768 palette bytes and rendered
RGB. The independent v64tng LZSS and bitmap/delta decoders also match every frame for
both source and regenerated VDX. Pillow verified 186 PNGs emitted by the actual
v64tng writer: indexed, RGB and RGBA for both clips. Zero-alpha pixels retain
RGB. The focused five-frame synthetic sequence also passes.

The output differs in compressed bytes and is larger than the original. This
matches the clarified requirement: independent encoding with identical decoded
pixels and palettes, not reconstruction of the original compressor's decisions.
This result covers this clip and the listed regression cases; it is not proof
that every possible VDX or future mod input is correct.

## Corrections

- Removed approximate map substitution for multicolour delta tiles (previously
  allowed two pixel errors); these use `0x60` literal tile encoding.
- Generic two-colour maps must begin with a byte at least `0x80`. Complementing
  a map and swapping its colours enforces this without changing any pixels.
- Palette-only frames are not discarded as duplicates.
- Added a route that preserves PNG palette-slot identities instead of rebuilding
  a palette from RGB. Original and unused palette entries survive.
- Full-frame v64tng PNG exports now retain indices and palette tables. RGB and
  RGBA writing remains unquantized, with validated buffer sizes and write errors.

## Assembly evidence consulted

- `disassembly/V/src/functions/vdx/decode_vdx_bitmap_still.asm`: still tile
  bit tests and shifts (including `1000:0E75`, testing `0x8000`).
- `disassembly/v32tng/src/functions/vdx/decode_vdx_delta_frame.asm`:
  `0040B3A6` / `0040B3CD` dispatch at `0x60`; `0040B6C7` at `0x61`;
  `0040B9A2` compares against `0x80`, followed by the generic-map branch.
- DOS `DS:D48E`, load offset `15DBE`, and Win32 `0041A088` contain the
  192-byte map table used by the encoder.

The assembly files were inspected without modification. Original-player
runtime execution and GUI testing were not performed.

## DOS playback correction: missing final row advance

The user's V.EXE playback of the first re-encode showed corrupted pixels near
the bottom of the picture. The earlier decoded-byte comparisons did not establish
original-player compatibility: both comparison decoders stopped at payload EOF.

The encoder emitted `0x61` between tile rows but omitted it after the last row.
All thirty original `f_1bc.vdx` deltas end with `0x61`; none of the first
re-encode's deltas did. DOS `1000:121D` advances the row table and jumps to
`1000:10B8`, where `1000:10BF` tests the `FFFFh` end sentinel. Ending the payload
without that row advance does not perform this termination. This is a concrete
compatibility defect and is consistent with the reported corruption.

The encoder now emits the final advance. Its output validation requires the
cursor to reach the next row after the image, and a regression explicitly
rejects an otherwise correct delta with the final `0x61` removed. Source-file
extraction remains tolerant so earlier files can still be inspected.

Updated artifacts: `reencoded_fixed.vdx`, `comparison_fixed.json`, and
`fixed_core_png/` under the test directory. The test copy is `T7G/stairs2.vdx`;
the untouched archive extraction is `T7G/f_1bc.vdx`. The fixed result retains
zero decoded index/palette/RGB mismatches on all 31 frames. DOS visual playback
of the corrected file remains for the user to confirm.
