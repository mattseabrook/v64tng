# Win32 `v32tng.exe` permanent disassembly

This directory is the canonical, conservative start of the 32-bit Windows 95
Trilobyte Media Player disassembly.

Run:

```sh
./build.sh
```

The build verifies the supplied 144,896-byte executable, assembles `main.asm`,
and requires the result to match the original SHA-256 and every original byte.

## Known container layout

| Raw range | PE unit | Current status |
|---|---|---|
| `00000000..000003FF` | DOS stub + PE headers | Opaque, mapped |
| `00000400..00018BFF` | `.text` | Two verified source islands |
| `00018C00..000199FF` | `.rdata` | Opaque, mapped |
| `00019A00..0001DDFF` | `.data` | Opaque, mapped |
| `0001DE00..0001F1FF` | `.idata` | Opaque, mapped |
| `0001F200..0001FFFF` | `.rsrc` | Opaque, mapped |
| `00020000..000223FF` | `.reloc` | Opaque, mapped |
| `00022400..000235FF` | raw debug tail | Opaque, mapped |

The six PE sections, entry RVA `0000DBF0`, image base `00400000`, linker
version 5.00, timestamp, and three debug-directory entries have been verified
directly from the file. The raw debug tail retains FPO data and the NB10
CodeView path:

```text
C:\Program Files\DevStudio\MyProjects\v32tng\v32tng.pdb
```

## Current source frontier

`src/media/loose_vdx_dispatch.asm` reconstructs:

- the exact filename passed to `mmioOpenA`;
- the little-endian `9267h` VDX magic check;
- stream callback installation;
- empty command line → normal archive/GRV game initialization;
- non-empty command line → loose VDX playback.

`src/platform/winmain.asm` reconstructs:

- the exact, case-sensitive `SETUPEXEC` test;
- setup coordination and clearing the command string;
- the handoff to game/VDX dispatch;
- the media-aware Win32 message loop and shutdown.

All other bytes remain explicit `incbin` frontiers organized by PE ownership.
They are not being represented as understood source. As verified functions are
recovered, their ranges replace bytes in `src/layout/text.asm` with small,
reviewable subsystem modules.

Names are semantic working labels inferred from verified behavior. They are not
claimed to be original Trilobyte/PDB symbols.
