; verified-role: Native MaxWindow routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: MaxWindow; evidence file offset 0x7210.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_2_max_window:
db 0x4E, 0x56, 0xFF, 0xF0 ; file 0071F2 | 68k link.w a6, #$fff0
db 0x48, 0x6E, 0xFF, 0xF0 ; file 0071F6 | 68k pea.l -$10(a6)
db 0x4E, 0xBA, 0xF6, 0x2E ; file 0071FA | 68k jsr $57c2(pc)
db 0x20, 0x6E, 0x00, 0x08 ; file 0071FE | 68k movea.l $8(a6), a0
db 0x20, 0xAE, 0xFF, 0xF0 ; file 007202 | 68k move.l -$10(a6), (a0)
db 0x21, 0x6E, 0xFF, 0xF4, 0x00, 0x04 ; file 007206 | 68k move.l -$c(a6), $4(a0)
db 0x4E, 0x5E ; file 00720C | 68k unlk a6
db 0x4E, 0x75 ; file 00720E | 68k rts 
