; verified-role: Native PullApplicationToFront routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: PullApplicationToFront; evidence file offset 0x7162.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_2_pull_application_to_front:
db 0x4E, 0x56, 0xFF, 0xF0 ; file 00713C | 68k link.w a6, #$fff0
db 0x2F, 0x07 ; file 007140 | 68k move.l d7, -(a7)
db 0x7E, 0x01 ; file 007142 | 68k moveq #$1, d7
db 0x60, 0x10 ; file 007144 | 68k bra.b $60ee
db 0x42, 0x27 ; file 007146 | 68k clr.b -(a7)
db 0x3F, 0x3C, 0xFF, 0xFF ; file 007148 | 68k move.w #$ffff, -(a7)
db 0x48, 0x6E, 0xFF, 0xF0 ; file 00714C | 68k pea.l -$10(a6)
db 0xA9, 0x71 ; file 007150 | 68k dc.w $a971
db 0x54, 0x8F ; file 007152 | 68k addq.l #$2, a7
db 0x52, 0x47 ; file 007154 | 68k addq.w #$1, d7
db 0x0C, 0x47, 0x00, 0x03 ; file 007156 | 68k cmpi.w #$3, d7
db 0x6F, 0xEA ; file 00715A | 68k ble.b $60de
db 0x2E, 0x1F ; file 00715C | 68k move.l (a7)+, d7
db 0x4E, 0x5E ; file 00715E | 68k unlk a6
db 0x4E, 0x75 ; file 007160 | 68k rts 
