; verified-role: Native Get2RVal routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: Get2RVal; evidence file offset 0xb396.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_5_get2_rval:
db 0x4E, 0x56, 0x00, 0x00 ; file 00B2EC | 68k link.w a6, #$0
db 0x48, 0xE7, 0x03, 0x08 ; file 00B2F0 | 68k movem.l d6-d7/a4, -(a7)
db 0x20, 0x6E, 0x00, 0x08 ; file 00B2F4 | 68k movea.l $8(a6), a0
db 0x28, 0x50 ; file 00B2F8 | 68k movea.l (a0), a4
db 0x1E, 0x14 ; file 00B2FA | 68k move.b (a4), d7
db 0x0C, 0x07, 0x00, 0x23 ; file 00B2FC | 68k cmpi.b #$23, d7
db 0x66, 0x14 ; file 00B300 | 68k bne.b $3bb0
db 0x52, 0x8C ; file 00B302 | 68k addq.l #$1, a4
db 0x70, 0x00 ; file 00B304 | 68k moveq #$0, d0
db 0x10, 0x1C ; file 00B306 | 68k move.b (a4)+, d0
db 0x02, 0x40, 0x00, 0x7F ; file 00B308 | 68k andi.w #$7f, d0
db 0x20, 0x6D, 0xF7, 0xA0 ; file 00B30C | 68k movea.l -$860(a5), a0
db 0x1C, 0x30, 0x00, 0x9F ; file 00B310 | 68k move.b -$61(a0, d0.w), d6
db 0x60, 0x70 ; file 00B314 | 68k bra.b $3c20
db 0x0C, 0x07, 0x00, 0x7C ; file 00B316 | 68k cmpi.b #$7c, d7
db 0x66, 0x62 ; file 00B31A | 68k bne.b $3c18
db 0x52, 0x8C ; file 00B31C | 68k addq.l #$1, a4
db 0x0C, 0x14, 0x00, 0x23 ; file 00B31E | 68k cmpi.b #$23, (a4)
db 0x66, 0x16 ; file 00B322 | 68k bne.b $3bd4
db 0x52, 0x8C ; file 00B324 | 68k addq.l #$1, a4
db 0x70, 0x00 ; file 00B326 | 68k moveq #$0, d0
db 0x10, 0x14 ; file 00B328 | 68k move.b (a4), d0
db 0x02, 0x40, 0x00, 0x7F ; file 00B32A | 68k andi.w #$7f, d0
db 0x20, 0x6D, 0xF7, 0xA0 ; file 00B32E | 68k movea.l -$860(a5), a0
db 0x1C, 0x30, 0x00, 0x9F ; file 00B332 | 68k move.b -$61(a0, d0.w), d6
db 0x52, 0x8C ; file 00B336 | 68k addq.l #$1, a4
db 0x60, 0x08 ; file 00B338 | 68k bra.b $3bdc
db 0x7C, 0x7F ; file 00B33A | 68k moveq #$7f, d6
db 0xCC, 0x1C ; file 00B33C | 68k and.b (a4)+, d6
db 0x06, 0x06, 0x00, 0xD0 ; file 00B33E | 68k addi.b #$d0, d6
db 0x0C, 0x14, 0x00, 0x23 ; file 00B342 | 68k cmpi.b #$23, (a4)
db 0x66, 0x16 ; file 00B346 | 68k bne.b $3bf8
db 0x52, 0x8C ; file 00B348 | 68k addq.l #$1, a4
db 0x70, 0x00 ; file 00B34A | 68k moveq #$0, d0
db 0x10, 0x14 ; file 00B34C | 68k move.b (a4), d0
db 0x02, 0x40, 0x00, 0x7F ; file 00B34E | 68k andi.w #$7f, d0
db 0x20, 0x6D, 0xF7, 0xA0 ; file 00B352 | 68k movea.l -$860(a5), a0
db 0x1E, 0x30, 0x00, 0x9F ; file 00B356 | 68k move.b -$61(a0, d0.w), d7
db 0x52, 0x8C ; file 00B35A | 68k addq.l #$1, a4
db 0x60, 0x08 ; file 00B35C | 68k bra.b $3c00
db 0x7E, 0x7F ; file 00B35E | 68k moveq #$7f, d7
db 0xCE, 0x1C ; file 00B360 | 68k and.b (a4)+, d7
db 0x06, 0x07, 0x00, 0xD0 ; file 00B362 | 68k addi.b #$d0, d7
db 0x70, 0x00 ; file 00B366 | 68k moveq #$0, d0
db 0x10, 0x06 ; file 00B368 | 68k move.b d6, d0
db 0xC1, 0xFC, 0x00, 0x0A ; file 00B36A | 68k muls.w #$a, d0
db 0x72, 0x00 ; file 00B36E | 68k moveq #$0, d1
db 0x12, 0x07 ; file 00B370 | 68k move.b d7, d1
db 0xD0, 0x41 ; file 00B372 | 68k add.w d1, d0
db 0x20, 0x6D, 0xF7, 0xA0 ; file 00B374 | 68k movea.l -$860(a5), a0
db 0x1C, 0x30, 0x00, 0x19 ; file 00B378 | 68k move.b $19(a0, d0.w), d6
db 0x60, 0x08 ; file 00B37C | 68k bra.b $3c20
db 0x7C, 0x7F ; file 00B37E | 68k moveq #$7f, d6
db 0xCC, 0x1C ; file 00B380 | 68k and.b (a4)+, d6
db 0x06, 0x06, 0x00, 0xD0 ; file 00B382 | 68k addi.b #$d0, d6
db 0x20, 0x6E, 0x00, 0x08 ; file 00B386 | 68k movea.l $8(a6), a0
db 0x20, 0x8C ; file 00B38A | 68k move.l a4, (a0)
db 0x10, 0x06 ; file 00B38C | 68k move.b d6, d0
db 0x4C, 0xDF, 0x10, 0xC0 ; file 00B38E | 68k movem.l (a7)+, d6-d7/a4
db 0x4E, 0x5E ; file 00B392 | 68k unlk a6
db 0x4E, 0x75 ; file 00B394 | 68k rts 
