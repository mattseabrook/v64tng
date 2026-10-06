; verified-role: Native DoDrawControls routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: DoDrawControls; evidence file offset 0xbf30.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_5_do_draw_controls:
db 0x4E, 0x56, 0x00, 0x00 ; file 00BF06 | 68k link.w a6, #$0
db 0x2F, 0x0C ; file 00BF0A | 68k move.l a4, -(a7)
db 0x20, 0x6E, 0x00, 0x08 ; file 00BF0C | 68k movea.l $8(a6), a0
db 0x28, 0x68, 0x00, 0x8C ; file 00BF10 | 68k movea.l $8c(a0), a4
db 0x60, 0x10 ; file 00BF14 | 68k bra.b $47c0
db 0x1F, 0x2E, 0x00, 0x0C ; file 00BF16 | 68k move.b $c(a6), -(a7)
db 0x2F, 0x0C ; file 00BF1A | 68k move.l a4, -(a7)
db 0x4E, 0xBA, 0x00, 0x24 ; file 00BF1C | 68k jsr $47dc(pc)
db 0x20, 0x54 ; file 00BF20 | 68k movea.l (a4), a0
db 0x28, 0x50 ; file 00BF22 | 68k movea.l (a0), a4
db 0x5C, 0x8F ; file 00BF24 | 68k addq.l #$6, a7
db 0x20, 0x0C ; file 00BF26 | 68k move.l a4, d0
db 0x66, 0xEC ; file 00BF28 | 68k bne.b $47b0
db 0x28, 0x5F ; file 00BF2A | 68k movea.l (a7)+, a4
db 0x4E, 0x5E ; file 00BF2C | 68k unlk a6
db 0x4E, 0x75 ; file 00BF2E | 68k rts 
