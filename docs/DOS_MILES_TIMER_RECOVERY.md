# DOS Miles timer recovery and cross-platform arithmetic

This pass names 18 more original DOS entries, bringing the 261-entry inventory
to **204 verified roles (78.2%)**, with 57 provisional entries remaining.
Two additional code entries, the timer IRQ handler and its old-handler
callback, are recorded outside that denominator. Together with the previously
recovered PCM interrupt, DOS now has three separately recovered code entries.
Across the original x86 inventories, 374/597 entries are identified (62.6%).
Windows stays at 170/336. Mac stays at 55/80 jump-table entries, with one
additional verified internal arithmetic core.

## Preservation criterion

Source changes are admissible in this reconstruction when the complete rebuilt
artifact remains byte for byte identical to its established canonical target.
Any change that produces different executable bytes belongs in a separate
project. Renaming, corrected instruction spelling/comments, code/data
ownership, and file organization can change when this identity check passes.
Original behavior, including faults and unusual instructions, remains intact.

For DOS, that established target is the unmodified, unpacked 102,136-byte
`V.EXE` 1.30, SHA-256
`f2f7febb70b5008ee94e535b0224e918eeec4c71404c899c0d6b50f10c0816c4`.
The retail LZEXE-packed artifact is distinct; reproducing its compression is
not claimed by the unpacked reconstruction. No retail executable was patched
or deployed by this pass. All DOS builds used `V_DISASSEMBLY_NO_DEPLOY=1`.

The DOS, Windows, Mac application, Mac companion container, and Mac companion
data-fork canonical hash checks pass. These decoding corrections change no
artifact bytes and introduce no executable behavior changes.

## Overlapping IRET sequence: decoding corrected, bytes preserved

Seventeen provisional DOS routines had a misleading instruction decode at
their epilogue. The original bytes implement this sequence; `075DD` is one
example:

```text
075DD  80 CF 00   or bh,0
075E0  0E         push cs
075E1  E8 FA FF   call 075DE
075E4  5F         pop di
075E5  5E         pop si
075E6  1F         pop ds
075E7  5D         pop bp
075E8  CB         retf
```

The call enters at the **CF byte inside `OR BH,0`**. At that entry, `CF` is
`IRET`. The near call places its return IP above the pushed CS and the FLAGS
saved earlier by the routine's `PUSHF`. IRET consumes that frame, restores
saved FLAGS, and resumes the ordinary epilogue at `075E4`.

The previous decode separated the CF byte as a one-byte gap, then misread
`00 0E E8 FA` as an ADD and `FF 5F 5E` as a far CALL. The old emission was
byte-identical, but the instruction interpretation was wrong. Seventeen CF
bytes now belong to their containing routines. The overlapping IRET is an
alternate entry into an already emitted instruction and is not emitted or
counted twice. A further instance in `079F7` was already decoded correctly.

All **18** sequences are executed directly with four FLAGS combinations,
including different IF, DF, CF, and ZF values. The tests observe execution at
the embedded IRET, restored registers/FLAGS, and the exact final stack
position. Two repaired routines, `07A47` and `07B9D`, keep address-based names:
correcting their epilogues does not by itself establish their entire roles.

## Named original DOS entries

| Entry | Recovered role | Main evidence |
|---|---|---|
| `07501` | `miles_initialize_timer_state` | Clear 17 timer states/counters/periods; initialize minimum sentinel |
| `07544` | `miles_install_timer_interrupt` | Save IVT INT 08h; install CS:0410h; reserve callback CS:051Dh |
| `07590` | `miles_restore_timer_interrupt` | Restore saved IVT INT 08h on final user timer release |
| `075C0` | `miles_program_pit_channel_zero` | Write port 43h command 36h, then low/high count to port 40h |
| `075E9` | `miles_program_pit_from_period` | Literal multiply/divide conversion followed by `075C0` |
| `07613` | `miles_divide_unsigned_dword` | Stack-supplied unsigned numerator/divisor; quotient DX:AX |
| `0765E` | `miles_recompute_minimum_timer_period` | Minimum across allocated slots 0–16; reset accumulators on change |
| `076F3` | `miles_initialize_driver_tables` | Separate driver-pointer, timer-handle and initialized-state arrays |
| `0773E` | `miles_shutdown_drivers_and_timers` | Driver walk and associated timer release, then user timer sweep |
| `077A3` | `miles_register_timer_callback` | First free user slot; save callback and caller DS; first-use setup |
| `0786E` | `miles_release_timer_callback` | Clear slot/count; last release resets count and restores vector |
| `078B7` | `miles_release_all_timer_callbacks` | Descending release of user slots 15–0 |
| `078D5` | `miles_start_timer_callback` | Change state 1 to 2 only |
| `0791B` | `miles_stop_timer_callback` | Change state 2 to 1 only |
| `07961` | `miles_set_timer_period` | Store dword period; clear accumulator; recompute; restore prior state |
| `079B6` | `miles_set_timer_frequency` | Divide 1,000,000 by supplied dword and delegate to period setter |
| `079F7` | `miles_set_timer_period_from_pit_count` | Alternate literal count-to-period conversion |
| `07A33` | `miles_get_programmed_pit_count` | Return cached count, without reading hardware |

These are descriptive working names. No original symbols are asserted.
Per-entry contracts, instructions, direct near-callers, and source paths are
in the [semantic manifest](../disassembly/semantic_roles.json).

## Scheduler and preserved edge cases

Timer state 0 is free, 1 is allocated/stopped, and 2 is running. Registration
allocates one of slots 0–15 and saves the callback's far pointer and the
caller's DS. First registration initializes state, installs the IRQ, and
reserves/starts slot 16 for calling the previous interrupt handler. Release
sweeps only the sixteen user slots. Start/stop helpers change only their
expected prior state and perform no index bounds check.

The minimum-period scan includes **all nonzero states**, including stopped
slots and reserved slot 16. Updating one timer temporarily sets its state to
1, writes its requested dword period, clears its elapsed accumulator, runs
the minimum scan, and restores its previous state, even when that state was
zero. If the minimum changes, the code passes its **low word** to the PIT
conversion and clears all seventeen elapsed counters.

The conversions are literal historical arithmetic:

- `075E9`: for period below `D68Dh`, use
  `floor(period * 10000 / 8380)`; otherwise program count zero.
- `079B6`: period is `floor(1000000 / frequency)` through unsigned dword
  division; frequency zero can raise a divide exception.
- `079F7`: raw count zero maps to `D68Dh`; otherwise period is
  `floor(raw_count * 10000 / 11932)`.

Some values below the `075E9` cutoff overflow word DIV; the test deliberately
observes the original divide exception. The reverse conversion can reach
this path too. The source adds no clamping or zero-divisor guard. The record
does not infer a measured wall-clock rate from these constants alone.

## Additional IRQ and callback entries

The installed IRQ at load offset `07430` (runtime CS:0410h) occupies 209
bytes and 68 decoded instructions. It increments a nesting counter, saves
registers, and on the outermost entry switches to its private stack. It scans
slots 0–16; only state 2 receives elapsed-period accumulation and callbacks.
A due timer subtracts its period and invokes its callback **once per IRQ**,
even if the residual elapsed amount could satisfy another period.

Callbacks receive the stored DS and run with the timer code segment as SS.
The handler restores the interrupted SS:SP and registers, writes PIC EOI,
checks the literal `Test` stack guard, and returns with IRET. Nested entries
skip callback scheduling. A failed guard enters an STI/INT 3 loop; the test
observes its first trap without claiming a normal return.

The reserved callback at `0753D` occupies seven bytes and three instructions.
It executes PUSHF, calls the saved old interrupt handler far, then returns
far to its timer callback caller. This gives the old handler the interrupt
frame expected by its IRET. Both entries were previously unowned gaps and
are counted separately from the 261-entry inventory.

## Named runtime data

The [runtime-state source](../disassembly/V/src/data/audio/miles_timer_and_driver_state.asm)
extracts 940 bytes from the old gap at `07025–073DF`, with exact initial
values preserved:

| CS-relative range | Verified identity |
|---|---|
| `0006–0007` | user timer registration count |
| `0008–0009` | timer interrupt nesting depth |
| `000A–004D` | 17 callback far pointers |
| `004E–006F` | 17 callback DS values |
| `0070–0091` | 17 timer state words |
| `0092–00D5` | 17 elapsed dwords |
| `00D6–0119` | 17 requested-period dwords |
| `011A–011D` | selected minimum period |
| `011E–0121` | previous INT 08h vector |
| `0122–0123` | timer scan/reset index |
| `0124–0127` | minimum-scan scratch dword |
| `0128–0129` | cached programmed PIT count |
| `012A–0169` | 16 driver command-table far pointers |
| `016A–0189` | 16 associated timer handles |
| `018A–01A9` | 16 driver initialized-state words |
| `01B6–01B9` | literal `Test` stack guard |
| `01BA–03B9` | 512-byte private timer IRQ stack |
| `03BA–03BD` | saved interrupted SS and SP |

These addresses use CS = load segment + `0702h`. The fifteen remaining bytes
at load offset `07025`, `071CA–071D5`, and `073DE–073DF` retain unresolved
identities. The scan/reset field and shared scratch usage are described as
observed; no original C object layout is claimed.

## What this establishes in Windows and Mac

Windows has an already named local Miles multimedia timer callback at
`004072A1`. It uses imported InterlockedExchange/InterlockedIncrement to
prevent reentry and advance pacing counters. This pass verifies reentry
bypass, dword wrap, exact subcounter rollover at 15, and its five-argument
stdcall return. It is a different implementation; DOS IRQ/PIT routines do
not automatically assign roles to unidentified Windows entries. Windows
coverage stays **170/336**.

The DOS arithmetic helper led to Mac CODE 1's internal unsigned-division
core at payload `01D6` / file offset `012E44`. Its 106 bytes and 51 decoded
68k instructions now have a
[named source](../disassembly/T7GMac/src/functions/runtime/code_1_divide_unsigned_long_core.asm).
For nonzero divisors, input D0/D1 produces quotient D0 and remainder D1;
D2/D3/D7 are scratch. The table-backed quotient and remainder wrappers save
and restore those registers and the caller's D1, consuming two long stack
arguments.

The test uses Unicorn's explicit **M68000 CPU model**. It compares 136 valid
unsigned input pairs across DOS, Mac, and Python integer arithmetic, then
executes both original Mac wrappers to verify their stack/register ABI.
DOS returns only the quotient to its caller; Mac's internal core also
returns a remainder. Equivalent results do not imply shared source or an
identical algorithm.

This adds one Mac internal verified record (206 total verified-role records),
not a new jump-table entry. Mac coverage therefore stays **55/80**. No
unidentified Windows or Mac routine was promoted by analogy alone.

## Validation

From the repository root, with NASM, Python, Unicorn, and pefile:

```sh
V_DISASSEMBLY_NO_DEPLOY=1 disassembly/V/build.sh
disassembly/v32tng/build.sh
disassembly/T7GMac/build.sh
python grooviev1/verify_miles_timer_division.py
```

All 469 isolated DOS/Windows/Mac cases pass. PIT/PIC writes are observed;
external callbacks, old handlers, driver teardown, and Windows imports use
explicit fixtures where required. Original overlapping IRET, table updates,
private-stack switching, arithmetic, and return instructions execute normally.
Capstone 5.0.9 was used to decode the extracted Mac core; the permanent build
and test do not require it. The execution checks used Unicorn 2.1.4 and
pefile 2024.8.26.

Canonical hashes prove artifact identity, not semantic completeness. These
checks do not claim gameplay, physical PIT timing, sound output, or a live
DOSBox/Mac capture. The full original DOS instruction-byte audit and prior
hotspot, PCM, and GRV checks are also rerun for this pass.
