; verified-role: Native FixLong routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: FixLong; evidence file offset 0xbb7e.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_5_fix_long:
db 0x4E, 0x56, 0x00, 0x00 ; file 00BB64 | 68k link.w a6, #$0
db 0x20, 0x2E, 0x00, 0x08 ; file 00BB68 | 68k move.l $8(a6), d0
db 0xE1, 0x58 ; file 00BB6C | 68k rol.w #$8, d0
db 0x48, 0x40 ; file 00BB6E | 68k swap d0
db 0xE1, 0x58 ; file 00BB70 | 68k rol.w #$8, d0
db 0x2D, 0x40, 0x00, 0x08 ; file 00BB72 | 68k move.l d0, $8(a6)
db 0x20, 0x2E, 0x00, 0x08 ; file 00BB76 | 68k move.l $8(a6), d0
db 0x4E, 0x5E ; file 00BB7A | 68k unlk a6
db 0x4E, 0x75 ; file 00BB7C | 68k rts 
