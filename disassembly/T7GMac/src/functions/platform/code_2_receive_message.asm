; verified-role: Native ReceiveMessage routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: ReceiveMessage; evidence file offset 0x53e8.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_2_receive_message:
db 0x4E, 0x56, 0xFF, 0xFE ; file 0053DA | 68k link.w a6, #$fffe
db 0x42, 0x6E, 0x00, 0x14 ; file 0053DE | 68k clr.w $14(a6)
db 0x4E, 0x5E ; file 0053E2 | 68k unlk a6
db 0x4E, 0x74, 0x00, 0x0C ; file 0053E4 | 68k rtd #$c
