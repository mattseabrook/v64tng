; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 010428–010441, inclusive.
cdi_t7g_entry_010428:
db 0x22, 0x48 ; 010428: provisional 68k movea.l a0, a1
db 0x47, 0xE9, 0x00, 0x00 ; 01042A: provisional 68k lea.l $0(a1), a3
db 0x2F, 0x0C ; 01042E: provisional 68k move.l a4, -(a7)
db 0x2F, 0x0B ; 010430: provisional 68k move.l a3, -(a7)
db 0x61, 0x00, 0xF9, 0x7A ; 010432: provisional 68k bsr.w $fdae
db 0x65, 0x08 ; 010436: provisional 68k bcs.b $10440
db 0x22, 0x69, 0x00, 0x14 ; 010438: provisional 68k movea.l $14(a1), a1
db 0x20, 0x09 ; 01043C: provisional 68k move.l a1, d0
db 0x66, 0xEA ; 01043E: provisional 68k bne.b $1042a
db 0x4E, 0x75 ; 010440: provisional 68k rts 
