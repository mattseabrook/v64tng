; verified-role: Native DoUpdate routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: DoUpdate; evidence file offset 0x7a5a.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_5_do_update:
db 0x4E, 0x56, 0xFF, 0xFC ; file 007A38 | 68k link.w a6, #$fffc
db 0x2F, 0x2E, 0x00, 0x08 ; file 007A3C | 68k move.l $8(a6), -(a7)
db 0x4E, 0xAD, 0x00, 0xBA ; file 007A40 | 68k jsr $ba(a5)
db 0x4A, 0x00 ; file 007A44 | 68k tst.b d0
db 0x58, 0x8F ; file 007A46 | 68k addq.l #$4, a7
db 0x67, 0x0C ; file 007A48 | 68k beq.b $2f0
db 0x2F, 0x2E, 0x00, 0x08 ; file 007A4A | 68k move.l $8(a6), -(a7)
db 0xA9, 0x22 ; file 007A4E | 68k dc.w $a922
db 0x2F, 0x2E, 0x00, 0x08 ; file 007A50 | 68k move.l $8(a6), -(a7)
db 0xA9, 0x23 ; file 007A54 | 68k dc.w $a923
db 0x4E, 0x5E ; file 007A56 | 68k unlk a6
db 0x4E, 0x75 ; file 007A58 | 68k rts 
