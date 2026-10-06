; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00DEB2–00DF19, inclusive.
cdi_t7g_entry_00deb2:
db 0x48, 0xE7, 0xF0, 0x04 ; 00DEB2: provisional 68k movem.l d0-d3/a5, -(a7)
db 0x2A, 0x6F, 0x00, 0x18 ; 00DEB6: provisional 68k movea.l $18(a7), a5
db 0x30, 0x2F, 0x00, 0x1C ; 00DEBA: provisional 68k move.w $1c(a7), d0
db 0x32, 0x2F, 0x00, 0x1E ; 00DEBE: provisional 68k move.w $1e(a7), d1
db 0x36, 0x2D, 0x00, 0x3E ; 00DEC2: provisional 68k move.w $3e(a5), d3
db 0x66, 0x1A ; 00DEC6: provisional 68k bne.b $dee2
db 0xD2, 0x40 ; 00DEC8: provisional 68k add.w d0, d1
db 0x53, 0x41 ; 00DECA: provisional 68k subq.w #$1, d1
db 0x00, 0x41, 0x00, 0x01 ; 00DECC: provisional 68k ori.w #$1, d1
db 0xC0, 0x7C, 0x0F, 0xFE ; 00DED0: provisional 68k and.w #$ffe, d0
db 0x92, 0x40 ; 00DED4: provisional 68k sub.w d0, d1
db 0x52, 0x41 ; 00DED6: provisional 68k addq.w #$1, d1
db 0x3B, 0x40, 0x00, 0x3C ; 00DED8: provisional 68k move.w d0, $3c(a5)
db 0x3B, 0x41, 0x00, 0x3E ; 00DEDC: provisional 68k move.w d1, $3e(a5)
db 0x60, 0x2C ; 00DEE0: provisional 68k bra.b $df0e
db 0x34, 0x2D, 0x00, 0x3C ; 00DEE2: provisional 68k move.w $3c(a5), d2
db 0xD2, 0x40 ; 00DEE6: provisional 68k add.w d0, d1
db 0x53, 0x41 ; 00DEE8: provisional 68k subq.w #$1, d1
db 0xD6, 0x42 ; 00DEEA: provisional 68k add.w d2, d3
db 0x53, 0x43 ; 00DEEC: provisional 68k subq.w #$1, d3
db 0xB4, 0x40 ; 00DEEE: provisional 68k cmp.w d0, d2
db 0x6B, 0x02 ; 00DEF0: provisional 68k bmi.b $def4
db 0x34, 0x00 ; 00DEF2: provisional 68k move.w d0, d2
db 0xB6, 0x41 ; 00DEF4: provisional 68k cmp.w d1, d3
db 0x6A, 0x02 ; 00DEF6: provisional 68k bpl.b $defa
db 0x36, 0x01 ; 00DEF8: provisional 68k move.w d1, d3
db 0xC4, 0x7C, 0x0F, 0xFE ; 00DEFA: provisional 68k and.w #$ffe, d2
db 0x00, 0x43, 0x00, 0x01 ; 00DEFE: provisional 68k ori.w #$1, d3
db 0x3B, 0x42, 0x00, 0x3C ; 00DF02: provisional 68k move.w d2, $3c(a5)
db 0x96, 0x42 ; 00DF06: provisional 68k sub.w d2, d3
db 0x52, 0x43 ; 00DF08: provisional 68k addq.w #$1, d3
db 0x3B, 0x43, 0x00, 0x3E ; 00DF0A: provisional 68k move.w d3, $3e(a5)
db 0x4C, 0xDF, 0x20, 0x0F ; 00DF0E: provisional 68k movem.l (a7)+, d0-d3/a5
db 0x2F, 0x57, 0x00, 0x08 ; 00DF12: provisional 68k move.l (a7), $8(a7)
db 0x50, 0x4F ; 00DF16: provisional 68k addq.w #$8, a7
db 0x4E, 0x75 ; 00DF18: provisional 68k rts 
