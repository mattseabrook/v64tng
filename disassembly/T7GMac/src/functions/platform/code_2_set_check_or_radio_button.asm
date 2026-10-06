; verified-role: Native SetCheckOrRadioButton routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: SetCheckOrRadioButton; evidence file offset 0x71da.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_2_set_check_or_radio_button:
db 0x4E, 0x56, 0xFF, 0xF2 ; file 0071B2 | 68k link.w a6, #$fff2
db 0x2F, 0x2E, 0x00, 0x08 ; file 0071B6 | 68k move.l $8(a6), -(a7)
db 0x3F, 0x2E, 0x00, 0x0C ; file 0071BA | 68k move.w $c(a6), -(a7)
db 0x48, 0x6E, 0xFF, 0xFE ; file 0071BE | 68k pea.l -$2(a6)
db 0x48, 0x6E, 0xFF, 0xFA ; file 0071C2 | 68k pea.l -$6(a6)
db 0x48, 0x6E, 0xFF, 0xF2 ; file 0071C6 | 68k pea.l -$e(a6)
db 0xA9, 0x8D ; file 0071CA | 68k dc.w $a98d
db 0x2F, 0x2E, 0xFF, 0xFA ; file 0071CC | 68k move.l -$6(a6), -(a7)
db 0x3F, 0x2E, 0x00, 0x0E ; file 0071D0 | 68k move.w $e(a6), -(a7)
db 0xA9, 0x63 ; file 0071D4 | 68k dc.w $a963
db 0x4E, 0x5E ; file 0071D6 | 68k unlk a6
db 0x4E, 0x75 ; file 0071D8 | 68k rts 
