; verified-role: Native isPressed routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: isPressed; evidence file offset 0x9e7e.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_5_is_pressed:
db 0x4E, 0x56, 0xFF, 0xF0 ; file 009E54 | 68k link.w a6, #$fff0
db 0x48, 0x6E, 0xFF, 0xF0 ; file 009E58 | 68k pea.l -$10(a6)
db 0xA9, 0x76 ; file 009E5C | 68k dc.w $a976
db 0x70, 0x07 ; file 009E5E | 68k moveq #$7, d0
db 0xC0, 0x2E, 0x00, 0x09 ; file 009E60 | 68k and.b $9(a6), d0
db 0x32, 0x2E, 0x00, 0x08 ; file 009E64 | 68k move.w $8(a6), d1
db 0xE6, 0x49 ; file 009E68 | 68k lsr.w #$3, d1
db 0x74, 0x00 ; file 009E6A | 68k moveq #$0, d2
db 0x34, 0x01 ; file 009E6C | 68k move.w d1, d2
db 0x72, 0x00 ; file 009E6E | 68k moveq #$0, d1
db 0x12, 0x36, 0x28, 0xF0 ; file 009E70 | 68k move.b -$10(a6, d2.l), d1
db 0xE0, 0x61 ; file 009E74 | 68k asr.w d0, d1
db 0x70, 0x01 ; file 009E76 | 68k moveq #$1, d0
db 0xC0, 0x41 ; file 009E78 | 68k and.w d1, d0
db 0x4E, 0x5E ; file 009E7A | 68k unlk a6
db 0x4E, 0x75 ; file 009E7C | 68k rts 
