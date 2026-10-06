; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00BCEA–00BD35, inclusive.
cdi_t7g_entry_00bcea:
db 0x48, 0xE7, 0xE0, 0x40 ; 00BCEA: provisional 68k movem.l d0-d2/a1, -(a7)
db 0x30, 0x2F, 0x00, 0x14 ; 00BCEE: provisional 68k move.w $14(a7), d0
db 0xE0, 0x40 ; 00BCF2: provisional 68k asr.w #$8, d0
db 0x43, 0xFA, 0x00, 0x3D ; 00BCF4: provisional 68k lea.l $bd33(pc), a1
db 0x74, 0x01 ; 00BCF8: provisional 68k moveq #$1, d2
db 0xE9, 0x58 ; 00BCFA: provisional 68k rol.w #$4, d0
db 0x32, 0x00 ; 00BCFC: provisional 68k move.w d0, d1
db 0xC2, 0x7C, 0x00, 0x0F ; 00BCFE: provisional 68k and.w #$f, d1
db 0xB2, 0x7C, 0x00, 0x0A ; 00BD02: provisional 68k cmp.w #$a, d1
db 0x6A, 0x00, 0x00, 0x0A ; 00BD06: provisional 68k bpl.w $bd12
db 0xD2, 0x7C, 0x00, 0x30 ; 00BD0A: provisional 68k add.w #$30, d1
db 0x60, 0x00, 0x00, 0x06 ; 00BD0E: provisional 68k bra.w $bd16
db 0xD2, 0x7C, 0x00, 0x37 ; 00BD12: provisional 68k add.w #$37, d1
db 0x12, 0xC1 ; 00BD16: provisional 68k move.b d1, (a1)+
db 0x51, 0xCA, 0xFF, 0xE0 ; 00BD18: provisional 68k dbra d2, $bcfa
db 0x48, 0x7A, 0x00, 0x14 ; 00BD1C: provisional 68k pea.l $bd32(pc)
db 0x61, 0x00, 0x00, 0x2E ; 00BD20: provisional 68k bsr.w $bd50
db 0x4C, 0xDF, 0x02, 0x07 ; 00BD24: provisional 68k movem.l (a7)+, d0-d2/a1
db 0x2F, 0x57, 0x00, 0x02 ; 00BD28: provisional 68k move.l (a7), $2(a7)
db 0x4F, 0xEF, 0x00, 0x02 ; 00BD2C: provisional 68k lea.l $2(a7), a7
db 0x4E, 0x75 ; 00BD30: provisional 68k rts 
db 0x24, 0x30, 0x30, 0x00 ; 00BD32: provisional 68k move.l (a0, d3.w), d2
