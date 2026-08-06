# Win32 `v32tng.exe` 1.02b1 permanent disassembly

This is the canonical lossless NASM source project for the Windows 95
Trilobyte Media Player 1.02b1. It represents every byte of the original PE in
source and rebuilds the executable byte-for-byte.

| Artifact | Size | SHA-256 |
|---|---:|---|
| Original/rebuilt `v32tng.exe` | 144,896 bytes | `3c8c3fd3edc27717ae2a08b1f98c7a58f72bd91860a080a29e40d1da8854c36c` |

Run:

```sh
./build.sh
```

The build verifies the supplied original, assembles [`main.asm`](main.asm)
without reading or importing the reference file, verifies the rebuilt hash,
and uses `cmp` to prove exact file identity. Executable-byte `incbin`
directives are prohibited throughout the source tree.

## What “complete” means today

The project has complete mechanical source coverage:

- all 144,896 raw PE file bytes are explicit NASM source;
- all PE headers, section padding, imports, resources, relocations, debug
  directories, FPO data, and the NB10 CodeView tail are explicit data;
- 336 provisional Ghidra function entries are represented individually;
- all 25,181 instructions in analyzer-owned function ranges are decoded;
- all remaining bytes are explicit `db` data;
- there are zero `incbin` directives.

This is not yet complete semantic recovery. Ghidra's function ownership is
provisional and does not reveal the original Visual C++ object-module layout.
Some explicit data may later prove to be code, jump tables, inline constants,
or alignment. Thirty entries currently have verified semantic roles; the
other 306 retain neutral address-based names.

Exact generated coverage and the complete function address map are maintained
later in this README. This file is the public, monolithic research record for
the Win32 reconstruction.

## Addresses, opcodes, and function identity

An entry such as `00408A80` is a PE virtual address identifying where a native
x86 function begins. It is not an x86 opcode and is unrelated to GRV
bytecodes. A former filename such as
`00408a80_decompress_vdx_lzss.asm` combined that address with the verified
semantic working name.

The assembler does not derive placement from filenames. Exact placement comes
from `src/layout.asm`, emission macros, labels, instruction-size guards, and
padding. Verified function files can therefore use semantic filenames without
changing the PE. Original addresses remain in source preambles and in the
function address map below. Unidentified functions retain address-bearing
filenames because the entry address is still their only trustworthy identity.

The preferred image base is `00400000h`. With no rebasing, a debugger address
such as `00408DF6h` maps directly to `open_loose_vdx`. If the module is
rebased:

```text
repository_VA = runtime_address - runtime_module_base + 00400000h
```

## Known PE provenance

| Property | Value |
|---|---|
| PE type | 32-bit Intel GUI executable |
| Linker | Microsoft linker 5.00 |
| Timestamp | 19 March 1997, 22:17:13 |
| Image base | `00400000h` |
| Entry RVA/VA | `0000DBF0h` / `0040DBF0h` |
| Sections | `.text`, `.rdata`, `.data`, `.idata`, `.rsrc`, `.reloc` |
| CodeView | NB10 |
| Embedded PDB path | `C:\Program Files\DevStudio\MyProjects\v32tng\v32tng.pdb` |

The original PDB is not present. The embedded path is valuable provenance but
does not restore original private symbols.

## Source organization

| Path | Purpose |
|---|---|
| `main.asm` | Canonical flat-PE assembly root |
| `src/layout.asm` | Exact raw-file emission order |
| `src/functions/grv/*.asm` | Verified GRV interpreter, readers, and runtime helpers |
| `src/functions/vdx/*.asm` | Verified VDX stream, frame, and LZSS routines |
| `src/functions/audio/*.asm` | Verified music/audio routines |
| `src/functions/input/*.asm` | Verified input routines |
| `src/functions/resource_io/*.asm` | Verified archive and resource-selection routines |
| `src/functions/runtime/*.asm` | Verified application startup, dispatch, state, support, and shutdown routines |
| `src/functions/unknown/*.asm` | Provisional functions retaining address-based identities |
| `src/data/chunks/*.asm` | Explicit headers, gaps, section data, and debug tail |
| `tools/function-map.tsv` | Machine-readable preserved Ghidra ownership-range export |
| `tools/generate_lossless_source.py` | Deterministic source, README-map, and byte-identity generator |

The semantic directories express verified subsystem ownership. They are not
claims about the original Visual C++ object modules.

NASM emits mnemonic source only when it reproduces the historical encoding
exactly. If NASM's preferred encoding differs, the generated source retains
the exact opcode bytes with the decoded virtual address and mnemonic in its
comment. Those lines are decoded instructions, not opaque regions.

To regenerate the complete source tree:

```sh
python3 tools/generate_lossless_source.py \
  --reference ../../research/v32tng/v32tng.exe
```

The default ownership input is `tools/function-map.tsv`. The optional
`--function-map` argument can select another compatible Ghidra export. The
generator rewrites generated function/data/layout files, refreshes the
coverage and address-map sections in this README, and refuses to finish unless
its independently assembled probe is byte-identical.

## Verified semantic footholds

Verified roles include:

- the central GRV VM and its byte, word, and dword operand readers;
- keyboard-buffer dequeue and Miles MIDI playback-status checks;
- exact-name loose VDX opening and the little-endian `9267h` magic check;
- empty command line versus loose-VDX game dispatch;
- `SETUPEXEC` handling and the WinMain message loop;
- named-semaphore single-instance enforcement;
- archive, resource, subsystem, and game-state initialization;
- `script.grv` loading;
- VDX stream configuration and playback;
- parameterized VDX LZSS decompression;
- `20h` still-frame and `25h` palette/tile-delta decoding;
- global player shutdown;
- the PE entry point and recognized `strcmp` runtime.

The cross-version `SCRIPT.GRV` startup/save/audio correlation is recorded in
[`../GRV/MAIN_MENU_BOOT_TRACE.md`](../GRV/MAIN_MENU_BOOT_TRACE.md).

## Naming and evidence policy

Recovered labels are semantic working names, not claims about exact original
PDB identifiers. Record whether a proposed name comes from:

- **static** control flow, constants, imports, globals, and data references;
- **cross-version** correspondence with DOS, demo, or other Win32 code;
- **runtime** inputs, outputs, calls, side effects, and reached game state;
- **external** documentation or an original artifact.

Keep uncertain interpretations as notes or `candidate_...` names. Promote a
role when it is specific and repeatable, ideally supported by two independent
evidence types. Every source or ownership change must retain a green
`./build.sh` result.

Systematic evidence can recover accurate behavioral names for reachable
functions. Exact original private symbol spelling, comments, filenames, and
object-module boundaries require the missing PDB, map, source, or an equivalent
original artifact.

## Runtime evidence workflow

ProcMon, API traces, and debugger captures can progressively replace neutral
address-based names while the exact PE rebuild remains the regression oracle.

For every observation, preserve:

1. executable SHA-256 and complete command line;
2. Windows version or compatibility environment and relevant media
   configuration;
3. game state, script/room, user input, and visible or audible result;
4. instruction address, caller/return address, registers, stack, and flags;
5. relevant pointed-to buffers and modified globals;
6. file, registry, multimedia, DirectDraw, window, and message activity;
7. whether the behavior reproduced on another run.

Search the function address map below for the normalized repository address,
or search source comments for its eight-digit hexadecimal form.

<!-- BEGIN GENERATED FUNCTION REFERENCE -->
## Lossless source coverage

This inventory describes **mechanical source coverage**, not complete semantic
understanding.

| Measure | Count |
|---|---:|
| PE file bytes represented in source | 144,896 / 144,896 |
| `incbin` directives | 0 |
| Provisional Ghidra function entries | 336 |
| Function-body bytes | 81,159 |
| Function-body instructions decoded | 25,181 |
| Instructions requiring exact `db` encoding fallback | 1,992 |
| Bytes in encoding fallbacks | 4,159 |
| Verified semantic function roles | 30 |
| Unidentified/provisionally bounded functions | 306 |
| Non-function PE file bytes | 63,737 |

All headers, section padding, code gaps, `.rdata`, `.data`, imports, resources,
relocations, and the raw debug tail are explicit NASM data. Every decoded
instruction retains its PE virtual address and original opcode bytes.

A `db` line inside a function means the instruction is decoded but NASM's
preferred spelling emits different bytes. Its mnemonic remains in the comment.
Analyzer ownership is provisional: explicit data may later prove to be code,
jump tables, inline constants, or alignment.

## Function address map

This is the permanent research and reversibility map. Entry values are PE
virtual addresses, not CPU or GRV opcodes. Verified filenames are semantic and
address-free; unidentified filenames retain their only trustworthy identity.
Owned ranges are inclusive PE virtual-address ranges.

| PE virtual entry | Status | Working name | Analyzer symbol | Owned ranges | Source |
|---:|---|---|---|---|---|
| `00401000` | unidentified | `func_00401000` | `FUN_00401000` | `00401000–00401160` | [`src/functions/unknown/00401000_func_00401000.asm`](src/functions/unknown/00401000_func_00401000.asm) |
| `00401161` | unidentified | `func_00401161` | `FUN_00401161` | `00401161–004011A2` | [`src/functions/unknown/00401161_func_00401161.asm`](src/functions/unknown/00401161_func_00401161.asm) |
| `004011A3` | verified-role | `load_grv_script_file` | `FUN_004011a3` | `004011A3–00401201` | [`src/functions/grv/load_grv_script_file.asm`](src/functions/grv/load_grv_script_file.asm) |
| `00401202` | verified-role | `initialize_grv_runtime_and_load_script` | `FUN_00401202` | `00401202–0040136D` | [`src/functions/grv/initialize_grv_runtime_and_load_script.asm`](src/functions/grv/initialize_grv_runtime_and_load_script.asm) |
| `0040136E` | unidentified | `func_0040136e` | `FUN_0040136e` | `0040136E–00401448` | [`src/functions/unknown/0040136e_func_0040136e.asm`](src/functions/unknown/0040136e_func_0040136e.asm) |
| `00401449` | verified-role | `grv_read_u8` | `FUN_00401449` | `00401449–00401472` | [`src/functions/grv/grv_read_u8.asm`](src/functions/grv/grv_read_u8.asm) |
| `00401473` | verified-role | `grv_read_u16_le` | `FUN_00401473` | `00401473–004014CA` | [`src/functions/grv/grv_read_u16_le.asm`](src/functions/grv/grv_read_u16_le.asm) |
| `004014CB` | verified-role | `grv_read_u32_le` | `FUN_004014cb` | `004014CB–00401571` | [`src/functions/grv/grv_read_u32_le.asm`](src/functions/grv/grv_read_u32_le.asm) |
| `00401572` | unidentified | `func_00401572` | `FUN_00401572` | `00401572–004015BE` | [`src/functions/unknown/00401572_func_00401572.asm`](src/functions/unknown/00401572_func_00401572.asm) |
| `004015BF` | unidentified | `func_004015bf` | `FUN_004015bf` | `004015BF–004015E5` | [`src/functions/unknown/004015bf_func_004015bf.asm`](src/functions/unknown/004015bf_func_004015bf.asm) |
| `004015E6` | unidentified | `func_004015e6` | `FUN_004015e6` | `004015E6–0040179A` | [`src/functions/unknown/004015e6_func_004015e6.asm`](src/functions/unknown/004015e6_func_004015e6.asm) |
| `0040179B` | unidentified | `func_0040179b` | `FUN_0040179b` | `0040179B–004017ED` | [`src/functions/unknown/0040179b_func_0040179b.asm`](src/functions/unknown/0040179b_func_0040179b.asm) |
| `004017EE` | unidentified | `func_004017ee` | `FUN_004017ee` | `004017EE–00401832` | [`src/functions/unknown/004017ee_func_004017ee.asm`](src/functions/unknown/004017ee_func_004017ee.asm) |
| `00401833` | unidentified | `func_00401833` | `FUN_00401833` | `00401833–00401BB2` | [`src/functions/unknown/00401833_func_00401833.asm`](src/functions/unknown/00401833_func_00401833.asm) |
| `00401BB3` | unidentified | `func_00401bb3` | `FUN_00401bb3` | `00401BB3–00401BFC` | [`src/functions/unknown/00401bb3_func_00401bb3.asm`](src/functions/unknown/00401bb3_func_00401bb3.asm) |
| `00401BFD` | unidentified | `func_00401bfd` | `FUN_00401bfd` | `00401BFD–00401C54` | [`src/functions/unknown/00401bfd_func_00401bfd.asm`](src/functions/unknown/00401bfd_func_00401bfd.asm) |
| `00401C55` | unidentified | `func_00401c55` | `FUN_00401c55` | `00401C55–00401C98` | [`src/functions/unknown/00401c55_func_00401c55.asm`](src/functions/unknown/00401c55_func_00401c55.asm) |
| `00401C99` | unidentified | `func_00401c99` | `FUN_00401c99` | `00401C99–00401CDC` | [`src/functions/unknown/00401c99_func_00401c99.asm`](src/functions/unknown/00401c99_func_00401c99.asm) |
| `00401CDD` | unidentified | `func_00401cdd` | `FUN_00401cdd` | `00401CDD–00401D39` | [`src/functions/unknown/00401cdd_func_00401cdd.asm`](src/functions/unknown/00401cdd_func_00401cdd.asm) |
| `00401D3A` | verified-role | `select_grv_video_resource` | `FUN_00401d3a` | `00401D3A–00401F5E` | [`src/functions/resource_io/select_grv_video_resource.asm`](src/functions/resource_io/select_grv_video_resource.asm) |
| `00401F5F` | verified-role | `select_grv_song_resource` | `FUN_00401f5f` | `00401F5F–00402066` | [`src/functions/resource_io/select_grv_song_resource.asm`](src/functions/resource_io/select_grv_song_resource.asm) |
| `00402067` | unidentified | `func_00402067` | `FUN_00402067` | `00402067–004020E6` | [`src/functions/unknown/00402067_func_00402067.asm`](src/functions/unknown/00402067_func_00402067.asm) |
| `004020E7` | unidentified | `func_004020e7` | `FUN_004020e7` | `004020E7–00402171` | [`src/functions/unknown/004020e7_func_004020e7.asm`](src/functions/unknown/004020e7_func_004020e7.asm) |
| `00402172` | unidentified | `func_00402172` | `FUN_00402172` | `00402172–004021D0` | [`src/functions/unknown/00402172_func_00402172.asm`](src/functions/unknown/00402172_func_00402172.asm) |
| `004021D1` | verified-role | `run_grv_vm` | `FUN_004021d1` | `004021D1–004041DF` | [`src/functions/grv/run_grv_vm.asm`](src/functions/grv/run_grv_vm.asm) |
| `00404350` | verified-role | `init_game_subsystems` | `FUN_00404350` | `00404350–0040441C` | [`src/functions/runtime/init_game_subsystems.asm`](src/functions/runtime/init_game_subsystems.asm) |
| `0040441D` | unidentified | `func_0040441d` | `FUN_0040441d` | `0040441D–00404468` | [`src/functions/unknown/0040441d_func_0040441d.asm`](src/functions/unknown/0040441d_func_0040441d.asm) |
| `00404469` | unidentified | `func_00404469` | `FUN_00404469` | `00404469–00404982` | [`src/functions/unknown/00404469_func_00404469.asm`](src/functions/unknown/00404469_func_00404469.asm) |
| `00404983` | unidentified | `func_00404983` | `FUN_00404983` | `00404983–00404CA1` | [`src/functions/unknown/00404983_func_00404983.asm`](src/functions/unknown/00404983_func_00404983.asm) |
| `00404CA2` | unidentified | `func_00404ca2` | `FUN_00404ca2` | `00404CA2–00404E77` | [`src/functions/unknown/00404ca2_func_00404ca2.asm`](src/functions/unknown/00404ca2_func_00404ca2.asm) |
| `00404E80` | unidentified | `func_00404e80` | `FUN_00404e80` | `00404E80–00404EBA` | [`src/functions/unknown/00404e80_func_00404e80.asm`](src/functions/unknown/00404e80_func_00404e80.asm) |
| `00404EBB` | unidentified | `func_00404ebb` | `FUN_00404ebb` | `00404EBB–00404EF5` | [`src/functions/unknown/00404ebb_func_00404ebb.asm`](src/functions/unknown/00404ebb_func_00404ebb.asm) |
| `00404EF6` | unidentified | `func_00404ef6` | `FUN_00404ef6` | `00404EF6–00404F01` | [`src/functions/unknown/00404ef6_func_00404ef6.asm`](src/functions/unknown/00404ef6_func_00404ef6.asm) |
| `00404F02` | unidentified | `func_00404f02` | `FUN_00404f02` | `00404F02–00404F8F` | [`src/functions/unknown/00404f02_func_00404f02.asm`](src/functions/unknown/00404f02_func_00404f02.asm) |
| `00404F90` | unidentified | `func_00404f90` | `FUN_00404f90` | `00404F90–00405044` | [`src/functions/unknown/00404f90_func_00404f90.asm`](src/functions/unknown/00404f90_func_00404f90.asm) |
| `00405045` | unidentified | `func_00405045` | `FUN_00405045` | `00405045–00405094` | [`src/functions/unknown/00405045_func_00405045.asm`](src/functions/unknown/00405045_func_00405045.asm) |
| `00405095` | unidentified | `func_00405095` | `FUN_00405095` | `00405095–004050AE` | [`src/functions/unknown/00405095_func_00405095.asm`](src/functions/unknown/00405095_func_00405095.asm) |
| `004050AF` | unidentified | `func_004050af` | `FUN_004050af` | `004050AF–00405290` | [`src/functions/unknown/004050af_func_004050af.asm`](src/functions/unknown/004050af_func_004050af.asm) |
| `00405291` | unidentified | `func_00405291` | `FUN_00405291` | `00405291–004054B3` | [`src/functions/unknown/00405291_func_00405291.asm`](src/functions/unknown/00405291_func_00405291.asm) |
| `004054B4` | unidentified | `func_004054b4` | `FUN_004054b4` | `004054B4–0040563B` | [`src/functions/unknown/004054b4_func_004054b4.asm`](src/functions/unknown/004054b4_func_004054b4.asm) |
| `0040563C` | unidentified | `func_0040563c` | `FUN_0040563c` | `0040563C–004056B1` | [`src/functions/unknown/0040563c_func_0040563c.asm`](src/functions/unknown/0040563c_func_0040563c.asm) |
| `004056B2` | unidentified | `func_004056b2` | `FUN_004056b2` | `004056B2–004058AE` | [`src/functions/unknown/004056b2_func_004056b2.asm`](src/functions/unknown/004056b2_func_004056b2.asm) |
| `004058AF` | unidentified | `func_004058af` | `FUN_004058af` | `004058AF–004059A6` | [`src/functions/unknown/004058af_func_004058af.asm`](src/functions/unknown/004058af_func_004058af.asm) |
| `004059A7` | unidentified | `func_004059a7` | `FUN_004059a7` | `004059A7–004059D6` | [`src/functions/unknown/004059a7_func_004059a7.asm`](src/functions/unknown/004059a7_func_004059a7.asm) |
| `004059D7` | unidentified | `func_004059d7` | `FUN_004059d7` | `004059D7–00405A23` | [`src/functions/unknown/004059d7_func_004059d7.asm`](src/functions/unknown/004059d7_func_004059d7.asm) |
| `00405A24` | unidentified | `func_00405a24` | `FUN_00405a24` | `00405A24–00405B6E` | [`src/functions/unknown/00405a24_func_00405a24.asm`](src/functions/unknown/00405a24_func_00405a24.asm) |
| `00405B6F` | unidentified | `func_00405b6f` | `FUN_00405b6f` | `00405B6F–00405BC1` | [`src/functions/unknown/00405b6f_func_00405b6f.asm`](src/functions/unknown/00405b6f_func_00405b6f.asm) |
| `00405BC2` | unidentified | `func_00405bc2` | `FUN_00405bc2` | `00405BC2–00405C14` | [`src/functions/unknown/00405bc2_func_00405bc2.asm`](src/functions/unknown/00405bc2_func_00405bc2.asm) |
| `00405C15` | unidentified | `func_00405c15` | `FUN_00405c15` | `00405C15–00405C67` | [`src/functions/unknown/00405c15_func_00405c15.asm`](src/functions/unknown/00405c15_func_00405c15.asm) |
| `00405C68` | unidentified | `func_00405c68` | `FUN_00405c68` | `00405C68–00405CBA` | [`src/functions/unknown/00405c68_func_00405c68.asm`](src/functions/unknown/00405c68_func_00405c68.asm) |
| `00405CBB` | unidentified | `func_00405cbb` | `FUN_00405cbb` | `00405CBB–0040604B` | [`src/functions/unknown/00405cbb_func_00405cbb.asm`](src/functions/unknown/00405cbb_func_00405cbb.asm) |
| `0040604C` | unidentified | `func_0040604c` | `FUN_0040604c` | `0040604C–004062FC` | [`src/functions/unknown/0040604c_func_0040604c.asm`](src/functions/unknown/0040604c_func_0040604c.asm) |
| `004062FD` | unidentified | `func_004062fd` | `FUN_004062fd` | `004062FD–00406323` | [`src/functions/unknown/004062fd_func_004062fd.asm`](src/functions/unknown/004062fd_func_004062fd.asm) |
| `00406324` | unidentified | `func_00406324` | `FUN_00406324` | `00406324–00406426` | [`src/functions/unknown/00406324_func_00406324.asm`](src/functions/unknown/00406324_func_00406324.asm) |
| `00406427` | unidentified | `func_00406427` | `FUN_00406427` | `00406427–004066A8` | [`src/functions/unknown/00406427_func_00406427.asm`](src/functions/unknown/00406427_func_00406427.asm) |
| `004066A9` | unidentified | `func_004066a9` | `FUN_004066a9` | `004066A9–00406808` | [`src/functions/unknown/004066a9_func_004066a9.asm`](src/functions/unknown/004066a9_func_004066a9.asm) |
| `00406809` | unidentified | `func_00406809` | `FUN_00406809` | `00406809–004068AF` | [`src/functions/unknown/00406809_func_00406809.asm`](src/functions/unknown/00406809_func_00406809.asm) |
| `004068B0` | unidentified | `func_004068b0` | `FUN_004068b0` | `004068B0–00406992` | [`src/functions/unknown/004068b0_func_004068b0.asm`](src/functions/unknown/004068b0_func_004068b0.asm) |
| `004069A0` | unidentified | `func_004069a0` | `FUN_004069a0` | `004069A0–004069C6` | [`src/functions/unknown/004069a0_func_004069a0.asm`](src/functions/unknown/004069a0_func_004069a0.asm) |
| `004069C7` | unidentified | `func_004069c7` | `FUN_004069c7` | `004069C7–004069E4` | [`src/functions/unknown/004069c7_func_004069c7.asm`](src/functions/unknown/004069c7_func_004069c7.asm) |
| `004069E5` | verified-role | `dequeue_key_input` | `FUN_004069e5` | `004069E5–00406A47` | [`src/functions/input/dequeue_key_input.asm`](src/functions/input/dequeue_key_input.asm) |
| `00406A48` | unidentified | `func_00406a48` | `FUN_00406a48` | `00406A48–00406AAE` | [`src/functions/unknown/00406a48_func_00406a48.asm`](src/functions/unknown/00406a48_func_00406a48.asm) |
| `00406AB0` | unidentified | `func_00406ab0` | `FUN_00406ab0` | `00406AB0–00406AE8` | [`src/functions/unknown/00406ab0_func_00406ab0.asm`](src/functions/unknown/00406ab0_func_00406ab0.asm) |
| `00406AE9` | unidentified | `func_00406ae9` | `FUN_00406ae9` | `00406AE9–00406B13` | [`src/functions/unknown/00406ae9_func_00406ae9.asm`](src/functions/unknown/00406ae9_func_00406ae9.asm) |
| `00406B14` | unidentified | `func_00406b14` | `FUN_00406b14` | `00406B14–00406D15` | [`src/functions/unknown/00406b14_func_00406b14.asm`](src/functions/unknown/00406b14_func_00406b14.asm) |
| `00406D16` | unidentified | `func_00406d16` | `FUN_00406d16` | `00406D16–00406D39` | [`src/functions/unknown/00406d16_func_00406d16.asm`](src/functions/unknown/00406d16_func_00406d16.asm) |
| `00406D40` | unidentified | `func_00406d40` | `FUN_00406d40` | `00406D40–00406D8D` | [`src/functions/unknown/00406d40_func_00406d40.asm`](src/functions/unknown/00406d40_func_00406d40.asm) |
| `00406D8E` | unidentified | `func_00406d8e` | `FUN_00406d8e` | `00406D8E–00406E27` | [`src/functions/unknown/00406d8e_func_00406d8e.asm`](src/functions/unknown/00406d8e_func_00406d8e.asm) |
| `00406E28` | unidentified | `func_00406e28` | `FUN_00406e28` | `00406E28–00406FAD` | [`src/functions/unknown/00406e28_func_00406e28.asm`](src/functions/unknown/00406e28_func_00406e28.asm) |
| `00406FAE` | unidentified | `func_00406fae` | `FUN_00406fae` | `00406FAE–00407048` | [`src/functions/unknown/00406fae_func_00406fae.asm`](src/functions/unknown/00406fae_func_00406fae.asm) |
| `00407049` | unidentified | `func_00407049` | `FUN_00407049` | `00407049–0040709E` | [`src/functions/unknown/00407049_func_00407049.asm`](src/functions/unknown/00407049_func_00407049.asm) |
| `0040709F` | unidentified | `func_0040709f` | `FUN_0040709f` | `0040709F–0040712B` | [`src/functions/unknown/0040709f_func_0040709f.asm`](src/functions/unknown/0040709f_func_0040709f.asm) |
| `0040712C` | unidentified | `func_0040712c` | `FUN_0040712c` | `0040712C–00407145` | [`src/functions/unknown/0040712c_func_0040712c.asm`](src/functions/unknown/0040712c_func_0040712c.asm) |
| `00407146` | verified-role | `is_midi_sequence_playing` | `FUN_00407146` | `00407146–0040716D` | [`src/functions/audio/is_midi_sequence_playing.asm`](src/functions/audio/is_midi_sequence_playing.asm) |
| `0040716E` | unidentified | `func_0040716e` | `FUN_0040716e` | `0040716E–00407187` | [`src/functions/unknown/0040716e_func_0040716e.asm`](src/functions/unknown/0040716e_func_0040716e.asm) |
| `00407188` | unidentified | `func_00407188` | `FUN_00407188` | `00407188–004071D3` | [`src/functions/unknown/00407188_func_00407188.asm`](src/functions/unknown/00407188_func_00407188.asm) |
| `004071D4` | unidentified | `func_004071d4` | `FUN_004071d4` | `004071D4–004071F1` | [`src/functions/unknown/004071d4_func_004071d4.asm`](src/functions/unknown/004071d4_func_004071d4.asm) |
| `004071F2` | unidentified | `func_004071f2` | `FUN_004071f2` | `004071F2–0040728F` | [`src/functions/unknown/004071f2_func_004071f2.asm`](src/functions/unknown/004071f2_func_004071f2.asm) |
| `00407290` | unidentified | `func_00407290` | `FUN_00407290` | `00407290–004072A0` | [`src/functions/unknown/00407290_func_00407290.asm`](src/functions/unknown/00407290_func_00407290.asm) |
| `004072A1` | unidentified | `func_004072a1` | `FUN_004072a1` | `004072A1–00407301` | [`src/functions/unknown/004072a1_func_004072a1.asm`](src/functions/unknown/004072a1_func_004072a1.asm) |
| `00407302` | unidentified | `func_00407302` | `FUN_00407302` | `00407302–004074C0` | [`src/functions/unknown/00407302_func_00407302.asm`](src/functions/unknown/00407302_func_00407302.asm) |
| `004074C1` | unidentified | `func_004074c1` | `FUN_004074c1` | `004074C1–00407506` | [`src/functions/unknown/004074c1_func_004074c1.asm`](src/functions/unknown/004074c1_func_004074c1.asm) |
| `00407507` | unidentified | `func_00407507` | `FUN_00407507` | `00407507–004075AC` | [`src/functions/unknown/00407507_func_00407507.asm`](src/functions/unknown/00407507_func_00407507.asm) |
| `004075AD` | unidentified | `func_004075ad` | `FUN_004075ad` | `004075AD–00407637` | [`src/functions/unknown/004075ad_func_004075ad.asm`](src/functions/unknown/004075ad_func_004075ad.asm) |
| `00407638` | unidentified | `func_00407638` | `FUN_00407638` | `00407638–0040766C` | [`src/functions/unknown/00407638_func_00407638.asm`](src/functions/unknown/00407638_func_00407638.asm) |
| `00407670` | unidentified | `func_00407670` | `FUN_00407670` | `00407670–0040768B` | [`src/functions/unknown/00407670_func_00407670.asm`](src/functions/unknown/00407670_func_00407670.asm) |
| `0040768C` | unidentified | `func_0040768c` | `FUN_0040768c` | `0040768C–00407747` | [`src/functions/unknown/0040768c_func_0040768c.asm`](src/functions/unknown/0040768c_func_0040768c.asm) |
| `00407748` | unidentified | `func_00407748` | `FUN_00407748` | `00407748–004077E4` | [`src/functions/unknown/00407748_func_00407748.asm`](src/functions/unknown/00407748_func_00407748.asm) |
| `004077E5` | unidentified | `func_004077e5` | `FUN_004077e5` | `004077E5–00407841` | [`src/functions/unknown/004077e5_func_004077e5.asm`](src/functions/unknown/004077e5_func_004077e5.asm) |
| `00407842` | unidentified | `func_00407842` | `FUN_00407842` | `00407842–004078B2` | [`src/functions/unknown/00407842_func_00407842.asm`](src/functions/unknown/00407842_func_00407842.asm) |
| `004078B3` | unidentified | `func_004078b3` | `FUN_004078b3` | `004078B3–00407930` | [`src/functions/unknown/004078b3_func_004078b3.asm`](src/functions/unknown/004078b3_func_004078b3.asm) |
| `00407931` | unidentified | `func_00407931` | `FUN_00407931` | `00407931–00407A75` | [`src/functions/unknown/00407931_func_00407931.asm`](src/functions/unknown/00407931_func_00407931.asm) |
| `00407A76` | unidentified | `func_00407a76` | `FUN_00407a76` | `00407A76–00407AE6` | [`src/functions/unknown/00407a76_func_00407a76.asm`](src/functions/unknown/00407a76_func_00407a76.asm) |
| `00407AE7` | unidentified | `func_00407ae7` | `FUN_00407ae7` | `00407AE7–00407B0C` | [`src/functions/unknown/00407ae7_func_00407ae7.asm`](src/functions/unknown/00407ae7_func_00407ae7.asm) |
| `00407B0D` | unidentified | `func_00407b0d` | `FUN_00407b0d` | `00407B0D–00407B5D` | [`src/functions/unknown/00407b0d_func_00407b0d.asm`](src/functions/unknown/00407b0d_func_00407b0d.asm) |
| `00407B5E` | unidentified | `func_00407b5e` | `FUN_00407b5e` | `00407B5E–00407BC1` | [`src/functions/unknown/00407b5e_func_00407b5e.asm`](src/functions/unknown/00407b5e_func_00407b5e.asm) |
| `00407BC2` | unidentified | `func_00407bc2` | `FUN_00407bc2` | `00407BC2–00407C28` | [`src/functions/unknown/00407bc2_func_00407bc2.asm`](src/functions/unknown/00407bc2_func_00407bc2.asm) |
| `00407C29` | unidentified | `func_00407c29` | `FUN_00407c29` | `00407C29–00407F2C` | [`src/functions/unknown/00407c29_func_00407c29.asm`](src/functions/unknown/00407c29_func_00407c29.asm) |
| `00407F2D` | unidentified | `func_00407f2d` | `FUN_00407f2d` | `00407F2D–0040800C` | [`src/functions/unknown/00407f2d_func_00407f2d.asm`](src/functions/unknown/00407f2d_func_00407f2d.asm) |
| `0040800D` | unidentified | `func_0040800d` | `FUN_0040800d` | `0040800D–0040804A` | [`src/functions/unknown/0040800d_func_0040800d.asm`](src/functions/unknown/0040800d_func_0040800d.asm) |
| `00408050` | unidentified | `func_00408050` | `FUN_00408050` | `00408050–004080AC` | [`src/functions/unknown/00408050_func_00408050.asm`](src/functions/unknown/00408050_func_00408050.asm) |
| `004080AD` | unidentified | `func_004080ad` | `FUN_004080ad` | `004080AD–004087FA` | [`src/functions/unknown/004080ad_func_004080ad.asm`](src/functions/unknown/004080ad_func_004080ad.asm) |
| `004087FB` | unidentified | `func_004087fb` | `FUN_004087fb` | `004087FB–0040881D` | [`src/functions/unknown/004087fb_func_004087fb.asm`](src/functions/unknown/004087fb_func_004087fb.asm) |
| `0040881E` | unidentified | `func_0040881e` | `FUN_0040881e` | `0040881E–00408845` | [`src/functions/unknown/0040881e_func_0040881e.asm`](src/functions/unknown/0040881e_func_0040881e.asm) |
| `00408846` | unidentified | `func_00408846` | `FUN_00408846` | `00408846–0040891F` | [`src/functions/unknown/00408846_func_00408846.asm`](src/functions/unknown/00408846_func_00408846.asm) |
| `00408920` | unidentified | `func_00408920` | `FUN_00408920` | `00408920–00408A7D` | [`src/functions/unknown/00408920_func_00408920.asm`](src/functions/unknown/00408920_func_00408920.asm) |
| `00408A80` | verified-role | `decompress_vdx_lzss` | `FUN_00408a80` | `00408A80–00408BB3` | [`src/functions/vdx/decompress_vdx_lzss.asm`](src/functions/vdx/decompress_vdx_lzss.asm) |
| `00408BB4` | unidentified | `func_00408bb4` | `FUN_00408bb4` | `00408BB4–00408CF4` | [`src/functions/unknown/00408bb4_func_00408bb4.asm`](src/functions/unknown/00408bb4_func_00408bb4.asm) |
| `00408D00` | unidentified | `func_00408d00` | `FUN_00408d00` | `00408D00–00408D11` | [`src/functions/unknown/00408d00_func_00408d00.asm`](src/functions/unknown/00408d00_func_00408d00.asm) |
| `00408D12` | unidentified | `func_00408d12` | `FUN_00408d12` | `00408D12–00408D23` | [`src/functions/unknown/00408d12_func_00408d12.asm`](src/functions/unknown/00408d12_func_00408d12.asm) |
| `00408D24` | unidentified | `func_00408d24` | `FUN_00408d24` | `00408D24–00408DF5` | [`src/functions/unknown/00408d24_func_00408d24.asm`](src/functions/unknown/00408d24_func_00408d24.asm) |
| `00408DF6` | verified-role | `open_loose_vdx` | `FUN_00408df6` | `00408DF6–00408E74` | [`src/functions/vdx/open_loose_vdx.asm`](src/functions/vdx/open_loose_vdx.asm) |
| `00408E75` | verified-role | `dispatch_game_or_loose_vdx` | `FUN_00408e75` | `00408E75–00408EB6` | [`src/functions/runtime/dispatch_game_or_loose_vdx.asm`](src/functions/runtime/dispatch_game_or_loose_vdx.asm) |
| `00408EB7` | verified-role | `pump_media_and_game` | `FUN_00408eb7` | `00408EB7–00408F0F` | [`src/functions/runtime/pump_media_and_game.asm`](src/functions/runtime/pump_media_and_game.asm) |
| `00408F10` | unidentified | `func_00408f10` | `FUN_00408f10` | `00408F10–00408F2D` | [`src/functions/unknown/00408f10_func_00408f10.asm`](src/functions/unknown/00408f10_func_00408f10.asm) |
| `00408F30` | unidentified | `func_00408f30` | `FUN_00408f30` | `00408F30–0040927A` | [`src/functions/unknown/00408f30_func_00408f30.asm`](src/functions/unknown/00408f30_func_00408f30.asm) |
| `00409396` | unidentified | `func_00409396` | `FUN_00409396` | `00409396–00409502` | [`src/functions/unknown/00409396_func_00409396.asm`](src/functions/unknown/00409396_func_00409396.asm) |
| `00409503` | unidentified | `func_00409503` | `FUN_00409503` | `00409503–00409511` | [`src/functions/unknown/00409503_func_00409503.asm`](src/functions/unknown/00409503_func_00409503.asm) |
| `00409512` | unidentified | `func_00409512` | `FUN_00409512` | `00409512–004095D6` | [`src/functions/unknown/00409512_func_00409512.asm`](src/functions/unknown/00409512_func_00409512.asm) |
| `004095D7` | verified-role | `enforce_single_instance` | `FUN_004095d7` | `004095D7–0040965A` | [`src/functions/runtime/enforce_single_instance.asm`](src/functions/runtime/enforce_single_instance.asm) |
| `0040965B` | unidentified | `func_0040965b` | `FUN_0040965b` | `0040965B–00409690` | [`src/functions/unknown/0040965b_func_0040965b.asm`](src/functions/unknown/0040965b_func_0040965b.asm) |
| `00409691` | verified-role | `fatal_media_error` | `FUN_00409691` | `00409691–004096EF` | [`src/functions/runtime/fatal_media_error.asm`](src/functions/runtime/fatal_media_error.asm) |
| `004096F0` | verified-role | `shutdown_player` | `FUN_004096f0` | `004096F0–0040975F` | [`src/functions/runtime/shutdown_player.asm`](src/functions/runtime/shutdown_player.asm) |
| `00409760` | unidentified | `func_00409760` | `FUN_00409760` | `00409760–0040977A` | [`src/functions/unknown/00409760_func_00409760.asm`](src/functions/unknown/00409760_func_00409760.asm) |
| `0040977B` | verified-role | `winmain` | `FUN_0040977b` | `0040977B–0040984F` | [`src/functions/runtime/winmain.asm`](src/functions/runtime/winmain.asm) |
| `00409850` | verified-role | `setup_window_and_runtime` | `FUN_00409850` | `00409850–00409A88` | [`src/functions/runtime/setup_window_and_runtime.asm`](src/functions/runtime/setup_window_and_runtime.asm) |
| `00409A90` | verified-role | `init_game_state` | `FUN_00409a90` | `00409A90–00409AB5` | [`src/functions/runtime/init_game_state.asm`](src/functions/runtime/init_game_state.asm) |
| `00409AB6` | unidentified | `func_00409ab6` | `FUN_00409ab6` | `00409AB6–00409B1C` | [`src/functions/unknown/00409ab6_func_00409ab6.asm`](src/functions/unknown/00409ab6_func_00409ab6.asm) |
| `00409B1D` | unidentified | `func_00409b1d` | `FUN_00409b1d` | `00409B1D–00409C7A`<br>`00409C98–00409D1D` | [`src/functions/unknown/00409b1d_func_00409b1d.asm`](src/functions/unknown/00409b1d_func_00409b1d.asm) |
| `00409D1E` | unidentified | `func_00409d1e` | `FUN_00409d1e` | `00409D1E–00409D54` | [`src/functions/unknown/00409d1e_func_00409d1e.asm`](src/functions/unknown/00409d1e_func_00409d1e.asm) |
| `00409D55` | unidentified | `func_00409d55` | `FUN_00409d55` | `00409D55–00409D63` | [`src/functions/unknown/00409d55_func_00409d55.asm`](src/functions/unknown/00409d55_func_00409d55.asm) |
| `00409D64` | unidentified | `func_00409d64` | `FUN_00409d64` | `00409D64–00409E16`<br>`00409E34–00409E84` | [`src/functions/unknown/00409d64_func_00409d64.asm`](src/functions/unknown/00409d64_func_00409d64.asm) |
| `00409E85` | unidentified | `func_00409e85` | `FUN_00409e85` | `00409E85–00409F09` | [`src/functions/unknown/00409e85_func_00409e85.asm`](src/functions/unknown/00409e85_func_00409e85.asm) |
| `00409F0A` | unidentified | `func_00409f0a` | `FUN_00409f0a` | `00409F0A–00409F19` | [`src/functions/unknown/00409f0a_func_00409f0a.asm`](src/functions/unknown/00409f0a_func_00409f0a.asm) |
| `00409F1A` | unidentified | `func_00409f1a` | `FUN_00409f1a` | `00409F1A–0040A231`<br>`0040A24F–0040A29E` | [`src/functions/unknown/00409f1a_func_00409f1a.asm`](src/functions/unknown/00409f1a_func_00409f1a.asm) |
| `0040A29F` | unidentified | `func_0040a29f` | `FUN_0040a29f` | `0040A29F–0040A39E` | [`src/functions/unknown/0040a29f_func_0040a29f.asm`](src/functions/unknown/0040a29f_func_0040a29f.asm) |
| `0040A39F` | unidentified | `func_0040a39f` | `FUN_0040a39f` | `0040A39F–0040A3ED` | [`src/functions/unknown/0040a39f_func_0040a39f.asm`](src/functions/unknown/0040a39f_func_0040a39f.asm) |
| `0040A3EE` | unidentified | `func_0040a3ee` | `FUN_0040a3ee` | `0040A3EE–0040A420` | [`src/functions/unknown/0040a3ee_func_0040a3ee.asm`](src/functions/unknown/0040a3ee_func_0040a3ee.asm) |
| `0040A430` | unidentified | `func_0040a430` | `FUN_0040a430` | `0040A430–0040A739` | [`src/functions/unknown/0040a430_func_0040a430.asm`](src/functions/unknown/0040a430_func_0040a430.asm) |
| `0040A73A` | unidentified | `func_0040a73a` | `FUN_0040a73a` | `0040A73A–0040A785` | [`src/functions/unknown/0040a73a_func_0040a73a.asm`](src/functions/unknown/0040a73a_func_0040a73a.asm) |
| `0040A786` | unidentified | `func_0040a786` | `FUN_0040a786` | `0040A786–0040A7A9` | [`src/functions/unknown/0040a786_func_0040a786.asm`](src/functions/unknown/0040a786_func_0040a786.asm) |
| `0040A7AA` | unidentified | `func_0040a7aa` | `FUN_0040a7aa` | `0040A7AA–0040A84A` | [`src/functions/unknown/0040a7aa_func_0040a7aa.asm`](src/functions/unknown/0040a7aa_func_0040a7aa.asm) |
| `0040A84B` | unidentified | `func_0040a84b` | `FUN_0040a84b` | `0040A84B–0040AA44` | [`src/functions/unknown/0040a84b_func_0040a84b.asm`](src/functions/unknown/0040a84b_func_0040a84b.asm) |
| `0040AA45` | unidentified | `func_0040aa45` | `FUN_0040aa45` | `0040AA45–0040AB83` | [`src/functions/unknown/0040aa45_func_0040aa45.asm`](src/functions/unknown/0040aa45_func_0040aa45.asm) |
| `0040AB84` | verified-role | `decode_vdx_bitmap_still` | `FUN_0040ab84` | `0040AB84–0040B197` | [`src/functions/vdx/decode_vdx_bitmap_still.asm`](src/functions/vdx/decode_vdx_bitmap_still.asm) |
| `0040B198` | verified-role | `decode_vdx_delta_frame` | `FUN_0040b198` | `0040B198–0040BFF3` | [`src/functions/vdx/decode_vdx_delta_frame.asm`](src/functions/vdx/decode_vdx_delta_frame.asm) |
| `0040BFF4` | unidentified | `func_0040bff4` | `FUN_0040bff4` | `0040BFF4–0040C0BA` | [`src/functions/unknown/0040bff4_func_0040bff4.asm`](src/functions/unknown/0040bff4_func_0040bff4.asm) |
| `0040C0BB` | verified-role | `decompress_vdx_chunk` | `FUN_0040c0bb` | `0040C0BB–0040C0E6` | [`src/functions/vdx/decompress_vdx_chunk.asm`](src/functions/vdx/decompress_vdx_chunk.asm) |
| `0040C0E7` | verified-role | `allocate_grv_runtime_buffers` | `FUN_0040c0e7` | `0040C0E7–0040C128` | [`src/functions/grv/allocate_grv_runtime_buffers.asm`](src/functions/grv/allocate_grv_runtime_buffers.asm) |
| `0040C129` | unidentified | `func_0040c129` | `FUN_0040c129` | `0040C129–0040C172` | [`src/functions/unknown/0040c129_func_0040c129.asm`](src/functions/unknown/0040c129_func_0040c129.asm) |
| `0040C180` | verified-role | `init_archive_tables` | `FUN_0040c180` | `0040C180–0040C196` | [`src/functions/resource_io/init_archive_tables.asm`](src/functions/resource_io/init_archive_tables.asm) |
| `0040C197` | unidentified | `func_0040c197` | `FUN_0040c197` | `0040C197–0040C1BC` | [`src/functions/unknown/0040c197_func_0040c197.asm`](src/functions/unknown/0040c197_func_0040c197.asm) |
| `0040C1BD` | verified-role | `configure_vdx_stream` | `FUN_0040c1bd` | `0040C1BD–0040C260` | [`src/functions/vdx/configure_vdx_stream.asm`](src/functions/vdx/configure_vdx_stream.asm) |
| `0040C261` | verified-role | `decode_vdx_stream` | `FUN_0040c261` | `0040C261–0040C60F` | [`src/functions/vdx/decode_vdx_stream.asm`](src/functions/vdx/decode_vdx_stream.asm) |
| `0040C6A5` | unidentified | `func_0040c6a5` | `FUN_0040c6a5` | `0040C6A5–0040C773` | [`src/functions/unknown/0040c6a5_func_0040c6a5.asm`](src/functions/unknown/0040c6a5_func_0040c6a5.asm) |
| `0040C780` | unidentified | `func_0040c780` | `FUN_0040c780` | `0040C780–0040C79B` | [`src/functions/unknown/0040c780_func_0040c780.asm`](src/functions/unknown/0040c780_func_0040c780.asm) |
| `0040C79C` | unidentified | `func_0040c79c` | `FUN_0040c79c` | `0040C79C–0040C7C2` | [`src/functions/unknown/0040c79c_func_0040c79c.asm`](src/functions/unknown/0040c79c_func_0040c79c.asm) |
| `0040C7C3` | unidentified | `func_0040c7c3` | `FUN_0040c7c3` | `0040C7C3–0040C7EB` | [`src/functions/unknown/0040c7c3_func_0040c7c3.asm`](src/functions/unknown/0040c7c3_func_0040c7c3.asm) |
| `0040C996` | unidentified | `func_0040c996` | `DirectDrawCreate` | `0040C996–0040C99B` | [`src/functions/unknown/0040c996_func_0040c996.asm`](src/functions/unknown/0040c996_func_0040c996.asm) |
| `0040C9A0` | unidentified | `func_0040c9a0` | `FUN_0040c9a0` | `0040C9A0–0040CA07` | [`src/functions/unknown/0040c9a0_func_0040c9a0.asm`](src/functions/unknown/0040c9a0_func_0040c9a0.asm) |
| `0040CA10` | unidentified | `func_0040ca10` | `FUN_0040ca10` | `0040CA10–0040CA6A`<br>`0040CA6C–0040CA72`<br>`0040CA80–0040CAA8`<br>`0040CAAC–0040CACE`<br>`0040CAD0–0040CAE8`<br>`0040CB0C–0040CB55`<br>`0040CB68–0040CB6E`<br>`0040CB70–0040CB7A`<br>`0040CB7C–0040CB8C`<br>`0040CB90–0040CBA6`<br>`0040CBA8–0040CBCD`<br>`0040CBD0–0040CBD8`<br>`0040CBDC–0040CBFA`<br>`0040CC08–0040CC24`<br>`0040CC28–0040CC4E`<br>`0040CC50–0040CC80`<br>`0040CCA4–0040CCED`<br>`0040CD00–0040CD06`<br>`0040CD08–0040CD14`<br>`0040CD18–0040CD2A`<br>`0040CD2C–0040CD44` | [`src/functions/unknown/0040ca10_func_0040ca10.asm`](src/functions/unknown/0040ca10_func_0040ca10.asm) |
| `0040CD50` | unidentified | `func_0040cd50` | `FUN_0040cd50` | `0040CD50–0040CDB7` | [`src/functions/unknown/0040cd50_func_0040cd50.asm`](src/functions/unknown/0040cd50_func_0040cd50.asm) |
| `0040CDC0` | unidentified | `func_0040cdc0` | `FUN_0040cdc0` | `0040CDC0–0040CDD3` | [`src/functions/unknown/0040cdc0_func_0040cdc0.asm`](src/functions/unknown/0040cdc0_func_0040cdc0.asm) |
| `0040CDE0` | unidentified | `func_0040cde0` | `FUN_0040cde0` | `0040CDE0–0040CE23` | [`src/functions/unknown/0040cde0_func_0040cde0.asm`](src/functions/unknown/0040cde0_func_0040cde0.asm) |
| `0040CE30` | unidentified | `func_0040ce30` | `FUN_0040ce30` | `0040CE30–0040CE84` | [`src/functions/unknown/0040ce30_func_0040ce30.asm`](src/functions/unknown/0040ce30_func_0040ce30.asm) |
| `0040CE90` | unidentified | `func_0040ce90` | `_strncmp` | `0040CE90–0040CEC7` | [`src/functions/unknown/0040ce90_func_0040ce90.asm`](src/functions/unknown/0040ce90_func_0040ce90.asm) |
| `0040CED0` | unidentified | `func_0040ced0` | `FUN_0040ced0` | `0040CED0–0040CF0C` | [`src/functions/unknown/0040ced0_func_0040ced0.asm`](src/functions/unknown/0040ced0_func_0040ced0.asm) |
| `0040CF10` | unidentified | `func_0040cf10` | `FUN_0040cf10` | `0040CF10–0040CF74` | [`src/functions/unknown/0040cf10_func_0040cf10.asm`](src/functions/unknown/0040cf10_func_0040cf10.asm) |
| `0040CF80` | unidentified | `func_0040cf80` | `FUN_0040cf80` | `0040CF80–0040CFB6` | [`src/functions/unknown/0040cf80_func_0040cf80.asm`](src/functions/unknown/0040cf80_func_0040cf80.asm) |
| `0040CFC0` | unidentified | `func_0040cfc0` | `FUN_0040cfc0` | `0040CFC0–0040D105` | [`src/functions/unknown/0040cfc0_func_0040cfc0.asm`](src/functions/unknown/0040cfc0_func_0040cfc0.asm) |
| `0040D110` | unidentified | `func_0040d110` | `FUN_0040d110` | `0040D110–0040D146` | [`src/functions/unknown/0040d110_func_0040d110.asm`](src/functions/unknown/0040d110_func_0040d110.asm) |
| `0040D150` | unidentified | `func_0040d150` | `FUN_0040d150` | `0040D150–0040D164` | [`src/functions/unknown/0040d150_func_0040d150.asm`](src/functions/unknown/0040d150_func_0040d150.asm) |
| `0040D170` | unidentified | `func_0040d170` | `FUN_0040d170` | `0040D170–0040D1A6` | [`src/functions/unknown/0040d170_func_0040d170.asm`](src/functions/unknown/0040d170_func_0040d170.asm) |
| `0040D1B0` | unidentified | `func_0040d1b0` | `FUN_0040d1b0` | `0040D1B0–0040D2EB` | [`src/functions/unknown/0040d1b0_func_0040d1b0.asm`](src/functions/unknown/0040d1b0_func_0040d1b0.asm) |
| `0040D2F0` | unidentified | `func_0040d2f0` | `FUN_0040d2f0` | `0040D2F0–0040D3BF` | [`src/functions/unknown/0040d2f0_func_0040d2f0.asm`](src/functions/unknown/0040d2f0_func_0040d2f0.asm) |
| `0040D3C0` | unidentified | `func_0040d3c0` | `FUN_0040d3c0` | `0040D3C0–0040D463` | [`src/functions/unknown/0040d3c0_func_0040d3c0.asm`](src/functions/unknown/0040d3c0_func_0040d3c0.asm) |
| `0040D470` | unidentified | `func_0040d470` | `_memset` | `0040D470–0040D4C7` | [`src/functions/unknown/0040d470_func_0040d470.asm`](src/functions/unknown/0040d470_func_0040d470.asm) |
| `0040D4D0` | unidentified | `func_0040d4d0` | `_strlen` | `0040D4D0–0040D54A` | [`src/functions/unknown/0040d4d0_func_0040d4d0.asm`](src/functions/unknown/0040d4d0_func_0040d4d0.asm) |
| `0040D550` | unidentified | `func_0040d550` | `FUN_0040d550` | `0040D550–0040D5B7` | [`src/functions/unknown/0040d550_func_0040d550.asm`](src/functions/unknown/0040d550_func_0040d550.asm) |
| `0040D5C0` | unidentified | `func_0040d5c0` | `FUN_0040d5c0` | `0040D5C0–0040D5EF` | [`src/functions/unknown/0040d5c0_func_0040d5c0.asm`](src/functions/unknown/0040d5c0_func_0040d5c0.asm) |
| `0040D5F0` | unidentified | `func_0040d5f0` | `FUN_0040d5f0` | `0040D5F0–0040D601` | [`src/functions/unknown/0040d5f0_func_0040d5f0.asm`](src/functions/unknown/0040d5f0_func_0040d5f0.asm) |
| `0040D610` | unidentified | `func_0040d610` | `__exit` | `0040D610–0040D621` | [`src/functions/unknown/0040d610_func_0040d610.asm`](src/functions/unknown/0040d610_func_0040d610.asm) |
| `0040D650` | unidentified | `func_0040d650` | `FUN_0040d650` | `0040D650–0040D6FD` | [`src/functions/unknown/0040d650_func_0040d650.asm`](src/functions/unknown/0040d650_func_0040d650.asm) |
| `0040D710` | unidentified | `func_0040d710` | `FUN_0040d710` | `0040D710–0040D71A` | [`src/functions/unknown/0040d710_func_0040d710.asm`](src/functions/unknown/0040d710_func_0040d710.asm) |
| `0040D720` | unidentified | `func_0040d720` | `FUN_0040d720` | `0040D720–0040D72A` | [`src/functions/unknown/0040d720_func_0040d720.asm`](src/functions/unknown/0040d720_func_0040d720.asm) |
| `0040D730` | unidentified | `func_0040d730` | `FUN_0040d730` | `0040D730–0040D74F` | [`src/functions/unknown/0040d730_func_0040d730.asm`](src/functions/unknown/0040d730_func_0040d730.asm) |
| `0040D750` | unidentified | `func_0040d750` | `FUN_0040d750` | `0040D750–0040D77C` | [`src/functions/unknown/0040d750_func_0040d750.asm`](src/functions/unknown/0040d750_func_0040d750.asm) |
| `0040D780` | unidentified | `func_0040d780` | `FUN_0040d780` | `0040D780–0040D78D` | [`src/functions/unknown/0040d780_func_0040d780.asm`](src/functions/unknown/0040d780_func_0040d780.asm) |
| `0040D790` | unidentified | `func_0040d790` | `FUN_0040d790` | `0040D790–0040D7A9` | [`src/functions/unknown/0040d790_func_0040d790.asm`](src/functions/unknown/0040d790_func_0040d790.asm) |
| `0040D7B0` | unidentified | `func_0040d7b0` | `FUN_0040d7b0` | `0040D7B0–0040D7B6` | [`src/functions/unknown/0040d7b0_func_0040d7b0.asm`](src/functions/unknown/0040d7b0_func_0040d7b0.asm) |
| `0040D7C0` | unidentified | `func_0040d7c0` | `FUN_0040d7c0` | `0040D7C0–0040D89F` | [`src/functions/unknown/0040d7c0_func_0040d7c0.asm`](src/functions/unknown/0040d7c0_func_0040d7c0.asm) |
| `0040D8A0` | verified-role | `strcmp_runtime` | `_strcmp` | `0040D8A0–0040D8E2`<br>`0040D8E4–0040D8E9`<br>`0040D8EC–0040D923` | [`src/functions/runtime/strcmp_runtime.asm`](src/functions/runtime/strcmp_runtime.asm) |
| `0040D930` | unidentified | `func_0040d930` | `FUN_0040d930` | `0040D930–0040D945` | [`src/functions/unknown/0040d930_func_0040d930.asm`](src/functions/unknown/0040d930_func_0040d930.asm) |
| `0040D950` | unidentified | `func_0040d950` | `FUN_0040d950` | `0040D950–0040D9E8` | [`src/functions/unknown/0040d950_func_0040d950.asm`](src/functions/unknown/0040d950_func_0040d950.asm) |
| `0040D9F0` | unidentified | `func_0040d9f0` | `_strrchr` | `0040D9F0–0040DA16` | [`src/functions/unknown/0040d9f0_func_0040d9f0.asm`](src/functions/unknown/0040d9f0_func_0040d9f0.asm) |
| `0040DA18` | unidentified | `func_0040da18` | `__global_unwind2` | `0040DA18–0040DA37` | [`src/functions/unknown/0040da18_func_0040da18.asm`](src/functions/unknown/0040da18_func_0040da18.asm) |
| `0040DA5A` | unidentified | `func_0040da5a` | `__local_unwind2` | `0040DA5A–0040DAC1` | [`src/functions/unknown/0040da5a_func_0040da5a.asm`](src/functions/unknown/0040da5a_func_0040da5a.asm) |
| `0040DAEE` | unidentified | `func_0040daee` | `FUN_0040daee` | `0040DAEE–0040DB05` | [`src/functions/unknown/0040daee_func_0040daee.asm`](src/functions/unknown/0040daee_func_0040daee.asm) |
| `0040DBCD` | unidentified | `func_0040dbcd` | `FUN_0040dbcd` | `0040DBCD–0040DBE7` | [`src/functions/unknown/0040dbcd_func_0040dbcd.asm`](src/functions/unknown/0040dbcd_func_0040dbcd.asm) |
| `0040DBF0` | verified-role | `pe_entry` | `entry` | `0040DBF0–0040DD4C`<br>`0040DD6E–0040DD97` | [`src/functions/runtime/pe_entry.asm`](src/functions/runtime/pe_entry.asm) |
| `0040DDA0` | unidentified | `func_0040dda0` | `__amsg_exit` | `0040DDA0–0040DDC5` | [`src/functions/unknown/0040dda0_func_0040dda0.asm`](src/functions/unknown/0040dda0_func_0040dda0.asm) |
| `0040DDD0` | unidentified | `func_0040ddd0` | `FUN_0040ddd0` | `0040DDD0–0040DE06` | [`src/functions/unknown/0040ddd0_func_0040ddd0.asm`](src/functions/unknown/0040ddd0_func_0040ddd0.asm) |
| `0040DE50` | unidentified | `func_0040de50` | `FUN_0040de50` | `0040DE50–0040DE7A` | [`src/functions/unknown/0040de50_func_0040de50.asm`](src/functions/unknown/0040de50_func_0040de50.asm) |
| `0040DF00` | unidentified | `func_0040df00` | `FUN_0040df00` | `0040DF00–0040DF75` | [`src/functions/unknown/0040df00_func_0040df00.asm`](src/functions/unknown/0040df00_func_0040df00.asm) |
| `0040DF80` | unidentified | `func_0040df80` | `FUN_0040df80` | `0040DF80–0040DF95` | [`src/functions/unknown/0040df80_func_0040df80.asm`](src/functions/unknown/0040df80_func_0040df80.asm) |
| `0040DFA0` | unidentified | `func_0040dfa0` | `FUN_0040dfa0` | `0040DFA0–0040DFD5` | [`src/functions/unknown/0040dfa0_func_0040dfa0.asm`](src/functions/unknown/0040dfa0_func_0040dfa0.asm) |
| `0040DFE0` | unidentified | `func_0040dfe0` | `FUN_0040dfe0` | `0040DFE0–0040E007` | [`src/functions/unknown/0040dfe0_func_0040dfe0.asm`](src/functions/unknown/0040dfe0_func_0040dfe0.asm) |
| `0040E010` | unidentified | `func_0040e010` | `FUN_0040e010` | `0040E010–0040E045` | [`src/functions/unknown/0040e010_func_0040e010.asm`](src/functions/unknown/0040e010_func_0040e010.asm) |
| `0040E050` | unidentified | `func_0040e050` | `FUN_0040e050` | `0040E050–0040E077` | [`src/functions/unknown/0040e050_func_0040e050.asm`](src/functions/unknown/0040e050_func_0040e050.asm) |
| `0040E0D0` | unidentified | `func_0040e0d0` | `FUN_0040e0d0` | `0040E0D0–0040E231` | [`src/functions/unknown/0040e0d0_func_0040e0d0.asm`](src/functions/unknown/0040e0d0_func_0040e0d0.asm) |
| `0040E240` | unidentified | `func_0040e240` | `FUN_0040e240` | `0040E240–0040E29A` | [`src/functions/unknown/0040e240_func_0040e240.asm`](src/functions/unknown/0040e240_func_0040e240.asm) |
| `0040E2A0` | unidentified | `func_0040e2a0` | `FUN_0040e2a0` | `0040E2A0–0040E36C` | [`src/functions/unknown/0040e2a0_func_0040e2a0.asm`](src/functions/unknown/0040e2a0_func_0040e2a0.asm) |
| `0040E370` | unidentified | `func_0040e370` | `FUN_0040e370` | `0040E370–0040E3C8` | [`src/functions/unknown/0040e370_func_0040e370.asm`](src/functions/unknown/0040e370_func_0040e370.asm) |
| `0040E3D0` | unidentified | `func_0040e3d0` | `FUN_0040e3d0` | `0040E3D0–0040E422` | [`src/functions/unknown/0040e3d0_func_0040e3d0.asm`](src/functions/unknown/0040e3d0_func_0040e3d0.asm) |
| `0040E430` | unidentified | `func_0040e430` | `FUN_0040e430` | `0040E430–0040E662` | [`src/functions/unknown/0040e430_func_0040e430.asm`](src/functions/unknown/0040e430_func_0040e430.asm) |
| `0040E670` | unidentified | `func_0040e670` | `FUN_0040e670` | `0040E670–0040E7E1` | [`src/functions/unknown/0040e670_func_0040e670.asm`](src/functions/unknown/0040e670_func_0040e670.asm) |
| `0040E7F0` | unidentified | `func_0040e7f0` | `FUN_0040e7f0` | `0040E7F0–0040E8B3` | [`src/functions/unknown/0040e7f0_func_0040e7f0.asm`](src/functions/unknown/0040e7f0_func_0040e7f0.asm) |
| `0040EA90` | unidentified | `func_0040ea90` | `FUN_0040ea90` | `0040EA90–0040EBBF` | [`src/functions/unknown/0040ea90_func_0040ea90.asm`](src/functions/unknown/0040ea90_func_0040ea90.asm) |
| `0040EBC0` | unidentified | `func_0040ebc0` | `FUN_0040ebc0` | `0040EBC0–0040F43B` | [`src/functions/unknown/0040ebc0_func_0040ebc0.asm`](src/functions/unknown/0040ebc0_func_0040ebc0.asm) |
| `0040F550` | unidentified | `func_0040f550` | `FUN_0040f550` | `0040F550–0040F591` | [`src/functions/unknown/0040f550_func_0040f550.asm`](src/functions/unknown/0040f550_func_0040f550.asm) |
| `0040F5A0` | unidentified | `func_0040f5a0` | `FUN_0040f5a0` | `0040F5A0–0040F5D8` | [`src/functions/unknown/0040f5a0_func_0040f5a0.asm`](src/functions/unknown/0040f5a0_func_0040f5a0.asm) |
| `0040F5E0` | unidentified | `func_0040f5e0` | `FUN_0040f5e0` | `0040F5E0–0040F61C` | [`src/functions/unknown/0040f5e0_func_0040f5e0.asm`](src/functions/unknown/0040f5e0_func_0040f5e0.asm) |
| `0040F620` | unidentified | `func_0040f620` | `FUN_0040f620` | `0040F620–0040F630` | [`src/functions/unknown/0040f620_func_0040f620.asm`](src/functions/unknown/0040f620_func_0040f620.asm) |
| `0040F640` | unidentified | `func_0040f640` | `FUN_0040f640` | `0040F640–0040F651` | [`src/functions/unknown/0040f640_func_0040f640.asm`](src/functions/unknown/0040f640_func_0040f640.asm) |
| `0040F660` | unidentified | `func_0040f660` | `FUN_0040f660` | `0040F660–0040F671` | [`src/functions/unknown/0040f660_func_0040f660.asm`](src/functions/unknown/0040f660_func_0040f660.asm) |
| `0040F6C0` | unidentified | `func_0040f6c0` | `FUN_0040f6c0` | `0040F6C0–0040F6DF` | [`src/functions/unknown/0040f6c0_func_0040f6c0.asm`](src/functions/unknown/0040f6c0_func_0040f6c0.asm) |
| `0040F6E0` | unidentified | `func_0040f6e0` | `FUN_0040f6e0` | `0040F6E0–0040F747` | [`src/functions/unknown/0040f6e0_func_0040f6e0.asm`](src/functions/unknown/0040f6e0_func_0040f6e0.asm) |
| `0040F750` | unidentified | `func_0040f750` | `FUN_0040f750` | `0040F750–0040F7DF` | [`src/functions/unknown/0040f750_func_0040f750.asm`](src/functions/unknown/0040f750_func_0040f750.asm) |
| `0040F7E0` | unidentified | `func_0040f7e0` | `FUN_0040f7e0` | `0040F7E0–0040F812` | [`src/functions/unknown/0040f7e0_func_0040f7e0.asm`](src/functions/unknown/0040f7e0_func_0040f7e0.asm) |
| `0040F8A0` | unidentified | `func_0040f8a0` | `FUN_0040f8a0` | `0040F8A0–0040F90D` | [`src/functions/unknown/0040f8a0_func_0040f8a0.asm`](src/functions/unknown/0040f8a0_func_0040f8a0.asm) |
| `0040F9E0` | unidentified | `func_0040f9e0` | `FUN_0040f9e0` | `0040F9E0–0040FA51` | [`src/functions/unknown/0040f9e0_func_0040f9e0.asm`](src/functions/unknown/0040f9e0_func_0040f9e0.asm) |
| `0040FA60` | unidentified | `func_0040fa60` | `FUN_0040fa60` | `0040FA60–0040FC68` | [`src/functions/unknown/0040fa60_func_0040fa60.asm`](src/functions/unknown/0040fa60_func_0040fa60.asm) |
| `0040FC70` | unidentified | `func_0040fc70` | `FUN_0040fc70` | `0040FC70–0040FDCA` | [`src/functions/unknown/0040fc70_func_0040fc70.asm`](src/functions/unknown/0040fc70_func_0040fc70.asm) |
| `0040FE40` | unidentified | `func_0040fe40` | `FUN_0040fe40` | `0040FE40–0040FF18` | [`src/functions/unknown/0040fe40_func_0040fe40.asm`](src/functions/unknown/0040fe40_func_0040fe40.asm) |
| `0040FF20` | unidentified | `func_0040ff20` | `FUN_0040ff20` | `0040FF20–0041000E` | [`src/functions/unknown/0040ff20_func_0040ff20.asm`](src/functions/unknown/0040ff20_func_0040ff20.asm) |
| `00410010` | unidentified | `func_00410010` | `FUN_00410010` | `00410010–00410081` | [`src/functions/unknown/00410010_func_00410010.asm`](src/functions/unknown/00410010_func_00410010.asm) |
| `00410090` | unidentified | `func_00410090` | `FUN_00410090` | `00410090–004102B4` | [`src/functions/unknown/00410090_func_00410090.asm`](src/functions/unknown/00410090_func_00410090.asm) |
| `00410C90` | unidentified | `func_00410c90` | `FUN_00410c90` | `00410C90–00410D8B` | [`src/functions/unknown/00410c90_func_00410c90.asm`](src/functions/unknown/00410c90_func_00410c90.asm) |
| `00410D90` | unidentified | `func_00410d90` | `FUN_00410d90` | `00410D90–00410E02` | [`src/functions/unknown/00410d90_func_00410d90.asm`](src/functions/unknown/00410d90_func_00410d90.asm) |
| `00410E10` | unidentified | `func_00410e10` | `FUN_00410e10` | `00410E10–00410E18` | [`src/functions/unknown/00410e10_func_00410e10.asm`](src/functions/unknown/00410e10_func_00410e10.asm) |
| `00410E20` | unidentified | `func_00410e20` | `FUN_00410e20` | `00410E20–00410E28` | [`src/functions/unknown/00410e20_func_00410e20.asm`](src/functions/unknown/00410e20_func_00410e20.asm) |
| `00410E30` | unidentified | `func_00410e30` | `FUN_00410e30` | `00410E30–00410F97` | [`src/functions/unknown/00410e30_func_00410e30.asm`](src/functions/unknown/00410e30_func_00410e30.asm) |
| `00410FA0` | unidentified | `func_00410fa0` | `FUN_00410fa0` | `00410FA0–00411040` | [`src/functions/unknown/00410fa0_func_00410fa0.asm`](src/functions/unknown/00410fa0_func_00410fa0.asm) |
| `00411050` | unidentified | `func_00411050` | `FUN_00411050` | `00411050–004110E2` | [`src/functions/unknown/00411050_func_00411050.asm`](src/functions/unknown/00411050_func_00411050.asm) |
| `004110F0` | unidentified | `func_004110f0` | `FUN_004110f0` | `004110F0–00411138` | [`src/functions/unknown/004110f0_func_004110f0.asm`](src/functions/unknown/004110f0_func_004110f0.asm) |
| `004111F0` | unidentified | `func_004111f0` | `FUN_004111f0` | `004111F0–00411254` | [`src/functions/unknown/004111f0_func_004111f0.asm`](src/functions/unknown/004111f0_func_004111f0.asm) |
| `00411260` | unidentified | `func_00411260` | `FUN_00411260` | `00411260–00411281` | [`src/functions/unknown/00411260_func_00411260.asm`](src/functions/unknown/00411260_func_00411260.asm) |
| `00411290` | unidentified | `func_00411290` | `FUN_00411290` | `00411290–00411301` | [`src/functions/unknown/00411290_func_00411290.asm`](src/functions/unknown/00411290_func_00411290.asm) |
| `00411310` | unidentified | `func_00411310` | `FUN_00411310` | `00411310–0041138F` | [`src/functions/unknown/00411310_func_00411310.asm`](src/functions/unknown/00411310_func_00411310.asm) |
| `00411390` | unidentified | `func_00411390` | `FUN_00411390` | `00411390–0041159B` | [`src/functions/unknown/00411390_func_00411390.asm`](src/functions/unknown/00411390_func_00411390.asm) |
| `00411600` | unidentified | `func_00411600` | `FUN_00411600` | `00411600–004117F4` | [`src/functions/unknown/00411600_func_00411600.asm`](src/functions/unknown/00411600_func_00411600.asm) |
| `00411800` | unidentified | `func_00411800` | `FUN_00411800` | `00411800–00411862` | [`src/functions/unknown/00411800_func_00411800.asm`](src/functions/unknown/00411800_func_00411800.asm) |
| `00411870` | unidentified | `func_00411870` | `FUN_00411870` | `00411870–004118FD` | [`src/functions/unknown/00411870_func_00411870.asm`](src/functions/unknown/00411870_func_00411870.asm) |
| `00411C50` | unidentified | `func_00411c50` | `FUN_00411c50` | `00411C50–00411C61` | [`src/functions/unknown/00411c50_func_00411c50.asm`](src/functions/unknown/00411c50_func_00411c50.asm) |
| `00411CC0` | unidentified | `func_00411cc0` | `FUN_00411cc0` | `00411CC0–00411CF9` | [`src/functions/unknown/00411cc0_func_00411cc0.asm`](src/functions/unknown/00411cc0_func_00411cc0.asm) |
| `00411D00` | unidentified | `func_00411d00` | `FUN_00411d00` | `00411D00–00411DED` | [`src/functions/unknown/00411d00_func_00411d00.asm`](src/functions/unknown/00411d00_func_00411d00.asm) |
| `00411DF0` | unidentified | `func_00411df0` | `FUN_00411df0` | `00411DF0–00411E8D` | [`src/functions/unknown/00411df0_func_00411df0.asm`](src/functions/unknown/00411df0_func_00411df0.asm) |
| `00411E90` | unidentified | `func_00411e90` | `FUN_00411e90` | `00411E90–0041209E` | [`src/functions/unknown/00411e90_func_00411e90.asm`](src/functions/unknown/00411e90_func_00411e90.asm) |
| `004122A0` | unidentified | `func_004122a0` | `FUN_004122a0` | `004122A0–004123F5` | [`src/functions/unknown/004122a0_func_004122a0.asm`](src/functions/unknown/004122a0_func_004122a0.asm) |
| `00412400` | unidentified | `func_00412400` | `FUN_00412400` | `00412400–0041261A` | [`src/functions/unknown/00412400_func_00412400.asm`](src/functions/unknown/00412400_func_00412400.asm) |
| `00412620` | unidentified | `func_00412620` | `FUN_00412620` | `00412620–0041266C` | [`src/functions/unknown/00412620_func_00412620.asm`](src/functions/unknown/00412620_func_00412620.asm) |
| `00412670` | unidentified | `func_00412670` | `FUN_00412670` | `00412670–004126A7` | [`src/functions/unknown/00412670_func_00412670.asm`](src/functions/unknown/00412670_func_00412670.asm) |
| `004126D0` | unidentified | `func_004126d0` | `FUN_004126d0` | `004126D0–004126FC` | [`src/functions/unknown/004126d0_func_004126d0.asm`](src/functions/unknown/004126d0_func_004126d0.asm) |
| `00412710` | unidentified | `func_00412710` | `FUN_00412710` | `00412710–0041271A` | [`src/functions/unknown/00412710_func_00412710.asm`](src/functions/unknown/00412710_func_00412710.asm) |
| `00412720` | unidentified | `func_00412720` | `FUN_00412720` | `00412720–0041277B` | [`src/functions/unknown/00412720_func_00412720.asm`](src/functions/unknown/00412720_func_00412720.asm) |
| `004127B0` | unidentified | `func_004127b0` | `FUN_004127b0` | `004127B0–004127C2` | [`src/functions/unknown/004127b0_func_004127b0.asm`](src/functions/unknown/004127b0_func_004127b0.asm) |
| `004127D0` | unidentified | `func_004127d0` | `FUN_004127d0` | `004127D0–00412849` | [`src/functions/unknown/004127d0_func_004127d0.asm`](src/functions/unknown/004127d0_func_004127d0.asm) |
| `00412910` | unidentified | `func_00412910` | `FUN_00412910` | `00412910–0041294C` | [`src/functions/unknown/00412910_func_00412910.asm`](src/functions/unknown/00412910_func_00412910.asm) |
| `00412950` | unidentified | `func_00412950` | `FUN_00412950` | `00412950–00412B25` | [`src/functions/unknown/00412950_func_00412950.asm`](src/functions/unknown/00412950_func_00412950.asm) |
| `00412C40` | unidentified | `func_00412c40` | `FUN_00412c40` | `00412C40–00412C9C` | [`src/functions/unknown/00412c40_func_00412c40.asm`](src/functions/unknown/00412c40_func_00412c40.asm) |
| `00412CA0` | unidentified | `func_00412ca0` | `FUN_00412ca0` | `00412CA0–00412CCA` | [`src/functions/unknown/00412ca0_func_00412ca0.asm`](src/functions/unknown/00412ca0_func_00412ca0.asm) |
| `00412CD0` | unidentified | `func_00412cd0` | `FUN_00412cd0` | `00412CD0–00412D3B` | [`src/functions/unknown/00412cd0_func_00412cd0.asm`](src/functions/unknown/00412cd0_func_00412cd0.asm) |
| `00412D40` | unidentified | `func_00412d40` | `FUN_00412d40` | `00412D40–00412DB1` | [`src/functions/unknown/00412d40_func_00412d40.asm`](src/functions/unknown/00412d40_func_00412d40.asm) |
| `00412DC0` | unidentified | `func_00412dc0` | `__aulldiv` | `00412DC0–00412E27` | [`src/functions/unknown/00412dc0_func_00412dc0.asm`](src/functions/unknown/00412dc0_func_00412dc0.asm) |
| `00412E30` | unidentified | `func_00412e30` | `__aullrem` | `00412E30–00412EA4` | [`src/functions/unknown/00412e30_func_00412e30.asm`](src/functions/unknown/00412e30_func_00412e30.asm) |
| `00412F70` | unidentified | `func_00412f70` | `FUN_00412f70` | `00412F70–004132C0` | [`src/functions/unknown/00412f70_func_00412f70.asm`](src/functions/unknown/00412f70_func_00412f70.asm) |
| `004133C0` | unidentified | `func_004133c0` | `FUN_004133c0` | `004133C0–00413730` | [`src/functions/unknown/004133c0_func_004133c0.asm`](src/functions/unknown/004133c0_func_004133c0.asm) |
| `00413740` | unidentified | `func_00413740` | `FUN_00413740` | `00413740–00413972` | [`src/functions/unknown/00413740_func_00413740.asm`](src/functions/unknown/00413740_func_00413740.asm) |
| `00413980` | unidentified | `func_00413980` | `FUN_00413980` | `00413980–00413A75` | [`src/functions/unknown/00413980_func_00413980.asm`](src/functions/unknown/00413980_func_00413980.asm) |
| `00413C80` | unidentified | `func_00413c80` | `FUN_00413c80` | `00413C80–00413CB2` | [`src/functions/unknown/00413c80_func_00413c80.asm`](src/functions/unknown/00413c80_func_00413c80.asm) |
| `00413DB0` | unidentified | `func_00413db0` | `FUN_00413db0` | `00413DB0–00413EFA` | [`src/functions/unknown/00413db0_func_00413db0.asm`](src/functions/unknown/00413db0_func_00413db0.asm) |
| `00413F00` | unidentified | `func_00413f00` | `FUN_00413f00` | `00413F00–00413F32` | [`src/functions/unknown/00413f00_func_00413f00.asm`](src/functions/unknown/00413f00_func_00413f00.asm) |
| `00413F40` | unidentified | `func_00413f40` | `FUN_00413f40` | `00413F40–00413FA5` | [`src/functions/unknown/00413f40_func_00413f40.asm`](src/functions/unknown/00413f40_func_00413f40.asm) |
| `00414280` | unidentified | `func_00414280` | `_strncpy` | `00414280–0041437D` | [`src/functions/unknown/00414280_func_00414280.asm`](src/functions/unknown/00414280_func_00414280.asm) |
| `00414380` | unidentified | `func_00414380` | `_strcspn` | `00414380–004143BD` | [`src/functions/unknown/00414380_func_00414380.asm`](src/functions/unknown/00414380_func_00414380.asm) |
| `004143C0` | unidentified | `func_004143c0` | `_strpbrk` | `004143C0–004143F9` | [`src/functions/unknown/004143c0_func_004143c0.asm`](src/functions/unknown/004143c0_func_004143c0.asm) |
| `00414900` | unidentified | `func_00414900` | `FUN_00414900` | `00414900–00414B06` | [`src/functions/unknown/00414900_func_00414900.asm`](src/functions/unknown/00414900_func_00414900.asm) |
| `00414B10` | unidentified | `func_00414b10` | `FUN_00414b10` | `00414B10–00414B44` | [`src/functions/unknown/00414b10_func_00414b10.asm`](src/functions/unknown/00414b10_func_00414b10.asm) |
| `00414B50` | unidentified | `func_00414b50` | `FUN_00414b50` | `00414B50–00414D6B` | [`src/functions/unknown/00414b50_func_00414b50.asm`](src/functions/unknown/00414b50_func_00414b50.asm) |
| `00414D70` | unidentified | `func_00414d70` | `FUN_00414d70` | `00414D70–00414D9E` | [`src/functions/unknown/00414d70_func_00414d70.asm`](src/functions/unknown/00414d70_func_00414d70.asm) |
| `00414DA0` | unidentified | `func_00414da0` | `FUN_00414da0` | `00414DA0–00414E32` | [`src/functions/unknown/00414da0_func_00414da0.asm`](src/functions/unknown/00414da0_func_00414da0.asm) |
| `00414E40` | unidentified | `func_00414e40` | `FUN_00414e40` | `00414E40–00414E8A` | [`src/functions/unknown/00414e40_func_00414e40.asm`](src/functions/unknown/00414e40_func_00414e40.asm) |
| `00414E90` | unidentified | `func_00414e90` | `FUN_00414e90` | `00414E90–00414F51` | [`src/functions/unknown/00414e90_func_00414e90.asm`](src/functions/unknown/00414e90_func_00414e90.asm) |
| `00414F60` | unidentified | `func_00414f60` | `FUN_00414f60` | `00414F60–00414FEF` | [`src/functions/unknown/00414f60_func_00414f60.asm`](src/functions/unknown/00414f60_func_00414f60.asm) |
| `00414FF0` | unidentified | `func_00414ff0` | `FUN_00414ff0` | `00414FF0–004151AC`<br>`004151C3–00415260` | [`src/functions/unknown/00414ff0_func_00414ff0.asm`](src/functions/unknown/00414ff0_func_00414ff0.asm) |
| `00415280` | unidentified | `func_00415280` | `FUN_00415280` | `00415280–00415526` | [`src/functions/unknown/00415280_func_00415280.asm`](src/functions/unknown/00415280_func_00415280.asm) |
| `00415530` | unidentified | `func_00415530` | `FUN_00415530` | `00415530–0041554D` | [`src/functions/unknown/00415530_func_00415530.asm`](src/functions/unknown/00415530_func_00415530.asm) |
| `00415550` | unidentified | `func_00415550` | `FUN_00415550` | `00415550–004155FA` | [`src/functions/unknown/00415550_func_00415550.asm`](src/functions/unknown/00415550_func_00415550.asm) |
| `00415600` | unidentified | `func_00415600` | `FUN_00415600` | `00415600–0041568E` | [`src/functions/unknown/00415600_func_00415600.asm`](src/functions/unknown/00415600_func_00415600.asm) |
| `00415730` | unidentified | `func_00415730` | `FUN_00415730` | `00415730–0041573A` | [`src/functions/unknown/00415730_func_00415730.asm`](src/functions/unknown/00415730_func_00415730.asm) |
| `004157B0` | unidentified | `func_004157b0` | `FUN_004157b0` | `004157B0–004158FD` | [`src/functions/unknown/004157b0_func_004157b0.asm`](src/functions/unknown/004157b0_func_004157b0.asm) |
| `00415FC0` | unidentified | `func_00415fc0` | `FUN_00415fc0` | `00415FC0–004164A5` | [`src/functions/unknown/00415fc0_func_00415fc0.asm`](src/functions/unknown/00415fc0_func_00415fc0.asm) |
| `00416560` | unidentified | `func_00416560` | `FUN_00416560` | `00416560–0041658C` | [`src/functions/unknown/00416560_func_00416560.asm`](src/functions/unknown/00416560_func_00416560.asm) |
| `00416590` | unidentified | `func_00416590` | `FUN_00416590` | `00416590–00416622` | [`src/functions/unknown/00416590_func_00416590.asm`](src/functions/unknown/00416590_func_00416590.asm) |
| `00416630` | unidentified | `func_00416630` | `FUN_00416630` | `00416630–00416694` | [`src/functions/unknown/00416630_func_00416630.asm`](src/functions/unknown/00416630_func_00416630.asm) |
| `004166A0` | unidentified | `func_004166a0` | `FUN_004166a0` | `004166A0–0041694A` | [`src/functions/unknown/004166a0_func_004166a0.asm`](src/functions/unknown/004166a0_func_004166a0.asm) |
| `004169F0` | unidentified | `func_004169f0` | `FUN_004169f0` | `004169F0–00416B9B` | [`src/functions/unknown/004169f0_func_004169f0.asm`](src/functions/unknown/004169f0_func_004169f0.asm) |
| `00416BB0` | unidentified | `func_00416bb0` | `FUN_00416bb0` | `00416BB0–00416D33` | [`src/functions/unknown/00416bb0_func_00416bb0.asm`](src/functions/unknown/00416bb0_func_00416bb0.asm) |
| `00416D40` | unidentified | `func_00416d40` | `FUN_00416d40` | `00416D40–00416E6C` | [`src/functions/unknown/00416d40_func_00416d40.asm`](src/functions/unknown/00416d40_func_00416d40.asm) |
| `00417090` | unidentified | `func_00417090` | `FUN_00417090` | `00417090–004171BF` | [`src/functions/unknown/00417090_func_00417090.asm`](src/functions/unknown/00417090_func_00417090.asm) |
| `004171C0` | unidentified | `func_004171c0` | `FUN_004171c0` | `004171C0–004172FE` | [`src/functions/unknown/004171c0_func_004171c0.asm`](src/functions/unknown/004171c0_func_004171c0.asm) |
| `00417320` | unidentified | `func_00417320` | `FUN_00417320` | `00417320–004174FF` | [`src/functions/unknown/00417320_func_00417320.asm`](src/functions/unknown/00417320_func_00417320.asm) |
| `00417520` | unidentified | `func_00417520` | `FUN_00417520` | `00417520–004175B8` | [`src/functions/unknown/00417520_func_00417520.asm`](src/functions/unknown/00417520_func_00417520.asm) |
| `004176B0` | unidentified | `func_004176b0` | `_strchr` | `004176A0–004176A4`<br>`004176B0–0041776B` | [`src/functions/unknown/004176b0_func_004176b0.asm`](src/functions/unknown/004176b0_func_004176b0.asm) |
| `004177E0` | unidentified | `func_004177e0` | `FUN_004177e0` | `004177E0–00417843` | [`src/functions/unknown/004177e0_func_004177e0.asm`](src/functions/unknown/004177e0_func_004177e0.asm) |
| `00417850` | unidentified | `func_00417850` | `FUN_00417850` | `00417850–0041787E` | [`src/functions/unknown/00417850_func_00417850.asm`](src/functions/unknown/00417850_func_00417850.asm) |
| `00417880` | unidentified | `func_00417880` | `FUN_00417880` | `00417880–004178B1` | [`src/functions/unknown/00417880_func_00417880.asm`](src/functions/unknown/00417880_func_00417880.asm) |
| `004178E0` | unidentified | `func_004178e0` | `FUN_004178e0` | `004178E0–00417BB7` | [`src/functions/unknown/004178e0_func_004178e0.asm`](src/functions/unknown/004178e0_func_004178e0.asm) |
| `00418000` | unidentified | `func_00418000` | `FUN_00418000` | `00418000–0041805A`<br>`0041805C–00418062`<br>`00418070–00418098`<br>`0041809C–004180BE`<br>`004180C0–004180D8`<br>`004180FC–00418145`<br>`00418158–0041815E`<br>`00418160–0041816A`<br>`0041816C–0041817C`<br>`00418180–00418196`<br>`00418198–004181BD`<br>`004181C0–004181C8`<br>`004181CC–004181EA`<br>`004181F8–00418214`<br>`00418218–0041823E`<br>`00418240–00418270`<br>`00418294–004182DD`<br>`004182F0–004182F6`<br>`004182F8–00418304`<br>`00418308–0041831A`<br>`0041831C–00418334` | [`src/functions/unknown/00418000_func_00418000.asm`](src/functions/unknown/00418000_func_00418000.asm) |
| `00418340` | unidentified | `func_00418340` | `FUN_00418340` | `00418340–004183C7` | [`src/functions/unknown/00418340_func_00418340.asm`](src/functions/unknown/00418340_func_00418340.asm) |
| `004183D0` | unidentified | `func_004183d0` | `FUN_004183d0` | `004183D0–0041844C` | [`src/functions/unknown/004183d0_func_004183d0.asm`](src/functions/unknown/004183d0_func_004183d0.asm) |
| `00418450` | unidentified | `func_00418450` | `FUN_00418450` | `00418450–004184B3` | [`src/functions/unknown/00418450_func_00418450.asm`](src/functions/unknown/00418450_func_00418450.asm) |
| `00418520` | unidentified | `func_00418520` | `FUN_00418520` | `00418520–00418590` | [`src/functions/unknown/00418520_func_00418520.asm`](src/functions/unknown/00418520_func_00418520.asm) |
| `004185A0` | unidentified | `func_004185a0` | `FUN_004185a0` | `004185A0–00418789` | [`src/functions/unknown/004185a0_func_004185a0.asm`](src/functions/unknown/004185a0_func_004185a0.asm) |
| `00418790` | unidentified | `func_00418790` | `FUN_00418790` | `00418790–004187C1` | [`src/functions/unknown/00418790_func_00418790.asm`](src/functions/unknown/00418790_func_00418790.asm) |
| `00418800` | unidentified | `func_00418800` | `FUN_00418800` | `00418800–0041888D` | [`src/functions/unknown/00418800_func_00418800.asm`](src/functions/unknown/00418800_func_00418800.asm) |
| `00418890` | unidentified | `func_00418890` | `FUN_00418890` | `00418890–004188CA` | [`src/functions/unknown/00418890_func_00418890.asm`](src/functions/unknown/00418890_func_00418890.asm) |
| `004188D0` | unidentified | `func_004188d0` | `FUN_004188d0` | `004188D0–00418949` | [`src/functions/unknown/004188d0_func_004188d0.asm`](src/functions/unknown/004188d0_func_004188d0.asm) |
| `00418BA0` | unidentified | `func_00418ba0` | `FUN_00418ba0` | `00418BA0–00418E64` | [`src/functions/unknown/00418ba0_func_00418ba0.asm`](src/functions/unknown/00418ba0_func_00418ba0.asm) |
| `00418E70` | unidentified | `func_00418e70` | `FUN_00418e70` | `00418E70–00418E9E` | [`src/functions/unknown/00418e70_func_00418e70.asm`](src/functions/unknown/00418e70_func_00418e70.asm) |
| `00418EA0` | unidentified | `func_00418ea0` | `FUN_00418ea0` | `00418EA0–004190A2` | [`src/functions/unknown/00418ea0_func_00418ea0.asm`](src/functions/unknown/00418ea0_func_00418ea0.asm) |
| `004190B0` | unidentified | `func_004190b0` | `FUN_004190b0` | `004190B0–00419123` | [`src/functions/unknown/004190b0_func_004190b0.asm`](src/functions/unknown/004190b0_func_004190b0.asm) |
| `00419130` | unidentified | `func_00419130` | `FUN_00419130` | `00419130–0041919E` | [`src/functions/unknown/00419130_func_00419130.asm`](src/functions/unknown/00419130_func_00419130.asm) |
| `004191A0` | unidentified | `func_004191a0` | `FUN_004191a0` | `004191A0–0041934F` | [`src/functions/unknown/004191a0_func_004191a0.asm`](src/functions/unknown/004191a0_func_004191a0.asm) |
| `00419350` | unidentified | `func_00419350` | `FUN_00419350` | `00419350–0041939F` | [`src/functions/unknown/00419350_func_00419350.asm`](src/functions/unknown/00419350_func_00419350.asm) |
| `004194A2` | unidentified | `func_004194a2` | `RtlUnwind` | `004194A2–004194A7` | [`src/functions/unknown/004194a2_func_004194a2.asm`](src/functions/unknown/004194a2_func_004194a2.asm) |

<!-- END GENERATED FUNCTION REFERENCE -->
