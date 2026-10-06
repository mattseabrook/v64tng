; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 010E96–010EDB, inclusive.
cdi_t7g_entry_010e96:
db 0x32, 0x2D, 0x00, 0x1C ; 010E96: provisional 68k move.w $1c(a5), d1
db 0x34, 0x2D, 0x00, 0x1E ; 010E9A: provisional 68k move.w $1e(a5), d2
db 0x22, 0x6D, 0x00, 0x24 ; 010E9E: provisional 68k movea.l $24(a5), a1
db 0x22, 0x69, 0x00, 0x2C ; 010EA2: provisional 68k movea.l $2c(a1), a1
db 0x24, 0x6D, 0x00, 0x20 ; 010EA6: provisional 68k movea.l $20(a5), a2
db 0x36, 0x2A, 0x00, 0x28 ; 010EAA: provisional 68k move.w $28(a2), d3
db 0x24, 0x6A, 0x00, 0x2C ; 010EAE: provisional 68k movea.l $2c(a2), a2
db 0x53, 0x43 ; 010EB2: provisional 68k subq.w #$1, d3
db 0x38, 0x03 ; 010EB4: provisional 68k move.w d3, d4
db 0x26, 0x4A ; 010EB6: provisional 68k movea.l a2, a3
db 0x22, 0xCB ; 010EB8: provisional 68k move.l a3, (a1)+
db 0xD6, 0xC2 ; 010EBA: provisional 68k adda.w d2, a3
db 0x53, 0x41 ; 010EBC: provisional 68k subq.w #$1, d1
db 0x67, 0x0A ; 010EBE: provisional 68k beq.b $10eca
db 0x51, 0xCC, 0xFF, 0xF6 ; 010EC0: provisional 68k dbra d4, $10eb8
db 0x24, 0x6A, 0x09, 0x34 ; 010EC4: provisional 68k movea.l $934(a2), a2
db 0x60, 0xEA ; 010EC8: provisional 68k bra.b $10eb4
db 0x4E, 0x75 ; 010ECA: provisional 68k rts 
db 0x48, 0x7A, 0x00, 0x08 ; 010ECC: provisional 68k pea.l $10ed6(pc)
db 0x61, 0x00, 0xAE, 0x7E ; 010ED0: provisional 68k bsr.w $bd50
db 0x60, 0x08 ; 010ED4: provisional 68k bra.b $10ede
db 0x69, 0x62 ; 010ED6: provisional 68k bvs.b $10f3a
db 0x66, 0x72 ; 010ED8: provisional 68k bne.b $10f4c
db 0x20, 0x2D ; file 010EDA
