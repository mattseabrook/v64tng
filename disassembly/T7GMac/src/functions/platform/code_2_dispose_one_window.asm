; recovered-symbol-candidate: Native DisposeOneWindow routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: DisposeOneWindow; evidence file offset 0x7722.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_2_dispose_one_window:
db 0x4E, 0x56, 0xFF, 0xFA ; file 007710 | 68k link.w a6, #$fffa
db 0x2F, 0x2E, 0x00, 0x08 ; file 007714 | 68k move.l $8(a6), -(a7)
db 0x4E, 0xBA, 0xEB, 0xC6 ; file 007718 | 68k jsr $5278(pc)
db 0x70, 0x01 ; file 00771C | 68k moveq #$1, d0
db 0x4E, 0x5E ; file 00771E | 68k unlk a6
db 0x4E, 0x75 ; file 007720 | 68k rts 
