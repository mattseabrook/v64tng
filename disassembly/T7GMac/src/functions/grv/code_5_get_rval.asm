; verified-role: Native GetRVal routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: GetRVal; evidence file offset 0xb2e2.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_5_get_rval:
db 0x4E, 0x56, 0x00, 0x00 ; file 00B23C | 68k link.w a6, #$0
db 0x48, 0xE7, 0x07, 0x08 ; file 00B240 | 68k movem.l d5-d7/a4, -(a7)
db 0x20, 0x6E, 0x00, 0x08 ; file 00B244 | 68k movea.l $8(a6), a0
db 0x28, 0x50 ; file 00B248 | 68k movea.l (a0), a4
db 0x7E, 0x7F ; file 00B24A | 68k moveq #$7f, d7
db 0xCE, 0x1C ; file 00B24C | 68k and.b (a4)+, d7
db 0x0C, 0x07, 0x00, 0x23 ; file 00B24E | 68k cmpi.b #$23, d7
db 0x66, 0x14 ; file 00B252 | 68k bne.b $3b02
db 0x7E, 0x7F ; file 00B254 | 68k moveq #$7f, d7
db 0xCE, 0x1C ; file 00B256 | 68k and.b (a4)+, d7
db 0x06, 0x07, 0x00, 0x9F ; file 00B258 | 68k addi.b #$9f, d7
db 0x70, 0x00 ; file 00B25C | 68k moveq #$0, d0
db 0x10, 0x07 ; file 00B25E | 68k move.b d7, d0
db 0x1C, 0x35, 0x09, 0x25, 0xF7, 0xA0 ; file 00B260 | 68k move.b ([$f7a0, a5], d0.l), d6
db 0x60, 0x6A ; file 00B266 | 68k bra.b $3b6c
db 0x0C, 0x07, 0x00, 0x7C ; file 00B268 | 68k cmpi.b #$7c, d7
db 0x66, 0x5E ; file 00B26C | 68k bne.b $3b66
db 0x1E, 0x1C ; file 00B26E | 68k move.b (a4)+, d7
db 0x0C, 0x07, 0x00, 0x23 ; file 00B270 | 68k cmpi.b #$23, d7
db 0x66, 0x12 ; file 00B274 | 68k bne.b $3b22
db 0x70, 0x9F ; file 00B276 | 68k moveq #$9f, d0
db 0xD0, 0x1C ; file 00B278 | 68k add.b (a4)+, d0
db 0x1E, 0x00 ; file 00B27A | 68k move.b d0, d7
db 0x70, 0x00 ; file 00B27C | 68k moveq #$0, d0
db 0x10, 0x07 ; file 00B27E | 68k move.b d7, d0
db 0x1C, 0x35, 0x09, 0x25, 0xF7, 0xA0 ; file 00B280 | 68k move.b ([$f7a0, a5], d0.l), d6
db 0x60, 0x06 ; file 00B286 | 68k bra.b $3b28
db 0x70, 0xD0 ; file 00B288 | 68k moveq #$d0, d0
db 0xD0, 0x07 ; file 00B28A | 68k add.b d7, d0
db 0x1C, 0x00 ; file 00B28C | 68k move.b d0, d6
db 0x7E, 0x7F ; file 00B28E | 68k moveq #$7f, d7
db 0xCE, 0x1C ; file 00B290 | 68k and.b (a4)+, d7
db 0x0C, 0x07, 0x00, 0x23 ; file 00B292 | 68k cmpi.b #$23, d7
db 0x66, 0x14 ; file 00B296 | 68k bne.b $3b46
db 0x7E, 0x7F ; file 00B298 | 68k moveq #$7f, d7
db 0xCE, 0x1C ; file 00B29A | 68k and.b (a4)+, d7
db 0x06, 0x07, 0x00, 0x9F ; file 00B29C | 68k addi.b #$9f, d7
db 0x70, 0x00 ; file 00B2A0 | 68k moveq #$0, d0
db 0x10, 0x07 ; file 00B2A2 | 68k move.b d7, d0
db 0x1A, 0x35, 0x09, 0x25, 0xF7, 0xA0 ; file 00B2A4 | 68k move.b ([$f7a0, a5], d0.l), d5
db 0x60, 0x06 ; file 00B2AA | 68k bra.b $3b4c
db 0x70, 0xD0 ; file 00B2AC | 68k moveq #$d0, d0
db 0xD0, 0x07 ; file 00B2AE | 68k add.b d7, d0
db 0x1A, 0x00 ; file 00B2B0 | 68k move.b d0, d5
db 0x70, 0x00 ; file 00B2B2 | 68k moveq #$0, d0
db 0x10, 0x06 ; file 00B2B4 | 68k move.b d6, d0
db 0xC1, 0xFC, 0x00, 0x0A ; file 00B2B6 | 68k muls.w #$a, d0
db 0x72, 0x00 ; file 00B2BA | 68k moveq #$0, d1
db 0x12, 0x05 ; file 00B2BC | 68k move.b d5, d1
db 0x06, 0x40, 0x00, 0x19 ; file 00B2BE | 68k addi.w #$19, d0
db 0xD0, 0x41 ; file 00B2C2 | 68k add.w d1, d0
db 0x1C, 0x35, 0x01, 0x25, 0xF7, 0xA0 ; file 00B2C4 | 68k move.b ([$f7a0, a5], d0.w), d6
db 0x60, 0x06 ; file 00B2CA | 68k bra.b $3b6c
db 0x70, 0xD0 ; file 00B2CC | 68k moveq #$d0, d0
db 0xD0, 0x07 ; file 00B2CE | 68k add.b d7, d0
db 0x1C, 0x00 ; file 00B2D0 | 68k move.b d0, d6
db 0x20, 0x6E, 0x00, 0x08 ; file 00B2D2 | 68k movea.l $8(a6), a0
db 0x20, 0x8C ; file 00B2D6 | 68k move.l a4, (a0)
db 0x10, 0x06 ; file 00B2D8 | 68k move.b d6, d0
db 0x4C, 0xDF, 0x10, 0xE0 ; file 00B2DA | 68k movem.l (a7)+, d5-d7/a4
db 0x4E, 0x5E ; file 00B2DE | 68k unlk a6
db 0x4E, 0x75 ; file 00B2E0 | 68k rts 
