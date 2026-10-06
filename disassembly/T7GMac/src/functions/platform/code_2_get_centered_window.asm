; verified-role: Native GetCenteredWindow routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: GetCenteredWindow; evidence file offset 0x66dc.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_2_get_centered_window:
db 0x4E, 0x56, 0x00, 0x00 ; file 0066B8 | 68k link.w a6, #$0
db 0x1F, 0x2E, 0x00, 0x16 ; file 0066BC | 68k move.b $16(a6), -(a7)
db 0x2F, 0x2E, 0x00, 0x12 ; file 0066C0 | 68k move.l $12(a6), -(a7)
db 0x2F, 0x2E, 0x00, 0x0E ; file 0066C4 | 68k move.l $e(a6), -(a7)
db 0x2F, 0x2E, 0x00, 0x0A ; file 0066C8 | 68k move.l $a(a6), -(a7)
db 0x3F, 0x2E, 0x00, 0x08 ; file 0066CC | 68k move.w $8(a6), -(a7)
db 0x48, 0x6D, 0x00, 0xAA ; file 0066D0 | 68k pea.l $aa(a5)
db 0x4E, 0xBA, 0x02, 0x8E ; file 0066D4 | 68k jsr $58fc(pc)
db 0x4E, 0x5E ; file 0066D8 | 68k unlk a6
db 0x4E, 0x75 ; file 0066DA | 68k rts 
