; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 012546–012585, inclusive.
cdi_nodv_entry_012546:
db 0x48, 0xE7, 0xC0, 0x44 ; 012546: provisional 68k movem.l d0-d1/a1/a5, -(a7)
db 0x2A, 0x6F, 0x00, 0x14 ; 01254A: provisional 68k movea.l $14(a7), a5
db 0x30, 0x2F, 0x00, 0x18 ; 01254E: provisional 68k move.w $18(a7), d0
db 0x32, 0x2F, 0x00, 0x1A ; 012552: provisional 68k move.w $1a(a7), d1
db 0xC0, 0x7C, 0x0F, 0xFC ; 012556: provisional 68k and.w #$ffc, d0
db 0x61, 0x00, 0x00, 0x2A ; 01255A: provisional 68k bsr.w $12586
db 0x0C, 0x6D, 0x00, 0x00, 0x00, 0x1C ; 01255E: provisional 68k cmpi.w #$0, $1c(a5)
db 0x66, 0x14 ; 012564: provisional 68k bne.b $1257a
db 0x2F, 0x0D ; 012566: provisional 68k move.l a5, -(a7)
db 0x2A, 0x6D, 0x00, 0x3C ; 012568: provisional 68k movea.l $3c(a5), a5
db 0x61, 0x00, 0x00, 0x18 ; 01256C: provisional 68k bsr.w $12586
db 0x2A, 0x5F ; 012570: provisional 68k movea.l (a7)+, a5
db 0x2A, 0x6D, 0x00, 0x40 ; 012572: provisional 68k movea.l $40(a5), a5
db 0x61, 0x00, 0x00, 0x0E ; 012576: provisional 68k bsr.w $12586
db 0x4C, 0xDF, 0x22, 0x03 ; 01257A: provisional 68k movem.l (a7)+, d0-d1/a1/a5
db 0x2F, 0x57, 0x00, 0x08 ; 01257E: provisional 68k move.l (a7), $8(a7)
db 0x50, 0x4F ; 012582: provisional 68k addq.w #$8, a7
db 0x4E, 0x75 ; 012584: provisional 68k rts 
