# Philips CD-i The 7th Guest initial permanent disassembly

This is the initial lossless source project for the three supplied Philips
CD-i program files. Every byte is explicit NASM source, with no `incbin`.
All three reconstructed files match their original SHA-256 hashes, including
OS-9 headers, embedded modules, initialized data, reference lists, CRC bytes,
and trailing padding.

Native instructions are Motorola 68k. NASM emits exact bytes; provisional
68k mnemonics are comments. The layout follows `V`, `v32tng`, and `T7GMac`.
This pass establishes mechanical reconstruction and provisional native entries,
not complete semantic recovery. No emulator, gameplay, unit, or regression
tests were run. Mac and CD-i platform recovery is documented in the follow-up below.

## Canonical artifacts

| Original/rebuilt file | Bytes | SHA-256 |
|---|---:|---|
| `cdi_t7g` | 153,600 | `8a022ab62b21009fcd5846306186ac0b461686bcbd5d55b808f31d8160a397bb` |
| `cdi_loader` | 2,048 | `77c036ab71f58ed5ca13c46411badcb66b60f09a48ef0a3e875cf7d80fb0e66a` |
| `cdi_nodv` | 86,016 | `0954566c3c89cf1473e1248ef7dc638fa546769094961532b233ab8030744dfd` |

The supplied files identify themselves as reentrant OS-9/68K machine-language
program modules. Their sync word is `4AFCh`, type/language bytes are `01/01`,
system revision is 1, and edit edition is 1. Exact game-release provenance,
compiler, private symbols, and minimum CPU model have not been established.
A filename or edit edition is not a verified retail version number.

## First three steps completed

1. Fingerprint the supplied files and identify their OS-9/68K module format.
2. Walk declared module sizes, separate concatenated modules and trailing
   padding, and map header entry points and initialization/reference records.
3. Emit explicit byte source, attach provisional 68k decoding, split candidate
   native entry slices, and assemble the original files byte-for-byte.

The supplied scope is three extracted program files, not a complete CD image.
Media, game scripts, filesystem metadata, sector headers, and disc layout are
not available in this folder. Rebuilding these files does not rebuild a CD.

## Build

```sh
cd disassembly/cdi_t7g
./build.sh
```

Requirements: NASM, Bash, ripgrep, and SHA-256 utilities. Outputs are
`build/cdi_t7g-rebuilt`, `build/cdi_loader-rebuilt`, and
`build/cdi_nodv-rebuilt`. The build rejects `incbin`, checks source placement
and file lengths, and requires the three canonical hashes. It does not deploy
or require original binaries, Python, Capstone, Ghidra, or an emulator.
**All three outputs were assembled and their canonical hashes matched.**

NASM cannot assemble 68k mnemonics. `BITS 16` configures the byte emitter,
not the CD-i CPU. Instruction bytes use `db` with decoded comments, so a
future native 68k assembler can be introduced without changing file placement
or canonical identity. Header parity and CRC bytes are preserved; they were
not recomputed as a separate validation exercise.

## Files and embedded modules

All ranges below are half-open; the end offset is excluded.

| File | Module | File range | Declared module bytes | Entry, relative to module |
|---|---|---|---:|---:|
| `cdi_t7g` | `cdi_t7g` | `000000–014078` | 82,040 | `000050h` |
| `cdi_t7g` | `cdi_data` | `014078–0251A6` | 69,934 | `000052h` |
| `cdi_loader` | `cdi_loader` | `000000–000364` | 868 | `000054h` |
| `cdi_nodv` | `cdi_nodv` | `000000–014EE0` | 85,728 | `000052h` |

The trailing padding is 1,626 bytes in `cdi_t7g`, 1,180 in `cdi_loader`, and
288 in `cdi_nodv`. These padding bytes are outside declared module sizes and
are included in canonical file reconstruction. Individual original modules
are extracted as `resources/extracted/<module>.module`, with their own hashes
recorded in [`resources/modules.csv`](resources/modules.csv).

The OS-9 header identifies the execution entry, static-memory requirement,
stack requirement, initialized-data offset, and initialized-reference offset.
Initialization records specify a destination and a byte count. Reference
lists identify pointers requiring relocation. These fields are interpreted
according to the [Microware OS-9/68K Technical Manual, chapter 1](https://www.peripheraltech.com/OS9%20-%2068K%20V2.4%20Technical%20Manual.pdf).

| Module | Static memory bytes | Stack bytes | Initialized-data offset | Destination / initialized bytes | Reference-list offset |
|---|---:|---:|---:|---:|---:|
| `cdi_t7g` | 91,162 | 1,500 | `013ED6h` | 20,544 / 298 | `014008h` |
| `cdi_data` | 0 | 32 | `01111Ah` | 0 / 0 | `011122h` |
| `cdi_loader` | 34 | 2,000 | `00034Eh` | 32 / 2 | `000358h` |
| `cdi_nodv` | 91,144 | 2,000 | `014D56h` | 20,544 / 280 | `014E76h` |

Reference lists are currently exact byte ranges, not fully recovered variable
maps. All four symbol-table offsets are zero; no original private symbols
were recovered from a symbol table.

## Native entries and decoding limits

The initial pass uses declared module entries and in-range targets of
provisionally decoded PC-relative `BSR` and `JSR` instructions. It establishes
these emission slices:

| Module | Provisional native entry slices | Supported behavioral roles |
|---|---:|---:|
| `cdi_t7g` | 330 | 0 |
| `cdi_nodv` | 329 | 0 |
| `cdi_loader` | 5 | 5 |
| `cdi_data` | 1 | 1 |
| Total | 665 | 6 |

These are **candidate entries, not 665 verified functions**. Linear decoding
can interpret strings or tables as code and produce false calls. Each slice
ends at the next candidate entry or the chosen region end; this is an
emission convention, not proof of function boundaries. Some internal routines
will remain undiscovered, and some candidates may disappear after control-flow
analysis. No even-aligned `LINK A6` prologue patterns were found in these
inputs; that pattern cannot serve as this project's function inventory.

The decoder used the installed Capstone 5 library in big-endian 68000 mode.
It produced 51,604 provisional instruction records before source slicing.
This mode is not evidence of the exact processor or minimum CPU generation.
A `TRAP #0` plus its following service word is kept together in the first-pass
comments to avoid treating the OS-9 service selector as another instruction.
Reachability, syscall roles, indirect calls, inline data, and compiler-generated
jump tables remain under study.

[`resources/native_entries.csv`](resources/native_entries.csv) records file,
module, entry offsets, slice ends, evidence, status, and source path.
[`resources/direct_calls.csv`](resources/direct_calls.csv) preserves the direct
call observations supporting candidates. The names stay neutral until the
actual behavior is supported.

## Supported cdi_data role and payload boundaries

The complete ten-byte entry at module offset `0052h` is:

```text
0052  41 FA 10 C6   LEA module+111Ah, A0
0056  43 FA 00 04   LEA module+005Ch, A1
005A  4E 75         RTS
```

It returns two module-relative payload pointers. The working name
`return_embedded_data_pointers` describes that statically verified behavior;
it does not assert what the returned objects mean. Its exact bytes are in
`src/functions/resource_io/return_embedded_data_pointers.asm`.

| Module-relative range | Bytes | Current classification |
|---|---:|---|
| `005C–111A` | 4,286 | Unknown encoded payload, returned through A1 |
| `111A–1111A` | 65,536 | Unknown table-sized range, returned through A0 |

The first range begins with words `0258h` and `0077h` (600 and 119); image
dimensions are a possible lead, not an established format. Bytes in the second
range are all between 0 and 15. Its exact layout, indexing, and purpose remain
unknown. Both are separate data source files. The initialized-data record
starts immediately after the 65,536-byte range.

## Initial semantic leads

The player contains `cdi_data`, `get_dmodules: Couldn't find module`, and
`fmv_wnd` strings. It also contains diagnostics named `open_mpegv`,
`open_mpega`, `open_video`, object-management routines, palette routines, and
sprite operations. These are valuable clues to platform/media ownership,
but string presence alone does not establish a native routine's entry.

The loader contains `cdi_nodv`, `err_initialise`, `/cd/errors.txt`, and
`/nvr/csd`. Its recovered startup queries CSD codes 91 and 90 and selects
`cdi_nodv` if either is absent, otherwise `cdi_t7g`. The individual CSD code
meanings remain unassigned. The `cdi_nodv` file itself also contains
MPEG and FMV diagnostics, so the name does not prove those subsystems are
absent. No GRV interpreter, VDX decoder, or DOS-equivalent RL structure has
been verified in these three files.

[`resources/strings.csv`](resources/strings.csv) contains 743 candidate ASCII
runs with module offsets. Runs were selected mechanically and can include
instruction bytes attached to real strings or coincidental printable data.
It is an evidence index, not an original string-symbol table.

## October 2026 platform and Easter-egg recovery

The [platform research report](../../docs/PLATFORM_EASTER_EGGS.md) links the
documented `badger` scene selector, DVC-dependent cake-puzzle crash, and
localized `cdi_data` imagery to specific recovery targets. Those external
reports are distinguished from locally supported roles.

Five loader entries now have instruction-backed roles, recorded in
[semantic_roles.json](resources/semantic_roles.json) and the existing native
entry inventory. Their named source files live in `src/functions/platform/`
and retain original placement and entry aliases:

| Module offset | Working role |
|---|---|
| `0054` | Select player from CSD records, link and chain |
| `01D2` | Write CR/LF through I$Write |
| `01EC` | Write stack-supplied NUL-terminated string |
| `021A` | Report saved error through F$PErr and exit |
| `02B2` | Find decimal-code CSD record via I$ReadLn |

Inline strings and output templates in these slices are now annotated as data;
old linear decoding of those bytes was not executable evidence. The error-file
initializer at `0228` is separate from the terminating `021A` entry.

Together with the prior `cdi_data` pointer return, this gives **6 supported roles
among the original 665 candidate entries**. This follow-up performed no builds,
tests, hash checks or verification runs. Earlier byte-identical build results
do not constitute verification of these edits. CD-i game scripts, media and
disc layout remain outside the supplied artifact set.

## Source organization and addresses

| Path | Purpose |
|---|---|
| `src/main.asm` | Exact `cdi_t7g` file emission, including `cdi_data` |
| `src/cdi_loader.asm`, `src/cdi_nodv.asm` | Companion file emission roots |
| `src/functions/unknown/<module>_<offset>_unknown.asm` | Individual provisional native entry slices |
| `src/functions/resource_io/return_embedded_data_pointers.asm` | Supported pointer-accessor role |
| `src/data/*_module_header_and_name.asm` | Explicit OS-9 headers and module names |
| `src/data/*_initialized_data.asm` | Initialized-data records |
| `src/data/*_initialized_references.asm` | Pointer-reference lists |
| `src/data/*_crc.asm` | Original module CRC bytes |
| `src/data/*_file_padding.asm` | Exact bytes outside modules |
| `src/data/cdi_data_unknown_*.asm` | The two pointer-addressed embedded ranges |
| `resources/*.csv` | Artifact, module, candidate-entry, call, and string maps |
| `resources/extracted/` | Original individual module payloads |
| `tools/` | Optional initial-source emission and decoder tools |
| `build.sh`, `build/` | Canonical entry point and ignored reconstructed files |

Function filenames use **module-relative** entry offsets. Emission comments
use **file offsets**. For the appended `cdi_data` module:

```text
file_offset = 014078h + module_offset
runtime_address = loaded_module_base + module_offset
```

The load base has not been observed. Decoder PC-relative operands use file
coordinates in comments; subtract the containing module's file start to
compare against module-relative evidence. Native addresses and OS-9 service
selectors are not game-script opcodes.

To reproduce this initial source-emission pass from the repository root:

```sh
cc disassembly/cdi_t7g/tools/decode68k.c -lcapstone -o /tmp/cdi-decode68k
python3 disassembly/cdi_t7g/tools/emit_initial_source.py --decoder /tmp/cdi-decode68k
```

These optional tools require Python, a C compiler, and Capstone headers/library.
The emitter checks input hashes before generating source. It is a baseline
regenerator: rerunning it after hand-editing or semantic refinement can
replace generated source and CSV maps. The normal build never runs it.

## Coverage and evidence policy

All **241,664 supplied file bytes** are explicit source and rebuild exactly.
There are four declared modules, 665 provisional entry slices, one supported
native role, and zero `incbin` directives. No game-function role is verified.
No runtime or test work was performed.

Preserve module identity, original offsets, exact bytes, and supporting
callers/data references when promoting a name. DOS, Win32, or Mac behavior
can suggest candidates but does not establish a CD-i equivalent. The next
useful work is reachable control flow from module entries, loader dispatch,
indirect-call and syscall mapping, and interpretation of the two embedded
payloads. Complete media/script recovery additionally depends on the rest of
the CD files. Any source refinement must preserve the canonical build hashes.
