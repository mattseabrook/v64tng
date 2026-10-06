; verified-role: Native FileNameToNumber routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: FileNameToNumber; evidence file offset 0x9674.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_5_file_name_to_number:
db 0x4E, 0x56, 0xFF, 0xFC ; file 00954E | 68k link.w a6, #$fffc
db 0x48, 0xE7, 0x0F, 0x38 ; file 009552 | 68k movem.l d4-d7/a2-a4, -(a7)
db 0x26, 0x6E, 0x00, 0x0A ; file 009556 | 68k movea.l $a(a6), a3
db 0x28, 0x53 ; file 00955A | 68k movea.l (a3), a4
db 0x7C, 0x00 ; file 00955C | 68k moveq #$0, d6
db 0x60, 0x00, 0x00, 0x8C ; file 00955E | 68k bra.w $1e86
db 0x1A, 0x1C ; file 009562 | 68k move.b (a4)+, d5
db 0x0C, 0x05, 0x00, 0x23 ; file 009564 | 68k cmpi.b #$23, d5
db 0x66, 0x12 ; file 009568 | 68k bne.b $1e16
db 0x1A, 0x1C ; file 00956A | 68k move.b (a4)+, d5
db 0x70, 0x00 ; file 00956C | 68k moveq #$0, d0
db 0x10, 0x05 ; file 00956E | 68k move.b d5, d0
db 0x20, 0x6D, 0xF7, 0xA0 ; file 009570 | 68k movea.l -$860(a5), a0
db 0x7A, 0x30 ; file 009574 | 68k moveq #$30, d5
db 0xDA, 0x30, 0x00, 0x9F ; file 009576 | 68k add.b -$61(a0, d0.w), d5
db 0x60, 0x56 ; file 00957A | 68k bra.b $1e6c
db 0x0C, 0x05, 0x00, 0x7C ; file 00957C | 68k cmpi.b #$7c, d5
db 0x66, 0x50 ; file 009580 | 68k bne.b $1e6c
db 0x1A, 0x1C ; file 009582 | 68k move.b (a4)+, d5
db 0x0C, 0x05, 0x00, 0x23 ; file 009584 | 68k cmpi.b #$23, d5
db 0x66, 0x10 ; file 009588 | 68k bne.b $1e34
db 0x1A, 0x1C ; file 00958A | 68k move.b (a4)+, d5
db 0x70, 0x00 ; file 00958C | 68k moveq #$0, d0
db 0x10, 0x05 ; file 00958E | 68k move.b d5, d0
db 0x20, 0x6D, 0xF7, 0xA0 ; file 009590 | 68k movea.l -$860(a5), a0
db 0x1A, 0x30, 0x00, 0x9F ; file 009594 | 68k move.b -$61(a0, d0.w), d5
db 0x60, 0x06 ; file 009598 | 68k bra.b $1e3a
db 0x70, 0xD0 ; file 00959A | 68k moveq #$d0, d0
db 0xD0, 0x05 ; file 00959C | 68k add.b d5, d0
db 0x1A, 0x00 ; file 00959E | 68k move.b d0, d5
db 0xCA, 0xFC, 0x00, 0x0A ; file 0095A0 | 68k mulu.w #$a, d5
db 0x18, 0x1C ; file 0095A4 | 68k move.b (a4)+, d4
db 0x0C, 0x04, 0x00, 0x23 ; file 0095A6 | 68k cmpi.b #$23, d4
db 0x66, 0x10 ; file 0095AA | 68k bne.b $1e56
db 0x18, 0x1C ; file 0095AC | 68k move.b (a4)+, d4
db 0x70, 0x00 ; file 0095AE | 68k moveq #$0, d0
db 0x10, 0x04 ; file 0095B0 | 68k move.b d4, d0
db 0x20, 0x6D, 0xF7, 0xA0 ; file 0095B2 | 68k movea.l -$860(a5), a0
db 0x18, 0x30, 0x00, 0x9F ; file 0095B6 | 68k move.b -$61(a0, d0.w), d4
db 0x60, 0x06 ; file 0095BA | 68k bra.b $1e5c
db 0x70, 0xD0 ; file 0095BC | 68k moveq #$d0, d0
db 0xD0, 0x04 ; file 0095BE | 68k add.b d4, d0
db 0x18, 0x00 ; file 0095C0 | 68k move.b d0, d4
db 0xDA, 0x04 ; file 0095C2 | 68k add.b d4, d5
db 0x70, 0x00 ; file 0095C4 | 68k moveq #$0, d0
db 0x10, 0x05 ; file 0095C6 | 68k move.b d5, d0
db 0x20, 0x6D, 0xF7, 0xA0 ; file 0095C8 | 68k movea.l -$860(a5), a0
db 0x7A, 0x30 ; file 0095CC | 68k moveq #$30, d5
db 0xDA, 0x30, 0x00, 0x19 ; file 0095CE | 68k add.b $19(a0, d0.w), d5
db 0x0C, 0x05, 0x00, 0x41 ; file 0095D2 | 68k cmpi.b #$41, d5
db 0x65, 0x0A ; file 0095D6 | 68k bcs.b $1e7c
db 0x0C, 0x05, 0x00, 0x5A ; file 0095D8 | 68k cmpi.b #$5a, d5
db 0x62, 0x04 ; file 0095DC | 68k bhi.b $1e7c
db 0x06, 0x05, 0x00, 0x20 ; file 0095DE | 68k addi.b #$20, d5
db 0x30, 0x06 ; file 0095E2 | 68k move.w d6, d0
db 0x52, 0x46 ; file 0095E4 | 68k addq.w #$1, d6
db 0x1B, 0x85, 0x01, 0x20, 0xF0, 0x1A ; file 0095E6 | 68k move.b d5, $f01a(a5, d0.w)
db 0x4A, 0x14 ; file 0095EC | 68k tst.b (a4)
db 0x66, 0x00, 0xFF, 0x72 ; file 0095EE | 68k bne.w $1dfc
db 0x52, 0x8C ; file 0095F2 | 68k addq.l #$1, a4
db 0x26, 0x8C ; file 0095F4 | 68k move.l a4, (a3)
db 0x42, 0x35, 0x61, 0x20, 0xF0, 0x1A ; file 0095F6 | 68k clr.b $f01a(a5, d6.w)
db 0x48, 0x6D, 0xF4, 0x5E ; file 0095FC | 68k pea.l -$ba2(a5)
db 0x48, 0x6D, 0xF0, 0x1A ; file 009600 | 68k pea.l -$fe6(a5)
db 0x4E, 0xAD, 0x01, 0x4A ; file 009604 | 68k jsr $14a(a5)
db 0x26, 0x8C ; file 009608 | 68k move.l a4, (a3)
db 0x28, 0x6D, 0xF3, 0xB8 ; file 00960A | 68k movea.l -$c48(a5), a4
db 0x7C, 0x00 ; file 00960E | 68k moveq #$0, d6
db 0x7A, 0xFF ; file 009610 | 68k moveq #$ff, d5
db 0x70, 0x14 ; file 009612 | 68k moveq #$14, d0
db 0xC1, 0xC6 ; file 009614 | 68k muls.w d6, d0
db 0x26, 0x40 ; file 009616 | 68k movea.l d0, a3
db 0x50, 0x8F ; file 009618 | 68k addq.l #$8, a7
db 0x20, 0x4B ; file 00961A | 68k movea.l a3, a0
db 0xD1, 0xCC ; file 00961C | 68k adda.l a4, a0
db 0x2E, 0x08 ; file 00961E | 68k move.l a0, d7
db 0x20, 0x47 ; file 009620 | 68k movea.l d7, a0
db 0x4A, 0x10 ; file 009622 | 68k tst.b (a0)
db 0x67, 0x2C ; file 009624 | 68k beq.b $1eec
db 0x24, 0x4B ; file 009626 | 68k movea.l a3, a2
db 0xD5, 0xCC ; file 009628 | 68k adda.l a4, a2
db 0x45, 0xEA, 0x00, 0x0C ; file 00962A | 68k lea.l $c(a2), a2
db 0x28, 0x12 ; file 00962E | 68k move.l (a2), d4
db 0x42, 0x92 ; file 009630 | 68k clr.l (a2)
db 0x2F, 0x07 ; file 009632 | 68k move.l d7, -(a7)
db 0x48, 0x6D, 0xF0, 0x1A ; file 009634 | 68k pea.l -$fe6(a5)
db 0x4E, 0xAD, 0x01, 0x52 ; file 009638 | 68k jsr $152(a5)
db 0x4A, 0x40 ; file 00963C | 68k tst.w d0
db 0x50, 0x8F ; file 00963E | 68k addq.l #$8, a7
db 0x66, 0x06 ; file 009640 | 68k bne.b $1ee2
db 0x24, 0x84 ; file 009642 | 68k move.l d4, (a2)
db 0x3A, 0x06 ; file 009644 | 68k move.w d6, d5
db 0x60, 0x0A ; file 009646 | 68k bra.b $1eec
db 0x24, 0x84 ; file 009648 | 68k move.l d4, (a2)
db 0x52, 0x46 ; file 00964A | 68k addq.w #$1, d6
db 0x47, 0xEB, 0x00, 0x14 ; file 00964C | 68k lea.l $14(a3), a3
db 0x60, 0xC8 ; file 009650 | 68k bra.b $1eb4
db 0x0C, 0x45, 0xFF, 0xFF ; file 009652 | 68k cmpi.w #$ffff, d5
db 0x66, 0x04 ; file 009656 | 68k bne.b $1ef6
db 0x70, 0x00 ; file 009658 | 68k moveq #$0, d0
db 0x60, 0x10 ; file 00965A | 68k bra.b $1f06
db 0x30, 0x2E, 0x00, 0x08 ; file 00965C | 68k move.w $8(a6), d0
db 0x30, 0x35, 0x03, 0x20, 0xF3, 0x1A ; file 009660 | 68k move.w $f31a(a5, d0.w * 2), d0
db 0x72, 0x0A ; file 009666 | 68k moveq #$a, d1
db 0xE3, 0x68 ; file 009668 | 68k lsl.w d1, d0
db 0x80, 0x45 ; file 00966A | 68k or.w d5, d0
db 0x4C, 0xDF, 0x1C, 0xF0 ; file 00966C | 68k movem.l (a7)+, d4-d7/a2-a4
db 0x4E, 0x5E ; file 009670 | 68k unlk a6
db 0x4E, 0x75 ; file 009672 | 68k rts 
