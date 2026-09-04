# SPHINX.FNT diagnostic mod

This is the first source-controlled GRV mod. It exercises every unique glyph
record in the shipped `SPHINX.FNT`: `0`-`9`, `A`-`Z`, and the blank/default
glyph. The three pages repeat approximately every 4.5 seconds.

The retail `PRINTSTRING` opcode is not a general-purpose font blitter. It
clears the 80-pixel top text band, accepts at most 14 characters, draws at
`y=16`, and centers the result. Consequently, an unmodified GRV script cannot
draw the complete atlas simultaneously from `(0,0)`. This diagnostic uses the
native renderer exactly as shipped and pages through all 37 glyph records.

Build it with:

```sh
./build.sh
```

For repository-local modding, copy the generated file to `../../T7G/DEMO.GRV`
and launch from that local `T7G` directory:

```text
V.EXE @
```

The `@` switch selects `DEMO.GRV`; no filename follows it. Preserve the local
retail file as `DEMO.GRV.BAK` before replacing it. Do not use the mounted
`/mnt/T7G` installation as the mod workspace.

## Full-screen VDX atlas

Run `./build_vdx_test.sh` after building `grooviev1`. It creates these files
in the repository-local `T7G` directory without changing `DEMO.GRV`:

- `test.png`: exact black/white 640×320 source used for VDX comparison;
- `test-font-grayscale.png`: the original 15-level FNT pixel intensities;
- `test.vdx`: raw, DOS-canonical 640×320 `20h` still plus 75 timed `00h`
  holds;
- `test-compressed.vdx`: the same stream with experimental `77h` LZSS coding.

The VDX header rate is 15 FPS. DOS V does not pace the initial `20h` decode,
so the 75 explicit hold chunks provide the full five-second display. Launch
the raw baseline from the local game directory with either DOS spelling:

```text
V.EXE TEST.VDX
V.EXE ~TEST
```

The DOS parser stops at the first dot and appends `.vdx`; the optional `~`
also changes one startup-mode word whose downstream purpose is not yet proven.
The Win32 player accepts a non-empty command line as an exact loose filename:

```text
v32tng.exe TEST.VDX
```

Groovie v1 output is always 640 pixels wide and supports heights through 480;
ordinary 640×320 assets do not contain the black display bars. This diagnostic
now uses that canonical geometry. Its complete `20h` payload is 51,974 bytes,
well below the largest unsigned 16-bit chunk size.

Because this diagnostic begins with a `20h` full still, each 4×4 tile may use
at most two palette indices. The black/white atlas is therefore exact in that
representation; the grayscale PNG is retained separately as the FNT reference.
