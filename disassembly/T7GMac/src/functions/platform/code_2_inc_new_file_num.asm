; verified-role: Native IncNewFileNum routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: IncNewFileNum; evidence file offset 0x5c2e.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_2_inc_new_file_num:
db 0x4E, 0x56, 0x00, 0x00 ; file 005C20 | 68k link.w a6, #$0
db 0x1B, 0x6E, 0x00, 0x08, 0xDC, 0xB0 ; file 005C24 | 68k move.b $8(a6), -$2350(a5)
db 0x4E, 0x5E ; file 005C2A | 68k unlk a6
db 0x4E, 0x75 ; file 005C2C | 68k rts 
