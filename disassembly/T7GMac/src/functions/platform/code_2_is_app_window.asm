; verified-role: Native IsAppWindow routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: IsAppWindow; evidence file offset 0x6e8e.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_2_is_app_window:
db 0x4E, 0x56, 0x00, 0x00 ; file 006E6E | 68k link.w a6, #$0
db 0x4A, 0xAE, 0x00, 0x08 ; file 006E72 | 68k tst.l $8(a6)
db 0x67, 0x10 ; file 006E76 | 68k beq.b $5e20
db 0x20, 0x6E, 0x00, 0x08 ; file 006E78 | 68k movea.l $8(a6), a0
db 0x0C, 0x68, 0x00, 0x08, 0x00, 0x6C ; file 006E7C | 68k cmpi.w #$8, $6c(a0)
db 0x5C, 0xC0 ; file 006E82 | 68k sge.b d0
db 0x44, 0x00 ; file 006E84 | 68k neg.b d0
db 0x60, 0x02 ; file 006E86 | 68k bra.b $5e22
db 0x70, 0x00 ; file 006E88 | 68k moveq #$0, d0
db 0x4E, 0x5E ; file 006E8A | 68k unlk a6
db 0x4E, 0x75 ; file 006E8C | 68k rts 
