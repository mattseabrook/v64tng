; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 010256–010299, inclusive.
cdi_t7g_entry_010256:
db 0x48, 0xE7, 0xFF, 0xFC ; 010256: provisional 68k movem.l d0-d7/a0-a5, -(a7)
db 0x20, 0x2F, 0x00, 0x3C ; 01025A: provisional 68k move.l $3c(a7), d0
db 0x67, 0x1C ; 01025E: provisional 68k beq.b $1027c
db 0x2A, 0x40 ; 010260: provisional 68k movea.l d0, a5
db 0x30, 0x2D, 0x00, 0x0A ; 010262: provisional 68k move.w $a(a5), d0
db 0xC0, 0xFC, 0x00, 0x16 ; 010266: provisional 68k mulu.w #$16, d0
db 0x41, 0xFA, 0xFC, 0x0A ; 01026A: provisional 68k lea.l $fe76(pc), a0
db 0xD0, 0xC0 ; 01026E: provisional 68k adda.w d0, a0
db 0x4E, 0xA8, 0x00, 0x10 ; 010270: provisional 68k jsr $10(a0)
db 0x4C, 0xDF, 0x3F, 0xFF ; 010274: provisional 68k movem.l (a7)+, d0-d7/a0-a5
db 0x2E, 0x9F ; 010278: provisional 68k move.l (a7)+, (a7)
db 0x4E, 0x75 ; 01027A: provisional 68k rts 
db 0x32, 0x3C, 0x80, 0x00 ; 01027C: provisional 68k move.w #$8000, d1
db 0x61, 0x00, 0xBA, 0xFC ; 010280: provisional 68k bsr.w $bd7e
db 0x6F, 0x62 ; 010284: provisional 68k ble.b $102e8
db 0x6A, 0x5F ; 010286: provisional 68k bpl.b $102e7
db 0x70, 0x63 ; 010288: provisional 68k moveq #$63, d0
db 0x62, 0x3A ; 01028A: provisional 68k bhi.b $102c6
db 0x20, 0x6E, 0x75, 0x6C ; 01028C: provisional 68k movea.l $756c(a6), a0
db 0x6C, 0x20 ; 010290: provisional 68k bge.b $102b2
db 0x6F, 0x62 ; 010292: provisional 68k ble.b $102f6
db 0x6A, 0x65 ; 010294: provisional 68k bpl.b $102fb
db 0x63, 0x74 ; 010296: provisional 68k bls.b $1030c
db 0x00, 0x00 ; file 010298
