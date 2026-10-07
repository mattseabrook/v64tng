# Semantic recovery → v64tng engine integration

Date: 2026-10-07. This report describes source integration after the connected
microscope/cursor/runtime recovery and the subsequent Mac/CD-i research pass.
No tests, builds, verification commands, or runtime checks were run for this
follow-up, at the user's request. Behavior below describes the implementation
and native evidence, not demonstrated execution. Existing binaries were not
rebuilt.

## Result and changes in this follow-up

The microscope was already implemented in `CellPuzzle` and called by GRV opcode
`42h`. It was not an empty stub waiting for the recent disassembly. Two runtime
integration gaps remained and have now been changed:

| Gap before this follow-up | Source change | Resulting behavior |
| --- | --- | --- |
| Opcode `42h` always used DOS policy, although `CellPuzzle` already contained Windows branches. | Added a policy parameter to `GrvRuntime::load`, stored it in the VM, and passed it to `CellPuzzle::search`. Main-menu initialization reads `grvMicroscopePolicy`; defaults and shipped config use `dos`. | `"grvMicroscopePolicy": "windows"` selects Windows board normalization, direct/ranked threshold, and deterministic ties. Save format detection remains independent. |
| A no-move result left `v[0..3]` untouched. Scripts can overwrite those variables between searches; they are not the solver's native selection globals. | Added `lastMicroscopeMove_` outside the variable/save block. Successful searches update it; every non-error search writes its source/destination coordinates back to `v[0..3]`. | A no-move result returns the stored selection. The DOS wrapper at `05F08` reads `E8FF/E901` after search regardless of whether a new move was selected. Initial modern selection is cell zero to cell zero. |
| Shared disassembly printed the microscope operand as generic `value`. | Opcode `42h` now names it `mode` in `src/grv.cpp`. | Engine/toolkit listings identify the recovered strategy operand; byte encoding is unchanged. |
| Audit classified the Windows abort entry as fully implemented. | Changed it to `partial-integration` and explained the absent host caller. | Inventory no longer equates internal flag checks with native interactive abort support. |
| Engine audit still had the previous Mac count and omitted the recovered display routine. | Updated verified-role records from 204 to 205; added `ensure_8bit_display` as a platform reference. | Native identification progress remains distinct from engine compatibility. Jump-table coverage remains 55/80. |

The policy accepts exactly `dos` or `windows`; invalid/non-string values cause
GRV initialization to report an error. This is a microscope behavior selection,
not a claim that every GRV opcode now follows the Windows player. No platform
is inferred from the presence of a Windows save or from the host operating
system. The runtime API's fourth argument offers the same selection directly.

## Microscope routines already carried into the engine

Native sources are under `disassembly/V/src/functions/puzzle`,
`disassembly/v32tng/src/functions/puzzle`, and
`disassembly/T7GMac/src/functions/puzzle`. Address/contract records are in
`disassembly/semantic_roles.json` and the Mac resource role inventory.

| Recovered role(s) | Modern counterpart and implementation |
| --- | --- |
| `cell_run_grv_puzzle_search` | `GrvRuntime` opcode `42h` reads 49 bytes starting at `v[0x19]`. `CellPuzzle::search` converts the board and searches for owner 2. The VM writes source row/column and destination row/column to variables 0–3. The script commits and animates the move. |
| `cell_count_board_pieces` | Four piece counters; values 1–4 count as players. |
| `cell_convert_adjacent_pieces` | Neighbor conversion updates both cells and counters. |
| `cell_apply_move_to_scratch_board` | Value-copy scratch board, destination placement, clone increment or jump source removal, then adjacent conversion. |
| Windows `cell_copy_board_to_scratch`, `cell_copy_scratch_to_board` | C++ board value copies replace native mutable scratch storage. |
| `cell_score_candidate_move` | Simulated piece-count score: `2 * (2 * rootCount - occupied) + rootCloneBias`, reduced to a signed byte. |
| `cell_count_adjacent_clone_opportunities` | Counts source/empty-neighbor incidences, not distinct destinations; used for secondary ties. |
| `cell_begin_forward_move_iteration`, `cell_next_forward_move` | Ascending sources and neighbor cells; clone destinations deduplicated, then jump pass. |
| `cell_next_forward_move_with_jump_deduplication` | Separate destination suppression for the shallow jump pass. |
| `cell_begin_reverse_move_iteration`, `cell_next_reverse_move` | Destination-first iteration when empty cells are no more numerous than the player's pieces; one clone per destination, followed by matching jump sources. |
| Adjacent/distance-two neighbor data and pointer tables | `makeNeighbors(1)` and `makeNeighbors(2)` build the ordered Chebyshev-distance lists. Host arrays replace native pointers and `FF` terminators. |
| `cell_search_recursive` | Rotating owners, skipping unavailable owners/moves, bounded root-versus-opponent search, score-neutral jump suppression and leaf reverse-jump handling. |
| Windows board/iterator push/pop snapshot helpers | Local board/iterator values preserve parent state across recursion. |
| `cell_search_best_move` | Direct search retains best-scoring ties; sole-owner boards use depth zero. |
| `cell_reset_best_move_list`, `cell_append_tied_best_move` | Vector replacement/append preserve candidate order. |
| `cell_reset_ranked_move_list`, `cell_insert_ranked_move` | Host vector replaces native linked nodes; descending scores, stable insertion for equal scores. |
| `cell_build_ranked_move_list`, `cell_search_ranked_moves` | Shallow ranking then deeper candidate search, using recovered clone bias and bounds. |
| `cell_dispatch_search_strategy` | Modes 0–1 use depth zero, with secondary ties enabled only for mode 1. Modes 2–8 cycle through the three-column strategy table using the search counter. DOS ranked threshold is 2; Windows threshold is 20. |
| `cell_choose_best_move` | Optional minimization of subsequent clone opportunities. DOS chooses a random surviving move and can randomize equivalent clone sources; Windows keeps the first surviving move/source. |
| DOS `cell_random_byte` | `GrvRandom` performs sixteen feedback shifts in a 24-bit state; the VM's `RANDOM` opcode and DOS puzzle ties share this generator. |
| Windows `cell_request_search_abort` | Internal flag checks and `requestSearchAbort()` exist. Host input/event cancellation is **not wired into synchronous VM search**. |

DOS normalization maps ASCII `2` to piece 1 and `B` to piece 2, while other
native bytes pass through. The modern solver keeps values 0–4 and represents
other bytes as blocking cells rather than reproducing native out-of-range
counter accesses. Windows clears every unrecognized byte to empty. Policy
selection now reaches this distinction through the actual game runtime.

Modes outside 0–8 fail explicitly rather than indexing beyond the recovered
strategy table. DOS randomness requires a supplied random-byte callback.
Search counter, RNG and selected move are runtime state, separate from the
GRV save payload. Host seeding does not reproduce a historical timer seed.

## Other recovered behavior and engine disposition

The existing connected x86 audit contains 140 role records across the DOS and
Windows players. After correcting the abort classification, its dispositions
are 49 recovered-behavior implementations, 1 partial integration, 29 host
platform replacements, 52 host runtime replacements, and 9 existing modern
subsystem mappings. These are inventory records, not 140 newly added functions
or a completeness score for the whole engine.

| Area | Already present / preceding pass changes | What remains outside the claim |
| --- | --- | --- |
| Native randomness | `include/grv_random.h` and VM `RANDOM` use the recovered DOS generator; puzzle ties share its state. | DOS timer seeding and historical-session sequences. Windows/Mac RNG equivalence. |
| Display/background copy | Opcode `22h` emits an ordered copy command. `src/game.cpp` snapshots the visible 640×320 foreground band into saved background; preload processing mirrors that direction. | This is a modern surface implementation, not XMS/banked-video emulation. |
| Cursor recovery | `src/cursor.cpp` supplies decompression, palette/frame bounds and creation/read error handling; host cursor/rendering replaces software saved-under and palette translation. | No reproduction of DOS bank switching, half-resolution drawing ABI, or native mouse interrupt driver. |
| GRV control flow | Bounded instruction handling and `LOADSCRIPT` filename handling; parent script return address/stack checkpoint and child locals are retained. | Unidentified opcodes are not filled in from speculative names. |
| Resource/media mappings | Archive lookup, resource reads, named/reference VDX operations and song commands map to existing engine subsystems. | A mapped role does not imply all Mac/CD-i container/media compatibility. |
| RL filename spelling | Preceding research pass changed `src/grv.cpp` to resolve the complete RL basename case-insensitively, including lowercase Mac extraction names, and reject ambiguous matches. | This fixes resource-name loading, not direct playback from MacBinary/resource forks. |
| Saves | VM supports DOS `save.N` with `0x523` bytes and Windows `st7g.N` with `0x400` bytes; automatic per-slot detection preserves existing conventions. New automatic slots use the DOS superset. | Mac `T7SG` application resources and native CD-i persistence. Microscope policy does not change save convention. |
| DOS configuration/hardware | Modern configuration, host allocation and renderer/audio backends replace recovered native duties. | No `GROOVIE.INI` parser compatibility or reproduction of DMA/IRQ/Miles installation controls. |
| Win32 CRT/runtime | Standard C++ allocation, strings, formatting, synchronization and teardown replace recovered CRT helpers. | Import thunks and native CRT ABIs are references, not functions to transplant. |

## Mac and CD-i findings: engine changes versus reference evidence

Mac puzzle routines provide valuable algorithm comparison anchors, but a
complete Mac microscope policy is still unsupported. Its strategy
initialization is not recovered, and `setBest` uses the Mac `Random` trap rather
than the DOS byte generator. The runtime therefore exposes the two supported
DOS/Windows policies; the Mac routine names do not justify inventing a third.

Mac saves now have precise research contracts: `T7SG` resource IDs 1000–1009,
1024-byte state payloads, and 14-byte menu-label copies. That does not make
Windows `st7g.N` interchangeable with a Macintosh application's resource fork.
Engine save import/export for that container remains missing.

The Mac `ensure_8bit_display`, Gestalt/startup requirements and dialog keyboard
filter are Classic Mac platform paths. The host renderer/window/input system
replaces their jobs; they do not require fake QuickDraw devices, VM-off checks,
or a cheat handler. `key_equiv_filter` is modal-dialog keyboard handling.

The two extra Mac credits stills, `todd.vdx` and `hayes.vdx`, are selected by
Mac script data. Generic GRV/VDX operations are already the relevant engine
mechanism when assets have been extracted into supported files. No new
hardcoded credits route was added, and direct native Mac archive playback is
not claimed. The Zaphod recognizer likewise belongs to script key/hotspot
logic; portrait identity and additional alleged Easter eggs remain research
leads rather than implemented engine behavior.

The six supported CD-i entry roles currently describe embedded pointers and
loader operations: CSD record lookup, player selection, console output and
error/exit handling. These do not establish the CD-i game's microscope or
cake-puzzle implementation. OS-9 process chaining and CSD hardware selection
are not GRV gameplay functions. Supplied CD-i media/scripts/disc layout are
insufficient to integrate a CD-i player path; native puzzle rules, Easter-egg
comparisons and media routing remain unresolved. No CD-i compatibility was
added under the guise of those loader labels.

## Modding toolset synchronization

The shared GRV decoder's microscope operand now reads `mode`. Existing toolkit
archive/resource work from the preceding pass includes MacBinary data-fork
selection, Mac `T7GData` separator handling, collision-safe archive extraction,
and `mac_resources.py` list/extract/same-size replacement. None was rebuilt or
run for this follow-up. The toolset can expose and edit recovered data without
implying the engine can open its original platform container directly.

## Files changed by this engine follow-up

- `include/grv_runtime.h`: policy parameter/member and persistent selected move.
- `src/grv_runtime.cpp`: policy storage/dispatch and no-move coordinate restoration.
- `src/game.cpp`: main-menu configuration selection and policy logging/errors.
- `include/config.h`, `config.json`: DOS default for `grvMicroscopePolicy`.
- `src/grv.cpp`: microscope operand label (`mode`); previous RL spelling fix retained.
- `disassembly/v64tng_semantic_audit.json`: corrected integration classifications,
  updated Mac inventory, explicit remaining limits and this report link.
- `README.md`: supported microscope selection, selection lifetime and report link.
- This report; `grooviev1/README.md`: microscope contract documentation.

Source integration is complete for the two concrete runtime gaps above.
Interactive abort, Mac policy/resource saves/playback and CD-i gameplay remain
explicitly incomplete. All execution-based assessment is left to the user.
