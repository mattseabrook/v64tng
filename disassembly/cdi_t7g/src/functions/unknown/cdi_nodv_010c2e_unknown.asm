; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 010C2E–010C61, inclusive.
cdi_nodv_entry_010c2e:
db 0x48, 0xE7, 0x00, 0xC0 ; 010C2E: provisional 68k movem.l a0-a1, -(a7)
db 0x4C, 0xEF, 0x03, 0x00, 0x00, 0x0C ; 010C32: provisional 68k movem.l $c(a7), a0-a1
db 0xB3, 0x08 ; 010C38: provisional 68k cmpm.b (a0)+, (a1)+
db 0x66, 0x18 ; 010C3A: provisional 68k bne.b $10c54
db 0x4A, 0x28, 0xFF, 0xFF ; 010C3C: provisional 68k tst.b -$1(a0)
db 0x66, 0xF6 ; 010C40: provisional 68k bne.b $10c38
db 0x4C, 0xDF, 0x03, 0x00 ; 010C42: provisional 68k movem.l (a7)+, a0-a1
db 0x2F, 0x57, 0x00, 0x08 ; 010C46: provisional 68k move.l (a7), $8(a7)
db 0x4F, 0xEF, 0x00, 0x08 ; 010C4A: provisional 68k lea.l $8(a7), a7
db 0x00, 0x3C, 0x00, 0x01 ; 010C4E: provisional 68k ori.b #$1, ccr
db 0x4E, 0x75 ; 010C52: provisional 68k rts 
db 0x4C, 0xDF, 0x03, 0x00 ; 010C54: provisional 68k movem.l (a7)+, a0-a1
db 0x2F, 0x57, 0x00, 0x08 ; 010C58: provisional 68k move.l (a7), $8(a7)
db 0x4F, 0xEF, 0x00, 0x08 ; 010C5C: provisional 68k lea.l $8(a7), a7
db 0x4E, 0x75 ; 010C60: provisional 68k rts 
