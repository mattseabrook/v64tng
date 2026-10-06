; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00BC9E–00BCE9, inclusive.
cdi_t7g_entry_00bc9e:
db 0x48, 0xE7, 0xE0, 0x40 ; 00BC9E: provisional 68k movem.l d0-d2/a1, -(a7)
db 0x30, 0x2F, 0x00, 0x14 ; 00BCA2: provisional 68k move.w $14(a7), d0
db 0x43, 0xFA, 0x00, 0x3D ; 00BCA6: provisional 68k lea.l $bce5(pc), a1
db 0x74, 0x03 ; 00BCAA: provisional 68k moveq #$3, d2
db 0xE9, 0x58 ; 00BCAC: provisional 68k rol.w #$4, d0
db 0x32, 0x00 ; 00BCAE: provisional 68k move.w d0, d1
db 0xC2, 0x7C, 0x00, 0x0F ; 00BCB0: provisional 68k and.w #$f, d1
db 0xB2, 0x7C, 0x00, 0x0A ; 00BCB4: provisional 68k cmp.w #$a, d1
db 0x6A, 0x00, 0x00, 0x0A ; 00BCB8: provisional 68k bpl.w $bcc4
db 0xD2, 0x7C, 0x00, 0x30 ; 00BCBC: provisional 68k add.w #$30, d1
db 0x60, 0x00, 0x00, 0x06 ; 00BCC0: provisional 68k bra.w $bcc8
db 0xD2, 0x7C, 0x00, 0x37 ; 00BCC4: provisional 68k add.w #$37, d1
db 0x12, 0xC1 ; 00BCC8: provisional 68k move.b d1, (a1)+
db 0x51, 0xCA, 0xFF, 0xE0 ; 00BCCA: provisional 68k dbra d2, $bcac
db 0x48, 0x7A, 0x00, 0x14 ; 00BCCE: provisional 68k pea.l $bce4(pc)
db 0x61, 0x00, 0x00, 0x7C ; 00BCD2: provisional 68k bsr.w $bd50
db 0x4C, 0xDF, 0x02, 0x07 ; 00BCD6: provisional 68k movem.l (a7)+, d0-d2/a1
db 0x2F, 0x57, 0x00, 0x02 ; 00BCDA: provisional 68k move.l (a7), $2(a7)
db 0x4F, 0xEF, 0x00, 0x02 ; 00BCDE: provisional 68k lea.l $2(a7), a7
db 0x4E, 0x75 ; 00BCE2: provisional 68k rts 
db 0x24, 0x30, 0x30, 0x30 ; 00BCE4: provisional 68k move.l $30(a0, d3.w), d2
db 0x30, 0x00 ; 00BCE8: provisional 68k move.w d0, d0
