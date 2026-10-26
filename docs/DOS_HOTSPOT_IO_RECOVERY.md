# DOS 1.30 hotspot and file-helper recovery

The October 24, 2026 pass identifies 18 additional DOS function roles and
extracts 110 bytes of mutable hotspot records. DOS verified roles advance
from 158/261 to 176/261 (67.4%); 85 provisional entries remain. The Win32
inventory stays at 170/336, giving 346/597 (58.0%) across the two x86 players.
These counts describe behavior identified at existing analyzer entries;
unresolved data, indirect targets, and provisional boundaries remain work.

Evidence comes from the canonical DOS instructions, the GRV dispatchers,
data references, and isolated execution of the rebuilt machine code. Names
are descriptive working names, not original symbols.

## Built-in hotspots

`run_grv_input_loop` at `0447B` dispatches the six operand-bearing wrappers
below. Each reads the target word at script `DS:SI`, writes it through `SS`
into its mutable record, switches `DS` to `0893h`, and tail-jumps to
`test_grv_hotspot_rect` at `047DC`. The wrapper does not advance script SI;
the input-loop caller saves/restores SI and advances it by two on a miss or
hover. Persistent wrappers use targets previously installed by the main VM.

Ten records occupy load-image bytes `16987–169F4` (`DS:E057–E0C4`). Each is
11 bytes: five little-endian words for left, top, right, bottom, and target,
followed by a cursor byte. All original targets are zero. The named source is
[`grv_builtin_hotspot_rectangles.asm`](../disassembly/V/src/data/grv/grv_builtin_hotspot_rectangles.asm).
Bytes `1692C–16986` and `169F5–169F7` retain unresolved identities.

| Entry | Opcode/state | DS record | Inclusive rectangle | Initial cursor |
|---|---|---|---|---:|
| `04754` | persistent `2C` top bar | `E0A4` | `(0,0)–(639,79)` | 0 |
| `0475E` | persistent `44` right | `E057` | `(576,80)–(639,399)` | 1 |
| `04768` | persistent `45` left | `E062` | `(0,80)–(63,399)` | 2 |
| `04772` | persistent `2D` bottom bar | `E0AF` | `(0,400)–(639,479)` | 0 |
| `0477C` | `30` bottom bar | `E0BA` | `(0,400)–(639,479)` | 4 |
| `0478C` | `0F` right | `E06D` | `(576,80)–(639,399)` | 1 |
| `0479C` | `0E` left | `E078` | `(0,80)–(63,399)` | 2 |
| `047AC` | `11` center | `E083` | `(156,80)–(483,399)` | 0 |
| `047BC` | `10` center | `E099` | `(156,80)–(483,399)` | 3 |
| `047CC` | `12` full scene width | `E08E` | `(0,80)–(639,399)` | 0 |

Persistent `2C`/`2D` also install a script-specified cursor byte. These tables
are mutable runtime state, not immutable constants.

The shared hit test first rejects a nonzero `SS:D9B8`. It adds 16, with word
wrapping, to X at `SS:D9D8` and Y at `SS:D9DA`, then uses unsigned inclusive
bounds. An accepted position increments byte `SS:E165`. Without button bit
0 at `SS:D9DE`, it selects the record's cursor through `04710` and returns.
With bit 0 set, it clears the button word, erases the cursor, restores the
saved palette, and clears the bottom bar through `04BF5`, `02822`, and
`054F9`. It restores script DS, discards the wrapper return and saved SI,
and returns directly to the enclosing interpreter with SI set to the target.
This stack unwind is part of the contract.

This corrects three previous claims about DOS: `10` and `11` share geometry
but use different cursor codes; `12` performs a position test; and built-in
left/right/center geometry is not uniformly the geometry currently used by
`src/grv_runtime.cpp`. The current v64tng implementation uses a 100-pixel
left strip, a right strip beginning at 540, and a center span of 200–440,
with different cursor choices. This pass preserves those runtime choices;
it does not establish which behavior should be used for every port or
change the game engine. Cursor numbers are raw indices, not a claim about
the visual meaning of a cursor asset.

## Independent file-handle lifetimes

| Entry | Recovered role | Handle slot | Evidence |
|---|---|---|---|
| `0376A` | `close_song_archive` | `SS:D86B` | Selected/replaced by `03941`; read by `039EE` |
| `03774` | `close_video_archive` | `SS:D849` | Selected/replaced by `0388A` and restored by `03838` |
| `0377E` | `close_video_and_song_archives` | both above | Shutdown `05CED` calls it; video closes before song |
| `05734` | `open_driver_or_timbre_file` | `SS:E481` | Configured drivers in `0576E`, timbres in `05AAC` |
| `0574A` | `close_driver_or_timbre_file` | `SS:E481` | Shared driver/timbre cleanup |
| `05754` | `read_driver_or_timbre_file` | `SS:E481` | Driver staging read and allocated-segment reread |
| `0575E` | `rewind_driver_or_timbre_file` | `SS:E481` | Absolute seek to zero between those reads |

The driver/timbre handle is shared across those two uses, and is separate
from video, song, and general resource (`SS:D9CC`) handles. Naming it only
a timbre handle would miss the startup driver-loading callers.

`05734` executes the real filename builder `039F8`, opens read-only with
`AX=3D00h`, stores a successful handle, and returns zero. An open failure
returns `FFFFh` and leaves the previous handle slot unchanged. The filename
builder chooses the program-directory prefix only when the leading filename
selector byte equals one; every other selector chooses the data directory.

The read wrapper passes CX and DS:DX through to DOS. The rewind wrapper
zeroes CX:DX and issues `AX=4200h`. Read, close, and rewind propagate DOS
status/flags. Close wrappers do not validate or clear their handle slots;
`0377E` attempts both closes even if the first fails and returns the second
close's status. These are historical contracts, not proposed error handling.

The remaining promoted entry, `043C9`, implements opcode `01`: it writes
one to `SS:D9CE`, preserves SI, and consumes no operand. Its name
`grv_set_reserved_flag_d9ce` deliberately assigns no unproved gameplay role.

## Validation and limits

Run from the repository root:

```sh
V_DISASSEMBLY_NO_DEPLOY=1 disassembly/V/build.sh
python grooviev1/verify_dos_hotspot_io_helpers.py
```

The Python check requires Unicorn. It verifies the complete executable's
canonical SHA-256 before executing it. All 1,034 cases pass:

- all ten hotspot wrappers: corners, edges, one pixel outside each edge,
  coordinate wrapping, button masks 0–3, and the shared rejection flag;
- target-word installation from script DS, cursor selection, accepted-hit
  bookkeeping, and the click stack unwind into the interpreter;
- open success/failure with four filename selector bytes, preservation of
  independent handle slots, read destination segment selection, rewind
  inputs/results, close order, and a failing first close followed by success;
- the opcode-01 reserved-word store and preservation of SI/script DS.

Cursor/display callees and DOS INT 21h are mocked. The executed instructions,
filename builder, mutable records, segment overrides, branch decisions, and
stack operations come from the canonical rebuilt image. This is not a
DOSBox or hardware capture and does not verify rendering, actual disk I/O,
or the visual meaning of cursor assets. The byte-identical build separately
proves that renaming functions and splitting data preserved the DOS image.

Per-entry instructions, caller lists, contracts, and source paths are in
[`semantic_roles.json`](../disassembly/semantic_roles.json). Caller lists
record direct numeric near calls; they do not enumerate every indirect edge.
