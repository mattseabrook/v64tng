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
