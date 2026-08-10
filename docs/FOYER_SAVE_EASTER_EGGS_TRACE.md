# v32tng foyer/save/easter-egg trace

Evidence source: `research/20260809-195435/events.ndjson`  
Player: `v32tng.exe` 1.02b1, SHA-256
`3c8c3fd3edc27717ae2a08b1f98c7a58f72bd91860a080a29e40d1da8854c36c`

## Capture integrity

- 940,119 ordered events over 693.917 seconds.
- All 20 configured probes attached; none failed or was rejected.
- No malformed records, sequence gaps, script-read failures, or decode
  anomalies.
- Three F9 markers were recorded at 452.298, 594.005, and 675.338 seconds.

## Semantically verified sequence

| Time (s) | SCRIPT.GRV PC | Evidence-backed meaning |
|---:|---:|---|
| 452.298 | — | First F9 marker, after the intro and initial foyer arrival. |
| 461.865 | `3AAA` | Foyer theatre-mask branch begins with `f_1bb.vdx`, `f_1ba.vdx`. |
| 464.355 | `36C0` | Branch re-enters the foyer replay helper: `f_1fa.vdx`, `agu32.xmi`, then the long `f1_.vdx`. |
| 545.976 | `3AB7` | Replay returns through `f_1fa.vdx` and `f_1fb.vdx`. |
| 553.765 | `17C9` | Main menu opens (`sphinx`, `sphmen2i`, `sphprm1i`). |
| 558.698 | `1DBF` | Save menu transition starts. |
| 564.116 | `1E9B` | Slot 1 selected; the name-entry screen opens. |
| 580.800 | `2156` | `SAVEGAME v[019]` executes with slot value 1. |
| 580.801 | native | `st7g.1` is created/truncated and exactly 1,024 bytes are written and closed successfully. |
| 580.804 | `2162` | Save-confirmation video `save2.vdx`, followed by the menu-out transitions. |
| 594.005 | — | Second F9 marker, back in the foyer. |
| 619.080 | `0799` | Grandfather-clock easter egg: `gu40.xmi`, `f3_cmf`, `f3_clt`, `f3_cmb`, then restoration of `gu16.xmi`. |
| 645.753 | `0E9C` | Hands-painting easter egg: `gu18.xmi` and `h_morph.vdx`. |
| 651.695 | `34AC` | Magician-chasing-Tad event composites `h1_8.vdx` with `hb_.vdx`. |
| 660.479 | `34DC` | First ghost-girl event composites `h1_2.vdx` with `h_ghost1.vdx`. |
| 675.338 | — | Third F9 marker. |
| 676.658 | — | Click at `(282,31)` opens the main menu. |
| 693.723 | native | `WM_KEYDOWN/VK_ESCAPE` reaches the Win32 window procedure, which posts `WM_CLOSE`; Redbook shutdown and process termination follow without another GRV opcode. |

## Save-format findings

The captured `st7g.1` payload is the Win32 GRV bank verbatim. Its first bytes
are `31 32 33 F4 ...`: name-entry keys A, B, C select GRV display codes 49, 50,
and 51, and the remaining description cells retain the `F4` fill value. Adding
`0x30` to those three stored codes produces the display sequence `abc`; this is
the script's internal font/string encoding, not an ASCII save-name field.

The two native players do **not** persist the same number of bytes:

- `v32tng.exe` calls its stream write with `size=0x400`, `count=1`; the trace
  captured the corresponding 1,024-byte `WriteFile`.
- DOS `V.EXE` sets `CX=0x0523` in both its `INT 21h/AH=40h` save path and
  `INT 21h/AH=3Fh` load path.

Accordingly, `st7g.N` is a `0x400`-byte native Win32 state block and `save.N`
is a `0x523`-byte native DOS state block. They share the same GRV-state base
and script semantics but are not byte-for-byte interchangeable formats.

## Disassembly consequences

- Win32 `00402067` is the GRV save helper: format `st7g.%d`, mode `wb`, one
  `0x400`-byte write from `0041F2B8`, post-write callback, close.
- Win32 `004020E7` is the GRV load helper: format `st7g.%d`, mode `rb`, one
  `0x400`-byte read into `0041F2B8`, close.
- DOS `03FC4` is the GRV load helper for the `0x523`-byte `save.N` block.
- Win32 `00408F30` has the exact four-argument, callee-cleaned Windows-procedure
  contract. Its key-down arm treats Escape and F12 alike and posts `WM_CLOSE`.

## Next capture: dining-room full clear

Load slot 1 normally and walk to the unopened dining-room door. With the door
still unclicked, press F9 exactly once. Then enter, allow every video to finish,
solve the puzzle, allow all completion videos to finish, and leave the dining
room completely. Quit normally only after the next navigable room has settled.

Do not add markers inside the room. One boundary marker gives a continuous
entry/puzzle/completion/exit path, while the trace already records every click,
key, GRV branch, variable mutation, selected resource, and VDX operation needed
to subdivide it semantically afterward.
