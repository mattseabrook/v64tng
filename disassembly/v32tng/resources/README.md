# Verified PE resources

These resources come from the canonical `v32tng.exe` 1.02b1 PE resource
tree. They are identified by parsed `IMAGE_RESOURCE_DIRECTORY` entries, not
by byte-pattern guesses.

| Type / ID / language | Raw / virtual address | Size | Verified content |
|---|---|---:|---|
| `RT_VERSION / 1 / 1033` | `01F360` / `00426160` | 712 | `VS_VERSION_INFO`, product version `1.02b1` |
| `RT_ICON / 1 / 1033` | `01F628` / `00426428` | 744 | 32x32, 4-bpp DIB icon image |
| `RT_GROUP_ICON / 101 / 1033` | `01F910` / `00426710` | 20 | one entry selecting icon resource 1 |
| `RT_STRING / 1 / 1033` | `01F924` / `00426724` | 890 | string IDs 0 through 15 |
| `RT_STRING / 2 / 1033` | `01FCA0` / `00426AA0` | 570 | string IDs 16 through 31 |

[`v32tng.ico`](v32tng.ico) is the exact standard ICO container reconstructed
from `RT_GROUP_ICON/101` and `RT_ICON/1`. It is 766 bytes with SHA-256
`28364f76490e22fc1fca5c3c88b79c7870cd11d172cbf1ced06516be864b28cd`.
The embedded 744-byte DIB has SHA-256
`9ff796e8b543f275852f509dadc62814106270592896f16efdf116d2d6acbed9`.

The parsed version record identifies `Trilobyte`, file description `v32tng`,
file/product version `1.02b1`, internal/original filename `v32tng.exe`, and
product name `Trilobyte Media Player`.

The two string blocks contain IDs 1 through 23 (the remaining slots are
empty). Their verified subjects are DirectDraw/DirectSound setup and surface
locking, asset allocation/read failures, script/save/return-stack/opcode
errors, RL/GJD reads, mouse cursor bitmap loading, Red Book and XMIDI setup,
device-context/font creation, and palette updating. Exact original spellings
remain visible in the dedicated `string_table_resource_block_*.asm` source
files. The version record, icon DIB, group selector, resource directory,
alignment, and section padding likewise each have their own named source file.

Reproduce the extraction from the private reference executable with:

```sh
python3 tools/extract_icon.py
```

The extractor parses the PE and resource directories, validates the canonical
executable hash and embedded-image hash, follows the group-icon resource ID,
and then writes the ICO. The repository-root `icon.ico` is a separate v64tng
project asset and is not the historical v32tng icon.
