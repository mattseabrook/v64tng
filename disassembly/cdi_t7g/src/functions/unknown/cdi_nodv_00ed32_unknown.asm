; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00ED32–00ED99, inclusive.
cdi_nodv_entry_00ed32:
db 0x48, 0xE7, 0xF0, 0x04 ; 00ED32: provisional 68k movem.l d0-d3/a5, -(a7)
db 0x2A, 0x6F, 0x00, 0x18 ; 00ED36: provisional 68k movea.l $18(a7), a5
db 0x30, 0x2F, 0x00, 0x1C ; 00ED3A: provisional 68k move.w $1c(a7), d0
db 0x32, 0x2F, 0x00, 0x1E ; 00ED3E: provisional 68k move.w $1e(a7), d1
db 0x36, 0x2D, 0x00, 0x3E ; 00ED42: provisional 68k move.w $3e(a5), d3
db 0x66, 0x1A ; 00ED46: provisional 68k bne.b $ed62
db 0xD2, 0x40 ; 00ED48: provisional 68k add.w d0, d1
db 0x53, 0x41 ; 00ED4A: provisional 68k subq.w #$1, d1
db 0x00, 0x41, 0x00, 0x01 ; 00ED4C: provisional 68k ori.w #$1, d1
db 0xC0, 0x7C, 0x0F, 0xFE ; 00ED50: provisional 68k and.w #$ffe, d0
db 0x92, 0x40 ; 00ED54: provisional 68k sub.w d0, d1
db 0x52, 0x41 ; 00ED56: provisional 68k addq.w #$1, d1
db 0x3B, 0x40, 0x00, 0x3C ; 00ED58: provisional 68k move.w d0, $3c(a5)
db 0x3B, 0x41, 0x00, 0x3E ; 00ED5C: provisional 68k move.w d1, $3e(a5)
db 0x60, 0x2C ; 00ED60: provisional 68k bra.b $ed8e
db 0x34, 0x2D, 0x00, 0x3C ; 00ED62: provisional 68k move.w $3c(a5), d2
db 0xD2, 0x40 ; 00ED66: provisional 68k add.w d0, d1
db 0x53, 0x41 ; 00ED68: provisional 68k subq.w #$1, d1
db 0xD6, 0x42 ; 00ED6A: provisional 68k add.w d2, d3
db 0x53, 0x43 ; 00ED6C: provisional 68k subq.w #$1, d3
db 0xB4, 0x40 ; 00ED6E: provisional 68k cmp.w d0, d2
db 0x6B, 0x02 ; 00ED70: provisional 68k bmi.b $ed74
db 0x34, 0x00 ; 00ED72: provisional 68k move.w d0, d2
db 0xB6, 0x41 ; 00ED74: provisional 68k cmp.w d1, d3
db 0x6A, 0x02 ; 00ED76: provisional 68k bpl.b $ed7a
db 0x36, 0x01 ; 00ED78: provisional 68k move.w d1, d3
db 0xC4, 0x7C, 0x0F, 0xFE ; 00ED7A: provisional 68k and.w #$ffe, d2
db 0x00, 0x43, 0x00, 0x01 ; 00ED7E: provisional 68k ori.w #$1, d3
db 0x3B, 0x42, 0x00, 0x3C ; 00ED82: provisional 68k move.w d2, $3c(a5)
db 0x96, 0x42 ; 00ED86: provisional 68k sub.w d2, d3
db 0x52, 0x43 ; 00ED88: provisional 68k addq.w #$1, d3
db 0x3B, 0x43, 0x00, 0x3E ; 00ED8A: provisional 68k move.w d3, $3e(a5)
db 0x4C, 0xDF, 0x20, 0x0F ; 00ED8E: provisional 68k movem.l (a7)+, d0-d3/a5
db 0x2F, 0x57, 0x00, 0x08 ; 00ED92: provisional 68k move.l (a7), $8(a7)
db 0x50, 0x4F ; 00ED96: provisional 68k addq.w #$8, a7
db 0x4E, 0x75 ; 00ED98: provisional 68k rts 
