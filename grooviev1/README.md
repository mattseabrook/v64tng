# grooviev1

Standalone Groovie v1 media toolkit for The 7th Guest pipeline. It combines a
VDX encoder with RL/GJD archive and SPHINX.FNT font utilities.

Current scope:
- Writes VDX header and chunk stream.
- Emits `0x20` still frame from first input frame.
- Emits `0x25` delta frames for subsequent changed frames.
- Emits adaptive `0x25` local-palette updates for stronger canonical similarity.
- Emits `0x00` duplicate-frame chunks when frame data is unchanged.
- Optionally interleaves WAV PCM as `0x80` chunks.
- Optional native-compatible LZSS compression (`coding=0x77`, off by default).
- Runs an internal decode/compare validation pass (can be disabled).
- Lists, extracts, and repacks Groovie `SPHINX.FNT` bitmap font files.

GRV script authoring is not implemented yet.

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

## Notes

- Default is full quality for all frames and raw `0x67` chunk payloads.
- `--compress` uses the original output-relative, overlap-capable LZSS token
  model and validates every compressed payload by decoding it before writing.
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
