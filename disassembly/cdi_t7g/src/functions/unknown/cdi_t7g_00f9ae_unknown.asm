; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00F9AE–00F9ED, inclusive.
cdi_t7g_entry_00f9ae:
db 0x4A, 0x28, 0x00, 0x01 ; 00F9AE: provisional 68k tst.b $1(a0)
db 0x67, 0x16 ; 00F9B2: provisional 68k beq.b $f9ca
db 0x4A, 0x28, 0x00, 0x00 ; 00F9B4: provisional 68k tst.b $0(a0)
db 0x66, 0x20 ; 00F9B8: provisional 68k bne.b $f9da
db 0x61, 0x00, 0x00, 0x70 ; 00F9BA: provisional 68k bsr.w $fa2c
db 0x64, 0x0A ; 00F9BE: provisional 68k bcc.b $f9ca
db 0x61, 0x00, 0x00, 0x2C ; 00F9C0: provisional 68k bsr.w $f9ee
db 0x00, 0x3C, 0x00, 0x01 ; 00F9C4: provisional 68k ori.b #$1, ccr
db 0x4E, 0x75 ; 00F9C8: provisional 68k rts 
db 0x20, 0x28, 0x00, 0x22 ; 00F9CA: provisional 68k move.l $22(a0), d0
db 0x67, 0x04 ; 00F9CE: provisional 68k beq.b $f9d4
db 0x20, 0x40 ; 00F9D0: provisional 68k movea.l d0, a0
db 0x60, 0xDA ; 00F9D2: provisional 68k bra.b $f9ae
db 0x02, 0x3C, 0x00, 0x0E ; 00F9D4: provisional 68k andi.b #$e, ccr
db 0x4E, 0x75 ; 00F9D8: provisional 68k rts 
db 0x20, 0x28, 0x00, 0x16 ; 00F9DA: provisional 68k move.l $16(a0), d0
db 0x67, 0xEA ; 00F9DE: provisional 68k beq.b $f9ca
db 0x2F, 0x08 ; 00F9E0: provisional 68k move.l a0, -(a7)
db 0x20, 0x40 ; 00F9E2: provisional 68k movea.l d0, a0
db 0x61, 0x00, 0xFF, 0xC8 ; 00F9E4: provisional 68k bsr.w $f9ae
db 0x20, 0x5F ; 00F9E8: provisional 68k movea.l (a7)+, a0
db 0x64, 0xDE ; 00F9EA: provisional 68k bcc.b $f9ca
db 0x4E, 0x75 ; 00F9EC: provisional 68k rts 
