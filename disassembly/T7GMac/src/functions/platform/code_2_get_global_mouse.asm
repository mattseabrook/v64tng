; verified-role: Native GetGlobalMouse routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: GetGlobalMouse; evidence file offset 0x677e.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_2_get_global_mouse:
db 0x4E, 0x56, 0xFF, 0xF0 ; file 006764 | 68k link.w a6, #$fff0
db 0x41, 0xEE, 0xFF, 0xF0 ; file 006768 | 68k lea.l -$10(a6), a0
db 0x70, 0x00 ; file 00676C | 68k moveq #$0, d0
db 0xA0, 0x30 ; file 00676E | 68k dc.w $a030
db 0x52, 0x40 ; file 006770 | 68k addq.w #$1, d0
db 0x20, 0x6E, 0x00, 0x08 ; file 006772 | 68k movea.l $8(a6), a0
db 0x20, 0xAE, 0xFF, 0xFA ; file 006776 | 68k move.l -$6(a6), (a0)
db 0x4E, 0x5E ; file 00677A | 68k unlk a6
db 0x4E, 0x75 ; file 00677C | 68k rts 
