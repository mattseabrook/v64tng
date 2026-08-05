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

The build verifies the packed original, deterministically decompresses LZEXE,
assembles [`main.asm`](main.asm), verifies the rebuilt hash, and finally uses
`cmp` to prove exact file identity. Only after those checks pass, it deploys
the rebuilt executable as `/mnt/T7G/T7G.EXE`. The original `/mnt/T7G/V.EXE`
is never removed or overwritten. It rejects any executable-byte `incbin`
directive in the source tree.

Set `V_DISASSEMBLY_NO_DEPLOY=1` to perform the complete build and verification
without deploying.

The first run may fetch and compile the pinned, MIT-licensed `lzexe` 0.1.1
crate into the ignored `build/toolchain` directory. NASM and Python 3 are the
other source-generation/build requirements.

## What “complete” means today

The project has **complete mechanical source coverage**:

- all 512 MZ header bytes, including all 102 relocation records, are explicit
  NASM source;
- all 101,624 bytes in the DOS load image are explicit source;
- 261 provisional Ghidra function entries are split into individual files;
- all 12,484 instructions in those owned function ranges are decoded;
- data, padding, tables, inline constants, and unowned gaps remain explicit
  `db` data rather than disappearing into a binary include;
- there are zero `incbin` directives.

This is not yet complete semantic recovery. Ghidra's 261 function boundaries
are analyzer findings, not original object-module boundaries. Some bytes now
classified as data may prove to be code, and some functions may later be
split, joined, or grouped. Of the 261 entries, 16 currently have verified
semantic roles and 245 retain neutral `func_XXXXX` names.

See [`analysis/SOURCE_COVERAGE.md`](analysis/SOURCE_COVERAGE.md) for exact
counts, [`analysis/function-inventory.tsv`](analysis/function-inventory.tsv)
for the working symbol table, and
[`analysis/RUNTIME_CAPTURE_WORKFLOW.md`](analysis/RUNTIME_CAPTURE_WORKFLOW.md)
for turning play-test/debugger observations into verified names.

## Source organization

| Path | Purpose |
|---|---|
| `main.asm` | Canonical assembly root and MZ/load-image section layout |
| `src/header.asm` | Explicit DOS MZ header and relocation table |
| `src/layout.asm` | Exact linear emission order for code fragments and data |
| `src/functions/HH/*.asm` | One file per provisional function, grouped by the high byte of its linear entry |
| `src/data/gaps.asm` | Explicit bytes between analyzer-owned function bodies |
| `src/data/segments/*.asm` | Explicit post-code data in manageable chunks |
| `analysis/function-map.tsv` | Preserved Ghidra ownership-range export |
| `analysis/function-inventory.tsv` | Address, working name, confidence, and source path |
| `tools/generate_lossless_source.py` | Deterministic source generator and byte-identity verifier |

NASM is allowed to emit an instruction only when it reproduces its original
encoding exactly. Where the same mnemonic would be canonically encoded
differently, the source uses exact `db` bytes and retains the decoded mnemonic,
address, and opcode in the comment. These are decoded instructions with
noncanonical encodings, not unknown or omitted bytes.

To regenerate the complete tree from the already-unpacked reference:

```sh
python3 tools/generate_lossless_source.py \
  --reference build/reference/V130-unpacked.exe \
  --function-map analysis/function-map.tsv
```

The generator rewrites generated function/data/layout files, assembles a
probe, and refuses to finish unless the probe is byte-identical.

## Naming policy

Recovered names describe verified behavior; they are not claimed to be
Trilobyte's original symbols. An address-based name stays in place until
static control flow, cross-version correspondence, runtime evidence, or a
combination of those sources supports a better one.

The cross-version `SCRIPT.GRV` startup/save/audio correlation is recorded in
[`../GRV/MAIN_MENU_BOOT_TRACE.md`](../GRV/MAIN_MENU_BOOT_TRACE.md).

It is realistic to determine what every reachable routine does. It is not
realistic to promise the exact original source filenames, labels, comments,
macros, or module boundaries without an original source/symbol artifact.

The canonical target is the **unpacked** executable. Reproducing the original
23,425-byte compressed file is a separate compressor-provenance milestone;
unpacked program identity is already exact.
