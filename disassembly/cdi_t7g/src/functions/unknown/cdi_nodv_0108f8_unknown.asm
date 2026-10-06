; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 0108F8–010925, inclusive.
cdi_nodv_entry_0108f8:
db 0x48, 0xE7, 0x00, 0xE0 ; 0108F8: provisional 68k movem.l a0-a2, -(a7)
db 0x61, 0x00, 0x01, 0x58 ; 0108FC: provisional 68k bsr.w $10a56
db 0x50, 0xE8, 0x00, 0x00 ; 010900: provisional 68k st.b $0(a0)
db 0x42, 0x28, 0x00, 0x01 ; 010904: provisional 68k clr.b $1(a0)
db 0x30, 0x2F, 0x00, 0x10 ; 010908: provisional 68k move.w $10(a7), d0
db 0x61, 0x00, 0x01, 0x04 ; 01090C: provisional 68k bsr.w $10a12
db 0x21, 0x6F, 0x00, 0x12, 0x00, 0x1A ; 010910: provisional 68k move.l $12(a7), $1a(a0)
db 0x61, 0x00, 0x01, 0x2A ; 010916: provisional 68k bsr.w $10a42
db 0x4C, 0xDF, 0x07, 0x00 ; 01091A: provisional 68k movem.l (a7)+, a0-a2
db 0x2F, 0x57, 0x00, 0x06 ; 01091E: provisional 68k move.l (a7), $6(a7)
db 0x5C, 0x4F ; 010922: provisional 68k addq.w #$6, a7
db 0x4E, 0x75 ; 010924: provisional 68k rts 
