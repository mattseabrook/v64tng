; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00DE86–00DEA3, inclusive.
cdi_nodv_entry_00de86:
db 0x48, 0xE7, 0xC0, 0x80 ; 00DE86: provisional 68k movem.l d0-d1/a0, -(a7)
db 0x4A, 0xAE, 0xAB, 0xB6 ; 00DE8A: provisional 68k tst.l -$544a(a6)
db 0x67, 0x0C ; 00DE8E: provisional 68k beq.b $de9c
db 0x30, 0x2F, 0x00, 0x10 ; 00DE90: provisional 68k move.w $10(a7), d0
db 0x32, 0x2F, 0x00, 0x12 ; 00DE94: provisional 68k move.w $12(a7), d1
db 0x61, 0x00, 0xFE, 0x9E ; 00DE98: provisional 68k bsr.w $dd38
db 0x4C, 0xDF, 0x01, 0x03 ; 00DE9C: provisional 68k movem.l (a7)+, d0-d1/a0
db 0x2E, 0x9F ; 00DEA0: provisional 68k move.l (a7)+, (a7)
db 0x4E, 0x75 ; 00DEA2: provisional 68k rts 
