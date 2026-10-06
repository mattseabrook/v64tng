; verified-role: Native GetNextWord routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: GetNextWord; evidence file offset 0xb3c6.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_5_get_next_word:
db 0x4E, 0x56, 0x00, 0x00 ; file 00B3A2 | 68k link.w a6, #$0
db 0x48, 0xE7, 0x01, 0x08 ; file 00B3A6 | 68k movem.l d7/a4, -(a7)
db 0x20, 0x6E, 0x00, 0x08 ; file 00B3AA | 68k movea.l $8(a6), a0
db 0x28, 0x50 ; file 00B3AE | 68k movea.l (a0), a4
db 0x3E, 0x1C ; file 00B3B0 | 68k move.w (a4)+, d7
db 0x30, 0x07 ; file 00B3B2 | 68k move.w d7, d0
db 0xE1, 0x48 ; file 00B3B4 | 68k lsl.w #$8, d0
db 0xE0, 0x4F ; file 00B3B6 | 68k lsr.w #$8, d7
db 0x8E, 0x40 ; file 00B3B8 | 68k or.w d0, d7
db 0x20, 0x8C ; file 00B3BA | 68k move.l a4, (a0)
db 0x30, 0x07 ; file 00B3BC | 68k move.w d7, d0
db 0x4C, 0xDF, 0x10, 0x80 ; file 00B3BE | 68k movem.l (a7)+, d7/a4
db 0x4E, 0x5E ; file 00B3C2 | 68k unlk a6
db 0x4E, 0x75 ; file 00B3C4 | 68k rts 
