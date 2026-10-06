; verified-role: Native SendMessage routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: SendMessage; evidence file offset 0x53cc.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_2_send_message:
db 0x4E, 0x56, 0x00, 0x00 ; file 0053C2 | 68k link.w a6, #$0
db 0x70, 0x00 ; file 0053C6 | 68k moveq #$0, d0
db 0x4E, 0x5E ; file 0053C8 | 68k unlk a6
db 0x4E, 0x75 ; file 0053CA | 68k rts 
