; verified-role: Build a file parameter block with its reference number and invoke close trap A001.
; Original native symbol: None; evidence file offset 0xf0cc.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_4_close_file_parameter_block:
db 0x4E, 0x56, 0xFF, 0xCE ; file 00F0CC | 68k link.w a6, #$ffce
db 0x20, 0x4F ; file 00F0D0 | 68k movea.l a7, a0
db 0x31, 0x6E, 0x00, 0x08, 0x00, 0x18 ; file 00F0D2 | 68k move.w $8(a6), $18(a0)
db 0xA0, 0x01 ; file 00F0D8 | 68k dc.w $a001
db 0x3D, 0x40, 0x00, 0x0A ; file 00F0DA | 68k move.w d0, $a(a6)
db 0x4E, 0x5E ; file 00F0DE | 68k unlk a6
db 0x20, 0x5F ; file 00F0E0 | 68k movea.l (a7)+, a0
db 0x54, 0x8F ; file 00F0E2 | 68k addq.l #$2, a7
db 0x4E, 0xD0 ; file 00F0E4 | 68k jmp (a0)
