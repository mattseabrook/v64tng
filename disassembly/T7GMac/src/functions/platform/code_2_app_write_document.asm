; verified-role: Native AppWriteDocument routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: AppWriteDocument; evidence file offset 0x5caa.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_2_app_write_document:
db 0x4E, 0x56, 0xFF, 0xE6 ; file 005C9E | 68k link.w a6, #$ffe6
db 0x30, 0x2E, 0xFF, 0xE6 ; file 005CA2 | 68k move.w -$1a(a6), d0
db 0x4E, 0x5E ; file 005CA6 | 68k unlk a6
db 0x4E, 0x75 ; file 005CA8 | 68k rts 
