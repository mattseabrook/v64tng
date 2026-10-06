; verified-role: Native AppDuplicateDocument routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: AppDuplicateDocument; evidence file offset 0x5cca.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_2_app_duplicate_document:
db 0x4E, 0x56, 0xFF, 0xEE ; file 005CBE | 68k link.w a6, #$ffee
db 0x30, 0x2E, 0xFF, 0xEE ; file 005CC2 | 68k move.w -$12(a6), d0
db 0x4E, 0x5E ; file 005CC6 | 68k unlk a6
db 0x4E, 0x75 ; file 005CC8 | 68k rts 
