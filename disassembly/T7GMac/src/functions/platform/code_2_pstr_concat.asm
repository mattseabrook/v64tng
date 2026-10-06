; verified-role: Native PStrConcat routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: PStrConcat; evidence file offset 0x712e.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_2_pstr_concat:
db 0x4E, 0x56, 0x00, 0x00 ; file 0070DA | 68k link.w a6, #$0
db 0x48, 0xE7, 0x07, 0x08 ; file 0070DE | 68k movem.l d5-d7/a4, -(a7)
db 0x28, 0x6E, 0x00, 0x08 ; file 0070E2 | 68k movea.l $8(a6), a4
db 0x7E, 0x00 ; file 0070E6 | 68k moveq #$0, d7
db 0x1E, 0x14 ; file 0070E8 | 68k move.b (a4), d7
db 0x20, 0x6E, 0x00, 0x0C ; file 0070EA | 68k movea.l $c(a6), a0
db 0x1C, 0x10 ; file 0070EE | 68k move.b (a0), d6
db 0x70, 0x00 ; file 0070F0 | 68k moveq #$0, d0
db 0x10, 0x06 ; file 0070F2 | 68k move.b d6, d0
db 0xD0, 0x47 ; file 0070F4 | 68k add.w d7, d0
db 0x0C, 0x40, 0x00, 0xFF ; file 0070F6 | 68k cmpi.w #$ff, d0
db 0x6F, 0x0A ; file 0070FA | 68k ble.b $609e
db 0x3A, 0x3C, 0x00, 0xFF ; file 0070FC | 68k move.w #$ff, d5
db 0x9A, 0x47 ; file 007100 | 68k sub.w d7, d5
db 0x48, 0xC5 ; file 007102 | 68k ext.l d5
db 0x60, 0x04 ; file 007104 | 68k bra.b $60a2
db 0x7A, 0x00 ; file 007106 | 68k moveq #$0, d5
db 0x1A, 0x06 ; file 007108 | 68k move.b d6, d5
db 0x4A, 0x85 ; file 00710A | 68k tst.l d5
db 0x6F, 0x18 ; file 00710C | 68k ble.b $60be
db 0x70, 0x01 ; file 00710E | 68k moveq #$1, d0
db 0xD0, 0xAE, 0x00, 0x0C ; file 007110 | 68k add.l $c(a6), d0
db 0x20, 0x40 ; file 007114 | 68k movea.l d0, a0
db 0x70, 0x00 ; file 007116 | 68k moveq #$0, d0
db 0x10, 0x14 ; file 007118 | 68k move.b (a4), d0
db 0xD0, 0x8C ; file 00711A | 68k add.l a4, d0
db 0x52, 0x80 ; file 00711C | 68k addq.l #$1, d0
db 0x22, 0x40 ; file 00711E | 68k movea.l d0, a1
db 0x20, 0x05 ; file 007120 | 68k move.l d5, d0
db 0xA0, 0x2E ; file 007122 | 68k dc.w $a02e
db 0xDB, 0x14 ; file 007124 | 68k add.b d5, (a4)
db 0x4C, 0xDF, 0x10, 0xE0 ; file 007126 | 68k movem.l (a7)+, d5-d7/a4
db 0x4E, 0x5E ; file 00712A | 68k unlk a6
db 0x4E, 0x75 ; file 00712C | 68k rts 
