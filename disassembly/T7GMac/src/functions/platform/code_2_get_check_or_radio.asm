; verified-role: Native GetCheckOrRadio routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: GetCheckOrRadio; evidence file offset 0x671c.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_2_get_check_or_radio:
db 0x4E, 0x56, 0xFF, 0xF2 ; file 0066F0 | 68k link.w a6, #$fff2
db 0x2F, 0x2E, 0x00, 0x08 ; file 0066F4 | 68k move.l $8(a6), -(a7)
db 0x3F, 0x2E, 0x00, 0x0C ; file 0066F8 | 68k move.w $c(a6), -(a7)
db 0x48, 0x6E, 0xFF, 0xFE ; file 0066FC | 68k pea.l -$2(a6)
db 0x48, 0x6E, 0xFF, 0xFA ; file 006700 | 68k pea.l -$6(a6)
db 0x48, 0x6E, 0xFF, 0xF2 ; file 006704 | 68k pea.l -$e(a6)
db 0xA9, 0x8D ; file 006708 | 68k dc.w $a98d
db 0x42, 0x67 ; file 00670A | 68k clr.w -(a7)
db 0x2F, 0x2E, 0xFF, 0xFA ; file 00670C | 68k move.l -$6(a6), -(a7)
db 0xA9, 0x60 ; file 006710 | 68k dc.w $a960
db 0x4A, 0x5F ; file 006712 | 68k tst.w (a7)+
db 0x56, 0xC0 ; file 006714 | 68k sne.b d0
db 0x44, 0x00 ; file 006716 | 68k neg.b d0
db 0x4E, 0x5E ; file 006718 | 68k unlk a6
db 0x4E, 0x75 ; file 00671A | 68k rts 
