# Win32 v32tng 1.02b1 lossless source coverage

This inventory describes **mechanical source coverage**, not complete semantic
understanding.

| Measure | Count |
|---|---:|
| PE file bytes represented in source | 144,896 / 144,896 |
| `incbin` directives | 0 |
| Provisional Ghidra function entries | 336 |
| Function-body bytes | 81,159 |
| Function-body instructions decoded | 25,181 |
| Instructions requiring exact `db` encoding fallback | 1,992 |
| Bytes in encoding fallbacks | 4,159 |
| Verified semantic function roles | 30 |
| Unidentified/provisionally bounded functions | 306 |
| Non-function PE file bytes | 63,737 |

All headers, section padding, code gaps, `.rdata`, `.data`, imports, resources,
relocations, and the raw debug tail are explicit NASM data. Every decoded
instruction retains its PE virtual address and original opcode bytes.

A `db` line inside a function means the instruction is decoded but NASM's
preferred spelling emits different bytes. Its mnemonic remains in the comment.
Analyzer ownership is provisional: explicit data may later prove to be code,
jump tables, inline constants, or alignment.
