; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00CAD4–00CB1D, inclusive.
cdi_nodv_entry_00cad4:
db 0x48, 0xE7, 0xE0, 0x40 ; 00CAD4: provisional 68k movem.l d0-d2/a1, -(a7)
db 0x20, 0x2F, 0x00, 0x14 ; 00CAD8: provisional 68k move.l $14(a7), d0
db 0x43, 0xFA, 0x00, 0x37 ; 00CADC: provisional 68k lea.l $cb15(pc), a1
db 0x74, 0x07 ; 00CAE0: provisional 68k moveq #$7, d2
db 0xE9, 0x98 ; 00CAE2: provisional 68k rol.l #$4, d0
db 0x32, 0x00 ; 00CAE4: provisional 68k move.w d0, d1
db 0xC2, 0x7C, 0x00, 0x0F ; 00CAE6: provisional 68k and.w #$f, d1
db 0xB2, 0x7C, 0x00, 0x0A ; 00CAEA: provisional 68k cmp.w #$a, d1
db 0x6A, 0x00, 0x00, 0x0A ; 00CAEE: provisional 68k bpl.w $cafa
db 0xD2, 0x7C, 0x00, 0x30 ; 00CAF2: provisional 68k add.w #$30, d1
db 0x60, 0x00, 0x00, 0x06 ; 00CAF6: provisional 68k bra.w $cafe
db 0xD2, 0x7C, 0x00, 0x37 ; 00CAFA: provisional 68k add.w #$37, d1
db 0x12, 0xC1 ; 00CAFE: provisional 68k move.b d1, (a1)+
db 0x51, 0xCA, 0xFF, 0xE0 ; 00CB00: provisional 68k dbra d2, $cae2
db 0x48, 0x7A, 0x00, 0x0E ; 00CB04: provisional 68k pea.l $cb14(pc)
db 0x61, 0x00, 0x00, 0xC6 ; 00CB08: provisional 68k bsr.w $cbd0
db 0x4C, 0xDF, 0x02, 0x07 ; 00CB0C: provisional 68k movem.l (a7)+, d0-d2/a1
db 0x2E, 0x9F ; 00CB10: provisional 68k move.l (a7)+, (a7)
db 0x4E, 0x75 ; 00CB12: provisional 68k rts 
db 0x24, 0x30, 0x30, 0x30 ; 00CB14: provisional 68k move.l $30(a0, d3.w), d2
db 0x30, 0x30, 0x30, 0x30 ; 00CB18: provisional 68k move.w $30(a0, d3.w), d0
db 0x30, 0x00 ; 00CB1C: provisional 68k move.w d0, d0
