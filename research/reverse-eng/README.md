# Portable lossless x86 disassembly kit

This directory is the reusable research workspace for constructing explicit,
byte-identical NASM projects from DOS and 32-bit Windows x86 executables. It is
deliberately separate from permanent disassemblies: copy this directory into a
new repository to perform analysis, then publish only the maintained assembly
tree and its hash-verifying build when the reconstruction is mature.

The workflow has been validated in this Arch Linux environment against both a
16-bit DOS MZ target and a 32-bit Windows PE target:

| Target | Functions exported | Instructions decoded | Rebuilt bytes | Result |
|---|---:|---:|---:|---|
| Canonical unpacked DOS MZ | 261 | 12,484 | 102,136 | SHA-256 and every byte identical |
| Canonical Win32 PE32 | 336 | 25,181 | 144,896 | SHA-256 and every byte identical |

Lossless means every byte is represented in assembly source and the rebuilt
file equals the declared canonical input. It does not mean that automatic
function boundaries, types, names, or decompiler output are correct.

## Contents

| Path | Purpose |
|---|---|
| `bin/check_environment.sh` | Confirms the required local commands and Ghidra headless entry point |
| `bin/inspect_x86_executable.py` | Reports MZ/PE layout, fingerprints, and generator address hints |
| `bin/generate_lossless_nasm.py` | Produces explicit NASM, resolves noncanonical instruction encodings, and proves complete byte identity |
| `bin/binary_diff.py` | Gives compact mismatch ranges, hashes, and byte context |
| `ghidra/ExportDecomp.java` | Exports Ghidra function ownership plus best-effort decompiler output |
| `ghidra/ExportFunctionSignatures.java` | Exports exact-byte, mnemonic, and instruction-shape function signatures |

The Python standard library is sufficient. The generator invokes NASM and
`ndisasm`; it does not use a Python disassembler whose decoder might disagree
with the assembler.

## Exact Arch Linux environment

The successful validation environment on 5 August 2026 contained:

| Component | Validated version/location |
|---|---|
| Arch Linux | Rolling environment represented by this repository host |
| Ghidra | 12.1.2 at `/opt/ghidra` |
| OpenJDK | 26.0.2 |
| NASM/ndisasm | 3.02 |
| GNU binutils | 2.47 |
| Python | 3.14.6 |
| ripgrep | 15.2.0 |
| Git | 2.55.0 |
| Rust/Cargo | 1.99 nightly; needed only when installing the optional LZEXE unpacker |

Install the required Arch packages:

```sh
sudo pacman -S --needed \
  base-devel binutils git ghidra jdk-openjdk nasm python ripgrep
```

For LZEXE-packed DOS programs, also install Rust/Cargo:

```sh
sudo pacman -S --needed rust cargo
```

Arch package versions will move. Record the actual versions used for every new
project:

```sh
pacman -Q ghidra jdk-openjdk nasm binutils python ripgrep git
java -version
nasm -v
python3 --version
```

Set a kit path after copying this directory into a repository:

```sh
reverse_kit="$PWD/research/reverse-eng"
"$reverse_kit/bin/check_environment.sh"
```

`GHIDRA_HEADLESS` may override `/opt/ghidra/support/analyzeHeadless`.

## The invariant

Keep these layers distinct:

1. **Original artifact** — never modify it; fingerprint it immediately.
2. **Canonical analysis target** — the exact file being reconstructed. For a
   packed executable this is commonly a deterministic unpacked image.
3. **Analyzer database** — useful but provisional metadata.
4. **Generated lossless source** — complete byte ownership with automatic
   names and boundaries.
5. **Maintained permanent source** — semantic names and organization, with the
   canonical hash continuously enforced.
6. **Native reimplementation** — behaviorally equivalent C/C++ code; it is not
   expected to compile to the historical machine bytes.

Never change the canonical target silently. A different release, unpacker,
loader normalization, or patched executable is a different target and needs a
new fingerprint and provenance record.

## End-to-end procedure

### 1. Create an isolated workspace

Do not generate over a maintained disassembly. Use a disposable analysis
directory:

```sh
work="$PWD/research/work/game-version"
mkdir -p "$work"/{original,canonical,ghidra,exports,generated,logs}
```

Keep copyrighted originals out of public commits unless distribution is
authorized. A hash, size, edition, acquisition note, and required filename are
normally sufficient for reproducibility.

### 2. Fingerprint the untouched original

```sh
sha256sum "$work/original/GAME.EXE" | tee "$work/logs/original.sha256"
stat --printf='%n %s bytes\n' "$work/original/GAME.EXE"
file "$work/original/GAME.EXE"
"$reverse_kit/bin/inspect_x86_executable.py" \
  "$work/original/GAME.EXE" --json \
  | tee "$work/logs/original-layout.json"
```

Record all of the following before analysis:

- exact release/region/language and visible version;
- original filename and byte size;
- SHA-256;
- whether the file is packed, overlaid, signed, or self-modifying;
- source/provenance of the artifact;
- host tool versions.

Do not strip overlays, debug tails, signatures, resources, relocation data, or
padding merely because they are not executed. They are part of byte identity.

### 3. Define and produce the canonical target

An unpacker transforms the artifact. Therefore pin the unpacker version and
hash both its input and output.

For LZEXE 0.90/0.91, the validated workflow used the MIT-licensed `lzexe`
crate version 0.1.1:

```sh
tool_root="$work/toolchain/lzexe-0.1.1"
cargo install lzexe --version 0.1.1 --locked --root "$tool_root"
"$tool_root/bin/unlzexe" \
  "$work/original/GAME.EXE" \
  "$work/canonical/GAME-unpacked.exe"
sha256sum "$work/original/GAME.EXE" \
  "$work/canonical/GAME-unpacked.exe" \
  | tee "$work/logs/canonical.sha256"
```

Use the untouched PE itself when it is already the intended Win32 target:

```sh
cp --reflink=auto \
  "$work/original/GAME.EXE" \
  "$work/canonical/GAME.exe"
cmp "$work/original/GAME.EXE" "$work/canonical/GAME.exe"
```

Inspect the canonical file, not only the packed original:

```sh
"$reverse_kit/bin/inspect_x86_executable.py" \
  "$work/canonical/GAME-unpacked.exe" --json \
  | tee "$work/logs/canonical-layout.json"
```

For an MZ file, verify at minimum:

- header size (`e_cparhdr * 16`);
- relocation count and table extent;
- entry `CS:IP`;
- initial `SS:SP`;
- declared file size versus actual bytes;
- overlay bytes after the declared load image.

For PE32, verify:

- image base and entry RVA;
- every section's RVA, raw offset, virtual size, and raw size;
- imports, resources, base relocations, debug directory, and trailing bytes;
- that code addresses map to file offsets using the appropriate section.

### 4. Import the canonical target into Ghidra

The scripts require a normal Ghidra project with auto-analysis completed.
Ghidra's decisions are starting evidence, not truth.

For a DOS MZ target:

```sh
ghidra_headless="${GHIDRA_HEADLESS:-/opt/ghidra/support/analyzeHeadless}"
"$ghidra_headless" \
  "$work/ghidra" game-dos \
  -import "$work/canonical/GAME-unpacked.exe" \
  -processor "x86:LE:16:Real Mode" \
  -analysisTimeoutPerFile 3600
```

For PE32:

```sh
"$ghidra_headless" \
  "$work/ghidra" game-win32 \
  -import "$work/canonical/GAME.exe" \
  -processor "x86:LE:32:default" \
  -analysisTimeoutPerFile 3600
```

If format-specific loader options are needed, import through the Ghidra GUI
once, save the project, and use the headless `-process` commands below.

Before export, inspect these analyzer results manually:

- entry point and all exported/public callbacks;
- executable memory blocks and their file mappings;
- indirect-call and jump-table destinations;
- function bodies with multiple noncontiguous ranges;
- code mistaken for data and data mistaken for code;
- overlapping functions, shared tails, and thunk functions;
- address spaces used for DOS segments.

For the validated DOS target, Ghidra represented load-image offset zero as
`1000:0000`. Consequently the generator used `--segment-base 0x1000`. Another
loader/project may choose a different segment. Read the first exported entry
and calculate it; never cargo-cult `0x1000`.

### 5. Export function ownership and decompiler evidence

Determine the imported program name in the project, then run:

```sh
program_name="GAME-unpacked.exe"
"$ghidra_headless" \
  "$work/ghidra" game-dos \
  -process "$program_name" \
  -scriptPath "$reverse_kit/ghidra" \
  -postScript ExportDecomp.java "$work/exports/decomp"
```

This creates:

- `functions.tsv`: entry, current Ghidra name, and owned body ranges;
- `decompiled.c`: best-effort pseudocode for research.

Export comparison signatures separately:

```sh
"$ghidra_headless" \
  "$work/ghidra" game-dos \
  -process "$program_name" \
  -scriptPath "$reverse_kit/ghidra" \
  -postScript ExportFunctionSignatures.java \
  "$work/exports/function-signatures.tsv"
```

The signature table contains:

- exact function-body byte hash;
- instruction count;
- mnemonic-sequence hash;
- mnemonic/operand-shape hash;
- readable mnemonic sequence.

Exact hashes find unchanged functions. Mnemonic and shape hashes are weaker
cross-version clues; they are not proof of semantic identity.

### 6. Generate an explicit DOS MZ source tree

Use the canonical MZ header size reported by the inspector. Set
`--segment-base` to the Ghidra segment corresponding to logical load-image
offset zero:

```sh
"$reverse_kit/bin/generate_lossless_nasm.py" \
  --reference "$work/canonical/GAME-unpacked.exe" \
  --function-map "$work/exports/decomp/functions.tsv" \
  --output-dir "$work/generated/dos" \
  --bits 16 \
  --address-format segmented \
  --segment-base 0x1000 \
  --prefix-size 0x200 \
  --origin 0 \
  --title "GAME DOS canonical unpacked MZ" \
  --output-name GAME-rebuilt.exe
```

The generator:

1. maps every exported function range to canonical file bytes;
2. rejects overlaps, empty ranges, and out-of-file ownership;
3. decodes owned ranges with `ndisasm`;
4. emits every other header, gap, table, padding, data, and overlay byte as
   explicit `db`;
5. assembles the result;
6. detects instructions NASM encoded differently;
7. replaces those instructions with exact bytes while retaining their decoded
   mnemonic in comments;
8. repeats until stable;
9. refuses success unless the complete rebuilt file equals the reference.

The MZ prefix and mapped image use separate NASM sections. This preserves the
fact that on-disk header bytes precede an image whose runtime offset begins at
zero.

The output directory must be empty. `--force` regenerates only a directory
already carrying the generator's `.lossless-nasm-worktree` marker; it refuses
to overwrite an unmarked source tree.

### 7. Generate an explicit PE32 source tree

For the common flat `.text` case, calculate the NASM origin:

```text
origin = image_base + .text_RVA - .text_raw_offset
```

The inspector reports this value as `generator_hint.origin`. For the validated
v32tng PE:

```text
00400000h + 00001000h - 00000400h = 00400C00h
```

Generate:

```sh
"$reverse_kit/bin/generate_lossless_nasm.py" \
  --reference "$work/canonical/GAME.exe" \
  --function-map "$work/exports/decomp/functions.tsv" \
  --output-dir "$work/generated/win32" \
  --bits 32 \
  --address-format hex \
  --origin 0x00400C00 \
  --title "GAME Win32 canonical PE32" \
  --output-name GAME-rebuilt.exe
```

This flat origin is valid when analyzer-owned functions occupy sections with
one consistent VA-to-raw bias, normally `.text`. If executable code exists in
multiple PE sections with different RVA/raw mappings, do not force those
addresses through one bias. Export/generate each mapping separately or extend
the generator with an explicit section map and add a regression fixture first.

### 8. Verify independently

The generated `build.sh` contains only the canonical SHA-256, not the original
binary. Run it:

```sh
"$work/generated/dos/build.sh"
```

While the private reference is available, also compare directly:

```sh
cmp \
  "$work/canonical/GAME-unpacked.exe" \
  "$work/generated/dos/build/GAME-rebuilt.exe"
"$reverse_kit/bin/binary_diff.py" \
  "$work/canonical/GAME-unpacked.exe" \
  "$work/generated/dos/build/GAME-rebuilt.exe"
```

Successful validation requires all three:

- equal file size;
- equal SHA-256;
- `cmp`/the diagnostic comparator reports no differing byte.

Hash equality is sufficient cryptographic evidence for a public build that
does not distribute the reference. Direct comparison remains valuable during
generation because it localizes tooling bugs.

### 9. Freeze the mechanical baseline

Before semantic edits, preserve:

- `src/main.asm` and all generated source;
- `build.sh`;
- `generation.json`;
- `ADDRESS_MAP.tsv`;
- function and instruction coverage counts;
- canonical target size and SHA-256;
- Ghidra version, language ID, loader, and project settings;
- generator Git revision;
- unpacker version and input/output hashes;
- all assumptions used for address mapping.

Commit the baseline separately from semantic renaming. This makes it possible
to distinguish generator behavior from later research judgment.

### 10. Convert generated source into maintained source

The generated project is intentionally mechanical. Improve it incrementally:

1. Move the assembly root to the desired permanent location.
2. Make MZ/PE headers and relocations readable while retaining their exact
   values.
3. Keep a single explicit file-emission order.
4. Rename only functions whose behavior is supported by evidence.
5. Move verified functions into subsystem directories.
6. Preserve original addresses in an address map and source preambles.
7. Leave uncertain function names address-based.
8. Convert discovered tables/data structures only when their exact byte layout
   remains guarded.
9. Rebuild after every small edit.

Safe edits include labels, comments, filenames, include organization, and
equivalent assembly spelling that reproduces the same bytes.

High-risk edits include changing function ownership, replacing `db` with an
instruction, changing section/origin arithmetic, adding alignment, changing a
branch qualifier, or allowing NASM to choose a new encoding. Make one such
change at a time and require the canonical hash immediately afterward.

### 11. Publish the permanent disassembly without the laboratory

A mature public disassembly needs:

- explicit maintained assembly;
- one obvious `src/main.asm`;
- a dependency-light `build.sh`;
- a canonical target hash and size;
- complete address/function map;
- coverage and semantic-confidence counts;
- provenance and naming policy.

It does not need:

- the private original executable;
- Ghidra databases or exports;
- generated decompiler dumps;
- unpackers;
- this reconstruction kit;
- scripts that overwrite the maintained source tree.

That separation keeps permanent disassemblies independent of
`research/reverse-eng`.

## Address models

### DOS segmented addresses

Given a Ghidra address `segment:offset`, the generator calculates:

```text
logical = (segment - segment_base) * 16 + offset
raw = MZ_header_size + logical - origin
```

Different segment:offset pairs may alias the same physical address in real
mode. Ghidra's ownership model must be made internally consistent before
generation; the tool deliberately rejects overlapping raw ownership.

### PE virtual addresses

For a PE section:

```text
raw = section_raw_offset + (VA - image_base - section_RVA)
```

When all owned code uses one bias, the generator's flat origin is:

```text
origin = VA - raw
```

Do not use RVA as VA and do not assume the image base is `00400000h` for an
unrelated executable.

## Why decoded instructions sometimes remain `db`

x86 permits multiple encodings with the same visible behavior. Assemblers
normally choose a preferred form. Historical binaries may instead contain:

- direction-bit alternatives;
- accumulator-specific versus general ModRM forms;
- longer immediate/displacement forms;
- redundant prefixes;
- nonpreferred register-to-register encodings;
- branch-size choices that a modern assembler relaxes.

If NASM's bytes differ, writing the mnemonic alone would destroy byte identity.
The generator therefore retains exact bytes and places the decoded instruction
in the comment. This is a decoded instruction with a noncanonical encoding,
not unknown data.

## Analyzer and generator limits

- Function boundaries remain Ghidra hypotheses.
- Indirect targets and hand-written assembly require manual review.
- Data misidentified as code can still decode into plausible x86.
- A packed or self-modifying program must first have a defined canonical
  representation.
- DOS overlays and unusual loaders require explicit mapping review.
- The generic generator currently supports one analysis-origin mapping plus an
  optional separately mapped file prefix.
- PE code in sections with different VA/raw biases requires a section-map
  extension.
- The workflow produces x86 NASM, not C and not a portable decompilation.
- Behavioral equivalence of a reimplementation requires runtime differential
  validation in addition to binary reconstruction.

## Reproducibility record template

Copy this table into the new project's permanent README:

| Field | Recorded value |
|---|---|
| Original artifact | filename, release, region, language |
| Original size/SHA-256 | |
| Canonical target definition | original, unpacked, normalized, or patched |
| Canonical size/SHA-256 | |
| Transformation tool/version | |
| Ghidra version | |
| Loader and language ID | |
| Image/segment base | |
| Address-to-file mapping | |
| Function count | |
| Decoded instruction count | |
| Exact-encoding fallback count | |
| Explicit byte coverage | |
| `incbin` count | must be zero for this workflow |
| NASM version | |
| Generator revision | |
| Independent comparison result | |
