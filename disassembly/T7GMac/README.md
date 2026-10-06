# Classic Macintosh `T7GMac` permanent disassembly

This is the lossless NASM source project for the supplied Classic Macintosh
The 7th Guest application and its companion T7GData archive. Both MacBinary II
containers rebuild byte-for-byte. Native code is Motorola 68k; NASM emits its
exact bytes with provisional decoded mnemonics in comments. The source layout
follows the DOS `V` and Win32 `v32tng` projects.

The initial source-emission pass was followed by the requested build and
resource/archive analysis. Assembly and canonical hash checks succeeded for
all three outputs below. No emulator, gameplay, unit, or regression tests
were run. Mechanical reconstruction is complete; native semantic recovery now identifies 55 of the original 80 jump-table
entries (68.8%), with 25 still unknown. This is role coverage, not complete
instruction-level semantic proof.

## Canonical artifacts and provenance

| Artifact | Size | SHA-256 |
|---|---:|---|
| Original/rebuilt `T7GMac.bin` | 1,830,912 | `c272ee50cf7a6f040160c8a005459c18ef766c1a306a295af1679a29ad3f8907` |
| Original/rebuilt `T7GData.bin` | 4,204,288 | `fdf219b93f271cc32ec53cb2338800293c48931c8bbdddd841f248997120dfb9` |
| Original/rebuilt `T7GData` data fork | 4,202,291 | `a7d8e73e9311fe2ea8a6ed21a27d45f6f2e3c6a1a83451719572b1afbbb99bba` |
| Supplied `mac-iso.txt` | 2,250 | `7cb1a9aa17b5774791ee38edc61e24b4f6352f09e0b0c3dc9b361767490f134a` |

The application header identifies type `APPL`, creator `T7GM`, a zero-byte
data fork, and a 1,830,783-byte resource fork. The supplied disc listing dates
the application to January 30, 1994. Its `vers` resource reports **1.0**:
bytes `01 00 80 00`, country code zero, short and long strings both `1.0`.
The initialized `DATA` resource includes `THINK C Libraries` and `1991
Symantec Corp.` strings. These establish embedded runtime-library provenance,
not an exact compiler version or original source-module layout.

T7GData has type `TEXT`, creator `mdos`, a 4,202,291-byte data fork, and a
1,702-byte resource fork containing three icon resources (`ICN#`, `icl8`,
`ics#`). Its data fork is the media archive described below. Supplied inputs
are preserved; extracted files and builds are separate artifacts.

## Build

```sh
cd disassembly/T7GMac
./build.sh
```

Requirements: NASM, ripgrep, Bash, GNU `dd`, and SHA-256 utilities. The script
rejects `incbin`, assembles both roots, checks their canonical hashes, and
extracts/checks the rebuilt companion data fork. Outputs are:

- `build/T7GMac-rebuilt.bin` — complete application MacBinary container;
- `build/T7GData-rebuilt.bin` — complete companion MacBinary container;
- `build/T7GData-rebuilt` — companion data fork, without a MacBinary wrapper.

The source build needs no original executable, Ghidra, Python, Capstone, Mac
emulator, or 68k assembler. It does not deploy. To install the application on
a Classic Mac, import its MacBinary container with a fork-aware tool so the
resource fork and Finder metadata are restored. Host builds do not establish
runtime compatibility.

One NASM invocation terminated with a segmentation fault during this pass;
the subsequent invocation completed both assemblies and all canonical hashes.
No source changes were needed to resolve that transient failure.

## First three reconstruction steps

1. Identify and hash the inputs; map MacBinary data/resource forks.
2. Parse application resource metadata and establish resource-level ownership.
3. Emit explicit byte source, preserve unknown native code/data, and establish
   the canonical reconstruction build.

The follow-up advances those foundations by recovering jump-table entries,
extracting embedded file resources, disassembling the GRV scripts, and mapping
T7GData from its actual RL index. The subsequent semantic sweep uses native debug trailers and decoded behavior
to name supported routines, while preserving uncertain candidates.

## Why five CODE resources are not five functions

The application has **five segments**, not five functions. `CODE 0` contains
startup/jump-table metadata. The four nonzero resources contain native 68k
code and can mix game logic, library routines, Mac OS calls, and inline data.
There is no evidence here of an embedded x86 game executable. GRV script
bytecode and media/index formats are shared with DOS without making their
native interpreter x86 code.

The initial four `code_<id>_unknown.asm` files were whole-segment placeholders.
They are now segment emission manifests that include individual unknown-entry
files. The `CODE 0` table establishes **80 native entries**, distributed as:

| Segment | Payload bytes | Jump-table entries | Length-word file offset |
|---|---:|---:|---:|
| `CODE 1` | 578 | 10 | `012C6Ah` |
| `CODE 2` | 26,362 | 30 | `001064h` |
| `CODE 4` | 16,278 | 27 | `00ECD0h` |
| `CODE 5` | 30,058 | 13 | `007762h` |
| `CODE 0` | 656 | 80 table records | `012EB0h` |

`CODE 0` starts with four big-endian longwords: `000002A0`, `00002A36`,
`00000280`, `00000020`. The third and fourth describe the 640-byte jump table
and its A5-relative offset of 32. Its 80 eight-byte records have the pattern:

```text
[target offset: word] 3F3C [segment ID: word] A9F0
                     MOVE.W #segment,-(SP)    segment-loader trap
```

The nonzero resource's first two words describe its jump-table offset/count.
The target maps to `payload + 4 + target_offset`. For example, table entry 0
selects segment 1 at payload offset `000Ch`; the first instruction bytes are
`42 78 0A 4A`. The table-to-segment mappings and original bytes are recorded
in [`resources/jump_table.csv`](resources/jump_table.csv).

[`resources/native_entries.csv`](resources/native_entries.csv) maps each entry
to its source slice. A slice ends at the next table entry or segment end;
that boundary is an emission convention, **not proof of a function end**.
Other internal functions remain in these slices or unowned prefixes.
[`resources/native_link_candidates.csv`](resources/native_link_candidates.csv)
records 475 even-aligned `4E56` (`LINK A6`) patterns and frame displacements.
These are additional entry candidates; inline bytes can match a prologue.
The semantic sweep identifies 55 of these 80 entries. Ordered entry slices
now include named internal routines while preserving every intervening byte.

## Semantic sweep and microscope puzzle

The stable coverage denominator is the original **80 jump-table entries**:
55 now have verified static roles, and 25 remain unknown. The larger inventory
contains 204 verified-role records, including internal routines, plus 21
unverified symbol candidates. Those additional records do not increase the
coverage denominator or imply that every byte is executable code.

[Semantic functions](resources/semantic_functions.csv) and
[full instruction evidence](resources/semantic_roles.json) record resource ID,
payload/file offsets, source ownership, contracts, and status. THINK C debug
trailers preserve names such as `Infection`, `pMin`, `pGen`, and `FancyScore`.
Names following return instructions help identify routines, but association
with a particular preceding prologue is sometimes ambiguous; those cases
remain candidates. A recovered role does not establish the entire original ABI.

The microscope implementation is native 68k game logic in `CODE 5`:

| Payload offset | Recovered role / native symbol |
|---|---|
| `03B8` | Convert adjacent opponents (`flip`) |
| `040A` | Count all pieces (`scoreAll`) |
| `0478`, `04A2` | Initialize forward/reverse move iteration |
| `04B0`, `05BE`, `06F2` | Forward, deduplicated, and reverse iteration |
| `07E4`, `085A` | Apply a scratch move / score a move |
| `095E` | Count adjacent clone incidences (`FancyScore`) |
| `09E0`, `09FA`, `0A1C` | Reset, append, and select tied best moves |
| `0B3C`, `0F2E` | Recursive search / best-move generation |
| `11B2`, `11C6`, `1250`, `14AE` | Ranked-list reset, insertion, construction, and search |
| `15A4`, `15FC` | GRV board normalization (`Infection`) / strategy dispatch (`pMax`) |

The two DATA-resource neighbor lists have exactly the same 49-cell ordering
as DOS and Windows: Chebyshev distance one for cloning and distance two for
jumping. The list ranges are container offsets `0003D8..000559` and
`00055A..00077B`; the two 49-entry big-endian pointer tables occupy
`00077C..00083F` and `000840..000903`. Mac lists use even-byte alignment.
Pointer values are signed A5-relative offsets. This does not establish a
uniform A5 mapping for the entire initialized DATA resource.

The native main board is referenced at `A5:DF36`, with four counters at
`DF67..DF6A`, move fields at `DF6B..DF6E`, and scratch board at `E4FF`.
Mac ranked-search dispatch uses threshold two, as DOS does; Windows uses
20. Mac uses its Random trap when selecting tied moves. The exact Mac
strategy-table initialization and all native random-state behavior remain
unrecovered; they are not guessed in v64tng.

Other named roles cover cursor decoding, video/script operations, saving,
resource access, Mac OS wrappers, and compiler/runtime helpers. Mac windowing,
HFS parameter blocks, and QuickDraw operations are platform-specific services,
not evidence of embedded x86 code. The build after this sweep reproduced all
three canonical artifacts above. No tests or emulator runs were performed.

## The missing RL and GRV files

The application resource fork contains **48 `T7GM` resources**. Their resource
names identify 21 RL files, 23 GRV scripts, `ROB.GJD`, `lut`, `Gump`, and an
owner resource. They are now extracted under
[`resources/extracted/`](resources/extracted/) and their emitted source files
have asset-based names in `src/data/embedded_*.asm`.

The 21 RL indexes contain **3,714 entries**. Their format remains the DOS
20-byte record: a 12-byte filename field followed by **little-endian** 32-bit
offset and length. Mac resource metadata is big-endian, but these embedded
file payloads retain their own little-endian formats.

Twenty RL resources match the supplied DOS files byte-for-byte. `hdisk.rl`
is different: it has ten entries (200 bytes), while the supplied DOS index
has eight (160 bytes). Its first eight named records have the same offsets
and lengths as DOS, although unused bytes after filename NULs differ. The
additional records are `todd.vdx` and `hayes.vdx`.

This explains why the supplied CD listing has GJD archives but no standalone
RL indexes or GRV scripts: the application carries those files as resources.
T7GData contains the indexed local media, not the RL tables themselves.
The application also embeds music/sound resources; their playback routing has
not been recovered. Presence of `xmi.rl` alone does not prove that an external
`XMI.GJD` is required on Mac.

See [`resources/rl_inventory.csv`](resources/rl_inventory.csv),
[`resources/rl_entries.csv`](resources/rl_entries.csv), and
[`resources/embedded_assets.csv`](resources/embedded_assets.csv) for exact
resource IDs, names, offsets, hashes, and comparisons.

## GRV bytecode disassembly

All 23 extracted GRV scripts were decoded using the repository's existing
GRV decoder and their extracted RL indexes. Listings sit beside the originals
as `resources/extracted/<name>.GRV.asm` (original filename case is retained).
They preserve offsets, raw bytes, decoded operations, operands, and resolved
archive resource names. These are script VM instructions, not Motorola or
x86 instructions.

Twenty scripts match the currently supplied DOS scripts exactly. The differing
files are `DEMO.GRV`, `LA.GRV`, and `script.grv`; byte differences are observed,
but their behavioral causes have not been assigned. The supplied DOS
`DEMO.GRV` is only 57 bytes, so that comparison is specifically against the
current repository artifact, not an assumed pristine retail demo.
`ROB.GJD` also matches its supplied DOS counterpart exactly.

The reproducible extraction tool is `tools/analyze_resources.py`. Re-run it
before regenerating the listings. The small decoder driver can be compiled
from the repository root:

```sh
python3 disassembly/T7GMac/tools/analyze_resources.py
g++ -std=c++23 -O2 -Iinclude \
  disassembly/T7GMac/tools/decompile_grv.cpp src/grv.cpp src/rl.cpp \
  -o /tmp/t7gmac-grv
/tmp/t7gmac-grv disassembly/T7GMac/resources/extracted
```

These are extraction/disassembly operations, not tests. The decoder is the
existing shared implementation; successful decoding does not prove every
opcode's behavior in the original Mac interpreter.

## T7GData taken apart

The embedded `hdisk.rl` names and bounds all ten files in the data fork.
Every indexed span begins with little-endian VDX magic `9267h`, has an
eight-byte header, and parses into complete eight-byte chunk headers plus
length-bounded payloads. Each file is followed by one `FF` archive separator
which is excluded from the RL length. Ten payloads plus ten separators account
for **all 4,202,291 data-fork bytes**, with no unexplained remainder.

| File | Data-fork offset | Bytes, excluding separator | Header rate | Chunks |
|---|---:|---:|---:|---:|
| `pid1.vdx` | `000000h` | 224,669 | 12 | 18 |
| `pid2.vdx` | `036D9Eh` | 233,585 | 12 | 18 |
| `title.vdx` | `06FE10h` | 1,685,709 | 8 | 320 |
| `tripro.vdx` | `20B6DEh` | 674,992 | 15 | 100 |
| `vlogo.vdx` | `2B038Fh` | 458,699 | 15 | 60 |
| `credits.vdx` | `32035Bh` | 780,655 | 7 | 1180 |
| `wo_s.vdx` | `3DECCBh` | 19,901 | 10 | 9 |
| `ws_o.vdx` | `3E3A89h` | 20,091 | 10 | 9 |
| `todd.vdx` | `3E8905h` | 51,990 | 5 | 1 |
| `hayes.vdx` | `3F541Ch` | 51,990 | 5 | 1 |

The ten VDX files contain **1,716 chunks**: 10 still chunks (`20h`), 603
animation/delta chunks (`25h`), and 1,103 type-zero chunks. None has an
`80h` audio chunk. Type-zero contents were not assigned a new meaning.
`todd.vdx` and `hayes.vdx` each consist of a single still chunk; their names
alone do not prove who or what the images depict. All ten payloads are
extracted into `resources/extracted/T7GData/`.

[`resources/t7gdata_inventory.csv`](resources/t7gdata_inventory.csv) records
file offsets, lengths, rates, chunk counts, separators, and hashes.
[`resources/t7gdata_chunks.csv`](resources/t7gdata_chunks.csv) records each
chunk's file and archive offsets, type, coding byte, length, and LZSS
parameters. This pass maps encoded media; it does not decompress or render it.
The icon resource fork is preserved as exact source, with its three types
identified, but icon pixels have not been decoded.

## Source organization and addresses

| Path | Purpose |
|---|---|
| `src/main.asm` | Application-container include order, placement guards, and size guard |
| `src/t7gdata.asm` | Companion-container include order, placement guards, and size guard |
| `src/functions/unknown/code_<id>_unknown.asm` | Segment manifests |
| `src/functions/unknown/code_<id>_<offset>_unknown.asm` | Ordered entry wrappers; include named routines and preserve unidentified bytes |
| `src/functions/{puzzle,cursor,grv,vdx,savegame,audio,resource_io,platform,runtime}/` | Named routines with exact bytes and decoded evidence |
| `src/data/cell_*_neighbor_*.asm` | Two 49-cell neighbor lists and their big-endian A5-relative pointer tables |
| `src/data/code_*_header_and_unowned_prefix.asm` | Segment length/header and bytes before the first table-backed entry |
| `src/data/resource_CODE_0.asm` | Original startup/jump-table bytes |
| `src/data/embedded_*.asm` | Named embedded indexes, scripts, cursor archive, and custom payloads |
| `src/data/resource_*.asm` | Other individual resource length words and payloads |
| `src/data/t7gdata_*_vdx.asm` | Companion VDX payloads |
| `src/data/t7gdata_*_separator.asm` | Exact archive separator bytes |
| Other `src/data/t7gdata_*.asm` | Companion wrapper, fork alignment, icon fork, and padding |
| `src/data/unknown_*.asm` | Application wrapper/header/map/padding bytes |
| `resources/*.csv` | Resource, native-entry, script/index, and media evidence maps |
| `resources/extracted/` | Recovered original payloads and GRV listings |
| `tools/` | Optional extraction and script-disassembly helpers |
| `build.sh`, `build/` | Canonical reconstruction entry point and ignored outputs |

Use `(CODE resource ID, payload offset)` for stable native identities.
Source comments and resource inventories use absolute MacBinary file offsets.
RL offsets are relative to the corresponding archive's **data fork**.
In the companion MacBinary container, a media byte is at `128 + archive_offset`.
Runtime segment bases have not been observed; file offsets are not executable
runtime addresses or GRV opcodes.

NASM cannot assemble 68k mnemonics. `BITS 16` configures the flat byte emitter,
not the target processor. Newly recovered native comments use Capstone 5 in big-endian
68020 decoding mode and remain provisional linear decoding. The first four payload
bytes are segment metadata, and native code/data boundaries are not all known.
The minimum CPU generation has not been determined. Other resource types,
including custom drivers/modules and `CDEF`, may contain additional native
code outside the five `CODE` resources.

## Coverage, naming, and remaining unknowns

| Measure | Current result |
|---|---:|
| Application-container explicit bytes / canonical build | 1,830,912 / byte-identical |
| Companion-container explicit bytes / canonical build | 4,204,288 / byte-identical |
| Companion data-fork reconstruction | 4,202,291 / byte-identical |
| Application resources / types | 671 / 35 |
| CODE payload bytes, including CODE 0 | 73,932 |
| Jump-table-backed native entries | 80 |
| LINK-pattern native entry candidates | 475 |
| Verified roles among original jump-table entries | 55 / 80 (68.8%) |
| Unknown original jump-table entries | 25 |
| Named verified-role records, including internal routines | 204 |
| Unverified debug-symbol/body association candidates | 21 |
| Extracted GRV scripts / total script bytes | 23 / 84,517 |
| Decoded script instructions | 20,872 |
| Embedded RL indexes / index entries | 21 / 3,714 |
| T7GData VDX files / chunks | 10 / 1,716 |
| `incbin` directives | 0 |
| Emulator/gameplay/unit/regression tests | 0 |

Byte identity is established; it does not establish semantic completeness.
Resource names justify asset identities; recovered native roles have their
static evidence recorded in the semantic inventory. Unverified routines retain
unknown or explicitly candidate status. Do not count jump-table entries, prologue candidates, linear decoded
instructions, and verified functions as interchangeable measures.

Future naming should cite static control flow, callers/callees, constants,
resource references, DOS/Win32 correspondence, or runtime behavior. Preserve
resource identities and exact ranges when changing ownership. The next useful
native work is reachable control-flow recovery and the GRV/VDX interpreter
mapping; music-resource routing, custom `lut` semantics, dead paths, exact
function ends, and original private symbols remain unresolved. Continue using
the canonical build after source changes.
