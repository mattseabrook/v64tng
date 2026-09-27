# Continued semantic recovery and grooviev1 audit — September 26, 2026

This continues [the initial semantic/capture pass](SEMANTIC_CAPTURE_ADVANCE.md).
The continued pass identifies eleven additional function roles and corrects
one existing label. It improves the authoring toolkit using independently
decoded retail resources and original executable instructions as evidence.

## Semantic progress

| Executable | Before continued pass | Now | Remaining | Completeness |
|---|---:|---:|---:|---:|
| DOS V.EXE | 86 / 261 | 88 / 261 | 173 | 33.7% |
| Win32 v32tng.exe | 91 / 336 | 100 / 336 | 236 | 29.8% |
| Combined | 177 / 597 | 188 / 597 | 409 | 31.5% |

Both NASM rebuilds retain their canonical hashes and 100% executable byte
coverage. Function boundaries and the combined 37,665 decoded instructions
remain unchanged. Directory moves and symbol changes identify behavior;
they do not alter executable bytes or establish original source module names.

| Entry | Recovered role | Evidence |
|---|---|---|
| DOS `0230F` | `decompress_cursor_lzss_12bit` | Cursor caller; LSB-first flags, zero token terminator, overlapping copies, real-mode segment rebasing |
| DOS `04710` | `select_cursor_shape_and_palette` | AX selects parallel eleven-entry shape/palette pointer tables; mouse updater consumes the selected pair |
| Win32 `00408BB4` | `decompress_cursor_lzss_12bit` | Matches DOS token layout and output; returns decoded byte count |
| Win32 `00408D00` | `retain_active_vdx_stream` | Stream initialization increments the counter used by the media pump |
| Win32 `00408D12` | `release_active_vdx_stream` | Finalization decrements that counter; original arithmetic wraps without a zero guard |
| Win32 `004087FB` | `clear_gdi_indexed_framebuffer` | Clears exactly 640×480 bytes through the framebuffer object's pixel pointer |
| Win32 `0040881E` | `destroy_gdi_framebuffer_resources` | Deletes the DIB and frees its BITMAPINFO allocation; original globals are not cleared |
| Win32 `00408846` | `blit_gdi_dirty_rectangle` | Half-open bounds, empty rectangle handling, SRCCOPY BitBlt and balanced temporary DC/object use |
| Win32 `00408920` | `upload_gdi_palette_and_reset_dirty_rectangle` | Converts 256 RGB triples to BGR entries, uploads the palette, resets dirty bounds and marks refresh |
| Win32 `0040C129` | `free_grv_decode_runtime_buffers` | Frees and clears both GRV/VDX decode scratch pointers; repeat-safe cleanup |
| Win32 `0040C197` | `free_saved_background_buffer` | Frees and clears the saved indexed background pointer |

Previously labeled `init_archive_tables`, Win32 `0040C180` actually allocates
the 640×320 saved background at `004212D0`. It is now
`allocate_saved_background_buffer`; this correction does not increment the
identified-function count.

The cursor codec is distinct from parameterized VDX LZSS. Its distance combines
the first token byte with the upper nibble of the second; the lower nibble
encodes length minus three. Treating it as an ordinary four-length-bit VDX
token would exchange the fields. DOS also rebases source/destination offsets
above FA00h by subtracting 8000h and adding 0800h to the corresponding segment.

## Toolkit changes

### First still and delta baseline

Ordinary RGB authoring could reject a first still containing more than two
palette indexes per 4×4 tile. Disabling validation was worse: later delta
skips could retain pixels that differed from the encoder's assumed baseline.
The RGB route now chooses two dominant tile indexes, maps the remaining
indexes to the closer of those RGB colors, reports the reduced pixel count,
and decodes its own emitted still to establish the actual delta baseline.
Subsequent deltas can restore the missing detail exactly.

This first-still reduction is lossy. The indexed PNG route remains strict:
an unrepresentable first still fails instead of silently changing indexes.
Delta tiles with three or more colors retain their lossless `0x60` encoding.

### Compression and delta command selection

The LZSS matcher now indexes preceding occurrences of the same first byte,
preserving nearest-first traversal, tie breaking and compressed output while
avoiding searches through unrelated bytes. A 128 KiB random-input benchmark
measured approximately 172–187 ms for the historical search and 2.8–3.0 ms
for the new search (3.1 ms in the final rerun). This is a roughly 56–65× improvement for that matching
benchmark, not a measured speedup for an entire video authoring workflow.

The internal decoder now models zero-initialized circular history, including
references before the first output byte and overlapping matches. It rejects
invalid length parameters, truncated tokens and output exceeding 16 MiB.

Single solid tiles previously entered the repeated-solid branch before the
solid-sequence branch could run. Repeated runs now require at least two tiles;
different consecutive solid tiles use the sequence commands. A test row of
160 alternating solid tiles shrank from 323 to 179 delta bytes.

Still depth/size, palette-update section length and delta tile/run/row bounds
are checked. The last delta row advance remains mandatory for DOS playback.

### Audio survives indexed PNG editing

Indexed extraction now saves every decoded audio chunk to `audio.pcm` and
writes `audio.txt` records containing `visual_boundary pcm_offset pcm_bytes`.
Boundary zero precedes the first visual chunk; boundary one follows it;
the final boundary follows the last visual chunk. Encoding validates a complete,
ordered, contiguous map and interleaves those chunks at their original positions.

The PNG wrapper copies both sidecars beside the PNGs and records audio in
`sequence.json`. Removing its temporary `raw/` directory no longer removes
the soundtrack needed for re-encoding. Comparison checks PCM bytes and chunk
positions, in addition to indexes and all palette entries.

WAV import now rejects missing/invalid formats, zero channels or rate,
unsupported sample widths, inconsistent block alignment, truncated chunks
and incomplete PCM frames. Multiple data chunks are concatenated. Signed
left-shift undefined behavior in unsigned 8-bit conversion was removed.
A missing final odd-byte pad is accepted for compatibility with PCM writers.

### Archive indexes and duplicate names

GRV resource references depend on RL index order. Explicitly supplied archive
files now keep the caller's order rather than being silently sorted. Fresh
directory discovery stays deterministic. Pack validates names, collisions,
input/output aliases and the 32-bit size limit before truncating either output.
Write failures are reported.

Unpack writes `_archive-order.txt` with schema `grooviev1.archive/1`, original
RL names and corresponding loose filenames. Pack automatically reads that
manifest with `--input-dir`, or accepts `--manifest` explicitly. Retail K.RL
contains eleven pairs of duplicate names: each entry receives a separate
index-prefixed loose filename and retains its original name through repacking.
Manifest paths must be basenames. Duplicate names are allowed through this
indexed manifest route, while fresh ambiguous case-colliding names are rejected.

The real K archive round trip preserved all **818 entries**, original names,
index order and resource payload bytes. Physical offsets and inter-resource
padding can change, so this is not whole-GJD byte identity.

### Fonts

Glyph count now comes from the offset table's extent rather than the highest
index referenced by the character map. This preserves unused trailing glyphs
in custom fonts. Character-map references and the 1–256 glyph limit are
validated. The retail SPHINX.FNT extraction/repack is byte-identical.

## Verification

- Native and Windows grooviev1 builds completed; the repository's helper EXE
  and its local T7G copy were refreshed.
- Thirteen CLI regression tests cover RGB baseline repair, compact solid
  sequences, indexed/audio PNG round trips without raw inputs, malformed
  audio/maps, empty audio chunk boundaries, archive ordering/duplicates/preflight
  and unused font glyphs.
- The independent codec verifier checks 217 parameter/pattern cases, including
  compression-token identity against the historical exhaustive matcher, plus
  an early zero-history reference and the isolated compression benchmark.
- All **20 retail RL/GJD archives** passed independent decoding:
  **3,620 VDX resources, 129,707 chunks and 90,595 visual frames**. Pixel
  indexes and all 256 palette entries agree with v64tng's production decoders;
  decompressed chunk bytes agree with its production LZSS implementation.
- AddressSanitizer and UndefinedBehaviorSanitizer passed a 93-file subset
  containing 92 retail basement assets and one synthetic asset:
  **3,322 chunks and 2,324 visual frames**.
- A six-frame synthetic indexed round trip covers multicolor deltas,
  unchanged frames, palette-only changes and audio before, between and after
  visual chunks. Eighteen production indexed/RGB/RGBA PNG exports agree,
  including hidden RGB underneath zero alpha.
- Original executable instructions passed 83 new cursor/media/GDI scenarios,
  4,120 existing DOS GRV cases, 87 Win32 resource/cache scenarios and the
  DOS palette checks from the initial pass. Allocator/GDI calls are modeled;
  these checks do not run a Windows display. The original RGBQUAD reserved
  byte is uninitialized, so palette assertions compare its three color bytes.
- Both canonical NASM rebuilds passed their hash checks; eight offline
  capture/inventory tests passed.

The archive sweep covers AT, B, CH, D, DR, FH, GA, GAMWAV, HDISK, HTBD,
INTRO, JHEK, K, LA, LI, MB, MC, MU, N and P. Its figures describe these
twenty archives, not every loose file in other existing research corpora.

Reproduce the core authoring checks from the repository root:

```sh
grooviev1/build.sh
python3 grooviev1/test_toolkit.py
g++ grooviev1/verify_codec.cpp src/bitmap.cpp src/delta.cpp src/lzss.cpp \
  -Iinclude -std=c++23 -O2 -o grooviev1/build/verify_codec
grooviev1/build/verify_codec T7G/*.RL
```

## Practical limits and capture work

Indexed editing preserves pixels, full palettes, decoded PCM and audio's
position among visual chunks. It does not preserve arbitrary VDX header
bytes, other nonvisual commands, original command choices or compressed
byte identity. Frame-count/rate edits do not automatically retime audio.
WAV resampling still uses the existing nearest-sample conversion.
Windows WIC image import and live Frida injection were not exercised here.

The initial pass restored and improved [research/debug](../research/debug/README.md):
compact VM logging, optional deduplicated decoded binary dumps and whole-script
static resource inventory. [The basement example](BASEMENT_STATIC_INVENTORY.md)
resolved 95 referenced resources and 16 audio-bearing assets without playing
the room. No dungeon runtime trace was used or created. Static references
cover unvisited branches but do not determine their runtime order, timing or
conditions, and dynamically computed references require further analysis.

No v64tng renderer/gameplay behavior was changed, no release was published,
and no commit was created. Generated retail extracts remain ignored research
outputs rather than source additions.
