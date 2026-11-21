## Semantic Disassembly Progress

Current source inventory: DOS **283/283 (100.0% entry-role coverage)**, Windows **175/336 (52.1%)**, and Mac **55/80 (68.8%)** jump-table entries, with 207 verified Mac records including internal routines. The DOS total includes all 22 entries recovered beyond the analyzer seed, including indirect bank handlers, interrupts and callbacks. Newly discovered entries will be added to the denominator. Entry-role coverage does not establish complete code/data ownership, original symbols, external-driver internals, or full gameplay correctness. All executable source changes preserve the canonical artifact hashes.

| Original executable                              |      Verified semantic roles | Provisional roles remaining | Verified entry-role coverage |                          Lossless source-byte coverage |
| ------------------------------------------------ | ---------------------------: | --------------------------: | ---------------------------: | -----------------------------------------------------: |
| [`V.EXE` 1.30](disassembly/V)                    |                    283 / 283 |                           0 |                   **100.0%** |                     101,624 / 101,624 bytes (**100%**) |
| [`v32tng.exe` 1.02b1](disassembly/v32tng)        |                    175 / 336 |                         161 |                    **52.1%** |                     144,896 / 144,896 bytes (**100%**) |
| [`T7GMac` 1.0 (Classic Mac)](disassembly/T7GMac) | 55 / 80 table-backed entries |                          25 |          68.8% role coverage | 1,830,912 / 1,830,912 bytes (**100%; byte-identical**) |

The DOS inventory includes recovered interrupt/callback entries and grows when
new entries are found. The current data pass identifies cursor pointer tables, palette/stream state,
XMS descriptors and control pointer, embedded DIGPAK command/state data, cache
controls and 200 entries, microscope fields, and the encoded empty-save caption.
Seventeen additional video-bank/probe entries are now included in DOS coverage. Data is organized by subsystem; mixed regions and
unproven gap ownership remain explicitly unresolved.

v64tng defaults to recovered DOS logical hotspot geometry and cursor values
(`grvHotspotPolicy: "dos"`), feeding the existing responsive window-coordinate
transform. `"windows"` retains the previous logical geometry independently of
save format and `grvMicroscopePolicy`.
Window sizing, coordinate scaling, the intentional 640×320 crop without the
original top/bottom bars, and the top-bar shortcut remain in place. Original logical hotspot accuracy and modern responsive scaling are separate
steps; recovery does not override the presentation choices. Full gameplay and
platform equivalence remain human review work.