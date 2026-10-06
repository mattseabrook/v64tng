; recovered-symbol-candidate: Native RandomNumber routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: RandomNumber; evidence file offset 0xb8f2.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_5_random_number:
db 0x4E, 0x56, 0xFF, 0xFC ; file 00B81C | 68k link.w a6, #$fffc
db 0x48, 0xE7, 0x1F, 0x00 ; file 00B820 | 68k movem.l d3-d7, -(a7)
db 0x4A, 0x6D, 0xF5, 0xF0 ; file 00B824 | 68k tst.w -$a10(a5)
db 0x66, 0x34 ; file 00B828 | 68k bne.b $40f8
db 0x4A, 0x6D, 0xF5, 0xF2 ; file 00B82A | 68k tst.w -$a0e(a5)
db 0x66, 0x2E ; file 00B82E | 68k bne.b $40f8
db 0x4A, 0x6D, 0xF5, 0xF4 ; file 00B830 | 68k tst.w -$a0c(a5)
db 0x66, 0x28 ; file 00B834 | 68k bne.b $40f8
db 0x42, 0xA7 ; file 00B836 | 68k clr.l -(a7)
db 0xA9, 0x75 ; file 00B838 | 68k dc.w $a975
db 0x70, 0x0C ; file 00B83A | 68k moveq #$c, d0
db 0x22, 0x1F ; file 00B83C | 68k move.l (a7)+, d1
db 0x4C, 0x40, 0x10, 0x00 ; file 00B83E | 68k divu.l d0, d1
db 0x3B, 0x40, 0xF5, 0xF0 ; file 00B842 | 68k move.w d0, -$a10(a5)
db 0x42, 0xA7 ; file 00B846 | 68k clr.l -(a7)
db 0xA9, 0x75 ; file 00B848 | 68k dc.w $a975
db 0x20, 0x1F ; file 00B84A | 68k move.l (a7)+, d0
db 0x4C, 0x7C, 0x00, 0x01, 0x00, 0x00, 0x00, 0xF3 ; file 00B84C | 68k divu.l #$f3, d0
db 0x3B, 0x41, 0xF5, 0xF2 ; file 00B854 | 68k move.w d1, -$a0e(a5)
db 0x3B, 0x7C, 0x00, 0x22, 0xF5, 0xF4 ; file 00B858 | 68k move.w #$22, -$a0c(a5)
db 0x3E, 0x2D, 0xF5, 0xF0 ; file 00B85E | 68k move.w -$a10(a5), d7
db 0x3C, 0x2D, 0xF5, 0xF2 ; file 00B862 | 68k move.w -$a0e(a5), d6
db 0x3D, 0x6D, 0xF5, 0xF4, 0xFF, 0xFC ; file 00B866 | 68k move.w -$a0c(a5), -$4(a6)
db 0x78, 0x00 ; file 00B86C | 68k moveq #$0, d4
db 0x42, 0x6E, 0xFF, 0xFE ; file 00B86E | 68k clr.w -$2(a6)
db 0x60, 0x5C ; file 00B872 | 68k bra.b $416a
db 0x36, 0x07 ; file 00B874 | 68k move.w d7, d3
db 0x7A, 0x01 ; file 00B876 | 68k moveq #$1, d5
db 0xCA, 0x43 ; file 00B878 | 68k and.w d3, d5
db 0xE2, 0x43 ; file 00B87A | 68k asr.w #$1, d3
db 0xD6, 0x44 ; file 00B87C | 68k add.w d4, d3
db 0x78, 0x01 ; file 00B87E | 68k moveq #$1, d4
db 0xC8, 0x43 ; file 00B880 | 68k and.w d3, d4
db 0x30, 0x05 ; file 00B882 | 68k move.w d5, d0
db 0xEF, 0x48 ; file 00B884 | 68k lsl.w #$7, d0
db 0xE2, 0x43 ; file 00B886 | 68k asr.w #$1, d3
db 0xD6, 0x40 ; file 00B888 | 68k add.w d0, d3
db 0x7A, 0x01 ; file 00B88A | 68k moveq #$1, d5
db 0xCA, 0x43 ; file 00B88C | 68k and.w d3, d5
db 0x30, 0x04 ; file 00B88E | 68k move.w d4, d0
db 0xEF, 0x48 ; file 00B890 | 68k lsl.w #$7, d0
db 0xE2, 0x43 ; file 00B892 | 68k asr.w #$1, d3
db 0xD6, 0x40 ; file 00B894 | 68k add.w d0, d3
db 0xBD, 0x43 ; file 00B896 | 68k eor.w d6, d3
db 0x78, 0x01 ; file 00B898 | 68k moveq #$1, d4
db 0xC8, 0x43 ; file 00B89A | 68k and.w d3, d4
db 0x3A, 0x2E, 0xFF, 0xFC ; file 00B89C | 68k move.w -$4(a6), d5
db 0x02, 0x45, 0x00, 0x80 ; file 00B8A0 | 68k andi.w #$80, d5
db 0x30, 0x2E, 0xFF, 0xFC ; file 00B8A4 | 68k move.w -$4(a6), d0
db 0xD0, 0x40 ; file 00B8A8 | 68k add.w d0, d0
db 0xD0, 0x44 ; file 00B8AA | 68k add.w d4, d0
db 0x3D, 0x40, 0xFF, 0xFC ; file 00B8AC | 68k move.w d0, -$4(a6)
db 0x38, 0x06 ; file 00B8B0 | 68k move.w d6, d4
db 0x02, 0x44, 0x00, 0x80 ; file 00B8B2 | 68k andi.w #$80, d4
db 0x32, 0x05 ; file 00B8B6 | 68k move.w d5, d1
db 0xEE, 0x41 ; file 00B8B8 | 68k asr.w #$7, d1
db 0xDC, 0x46 ; file 00B8BA | 68k add.w d6, d6
db 0xDC, 0x41 ; file 00B8BC | 68k add.w d1, d6
db 0x7A, 0x01 ; file 00B8BE | 68k moveq #$1, d5
db 0xCA, 0x47 ; file 00B8C0 | 68k and.w d7, d5
db 0x32, 0x04 ; file 00B8C2 | 68k move.w d4, d1
db 0xEE, 0x41 ; file 00B8C4 | 68k asr.w #$7, d1
db 0xDE, 0x47 ; file 00B8C6 | 68k add.w d7, d7
db 0xDE, 0x41 ; file 00B8C8 | 68k add.w d1, d7
db 0x38, 0x05 ; file 00B8CA | 68k move.w d5, d4
db 0x52, 0x6E, 0xFF, 0xFE ; file 00B8CC | 68k addq.w #$1, -$2(a6)
db 0x0C, 0x6E, 0x00, 0x10, 0xFF, 0xFE ; file 00B8D0 | 68k cmpi.w #$10, -$2(a6)
db 0x6D, 0x9C ; file 00B8D6 | 68k blt.b $410e
db 0x3B, 0x47, 0xF5, 0xF0 ; file 00B8D8 | 68k move.w d7, -$a10(a5)
db 0x3B, 0x46, 0xF5, 0xF2 ; file 00B8DC | 68k move.w d6, -$a0e(a5)
db 0x3B, 0x6E, 0xFF, 0xFC, 0xF5, 0xF4 ; file 00B8E0 | 68k move.w -$4(a6), -$a0c(a5)
db 0x30, 0x2D, 0xF5, 0xF4 ; file 00B8E6 | 68k move.w -$a0c(a5), d0
db 0x4C, 0xDF, 0x00, 0xF8 ; file 00B8EA | 68k movem.l (a7)+, d3-d7
db 0x4E, 0x5E ; file 00B8EE | 68k unlk a6
db 0x4E, 0x75 ; file 00B8F0 | 68k rts 
