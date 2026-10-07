# grooviev1

Standalone Groovie v1 media toolkit for The 7th Guest pipeline. It combines a
VDX encoder with RL/GJD archive and SPHINX.FNT font utilities.

Current scope:
- Writes VDX header and chunk stream.
- Emits `0x20` still frame from first input frame.
- Emits `0x25` delta frames for subsequent changed frames.
- Emits adaptive `0x25` local-palette updates for stronger canonical similarity.
- Retains soundtrack PCM and original audio/visual chunk positions in indexed
  extraction and re-encoding, including the PNG editing workflow.
- Emits `0x00` duplicate-frame chunks when frame data is unchanged.
- Optionally interleaves WAV PCM as `0x80` chunks.
- Optional native-compatible LZSS compression (`coding=0x77`, off by default).
- Runs an internal decode/compare validation pass (can be disabled).
- Lists, extracts, and repacks Groovie `SPHINX.FNT` bitmap font files.

GRV script authoring is not implemented yet.

The October 7, 2026 platform-recovery changes below are **unbuilt and untested**.
See [the platform research/evidence report](../docs/PLATFORM_EASTER_EGGS.md).

## Build (Linux -> Windows x64)

```bash
cd grooviev1
chmod +x build.sh
./build.sh
```

Output:
- `grooviev1/build/grooviev1.exe`
- The Windows executable is also copied to the repository-local
  `../T7G/grooviev1.exe`; `/mnt/T7G` is never used by this build.
- A native Linux command-line build is written to
  `grooviev1/build/grooviev1-native` for raw-frame validation and automation.

## Usage

### Encode VDX

```bash
grooviev1.exe --output out.vdx [options] frame1 frame2 ...
```

or

```bash
grooviev1.exe --output out.vdx --input-dir frames [options]
```

Options:
- `--output PATH` output VDX path (required)
- `--input-dir DIR` discover input frames from directory (sorted lexicographically)
- `--raw` treat input frames as raw RGB24 files
- `--width N` width in pixels (required for `--raw`; must be `640`)
- `--height N` height in pixels (required for `--raw`; maximum `480`)
- `--resize WxH` resize all frames before encoding (width `640`, height at most `480`)
- `--dos-canonical` shorthand for `--resize 640x320`
- `--fps N` VDX header frame rate (default: `15`)
- `--wav PATH` optional WAV source for `0x80` interleave
- `--audio-chunk-bytes N` audio bytes per `0x80` chunk (default: `2048`)
- `--hold-frames N` append `N` timed `0x00` no-change chunks after the final
  input frame
- `--lower-intermediate-quality 0..9` lower quality for frames `1..N-1` only (off by default)
- `--max-local-palette-updates N` max palette edits per `0x25` (default: `32`)
- `--compress` apply native-compatible parameterized LZSS (`0x77`); off by default
- `--no-compress` explicitly select raw `0x67` chunks (the default)
- `--length-mask N` LZSS length mask (default: `127`)
- `--length-bits N` LZSS length bits (default: `7`)
- `--no-validate` skip internal round-trip validation

### Pack RL/GJD

```bash
grooviev1.exe archive-pack --rl ROOM.RL --gjd ROOM.GJD --input-dir ./vdx
```

or

```bash
grooviev1.exe archive-pack --rl ROOM.RL --gjd ROOM.GJD A.VDX B.VDX C.VDX
```

### List RL/GJD

```bash
grooviev1.exe archive-list --rl ROOM.RL [--gjd ROOM.GJD]
```

### Unpack RL/GJD

```bash
grooviev1.exe archive-unpack --rl ROOM.RL --out-dir ./out [--gjd ROOM.GJD]
```

Unpacking writes `_archive-order.txt`, preserving each resource's original RL
name and index order. Repack that directory with `archive-pack --input-dir out`:
the tool automatically uses this manifest. You can also pass
`--manifest out/_archive-order.txt` explicitly. Duplicate RL filenames are
legal in retail archives (K.RL contains eleven duplicate pairs); extraction
gives each such entry an index-prefixed filename and the manifest restores
its original RL name. Thus edited assets retain all numeric GRV references.
Repacking preserves resource bytes, names and indexes, while archive padding
and physical offsets may change.

Archive listing prints the numeric entry index used by GRV references.
Extraction requires a new output directory and keeps generated duplicate-entry
filenames from colliding with ordinary resources. Unknown archive options fail
instead of being silently ignored.

### Classic Mac embedded files and T7GData

The 1994 Classic Mac application stores indexes and scripts as named `T7GM`
resources. Extract them directly from a MacBinary application container:

```sh
python3 grooviev1/mac_resources.py list disassembly/T7GMac/T7GMac.bin --type T7GM
python3 grooviev1/mac_resources.py extract disassembly/T7GMac/T7GMac.bin \
  --type T7GM --out-dir mac-assets
```

The helper uses the resource map and supports signed IDs. Extraction preserves
safe unique asset names and writes `resources.json` with their original types,
IDs, names, sizes and container offsets. It needs Python's standard library;
Pillow is not required. Omitting `--type` extracts all resources. `--type T7SG`
can export saves from a MacBinary copy of an application used for gameplay.

Use explicit fork handling when the companion archive is MacBinary:

```sh
grooviev1-native archive-list --rl mac-assets/hdisk.rl \
  --gjd disassembly/T7GMac/T7GData.bin --macbinary
grooviev1-native archive-unpack --rl mac-assets/hdisk.rl \
  --gjd disassembly/T7GMac/T7GData.bin --macbinary --mac-t7gdata --out-dir mac-media
grooviev1-native archive-pack --rl hdisk-new.rl --gjd T7GData-new --input-dir mac-media
```

`--macbinary` selects data-fork bytes, honoring the big-endian MacBinary fork
length and padded secondary header; RL fields remain little-endian and their
offsets remain relative to the data fork. For an already extracted data fork,
omit `--macbinary` and pass its path explicitly with `--gjd`.

`--mac-t7gdata` extraction requires contiguous indexed payloads with one `FF`
separator after each. It writes `grooviev1.archive/mac-t7gdata/1` as the manifest
header. Packing automatically uses that separator policy from the manifest;
it can also be selected explicitly with `--mac-t7gdata`. The separator contributes
to the next entry's offset, but not the current entry's length.

Packing produces a raw data fork. Install it with a fork-aware Mac tool, and
replace the application's matching `hdisk.rl` resource. Same-size replacement
is supported without rebuilding the resource map:

```sh
python3 grooviev1/mac_resources.py replace disassembly/T7GMac/T7GMac.bin \
  --type T7GM --id 32309 --replacement hdisk-new.rl --output T7GMac-mod.bin
```

Replacement requires exactly the original resource size and a new output path.
The supplied Mac HDISK index has ten entries (200 bytes), including the credits
stills `todd.vdx` and `hayes.vdx`; preserve their indexes 8 and 9. Copying a DOS
eight-entry HDISK index would lose those Mac script references. The helper does
not repair damaged resource maps, resize resources or package raw data forks.
The VDX/RL encoder does not produce CD-i MPEG media or native OS-9 modules.

### Inspect SPHINX.FNT

```bash
grooviev1.exe fnt-list --fnt SPHINX.FNT
```

Prints detected character-map size, glyph count, glyph metadata, dimensions,
and the ASCII codes mapped to each glyph index.

### Extract SPHINX.FNT Glyph Bitmaps

```bash
grooviev1.exe fnt-extract --fnt SPHINX.FNT --out-dir ./sphinx_font
```

Output files:
- `charmap.bin` (128-byte ASCII-to-glyph-index map)
- `glyphs.csv` (glyph metadata and bitmap filenames)
- `glyph_XX.bmp` (8-bit grayscale content stored as 24-bit BMP)

### Repack SPHINX.FNT

```bash
grooviev1.exe fnt-pack --input-dir ./sphinx_font --output SPHINX_NEW.FNT
```

Optional overrides:
- `--charmap PATH` use a different 128-byte character-map file
- `--glyphs PATH` use a different glyph metadata CSV

Packing validates dimensions and metadata consistency before writing the final
FNT with a rebuilt offset table.
The first glyph offset defines the complete table length, including trailing
glyphs not currently referenced by the character map. These glyphs survive
extraction and repacking; the character map is checked against the table.

## Notes

- Default is full quality for all frames and raw `0x67` chunk payloads.
- `--compress` uses the original output-relative, overlap-capable LZSS token
  model and validates every compressed payload by decoding it before writing.
  An indexed first-byte match search preserves historical token selection while
  avoiding scans over unrelated bytes. Extraction also supports references into
  the original decoder's zero-initialized history; decoded chunks are capped at
  16 MiB and truncated compressed streams fail clearly.
- The 192-byte VDX tile-map table is copied byte-for-byte from two independent
  decoder locations: DOS `V.EXE` load offset `015DBEh` (`DS:D48Eh`) and Win32
  `v32tng.exe` VA `0041A088h`. The two original tables are identical.
- `--lower-intermediate-quality` is optional and only affects frames from
  first through second-last; the last frame remains full quality.
- Image decoding uses Windows WIC (PNG/BMP/JPEG/TIFF/GIF/WebP depending on installed codecs).
- WAV input is converted to unsigned 8-bit mono 22050 Hz PCM for `0x80` chunks.
- `--hold-frames` emits real zero-payload `0x00` chunks. In DOS `V.EXE`, the
  initial `0x20` decode is not itself a timed wait, so a five-second standalone
  still at 15 Hz uses `--hold-frames 75`.
- Groovie v1 output is fixed at 640 pixels wide. Height is stored as 4-pixel
  tile rows, must be divisible by 4, and may not exceed 480 pixels.
- Canonical T7G movie content is typically `640x320` (`160x80` tiles). Its
  top and bottom letterbox bars are display composition, not bitmap rows in
  those assets. Full-screen material may use `640x480` (`160x120` tiles).
- Every `0x20` still tile stores at most two palette indices. `0x25` delta
  opcode `0x60` is the exception to treating that as a format-wide limit: it
  can store sixteen independent indices for one 4×4 tile.
- `archive-pack` writes the RL file as exact 20-byte records and writes the GJD
  as raw concatenated payloads in RL order.
- RL entry names must fit the original 12-byte filename field.
- Explicit `archive-pack` file arguments retain their supplied order: that is
  the numeric resource-index order used by GRV. Directory discovery is sorted.
  Packing validates all names, collisions, input files and size limits before
  opening output archives. Unpacking rejects invalid basenames and bounds.
- RGB input is intentionally quantized. The first still uses the two dominant
  indices per tile and maps other colors to the nearer of those two. The tool
  reports the number of reduced pixels. Later deltas compare against the
  decoded still, so detail omitted from the still can be restored. Indexed
  encoding continues to reject an unrepresentable first frame.

## Example

```bash
grooviev1.exe \
  --output INTRO_TEST.VDX \
  --input-dir ./frames \
  --dos-canonical \
  --fps 12 \
  --wav ./audio.wav \
  --lower-intermediate-quality 6
```

## Lossless source-material round trip

For extracted game frames, use the indexed route below. The ordinary RGB/WIC
encoder rebuilds palettes; it cannot preserve original palette-slot identities.
This route encodes independently from PNG indices and palettes, without the
original VDX, original opcodes or compression tokens. PNGs must remain opaque
indexed images with all 256 palette entries. Pillow is required for `frames.py`.

From the repository root, after building:

```bash
python3 grooviev1/frames.py extract input.vdx test/frames
python3 grooviev1/frames.py encode test/frames test/reencoded.vdx
python3 grooviev1/frames.py compare input.vdx test/reencoded.vdx --report test/comparison.json
```

Use `--tool PATH` before the subcommand to select `grooviev1.exe` on Windows.
Extraction creates native-resolution indexed PNGs, `sequence.json` (geometry,
frame rate and count), and `raw/` containing `.idx` (one byte per pixel), `.pal`
(256 RGB triples), and `.rgb` (RGB24). All are row-major/top-down. Encoding reads
the PNGs, sequence metadata and any audio sidecars, so deleting `raw/` does not affect encoding.
No PNG is quantized or resized by this route. Output paths must be new.
When the input contains PCM, extraction also writes `audio.pcm` and `audio.txt`
beside the PNGs and adds audio metadata to `sequence.json`. `audio.txt` contains
`visual_boundary pcm_offset pcm_bytes` triples: boundary zero is before the
first visual chunk, boundary one is after it, and the final boundary is after
the last visual chunk. Keep both sidecars to retain the original soundtrack;
they remain usable after deleting `raw/`. Editing PNG pixels or palette entries
preserves this audio and its visual boundaries.

The C++ commands `extract-indexed INPUT.vdx OUT_DIR` and
`encode-indexed INPUT_DIR OUTPUT.vdx` operate directly on `.idx`/`.pal` plus
`sequence.txt` (`width height fps frame_count`). Encoding validates every frame's
indices and all palette entries. Palette-only changes emit real `0x25` chunks;
identical indices and palettes emit `0x00`. The first frame must be representable
by two indices per 4×4 tile or encoding fails instead of silently losing pixels.
Three-or-more-colour delta tiles use the lossless `0x60` representation.
Every delta row, including the final row, ends with `0x61`: DOS V.EXE uses
that last advance to reach its end-of-frame sentinel. Encoder validation rejects
streams that omit it even if a payload-length-bounded decoder renders them.

This preserves frame count, dimensions, frame rate, indices, complete palettes,
decoded PCM and each PCM chunk's position among the visual chunks. It does not
preserve arbitrary header bytes, nonvisual nonaudio commands, original visual
chunk choices or identical compressed bytes. Changing frame count or rate may
change the meaning of the preserved audio positions; no automatic audio
retiming is performed. An extracted VDX remains the source archive for those
details. `frames.py compare` checks PCM and audio positions as well as pixels.

### Independent decoder and PNG export cross-check

```bash
g++ grooviev1/verify_lossless.cpp src/bitmap.cpp src/delta.cpp src/lzss.cpp src/png_write.cpp \
  -Iinclude $(pkg-config --cflags --libs libpng) -std=c++23 -O2 \
  -o grooviev1/build/verify_lossless
grooviev1/build/verify_lossless test/reencoded.vdx test/frames/raw test/core_png
python3 grooviev1/check_png_exports.py test/frames/raw test/core_png
```

This uses v64tng's actual bitmap/delta implementations and production PNG writer,
then checks indexed, RGB and RGBA PNGs with Pillow (including hidden RGB under
zero alpha). It does not run the game. See [the f_1bc results](../docs/F_1BC_LOSSLESS.md)
for the first source-material comparison and assembly references.

### Continued toolkit verification

```sh
python3 grooviev1/test_toolkit.py
g++ grooviev1/verify_codec.cpp src/bitmap.cpp src/delta.cpp src/lzss.cpp \
  -Iinclude -std=c++23 -O2 -o grooviev1/build/verify_codec
grooviev1/build/verify_codec path/to/asset.vdx path/to/ROOM.RL
```

The independent verifier checks compression tokens against the previous
exhaustive search, compares decompressed bytes against v64tng's production
LZSS decoder and compares pixel indexes and all palette entries against its
production bitmap/delta decoders. RL arguments inspect resources directly
inside GJD without extracting thousands of files. ASan/UBSan validation and
native executable helper checks are recorded in
[the deep-dive report](../docs/GROOVIEV1_DEEP_DIVE.md).
# Microscope recovery follow-up

GRV `GAMELOGIC` (`42h`) takes one strategy **mode** byte (recovered range 0–8),
reads the 49-cell board at `v[0x19..0x49]`, and returns source/destination
row/column in `v[0..3]`. Scripts apply and animate the selected move. Shared
decoder output now labels the operand `mode`; its encoding is unchanged.

The engine's `grvMicroscopePolicy` configuration selects `dos` (default) or
`windows`, independently of save-file format. Those policies differ in board
normalization, ranked-search threshold and tie selection. A no-move search
returns stored selection coordinates; it does not mean the board was modified.
Mac/CD-i policy equivalence is not claimed. See the
[engine integration report](../docs/ENGINE_SEMANTIC_INTEGRATION.md).
This follow-up was not built, tested or verified.
