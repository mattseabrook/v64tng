; verified-role: Native NumToolboxTraps routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: NumToolboxTraps; evidence file offset 0x6f5e.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_2_num_toolbox_traps:
db 0x4E, 0x56, 0xFF, 0xFC ; file 006F28 | 68k link.w a6, #$fffc
db 0x42, 0xA7 ; file 006F2C | 68k clr.l -(a7)
db 0x2F, 0x3C, 0x01, 0x00, 0xA8, 0x6E ; file 006F2E | 68k move.l #$100a86e, -(a7)
db 0x4E, 0xAD, 0x02, 0x42 ; file 006F34 | 68k jsr $242(a5)
db 0x2D, 0x5F, 0xFF, 0xFC ; file 006F38 | 68k move.l (a7)+, -$4(a6)
db 0x42, 0xA7 ; file 006F3C | 68k clr.l -(a7)
db 0x2F, 0x3C, 0x01, 0x00, 0xAA, 0x6E ; file 006F3E | 68k move.l #$100aa6e, -(a7)
db 0x4E, 0xAD, 0x02, 0x42 ; file 006F44 | 68k jsr $242(a5)
db 0x20, 0x2E, 0xFF, 0xFC ; file 006F48 | 68k move.l -$4(a6), d0
db 0xB0, 0x9F ; file 006F4C | 68k cmp.l (a7)+, d0
db 0x66, 0x06 ; file 006F4E | 68k bne.b $5eee
db 0x30, 0x3C, 0x02, 0x00 ; file 006F50 | 68k move.w #$200, d0
db 0x60, 0x04 ; file 006F54 | 68k bra.b $5ef2
db 0x30, 0x3C, 0x04, 0x00 ; file 006F56 | 68k move.w #$400, d0
db 0x4E, 0x5E ; file 006F5A | 68k unlk a6
db 0x4E, 0x75 ; file 006F5C | 68k rts 
