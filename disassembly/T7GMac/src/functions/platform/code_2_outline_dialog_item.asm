; verified-role: Native OutlineDialogItem routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: OutlineDialogItem; evidence file offset 0x702c.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_2_outline_dialog_item:
db 0x4E, 0x56, 0xFF, 0xF2 ; file 007006 | 68k link.w a6, #$fff2
db 0x2F, 0x2E, 0x00, 0x08 ; file 00700A | 68k move.l $8(a6), -(a7)
db 0x3F, 0x2E, 0x00, 0x0C ; file 00700E | 68k move.w $c(a6), -(a7)
db 0x48, 0x6E, 0xFF, 0xFE ; file 007012 | 68k pea.l -$2(a6)
db 0x48, 0x6E, 0xFF, 0xFA ; file 007016 | 68k pea.l -$6(a6)
db 0x48, 0x6E, 0xFF, 0xF2 ; file 00701A | 68k pea.l -$e(a6)
db 0xA9, 0x8D ; file 00701E | 68k dc.w $a98d
db 0x2F, 0x2E, 0xFF, 0xFA ; file 007020 | 68k move.l -$6(a6), -(a7)
db 0x4E, 0xBA, 0xFF, 0x4A ; file 007024 | 68k jsr $5f08(pc)
db 0x4E, 0x5E ; file 007028 | 68k unlk a6
db 0x4E, 0x75 ; file 00702A | 68k rts 
