; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 010C6A–010C93, inclusive.
cdi_t7g_entry_010c6a:
db 0x48, 0xE7, 0xFF, 0xFC ; 010C6A: provisional 68k movem.l d0-d7/a0-a5, -(a7)
db 0x2A, 0x6F, 0x00, 0x3C ; 010C6E: provisional 68k movea.l $3c(a7), a5
db 0x61, 0x00, 0x00, 0x36 ; 010C72: provisional 68k bsr.w $10caa
db 0x34, 0x2F, 0x00, 0x40 ; 010C76: provisional 68k move.w $40(a7), d2
db 0x32, 0x2D, 0x00, 0x2A ; 010C7A: provisional 68k move.w $2a(a5), d1
db 0x61, 0x00, 0xFD, 0xAE ; 010C7E: provisional 68k bsr.w $10a2e
db 0x65, 0x0C ; 010C82: provisional 68k bcs.b $10c90
db 0x4C, 0xDF, 0x3F, 0xFF ; 010C84: provisional 68k movem.l (a7)+, d0-d7/a0-a5
db 0x2F, 0x57, 0x00, 0x06 ; 010C88: provisional 68k move.l (a7), $6(a7)
db 0x5C, 0x4F ; 010C8C: provisional 68k addq.w #$6, a7
db 0x4E, 0x75 ; 010C8E: provisional 68k rts 
db 0x32, 0x01 ; 010C90: provisional 68k move.w d1, d1
db 0x61, 0x00 ; file 010C92
