# Kitchen full-clear runtime evidence

Trace `research/trace/20260809-223655` captures a normal kitchen soup-can
puzzle clear in verified Win32 1.02b1. The executable SHA-256 is
`3c8c3fd3edc27717ae2a08b1f98c7a58f72bd91860a080a29e40d1da8854c36c`.
All 20 semantic probes attached, the 678,287-event stream has no malformed
records, sequence gaps, decode anomalies, or popup errors, and the process
terminated normally. There was no F9 marker, so the digest correctly retains
one complete scene.

## Proven session path

- `SCRIPT.GRV+0x028D` loaded the existing 1,024-byte `st7g.1` payload;
- the normal navigation path loaded the 1,873-byte `K.GRV` child (SHA-256
  `27bfa59eac1adfe06f1e3c809451ede9f2700d3772d20b2f1d3f8c4103b73d61`);
- the puzzle reached its exact solved-order comparison at `K.GRV+0x0062`;
- success played `GAMWAV[147]=gen_e_13.vdx`, set `v[0x0F9]=49`, followed the
  shelf transition, and executed `RETURNSCRIPT 0` at `K.GRV+0x04DD`;
- `SCRIPT.GRV+0x2156` wrote the updated 1,024-byte `st7g.1` payload after the
  player left the room and saved.

The stove-top optional scene was not selected, so this capture assigns no new
semantic label to that branch.

## Exact soup-can state machine

The puzzle is a 33-cell row-major grid at `v[0x019..0x039]`: three rows of ten
cans and a final row of three. `v[0x000],v[0x001]` are the first selected
row/column and `v[0x002],v[0x003]` are the second. The first input loop chooses
the first can; the second loop suppresses that cell and chooses its swap mate.

The animation block at `K.GRV+0x04F7..0x0565` constructs every filename from
the selected coordinates and current grid values. The trace resolved all 253
dynamic-name hits (188 distinct generated combinations) to valid resources;
there was no truncated, jumbled, or missing can filename. `GRID_SWAP` at
`0x0565` exchanges exactly
`v[0x019 + 10*row1 + col1]` and `v[0x019 + 10*row2 + col2]`, then branches back
to the solved-grid comparison.

The required final grid, expressed as the VM's decoded byte values, is:

```text
49 38 43 49 3C 49 3C 43 49 43
40 49 37 44 43 49 42 44 49 3C
49 42 40 43 44 40 49 42 33 49
3D 49 32
```

Those are the exact bytes stored in `v[0x019..0x039]` on success. They are not
ASCII text and must not be relabeled as a literal phrase.

## Save-file proof

The loaded payload SHA-256 is
`cabeb380fe1c0f7df60d2b22a743b57c2ab47bb12dda10fffc643d8d69245612`;
the final payload SHA-256 is
`89e5260837d7ea36567ce6acc77a4ac87b33f3d7965d7997f297ddee62a26f55`.
Exactly 40 bytes differ. The solved can grid accounts for the changes through
`v[0x039]` (with `v[0x019]` already coincidentally equal to `0x49` in the
loaded dining save). The durable kitchen completion value is
`v[0x0F9]: 0 -> 49`; the remaining changed navigation/working values are kept
as evidence but are not over-labeled from one run.

This also corrects the earlier dining report: `v[0x019..]` is shared scratch
state reused by room children, not a persistent second dining-board table.

## Crash report status

This run supplies positive evidence that the normal-entry soup-can path can
complete in v32tng 1.02b1. It does not prove that the historical crash is
imaginary or identify a fixed can that always triggers it. The captured run
generated only valid VDX names and raised no MessageBox, so a patch must wait
for a trace that actually reproduces the failure (or equivalent static proof).
