; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 01171A–011765, inclusive.
cdi_nodv_entry_01171a:
db 0x48, 0xE7 ; file 01171A
db 0xFF, 0x84 ; 01171C: provisional 68k dc.w $ff84
db 0x2A, 0x6F, 0x00, 0x2C ; 01171E: provisional 68k movea.l $2c(a7), a5
db 0x36, 0x2F, 0x00, 0x30 ; 011722: provisional 68k move.w $30(a7), d3
db 0x38, 0x2F, 0x00, 0x32 ; 011726: provisional 68k move.w $32(a7), d4
db 0x3C, 0x2F, 0x00, 0x34 ; 01172A: provisional 68k move.w $34(a7), d6
db 0x61, 0x00, 0x00, 0x36 ; 01172E: provisional 68k bsr.w $11766
db 0x4C, 0xDF, 0x21, 0xFF ; 011732: provisional 68k movem.l (a7)+, d0-d7/a0/a5
db 0x2F, 0x57, 0x00, 0x0A ; 011736: provisional 68k move.l (a7), $a(a7)
db 0x4F, 0xEF, 0x00, 0x0A ; 01173A: provisional 68k lea.l $a(a7), a7
db 0x4E, 0x75 ; 01173E: provisional 68k rts 
db 0x48, 0xE7, 0xFF, 0x84 ; 011740: provisional 68k movem.l d0-d7/a0/a5, -(a7)
db 0x2A, 0x6F, 0x00, 0x2C ; 011744: provisional 68k movea.l $2c(a7), a5
db 0x36, 0x2F, 0x00, 0x30 ; 011748: provisional 68k move.w $30(a7), d3
db 0x38, 0x2D, 0x00, 0x20 ; 01174C: provisional 68k move.w $20(a5), d4
db 0x3C, 0x2D, 0x00, 0x1E ; 011750: provisional 68k move.w $1e(a5), d6
db 0x61, 0x00, 0x00, 0x10 ; 011754: provisional 68k bsr.w $11766
db 0x4C, 0xDF, 0x21, 0xFF ; 011758: provisional 68k movem.l (a7)+, d0-d7/a0/a5
db 0x2F, 0x57, 0x00, 0x06 ; 01175C: provisional 68k move.l (a7), $6(a7)
db 0x4F, 0xEF, 0x00, 0x06 ; 011760: provisional 68k lea.l $6(a7), a7
db 0x4E, 0x75 ; 011764: provisional 68k rts 
