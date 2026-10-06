; verified-role: Native GetGlobalTopLeft routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: GetGlobalTopLeft; evidence file offset 0x67c2.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_2_get_global_top_left:
db 0x4E, 0x56, 0xFF, 0xF8 ; file 006790 | 68k link.w a6, #$fff8
db 0x48, 0x6E, 0xFF, 0xFC ; file 006794 | 68k pea.l -$4(a6)
db 0xA8, 0x74 ; file 006798 | 68k dc.w $a874
db 0x2F, 0x2E, 0x00, 0x0C ; file 00679A | 68k move.l $c(a6), -(a7)
db 0xA8, 0x73 ; file 00679E | 68k dc.w $a873
db 0x20, 0x6E, 0x00, 0x0C ; file 0067A0 | 68k movea.l $c(a6), a0
db 0x2D, 0x68, 0x00, 0x10, 0xFF, 0xF8 ; file 0067A4 | 68k move.l $10(a0), -$8(a6)
db 0x48, 0x6E, 0xFF, 0xF8 ; file 0067AA | 68k pea.l -$8(a6)
db 0xA8, 0x70 ; file 0067AE | 68k dc.w $a870
db 0x2F, 0x2E, 0xFF, 0xFC ; file 0067B0 | 68k move.l -$4(a6), -(a7)
db 0xA8, 0x73 ; file 0067B4 | 68k dc.w $a873
db 0x20, 0x6E, 0x00, 0x08 ; file 0067B6 | 68k movea.l $8(a6), a0
db 0x20, 0xAE, 0xFF, 0xF8 ; file 0067BA | 68k move.l -$8(a6), (a0)
db 0x4E, 0x5E ; file 0067BE | 68k unlk a6
db 0x4E, 0x75 ; file 0067C0 | 68k rts 
