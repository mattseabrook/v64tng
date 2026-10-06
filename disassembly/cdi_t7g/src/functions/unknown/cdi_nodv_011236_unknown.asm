; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 011236–011279, inclusive.
cdi_nodv_entry_011236:
db 0x48, 0xE7, 0x80, 0x58 ; 011236: provisional 68k movem.l d0/a1/a3-a4, -(a7)
db 0x28, 0x6F, 0x00, 0x18 ; 01123A: provisional 68k movea.l $18(a7), a4
db 0x20, 0x6F, 0x00, 0x14 ; 01123E: provisional 68k movea.l $14(a7), a0
db 0x20, 0x08 ; 011242: provisional 68k move.l a0, d0
db 0x66, 0x04 ; 011244: provisional 68k bne.b $1124a
db 0x20, 0x6E, 0xD0, 0x00 ; 011246: provisional 68k movea.l -$3000(a6), a0
db 0x20, 0x28, 0x00, 0x10 ; 01124A: provisional 68k move.l $10(a0), d0
db 0x67, 0x18 ; 01124E: provisional 68k beq.b $11268
db 0x61, 0x00, 0x00, 0x28 ; 011250: provisional 68k bsr.w $1127a
db 0x64, 0x12 ; 011254: provisional 68k bcc.b $11268
db 0x20, 0x49 ; 011256: provisional 68k movea.l a1, a0
db 0x4C, 0xDF, 0x1A, 0x01 ; 011258: provisional 68k movem.l (a7)+, d0/a1/a3-a4
db 0x2F, 0x57, 0x00, 0x08 ; 01125C: provisional 68k move.l (a7), $8(a7)
db 0x50, 0x4F ; 011260: provisional 68k addq.w #$8, a7
db 0x00, 0x3C, 0x00, 0x01 ; 011262: provisional 68k ori.b #$1, ccr
db 0x4E, 0x75 ; 011266: provisional 68k rts 
db 0x91, 0xC8 ; 011268: provisional 68k suba.l a0, a0
db 0x4C, 0xDF, 0x1A, 0x01 ; 01126A: provisional 68k movem.l (a7)+, d0/a1/a3-a4
db 0x2F, 0x57, 0x00, 0x08 ; 01126E: provisional 68k move.l (a7), $8(a7)
db 0x50, 0x4F ; 011272: provisional 68k addq.w #$8, a7
db 0x02, 0x3C, 0x00, 0x0E ; 011274: provisional 68k andi.b #$e, ccr
db 0x4E, 0x75 ; 011278: provisional 68k rts 
