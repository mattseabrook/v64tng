# Mac / Philips CD-i Easter eggs and semantic recovery

Research pass: **2026-10-07**. No builds, tests, hash checks, emulator runs,
or verification commands were performed. Reading original data, comparing
script bytes and following the existing instruction listings were the research
methods. `verified-role` below is the repository's existing static-evidence
status; it does not report new runtime verification.

## Findings connected to original bytes

| Platform | Finding | Local evidence | Result |
|---|---|---|---|
| Classic Mac | `Zaphod Beeblebrox` room selector | `script.grv`, `0059..0179`; selector entry `1BE6` | Script recognizer and activation state identified; shared PC feature |
| Classic Mac | Extra credits stills | `script.grv` `03FF`/`0407`, embedded `hdisk.rl` entries 8/9 | `todd.vdx` and `hayes.vdx` are the reachable credits prelude |
| Classic Mac | Saves inside application resources | CODE 5 `3D6C`, `3E1A`, `3E72` | `T7SG`, IDs 1000–1009, 1024-byte state copies, menu-name records |
| Classic Mac | Memory/addressing requirements | CODE 5 `2670`; DITL 138/139 | Virtual memory must be off; 32-bit addressing must be on; separate installation failure |
| Classic Mac | 256-color requirement | CODE 5 `22CA`; DITL 128/129 | New internal role `ensure_8bit_display` and named source slice |
| Classic Mac | Slow-machine fallback | `CheckMachine` candidate at CODE 5 `23A4`; DITL 131 | Timed work and warning/fallback flags identified; symbol association stays candidate |
| CD-i | Player selection before gameplay | `cdi_loader` `0054`, `02B2` | CSD record queries, conditional module linking, `F$Chain` |
| CD-i | Loader diagnostics | `cdi_loader` `01D2`, `01EC`, `021A` | CR/LF writer, C-string writer, error-report/exit roles |

Mac native jump-table coverage remains **55/80**. The new display routine is
internal to a mixed emission slice, so it increases the full verified-role
inventory to **205** without increasing that denominator. CD-i now has **6/665**
supported candidate-entry roles: five loader entries and the previously
identified `cdi_data` pointer-return entry. The other slices remain provisional.

## Hidden house map: Mac recognizer, CD-i activation lead

The Mac title/menu input loop registers the exact character sequence
`Zaphod Beeblebrox`. State `v[0x107]` starts at 49, advances through the common
handler at `0165`, and the last `x` reaches `016B`, storing 240. Four corner
hotspots are enabled by that sentinel and branch to `1BE6`. At `0173`, the
success path requests INTRO[49] at a rate override of 15. This recovery comes
from bytecode control flow, not a literal string search: the phrase is spread
across individual KEYACTION operands. This is **not Mac-exclusive**.

The [International CD-i Association FAQ, section 8.5](https://www.icdia.co.uk/faq/cdifaq8.html)
documents saving with the name `badger`, then selecting a corner's chattering
teeth to access scenes. [GameFAQs' contributed cheat](https://gamefaqs.gamespot.com/pc/524290-the-7th-guest/cheats)
uses `Badger` and describes room selection. Case sensitivity is unresolved;
the capitalization disagreement should not become a guessed native comparison.
The FAQ is a documentation lead, not a recovered CD-i function. No `badger` or
`Badger` string appears in the existing CD-i ASCII-run inventory, and the
supplied three files omit the disc's game-script/media files. A split,
encoded or external comparison remains possible.

The useful next CD-i target is the save-name commit path and the corner-hotspot
activation state. It is not safe to assign the DOS GRV variable number or
opcode interpretation to CD-i from this shared user-facing behavior.

## Mac extra images are credits content

The title/menu hotspot at `014C` branches to credits entry `03E8`; another
script path at `1D8C` also jumps there. The Mac script inserts 16 bytes at
`03FD..040D` before the DOS sequence's CD-audio start:

```text
03FD  04              PALFADEOUT
03FE  03              FADEIN_NEXT_VIDEO
03FF  09 08 1C        VIDEOREF HDISK[8] = todd.vdx
0402  19 C2 01        SLEEP 450
0405  04              PALFADEOUT
0406  03              FADEIN_NEXT_VIDEO
0407  09 09 1C        VIDEOREF HDISK[9] = hayes.vdx
040A  19 C2 01        SLEEP 450
040D  04              PALFADEOUT
0411  4D 02           PLAYCD 2
```

Both assets consist of one still chunk. Their archive offsets are `3E8905`
and `3F541C`, and each RL length is 51,990 bytes. The sleeps belong to GRV:
the header rate of 5 does not establish how long the still remains visible.
No pixels were rendered during this pass, so the depicted people and text
remain unidentified. Public credits name Catherine Anne Bartz-Todd as Mac
producer and a contemporary release thread includes Hayes Haugen, but neither
fact proves a portrait's identity. The original names are retained.

`LA.GRV` also differs from the supplied DOS script: additional state
initialization includes `v[0x10C]`, and extra call/branch paths occur in the
microscope script. Its exact behavioral difference remains open. The Mac
`DEMO.GRV` is a 466-byte presentation script; the supplied DOS file is a
57-byte artifact. Neither difference establishes a retail puzzle omission.

## Mac saves and startup checks

The [July 1995 comp.sys.mac.games FAQ](https://groups.google.com/g/comp.sys.mac.games/c/B_4hEx4y-b8)
reports resource-based saves and discusses memory-related crashes. Native code
supports the important format details independently:

- `SaveGame`, CODE 5 `3D6C`: byte-sized slot plus 1000; `GetResource('T7SG', id)`;
  new handle of `0400h` bytes when absent; copy from the state pointer at
  `A5:F7A0`; add/change/write the resource; update/flush the resource file.
- `LoadGame`, `3E1A`: the same ID formula; lock, copy `0400h` bytes back into
  that state buffer, unlock and release. No payload-length check precedes
  this fixed-size copy in the recovered routine.
- `CountSavedGames`, `3E72`: scan ten IDs, update availability bytes, copy
  14 bytes of each existing save to menu records spaced 15 bytes apart at
  `A5:F7E4`. These are menu name bytes, not proof of a complete save schema.

The supplied pristine inventory contains no `T7SG` resource. These are created
at runtime; absence from the initial application is expected. The FAQ's
preferred-memory advice is a historical report, not a patch prescription.
The actual SIZE resources have a 2,355,200-byte minimum; ID -1 also has that
preferred size, while IDs 0 and 1 specify a 3,072,000-byte preferred size.
Record which SIZE resource the OS selects before attributing a crash to it.

`CheckSystem` at `2670` tests bit zero of the responses for `vm  ` and `addr`,
then calls the installation predicate through `A5:0212`. DITL 138 explicitly
describes the memory/addressing requirements; DITL 139 describes installation
failure. The routine does not visibly handle a failed Gestalt query before
testing its response. This distinction matters when modeling startup failures.

The recovered internal routine at `22CA` selects a display device, checks
depth eight, handles unsupported depth through Alert 128, and requests a
change through Alert 129. DITL 128/129 provide the corresponding UI meanings.
`CheckMachine` performs timed CPU/file work and sets fallback flags at
`A5:F89A` and `A5:FCC8`; DITL 131 describes quarter-size gameplay on a slow
68030/CD-ROM combination. That supports a performance path, not a claim that
all Mac assets are intrinsically quarter resolution. The
[February 1994 release discussion](https://groups.google.com/g/comp.sys.mac.games/c/FVSfw7En2nk)
contains contemporary hardware/performance reports.

`keyEquivFilter` at `45F6` handles modal-dialog keyboard equivalents and
control flashing. Its dialog item 2 contains nine-character hexadecimal
records for key, modifier mask, required modifier value and item number.
It should not be mistaken for the GRV cheat recognizer.

## CD-i loader and version-dependent media leads

The [Philips Green Book's peripheral appendix](https://www.icdia.co.uk/docs/GRNBK/BY_NAME/rtos_app)
describes the Configuration Status Descriptor as the mechanism for inspecting
hardware configuration. The loader follows that mechanism:

1. `0054` queries decimal codes 91 (`005Bh`) and 90 (`005Ah`) through `02B2`.
2. `02B2` opens `/nvr/csd`, reads lines of at most 32 bytes, parses the decimal
   prefix up to `:`, and searches for the requested code. End-of-file without
   a match closes the path and returns carry set with `D1.W=8100h`.
3. Both successful searches select `cdi_t7g`; either failed search selects
   `cdi_nodv`. The loader links the selected module, then chains to it.

The exact semantics of codes 90/91 remain unassigned because the accessible
older appendix does not establish those FMV extension descriptors. The
branch behavior itself is clear. The
[Microware OS-9/68K manual](https://www.peripheraltech.com/OS9%20-%2068K%20V2.4%20Technical%20Manual.pdf)
provides the syscall contracts used to distinguish linking, chaining, reading,
writing, closing, error reporting and exit. Inline module names, paths and
hex-output templates in these loader slices are now annotated as data.
`021A` terminates through `F$Exit`; the initializer at `0228` is a separate
internal entry, not code that returns from that syscall.

[Retrostuff's hardware investigation](https://retrostuff.org/2017/02/12/the-7th-guest-cd-i-dvc-compatibility-cake-puzzle-bug/)
reports a cake-puzzle crash with V1 releases and IMPEG 6.x cartridges. Its
2019 update identifies localized imagery in `cdi_data` and reversed module
ordering in V2. These findings make MPEG setup and module-order-independent
lookup useful targets. They do **not** identify the supplied artifact's disc
revision. The existing `cdi_data` pointer return and encoded payload stay
conservatively named; localized dirty-disc imagery is an external lead.

A [CD-i playthrough](https://danteplaysoldgames.wordpress.com/2020/05/30/cd-i-002-the-7th-guest/)
reports two fewer puzzles, and a
[player's laboratory-audio recollection](https://www.reddit.com/r/gaming/comments/11eiyj2)
suggests a CD-i-specific audio clip. Both require disc assets or runtime evidence
before assigning omitted-puzzle or audio-routing functions. The microscope
is discussed as present; do not transfer later iOS omissions to CD-i.

Likewise, [Nightdive's 2014 update announcement](https://steamcommunity.com/app/255920/allnews/)
describes replacing the then-current Mac OS release with Windows data under
ScummVM. It does not establish omissions in this 1994 Classic Mac application.
No ScummVM implementation was used to assign original-player roles here.

## Toolset changes driven by the recovery

`grooviev1` now has explicit MacBinary data-fork reads for archive listing and
extraction, Mac T7GData FF-separator packing/extraction, and a manifest that
remembers the separator policy. `mac_resources.py` lists/extracts MacBinary
resources and supports same-size resource replacement in a new container.
This enables editing embedded RL tables and backing up `T7SG` payloads without
hard-coded inventory offsets. Archive listing now exposes numeric entry IDs.
Archive extraction rejects existing destinations and avoids generated-name
collisions with ordinary resources.

The shared GRV resource-name reader now resolves complete lowercase/mixed-case
RL filenames. Previously, changing only `.RL` to `.rl` still looked for
`HDISK.rl` instead of the extracted `hdisk.rl` on Linux. Existing Mac listings
have been annotated from the RL inventory, including both credits assets.

Output T7GData is a **raw data fork**, not a new MacBinary/HFS package. Pack
also generates a new `hdisk.rl`; install that matching 200-byte index back into
T7GM resource 32309. RL names, resource order and payloads can survive repacking;
unused filename bytes and original physical offsets are not promised identical.
The VDX/RL tools do not implement CD-i MPEG media or native OS-9 module writing.

All changes remain unbuilt and untested for the user's own verification.
