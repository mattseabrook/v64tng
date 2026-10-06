; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00FDAE–00FDE1, inclusive.
cdi_t7g_entry_00fdae:
db 0x48, 0xE7, 0x00, 0xC0 ; 00FDAE: provisional 68k movem.l a0-a1, -(a7)
db 0x4C, 0xEF, 0x03, 0x00, 0x00, 0x0C ; 00FDB2: provisional 68k movem.l $c(a7), a0-a1
db 0xB3, 0x08 ; 00FDB8: provisional 68k cmpm.b (a0)+, (a1)+
db 0x66, 0x18 ; 00FDBA: provisional 68k bne.b $fdd4
db 0x4A, 0x28, 0xFF, 0xFF ; 00FDBC: provisional 68k tst.b -$1(a0)
db 0x66, 0xF6 ; 00FDC0: provisional 68k bne.b $fdb8
db 0x4C, 0xDF, 0x03, 0x00 ; 00FDC2: provisional 68k movem.l (a7)+, a0-a1
db 0x2F, 0x57, 0x00, 0x08 ; 00FDC6: provisional 68k move.l (a7), $8(a7)
db 0x4F, 0xEF, 0x00, 0x08 ; 00FDCA: provisional 68k lea.l $8(a7), a7
db 0x00, 0x3C, 0x00, 0x01 ; 00FDCE: provisional 68k ori.b #$1, ccr
db 0x4E, 0x75 ; 00FDD2: provisional 68k rts 
db 0x4C, 0xDF, 0x03, 0x00 ; 00FDD4: provisional 68k movem.l (a7)+, a0-a1
db 0x2F, 0x57, 0x00, 0x08 ; 00FDD8: provisional 68k move.l (a7), $8(a7)
db 0x4F, 0xEF, 0x00, 0x08 ; 00FDDC: provisional 68k lea.l $8(a7), a7
db 0x4E, 0x75 ; 00FDE0: provisional 68k rts 
