; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 0116C6–011705, inclusive.
cdi_t7g_entry_0116c6:
db 0x48, 0xE7, 0xC0, 0x44 ; 0116C6: provisional 68k movem.l d0-d1/a1/a5, -(a7)
db 0x2A, 0x6F, 0x00, 0x14 ; 0116CA: provisional 68k movea.l $14(a7), a5
db 0x30, 0x2F, 0x00, 0x18 ; 0116CE: provisional 68k move.w $18(a7), d0
db 0x32, 0x2F, 0x00, 0x1A ; 0116D2: provisional 68k move.w $1a(a7), d1
db 0xC0, 0x7C, 0x0F, 0xFC ; 0116D6: provisional 68k and.w #$ffc, d0
db 0x61, 0x00, 0x00, 0x2A ; 0116DA: provisional 68k bsr.w $11706
db 0x0C, 0x6D, 0x00, 0x00, 0x00, 0x1C ; 0116DE: provisional 68k cmpi.w #$0, $1c(a5)
db 0x66, 0x14 ; 0116E4: provisional 68k bne.b $116fa
db 0x2F, 0x0D ; 0116E6: provisional 68k move.l a5, -(a7)
db 0x2A, 0x6D, 0x00, 0x3C ; 0116E8: provisional 68k movea.l $3c(a5), a5
db 0x61, 0x00, 0x00, 0x18 ; 0116EC: provisional 68k bsr.w $11706
db 0x2A, 0x5F ; 0116F0: provisional 68k movea.l (a7)+, a5
db 0x2A, 0x6D, 0x00, 0x40 ; 0116F2: provisional 68k movea.l $40(a5), a5
db 0x61, 0x00, 0x00, 0x0E ; 0116F6: provisional 68k bsr.w $11706
db 0x4C, 0xDF, 0x22, 0x03 ; 0116FA: provisional 68k movem.l (a7)+, d0-d1/a1/a5
db 0x2F, 0x57, 0x00, 0x08 ; 0116FE: provisional 68k move.l (a7), $8(a7)
db 0x50, 0x4F ; 011702: provisional 68k addq.w #$8, a7
db 0x4E, 0x75 ; 011704: provisional 68k rts 
