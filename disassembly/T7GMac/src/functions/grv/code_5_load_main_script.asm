; verified-role: Native LoadMainScript routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: LoadMainScript; evidence file offset 0xb75e.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_5_load_main_script:
db 0x4E, 0x56, 0xFF, 0xF8 ; file 00B720 | 68k link.w a6, #$fff8
db 0x42, 0x6D, 0xF8, 0x7E ; file 00B724 | 68k clr.w -$782(a5)
db 0x42, 0xA7 ; file 00B728 | 68k clr.l -(a7)
db 0x2F, 0x3C, 0x54, 0x37, 0x47, 0x4D ; file 00B72A | 68k move.l #$5437474d, -(a7)
db 0x48, 0x6D, 0xF8, 0x8A ; file 00B730 | 68k pea.l -$776(a5)
db 0xA9, 0xA1 ; file 00B734 | 68k dc.w $a9a1
db 0x2B, 0x5F, 0xF5, 0xF6 ; file 00B736 | 68k move.l (a7)+, -$a0a(a5)
db 0x4A, 0xAD, 0xF5, 0xF6 ; file 00B73A | 68k tst.l -$a0a(a5)
db 0x66, 0x04 ; file 00B73E | 68k bne.b $3fde
db 0x70, 0x00 ; file 00B740 | 68k moveq #$0, d0
db 0x60, 0x16 ; file 00B742 | 68k bra.b $3ff4
db 0x20, 0x6D, 0xF5, 0xF6 ; file 00B744 | 68k movea.l -$a0a(a5), a0
db 0xA0, 0x29 ; file 00B748 | 68k dc.w $a029
db 0x20, 0x6D, 0xF5, 0xF6 ; file 00B74A | 68k movea.l -$a0a(a5), a0
db 0x20, 0x10 ; file 00B74E | 68k move.l (a0), d0
db 0x2B, 0x40, 0xF7, 0x92 ; file 00B750 | 68k move.l d0, -$86e(a5)
db 0x2B, 0x40, 0xF7, 0x8E ; file 00B754 | 68k move.l d0, -$872(a5)
db 0x70, 0x01 ; file 00B758 | 68k moveq #$1, d0
db 0x4E, 0x5E ; file 00B75A | 68k unlk a6
db 0x4E, 0x75 ; file 00B75C | 68k rts 
