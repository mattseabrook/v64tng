# DOS PCM streaming recovery and Win32 overlap

The October 25, 2026 pass names ten previously provisional DOS entries and
recovers a BIOS completion interrupt handler from bytes previously emitted as
an unowned gap. The original 261-entry DOS inventory advances from 176 to
186 verified roles (71.3%), with 75 remaining. The additional interrupt entry
is recorded separately rather than changing the inventory denominator.
Across the original DOS and Win32 inventories, 356/597 roles are identified
(59.6%). Win32 stays at 170/336; this pass verifies two existing Win32 roles.

All function names describe recovered behavior, not original symbols.
Original instruction bytes, timing constants, register/stack behavior, and
backend differences are preserved. Both canonical rebuilds pass.

## Recovered DOS entry points

| Entry | Role | Evidence |
|---|---|---|
| `02896` | `pump_pending_pcm_buffers` | Shared refill tail in `02997`; called while pacing VDX frames and draining audio |
| `028AD` | `drain_pcm_stream_with_timeout` | EOF/unknown-chunk paths in `0030E`; queue drain, timeout, then completion wait |
| `0293B` | `wait_for_miles_pcm_buffers_complete` | Sequential cached-status polling of slots 0 and 1 |
| `073E0` | `miles_find_driver_command` | Far command-table lookup for one of sixteen driver slots |
| `07418` | `miles_tail_dispatch_driver_command` | Resolve command, then RETF into driver while retaining original caller frame |
| `07C88` | `miles_dispatch_pcm_command_79` | Slot and descriptor arguments after descriptor preparation |
| `07C8E` | `miles_dispatch_pcm_descriptor_command_86` | Far pointer to descriptor populated by the refill tail |
| `07C94` | `miles_query_pcm_buffer_status` | Command `007A`; result 3 permits refill and satisfies completion wait |
| `07CAC` | `miles_dispatch_pcm_command_7d` | Invoked after both slots have been checked/refilled |
| `07CB2` | `miles_dispatch_pcm_stop_command_7e` | Invoked on the Miles queue-drain timeout |

Command IDs remain in names where the local callers establish transport and
ordering but do not prove the full external driver's implementation. The
synthetic driver tables used for verification establish lookup/dispatch
behavior, not the behavior of shipped ADV drivers.

The separately recovered entry is
[`bios_pcm_completion_interrupt`](../disassembly/V/src/functions/audio/bios_pcm_completion_interrupt.asm)
at `02BF0`. It owns `02BF0–02C29` and `02C2C–02C30`: 63 bytes and 24 decoded
instructions. The intervening `EB 05` at `02C2A` and byte at `02C31` retain
unresolved ownership. Two mutable far vectors at `02BE8–02BEF` now have their
own [data source](../disassembly/V/src/data/audio/bios_pcm_interrupt_vectors.asm).

## PCM queue and shared refill tail

The VDX decoder sends `80h` audio chunks to `stream_media_buffer` at `02997`.
Its uncompressed path appends to a 64 KiB ring and splits reads at segment
wrap, temporarily changing `SS:CF36` for the first read. Queued-byte accounting
uses a wrapping word. The existing `AH=77h` decompression branch also joins
the refill tail; this pass does not add new compressed-audio codec claims.

`pump_pending_pcm_buffers` bypasses mode `0080h` and an empty queue. Otherwise
it saves ES, DS, and all general registers, then jumps to the refill tail at
`02A0F` inside `stream_media_buffer`, sharing that function's restore/return
sequence. This is a shared tail, not a missing independent epilogue.

| DOS runtime field | Proved use |
|---|---|
| `SS:E476` | mode `0080h` bypasses the PCM pump/drain/poll helpers |
| `SS:E0C6` byte | zero selects Miles; nonzero selects BIOS branch |
| `SS:D488` | pending PCM byte count |
| `SS:D48A` | ring read offset |
| `SS:D54E` | PCM ring segment |
| `SS:D9A8` | Miles submission block size |
| `SS:E434` | PCM driver handle/slot passed to Miles wrappers |
| `SS:CF64`, `SS:CF66` | cached Miles statuses for buffer slots 0 and 1 |
| `SS:E41A` | descriptor base; `+4` offset, `+6` segment, `+8` byte count |
| `CS:5CDE` | tick counter used by queue-drain timeout |

In the Miles branch, both slots are queried in order. A slot reporting 3 can
consume `min(pending, block_size)` bytes. The descriptor receives the current
ring offset, ring segment, and actual byte count; commands `86h` and `79h`
follow. Pending bytes decrease by the actual count, but the ring offset
advances by the **full configured block size**, even for a short final block.
The word offset wraps at 64 KiB. Command `7Dh` follows both slot checks.

The test suite covers short, exact, and oversized blocks; one or both slots
busy; ring-offset wrap; raw input read splitting; and preserved registers.
It does not establish capacity checks or producer/consumer timing under a
real device. The literal word arithmetic and lack of those local checks are
preserved.

## Queue drain, timeout, and completion

`028AD` resets `CS:5CDE`, pumps while bytes remain, and checks for 600 ticks
after each pump. This check still runs when that pump just emptied the queue.

- Miles timeout: invoke command `7Eh`, discard remaining queued bytes, set
  both cached statuses to 3, and return.
- BIOS timeout: format the low status bytes as characters by adding `30h`,
  then enter `shutdown_player` with diagnostic offset `002Ch`.
- Normal Miles queue exhaustion: call `0293B` to wait for both slots.
- Normal BIOS queue exhaustion: wait until byte `SS:CF44` becomes zero.

The 600-tick limit covers the **queue-pumping phase**. The later completion
waits have no internal timeout. The tests distinguish a finite queue timeout
from a permanently busy Miles slot or a BIOS flag that never clears. The
record does not assign a wall-clock duration to 600 ticks without a runtime
capture of the relevant timer setup.

`0293B` skips a slot once its cached status equals 3. If slot zero remains
busy, slot one is not queried yet. Only after slot zero completes does it
poll slot one. Mode `0080h` and the BIOS branch bypass this Miles poll.

## BIOS submission and recovered interrupt

The BIOS branch installs `02BF0` as INT 15h through DOS service `2515h`, after
reading the previous vector with `3515h`. The prior vector is saved twice:
`CS:2BE8` for chaining and `CS:2BEC` for shutdown restoration.

Initial submission calls INT 1Ah with `AX=8307h`, `DX=00A2h`, ES selecting the
ring, BX zero, and CX capped at `4000h`. The queue bookkeeping reserves up to
`8000h`, records any second-block length in `SS:CF40`, sets its offset in
`SS:CF42`, and marks `SS:CF44` active. With playback active and no second block
pending, the pump stages up to `4000h` more bytes. That refill advances the
ring offset by `4000h`, even when the staged length is shorter.

The recovered INT 15h handler recognizes `AX=91FBh`. If `SS:CF40` is nonzero,
it submits that pending block via INT 1Ah and clears the pending length. If
no pending block remains, it clears the active byte. It preserves general
registers, DS, and ES, and returns via IRET. Other requests far-jump through
the previous vector at `CS:2BE8`, retaining the original interrupt frame.

Installation, completion, register preservation, IRET flags/stack restoration,
and the far chain are executed in isolated checks. External interrupt
services are mocked; device recognition and real asynchronous timing remain
runtime-capture work.

## Win32 correlation

The related Win32 functions are
[`append_vdx_pcm_to_ring_buffer`](../disassembly/v32tng/src/functions/audio/append_vdx_pcm_to_ring_buffer.asm)
at `00406D8E` and
[`wait_sample_buffer_boundary_and_reset`](../disassembly/v32tng/src/functions/audio/wait_sample_buffer_boundary_and_reset.asm)
at `00406FAE`. These are behavioral overlaps rather than identical algorithms
or calling conventions.

The append routine copies bytes into a 64 KiB ring and wraps its write index.
It updates a cumulative byte count. On the first append, including an empty
append, it exchanges `0041F524` to `-4` using the PE's imported
`InterlockedExchange` and sets the active flag. A zero enabled/device field
at `0041F4E8` bypasses the operation.

The boundary helper resets the tick field, then polls the imported
`_AIL_sample_buffer_info@20`. Completion requires **either** returned pair
to be equal and at least ten ticks. The ten ticks are a minimum wait, not a
timeout. It then clears active state, offsets, and byte totals. Scripted
checks cover both equality alternatives and prove that equality at tick nine
does not finish the wait.

This pass adds verification and correlation for these already-named Win32
roles; it adds no Win32 role to the coverage count. The PCM path is distinct
from the GRV opcode-29 MIDI sequence wait.

## Reproducible validation

From the repository root, with NASM, Python, Unicorn, and pefile available:

```sh
V_DISASSEMBLY_NO_DEPLOY=1 disassembly/V/build.sh
disassembly/v32tng/build.sh
python grooviev1/verify_pcm_streaming_helpers.py
```

Both canonical SHA-256 checks pass. All **169 DOS/Win32 machine-code cases**
pass, including finite-budget observations of waits that have no internal
termination under the supplied busy state. The test checks both complete
executable hashes and the two relevant Win32 import names before execution.
External DOS/BIOS/Miles/Windows services are mocked. No gameplay, physical
audio output, or DOSBox capture is claimed.

The source map and [semantic evidence manifest](../disassembly/semantic_roles.json)
record the ten original entries and additional interrupt entry separately.
Numeric near-call lists omit far calls, jumps, and vector installation; the
per-entry evidence describes those connections explicitly.
