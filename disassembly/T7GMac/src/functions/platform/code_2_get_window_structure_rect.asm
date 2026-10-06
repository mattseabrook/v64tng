; verified-role: Native GetWindowStructureRect routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: GetWindowStructureRect; evidence file offset 0x6d1a.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_2_get_window_structure_rect:
db 0x4E, 0x56, 0xFF, 0xEC ; file 006C76 | 68k link.w a6, #$ffec
db 0x2F, 0x0C ; file 006C7A | 68k move.l a4, -(a7)
db 0x28, 0x6E, 0x00, 0x0C ; file 006C7C | 68k movea.l $c(a6), a4
db 0x4A, 0x2C, 0x00, 0x6E ; file 006C80 | 68k tst.b $6e(a4)
db 0x67, 0x14 ; file 006C84 | 68k beq.b $5c32
db 0x20, 0x6C, 0x00, 0x72 ; file 006C86 | 68k movea.l $72(a4), a0
db 0x20, 0x50 ; file 006C8A | 68k movea.l (a0), a0
db 0x2D, 0x68, 0x00, 0x02, 0xFF, 0xF4 ; file 006C8C | 68k move.l $2(a0), -$c(a6)
db 0x2D, 0x68, 0x00, 0x06, 0xFF, 0xF8 ; file 006C92 | 68k move.l $6(a0), -$8(a6)
db 0x60, 0x6C ; file 006C98 | 68k bra.b $5c9e
db 0x48, 0x6E, 0xFF, 0xFC ; file 006C9A | 68k pea.l -$4(a6)
db 0xA8, 0x74 ; file 006C9E | 68k dc.w $a874
db 0x2F, 0x0C ; file 006CA0 | 68k move.l a4, -(a7)
db 0xA8, 0x73 ; file 006CA2 | 68k dc.w $a873
db 0x2F, 0x0C ; file 006CA4 | 68k move.l a4, -(a7)
db 0x48, 0x6E, 0xFF, 0xEC ; file 006CA6 | 68k pea.l -$14(a6)
db 0x4E, 0xBA, 0xFA, 0xE4 ; file 006CAA | 68k jsr $5728(pc)
db 0x2D, 0x6E, 0xFF, 0xEC, 0xFF, 0xF0 ; file 006CAE | 68k move.l -$14(a6), -$10(a6)
db 0x2E, 0x8C ; file 006CB4 | 68k move.l a4, (a7)
db 0x3F, 0x2E, 0xFF, 0xF2 ; file 006CB6 | 68k move.w -$e(a6), -(a7)
db 0x48, 0x78, 0x40, 0x00 ; file 006CBA | 68k pea.l $4000.w
db 0xA9, 0x1B ; file 006CBE | 68k dc.w $a91b
db 0x2E, 0x8C ; file 006CC0 | 68k move.l a4, (a7)
db 0x1F, 0x3C, 0x00, 0x01 ; file 006CC2 | 68k move.b #$1, -(a7)
db 0xA9, 0x08 ; file 006CC6 | 68k dc.w $a908
db 0x20, 0x6C, 0x00, 0x72 ; file 006CC8 | 68k movea.l $72(a4), a0
db 0x20, 0x50 ; file 006CCC | 68k movea.l (a0), a0
db 0x2D, 0x68, 0x00, 0x02, 0xFF, 0xF4 ; file 006CCE | 68k move.l $2(a0), -$c(a6)
db 0x2D, 0x68, 0x00, 0x06, 0xFF, 0xF8 ; file 006CD4 | 68k move.l $6(a0), -$8(a6)
db 0x2F, 0x0C ; file 006CDA | 68k move.l a4, -(a7)
db 0x42, 0x27 ; file 006CDC | 68k clr.b -(a7)
db 0xA9, 0x08 ; file 006CDE | 68k dc.w $a908
db 0x2F, 0x0C ; file 006CE0 | 68k move.l a4, -(a7)
db 0x3F, 0x2E, 0xFF, 0xF2 ; file 006CE2 | 68k move.w -$e(a6), -(a7)
db 0x3F, 0x2E, 0xFF, 0xF0 ; file 006CE6 | 68k move.w -$10(a6), -(a7)
db 0x42, 0x27 ; file 006CEA | 68k clr.b -(a7)
db 0xA9, 0x1B ; file 006CEC | 68k dc.w $a91b
db 0x48, 0x6E, 0xFF, 0xF4 ; file 006CEE | 68k pea.l -$c(a6)
db 0x42, 0x67 ; file 006CF2 | 68k clr.w -(a7)
db 0x30, 0x2E, 0xFF, 0xF0 ; file 006CF4 | 68k move.w -$10(a6), d0
db 0x06, 0x40, 0xC0, 0x00 ; file 006CF8 | 68k addi.w #$c000, d0
db 0x3F, 0x00 ; file 006CFC | 68k move.w d0, -(a7)
db 0xA8, 0xA8 ; file 006CFE | 68k dc.w $a8a8
db 0x2F, 0x2E, 0xFF, 0xFC ; file 006D00 | 68k move.l -$4(a6), -(a7)
db 0xA8, 0x73 ; file 006D04 | 68k dc.w $a873
db 0x20, 0x6E, 0x00, 0x08 ; file 006D06 | 68k movea.l $8(a6), a0
db 0x20, 0xAE, 0xFF, 0xF4 ; file 006D0A | 68k move.l -$c(a6), (a0)
db 0x21, 0x6E, 0xFF, 0xF8, 0x00, 0x04 ; file 006D0E | 68k move.l -$8(a6), $4(a0)
db 0x28, 0x5F ; file 006D14 | 68k movea.l (a7)+, a4
db 0x4E, 0x5E ; file 006D16 | 68k unlk a6
db 0x4E, 0x75 ; file 006D18 | 68k rts 
