# Retail GRV corpus artifacts

These files were generated from the 23 commercial GRV files in `T7G/`. GRV
decoding and rebuilding now live in the engine's native C++23
`include/grv.h`/`src/grv.cpp`; the exploratory Python tools have been retired.
Open **Tools -> GRV Editor** to decompile any real script in memory or save a
listing with the script-list context menu.

Outputs:

- `*.grv.asm`: offset-preserving disassembly with RL-resolved resource names;
- `OPCODE_CENSUS.md`: opcode counts and per-file usage;
- `HOTSPOTS.md`: input-loop, scene-candidate, geometry, cursor, and action data;
- `corpus.json`: machine-readable metadata, opcode counts, and input loops.

The listings are also lossless rebuild inputs. **Assemble As...** in the GRV
Editor reconstructs a script from its raw-byte column. To run the native
whole-corpus regression test on Linux:

```sh
clang++ -std=c++23 -O2 -Iinclude \
  research/tools/grv_roundtrip.cpp src/grv.cpp src/rl.cpp \
  -o /tmp/grv_roundtrip
/tmp/grv_roundtrip T7G
```

This offset/size/hash-checked round trip succeeds byte-for-byte for all 23
supplied GRVs. See [`../GRV_ROOM_CROSSCHECK.md`](../GRV_ROOM_CROSSCHECK.md) for
the `F.GRV`/`DR.GRV` puzzle findings and room-navigation comparison.

The native retail decoder uses the one-byte `0x1E` operand required for
coherent `MAZE.GRV` media flow and matching Windows/ScummVM behavior.

See [`../DOS/V126_V130_COMPARISON.md`](../DOS/V126_V130_COMPARISON.md) for the
binary evidence and dialect discussion.
