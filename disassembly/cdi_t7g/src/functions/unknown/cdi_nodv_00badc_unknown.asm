; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00BADC–00BAFD, inclusive.
cdi_nodv_entry_00badc:
db 0x48, 0xE7, 0x00, 0xC0 ; 00BADC: provisional 68k movem.l a0-a1, -(a7)
db 0x20, 0x6F, 0x00, 0x0C ; 00BAE0: provisional 68k movea.l $c(a7), a0
db 0x31, 0x7C, 0x00, 0x01, 0x00, 0x02 ; 00BAE4: provisional 68k move.w #$1, $2(a0)
db 0x22, 0x68, 0x00, 0x1E ; 00BAEA: provisional 68k movea.l $1e(a0), a1
db 0xD2, 0xE9, 0x00, 0x08 ; 00BAEE: provisional 68k adda.w $8(a1), a1
db 0x21, 0x49, 0x00, 0x22 ; 00BAF2: provisional 68k move.l a1, $22(a0)
db 0x4C, 0xDF, 0x03, 0x00 ; 00BAF6: provisional 68k movem.l (a7)+, a0-a1
db 0x2E, 0x9F ; 00BAFA: provisional 68k move.l (a7)+, (a7)
db 0x4E, 0x75 ; 00BAFC: provisional 68k rts 
