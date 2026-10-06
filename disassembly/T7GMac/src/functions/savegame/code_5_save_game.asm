; verified-role: Native SaveGame routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: SaveGame; evidence file offset 0xb574.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_5_save_game:
db 0x4E, 0x56, 0xFE, 0xFA ; file 00B4D2 | 68k link.w a6, #$fefa
db 0x48, 0xE7, 0x01, 0x08 ; file 00B4D6 | 68k movem.l d7/a4, -(a7)
db 0x7E, 0x00 ; file 00B4DA | 68k moveq #$0, d7
db 0x1E, 0x2E, 0x00, 0x08 ; file 00B4DC | 68k move.b $8(a6), d7
db 0x06, 0x47, 0x03, 0xE8 ; file 00B4E0 | 68k addi.w #$3e8, d7
db 0x42, 0xA7 ; file 00B4E4 | 68k clr.l -(a7)
db 0x2F, 0x3C, 0x54, 0x37, 0x53, 0x47 ; file 00B4E6 | 68k move.l #$54375347, -(a7)
db 0x3F, 0x07 ; file 00B4EC | 68k move.w d7, -(a7)
db 0xA9, 0xA0 ; file 00B4EE | 68k dc.w $a9a0
db 0x28, 0x5F ; file 00B4F0 | 68k movea.l (a7)+, a4
db 0x20, 0x0C ; file 00B4F2 | 68k move.l a4, d0
db 0x66, 0x3A ; file 00B4F4 | 68k bne.b $3dca
db 0x20, 0x3C, 0x00, 0x00, 0x04, 0x00 ; file 00B4F6 | 68k move.l #$400, d0
db 0xA1, 0x22 ; file 00B4FC | 68k dc.w $a122
db 0x28, 0x48 ; file 00B4FE | 68k movea.l a0, a4
db 0x20, 0x0C ; file 00B500 | 68k move.l a4, d0
db 0x66, 0x04 ; file 00B502 | 68k bne.b $3da2
db 0x70, 0x00 ; file 00B504 | 68k moveq #$0, d0
db 0x60, 0x64 ; file 00B506 | 68k bra.b $3e06
db 0x20, 0x4C ; file 00B508 | 68k movea.l a4, a0
db 0xA0, 0x29 ; file 00B50A | 68k dc.w $a029
db 0x20, 0x3C, 0x00, 0x00, 0x04, 0x00 ; file 00B50C | 68k move.l #$400, d0
db 0x22, 0x54 ; file 00B512 | 68k movea.l (a4), a1
db 0x20, 0x6D, 0xF7, 0xA0 ; file 00B514 | 68k movea.l -$860(a5), a0
db 0xA0, 0x2E ; file 00B518 | 68k dc.w $a02e
db 0x2F, 0x0C ; file 00B51A | 68k move.l a4, -(a7)
db 0x2F, 0x3C, 0x54, 0x37, 0x53, 0x47 ; file 00B51C | 68k move.l #$54375347, -(a7)
db 0x3F, 0x07 ; file 00B522 | 68k move.w d7, -(a7)
db 0x48, 0x6D, 0xF8, 0x80 ; file 00B524 | 68k pea.l -$780(a5)
db 0xA9, 0xAB ; file 00B528 | 68k dc.w $a9ab
db 0x20, 0x4C ; file 00B52A | 68k movea.l a4, a0
db 0xA0, 0x2A ; file 00B52C | 68k dc.w $a02a
db 0x60, 0x1A ; file 00B52E | 68k bra.b $3de4
db 0x20, 0x4C ; file 00B530 | 68k movea.l a4, a0
db 0xA0, 0x29 ; file 00B532 | 68k dc.w $a029
db 0x20, 0x3C, 0x00, 0x00, 0x04, 0x00 ; file 00B534 | 68k move.l #$400, d0
db 0x22, 0x54 ; file 00B53A | 68k movea.l (a4), a1
db 0x20, 0x6D, 0xF7, 0xA0 ; file 00B53C | 68k movea.l -$860(a5), a0
db 0xA0, 0x2E ; file 00B540 | 68k dc.w $a02e
db 0x20, 0x4C ; file 00B542 | 68k movea.l a4, a0
db 0xA0, 0x2A ; file 00B544 | 68k dc.w $a02a
db 0x2F, 0x0C ; file 00B546 | 68k move.l a4, -(a7)
db 0xA9, 0xAA ; file 00B548 | 68k dc.w $a9aa
db 0x42, 0x67 ; file 00B54A | 68k clr.w -(a7)
db 0xA9, 0xAF ; file 00B54C | 68k dc.w $a9af
db 0x3E, 0x1F ; file 00B54E | 68k move.w (a7)+, d7
db 0x4A, 0x47 ; file 00B550 | 68k tst.w d7
db 0x66, 0x0A ; file 00B552 | 68k bne.b $3df8
db 0x2F, 0x0C ; file 00B554 | 68k move.l a4, -(a7)
db 0xA9, 0xB0 ; file 00B556 | 68k dc.w $a9b0
db 0x42, 0x67 ; file 00B558 | 68k clr.w -(a7)
db 0xA9, 0x94 ; file 00B55A | 68k dc.w $a994
db 0xA9, 0x99 ; file 00B55C | 68k dc.w $a999
db 0x4A, 0x47 ; file 00B55E | 68k tst.w d7
db 0x67, 0x04 ; file 00B560 | 68k beq.b $3e00
db 0x70, 0x00 ; file 00B562 | 68k moveq #$0, d0
db 0x60, 0x06 ; file 00B564 | 68k bra.b $3e06
db 0x4E, 0xBA, 0x00, 0x70 ; file 00B566 | 68k jsr $3e72(pc)
db 0x70, 0x01 ; file 00B56A | 68k moveq #$1, d0
db 0x4C, 0xDF, 0x10, 0x80 ; file 00B56C | 68k movem.l (a7)+, d7/a4
db 0x4E, 0x5E ; file 00B570 | 68k unlk a6
db 0x4E, 0x75 ; file 00B572 | 68k rts 
