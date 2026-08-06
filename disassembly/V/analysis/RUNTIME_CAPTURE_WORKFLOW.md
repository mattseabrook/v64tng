# DOS V1.30 runtime evidence workflow

Runtime captures can turn neutral address-based symbols into accurate semantic
names without sacrificing the byte-identical build.

## What to record

For every observation, preserve:

1. the executable SHA-256 and the exact command line;
2. DOSBox-X version and relevant machine, memory, video, audio, and CD settings;
3. the game state, room/script, input, and visible or audible result;
4. the breakpoint address as `CS:IP`, plus the DOS load segment if known;
5. registers, flags, stack words, caller/return address, and relevant memory;
6. file opens/seeks/reads and DOS, BIOS, XMS, video, mouse, or sound interrupts;
7. whether the observation reproduced on another run.

A useful compact record is:

| Field | Example |
|---|---|
| Scenario | Standalone `~intro` playback, first video frame |
| Command | `V.EXE ~intro` |
| Asset/script | `intro.vdx` |
| Runtime address | `CS:IP` and load segment |
| Repository offset | Linear load-image offset |
| Caller | Return address or caller offset |
| Inputs | Registers, stack arguments, relevant globals |
| Outputs | Return registers, modified globals, I/O, screen/audio effect |
| Repetition | Run count and whether identical |

## Converting a runtime address

Repository symbols use a zero-based linear offset into the MZ load image.
Given the executable's DOS load segment `L` and a runtime address `CS:IP`:

```text
repository_offset = ((CS - L) * 16) + IP
```

The retail executable is LZEXE-packed. `DEBUGBOX V.EXE !` first stops in the
packer stub at relative `0598h:000Eh`; at that stop calculate
`L = CS - 0598h`, then continue to a breakpoint at `L:0000h`. That second
location is the canonical unpacked entry represented by this source tree.

Segment aliases are normal in 16-bit real mode. Two different `CS:IP` pairs
can identify the same linear byte. Record both the original pair and the
calculated repository offset.

Find the owning working symbol in `function-inventory.tsv`, or search source
comments for the five-digit hexadecimal offset. For example, offset `03AC4`
maps to `run_grv_vm`.

## Evidence and renaming

A proposed semantic name should record its basis:

- **static**: callers, callees, constants, data references, interrupt use;
- **cross-version**: a materially matching DOS/demo/Win32 routine;
- **runtime**: observed inputs, outputs, side effects, or reached game state;
- **external**: documentation or an original artifact.

Use `candidate_...` in notes while evidence is incomplete. Promote a name to
`verified-role` when the behavior is specific and repeatable, ideally supported
by two independent evidence types. After any ownership or instruction edit,
run `./build.sh`; exact identity must remain green.

## What can and cannot be recovered

With systematic traces, static analysis, and cross-version comparison, it is
reasonable to assign accurate behavioral names to every reachable function
and global subsystem. Dead/error-only paths may require forced conditions or
static proof.

Those names will be our canonical recovered symbols. They cannot be claimed as
the original developers' exact labels, source filenames, comments, or object
module layout unless an original symbol table, map file, source listing, or
equivalent artifact is found.

The complete event schema, scenario protocol, DOSBox-X fork architecture, IPC
surface, and original-versus-v64tng alignment method are documented in the
root [`README.md`](../../../README.md#runtime-capture-and-differential-validation).
