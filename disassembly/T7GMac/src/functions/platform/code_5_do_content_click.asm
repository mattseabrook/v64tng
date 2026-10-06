; verified-role: Native DoContentClick routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: DoContentClick; evidence file offset 0x7a98.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_5_do_content_click:
db 0x4E, 0x56, 0xFF, 0xF8 ; file 007A66 | 68k link.w a6, #$fff8
db 0x2F, 0x2E, 0x00, 0x08 ; file 007A6A | 68k move.l $8(a6), -(a7)
db 0x4E, 0xAD, 0x00, 0xBA ; file 007A6E | 68k jsr $ba(a5)
db 0x4A, 0x00 ; file 007A72 | 68k tst.b d0
db 0x58, 0x8F ; file 007A74 | 68k addq.l #$4, a7
db 0x67, 0x1C ; file 007A76 | 68k beq.b $32e
db 0x2F, 0x2E, 0x00, 0x08 ; file 007A78 | 68k move.l $8(a6), -(a7)
db 0xA8, 0x73 ; file 007A7C | 68k dc.w $a873
db 0x20, 0x6E, 0x00, 0x0C ; file 007A7E | 68k movea.l $c(a6), a0
db 0x2D, 0x68, 0x00, 0x0A, 0xFF, 0xFC ; file 007A82 | 68k move.l $a(a0), -$4(a6)
db 0x48, 0x6E, 0xFF, 0xFC ; file 007A88 | 68k pea.l -$4(a6)
db 0xA8, 0x71 ; file 007A8C | 68k dc.w $a871
db 0x3B, 0x7C, 0x00, 0x01, 0xF5, 0xA2 ; file 007A8E | 68k move.w #$1, -$a5e(a5)
db 0x4E, 0x5E ; file 007A94 | 68k unlk a6
db 0x4E, 0x75 ; file 007A96 | 68k rts 
