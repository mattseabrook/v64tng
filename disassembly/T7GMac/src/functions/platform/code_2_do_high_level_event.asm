; recovered-symbol-candidate: Native DoHighLevelEvent routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: DoHighLevelEvent; evidence file offset 0x4d82.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_2_do_high_level_event:
db 0x4E, 0x56, 0x00, 0x00 ; file 004D6E | 68k link.w a6, #$0
db 0x42, 0x67 ; file 004D72 | 68k clr.w -(a7)
db 0x2F, 0x2E, 0x00, 0x08 ; file 004D74 | 68k move.l $8(a6), -(a7)
db 0x30, 0x3C, 0x02, 0x1B ; file 004D78 | 68k move.w #$21b, d0
db 0xA8, 0x16 ; file 004D7C | 68k dc.w $a816
db 0x4E, 0x5E ; file 004D7E | 68k unlk a6
db 0x4E, 0x75 ; file 004D80 | 68k rts 
