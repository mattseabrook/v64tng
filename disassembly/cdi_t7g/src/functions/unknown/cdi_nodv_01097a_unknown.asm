; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 01097A–0109AD, inclusive.
cdi_nodv_entry_01097a:
db 0x48, 0xE7, 0x80, 0xF0 ; 01097A: provisional 68k movem.l d0/a0-a3, -(a7)
db 0x30, 0x2F, 0x00, 0x18 ; 01097E: provisional 68k move.w $18(a7), d0
db 0x61, 0x00, 0x00, 0xAE ; 010982: provisional 68k bsr.w $10a32
db 0x20, 0x49 ; 010986: provisional 68k movea.l a1, a0
db 0x4A, 0xA8, 0x00, 0x12 ; 010988: provisional 68k tst.l $12(a0)
db 0x67, 0x12 ; 01098C: provisional 68k beq.b $109a0
db 0x20, 0x28, 0x00, 0x16 ; 01098E: provisional 68k move.l $16(a0), d0
db 0x67, 0x08 ; 010992: provisional 68k beq.b $1099c
db 0x2F, 0x08 ; 010994: provisional 68k move.l a0, -(a7)
db 0x20, 0x40 ; 010996: provisional 68k movea.l d0, a0
db 0x61, 0x14 ; 010998: provisional 68k bsr.b $109ae
db 0x20, 0x5F ; 01099A: provisional 68k movea.l (a7)+, a0
db 0x61, 0x00, 0x00, 0x30 ; 01099C: provisional 68k bsr.w $109ce
db 0x4C, 0xDF, 0x0F, 0x01 ; 0109A0: provisional 68k movem.l (a7)+, d0/a0-a3
db 0x2F, 0x57, 0x00, 0x02 ; 0109A4: provisional 68k move.l (a7), $2(a7)
db 0x4F, 0xEF, 0x00, 0x02 ; 0109A8: provisional 68k lea.l $2(a7), a7
db 0x4E, 0x75 ; 0109AC: provisional 68k rts 
