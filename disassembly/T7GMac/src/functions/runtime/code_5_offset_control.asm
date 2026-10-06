; verified-role: Native OffsetControl routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: OffsetControl; evidence file offset 0xbedc.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_5_offset_control:
db 0x4E, 0x56, 0xFF, 0xF8 ; file 00BEA8 | 68k link.w a6, #$fff8
db 0x20, 0x6E, 0x00, 0x08 ; file 00BEAC | 68k movea.l $8(a6), a0
db 0x20, 0x50 ; file 00BEB0 | 68k movea.l (a0), a0
db 0x2D, 0x68, 0x00, 0x08, 0xFF, 0xF8 ; file 00BEB2 | 68k move.l $8(a0), -$8(a6)
db 0x2D, 0x68, 0x00, 0x0C, 0xFF, 0xFC ; file 00BEB8 | 68k move.l $c(a0), -$4(a6)
db 0x2F, 0x2E, 0x00, 0x08 ; file 00BEBE | 68k move.l $8(a6), -(a7)
db 0x30, 0x2E, 0xFF, 0xFA ; file 00BEC2 | 68k move.w -$6(a6), d0
db 0xD0, 0x6E, 0x00, 0x0C ; file 00BEC6 | 68k add.w $c(a6), d0
db 0x3F, 0x00 ; file 00BECA | 68k move.w d0, -(a7)
db 0x30, 0x2E, 0xFF, 0xF8 ; file 00BECC | 68k move.w -$8(a6), d0
db 0xD0, 0x6E, 0x00, 0x0E ; file 00BED0 | 68k add.w $e(a6), d0
db 0x3F, 0x00 ; file 00BED4 | 68k move.w d0, -(a7)
db 0xA9, 0x59 ; file 00BED6 | 68k dc.w $a959
db 0x4E, 0x5E ; file 00BED8 | 68k unlk a6
db 0x4E, 0x75 ; file 00BEDA | 68k rts 
