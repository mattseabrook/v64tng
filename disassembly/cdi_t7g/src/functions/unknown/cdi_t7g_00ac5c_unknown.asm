; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00AC5C–00AC7D, inclusive.
cdi_t7g_entry_00ac5c:
db 0x48, 0xE7, 0x00, 0xC0 ; 00AC5C: provisional 68k movem.l a0-a1, -(a7)
db 0x20, 0x6F, 0x00, 0x0C ; 00AC60: provisional 68k movea.l $c(a7), a0
db 0x31, 0x7C, 0x00, 0x01, 0x00, 0x02 ; 00AC64: provisional 68k move.w #$1, $2(a0)
db 0x22, 0x68, 0x00, 0x1E ; 00AC6A: provisional 68k movea.l $1e(a0), a1
db 0xD2, 0xE9, 0x00, 0x08 ; 00AC6E: provisional 68k adda.w $8(a1), a1
db 0x21, 0x49, 0x00, 0x22 ; 00AC72: provisional 68k move.l a1, $22(a0)
db 0x4C, 0xDF, 0x03, 0x00 ; 00AC76: provisional 68k movem.l (a7)+, a0-a1
db 0x2E, 0x9F ; 00AC7A: provisional 68k move.l (a7)+, (a7)
db 0x4E, 0x75 ; 00AC7C: provisional 68k rts 
