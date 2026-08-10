# v64tng Win32 semantic evidence kit

This kit turns the verified Win32 beta player into a semantic oracle. Play
`v32tng.exe`; the tracer records GRV execution, state changes, resource
selection, VDX decoding, and meaningful Win32 input. The offline digester then
produces compact, per-scene evidence that can be aligned with the DOS
disassembly and v64tng.

The number of hook addresses is not the completeness measure. The important
part is reading the correct state at stable semantic boundaries. This version
uses 15 validated native probes, two optional Win32 input API hooks, five
filtered save-file API hooks, and direct reads of the verified GRV globals.

## What changed from the first draft

The first draft should not be used for evidence capture:

- Frida passes function arguments to `onEnter`; registers live on
  `this.context`. The old callback treated the argument array as a register
  context and would fail on a probe hit.
- At `00402338`, the interpreter has not loaded the script pointer or PC into
  registers yet. Register self-calibration at that location was unsound.
- Video and song references are known cdecl arguments. Stack pattern matching
  is unnecessary for the verified build.

The current kit instead:

- refuses an unknown executable hash by default;
- rebases ASLR addresses from a declarative profile;
- verifies expected x86 bytes before attaching every native probe;
- reads the script base, PC, variable bank, call depth, and video flags from
  verified globals;
- captures exact bounded instruction bytes and diffs the 0x400-byte GRV
  variable bank without writing whole snapshots to the log;
- records loaded script names, video refs, and song refs;
- records the verified LOADGAME, SAVEGAME, and CHECK_VALID_SAVES handler
  boundaries plus exact bounded `st7g.N` read/write payloads;
- records VDX type/coding/size, stream state, LZSS parameters and decoded
  length, plus still/delta decoder arguments and returns;
- records GETCD/vielogo boundaries and the native Miles Red Book selection,
  device-open, current-track, track-info, play, and stop calls;
- records key and mouse-button messages (not noisy mouse-move traffic);
- records agent errors, rejected probes, sequence gaps, and malformed lines
  instead of silently producing a trustworthy-looking digest.

## Files

```text
agent.js          injected Frida agent; bounded semantic adapters
capture.py        Windows host, identity checks, scene markers, NDJSON writer
digest.py         offline decoder and per-scene report generator
profiles.json     hash/address/expected-byte profile for verified executables
requirements.txt  reproducible Frida package versions
test_digest.py    offline regression tests
```

## Supported executable

The included profile is for:

```text
v32tng.exe 1.02b1
SHA-256 3c8c3fd3edc27717ae2a08b1f98c7a58f72bd91860a080a29e40d1da8854c36c
```

An exact hash match is required by default. `--allow-unknown-build` exists for
an intentional research pass only; it does not make addresses portable. Each
probe still has to pass its expected-byte check.

## Windows one-time setup

These commands use PowerShell or Windows Terminal. You do not need Node.js,
Visual Studio, a compiler, or a separate Frida server for a local Windows
process.

### 1. Make the game work without tracing

Put `v32tng.exe`, `mss32.dll`, the game data, and any required compatibility
settings in the normal game directory. Double-click the executable and confirm
that it reaches the game before adding Frida.

The tracer does not repair DirectDraw, missing data files, or compatibility
issues. It deliberately launches with the game directory as its working
directory.

### 2. Copy this entire folder

Copy the complete `research\debug` folder to the Windows machine. For example:

```text
C:\v64tng-trace\
```

Keep `agent.js`, `capture.py`, `digest.py`, `profiles.json`, and
`requirements.txt` together.

### 3. Install 64-bit Python

Install the current Python Install Manager from:

```text
https://www.python.org/downloads/
```

Open a new terminal, install a current 64-bit Python runtime, and verify it:

```powershell
py install 3.14
py -V:3.14 --version
```

Python 3.10 or newer works with the scripts. If you already have a normal
64-bit Python 3.11+ installation, keep it and use `py` below.

### 4. Create an isolated environment and install Frida

```powershell
cd C:\v64tng-trace
py -m venv .venv
.\.venv\Scripts\python.exe -m pip install --upgrade pip
.\.venv\Scripts\python.exe -m pip install -r requirements.txt
```

Using the environment's Python directly avoids PowerShell activation-policy
problems.

### 5. Verify the executable and the setup

```powershell
Get-FileHash "C:\T7G\v32tng.exe" -Algorithm SHA256
.\.venv\Scripts\python.exe capture.py --doctor --exe "C:\T7G\v32tng.exe"
```

`profile match` must say `v32tng-1.02b1`. If it says `UNRECOGNIZED`, stop and
do not force the profile for a normal evidence run.

## Capture a full session

```powershell
cd C:\v64tng-trace
.\.venv\Scripts\python.exe capture.py --exe "C:\T7G\v32tng.exe"
```

The process starts suspended, the agent validates and attaches its probes, and
then the host resumes the game. The expected readiness line is approximately:

```text
tracer ready: 20 semantic probes attached; 0 failures; input hooks ['GetMessageA', 'PeekMessageA']; save hooks ['CreateFileA', 'WriteFile', 'ReadFile', 'CloseHandle', 'DeleteFileA']
```

One input hook may be absent if that API is not available in the process. That
does not invalidate GRV/VDX evidence. Any rejected semantic probe does matter;
keep the trace and inspect `DIAGNOSTICS.txt`.

While playing:

- Press **F9** to add an automatic scene boundary without leaving the game.
  Both the hooked Windows key-down message and the host hotkey poll feed one
  deduplicated marker, so even a very short tap is retained.
- Type a label and press Enter in the capture console when convenient.
- Quit the game normally, or press Ctrl+C in the capture console.

### Round 1: clean menu, Zaphod, reveal, and first save

Use a game directory with no existing `st7g.N` save files, as planned. Do not
delete anything solely for tracing; first verify the directory is already in
the desired clean state.

Use F9 for these boundaries while the game retains focus. The automatic names
will be `mark-1`, `mark-2`, and so on, so keep this list beside you:

1. **F9 / mark-1:** immediately after the traced game appears;
2. allow the initial menu to settle completely;
3. **F9 / mark-2:** stable clean menu, before entering the Zaphod Beeblebrox sequence;
4. **F9 / mark-3:** immediately before entering the sequence;
5. enter the complete Zaphod Beeblebrox sequence once, then wait for every
   visible/audible consequence to settle;
6. **F9 / mark-4:** after the Zaphod result has settled;
7. exercise every newly revealed menu item or state that can be inspected
   without beginning the Round 2 intro playthrough, pausing for transitions;
8. **F9 / mark-5:** after the revealed menu exploration;
9. **F9 / mark-6:** immediately before creating the first save;
10. create the save and wait until the menu is stable again;
11. **F9 / mark-7:** immediately after the save has completed;
12. revisit the menu/load display far enough to make the new slot visible, but
    do not load it unless that is required to verify the slot;
13. **F9 / mark-8:** saved-slot display settled;
14. quit normally and leave the capture console open until it reports that the
    process exited.

Do not combine the intro sequence with this capture. Round 2 will start from a
fresh trace and cover Start through the complete intro up to first player
control.

### Round 2: Start New through first foyer control

Start a fresh trace. Leave the Zaphod map alone and do not press keys or click
to skip any video. Use these F9 boundaries:

1. **F9 / mark-1:** as soon as the traced game window first appears;
2. let the clean main menu become completely stable;
3. **F9 / mark-2:** stable menu, immediately before clicking **Start New**;
4. click **Start New** exactly once;
5. after that click, give the game **no keyboard or mouse input at all** while
   the publisher/developer/title logos and entire story/opening sequence play;
6. when the foyer appears, continue waiting until all automatic foyer
   video/audio has ended and the navigation cursor is responsive;
7. **F9 / mark-3:** stable foyer at first player control, before any navigation;
8. do not click a foyer hotspot. Close the game normally and leave the
    capture console open until it reports that the process exited.

Do not add F9 cuts during the cinematic. The probes record every exact media
boundary automatically, while a keyboard event during playback would make the
evidence less clean. The two critical cuts are mark-2 before **Start New** and
mark-3 after first control but before any foyer navigation.

By default, output is written below:

```text
C:\v64tng-trace\trace\YYYYMMDD-HHMMSS\
    manifest.json
    events.ndjson
```

Use a different trace root if desired:

```powershell
.\.venv\Scripts\python.exe capture.py --exe "C:\T7G\v32tng.exe" --out "D:\t7g-traces"
```

## Attach to a game that is already running

If spawning fails but an ordinary double-click works, start the game yourself
and attach with the same executable path for identity verification:

```powershell
.\.venv\Scripts\python.exe capture.py `
  --exe "C:\T7G\v32tng.exe" `
  --attach v32tng.exe
```

Use the numeric PID instead of the name if more than one copy is running.
The capture terminal and game should normally run at the same privilege level.
Try an Administrator terminal only when Windows reports an access error.

## Capture modes

`--mode full` is the default and is recommended for the first pass.

| Mode | Evidence |
|---|---|
| `core` | GRV instruction/state/variable changes, resources, and low-volume Miles/CD-audio calls |
| `media` | VDX stream/chunk/LZSS/still/delta evidence plus Miles/CD-audio calls |
| `full` | core + media + filtered Win32 key/button messages |

If a long exploratory session produces too much data, use `--mode core`.
Variable snapshots are compared inside the target but only changes are emitted.
Use `--no-variables` only for performance diagnosis, because variable writes
are some of the strongest semantic alignment evidence.

The default GRV instruction window is 64 bytes. A corpus scan of every retail
T7G GRV found a maximum instruction length of 51 bytes, so the default retains
the complete current instruction while avoiding the 4x raw-window overhead of
the original 256-byte setting. `--instruction-window 256` remains available
for exploratory work on an unknown script build.

## Digest a capture

```powershell
.\.venv\Scripts\python.exe digest.py "trace\YYYYMMDD-HHMMSS"
```

The command creates:

```text
digest\
    INDEX.txt          identity, probe health, completeness, scene list
    DIAGNOSTICS.txt    rejected hooks, script errors, bad lines, sequence gaps
    report.json        machine-readable coverage summary
    00-boot.txt
    01-main-menu.txt
    ...
```

Each scene report includes:

- probe hit counts;
- scripts, video refs, and song refs;
- VDX chunk type/coding/size and decoder calls;
- GRV variable writes with the originating instruction when known;
- load/save/check-valid-saves handler hits and `st7g.N` open/read/write/close
  evidence, including SHA-256 of captured payloads;
- filtered input event counts;
- opcode coverage;
- an exact GRV trace with PC, instruction bytes, decoded mnemonic/operands,
  inferred non-fallthrough control transfers, and consecutive-repeat counts;
- distinct PC/opcode coverage and decode anomalies.

The digester supports old trace files, but labels their register-derived
semantics as legacy calibration. New traces should say:

```text
semantic source: direct profile globals (trusted)
```

## What to bring back after the first run

For Round 1, bring back:

1. `manifest.json`;
2. `digest\INDEX.txt`;
3. `digest\DIAGNOSTICS.txt`;
4. every `00-boot.txt` / `mark-N` scene file;
5. `digest\report.json`;
6. the newly created `st7g.N` save file if you are comfortable including it.

Keep `events.ndjson`. It is the lossless replay source and lets the digester be
improved without repeating the play session. If sharing the whole file is
practical, copy the entire timestamped trace directory back into the
repository rather than pasting excerpts.

## How this helps identify DOS code semantically

GRV bytecode is the common semantic spine: script identity, bytecode PC,
opcode, operands, variable mutations, selected packed resources, and VDX
chunk progression can be compared across Win32, DOS, and v64tng even though
their native x86 addresses differ.

This tracer does not by itself discover every DOS native routine. It produces
the Win32 side of the alignment with enough state to identify:

- which DOS handler must consume a given opcode and operand shape;
- which branch/PC transition differs;
- which variable mutation belongs to that handler;
- which resource-selection path follows;
- where VDX decoding first diverges by chunk/coding/codec parameters.

Native DOS address proof still comes from the DOS disassembly or a future
instrumented DOSBox-X run. Matching only a mnemonic is weaker than matching
PC, operands, state mutation, resource, and downstream media behavior.

## Troubleshooting

**`UNRECOGNIZED` hash or capture refuses to start**

The binary is not the verified build. Preserve its hash and obtain or create a
separate profile before trusting any addresses.

**`expected bytes do not match`**

Do not treat that probe as evidence. The executable may be patched, packed, or
a different revision. Send `manifest.json` and `DIAGNOSTICS.txt`.

**Game runs normally but not when spawned**

Use the attach command above. Check that the executable path points into the
real game directory and that both processes use the same privilege level.

**`AccessDeniedError`**

Close the game and terminal, then try both as Administrator. Do not run only
one of them elevated.

**Antivirus warning**

Frida injects an instrumentation agent into the game process, which can
trigger generic behavior-based detection. Verify that the files came from
this repository and, if you choose to proceed, allow only this trace folder.

**`py` is not recognized**

Open a new terminal after installing Python. Check Windows “Manage app
execution aliases” and ensure the Python aliases are enabled.

**Frida installation fails**

Upgrade pip in the virtual environment and retry. Record the full error and
the output of:

```powershell
.\.venv\Scripts\python.exe --version
.\.venv\Scripts\python.exe -m pip --version
```

**The trace is large**

Use more F9 scene cuts and `--mode core` for long navigation tours. The raw
log is intentionally lossless; digest text is capped per scene while coverage
and raw NDJSON remain complete.

## Offline self-test

The digester can be tested without Windows or Frida:

```powershell
.\.venv\Scripts\python.exe -m unittest -v test_digest.py
```
