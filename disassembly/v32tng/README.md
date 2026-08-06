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
and uses `cmp` to prove exact file identity. It rejects any executable-byte
`incbin` directive in the source tree.

## What “complete” means today

The project has **complete mechanical source coverage**:

- all 144,896 raw PE file bytes are explicit NASM source;
- all PE headers, section padding, imports, resources, relocations, debug
  directories, FPO data, and the NB10 CodeView tail are explicit data;
- 336 provisional Ghidra function entries are split into individual files;
- all 25,181 instructions in analyzer-owned function ranges are decoded;
- all remaining bytes are explicit `db` data;
- there are zero `incbin` directives.

This is not yet complete semantic recovery. Ghidra's function ownership is
provisional and does not reveal the original Visual C++ object-module layout.
Some explicit data may later prove to be code, jump tables, inline constants,
or alignment. Thirty entries currently have verified semantic roles; the
other 306 retain neutral `func_XXXXXXXX` names.

See [`analysis/SOURCE_COVERAGE.md`](analysis/SOURCE_COVERAGE.md) for exact
counts, [`analysis/function-inventory.tsv`](analysis/function-inventory.tsv)
for the working symbol table, and
[`analysis/RUNTIME_CAPTURE_WORKFLOW.md`](analysis/RUNTIME_CAPTURE_WORKFLOW.md)
for turning debugger observations into verified names.

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

The original PDB itself is not present. The embedded path is valuable
provenance, but it does not restore original private symbols.

## Source organization

| Path | Purpose |
|---|---|
| `main.asm` | Canonical flat-PE assembly root |
| `src/layout.asm` | Exact raw-file emission order |
| `src/functions/HH/*.asm` | One file per provisional function |
| `src/data/chunks/*.asm` | Explicit headers, gaps, section data, and debug tail |
| `analysis/function-map.tsv` | Preserved Ghidra function/range export |
| `analysis/function-inventory.tsv` | Address, working name, confidence, and source path |
| `tools/generate_lossless_source.py` | Deterministic source generator and verifier |

NASM emits mnemonic source only when it reproduces the historical encoding
exactly. If NASM's canonical encoding differs, the generated source retains
the exact opcode bytes with the decoded virtual address and mnemonic in its
comment. Those lines are decoded instructions, not opaque regions.

To regenerate the complete source tree:

```sh
python3 tools/generate_lossless_source.py \
  --reference ../../research/v32tng/v32tng.exe \
  --function-map analysis/function-map.tsv
```

The generator rewrites generated function/data/layout files and refuses to
finish unless its independently assembled probe is byte-identical.

## Verified semantic footholds

The cross-version `SCRIPT.GRV` startup/save/audio correlation is recorded in
[`../GRV/MAIN_MENU_BOOT_TRACE.md`](../GRV/MAIN_MENU_BOOT_TRACE.md).

The first verified roles preserved in the generated inventory include:

- the central GRV VM and its byte/word/dword operand readers;
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

Recovered labels are our semantic working names, not claims about the exact
original PDB identifiers.
