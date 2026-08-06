# V64TNG binary research: first-pass report

Date: 2026-08-02

## Executive summary

This pass established a reproducible baseline for all three supplied branches of
the software and followed the DOS `V.EXE` startup path far enough to recover its
command-line grammar.

The most useful results are:

1. `V.EXE` is an LZEXE 0.91-compressed, 16-bit real-mode DOS executable. It
   expands from 21,473 bytes to a structurally valid 97,480-byte MZ executable
   with 102 relocations. LZEXE is executable compression; its presence alone is
   not evidence of copy protection.
2. The DOS command line is not conventional `argc`/`argv` parsing. The entry
   code reads the PSP command tail directly and recognizes four special leading
   characters: `@`, `!`, `?`, and `~`.
3. The supplied "demo" is not a demo build of the complete GROOVIE interpreter.
   It is an earlier, non-interactive promotional sequence driven by
   `PLAYTLC.EXE`, `VDX.EXE`, and `DEMO.BAT`. It does not contain `demo.grv`, so
   it cannot by itself satisfy the DOS player's `@` mode.
4. There is no clear copy-protection routine in the code examined so far. There
   are extensive CD/data-file checks and setup checks, but those should not be
   mislabeled as protection without more evidence.
5. The Windows binary contains unusually good provenance clues: a 1997 linker
   timestamp, version resources, a retained CodeView debug record, and the
   original PDB path:

       C:\Program Files\DevStudio\MyProjects\v32tng\v32tng.pdb

6. Binary-identical snippets of low-level video code occur in the 1991 demo
   player, the demo `VDX.EXE`, and the 1993 DOS `V.EXE`. This gives us a concrete
   code-lineage anchor rather than relying only on similar strings or behavior.

This is a first-pass reverse-engineering report, not yet an "original source"
recovery. Decompiler output is useful evidence, but it is generated
pseudocode—names, types, comments, and original source structure are absent.

## Scope and evidence handling

The originals were not modified. Analysis used copies unpacked into a temporary
working directory. The reusable Ghidra export script is checked in at
[`../research/reverse-eng/ghidra/ExportDecomp.java`](../research/reverse-eng/ghidra/ExportDecomp.java).

The demo ZIP was also extracted to
[`../research/DOS/demo/`](../research/DOS/demo/) so its launch sequence and
player binaries can be studied independently.

### Primary artifact fingerprints

| Artifact | Size | SHA-256 |
|---|---:|---|
| [`../research/DOS/126/V.EXE`](../research/DOS/126/V.EXE) | 21,473 | `e5f56abc8962ee2ea6b7ac7aa8168f7fffe8c24cd394fad2c05fd98f015cedb1` |
| [`../research/DOS/demo/VDX.EXE`](../research/DOS/demo/VDX.EXE) | 4,690 | `09417b43ba02161477abc9fbec5c5ca40a2dc73d76a47c40e32c5f19355f14cf` |
| [`../research/DOS/demo/PLAYTLC.EXE`](../research/DOS/demo/PLAYTLC.EXE) | 254,768 | `ca5699ab5065364c98cb319c418a015fcdc1428b0af15f1d6909b4ff3406e885` |
| [`../research/v32tng/v32tng.exe`](../research/v32tng/v32tng.exe) | 144,896 | `3c8c3fd3edc27717ae2a08b1f98c7a58f72bd91860a080a29e40d1da8854c36c` |
| `docs/7thguest DEMO.zip` | 3,167,149 | `08e8fcb039ab239e7c271d7e13291c51a76fd5fff2ac357afac508b9570b477a` |

## DOS `V.EXE`

### Container and recovered executable

The supplied file is an MZ executable compressed with LZEXE 0.91.

| Property | Packed original | Unpacked analysis copy |
|---|---:|---:|
| File size | 21,473 | 97,480 |
| MZ header size | 32 | 512 |
| Relocations | 0 | 102 |
| Entry CS:IP | `051e:000e` | `0000:0000` |
| Initial SS:SP | `17dd:0080` | `16fa:0040` |
| SHA-256 | `e5f56a…cedb1` | `b08fe4a622455648bc2e1dffd25840cad25faf81c8c407f6eec2bff330a3e1a6` |

Ghidra's 16-bit real-mode analysis identified 233 function entry points in the
unpacked image. That count is provisional: hand-written assembly commonly has
tail calls, shared epilogues, and jump-table destinations which defeat automatic
function discovery.

### Recovered command-line behavior

`V.EXE` reads the DOS Program Segment Prefix command tail directly, beginning at
`PSP:0082`. Under the usual DOS layout, byte `0080` is the tail length, `0081`
is the separator space, and `0082` is the first character the user typed.

The recovered top-level behavior is:

| Invocation | Recovered behavior | Confidence |
|---|---|---|
| `V @` | Change the default script name from `script.grv` to `demo.grv`, then enter the full game/script engine | High |
| `V !` | Enter the full game/script engine using `script.grv` | High |
| `V ?` | Run video/hardware detection, print the diagnostic report, then exit | High |
| `V` | Normally follows the same diagnostic-and-exit path as `?` | High statically; runtime capture still needed |
| `V name` | Build `name.vdx`, play that VDX, then exit | High |
| `V name.ext` | Discard `.ext`, build `name.vdx`, play it, then exit | High |
| `V ~name` | Force standard VGA mode 13h, build `name.vdx`, play it, then exit | High |

There is no general switch parser and no normal C runtime argument vector.
Notably:

- `@` and `!` are tested only as the first command character. Any remaining
  command tail is ignored by that startup branch.
- The standalone filename parser copies up to 64 characters.
- Copying stops at a period, carriage return, or NUL byte.
- The code then appends `.vdx` and a NUL terminator.
- Quotes are not interpreted specially.
- A literal space after the DOS separator is part of the filename.
- `~` is consumed as a mode flag before the filename is copied.

Equivalent high-level pseudocode, with details simplified but branches
preserved:

```c
char *tail = PSP + 0x82;

if (*tail == '@') {
    set_script_name("demo.grv");
    run_game_engine();
}

if (*tail == '!') {
    run_game_engine();             // default is script.grv
}

initialize_standalone_player();

if (*tail == '\0' || *tail == '?') {
    detect_video_hardware();
    print_diagnostic_report();
    exit();
}

if (*tail == '~') {
    force_vga_mode_13h = true;
    ++tail;
}

copy_basename_until_dot_cr_nul_or_64_chars(tail);
append(".vdx");
play_vdx();
exit();
```

The code addresses which anchor this interpretation in the unpacked program
are:

- entry point: `1000:0000`
- `@`/`!` dispatch: approximately `1000:0040`
- standalone diagnostic/VDX path: `1000:00d1`
- full script-engine entry: `1000:35b2`

The empty-tail case deserves a runtime check. Static code clearly tests NUL and
routes it to diagnostics. On real DOS, an interactive shell also leaves a
carriage return at the end of the command tail; the byte after that terminator
is not part of the defined tail. A fast-closing terminal or an uncaptured DOS
text screen could make this look like "nothing happens."

### Internal identity and configuration surface

The executable identifies itself as:

```text
GROOVIE Player (c) 1993 Trilobyte
Version 1.26: 05/20/93 @ 15:54:08
```

Recovered filenames and configuration vocabulary include:

```text
script.grv       demo.grv          01234567.grv
groovie.ini      c:\id\t7g\groovie.ini
at.gjd           rob.gjd           save.

[main]           svga              videocard
midi             pcm               dma
irq              port              default
xmi              DataDir           ProgDir
DMABufferSize    TicksPerSecond
GeneralMidi      MT32              AdlibGold
TandySensation   none
```

There are also many explicit diagnostic messages for VESA/video cards,
filesystem access, audio initialization, and CD/data reads. These strings,
combined with the direct interrupt and hardware access patterns, should make
semantic function naming much faster in the next pass.

The code looks assembly-heavy and does not resemble a normal compiler-supplied C
runtime startup. That is an informed inference, not yet proof that the entire
player was originally written in assembly.

### Protection assessment

No definitive copy-protection mechanism was found in this pass.

- LZEXE explains the small executable and unpacking stub; it is not by itself a
  protection system.
- CD/archive errors and `.GJD` dependencies show that the game expects its data
  environment. Data availability checks are not necessarily copy protection.
- Suspicious-looking literals such as `01234567.123`, `01234567.grv`, and
  `fat.man` exist, but their observed references currently lead into default
  filename/configuration or media subsystems. They are leads, not proof.

The correct current conclusion is therefore "no protection identified yet,"
not "there is no protection."

## Promotional DOS demo

The archive is not a stripped, unprotected build of the same full game player.
[`DEMO.BAT`](../research/DOS/demo/DEMO.BAT) reveals the complete launch
sequence:

```bat
playtlc TRIPRO.tlc -l1 -g
playtlc GUEST.tlc -l1 -g
playtlc HDINT061.tlc -l1 -g
playtlc HGSEE001.tlc -l3 -g
vdx face.vdx
```

It is a linear presentation made from four TLC animations followed by one VDX
clip. There is no `demo.grv`, no interactive game script, and no puzzle/game
state layer in the supplied archive.

### `PLAYTLC.EXE`

This is an uncompressed DOS MZ program identifying itself as:

```text
Trilobyte 640x480x256 FLICK & Groovie Player. Version 0.6
Copyright 1991
```

Its embedded usage text recovers these controls:

| Input | Behavior |
|---|---|
| `PLAY filename [-sn] [-ln] [-g]` | Command syntax |
| `-sn` | Speed `n`, from 0 through 255 |
| `-ln` | Loop count, from 0 through 65,535 |
| `-g` | Stay in graphics mode |
| `Esc` | Exit |
| `1`–`9` | Change speed; 1 is fastest |
| `0` | Default speed |
| `PgUp` / `PgDn` | Change palette luminance |
| `Home` | Reset palette |
| `End` | Toggle greyscale |

It also retains development filenames under `c:\work\punk\`.

### Demo `VDX.EXE`

This is a much smaller LZEXE 0.91-compressed player. Its 4,690-byte packed form
expands to a 175,120-byte MZ file with SHA-256:

```text
b4ebc3f922b1207c20484a48a349588cb20b886761bd793742b375948ca2b4b4
```

It uses the same minimalist PSP-tail style as `V.EXE`: read from `PSP:0082`,
copy the basename until a period or carriage return, append `.vdx`, and play.
No option parser was found.

### Shared-code surprise

A block comparison found binary-identical runs in the low-level video detection
area:

- 144 consecutive bytes shared by the unpacked 1993 `V.EXE` and demo
  `VDX.EXE`
- 80 consecutive bytes shared by `V.EXE` and `PLAYTLC.EXE`
- 80 consecutive bytes shared by demo `VDX.EXE` and `PLAYTLC.EXE`

This simple aligned-block method undercounts shared logic, but the exact matches
already establish real implementation lineage across the players.

## Windows 95 `v32tng.exe`

### Identity and build provenance

The file is an uncompressed, unsigned, 32-bit x86 GUI PE with six sections.

Its version resource says:

```text
CompanyName:      Trilobyte
FileDescription: v32tng
FileVersion:     1.02b1
ProductName:     Trilobyte Media Player
ProductVersion:  1.02b1
Copyright:       1997
```

The PE linker version is 5.00 and the COFF timestamp decodes to
`1997-03-20 03:17:13 UTC` (`1997-03-19 22:17:13` US/Eastern).

Three debug-directory entries survive, including an NB10 CodeView record with
the original PDB path:

```text
C:\Program Files\DevStudio\MyProjects\v32tng\v32tng.pdb
```

The PDB itself is not embedded in the executable and was not found locally.
Nevertheless, the path and Visual Studio-era linker metadata substantially
narrow any future symbol-file search.

### Libraries and architecture

The PE imports 176 functions:

| Library | Imported functions |
|---|---:|
| `KERNEL32.dll` | 78 |
| `USER32.dll` | 39 |
| `GDI32.dll` | 16 |
| `WINMM.dll` | 8 |
| `DDRAW.dll` | 1 |
| `MSS32.dll` | 34 |

This confirms a Win32/DirectDraw frontend using Miles Sound System. Ghidra found
336 provisional function entry points.

The binary retains hard-coded development/data paths:

```text
d:\t7g\%s
d:\t7g\%s.GJD
d:\t7g\b.gjd
d:\t7g\at.gjd
script.grv
```

It also contains an internal singleton token,
`craigspetersonroyleyman`, window class `V32WIN`, and a normal Win32
single-instance/setup launch path.

### Recovered command-line behavior

The Microsoft C runtime performs normal Win32 command-line parsing before
calling the program's `WinMain`.

| Command line | Recovered behavior |
|---|---|
| no argument | Initialize archive tables, load `script.grv`, and start the game |
| exact `SETUPEXEC` | Set an installation/setup coordination flag, clear the argument, and continue into normal game startup |
| any other non-empty argument | Treat it as an exact VDX filename and run the standalone VDX path |

Unlike the DOS player, the Win32 standalone path does not append `.vdx`; it
passes the supplied string to `mmioOpenA`. The opened file is checked for the
VDX magic word `0x9267`.

Another setup branch can launch `setup.exe` after displaying:

```text
This program must be installed using SETUP
```

At present, `SETUPEXEC` looks like installer/player coordination rather than
copy protection.

## Reproducible tooling

[`../research/reverse-eng/ghidra/ExportDecomp.java`](../research/reverse-eng/ghidra/ExportDecomp.java)
is a Ghidra headless post-script which exports:

- `functions.tsv`: entry address, current function name, and body range
- `decompiled.c`: best-effort decompiler output for every discovered function

Example use:

```sh
/opt/ghidra/support/analyzeHeadless PROJECT_DIR PROJECT \
  -process PROGRAM \
  -scriptPath research/reverse-eng/ghidra \
  -postScript ExportDecomp.java OUTPUT_DIR
```

Private unpacked analysis copies, Ghidra databases, and generated decompiler
dumps are deliberately not committed. The complete Arch Linux reconstruction
procedure, pinned LZEXE step, Ghidra exporters, and generic byte-identical NASM
generator are now maintained in
[`../research/reverse-eng`](../research/reverse-eng).

## Limits of this pass

- No DOS emulator was installed, so the command matrix has not yet been
  captured dynamically.
- Automatic function boundaries and decompiler types are provisional.
- Script opcodes, VDX/TLC codecs, `.GJD` archive behavior, save-game handling,
  and audio drivers were only oriented, not fully reconstructed.
- No claim is made that generated C is the original Trilobyte source.
- No online symbol/PDB hunt or cross-version binary corpus search was performed.

## Recommended next sequence

To grow this into a proper, reviewable disassembly without jumping layers:

1. Commit a deterministic LZEXE unpack step and checked hashes for the recovered
   images.
2. Dynamically capture the DOS invocation matrix (`empty`, `?`, `@`, `!`,
   filename, extension, and `~filename`) under DOSBox-X or equivalent.
3. Create a named DOS function map, starting with startup, diagnostics, file
   I/O, video, and script dispatch.
4. Reconstruct the `.GRV` interpreter opcode table and cross-check it against
   the ScummVM/Groovie implementation used as a historical external
   cross-check. That formerly bundled source snapshot has since been removed.
5. Document `.GJD` lookup and VDX chunk dispatch before attempting source-level
   reimplementation.
6. Treat the TLC demo player as a separate historical branch and recover that
   format independently.
7. Only after the DOS map is stable, use the Win32 implementation as a
   comparison oracle and pursue the PDB/build provenance leads.

The DOS startup parser is now sufficiently understood to begin that work from
known entry points instead of from raw strings.
