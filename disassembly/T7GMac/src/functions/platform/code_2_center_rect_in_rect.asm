; verified-role: Native CenterRectInRect routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: CenterRectInRect; evidence file offset 0x61a0.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_2_center_rect_in_rect:
db 0x4E, 0x56, 0x00, 0x00 ; file 006174 | 68k link.w a6, #$0
db 0x42, 0xA7 ; file 006178 | 68k clr.l -(a7)
db 0x2F, 0x3C, 0x00, 0x02, 0x00, 0x01 ; file 00617A | 68k move.l #$20001, -(a7)
db 0xA8, 0x69 ; file 006180 | 68k dc.w $a869
db 0x42, 0xA7 ; file 006182 | 68k clr.l -(a7)
db 0x2F, 0x3C, 0x00, 0x02, 0x00, 0x01 ; file 006184 | 68k move.l #$20001, -(a7)
db 0xA8, 0x69 ; file 00618A | 68k dc.w $a869
db 0x2F, 0x2E, 0x00, 0x10 ; file 00618C | 68k move.l $10(a6), -(a7)
db 0x2F, 0x2E, 0x00, 0x0C ; file 006190 | 68k move.l $c(a6), -(a7)
db 0x2F, 0x2E, 0x00, 0x08 ; file 006194 | 68k move.l $8(a6), -(a7)
db 0x4E, 0xBA, 0x0E, 0xA6 ; file 006198 | 68k jsr $5fd8(pc)
db 0x4E, 0x5E ; file 00619C | 68k unlk a6
db 0x4E, 0x75 ; file 00619E | 68k rts 
