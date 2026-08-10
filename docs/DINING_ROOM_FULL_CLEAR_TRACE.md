# Dining-room full-clear runtime evidence

Trace `research/trace/20260809-212141` is the first complete runtime capture of
the dining-room cake puzzle in the verified Win32 1.02b1 executable. The
executable SHA-256 is
`3c8c3fd3edc27717ae2a08b1f98c7a58f72bd91860a080a29e40d1da8854c36c`.
All 20 semantic probes attached with zero failures; the stream has 1,111,223
events, no malformed records or sequence gaps, and ends with normal process
termination.

## Session boundaries

- the player loaded `st7g.1` at `SCRIPT.GRV+0x028D`;
- the sole F9 marker was recorded at 45.003 seconds, before entering the
  dining room;
- the first-visit path set `v[0x0D7]=1` at `SCRIPT.GRV+0x0976`;
- `SCRIPT.GRV+0x40E9` loaded `DR.GRV` at 122.091 seconds;
- the puzzle input loop began at 163.237 seconds;
- `DR.GRV` completed and returned to `SCRIPT.GRV+0x40F1` at 273.691 seconds;
- the parent set `v[0x0D6]=1` at `SCRIPT.GRV+0x0964`;
- the updated 1,024-byte Win32 save payload was written at
  `SCRIPT.GRV+0x2156`.

## Exact cake state machine

The 30 visual cells form a 6-column by 5-row board. Cell state is stored at
`v[0x037 + 5 * column + row]`: zero is unselected, one is selected in the
current tentative piece, and nine is permanently committed. Variables
`v[0x000..0x002]` count the three categories in the current selection.
`DR.GRV+0x00A6` accepts a piece only when these totals are `[2,2,1]`.

| Piece | Selection order | Completion time |
| --- | --- | ---: |
| 1 | `(0,0) (1,0) (0,1) (1,1) (2,1)` | 188.511 s |
| 2 | `(2,0) (3,0) (3,1) (3,2) (2,2)` | 205.299 s |
| 3 | `(4,0) (5,0) (4,1) (5,1) (5,2)` | 221.117 s |
| 4 | `(0,2) (1,2) (0,3) (1,3) (2,3)` | 240.641 s |
| 5 | `(3,3) (4,3) (4,2) (5,3) (5,4)` | 256.125 s |
| 6 | `(4,4) (3,4) (2,4) (1,4) (0,4)` | 272.694 s |

Each accepted group runs the completion sweep at `DR.GRV+0x105B`, changes
its five cell states from one to nine, plays the matching `drNNcf.vdx`
resources, clears the three counters, and increments `v[0x004]`. At six
pieces, the child plays `GAMWAV[2]=gen_e_2.vdx`, sets `v[0x0FA]=49`, and
executes `RETURNSCRIPT 0` at `DR.GRV+0x1213`.

The parent tests `v[0x0FA]==49` at `SCRIPT.GRV+0x095A`. Because the persistent
completion latch `v[0x0D6]` was still zero, it sets that latch to one and runs
the post-puzzle media/music sequence. This distinguishes the two dining flags:
`v[0x0D7]` records the one-time first visit, while `v[0x0D6]` records cake
puzzle completion.

## Saved-state proof

The loaded 1,024-byte payload has SHA-256
`3013a5ed1f7aa203f9ea939326879839f2f5cf896a29127f57aed72f2f28aab8`;
the final write has SHA-256
`cabeb380fe1c0f7df60d2b22a743b57c2ab47bb12dda10fffc643d8d69245612`.
Exactly 65 bytes differ. All 30 cell-state bytes `v[0x037..0x054]` finish at
9. `v[0x019..0x036]` is shared low-variable scratch state, not a durable
parallel copy of the dining board: later parent/menu code may overwrite it
before SAVEGAME. The subsequent kitchen trace proves that the dining save
already contains `v[0x019]=0x49` while most neighboring bytes still contain
9, so no persistent meaning is assigned to that range here.
The durable semantic changes include `v[0x0D6]: 0 -> 1`,
`v[0x0D7]: 0 -> 1`, and `v[0x0FA]: 0 -> 49`. Other changed navigation and
working bytes are retained in the raw payload evidence but are not assigned
persistent meanings from one capture.

## Cross-version and v64tng consequences

The child-script capture agrees with the DOS VM's statically recovered
`LOADSCRIPT`/`RETURNSCRIPT` contract: one parent context, a saved 0x180-byte
local-variable window `v[0x107..0x286]`, shared lower variables, and a return
byte placed in `v[0x102]`. The trace and the Win32 jump table also corrected
the two adjacent native helper identities: opcode `0x2E` reaches the `rb` /
1,024-byte load helper, while `0x2F` reaches the `wb` / 1,024-byte save helper.

The post-marker path additionally exercised four presentation-only GRV
opcodes that previously stopped v64tng's interpreter: `COPY_BG_TO_FG` (`0x22`),
`COPY_RECT_TO_BG` (`0x37`), `PRINTSTRING` (`0x3A`), and
`PALETTE_MERGE_ONCE` (`0x49`). The native trace shows no GRV-variable mutation
for them. Static native-code recovery subsequently pinned their
pixel/palette/font behavior, and v64tng now executes those presentation effects
in bytecode order rather than treating them as VM-only no-ops.

VDX decoding remained internally consistent throughout the session: all
decoder entries and returns paired, and no stream, LZSS, still-frame, or delta
decoder anomaly was recorded. That supplies no evidence for changing the
current VDX delta-tilemap values.
