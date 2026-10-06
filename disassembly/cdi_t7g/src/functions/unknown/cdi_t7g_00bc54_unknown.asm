; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00BC54–00BC9D, inclusive.
cdi_t7g_entry_00bc54:
db 0x48, 0xE7, 0xE0, 0x40 ; 00BC54: provisional 68k movem.l d0-d2/a1, -(a7)
db 0x20, 0x2F, 0x00, 0x14 ; 00BC58: provisional 68k move.l $14(a7), d0
db 0x43, 0xFA, 0x00, 0x37 ; 00BC5C: provisional 68k lea.l $bc95(pc), a1
db 0x74, 0x07 ; 00BC60: provisional 68k moveq #$7, d2
db 0xE9, 0x98 ; 00BC62: provisional 68k rol.l #$4, d0
db 0x32, 0x00 ; 00BC64: provisional 68k move.w d0, d1
db 0xC2, 0x7C, 0x00, 0x0F ; 00BC66: provisional 68k and.w #$f, d1
db 0xB2, 0x7C, 0x00, 0x0A ; 00BC6A: provisional 68k cmp.w #$a, d1
db 0x6A, 0x00, 0x00, 0x0A ; 00BC6E: provisional 68k bpl.w $bc7a
db 0xD2, 0x7C, 0x00, 0x30 ; 00BC72: provisional 68k add.w #$30, d1
db 0x60, 0x00, 0x00, 0x06 ; 00BC76: provisional 68k bra.w $bc7e
db 0xD2, 0x7C, 0x00, 0x37 ; 00BC7A: provisional 68k add.w #$37, d1
db 0x12, 0xC1 ; 00BC7E: provisional 68k move.b d1, (a1)+
db 0x51, 0xCA, 0xFF, 0xE0 ; 00BC80: provisional 68k dbra d2, $bc62
db 0x48, 0x7A, 0x00, 0x0E ; 00BC84: provisional 68k pea.l $bc94(pc)
db 0x61, 0x00, 0x00, 0xC6 ; 00BC88: provisional 68k bsr.w $bd50
db 0x4C, 0xDF, 0x02, 0x07 ; 00BC8C: provisional 68k movem.l (a7)+, d0-d2/a1
db 0x2E, 0x9F ; 00BC90: provisional 68k move.l (a7)+, (a7)
db 0x4E, 0x75 ; 00BC92: provisional 68k rts 
db 0x24, 0x30, 0x30, 0x30 ; 00BC94: provisional 68k move.l $30(a0, d3.w), d2
db 0x30, 0x30, 0x30, 0x30 ; 00BC98: provisional 68k move.w $30(a0, d3.w), d0
db 0x30, 0x00 ; 00BC9C: provisional 68k move.w d0, d0
