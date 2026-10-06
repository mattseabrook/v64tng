; verified-role: Native appendi2pstr routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: appendi2pstr; evidence file offset 0xbc02.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_5_appendi2pstr:
db 0x4E, 0x56, 0x00, 0x00 ; file 00BBB8 | 68k link.w a6, #$0
db 0x48, 0xE7, 0x03, 0x08 ; file 00BBBC | 68k movem.l d6-d7/a4, -(a7)
db 0x28, 0x6E, 0x00, 0x08 ; file 00BBC0 | 68k movea.l $8(a6), a4
db 0x3C, 0x2E, 0x00, 0x0C ; file 00BBC4 | 68k move.w $c(a6), d6
db 0x7E, 0x00 ; file 00BBC8 | 68k moveq #$0, d7
db 0x0C, 0x46, 0x00, 0x0A ; file 00BBCA | 68k cmpi.w #$a, d6
db 0x6D, 0x14 ; file 00BBCE | 68k blt.b $447e
db 0x30, 0x46 ; file 00BBD0 | 68k movea.w d6, a0
db 0x20, 0x08 ; file 00BBD2 | 68k move.l a0, d0
db 0x81, 0xFC, 0x00, 0x0A ; file 00BBD4 | 68k divs.w #$a, d0
db 0x3F, 0x00 ; file 00BBD8 | 68k move.w d0, -(a7)
db 0x2F, 0x0C ; file 00BBDA | 68k move.l a4, -(a7)
db 0x4E, 0xBA, 0xFF, 0xDA ; file 00BBDC | 68k jsr $4452(pc)
db 0x3E, 0x00 ; file 00BBE0 | 68k move.w d0, d7
db 0x5C, 0x8F ; file 00BBE2 | 68k addq.l #$6, a7
db 0x30, 0x06 ; file 00BBE4 | 68k move.w d6, d0
db 0x90, 0x47 ; file 00BBE6 | 68k sub.w d7, d0
db 0x52, 0x14 ; file 00BBE8 | 68k addq.b #$1, (a4)
db 0x12, 0x14 ; file 00BBEA | 68k move.b (a4), d1
db 0x49, 0xC1 ; file 00BBEC | 68k extb.l d1
db 0x19, 0xB5, 0x01, 0x20, 0xF8, 0xBC, 0x18, 0x00 ; file 00BBEE | 68k move.b $f8bc(a5, d0.w), (a4, d1.l)
db 0x70, 0x0A ; file 00BBF6 | 68k moveq #$a, d0
db 0xC1, 0xC6 ; file 00BBF8 | 68k muls.w d6, d0
db 0x4C, 0xDF, 0x10, 0xC0 ; file 00BBFA | 68k movem.l (a7)+, d6-d7/a4
db 0x4E, 0x5E ; file 00BBFE | 68k unlk a6
db 0x4E, 0x75 ; file 00BC00 | 68k rts 
