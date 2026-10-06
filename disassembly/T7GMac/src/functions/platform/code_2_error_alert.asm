; verified-role: Native ErrorAlert routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: ErrorAlert; evidence file offset 0x639e.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_2_error_alert:
db 0x4E, 0x56, 0x00, 0x00 ; file 006388 | 68k link.w a6, #$0
db 0x42, 0x67 ; file 00638C | 68k clr.w -(a7)
db 0x3F, 0x2E, 0x00, 0x0A ; file 00638E | 68k move.w $a(a6), -(a7)
db 0x3F, 0x2E, 0x00, 0x08 ; file 006392 | 68k move.w $8(a6), -(a7)
db 0x4E, 0xBA, 0x00, 0x14 ; file 006396 | 68k jsr $5344(pc)
db 0x4E, 0x5E ; file 00639A | 68k unlk a6
db 0x4E, 0x75 ; file 00639C | 68k rts 
