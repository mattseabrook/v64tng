; verified-role: Native GetHexByte routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: GetHexByte; evidence file offset 0xbd4e.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_5_get_hex_byte:
db 0x4E, 0x56, 0x00, 0x00 ; file 00BCFA | 68k link.w a6, #$0
db 0x48, 0xE7, 0x07, 0x00 ; file 00BCFE | 68k movem.l d5-d7, -(a7)
db 0x7E, 0x00 ; file 00BD02 | 68k moveq #$0, d7
db 0x7C, 0x00 ; file 00BD04 | 68k moveq #$0, d6
db 0x60, 0x36 ; file 00BD06 | 68k bra.b $45d8
db 0x1A, 0x36, 0x61, 0x25, 0x00, 0x08 ; file 00BD08 | 68k move.b ([$8, a6], d6.w), d5
db 0x49, 0xC5 ; file 00BD0E | 68k extb.l d5
db 0x0C, 0x45, 0x00, 0x3D ; file 00BD10 | 68k cmpi.w #$3d, d5
db 0x66, 0x0C ; file 00BD14 | 68k bne.b $45bc
db 0x52, 0x46 ; file 00BD16 | 68k addq.w #$1, d6
db 0x10, 0x36, 0x61, 0x25, 0x00, 0x08 ; file 00BD18 | 68k move.b ([$8, a6], d6.w), d0
db 0x49, 0xC0 ; file 00BD1E | 68k extb.l d0
db 0x60, 0x24 ; file 00BD20 | 68k bra.b $45e0
db 0x0C, 0x45, 0x00, 0x46 ; file 00BD22 | 68k cmpi.w #$46, d5
db 0x6F, 0x04 ; file 00BD26 | 68k ble.b $45c6
db 0x06, 0x45, 0xFF, 0xE0 ; file 00BD28 | 68k addi.w #$ffe0, d5
db 0x0C, 0x45, 0x00, 0x39 ; file 00BD2C | 68k cmpi.w #$39, d5
db 0x6F, 0x02 ; file 00BD30 | 68k ble.b $45ce
db 0x5F, 0x45 ; file 00BD32 | 68k subq.w #$7, d5
db 0xE9, 0x4F ; file 00BD34 | 68k lsl.w #$4, d7
db 0xDE, 0x45 ; file 00BD36 | 68k add.w d5, d7
db 0x06, 0x47, 0xFF, 0xD0 ; file 00BD38 | 68k addi.w #$ffd0, d7
db 0x52, 0x46 ; file 00BD3C | 68k addq.w #$1, d6
db 0x0C, 0x46, 0x00, 0x02 ; file 00BD3E | 68k cmpi.w #$2, d6
db 0x6D, 0xC4 ; file 00BD42 | 68k blt.b $45a2
db 0x30, 0x07 ; file 00BD44 | 68k move.w d7, d0
db 0x4C, 0xDF, 0x00, 0xE0 ; file 00BD46 | 68k movem.l (a7)+, d5-d7
db 0x4E, 0x5E ; file 00BD4A | 68k unlk a6
db 0x4E, 0x75 ; file 00BD4C | 68k rts 
