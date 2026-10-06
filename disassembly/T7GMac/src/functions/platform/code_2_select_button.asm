; verified-role: Native SelectButton routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: SelectButton; evidence file offset 0x71a2.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_2_select_button:
db 0x4E, 0x56, 0xFF, 0xFC ; file 00717C | 68k link.w a6, #$fffc
db 0x2F, 0x2E, 0x00, 0x08 ; file 007180 | 68k move.l $8(a6), -(a7)
db 0x3F, 0x3C, 0x00, 0x01 ; file 007184 | 68k move.w #$1, -(a7)
db 0xA9, 0x5D ; file 007188 | 68k dc.w $a95d
db 0x43, 0xEE, 0xFF, 0xFC ; file 00718A | 68k lea.l -$4(a6), a1
db 0x30, 0x7C, 0x00, 0x08 ; file 00718E | 68k movea.w #$8, a0
db 0xA0, 0x3B ; file 007192 | 68k dc.w $a03b
db 0x22, 0x80 ; file 007194 | 68k move.l d0, (a1)
db 0x2F, 0x2E, 0x00, 0x08 ; file 007196 | 68k move.l $8(a6), -(a7)
db 0x42, 0x67 ; file 00719A | 68k clr.w -(a7)
db 0xA9, 0x5D ; file 00719C | 68k dc.w $a95d
db 0x4E, 0x5E ; file 00719E | 68k unlk a6
db 0x4E, 0x75 ; file 0071A0 | 68k rts 
