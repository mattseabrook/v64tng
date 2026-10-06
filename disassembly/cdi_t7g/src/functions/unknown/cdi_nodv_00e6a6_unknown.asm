; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00E6A6–00E70B, inclusive.
cdi_nodv_entry_00e6a6:
db 0x48, 0xE7, 0xE0, 0x84 ; 00E6A6: provisional 68k movem.l d0-d2/a0/a5, -(a7)
db 0x30, 0x2F, 0x00, 0x18 ; 00E6AA: provisional 68k move.w $18(a7), d0
db 0x61, 0x00, 0x02, 0x00 ; 00E6AE: provisional 68k bsr.w $e8b0
db 0x20, 0x6D, 0x00, 0x26 ; 00E6B2: provisional 68k movea.l $26(a5), a0
db 0x41, 0xE8, 0x00, 0x44 ; 00E6B6: provisional 68k lea.l $44(a0), a0
db 0x32, 0x2F, 0x00, 0x1A ; 00E6BA: provisional 68k move.w $1a(a7), d1
db 0xC2, 0x7C, 0x00, 0xFF ; 00E6BE: provisional 68k and.w #$ff, d1
db 0x34, 0x01 ; 00E6C2: provisional 68k move.w d1, d2
db 0xEC, 0x4A ; 00E6C4: provisional 68k lsr.w #$6, d2
db 0xE5, 0x42 ; 00E6C6: provisional 68k asl.w #$2, d2
db 0x3F, 0x02 ; 00E6C8: provisional 68k move.w d2, -(a7)
db 0xED, 0x42 ; 00E6CA: provisional 68k asl.w #$6, d2
db 0xD4, 0x5F ; 00E6CC: provisional 68k add.w (a7)+, d2
db 0x41, 0xF0, 0x20, 0x00 ; 00E6CE: provisional 68k lea.l (a0, d2.w), a0
db 0xC2, 0x7C, 0x00, 0x3F ; 00E6D2: provisional 68k and.w #$3f, d1
db 0x34, 0x01 ; 00E6D6: provisional 68k move.w d1, d2
db 0xE5, 0x42 ; 00E6D8: provisional 68k asl.w #$2, d2
db 0x41, 0xF0, 0x20, 0x00 ; 00E6DA: provisional 68k lea.l (a0, d2.w), a0
db 0xD2, 0x7C, 0x00, 0x80 ; 00E6DE: provisional 68k add.w #$80, d1
db 0xE1, 0x41 ; 00E6E2: provisional 68k asl.w #$8, d1
db 0x30, 0x2F, 0x00, 0x1C ; 00E6E4: provisional 68k move.w $1c(a7), d0
db 0x12, 0x00 ; 00E6E8: provisional 68k move.b d0, d1
db 0x48, 0x41 ; 00E6EA: provisional 68k swap d1
db 0x32, 0x2F, 0x00, 0x1E ; 00E6EC: provisional 68k move.w $1e(a7), d1
db 0xE1, 0x41 ; 00E6F0: provisional 68k asl.w #$8, d1
db 0x30, 0x2F, 0x00, 0x20 ; 00E6F2: provisional 68k move.w $20(a7), d0
db 0x12, 0x00 ; 00E6F6: provisional 68k move.b d0, d1
db 0x20, 0x81 ; 00E6F8: provisional 68k move.l d1, (a0)
db 0x50, 0xED, 0x00, 0x38 ; 00E6FA: provisional 68k st.b $38(a5)
db 0x4C, 0xDF, 0x21, 0x07 ; 00E6FE: provisional 68k movem.l (a7)+, d0-d2/a0/a5
db 0x2F, 0x57, 0x00, 0x0A ; 00E702: provisional 68k move.l (a7), $a(a7)
db 0x4F, 0xEF, 0x00, 0x0A ; 00E706: provisional 68k lea.l $a(a7), a7
db 0x4E, 0x75 ; 00E70A: provisional 68k rts 
