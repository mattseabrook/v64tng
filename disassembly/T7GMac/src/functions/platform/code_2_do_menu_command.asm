; verified-role: Native DoMenuCommand routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: DoMenuCommand; evidence file offset 0x6094.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_2_do_menu_command:
db 0x4E, 0x56, 0xFE, 0xFA ; file 005FB2 | 68k link.w a6, #$fefa
db 0x48, 0xE7, 0x03, 0x18 ; file 005FB6 | 68k movem.l d6-d7/a3-a4, -(a7)
db 0x42, 0xA7 ; file 005FBA | 68k clr.l -(a7)
db 0xA9, 0x24 ; file 005FBC | 68k dc.w $a924
db 0x28, 0x5F ; file 005FBE | 68k movea.l (a7)+, a4
db 0x20, 0x0C ; file 005FC0 | 68k move.l a4, d0
db 0x67, 0x08 ; file 005FC2 | 68k beq.b $4f64
db 0x42, 0xA7 ; file 005FC4 | 68k clr.l -(a7)
db 0x2F, 0x0C ; file 005FC6 | 68k move.l a4, -(a7)
db 0xA9, 0x17 ; file 005FC8 | 68k dc.w $a917
db 0x26, 0x5F ; file 005FCA | 68k movea.l (a7)+, a3
db 0x42, 0x67 ; file 005FCC | 68k clr.w -(a7)
db 0x2F, 0x2E, 0x00, 0x08 ; file 005FCE | 68k move.l $8(a6), -(a7)
db 0xA8, 0x6A ; file 005FD2 | 68k dc.w $a86a
db 0x3E, 0x1F ; file 005FD4 | 68k move.w (a7)+, d7
db 0x42, 0x67 ; file 005FD6 | 68k clr.w -(a7)
db 0x2F, 0x2E, 0x00, 0x08 ; file 005FD8 | 68k move.l $8(a6), -(a7)
db 0xA8, 0x6B ; file 005FDC | 68k dc.w $a86b
db 0x3C, 0x1F ; file 005FDE | 68k move.w (a7)+, d6
db 0x30, 0x07 ; file 005FE0 | 68k move.w d7, d0
db 0x6B, 0x00, 0x00, 0xA8 ; file 005FE2 | 68k bmi.w $5024
db 0x04, 0x40, 0x00, 0x82 ; file 005FE6 | 68k subi.w #$82, d0
db 0x67, 0x00, 0x00, 0x80 ; file 005FEA | 68k beq.w $5004
db 0x6A, 0x0A ; file 005FEE | 68k bpl.b $4f92
db 0x54, 0x40 ; file 005FF0 | 68k addq.w #$2, d0
db 0x67, 0x0E ; file 005FF2 | 68k beq.b $4f9a
db 0x6A, 0x40 ; file 005FF4 | 68k bpl.b $4fce
db 0x60, 0x00, 0x00, 0x94 ; file 005FF6 | 68k bra.w $5024
db 0x55, 0x40 ; file 005FFA | 68k subq.w #$2, d0
db 0x6A, 0x00, 0x00, 0x8E ; file 005FFC | 68k bpl.w $5024
db 0x60, 0x78 ; file 006000 | 68k bra.b $5012
db 0x30, 0x06 ; file 006002 | 68k move.w d6, d0
db 0x67, 0x14 ; file 006004 | 68k beq.b $4fb2
db 0x6B, 0x12 ; file 006006 | 68k bmi.b $4fb2
db 0x55, 0x40 ; file 006008 | 68k subq.w #$2, d0
db 0x6A, 0x0E ; file 00600A | 68k bpl.b $4fb2
db 0x42, 0x67 ; file 00600C | 68k clr.w -(a7)
db 0x3F, 0x3C, 0x00, 0x80 ; file 00600E | 68k move.w #$80, -(a7)
db 0x42, 0xA7 ; file 006012 | 68k clr.l -(a7)
db 0xA9, 0x85 ; file 006014 | 68k dc.w $a985
db 0x54, 0x8F ; file 006016 | 68k addq.l #$2, a7
db 0x60, 0x72 ; file 006018 | 68k bra.b $5024
db 0x42, 0xA7 ; file 00601A | 68k clr.l -(a7)
db 0x3F, 0x3C, 0x00, 0x80 ; file 00601C | 68k move.w #$80, -(a7)
db 0xA9, 0x49 ; file 006020 | 68k dc.w $a949
db 0x3F, 0x06 ; file 006022 | 68k move.w d6, -(a7)
db 0x48, 0x6E, 0xFF, 0x00 ; file 006024 | 68k pea.l -$100(a6)
db 0xA9, 0x46 ; file 006028 | 68k dc.w $a946
db 0x42, 0x67 ; file 00602A | 68k clr.w -(a7)
db 0x48, 0x6E, 0xFF, 0x00 ; file 00602C | 68k pea.l -$100(a6)
db 0xA9, 0xB6 ; file 006030 | 68k dc.w $a9b6
db 0x3E, 0x1F ; file 006032 | 68k move.w (a7)+, d7
db 0x60, 0x56 ; file 006034 | 68k bra.b $5024
db 0x30, 0x06 ; file 006036 | 68k move.w d6, d0
db 0x67, 0x52 ; file 006038 | 68k beq.b $5024
db 0x6B, 0x50 ; file 00603A | 68k bmi.b $5024
db 0x57, 0x40 ; file 00603C | 68k subq.w #$3, d0
db 0x67, 0x4C ; file 00603E | 68k beq.b $5024
db 0x6A, 0x06 ; file 006040 | 68k bpl.b $4fe0
db 0x52, 0x40 ; file 006042 | 68k addq.w #$1, d0
db 0x6A, 0x46 ; file 006044 | 68k bpl.b $5024
db 0x60, 0x06 ; file 006046 | 68k bra.b $4fe6
db 0x55, 0x40 ; file 006048 | 68k subq.w #$2, d0
db 0x6A, 0x40 ; file 00604A | 68k bpl.b $5024
db 0x60, 0x16 ; file 00604C | 68k bra.b $4ffc
db 0x28, 0x6D, 0xF7, 0xA0 ; file 00604E | 68k movea.l -$860(a5), a4
db 0x49, 0xEC, 0x01, 0x05 ; file 006052 | 68k lea.l $105(a4), a4
db 0x4A, 0x14 ; file 006056 | 68k tst.b (a4)
db 0x67, 0x04 ; file 006058 | 68k beq.b $4ff6
db 0x42, 0x14 ; file 00605A | 68k clr.b (a4)
db 0x60, 0x2E ; file 00605C | 68k bra.b $5024
db 0x18, 0xBC, 0x00, 0x01 ; file 00605E | 68k move.b #$1, (a4)
db 0x60, 0x28 ; file 006062 | 68k bra.b $5024
db 0x1B, 0x7C, 0x00, 0x01, 0xDD, 0x00 ; file 006064 | 68k move.b #$1, -$2300(a5)
db 0x60, 0x20 ; file 00606A | 68k bra.b $5024
db 0x42, 0x27 ; file 00606C | 68k clr.b -(a7)
db 0x70, 0xFF ; file 00606E | 68k moveq #$ff, d0
db 0xD0, 0x46 ; file 006070 | 68k add.w d6, d0
db 0x3F, 0x00 ; file 006072 | 68k move.w d0, -(a7)
db 0xA9, 0xC2 ; file 006074 | 68k dc.w $a9c2
db 0x54, 0x8F ; file 006076 | 68k addq.l #$2, a7
db 0x60, 0x12 ; file 006078 | 68k bra.b $5024
db 0x30, 0x06 ; file 00607A | 68k move.w d6, d0
db 0x67, 0x0E ; file 00607C | 68k beq.b $5024
db 0x6B, 0x0C ; file 00607E | 68k bmi.b $5024
db 0x57, 0x40 ; file 006080 | 68k subq.w #$3, d0
db 0x67, 0x08 ; file 006082 | 68k beq.b $5024
db 0x6A, 0x04 ; file 006084 | 68k bpl.b $5022
db 0x52, 0x40 ; file 006086 | 68k addq.w #$1, d0
db 0x60, 0x02 ; file 006088 | 68k bra.b $5024
db 0x55, 0x40 ; file 00608A | 68k subq.w #$2, d0
db 0x4C, 0xDF, 0x18, 0xC0 ; file 00608C | 68k movem.l (a7)+, d6-d7/a3-a4
db 0x4E, 0x5E ; file 006090 | 68k unlk a6
db 0x4E, 0x75 ; file 006092 | 68k rts 
