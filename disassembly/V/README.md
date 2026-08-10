# DOS `V.EXE` 1.30 permanent disassembly

This is the canonical lossless NASM source project for the DOS GROOVIE Player
1.30. It represents every byte of the unpacked MZ executable in source and
rebuilds that executable byte-for-byte.

| Artifact | Size | SHA-256 |
|---|---:|---|
| Original LZEXE 0.91-packed `V.EXE` | 23,425 bytes | `e01c3a49cede63ad409e67ce10fdb9f98c6f42600cdfd67124b0d03f1c001585` |
| Canonical unpacked/rebuilt target | 102,136 bytes | `f2f7febb70b5008ee94e535b0224e918eeec4c71404c899c0d6b50f10c0816c4` |

Run:

```sh
./build.sh
```

The build assembles [`src/main.asm`](src/main.asm), rejects executable-byte
`incbin` directives, and verifies the canonical unpacked SHA-256. Only after
that check passes does it deploy the rebuilt executable as
`/mnt/T7G/T7G.EXE`. The original `/mnt/T7G/V.EXE` is never removed or
overwritten.

Set `V_DISASSEMBLY_NO_DEPLOY=1` to perform the complete build and verification
without deploying.

NASM, ripgrep, and standard SHA-256 utilities are the only build requirements.
The project does not need Python, Ghidra, an unpacker, the packed original, or
any reverse-engineering tool.

## What “complete” means today

The project has complete mechanical source coverage:

- all 512 MZ header bytes, including all 102 relocation records, are explicit
  NASM source;
- all 101,624 bytes in the DOS load image are explicit source;
- 261 provisional Ghidra function entries are represented individually;
- all 12,484 instructions in those owned function ranges are decoded;
- data, padding, tables, inline constants, and unowned gaps remain explicit
  `db` data rather than disappearing into a binary include;
- there are zero `incbin` directives.

This is not yet complete semantic recovery. Ghidra's 261 function boundaries
are analyzer findings, not original object-module boundaries. Some bytes now
classified as data may prove to be code, and some functions may later be
split, joined, or grouped. Of the 261 entries, 48 currently have verified
semantic roles and 213 retain neutral address-based names.

Exact coverage and the complete function address map are maintained later in
this README. This file is the public, monolithic research record for the DOS
reconstruction.

## Addresses, opcodes, and function identity

A filename such as the former
`002c0_read_and_validate_vdx_header.asm` contained two different kinds of
information:

- `002C0` is the function's zero-based linear entry offset in the unpacked DOS
  load image;
- `read_and_validate_vdx_header` is the verified semantic working name.

The address is not an opcode. At linear offset `002C0`, for example, the x86
instruction bytes begin with `83 BE 16 F3 02`. GRV opcodes such as `17h`,
`20h`, or `33h` are data bytes interpreted by `run_grv_vm`, not native
function addresses.

The assembler does not derive placement from filenames. Exact placement comes
from the emission order embedded in `src/main.asm`, emission macros, labels,
instruction-size guards, and padding. Verified function files can therefore
use semantic filenames without changing a byte. Their original addresses
remain in source preambles and in the function address map below. Unidentified
functions retain address-bearing filenames because the entry offset is still
their only trustworthy identity.

Repository symbols use a zero-based linear offset into the MZ load image.
Given the executable's DOS load segment `L` and a runtime address `CS:IP`:

```text
repository_offset = ((CS - L) * 16) + IP
```

Segment aliases are normal in 16-bit real mode. Different `CS:IP` pairs can
identify the same linear byte, so runtime evidence should preserve both the
observed address and the calculated repository offset.

The retail executable is LZEXE-packed. `DEBUGBOX V.EXE !` first stops in the
packer stub at relative `0598h:000Eh`; at that stop calculate
`L = CS - 0598h`, then continue to a breakpoint at `L:0000h`. That location is
the canonical unpacked entry represented by this source tree.

## Source organization

| Path | Purpose |
|---|---|
| `src/main.asm` | Canonical assembly root, explicit MZ header/relocations, section declarations, and exact linear emission order |
| `src/functions/grv/*.asm` | Verified GRV interpreter and opcode helpers |
| `src/functions/vdx/*.asm` | Verified VDX stream, frame, palette, and LZSS routines |
| `src/functions/audio/*.asm` | Verified music/audio routines |
| `src/functions/resource_io/*.asm` | Verified archive, resource-selection, and file-I/O routines |
| `src/functions/savegame/*.asm` | Verified save-game routines |
| `src/functions/platform/*.asm` | Verified DOS hardware and memory routines |
| `src/functions/runtime/*.asm` | Verified startup, dispatch, and shutdown routines |
| `src/functions/unknown/*.asm` | Provisional functions retaining address-based identities |
| `src/data/gaps.asm` | Explicit bytes between analyzer-owned function bodies |
| `src/data/unresolved_*.asm` | Post-code initialized ranges whose individual semantics remain unresolved |
| `src/data/zero_initialized_*.asm` | Exact verified zero-initialized static-storage ranges |
| Other named `src/data/*.asm` files | Extracted tables, strings, alignment, and other verified semantic ranges |

The semantic directories express verified subsystem ownership. They are not
claims about Trilobyte's original object modules.

## Verified post-code data map

The startup code establishes `DS = load segment + 0893h`, so repository load
offset `08930h` is exactly `DS:0000h`. This makes the large post-code regions
less mysterious than the old generic chunk filenames suggested:

| Load-image range | Runtime address | Evidence-backed classification |
|---:|---:|---|
| `0892C–0892F` | before `DS:0000` | four-byte code/data alignment |
| `08930–1584F` | `DS:0000–CF1F` | 53,024-byte zero-initialized static workspace |
| `15850–15DBD` | `DS:CF20–D48D` | initialized runtime globals and tables; individual object boundaries remain under study |
| `15DBE–15E7D` | `DS:D48E–D54D` | verified 192-byte VDX delta tile-map table |
| `15E7E–169F7` | `DS:D54E–E0C7` | initialized tables, archive names, and templates still under study |
| `169F8–16A89` | `DS:E0C8–E159` | verified Groovie configuration-string table |
| `16A8A–1724B` | `DS:E15A–E91B` | initialized tables and lookup structures still under study |
| `1724C–17C2D` | `DS:E91C–F2FD` | verified 2,530-byte zero-initialized static workspace |
| `17C2E–17C2F` | `DS:F2FE–F2FF` | unresolved initialized word `C8C8h` |
| `17C30–18151` | `DS:F300–F821` | verified 1,314-byte zero-initialized static workspace |
| `18152–18CF7` | `DS:F822–103C7` | DOS runtime diagnostic and configuration strings |

The zero-filled spans are not unidentified embedded assets: their file bytes,
startup segment assignment, and runtime references verify them as static
storage. Exact variable boundaries inside them still require xrefs or runtime
captures. The table at `15DBEh` is independently verified by the DOS delta
decoder reading `DS:D48Eh`; it is byte-for-byte identical to the Win32 table
at VA `0041A088h`.

Every complete verified range in this table is emitted by its own named source
file. Address-free `unresolved_*.asm` files cover only initialized intervals
that still lack exact semantic boundaries. As those intervals are proved, they
are split out and the unresolved remainder shrinks; the intended end state has
no unresolved data files. Exact ranges remain in source comments and size
assertions. The zero-workspace filenames retain ranges because there are
multiple verified zero regions and the boundaries distinguish them usefully.

One still-unresolved initialized structure around `16E1Ah–1722Bh` contains
repeated index lists bounded by `FFh` sentinels and is used near code operating
on 7x7 (49-byte) raster blocks. A font/icon/cursor raster lookup is a plausible
hypothesis, not a verified name, so the permanent source deliberately leaves
it neutral. The DOS text `icon data file not found` belongs to this diagnostic
corpus and refers to an external DOS-era data file; it is not the Win32 PE
application icon.

NASM emits an instruction only when it reproduces the historical encoding
exactly. If NASM's preferred encoding differs, the source uses exact `db`
bytes and retains the decoded mnemonic, address, and opcode in the comment.
These are decoded instructions with noncanonical encodings, not unknown or
omitted bytes.

This is the permanent source tree, not a reverse-engineering workspace. It
contains no generator, analyzer export, disassembler automation, or private
reference executable. Historical addresses, analyzer symbols, ownership
ranges, confidence, and source paths remain preserved in the function map
below. `build.sh` is the sole required entry point.

## Naming and evidence policy

Recovered names describe verified behavior; they are not claimed to be
Trilobyte's original symbols. An address-based name remains until static
control flow, cross-version correspondence, runtime evidence, or a combination
of those sources supports a better one.

A proposed semantic name should record its basis:

- **static**: callers, callees, constants, data references, and interrupt use;
- **cross-version**: a materially matching DOS, demo, or Win32 routine;
- **runtime**: observed inputs, outputs, side effects, or reached game state;
- **external**: documentation or an original artifact.

Use `candidate_...` in notes while evidence is incomplete. Promote a name to
`verified-role` when the behavior is specific and repeatable, ideally
supported by two independent evidence types. After any ownership, naming, or
instruction edit, run `./build.sh`; exact identity must remain green.

It is realistic to determine what every reachable routine does. It is not
realistic to promise the exact original source filenames, labels, comments,
macros, or module boundaries without an original source, symbol table, or map
artifact.

The cross-version `SCRIPT.GRV` startup/save/audio correlation is recorded in
[`../GRV/MAIN_MENU_BOOT_TRACE.md`](../GRV/MAIN_MENU_BOOT_TRACE.md). The
complete event schema, scenario protocol, DOSBox-X fork architecture, IPC
surface, and original-versus-v64tng alignment method are documented in the
root
[`README.md`](../../../README.md#runtime-capture-and-differential-validation).

The canonical target is the unpacked executable. Reproducing the original
23,425-byte compressed file is a separate compressor-provenance milestone;
unpacked program identity is already exact.

## Runtime evidence workflow

Runtime captures turn neutral address-based symbols into accurate semantic
names without sacrificing the byte-identical build.

For every observation, preserve:

1. the executable SHA-256 and complete command line;
2. DOSBox-X version and relevant machine, memory, video, audio, and CD
   settings;
3. the game state, room/script, input, and visible or audible result;
4. the breakpoint address as `CS:IP`, plus the DOS load segment if known;
5. registers, flags, stack words, caller/return address, and relevant memory;
6. file opens, seeks, reads, and DOS, BIOS, XMS, video, mouse, or sound
   interrupts;
7. whether the observation reproduced on another run.

A compact observation record is:

| Field | Example |
|---|---|
| Scenario | Standalone `~intro` playback, first video frame |
| Command | `V.EXE ~intro` |
| Asset/script | `intro.vdx` |
| Runtime address | `CS:IP` and load segment |
| Repository offset | Linear load-image offset |
| Caller | Return address or caller offset |
| Inputs | Registers, stack arguments, relevant globals |
| Outputs | Return registers, modified globals, I/O, screen/audio effect |
| Repetition | Run count and whether identical |

Search the function address map below for the calculated offset, or search
source comments for its five-digit hexadecimal form. For example, offset
`03AC4` maps to `run_grv_vm`.

Systematic traces, static analysis, and cross-version comparison can assign
accurate behavioral names to reachable functions. Dead or error-only paths
may require forced conditions or static proof. Exact original private symbol
spelling, comments, filenames, and object-module layout require an original
symbol artifact.

## Lossless source coverage

This inventory describes **mechanical source coverage**, not complete semantic
understanding.

| Measure | Count |
|---|---:|
| Unpacked load-image bytes represented in source | 101,624 / 101,624 |
| `incbin` directives | 0 |
| Provisional Ghidra function entries | 261 |
| Function-body bytes | 32,292 |
| Function-body instructions decoded | 12,484 |
| Instructions requiring exact `db` encoding fallback | 1,620 |
| Bytes in encoding fallbacks | 3,477 |
| Verified semantic function roles | 48 |
| Unidentified/provisionally bounded functions | 213 |
| Analyzed function/gap span end | `0892Ch` |
| Non-function bytes in the load image | 69,332 |

Every function-body instruction retains its runtime offset and original opcode
bytes in a comment. A `db` line inside a function means the instruction was
decoded, but NASM's preferred spelling would emit different bytes; the decoded
mnemonic remains in the comment.

Bytes outside Ghidra-owned bodies remain explicit data. Some may later prove to
be undiscovered code, jump tables, inline constants, or alignment. Runtime
evidence should change ownership only after the byte-identical build remains
green.

## Function address map

This is the permanent research and reversibility map. The entry values are code
locations, not CPU or GRV opcodes. Verified filenames are semantic and
address-free; unidentified filenames retain their only trustworthy identity.
Owned ranges are inclusive linear offsets into the unpacked load image.

| Linear entry | Ghidra entry | Status | Working name | Analyzer symbol | Owned ranges | Source |
|---:|---:|---|---|---|---|---|
| `00000` | `1000:0000` | verified-role | `entry` | `entry` | `00000–0007B`<br>`0007E–00088` | [`src/functions/runtime/entry.asm`](src/functions/runtime/entry.asm) |
| `00089` | `1000:0089` | unidentified | `func_00089` | `FUN_1000_0089` | `00089–000D0` | [`src/functions/unknown/00089_func_00089.asm`](src/functions/unknown/00089_func_00089.asm) |
| `000D1` | `1000:00d1` | verified-role | `standalone_vdx_or_diagnostics` | `FUN_1000_00d1` | `000D1–001E0` | [`src/functions/runtime/standalone_vdx_or_diagnostics.asm`](src/functions/runtime/standalone_vdx_or_diagnostics.asm) |
| `001E1` | `1000:01e1` | unidentified | `func_001e1` | `FUN_1000_01e1` | `001E1–00209` | [`src/functions/unknown/001e1_func_001e1.asm`](src/functions/unknown/001e1_func_001e1.asm) |
| `0020A` | `1000:020a` | unidentified | `func_0020a` | `FUN_1000_020a` | `0020A–0021A` | [`src/functions/unknown/0020a_func_0020a.asm`](src/functions/unknown/0020a_func_0020a.asm) |
| `0021B` | `1000:021b` | verified-role | `read_vdx_stream_bytes` | `FUN_1000_021b` | `0021B–002BF` | [`src/functions/vdx/read_vdx_stream_bytes.asm`](src/functions/vdx/read_vdx_stream_bytes.asm) |
| `002C0` | `1000:02c0` | verified-role | `read_and_validate_vdx_header` | `FUN_1000_02c0` | `002C0–0030D` | [`src/functions/vdx/read_and_validate_vdx_header.asm`](src/functions/vdx/read_and_validate_vdx_header.asm) |
| `0030E` | `1000:030e` | verified-role | `decode_vdx_stream` | `FUN_1000_030e` | `0030E–00382`<br>`00385–0038D`<br>`00390–0039B`<br>`0039E–0040C` | [`src/functions/vdx/decode_vdx_stream.asm`](src/functions/vdx/decode_vdx_stream.asm) |
| `0040D` | `1000:040d` | verified-role | `apply_vdx_delta_palette` | `FUN_1000_040d` | `0040D–00475` | [`src/functions/vdx/apply_vdx_delta_palette.asm`](src/functions/vdx/apply_vdx_delta_palette.asm) |
| `00476` | `1000:0476` | verified-role | `load_vdx_still_palette` | `FUN_1000_0476` | `00476–00500` | [`src/functions/vdx/load_vdx_still_palette.asm`](src/functions/vdx/load_vdx_still_palette.asm) |
| `00501` | `1000:0501` | unidentified | `func_00501` | `FUN_1000_0501` | `00501–00586` | [`src/functions/unknown/00501_func_00501.asm`](src/functions/unknown/00501_func_00501.asm) |
| `00587` | `1000:0587` | verified-role | `decode_vdx_bitmap_still` | `FUN_1000_0587` | `00587–005E6`<br>`005E9–00C49`<br>`00C4C–00F32` | [`src/functions/vdx/decode_vdx_bitmap_still.asm`](src/functions/vdx/decode_vdx_bitmap_still.asm) |
| `00F33` | `1000:0f33` | unidentified | `func_00f33` | `FUN_1000_0f33` | `00F33–00FC5` | [`src/functions/unknown/00f33_func_00f33.asm`](src/functions/unknown/00f33_func_00f33.asm) |
| `00FC6` | `1000:0fc6` | unidentified | `func_00fc6` | `FUN_1000_0fc6` | `00FC6–01059` | [`src/functions/unknown/00fc6_func_00fc6.asm`](src/functions/unknown/00fc6_func_00fc6.asm) |
| `0105A` | `1000:105a` | verified-role | `decode_vdx_delta_frame` | `FUN_1000_105a` | `0105A–01216`<br>`01218–01234`<br>`01236–0127C`<br>`0127E–012BC`<br>`012C1–01396`<br>`01398–0168E`<br>`01691–0169A`<br>`0169C–01ED2`<br>`01ED5–01FE6`<br>`01FE8–0205C`<br>`0205E–0207A`<br>`0207C–0210A`<br>`0210C–02174`<br>`02178–02180`<br>`02182–02218`<br>`02260–02288`<br>`0228A–022A6`<br>`022A8–022E0`<br>`022E2–02303`<br>`02306–0230E` | [`src/functions/vdx/decode_vdx_delta_frame.asm`](src/functions/vdx/decode_vdx_delta_frame.asm) |
| `0230F` | `1000:230f` | unidentified | `func_0230f` | `FUN_1000_230f` | `0230F–02369` | [`src/functions/unknown/0230f_func_0230f.asm`](src/functions/unknown/0230f_func_0230f.asm) |
| `0236A` | `1000:236a` | verified-role | `decompress_vdx_lzss` | `FUN_1000_236a` | `0236A–023A4` | [`src/functions/vdx/decompress_vdx_lzss.asm`](src/functions/vdx/decompress_vdx_lzss.asm) |
| `023A5` | `1000:23a5` | verified-role | `copy_rect_to_background` | `FUN_1000_23a5` | `023A5–02590` | [`src/functions/vdx/copy_rect_to_background.asm`](src/functions/vdx/copy_rect_to_background.asm) |
| `02591` | `1000:2591` | verified-role | `copy_background_to_foreground` | `FUN_1000_2591` | `02591–026E4` | [`src/functions/vdx/copy_background_to_foreground.asm`](src/functions/vdx/copy_background_to_foreground.asm) |
| `026E5` | `1000:26e5` | unidentified | `func_026e5` | `FUN_1000_26e5` | `026E5–0276C` | [`src/functions/unknown/026e5_func_026e5.asm`](src/functions/unknown/026e5_func_026e5.asm) |
| `0276D` | `1000:276d` | palette-use scanner for one-shot still-palette merge | `mark_used_background_palette_entries` | `FUN_1000_276d` | `0276D–02821` | [`src/functions/vdx/mark_used_background_palette_entries.asm`](src/functions/vdx/mark_used_background_palette_entries.asm) |
| `02822` | `1000:2822` | unidentified | `func_02822` | `FUN_1000_2822` | `02822–0285C` | [`src/functions/unknown/02822_func_02822.asm`](src/functions/unknown/02822_func_02822.asm) |
| `0285D` | `1000:285d` | unidentified | `func_0285d` | `FUN_1000_285d` | `0285D–02895` | [`src/functions/unknown/0285d_func_0285d.asm`](src/functions/unknown/0285d_func_0285d.asm) |
| `02896` | `1000:2896` | unidentified | `func_02896` | `FUN_1000_2896` | `02896–028AC` | [`src/functions/unknown/02896_func_02896.asm`](src/functions/unknown/02896_func_02896.asm) |
| `028AD` | `1000:28ad` | unidentified | `func_028ad` | `FUN_1000_28ad` | `028AD–028D8`<br>`028DB–0292E`<br>`02931–0293A` | [`src/functions/unknown/028ad_func_028ad.asm`](src/functions/unknown/028ad_func_028ad.asm) |
| `0293B` | `1000:293b` | unidentified | `func_0293b` | `FUN_1000_293b` | `0293B–02992`<br>`02995–02996` | [`src/functions/unknown/0293b_func_0293b.asm`](src/functions/unknown/0293b_func_0293b.asm) |
| `02997` | `1000:2997` | verified-role | `stream_media_buffer` | `FUN_1000_2997` | `02997–02BE7` | [`src/functions/vdx/stream_media_buffer.asm`](src/functions/vdx/stream_media_buffer.asm) |
| `02C32` | `1000:2c32` | unidentified | `func_02c32` | `FUN_1000_2c32` | `02C32–02CBF`<br>`02CE9–02CF4`<br>`02D09–02D4E` | [`src/functions/unknown/02c32_func_02c32.asm`](src/functions/unknown/02c32_func_02c32.asm) |
| `02D50` | `1000:2d50` | unidentified | `func_02d50` | `FUN_1000_2d50` | `02D50–02D58` | [`src/functions/unknown/02d50_func_02d50.asm`](src/functions/unknown/02d50_func_02d50.asm) |
| `02D5A` | `1000:2d5a` | unidentified | `func_02d5a` | `FUN_1000_2d5a` | `02D5A–02D79` | [`src/functions/unknown/02d5a_func_02d5a.asm`](src/functions/unknown/02d5a_func_02d5a.asm) |
| `02F6A` | `1000:2f6a` | unidentified | `func_02f6a` | `FUN_1000_2f6a` | `02F6A–02F82` | [`src/functions/unknown/02f6a_func_02f6a.asm`](src/functions/unknown/02f6a_func_02f6a.asm) |
| `02F84` | `1000:2f84` | verified-role | `detect_video_hardware` | `FUN_1000_2f84` | `02F84–033B6` | [`src/functions/platform/detect_video_hardware.asm`](src/functions/platform/detect_video_hardware.asm) |
| `033B7` | `1000:33b7` | unidentified | `func_033b7` | `FUN_1000_33b7` | `033B7–033FE` | [`src/functions/unknown/033b7_func_033b7.asm`](src/functions/unknown/033b7_func_033b7.asm) |
| `033FF` | `1000:33ff` | unidentified | `func_033ff` | `FUN_1000_33ff` | `033FF–03419` | [`src/functions/unknown/033ff_func_033ff.asm`](src/functions/unknown/033ff_func_033ff.asm) |
| `0341A` | `1000:341a` | unidentified | `func_0341a` | `FUN_1000_341a` | `0341A–03452` | [`src/functions/unknown/0341a_func_0341a.asm`](src/functions/unknown/0341a_func_0341a.asm) |
| `0345E` | `1000:345e` | unidentified | `func_0345e` | `FUN_1000_345e` | `0345E–0348B` | [`src/functions/unknown/0345e_func_0345e.asm`](src/functions/unknown/0345e_func_0345e.asm) |
| `0348C` | `1000:348c` | unidentified | `func_0348c` | `FUN_1000_348c` | `0348C–034A4` | [`src/functions/unknown/0348c_func_0348c.asm`](src/functions/unknown/0348c_func_0348c.asm) |
| `034A5` | `1000:34a5` | unidentified | `func_034a5` | `FUN_1000_34a5` | `034A5–03589` | [`src/functions/unknown/034a5_func_034a5.asm`](src/functions/unknown/034a5_func_034a5.asm) |
| `0358A` | `1000:358a` | unidentified | `func_0358a` | `FUN_1000_358a` | `0358A–0358F` | [`src/functions/unknown/0358a_func_0358a.asm`](src/functions/unknown/0358a_func_0358a.asm) |
| `03590` | `1000:3590` | unidentified | `func_03590` | `FUN_1000_3590` | `03590–03670` | [`src/functions/unknown/03590_func_03590.asm`](src/functions/unknown/03590_func_03590.asm) |
| `03671` | `1000:3671` | unidentified | `func_03671` | `FUN_1000_3671` | `03671–03687` | [`src/functions/unknown/03671_func_03671.asm`](src/functions/unknown/03671_func_03671.asm) |
| `0368C` | `1000:368c` | verified-role | `query_xms` | `FUN_1000_368c` | `0368C–036D1` | [`src/functions/platform/query_xms.asm`](src/functions/platform/query_xms.asm) |
| `036D2` | `1000:36d2` | verified-role | `format_memory_diagnostic` | `FUN_1000_36d2` | `036D2–03755` | [`src/functions/platform/format_memory_diagnostic.asm`](src/functions/platform/format_memory_diagnostic.asm) |
| `03756` | `1000:3756` | unidentified | `func_03756` | `FUN_1000_3756` | `03756–03769` | [`src/functions/unknown/03756_func_03756.asm`](src/functions/unknown/03756_func_03756.asm) |
| `0376A` | `1000:376a` | unidentified | `func_0376a` | `FUN_1000_376a` | `0376A–03773` | [`src/functions/unknown/0376a_func_0376a.asm`](src/functions/unknown/0376a_func_0376a.asm) |
| `03774` | `1000:3774` | unidentified | `func_03774` | `FUN_1000_3774` | `03774–0377D` | [`src/functions/unknown/03774_func_03774.asm`](src/functions/unknown/03774_func_03774.asm) |
| `0377E` | `1000:377e` | unidentified | `func_0377e` | `FUN_1000_377e` | `0377E–03784` | [`src/functions/unknown/0377e_func_0377e.asm`](src/functions/unknown/0377e_func_0377e.asm) |
| `0378F` | `1000:378f` | unidentified | `func_0378f` | `FUN_1000_378f` | `0378F–0382C` | [`src/functions/unknown/0378f_func_0378f.asm`](src/functions/unknown/0378f_func_0378f.asm) |
| `0382D` | `1000:382d` | verified-role | `save_selected_archive_context` | `FUN_1000_382d` | `0382D–03837` | [`src/functions/resource_io/save_selected_archive_context.asm`](src/functions/resource_io/save_selected_archive_context.asm) |
| `03838` | `1000:3838` | verified-role | `restore_selected_archive_context` | `FUN_1000_3838` | `03838–03889` | [`src/functions/resource_io/restore_selected_archive_context.asm`](src/functions/resource_io/restore_selected_archive_context.asm) |
| `0388A` | `1000:388a` | verified-role | `select_grv_video_resource` | `FUN_1000_388a` | `0388A–03936` | [`src/functions/resource_io/select_grv_video_resource.asm`](src/functions/resource_io/select_grv_video_resource.asm) |
| `03941` | `1000:3941` | verified-role | `select_grv_song_resource` | `FUN_1000_3941` | `03941–039ED` | [`src/functions/resource_io/select_grv_song_resource.asm`](src/functions/resource_io/select_grv_song_resource.asm) |
| `039EE` | `1000:39ee` | verified-role | `read_selected_archive` | `FUN_1000_39ee` | `039EE–039F7` | [`src/functions/resource_io/read_selected_archive.asm`](src/functions/resource_io/read_selected_archive.asm) |
| `039F8` | `1000:39f8` | verified-role | `build_resource_filename` | `FUN_1000_39f8` | `039F8–03A30` | [`src/functions/resource_io/build_resource_filename.asm`](src/functions/resource_io/build_resource_filename.asm) |
| `03A31` | `1000:3a31` | verified-role | `open_resource_read_only` | `FUN_1000_3a31` | `03A31–03A46` | [`src/functions/resource_io/open_resource_read_only.asm`](src/functions/resource_io/open_resource_read_only.asm) |
| `03A47` | `1000:3a47` | verified-role | `close_resource_file` | `FUN_1000_3a47` | `03A47–03A50` | [`src/functions/resource_io/close_resource_file.asm`](src/functions/resource_io/close_resource_file.asm) |
| `03A51` | `1000:3a51` | unidentified | `func_03a51` | `FUN_1000_3a51` | `03A51–03A5A` | [`src/functions/unknown/03a51_func_03a51.asm`](src/functions/unknown/03a51_func_03a51.asm) |
| `03A5B` | `1000:3a5b` | verified-role | `load_selected_resource_file` | `FUN_1000_3a5b` | `03A5B–03A95` | [`src/functions/resource_io/load_selected_resource_file.asm`](src/functions/resource_io/load_selected_resource_file.asm) |
| `03AC4` | `1000:3ac4` | verified-role | `run_grv_vm` | `FUN_1000_3ac4` | `03AC4–03B12`<br>`03B16–03CBE`<br>`03CC2–03E43` | [`src/functions/grv/run_grv_vm.asm`](src/functions/grv/run_grv_vm.asm) |
| `03E44` | `1000:3e44` | unidentified | `func_03e44` | `FUN_1000_3e44` | `03E44–03E84` | [`src/functions/unknown/03e44_func_03e44.asm`](src/functions/unknown/03e44_func_03e44.asm) |
| `03E85` | `1000:3e85` | verified-role | `grv_load_child_script` | `FUN_1000_3e85` | `03E85–03EB7` | [`src/functions/grv/grv_load_child_script.asm`](src/functions/grv/grv_load_child_script.asm) |
| `03EB8` | `1000:3eb8` | verified-role | `grv_return_from_child_script` | `FUN_1000_3eb8` | `03EB8–03EE9` | [`src/functions/grv/grv_return_from_child_script.asm`](src/functions/grv/grv_return_from_child_script.asm) |
| `03EEA` | `1000:3eea` | verified-role | `grv_check_valid_saves` | `FUN_1000_3eea` | `03EEA–03F22` | [`src/functions/savegame/grv_check_valid_saves.asm`](src/functions/savegame/grv_check_valid_saves.asm) |
| `03F23` | `1000:3f23` | verified-role | `grv_save_game` | `FUN_1000_3f23` | `03F23–03F76` | [`src/functions/savegame/grv_save_game.asm`](src/functions/savegame/grv_save_game.asm) |
| `03F77` | `1000:3f77` | unidentified | `func_03f77` | `FUN_1000_3f77` | `03F77–03FC3` | [`src/functions/unknown/03f77_func_03f77.asm`](src/functions/unknown/03f77_func_03f77.asm) |
| `03FC4` | `1000:3fc4` | verified-role | `grv_load_game` | `FUN_1000_3fc4` | `03FC4–04000` | [`src/functions/savegame/grv_load_game.asm`](src/functions/savegame/grv_load_game.asm) |
| `04001` | `1000:4001` | unidentified | `func_04001` | `FUN_1000_4001` | `04001–04003` | [`src/functions/unknown/04001_func_04001.asm`](src/functions/unknown/04001_func_04001.asm) |
| `04004` | `1000:4004` | unidentified | `func_04004` | `FUN_1000_4004` | `04004–04009` | [`src/functions/unknown/04004_func_04004.asm`](src/functions/unknown/04004_func_04004.asm) |
| `0400A` | `1000:400a` | unidentified | `func_0400a` | `FUN_1000_400a` | `0400A–04015` | [`src/functions/unknown/0400a_func_0400a.asm`](src/functions/unknown/0400a_func_0400a.asm) |
| `04016` | `1000:4016` | unidentified | `func_04016` | `FUN_1000_4016` | `04016–04086` | [`src/functions/unknown/04016_func_04016.asm`](src/functions/unknown/04016_func_04016.asm) |
| `04087` | `1000:4087` | unidentified | `func_04087` | `FUN_1000_4087` | `04087–0409A` | [`src/functions/unknown/04087_func_04087.asm`](src/functions/unknown/04087_func_04087.asm) |
| `0409B` | `1000:409b` | verified-role | `grv_swap_variables` | `FUN_1000_409b` | `0409B–040B1` | [`src/functions/grv/grv_swap_variables.asm`](src/functions/grv/grv_swap_variables.asm) |
| `040B2` | `1000:40b2` | verified-role | `grv_move_variable` | `FUN_1000_40b2` | `040B2–040C6` | [`src/functions/grv/grv_move_variable.asm`](src/functions/grv/grv_move_variable.asm) |
| `040C7` | `1000:40c7` | unidentified | `func_040c7` | `FUN_1000_40c7` | `040C7–040DE` | [`src/functions/unknown/040c7_func_040c7.asm`](src/functions/unknown/040c7_func_040c7.asm) |
| `040DF` | `1000:40df` | unidentified | `func_040df` | `FUN_1000_40df` | `040DF–040F6` | [`src/functions/unknown/040df_func_040df.asm`](src/functions/unknown/040df_func_040df.asm) |
| `040F7` | `1000:40f7` | unidentified | `func_040f7` | `FUN_1000_40f7` | `040F7–04102` | [`src/functions/unknown/040f7_func_040f7.asm`](src/functions/unknown/040f7_func_040f7.asm) |
| `04103` | `1000:4103` | verified-role | `grv_decrement_variable` | `FUN_1000_4103` | `04103–0410E` | [`src/functions/grv/grv_decrement_variable.asm`](src/functions/grv/grv_decrement_variable.asm) |
| `0410F` | `1000:410f` | verified-role | `grv_grid_swap` | `FUN_1000_410f` | `0410F–041A3` | [`src/functions/grv/grv_grid_swap.asm`](src/functions/grv/grv_grid_swap.asm) |
| `041A4` | `1000:41a4` | verified-role | `grv_random` | `FUN_1000_41a4` | `041A4–041CA` | [`src/functions/grv/grv_random.asm`](src/functions/grv/grv_random.asm) |
| `041CB` | `1000:41cb` | unidentified | `func_041cb` | `FUN_1000_41cb` | `041CB–041DE` | [`src/functions/unknown/041cb_func_041cb.asm`](src/functions/unknown/041cb_func_041cb.asm) |
| `041DF` | `1000:41df` | verified-role | `grv_xor_obfuscate_variables` | `FUN_1000_41df` | `041DF–041F7` | [`src/functions/grv/grv_xor_obfuscate_variables.asm`](src/functions/grv/grv_xor_obfuscate_variables.asm) |
| `041F8` | `1000:41f8` | unidentified | `func_041f8` | `FUN_1000_41f8` | `041F8–0421D` | [`src/functions/unknown/041f8_func_041f8.asm`](src/functions/unknown/041f8_func_041f8.asm) |
| `0421E` | `1000:421e` | unidentified | `func_0421e` | `FUN_1000_421e` | `0421E–04243` | [`src/functions/unknown/0421e_func_0421e.asm`](src/functions/unknown/0421e_func_0421e.asm) |
| `04244` | `1000:4244` | verified-role | `grv_char_less_jump` | `FUN_1000_4244` | `04244–04269` | [`src/functions/grv/grv_char_less_jump.asm`](src/functions/grv/grv_char_less_jump.asm) |
| `0426A` | `1000:426a` | verified-role | `grv_jump_if_indirect_not_equal` | `FUN_1000_426a` | `0426A–04291` | [`src/functions/grv/grv_jump_if_indirect_not_equal.asm`](src/functions/grv/grv_jump_if_indirect_not_equal.asm) |
| `04292` | `1000:4292` | verified-role | `grv_load_string_indirect` | `FUN_1000_4292` | `04292–042B0` | [`src/functions/grv/grv_load_string_indirect.asm`](src/functions/grv/grv_load_string_indirect.asm) |
| `042B1` | `1000:42b1` | verified-role | `grv_compare_indirect_and_jump` | `FUN_1000_42b1` | `042B1–042CA` | [`src/functions/grv/grv_compare_indirect_and_jump.asm`](src/functions/grv/grv_compare_indirect_and_jump.asm) |
| `042CB` | `1000:42cb` | unidentified | `func_042cb` | `FUN_1000_42cb` | `042CB–042F0` | [`src/functions/unknown/042cb_func_042cb.asm`](src/functions/unknown/042cb_func_042cb.asm) |
| `042F1` | `1000:42f1` | unidentified | `func_042f1` | `FUN_1000_42f1` | `042F1–04326` | [`src/functions/unknown/042f1_func_042f1.asm`](src/functions/unknown/042f1_func_042f1.asm) |
| `04327` | `1000:4327` | unidentified | `func_04327` | `FUN_1000_4327` | `04327–0432A` | [`src/functions/unknown/04327_func_04327.asm`](src/functions/unknown/04327_func_04327.asm) |
| `0432B` | `1000:432b` | verified-role | `grv_play_transition_video_ref` | `FUN_1000_432b` | `0432B–04374` | [`src/functions/grv/grv_play_transition_video_ref.asm`](src/functions/grv/grv_play_transition_video_ref.asm) |
| `04375` | `1000:4375` | unidentified | `func_04375` | `FUN_1000_4375` | `04375–043C8` | [`src/functions/unknown/04375_func_04375.asm`](src/functions/unknown/04375_func_04375.asm) |
| `043C9` | `1000:43c9` | unidentified | `func_043c9` | `FUN_1000_43c9` | `043C9–043D1` | [`src/functions/unknown/043c9_func_043c9.asm`](src/functions/unknown/043c9_func_043c9.asm) |
| `043D2` | `1000:43d2` | verified-role | `grv_play_video_name` | `FUN_1000_43d2` | `043D2–04405` | [`src/functions/grv/grv_play_video_name.asm`](src/functions/grv/grv_play_video_name.asm) |
| `04406` | `1000:4406` | unidentified | `func_04406` | `FUN_1000_4406` | `04406–04439` | [`src/functions/unknown/04406_func_04406.asm`](src/functions/unknown/04406_func_04406.asm) |
| `0443A` | `1000:443a` | unidentified | `func_0443a` | `FUN_1000_443a` | `0443A–04449` | [`src/functions/unknown/0443a_func_0443a.asm`](src/functions/unknown/0443a_func_0443a.asm) |
| `0444A` | `1000:444a` | unidentified | `func_0444a` | `FUN_1000_444a` | `0444A–04450` | [`src/functions/unknown/0444a_func_0444a.asm`](src/functions/unknown/0444a_func_0444a.asm) |
| `04451` | `1000:4451` | verified-role | `grv_sleep` | `FUN_1000_4451` | `04451–04460` | [`src/functions/grv/grv_sleep.asm`](src/functions/grv/grv_sleep.asm) |
| `04461` | `1000:4461` | unidentified | `func_04461` | `FUN_1000_4461` | `04461–0447A` | [`src/functions/unknown/04461_func_04461.asm`](src/functions/unknown/04461_func_04461.asm) |
| `0447B` | `1000:447b` | verified-role | `run_grv_input_loop` | `FUN_1000_447b` | `0447B–046F4` | [`src/functions/grv/run_grv_input_loop.asm`](src/functions/grv/run_grv_input_loop.asm) |
| `046F5` | `1000:46f5` | unidentified | `func_046f5` | `FUN_1000_46f5` | `046F5–0470F` | [`src/functions/unknown/046f5_func_046f5.asm`](src/functions/unknown/046f5_func_046f5.asm) |
| `04710` | `1000:4710` | unidentified | `func_04710` | `FUN_1000_4710` | `04710–04728` | [`src/functions/unknown/04710_func_04710.asm`](src/functions/unknown/04710_func_04710.asm) |
| `04729` | `1000:4729` | verified-role | `match_grv_key_action` | `FUN_1000_4729` | `04729–04753` | [`src/functions/grv/match_grv_key_action.asm`](src/functions/grv/match_grv_key_action.asm) |
| `04754` | `1000:4754` | unidentified | `func_04754` | `FUN_1000_4754` | `04754–0475D` | [`src/functions/unknown/04754_func_04754.asm`](src/functions/unknown/04754_func_04754.asm) |
| `0475E` | `1000:475e` | unidentified | `func_0475e` | `FUN_1000_475e` | `0475E–04767` | [`src/functions/unknown/0475e_func_0475e.asm`](src/functions/unknown/0475e_func_0475e.asm) |
| `04768` | `1000:4768` | unidentified | `func_04768` | `FUN_1000_4768` | `04768–04771` | [`src/functions/unknown/04768_func_04768.asm`](src/functions/unknown/04768_func_04768.asm) |
| `04772` | `1000:4772` | unidentified | `func_04772` | `FUN_1000_4772` | `04772–0477B` | [`src/functions/unknown/04772_func_04772.asm`](src/functions/unknown/04772_func_04772.asm) |
| `0477C` | `1000:477c` | unidentified | `func_0477c` | `FUN_1000_477c` | `0477C–0478B` | [`src/functions/unknown/0477c_func_0477c.asm`](src/functions/unknown/0477c_func_0477c.asm) |
| `0478C` | `1000:478c` | unidentified | `func_0478c` | `FUN_1000_478c` | `0478C–0479B` | [`src/functions/unknown/0478c_func_0478c.asm`](src/functions/unknown/0478c_func_0478c.asm) |
| `0479C` | `1000:479c` | unidentified | `func_0479c` | `FUN_1000_479c` | `0479C–047AB` | [`src/functions/unknown/0479c_func_0479c.asm`](src/functions/unknown/0479c_func_0479c.asm) |
| `047AC` | `1000:47ac` | unidentified | `func_047ac` | `FUN_1000_47ac` | `047AC–047BB` | [`src/functions/unknown/047ac_func_047ac.asm`](src/functions/unknown/047ac_func_047ac.asm) |
| `047BC` | `1000:47bc` | unidentified | `func_047bc` | `FUN_1000_47bc` | `047BC–047CB` | [`src/functions/unknown/047bc_func_047bc.asm`](src/functions/unknown/047bc_func_047bc.asm) |
| `047CC` | `1000:47cc` | unidentified | `func_047cc` | `FUN_1000_47cc` | `047CC–047DB` | [`src/functions/unknown/047cc_func_047cc.asm`](src/functions/unknown/047cc_func_047cc.asm) |
| `047DC` | `1000:47dc` | verified-role | `test_grv_hotspot_rect` | `FUN_1000_47dc` | `047DC–0483D`<br>`04840–04848` | [`src/functions/grv/test_grv_hotspot_rect.asm`](src/functions/grv/test_grv_hotspot_rect.asm) |
| `04849` | `1000:4849` | unidentified | `func_04849` | `FUN_1000_4849` | `04849–048C8` | [`src/functions/unknown/04849_func_04849.asm`](src/functions/unknown/04849_func_04849.asm) |
| `048C9` | `1000:48c9` | unidentified | `func_048c9` | `FUN_1000_48c9` | `048C9–04956` | [`src/functions/unknown/048c9_func_048c9.asm`](src/functions/unknown/048c9_func_048c9.asm) |
| `04957` | `1000:4957` | unidentified | `func_04957` | `FUN_1000_4957` | `04957–0495C` | [`src/functions/unknown/04957_func_04957.asm`](src/functions/unknown/04957_func_04957.asm) |
| `0495D` | `1000:495d` | unidentified | `func_0495d` | `FUN_1000_495d` | `0495D–04967` | [`src/functions/unknown/0495d_func_0495d.asm`](src/functions/unknown/0495d_func_0495d.asm) |
| `04980` | `1000:4980` | unidentified | `func_04980` | `FUN_1000_4980` | `04980–04A22` | [`src/functions/unknown/04980_func_04980.asm`](src/functions/unknown/04980_func_04980.asm) |
| `04A23` | `1000:4a23` | unidentified | `func_04a23` | `FUN_1000_4a23` | `04A23–04A54` | [`src/functions/unknown/04a23_func_04a23.asm`](src/functions/unknown/04a23_func_04a23.asm) |
| `04A55` | `1000:4a55` | unidentified | `func_04a55` | `FUN_1000_4a55` | `04A55–04A7A` | [`src/functions/unknown/04a55_func_04a55.asm`](src/functions/unknown/04a55_func_04a55.asm) |
| `04A7B` | `1000:4a7b` | unidentified | `func_04a7b` | `FUN_1000_4a7b` | `04A7B–04B67`<br>`04B6B–04BAB`<br>`04BAE–04BF4` | [`src/functions/unknown/04a7b_func_04a7b.asm`](src/functions/unknown/04a7b_func_04a7b.asm) |
| `04BF5` | `1000:4bf5` | unidentified | `func_04bf5` | `FUN_1000_4bf5` | `04BF5–04C26` | [`src/functions/unknown/04bf5_func_04bf5.asm`](src/functions/unknown/04bf5_func_04bf5.asm) |
| `04C27` | `1000:4c27` | unidentified | `func_04c27` | `FUN_1000_4c27` | `04C27–04CD1` | [`src/functions/unknown/04c27_func_04c27.asm`](src/functions/unknown/04c27_func_04c27.asm) |
| `04CD2` | `1000:4cd2` | unidentified | `func_04cd2` | `FUN_1000_4cd2` | `04CD2–04D8B` | [`src/functions/unknown/04cd2_func_04cd2.asm`](src/functions/unknown/04cd2_func_04cd2.asm) |
| `04D8C` | `1000:4d8c` | unidentified | `func_04d8c` | `FUN_1000_4d8c` | `04D8C–04E1E` | [`src/functions/unknown/04d8c_func_04d8c.asm`](src/functions/unknown/04d8c_func_04d8c.asm) |
| `04E1F` | `1000:4e1f` | unidentified | `func_04e1f` | `FUN_1000_4e1f` | `04E1F–04EAD` | [`src/functions/unknown/04e1f_func_04e1f.asm`](src/functions/unknown/04e1f_func_04e1f.asm) |
| `04EAE` | `1000:4eae` | unidentified | `func_04eae` | `FUN_1000_4eae` | `04EAE–04FC6` | [`src/functions/unknown/04eae_func_04eae.asm`](src/functions/unknown/04eae_func_04eae.asm) |
| `04FC7` | `1000:4fc7` | unidentified | `func_04fc7` | `FUN_1000_4fc7` | `04FC7–04FEA` | [`src/functions/unknown/04fc7_func_04fc7.asm`](src/functions/unknown/04fc7_func_04fc7.asm) |
| `04FEB` | `1000:4feb` | unidentified | `func_04feb` | `FUN_1000_4feb` | `04FEB–04FF5` | [`src/functions/unknown/04feb_func_04feb.asm`](src/functions/unknown/04feb_func_04feb.asm) |
| `04FF6` | `1000:4ff6` | unidentified | `func_04ff6` | `FUN_1000_4ff6` | `04FF6–0500F` | [`src/functions/unknown/04ff6_func_04ff6.asm`](src/functions/unknown/04ff6_func_04ff6.asm) |
| `05010` | `1000:5010` | unidentified | `func_05010` | `FUN_1000_5010` | `05010–05017` | [`src/functions/unknown/05010_func_05010.asm`](src/functions/unknown/05010_func_05010.asm) |
| `05018` | `1000:5018` | unidentified | `func_05018` | `FUN_1000_5018` | `05018–05056` | [`src/functions/unknown/05018_func_05018.asm`](src/functions/unknown/05018_func_05018.asm) |
| `05057` | `1000:5057` | unidentified | `func_05057` | `FUN_1000_5057` | `05057–0518F`<br>`05192–0519B`<br>`0519E–051A3`<br>`051A6–051AB`<br>`051AE–051C4` | [`src/functions/unknown/05057_func_05057.asm`](src/functions/unknown/05057_func_05057.asm) |
| `051C5` | `1000:51c5` | unidentified | `func_051c5` | `FUN_1000_51c5` | `051C5–051CA` | [`src/functions/unknown/051c5_func_051c5.asm`](src/functions/unknown/051c5_func_051c5.asm) |
| `051CB` | `1000:51cb` | unidentified | `func_051cb` | `FUN_1000_51cb` | `051CB–051E4` | [`src/functions/unknown/051cb_func_051cb.asm`](src/functions/unknown/051cb_func_051cb.asm) |
| `051E5` | `1000:51e5` | unidentified | `func_051e5` | `FUN_1000_51e5` | `051E5–051FE` | [`src/functions/unknown/051e5_func_051e5.asm`](src/functions/unknown/051e5_func_051e5.asm) |
| `051FF` | `1000:51ff` | unidentified | `func_051ff` | `FUN_1000_51ff` | `051FF–05216` | [`src/functions/unknown/051ff_func_051ff.asm`](src/functions/unknown/051ff_func_051ff.asm) |
| `05217` | `1000:5217` | unidentified | `func_05217` | `FUN_1000_5217` | `05217–05225` | [`src/functions/unknown/05217_func_05217.asm`](src/functions/unknown/05217_func_05217.asm) |
| `05226` | `1000:5226` | unidentified | `func_05226` | `FUN_1000_5226` | `05226–05234` | [`src/functions/unknown/05226_func_05226.asm`](src/functions/unknown/05226_func_05226.asm) |
| `05235` | `1000:5235` | unidentified | `func_05235` | `FUN_1000_5235` | `05235–05350`<br>`05353–0535C`<br>`0535F–05364`<br>`05367–0536C`<br>`0536F–05378` | [`src/functions/unknown/05235_func_05235.asm`](src/functions/unknown/05235_func_05235.asm) |
| `05379` | `1000:5379` | unidentified | `func_05379` | `FUN_1000_5379` | `05379–05457`<br>`0545A–05463`<br>`05466–0546B`<br>`0546E–05473`<br>`05476–0547F` | [`src/functions/unknown/05379_func_05379.asm`](src/functions/unknown/05379_func_05379.asm) |
| `05480` | `1000:5480` | decode and draw GRV PRINTSTRING sequence | `decode_and_draw_grv_string` | `FUN_1000_5480` | `05480–054AC` | [`src/functions/grv/decode_and_draw_grv_string.asm`](src/functions/grv/decode_and_draw_grv_string.asm) |
| `054AD` | `1000:54ad` | unidentified | `func_054ad` | `FUN_1000_54ad` | `054AD–054F8` | [`src/functions/unknown/054ad_func_054ad.asm`](src/functions/unknown/054ad_func_054ad.asm) |
| `054F9` | `1000:54f9` | unidentified | `func_054f9` | `FUN_1000_54f9` | `054F9–05522` | [`src/functions/unknown/054f9_func_054f9.asm`](src/functions/unknown/054f9_func_054f9.asm) |
| `05523` | `1000:5523` | centered SPHINX.FNT indexed-glyph renderer | `draw_centered_sphinx_font_string` | `FUN_1000_5523` | `05523–055FB` | [`src/functions/grv/draw_centered_sphinx_font_string.asm`](src/functions/grv/draw_centered_sphinx_font_string.asm) |
| `055FC` | `1000:55fc` | unidentified | `func_055fc` | `FUN_1000_55fc` | `055FC–05718` | [`src/functions/unknown/055fc_func_055fc.asm`](src/functions/unknown/055fc_func_055fc.asm) |
| `05719` | `1000:5719` | unidentified | `func_05719` | `FUN_1000_5719` | `05719–05727` | [`src/functions/unknown/05719_func_05719.asm`](src/functions/unknown/05719_func_05719.asm) |
| `05728` | `1000:5728` | unidentified | `func_05728` | `FUN_1000_5728` | `05728–05728` | [`src/functions/unknown/05728_func_05728.asm`](src/functions/unknown/05728_func_05728.asm) |
| `05729` | `1000:5729` | unidentified | `func_05729` | `FUN_1000_5729` | `05729–05729` | [`src/functions/unknown/05729_func_05729.asm`](src/functions/unknown/05729_func_05729.asm) |
| `0572A` | `1000:572a` | unidentified | `func_0572a` | `FUN_1000_572a` | `0572A–05732` | [`src/functions/unknown/0572a_func_0572a.asm`](src/functions/unknown/0572a_func_0572a.asm) |
| `05734` | `1000:5734` | unidentified | `func_05734` | `FUN_1000_5734` | `05734–05749` | [`src/functions/unknown/05734_func_05734.asm`](src/functions/unknown/05734_func_05734.asm) |
| `0574A` | `1000:574a` | unidentified | `func_0574a` | `FUN_1000_574a` | `0574A–05753` | [`src/functions/unknown/0574a_func_0574a.asm`](src/functions/unknown/0574a_func_0574a.asm) |
| `05754` | `1000:5754` | unidentified | `func_05754` | `FUN_1000_5754` | `05754–0575D` | [`src/functions/unknown/05754_func_05754.asm`](src/functions/unknown/05754_func_05754.asm) |
| `0575E` | `1000:575e` | unidentified | `func_0575e` | `FUN_1000_575e` | `0575E–0576D` | [`src/functions/unknown/0575e_func_0575e.asm`](src/functions/unknown/0575e_func_0575e.asm) |
| `0576E` | `1000:576e` | verified-role | `initialize_subsystems_xms` | `FUN_1000_576e` | `0576E–05A36` | [`src/functions/platform/initialize_subsystems_xms.asm`](src/functions/platform/initialize_subsystems_xms.asm) |
| `05A37` | `1000:5a37` | unidentified | `func_05a37` | `FUN_1000_5a37` | `05A37–05A4E` | [`src/functions/unknown/05a37_func_05a37.asm`](src/functions/unknown/05a37_func_05a37.asm) |
| `05A6C` | `1000:5a6c` | unidentified | `func_05a6c` | `FUN_1000_5a6c` | `05A6C–05A8A` | [`src/functions/unknown/05a6c_func_05a6c.asm`](src/functions/unknown/05a6c_func_05a6c.asm) |
| `05A8B` | `1000:5a8b` | unidentified | `func_05a8b` | `FUN_1000_5a8b` | `05A8B–05AAB` | [`src/functions/unknown/05a8b_func_05a8b.asm`](src/functions/unknown/05a8b_func_05a8b.asm) |
| `05AAC` | `1000:5aac` | unidentified | `func_05aac` | `FUN_1000_5aac` | `05AAC–05BD0` | [`src/functions/unknown/05aac_func_05aac.asm`](src/functions/unknown/05aac_func_05aac.asm) |
| `05BD1` | `1000:5bd1` | verified-role | `load_and_play_selected_xmi` | `FUN_1000_5bd1` | `05BD1–05C05` | [`src/functions/audio/load_and_play_selected_xmi.asm`](src/functions/audio/load_and_play_selected_xmi.asm) |
| `05C06` | `1000:5c06` | unidentified | `func_05c06` | `FUN_1000_5c06` | `05C06–05CDD` | [`src/functions/unknown/05c06_func_05c06.asm`](src/functions/unknown/05c06_func_05c06.asm) |
| `05CED` | `1000:5ced` | verified-role | `shutdown_player` | `FUN_1000_5ced` | `05CED–05E8B` | [`src/functions/runtime/shutdown_player.asm`](src/functions/runtime/shutdown_player.asm) |
| `05E8D` | `1000:5e8d` | unidentified | `func_05e8d` | `FUN_1000_5e8d` | `05E8D–05EA8` | [`src/functions/unknown/05e8d_func_05e8d.asm`](src/functions/unknown/05e8d_func_05e8d.asm) |
| `05EA9` | `1000:5ea9` | unidentified | `func_05ea9` | `FUN_1000_5ea9` | `05EA9–05EC7` | [`src/functions/unknown/05ea9_func_05ea9.asm`](src/functions/unknown/05ea9_func_05ea9.asm) |
| `05EC8` | `1000:5ec8` | unidentified | `func_05ec8` | `FUN_1000_5ec8` | `05EC8–05ED4` | [`src/functions/unknown/05ec8_func_05ec8.asm`](src/functions/unknown/05ec8_func_05ec8.asm) |
| `05ED6` | `1000:5ed6` | unidentified | `func_05ed6` | `FUN_1000_5ed6` | `05ED6–05F1B` | [`src/functions/unknown/05ed6_func_05ed6.asm`](src/functions/unknown/05ed6_func_05ed6.asm) |
| `05F22` | `1000:5f22` | unidentified | `func_05f22` | `FUN_1000_5f22` | `05F22–05F6B` | [`src/functions/unknown/05f22_func_05f22.asm`](src/functions/unknown/05f22_func_05f22.asm) |
| `05F6C` | `1000:5f6c` | unidentified | `func_05f6c` | `FUN_1000_5f6c` | `05F6C–05FB5` | [`src/functions/unknown/05f6c_func_05f6c.asm`](src/functions/unknown/05f6c_func_05f6c.asm) |
| `05FB6` | `1000:5fb6` | unidentified | `func_05fb6` | `FUN_1000_5fb6` | `05FB6–05FD7` | [`src/functions/unknown/05fb6_func_05fb6.asm`](src/functions/unknown/05fb6_func_05fb6.asm) |
| `05FD8` | `1000:5fd8` | unidentified | `func_05fd8` | `FUN_1000_5fd8` | `05FD8–05FE3` | [`src/functions/unknown/05fd8_func_05fd8.asm`](src/functions/unknown/05fd8_func_05fd8.asm) |
| `05FE4` | `1000:5fe4` | unidentified | `func_05fe4` | `FUN_1000_5fe4` | `05FE4–0605A`<br>`0605C–06072`<br>`06074–060CF` | [`src/functions/unknown/05fe4_func_05fe4.asm`](src/functions/unknown/05fe4_func_05fe4.asm) |
| `060D0` | `1000:60d0` | unidentified | `func_060d0` | `FUN_1000_60d0` | `060D0–06157`<br>`0615A–061CE` | [`src/functions/unknown/060d0_func_060d0.asm`](src/functions/unknown/060d0_func_060d0.asm) |
| `061D0` | `1000:61d0` | unidentified | `func_061d0` | `FUN_1000_61d0` | `061D0–0627A`<br>`0627C–0628E` | [`src/functions/unknown/061d0_func_061d0.asm`](src/functions/unknown/061d0_func_061d0.asm) |
| `06290` | `1000:6290` | unidentified | `func_06290` | `FUN_1000_6290` | `06290–062E8` | [`src/functions/unknown/06290_func_06290.asm`](src/functions/unknown/06290_func_06290.asm) |
| `062EA` | `1000:62ea` | unidentified | `func_062ea` | `FUN_1000_62ea` | `062EA–063B3` | [`src/functions/unknown/062ea_func_062ea.asm`](src/functions/unknown/062ea_func_062ea.asm) |
| `063B4` | `1000:63b4` | unidentified | `func_063b4` | `FUN_1000_63b4` | `063B4–063FA`<br>`063FC–0641B` | [`src/functions/unknown/063b4_func_063b4.asm`](src/functions/unknown/063b4_func_063b4.asm) |
| `0641C` | `1000:641c` | unidentified | `func_0641c` | `FUN_1000_641c` | `0641C–06434` | [`src/functions/unknown/0641c_func_0641c.asm`](src/functions/unknown/0641c_func_0641c.asm) |
| `06436` | `1000:6436` | unidentified | `func_06436` | `FUN_1000_6436` | `06436–06456` | [`src/functions/unknown/06436_func_06436.asm`](src/functions/unknown/06436_func_06436.asm) |
| `06458` | `1000:6458` | unidentified | `func_06458` | `FUN_1000_6458` | `06458–0650E`<br>`06510–06514`<br>`06516–0656A` | [`src/functions/unknown/06458_func_06458.asm`](src/functions/unknown/06458_func_06458.asm) |
| `0656C` | `1000:656c` | unidentified | `func_0656c` | `FUN_1000_656c` | `0656C–065FC`<br>`065FE–06618`<br>`0661A–06642`<br>`06644–066AE`<br>`066B0–06798`<br>`0679A–067FA`<br>`067FC–06845` | [`src/functions/unknown/0656c_func_0656c.asm`](src/functions/unknown/0656c_func_0656c.asm) |
| `06846` | `1000:6846` | unidentified | `func_06846` | `FUN_1000_6846` | `06846–0690B`<br>`0690D–06951`<br>`06953–06A6B` | [`src/functions/unknown/06846_func_06846.asm`](src/functions/unknown/06846_func_06846.asm) |
| `06A6D` | `1000:6a6d` | unidentified | `func_06a6d` | `FUN_1000_6a6d` | `06A6D–06A80` | [`src/functions/unknown/06a6d_func_06a6d.asm`](src/functions/unknown/06a6d_func_06a6d.asm) |
| `06A81` | `1000:6a81` | unidentified | `func_06a81` | `FUN_1000_6a81` | `06A81–06AE3`<br>`06AE5–06AEE` | [`src/functions/unknown/06a81_func_06a81.asm`](src/functions/unknown/06a81_func_06a81.asm) |
| `06AEF` | `1000:6aef` | unidentified | `func_06aef` | `FUN_1000_6aef` | `06AEF–06BFE`<br>`06C00–06D0D` | [`src/functions/unknown/06aef_func_06aef.asm`](src/functions/unknown/06aef_func_06aef.asm) |
| `06D0E` | `1000:6d0e` | unidentified | `func_06d0e` | `FUN_1000_6d0e` | `06D0E–06DA4`<br>`06DA6–06DE2` | [`src/functions/unknown/06d0e_func_06d0e.asm`](src/functions/unknown/06d0e_func_06d0e.asm) |
| `06DE4` | `1000:6de4` | unidentified | `func_06de4` | `FUN_1000_6de4` | `06DE4–06E0A`<br>`06E0C–06E67` | [`src/functions/unknown/06de4_func_06de4.asm`](src/functions/unknown/06de4_func_06de4.asm) |
| `06E68` | `1000:6e68` | unidentified | `func_06e68` | `FUN_1000_6e68` | `06E68–06E71` | [`src/functions/unknown/06e68_func_06e68.asm`](src/functions/unknown/06e68_func_06e68.asm) |
| `06E72` | `1000:6e72` | unidentified | `func_06e72` | `FUN_1000_6e72` | `06E72–06EB5` | [`src/functions/unknown/06e72_func_06e72.asm`](src/functions/unknown/06e72_func_06e72.asm) |
| `06EB6` | `1000:6eb6` | unidentified | `func_06eb6` | `FUN_1000_6eb6` | `06EB6–06ED8` | [`src/functions/unknown/06eb6_func_06eb6.asm`](src/functions/unknown/06eb6_func_06eb6.asm) |
| `06ED9` | `1000:6ed9` | unidentified | `func_06ed9` | `FUN_1000_6ed9` | `06ED9–06FA8` | [`src/functions/unknown/06ed9_func_06ed9.asm`](src/functions/unknown/06ed9_func_06ed9.asm) |
| `06FA9` | `1000:6fa9` | unidentified | `func_06fa9` | `FUN_1000_6fa9` | `06FA9–07024` | [`src/functions/unknown/06fa9_func_06fa9.asm`](src/functions/unknown/06fa9_func_06fa9.asm) |
| `073E0` | `1702:03c0` | unidentified | `func_073e0` | `FUN_1702_03c0` | `073E0–07417` | [`src/functions/unknown/073e0_func_073e0.asm`](src/functions/unknown/073e0_func_073e0.asm) |
| `07418` | `1702:03f8` | unidentified | `func_07418` | `FUN_1702_03f8` | `07418–0742F` | [`src/functions/unknown/07418_func_07418.asm`](src/functions/unknown/07418_func_07418.asm) |
| `07501` | `1702:04e1` | unidentified | `func_07501` | `FUN_1702_04e1` | `07501–07532`<br>`07534–0753C` | [`src/functions/unknown/07501_func_07501.asm`](src/functions/unknown/07501_func_07501.asm) |
| `07544` | `1702:0524` | unidentified | `func_07544` | `FUN_1702_0524` | `07544–07585`<br>`07587–0758F` | [`src/functions/unknown/07544_func_07544.asm`](src/functions/unknown/07544_func_07544.asm) |
| `07590` | `1702:0570` | unidentified | `func_07590` | `FUN_1702_0570` | `07590–075B5`<br>`075B7–075BF` | [`src/functions/unknown/07590_func_07590.asm`](src/functions/unknown/07590_func_07590.asm) |
| `075C0` | `1702:05a0` | unidentified | `func_075c0` | `FUN_1702_05a0` | `075C0–075DD`<br>`075DF–075E8` | [`src/functions/unknown/075c0_func_075c0.asm`](src/functions/unknown/075c0_func_075c0.asm) |
| `075E9` | `1702:05c9` | unidentified | `func_075e9` | `FUN_1702_05c9` | `075E9–07612` | [`src/functions/unknown/075e9_func_075e9.asm`](src/functions/unknown/075e9_func_075e9.asm) |
| `07613` | `1702:05f3` | unidentified | `func_07613` | `FUN_1702_05f3` | `07613–0765D` | [`src/functions/unknown/07613_func_07613.asm`](src/functions/unknown/07613_func_07613.asm) |
| `0765E` | `1702:063e` | unidentified | `func_0765e` | `FUN_1702_063e` | `0765E–076E8`<br>`076EA–076F2` | [`src/functions/unknown/0765e_func_0765e.asm`](src/functions/unknown/0765e_func_0765e.asm) |
| `076F3` | `1702:06d3` | unidentified | `func_076f3` | `FUN_1702_06d3` | `076F3–07733`<br>`07735–0773D` | [`src/functions/unknown/076f3_func_076f3.asm`](src/functions/unknown/076f3_func_076f3.asm) |
| `0773E` | `1702:071e` | unidentified | `func_0773e` | `FUN_1702_071e` | `0773E–07797`<br>`07799–077A2` | [`src/functions/unknown/0773e_func_0773e.asm`](src/functions/unknown/0773e_func_0773e.asm) |
| `077A3` | `1702:0783` | unidentified | `func_077a3` | `FUN_1702_0783` | `077A3–07862`<br>`07864–0786D` | [`src/functions/unknown/077a3_func_077a3.asm`](src/functions/unknown/077a3_func_077a3.asm) |
| `0786E` | `1702:084e` | unidentified | `func_0786e` | `FUN_1702_084e` | `0786E–078AB`<br>`078AD–078B6` | [`src/functions/unknown/0786e_func_0786e.asm`](src/functions/unknown/0786e_func_0786e.asm) |
| `078B7` | `1702:0897` | unidentified | `func_078b7` | `FUN_1702_0897` | `078B7–078CA`<br>`078CC–078D4` | [`src/functions/unknown/078b7_func_078b7.asm`](src/functions/unknown/078b7_func_078b7.asm) |
| `078D5` | `1702:08b5` | unidentified | `func_078d5` | `FUN_1702_08b5` | `078D5–078F1`<br>`078F3–078FC` | [`src/functions/unknown/078d5_func_078d5.asm`](src/functions/unknown/078d5_func_078d5.asm) |
| `0791B` | `1702:08fb` | unidentified | `func_0791b` | `FUN_1702_08fb` | `0791B–07937`<br>`07939–07942` | [`src/functions/unknown/0791b_func_0791b.asm`](src/functions/unknown/0791b_func_0791b.asm) |
| `07961` | `1702:0941` | unidentified | `func_07961` | `FUN_1702_0941` | `07961–079AA`<br>`079AC–079B5` | [`src/functions/unknown/07961_func_07961.asm`](src/functions/unknown/07961_func_07961.asm) |
| `079B6` | `1702:0996` | unidentified | `func_079b6` | `FUN_1702_0996` | `079B6–079EB`<br>`079ED–079F6` | [`src/functions/unknown/079b6_func_079b6.asm`](src/functions/unknown/079b6_func_079b6.asm) |
| `079F7` | `1702:09d7` | unidentified | `func_079f7` | `FUN_1702_09d7` | `079F7–07A32` | [`src/functions/unknown/079f7_func_079f7.asm`](src/functions/unknown/079f7_func_079f7.asm) |
| `07A33` | `1702:0a13` | unidentified | `func_07a33` | `FUN_1702_0a13` | `07A33–07A3C`<br>`07A3E–07A46` | [`src/functions/unknown/07a33_func_07a33.asm`](src/functions/unknown/07a33_func_07a33.asm) |
| `07A47` | `1702:0a27` | unidentified | `func_07a47` | `FUN_1702_0a27` | `07A47–07ADD`<br>`07ADF–07B29` | [`src/functions/unknown/07a47_func_07a47.asm`](src/functions/unknown/07a47_func_07a47.asm) |
| `07B71` | `1702:0b51` | unidentified | `func_07b71` | `FUN_1702_0b51` | `07B71–07B96` | [`src/functions/unknown/07b71_func_07b71.asm`](src/functions/unknown/07b71_func_07b71.asm) |
| `07B97` | `1702:0b77` | unidentified | `func_07b97` | `FUN_1702_0b77` | `07B97–07B9C` | [`src/functions/unknown/07b97_func_07b97.asm`](src/functions/unknown/07b97_func_07b97.asm) |
| `07B9D` | `1702:0b7d` | unidentified | `func_07b9d` | `FUN_1702_0b7d` | `07B9D–07C43`<br>`07C45–07C4E` | [`src/functions/unknown/07b9d_func_07b9d.asm`](src/functions/unknown/07b9d_func_07b9d.asm) |
| `07C4F` | `1702:0c2f` | unidentified | `func_07c4f` | `FUN_1702_0c2f` | `07C4F–07C81` | [`src/functions/unknown/07c4f_func_07c4f.asm`](src/functions/unknown/07c4f_func_07c4f.asm) |
| `07C88` | `1702:0c68` | unidentified | `func_07c88` | `FUN_1702_0c68` | `07C88–07C8D` | [`src/functions/unknown/07c88_func_07c88.asm`](src/functions/unknown/07c88_func_07c88.asm) |
| `07C8E` | `1702:0c6e` | unidentified | `func_07c8e` | `FUN_1702_0c6e` | `07C8E–07C93` | [`src/functions/unknown/07c8e_func_07c8e.asm`](src/functions/unknown/07c8e_func_07c8e.asm) |
| `07C94` | `1702:0c74` | unidentified | `func_07c94` | `FUN_1702_0c74` | `07C94–07C99` | [`src/functions/unknown/07c94_func_07c94.asm`](src/functions/unknown/07c94_func_07c94.asm) |
| `07CAC` | `1702:0c8c` | unidentified | `func_07cac` | `FUN_1702_0c8c` | `07CAC–07CB1` | [`src/functions/unknown/07cac_func_07cac.asm`](src/functions/unknown/07cac_func_07cac.asm) |
| `07CB2` | `1702:0c92` | unidentified | `func_07cb2` | `FUN_1702_0c92` | `07CB2–07CB7` | [`src/functions/unknown/07cb2_func_07cb2.asm`](src/functions/unknown/07cb2_func_07cb2.asm) |
| `07CC4` | `1702:0ca4` | unidentified | `func_07cc4` | `FUN_1702_0ca4` | `07CC4–07CC9` | [`src/functions/unknown/07cc4_func_07cc4.asm`](src/functions/unknown/07cc4_func_07cc4.asm) |
| `07CE2` | `1702:0cc2` | unidentified | `func_07ce2` | `FUN_1702_0cc2` | `07CE2–07CE7` | [`src/functions/unknown/07ce2_func_07ce2.asm`](src/functions/unknown/07ce2_func_07ce2.asm) |
| `07CE8` | `1702:0cc8` | unidentified | `func_07ce8` | `FUN_1702_0cc8` | `07CE8–07CED` | [`src/functions/unknown/07ce8_func_07ce8.asm`](src/functions/unknown/07ce8_func_07ce8.asm) |
| `07CEE` | `1702:0cce` | unidentified | `func_07cee` | `FUN_1702_0cce` | `07CEE–07CF3` | [`src/functions/unknown/07cee_func_07cee.asm`](src/functions/unknown/07cee_func_07cee.asm) |
| `07CF4` | `1702:0cd4` | unidentified | `func_07cf4` | `FUN_1702_0cd4` | `07CF4–07CF9` | [`src/functions/unknown/07cf4_func_07cf4.asm`](src/functions/unknown/07cf4_func_07cf4.asm) |
| `07CFA` | `1702:0cda` | unidentified | `func_07cfa` | `FUN_1702_0cda` | `07CFA–07CFF` | [`src/functions/unknown/07cfa_func_07cfa.asm`](src/functions/unknown/07cfa_func_07cfa.asm) |
| `07D00` | `1702:0ce0` | unidentified | `func_07d00` | `FUN_1702_0ce0` | `07D00–07D05` | [`src/functions/unknown/07d00_func_07d00.asm`](src/functions/unknown/07d00_func_07d00.asm) |
| `07D18` | `1702:0cf8` | unidentified | `func_07d18` | `FUN_1702_0cf8` | `07D18–07D1D` | [`src/functions/unknown/07d18_func_07d18.asm`](src/functions/unknown/07d18_func_07d18.asm) |
| `07D1E` | `1702:0cfe` | unidentified | `func_07d1e` | `FUN_1702_0cfe` | `07D1E–07D23` | [`src/functions/unknown/07d1e_func_07d1e.asm`](src/functions/unknown/07d1e_func_07d1e.asm) |
| `07D2A` | `1702:0d0a` | unidentified | `func_07d2a` | `FUN_1702_0d0a` | `07D2A–07D2F` | [`src/functions/unknown/07d2a_func_07d2a.asm`](src/functions/unknown/07d2a_func_07d2a.asm) |
| `07D3C` | `1702:0d1c` | unidentified | `func_07d3c` | `FUN_1702_0d1c` | `07D3C–07D41` | [`src/functions/unknown/07d3c_func_07d3c.asm`](src/functions/unknown/07d3c_func_07d3c.asm) |
| `07D4E` | `1702:0d2e` | unidentified | `func_07d4e` | `FUN_1702_0d2e` | `07D4E–07D53` | [`src/functions/unknown/07d4e_func_07d4e.asm`](src/functions/unknown/07d4e_func_07d4e.asm) |
| `07EA0` | `1702:0e80` | unidentified | `func_07ea0` | `FUN_1702_0e80` | `07EA0–07EC8`<br>`07ED3–07ED6` | [`src/functions/unknown/07ea0_func_07ea0.asm`](src/functions/unknown/07ea0_func_07ea0.asm) |
| `07ED7` | `1702:0eb7` | unidentified | `func_07ed7` | `FUN_1702_0eb7` | `07ED7–07F0D` | [`src/functions/unknown/07ed7_func_07ed7.asm`](src/functions/unknown/07ed7_func_07ed7.asm) |
| `07F0E` | `1702:0eee` | unidentified | `func_07f0e` | `FUN_1702_0eee` | `07F0E–07F54` | [`src/functions/unknown/07f0e_func_07f0e.asm`](src/functions/unknown/07f0e_func_07f0e.asm) |
| `07F55` | `1702:0f35` | unidentified | `func_07f55` | `FUN_1702_0f35` | `07F55–07F63` | [`src/functions/unknown/07f55_func_07f55.asm`](src/functions/unknown/07f55_func_07f55.asm) |
| `07F64` | `1702:0f44` | unidentified | `func_07f64` | `FUN_1702_0f44` | `07F64–07F7A` | [`src/functions/unknown/07f64_func_07f64.asm`](src/functions/unknown/07f64_func_07f64.asm) |
| `07F7B` | `1702:0f5b` | unidentified | `func_07f7b` | `FUN_1702_0f5b` | `07F7B–07FB5` | [`src/functions/unknown/07f7b_func_07f7b.asm`](src/functions/unknown/07f7b_func_07f7b.asm) |
| `07FB6` | `1702:0f96` | unidentified | `func_07fb6` | `FUN_1702_0f96` | `07FB6–08068` | [`src/functions/unknown/07fb6_func_07fb6.asm`](src/functions/unknown/07fb6_func_07fb6.asm) |
| `08069` | `1702:1049` | unidentified | `func_08069` | `FUN_1702_1049` | `08069–08082` | [`src/functions/unknown/08069_func_08069.asm`](src/functions/unknown/08069_func_08069.asm) |
| `080D6` | `1702:10b6` | unidentified | `func_080d6` | `FUN_1702_10b6` | `080D6–0812A` | [`src/functions/unknown/080d6_func_080d6.asm`](src/functions/unknown/080d6_func_080d6.asm) |
| `0812B` | `1702:110b` | unidentified | `func_0812b` | `FUN_1702_110b` | `0812B–08151` | [`src/functions/unknown/0812b_func_0812b.asm`](src/functions/unknown/0812b_func_0812b.asm) |
| `08152` | `1702:1132` | unidentified | `func_08152` | `FUN_1702_1132` | `08152–082A8` | [`src/functions/unknown/08152_func_08152.asm`](src/functions/unknown/08152_func_08152.asm) |
| `082A9` | `1702:1289` | unidentified | `func_082a9` | `FUN_1702_1289` | `082A9–082FB` | [`src/functions/unknown/082a9_func_082a9.asm`](src/functions/unknown/082a9_func_082a9.asm) |
| `082FC` | `1702:12dc` | unidentified | `func_082fc` | `FUN_1702_12dc` | `082FC–08326` | [`src/functions/unknown/082fc_func_082fc.asm`](src/functions/unknown/082fc_func_082fc.asm) |
| `08327` | `1702:1307` | unidentified | `func_08327` | `FUN_1702_1307` | `08327–083FD` | [`src/functions/unknown/08327_func_08327.asm`](src/functions/unknown/08327_func_08327.asm) |
| `083FE` | `1702:13de` | unidentified | `func_083fe` | `FUN_1702_13de` | `083FE–0847D` | [`src/functions/unknown/083fe_func_083fe.asm`](src/functions/unknown/083fe_func_083fe.asm) |
| `0847E` | `1000:847e` | unidentified | `func_0847e` | `FUN_1000_847e` | `0847E–0848B` | [`src/functions/unknown/0847e_func_0847e.asm`](src/functions/unknown/0847e_func_0847e.asm) |
| `0848C` | `1000:848c` | unidentified | `func_0848c` | `FUN_1000_848c` | `0848C–084F0` | [`src/functions/unknown/0848c_func_0848c.asm`](src/functions/unknown/0848c_func_0848c.asm) |
| `084F1` | `1000:84f1` | unidentified | `func_084f1` | `FUN_1000_84f1` | `084F1–08523` | [`src/functions/unknown/084f1_func_084f1.asm`](src/functions/unknown/084f1_func_084f1.asm) |
| `08524` | `1000:8524` | unidentified | `func_08524` | `FUN_1000_8524` | `08524–08649` | [`src/functions/unknown/08524_func_08524.asm`](src/functions/unknown/08524_func_08524.asm) |
| `0864A` | `1000:864a` | unidentified | `func_0864a` | `FUN_1000_864a` | `0864A–086AA` | [`src/functions/unknown/0864a_func_0864a.asm`](src/functions/unknown/0864a_func_0864a.asm) |
| `086AB` | `1000:86ab` | unidentified | `func_086ab` | `FUN_1000_86ab` | `086AB–086BF` | [`src/functions/unknown/086ab_func_086ab.asm`](src/functions/unknown/086ab_func_086ab.asm) |
| `086C0` | `1000:86c0` | unidentified | `func_086c0` | `FUN_1000_86c0` | `086C0–08765` | [`src/functions/unknown/086c0_func_086c0.asm`](src/functions/unknown/086c0_func_086c0.asm) |
| `08766` | `1000:8766` | unidentified | `func_08766` | `FUN_1000_8766` | `08766–08853` | [`src/functions/unknown/08766_func_08766.asm`](src/functions/unknown/08766_func_08766.asm) |
| `08854` | `1000:8854` | unidentified | `func_08854` | `FUN_1000_8854` | `08854–08890` | [`src/functions/unknown/08854_func_08854.asm`](src/functions/unknown/08854_func_08854.asm) |
| `08891` | `1000:8891` | unidentified | `func_08891` | `FUN_1000_8891` | `08891–088D8` | [`src/functions/unknown/08891_func_08891.asm`](src/functions/unknown/08891_func_08891.asm) |
| `088D9` | `1702:18b9` | unidentified | `func_088d9` | `FUN_1702_18b9` | `088D9–0891C` | [`src/functions/unknown/088d9_func_088d9.asm`](src/functions/unknown/088d9_func_088d9.asm) |
| `0891D` | `1000:891d` | unidentified | `func_0891d` | `FUN_1000_891d` | `0891D–0892B` | [`src/functions/unknown/0891d_func_0891d.asm`](src/functions/unknown/0891d_func_0891d.asm) |
