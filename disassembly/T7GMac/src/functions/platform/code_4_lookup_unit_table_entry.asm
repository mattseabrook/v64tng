; verified-role: Invert the supplied unit index, bounds-check the low-memory unit table, and return its pointer or zero.
; Original native symbol: None; evidence file offset 0xf072.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_4_lookup_unit_table_entry:
db 0x20, 0x5F ; file 00F072 | 68k movea.l (a7)+, a0
db 0x30, 0x1F ; file 00F074 | 68k move.w (a7)+, d0
db 0x42, 0x97 ; file 00F076 | 68k clr.l (a7)
db 0x46, 0x40 ; file 00F078 | 68k not.w d0
db 0xB0, 0x78, 0x01, 0xD2 ; file 00F07A | 68k cmp.w $1d2.w, d0
db 0x64, 0x0A ; file 00F07E | 68k bcc.b $3b6
db 0xE5, 0x48 ; file 00F080 | 68k lsl.w #$2, d0
db 0x22, 0x78, 0x01, 0x1C ; file 00F082 | 68k movea.l $11c.w, a1
db 0x2E, 0xB1, 0x00, 0x00 ; file 00F086 | 68k move.l (a1, d0.w), (a7)
db 0x4E, 0xD0 ; file 00F08A | 68k jmp (a0)
