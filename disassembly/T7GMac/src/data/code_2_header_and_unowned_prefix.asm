; Length word, 4-byte segment header, and unowned prefix; may contain native code.
; Absolute container range 001064–0014FF inclusive.
db 0x00, 0x00, 0x66, 0xFA, 0x00, 0x50, 0x00, 0x1E ; file 001064
db 0x4E, 0x56, 0x00, 0x00 ; file 00106C: provisional 68k link.w a6, #$0
db 0x0C, 0xAE, 0x00, 0x00, 0x3A, 0x98, 0x00, 0x08 ; file 001070: provisional 68k cmpi.l #$3a98, $8(a6)
db 0x64, 0x0C ; file 001078: provisional 68k bcc.b $1e
db 0x3F, 0x2E, 0x00, 0x0A ; file 00107A: provisional 68k move.w $a(a6), -(a7)
db 0x4E, 0xBA, 0x01, 0xC2 ; file 00107E: provisional 68k jsr $1da(pc)
db 0x54, 0x8F ; file 001082: provisional 68k addq.l #$2, a7
db 0x60, 0x1E ; file 001084: provisional 68k bra.b $3c
db 0x0C, 0xAE, 0x00, 0x80, 0x00, 0x00, 0x00, 0x08 ; file 001086: provisional 68k cmpi.l #$800000, $8(a6)
db 0x63, 0x04 ; file 00108E: provisional 68k bls.b $2c
db 0x70, 0x00 ; file 001090: provisional 68k moveq #$0, d0
db 0x60, 0x10 ; file 001092: provisional 68k bra.b $3c
db 0x20, 0x2E, 0x00, 0x08 ; file 001094: provisional 68k move.l $8(a6), d0
db 0x54, 0x80 ; file 001098: provisional 68k addq.l #$2, d0
db 0xA1, 0x1E ; file 00109A: provisional 68k dc.w $a11e
db 0x6B, 0x04 ; file 00109C: provisional 68k bmi.b $3a
db 0x30, 0xFC, 0xFF, 0xFF ; file 00109E: provisional 68k move.w #$ffff, (a0)+
db 0x20, 0x08 ; file 0010A2: provisional 68k move.l a0, d0
db 0x4E, 0x5E ; file 0010A4: provisional 68k unlk a6
db 0x4E, 0x75 ; file 0010A6: provisional 68k rts 
db 0x4E, 0x56, 0xFF, 0xFC ; file 0010A8: provisional 68k link.w a6, #$fffc
db 0x0C, 0xAE, 0x00, 0x80, 0x00, 0x00, 0x00, 0x0C ; file 0010AC: provisional 68k cmpi.l #$800000, $c(a6)
db 0x63, 0x04 ; file 0010B4: provisional 68k bls.b $52
db 0x70, 0x00 ; file 0010B6: provisional 68k moveq #$0, d0
db 0x60, 0x68 ; file 0010B8: provisional 68k bra.b $ba
db 0x08, 0x2E, 0x00, 0x00, 0x00, 0x0F ; file 0010BA: provisional 68k btst.b #$0, $f(a6)
db 0x67, 0x04 ; file 0010C0: provisional 68k beq.b $5e
db 0x52, 0xAE, 0x00, 0x0C ; file 0010C2: provisional 68k addq.l #$1, $c(a6)
db 0x20, 0x2E, 0x00, 0x0C ; file 0010C6: provisional 68k move.l $c(a6), d0
db 0x4C, 0x2E ; file 0010CA: provisional 68k dc.w $4c2e
db 0x00, 0x00, 0x00, 0x08 ; file 0010CC: provisional 68k ori.b #$8, d0
db 0x2D, 0x40, 0x00, 0x0C ; file 0010D0: provisional 68k move.l d0, $c(a6)
db 0x0C, 0x80, 0x00, 0x80, 0x00, 0x00 ; file 0010D4: provisional 68k cmpi.l #$800000, d0
db 0x63, 0x04 ; file 0010DA: provisional 68k bls.b $78
db 0x70, 0x00 ; file 0010DC: provisional 68k moveq #$0, d0
db 0x60, 0x42 ; file 0010DE: provisional 68k bra.b $ba
db 0x0C, 0xAE, 0x00, 0x00, 0x3A, 0x98, 0x00, 0x0C ; file 0010E0: provisional 68k cmpi.l #$3a98, $c(a6)
db 0x64, 0x28 ; file 0010E8: provisional 68k bcc.b $aa
db 0x3F, 0x2E, 0x00, 0x0E ; file 0010EA: provisional 68k move.w $e(a6), -(a7)
db 0x4E, 0xBA, 0x01, 0x52 ; file 0010EE: provisional 68k jsr $1da(pc)
db 0x54, 0x8F ; file 0010F2: provisional 68k addq.l #$2, a7
db 0x2D, 0x40, 0xFF, 0xFC ; file 0010F4: provisional 68k move.l d0, -$4(a6)
db 0x67, 0x12 ; file 0010F8: provisional 68k beq.b $a4
db 0x2F, 0x2E, 0x00, 0x0C ; file 0010FA: provisional 68k move.l $c(a6), -(a7)
db 0x42, 0x67 ; file 0010FE: provisional 68k clr.w -(a7)
db 0x2F, 0x2E, 0xFF, 0xFC ; file 001100: provisional 68k move.l -$4(a6), -(a7)
db 0x4E, 0xBA, 0x16, 0x50 ; file 001104: provisional 68k jsr $16ee(pc)
db 0x4F, 0xEF, 0x00, 0x0A ; file 001108: provisional 68k lea.l $a(a7), a7
db 0x20, 0x2E, 0xFF, 0xFC ; file 00110C: provisional 68k move.l -$4(a6), d0
db 0x60, 0x10 ; file 001110: provisional 68k bra.b $ba
db 0x20, 0x2E, 0x00, 0x0C ; file 001112: provisional 68k move.l $c(a6), d0
db 0x54, 0x80 ; file 001116: provisional 68k addq.l #$2, d0
db 0xA3, 0x1E ; file 001118: provisional 68k dc.w $a31e
db 0x6B, 0x04 ; file 00111A: provisional 68k bmi.b $b8
db 0x30, 0xFC, 0xFF, 0xFF ; file 00111C: provisional 68k move.w #$ffff, (a0)+
db 0x20, 0x08 ; file 001120: provisional 68k move.l a0, d0
db 0x4E, 0x5E ; file 001122: provisional 68k unlk a6
db 0x4E, 0x75 ; file 001124: provisional 68k rts 
db 0x4E, 0x56, 0x00, 0x00 ; file 001126: provisional 68k link.w a6, #$0
db 0x48, 0xE7, 0x07, 0x18 ; file 00112A: provisional 68k movem.l d5-d7/a3-a4, -(a7)
db 0x2E, 0x2E, 0x00, 0x0C ; file 00112E: provisional 68k move.l $c(a6), d7
db 0x28, 0x6E, 0x00, 0x08 ; file 001132: provisional 68k movea.l $8(a6), a4
db 0x0C, 0x87, 0x00, 0x80, 0x00, 0x00 ; file 001136: provisional 68k cmpi.l #$800000, d7
db 0x63, 0x06 ; file 00113C: provisional 68k bls.b $dc
db 0x70, 0x00 ; file 00113E: provisional 68k moveq #$0, d0
db 0x60, 0x00, 0x00, 0xE2 ; file 001140: provisional 68k bra.w $1bc
db 0x20, 0x0C ; file 001144: provisional 68k move.l a4, d0
db 0x66, 0x0C ; file 001146: provisional 68k bne.b $ec
db 0x2F, 0x07 ; file 001148: provisional 68k move.l d7, -(a7)
db 0x4E, 0xBA, 0xFF, 0x20 ; file 00114A: provisional 68k jsr $4(pc)
db 0x58, 0x8F ; file 00114E: provisional 68k addq.l #$4, a7
db 0x60, 0x00, 0x00, 0xD2 ; file 001150: provisional 68k bra.w $1bc
db 0x4A, 0x87 ; file 001154: provisional 68k tst.l d7
db 0x66, 0x0E ; file 001156: provisional 68k bne.b $fe
db 0x2F, 0x0C ; file 001158: provisional 68k move.l a4, -(a7)
db 0x4E, 0xBA, 0x00, 0xD0 ; file 00115A: provisional 68k jsr $1c4(pc)
db 0x58, 0x8F ; file 00115E: provisional 68k addq.l #$4, a7
db 0x70, 0x00 ; file 001160: provisional 68k moveq #$0, d0
db 0x60, 0x00, 0x00, 0xC0 ; file 001162: provisional 68k bra.w $1bc
db 0x08, 0x07, 0x00, 0x00 ; file 001166: provisional 68k btst.b #$0, d7
db 0x67, 0x02 ; file 00116A: provisional 68k beq.b $106
db 0x52, 0x87 ; file 00116C: provisional 68k addq.l #$1, d7
db 0x20, 0x4C ; file 00116E: provisional 68k movea.l a4, a0
db 0x70, 0x00 ; file 001170: provisional 68k moveq #$0, d0
db 0x30, 0x20 ; file 001172: provisional 68k move.w -(a0), d0
db 0x46, 0x40 ; file 001174: provisional 68k not.w d0
db 0x66, 0x02 ; file 001176: provisional 68k bne.b $112
db 0xA0, 0x21 ; file 001178: provisional 68k dc.w $a021
db 0x55, 0x80 ; file 00117A: provisional 68k subq.l #$2, d0
db 0x2C, 0x00 ; file 00117C: provisional 68k move.l d0, d6
db 0xBC, 0x87 ; file 00117E: provisional 68k cmp.l d7, d6
db 0x63, 0x14 ; file 001180: provisional 68k bls.b $12e
db 0x2A, 0x07 ; file 001182: provisional 68k move.l d7, d5
db 0x0C, 0x86, 0x00, 0x00, 0x3A, 0x98 ; file 001184: provisional 68k cmpi.l #$3a98, d6
db 0x65, 0x26 ; file 00118A: provisional 68k bcs.b $14a
db 0x0C, 0x87, 0x00, 0x00, 0x3A, 0x98 ; file 00118C: provisional 68k cmpi.l #$3a98, d7
db 0x65, 0x70 ; file 001192: provisional 68k bcs.b $19c
db 0x60, 0x62 ; file 001194: provisional 68k bra.b $190
db 0xBC, 0x87 ; file 001196: provisional 68k cmp.l d7, d6
db 0x64, 0x14 ; file 001198: provisional 68k bcc.b $146
db 0x2A, 0x06 ; file 00119A: provisional 68k move.l d6, d5
db 0x0C, 0x86, 0x00, 0x00, 0x3A, 0x98 ; file 00119C: provisional 68k cmpi.l #$3a98, d6
db 0x64, 0x54 ; file 0011A2: provisional 68k bcc.b $190
db 0x0C, 0x87, 0x00, 0x00, 0x3A, 0x98 ; file 0011A4: provisional 68k cmpi.l #$3a98, d7
db 0x64, 0x58 ; file 0011AA: provisional 68k bcc.b $19c
db 0x60, 0x18 ; file 0011AC: provisional 68k bra.b $15e
db 0x20, 0x0C ; file 0011AE: provisional 68k move.l a4, d0
db 0x60, 0x72 ; file 0011B0: provisional 68k bra.b $1bc
db 0x20, 0x4C ; file 0011B2: provisional 68k movea.l a4, a0
db 0x32, 0x20 ; file 0011B4: provisional 68k move.w -(a0), d1
db 0x20, 0x06 ; file 0011B6: provisional 68k move.l d6, d0
db 0x90, 0x87 ; file 0011B8: provisional 68k sub.l d7, d0
db 0xD2, 0x40 ; file 0011BA: provisional 68k add.w d0, d1
db 0x30, 0x81 ; file 0011BC: provisional 68k move.w d1, (a0)
db 0x46, 0x41 ; file 0011BE: provisional 68k not.w d1
db 0xD0, 0xC1 ; file 0011C0: provisional 68k adda.w d1, a0
db 0x30, 0x80 ; file 0011C2: provisional 68k move.w d0, (a0)
db 0x60, 0xE8 ; file 0011C4: provisional 68k bra.b $146
db 0x22, 0x4C ; file 0011C6: provisional 68k movea.l a4, a1
db 0x30, 0x21 ; file 0011C8: provisional 68k move.w -(a1), d0
db 0x46, 0x40 ; file 0011CA: provisional 68k not.w d0
db 0x41, 0xF1, 0x00, 0x00 ; file 0011CC: provisional 68k lea.l (a1, d0.w), a0
db 0x30, 0x10 ; file 0011D0: provisional 68k move.w (a0), d0
db 0x6B, 0x30 ; file 0011D2: provisional 68k bmi.b $19c
db 0x2B, 0x6D, 0xD5, 0xD2, 0xD5, 0xD6 ; file 0011D4: provisional 68k move.l -$2a2e(a5), -$2a2a(a5)
db 0x72, 0x00 ; file 0011DA: provisional 68k moveq #$0, d1
db 0xD0, 0x41 ; file 0011DC: provisional 68k add.w d1, d0
db 0x32, 0x30, 0x00, 0x00 ; file 0011DE: provisional 68k move.w (a0, d0.w), d1
db 0x6A, 0xF8 ; file 0011E2: provisional 68k bpl.b $174
db 0x30, 0x80 ; file 0011E4: provisional 68k move.w d0, (a0)
db 0x22, 0x07 ; file 0011E6: provisional 68k move.l d7, d1
db 0x92, 0x86 ; file 0011E8: provisional 68k sub.l d6, d1
db 0xD0, 0xC1 ; file 0011EA: provisional 68k adda.w d1, a0
db 0x90, 0x41 ; file 0011EC: provisional 68k sub.w d1, d0
db 0x65, 0x14 ; file 0011EE: provisional 68k bcs.b $19c
db 0x67, 0x02 ; file 0011F0: provisional 68k beq.b $18c
db 0x30, 0x80 ; file 0011F2: provisional 68k move.w d0, (a0)
db 0x93, 0x51 ; file 0011F4: provisional 68k sub.w d1, (a1)
db 0x60, 0xB6 ; file 0011F6: provisional 68k bra.b $146
db 0x20, 0x4C ; file 0011F8: provisional 68k movea.l a4, a0
db 0x55, 0x88 ; file 0011FA: provisional 68k subq.l #$2, a0
db 0x20, 0x07 ; file 0011FC: provisional 68k move.l d7, d0
db 0x54, 0x80 ; file 0011FE: provisional 68k addq.l #$2, d0
db 0xA0, 0x20 ; file 001200: provisional 68k dc.w $a020
db 0x6A, 0xAA ; file 001202: provisional 68k bpl.b $146
db 0x2F, 0x07 ; file 001204: provisional 68k move.l d7, -(a7)
db 0x4E, 0xBA, 0xFE, 0x64 ; file 001206: provisional 68k jsr $4(pc)
db 0x58, 0x8F ; file 00120A: provisional 68k addq.l #$4, a7
db 0x26, 0x40 ; file 00120C: provisional 68k movea.l d0, a3
db 0x20, 0x0B ; file 00120E: provisional 68k move.l a3, d0
db 0x67, 0x10 ; file 001210: provisional 68k beq.b $1ba
db 0x20, 0x05 ; file 001212: provisional 68k move.l d5, d0
db 0x22, 0x4B ; file 001214: provisional 68k movea.l a3, a1
db 0x20, 0x4C ; file 001216: provisional 68k movea.l a4, a0
db 0xA0, 0x2E ; file 001218: provisional 68k dc.w $a02e
db 0x2F, 0x0C ; file 00121A: provisional 68k move.l a4, -(a7)
db 0x4E, 0xBA, 0x00, 0x0E ; file 00121C: provisional 68k jsr $1c4(pc)
db 0x58, 0x8F ; file 001220: provisional 68k addq.l #$4, a7
db 0x20, 0x0B ; file 001222: provisional 68k move.l a3, d0
db 0x4C, 0xDF, 0x18, 0xE0 ; file 001224: provisional 68k movem.l (a7)+, d5-d7/a3-a4
db 0x4E, 0x5E ; file 001228: provisional 68k unlk a6
db 0x4E, 0x75 ; file 00122A: provisional 68k rts 
db 0x4E, 0x56, 0x00, 0x00 ; file 00122C: provisional 68k link.w a6, #$0
db 0x20, 0x2E, 0x00, 0x08 ; file 001230: provisional 68k move.l $8(a6), d0
db 0x67, 0x08 ; file 001234: provisional 68k beq.b $1d6
db 0x20, 0x40 ; file 001236: provisional 68k movea.l d0, a0
db 0x46, 0x60 ; file 001238: provisional 68k not.w -(a0)
db 0x66, 0x02 ; file 00123A: provisional 68k bne.b $1d6
db 0xA0, 0x1F ; file 00123C: provisional 68k dc.w $a01f
db 0x4E, 0x5E ; file 00123E: provisional 68k unlk a6
db 0x4E, 0x75 ; file 001240: provisional 68k rts 
db 0x4E, 0x56, 0xFF, 0xF8 ; file 001242: provisional 68k link.w a6, #$fff8
db 0x2F, 0x07 ; file 001246: provisional 68k move.l d7, -(a7)
db 0x3E, 0x2E, 0x00, 0x08 ; file 001248: provisional 68k move.w $8(a6), d7
db 0x56, 0x47 ; file 00124C: provisional 68k addq.w #$3, d7
db 0x08, 0x87, 0x00, 0x00 ; file 00124E: provisional 68k bclr.b #$0, d7
db 0x2D, 0x6D, 0xD5, 0xD2, 0xFF, 0xFC ; file 001252: provisional 68k move.l -$2a2e(a5), -$4(a6)
db 0x20, 0x2D, 0xD5, 0xD6 ; file 001258: provisional 68k move.l -$2a2a(a5), d0
db 0x66, 0x4C ; file 00125C: provisional 68k bne.b $242
db 0x20, 0x3C, 0x00, 0x00, 0x3A, 0xA0 ; file 00125E: provisional 68k move.l #$3aa0, d0
db 0xA1, 0x1E ; file 001264: provisional 68k dc.w $a11e
db 0x6B, 0x00, 0x00, 0x86 ; file 001266: provisional 68k bmi.w $286
db 0x31, 0x7C, 0xFF, 0xFF, 0x3A, 0x9A ; file 00126A: provisional 68k move.w #$ffff, $3a9a(a0)
db 0x21, 0x6D, 0xD5, 0xCA, 0x3A, 0x9C ; file 001270: provisional 68k move.l -$2a36(a5), $3a9c(a0)
db 0x2B, 0x48, 0xD5, 0xCA ; file 001276: provisional 68k move.l a0, -$2a36(a5)
db 0x2B, 0x48, 0xD5, 0xD2 ; file 00127A: provisional 68k move.l a0, -$2a2e(a5)
db 0x20, 0x2D, 0xD5, 0xCE ; file 00127E: provisional 68k move.l -$2a32(a5), d0
db 0x66, 0x06 ; file 001282: provisional 68k bne.b $222
db 0x20, 0x08 ; file 001284: provisional 68k move.l a0, d0
db 0x2B, 0x40, 0xD5, 0xCE ; file 001286: provisional 68k move.l d0, -$2a32(a5)
db 0x22, 0x40 ; file 00128A: provisional 68k movea.l d0, a1
db 0x23, 0x48, 0x3A, 0x9C ; file 00128C: provisional 68k move.l a0, $3a9c(a1)
db 0x30, 0x3C, 0x3A, 0x9A ; file 001290: provisional 68k move.w #$3a9a, d0
db 0x30, 0x80 ; file 001294: provisional 68k move.w d0, (a0)
db 0x60, 0x44 ; file 001296: provisional 68k bra.b $274
db 0x20, 0x2E, 0xFF, 0xF8 ; file 001298: provisional 68k move.l -$8(a6), d0
db 0xB0, 0xAE, 0xFF, 0xFC ; file 00129C: provisional 68k cmp.l -$4(a6), d0
db 0x67, 0xBC ; file 0012A0: provisional 68k beq.b $1f6
db 0x2B, 0x40, 0xD5, 0xD2 ; file 0012A2: provisional 68k move.l d0, -$2a2e(a5)
db 0x2B, 0x40, 0xD5, 0xD6 ; file 0012A6: provisional 68k move.l d0, -$2a2a(a5)
db 0x20, 0x40 ; file 0012AA: provisional 68k movea.l d0, a0
db 0x74, 0xFF ; file 0012AC: provisional 68k moveq #$ff, d2
db 0x60, 0x18 ; file 0012AE: provisional 68k bra.b $260
db 0x46, 0x40 ; file 0012B0: provisional 68k not.w d0
db 0x66, 0x0E ; file 0012B2: provisional 68k bne.b $25a
db 0x2D, 0x68, 0x00, 0x02, 0xFF, 0xF8 ; file 0012B4: provisional 68k move.l $2(a0), -$8(a6)
db 0x20, 0x6D, 0xD5, 0xD2 ; file 0012BA: provisional 68k movea.l -$2a2e(a5), a0
db 0x24, 0x2D, 0xD5, 0xD6 ; file 0012BE: provisional 68k move.l -$2a2a(a5), d2
db 0xD0, 0xC0 ; file 0012C2: provisional 68k adda.w d0, a0
db 0xB1, 0xC2 ; file 0012C4: provisional 68k cmpa.l d2, a0
db 0x64, 0xD0 ; file 0012C6: provisional 68k bcc.b $230
db 0x30, 0x10 ; file 0012C8: provisional 68k move.w (a0), d0
db 0x6B, 0xE4 ; file 0012CA: provisional 68k bmi.b $248
db 0x72, 0x00 ; file 0012CC: provisional 68k moveq #$0, d1
db 0xD0, 0x41 ; file 0012CE: provisional 68k add.w d1, d0
db 0x32, 0x30, 0x00, 0x00 ; file 0012D0: provisional 68k move.w (a0, d0.w), d1
db 0x6A, 0xF8 ; file 0012D4: provisional 68k bpl.b $266
db 0x30, 0x80 ; file 0012D6: provisional 68k move.w d0, (a0)
db 0xB0, 0x47 ; file 0012D8: provisional 68k cmp.w d7, d0
db 0x65, 0xE6 ; file 0012DA: provisional 68k bcs.b $25a
db 0x22, 0x48 ; file 0012DC: provisional 68k movea.l a0, a1
db 0xD2, 0xC7 ; file 0012DE: provisional 68k adda.w d7, a1
db 0x2B, 0x49, 0xD5, 0xD6 ; file 0012E0: provisional 68k move.l a1, -$2a2a(a5)
db 0x90, 0x47 ; file 0012E4: provisional 68k sub.w d7, d0
db 0x67, 0x02 ; file 0012E6: provisional 68k beq.b $282
db 0x32, 0x80 ; file 0012E8: provisional 68k move.w d0, (a1)
db 0x46, 0x47 ; file 0012EA: provisional 68k not.w d7
db 0x30, 0xC7 ; file 0012EC: provisional 68k move.w d7, (a0)+
db 0x20, 0x08 ; file 0012EE: provisional 68k move.l a0, d0
db 0x2E, 0x1F ; file 0012F0: provisional 68k move.l (a7)+, d7
db 0x4E, 0x5E ; file 0012F2: provisional 68k unlk a6
db 0x4E, 0x75 ; file 0012F4: provisional 68k rts 
db 0x4E, 0x56, 0xFF, 0xFE ; file 0012F6: provisional 68k link.w a6, #$fffe
db 0x4A, 0x6E, 0x00, 0x08 ; file 0012FA: provisional 68k tst.w $8(a6)
db 0x6C, 0x08 ; file 0012FE: provisional 68k bge.b $2a0
db 0x30, 0x2E, 0x00, 0x08 ; file 001300: provisional 68k move.w $8(a6), d0
db 0x44, 0x40 ; file 001304: provisional 68k neg.w d0
db 0x60, 0x04 ; file 001306: provisional 68k bra.b $2a4
db 0x30, 0x2E, 0x00, 0x08 ; file 001308: provisional 68k move.w $8(a6), d0
db 0x4E, 0x5E ; file 00130C: provisional 68k unlk a6
db 0x4E, 0x75 ; file 00130E: provisional 68k rts 
db 0x4E, 0x56, 0xFF, 0xFC ; file 001310: provisional 68k link.w a6, #$fffc
db 0x4A, 0xAE, 0x00, 0x08 ; file 001314: provisional 68k tst.l $8(a6)
db 0x6C, 0x08 ; file 001318: provisional 68k bge.b $2ba
db 0x20, 0x2E, 0x00, 0x08 ; file 00131A: provisional 68k move.l $8(a6), d0
db 0x44, 0x80 ; file 00131E: provisional 68k neg.l d0
db 0x60, 0x04 ; file 001320: provisional 68k bra.b $2be
db 0x20, 0x2E, 0x00, 0x08 ; file 001322: provisional 68k move.l $8(a6), d0
db 0x4E, 0x5E ; file 001326: provisional 68k unlk a6
db 0x4E, 0x75 ; file 001328: provisional 68k rts 
db 0x4E, 0x56, 0xFF, 0xFC ; file 00132A: provisional 68k link.w a6, #$fffc
db 0x30, 0x6E, 0x00, 0x0C ; file 00132E: provisional 68k movea.w $c(a6), a0
db 0x20, 0x08 ; file 001332: provisional 68k move.l a0, d0
db 0x81, 0xEE, 0x00, 0x0E ; file 001334: provisional 68k divs.w $e(a6), d0
db 0x3D, 0x40, 0xFF, 0xFC ; file 001338: provisional 68k move.w d0, -$4(a6)
db 0x30, 0x6E, 0x00, 0x0C ; file 00133C: provisional 68k movea.w $c(a6), a0
db 0x20, 0x08 ; file 001340: provisional 68k move.l a0, d0
db 0x81, 0xEE, 0x00, 0x0E ; file 001342: provisional 68k divs.w $e(a6), d0
db 0x48, 0x40 ; file 001346: provisional 68k swap d0
db 0x3D, 0x40, 0xFF, 0xFE ; file 001348: provisional 68k move.w d0, -$2(a6)
db 0x20, 0x6E, 0x00, 0x08 ; file 00134C: provisional 68k movea.l $8(a6), a0
db 0x20, 0xAE, 0xFF, 0xFC ; file 001350: provisional 68k move.l -$4(a6), (a0)
db 0x4E, 0x5E ; file 001354: provisional 68k unlk a6
db 0x4E, 0x75 ; file 001356: provisional 68k rts 
db 0x4E, 0x56, 0xFF, 0xF8 ; file 001358: provisional 68k link.w a6, #$fff8
db 0x20, 0x2E, 0x00, 0x0C ; file 00135C: provisional 68k move.l $c(a6), d0
db 0x4C, 0x6E ; file 001360: provisional 68k dc.w $4c6e
db 0x08, 0x00, 0x00, 0x10 ; file 001362: provisional 68k btst.b #$10, d0
db 0x2D, 0x40, 0xFF, 0xF8 ; file 001366: provisional 68k move.l d0, -$8(a6)
db 0x20, 0x2E, 0x00, 0x0C ; file 00136A: provisional 68k move.l $c(a6), d0
db 0x4C, 0x6E ; file 00136E: provisional 68k dc.w $4c6e
db 0x08, 0x01, 0x00, 0x10 ; file 001370: provisional 68k btst.b #$10, d1
db 0x2D, 0x41, 0xFF, 0xFC ; file 001374: provisional 68k move.l d1, -$4(a6)
db 0x20, 0x6E, 0x00, 0x08 ; file 001378: provisional 68k movea.l $8(a6), a0
db 0x20, 0xAE, 0xFF, 0xF8 ; file 00137C: provisional 68k move.l -$8(a6), (a0)
db 0x21, 0x6E, 0xFF, 0xFC, 0x00, 0x04 ; file 001380: provisional 68k move.l -$4(a6), $4(a0)
db 0x4E, 0x5E ; file 001386: provisional 68k unlk a6
db 0x4E, 0x75 ; file 001388: provisional 68k rts 
db 0x4E, 0x56, 0x00, 0x00 ; file 00138A: provisional 68k link.w a6, #$0
db 0x3F, 0x2E, 0x00, 0x10 ; file 00138E: provisional 68k move.w $10(a6), -(a7)
db 0x2F, 0x2E, 0x00, 0x0C ; file 001392: provisional 68k move.l $c(a6), -(a7)
db 0x2F, 0x2E, 0x00, 0x08 ; file 001396: provisional 68k move.l $8(a6), -(a7)
db 0x48, 0x6D, 0xD5, 0xDA ; file 00139A: provisional 68k pea.l -$2a26(a5)
db 0x48, 0x6D, 0xD8, 0x94 ; file 00139E: provisional 68k pea.l -$276c(a5)
db 0x4E, 0xBA, 0x11, 0x4E ; file 0013A2: provisional 68k jsr $148a(pc)
db 0x4A, 0xAD, 0xD8, 0xB2 ; file 0013A6: provisional 68k tst.l -$274e(a5)
db 0x4F, 0xEF, 0x00, 0x12 ; file 0013AA: provisional 68k lea.l $12(a7), a7
db 0x67, 0x20 ; file 0013AE: provisional 68k beq.b $368
db 0x48, 0x6D, 0xD6, 0x02 ; file 0013B0: provisional 68k pea.l -$29fe(a5)
db 0x48, 0x6D, 0xD8, 0x94 ; file 0013B4: provisional 68k pea.l -$276c(a5)
db 0x4E, 0xBA, 0x11, 0x38 ; file 0013B8: provisional 68k jsr $148a(pc)
db 0x48, 0x6D, 0xD8, 0x94 ; file 0013BC: provisional 68k pea.l -$276c(a5)
db 0x4E, 0xBA, 0x12, 0x64 ; file 0013C0: provisional 68k jsr $15be(pc)
db 0x48, 0x6D, 0xD8, 0x94 ; file 0013C4: provisional 68k pea.l -$276c(a5)
db 0x4E, 0xBA, 0x10, 0x6A ; file 0013C8: provisional 68k jsr $13cc(pc)
db 0x4F, 0xEF, 0x00, 0x10 ; file 0013CC: provisional 68k lea.l $10(a7), a7
db 0x4E, 0xBA, 0x24, 0x2A ; file 0013D0: provisional 68k jsr $2794(pc)
db 0x4E, 0x5E ; file 0013D4: provisional 68k unlk a6
db 0x4E, 0x75 ; file 0013D6: provisional 68k rts 
db 0x4E, 0x56, 0x00, 0x00 ; file 0013D8: provisional 68k link.w a6, #$0
db 0x2F, 0x0C ; file 0013DC: provisional 68k move.l a4, -(a7)
db 0x0C, 0x6D, 0x00, 0x21, 0xD6, 0x1C ; file 0013DE: provisional 68k cmpi.w #$21, -$29e4(a5)
db 0x6F, 0x04 ; file 0013E4: provisional 68k ble.b $382
db 0x70, 0xFF ; file 0013E6: provisional 68k moveq #$ff, d0
db 0x60, 0x34 ; file 0013E8: provisional 68k bra.b $3b6
db 0x30, 0x2D, 0xD6, 0x1C ; file 0013EA: provisional 68k move.w -$29e4(a5), d0
db 0x52, 0x6D, 0xD6, 0x1C ; file 0013EE: provisional 68k addq.w #$1, -$29e4(a5)
db 0xC1, 0xFC, 0x00, 0x06 ; file 0013F2: provisional 68k muls.w #$6, d0
db 0x49, 0xED, 0xD6, 0x20 ; file 0013F6: provisional 68k lea.l -$29e0(a5), a4
db 0xD0, 0x8C ; file 0013FA: provisional 68k add.l a4, d0
db 0x28, 0x40 ; file 0013FC: provisional 68k movea.l d0, a4
db 0x28, 0xAE, 0x00, 0x08 ; file 0013FE: provisional 68k move.l $8(a6), (a4)
db 0x4E, 0xBA, 0x01, 0xB4 ; file 001402: provisional 68k jsr $550(pc)
db 0x4A, 0xAD, 0xD6, 0xEC ; file 001406: provisional 68k tst.l -$2914(a5)
db 0x66, 0x10 ; file 00140A: provisional 68k bne.b $3b4
db 0x20, 0x6D, 0x00, 0x6C ; file 00140C: provisional 68k movea.l $6c(a5), a0
db 0x2B, 0x48, 0xD6, 0xEC ; file 001410: provisional 68k move.l a0, -$2914(a5)
db 0x41, 0xED, 0x01, 0x32 ; file 001414: provisional 68k lea.l $132(a5), a0
db 0x2B, 0x48, 0x00, 0x6C ; file 001418: provisional 68k move.l a0, $6c(a5)
db 0x70, 0x00 ; file 00141C: provisional 68k moveq #$0, d0
db 0x28, 0x5F ; file 00141E: provisional 68k movea.l (a7)+, a4
db 0x4E, 0x5E ; file 001420: provisional 68k unlk a6
db 0x4E, 0x75 ; file 001422: provisional 68k rts 
db 0x4E, 0x56, 0x00, 0x00 ; file 001424: provisional 68k link.w a6, #$0
db 0x2F, 0x0C ; file 001428: provisional 68k move.l a4, -(a7)
db 0x0C, 0x6D, 0x00, 0x21, 0xD6, 0x1C ; file 00142A: provisional 68k cmpi.w #$21, -$29e4(a5)
db 0x6F, 0x04 ; file 001430: provisional 68k ble.b $3ce
db 0x70, 0xFF ; file 001432: provisional 68k moveq #$ff, d0
db 0x60, 0x64 ; file 001434: provisional 68k bra.b $432
db 0x30, 0x2D, 0xD6, 0x1C ; file 001436: provisional 68k move.w -$29e4(a5), d0
db 0x52, 0x6D, 0xD6, 0x1C ; file 00143A: provisional 68k addq.w #$1, -$29e4(a5)
db 0xC1, 0xFC, 0x00, 0x06 ; file 00143E: provisional 68k muls.w #$6, d0
db 0x49, 0xED, 0xD6, 0x20 ; file 001442: provisional 68k lea.l -$29e0(a5), a4
db 0xD0, 0x8C ; file 001446: provisional 68k add.l a4, d0
db 0x28, 0x40 ; file 001448: provisional 68k movea.l d0, a4
db 0x28, 0xAE, 0x00, 0x08 ; file 00144A: provisional 68k move.l $8(a6), (a4)
db 0x39, 0x7C, 0x00, 0x01, 0x00, 0x04 ; file 00144E: provisional 68k move.w #$1, $4(a4)
db 0x4E, 0xBA, 0x01, 0x62 ; file 001454: provisional 68k jsr $550(pc)
db 0x4A, 0xAD, 0xD6, 0xF0 ; file 001458: provisional 68k tst.l -$2910(a5)
db 0x66, 0x3A ; file 00145C: provisional 68k bne.b $430
db 0x30, 0x3C, 0xA9, 0xF4 ; file 00145E: provisional 68k move.w #$a9f4, d0
db 0xA1, 0x46 ; file 001462: provisional 68k dc.w $a146
db 0x2B, 0x48, 0xD6, 0xF0 ; file 001464: provisional 68k move.l a0, -$2910(a5)
db 0x4A, 0x78, 0x02, 0x8E ; file 001468: provisional 68k tst.w $28e.w
db 0x6D, 0x0C ; file 00146C: provisional 68k blt.b $412
db 0x41, 0xED, 0x01, 0x2A ; file 00146E: provisional 68k lea.l $12a(a5), a0
db 0x30, 0x3C, 0xA9, 0xF4 ; file 001472: provisional 68k move.w #$a9f4, d0
db 0xA0, 0x47 ; file 001476: provisional 68k dc.w $a047
db 0x60, 0x1E ; file 001478: provisional 68k bra.b $430
db 0x70, 0x06 ; file 00147A: provisional 68k moveq #$6, d0
db 0xA5, 0x1E ; file 00147C: provisional 68k dc.w $a51e
db 0x28, 0x48 ; file 00147E: provisional 68k movea.l a0, a4
db 0x38, 0xBC, 0x4E, 0xF9 ; file 001480: provisional 68k move.w #$4ef9, (a4)
db 0x41, 0xED, 0x01, 0x2A ; file 001484: provisional 68k lea.l $12a(a5), a0
db 0x29, 0x48, 0x00, 0x02 ; file 001488: provisional 68k move.l a0, $2(a4)
db 0x2B, 0x4C, 0xD6, 0xF4 ; file 00148C: provisional 68k move.l a4, -$290c(a5)
db 0x30, 0x3C, 0xA9, 0xF4 ; file 001490: provisional 68k move.w #$a9f4, d0
db 0x20, 0x4C ; file 001494: provisional 68k movea.l a4, a0
db 0xA0, 0x47 ; file 001496: provisional 68k dc.w $a047
db 0x70, 0x00 ; file 001498: provisional 68k moveq #$0, d0
db 0x28, 0x5F ; file 00149A: provisional 68k movea.l (a7)+, a4
db 0x4E, 0x5E ; file 00149C: provisional 68k unlk a6
db 0x4E, 0x75 ; file 00149E: provisional 68k rts 
db 0x4E, 0x56, 0x00, 0x00 ; file 0014A0: provisional 68k link.w a6, #$0
db 0x2F, 0x07 ; file 0014A4: provisional 68k move.l d7, -(a7)
db 0x3E, 0x2D, 0xD6, 0x1C ; file 0014A6: provisional 68k move.w -$29e4(a5), d7
db 0x3B, 0x7C, 0x00, 0x01, 0xD6, 0x1C ; file 0014AA: provisional 68k move.w #$1, -$29e4(a5)
db 0x2F, 0x2E, 0x00, 0x08 ; file 0014B0: provisional 68k move.l $8(a6), -(a7)
db 0x4E, 0xBA, 0xFF, 0x22 ; file 0014B4: provisional 68k jsr $370(pc)
db 0x3B, 0x47, 0xD6, 0x1C ; file 0014B8: provisional 68k move.w d7, -$29e4(a5)
db 0x2E, 0x2E, 0xFF, 0xFC ; file 0014BC: provisional 68k move.l -$4(a6), d7
db 0x4E, 0x5E ; file 0014C0: provisional 68k unlk a6
db 0x4E, 0x75 ; file 0014C2: provisional 68k rts 
db 0x4E, 0x56, 0x00, 0x00 ; file 0014C4: provisional 68k link.w a6, #$0
db 0x2F, 0x07 ; file 0014C8: provisional 68k move.l d7, -(a7)
db 0x3E, 0x2D, 0xD6, 0x1C ; file 0014CA: provisional 68k move.w -$29e4(a5), d7
db 0x42, 0x6D, 0xD6, 0x1C ; file 0014CE: provisional 68k clr.w -$29e4(a5)
db 0x2F, 0x2E, 0x00, 0x08 ; file 0014D2: provisional 68k move.l $8(a6), -(a7)
db 0x4E, 0xBA, 0xFF, 0x4C ; file 0014D6: provisional 68k jsr $3bc(pc)
db 0x3B, 0x47, 0xD6, 0x1C ; file 0014DA: provisional 68k move.w d7, -$29e4(a5)
db 0x2E, 0x2E, 0xFF, 0xFC ; file 0014DE: provisional 68k move.l -$4(a6), d7
db 0x4E, 0x5E ; file 0014E2: provisional 68k unlk a6
db 0x4E, 0x75 ; file 0014E4: provisional 68k rts 
db 0x4E, 0x56, 0x00, 0x00 ; file 0014E6: provisional 68k link.w a6, #$0
db 0x20, 0x6D, 0x00, 0x6C ; file 0014EA: provisional 68k movea.l $6c(a5), a0
db 0x4E, 0x90 ; file 0014EE: provisional 68k jsr (a0)
db 0xA9, 0xF4 ; file 0014F0: provisional 68k dc.w $a9f4
db 0x4E, 0x5E ; file 0014F2: provisional 68k unlk a6
db 0x4E, 0x75 ; file 0014F4: provisional 68k rts 
db 0x4E, 0x56, 0x00, 0x00 ; file 0014F6: provisional 68k link.w a6, #$0
db 0xA9, 0xF4 ; file 0014FA: provisional 68k dc.w $a9f4
db 0x4E, 0x5E ; file 0014FC: provisional 68k unlk a6
db 0x4E, 0x75 ; file 0014FE: provisional 68k rts 
