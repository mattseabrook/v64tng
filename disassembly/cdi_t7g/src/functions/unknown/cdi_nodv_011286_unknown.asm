; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 011286–0112A7, inclusive.
cdi_nodv_entry_011286:
db 0x48, 0xE7, 0x00, 0x84 ; 011286: provisional 68k movem.l a0/a5, -(a7)
db 0x2A, 0x48 ; 01128A: provisional 68k movea.l a0, a5
db 0x20, 0x2D, 0x00, 0x10 ; 01128C: provisional 68k move.l $10(a5), d0
db 0x67, 0x08 ; 011290: provisional 68k beq.b $1129a
db 0x20, 0x40 ; 011292: provisional 68k movea.l d0, a0
db 0x61, 0x00, 0xFF, 0xE4 ; 011294: provisional 68k bsr.w $1127a
db 0x65, 0x08 ; 011298: provisional 68k bcs.b $112a2
db 0x2A, 0x6D, 0x00, 0x14 ; 01129A: provisional 68k movea.l $14(a5), a5
db 0x20, 0x0D ; 01129E: provisional 68k move.l a5, d0
db 0x66, 0xEA ; 0112A0: provisional 68k bne.b $1128c
db 0x4C, 0xDF, 0x21, 0x00 ; 0112A2: provisional 68k movem.l (a7)+, a0/a5
db 0x4E, 0x75 ; 0112A6: provisional 68k rts 
