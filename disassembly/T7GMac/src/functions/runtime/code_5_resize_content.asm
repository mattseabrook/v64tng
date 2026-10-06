; recovered-symbol-candidate: Native ResizeContent routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: ResizeContent; evidence file offset 0x7b06.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_5_resize_content:
db 0x4E, 0x56, 0xFF, 0xF6 ; file 007AE0 | 68k link.w a6, #$fff6
db 0x48, 0xE7, 0x00, 0x18 ; file 007AE4 | 68k movem.l a3-a4, -(a7)
db 0x42, 0xA7 ; file 007AE8 | 68k clr.l -(a7)
db 0x2F, 0x2E, 0x00, 0x08 ; file 007AEA | 68k move.l $8(a6), -(a7)
db 0xA9, 0x17 ; file 007AEE | 68k dc.w $a917
db 0x28, 0x5F ; file 007AF0 | 68k movea.l (a7)+, a4
db 0x2F, 0x0C ; file 007AF2 | 68k move.l a4, -(a7)
db 0x4E, 0xAD, 0x00, 0xDA ; file 007AF4 | 68k jsr $da(a5)
db 0x26, 0x40 ; file 007AF8 | 68k movea.l d0, a3
db 0x2E, 0x8B ; file 007AFA | 68k move.l a3, (a7)
db 0xA8, 0x73 ; file 007AFC | 68k dc.w $a873
db 0x4C, 0xDF, 0x18, 0x00 ; file 007AFE | 68k movem.l (a7)+, a3-a4
db 0x4E, 0x5E ; file 007B02 | 68k unlk a6
db 0x4E, 0x75 ; file 007B04 | 68k rts 
