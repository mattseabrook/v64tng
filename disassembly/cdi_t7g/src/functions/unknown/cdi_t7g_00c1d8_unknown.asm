; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00C1D8–00C203, inclusive.
cdi_t7g_entry_00c1d8:
db 0x67, 0x04 ; 00C1D8: provisional 68k beq.b $c1de
db 0xB3, 0xC8 ; 00C1DA: provisional 68k cmpa.l a0, a1
db 0x66, 0xD8 ; 00C1DC: provisional 68k bne.b $c1b6
db 0x42, 0x6E, 0xA9, 0x0C ; 00C1DE: provisional 68k clr.w -$56f4(a6)
db 0x4C, 0xDF, 0x0F, 0x00 ; 00C1E2: provisional 68k movem.l (a7)+, a0-a3
db 0x2E, 0x9F ; 00C1E6: provisional 68k move.l (a7)+, (a7)
db 0x4E, 0x75 ; 00C1E8: provisional 68k rts 
db 0x48, 0xE7, 0xFF, 0xFC ; 00C1EA: provisional 68k movem.l d0-d7/a0-a5, -(a7)
db 0x61, 0x00, 0x01, 0x3A ; 00C1EE: provisional 68k bsr.w $c32a
db 0x61, 0x00, 0x01, 0x56 ; 00C1F2: provisional 68k bsr.w $c34a
db 0x41, 0xFA, 0x00, 0xE0 ; 00C1F6: provisional 68k lea.l $c2d8(pc), a0
db 0x4E, 0x40, 0x00, 0x09 ; 00C1FA: provisional 68k trap #0 ; OS-9 service word $0009
db 0x4C, 0xDF, 0x3F, 0xFF ; 00C1FE: provisional 68k movem.l (a7)+, d0-d7/a0-a5
db 0x4E, 0x75 ; 00C202: provisional 68k rts 
