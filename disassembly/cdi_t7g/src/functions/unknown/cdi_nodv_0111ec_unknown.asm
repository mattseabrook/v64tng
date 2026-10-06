; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 0111EC–011235, inclusive.
cdi_nodv_entry_0111ec:
db 0x2F, 0x08 ; 0111EC: provisional 68k move.l a0, -(a7)
db 0x20, 0x6F, 0x00, 0x08 ; 0111EE: provisional 68k movea.l $8(a7), a0
db 0xB1, 0xFC, 0x00, 0x00, 0x00, 0x00 ; 0111F2: provisional 68k cmpa.l #$0, a0
db 0x66, 0x16 ; 0111F8: provisional 68k bne.b $11210
db 0x48, 0x7A, 0x00, 0x08 ; 0111FA: provisional 68k pea.l $11204(pc)
db 0x61, 0x00, 0xB9, 0xD0 ; 0111FE: provisional 68k bsr.w $cbd0
db 0x60, 0x08 ; 011202: provisional 68k bra.b $1120c
db 0x3C, 0x6E, 0x75, 0x6C ; 011204: provisional 68k movea.w $756c(a6), a6
db 0x6C, 0x3E ; 011208: provisional 68k bge.b $11248
db 0x00, 0x00, 0x60, 0x00 ; 01120A: provisional 68k ori.b #$0, d0
db 0x00, 0x22, 0x48, 0x7A ; 01120E: provisional 68k ori.b #$7a, -(a2)
db 0x00, 0x08 ; file 011212
db 0x61, 0x00, 0xB9, 0xBA ; 011214: provisional 68k bsr.w $cbd0
db 0x60, 0x02 ; 011218: provisional 68k bra.b $1121c
db 0x27, 0x00 ; 01121A: provisional 68k move.l d0, -(a3)
db 0x48, 0x68, 0x00, 0x00 ; 01121C: provisional 68k pea.l $0(a0)
db 0x61, 0x00, 0xB9, 0xAE ; 011220: provisional 68k bsr.w $cbd0
db 0x48, 0x7A, 0x00, 0x08 ; 011224: provisional 68k pea.l $1122e(pc)
db 0x61, 0x00, 0xB9, 0xA6 ; 011228: provisional 68k bsr.w $cbd0
db 0x60, 0x02 ; 01122C: provisional 68k bra.b $11230
db 0x27, 0x00 ; 01122E: provisional 68k move.l d0, -(a3)
db 0x20, 0x5F ; 011230: provisional 68k movea.l (a7)+, a0
db 0x2E, 0x9F ; 011232: provisional 68k move.l (a7)+, (a7)
db 0x4E, 0x75 ; 011234: provisional 68k rts 
