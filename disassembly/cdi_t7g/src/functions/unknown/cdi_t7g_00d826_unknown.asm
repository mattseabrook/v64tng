; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00D826–00D88B, inclusive.
cdi_t7g_entry_00d826:
db 0x48, 0xE7, 0xE0, 0x84 ; 00D826: provisional 68k movem.l d0-d2/a0/a5, -(a7)
db 0x30, 0x2F, 0x00, 0x18 ; 00D82A: provisional 68k move.w $18(a7), d0
db 0x61, 0x00, 0x02, 0x00 ; 00D82E: provisional 68k bsr.w $da30
db 0x20, 0x6D, 0x00, 0x26 ; 00D832: provisional 68k movea.l $26(a5), a0
db 0x41, 0xE8, 0x00, 0x44 ; 00D836: provisional 68k lea.l $44(a0), a0
db 0x32, 0x2F, 0x00, 0x1A ; 00D83A: provisional 68k move.w $1a(a7), d1
db 0xC2, 0x7C, 0x00, 0xFF ; 00D83E: provisional 68k and.w #$ff, d1
db 0x34, 0x01 ; 00D842: provisional 68k move.w d1, d2
db 0xEC, 0x4A ; 00D844: provisional 68k lsr.w #$6, d2
db 0xE5, 0x42 ; 00D846: provisional 68k asl.w #$2, d2
db 0x3F, 0x02 ; 00D848: provisional 68k move.w d2, -(a7)
db 0xED, 0x42 ; 00D84A: provisional 68k asl.w #$6, d2
db 0xD4, 0x5F ; 00D84C: provisional 68k add.w (a7)+, d2
db 0x41, 0xF0, 0x20, 0x00 ; 00D84E: provisional 68k lea.l (a0, d2.w), a0
db 0xC2, 0x7C, 0x00, 0x3F ; 00D852: provisional 68k and.w #$3f, d1
db 0x34, 0x01 ; 00D856: provisional 68k move.w d1, d2
db 0xE5, 0x42 ; 00D858: provisional 68k asl.w #$2, d2
db 0x41, 0xF0, 0x20, 0x00 ; 00D85A: provisional 68k lea.l (a0, d2.w), a0
db 0xD2, 0x7C, 0x00, 0x80 ; 00D85E: provisional 68k add.w #$80, d1
db 0xE1, 0x41 ; 00D862: provisional 68k asl.w #$8, d1
db 0x30, 0x2F, 0x00, 0x1C ; 00D864: provisional 68k move.w $1c(a7), d0
db 0x12, 0x00 ; 00D868: provisional 68k move.b d0, d1
db 0x48, 0x41 ; 00D86A: provisional 68k swap d1
db 0x32, 0x2F, 0x00, 0x1E ; 00D86C: provisional 68k move.w $1e(a7), d1
db 0xE1, 0x41 ; 00D870: provisional 68k asl.w #$8, d1
db 0x30, 0x2F, 0x00, 0x20 ; 00D872: provisional 68k move.w $20(a7), d0
db 0x12, 0x00 ; 00D876: provisional 68k move.b d0, d1
db 0x20, 0x81 ; 00D878: provisional 68k move.l d1, (a0)
db 0x50, 0xED, 0x00, 0x38 ; 00D87A: provisional 68k st.b $38(a5)
db 0x4C, 0xDF, 0x21, 0x07 ; 00D87E: provisional 68k movem.l (a7)+, d0-d2/a0/a5
db 0x2F, 0x57, 0x00, 0x0A ; 00D882: provisional 68k move.l (a7), $a(a7)
db 0x4F, 0xEF, 0x00, 0x0A ; 00D886: provisional 68k lea.l $a(a7), a7
db 0x4E, 0x75 ; 00D88A: provisional 68k rts 
