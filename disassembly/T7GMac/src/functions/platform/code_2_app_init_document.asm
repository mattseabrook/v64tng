; verified-role: Native AppInitDocument routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: AppInitDocument; evidence file offset 0x5c6e.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_2_app_init_document:
db 0x4E, 0x56, 0x00, 0x00 ; file 005C58 | 68k link.w a6, #$0
db 0x20, 0x6E, 0x00, 0x08 ; file 005C5C | 68k movea.l $8(a6), a0
db 0x20, 0x50 ; file 005C60 | 68k movea.l (a0), a0
db 0x31, 0x7C, 0x00, 0x64, 0x00, 0x4E ; file 005C62 | 68k move.w #$64, $4e(a0)
db 0x70, 0x00 ; file 005C68 | 68k moveq #$0, d0
db 0x4E, 0x5E ; file 005C6A | 68k unlk a6
db 0x4E, 0x75 ; file 005C6C | 68k rts 
