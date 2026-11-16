# grooviev1

Standalone Groovie v1 media toolkit for The 7th Guest pipeline. It combines a
VDX encoder with RL/GJD archive, GRV script, Classic Mac resource, and
SPHINX.FNT font utilities. Windows, Linux and macOS command-line builds share
the same media implementations. GRV tooling shares the engine decoder.

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

GRV scripts can now be disassembled and rebuilt from their authoritative hex
byte columns. This is a byte-listing assembler, not a compiler for mnemonic
operands or automatic branch relocation.

Gameplay and mod-content acceptance are human work; no automated test harnesses
are maintained here. The platform build changes have not been built or tested.
The original-engine disassemblies each retain their own `build.sh` byte-identity
gate. Recovery of all known DOS function roles is not a promise that every
possible mod or every platform behavior is supported.

## Build

Run `build.sh` with no argument to build for its host, or select a target:

```bash
cd grooviev1
./build.sh           # Auto-detect Linux, macOS or Windows/Git Bash
./build.sh windows   # Native Windows x64 PE/COFF executable
./build.sh linux     # Linux executable
./build.sh macos     # macOS executable
```

| Target | Compiler/toolchain | Output |
| --- | --- | --- |
| Windows | `clang-cl`, `lld-link`, Microsoft SDK/STL, static Microsoft CRT (`/MT`), `x86_64-pc-windows-msvc` | `build/grooviev1.exe` |
| Linux | Native Clang++ when available, otherwise GCC; C++23 standard library required | `build/grooviev1-linux` |
| macOS | Apple Clang/libc++ from Xcode Command Line Tools by default; C++23 required | `build/grooviev1-macos` |

Windows C++ compilation and linking use the MSVC ABI with Clang/LLVM, matching
the engine's Windows toolchain. There is no GCC/MinGW compiler fallback, GNU
Windows runtime, Wine invocation or emulation step. On Windows, use Git Bash,
MSYS2 or Cygwin with LLVM and the Microsoft C++ Build Tools/SDK installed; an
x64 developer environment can supply `INCLUDE`/`LIB`.

For cross-Windows builds, existing `/opt/winsdk`, `/opt/msvc/include` and the
shared v64tng dependency cache are detected. Set `WINSDK_BASE`/`MSVC_INCLUDE`
for custom paths. If SDK files are missing, the script uses installed `xwin`
to acquire them, accepting the Microsoft SDK license. Install LLVM and xwin
first, or provision them through the repository's main build bootstrap.

Linux and macOS targets are native builds on their corresponding hosts. To
cross-build macOS from Linux, supply osxcross, an explicit `CXX_MACOS` cross
compiler, or an Apple SDK in `SDKROOT` with Clang and `ld64.lld`. Apple SDKs
are not downloaded automatically. To cross-build Linux from another OS,
set `CXX_LINUX` to a configured Linux cross compiler; `LINUX_SYSROOT` optionally
supplies its sysroot. Selecting a target does not run an emulator.

Compiler overrides are `CXX_LINUX`, `CXX_NATIVE`/`CXX` for Linux and `CXX_MACOS`
for macOS. `SDKROOT` and `MACOSX_DEPLOYMENT_TARGET` configure Apple SDK use.
Native Linux/macOS builds create `build/grooviev1-native` and `build/grooviev1`
aliases, retaining the path used by `frames.py`.

Only Windows builds deploy into the repository-local `../T7G` directory.
`GROOVIEV1_NO_DEPLOY=1` disables this; `GROOVIEV1_DEPLOY_DIR` selects another
destination. No target deploys to `/mnt/T7G` implicitly.

The checked-in executable from the old GCC build has been removed. Generate
platform artifacts with the commands above. Native Linux/macOS RGB authoring
retains the existing `--raw` RGB24 input requirement; Windows uses WIC for
image loading. The indexed-PNG workflow remains available through `frames.py`
and Pillow. Archive, font, GRV and indexed-byte commands share their portable
implementations across the targets.

### Platform prerequisites and examples

All targets compile the same three C++ source files and require a C++23
standard library providing `<format>` and `<expected>`. The standalone toolkit
does not link the engine's Vulkan or audio libraries.

**Arch Linux, native Linux build:** install a current native C++ toolchain,
then choose the Linux target. Clang can use the native GNU/Linux standard
library headers installed with GCC; these are unrelated to Windows runtimes.

```bash
sudo pacman -Syu --needed clang gcc
./grooviev1/build.sh linux
./grooviev1/build/grooviev1-native --help
```

**Arch Linux, cross-build Windows x64:** use LLVM plus the Microsoft SDK/CRT.
If an existing installation is unavailable, install xwin so the script can
obtain the Microsoft files. If Cargo is already available, omit the Rust
installation command.

```bash
sudo pacman -Syu --needed clang lld llvm
# Only when Rust/Cargo is absent:
sudo pacman -Syu --needed rust
cargo install --locked xwin
export PATH="$HOME/.cargo/bin:$PATH"
GROOVIEV1_NO_DEPLOY=1 ./grooviev1/build.sh windows
```

The script reuses complete Microsoft installations at `/opt/winsdk` plus an
optional `/opt/msvc/include`, or the shared per-user v64tng cache. `xwin`
downloads only when the required SDK installation is absent. It accepts the
Microsoft SDK license through `--accept-license`. The resulting PE/COFF
executable runs on Windows; the cross-build does not run it on Linux.

**Native Windows:** install Visual Studio C++ Build Tools with a Windows SDK
and LLVM/Clang. Launch Git Bash/MSYS2/Cygwin with `clang-cl` and `lld-link` on
PATH; an x64 developer shell can supply the Microsoft `INCLUDE`/`LIB`
environment. From the repository root:

```bash
GROOVIEV1_NO_DEPLOY=1 ./grooviev1/build.sh windows
./grooviev1/build/grooviev1.exe --help
```

**Native macOS:** install current Xcode Command Line Tools when missing.
The script uses `xcrun` to locate Apple Clang and the macOS SDK.

```bash
xcode-select --install  # Only when Command Line Tools are absent
./grooviev1/build.sh macos
./grooviev1/build/grooviev1-native --help
```

Older Xcode/libc++ releases lacking C++23 `<format>`/`<expected>` need upgrading
or a compatible compiler selected through `CXX_MACOS`.

**Cross-macOS from Linux:** supply a configured Apple cross toolchain and its
licensed SDK/C++ standard library; those files cannot be inferred from Linux
headers. For example:

```bash
CXX_MACOS=/opt/osxcross/bin/o64-clang++ ./grooviev1/build.sh macos
```

The script also detects `o64-clang++` on PATH, or accepts `SDKROOT` with a
compatible Clang/Darwin libc++ installation and `ld64.lld`. It does not download
Apple SDKs or run the output through an emulator.

**Cross-Linux from another OS:** set `CXX_LINUX` to a configured Linux cross
compiler; optionally supply `LINUX_SYSROOT`. Merely choosing `linux` cannot
substitute a macOS/Windows SDK for a Linux sysroot.

### Build settings

| Setting | Meaning |
| --- | --- |
| `WINSDK_BASE` | Microsoft SDK/CRT root for Windows cross-compilation. |
| `MSVC_INCLUDE` | Explicit Microsoft C++ header directory. |
| `V64TNG_MSVC_INCLUDE` | Override the separate `/opt/msvc/include` selection. |
| `V64TNG_DEPS_CACHE` | Shared SDK/dependency cache root. |
| `CXX_LINUX` | Native or configured cross compiler for the Linux target. |
| `CXX_NATIVE`, `CXX` | Linux compiler fallbacks; `CXX` also participates in native macOS selection. |
| `LINUX_SYSROOT` | Optional Linux sysroot passed to the selected compiler. |
| `CXX_MACOS` | Explicit Apple/macOS compiler or cross-toolchain wrapper. |
| `SDKROOT` | Apple SDK root. |
| `MACOSX_DEPLOYMENT_TARGET` | Requested minimum macOS deployment version. |
| `GROOVIEV1_MACOS_ARCH` | Architecture for the plain-Clang cross-macOS path; default `x86_64`. |
| `GROOVIEV1_NO_DEPLOY=1` | Skip copying the Windows output into a game directory. |
| `GROOVIEV1_DEPLOY_DIR` | Override the Windows deployment directory. |

Windows compilation is always `clang-cl --target=x86_64-pc-windows-msvc`
with `lld-link`, Microsoft headers/import libraries and static CRT. No `CXX`
setting selects a GCC/MinGW Windows fallback. A default build compiles one
host target; it does not build all three operating systems in one invocation.

## Usage

- [Equivalent command and option spellings](#equivalent-command-and-option-spellings)
- [File and output rules](#file-and-output-rules)
- [Encode VDX](#encode-vdx)
- [Archive options](#archive-option-reference), [pack](#pack-rlgjd), [list](#list-rlgjd), [unpack](#unpack-rlgjd)
- [Classic Mac embedded files](#classic-mac-embedded-files-and-t7gdata)
- [Lossless indexed PNG workflow](#lossless-source-material-round-trip)
- [Python helper command reference](#python-helper-command-reference)
- [GRV scripts](#grv-scripts-inspect-edit-rebuild)


Examples below run from the repository root. `grooviev1.exe` denotes the
Windows executable in `grooviev1/build/`; use
`./grooviev1/build/grooviev1-native` or the platform-specific output on Linux
and macOS. The Python helpers require Python 3. `frames.py extract`/`encode`
also require Pillow; help and `frames.py compare` do not.

### Equivalent command and option spellings

Every dash-prefixed option accepts its short code or full name with **one or
two dashes**. These are equivalent argument names, not separate help commands.
For example, each of these lists the same archive:

```cmd
grooviev1.exe archive-list -r ROOM.RL -g ROOM.GJD
grooviev1.exe archive-list --r ROOM.RL --g ROOM.GJD
grooviev1.exe archive-list -rl ROOM.RL -gjd ROOM.GJD
grooviev1.exe archive-list --rl ROOM.RL --gjd ROOM.GJD
```

Every row below expands to four spellings. For example, `o` / `output` means
`-o`, `--o`, `-output`, `--output`. Canonical long spellings remain valid.
Option values and paths following value-taking options are preserved verbatim.

| Short code | Full name | Meaning |
| --- | --- | --- |
| `h` | `help` | Overall help/usage overview. |
| `o` | `output` | Output VDX or FNT file. |
| `i` | `input-dir` | Input frame/font/resource directory. |
| `a` | `wav` | WAV input for audio interleave. |
| `w` | `width` | RAW input width. |
| `ht` | `height` | RAW input height; `h` is reserved for help. |
| `rs` | `resize` | Nearest-neighbour output geometry. |
| `dc` | `dos-canonical` | Resize to 640x320. |
| `f` | `fps` | VDX header frame rate. |
| `q` | `lower-intermediate-quality` | Intermediate-frame quantization. |
| `ac` | `audio-chunk-bytes` | Maximum PCM bytes per chunk before compression. |
| `hf` | `hold-frames` | Append unchanged frames. |
| `pu` | `max-local-palette-updates` | Palette update limit per delta. |
| `rw` | `raw` | RAW RGB24 input, or uninterpreted GRV bytes in `grv-disassemble`. |
| `c` | `compress` | Enable LZSS. |
| `nc` | `no-compress` | Disable LZSS. |
| `lm` | `length-mask` | LZSS mask. |
| `lb` | `length-bits` | LZSS bit count. |
| `nv` | `no-validate` | Skip internal encoder validation. |
| `r` | `rl` | RL index path. |
| `g` | `gjd` | GJD archive path. |
| `m` | `manifest` | Archive order/name manifest. |
| `od` | `out-dir` | Font/archive extraction directory. |
| `mb` | `macbinary` | Read an archive's MacBinary data fork. |
| `mt` | `mac-t7gdata` | Mac FF-separator policy. |
| `fn` | `fnt` | Font input path. |
| `cm` | `charmap` | Font character-map override. |
| `gl` | `glyphs` | Glyph CSV override. |
| `res` | `resources` | RL directory for GRV reference names. |
| `hs` | `hotspots` | DOS/Windows GRV geometry convention. |

Bare subcommands are retained. They also accept the same four-name pattern:
`ap` / `archive-pack` means `-ap`, `--ap`, `-archive-pack`, `--archive-pack`.

| Short code | Existing bare command/full name |
| --- | --- |
| `e` | `encode` |
| `xi` | `extract-indexed` |
| `ei` | `encode-indexed` |
| `ap` | `archive-pack` |
| `al` | `archive-list` |
| `au` | `archive-unpack` |
| `fl` | `fnt-list` |
| `fe` | `fnt-extract` |
| `fp` | `fnt-pack` |
| `gd` | `grv-disassemble` |
| `ga` | `grv-assemble` |

```cmd
grooviev1.exe --al --r ROOM.RL --g ROOM.GJD
grooviev1.exe -fe -fn SPHINX.FNT -od sphinx_font
grooviev1.exe --e --o out.vdx --rw --w 640 --ht 320 frame.raw
grooviev1.exe --gd SCRIPT.GRV script.asm --res assets --hs dos
```

Python helpers retain their bare subcommands and support four spellings for
their named options too:

| Helper | Short code / full option name |
| --- | --- |
| `frames.py` | `h` / `help`, `t` / `tool`, `r` / `report` |
| `mac_resources.py` | `h` / `help`, `t` / `type`, `i` / `id`, `od` / `out-dir`, `r` / `replacement`, `o` / `output` |

```bash
python3 grooviev1/frames.py -t grooviev1/build/grooviev1-native compare input.vdx rebuilt.vdx -r report.json
python3 grooviev1/mac_resources.py extract T7GMac.bin -t T7GM -od mac-assets
```

`-h`, `--h`, `-help`, `--help` remain equivalent spellings of the help option.
There is no new command-specific help system in the C++ tools.

### File and output rules

- RGB encoding, archive packing and font extraction/packing may overwrite files.
- `archive-unpack` and `extract-indexed` require new output directories.
- `encode-indexed` and both GRV commands require new output files.
- Python indexed-PNG extraction/encoding require new output locations; Mac
  resource extraction/replacement also require new output locations.
- Indexed encoding preserves decoded indices/palettes/timing/PCM, not identical
  compressed VDX bytes or arbitrary unknown header/chunk content.
- Archive repacking preserves resource payloads, names and manifest order,
  while recomputing physical offsets and omitting arbitrary unindexed padding.

The retail font spelling is **SPHINX.FNT**:

```cmd
grooviev1.exe fnt-list --fnt SPHINX.FNT
grooviev1.exe fnt-extract --fnt SPHINX.FNT --out-dir sphinx_font
```

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
- `--input-dir DIR` discover input frames from directory (sorted lexicographically); cannot be combined with explicit frames; RAW mode discovers only `.raw` files
- `--raw` treat input frames as raw RGB24 files
- `--width N` width in pixels (required for `--raw`; must be `640`)
- `--height N` height in pixels (required for `--raw`; `4..480`, divisible by `4`)
- `--resize WxH` resize all frames before encoding (width `640`, height `4..480`, divisible by `4`; nearest-neighbour)
- `--dos-canonical` shorthand for `--resize 640x320`
- `--fps N` VDX header frame rate, `1..65535` (default: `15`)
- `--wav PATH` optional WAV source for `0x80` interleave
- `--audio-chunk-bytes N` maximum PCM bytes per `0x80` chunk before compression, greater than zero (default: `2048`)
- `--hold-frames N` append `0..65535` timed `0x00` no-change chunks after the final
  input frame
- `--lower-intermediate-quality 0..9` quantize frames `1..N-1` only (`0` lowest quality, `9` highest; off by default)
- `--max-local-palette-updates N` max palette edits per `0x25`, `0..256` (default: `32`)
- `--compress` apply native-compatible parameterized LZSS (`0x77`); off by default
- `--no-compress` explicitly select raw `0x67` chunks (the default)
- `--length-mask N` LZSS length mask; must equal `(1 << length-bits) - 1` (default: `127`)
- `--length-bits N` LZSS length bits, `1..8` (default: `7`)
- `--no-validate` skip internal round-trip validation

### Archive option reference

| Option | Applies to | Meaning |
| --- | --- | --- |
| `--rl PATH` | Pack, list, unpack | Required index input/output. |
| `--gjd PATH` | Pack, list, unpack | Required pack destination; list/unpack default to the matching `.GJD` beside the RL. |
| `--input-dir DIR` | Pack | Discover sorted files, or use its `_archive-order.txt` automatically when present. |
| `--manifest PATH` | Pack | Explicit order/name manifest; sources are relative to it. Cannot combine with explicit file arguments. |
| `--out-dir DIR` | Unpack | Required new extraction directory. |
| `--macbinary` | List, unpack | Read the specified archive's MacBinary data fork. RL offsets remain relative to that fork. |
| `--mac-t7gdata` | Pack, unpack | Emit/check contiguous payloads with FF separators outside indexed lengths. Unpacking records this policy in the manifest. |

Without a manifest, explicit file order is followed by sorted directory input.
Names must fit the 12-byte RL name field. Listing reads the GJD to mark
out-of-range records; it is not an RL-only listing. Existing pack outputs may
be overwritten; an unpack destination must not already exist.

### Pack RL/GJD

Packing recomputes offsets and writes canonical names and concatenated resource
payloads. Unpacking/repacking preserves manifest resource order, names and
payload bytes; arbitrary unindexed gaps and unused bytes after a filename's NUL
terminator are not preserved. `--mac-t7gdata` explicitly retains FF separators.

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
indexed images with all 256 palette entries. Pillow is required for `frames.py extract` and `frames.py encode`; help and
`frames.py compare` do not import Pillow.

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

## Python helper command reference

### Indexed PNG workflow: `frames.py`

`frames.py` defaults to `build/grooviev1.exe` on Windows and
`build/grooviev1-native` on Linux/macOS. `--tool PATH` overrides that choice and
must appear **before** the subcommand. The selected executable must be runnable
on the host; a Linux process cannot execute a cross-built Windows/macOS binary
as a native Linux tool.

Only image extraction/encoding need Pillow. A virtual environment avoids
modifying a system-managed Python installation:

```bash
python3 -m venv .venv
.venv/bin/python -m pip install Pillow
.venv/bin/python grooviev1/frames.py extract input.vdx frames
.venv/bin/python grooviev1/frames.py encode frames rebuilt.vdx
.venv/bin/python grooviev1/frames.py compare input.vdx rebuilt.vdx --report comparison.json
```

Windows equivalents:

```cmd
py -3 -m venv .venv
.venv\Scripts\python.exe -m pip install Pillow
.venv\Scripts\python.exe grooviev1\frames.py --tool grooviev1\build\grooviev1.exe extract input.vdx frames
.venv\Scripts\python.exe grooviev1\frames.py --tool grooviev1\build\grooviev1.exe encode frames rebuilt.vdx
.venv\Scripts\python.exe grooviev1\frames.py --tool grooviev1\build\grooviev1.exe compare input.vdx rebuilt.vdx --report comparison.json
```

| Command | Required arguments/options | Result |
| --- | --- | --- |
| `extract SOURCE.vdx NEW_DIR` | Source VDX and new output directory. | Opaque indexed PNGs, full palettes, `sequence.json`, raw sidecars and any PCM sidecars. |
| `encode INPUT_DIR NEW_OUTPUT.vdx` | Existing PNG sequence directory and new VDX destination. | Rebuilt indexed VDX; reads PNGs/metadata/audio, not the original VDX or extracted opcode bytes. |
| `compare SOURCE.vdx ENCODED.vdx --report FILE.json` | Two existing VDX files and the required report path. | Compares decoded timing/geometry/frame count, indices, palettes, RGB, PCM and audio chunk positions. A mismatch returns nonzero. The JSON report may be overwritten. |

The helper's help option accepts `-h`, `--h`, `-help` and `--help`.
Help requires neither Pillow nor the selected C++ executable.
Changing frame counts/rates does not automatically retime preserved audio.
Indexed encoding may reject edited first-frame tiles with more than two
palette indices; it does not silently approximate them.

### MacBinary resources: `mac_resources.py`

This helper uses Python's standard library and does not require the C++ tool,
Pillow or a Mac host. Inputs are **MacBinary containers**, not arbitrary raw
files or bare resource forks.

| Command | Syntax | Result |
| --- | --- | --- |
| `list` | `list INPUT [--type FOURCC] [--id ID]` | Print matching resource metadata as JSON. With no filters, list all resources. |
| `extract` | `extract INPUT --out-dir NEW_DIR [--type FOURCC] [--id ID]` | Export matching payloads plus `resources.json`, preserving safe unique names and assigning fallback filenames where needed. |
| `replace` | `replace INPUT --type FOURCC --id ID --replacement FILE --output NEW_FILE` | Replace exactly one selected resource with an equal-size payload, retaining the container layout. |

`--type` matches the exact four-character resource type; `--id` accepts signed
resource IDs. Extraction requires a new directory. Replacement requires a new
output file and a payload of exactly the selected resource's byte length;
resource resizing is not implemented. The original input is never opened for
writing.

```bash
python3 grooviev1/mac_resources.py list disassembly/T7GMac/T7GMac.bin --type T7GM
python3 grooviev1/mac_resources.py extract disassembly/T7GMac/T7GMac.bin --type T7GM --out-dir mac-assets
python3 grooviev1/mac_resources.py replace disassembly/T7GMac/T7GMac.bin --type T7GM --id 32309 --replacement hdisk-new.rl --output T7GMac-mod.bin
```

The helper's help option accepts `-h`, `--h`, `-help` and `--help`;
`--type`, `--id`, `--out-dir`, `--replacement` and `--output` also have the
short/long spellings listed above.

### Developer integration

`main.cpp` implements encoding, archive and font commands; `indexed_commands.h`
implements the IDX/PAL workflow. `frames.py` supplies indexed-PNG conversion
and media comparison. `mac_resources.py` handles MacBinary resource maps.
GRV commands link `../src/grv.cpp` and `../src/rl.cpp` with headers in
`../include`; decoder corrections therefore reach the toolkit and the engine.
C++23 is required, including standard library `format` and `expected` support.
On Windows, WIC supplies image loading (`ole32`, `uuid`, `windowscodecs`).
The native Linux/macOS encoder accepts raw RGB24; Pillow in `frames.py` handles the
portable indexed-PNG workflow. Mac resource operations need only Python's
standard library. No game engine process is required for media authoring.

Build from the repository root without deployment:

```sh
GROOVIEV1_NO_DEPLOY=1 ./grooviev1/build.sh windows
./grooviev1/build.sh linux
# On macOS, or with a configured Apple cross toolchain:
./grooviev1/build.sh macos
```

Windows always uses Clang/MSVC x64. `CXX_LINUX`/`CXX_NATIVE` select a Linux
compiler; `CXX_MACOS` selects a macOS compiler. Outputs are described in
[Build](#build). Only Windows builds deploy to repository-local
`T7G/grooviev1.exe`, unless disabled with `GROOVIEV1_NO_DEPLOY=1`.

## Microscope recovery contracts


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
The original 98 ordered neighbor lists and seven three-phase strategy rows
are retained in the engine implementation. Search ordering matters to ties
and pruning. Modes 0 and 1 use direct search; modes 2–8 select the recovered
three-phase strategy rows. These are runtime contracts for script authors,
not an additional puzzle-solving command in the toolkit.

## GRV scripts: inspect, edit, rebuild

Run these examples from the repository root. On Windows substitute the path to
`grooviev1.exe` for `./grooviev1/build/grooviev1-native`.

```sh
./grooviev1/build/grooviev1-native grv-disassemble T7G/SCRIPT.GRV script.asm --resources T7G
# Edit the hex bytes in script.asm, then write a NEW script file:
./grooviev1/build/grooviev1-native grv-assemble script.asm SCRIPT-mod.GRV
```

Both commands require input and output paths and refuse an existing output.
`grv-disassemble` accepts these options:

| Option | Meaning |
|---|---|
| `--resources DIR` | Resolve 16-bit resource references against RL files in DIR; omitted references remain numeric |
| `--hotspots dos` | Default DOS geometry; DOS rectangle bounds are inclusive |
| `--hotspots windows` | Retain the Windows hotspot model; boundaries are half-open |
| `--raw` | Emit every input byte without opcode interpretation, including unknown or malformed instructions |

`grv-assemble` takes no options. Each data line starts with its four-digit hex
byte offset followed by two-digit hex bytes. Whole-line `;` comments are
ignored. Mnemonics and operand descriptions after the bytes are annotations:
changing `target=...` alone does not change the output. Edit the corresponding
little-endian operand bytes. Offsets must be contiguous, starting at `0000`;
the script cannot exceed the 65,536-byte address space. Unknown-opcode input
can be represented with `--raw`; the tool does not invent a decoded meaning.

Fixed-size edits preserve subsequent addresses. Inserting/removing bytes
requires updating subsequent line offsets and all affected absolute branch,
call, key-action and hotspot targets. There is no symbolic label resolver.
An unchanged byte column is intended to preserve the complete script bytes;
a successful assembly does not prove that the control flow or game is valid.

For new scenes, start from a working room script with the desired input-loop
and video structure, replace its resource operands and hotspot declarations,
and package matching resources at stable RL indices. Full GRV opcode layouts
are in the [main README](../README.md#grv-opcode-reference), with original
handlers in [DOS GRV source](../disassembly/V/src/functions/grv).

## Contracts recovered from the original engines

| Area | Mod-authoring rule |
|---|---|
| Resource references | A 16-bit reference is `(archive_index << 10) | entry_index`; keep archive IDs and RL order stable. Renaming a resource alone does not update numeric references. |
| RL entries | Each entry is 20 bytes: 12-byte name, little-endian 32-bit GJD offset, little-endian 32-bit length. The manifest preserves duplicate names and order. |
| VDX | Width 640; encoded tile dimensions are multiples of four; height 4–480. `--dos-canonical` chooses 640×320. |
| Still images | The first indexed frame needs at most two palette indices per 4×4 tile. Use RGB encoding for quantization, or change the indexed art; indexed encoding does not silently discard colours. |
| Delta images | End every encoded tile row, including the final row, with `61h`. Opcode `60h` carries sixteen explicit tile indices. |
| Palette | Preserve all 256 RGB entries for an indexed round trip. Palette-only changes are real delta changes. Engine fade/merge commands operate on palette state. |
| Audio | VDX PCM is unsigned 8-bit mono at 22,050 Hz. Preserve `audio.pcm` and `audio.txt` together; chunk positions refer to visual boundaries. |
| Compression | Native-compatible parameterized LZSS is optional. Matching decoded pixels/PCM does not imply identical compression tokens. |
| DOS hotspots | Left x=0–63, right x=576–639, centre x=156–483; scene y=80–399. Explicit rectangles include their right/bottom edges. Opcode `12h` is position-tested across that scene. |
| Cursor values | DOS left=2, right=1, centre `10h`=3 and centre `11h`=0. The Windows policy retains its own geometry/cursors. |
| Cropped presentation | v64tng presents y=80–399 as its 640×320 scene. Top/bottom bar-only hotspots stay outside it; its existing top-bar shortcut remains available. |
| RANDOM `14h` | DOS takes a generated low nibble and retries above the inclusive maximum. This is not uniform modulo arithmetic over arbitrary byte bounds. |
| GAMELOGIC `42h` | One mode byte, supported recovered modes 0–8; board/selection contracts are described above. |
| Driver parameter `4Ah` | Two-byte operand. DOS forwards a changed value through command `81h` to its PCM driver handle; the external parameter meaning remains unresolved. Do not label it MIDI volume. |
| Opcode `1Eh` | The authoring decoder retains the one-byte operand used by the retail corpus/Windows flow. DOS handler consumption differs; preserve working script layout. |
| Saves | DOS variable payload is `0523h` bytes; Windows is `0400h`. Host companion data, microscope policy, and hotspot policy are independent of the payload convention. |
| Classic Mac | Resource-map and MacBinary fork handling are explicit. `hdisk.rl` has ten supplied entries; keep credits stills at indices 8 and 9. |

The default engine configuration is `grvHotspotPolicy: "dos"`, selecting
recovered DOS logical rectangles and cursor values. These feed v64tng’s
existing responsive window scaling; resizing and the deliberate bar-free crop
are unchanged. `"windows"` retains the previous logical geometry. The authoring
decoder’s `--hotspots` option describes original logical coordinates, not
client-window dimensions. This setting is
independent of `grvMicroscopePolicy` and save format. It does not turn the
entire host engine into a platform emulator. In particular modern Ogg/CD
playback, hardware-driver substitution, input/display, and error handling
remain host implementations; complete gameplay equivalence is not claimed.

## From original assets to a distributable mod

1. Copy the game into a separate working directory. Keep original EXEs and
   source archives intact; author replacements outside the disassembly trees.
2. Unpack the relevant RL/GJD pair into a new directory, keeping
   `_archive-order.txt`. For a simple replacement keep its resource name and
   manifest position; for new resources choose indices deliberately.
3. Extract VDX to indexed PNGs with `frames.py extract`, edit opaque indexed
   art and its complete palette, then use `frames.py encode`. For new RGB
   animation use the encoder options documented above. Use font commands for
   SPHINX.FNT rather than treating it as an image file.
4. Disassemble the room GRV, edit its hex operands/targets, and assemble to a
   new GRV. Link new video references to the repacked RL manifest positions.
5. Pack both the replacement GJD and matching RL. For Mac, use explicit forks,
   the FF separator policy, and a same-size resource replacement where required.
6. Place the replacement assets in the working installation and play through
   the affected room transitions, cursor boundaries, puzzle outcomes, sound,
   saves and loads. Check the intended DOS/Windows policy. This acceptance
   step belongs to the mod author.
7. Distribute your authored content and installation instructions with the
   required asset names, archive/index changes, target engine, and policy
   settings. Include both members of every changed RL/GJD pair.

This README covers the shipped commands and their limits. The toolkit does
not compile mnemonic-only scripts, relocate inserted script code, resize Mac
resources, generate original hardware drivers, or guarantee every new game's
behavior. Those remain explicit development work; function-role coverage
alone does not supply them.

## Earmarked examples — not implemented yet

The next music mod example will replace only the main-menu song with a selected
MIDI source, using the correct native music representation. It must genuinely
repack `XMI.GJD` and regenerate `XMI.RL` offsets/lengths as payload sizes change,
while retaining resource order/references and leaving other song payloads
intact. Raw MIDI must not simply be renamed XMI: conversion/driver compatibility
and playback in the original DOS executable are human acceptance requirements.

A later, separate executable-mod example will alter some no-argument diagnostic
text printed by V.EXE. The canonical disassembly stays byte-identical; changed
text belongs in the example mod output. Neither example is started by the
current DOS source recovery pass.

A T7G/v64tng developer wiki is also planned, in the style of a console developer
wiki. The maintainer will supply the domain and existing HTML/CSS/JS boilerplate;
the subsequent work will adapt it to T7G engine, format, puzzle and modding topics.
