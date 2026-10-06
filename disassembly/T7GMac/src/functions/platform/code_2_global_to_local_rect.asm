; verified-role: Native GlobalToLocalRect routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: GlobalToLocalRect; evidence file offset 0x6d4c.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_2_global_to_local_rect:
db 0x4E, 0x56, 0x00, 0x00 ; file 006D34 | 68k link.w a6, #$0
db 0x2F, 0x2E, 0x00, 0x08 ; file 006D38 | 68k move.l $8(a6), -(a7)
db 0xA8, 0x71 ; file 006D3C | 68k dc.w $a871
db 0x20, 0x6E, 0x00, 0x08 ; file 006D3E | 68k movea.l $8(a6), a0
db 0x48, 0x68, 0x00, 0x04 ; file 006D42 | 68k pea.l $4(a0)
db 0xA8, 0x71 ; file 006D46 | 68k dc.w $a871
db 0x4E, 0x5E ; file 006D48 | 68k unlk a6
db 0x4E, 0x75 ; file 006D4A | 68k rts 
