; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 01036C–0103B5, inclusive.
cdi_t7g_entry_01036c:
db 0x2F, 0x08 ; 01036C: provisional 68k move.l a0, -(a7)
db 0x20, 0x6F, 0x00, 0x08 ; 01036E: provisional 68k movea.l $8(a7), a0
db 0xB1, 0xFC, 0x00, 0x00, 0x00, 0x00 ; 010372: provisional 68k cmpa.l #$0, a0
db 0x66, 0x16 ; 010378: provisional 68k bne.b $10390
db 0x48, 0x7A, 0x00, 0x08 ; 01037A: provisional 68k pea.l $10384(pc)
db 0x61, 0x00, 0xB9, 0xD0 ; 01037E: provisional 68k bsr.w $bd50
db 0x60, 0x08 ; 010382: provisional 68k bra.b $1038c
db 0x3C, 0x6E, 0x75, 0x6C ; 010384: provisional 68k movea.w $756c(a6), a6
db 0x6C, 0x3E ; 010388: provisional 68k bge.b $103c8
db 0x00, 0x00, 0x60, 0x00 ; 01038A: provisional 68k ori.b #$0, d0
db 0x00, 0x22, 0x48, 0x7A ; 01038E: provisional 68k ori.b #$7a, -(a2)
db 0x00, 0x08 ; file 010392
db 0x61, 0x00, 0xB9, 0xBA ; 010394: provisional 68k bsr.w $bd50
db 0x60, 0x02 ; 010398: provisional 68k bra.b $1039c
db 0x27, 0x00 ; 01039A: provisional 68k move.l d0, -(a3)
db 0x48, 0x68, 0x00, 0x00 ; 01039C: provisional 68k pea.l $0(a0)
db 0x61, 0x00, 0xB9, 0xAE ; 0103A0: provisional 68k bsr.w $bd50
db 0x48, 0x7A, 0x00, 0x08 ; 0103A4: provisional 68k pea.l $103ae(pc)
db 0x61, 0x00, 0xB9, 0xA6 ; 0103A8: provisional 68k bsr.w $bd50
db 0x60, 0x02 ; 0103AC: provisional 68k bra.b $103b0
db 0x27, 0x00 ; 0103AE: provisional 68k move.l d0, -(a3)
db 0x20, 0x5F ; 0103B0: provisional 68k movea.l (a7)+, a0
db 0x2E, 0x9F ; 0103B2: provisional 68k move.l (a7)+, (a7)
db 0x4E, 0x75 ; 0103B4: provisional 68k rts 
