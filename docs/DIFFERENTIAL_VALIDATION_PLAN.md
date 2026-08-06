# Future differential-validation architecture

This document records a future design only. It does not add emulator
integration, runtime hooks, function replacement, or comparison code to
v64tng.

## What the `zelda3` repository actually verifies

The reviewed repository was
[`mattseabrook/zelda3`](https://github.com/mattseabrook/zelda3), branch `2025`,
at commit
[`8e30f53961295b898b883bf13af7c701c536d13d`](https://github.com/mattseabrook/zelda3/commit/8e30f53961295b898b883bf13af7c701c536d13d).

Its principal correctness mechanism is not a general comparison between the
machine code generated from each C function and the corresponding historical
function. The useful architecture is:

1. verify a precise source ROM and extract assets from known addresses;
2. retain an emulator capable of running the original 65816 program;
3. give the native implementation and original program equivalent starting
   state and input;
4. run both to a synchronization boundary;
5. snapshot and compare selected RAM, SRAM, and VRAM state;
6. report changed addresses with native, original, and prior values;
7. save initial state plus compressed input history for deterministic replay;
8. optionally invoke an original emulated routine from native code with
   controlled registers and memory.

The central implementation is
[`src/zelda_cpu_infra.c`](https://github.com/mattseabrook/zelda3/blob/2025/src/zelda_cpu_infra.c).
Snapshot and replay serialization are in
[`src/zelda_rtl.c`](https://github.com/mattseabrook/zelda3/blob/2025/src/zelda_rtl.c).
ROM-derived resources are extracted and compiled by the Python code under
[`assets/`](https://github.com/mattseabrook/zelda3/tree/2025/assets).

This distinction matters. A native C++ compiler will not normally reproduce
the original Watcom/Visual C++ instruction stream, and machine-code equality
is not required for behavioral correctness. The comparison target is
observable state under deterministic execution.

## Translation to v64tng

The equivalent v64tng system should use three levels of synchronization.

| Level | Boundary | Primary use |
|---|---|---|
| VM | Before and after every GRV opcode | Find interpreter, operand, branch, stack, and variable divergence immediately |
| Media | Before and after every VDX `00h`, `20h`, `25h`, or `80h` chunk | Isolate stream, LZSS, palette, tile, frame, and audio divergence |
| Scenario | Input event, room transition, save/load, or stable rendered frame | Verify player-visible behavior and deterministic replay |

Frame-only comparison would locate a failure too late. A wrong GRV variable can
remain invisible for many frames; an incorrect palette or persistent-frame
update can be traced more precisely at its VDX chunk boundary.

## Canonical event/state schema

Both the original-player oracle and v64tng should emit the same versioned event
schema. At minimum:

- executable/build hash and event-schema version;
- monotonic event sequence;
- script filename/hash and GRV program counter;
- opcode and exact operand bytes;
- branch source, target, and taken/not-taken result;
- variable writes with old/new values;
- GRV call stack and child-script stack depth;
- selected RL/GJD archive, resource reference, offset, and length;
- staged video flags and offsets;
- VDX chunk type, coding marker, input/output size, and LZSS parameters;
- palette hash;
- background, foreground, and presented-frame hashes;
- audio chunk/song event and relevant sequencing state;
- normalized input event and hotspot result;
- save/load slot and variable-bank hash;
- original native address or v64tng semantic handler identifier.

Use JSON Lines while the schema is evolving. Once stable and high-volume,
retain JSON metadata and add a compact binary stream. Never log raw frame or
memory buffers by default; log hashes and emit bounded payloads only around the
first mismatch.

## State normalization policy

Comparison needs an explicit allowlist, not ad hoc suppression.

Compare:

- all 0x400 GRV variables;
- GRV PCs and stacks;
- resource selectors and offsets;
- video flags and geometry;
- palette and persistent pixel buffers;
- deterministic portions of input, save, and audio state.

Normalize or exclude only values demonstrated to be host-specific:

- host pointers and handles;
- wall-clock timestamps;
- renderer object identity;
- audio-device queue depth;
- window position and presentation timing;
- allocator padding;
- explicitly seeded random values before the seed is synchronized.

Every exclusion needs a written reason and a test proving that it cannot hide
game-semantic state. The `zelda3` source contains project-specific memory
normalizations; v64tng should begin with a smaller, documented list and grow it
only from evidence.

## Deterministic scenario recordings

A recording should contain:

- oracle executable hash;
- data-file hashes;
- initial save/state identifier and hash;
- machine/player configuration;
- deterministic clock and random seed;
- ordered input events in game coordinates;
- expected checkpoint/event hashes;
- human scenario description.

The first corpus should cover:

1. boot to main menu;
2. new game to the foyer;
3. exhaustive foyer movement and hotspots;
4. stairs and upstairs hallway;
5. return paths and cursor edges;
6. save, load, and slot enumeration;
7. one script child-call/return sequence;
8. one full-palette VDX still;
9. one compressed delta sequence with interleaved audio;
10. each currently unimplemented GRV opcode when a retail path reaches it.

Record input once and replay it against:

- DOS `V.EXE` in the instrumented DOSBox-X fork;
- `v32tng.exe` through Win32 hooks/debugger instrumentation;
- v64tng's native runtime.

The DOS and Windows originals are independent historical oracles. Agreement
between both is stronger evidence than treating either replacement engine as
authoritative.

## Differential runner

The host runner should:

1. launch or attach to each oracle;
2. verify executable and asset hashes;
3. load the same logical checkpoint;
4. submit one normalized input/event;
5. read events until the declared synchronization boundary;
6. compare event identity and normalized state;
7. stop at the first divergence;
8. request bounded diagnostic expansion;
9. write one self-contained mismatch bundle.

A mismatch bundle should include:

- scenario and step number;
- last matching event;
- first unmatched event from each side;
- differing scalar fields;
- coalesced variable/memory ranges;
- source address mapped through the DOS/Win32 disassembly address maps;
- v64tng handler and source location;
- surrounding event window;
- executable, asset, schema, and configuration hashes.

The comparison engine must distinguish:

- missing event;
- extra event;
- reordered event;
- correct event with wrong operands;
- correct operation with wrong state mutation;
- timing-only/presentation divergence.

## Function-level validation

There are two different meanings of “function comparison.”

### Static cross-version correlation

The existing Ghidra signature exporter provides:

- exact body-byte hashes;
- mnemonic-sequence hashes;
- instruction/operand-shape hashes.

Use these to propose DOS/Win32/demo counterparts. Confirm each proposal with
constants, callers, callees, data references, and runtime observations before
renaming it.

### Behavioral routine comparison

Pure or tightly bounded routines can be invoked with captured inputs and their
outputs compared:

- parameterized LZSS decompression;
- VDX header parsing;
- palette expansion;
- `20h` still decoding;
- `25h` tile/delta operations;
- GRV operand readers;
- resource-reference arithmetic.

For each routine, capture:

- registers/arguments;
- relevant input memory;
- relevant initial global state;
- return/register results;
- exact written ranges;
- fault/error outcome.

Arbitrary historical functions cannot safely be called in isolation merely
because their entry address is known. Many depend on segmented globals,
callbacks, file handles, hardware state, stack layout, or hidden invariants.
Use event/state comparison for impure routines until their contracts are
proven.

## Implementation phases

### Phase 1 — event contract

- Finalize one shared event schema.
- Add v64tng event serialization behind a runtime flag.
- Keep normal builds free of verbose overhead when disabled.
- Add sequence IDs and deterministic hashes.

### Phase 2 — original-player oracles

- Add DOSBox-X instrumentation at the known DOS routine addresses.
- Add Win32 hooks at the mapped v32tng addresses.
- Use address-map metadata, not hard-coded semantic guesses.
- Expose bounded IPC commands: start session, clear log, load checkpoint,
  submit input, continue to boundary, snapshot, and stop.

### Phase 3 — recording and replay

- Store normalized input histories and initial state hashes.
- Make scenario playback headless where possible.
- Validate repeatability on the same oracle before comparing implementations.

### Phase 4 — first-divergence engine

- Align by event sequence and semantic identity.
- Stop at the first difference.
- Produce source-linked mismatch bundles.
- Add corpus scenarios as regression tests.

### Phase 5 — bounded function harnesses

- Start with LZSS and VDX pure transforms.
- Add GRV readers and variable operations.
- Expand only when all dependencies and written ranges are known.

### Phase 6 — continuous validation

- Run native deterministic scenarios in ordinary CI.
- Run original-oracle comparisons in a separate environment requiring
  privately supplied original binaries.
- Publish hashes and reports, not copyrighted executables.

## Near-term related projects

### VDX encoder

The recovered decoder defines a strict validation oracle for newly authored
content. Develop the encoder in layers:

1. raw `20h` full-palette still;
2. lossless 4×4 two-colour tile selection;
3. uncompressed `25h` deltas;
4. palette-delta policy;
5. parameterized LZSS;
6. `80h` audio interleave and timing;
7. round-trip decoder tests;
8. playback under v64tng, `v32tng.exe`, DOSBox-X, and real DOS hardware using
   `V.EXE ~NAME.VDX`.

Byte-valid output is not automatically visually optimal. Quantization,
palette stability, tile choice, temporal error, and compression strategy need
separate quality metrics.

### In-application diagnostic console

Add a Quake-style tilde console as a presentation layer over the same
structured event stream:

- animated open/closed state independent of game logic;
- scrollback, filtering, search, pause, copy, and export;
- GRV opcode/PC/operands and variable writes;
- resource, VDX chunk, palette/frame hash, input, and save events;
- severity/category controls;
- an explicit indicator when events were dropped;
- no change to deterministic VM behavior while visible.

The console and external trace logger should consume one event API. Two
separate logging implementations would eventually disagree.
