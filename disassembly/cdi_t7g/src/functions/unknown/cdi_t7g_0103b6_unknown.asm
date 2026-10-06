; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 0103B6–0103F9, inclusive.
cdi_t7g_entry_0103b6:
db 0x48, 0xE7, 0x80, 0x58 ; 0103B6: provisional 68k movem.l d0/a1/a3-a4, -(a7)
db 0x28, 0x6F, 0x00, 0x18 ; 0103BA: provisional 68k movea.l $18(a7), a4
db 0x20, 0x6F, 0x00, 0x14 ; 0103BE: provisional 68k movea.l $14(a7), a0
db 0x20, 0x08 ; 0103C2: provisional 68k move.l a0, d0
db 0x66, 0x04 ; 0103C4: provisional 68k bne.b $103ca
db 0x20, 0x6E, 0xD0, 0x00 ; 0103C6: provisional 68k movea.l -$3000(a6), a0
db 0x20, 0x28, 0x00, 0x10 ; 0103CA: provisional 68k move.l $10(a0), d0
db 0x67, 0x18 ; 0103CE: provisional 68k beq.b $103e8
db 0x61, 0x00, 0x00, 0x28 ; 0103D0: provisional 68k bsr.w $103fa
db 0x64, 0x12 ; 0103D4: provisional 68k bcc.b $103e8
db 0x20, 0x49 ; 0103D6: provisional 68k movea.l a1, a0
db 0x4C, 0xDF, 0x1A, 0x01 ; 0103D8: provisional 68k movem.l (a7)+, d0/a1/a3-a4
db 0x2F, 0x57, 0x00, 0x08 ; 0103DC: provisional 68k move.l (a7), $8(a7)
db 0x50, 0x4F ; 0103E0: provisional 68k addq.w #$8, a7
db 0x00, 0x3C, 0x00, 0x01 ; 0103E2: provisional 68k ori.b #$1, ccr
db 0x4E, 0x75 ; 0103E6: provisional 68k rts 
db 0x91, 0xC8 ; 0103E8: provisional 68k suba.l a0, a0
db 0x4C, 0xDF, 0x1A, 0x01 ; 0103EA: provisional 68k movem.l (a7)+, d0/a1/a3-a4
db 0x2F, 0x57, 0x00, 0x08 ; 0103EE: provisional 68k move.l (a7), $8(a7)
db 0x50, 0x4F ; 0103F2: provisional 68k addq.w #$8, a7
db 0x02, 0x3C, 0x00, 0x0E ; 0103F4: provisional 68k andi.b #$e, ccr
db 0x4E, 0x75 ; 0103F8: provisional 68k rts 
