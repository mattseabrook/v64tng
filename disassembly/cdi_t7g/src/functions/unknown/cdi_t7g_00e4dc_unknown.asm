; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00E4DC–00E549, inclusive.
cdi_t7g_entry_00e4dc:
db 0x48, 0xE7, 0xC1, 0xF8 ; 00E4DC: provisional 68k movem.l d0-d1/d7/a0-a4, -(a7)
db 0x42, 0x87 ; 00E4E0: provisional 68k clr.l d7
db 0x20, 0x6F, 0x00, 0x24 ; 00E4E2: provisional 68k movea.l $24(a7), a0
db 0x43, 0xE8, 0x09, 0x14 ; 00E4E6: provisional 68k lea.l $914(a0), a1
db 0x24, 0x49 ; 00E4EA: provisional 68k movea.l a1, a2
db 0x15, 0x47, 0x00, 0x00 ; 00E4EC: provisional 68k move.b d7, $0(a2)
db 0x35, 0x47, 0x00, 0x04 ; 00E4F0: provisional 68k move.w d7, $4(a2)
db 0x25, 0x47, 0x00, 0x18 ; 00E4F4: provisional 68k move.l d7, $18(a2)
db 0x20, 0x28, 0x09, 0x34 ; 00E4F8: provisional 68k move.l $934(a0), d0
db 0x67, 0x10 ; 00E4FC: provisional 68k beq.b $e50e
db 0x26, 0x40 ; 00E4FE: provisional 68k movea.l d0, a3
db 0x47, 0xEB, 0x09, 0x14 ; 00E500: provisional 68k lea.l $914(a3), a3
db 0x25, 0x4B, 0x00, 0x06 ; 00E504: provisional 68k move.l a3, $6(a2)
db 0x20, 0x40 ; 00E508: provisional 68k movea.l d0, a0
db 0x24, 0x4B ; 00E50A: provisional 68k movea.l a3, a2
db 0x60, 0xDE ; 00E50C: provisional 68k bra.b $e4ec
db 0x25, 0x47, 0x00, 0x06 ; 00E50E: provisional 68k move.l d7, $6(a2)
db 0x35, 0x6F, 0x00, 0x28, 0x00, 0x04 ; 00E512: provisional 68k move.w $28(a7), $4(a2)
db 0x20, 0x6F, 0x00, 0x2A ; 00E518: provisional 68k movea.l $2a(a7), a0
db 0x30, 0x2F, 0x00, 0x2E ; 00E51C: provisional 68k move.w $2e(a7), d0
db 0xE5, 0x40 ; 00E520: provisional 68k asl.w #$2, d0
db 0xD0, 0xC0 ; 00E522: provisional 68k adda.w d0, a0
db 0x22, 0x28, 0x00, 0x10 ; 00E524: provisional 68k move.l $10(a0), d1
db 0x67, 0x0C ; 00E528: provisional 68k beq.b $e536
db 0x21, 0x4A, 0x00, 0x10 ; 00E52A: provisional 68k move.l a2, $10(a0)
db 0x24, 0x41 ; 00E52E: provisional 68k movea.l d1, a2
db 0x25, 0x49, 0x00, 0x06 ; 00E530: provisional 68k move.l a1, $6(a2)
db 0x60, 0x06 ; 00E534: provisional 68k bra.b $e53c
db 0x20, 0x89 ; 00E536: provisional 68k move.l a1, (a0)
db 0x21, 0x4A, 0x00, 0x10 ; 00E538: provisional 68k move.l a2, $10(a0)
db 0x4C, 0xDF, 0x1F, 0x83 ; 00E53C: provisional 68k movem.l (a7)+, d0-d1/d7/a0-a4
db 0x2F, 0x57, 0x00, 0x0C ; 00E540: provisional 68k move.l (a7), $c(a7)
db 0x4F, 0xEF, 0x00, 0x0C ; 00E544: provisional 68k lea.l $c(a7), a7
db 0x4E, 0x75 ; 00E548: provisional 68k rts 
