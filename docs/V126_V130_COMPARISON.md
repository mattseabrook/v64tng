# DOS GROOVIE Player 1.26 versus 1.30

Date: 2026-08-02

## Executive result

Version 1.30 is primarily a memory-architecture patch, not a new game-script
engine.

The complete GRV interpreter loop is structurally identical between 1.26 and
1.30: both functions are 890 bytes and 348 decoded instructions, have identical
mnemonic and operand-shape signatures, recognize the same opcodes through
`0x4E`, and consume the same operand widths. The command-line grammar and
standalone one-off VDX player are also retained.

The large changes are concentrated in:

- XMS discovery, allocation, transfer, and cleanup;
- VDX streaming and decoding through XMS-backed buffers;
- foreground/background and rectangular image copies;
- startup diagnostics and hard failure when sufficient XMS is unavailable;
- shutdown paths which release the additional memory objects.

This agrees with Trilobyte's patch note: 1.30 lowers conventional-memory demand
to approximately 450 KiB by using XMS more extensively, with a possible
performance cost.

## Primary artifacts

| Property | 1.26 | 1.30 |
| -------- | ---- | ---- |
| Packed path | [`126/V.EXE`](126/V.EXE) | [`130/V.EXE`](130/V.EXE) |
| Internal version | `1.26` | `1.30` |
| Build timestamp string | `05/20/93 15:54:08` | `07/16/93 14:52:40` |
| Packed size | 21,473 bytes | 23,425 bytes |
| Packed SHA-256 | `e5f56abc8962ee2ea6b7ac7aa8168f7fffe8c24cd394fad2c05fd98f015cedb1` | `e01c3a49cede63ad409e67ce10fdb9f98c6f42600cdfd67124b0d03f1c001585` |
| LZEXE version | 0.91 | 0.91 |
| Unpacked size | 97,480 bytes | 102,136 bytes |
| Unpacked SHA-256 | `b08fe4a622455648bc2e1dffd25840cad25faf81c8c407f6eec2bff330a3e1a6` | `f2f7febb70b5008ee94e535b0224e918eeec4c71404c899c0d6b50f10c0816c4` |
| Unpacked relocations | 102 | 102 |
| Unpacked MZ header | 512 bytes | 512 bytes |
| Unpacked entry | `0000:0000` | `0000:0000` |
| Unpacked initial stack | `16FA:0040` | `1811:0040` |

The packed executable grew by 1,952 bytes. The unpacked program grew by 4,656
bytes.

The `T7G/V.EXE` supplied with the commercial assets is byte-for-byte identical
to the 1.30 patch executable.

## Official patch description

[`130/T7G130.TXT`](130/T7G130.TXT) says:

- the patch is dated `08-11-93`;
- it supplies V.EXE 1.30, a new installer, and updated sound drivers;
- the player requires only 450 KiB of conventional memory;
- this is achieved through greater XMS use;
- performance can consequently be slightly slower;
- the patch was intended for machines which could not run 1.22 or 1.24.

The bundled FAQ gives the corresponding requirements:

| Player generation | Conventional memory | Extended memory |
| ----------------- | ------------------: | --------------: |
| 1.22/1.24 and the pre-1.30 family | approximately 570 KiB | 1 MiB XMS |
| 1.30 | approximately 450 KiB | 1 MiB XMS |

## Structural comparison

Ghidra found 233 function entries in 1.26 and 261 in 1.30. Automatic function
discovery is imperfect for hand-written 16-bit assembly, so these are useful
comparison counts rather than original source-level function totals.

Function matching used complete instruction-mnemonic sequences and a second
signature containing mnemonic plus operand type:

| Match class | 1.26 functions matched in 1.30 |
| ----------- | --------------------------------: |
| Same complete mnemonic sequence | 219 / 233 (94.0%) |
| Same mnemonic and operand-shape sequence | 211 / 233 (90.6%) |
| Byte-identical despite relocation/layout changes | 26 / 233 |

Only 14 recovered 1.26 functions lack an exact mnemonic-sequence match. The
1.30 image has 42 unmatched functions: those 14 changed equivalents plus a net
28 additional functions, predominantly in the expanded-memory support segment.

The reusable signature exporter is
[`../tools/ExportFunctionSignatures.java`](../tools/ExportFunctionSignatures.java).

## GRV virtual machine comparison

| Property | 1.26 | 1.30 |
| -------- | ---- | ---- |
| Interpreter entry | `1000:35B2` | `1000:3AC4` |
| Function size | 890 bytes | 890 bytes |
| Decoded instructions | 348 | 348 |
| Mnemonic SHA-256 | `76c0e8e54ec63ebd73a639e91d370cadbc63bc6a1572e2926cd17511c15e42ba` | same |
| Operand-shape SHA-256 | `1e50c678685031c065149284f4e3fa261cdf7dc86329d16a30cc4b9db5a2aa62` | same |
| Highest explicit handler | `0x4E` | `0x4E` |

The byte hash differs because calls and global storage moved, but the complete
instruction grammar is identical.

Consequences:

- 1.30 adds no GRV opcode.
- No opcode is removed.
- Operand sizes are unchanged.
- The 1,024-byte variable bank, call mechanism, subscript mechanism, input
  loops, hotspots, media references, and save-game representation are
  unchanged.
- The 1.30 patch itself introduced no new script grammar; scripts authored for
  the same DOS dialect did not require recompilation for the memory patch.

### The opcode `0x1E` contradiction

Both DOS versions implement `0x1E` as:

```asm
lodsw
mov [bp-local], ax
ret
```

The stored word has no reader in either recovered DOS image. Therefore both DOS
versions advance over two operand bytes.

The supplied retail `MAZE.GRV`, however, has 106 occurrences shaped like:

```text
1E 02 09 47 3C
```

The Windows/ScummVM one-byte interpretation yields:

```text
1E 02       reserved value 2
09 47 3C    play MC.GJD resource 0x47, "ms.vdx"
```

The DOS two-byte interpretation yields:

```text
1E 02 09    reserved word 0x0902
47          resource-context restore
3C          scan save slots
```

The one-byte form is strongly supported by corpus structure:

- it recovers 106 additional coherent maze `VIDEOREF` instructions;
- resource-context save/restore counts become exactly balanced at 140 each;
- save-slot scanning appears once in `SCRIPT.GRV`, rather than 107 times
  including every maze turn;
- it matches the original Windows player and ScummVM.

This is not a 1.26-to-1.30 fix: the DOS handler is identical in both. The
current evidence instead indicates a script/player dialect or provenance
mismatch in the supplied commercial set, or a historical DOS behavior not yet
accounted for. Both forms must remain representable until another independently
sourced DOS `MAZE.GRV` can be compared.

## Command-line and standalone VDX behavior

The recovered command-tail grammar is unchanged:

| Invocation | 1.26 | 1.30 |
| ---------- | ---- | ---- |
| `V @` | Loads `demo.grv` | Same |
| `V !` | Loads `script.grv` | Same |
| `V ?` or empty tail | Hardware diagnostics | Same |
| `V name` | Plays `name.vdx` and exits | Same |
| `V ~name` | Forces VGA mode 13h and plays `name.vdx` | Same |

The ability to launch an arbitrary loose VDX is therefore not an accidentally
removed development feature: Trilobyte retained it in the 1.30 public patch.
That makes it a particularly good compatibility target for authoring and mod
tools.

## Recovered changed subsystems

The following table maps the principal changed 1.26 functions to their 1.30
equivalents. Names are semantic working names inferred from callers and
behavior, not original Trilobyte symbols.

| 1.26 | 1.30 | Size change | Recovered role |
| ----: | ----: | ----------: | -------------- |
| `1000:00D1` | `1000:00D1` | 215 → 272 | Diagnostic/standalone VDX startup; adds memory checks and failure paths |
| `1000:054E` | `1000:0587` | 1,856 → 2,472 | VDX bitmap/still decoding and destination transfer |
| `1000:0DBA` | `1000:105A` | 4,373 → 4,692 | VDX delta-frame decoder/render core |
| `1000:1FC3` | `1000:23A5` | 231 → 492 | GRV `COPY_RECT_TO_BG`; expanded for XMS-backed image storage |
| `1000:20AA` | `1000:2591` | 125 → 340 | GRV `COPY_BG_TO_FG`; expanded for XMS-backed image storage |
| `1000:24D4` | `1000:2997` | 597 → 593 | Stream/refill and media-buffer transfer path |
| `1000:2AC4` | `1000:2F84` | 1,068 → 1,075 | Hardware/video initialization and diagnostics |
| `1000:31C5` | `1000:368C` | 59 → 70 | XMS manager/version/free-memory query |
| `1000:3200` | `1000:36D2` | 67 → 132 | Diagnostic memory-number formatter |
| `1000:5248` | `1000:576E` | 682 → 713 | Main subsystem/memory initialization |
| `1000:57A8` | `1000:5CED` | 399 → 415 | Global shutdown and memory/resource cleanup |

Several other unmatched functions are low-level support or relocated library
code. Their complete semantic naming remains provisional, but none is called
as a new GRV handler.

### XMS changes

Both versions can detect an XMS manager and print its version/free-memory
information. Version 1.30 goes further:

- it treats unavailable or insufficient XMS as a startup failure;
- it contains the new messages:

  ```text
  Could not find a XMS memory manager or no XMS memory free.
  A XMS manager with at least 1024k free is required.
  ```

- it adds a substantial family of XMS object and block-transfer helpers;
- video decode and image-copy routines move data between conventional staging
  buffers and XMS-backed storage;
- shutdown explicitly releases the new allocations.

The older message:

```text
Error changing DOS allocation strategy
```

is absent from 1.30.

### Video behavior

The VDX format and GRV video opcodes are unchanged, but internal storage is
not. The routines implementing delta decode, still decode, background copying,
and rectangle copying are among the largest changed functions. The added code
is transfer/bookkeeping machinery around the existing visual algorithms.

This explains the patch note's possible slowdown: some operations which could
previously access a conventional-memory image directly now require XMS moves
through addressable staging memory.

## What did not change

The comparison found no evidence of changes to:

- GRV opcode dispatch or hotspot semantics;
- RL/GJD packed-reference interpretation;
- VDX chunk grammar or compression opcodes;
- XMI references and the principal Miles control opcodes;
- save-game payload size;
- the command characters `@`, `!`, `?`, or `~`;
- the loose one-off VDX launch path;
- copy protection.

Updated audio drivers and a replacement installer are distributed beside
1.30, but they are support-file changes rather than new logic inside the GRV
virtual machine.

## Verification and limitations

- Both originals were analyzed from unpacked temporary copies; packed files
  were not modified.
- LZEXE output has valid MZ headers and 102 relocations for both versions.
- Interpreter equivalence was checked at instruction and operand-shape level,
  not inferred from similar source-looking pseudocode.
- Decompiler names and types remain generated approximations.
- Runtime DOS capture would still be useful for measuring the precise XMS
  allocation sizes and transfer cadence.
- A second, independently sourced DOS maze script is required to settle the
  `0x1E` dialect contradiction.
