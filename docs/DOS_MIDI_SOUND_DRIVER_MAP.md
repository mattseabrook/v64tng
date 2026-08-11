# DOS MIDI and sound-driver map

This map records evidence from the retail DOS 1.30 files, the byte-identical
`V.EXE` disassembly, and `SCRIPT.GRV`. It deliberately separates verified
behavior from format hypotheses.

## Main-menu MIDI preparation sequence

`SCRIPT.GRV` subroutine `02F1` branches on variable `v[100h]`, whose verified
device values are `0=AdLib`, `1=General MIDI`, and `2=MT-32`.

| Device | Intro XMI | Preparation/status VDX | Script behavior |
|---|---|---|---|
| General MIDI | `XMI[70]=ini_sc.xmi` | `INTRO[96]=genmid.vdx` | Plays the VDX twice, fades out, then waits for MIDI completion |
| Roland MT-32 | `XMI[69]=ini_mt_o.xmi` | `INTRO[97]=rolmid.vdx` | Plays the VDX once, fades out, then waits for MIDI completion |
| AdLib/FM | none in this subroutine | none | Skips both branches |

This is the clock/“please wait” behavior seen in the original player. It is not
generic video loading: it is gated specifically by the configured MIDI device
and accompanies device-specific initialization music.

## Recovered DOS function chain

The following roles are now named in `disassembly/V/src/functions/audio` and
remain byte-for-byte identical to the retail executable:

| Linear entry | Recovered role | Evidence |
|---:|---|---|
| `05A37` | `wait_for_midi_sequence_completion` | Opcode `29h` calls it; it polls the active Miles sequence status until the playing state changes |
| `05A6C` | `set_midi_sequence_volume_ramp` | Opcode `31h` passes volume and time; the routine forwards both with the active sequence handle and suppresses duplicates |
| `05A8B` | `set_midi_driver_master_volume` | Opcode `4Ah` passes one value; the routine forwards changed values with the MIDI-driver handle |
| `05AAC` | `load_xmidi_timbre_patches` | Allocates a `600h`-paragraph staging block, queries required timbres, scans six-byte resource records, reads `100h`-byte patch payloads, and installs them through the driver interface |
| `05BD1` | `load_and_play_selected_xmi` | Reads the selected XMI into a temporary `3A98h`-paragraph block and hands it to the replacement path |
| `05C06` | `replace_active_midi_sequence` | Prepares timbres, captures/ends the prior sequence, initializes the replacement, and applies its volume ramp |

The external `.ADV` modules are therefore active code drivers, not passive
instrument data. `V.EXE` calls the loaded MIDI-driver interface through far
entry points; PCM and MIDI use separately configured drivers.

## Shipped patch artifacts

The 1.30 installation contains three distinct classes of audio artifact:

- `*.ADV`: Miles hardware drivers such as `MT32MPU.ADV`, `GF1MIDI.ADV`,
  `ADLIBG.ADV`, and the PCM-specific drivers.
- `GM1.BNK`, `GM2.BNK`, `MT1.BNK`, `MT2.BNK`: device-oriented binary patch
  banks.
- `FAT.AD`, `FAT.OPL`, `FAT.MT`: companion binary patch/timbre lookup data.
  `FAT.AD` and `FAT.OPL` are byte-identical in this 1.30 set; `FAT.MT` is a
  separate, much larger corpus.

These files are not SoundFonts. None has the required RIFF `sfbk` header, and
TinySoundFont cannot consume them as `.sf2`. The `MT*.BNK` names describe the
target MIDI device; they do not contain the copyrighted MT-32 control/sample
ROM pair required by an MT-32 emulator.

The safe integration paths for `v64tng` are therefore:

1. keep the embedded `.sf2` and external `.sf2` support for the current
   wavetable backend;
2. add a separately licensed MT-32 emulation backend that loads user-supplied
   ROMs, if authentic MT-32 synthesis is desired; or
3. reverse the BNK/FAT patch formats and translate their *musical mapping* to
   a modern synth, without representing that translation as an original
   SoundFont.

The exact BNK/FAT record schema and each installer's selected file pairing
remain open until confirmed by driver/installer runtime traces. Their
non-SoundFont classification and their role in the Miles patch pipeline are
already established.
