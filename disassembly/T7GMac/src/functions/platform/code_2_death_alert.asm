; verified-role: Native DeathAlert routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: DeathAlert; evidence file offset 0x634c.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_2_death_alert:
db 0x4E, 0x56, 0x00, 0x00 ; file 006336 | 68k link.w a6, #$0
db 0x3F, 0x2E, 0x00, 0x0A ; file 00633A | 68k move.w $a(a6), -(a7)
db 0x3F, 0x2E, 0x00, 0x08 ; file 00633E | 68k move.w $8(a6), -(a7)
db 0x4E, 0xBA, 0x00, 0x44 ; file 006342 | 68k jsr $5320(pc)
db 0xA9, 0xF4 ; file 006346 | 68k dc.w $a9f4
db 0x4E, 0x5E ; file 006348 | 68k unlk a6
db 0x4E, 0x75 ; file 00634A | 68k rts 
