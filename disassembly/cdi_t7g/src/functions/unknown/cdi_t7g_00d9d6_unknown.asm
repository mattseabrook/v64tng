; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00D9D6–00DA2F, inclusive.
cdi_t7g_entry_00d9d6:
db 0x48, 0xE7, 0xC0, 0xC0 ; 00D9D6: provisional 68k movem.l d0-d1/a0-a1, -(a7)
db 0x20, 0x6E, 0xAB, 0xDC ; 00D9DA: provisional 68k movea.l -$5424(a6), a0
db 0x22, 0x6E, 0xAB, 0xE0 ; 00D9DE: provisional 68k movea.l -$5420(a6), a1
db 0x2D, 0x49, 0xAB, 0xDC ; 00D9E2: provisional 68k move.l a1, -$5424(a6)
db 0x2D, 0x48, 0xAB, 0xE0 ; 00D9E6: provisional 68k move.l a0, -$5420(a6)
db 0x48, 0x7A, 0x00, 0x0A ; 00D9EA: provisional 68k pea.l $d9f6(pc)
db 0x2F, 0x09 ; 00D9EE: provisional 68k move.l a1, -(a7)
db 0x61, 0x00, 0x29, 0x30 ; 00D9F0: provisional 68k bsr.w $10322
db 0x60, 0x08 ; 00D9F4: provisional 68k bra.b $d9fe
db 0x64, 0x73 ; 00D9F6: provisional 68k bcc.b $da6b
db 0x70, 0x5F ; 00D9F8: provisional 68k moveq #$5f, d0
db 0x63, 0x75 ; 00D9FA: provisional 68k bls.b $da71
db 0x72, 0x00 ; 00D9FC: provisional 68k moveq #$0, d1
db 0x48, 0x7A, 0x00, 0x0A ; 00D9FE: provisional 68k pea.l $da0a(pc)
db 0x2F, 0x08 ; 00DA02: provisional 68k move.l a0, -(a7)
db 0x61, 0x00, 0x29, 0x1C ; 00DA04: provisional 68k bsr.w $10322
db 0x60, 0x08 ; 00DA08: provisional 68k bra.b $da12
db 0x64, 0x73 ; 00DA0A: provisional 68k bcc.b $da7f
db 0x70, 0x5F ; 00DA0C: provisional 68k moveq #$5f, d0
db 0x73, 0x68 ; file 00DA0E
db 0x64, 0x00, 0x3F, 0x28 ; 00DA10: provisional 68k bcc.w $1193a
db 0x00, 0x20, 0x3F, 0x28 ; 00DA14: provisional 68k ori.b #$28, -(a0)
db 0x00, 0x1E, 0x3F, 0x29 ; 00DA18: provisional 68k ori.b #$29, (a6)+
db 0x00, 0x20, 0x3F, 0x29 ; 00DA1C: provisional 68k ori.b #$29, -(a0)
db 0x00, 0x1E, 0x61, 0x00 ; 00DA20: provisional 68k ori.b #$0, (a6)+
db 0x12, 0xC4 ; 00DA24: provisional 68k move.b d4, (a1)+
db 0x61, 0x00, 0x12, 0xE0 ; 00DA26: provisional 68k bsr.w $ed08
db 0x4C, 0xDF, 0x03, 0x03 ; 00DA2A: provisional 68k movem.l (a7)+, d0-d1/a0-a1
db 0x4E, 0x75 ; 00DA2E: provisional 68k rts 
