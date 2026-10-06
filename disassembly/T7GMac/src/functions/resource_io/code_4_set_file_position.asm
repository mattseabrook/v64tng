; verified-role: Build file-position parameters and invoke trap A044.
; Original native symbol: None; evidence file offset 0xf12e.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_4_set_file_position:
db 0x4E, 0x56, 0xFF, 0xCE ; file 00F12E | 68k link.w a6, #$ffce
db 0x20, 0x4F ; file 00F132 | 68k movea.l a7, a0
db 0x31, 0x6E, 0x00, 0x0E, 0x00, 0x18 ; file 00F134 | 68k move.w $e(a6), $18(a0)
db 0x31, 0x6E, 0x00, 0x0C, 0x00, 0x2C ; file 00F13A | 68k move.w $c(a6), $2c(a0)
db 0x21, 0x6E, 0x00, 0x08, 0x00, 0x2E ; file 00F140 | 68k move.l $8(a6), $2e(a0)
db 0xA0, 0x44 ; file 00F146 | 68k dc.w $a044
db 0x3D, 0x40, 0x00, 0x10 ; file 00F148 | 68k move.w d0, $10(a6)
db 0x4E, 0x5E ; file 00F14C | 68k unlk a6
db 0x22, 0x5F ; file 00F14E | 68k movea.l (a7)+, a1
db 0x50, 0x8F ; file 00F150 | 68k addq.l #$8, a7
db 0x4E, 0xD1 ; file 00F152 | 68k jmp (a1)
db 0x22, 0x5F ; file 00F154 | 68k movea.l (a7)+, a1
db 0x10, 0x1F ; file 00F156 | 68k move.b (a7)+, d0
db 0x20, 0x5F ; file 00F158 | 68k movea.l (a7)+, a0
db 0x66, 0x06 ; file 00F15A | 68k bne.b $48e
db 0x70, 0x01 ; file 00F15C | 68k moveq #$1, d0
db 0xA2, 0x60 ; file 00F15E | 68k dc.w $a260
db 0x60, 0x04 ; file 00F160 | 68k bra.b $492
db 0x70, 0x01 ; file 00F162 | 68k moveq #$1, d0
db 0xA6, 0x60 ; file 00F164 | 68k dc.w $a660
db 0x3E, 0x80 ; file 00F166 | 68k move.w d0, (a7)
db 0x4E, 0xD1 ; file 00F168 | 68k jmp (a1)
db 0x22, 0x5F ; file 00F16A | 68k movea.l (a7)+, a1
db 0x10, 0x1F ; file 00F16C | 68k move.b (a7)+, d0
db 0x20, 0x5F ; file 00F16E | 68k movea.l (a7)+, a0
db 0x66, 0x06 ; file 00F170 | 68k bne.b $4a4
db 0x70, 0x02 ; file 00F172 | 68k moveq #$2, d0
db 0xA2, 0x60 ; file 00F174 | 68k dc.w $a260
db 0x60, 0x04 ; file 00F176 | 68k bra.b $4a8
db 0x70, 0x02 ; file 00F178 | 68k moveq #$2, d0
db 0xA6, 0x60 ; file 00F17A | 68k dc.w $a660
db 0x3E, 0x80 ; file 00F17C | 68k move.w d0, (a7)
db 0x4E, 0xD1 ; file 00F17E | 68k jmp (a1)
