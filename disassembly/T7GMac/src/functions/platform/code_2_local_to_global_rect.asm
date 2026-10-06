; verified-role: Native LocalToGlobalRect routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: LocalToGlobalRect; evidence file offset 0x6ee0.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_2_local_to_global_rect:
db 0x4E, 0x56, 0x00, 0x00 ; file 006EC8 | 68k link.w a6, #$0
db 0x2F, 0x2E, 0x00, 0x08 ; file 006ECC | 68k move.l $8(a6), -(a7)
db 0xA8, 0x70 ; file 006ED0 | 68k dc.w $a870
db 0x20, 0x6E, 0x00, 0x08 ; file 006ED2 | 68k movea.l $8(a6), a0
db 0x48, 0x68, 0x00, 0x04 ; file 006ED6 | 68k pea.l $4(a0)
db 0xA8, 0x70 ; file 006EDA | 68k dc.w $a870
db 0x4E, 0x5E ; file 006EDC | 68k unlk a6
db 0x4E, 0x75 ; file 006EDE | 68k rts 
