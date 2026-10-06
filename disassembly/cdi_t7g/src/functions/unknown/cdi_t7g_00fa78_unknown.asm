; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00FA78–00FAA5, inclusive.
cdi_t7g_entry_00fa78:
db 0x48, 0xE7, 0x00, 0xE0 ; 00FA78: provisional 68k movem.l a0-a2, -(a7)
db 0x61, 0x00, 0x01, 0x58 ; 00FA7C: provisional 68k bsr.w $fbd6
db 0x50, 0xE8, 0x00, 0x00 ; 00FA80: provisional 68k st.b $0(a0)
db 0x42, 0x28, 0x00, 0x01 ; 00FA84: provisional 68k clr.b $1(a0)
db 0x30, 0x2F, 0x00, 0x10 ; 00FA88: provisional 68k move.w $10(a7), d0
db 0x61, 0x00, 0x01, 0x04 ; 00FA8C: provisional 68k bsr.w $fb92
db 0x21, 0x6F, 0x00, 0x12, 0x00, 0x1A ; 00FA90: provisional 68k move.l $12(a7), $1a(a0)
db 0x61, 0x00, 0x01, 0x2A ; 00FA96: provisional 68k bsr.w $fbc2
db 0x4C, 0xDF, 0x07, 0x00 ; 00FA9A: provisional 68k movem.l (a7)+, a0-a2
db 0x2F, 0x57, 0x00, 0x06 ; 00FA9E: provisional 68k move.l (a7), $6(a7)
db 0x5C, 0x4F ; 00FAA2: provisional 68k addq.w #$6, a7
db 0x4E, 0x75 ; 00FAA4: provisional 68k rts 
