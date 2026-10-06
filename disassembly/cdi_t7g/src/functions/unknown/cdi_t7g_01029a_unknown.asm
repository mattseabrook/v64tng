; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 01029A–0102D3, inclusive.
cdi_t7g_entry_01029a:
db 0x48, 0xE7 ; file 01029A
db 0xFF, 0xFC ; 01029C: provisional 68k dc.w $fffc
db 0x20, 0x2F, 0x00, 0x3C ; 01029E: provisional 68k move.l $3c(a7), d0
db 0x66, 0x14 ; 0102A2: provisional 68k bne.b $102b8
db 0x48, 0x7A, 0x00, 0x08 ; 0102A4: provisional 68k pea.l $102ae(pc)
db 0x61, 0x00, 0xBA, 0xA6 ; 0102A8: provisional 68k bsr.w $bd50
db 0x60, 0x08 ; 0102AC: provisional 68k bra.b $102b6
db 0x3C, 0x6E, 0x75, 0x6C ; 0102AE: provisional 68k movea.w $756c(a6), a6
db 0x6C, 0x3E ; 0102B2: provisional 68k bge.b $102f2
db 0x00, 0x00, 0x60, 0x14 ; 0102B4: provisional 68k ori.b #$14, d0
db 0x2A, 0x40 ; 0102B8: provisional 68k movea.l d0, a5
db 0x30, 0x2D, 0x00, 0x0A ; 0102BA: provisional 68k move.w $a(a5), d0
db 0xC0, 0xFC, 0x00, 0x16 ; 0102BE: provisional 68k mulu.w #$16, d0
db 0x41, 0xFA, 0xFB, 0xB2 ; 0102C2: provisional 68k lea.l $fe76(pc), a0
db 0xD0, 0xC0 ; 0102C6: provisional 68k adda.w d0, a0
db 0x4E, 0xA8, 0x00, 0x08 ; 0102C8: provisional 68k jsr $8(a0)
db 0x4C, 0xDF, 0x3F, 0xFF ; 0102CC: provisional 68k movem.l (a7)+, d0-d7/a0-a5
db 0x2E, 0x9F ; 0102D0: provisional 68k move.l (a7)+, (a7)
db 0x4E, 0x75 ; 0102D2: provisional 68k rts 
