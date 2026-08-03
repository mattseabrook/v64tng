# DOS V1.30 lossless source coverage

This inventory describes **mechanical source coverage**, not complete semantic
understanding.

| Measure | Count |
|---|---:|
| Unpacked load-image bytes represented in source | 101,624 / 101,624 |
| `incbin` directives | 0 |
| Provisional Ghidra function entries | 261 |
| Function-body bytes | 32,292 |
| Function-body instructions decoded | 12,484 |
| Instructions requiring exact `db` encoding fallback | 1,620 |
| Bytes in encoding fallbacks | 3,477 |
| Verified semantic function roles | 13 |
| Unidentified/provisionally bounded functions | 248 |
| Analyzed function/gap span end | `0892Ch` |
| Non-function bytes in the load image | 69,332 |

Every function-body instruction retains its runtime offset and original opcode
bytes in a comment. A `db` line inside a function means the instruction was
decoded, but NASM's preferred spelling would emit different bytes; the decoded
mnemonic is preserved in the comment.

Bytes outside Ghidra-owned bodies remain explicit data. Some may later prove to
be undiscovered code, jump tables, inline constants, or alignment. Runtime
evidence should change ownership only after the byte-identical build remains
green.
