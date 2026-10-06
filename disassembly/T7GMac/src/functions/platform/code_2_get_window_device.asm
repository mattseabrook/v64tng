; verified-role: Native GetWindowDevice routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: GetWindowDevice; evidence file offset 0x6b98.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_2_get_window_device:
db 0x4E, 0x56, 0xFF, 0xF8 ; file 006B78 | 68k link.w a6, #$fff8
db 0x2F, 0x2E, 0x00, 0x08 ; file 006B7C | 68k move.l $8(a6), -(a7)
db 0x48, 0x6E, 0xFF, 0xF8 ; file 006B80 | 68k pea.l -$8(a6)
db 0x4E, 0xBA, 0x00, 0xF0 ; file 006B84 | 68k jsr $5c0e(pc)
db 0x2E, 0xAE, 0xFF, 0xFC ; file 006B88 | 68k move.l -$4(a6), (a7)
db 0x2F, 0x2E, 0xFF, 0xF8 ; file 006B8C | 68k move.l -$8(a6), -(a7)
db 0x4E, 0xBA, 0xFC, 0xEE ; file 006B90 | 68k jsr $5818(pc)
db 0x4E, 0x5E ; file 006B94 | 68k unlk a6
db 0x4E, 0x75 ; file 006B96 | 68k rts 
