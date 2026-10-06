; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 012590–0125B5, inclusive.
cdi_nodv_entry_012590:
db 0x48, 0xE7, 0xC0, 0x04 ; 012590: provisional 68k movem.l d0-d1/a5, -(a7)
db 0x2A, 0x6F, 0x00, 0x10 ; 012594: provisional 68k movea.l $10(a7), a5
db 0x30, 0x2F, 0x00, 0x14 ; 012598: provisional 68k move.w $14(a7), d0
db 0x32, 0x2D, 0x00, 0x28 ; 01259C: provisional 68k move.w $28(a5), d1
db 0x3F, 0x01 ; 0125A0: provisional 68k move.w d1, -(a7)
db 0x3F, 0x00 ; 0125A2: provisional 68k move.w d0, -(a7)
db 0x2F, 0x0D ; 0125A4: provisional 68k move.l a5, -(a7)
db 0x61, 0x00, 0xFF, 0x9E ; 0125A6: provisional 68k bsr.w $12546
db 0x4C, 0xDF, 0x20, 0x03 ; 0125AA: provisional 68k movem.l (a7)+, d0-d1/a5
db 0x2F, 0x57, 0x00, 0x06 ; 0125AE: provisional 68k move.l (a7), $6(a7)
db 0x5C, 0x4F ; 0125B2: provisional 68k addq.w #$6, a7
db 0x4E, 0x75 ; 0125B4: provisional 68k rts 
