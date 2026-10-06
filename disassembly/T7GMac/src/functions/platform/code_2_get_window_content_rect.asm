; verified-role: Native GetWindowContentRect routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: GetWindowContentRect; evidence file offset 0x6b12.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_2_get_window_content_rect:
db 0x4E, 0x56, 0xFF, 0xF4 ; file 006AD2 | 68k link.w a6, #$fff4
db 0x48, 0x6E, 0xFF, 0xFC ; file 006AD6 | 68k pea.l -$4(a6)
db 0xA8, 0x74 ; file 006ADA | 68k dc.w $a874
db 0x2F, 0x2E, 0x00, 0x0C ; file 006ADC | 68k move.l $c(a6), -(a7)
db 0xA8, 0x73 ; file 006AE0 | 68k dc.w $a873
db 0x20, 0x6E, 0x00, 0x0C ; file 006AE2 | 68k movea.l $c(a6), a0
db 0x2D, 0x68, 0x00, 0x10, 0xFF, 0xF4 ; file 006AE6 | 68k move.l $10(a0), -$c(a6)
db 0x2D, 0x68, 0x00, 0x14, 0xFF, 0xF8 ; file 006AEC | 68k move.l $14(a0), -$8(a6)
db 0x48, 0x6E, 0xFF, 0xF4 ; file 006AF2 | 68k pea.l -$c(a6)
db 0x4E, 0xBA, 0x03, 0xD0 ; file 006AF6 | 68k jsr $5e60(pc)
db 0x2E, 0xAE, 0xFF, 0xFC ; file 006AFA | 68k move.l -$4(a6), (a7)
db 0xA8, 0x73 ; file 006AFE | 68k dc.w $a873
db 0x20, 0x6E, 0x00, 0x08 ; file 006B00 | 68k movea.l $8(a6), a0
db 0x20, 0xAE, 0xFF, 0xF4 ; file 006B04 | 68k move.l -$c(a6), (a0)
db 0x21, 0x6E, 0xFF, 0xF8, 0x00, 0x04 ; file 006B08 | 68k move.l -$8(a6), $4(a0)
db 0x4E, 0x5E ; file 006B0E | 68k unlk a6
db 0x4E, 0x75 ; file 006B10 | 68k rts 
