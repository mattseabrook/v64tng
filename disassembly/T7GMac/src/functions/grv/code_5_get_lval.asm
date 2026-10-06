; verified-role: Native GetLVal routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: GetLVal; evidence file offset 0xb232.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_5_get_lval:
db 0x4E, 0x56, 0xFF, 0xFC ; file 00B1EC | 68k link.w a6, #$fffc
db 0x2F, 0x07 ; file 00B1F0 | 68k move.l d7, -(a7)
db 0x20, 0x6E, 0x00, 0x08 ; file 00B1F2 | 68k movea.l $8(a6), a0
db 0x2D, 0x50, 0xFF, 0xFC ; file 00B1F6 | 68k move.l (a0), -$4(a6)
db 0x4A, 0x2E, 0x00, 0x0D ; file 00B1FA | 68k tst.b $d(a6)
db 0x6A, 0x0E ; file 00B1FE | 68k bpl.b $3aa8
db 0x20, 0x6E, 0xFF, 0xFC ; file 00B200 | 68k movea.l -$4(a6), a0
db 0x52, 0xAE, 0xFF, 0xFC ; file 00B204 | 68k addq.l #$1, -$4(a6)
db 0x7E, 0x00 ; file 00B208 | 68k moveq #$0, d7
db 0x1E, 0x10 ; file 00B20A | 68k move.b (a0), d7
db 0x60, 0x0C ; file 00B20C | 68k bra.b $3ab4
db 0x48, 0x6E, 0xFF, 0xFC ; file 00B20E | 68k pea.l -$4(a6)
db 0x4E, 0xBA, 0x01, 0x8E ; file 00B212 | 68k jsr $3c3c(pc)
db 0x3E, 0x00 ; file 00B216 | 68k move.w d0, d7
db 0x58, 0x8F ; file 00B218 | 68k addq.l #$4, a7
db 0x20, 0x6E, 0x00, 0x08 ; file 00B21A | 68k movea.l $8(a6), a0
db 0x20, 0xAE, 0xFF, 0xFC ; file 00B21E | 68k move.l -$4(a6), (a0)
db 0x70, 0x00 ; file 00B222 | 68k moveq #$0, d0
db 0x30, 0x07 ; file 00B224 | 68k move.w d7, d0
db 0x10, 0x35, 0x09, 0x25, 0xF7, 0xA0 ; file 00B226 | 68k move.b ([$f7a0, a5], d0.l), d0
db 0x2E, 0x1F ; file 00B22C | 68k move.l (a7)+, d7
db 0x4E, 0x5E ; file 00B22E | 68k unlk a6
db 0x4E, 0x75 ; file 00B230 | 68k rts 
