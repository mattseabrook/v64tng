; verified-role: Native SendConnect routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: SendConnect; evidence file offset 0x5370.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_2_send_connect:
db 0x4E, 0x56, 0x00, 0x00 ; file 005366 | 68k link.w a6, #$0
db 0x70, 0x00 ; file 00536A | 68k moveq #$0, d0
db 0x4E, 0x5E ; file 00536C | 68k unlk a6
db 0x4E, 0x75 ; file 00536E | 68k rts 
