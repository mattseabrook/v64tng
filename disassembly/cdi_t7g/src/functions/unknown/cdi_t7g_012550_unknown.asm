; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 012550–012599, inclusive.
cdi_t7g_entry_012550:
db 0x48, 0xE7, 0x00, 0x84 ; 012550: provisional 68k movem.l a0/a5, -(a7)
db 0x2A, 0x6F, 0x00, 0x0C ; 012554: provisional 68k movea.l $c(a7), a5
db 0x20, 0x6F, 0x00, 0x10 ; 012558: provisional 68k movea.l $10(a7), a0
db 0x61, 0x00, 0x00, 0x3C ; 01255C: provisional 68k bsr.w $1259a
db 0x42, 0x80 ; 012560: provisional 68k clr.l d0
db 0x10, 0x28, 0x00, 0x07 ; 012562: provisional 68k move.b $7(a0), d0
db 0xE1, 0x40 ; 012566: provisional 68k asl.w #$8, d0
db 0x10, 0x28, 0x00, 0x08 ; 012568: provisional 68k move.b $8(a0), d0
db 0xE1, 0x80 ; 01256C: provisional 68k asl.l #$8, d0
db 0x10, 0x28, 0x00, 0x09 ; 01256E: provisional 68k move.b $9(a0), d0
db 0xD0, 0xAD, 0x00, 0x20 ; 012572: provisional 68k add.l $20(a5), d0
db 0x4C, 0xDF, 0x21, 0x00 ; 012576: provisional 68k movem.l (a7)+, a0/a5
db 0x2F, 0x57, 0x00, 0x08 ; 01257A: provisional 68k move.l (a7), $8(a7)
db 0x50, 0x4F ; 01257E: provisional 68k addq.w #$8, a7
db 0x4E, 0x75 ; 012580: provisional 68k rts 
db 0x2F, 0x0D ; 012582: provisional 68k move.l a5, -(a7)
db 0x2A, 0x6F, 0x00, 0x08 ; 012584: provisional 68k movea.l $8(a7), a5
db 0x20, 0x6F, 0x00, 0x0C ; 012588: provisional 68k movea.l $c(a7), a0
db 0x61, 0x00, 0x00, 0x0C ; 01258C: provisional 68k bsr.w $1259a
db 0x2A, 0x5F ; 012590: provisional 68k movea.l (a7)+, a5
db 0x2F, 0x57, 0x00, 0x08 ; 012592: provisional 68k move.l (a7), $8(a7)
db 0x50, 0x4F ; 012596: provisional 68k addq.w #$8, a7
db 0x4E, 0x75 ; 012598: provisional 68k rts 
