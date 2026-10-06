; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 01279A–0127F3, inclusive.
cdi_nodv_entry_01279a:
db 0x48, 0xE7, 0xFF, 0xFC ; 01279A: provisional 68k movem.l d0-d7/a0-a5, -(a7)
db 0x4C, 0xEF, 0x03, 0x00, 0x00, 0x3C ; 01279E: provisional 68k movem.l $3c(a7), a0-a1
db 0x3D, 0x6F, 0x00, 0x4C, 0xD0, 0x36 ; 0127A4: provisional 68k move.w $4c(a7), -$2fca(a6)
db 0x3D, 0x6F, 0x00, 0x4E, 0xD0, 0x38 ; 0127AA: provisional 68k move.w $4e(a7), -$2fc8(a6)
db 0x3D, 0x6F, 0x00, 0x50, 0xD0, 0x3A ; 0127B0: provisional 68k move.w $50(a7), -$2fc6(a6)
db 0x61, 0x00, 0x05, 0xD8 ; 0127B6: provisional 68k bsr.w $12d90
db 0xE2, 0x4F ; 0127BA: provisional 68k lsr.w #$1, d7
db 0x53, 0x47 ; 0127BC: provisional 68k subq.w #$1, d7
db 0x6B, 0x16 ; 0127BE: provisional 68k bmi.b $127d6
db 0x48, 0xE7, 0x03, 0x1C ; 0127C0: provisional 68k movem.l d6-d7/a3-a5, -(a7)
db 0x61, 0x00, 0x00, 0x2E ; 0127C4: provisional 68k bsr.w $127f4
db 0x4C, 0xDF, 0x38, 0xC0 ; 0127C8: provisional 68k movem.l (a7)+, d6-d7/a3-a5
db 0x58, 0x4B ; 0127CC: provisional 68k addq.w #$4, a3
db 0x58, 0x4C ; 0127CE: provisional 68k addq.w #$4, a4
db 0x50, 0x4D ; 0127D0: provisional 68k addq.w #$8, a5
db 0x51, 0xCF, 0xFF, 0xEC ; 0127D2: provisional 68k dbra d7, $127c0
db 0x4C, 0xDF, 0x3F, 0xFF ; 0127D6: provisional 68k movem.l (a7)+, d0-d7/a0-a5
db 0x2F, 0x57, 0x00, 0x16 ; 0127DA: provisional 68k move.l (a7), $16(a7)
db 0x4F, 0xEF, 0x00, 0x16 ; 0127DE: provisional 68k lea.l $16(a7), a7
db 0x4E, 0x75 ; 0127E2: provisional 68k rts 
db 0x00, 0x01, 0x04, 0x09 ; 0127E4: provisional 68k ori.b #$9, d1
db 0x10, 0x1B ; 0127E8: provisional 68k move.b (a3)+, d0
db 0x2C, 0x4F ; 0127EA: provisional 68k movea.l a7, a6
db 0x80, 0xB1, 0xD4, 0xE5 ; 0127EC: provisional 68k or.l -$1b(a1, a5.w), d0
db 0xF0, 0xF7 ; 0127F0: provisional 68k dc.w $f0f7
db 0xFC, 0xFF ; 0127F2: provisional 68k dc.w $fcff
