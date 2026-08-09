# Known-Function to Data Xref Audit (Evidence-Only)

Date: 2026-08-08

This audit accepts only explicit memory operands in verified-role functions.
It also requires a reference to be mapped through the executable's real
section/segment layout before any file bytes are named or extracted. A virtual
address is not a file offset.

## Scope and counts

- DOS `V.EXE` known functions: `48`
- Win32 `v32tng.exe` known functions: `30`
- Total known functions audited: `78`
- DOS strict absolute/register-base displacements collected: `256`
- Win32 strict absolute references collected: `773`

These are reference counts, not counts of independent data objects. Repeated
reads and writes to one global are intentionally retained as corroboration.

## Win32 section mapping correction

The PE section table is authoritative:

| Section | RVA/VA start | Raw start | Raw size | Virtual size |
|---|---:|---:|---:|---:|
| `.data` | `0001B000` / `0041B000` | `00019A00` | `00004400` | `000085A0` |
| `.idata` | `00024000` / `00424000` | `0001DE00` | `00001400` | `00001370` |
| `.rsrc` | `00026000` / `00426000` | `0001F200` | `00000E00` | `00000CDC` |

The file-backed part of `.data` ends at VA `0041F3FF`. The remainder through
VA `0042359F` is zero-filled by the PE loader and has no corresponding bytes
in the executable file.

This matters for globals such as `0041F590`, `00420A08`, `00420E48`, and
`004213A8`: they are valid runtime addresses in the virtual tail of `.data`,
but they cannot be extracted from a raw `data_*` file. Applying the `.data`
raw/VA delta beyond `0041F3FF` lands accidentally in `.idata` or `.rsrc` and
mislabels import/resource bytes as those globals.

The rejected candidate mappings were:

| Referenced runtime VA | Incorrect raw result | What those raw bytes actually are |
|---:|---:|---|
| `0041F590` | `0001DF90` | KERNEL32 import lookup table in `.idata` |
| `0041F7B0` | `0001E1B0` | KERNEL32 import address table in `.idata` |
| `0041F8F0` | `0001E2F0` | USER32 import address table in `.idata` |
| `0041F940` | `0001E340` | USER32/WINMM import address tables in `.idata` |
| `00420A08` | `0001F400` | RT_VERSION data in `.rsrc` |
| `00420E48` | `0001F840` | RT_ICON bitmap data in `.rsrc` |
| `004212C8` | `0001FCC0` | RT_STRING block 2 in `.rsrc` |
| `00421338` | `0001FD30` | RT_STRING block 2 in `.rsrc` |
| `004213A8` | `0001FDA0` | RT_STRING block 2 in `.rsrc` |

Those false extractions are not present in the final source.

## Valid Win32 extraction

Raw `0001DC80..0001DD3F` maps legitimately through `.data` to virtual range
`0041F280..0041F33F`. It is now
`disassembly/v32tng/src/data/grv_runtime_globals.asm`.

Within that range, static loader/interpreter behavior verifies:

- active GRV script buffer pointer at `0041F284`;
- GRV return-stack depth at `0041F2A8`;
- staged VIDEOREF flags at `0041F2AC`;
- 0x400-byte GRV variable-bank pointer at `0041F2B8`;
- GRV script PC at `0041F300`;
- 0x40-byte GRV return-stack buffer pointer at `0041F304`.

Unresolved adjacent fields retain neutral comments rather than inferred names.

## DOS mapping result

At startup, `V.EXE` sets DS and SS to load segment + `0893h`. Therefore DS
offset zero is load-image offset `08930h`. BP is initially zero, so an operand
such as `[bp-30D6h]` wraps to DS offset `CF2Ah`, which maps to load-image
offset `1585Ah`.

The four bytes at `0892Ch..0892Fh` are alignment before the data segment.
Load-image range `08930h..1584Fh` is exactly 53,024 zero bytes: a verified
zero-initialized static workspace at DS offsets `0000h..CF1Fh`. Individual
objects within that workspace still need runtime/register-relative evidence;
the audit does not invent boundaries from runs of zeroes.

## Verification

- `disassembly/V/build.sh` reproduces the canonical unpacked DOS SHA-256.
- `disassembly/v32tng/build.sh` reproduces the canonical Win32 SHA-256.
- The Win32 debugger profile's 12 expected-byte signatures all match the
  canonical executable.

Byte identity proves the source rewires are lossless. Semantic names above
are additionally constrained by section/segment mapping and observed code use.
