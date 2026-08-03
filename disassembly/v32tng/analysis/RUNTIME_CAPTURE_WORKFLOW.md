# Win32 v32tng 1.02b1 runtime evidence workflow

ProcMon, API traces, and debugger captures can progressively replace neutral
address-based names with verified behavioral names while the exact PE rebuild
remains the regression oracle.

## Capture record

For each observation, preserve:

1. executable SHA-256 and complete command line;
2. Windows version/compatibility environment and relevant media configuration;
3. game state, script/room, user input, and visible or audible result;
4. instruction address, caller/return address, registers, stack, and flags;
5. relevant pointed-to buffers and modified globals;
6. file, registry, multimedia, DirectDraw, window, and message activity;
7. whether the behavior reproduced on another run.

The executable's preferred image base is `00400000h`. With no rebasing, a
debugger address such as `00408DF6h` maps directly to source
`open_loose_vdx`. If ASLR/rebasing changes the load base, calculate:

```text
repository_VA = runtime_address - runtime_module_base + 00400000h
```

Search `analysis/function-inventory.tsv` for the resulting address, or search
function comments for its eight-digit hexadecimal form.

## Evidence and renaming

Record whether a proposed name comes from:

- **static** control flow, constants, imports, globals, and data references;
- **cross-version** correspondence with DOS/demo/other Win32 code;
- **runtime** inputs, outputs, calls, side effects, and reached game state;
- **external** documentation or an original artifact.

Keep uncertain interpretations as notes or `candidate_...` names. Promote a
role when it is specific and repeatable, ideally supported by two independent
evidence types. Every source or ownership change must retain a green
`./build.sh` result until intentional mod development begins.

Systematic evidence can recover accurate behavioral names for reachable
functions. Exact original private symbol spelling, comments, filenames, and
object-module boundaries require the missing PDB, map, source, or an equivalent
original artifact.
