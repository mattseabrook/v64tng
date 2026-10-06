; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 0102D4–010321, inclusive.
cdi_t7g_entry_0102d4:
db 0x48, 0xE7, 0xFF, 0xFC ; 0102D4: provisional 68k movem.l d0-d7/a0-a5, -(a7)
db 0x20, 0x2F, 0x00, 0x3C ; 0102D8: provisional 68k move.l $3c(a7), d0
db 0x66, 0x28 ; 0102DC: provisional 68k bne.b $10306
db 0x61, 0x00, 0xBA, 0x56 ; 0102DE: provisional 68k bsr.w $bd36
db 0x48, 0x7A, 0x00, 0x08 ; 0102E2: provisional 68k pea.l $102ec(pc)
db 0x61, 0x00, 0xBA, 0x68 ; 0102E6: provisional 68k bsr.w $bd50
db 0x60, 0x10 ; 0102EA: provisional 68k bra.b $102fc
db 0x6F, 0x62 ; 0102EC: provisional 68k ble.b $10350
db 0x6A, 0x65 ; 0102EE: provisional 68k bpl.b $10355
db 0x63, 0x74 ; 0102F0: provisional 68k bls.b $10366
db 0x20, 0x3D ; file 0102F2
db 0x20, 0x3C, 0x6E, 0x75, 0x6C, 0x6C ; 0102F4: provisional 68k move.l #$6e756c6c, d0
db 0x3E, 0x00 ; 0102FA: provisional 68k move.w d0, d7
db 0x61, 0x00, 0xBA, 0x38 ; 0102FC: provisional 68k bsr.w $bd36
db 0x61, 0x00, 0xBA, 0x34 ; 010300: provisional 68k bsr.w $bd36
db 0x60, 0x14 ; 010304: provisional 68k bra.b $1031a
db 0x2A, 0x40 ; 010306: provisional 68k movea.l d0, a5
db 0x30, 0x2D, 0x00, 0x0A ; 010308: provisional 68k move.w $a(a5), d0
db 0xC0, 0xFC, 0x00, 0x16 ; 01030C: provisional 68k mulu.w #$16, d0
db 0x41, 0xFA, 0xFB, 0x64 ; 010310: provisional 68k lea.l $fe76(pc), a0
db 0xD0, 0xC0 ; 010314: provisional 68k adda.w d0, a0
db 0x4E, 0xA8, 0x00, 0x0C ; 010316: provisional 68k jsr $c(a0)
db 0x4C, 0xDF, 0x3F, 0xFF ; 01031A: provisional 68k movem.l (a7)+, d0-d7/a0-a5
db 0x2E, 0x9F ; 01031E: provisional 68k move.l (a7)+, (a7)
db 0x4E, 0x75 ; 010320: provisional 68k rts 
