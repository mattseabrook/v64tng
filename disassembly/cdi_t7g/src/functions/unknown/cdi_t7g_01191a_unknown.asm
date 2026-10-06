; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 01191A–011973, inclusive.
cdi_t7g_entry_01191a:
db 0x48, 0xE7, 0xFF, 0xFC ; 01191A: provisional 68k movem.l d0-d7/a0-a5, -(a7)
db 0x4C, 0xEF, 0x03, 0x00, 0x00, 0x3C ; 01191E: provisional 68k movem.l $3c(a7), a0-a1
db 0x3D, 0x6F, 0x00, 0x4C, 0xD0, 0x36 ; 011924: provisional 68k move.w $4c(a7), -$2fca(a6)
db 0x3D, 0x6F, 0x00, 0x4E, 0xD0, 0x38 ; 01192A: provisional 68k move.w $4e(a7), -$2fc8(a6)
db 0x3D, 0x6F, 0x00, 0x50, 0xD0, 0x3A ; 011930: provisional 68k move.w $50(a7), -$2fc6(a6)
db 0x61, 0x00, 0x05, 0xD8 ; 011936: provisional 68k bsr.w $11f10
db 0xE2, 0x4F ; 01193A: provisional 68k lsr.w #$1, d7
db 0x53, 0x47 ; 01193C: provisional 68k subq.w #$1, d7
db 0x6B, 0x16 ; 01193E: provisional 68k bmi.b $11956
db 0x48, 0xE7, 0x03, 0x1C ; 011940: provisional 68k movem.l d6-d7/a3-a5, -(a7)
db 0x61, 0x00, 0x00, 0x2E ; 011944: provisional 68k bsr.w $11974
db 0x4C, 0xDF, 0x38, 0xC0 ; 011948: provisional 68k movem.l (a7)+, d6-d7/a3-a5
db 0x58, 0x4B ; 01194C: provisional 68k addq.w #$4, a3
db 0x58, 0x4C ; 01194E: provisional 68k addq.w #$4, a4
db 0x50, 0x4D ; 011950: provisional 68k addq.w #$8, a5
db 0x51, 0xCF, 0xFF, 0xEC ; 011952: provisional 68k dbra d7, $11940
db 0x4C, 0xDF, 0x3F, 0xFF ; 011956: provisional 68k movem.l (a7)+, d0-d7/a0-a5
db 0x2F, 0x57, 0x00, 0x16 ; 01195A: provisional 68k move.l (a7), $16(a7)
db 0x4F, 0xEF, 0x00, 0x16 ; 01195E: provisional 68k lea.l $16(a7), a7
db 0x4E, 0x75 ; 011962: provisional 68k rts 
db 0x00, 0x01, 0x04, 0x09 ; 011964: provisional 68k ori.b #$9, d1
db 0x10, 0x1B ; 011968: provisional 68k move.b (a3)+, d0
db 0x2C, 0x4F ; 01196A: provisional 68k movea.l a7, a6
db 0x80, 0xB1, 0xD4, 0xE5 ; 01196C: provisional 68k or.l -$1b(a1, a5.w), d0
db 0xF0, 0xF7 ; 011970: provisional 68k dc.w $f0f7
db 0xFC, 0xFF ; 011972: provisional 68k dc.w $fcff
