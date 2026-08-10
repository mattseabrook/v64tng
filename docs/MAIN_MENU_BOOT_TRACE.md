# Main-menu boot trace

`SCRIPT.GRV` is the retail boot script. Its first path is:

1. `0002 CALL 02F1` handles the configured MIDI-device intro.
2. `001A PLAYSONG 4C39` selects `XMI[57]=gu61.xmi`.
3. `0023 SETBACKGROUNDSONG 4C0C` selects `XMI[12]=gu16.xmi` for
   AdLib, while the branch at `0029` selects `XMI[0]=agu16.xmi` for the
   alternate device path. This is persistent background state: it begins
   after the one-shot song ends and the VM is waiting for input, then loops.
4. `0038 CALL 0367` performs the CD/data availability path.
5. `003B VIDEOREF 2418` plays `INTRO[24]=sphinx.vdx` as the initial
   background.
6. `003E VIDEOFLAG5_ON` + `003F VIDEOREF 241F` plays
   `sphmen1i.vdx`; bit 5 skips its still chunk so its delta chunks modify the
   held sphinx background.
7. The same bit-5 operation at `0042` + `0043` applies
   `sphprm1i.vdx`. These VIDEOREF operations are blocking and ordered; reducing
   them to the final reference loses the Ouija-board menu and prompt text.
8. `0046 CHECK_VALID_SAVES` probes all ten save slots and writes the count to
   `v[104h]`.
9. `0047 VIDEOFLAG7_ON` then `0049` selects
   `GAMWAV[169]=gen_s_18.vdx` when the count is zero, or
   `GAMWAV[170]=gen_s_19.vdx` when it is nonzero.
   Their `80h` chunks are unsigned 22050 Hz PCM interleaved with duplicate
   video frames; VIDEOREF remains active until both frames and queued PCM end.
10. `0059 INPUTLOOPSTART` begins the first live menu.

The normal first loop exposes bytecode targets `0179` (saved-game menu, only
when saves exist), `03E8` (new game), and `02AC` (quit prompt). Four additional
`1AA0` rectangles become reachable only when `v[107h]` reaches 240 through the
case-sensitive `Zaphod Beeblebrox` key-action state machine.

The quit target `02AC` likewise applies three ordered bit-5 delta overlays:
`sphmen1o.vdx`, `sphprm1o.vdx`, then `sphprm2i.vdx`. The last file supplies
the visible YES/NO prompt while loop `02B8` supplies the matching bytecode
rectangles.

## Win32 runtime confirmation: 20260809-164423

The hash-locked v32tng 1.02b1 capture in
`research/20260809-164423` executed this path with 232,212 ordered events,
zero malformed records, zero sequence gaps, and zero rejected probes. It
runtime-confirms the following script semantics:

- the no-save boot selected `INTRO[24]`, `INTRO[31]`, `INTRO[37]`, and
  `GAMWAV[169]`, in that order, plus `XMI[57]`;
- the exact 17 key actions in `Zaphod Beeblebrox` advanced `v[107h]` and the
  final `x` wrote 240, staged video bits 5 and 7, set rate override 15, and
  selected `INTRO[49]=groovie.vdx`;
- value 240 caused all four otherwise skipped rectangles at `010A`–`0139` to
  execute. They share target `1AA0`, whose first video is
  `INTRO[0]=house.vdx`; no new text or ordinary menu row is drawn;
- the normal quit path selected `INTRO[32]`, `[38]`, `[39]`, then the YES
  branch selected `INTRO[40]` and `GAMWAV[163]` before `PALFADEOUT` and
  `ENDSCRIPT`;
- the only changed VM variables were the engine timer `v[103h]`, CD/data
  result `v[106h]`, and Zaphod state `v[107h]`.

This capture did not enter the hidden rectangles, load a save, save a game,
or start a new game. Those paths remain separate evidence rounds.

## Win32 Start New confirmation: 20260809-180432

The successful data-only-ISO capture completed Start New and the intro with
279,634 ordered events, zero malformed records, zero sequence gaps, and zero
rejected probes. It proves that mounting the image made Miles return a nonzero
CD-device handle even though track 2 had bounds `0..0` and no Red Book audio
played. GETCD still returned archive set 1; it was not a disc-identity check.

The early video speed is also native behavior: v32tng uses 100 ms VDX pacing
steps when `_AIL_redbook_track` is nonzero and 40 ms steps when it is zero.
`title.vdx`, `o1pa.vdx`, and `o1tu.vdx` contain no embedded audio, so all three
used the fast fallback. `o3pa.vdx` is the first following resource with
embedded VDX audio and normal sample-buffer pacing. `title.vdx` is a standalone
house/lightning/title/credits file; the first book sequence begins afterward
in the separate `o1pa.vdx` and `o1tu.vdx` files. Exact calls, times, and chunk
counts are recorded in
[`../research/20260809-180432/ANALYSIS.md`](../research/20260809-180432/ANALYSIS.md).

## Cursor style mapping

Hotspot cursor operands are retail *style* numbers, not ROB.GJD image indices.
Both original interpreters use 11 styles over nine images:

| GRV style | ROB image | Meaning |
|---:|---:|---|
| 0 | 3 | forward |
| 1 | 5 | turn left |
| 2 | 4 | turn right |
| 3 | 3 | forward |
| 4 | 1 | theatre mask / FMV |
| 5 | 0 | waving hand / no action |
| 6 | 2 | brain / puzzle |
| 7 | 6 | chattering teeth |
| 8 | 7 | pyramid |
| 9 | 8 | eye |
| 10 | 8 | eye, alternate palette |

Styles 9 and 10 deliberately share pixels but select palettes 4 and 6.

When a style-4 or style-7 hotspot launches a video from `SCRIPT.GRV`, the
original interpreter injects video-state bit 15. That bit makes the VDX obey
its header frame rate. Ordinary silent movement instead receives the player's
26 FPS navigation override; the first interleaved sound chunk cancels that
override for synchronized FMV playback.

## Executable correspondence

DOS V.EXE 1.30 dispatches opcode `3Ch` from `run_grv_vm` to
`grv_check_valid_saves` at linear `03EEA`. That function constructs and probes
`save.0` through `save.9` using `build_resource_filename`,
`open_resource_read_only`, and `close_resource_file`.

Win95 v32tng.exe 1.02b1 dispatches opcode `3Ch` to the inlined
`grv_check_valid_saves` case at `00403B5F`. It formats `st7g.%d`, opens each
file with mode `rb`, writes the ten slot flags, and stores the count at variable
offset `104h`.

The Win95 startup chain is:

`dispatch_game_or_loose_vdx` → `init_archive_tables` →
`allocate_grv_runtime_buffers` → `initialize_grv_runtime_and_load_script` →
`load_grv_script_file` → `init_game_subsystems` → `init_game_state`.

Packed resource references used by the boot script flow through
`select_grv_video_resource` and `select_grv_song_resource` in both recovered
players.
