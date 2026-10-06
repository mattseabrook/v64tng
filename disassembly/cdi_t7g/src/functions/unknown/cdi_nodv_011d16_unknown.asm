; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 011D16–011D5B, inclusive.
cdi_nodv_entry_011d16:
db 0x32, 0x2D, 0x00, 0x1C ; 011D16: provisional 68k move.w $1c(a5), d1
db 0x34, 0x2D, 0x00, 0x1E ; 011D1A: provisional 68k move.w $1e(a5), d2
db 0x22, 0x6D, 0x00, 0x24 ; 011D1E: provisional 68k movea.l $24(a5), a1
db 0x22, 0x69, 0x00, 0x2C ; 011D22: provisional 68k movea.l $2c(a1), a1
db 0x24, 0x6D, 0x00, 0x20 ; 011D26: provisional 68k movea.l $20(a5), a2
db 0x36, 0x2A, 0x00, 0x28 ; 011D2A: provisional 68k move.w $28(a2), d3
db 0x24, 0x6A, 0x00, 0x2C ; 011D2E: provisional 68k movea.l $2c(a2), a2
db 0x53, 0x43 ; 011D32: provisional 68k subq.w #$1, d3
db 0x38, 0x03 ; 011D34: provisional 68k move.w d3, d4
db 0x26, 0x4A ; 011D36: provisional 68k movea.l a2, a3
db 0x22, 0xCB ; 011D38: provisional 68k move.l a3, (a1)+
db 0xD6, 0xC2 ; 011D3A: provisional 68k adda.w d2, a3
db 0x53, 0x41 ; 011D3C: provisional 68k subq.w #$1, d1
db 0x67, 0x0A ; 011D3E: provisional 68k beq.b $11d4a
db 0x51, 0xCC, 0xFF, 0xF6 ; 011D40: provisional 68k dbra d4, $11d38
db 0x24, 0x6A, 0x09, 0x34 ; 011D44: provisional 68k movea.l $934(a2), a2
db 0x60, 0xEA ; 011D48: provisional 68k bra.b $11d34
db 0x4E, 0x75 ; 011D4A: provisional 68k rts 
db 0x48, 0x7A, 0x00, 0x08 ; 011D4C: provisional 68k pea.l $11d56(pc)
db 0x61, 0x00, 0xAE, 0x7E ; 011D50: provisional 68k bsr.w $cbd0
db 0x60, 0x08 ; 011D54: provisional 68k bra.b $11d5e
db 0x69, 0x62 ; 011D56: provisional 68k bvs.b $11dba
db 0x66, 0x72 ; 011D58: provisional 68k bne.b $11dcc
db 0x20, 0x2D ; file 011D5A
