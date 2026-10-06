; verified-role: Native DeathAlertMessage routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: DeathAlertMessage; evidence file offset 0x6374.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_2_death_alert_message:
db 0x4E, 0x56, 0x00, 0x00 ; file 00635A | 68k link.w a6, #$0
db 0x3F, 0x2E, 0x00, 0x0C ; file 00635E | 68k move.w $c(a6), -(a7)
db 0x3F, 0x2E, 0x00, 0x0A ; file 006362 | 68k move.w $a(a6), -(a7)
db 0x3F, 0x2E, 0x00, 0x08 ; file 006366 | 68k move.w $8(a6), -(a7)
db 0x4E, 0xBA, 0x00, 0x40 ; file 00636A | 68k jsr $5344(pc)
db 0xA9, 0xF4 ; file 00636E | 68k dc.w $a9f4
db 0x4E, 0x5E ; file 006370 | 68k unlk a6
db 0x4E, 0x75 ; file 006372 | 68k rts 
