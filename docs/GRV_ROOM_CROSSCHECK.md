# GRV / hand-authored room cross-check

This report compares the recovered retail GRV bytecode with the manually
authored room data in `include/fh.h` and `include/dr.h`. It records evidence;
it does not add a GRV runtime to the C++23 engine.

## The filename assumption is false

`F.GRV` is not the foyer navigation script and `DR.GRV` is not the dining-room
navigation script.

- `F.GRV` is the eight-point foyer floor puzzle. Its resources happen to live
  in `FH.RL` / `FH.GJD`.
- `DR.GRV` is the cake puzzle. Its resources happen to live in `DR.RL` /
  `DR.GJD`.
- Foyer, hallway, and dining-room navigation live primarily in the monolithic
  `SCRIPT.GRV`.
- The room puzzle GRVs execute as child scripts and return a result to
  `SCRIPT.GRV`; their archive names describe resource ownership, not a
  one-script-per-room navigation architecture.

This explains why a direct `F.GRV` to `fh.h` or `DR.GRV` to the navigation
part of `dr.h` comparison initially appears unrelated.

## Coordinate conversion

Retail GRV rectangles use the original 640×480 logical screen. The normal
scene image occupies `x=0..639`, `y=80..399`. The current hand-authored engine
stores percentages in its cropped scene coordinate system.

For an explicit GRV rectangle `(left, top, right, bottom)`, the corresponding
percent values are:

```text
x       = left / 640 * 100
y       = (top - 80) / 320 * 100
width   = (right - left) / 640 * 100
height  = (bottom - top) / 320 * 100
```

The original rectangle is right/bottom-exclusive. A modern picker must choose
and consistently apply the same edge convention.

The VM also has built-in regions that are more exact than the current
hand-authored approximations:

| GRV form | Original rectangle | Cropped-scene percentage |
| --- | --- | --- |
| `HOTSPOT_LEFT` | `(0,80)-(100,400)` | `x=0, y=0, w=15.625, h=100` |
| `HOTSPOT_RIGHT` | `(540,80)-(640,400)` | `x=84.375, y=0, w=15.625, h=100` |
| `HOTSPOT_CENTER` / `_2` | `(200,80)-(440,400)` | `x=31.25, y=0, w=37.5, h=100` |
| persistent left/right | 80 pixels across the full 480-pixel screen | not the same region as `HOTSPOT_LEFT/RIGHT` |

The repeated `10%` edge regions and approximate `33%` center regions in
`fh.h` / `dr.h` recover the intent, but not the retail hit boxes.

## Dining room: exact navigation match

The relevant retail code is `SCRIPT.GRV` offsets `0x08F6..0x0A13`.

### `dr_tbc` / `dr_tfa`

The hand-authored group correctly identifies these as sharing navigation.
Retail input loop `0x090E` defines:

- left: `HOTSPOT_LEFT -> 0x0919`, plays `dr_tba.vdx`;
- right: `HOTSPOT_RIGHT -> 0x091F`, plays `dr_tfc.vdx`;
- forward: `HOTSPOT_CENTER_2 -> 0x0957`, plays `dr_mi.vdx`.

The topology in `dr.h` is correct. The exact regions are the built-in regions
in the preceding table, rather than `10% / 45.5% / 10%`.

### `dr_tba` / `dr_tfc`

Retail input loop `0x0925` defines:

- left: plays `dr_tbc.vdx`;
- right: plays `dr_tfa.vdx`;
- exit: explicit rectangle `(36,115)-(604,384)`, then plays `dr_d.vdx`,
  stages the first frame of `f_2bc.vdx`, changes music, and returns to the
  foyer control-flow block.

Converted to the cropped scene, the exit rectangle is approximately
`x=5.625, y=10.938, w=88.750, h=84.063`. The hand-authored `25,0,50,100`
region is substantially narrower than retail.

### `dr_mi`

Retail input loop `0x0980` is state-dependent and contains more behavior than
the current `dr.h` entry:

- persistent/right navigation goes through `dr_mtf.vdx` and `dr_mo.vdx`;
- the Easter egg rectangle `(108,267)-(584,305)` plays `dr_r.vdx` with
  `gu5.xmi`;
- the cake-puzzle rectangle `(258,248)-(371,314)` plays `dr_v.vdx`, calls the
  child puzzle, then transitions through `dr_vb.vdx`;
- conditional ghost/story hotspots play `come.vdx`, `dr1_0.vdx`, and
  `dr2_.vdx`;
- puzzle and story availability depends on persistent variables, so this
  cannot be represented faithfully as one unconditional static hotspot list.

The Easter egg converts to approximately
`x=16.875, y=58.438, w=74.375, h=11.875`. The hand-authored
`13,66.2,83.9,29.1` region is a useful visual estimate but is not the original
geometry.

Every one of the nine actual DR navigation VDX names represented in executable
`dr.h` data occurs in this `SCRIPT.GRV` block. The five navigation-adjacent
resources not yet represented as executable view/action data are `come`,
`dr1_0`, `dr2_`, `dr_v`, and `dr_vb`.

## `DR.GRV`: cake puzzle structure

`DR.GRV` is 5,546 bytes and contains 1,515 decoded instructions. It has one
input loop with 30 explicit rectangles—one for each piece of a 6×5 cake.

Recovered structure:

- variables `0x19..0x36` and `0x37..0x54` are parallel 30-entry tables used
  to track logical cells and piece state/location;
- value `9` is a sentinel checked before a cell hotspot is emitted;
- variables `0x17..0x18` act as a two-coordinate selector used by mapping
  subroutines;
- each cell action selects the matching `dr00` through `dr29` animation
  family and updates both board bookkeeping and aggregate counters;
- the three assets per piece (`cf`, `db`, `df`) are not 90 unrelated movies:
  they are the piece/cell visual states used for selection and movement;
- the success check at `0x00A6` compares variables `0x00..0x02` with
  `[2,2,1]` and branches to the completion sequence;
- bottom/side escape returns result `0`; the top action returns result `1`;
  completion flows back through `dr_vb.vdx`.

This is behavior that the comments in `dr.h` correctly recognized as cake
puzzle media, but it belongs in a future GRV VM or puzzle-specific layer, not
in the static dining-room navigation table.

## `F.GRV`: foyer floor puzzle structure

`F.GRV` is 1,349 bytes and contains 354 decoded instructions. It represents an
eight-node graph:

```text
A — D — G — B — E — H — C — F — A
```

The eight visited-state bytes are variables `0x00..0x07`; variable `0x12`
counts accepted moves. The resource/action mapping is:

| Node | Entry visual | Outgoing transition visuals |
| --- | --- | --- |
| A | `foy_spa.vdx` | `f_a_d.vdx`, `f_a_f.vdx` |
| B | `foy_spb.vdx` | `f_b_e.vdx`, `f_b_g.vdx` |
| C | `foy_spc.vdx` | `f_c_h.vdx`, `f_c_f.vdx` |
| D | `foy_spd.vdx` | `f_d_a.vdx`, `f_d_g.vdx` |
| E | `foy_spe.vdx` | `f_e_b.vdx`, `f_e_h.vdx` |
| F | `foy_spf.vdx` | `f_f_a.vdx`, `f_f_c.vdx` |
| G | `foy_spg.vdx` | `f_g_b.vdx`, `f_g_d.vdx` |
| H | `foy_sph.vdx` | `f_h_c.vdx`, `f_h_e.vdx` |

The initial input loop conditionally exposes any valid starting node. Each
node then presents its two graph neighbors, filters already visited nodes, and
plays the corresponding edge animation. Completion occurs when the accepted
move counter reaches seven: all eight points have been traversed in one path.
The long condition block at `0x0092..0x013A` detects a state with no remaining
valid continuation and routes to the reset/failure sequence.

This is a compact data-driven Hamiltonian-path puzzle, not foyer navigation.

## Foyer navigation: `fh.h` versus `SCRIPT.GRV`

The executable `ViewGroup` names currently present in `fh.h` all correspond
to VDX resources referenced by `SCRIPT.GRV`; no programmed FH view name was
invented. The hand-authored left/right/forward topology for the represented
foyer rings also follows the retail action blocks.

Important fidelity differences:

- exact built-in left/right/center geometry differs as documented above;
- several apparent “one click = next static view” routes are actually
  multi-VDX action sequences followed by a jump to a different input loop;
- hotspot availability is frequently conditional on story variables;
- `SCRIPT.GRV` references 137 unique FH resources, while 50 FH resource/view
  names are currently represented in executable `fh.h` data. Most of the
  difference is hallway/story/puzzle media, so it must not be filled in by
  blindly creating a `ViewGroup` for every VDX;
- the foyer floor puzzle is entered as child-script behavior; the
  `foy_sp*`/`f_*_*` media names listed in the header comments are not ordinary
  navigation views.

Representative exact foyer evidence:

| Retail loop | Active context | Actions |
| --- | --- | --- |
| `0x04FD` | first foyer hub | three explicit destinations, conditional story/puzzle actions, built-in left/right |
| `0x0566` | paired turning view | explicit destination plus built-in left/right |
| `0x0583` | central foyer view | built-in left/right plus several conditional explicit actions |
| `0x0657` | paired turning view | two explicit destinations plus built-in left/right |
| `0x06BF` onward | dining/kitchen ring | repeated left/right/center loops matching the grouped `f_2*`, `f_3*`, `f_4*`, and `f_5*` topology |

## VM insights obtained from the comparison

1. Archive ownership, room navigation, and puzzle script ownership are three
   separate concepts. Matching file prefixes do not imply matching control
   flow.
2. A VDX name usually labels a transition animation, not a persistent “scene
   object.” The stable interactive state is the GRV program counter at an
   input loop plus current variables.
3. Grouped `ViewGroup` entries in the hand-authored engine are a successful
   compression of several GRV control-flow states, but state-dependent
   hotspots are lost when compressed into unconditional vectors.
4. The correct DoomEd-style authoring model should make an input-loop/state
   node primary, attach hotspots to that node, and attach zero or more VDX
   operations to each action edge. A flat `VDX -> hotspots` model cannot
   reproduce the retail game.
5. Child GRVs are naturally reusable puzzle modules with explicit return
   values. A mod can introduce `MATT.GRV` without requiring a new archive
   prefix, provided the parent script can load it and its packed resource
   references resolve to the intended RL/GJD entries.

## Byte-identical rebuild status

The generated `*.grv.asm` files retain every original instruction byte. The
native C++23 implementation in `src/grv.cpp` validates listing offsets and
rebuilds the raw byte stream.
`research/probes/grv/grv_roundtrip.cpp` has rebuilt all 23 supplied retail
listings and compared each result byte-for-byte with its original GRV
successfully.

This proves lossless disassembly/reassembly today. It is not yet a full
symbolic assembler: editing mnemonics or labels does not currently rewrite
operands or relocate branches. That is the next toolchain layer needed for
comfortable `MATT.GRV` authoring.
