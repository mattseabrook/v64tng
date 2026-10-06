; verified-role: Native LoadGame routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: LoadGame; evidence file offset 0xb5cc.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_5_load_game:
db 0x4E, 0x56, 0xFE, 0xFA ; file 00B580 | 68k link.w a6, #$fefa
db 0x48, 0xE7, 0x01, 0x08 ; file 00B584 | 68k movem.l d7/a4, -(a7)
db 0x7E, 0x00 ; file 00B588 | 68k moveq #$0, d7
db 0x1E, 0x2E, 0x00, 0x08 ; file 00B58A | 68k move.b $8(a6), d7
db 0x06, 0x47, 0x03, 0xE8 ; file 00B58E | 68k addi.w #$3e8, d7
db 0x42, 0xA7 ; file 00B592 | 68k clr.l -(a7)
db 0x2F, 0x3C, 0x54, 0x37, 0x53, 0x47 ; file 00B594 | 68k move.l #$54375347, -(a7)
db 0x3F, 0x07 ; file 00B59A | 68k move.w d7, -(a7)
db 0xA9, 0xA0 ; file 00B59C | 68k dc.w $a9a0
db 0x28, 0x5F ; file 00B59E | 68k movea.l (a7)+, a4
db 0x20, 0x0C ; file 00B5A0 | 68k move.l a4, d0
db 0x66, 0x04 ; file 00B5A2 | 68k bne.b $3e42
db 0x70, 0x00 ; file 00B5A4 | 68k moveq #$0, d0
db 0x60, 0x1C ; file 00B5A6 | 68k bra.b $3e5e
db 0x20, 0x4C ; file 00B5A8 | 68k movea.l a4, a0
db 0xA0, 0x29 ; file 00B5AA | 68k dc.w $a029
db 0x20, 0x3C, 0x00, 0x00, 0x04, 0x00 ; file 00B5AC | 68k move.l #$400, d0
db 0x22, 0x6D, 0xF7, 0xA0 ; file 00B5B2 | 68k movea.l -$860(a5), a1
db 0x20, 0x54 ; file 00B5B6 | 68k movea.l (a4), a0
db 0xA0, 0x2E ; file 00B5B8 | 68k dc.w $a02e
db 0x20, 0x4C ; file 00B5BA | 68k movea.l a4, a0
db 0xA0, 0x2A ; file 00B5BC | 68k dc.w $a02a
db 0x2F, 0x0C ; file 00B5BE | 68k move.l a4, -(a7)
db 0xA9, 0xA3 ; file 00B5C0 | 68k dc.w $a9a3
db 0x70, 0x01 ; file 00B5C2 | 68k moveq #$1, d0
db 0x4C, 0xDF, 0x10, 0x80 ; file 00B5C4 | 68k movem.l (a7)+, d7/a4
db 0x4E, 0x5E ; file 00B5C8 | 68k unlk a6
db 0x4E, 0x75 ; file 00B5CA | 68k rts 
