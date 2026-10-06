; verified-role: Native AppReadDocument routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: AppReadDocument; evidence file offset 0x5c8c.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_2_app_read_document:
db 0x4E, 0x56, 0xFF, 0xEA ; file 005C80 | 68k link.w a6, #$ffea
db 0x30, 0x2E, 0xFF, 0xEA ; file 005C84 | 68k move.w -$16(a6), d0
db 0x4E, 0x5E ; file 005C88 | 68k unlk a6
db 0x4E, 0x75 ; file 005C8A | 68k rts 
