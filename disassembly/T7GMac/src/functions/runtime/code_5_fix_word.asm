; verified-role: Native FixWord routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: FixWord; evidence file offset 0xbb5a.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_5_fix_word:
db 0x4E, 0x56, 0x00, 0x00 ; file 00BB40 | 68k link.w a6, #$0
db 0x30, 0x2E, 0x00, 0x08 ; file 00BB44 | 68k move.w $8(a6), d0
db 0x02, 0x40, 0x00, 0xFF ; file 00BB48 | 68k andi.w #$ff, d0
db 0xE1, 0x48 ; file 00BB4C | 68k lsl.w #$8, d0
db 0x32, 0x2E, 0x00, 0x08 ; file 00BB4E | 68k move.w $8(a6), d1
db 0xE0, 0x49 ; file 00BB52 | 68k lsr.w #$8, d1
db 0x80, 0x41 ; file 00BB54 | 68k or.w d1, d0
db 0x4E, 0x5E ; file 00BB56 | 68k unlk a6
db 0x4E, 0x75 ; file 00BB58 | 68k rts 
