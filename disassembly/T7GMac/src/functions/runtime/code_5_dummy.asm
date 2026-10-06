; verified-role: Native Dummy routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: Dummy; evidence file offset 0xafb6.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_5_dummy:
db 0x4E, 0x56, 0xFF, 0xFE ; file 00AFAA | 68k link.w a6, #$fffe
db 0x42, 0x6E, 0xFF, 0xFE ; file 00AFAE | 68k clr.w -$2(a6)
db 0x4E, 0x5E ; file 00AFB2 | 68k unlk a6
db 0x4E, 0x75 ; file 00AFB4 | 68k rts 
