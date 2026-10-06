; verified-role: Native AppDisposeDocument routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: AppDisposeDocument; evidence file offset 0x5626.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_2_app_dispose_document:
db 0x4E, 0x56, 0x00, 0x00 ; file 0055E8 | 68k link.w a6, #$0
db 0x48, 0xE7, 0x01, 0x08 ; file 0055EC | 68k movem.l d7/a4, -(a7)
db 0x28, 0x6E, 0x00, 0x08 ; file 0055F0 | 68k movea.l $8(a6), a4
db 0x7E, 0x00 ; file 0055F4 | 68k moveq #$0, d7
db 0x20, 0x0C ; file 0055F6 | 68k move.l a4, d0
db 0x67, 0x22 ; file 0055F8 | 68k beq.b $45b4
db 0x20, 0x54 ; file 0055FA | 68k movea.l (a4), a0
db 0x4A, 0x68, 0x00, 0x04 ; file 0055FC | 68k tst.w $4(a0)
db 0x67, 0x0E ; file 005600 | 68k beq.b $45a8
db 0x42, 0x67 ; file 005602 | 68k clr.w -(a7)
db 0x20, 0x54 ; file 005604 | 68k movea.l (a4), a0
db 0x3F, 0x28, 0x00, 0x02 ; file 005606 | 68k move.w $2(a0), -(a7)
db 0x4E, 0xAD, 0x02, 0x5A ; file 00560A | 68k jsr $25a(a5)
db 0x3E, 0x1F ; file 00560E | 68k move.w (a7)+, d7
db 0x2F, 0x0C ; file 005610 | 68k move.l a4, -(a7)
db 0x4E, 0xBA, 0x06, 0x2A ; file 005612 | 68k jsr $4bd6(pc)
db 0x20, 0x4C ; file 005616 | 68k movea.l a4, a0
db 0xA0, 0x23 ; file 005618 | 68k dc.w $a023
db 0x58, 0x8F ; file 00561A | 68k addq.l #$4, a7
db 0x30, 0x07 ; file 00561C | 68k move.w d7, d0
db 0x4C, 0xDF, 0x10, 0x80 ; file 00561E | 68k movem.l (a7)+, d7/a4
db 0x4E, 0x5E ; file 005622 | 68k unlk a6
db 0x4E, 0x75 ; file 005624 | 68k rts 
