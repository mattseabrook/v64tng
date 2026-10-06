; verified-role: Native ProcCCC4 routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: ProcCCC4; evidence file offset 0xe1e2.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_5_proc_ccc4:
db 0x4E, 0x56, 0xFF, 0xDE ; file 00C9A0 | 68k link.w a6, #$ffde
db 0x42, 0xA7 ; file 00C9A4 | 68k clr.l -(a7)
db 0x2F, 0x2D, 0xFC, 0x82 ; file 00C9A6 | 68k move.l -$37e(a5), -(a7)
db 0x20, 0x3C, 0x00, 0x04, 0x00, 0x0F ; file 00C9AA | 68k move.l #$4000f, d0
db 0xAB, 0x1D ; file 00C9B0 | 68k dc.w $ab1d
db 0x2D, 0x5F, 0xFF, 0xEC ; file 00C9B2 | 68k move.l (a7)+, -$14(a6)
db 0x30, 0x2D, 0xF5, 0xAE ; file 00C9B6 | 68k move.w -$a52(a5), d0
db 0xC1, 0xED, 0xFC, 0x86 ; file 00C9BA | 68k muls.w -$37a(a5), d0
db 0xD0, 0xAE, 0xFF, 0xEC ; file 00C9BE | 68k add.l -$14(a6), d0
db 0x30, 0x6D, 0xFC, 0x88 ; file 00C9C2 | 68k movea.w -$378(a5), a0
db 0xD0, 0x88 ; file 00C9C6 | 68k add.l a0, d0
db 0x2D, 0x40, 0xFF, 0xEC ; file 00C9C8 | 68k move.l d0, -$14(a6)
db 0x2D, 0x6E, 0x00, 0x08, 0xFF, 0xE4 ; file 00C9CC | 68k move.l $8(a6), -$1c(a6)
db 0x2D, 0x6E, 0x00, 0x08, 0xFF, 0xF0 ; file 00C9D2 | 68k move.l $8(a6), -$10(a6)
db 0x42, 0x6E, 0xFF, 0xE0 ; file 00C9D8 | 68k clr.w -$20(a6)
db 0x48, 0xE7, 0x1F, 0x3E ; file 00C9DC | 68k movem.l d3-d7/a2-a6, -(a7)
db 0x41, 0xED, 0xFB, 0x72 ; file 00C9E0 | 68k lea.l -$48e(a5), a0
db 0x43, 0xED, 0xFA, 0x72 ; file 00C9E4 | 68k lea.l -$58e(a5), a1
db 0x74, 0x00 ; file 00C9E8 | 68k moveq #$0, d2
db 0x30, 0x2D, 0xF7, 0xC4 ; file 00C9EA | 68k move.w -$83c(a5), d0
db 0x24, 0x6E, 0xFF, 0xF0 ; file 00C9EE | 68k movea.l -$10(a6), a2
db 0x4A, 0x5A ; file 00C9F2 | 68k tst.w (a2)+
db 0x67, 0x74 ; file 00C9F4 | 68k beq.b $5304
db 0x22, 0x4A ; file 00C9F6 | 68k movea.l a2, a1
db 0xD5, 0xFC, 0x00, 0x00, 0x00, 0x20 ; file 00C9F8 | 68k adda.l #$20, a2
db 0x26, 0x6D, 0xFC, 0x7A ; file 00C9FE | 68k movea.l -$386(a5), a3
db 0xD7, 0xFC, 0x00, 0x00, 0x00, 0x0A ; file 00CA02 | 68k adda.l #$a, a3
db 0x7E, 0x0F ; file 00CA08 | 68k moveq #$f, d7
db 0x7A, 0x00 ; file 00CA0A | 68k moveq #$0, d5
db 0x3A, 0x19 ; file 00CA0C | 68k move.w (a1)+, d5
db 0xE1, 0x5D ; file 00CA0E | 68k rol.w #$8, d5
db 0x7C, 0x0F ; file 00CA10 | 68k moveq #$f, d6
db 0x50, 0x8B ; file 00CA12 | 68k addq.l #$8, a3
db 0xDA, 0x45 ; file 00CA14 | 68k add.w d5, d5
db 0x64, 0x3C ; file 00CA16 | 68k bcc.b $52ee
db 0x4A, 0x40 ; file 00CA18 | 68k tst.w d0
db 0x67, 0x0A ; file 00CA1A | 68k beq.b $52c0
db 0x4A, 0x31, 0x20, 0x00 ; file 00CA1C | 68k tst.b (a1, d2.w)
db 0x67, 0x04 ; file 00CA20 | 68k beq.b $52c0
db 0x56, 0x8A ; file 00CA22 | 68k addq.l #$3, a2
db 0x60, 0x2E ; file 00CA24 | 68k bra.b $52ee
db 0x51, 0x8B ; file 00CA26 | 68k subq.l #$8, a3
db 0x72, 0x00 ; file 00CA28 | 68k moveq #$0, d1
db 0x12, 0x1A ; file 00CA2A | 68k move.b (a2)+, d1
db 0x12, 0x30, 0x10, 0x00 ; file 00CA2C | 68k move.b (a0, d1.w), d1
db 0xE1, 0x49 ; file 00CA30 | 68k lsl.w #$8, d1
db 0x36, 0xC1 ; file 00CA32 | 68k move.w d1, (a3)+
db 0x72, 0x00 ; file 00CA34 | 68k moveq #$0, d1
db 0x12, 0x1A ; file 00CA36 | 68k move.b (a2)+, d1
db 0x12, 0x30, 0x10, 0x00 ; file 00CA38 | 68k move.b (a0, d1.w), d1
db 0xE1, 0x49 ; file 00CA3C | 68k lsl.w #$8, d1
db 0x36, 0xC1 ; file 00CA3E | 68k move.w d1, (a3)+
db 0x72, 0x00 ; file 00CA40 | 68k moveq #$0, d1
db 0x12, 0x1A ; file 00CA42 | 68k move.b (a2)+, d1
db 0x12, 0x30, 0x10, 0x00 ; file 00CA44 | 68k move.b (a0, d1.w), d1
db 0xE1, 0x49 ; file 00CA48 | 68k lsl.w #$8, d1
db 0x36, 0xC1 ; file 00CA4A | 68k move.w d1, (a3)+
db 0x3D, 0x7C, 0x00, 0x01, 0xFF, 0xE0 ; file 00CA4C | 68k move.w #$1, -$20(a6)
db 0x54, 0x8B ; file 00CA52 | 68k addq.l #$2, a3
db 0x52, 0x42 ; file 00CA54 | 68k addq.w #$1, d2
db 0x51, 0xCE, 0xFF, 0xBA ; file 00CA56 | 68k dbra d6, $52ac
db 0x51, 0xCF, 0xFF, 0xAE ; file 00CA5A | 68k dbra d7, $52a4
db 0x24, 0x6E, 0xFF, 0xF0 ; file 00CA5E | 68k movea.l -$10(a6), a2
db 0x70, 0x00 ; file 00CA62 | 68k moveq #$0, d0
db 0x30, 0x1A ; file 00CA64 | 68k move.w (a2)+, d0
db 0xE1, 0x58 ; file 00CA66 | 68k rol.w #$8, d0
db 0xD5, 0xC0 ; file 00CA68 | 68k adda.l d0, a2
db 0x2D, 0x4A, 0xFF, 0xF0 ; file 00CA6A | 68k move.l a2, -$10(a6)
db 0x4C, 0xDF, 0x7C, 0xF8 ; file 00CA6E | 68k movem.l (a7)+, d3-d7/a2-a6
db 0x4A, 0x6E, 0xFF, 0xE0 ; file 00CA72 | 68k tst.w -$20(a6)
db 0x67, 0x10 ; file 00CA76 | 68k beq.b $5322
db 0x2F, 0x3C, 0x00, 0xFF, 0x00, 0x00 ; file 00CA78 | 68k move.l #$ff0000, -(a7)
db 0x20, 0x6D, 0xFC, 0x7A ; file 00CA7E | 68k movea.l -$386(a5), a0
db 0x48, 0x68, 0x00, 0x08 ; file 00CA82 | 68k pea.l $8(a0)
db 0xAA, 0x3F ; file 00CA86 | 68k dc.w $aa3f
db 0x4A, 0x6D, 0xFC, 0xEA ; file 00CA88 | 68k tst.w -$316(a5)
db 0x67, 0xFA ; file 00CA8C | 68k beq.b $5322
db 0x42, 0x6D, 0xFC, 0xEA ; file 00CA8E | 68k clr.w -$316(a5)
db 0x4A, 0x6D, 0xFC, 0xC8 ; file 00CA92 | 68k tst.w -$338(a5)
db 0x66, 0x00, 0x10, 0x64 ; file 00CA96 | 68k bne.w $6396
db 0x48, 0xE7, 0x1F, 0x3E ; file 00CA9A | 68k movem.l d3-d7/a2-a6, -(a7)
db 0x22, 0x6E, 0xFF, 0xEC ; file 00CA9E | 68k movea.l -$14(a6), a1
db 0x20, 0x6E, 0xFF, 0xF0 ; file 00CAA2 | 68k movea.l -$10(a6), a0
db 0x7C, 0x00 ; file 00CAA6 | 68k moveq #$0, d6
db 0x3C, 0x2D, 0xFC, 0x86 ; file 00CAA8 | 68k move.w -$37a(a5), d6
db 0x26, 0x09 ; file 00CAAC | 68k move.l a1, d3
db 0x20, 0x06 ; file 00CAAE | 68k move.l d6, d0
db 0xE5, 0x48 ; file 00CAB0 | 68k lsl.w #$2, d0
db 0xD6, 0x80 ; file 00CAB2 | 68k add.l d0, d3
db 0x2D, 0x43, 0xFF, 0xE8 ; file 00CAB4 | 68k move.l d3, -$18(a6)
db 0x24, 0x49 ; file 00CAB8 | 68k movea.l a1, a2
db 0xD5, 0xC6 ; file 00CABA | 68k adda.l d6, a2
db 0x26, 0x4A ; file 00CABC | 68k movea.l a2, a3
db 0xD7, 0xC6 ; file 00CABE | 68k adda.l d6, a3
db 0x28, 0x4B ; file 00CAC0 | 68k movea.l a3, a4
db 0xD9, 0xC6 ; file 00CAC2 | 68k adda.l d6, a4
db 0x3D, 0x7C, 0x00, 0x50, 0xFF, 0xDE ; file 00CAC4 | 68k move.w #$50, -$22(a6)
db 0x2F, 0x0D ; file 00CACA | 68k move.l a5, -(a7)
db 0x2A, 0x6D, 0xFC, 0x72 ; file 00CACC | 68k movea.l -$38e(a5), a5
db 0x2F, 0x0E ; file 00CAD0 | 68k move.l a6, -(a7)
db 0x70, 0x00 ; file 00CAD2 | 68k moveq #$0, d0
db 0x10, 0x18 ; file 00CAD4 | 68k move.b (a0)+, d0
db 0x22, 0x00 ; file 00CAD6 | 68k move.l d0, d1
db 0xD2, 0x41 ; file 00CAD8 | 68k add.w d1, d1
db 0xD2, 0x7B, 0x10, 0x78 ; file 00CADA | 68k add.w $53ee(pc, d1.w), d1
db 0x4E, 0xFB, 0x10, 0x74 ; file 00CADE | 68k jmp $53ee(pc, d1.w)
db 0x04, 0x40, 0x00, 0x62 ; file 00CAE2 | 68k subi.w #$62, d0
db 0xE5, 0x48 ; file 00CAE6 | 68k lsl.w #$2, d0
db 0x48, 0xC0 ; file 00CAE8 | 68k ext.l d0
db 0xD3, 0xC0 ; file 00CAEA | 68k adda.l d0, a1
db 0xD5, 0xC0 ; file 00CAEC | 68k adda.l d0, a2
db 0xD7, 0xC0 ; file 00CAEE | 68k adda.l d0, a3
db 0xD9, 0xC0 ; file 00CAF0 | 68k adda.l d0, a4
db 0x70, 0x00 ; file 00CAF2 | 68k moveq #$0, d0
db 0x10, 0x18 ; file 00CAF4 | 68k move.b (a0)+, d0
db 0x22, 0x00 ; file 00CAF6 | 68k move.l d0, d1
db 0xD2, 0x41 ; file 00CAF8 | 68k add.w d1, d1
db 0xD2, 0x7B, 0x10, 0x58 ; file 00CAFA | 68k add.w $53ee(pc, d1.w), d1
db 0x4E, 0xFB, 0x10, 0x54 ; file 00CAFE | 68k jmp $53ee(pc, d1.w)
db 0xE1, 0x48 ; file 00CB02 | 68k lsl.w #$8, d0
db 0x10, 0x18 ; file 00CB04 | 68k move.b (a0)+, d0
db 0x46, 0x40 ; file 00CB06 | 68k not.w d0
db 0xE9, 0x88 ; file 00CB08 | 68k lsl.l #$4, d0
db 0x4D, 0xF5, 0x08, 0x00 ; file 00CB0A | 68k lea.l (a5, d0.l), a6
db 0xDC, 0xFC, 0x04, 0x00 ; file 00CB0E | 68k adda.w #$400, a6
db 0x72, 0x00 ; file 00CB12 | 68k moveq #$0, d1
db 0x12, 0x18 ; file 00CB14 | 68k move.b (a0)+, d1
db 0x20, 0x35, 0x14, 0x00 ; file 00CB16 | 68k move.l (a5, d1.w * 4), d0
db 0x12, 0x18 ; file 00CB1A | 68k move.b (a0)+, d1
db 0x22, 0x35, 0x14, 0x00 ; file 00CB1C | 68k move.l (a5, d1.w * 4), d1
db 0x28, 0x49 ; file 00CB20 | 68k movea.l a1, a4
db 0x7A, 0x03 ; file 00CB22 | 68k moveq #$3, d5
db 0x28, 0x1E ; file 00CB24 | 68k move.l (a6)+, d4
db 0x24, 0x00 ; file 00CB26 | 68k move.l d0, d2
db 0x2E, 0x01 ; file 00CB28 | 68k move.l d1, d7
db 0xC4, 0x84 ; file 00CB2A | 68k and.l d4, d2
db 0x46, 0x84 ; file 00CB2C | 68k not.l d4
db 0xCE, 0x84 ; file 00CB2E | 68k and.l d4, d7
db 0x8E, 0x82 ; file 00CB30 | 68k or.l d2, d7
db 0x28, 0x87 ; file 00CB32 | 68k move.l d7, (a4)
db 0xD9, 0xC6 ; file 00CB34 | 68k adda.l d6, a4
db 0x51, 0xCD, 0xFF, 0xEC ; file 00CB36 | 68k dbra d5, $53be
db 0x99, 0xC6 ; file 00CB3A | 68k suba.l d6, a4
db 0x58, 0x89 ; file 00CB3C | 68k addq.l #$4, a1
db 0x58, 0x8A ; file 00CB3E | 68k addq.l #$4, a2
db 0x58, 0x8B ; file 00CB40 | 68k addq.l #$4, a3
db 0x58, 0x8C ; file 00CB42 | 68k addq.l #$4, a4
db 0x70, 0x00 ; file 00CB44 | 68k moveq #$0, d0
db 0x10, 0x18 ; file 00CB46 | 68k move.b (a0)+, d0
db 0x22, 0x00 ; file 00CB48 | 68k move.l d0, d1
db 0xD2, 0x41 ; file 00CB4A | 68k add.w d1, d1
db 0xD2, 0x7B, 0x10, 0x06 ; file 00CB4C | 68k add.w $53ee(pc, d1.w), d1
db 0x4E, 0xFB, 0x10, 0x02 ; file 00CB50 | 68k jmp $53ee(pc, d1.w)
db 0x02, 0x7A ; file 00CB54 | 68k dc.w
db 0x02, 0xA0, 0x02, 0xC4, 0x02, 0xEA ; file 00CB56 | 68k andi.l #$2c402ea, -(a0)
db 0x03, 0x0A, 0x03, 0x26 ; file 00CB5C | 68k movep.w $326(a2), d1
db 0x03, 0x44 ; file 00CB60 | 68k bchg.b d1, d4
db 0x03, 0x66 ; file 00CB62 | 68k bchg.b d1, -(a6)
db 0x03, 0x8E, 0x03, 0xB4 ; file 00CB64 | 68k movep.w d1, $3b4(a6)
db 0x03, 0xD4 ; file 00CB68 | 68k bset.b d1, (a4)
db 0x03, 0xF6, 0x04, 0x18 ; file 00CB6A | 68k bset.b d1, $18(a6, d0.w)
db 0x04, 0x3C ; file 00CB6E | 68k dc.w
db 0x04, 0x58, 0x04, 0x78 ; file 00CB70 | 68k subi.w #$478, (a0)+
db 0x04, 0x9A, 0x04, 0xBE, 0x04, 0xE2 ; file 00CB74 | 68k subi.l #$4be04e2, (a2)+
db 0x05, 0x06 ; file 00CB7A | 68k btst.l d2, d6
db 0x05, 0x1E ; file 00CB7C | 68k btst.l d2, (a6)+
db 0x05, 0x38, 0x05, 0x50 ; file 00CB7E | 68k btst.l d2, $550.w
db 0x05, 0x66 ; file 00CB82 | 68k bchg.b d2, -(a6)
db 0x05, 0x80 ; file 00CB84 | 68k bclr.b d2, d0
db 0x05, 0xA4 ; file 00CB86 | 68k bclr.b d2, -(a4)
db 0x05, 0xC8, 0x05, 0xE6 ; file 00CB88 | 68k movep.l d2, $5e6(a0)
db 0x06, 0x0A ; file 00CB8C | 68k dc.w
db 0x06, 0x2C, 0x06, 0x54, 0x06, 0x72 ; file 00CB8E | 68k addi.b #$54, $672(a4)
db 0x06, 0x94, 0x06, 0xB4, 0x06, 0xDA ; file 00CB94 | 68k addi.l #$6b406da, (a4)
db 0x06, 0xFE ; file 00CB9A | 68k dc.w
db 0x07, 0x1E ; file 00CB9C | 68k btst.l d3, (a6)+
db 0x07, 0x3C, 0x07, 0x5A, 0x07, 0x76 ; file 00CB9E | 68k btst.l d3, #$75a0776
db 0x07, 0x92 ; file 00CBA4 | 68k bclr.b d3, (a2)
db 0x07, 0xB2, 0x07, 0xD0 ; file 00CBA6 | 68k bclr.b d3, (invalid.w)
db 0x07, 0xF4, 0x08, 0x16 ; file 00CBAA | 68k bset.b d3, $16(a4, d0.l)
db 0x08, 0x36 ; file 00CBAE | 68k dc.w
db 0x08, 0x5A ; file 00CBB0 | 68k dc.w
db 0x08, 0x78 ; file 00CBB2 | 68k dc.w
db 0x08, 0x9A ; file 00CBB4 | 68k dc.w
db 0x08, 0xBE ; file 00CBB6 | 68k dc.w
db 0x08, 0xE4 ; file 00CBB8 | 68k dc.w
db 0x09, 0x04 ; file 00CBBA | 68k btst.l d4, d4
db 0x09, 0x28, 0x09, 0x46 ; file 00CBBC | 68k btst.l d4, $946(a0)
db 0x09, 0x68, 0x09, 0x90 ; file 00CBC0 | 68k bchg.b d4, $990(a0)
db 0x09, 0xB4, 0x09, 0xD4 ; file 00CBC4 | 68k bclr.b d4, (invalid.w)
db 0x09, 0xF2, 0x0A, 0x10 ; file 00CBC8 | 68k bset.b d4, $10(a2, d0.l)
db 0x0A, 0x2E, 0x0A, 0x46, 0x0A, 0x5E ; file 00CBCC | 68k eori.b #$46, $a5e(a6)
db 0x0A, 0x7A ; file 00CBD2 | 68k dc.w
db 0x0A, 0x9A, 0x0A, 0xC0, 0x0A, 0xE6 ; file 00CBD4 | 68k eori.l #$ac00ae6, (a2)+
db 0x0B, 0x08, 0x0B, 0x28 ; file 00CBDA | 68k movep.w $b28(a0), d5
db 0x0B, 0x4C, 0x0B, 0x74 ; file 00CBDE | 68k movep.l $b74(a4), d5
db 0x0B, 0x96 ; file 00CBE2 | 68k bclr.b d5, (a6)
db 0x0B, 0xBC ; file 00CBE4 | 68k dc.w
db 0x0B, 0xE4 ; file 00CBE6 | 68k bset.b d5, -(a4)
db 0x0C, 0x0A ; file 00CBE8 | 68k dc.w
db 0x0C, 0x2C, 0x0C, 0x4E, 0x0C, 0x6E ; file 00CBEA | 68k cmpi.b #$4e, $c6e(a4)
db 0x0C, 0x96, 0x0C, 0xB6, 0x0C, 0xDE ; file 00CBF0 | 68k cmpi.l #$cb60cde, (a6)
db 0x0D, 0x02 ; file 00CBF6 | 68k btst.l d6, d2
db 0x0D, 0x26 ; file 00CBF8 | 68k btst.l d6, -(a6)
db 0x0D, 0x4A, 0x0D, 0x60 ; file 00CBFA | 68k movep.l $d60(a2), d6
db 0x0D, 0x86 ; file 00CBFE | 68k bclr.b d6, d6
db 0x0D, 0xA6 ; file 00CC00 | 68k bclr.b d6, -(a6)
db 0x0D, 0xC8, 0x0D, 0xE8 ; file 00CC02 | 68k movep.l d6, $de8(a0)
db 0x0E, 0x08 ; file 00CC06 | 68k dc.w
db 0x0E, 0x24 ; file 00CC08 | 68k dc.w
db 0x0E, 0x4A ; file 00CC0A | 68k dc.w
db 0x0E, 0x6E ; file 00CC0C | 68k dc.w
db 0x0E, 0x92 ; file 00CC0E | 68k dc.w
db 0x0E, 0xAC ; file 00CC10 | 68k dc.w
db 0x0E, 0xC4 ; file 00CC12 | 68k dc.w
db 0x01, 0x40 ; file 00CC14 | 68k bchg.b d0, d0
db 0x01, 0x4A, 0xFE, 0xCA ; file 00CC16 | 68k movep.l -$136(a2), d0
db 0xFE, 0xC8, 0xFE, 0xC6, 0xFE, 0xC4 ; file 00CC1A | 68k fbf.l $fec7537a
db 0xFE, 0xC2, 0xFE, 0xC0, 0xFE, 0xBE ; file 00CC20 | 68k fbf.l $fec1537a
db 0xFE, 0xBC, 0xFE, 0xBA ; file 00CC26 | 68k fbf.w $537c
db 0xFE, 0xB8, 0x01, 0x5A ; file 00CC2A | 68k fbf.w $5620
db 0x01, 0x58 ; file 00CC2E | 68k bchg.b d0, (a0)+
db 0x01, 0x56 ; file 00CC30 | 68k bchg.b d0, (a6)
db 0x01, 0x54 ; file 00CC32 | 68k bchg.b d0, (a4)
db 0x01, 0x52 ; file 00CC34 | 68k bchg.b d0, (a2)
db 0x01, 0x50 ; file 00CC36 | 68k bchg.b d0, (a0)
db 0x01, 0x4E, 0x01, 0x4C ; file 00CC38 | 68k movep.l $14c(a6), d0
db 0x01, 0x4A, 0x01, 0x48 ; file 00CC3C | 68k movep.l $148(a2), d0
db 0x01, 0x6A, 0x01, 0x68 ; file 00CC40 | 68k bchg.b d0, $168(a2)
db 0x01, 0x66 ; file 00CC44 | 68k bchg.b d0, -(a6)
db 0x01, 0x64 ; file 00CC46 | 68k bchg.b d0, -(a4)
db 0x01, 0x62 ; file 00CC48 | 68k bchg.b d0, -(a2)
db 0x01, 0x60 ; file 00CC4A | 68k bchg.b d0, -(a0)
db 0x01, 0x5E ; file 00CC4C | 68k bchg.b d0, (a6)+
db 0x01, 0x5C ; file 00CC4E | 68k bchg.b d0, (a4)+
db 0x01, 0x5A ; file 00CC50 | 68k bchg.b d0, (a2)+
db 0x01, 0x58 ; file 00CC52 | 68k bchg.b d0, (a0)+
db 0xFE, 0xAE, 0xFE, 0xAC ; file 00CC54 | 68k fbf.w $539c
db 0xFE, 0xAA, 0xFE, 0xA8 ; file 00CC58 | 68k fbf.w $539c
db 0xFE, 0xA6, 0xFE, 0xA4 ; file 00CC5C | 68k fbf.w $539c
db 0xFE, 0xA2, 0xFE, 0xA0 ; file 00CC60 | 68k fbf.w $539c
db 0xFE, 0x9E, 0xFE, 0x9C ; file 00CC64 | 68k fbf.w $539c
db 0xFE, 0x9A, 0xFE, 0x98 ; file 00CC68 | 68k fbf.w $539c
db 0xFE, 0x96, 0xFE, 0x94 ; file 00CC6C | 68k fbf.w $539c
db 0xFE, 0x92, 0xFE, 0x90 ; file 00CC70 | 68k fbf.w $539c
db 0xFE, 0x8E, 0xFE, 0x8C ; file 00CC74 | 68k fbf.w $539c
db 0xFE, 0x8A, 0xFE, 0x88 ; file 00CC78 | 68k fbf.w $539c
db 0xFE, 0x86, 0xFE, 0x84 ; file 00CC7C | 68k fbf.w $539c
db 0xFE, 0x82, 0xFE, 0x80 ; file 00CC80 | 68k fbf.w $539c
db 0xFE, 0x7E ; file 00CC84 | 68k dc.w $fe7e
db 0xFE, 0x7C, 0xFE, 0x7A ; file 00CC86 | 68k lsr 
db 0xFE, 0x78, 0xFE, 0x76, 0xFE, 0x74 ; file 00CC8A | 68k ftrapf.b $fe74.w
db 0xFE, 0x72, 0xFE, 0x70, 0xFE, 0x6E ; file 00CC90 | 68k fsub.b $6e(a2, a7.l)
db 0xFE, 0x6C, 0xFE, 0x6A, 0xFE, 0x68 ; file 00CC96 | 68k ftrapolt.b -$198(a4)
db 0xFE, 0x66, 0xFE, 0x64 ; file 00CC9C | 68k ftanh.b -(a6)
db 0xFE, 0x62, 0xFE, 0x60 ; file 00CCA0 | 68k fsub.b -(a2)
db 0xFE, 0x5E, 0xFE, 0x5C ; file 00CCA4 | 68k fsult.b (a6)+
db 0xFE, 0x5A, 0xFE, 0x58 ; file 00CCA8 | 68k fsun.b (a2)+
db 0xFE, 0x56, 0xFE, 0x54 ; file 00CCAC | 68k fsolt.b (a6)
db 0xFE, 0x52, 0xFE, 0x50 ; file 00CCB0 | 68k fsf.b (a2)
db 0xFE, 0x4E, 0xFE, 0x4C, 0xFE, 0x4A ; file 00CCB4 | 68k fdbf d6, $539c
db 0xFE, 0x48, 0xFE, 0x46, 0xFE, 0x44 ; file 00CCBA | 68k fdbf d0, $539c
db 0xFE, 0x42, 0xFE, 0x40 ; file 00CCC0 | 68k fsf.b d2
db 0xFE, 0x3E, 0xFE, 0x3C ; file 00CCC4 | 68k fmovem invalid, 
db 0xFE, 0x3A, 0xFE, 0x38, 0xFE, 0x36 ; file 00CCC8 | 68k fmovem invalid, $539a(pc)
db 0xFE, 0x34, 0xFE, 0x32, 0xFE, 0x30 ; file 00CCCE | 68k fmovem invalid, $30(a4, a7.l)
db 0xFE, 0x2E, 0xFE, 0x2C, 0xFE, 0x2A ; file 00CCD4 | 68k fmovem invalid, -$1d6(a6)
db 0xFE, 0x28, 0xFE, 0x26, 0xFE, 0x24 ; file 00CCDA | 68k fmovem invalid, -$1dc(a0)
db 0xFE, 0x22, 0xFE, 0x20 ; file 00CCE0 | 68k fmovem invalid, -(a2)
db 0xFE, 0x1E, 0xFE, 0x1C ; file 00CCE4 | 68k fmovem invalid, (a6)+
db 0xFE, 0x1A, 0xFE, 0x18 ; file 00CCE8 | 68k fmovem invalid, (a2)+
db 0xFE, 0x16, 0xFE, 0x14 ; file 00CCEC | 68k fmovem invalid, (a6)
db 0xFE, 0x12, 0xFE, 0x10 ; file 00CCF0 | 68k fmovem invalid, (a2)
db 0xFE, 0x0E, 0xFE, 0x0C ; file 00CCF4 | 68k fmovem invalid, a6
db 0xFE, 0x0A, 0xFE, 0x08 ; file 00CCF8 | 68k fmovem invalid, a2
db 0xFE, 0x06, 0xFE, 0x04 ; file 00CCFC | 68k fmovem invalid, d6
db 0xFE, 0x02, 0xFE, 0x00 ; file 00CD00 | 68k fmovem invalid, d2
db 0xFD, 0xFE ; file 00CD04 | 68k dc.w $fdfe
db 0xFD, 0xFC ; file 00CD06 | 68k dc.w $fdfc
db 0xFD, 0xFA ; file 00CD08 | 68k dc.w $fdfa
db 0xFD, 0xF8 ; file 00CD0A | 68k dc.w $fdf8
db 0xFD, 0xF6 ; file 00CD0C | 68k dc.w $fdf6
db 0xFD, 0xF4 ; file 00CD0E | 68k dc.w $fdf4
db 0xFD, 0xF2 ; file 00CD10 | 68k dc.w $fdf2
db 0xFD, 0xF0 ; file 00CD12 | 68k dc.w $fdf0
db 0xFD, 0xEE ; file 00CD14 | 68k dc.w $fdee
db 0xFD, 0xEC ; file 00CD16 | 68k dc.w $fdec
db 0xFD, 0xEA ; file 00CD18 | 68k dc.w $fdea
db 0xFD, 0xE8 ; file 00CD1A | 68k dc.w $fde8
db 0xFD, 0xE6 ; file 00CD1C | 68k dc.w $fde6
db 0xFD, 0xE4 ; file 00CD1E | 68k dc.w $fde4
db 0xFD, 0xE2 ; file 00CD20 | 68k dc.w $fde2
db 0xFD, 0xE0 ; file 00CD22 | 68k dc.w $fde0
db 0xFD, 0xDE ; file 00CD24 | 68k dc.w $fdde
db 0xFD, 0xDC ; file 00CD26 | 68k dc.w $fddc
db 0xFD, 0xDA ; file 00CD28 | 68k dc.w $fdda
db 0xFD, 0xD8 ; file 00CD2A | 68k dc.w $fdd8
db 0xFD, 0xD6 ; file 00CD2C | 68k dc.w $fdd6
db 0xFD, 0xD4 ; file 00CD2E | 68k dc.w $fdd4
db 0xFD, 0xD2 ; file 00CD30 | 68k dc.w $fdd2
db 0xFD, 0xD0 ; file 00CD32 | 68k dc.w $fdd0
db 0xFD, 0xCE ; file 00CD34 | 68k dc.w $fdce
db 0xFD, 0xCC ; file 00CD36 | 68k dc.w $fdcc
db 0xFD, 0xCA ; file 00CD38 | 68k dc.w $fdca
db 0xFD, 0xC8 ; file 00CD3A | 68k dc.w $fdc8
db 0xFD, 0xC6 ; file 00CD3C | 68k dc.w $fdc6
db 0xFD, 0xC4 ; file 00CD3E | 68k dc.w $fdc4
db 0xFD, 0xC2 ; file 00CD40 | 68k dc.w $fdc2
db 0xFD, 0xC0 ; file 00CD42 | 68k dc.w $fdc0
db 0xFD, 0xBE ; file 00CD44 | 68k dc.w $fdbe
db 0xFD, 0xBC ; file 00CD46 | 68k dc.w $fdbc
db 0xFD, 0xBA ; file 00CD48 | 68k dc.w $fdba
db 0xFD, 0xB8 ; file 00CD4A | 68k dc.w $fdb8
db 0xFD, 0xB6 ; file 00CD4C | 68k dc.w $fdb6
db 0xFD, 0xB4 ; file 00CD4E | 68k dc.w $fdb4
db 0xFD, 0xB2 ; file 00CD50 | 68k dc.w $fdb2
db 0xFD, 0xB0 ; file 00CD52 | 68k dc.w $fdb0
db 0x22, 0xD8 ; file 00CD54 | 68k move.l (a0)+, (a1)+
db 0x24, 0xD8 ; file 00CD56 | 68k move.l (a0)+, (a2)+
db 0x26, 0xD8 ; file 00CD58 | 68k move.l (a0)+, (a3)+
db 0x28, 0xD8 ; file 00CD5A | 68k move.l (a0)+, (a4)+
db 0x60, 0x00, 0xFD, 0x74 ; file 00CD5C | 68k bra.w $536c
db 0x2C, 0x57 ; file 00CD60 | 68k movea.l (a7), a6
db 0x53, 0x6E, 0xFF, 0xDE ; file 00CD62 | 68k subq.w #$1, -$22(a6)
db 0x67, 0x00, 0x0D, 0x88 ; file 00CD66 | 68k beq.w $638a
db 0x22, 0x6E, 0xFF, 0xE8 ; file 00CD6A | 68k movea.l -$18(a6), a1
db 0x20, 0x06 ; file 00CD6E | 68k move.l d6, d0
db 0xE5, 0x88 ; file 00CD70 | 68k lsl.l #$2, d0
db 0xD1, 0xAE, 0xFF, 0xE8 ; file 00CD72 | 68k add.l d0, -$18(a6)
db 0x24, 0x49 ; file 00CD76 | 68k movea.l a1, a2
db 0xD5, 0xC6 ; file 00CD78 | 68k adda.l d6, a2
db 0x26, 0x4A ; file 00CD7A | 68k movea.l a2, a3
db 0xD7, 0xC6 ; file 00CD7C | 68k adda.l d6, a3
db 0x28, 0x4B ; file 00CD7E | 68k movea.l a3, a4
db 0xD9, 0xC6 ; file 00CD80 | 68k adda.l d6, a4
db 0x60, 0x00, 0xFD, 0x4E ; file 00CD82 | 68k bra.w $536c
db 0x04, 0x40, 0x00, 0x6C ; file 00CD86 | 68k subi.w #$6c, d0
db 0x72, 0x00 ; file 00CD8A | 68k moveq #$0, d1
db 0x14, 0x18 ; file 00CD8C | 68k move.b (a0)+, d2
db 0x12, 0x02 ; file 00CD8E | 68k move.b d2, d1
db 0xE1, 0x89 ; file 00CD90 | 68k lsl.l #$8, d1
db 0x12, 0x02 ; file 00CD92 | 68k move.b d2, d1
db 0x34, 0x01 ; file 00CD94 | 68k move.w d1, d2
db 0x48, 0x42 ; file 00CD96 | 68k swap d2
db 0x34, 0x01 ; file 00CD98 | 68k move.w d1, d2
db 0x22, 0xC2 ; file 00CD9A | 68k move.l d2, (a1)+
db 0x24, 0xC2 ; file 00CD9C | 68k move.l d2, (a2)+
db 0x26, 0xC2 ; file 00CD9E | 68k move.l d2, (a3)+
db 0x28, 0xC2 ; file 00CDA0 | 68k move.l d2, (a4)+
db 0x51, 0xC8, 0xFF, 0xF6 ; file 00CDA2 | 68k dbra d0, $5634
db 0x60, 0x00, 0xFD, 0x2A ; file 00CDA6 | 68k bra.w $536c
db 0x04, 0x40, 0x00, 0x75 ; file 00CDAA | 68k subi.w #$75, d0
db 0x53, 0x40 ; file 00CDAE | 68k subq.w #$1, d0
db 0x14, 0x18 ; file 00CDB0 | 68k move.b (a0)+, d2
db 0x12, 0x02 ; file 00CDB2 | 68k move.b d2, d1
db 0xE1, 0x89 ; file 00CDB4 | 68k lsl.l #$8, d1
db 0x12, 0x02 ; file 00CDB6 | 68k move.b d2, d1
db 0x34, 0x01 ; file 00CDB8 | 68k move.w d1, d2
db 0x48, 0x42 ; file 00CDBA | 68k swap d2
db 0x34, 0x01 ; file 00CDBC | 68k move.w d1, d2
db 0x22, 0xC2 ; file 00CDBE | 68k move.l d2, (a1)+
db 0x24, 0xC2 ; file 00CDC0 | 68k move.l d2, (a2)+
db 0x26, 0xC2 ; file 00CDC2 | 68k move.l d2, (a3)+
db 0x28, 0xC2 ; file 00CDC4 | 68k move.l d2, (a4)+
db 0x51, 0xC8, 0xFF, 0xE8 ; file 00CDC6 | 68k dbra d0, $564a
db 0x60, 0x00, 0xFD, 0x06 ; file 00CDCA | 68k bra.w $536c
db 0x3A, 0x18 ; file 00CDCE | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00CDD0 | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00CDD2 | 68k ror.w #$8, d4
db 0x30, 0x05 ; file 00CDD4 | 68k move.w d5, d0
db 0x10, 0x04 ; file 00CDD6 | 68k move.b d4, d0
db 0x48, 0x40 ; file 00CDD8 | 68k swap d0
db 0x30, 0x04 ; file 00CDDA | 68k move.w d4, d0
db 0x10, 0x05 ; file 00CDDC | 68k move.b d5, d0
db 0x22, 0xC0 ; file 00CDDE | 68k move.l d0, (a1)+
db 0x48, 0x40 ; file 00CDE0 | 68k swap d0
db 0x30, 0x05 ; file 00CDE2 | 68k move.w d5, d0
db 0x48, 0x40 ; file 00CDE4 | 68k swap d0
db 0x24, 0xC0 ; file 00CDE6 | 68k move.l d0, (a2)+
db 0x32, 0x00 ; file 00CDE8 | 68k move.w d0, d1
db 0x48, 0x40 ; file 00CDEA | 68k swap d0
db 0x30, 0x01 ; file 00CDEC | 68k move.w d1, d0
db 0x26, 0xC0 ; file 00CDEE | 68k move.l d0, (a3)+
db 0x28, 0xC0 ; file 00CDF0 | 68k move.l d0, (a4)+
db 0x60, 0x00, 0xFC, 0xDE ; file 00CDF2 | 68k bra.w $536c
db 0x3A, 0x18 ; file 00CDF6 | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00CDF8 | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00CDFA | 68k ror.w #$8, d4
db 0x30, 0x05 ; file 00CDFC | 68k move.w d5, d0
db 0x10, 0x04 ; file 00CDFE | 68k move.b d4, d0
db 0x48, 0x40 ; file 00CE00 | 68k swap d0
db 0x30, 0x05 ; file 00CE02 | 68k move.w d5, d0
db 0x22, 0xC0 ; file 00CE04 | 68k move.l d0, (a1)+
db 0x30, 0x04 ; file 00CE06 | 68k move.w d4, d0
db 0x10, 0x05 ; file 00CE08 | 68k move.b d5, d0
db 0x24, 0xC0 ; file 00CE0A | 68k move.l d0, (a2)+
db 0xE1, 0x88 ; file 00CE0C | 68k lsl.l #$8, d0
db 0x10, 0x05 ; file 00CE0E | 68k move.b d5, d0
db 0x26, 0xC0 ; file 00CE10 | 68k move.l d0, (a3)+
db 0xE1, 0x88 ; file 00CE12 | 68k lsl.l #$8, d0
db 0x10, 0x05 ; file 00CE14 | 68k move.b d5, d0
db 0x28, 0xC0 ; file 00CE16 | 68k move.l d0, (a4)+
db 0x60, 0x00, 0xFC, 0xB8 ; file 00CE18 | 68k bra.w $536c
db 0x3A, 0x18 ; file 00CE1C | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00CE1E | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00CE20 | 68k ror.w #$8, d4
db 0x30, 0x05 ; file 00CE22 | 68k move.w d5, d0
db 0x10, 0x04 ; file 00CE24 | 68k move.b d4, d0
db 0x48, 0x40 ; file 00CE26 | 68k swap d0
db 0x30, 0x05 ; file 00CE28 | 68k move.w d5, d0
db 0x10, 0x04 ; file 00CE2A | 68k move.b d4, d0
db 0x22, 0xC0 ; file 00CE2C | 68k move.l d0, (a1)+
db 0x30, 0x05 ; file 00CE2E | 68k move.w d5, d0
db 0x24, 0xC0 ; file 00CE30 | 68k move.l d0, (a2)+
db 0x30, 0x04 ; file 00CE32 | 68k move.w d4, d0
db 0x10, 0x05 ; file 00CE34 | 68k move.b d5, d0
db 0x26, 0xC0 ; file 00CE36 | 68k move.l d0, (a3)+
db 0x48, 0x40 ; file 00CE38 | 68k swap d0
db 0x30, 0x05 ; file 00CE3A | 68k move.w d5, d0
db 0x48, 0x40 ; file 00CE3C | 68k swap d0
db 0x28, 0xC0 ; file 00CE3E | 68k move.l d0, (a4)+
db 0x60, 0x00, 0xFC, 0x90 ; file 00CE40 | 68k bra.w $536c
db 0x3A, 0x18 ; file 00CE44 | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00CE46 | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00CE48 | 68k ror.w #$8, d4
db 0x30, 0x05 ; file 00CE4A | 68k move.w d5, d0
db 0x10, 0x04 ; file 00CE4C | 68k move.b d4, d0
db 0x48, 0x40 ; file 00CE4E | 68k swap d0
db 0x30, 0x05 ; file 00CE50 | 68k move.w d5, d0
db 0x10, 0x04 ; file 00CE52 | 68k move.b d4, d0
db 0x22, 0xC0 ; file 00CE54 | 68k move.l d0, (a1)+
db 0x24, 0xC0 ; file 00CE56 | 68k move.l d0, (a2)+
db 0x30, 0x05 ; file 00CE58 | 68k move.w d5, d0
db 0x26, 0xC0 ; file 00CE5A | 68k move.l d0, (a3)+
db 0x30, 0x04 ; file 00CE5C | 68k move.w d4, d0
db 0x10, 0x05 ; file 00CE5E | 68k move.b d5, d0
db 0x28, 0xC0 ; file 00CE60 | 68k move.l d0, (a4)+
db 0x60, 0x00, 0xFC, 0x6E ; file 00CE62 | 68k bra.w $536c
db 0x3A, 0x18 ; file 00CE66 | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00CE68 | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00CE6A | 68k ror.w #$8, d4
db 0x30, 0x05 ; file 00CE6C | 68k move.w d5, d0
db 0x10, 0x04 ; file 00CE6E | 68k move.b d4, d0
db 0x48, 0x40 ; file 00CE70 | 68k swap d0
db 0x30, 0x05 ; file 00CE72 | 68k move.w d5, d0
db 0x10, 0x04 ; file 00CE74 | 68k move.b d4, d0
db 0x22, 0xC0 ; file 00CE76 | 68k move.l d0, (a1)+
db 0x24, 0xC0 ; file 00CE78 | 68k move.l d0, (a2)+
db 0x26, 0xC0 ; file 00CE7A | 68k move.l d0, (a3)+
db 0x30, 0x05 ; file 00CE7C | 68k move.w d5, d0
db 0x28, 0xC0 ; file 00CE7E | 68k move.l d0, (a4)+
db 0x60, 0x00, 0xFC, 0x50 ; file 00CE80 | 68k bra.w $536c
db 0x3A, 0x18 ; file 00CE84 | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00CE86 | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00CE88 | 68k ror.w #$8, d4
db 0x30, 0x04 ; file 00CE8A | 68k move.w d4, d0
db 0x10, 0x05 ; file 00CE8C | 68k move.b d5, d0
db 0x48, 0x40 ; file 00CE8E | 68k swap d0
db 0x30, 0x05 ; file 00CE90 | 68k move.w d5, d0
db 0x10, 0x04 ; file 00CE92 | 68k move.b d4, d0
db 0x22, 0xC0 ; file 00CE94 | 68k move.l d0, (a1)+
db 0x30, 0x04 ; file 00CE96 | 68k move.w d4, d0
db 0x24, 0xC0 ; file 00CE98 | 68k move.l d0, (a2)+
db 0x10, 0x05 ; file 00CE9A | 68k move.b d5, d0
db 0x26, 0xC0 ; file 00CE9C | 68k move.l d0, (a3)+
db 0x28, 0xC0 ; file 00CE9E | 68k move.l d0, (a4)+
db 0x60, 0x00, 0xFC, 0x30 ; file 00CEA0 | 68k bra.w $536c
db 0x3A, 0x18 ; file 00CEA4 | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00CEA6 | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00CEA8 | 68k ror.w #$8, d4
db 0x30, 0x04 ; file 00CEAA | 68k move.w d4, d0
db 0x48, 0x40 ; file 00CEAC | 68k swap d0
db 0x30, 0x05 ; file 00CEAE | 68k move.w d5, d0
db 0x10, 0x04 ; file 00CEB0 | 68k move.b d4, d0
db 0x22, 0xC0 ; file 00CEB2 | 68k move.l d0, (a1)+
db 0x48, 0x40 ; file 00CEB4 | 68k swap d0
db 0x10, 0x05 ; file 00CEB6 | 68k move.b d5, d0
db 0x48, 0x40 ; file 00CEB8 | 68k swap d0
db 0x24, 0xC0 ; file 00CEBA | 68k move.l d0, (a2)+
db 0x30, 0x04 ; file 00CEBC | 68k move.w d4, d0
db 0x26, 0xC0 ; file 00CEBE | 68k move.l d0, (a3)+
db 0x10, 0x05 ; file 00CEC0 | 68k move.b d5, d0
db 0x28, 0xC0 ; file 00CEC2 | 68k move.l d0, (a4)+
db 0x60, 0x00, 0xFC, 0x0C ; file 00CEC4 | 68k bra.w $536c
db 0x3A, 0x18 ; file 00CEC8 | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00CECA | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00CECC | 68k ror.w #$8, d4
db 0x30, 0x05 ; file 00CECE | 68k move.w d5, d0
db 0x10, 0x04 ; file 00CED0 | 68k move.b d4, d0
db 0x48, 0x40 ; file 00CED2 | 68k swap d0
db 0x30, 0x05 ; file 00CED4 | 68k move.w d5, d0
db 0x10, 0x04 ; file 00CED6 | 68k move.b d4, d0
db 0x22, 0xC0 ; file 00CED8 | 68k move.l d0, (a1)+
db 0x48, 0x40 ; file 00CEDA | 68k swap d0
db 0x30, 0x04 ; file 00CEDC | 68k move.w d4, d0
db 0x48, 0x40 ; file 00CEDE | 68k swap d0
db 0x24, 0xC0 ; file 00CEE0 | 68k move.l d0, (a2)+
db 0x48, 0x40 ; file 00CEE2 | 68k swap d0
db 0x10, 0x05 ; file 00CEE4 | 68k move.b d5, d0
db 0x48, 0x40 ; file 00CEE6 | 68k swap d0
db 0x26, 0xC0 ; file 00CEE8 | 68k move.l d0, (a3)+
db 0x30, 0x04 ; file 00CEEA | 68k move.w d4, d0
db 0x28, 0xC0 ; file 00CEEC | 68k move.l d0, (a4)+
db 0x60, 0x00, 0xFB, 0xE2 ; file 00CEEE | 68k bra.w $536c
db 0x3A, 0x18 ; file 00CEF2 | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00CEF4 | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00CEF6 | 68k ror.w #$8, d4
db 0x30, 0x05 ; file 00CEF8 | 68k move.w d5, d0
db 0x10, 0x04 ; file 00CEFA | 68k move.b d4, d0
db 0x48, 0x40 ; file 00CEFC | 68k swap d0
db 0x30, 0x05 ; file 00CEFE | 68k move.w d5, d0
db 0x10, 0x04 ; file 00CF00 | 68k move.b d4, d0
db 0x22, 0xC0 ; file 00CF02 | 68k move.l d0, (a1)+
db 0x24, 0xC0 ; file 00CF04 | 68k move.l d0, (a2)+
db 0x48, 0x40 ; file 00CF06 | 68k swap d0
db 0x30, 0x04 ; file 00CF08 | 68k move.w d4, d0
db 0x48, 0x40 ; file 00CF0A | 68k swap d0
db 0x26, 0xC0 ; file 00CF0C | 68k move.l d0, (a3)+
db 0x48, 0x40 ; file 00CF0E | 68k swap d0
db 0x10, 0x05 ; file 00CF10 | 68k move.b d5, d0
db 0x48, 0x40 ; file 00CF12 | 68k swap d0
db 0x28, 0xC0 ; file 00CF14 | 68k move.l d0, (a4)+
db 0x60, 0x00, 0xFB, 0xBA ; file 00CF16 | 68k bra.w $536c
db 0x3A, 0x18 ; file 00CF1A | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00CF1C | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00CF1E | 68k ror.w #$8, d4
db 0x30, 0x05 ; file 00CF20 | 68k move.w d5, d0
db 0x10, 0x04 ; file 00CF22 | 68k move.b d4, d0
db 0x48, 0x40 ; file 00CF24 | 68k swap d0
db 0x30, 0x05 ; file 00CF26 | 68k move.w d5, d0
db 0x10, 0x04 ; file 00CF28 | 68k move.b d4, d0
db 0x22, 0xC0 ; file 00CF2A | 68k move.l d0, (a1)+
db 0x24, 0xC0 ; file 00CF2C | 68k move.l d0, (a2)+
db 0x26, 0xC0 ; file 00CF2E | 68k move.l d0, (a3)+
db 0x48, 0x40 ; file 00CF30 | 68k swap d0
db 0x30, 0x04 ; file 00CF32 | 68k move.w d4, d0
db 0x48, 0x40 ; file 00CF34 | 68k swap d0
db 0x28, 0xC0 ; file 00CF36 | 68k move.l d0, (a4)+
db 0x60, 0x00, 0xFB, 0x98 ; file 00CF38 | 68k bra.w $536c
db 0x3A, 0x18 ; file 00CF3C | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00CF3E | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00CF40 | 68k ror.w #$8, d4
db 0x30, 0x04 ; file 00CF42 | 68k move.w d4, d0
db 0x48, 0x40 ; file 00CF44 | 68k swap d0
db 0x30, 0x05 ; file 00CF46 | 68k move.w d5, d0
db 0x22, 0xC0 ; file 00CF48 | 68k move.l d0, (a1)+
db 0xE1, 0x98 ; file 00CF4A | 68k rol.l #$8, d0
db 0x24, 0xC0 ; file 00CF4C | 68k move.l d0, (a2)+
db 0x48, 0x40 ; file 00CF4E | 68k swap d0
db 0x30, 0x05 ; file 00CF50 | 68k move.w d5, d0
db 0x48, 0x40 ; file 00CF52 | 68k swap d0
db 0x26, 0xC0 ; file 00CF54 | 68k move.l d0, (a3)+
db 0xE1, 0x88 ; file 00CF56 | 68k lsl.l #$8, d0
db 0x10, 0x05 ; file 00CF58 | 68k move.b d5, d0
db 0x28, 0xC0 ; file 00CF5A | 68k move.l d0, (a4)+
db 0x60, 0x00, 0xFB, 0x74 ; file 00CF5C | 68k bra.w $536c
db 0x3A, 0x18 ; file 00CF60 | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00CF62 | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00CF64 | 68k ror.w #$8, d4
db 0x30, 0x04 ; file 00CF66 | 68k move.w d4, d0
db 0x10, 0x05 ; file 00CF68 | 68k move.b d5, d0
db 0x48, 0x40 ; file 00CF6A | 68k swap d0
db 0x30, 0x05 ; file 00CF6C | 68k move.w d5, d0
db 0x10, 0x04 ; file 00CF6E | 68k move.b d4, d0
db 0x22, 0xC0 ; file 00CF70 | 68k move.l d0, (a1)+
db 0xE1, 0x98 ; file 00CF72 | 68k rol.l #$8, d0
db 0x24, 0xC0 ; file 00CF74 | 68k move.l d0, (a2)+
db 0xE1, 0x98 ; file 00CF76 | 68k rol.l #$8, d0
db 0x26, 0xC0 ; file 00CF78 | 68k move.l d0, (a3)+
db 0xE1, 0x88 ; file 00CF7A | 68k lsl.l #$8, d0
db 0x10, 0x05 ; file 00CF7C | 68k move.b d5, d0
db 0x28, 0xC0 ; file 00CF7E | 68k move.l d0, (a4)+
db 0x60, 0x00, 0xFB, 0x50 ; file 00CF80 | 68k bra.w $536c
db 0x3A, 0x18 ; file 00CF84 | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00CF86 | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00CF88 | 68k ror.w #$8, d4
db 0x30, 0x04 ; file 00CF8A | 68k move.w d4, d0
db 0x10, 0x05 ; file 00CF8C | 68k move.b d5, d0
db 0x48, 0x40 ; file 00CF8E | 68k swap d0
db 0x30, 0x04 ; file 00CF90 | 68k move.w d4, d0
db 0x22, 0xC0 ; file 00CF92 | 68k move.l d0, (a1)+
db 0x30, 0x05 ; file 00CF94 | 68k move.w d5, d0
db 0x10, 0x04 ; file 00CF96 | 68k move.b d4, d0
db 0x24, 0xC0 ; file 00CF98 | 68k move.l d0, (a2)+
db 0x30, 0x04 ; file 00CF9A | 68k move.w d4, d0
db 0x48, 0x40 ; file 00CF9C | 68k swap d0
db 0x30, 0x05 ; file 00CF9E | 68k move.w d5, d0
db 0x26, 0xC0 ; file 00CFA0 | 68k move.l d0, (a3)+
db 0xE1, 0x98 ; file 00CFA2 | 68k rol.l #$8, d0
db 0x28, 0xC0 ; file 00CFA4 | 68k move.l d0, (a4)+
db 0x60, 0x00, 0xFB, 0x2A ; file 00CFA6 | 68k bra.w $536c
db 0x3A, 0x18 ; file 00CFAA | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00CFAC | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00CFAE | 68k ror.w #$8, d4
db 0x30, 0x04 ; file 00CFB0 | 68k move.w d4, d0
db 0x48, 0x40 ; file 00CFB2 | 68k swap d0
db 0x30, 0x05 ; file 00CFB4 | 68k move.w d5, d0
db 0x22, 0xC0 ; file 00CFB6 | 68k move.l d0, (a1)+
db 0xE0, 0x98 ; file 00CFB8 | 68k ror.l #$8, d0
db 0x24, 0xC0 ; file 00CFBA | 68k move.l d0, (a2)+
db 0x30, 0x04 ; file 00CFBC | 68k move.w d4, d0
db 0x26, 0xC0 ; file 00CFBE | 68k move.l d0, (a3)+
db 0x10, 0x05 ; file 00CFC0 | 68k move.b d5, d0
db 0x28, 0xC0 ; file 00CFC2 | 68k move.l d0, (a4)+
db 0x60, 0x00, 0xFB, 0x0C ; file 00CFC4 | 68k bra.w $536c
db 0x3A, 0x18 ; file 00CFC8 | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00CFCA | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00CFCC | 68k ror.w #$8, d4
db 0x30, 0x05 ; file 00CFCE | 68k move.w d5, d0
db 0x10, 0x04 ; file 00CFD0 | 68k move.b d4, d0
db 0x48, 0x40 ; file 00CFD2 | 68k swap d0
db 0x30, 0x04 ; file 00CFD4 | 68k move.w d4, d0
db 0x10, 0x05 ; file 00CFD6 | 68k move.b d5, d0
db 0x22, 0xC0 ; file 00CFD8 | 68k move.l d0, (a1)+
db 0xE0, 0x98 ; file 00CFDA | 68k ror.l #$8, d0
db 0x24, 0xC0 ; file 00CFDC | 68k move.l d0, (a2)+
db 0xE0, 0x98 ; file 00CFDE | 68k ror.l #$8, d0
db 0x26, 0xC0 ; file 00CFE0 | 68k move.l d0, (a3)+
db 0x30, 0x04 ; file 00CFE2 | 68k move.w d4, d0
db 0x28, 0xC0 ; file 00CFE4 | 68k move.l d0, (a4)+
db 0x60, 0x00, 0xFA, 0xEA ; file 00CFE6 | 68k bra.w $536c
db 0x3A, 0x18 ; file 00CFEA | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00CFEC | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00CFEE | 68k ror.w #$8, d4
db 0x30, 0x05 ; file 00CFF0 | 68k move.w d5, d0
db 0x48, 0x40 ; file 00CFF2 | 68k swap d0
db 0x30, 0x04 ; file 00CFF4 | 68k move.w d4, d0
db 0x10, 0x05 ; file 00CFF6 | 68k move.b d5, d0
db 0x22, 0xC0 ; file 00CFF8 | 68k move.l d0, (a1)+
db 0x48, 0x40 ; file 00CFFA | 68k swap d0
db 0x10, 0x04 ; file 00CFFC | 68k move.b d4, d0
db 0x48, 0x40 ; file 00CFFE | 68k swap d0
db 0x24, 0xC0 ; file 00D000 | 68k move.l d0, (a2)+
db 0xE0, 0x98 ; file 00D002 | 68k ror.l #$8, d0
db 0x26, 0xC0 ; file 00D004 | 68k move.l d0, (a3)+
db 0xE0, 0x98 ; file 00D006 | 68k ror.l #$8, d0
db 0x28, 0xC0 ; file 00D008 | 68k move.l d0, (a4)+
db 0x60, 0x00, 0xFA, 0xC6 ; file 00D00A | 68k bra.w $536c
db 0x3A, 0x18 ; file 00D00E | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00D010 | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00D012 | 68k ror.w #$8, d4
db 0x30, 0x05 ; file 00D014 | 68k move.w d5, d0
db 0x10, 0x04 ; file 00D016 | 68k move.b d4, d0
db 0x48, 0x40 ; file 00D018 | 68k swap d0
db 0x30, 0x05 ; file 00D01A | 68k move.w d5, d0
db 0x10, 0x04 ; file 00D01C | 68k move.b d4, d0
db 0x22, 0xC0 ; file 00D01E | 68k move.l d0, (a1)+
db 0x30, 0x04 ; file 00D020 | 68k move.w d4, d0
db 0x10, 0x05 ; file 00D022 | 68k move.b d5, d0
db 0x48, 0x40 ; file 00D024 | 68k swap d0
db 0x30, 0x04 ; file 00D026 | 68k move.w d4, d0
db 0x10, 0x05 ; file 00D028 | 68k move.b d5, d0
db 0x24, 0xC0 ; file 00D02A | 68k move.l d0, (a2)+
db 0x26, 0xC0 ; file 00D02C | 68k move.l d0, (a3)+
db 0x28, 0xC0 ; file 00D02E | 68k move.l d0, (a4)+
db 0x60, 0x00, 0xFA, 0xA0 ; file 00D030 | 68k bra.w $536c
db 0x3A, 0x18 ; file 00D034 | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00D036 | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00D038 | 68k ror.w #$8, d4
db 0x30, 0x05 ; file 00D03A | 68k move.w d5, d0
db 0x10, 0x04 ; file 00D03C | 68k move.b d4, d0
db 0x48, 0x40 ; file 00D03E | 68k swap d0
db 0x30, 0x05 ; file 00D040 | 68k move.w d5, d0
db 0x10, 0x04 ; file 00D042 | 68k move.b d4, d0
db 0x22, 0xC0 ; file 00D044 | 68k move.l d0, (a1)+
db 0x24, 0xC0 ; file 00D046 | 68k move.l d0, (a2)+
db 0x30, 0x04 ; file 00D048 | 68k move.w d4, d0
db 0x10, 0x05 ; file 00D04A | 68k move.b d5, d0
db 0x48, 0x40 ; file 00D04C | 68k swap d0
db 0x30, 0x04 ; file 00D04E | 68k move.w d4, d0
db 0x10, 0x05 ; file 00D050 | 68k move.b d5, d0
db 0x26, 0xC0 ; file 00D052 | 68k move.l d0, (a3)+
db 0x28, 0xC0 ; file 00D054 | 68k move.l d0, (a4)+
db 0x60, 0x00, 0xFA, 0x7A ; file 00D056 | 68k bra.w $536c
db 0x3A, 0x18 ; file 00D05A | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00D05C | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00D05E | 68k ror.w #$8, d4
db 0x30, 0x05 ; file 00D060 | 68k move.w d5, d0
db 0x10, 0x04 ; file 00D062 | 68k move.b d4, d0
db 0x48, 0x40 ; file 00D064 | 68k swap d0
db 0x30, 0x05 ; file 00D066 | 68k move.w d5, d0
db 0x10, 0x04 ; file 00D068 | 68k move.b d4, d0
db 0x22, 0xC0 ; file 00D06A | 68k move.l d0, (a1)+
db 0x24, 0xC0 ; file 00D06C | 68k move.l d0, (a2)+
db 0x26, 0xC0 ; file 00D06E | 68k move.l d0, (a3)+
db 0x30, 0x04 ; file 00D070 | 68k move.w d4, d0
db 0x10, 0x05 ; file 00D072 | 68k move.b d5, d0
db 0x48, 0x40 ; file 00D074 | 68k swap d0
db 0x30, 0x04 ; file 00D076 | 68k move.w d4, d0
db 0x10, 0x05 ; file 00D078 | 68k move.b d5, d0
db 0x28, 0xC0 ; file 00D07A | 68k move.l d0, (a4)+
db 0x60, 0x00, 0xFA, 0x54 ; file 00D07C | 68k bra.w $536c
db 0x3A, 0x18 ; file 00D080 | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00D082 | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00D084 | 68k ror.w #$8, d4
db 0x30, 0x04 ; file 00D086 | 68k move.w d4, d0
db 0x10, 0x05 ; file 00D088 | 68k move.b d5, d0
db 0x48, 0x40 ; file 00D08A | 68k swap d0
db 0x30, 0x04 ; file 00D08C | 68k move.w d4, d0
db 0x22, 0xC0 ; file 00D08E | 68k move.l d0, (a1)+
db 0x24, 0xC0 ; file 00D090 | 68k move.l d0, (a2)+
db 0x26, 0xC0 ; file 00D092 | 68k move.l d0, (a3)+
db 0x28, 0xC0 ; file 00D094 | 68k move.l d0, (a4)+
db 0x60, 0x00, 0xFA, 0x3A ; file 00D096 | 68k bra.w $536c
db 0x3A, 0x18 ; file 00D09A | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00D09C | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00D09E | 68k ror.w #$8, d4
db 0x30, 0x04 ; file 00D0A0 | 68k move.w d4, d0
db 0x10, 0x05 ; file 00D0A2 | 68k move.b d5, d0
db 0x48, 0x40 ; file 00D0A4 | 68k swap d0
db 0x30, 0x05 ; file 00D0A6 | 68k move.w d5, d0
db 0x10, 0x04 ; file 00D0A8 | 68k move.b d4, d0
db 0x22, 0xC0 ; file 00D0AA | 68k move.l d0, (a1)+
db 0x24, 0xC0 ; file 00D0AC | 68k move.l d0, (a2)+
db 0x26, 0xC0 ; file 00D0AE | 68k move.l d0, (a3)+
db 0x28, 0xC0 ; file 00D0B0 | 68k move.l d0, (a4)+
db 0x60, 0x00, 0xFA, 0x1E ; file 00D0B2 | 68k bra.w $536c
db 0x3A, 0x18 ; file 00D0B6 | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00D0B8 | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00D0BA | 68k ror.w #$8, d4
db 0x30, 0x04 ; file 00D0BC | 68k move.w d4, d0
db 0x48, 0x40 ; file 00D0BE | 68k swap d0
db 0x30, 0x05 ; file 00D0C0 | 68k move.w d5, d0
db 0x10, 0x04 ; file 00D0C2 | 68k move.b d4, d0
db 0x22, 0xC0 ; file 00D0C4 | 68k move.l d0, (a1)+
db 0x24, 0xC0 ; file 00D0C6 | 68k move.l d0, (a2)+
db 0x26, 0xC0 ; file 00D0C8 | 68k move.l d0, (a3)+
db 0x28, 0xC0 ; file 00D0CA | 68k move.l d0, (a4)+
db 0x60, 0x00, 0xFA, 0x04 ; file 00D0CC | 68k bra.w $536c
db 0x3A, 0x18 ; file 00D0D0 | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00D0D2 | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00D0D4 | 68k ror.w #$8, d4
db 0x30, 0x04 ; file 00D0D6 | 68k move.w d4, d0
db 0x48, 0x40 ; file 00D0D8 | 68k swap d0
db 0x30, 0x05 ; file 00D0DA | 68k move.w d5, d0
db 0x22, 0xC0 ; file 00D0DC | 68k move.l d0, (a1)+
db 0x24, 0xC0 ; file 00D0DE | 68k move.l d0, (a2)+
db 0x26, 0xC0 ; file 00D0E0 | 68k move.l d0, (a3)+
db 0x28, 0xC0 ; file 00D0E2 | 68k move.l d0, (a4)+
db 0x60, 0x00, 0xF9, 0xEC ; file 00D0E4 | 68k bra.w $536c
db 0x3A, 0x18 ; file 00D0E8 | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00D0EA | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00D0EC | 68k ror.w #$8, d4
db 0x30, 0x05 ; file 00D0EE | 68k move.w d5, d0
db 0x10, 0x04 ; file 00D0F0 | 68k move.b d4, d0
db 0x48, 0x40 ; file 00D0F2 | 68k swap d0
db 0x30, 0x04 ; file 00D0F4 | 68k move.w d4, d0
db 0x10, 0x05 ; file 00D0F6 | 68k move.b d5, d0
db 0x22, 0xC0 ; file 00D0F8 | 68k move.l d0, (a1)+
db 0x24, 0xC0 ; file 00D0FA | 68k move.l d0, (a2)+
db 0x26, 0xC0 ; file 00D0FC | 68k move.l d0, (a3)+
db 0x28, 0xC0 ; file 00D0FE | 68k move.l d0, (a4)+
db 0x60, 0x00, 0xF9, 0xD0 ; file 00D100 | 68k bra.w $536c
db 0x3A, 0x18 ; file 00D104 | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00D106 | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00D108 | 68k ror.w #$8, d4
db 0x30, 0x04 ; file 00D10A | 68k move.w d4, d0
db 0x10, 0x05 ; file 00D10C | 68k move.b d5, d0
db 0x48, 0x40 ; file 00D10E | 68k swap d0
db 0x30, 0x04 ; file 00D110 | 68k move.w d4, d0
db 0x10, 0x05 ; file 00D112 | 68k move.b d5, d0
db 0x22, 0xC0 ; file 00D114 | 68k move.l d0, (a1)+
db 0x28, 0xC0 ; file 00D116 | 68k move.l d0, (a4)+
db 0x30, 0x05 ; file 00D118 | 68k move.w d5, d0
db 0x10, 0x04 ; file 00D11A | 68k move.b d4, d0
db 0x48, 0x40 ; file 00D11C | 68k swap d0
db 0x30, 0x05 ; file 00D11E | 68k move.w d5, d0
db 0x10, 0x04 ; file 00D120 | 68k move.b d4, d0
db 0x24, 0xC0 ; file 00D122 | 68k move.l d0, (a2)+
db 0x26, 0xC0 ; file 00D124 | 68k move.l d0, (a3)+
db 0x60, 0x00, 0xF9, 0xAA ; file 00D126 | 68k bra.w $536c
db 0x3A, 0x18 ; file 00D12A | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00D12C | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00D12E | 68k ror.w #$8, d4
db 0x30, 0x04 ; file 00D130 | 68k move.w d4, d0
db 0x10, 0x05 ; file 00D132 | 68k move.b d5, d0
db 0x48, 0x40 ; file 00D134 | 68k swap d0
db 0x30, 0x04 ; file 00D136 | 68k move.w d4, d0
db 0x10, 0x05 ; file 00D138 | 68k move.b d5, d0
db 0x22, 0xC0 ; file 00D13A | 68k move.l d0, (a1)+
db 0x24, 0xC0 ; file 00D13C | 68k move.l d0, (a2)+
db 0x30, 0x05 ; file 00D13E | 68k move.w d5, d0
db 0x10, 0x04 ; file 00D140 | 68k move.b d4, d0
db 0x48, 0x40 ; file 00D142 | 68k swap d0
db 0x30, 0x05 ; file 00D144 | 68k move.w d5, d0
db 0x10, 0x04 ; file 00D146 | 68k move.b d4, d0
db 0x26, 0xC0 ; file 00D148 | 68k move.l d0, (a3)+
db 0x28, 0xC0 ; file 00D14A | 68k move.l d0, (a4)+
db 0x60, 0x00, 0xF9, 0x84 ; file 00D14C | 68k bra.w $536c
db 0x3A, 0x18 ; file 00D150 | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00D152 | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00D154 | 68k ror.w #$8, d4
db 0x30, 0x05 ; file 00D156 | 68k move.w d5, d0
db 0x10, 0x04 ; file 00D158 | 68k move.b d4, d0
db 0x48, 0x40 ; file 00D15A | 68k swap d0
db 0x30, 0x05 ; file 00D15C | 68k move.w d5, d0
db 0x10, 0x04 ; file 00D15E | 68k move.b d4, d0
db 0x22, 0xC0 ; file 00D160 | 68k move.l d0, (a1)+
db 0x24, 0xC0 ; file 00D162 | 68k move.l d0, (a2)+
db 0x30, 0x04 ; file 00D164 | 68k move.w d4, d0
db 0x10, 0x05 ; file 00D166 | 68k move.b d5, d0
db 0x26, 0xC0 ; file 00D168 | 68k move.l d0, (a3)+
db 0x28, 0xC0 ; file 00D16A | 68k move.l d0, (a4)+
db 0x60, 0x00, 0xF9, 0x64 ; file 00D16C | 68k bra.w $536c
db 0x3A, 0x18 ; file 00D170 | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00D172 | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00D174 | 68k ror.w #$8, d4
db 0x30, 0x04 ; file 00D176 | 68k move.w d4, d0
db 0x10, 0x05 ; file 00D178 | 68k move.b d5, d0
db 0x48, 0x40 ; file 00D17A | 68k swap d0
db 0x30, 0x04 ; file 00D17C | 68k move.w d4, d0
db 0x10, 0x05 ; file 00D17E | 68k move.b d5, d0
db 0x22, 0xC0 ; file 00D180 | 68k move.l d0, (a1)+
db 0x30, 0x04 ; file 00D182 | 68k move.w d4, d0
db 0x48, 0x40 ; file 00D184 | 68k swap d0
db 0x30, 0x05 ; file 00D186 | 68k move.w d5, d0
db 0x10, 0x04 ; file 00D188 | 68k move.b d4, d0
db 0x24, 0xC0 ; file 00D18A | 68k move.l d0, (a2)+
db 0x26, 0xC0 ; file 00D18C | 68k move.l d0, (a3)+
db 0x30, 0x05 ; file 00D18E | 68k move.w d5, d0
db 0x28, 0xC0 ; file 00D190 | 68k move.l d0, (a4)+
db 0x60, 0x00, 0xF9, 0x3E ; file 00D192 | 68k bra.w $536c
db 0x3A, 0x18 ; file 00D196 | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00D198 | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00D19A | 68k ror.w #$8, d4
db 0x30, 0x05 ; file 00D19C | 68k move.w d5, d0
db 0x10, 0x04 ; file 00D19E | 68k move.b d4, d0
db 0x48, 0x40 ; file 00D1A0 | 68k swap d0
db 0x30, 0x05 ; file 00D1A2 | 68k move.w d5, d0
db 0x10, 0x04 ; file 00D1A4 | 68k move.b d4, d0
db 0x22, 0xC0 ; file 00D1A6 | 68k move.l d0, (a1)+
db 0x24, 0xC0 ; file 00D1A8 | 68k move.l d0, (a2)+
db 0x48, 0x40 ; file 00D1AA | 68k swap d0
db 0x30, 0x04 ; file 00D1AC | 68k move.w d4, d0
db 0x10, 0x05 ; file 00D1AE | 68k move.b d5, d0
db 0x48, 0x40 ; file 00D1B0 | 68k swap d0
db 0x26, 0xC0 ; file 00D1B2 | 68k move.l d0, (a3)+
db 0x28, 0xC0 ; file 00D1B4 | 68k move.l d0, (a4)+
db 0x60, 0x00, 0xF9, 0x1A ; file 00D1B6 | 68k bra.w $536c
db 0x3A, 0x18 ; file 00D1BA | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00D1BC | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00D1BE | 68k ror.w #$8, d4
db 0x30, 0x04 ; file 00D1C0 | 68k move.w d4, d0
db 0x10, 0x05 ; file 00D1C2 | 68k move.b d5, d0
db 0x48, 0x40 ; file 00D1C4 | 68k swap d0
db 0x30, 0x04 ; file 00D1C6 | 68k move.w d4, d0
db 0x10, 0x05 ; file 00D1C8 | 68k move.b d5, d0
db 0x22, 0xC0 ; file 00D1CA | 68k move.l d0, (a1)+
db 0x30, 0x05 ; file 00D1CC | 68k move.w d5, d0
db 0x10, 0x04 ; file 00D1CE | 68k move.b d4, d0
db 0x48, 0x40 ; file 00D1D0 | 68k swap d0
db 0x30, 0x05 ; file 00D1D2 | 68k move.w d5, d0
db 0x24, 0xC0 ; file 00D1D4 | 68k move.l d0, (a2)+
db 0x26, 0xC0 ; file 00D1D6 | 68k move.l d0, (a3)+
db 0x30, 0x04 ; file 00D1D8 | 68k move.w d4, d0
db 0x48, 0x40 ; file 00D1DA | 68k swap d0
db 0x30, 0x05 ; file 00D1DC | 68k move.w d5, d0
db 0x28, 0xC0 ; file 00D1DE | 68k move.l d0, (a4)+
db 0x60, 0x00, 0xF8, 0xF0 ; file 00D1E0 | 68k bra.w $536c
db 0x3A, 0x18 ; file 00D1E4 | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00D1E6 | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00D1E8 | 68k ror.w #$8, d4
db 0x30, 0x05 ; file 00D1EA | 68k move.w d5, d0
db 0x10, 0x04 ; file 00D1EC | 68k move.b d4, d0
db 0x48, 0x40 ; file 00D1EE | 68k swap d0
db 0x30, 0x05 ; file 00D1F0 | 68k move.w d5, d0
db 0x10, 0x04 ; file 00D1F2 | 68k move.b d4, d0
db 0x26, 0xC0 ; file 00D1F4 | 68k move.l d0, (a3)+
db 0x28, 0xC0 ; file 00D1F6 | 68k move.l d0, (a4)+
db 0x30, 0x04 ; file 00D1F8 | 68k move.w d4, d0
db 0x10, 0x05 ; file 00D1FA | 68k move.b d5, d0
db 0x22, 0xC0 ; file 00D1FC | 68k move.l d0, (a1)+
db 0x24, 0xC0 ; file 00D1FE | 68k move.l d0, (a2)+
db 0x60, 0x00, 0xF8, 0xD0 ; file 00D200 | 68k bra.w $536c
db 0x3A, 0x18 ; file 00D204 | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00D206 | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00D208 | 68k ror.w #$8, d4
db 0x30, 0x04 ; file 00D20A | 68k move.w d4, d0
db 0x48, 0x40 ; file 00D20C | 68k swap d0
db 0x30, 0x05 ; file 00D20E | 68k move.w d5, d0
db 0x22, 0xC0 ; file 00D210 | 68k move.l d0, (a1)+
db 0x10, 0x04 ; file 00D212 | 68k move.b d4, d0
db 0x24, 0xC0 ; file 00D214 | 68k move.l d0, (a2)+
db 0x26, 0xC0 ; file 00D216 | 68k move.l d0, (a3)+
db 0x30, 0x04 ; file 00D218 | 68k move.w d4, d0
db 0x10, 0x05 ; file 00D21A | 68k move.b d5, d0
db 0x48, 0x40 ; file 00D21C | 68k swap d0
db 0x30, 0x04 ; file 00D21E | 68k move.w d4, d0
db 0x10, 0x05 ; file 00D220 | 68k move.b d5, d0
db 0x28, 0xC0 ; file 00D222 | 68k move.l d0, (a4)+
db 0x60, 0x00, 0xF8, 0xAC ; file 00D224 | 68k bra.w $536c
db 0x3A, 0x18 ; file 00D228 | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00D22A | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00D22C | 68k ror.w #$8, d4
db 0x30, 0x04 ; file 00D22E | 68k move.w d4, d0
db 0x10, 0x05 ; file 00D230 | 68k move.b d5, d0
db 0x48, 0x40 ; file 00D232 | 68k swap d0
db 0x30, 0x05 ; file 00D234 | 68k move.w d5, d0
db 0x10, 0x04 ; file 00D236 | 68k move.b d4, d0
db 0x22, 0xC0 ; file 00D238 | 68k move.l d0, (a1)+
db 0x24, 0xC0 ; file 00D23A | 68k move.l d0, (a2)+
db 0x48, 0x40 ; file 00D23C | 68k swap d0
db 0x30, 0x05 ; file 00D23E | 68k move.w d5, d0
db 0x10, 0x04 ; file 00D240 | 68k move.b d4, d0
db 0x26, 0xC0 ; file 00D242 | 68k move.l d0, (a3)+
db 0x28, 0xC0 ; file 00D244 | 68k move.l d0, (a4)+
db 0x60, 0x00, 0xF8, 0x8A ; file 00D246 | 68k bra.w $536c
db 0x3A, 0x18 ; file 00D24A | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00D24C | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00D24E | 68k ror.w #$8, d4
db 0x30, 0x04 ; file 00D250 | 68k move.w d4, d0
db 0x48, 0x40 ; file 00D252 | 68k swap d0
db 0x30, 0x05 ; file 00D254 | 68k move.w d5, d0
db 0x22, 0xC0 ; file 00D256 | 68k move.l d0, (a1)+
db 0x10, 0x04 ; file 00D258 | 68k move.b d4, d0
db 0x48, 0x40 ; file 00D25A | 68k swap d0
db 0x30, 0x05 ; file 00D25C | 68k move.w d5, d0
db 0x24, 0xC0 ; file 00D25E | 68k move.l d0, (a2)+
db 0x26, 0xC0 ; file 00D260 | 68k move.l d0, (a3)+
db 0x30, 0x04 ; file 00D262 | 68k move.w d4, d0
db 0x10, 0x05 ; file 00D264 | 68k move.b d5, d0
db 0x48, 0x40 ; file 00D266 | 68k swap d0
db 0x30, 0x04 ; file 00D268 | 68k move.w d4, d0
db 0x10, 0x05 ; file 00D26A | 68k move.b d5, d0
db 0x28, 0xC0 ; file 00D26C | 68k move.l d0, (a4)+
db 0x60, 0x00, 0xF8, 0x62 ; file 00D26E | 68k bra.w $536c
db 0x3A, 0x18 ; file 00D272 | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00D274 | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00D276 | 68k ror.w #$8, d4
db 0x30, 0x04 ; file 00D278 | 68k move.w d4, d0
db 0x48, 0x40 ; file 00D27A | 68k swap d0
db 0x30, 0x04 ; file 00D27C | 68k move.w d4, d0
db 0x10, 0x05 ; file 00D27E | 68k move.b d5, d0
db 0x22, 0xC0 ; file 00D280 | 68k move.l d0, (a1)+
db 0x30, 0x05 ; file 00D282 | 68k move.w d5, d0
db 0x48, 0x40 ; file 00D284 | 68k swap d0
db 0x10, 0x05 ; file 00D286 | 68k move.b d5, d0
db 0x24, 0xC0 ; file 00D288 | 68k move.l d0, (a2)+
db 0x48, 0x40 ; file 00D28A | 68k swap d0
db 0x30, 0x04 ; file 00D28C | 68k move.w d4, d0
db 0x10, 0x05 ; file 00D28E | 68k move.b d5, d0
db 0x26, 0xC0 ; file 00D290 | 68k move.l d0, (a3)+
db 0x28, 0xC0 ; file 00D292 | 68k move.l d0, (a4)+
db 0x60, 0x00, 0xF8, 0x3C ; file 00D294 | 68k bra.w $536c
db 0x3A, 0x18 ; file 00D298 | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00D29A | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00D29C | 68k ror.w #$8, d4
db 0x30, 0x04 ; file 00D29E | 68k move.w d4, d0
db 0x10, 0x05 ; file 00D2A0 | 68k move.b d5, d0
db 0x48, 0x40 ; file 00D2A2 | 68k swap d0
db 0x30, 0x05 ; file 00D2A4 | 68k move.w d5, d0
db 0x22, 0xC0 ; file 00D2A6 | 68k move.l d0, (a1)+
db 0x48, 0x40 ; file 00D2A8 | 68k swap d0
db 0x26, 0xC0 ; file 00D2AA | 68k move.l d0, (a3)+
db 0xE0, 0x98 ; file 00D2AC | 68k ror.l #$8, d0
db 0x24, 0xC0 ; file 00D2AE | 68k move.l d0, (a2)+
db 0x48, 0x40 ; file 00D2B0 | 68k swap d0
db 0x10, 0x05 ; file 00D2B2 | 68k move.b d5, d0
db 0x28, 0xC0 ; file 00D2B4 | 68k move.l d0, (a4)+
db 0x60, 0x00, 0xF8, 0x1A ; file 00D2B6 | 68k bra.w $536c
db 0x3A, 0x18 ; file 00D2BA | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00D2BC | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00D2BE | 68k ror.w #$8, d4
db 0x30, 0x04 ; file 00D2C0 | 68k move.w d4, d0
db 0x10, 0x05 ; file 00D2C2 | 68k move.b d5, d0
db 0x48, 0x40 ; file 00D2C4 | 68k swap d0
db 0x30, 0x04 ; file 00D2C6 | 68k move.w d4, d0
db 0x22, 0xC0 ; file 00D2C8 | 68k move.l d0, (a1)+
db 0x30, 0x05 ; file 00D2CA | 68k move.w d5, d0
db 0x24, 0xC0 ; file 00D2CC | 68k move.l d0, (a2)+
db 0xE1, 0x98 ; file 00D2CE | 68k rol.l #$8, d0
db 0x26, 0xC0 ; file 00D2D0 | 68k move.l d0, (a3)+
db 0xE1, 0x98 ; file 00D2D2 | 68k rol.l #$8, d0
db 0x28, 0xC0 ; file 00D2D4 | 68k move.l d0, (a4)+
db 0x60, 0x00, 0xF7, 0xFA ; file 00D2D6 | 68k bra.w $536c
db 0x3A, 0x18 ; file 00D2DA | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00D2DC | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00D2DE | 68k ror.w #$8, d4
db 0x30, 0x04 ; file 00D2E0 | 68k move.w d4, d0
db 0x10, 0x05 ; file 00D2E2 | 68k move.b d5, d0
db 0x48, 0x40 ; file 00D2E4 | 68k swap d0
db 0x30, 0x04 ; file 00D2E6 | 68k move.w d4, d0
db 0x24, 0xC0 ; file 00D2E8 | 68k move.l d0, (a2)+
db 0x10, 0x05 ; file 00D2EA | 68k move.b d5, d0
db 0x22, 0xC0 ; file 00D2EC | 68k move.l d0, (a1)+
db 0x30, 0x05 ; file 00D2EE | 68k move.w d5, d0
db 0x26, 0xC0 ; file 00D2F0 | 68k move.l d0, (a3)+
db 0xE1, 0x98 ; file 00D2F2 | 68k rol.l #$8, d0
db 0x28, 0xC0 ; file 00D2F4 | 68k move.l d0, (a4)+
db 0x60, 0x00, 0xF7, 0xDA ; file 00D2F6 | 68k bra.w $536c
db 0x3A, 0x18 ; file 00D2FA | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00D2FC | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00D2FE | 68k ror.w #$8, d4
db 0x30, 0x04 ; file 00D300 | 68k move.w d4, d0
db 0x10, 0x05 ; file 00D302 | 68k move.b d5, d0
db 0x48, 0x40 ; file 00D304 | 68k swap d0
db 0x30, 0x05 ; file 00D306 | 68k move.w d5, d0
db 0x28, 0xC0 ; file 00D308 | 68k move.l d0, (a4)+
db 0x30, 0x04 ; file 00D30A | 68k move.w d4, d0
db 0x26, 0xC0 ; file 00D30C | 68k move.l d0, (a3)+
db 0x10, 0x05 ; file 00D30E | 68k move.b d5, d0
db 0x22, 0xC0 ; file 00D310 | 68k move.l d0, (a1)+
db 0x24, 0xC0 ; file 00D312 | 68k move.l d0, (a2)+
db 0x60, 0x00, 0xF7, 0xBC ; file 00D314 | 68k bra.w $536c
db 0x3A, 0x18 ; file 00D318 | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00D31A | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00D31C | 68k ror.w #$8, d4
db 0x30, 0x04 ; file 00D31E | 68k move.w d4, d0
db 0x10, 0x05 ; file 00D320 | 68k move.b d5, d0
db 0x48, 0x40 ; file 00D322 | 68k swap d0
db 0x30, 0x05 ; file 00D324 | 68k move.w d5, d0
db 0x22, 0xC0 ; file 00D326 | 68k move.l d0, (a1)+
db 0x30, 0x04 ; file 00D328 | 68k move.w d4, d0
db 0x24, 0xC0 ; file 00D32A | 68k move.l d0, (a2)+
db 0x10, 0x05 ; file 00D32C | 68k move.b d5, d0
db 0x26, 0xC0 ; file 00D32E | 68k move.l d0, (a3)+
db 0x28, 0xC0 ; file 00D330 | 68k move.l d0, (a4)+
db 0x60, 0x00, 0xF7, 0x9E ; file 00D332 | 68k bra.w $536c
db 0x3A, 0x18 ; file 00D336 | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00D338 | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00D33A | 68k ror.w #$8, d4
db 0x30, 0x04 ; file 00D33C | 68k move.w d4, d0
db 0x10, 0x05 ; file 00D33E | 68k move.b d5, d0
db 0x48, 0x40 ; file 00D340 | 68k swap d0
db 0x30, 0x05 ; file 00D342 | 68k move.w d5, d0
db 0x24, 0xC0 ; file 00D344 | 68k move.l d0, (a2)+
db 0x30, 0x04 ; file 00D346 | 68k move.w d4, d0
db 0x26, 0xC0 ; file 00D348 | 68k move.l d0, (a3)+
db 0x48, 0x40 ; file 00D34A | 68k swap d0
db 0x22, 0xC0 ; file 00D34C | 68k move.l d0, (a1)+
db 0x48, 0x40 ; file 00D34E | 68k swap d0
db 0x10, 0x05 ; file 00D350 | 68k move.b d5, d0
db 0x28, 0xC0 ; file 00D352 | 68k move.l d0, (a4)+
db 0x60, 0x00, 0xF7, 0x7C ; file 00D354 | 68k bra.w $536c
db 0x3A, 0x18 ; file 00D358 | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00D35A | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00D35C | 68k ror.w #$8, d4
db 0x30, 0x05 ; file 00D35E | 68k move.w d5, d0
db 0x48, 0x40 ; file 00D360 | 68k swap d0
db 0x30, 0x04 ; file 00D362 | 68k move.w d4, d0
db 0x10, 0x05 ; file 00D364 | 68k move.b d5, d0
db 0x22, 0xC0 ; file 00D366 | 68k move.l d0, (a1)+
db 0x48, 0x40 ; file 00D368 | 68k swap d0
db 0x26, 0xC0 ; file 00D36A | 68k move.l d0, (a3)+
db 0x30, 0x04 ; file 00D36C | 68k move.w d4, d0
db 0x28, 0xC0 ; file 00D36E | 68k move.l d0, (a4)+
db 0x48, 0x40 ; file 00D370 | 68k swap d0
db 0x24, 0xC0 ; file 00D372 | 68k move.l d0, (a2)+
db 0x60, 0x00, 0xF7, 0x5C ; file 00D374 | 68k bra.w $536c
db 0x3A, 0x18 ; file 00D378 | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00D37A | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00D37C | 68k ror.w #$8, d4
db 0x30, 0x04 ; file 00D37E | 68k move.w d4, d0
db 0x10, 0x05 ; file 00D380 | 68k move.b d5, d0
db 0x48, 0x40 ; file 00D382 | 68k swap d0
db 0x30, 0x05 ; file 00D384 | 68k move.w d5, d0
db 0x28, 0xC0 ; file 00D386 | 68k move.l d0, (a4)+
db 0x48, 0x40 ; file 00D388 | 68k swap d0
db 0x24, 0xC0 ; file 00D38A | 68k move.l d0, (a2)+
db 0x48, 0x40 ; file 00D38C | 68k swap d0
db 0x30, 0x04 ; file 00D38E | 68k move.w d4, d0
db 0x48, 0x40 ; file 00D390 | 68k swap d0
db 0x26, 0xC0 ; file 00D392 | 68k move.l d0, (a3)+
db 0x48, 0x40 ; file 00D394 | 68k swap d0
db 0x10, 0x05 ; file 00D396 | 68k move.b d5, d0
db 0x22, 0xC0 ; file 00D398 | 68k move.l d0, (a1)+
db 0x60, 0x00, 0xF7, 0x36 ; file 00D39A | 68k bra.w $536c
db 0x3A, 0x18 ; file 00D39E | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00D3A0 | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00D3A2 | 68k ror.w #$8, d4
db 0x30, 0x05 ; file 00D3A4 | 68k move.w d5, d0
db 0x48, 0x40 ; file 00D3A6 | 68k swap d0
db 0x30, 0x04 ; file 00D3A8 | 68k move.w d4, d0
db 0x10, 0x05 ; file 00D3AA | 68k move.b d5, d0
db 0x26, 0xC0 ; file 00D3AC | 68k move.l d0, (a3)+
db 0x48, 0x40 ; file 00D3AE | 68k swap d0
db 0x30, 0x04 ; file 00D3B0 | 68k move.w d4, d0
db 0x48, 0x40 ; file 00D3B2 | 68k swap d0
db 0x28, 0xC0 ; file 00D3B4 | 68k move.l d0, (a4)+
db 0x48, 0x40 ; file 00D3B6 | 68k swap d0
db 0x10, 0x05 ; file 00D3B8 | 68k move.b d5, d0
db 0x22, 0xC0 ; file 00D3BA | 68k move.l d0, (a1)+
db 0x24, 0xC0 ; file 00D3BC | 68k move.l d0, (a2)+
db 0x60, 0x00, 0xF7, 0x12 ; file 00D3BE | 68k bra.w $536c
db 0x3A, 0x18 ; file 00D3C2 | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00D3C4 | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00D3C6 | 68k ror.w #$8, d4
db 0x30, 0x05 ; file 00D3C8 | 68k move.w d5, d0
db 0x48, 0x40 ; file 00D3CA | 68k swap d0
db 0x30, 0x04 ; file 00D3CC | 68k move.w d4, d0
db 0x10, 0x05 ; file 00D3CE | 68k move.b d5, d0
db 0x24, 0xC0 ; file 00D3D0 | 68k move.l d0, (a2)+
db 0x26, 0xC0 ; file 00D3D2 | 68k move.l d0, (a3)+
db 0x28, 0xC0 ; file 00D3D4 | 68k move.l d0, (a4)+
db 0x30, 0x05 ; file 00D3D6 | 68k move.w d5, d0
db 0x10, 0x04 ; file 00D3D8 | 68k move.b d4, d0
db 0x48, 0x40 ; file 00D3DA | 68k swap d0
db 0x10, 0x04 ; file 00D3DC | 68k move.b d4, d0
db 0x22, 0xC0 ; file 00D3DE | 68k move.l d0, (a1)+
db 0x60, 0x00, 0xF6, 0xF0 ; file 00D3E0 | 68k bra.w $536c
db 0x3A, 0x18 ; file 00D3E4 | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00D3E6 | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00D3E8 | 68k ror.w #$8, d4
db 0x30, 0x04 ; file 00D3EA | 68k move.w d4, d0
db 0x48, 0x40 ; file 00D3EC | 68k swap d0
db 0x30, 0x04 ; file 00D3EE | 68k move.w d4, d0
db 0x10, 0x05 ; file 00D3F0 | 68k move.b d5, d0
db 0x26, 0xC0 ; file 00D3F2 | 68k move.l d0, (a3)+
db 0x28, 0xC0 ; file 00D3F4 | 68k move.l d0, (a4)+
db 0x30, 0x05 ; file 00D3F6 | 68k move.w d5, d0
db 0x10, 0x04 ; file 00D3F8 | 68k move.b d4, d0
db 0x24, 0xC0 ; file 00D3FA | 68k move.l d0, (a2)+
db 0x30, 0x04 ; file 00D3FC | 68k move.w d4, d0
db 0x10, 0x05 ; file 00D3FE | 68k move.b d5, d0
db 0x48, 0x40 ; file 00D400 | 68k swap d0
db 0x10, 0x05 ; file 00D402 | 68k move.b d5, d0
db 0x22, 0xC0 ; file 00D404 | 68k move.l d0, (a1)+
db 0x60, 0x00, 0xF6, 0xCA ; file 00D406 | 68k bra.w $536c
db 0x3A, 0x18 ; file 00D40A | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00D40C | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00D40E | 68k ror.w #$8, d4
db 0x30, 0x04 ; file 00D410 | 68k move.w d4, d0
db 0x10, 0x05 ; file 00D412 | 68k move.b d5, d0
db 0x48, 0x40 ; file 00D414 | 68k swap d0
db 0x30, 0x05 ; file 00D416 | 68k move.w d5, d0
db 0x28, 0xC0 ; file 00D418 | 68k move.l d0, (a4)+
db 0x10, 0x04 ; file 00D41A | 68k move.b d4, d0
db 0x26, 0xC0 ; file 00D41C | 68k move.l d0, (a3)+
db 0x30, 0x04 ; file 00D41E | 68k move.w d4, d0
db 0x10, 0x05 ; file 00D420 | 68k move.b d5, d0
db 0x22, 0xC0 ; file 00D422 | 68k move.l d0, (a1)+
db 0x24, 0xC0 ; file 00D424 | 68k move.l d0, (a2)+
db 0x60, 0x00, 0xF6, 0xAA ; file 00D426 | 68k bra.w $536c
db 0x3A, 0x18 ; file 00D42A | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00D42C | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00D42E | 68k ror.w #$8, d4
db 0x30, 0x04 ; file 00D430 | 68k move.w d4, d0
db 0x10, 0x05 ; file 00D432 | 68k move.b d5, d0
db 0x48, 0x40 ; file 00D434 | 68k swap d0
db 0x30, 0x04 ; file 00D436 | 68k move.w d4, d0
db 0x22, 0xC0 ; file 00D438 | 68k move.l d0, (a1)+
db 0x24, 0xC0 ; file 00D43A | 68k move.l d0, (a2)+
db 0x26, 0xC0 ; file 00D43C | 68k move.l d0, (a3)+
db 0x30, 0x05 ; file 00D43E | 68k move.w d5, d0
db 0x10, 0x04 ; file 00D440 | 68k move.b d4, d0
db 0x48, 0x40 ; file 00D442 | 68k swap d0
db 0x30, 0x05 ; file 00D444 | 68k move.w d5, d0
db 0x10, 0x04 ; file 00D446 | 68k move.b d4, d0
db 0x28, 0xC0 ; file 00D448 | 68k move.l d0, (a4)+
db 0x60, 0x00, 0xF6, 0x86 ; file 00D44A | 68k bra.w $536c
db 0x3A, 0x18 ; file 00D44E | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00D450 | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00D452 | 68k ror.w #$8, d4
db 0x30, 0x04 ; file 00D454 | 68k move.w d4, d0
db 0x10, 0x05 ; file 00D456 | 68k move.b d5, d0
db 0x48, 0x40 ; file 00D458 | 68k swap d0
db 0x30, 0x05 ; file 00D45A | 68k move.w d5, d0
db 0x22, 0xC0 ; file 00D45C | 68k move.l d0, (a1)+
db 0x24, 0xC0 ; file 00D45E | 68k move.l d0, (a2)+
db 0x30, 0x04 ; file 00D460 | 68k move.w d4, d0
db 0x10, 0x05 ; file 00D462 | 68k move.b d5, d0
db 0x28, 0xC0 ; file 00D464 | 68k move.l d0, (a4)+
db 0x30, 0x05 ; file 00D466 | 68k move.w d5, d0
db 0x10, 0x04 ; file 00D468 | 68k move.b d4, d0
db 0x48, 0x40 ; file 00D46A | 68k swap d0
db 0x30, 0x05 ; file 00D46C | 68k move.w d5, d0
db 0x26, 0xC0 ; file 00D46E | 68k move.l d0, (a3)+
db 0x60, 0x00, 0xF6, 0x60 ; file 00D470 | 68k bra.w $536c
db 0x3A, 0x18 ; file 00D474 | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00D476 | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00D478 | 68k ror.w #$8, d4
db 0x30, 0x05 ; file 00D47A | 68k move.w d5, d0
db 0x10, 0x04 ; file 00D47C | 68k move.b d4, d0
db 0x48, 0x40 ; file 00D47E | 68k swap d0
db 0x30, 0x04 ; file 00D480 | 68k move.w d4, d0
db 0x10, 0x05 ; file 00D482 | 68k move.b d5, d0
db 0x24, 0xC0 ; file 00D484 | 68k move.l d0, (a2)+
db 0x48, 0x40 ; file 00D486 | 68k swap d0
db 0x30, 0x04 ; file 00D488 | 68k move.w d4, d0
db 0x48, 0x40 ; file 00D48A | 68k swap d0
db 0x22, 0xC0 ; file 00D48C | 68k move.l d0, (a1)+
db 0x48, 0x40 ; file 00D48E | 68k swap d0
db 0x30, 0x04 ; file 00D490 | 68k move.w d4, d0
db 0x10, 0x05 ; file 00D492 | 68k move.b d5, d0
db 0x26, 0xC0 ; file 00D494 | 68k move.l d0, (a3)+
db 0x28, 0xC0 ; file 00D496 | 68k move.l d0, (a4)+
db 0x60, 0x00, 0xF6, 0x38 ; file 00D498 | 68k bra.w $536c
db 0x3A, 0x18 ; file 00D49C | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00D49E | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00D4A0 | 68k ror.w #$8, d4
db 0x30, 0x05 ; file 00D4A2 | 68k move.w d5, d0
db 0x48, 0x40 ; file 00D4A4 | 68k swap d0
db 0x30, 0x04 ; file 00D4A6 | 68k move.w d4, d0
db 0x10, 0x05 ; file 00D4A8 | 68k move.b d5, d0
db 0x22, 0xC0 ; file 00D4AA | 68k move.l d0, (a1)+
db 0x24, 0xC0 ; file 00D4AC | 68k move.l d0, (a2)+
db 0x26, 0xC0 ; file 00D4AE | 68k move.l d0, (a3)+
db 0x30, 0x05 ; file 00D4B0 | 68k move.w d5, d0
db 0x10, 0x04 ; file 00D4B2 | 68k move.b d4, d0
db 0x48, 0x40 ; file 00D4B4 | 68k swap d0
db 0x10, 0x04 ; file 00D4B6 | 68k move.b d4, d0
db 0x28, 0xC0 ; file 00D4B8 | 68k move.l d0, (a4)+
db 0x60, 0x00, 0xF6, 0x16 ; file 00D4BA | 68k bra.w $536c
db 0x3A, 0x18 ; file 00D4BE | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00D4C0 | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00D4C2 | 68k ror.w #$8, d4
db 0x30, 0x04 ; file 00D4C4 | 68k move.w d4, d0
db 0x48, 0x40 ; file 00D4C6 | 68k swap d0
db 0x30, 0x04 ; file 00D4C8 | 68k move.w d4, d0
db 0x10, 0x05 ; file 00D4CA | 68k move.b d5, d0
db 0x22, 0xC0 ; file 00D4CC | 68k move.l d0, (a1)+
db 0x24, 0xC0 ; file 00D4CE | 68k move.l d0, (a2)+
db 0x30, 0x05 ; file 00D4D0 | 68k move.w d5, d0
db 0x10, 0x04 ; file 00D4D2 | 68k move.b d4, d0
db 0x26, 0xC0 ; file 00D4D4 | 68k move.l d0, (a3)+
db 0x30, 0x04 ; file 00D4D6 | 68k move.w d4, d0
db 0x10, 0x05 ; file 00D4D8 | 68k move.b d5, d0
db 0x48, 0x40 ; file 00D4DA | 68k swap d0
db 0x10, 0x05 ; file 00D4DC | 68k move.b d5, d0
db 0x28, 0xC0 ; file 00D4DE | 68k move.l d0, (a4)+
db 0x60, 0x00, 0xF5, 0xF0 ; file 00D4E0 | 68k bra.w $536c
db 0x3A, 0x18 ; file 00D4E4 | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00D4E6 | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00D4E8 | 68k ror.w #$8, d4
db 0x30, 0x04 ; file 00D4EA | 68k move.w d4, d0
db 0x10, 0x05 ; file 00D4EC | 68k move.b d5, d0
db 0x48, 0x40 ; file 00D4EE | 68k swap d0
db 0x30, 0x05 ; file 00D4F0 | 68k move.w d5, d0
db 0x22, 0xC0 ; file 00D4F2 | 68k move.l d0, (a1)+
db 0x10, 0x04 ; file 00D4F4 | 68k move.b d4, d0
db 0x24, 0xC0 ; file 00D4F6 | 68k move.l d0, (a2)+
db 0x30, 0x04 ; file 00D4F8 | 68k move.w d4, d0
db 0x10, 0x05 ; file 00D4FA | 68k move.b d5, d0
db 0x26, 0xC0 ; file 00D4FC | 68k move.l d0, (a3)+
db 0x28, 0xC0 ; file 00D4FE | 68k move.l d0, (a4)+
db 0x60, 0x00, 0xF5, 0xD0 ; file 00D500 | 68k bra.w $536c
db 0x3A, 0x18 ; file 00D504 | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00D506 | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00D508 | 68k ror.w #$8, d4
db 0x30, 0x05 ; file 00D50A | 68k move.w d5, d0
db 0x10, 0x04 ; file 00D50C | 68k move.b d4, d0
db 0x48, 0x40 ; file 00D50E | 68k swap d0
db 0x30, 0x05 ; file 00D510 | 68k move.w d5, d0
db 0x10, 0x04 ; file 00D512 | 68k move.b d4, d0
db 0x22, 0xC0 ; file 00D514 | 68k move.l d0, (a1)+
db 0x30, 0x04 ; file 00D516 | 68k move.w d4, d0
db 0x10, 0x05 ; file 00D518 | 68k move.b d5, d0
db 0x48, 0x40 ; file 00D51A | 68k swap d0
db 0x30, 0x04 ; file 00D51C | 68k move.w d4, d0
db 0x24, 0xC0 ; file 00D51E | 68k move.l d0, (a2)+
db 0x26, 0xC0 ; file 00D520 | 68k move.l d0, (a3)+
db 0x28, 0xC0 ; file 00D522 | 68k move.l d0, (a4)+
db 0x60, 0x00, 0xF5, 0xAC ; file 00D524 | 68k bra.w $536c
db 0x3A, 0x18 ; file 00D528 | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00D52A | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00D52C | 68k ror.w #$8, d4
db 0x30, 0x04 ; file 00D52E | 68k move.w d4, d0
db 0x10, 0x05 ; file 00D530 | 68k move.b d5, d0
db 0x48, 0x40 ; file 00D532 | 68k swap d0
db 0x30, 0x05 ; file 00D534 | 68k move.w d5, d0
db 0x26, 0xC0 ; file 00D536 | 68k move.l d0, (a3)+
db 0x28, 0xC0 ; file 00D538 | 68k move.l d0, (a4)+
db 0x10, 0x04 ; file 00D53A | 68k move.b d4, d0
db 0x48, 0x40 ; file 00D53C | 68k swap d0
db 0x30, 0x05 ; file 00D53E | 68k move.w d5, d0
db 0x24, 0xC0 ; file 00D540 | 68k move.l d0, (a2)+
db 0x30, 0x04 ; file 00D542 | 68k move.w d4, d0
db 0x10, 0x05 ; file 00D544 | 68k move.b d5, d0
db 0x48, 0x40 ; file 00D546 | 68k swap d0
db 0x30, 0x04 ; file 00D548 | 68k move.w d4, d0
db 0x10, 0x05 ; file 00D54A | 68k move.b d5, d0
db 0x22, 0xC0 ; file 00D54C | 68k move.l d0, (a1)+
db 0x60, 0x00, 0xF5, 0x82 ; file 00D54E | 68k bra.w $536c
db 0x3A, 0x18 ; file 00D552 | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00D554 | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00D556 | 68k ror.w #$8, d4
db 0x30, 0x05 ; file 00D558 | 68k move.w d5, d0
db 0x10, 0x04 ; file 00D55A | 68k move.b d4, d0
db 0x48, 0x40 ; file 00D55C | 68k swap d0
db 0x30, 0x04 ; file 00D55E | 68k move.w d4, d0
db 0x10, 0x05 ; file 00D560 | 68k move.b d5, d0
db 0x26, 0xC0 ; file 00D562 | 68k move.l d0, (a3)+
db 0x48, 0x40 ; file 00D564 | 68k swap d0
db 0x30, 0x04 ; file 00D566 | 68k move.w d4, d0
db 0x48, 0x40 ; file 00D568 | 68k swap d0
db 0x28, 0xC0 ; file 00D56A | 68k move.l d0, (a4)+
db 0x48, 0x40 ; file 00D56C | 68k swap d0
db 0x10, 0x05 ; file 00D56E | 68k move.b d5, d0
db 0x22, 0xC0 ; file 00D570 | 68k move.l d0, (a1)+
db 0x24, 0xC0 ; file 00D572 | 68k move.l d0, (a2)+
db 0x60, 0x00, 0xF5, 0x5C ; file 00D574 | 68k bra.w $536c
db 0x3A, 0x18 ; file 00D578 | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00D57A | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00D57C | 68k ror.w #$8, d4
db 0x30, 0x04 ; file 00D57E | 68k move.w d4, d0
db 0x10, 0x05 ; file 00D580 | 68k move.b d5, d0
db 0x48, 0x40 ; file 00D582 | 68k swap d0
db 0x30, 0x05 ; file 00D584 | 68k move.w d5, d0
db 0x10, 0x04 ; file 00D586 | 68k move.b d4, d0
db 0x24, 0xC0 ; file 00D588 | 68k move.l d0, (a2)+
db 0x26, 0xC0 ; file 00D58A | 68k move.l d0, (a3)+
db 0x48, 0x40 ; file 00D58C | 68k swap d0
db 0x30, 0x05 ; file 00D58E | 68k move.w d5, d0
db 0x10, 0x04 ; file 00D590 | 68k move.b d4, d0
db 0x22, 0xC0 ; file 00D592 | 68k move.l d0, (a1)+
db 0x28, 0xC0 ; file 00D594 | 68k move.l d0, (a4)+
db 0x60, 0x00, 0xF5, 0x3A ; file 00D596 | 68k bra.w $536c
db 0x3A, 0x18 ; file 00D59A | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00D59C | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00D59E | 68k ror.w #$8, d4
db 0x30, 0x05 ; file 00D5A0 | 68k move.w d5, d0
db 0x10, 0x04 ; file 00D5A2 | 68k move.b d4, d0
db 0x48, 0x40 ; file 00D5A4 | 68k swap d0
db 0x30, 0x05 ; file 00D5A6 | 68k move.w d5, d0
db 0x10, 0x04 ; file 00D5A8 | 68k move.b d4, d0
db 0x22, 0xC0 ; file 00D5AA | 68k move.l d0, (a1)+
db 0x28, 0xC0 ; file 00D5AC | 68k move.l d0, (a4)+
db 0x30, 0x04 ; file 00D5AE | 68k move.w d4, d0
db 0x10, 0x05 ; file 00D5B0 | 68k move.b d5, d0
db 0x24, 0xC0 ; file 00D5B2 | 68k move.l d0, (a2)+
db 0x26, 0xC0 ; file 00D5B4 | 68k move.l d0, (a3)+
db 0x60, 0x00, 0xF5, 0x1A ; file 00D5B6 | 68k bra.w $536c
db 0x3A, 0x18 ; file 00D5BA | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00D5BC | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00D5BE | 68k ror.w #$8, d4
db 0x30, 0x05 ; file 00D5C0 | 68k move.w d5, d0
db 0x48, 0x40 ; file 00D5C2 | 68k swap d0
db 0x30, 0x04 ; file 00D5C4 | 68k move.w d4, d0
db 0x26, 0xC0 ; file 00D5C6 | 68k move.l d0, (a3)+
db 0x28, 0xC0 ; file 00D5C8 | 68k move.l d0, (a4)+
db 0x30, 0x05 ; file 00D5CA | 68k move.w d5, d0
db 0x10, 0x04 ; file 00D5CC | 68k move.b d4, d0
db 0x48, 0x40 ; file 00D5CE | 68k swap d0
db 0x10, 0x04 ; file 00D5D0 | 68k move.b d4, d0
db 0x22, 0xC0 ; file 00D5D2 | 68k move.l d0, (a1)+
db 0x24, 0xC0 ; file 00D5D4 | 68k move.l d0, (a2)+
db 0x60, 0x00, 0xF4, 0xFA ; file 00D5D6 | 68k bra.w $536c
db 0x3A, 0x18 ; file 00D5DA | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00D5DC | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00D5DE | 68k ror.w #$8, d4
db 0x30, 0x05 ; file 00D5E0 | 68k move.w d5, d0
db 0x48, 0x40 ; file 00D5E2 | 68k swap d0
db 0x30, 0x04 ; file 00D5E4 | 68k move.w d4, d0
db 0x22, 0xC0 ; file 00D5E6 | 68k move.l d0, (a1)+
db 0x24, 0xC0 ; file 00D5E8 | 68k move.l d0, (a2)+
db 0x30, 0x05 ; file 00D5EA | 68k move.w d5, d0
db 0x10, 0x04 ; file 00D5EC | 68k move.b d4, d0
db 0x48, 0x40 ; file 00D5EE | 68k swap d0
db 0x10, 0x04 ; file 00D5F0 | 68k move.b d4, d0
db 0x26, 0xC0 ; file 00D5F2 | 68k move.l d0, (a3)+
db 0x28, 0xC0 ; file 00D5F4 | 68k move.l d0, (a4)+
db 0x60, 0x00, 0xF4, 0xDA ; file 00D5F6 | 68k bra.w $536c
db 0x3A, 0x18 ; file 00D5FA | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00D5FC | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00D5FE | 68k ror.w #$8, d4
db 0x30, 0x04 ; file 00D600 | 68k move.w d4, d0
db 0x48, 0x40 ; file 00D602 | 68k swap d0
db 0x30, 0x04 ; file 00D604 | 68k move.w d4, d0
db 0x10, 0x05 ; file 00D606 | 68k move.b d5, d0
db 0x22, 0xC0 ; file 00D608 | 68k move.l d0, (a1)+
db 0x24, 0xC0 ; file 00D60A | 68k move.l d0, (a2)+
db 0x26, 0xC0 ; file 00D60C | 68k move.l d0, (a3)+
db 0x28, 0xC0 ; file 00D60E | 68k move.l d0, (a4)+
db 0x60, 0x00, 0xF4, 0xC0 ; file 00D610 | 68k bra.w $536c
db 0x3A, 0x18 ; file 00D614 | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00D616 | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00D618 | 68k ror.w #$8, d4
db 0x30, 0x04 ; file 00D61A | 68k move.w d4, d0
db 0x10, 0x05 ; file 00D61C | 68k move.b d5, d0
db 0x48, 0x40 ; file 00D61E | 68k swap d0
db 0x30, 0x05 ; file 00D620 | 68k move.w d5, d0
db 0x22, 0xC0 ; file 00D622 | 68k move.l d0, (a1)+
db 0x24, 0xC0 ; file 00D624 | 68k move.l d0, (a2)+
db 0x26, 0xC0 ; file 00D626 | 68k move.l d0, (a3)+
db 0x28, 0xC0 ; file 00D628 | 68k move.l d0, (a4)+
db 0x60, 0x00, 0xF4, 0xA6 ; file 00D62A | 68k bra.w $536c
db 0x3A, 0x18 ; file 00D62E | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00D630 | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00D632 | 68k ror.w #$8, d4
db 0x30, 0x05 ; file 00D634 | 68k move.w d5, d0
db 0x10, 0x04 ; file 00D636 | 68k move.b d4, d0
db 0x48, 0x40 ; file 00D638 | 68k swap d0
db 0x30, 0x04 ; file 00D63A | 68k move.w d4, d0
db 0x10, 0x05 ; file 00D63C | 68k move.b d5, d0
db 0x22, 0xC0 ; file 00D63E | 68k move.l d0, (a1)+
db 0x24, 0xC0 ; file 00D640 | 68k move.l d0, (a2)+
db 0x30, 0x05 ; file 00D642 | 68k move.w d5, d0
db 0x26, 0xC0 ; file 00D644 | 68k move.l d0, (a3)+
db 0x28, 0xC0 ; file 00D646 | 68k move.l d0, (a4)+
db 0x60, 0x00, 0xF4, 0x88 ; file 00D648 | 68k bra.w $536c
db 0x3A, 0x18 ; file 00D64C | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00D64E | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00D650 | 68k ror.w #$8, d4
db 0x30, 0x04 ; file 00D652 | 68k move.w d4, d0
db 0x10, 0x05 ; file 00D654 | 68k move.b d5, d0
db 0x48, 0x40 ; file 00D656 | 68k swap d0
db 0x30, 0x05 ; file 00D658 | 68k move.w d5, d0
db 0x10, 0x04 ; file 00D65A | 68k move.b d4, d0
db 0x26, 0xC0 ; file 00D65C | 68k move.l d0, (a3)+
db 0x28, 0xC0 ; file 00D65E | 68k move.l d0, (a4)+
db 0x48, 0x40 ; file 00D660 | 68k swap d0
db 0x30, 0x04 ; file 00D662 | 68k move.w d4, d0
db 0x48, 0x40 ; file 00D664 | 68k swap d0
db 0x22, 0xC0 ; file 00D666 | 68k move.l d0, (a1)+
db 0x24, 0xC0 ; file 00D668 | 68k move.l d0, (a2)+
db 0x60, 0x00, 0xF4, 0x66 ; file 00D66A | 68k bra.w $536c
db 0x3A, 0x18 ; file 00D66E | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00D670 | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00D672 | 68k ror.w #$8, d4
db 0x30, 0x04 ; file 00D674 | 68k move.w d4, d0
db 0x10, 0x05 ; file 00D676 | 68k move.b d5, d0
db 0x48, 0x40 ; file 00D678 | 68k swap d0
db 0x30, 0x04 ; file 00D67A | 68k move.w d4, d0
db 0x24, 0xC0 ; file 00D67C | 68k move.l d0, (a2)+
db 0x10, 0x05 ; file 00D67E | 68k move.b d5, d0
db 0x22, 0xC0 ; file 00D680 | 68k move.l d0, (a1)+
db 0x30, 0x05 ; file 00D682 | 68k move.w d5, d0
db 0x48, 0x40 ; file 00D684 | 68k swap d0
db 0x28, 0xC0 ; file 00D686 | 68k move.l d0, (a4)+
db 0x30, 0x05 ; file 00D688 | 68k move.w d5, d0
db 0x10, 0x04 ; file 00D68A | 68k move.b d4, d0
db 0x48, 0x40 ; file 00D68C | 68k swap d0
db 0x10, 0x04 ; file 00D68E | 68k move.b d4, d0
db 0x26, 0xC0 ; file 00D690 | 68k move.l d0, (a3)+
db 0x60, 0x00, 0xF4, 0x3E ; file 00D692 | 68k bra.w $536c
db 0x3A, 0x18 ; file 00D696 | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00D698 | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00D69A | 68k ror.w #$8, d4
db 0x30, 0x04 ; file 00D69C | 68k move.w d4, d0
db 0x10, 0x05 ; file 00D69E | 68k move.b d5, d0
db 0x48, 0x40 ; file 00D6A0 | 68k swap d0
db 0x30, 0x04 ; file 00D6A2 | 68k move.w d4, d0
db 0x28, 0xC0 ; file 00D6A4 | 68k move.l d0, (a4)+
db 0x10, 0x05 ; file 00D6A6 | 68k move.b d5, d0
db 0x22, 0xC0 ; file 00D6A8 | 68k move.l d0, (a1)+
db 0x30, 0x05 ; file 00D6AA | 68k move.w d5, d0
db 0x48, 0x40 ; file 00D6AC | 68k swap d0
db 0x24, 0xC0 ; file 00D6AE | 68k move.l d0, (a2)+
db 0x30, 0x05 ; file 00D6B0 | 68k move.w d5, d0
db 0x10, 0x04 ; file 00D6B2 | 68k move.b d4, d0
db 0x48, 0x40 ; file 00D6B4 | 68k swap d0
db 0x10, 0x04 ; file 00D6B6 | 68k move.b d4, d0
db 0x26, 0xC0 ; file 00D6B8 | 68k move.l d0, (a3)+
db 0x60, 0x00, 0xF4, 0x16 ; file 00D6BA | 68k bra.w $536c
db 0x3A, 0x18 ; file 00D6BE | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00D6C0 | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00D6C2 | 68k ror.w #$8, d4
db 0x30, 0x05 ; file 00D6C4 | 68k move.w d5, d0
db 0x48, 0x40 ; file 00D6C6 | 68k swap d0
db 0x30, 0x05 ; file 00D6C8 | 68k move.w d5, d0
db 0x10, 0x04 ; file 00D6CA | 68k move.b d4, d0
db 0x26, 0xC0 ; file 00D6CC | 68k move.l d0, (a3)+
db 0x28, 0xC0 ; file 00D6CE | 68k move.l d0, (a4)+
db 0x30, 0x04 ; file 00D6D0 | 68k move.w d4, d0
db 0x24, 0xC0 ; file 00D6D2 | 68k move.l d0, (a2)+
db 0x10, 0x05 ; file 00D6D4 | 68k move.b d5, d0
db 0x48, 0x40 ; file 00D6D6 | 68k swap d0
db 0x30, 0x04 ; file 00D6D8 | 68k move.w d4, d0
db 0x10, 0x05 ; file 00D6DA | 68k move.b d5, d0
db 0x22, 0xC0 ; file 00D6DC | 68k move.l d0, (a1)+
db 0x60, 0x00, 0xF3, 0xF2 ; file 00D6DE | 68k bra.w $536c
db 0x3A, 0x18 ; file 00D6E2 | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00D6E4 | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00D6E6 | 68k ror.w #$8, d4
db 0x30, 0x05 ; file 00D6E8 | 68k move.w d5, d0
db 0x10, 0x04 ; file 00D6EA | 68k move.b d4, d0
db 0x48, 0x40 ; file 00D6EC | 68k swap d0
db 0x30, 0x04 ; file 00D6EE | 68k move.w d4, d0
db 0x26, 0xC0 ; file 00D6F0 | 68k move.l d0, (a3)+
db 0x28, 0xC0 ; file 00D6F2 | 68k move.l d0, (a4)+
db 0x10, 0x05 ; file 00D6F4 | 68k move.b d5, d0
db 0x24, 0xC0 ; file 00D6F6 | 68k move.l d0, (a2)+
db 0x48, 0x40 ; file 00D6F8 | 68k swap d0
db 0x30, 0x04 ; file 00D6FA | 68k move.w d4, d0
db 0x10, 0x05 ; file 00D6FC | 68k move.b d5, d0
db 0x22, 0xC0 ; file 00D6FE | 68k move.l d0, (a1)+
db 0x60, 0x00, 0xF3, 0xD0 ; file 00D700 | 68k bra.w $536c
db 0x3A, 0x18 ; file 00D704 | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00D706 | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00D708 | 68k ror.w #$8, d4
db 0x30, 0x04 ; file 00D70A | 68k move.w d4, d0
db 0x10, 0x05 ; file 00D70C | 68k move.b d5, d0
db 0x48, 0x40 ; file 00D70E | 68k swap d0
db 0x30, 0x04 ; file 00D710 | 68k move.w d4, d0
db 0x10, 0x05 ; file 00D712 | 68k move.b d5, d0
db 0x22, 0xC0 ; file 00D714 | 68k move.l d0, (a1)+
db 0x26, 0xC0 ; file 00D716 | 68k move.l d0, (a3)+
db 0x30, 0x05 ; file 00D718 | 68k move.w d5, d0
db 0x10, 0x04 ; file 00D71A | 68k move.b d4, d0
db 0x48, 0x40 ; file 00D71C | 68k swap d0
db 0x30, 0x05 ; file 00D71E | 68k move.w d5, d0
db 0x10, 0x04 ; file 00D720 | 68k move.b d4, d0
db 0x24, 0xC0 ; file 00D722 | 68k move.l d0, (a2)+
db 0x28, 0xC0 ; file 00D724 | 68k move.l d0, (a4)+
db 0x60, 0x00, 0xF3, 0xAA ; file 00D726 | 68k bra.w $536c
db 0x3A, 0x18 ; file 00D72A | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00D72C | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00D72E | 68k ror.w #$8, d4
db 0x30, 0x05 ; file 00D730 | 68k move.w d5, d0
db 0x48, 0x40 ; file 00D732 | 68k swap d0
db 0x30, 0x04 ; file 00D734 | 68k move.w d4, d0
db 0x10, 0x05 ; file 00D736 | 68k move.b d5, d0
db 0x26, 0xC0 ; file 00D738 | 68k move.l d0, (a3)+
db 0x28, 0xC0 ; file 00D73A | 68k move.l d0, (a4)+
db 0x48, 0x40 ; file 00D73C | 68k swap d0
db 0x30, 0x04 ; file 00D73E | 68k move.w d4, d0
db 0x10, 0x05 ; file 00D740 | 68k move.b d5, d0
db 0x22, 0xC0 ; file 00D742 | 68k move.l d0, (a1)+
db 0x30, 0x05 ; file 00D744 | 68k move.w d5, d0
db 0x10, 0x04 ; file 00D746 | 68k move.b d4, d0
db 0x48, 0x40 ; file 00D748 | 68k swap d0
db 0x30, 0x05 ; file 00D74A | 68k move.w d5, d0
db 0x10, 0x04 ; file 00D74C | 68k move.b d4, d0
db 0x24, 0xC0 ; file 00D74E | 68k move.l d0, (a2)+
db 0x60, 0x00, 0xF3, 0x80 ; file 00D750 | 68k bra.w $536c
db 0x3A, 0x18 ; file 00D754 | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00D756 | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00D758 | 68k ror.w #$8, d4
db 0x30, 0x04 ; file 00D75A | 68k move.w d4, d0
db 0x10, 0x05 ; file 00D75C | 68k move.b d5, d0
db 0x48, 0x40 ; file 00D75E | 68k swap d0
db 0x30, 0x04 ; file 00D760 | 68k move.w d4, d0
db 0x22, 0xC0 ; file 00D762 | 68k move.l d0, (a1)+
db 0x28, 0xC0 ; file 00D764 | 68k move.l d0, (a4)+
db 0x30, 0x05 ; file 00D766 | 68k move.w d5, d0
db 0x10, 0x04 ; file 00D768 | 68k move.b d4, d0
db 0x24, 0xC0 ; file 00D76A | 68k move.l d0, (a2)+
db 0x48, 0x40 ; file 00D76C | 68k swap d0
db 0x30, 0x05 ; file 00D76E | 68k move.w d5, d0
db 0x10, 0x04 ; file 00D770 | 68k move.b d4, d0
db 0x26, 0xC0 ; file 00D772 | 68k move.l d0, (a3)+
db 0x60, 0x00, 0xF3, 0x5C ; file 00D774 | 68k bra.w $536c
db 0x3A, 0x18 ; file 00D778 | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00D77A | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00D77C | 68k ror.w #$8, d4
db 0x30, 0x05 ; file 00D77E | 68k move.w d5, d0
db 0x48, 0x40 ; file 00D780 | 68k swap d0
db 0x30, 0x04 ; file 00D782 | 68k move.w d4, d0
db 0x24, 0xC0 ; file 00D784 | 68k move.l d0, (a2)+
db 0x30, 0x05 ; file 00D786 | 68k move.w d5, d0
db 0x48, 0x40 ; file 00D788 | 68k swap d0
db 0x10, 0x04 ; file 00D78A | 68k move.b d4, d0
db 0x26, 0xC0 ; file 00D78C | 68k move.l d0, (a3)+
db 0x48, 0x40 ; file 00D78E | 68k swap d0
db 0x30, 0x04 ; file 00D790 | 68k move.w d4, d0
db 0x10, 0x05 ; file 00D792 | 68k move.b d5, d0
db 0x48, 0x40 ; file 00D794 | 68k swap d0
db 0x28, 0xC0 ; file 00D796 | 68k move.l d0, (a4)+
db 0x30, 0x04 ; file 00D798 | 68k move.w d4, d0
db 0x22, 0xC0 ; file 00D79A | 68k move.l d0, (a1)+
db 0x60, 0x00, 0xF3, 0x34 ; file 00D79C | 68k bra.w $536c
db 0x3A, 0x18 ; file 00D7A0 | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00D7A2 | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00D7A4 | 68k ror.w #$8, d4
db 0x30, 0x05 ; file 00D7A6 | 68k move.w d5, d0
db 0x48, 0x40 ; file 00D7A8 | 68k swap d0
db 0x30, 0x04 ; file 00D7AA | 68k move.w d4, d0
db 0x10, 0x05 ; file 00D7AC | 68k move.b d5, d0
db 0x26, 0xC0 ; file 00D7AE | 68k move.l d0, (a3)+
db 0x48, 0x40 ; file 00D7B0 | 68k swap d0
db 0x30, 0x04 ; file 00D7B2 | 68k move.w d4, d0
db 0x22, 0xC0 ; file 00D7B4 | 68k move.l d0, (a1)+
db 0x10, 0x05 ; file 00D7B6 | 68k move.b d5, d0
db 0x28, 0xC0 ; file 00D7B8 | 68k move.l d0, (a4)+
db 0x30, 0x05 ; file 00D7BA | 68k move.w d5, d0
db 0x10, 0x04 ; file 00D7BC | 68k move.b d4, d0
db 0x48, 0x40 ; file 00D7BE | 68k swap d0
db 0x30, 0x05 ; file 00D7C0 | 68k move.w d5, d0
db 0x10, 0x04 ; file 00D7C2 | 68k move.b d4, d0
db 0x24, 0xC0 ; file 00D7C4 | 68k move.l d0, (a2)+
db 0x60, 0x00, 0xF3, 0x0A ; file 00D7C6 | 68k bra.w $536c
db 0x3A, 0x18 ; file 00D7CA | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00D7CC | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00D7CE | 68k ror.w #$8, d4
db 0x30, 0x04 ; file 00D7D0 | 68k move.w d4, d0
db 0x10, 0x05 ; file 00D7D2 | 68k move.b d5, d0
db 0x48, 0x40 ; file 00D7D4 | 68k swap d0
db 0x30, 0x05 ; file 00D7D6 | 68k move.w d5, d0
db 0x22, 0xC0 ; file 00D7D8 | 68k move.l d0, (a1)+
db 0x24, 0xC0 ; file 00D7DA | 68k move.l d0, (a2)+
db 0x48, 0x40 ; file 00D7DC | 68k swap d0
db 0x30, 0x04 ; file 00D7DE | 68k move.w d4, d0
db 0x48, 0x40 ; file 00D7E0 | 68k swap d0
db 0x26, 0xC0 ; file 00D7E2 | 68k move.l d0, (a3)+
db 0x10, 0x04 ; file 00D7E4 | 68k move.b d4, d0
db 0x48, 0x40 ; file 00D7E6 | 68k swap d0
db 0x30, 0x05 ; file 00D7E8 | 68k move.w d5, d0
db 0x10, 0x04 ; file 00D7EA | 68k move.b d4, d0
db 0x28, 0xC0 ; file 00D7EC | 68k move.l d0, (a4)+
db 0x60, 0x00, 0xF2, 0xE2 ; file 00D7EE | 68k bra.w $536c
db 0x3A, 0x18 ; file 00D7F2 | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00D7F4 | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00D7F6 | 68k ror.w #$8, d4
db 0x30, 0x04 ; file 00D7F8 | 68k move.w d4, d0
db 0x10, 0x05 ; file 00D7FA | 68k move.b d5, d0
db 0x48, 0x40 ; file 00D7FC | 68k swap d0
db 0x30, 0x05 ; file 00D7FE | 68k move.w d5, d0
db 0x22, 0xC0 ; file 00D800 | 68k move.l d0, (a1)+
db 0x10, 0x04 ; file 00D802 | 68k move.b d4, d0
db 0x48, 0x40 ; file 00D804 | 68k swap d0
db 0x28, 0xC0 ; file 00D806 | 68k move.l d0, (a4)+
db 0x30, 0x05 ; file 00D808 | 68k move.w d5, d0
db 0x26, 0xC0 ; file 00D80A | 68k move.l d0, (a3)+
db 0x30, 0x04 ; file 00D80C | 68k move.w d4, d0
db 0x48, 0x40 ; file 00D80E | 68k swap d0
db 0x24, 0xC0 ; file 00D810 | 68k move.l d0, (a2)+
db 0x60, 0x00, 0xF2, 0xBE ; file 00D812 | 68k bra.w $536c
db 0x3A, 0x18 ; file 00D816 | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00D818 | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00D81A | 68k ror.w #$8, d4
db 0x30, 0x04 ; file 00D81C | 68k move.w d4, d0
db 0x48, 0x40 ; file 00D81E | 68k swap d0
db 0x30, 0x05 ; file 00D820 | 68k move.w d5, d0
db 0x10, 0x04 ; file 00D822 | 68k move.b d4, d0
db 0x26, 0xC0 ; file 00D824 | 68k move.l d0, (a3)+
db 0x28, 0xC0 ; file 00D826 | 68k move.l d0, (a4)+
db 0x48, 0x40 ; file 00D828 | 68k swap d0
db 0x10, 0x05 ; file 00D82A | 68k move.b d5, d0
db 0x48, 0x40 ; file 00D82C | 68k swap d0
db 0x22, 0xC0 ; file 00D82E | 68k move.l d0, (a1)+
db 0x30, 0x04 ; file 00D830 | 68k move.w d4, d0
db 0x10, 0x05 ; file 00D832 | 68k move.b d5, d0
db 0x24, 0xC0 ; file 00D834 | 68k move.l d0, (a2)+
db 0x60, 0x00, 0xF2, 0x9A ; file 00D836 | 68k bra.w $536c
db 0x3A, 0x18 ; file 00D83A | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00D83C | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00D83E | 68k ror.w #$8, d4
db 0x30, 0x04 ; file 00D840 | 68k move.w d4, d0
db 0x48, 0x40 ; file 00D842 | 68k swap d0
db 0x30, 0x05 ; file 00D844 | 68k move.w d5, d0
db 0x26, 0xC0 ; file 00D846 | 68k move.l d0, (a3)+
db 0x10, 0x04 ; file 00D848 | 68k move.b d4, d0
db 0x28, 0xC0 ; file 00D84A | 68k move.l d0, (a4)+
db 0x48, 0x40 ; file 00D84C | 68k swap d0
db 0x10, 0x05 ; file 00D84E | 68k move.b d5, d0
db 0x48, 0x40 ; file 00D850 | 68k swap d0
db 0x22, 0xC0 ; file 00D852 | 68k move.l d0, (a1)+
db 0x30, 0x05 ; file 00D854 | 68k move.w d5, d0
db 0x24, 0xC0 ; file 00D856 | 68k move.l d0, (a2)+
db 0x60, 0x00, 0xF2, 0x78 ; file 00D858 | 68k bra.w $536c
db 0x3A, 0x18 ; file 00D85C | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00D85E | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00D860 | 68k ror.w #$8, d4
db 0x30, 0x04 ; file 00D862 | 68k move.w d4, d0
db 0x10, 0x05 ; file 00D864 | 68k move.b d5, d0
db 0x48, 0x40 ; file 00D866 | 68k swap d0
db 0x30, 0x05 ; file 00D868 | 68k move.w d5, d0
db 0x10, 0x04 ; file 00D86A | 68k move.b d4, d0
db 0x22, 0xC0 ; file 00D86C | 68k move.l d0, (a1)+
db 0xE1, 0x88 ; file 00D86E | 68k lsl.l #$8, d0
db 0x10, 0x04 ; file 00D870 | 68k move.b d4, d0
db 0x24, 0xC0 ; file 00D872 | 68k move.l d0, (a2)+
db 0xE1, 0x98 ; file 00D874 | 68k rol.l #$8, d0
db 0x26, 0xC0 ; file 00D876 | 68k move.l d0, (a3)+
db 0x30, 0x04 ; file 00D878 | 68k move.w d4, d0
db 0x48, 0x40 ; file 00D87A | 68k swap d0
db 0x30, 0x04 ; file 00D87C | 68k move.w d4, d0
db 0x10, 0x05 ; file 00D87E | 68k move.b d5, d0
db 0x28, 0xC0 ; file 00D880 | 68k move.l d0, (a4)+
db 0x60, 0x00, 0xF2, 0x4E ; file 00D882 | 68k bra.w $536c
db 0x3A, 0x18 ; file 00D886 | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00D888 | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00D88A | 68k ror.w #$8, d4
db 0x30, 0x05 ; file 00D88C | 68k move.w d5, d0
db 0x48, 0x40 ; file 00D88E | 68k swap d0
db 0x30, 0x04 ; file 00D890 | 68k move.w d4, d0
db 0x10, 0x05 ; file 00D892 | 68k move.b d5, d0
db 0x24, 0xC0 ; file 00D894 | 68k move.l d0, (a2)+
db 0x48, 0x40 ; file 00D896 | 68k swap d0
db 0x10, 0x04 ; file 00D898 | 68k move.b d4, d0
db 0x22, 0xC0 ; file 00D89A | 68k move.l d0, (a1)+
db 0x28, 0xC0 ; file 00D89C | 68k move.l d0, (a4)+
db 0x48, 0x40 ; file 00D89E | 68k swap d0
db 0x30, 0x05 ; file 00D8A0 | 68k move.w d5, d0
db 0x26, 0xC0 ; file 00D8A2 | 68k move.l d0, (a3)+
db 0x60, 0x00, 0xF2, 0x2C ; file 00D8A4 | 68k bra.w $536c
db 0x3A, 0x18 ; file 00D8A8 | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00D8AA | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00D8AC | 68k ror.w #$8, d4
db 0x30, 0x05 ; file 00D8AE | 68k move.w d5, d0
db 0x48, 0x40 ; file 00D8B0 | 68k swap d0
db 0x30, 0x04 ; file 00D8B2 | 68k move.w d4, d0
db 0x26, 0xC0 ; file 00D8B4 | 68k move.l d0, (a3)+
db 0xE1, 0x98 ; file 00D8B6 | 68k rol.l #$8, d0
db 0x22, 0xC0 ; file 00D8B8 | 68k move.l d0, (a1)+
db 0x48, 0x40 ; file 00D8BA | 68k swap d0
db 0x30, 0x05 ; file 00D8BC | 68k move.w d5, d0
db 0x10, 0x04 ; file 00D8BE | 68k move.b d4, d0
db 0x24, 0xC0 ; file 00D8C0 | 68k move.l d0, (a2)+
db 0x30, 0x04 ; file 00D8C2 | 68k move.w d4, d0
db 0x10, 0x05 ; file 00D8C4 | 68k move.b d5, d0
db 0x48, 0x40 ; file 00D8C6 | 68k swap d0
db 0x30, 0x04 ; file 00D8C8 | 68k move.w d4, d0
db 0x10, 0x05 ; file 00D8CA | 68k move.b d5, d0
db 0x28, 0xC0 ; file 00D8CC | 68k move.l d0, (a4)+
db 0x60, 0x00, 0xF2, 0x02 ; file 00D8CE | 68k bra.w $536c
db 0x3A, 0x18 ; file 00D8D2 | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00D8D4 | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00D8D6 | 68k ror.w #$8, d4
db 0x30, 0x04 ; file 00D8D8 | 68k move.w d4, d0
db 0x48, 0x40 ; file 00D8DA | 68k swap d0
db 0x30, 0x04 ; file 00D8DC | 68k move.w d4, d0
db 0x10, 0x05 ; file 00D8DE | 68k move.b d5, d0
db 0x22, 0xC0 ; file 00D8E0 | 68k move.l d0, (a1)+
db 0x24, 0xC0 ; file 00D8E2 | 68k move.l d0, (a2)+
db 0x48, 0x40 ; file 00D8E4 | 68k swap d0
db 0x30, 0x05 ; file 00D8E6 | 68k move.w d5, d0
db 0x10, 0x04 ; file 00D8E8 | 68k move.b d4, d0
db 0x48, 0x40 ; file 00D8EA | 68k swap d0
db 0x26, 0xC0 ; file 00D8EC | 68k move.l d0, (a3)+
db 0x30, 0x05 ; file 00D8EE | 68k move.w d5, d0
db 0x10, 0x04 ; file 00D8F0 | 68k move.b d4, d0
db 0x28, 0xC0 ; file 00D8F2 | 68k move.l d0, (a4)+
db 0x60, 0x00, 0xF1, 0xDC ; file 00D8F4 | 68k bra.w $536c
db 0x3A, 0x18 ; file 00D8F8 | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00D8FA | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00D8FC | 68k ror.w #$8, d4
db 0x30, 0x05 ; file 00D8FE | 68k move.w d5, d0
db 0x10, 0x04 ; file 00D900 | 68k move.b d4, d0
db 0x48, 0x40 ; file 00D902 | 68k swap d0
db 0x30, 0x04 ; file 00D904 | 68k move.w d4, d0
db 0x26, 0xC0 ; file 00D906 | 68k move.l d0, (a3)+
db 0x10, 0x05 ; file 00D908 | 68k move.b d5, d0
db 0x24, 0xC0 ; file 00D90A | 68k move.l d0, (a2)+
db 0x48, 0x40 ; file 00D90C | 68k swap d0
db 0x30, 0x04 ; file 00D90E | 68k move.w d4, d0
db 0x48, 0x40 ; file 00D910 | 68k swap d0
db 0x22, 0xC0 ; file 00D912 | 68k move.l d0, (a1)+
db 0x30, 0x05 ; file 00D914 | 68k move.w d5, d0
db 0x48, 0x40 ; file 00D916 | 68k swap d0
db 0x28, 0xC0 ; file 00D918 | 68k move.l d0, (a4)+
db 0x60, 0x00, 0xF1, 0xB6 ; file 00D91A | 68k bra.w $536c
db 0x3A, 0x18 ; file 00D91E | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00D920 | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00D922 | 68k ror.w #$8, d4
db 0x30, 0x05 ; file 00D924 | 68k move.w d5, d0
db 0x48, 0x40 ; file 00D926 | 68k swap d0
db 0x30, 0x04 ; file 00D928 | 68k move.w d4, d0
db 0x26, 0xC0 ; file 00D92A | 68k move.l d0, (a3)+
db 0x28, 0xC0 ; file 00D92C | 68k move.l d0, (a4)+
db 0x10, 0x05 ; file 00D92E | 68k move.b d5, d0
db 0x48, 0x40 ; file 00D930 | 68k swap d0
db 0x10, 0x04 ; file 00D932 | 68k move.b d4, d0
db 0x48, 0x40 ; file 00D934 | 68k swap d0
db 0x24, 0xC0 ; file 00D936 | 68k move.l d0, (a2)+
db 0x48, 0x40 ; file 00D938 | 68k swap d0
db 0x30, 0x04 ; file 00D93A | 68k move.w d4, d0
db 0x48, 0x40 ; file 00D93C | 68k swap d0
db 0x22, 0xC0 ; file 00D93E | 68k move.l d0, (a1)+
db 0x60, 0x00, 0xF1, 0x90 ; file 00D940 | 68k bra.w $536c
db 0x3A, 0x18 ; file 00D944 | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00D946 | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00D948 | 68k ror.w #$8, d4
db 0x30, 0x04 ; file 00D94A | 68k move.w d4, d0
db 0x48, 0x40 ; file 00D94C | 68k swap d0
db 0x30, 0x04 ; file 00D94E | 68k move.w d4, d0
db 0x22, 0xC0 ; file 00D950 | 68k move.l d0, (a1)+
db 0x24, 0xC0 ; file 00D952 | 68k move.l d0, (a2)+
db 0x26, 0xC0 ; file 00D954 | 68k move.l d0, (a3)+
db 0x28, 0xC0 ; file 00D956 | 68k move.l d0, (a4)+
db 0x60, 0x00, 0xF1, 0x78 ; file 00D958 | 68k bra.w $536c
db 0x3A, 0x18 ; file 00D95C | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00D95E | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00D960 | 68k ror.w #$8, d4
db 0x30, 0x04 ; file 00D962 | 68k move.w d4, d0
db 0x48, 0x40 ; file 00D964 | 68k swap d0
db 0x30, 0x05 ; file 00D966 | 68k move.w d5, d0
db 0x22, 0xC0 ; file 00D968 | 68k move.l d0, (a1)+
db 0xE0, 0x98 ; file 00D96A | 68k ror.l #$8, d0
db 0x26, 0xC0 ; file 00D96C | 68k move.l d0, (a3)+
db 0x30, 0x04 ; file 00D96E | 68k move.w d4, d0
db 0x10, 0x05 ; file 00D970 | 68k move.b d5, d0
db 0x24, 0xC0 ; file 00D972 | 68k move.l d0, (a2)+
db 0x30, 0x05 ; file 00D974 | 68k move.w d5, d0
db 0x10, 0x04 ; file 00D976 | 68k move.b d4, d0
db 0x48, 0x40 ; file 00D978 | 68k swap d0
db 0x30, 0x05 ; file 00D97A | 68k move.w d5, d0
db 0x10, 0x04 ; file 00D97C | 68k move.b d4, d0
db 0x28, 0xC0 ; file 00D97E | 68k move.l d0, (a4)+
db 0x60, 0x00, 0xF1, 0x50 ; file 00D980 | 68k bra.w $536c
db 0x3A, 0x18 ; file 00D984 | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00D986 | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00D988 | 68k ror.w #$8, d4
db 0x30, 0x04 ; file 00D98A | 68k move.w d4, d0
db 0x48, 0x40 ; file 00D98C | 68k swap d0
db 0x30, 0x05 ; file 00D98E | 68k move.w d5, d0
db 0x22, 0xC0 ; file 00D990 | 68k move.l d0, (a1)+
db 0x10, 0x04 ; file 00D992 | 68k move.b d4, d0
db 0x26, 0xC0 ; file 00D994 | 68k move.l d0, (a3)+
db 0x28, 0xC0 ; file 00D996 | 68k move.l d0, (a4)+
db 0x30, 0x04 ; file 00D998 | 68k move.w d4, d0
db 0x10, 0x05 ; file 00D99A | 68k move.b d5, d0
db 0x48, 0x40 ; file 00D99C | 68k swap d0
db 0x10, 0x05 ; file 00D99E | 68k move.b d5, d0
db 0x24, 0xC0 ; file 00D9A0 | 68k move.l d0, (a2)+
db 0x60, 0x00, 0xF1, 0x2E ; file 00D9A2 | 68k bra.w $536c
db 0x3A, 0x18 ; file 00D9A6 | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00D9A8 | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00D9AA | 68k ror.w #$8, d4
db 0x30, 0x04 ; file 00D9AC | 68k move.w d4, d0
db 0x48, 0x40 ; file 00D9AE | 68k swap d0
db 0x30, 0x05 ; file 00D9B0 | 68k move.w d5, d0
db 0x22, 0xC0 ; file 00D9B2 | 68k move.l d0, (a1)+
db 0xE0, 0x98 ; file 00D9B4 | 68k ror.l #$8, d0
db 0x26, 0xC0 ; file 00D9B6 | 68k move.l d0, (a3)+
db 0x30, 0x05 ; file 00D9B8 | 68k move.w d5, d0
db 0x24, 0xC0 ; file 00D9BA | 68k move.l d0, (a2)+
db 0x30, 0x04 ; file 00D9BC | 68k move.w d4, d0
db 0x48, 0x40 ; file 00D9BE | 68k swap d0
db 0x30, 0x05 ; file 00D9C0 | 68k move.w d5, d0
db 0x10, 0x04 ; file 00D9C2 | 68k move.b d4, d0
db 0x28, 0xC0 ; file 00D9C4 | 68k move.l d0, (a4)+
db 0x60, 0x00, 0xF1, 0x0A ; file 00D9C6 | 68k bra.w $536c
db 0x3A, 0x18 ; file 00D9CA | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00D9CC | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00D9CE | 68k ror.w #$8, d4
db 0x30, 0x04 ; file 00D9D0 | 68k move.w d4, d0
db 0x48, 0x40 ; file 00D9D2 | 68k swap d0
db 0x30, 0x05 ; file 00D9D4 | 68k move.w d5, d0
db 0x22, 0xC0 ; file 00D9D6 | 68k move.l d0, (a1)+
db 0xE1, 0x98 ; file 00D9D8 | 68k rol.l #$8, d0
db 0x26, 0xC0 ; file 00D9DA | 68k move.l d0, (a3)+
db 0xE1, 0x98 ; file 00D9DC | 68k rol.l #$8, d0
db 0x28, 0xC0 ; file 00D9DE | 68k move.l d0, (a4)+
db 0x48, 0x40 ; file 00D9E0 | 68k swap d0
db 0x30, 0x04 ; file 00D9E2 | 68k move.w d4, d0
db 0x10, 0x05 ; file 00D9E4 | 68k move.b d5, d0
db 0x24, 0xC0 ; file 00D9E6 | 68k move.l d0, (a2)+
db 0x60, 0x00, 0xF0, 0xE8 ; file 00D9E8 | 68k bra.w $536c
db 0x3A, 0x18 ; file 00D9EC | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00D9EE | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00D9F0 | 68k ror.w #$8, d4
db 0x30, 0x04 ; file 00D9F2 | 68k move.w d4, d0
db 0x48, 0x40 ; file 00D9F4 | 68k swap d0
db 0x30, 0x05 ; file 00D9F6 | 68k move.w d5, d0
db 0x22, 0xC0 ; file 00D9F8 | 68k move.l d0, (a1)+
db 0xE1, 0x98 ; file 00D9FA | 68k rol.l #$8, d0
db 0x26, 0xC0 ; file 00D9FC | 68k move.l d0, (a3)+
db 0x30, 0x04 ; file 00D9FE | 68k move.w d4, d0
db 0x28, 0xC0 ; file 00DA00 | 68k move.l d0, (a4)+
db 0x48, 0x40 ; file 00DA02 | 68k swap d0
db 0x30, 0x04 ; file 00DA04 | 68k move.w d4, d0
db 0x10, 0x05 ; file 00DA06 | 68k move.b d5, d0
db 0x24, 0xC0 ; file 00DA08 | 68k move.l d0, (a2)+
db 0x60, 0x00, 0xF0, 0xC6 ; file 00DA0A | 68k bra.w $536c
db 0x3A, 0x18 ; file 00DA0E | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00DA10 | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00DA12 | 68k ror.w #$8, d4
db 0x30, 0x04 ; file 00DA14 | 68k move.w d4, d0
db 0x48, 0x40 ; file 00DA16 | 68k swap d0
db 0x30, 0x05 ; file 00DA18 | 68k move.w d5, d0
db 0x22, 0xC0 ; file 00DA1A | 68k move.l d0, (a1)+
db 0x48, 0x40 ; file 00DA1C | 68k swap d0
db 0x28, 0xC0 ; file 00DA1E | 68k move.l d0, (a4)+
db 0xE0, 0x98 ; file 00DA20 | 68k ror.l #$8, d0
db 0x24, 0xC0 ; file 00DA22 | 68k move.l d0, (a2)+
db 0x30, 0x04 ; file 00DA24 | 68k move.w d4, d0
db 0x26, 0xC0 ; file 00DA26 | 68k move.l d0, (a3)+
db 0x60, 0x00, 0xF0, 0xA8 ; file 00DA28 | 68k bra.w $536c
db 0x3A, 0x18 ; file 00DA2C | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00DA2E | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00DA30 | 68k ror.w #$8, d4
db 0x30, 0x04 ; file 00DA32 | 68k move.w d4, d0
db 0x48, 0x40 ; file 00DA34 | 68k swap d0
db 0x30, 0x05 ; file 00DA36 | 68k move.w d5, d0
db 0x10, 0x04 ; file 00DA38 | 68k move.b d4, d0
db 0x22, 0xC0 ; file 00DA3A | 68k move.l d0, (a1)+
db 0xE1, 0x98 ; file 00DA3C | 68k rol.l #$8, d0
db 0x26, 0xC0 ; file 00DA3E | 68k move.l d0, (a3)+
db 0x10, 0x04 ; file 00DA40 | 68k move.b d4, d0
db 0x28, 0xC0 ; file 00DA42 | 68k move.l d0, (a4)+
db 0x30, 0x04 ; file 00DA44 | 68k move.w d4, d0
db 0x10, 0x05 ; file 00DA46 | 68k move.b d5, d0
db 0x48, 0x40 ; file 00DA48 | 68k swap d0
db 0x30, 0x04 ; file 00DA4A | 68k move.w d4, d0
db 0x10, 0x05 ; file 00DA4C | 68k move.b d5, d0
db 0x24, 0xC0 ; file 00DA4E | 68k move.l d0, (a2)+
db 0x60, 0x00, 0xF0, 0x80 ; file 00DA50 | 68k bra.w $536c
db 0x3A, 0x18 ; file 00DA54 | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00DA56 | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00DA58 | 68k ror.w #$8, d4
db 0x30, 0x04 ; file 00DA5A | 68k move.w d4, d0
db 0x10, 0x05 ; file 00DA5C | 68k move.b d5, d0
db 0x48, 0x40 ; file 00DA5E | 68k swap d0
db 0x30, 0x04 ; file 00DA60 | 68k move.w d4, d0
db 0x10, 0x05 ; file 00DA62 | 68k move.b d5, d0
db 0x22, 0xC0 ; file 00DA64 | 68k move.l d0, (a1)+
db 0x26, 0xC0 ; file 00DA66 | 68k move.l d0, (a3)+
db 0x28, 0xC0 ; file 00DA68 | 68k move.l d0, (a4)+
db 0x30, 0x05 ; file 00DA6A | 68k move.w d5, d0
db 0x10, 0x04 ; file 00DA6C | 68k move.b d4, d0
db 0x48, 0x40 ; file 00DA6E | 68k swap d0
db 0x30, 0x05 ; file 00DA70 | 68k move.w d5, d0
db 0x10, 0x04 ; file 00DA72 | 68k move.b d4, d0
db 0x24, 0xC0 ; file 00DA74 | 68k move.l d0, (a2)+
db 0x60, 0x00, 0xF0, 0x5A ; file 00DA76 | 68k bra.w $536c
db 0x3A, 0x18 ; file 00DA7A | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00DA7C | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00DA7E | 68k ror.w #$8, d4
db 0x30, 0x04 ; file 00DA80 | 68k move.w d4, d0
db 0x10, 0x05 ; file 00DA82 | 68k move.b d5, d0
db 0x48, 0x40 ; file 00DA84 | 68k swap d0
db 0x30, 0x04 ; file 00DA86 | 68k move.w d4, d0
db 0x10, 0x05 ; file 00DA88 | 68k move.b d5, d0
db 0x22, 0xC0 ; file 00DA8A | 68k move.l d0, (a1)+
db 0x24, 0xC0 ; file 00DA8C | 68k move.l d0, (a2)+
db 0x28, 0xC0 ; file 00DA8E | 68k move.l d0, (a4)+
db 0x30, 0x05 ; file 00DA90 | 68k move.w d5, d0
db 0x10, 0x04 ; file 00DA92 | 68k move.b d4, d0
db 0x48, 0x40 ; file 00DA94 | 68k swap d0
db 0x30, 0x05 ; file 00DA96 | 68k move.w d5, d0
db 0x10, 0x04 ; file 00DA98 | 68k move.b d4, d0
db 0x26, 0xC0 ; file 00DA9A | 68k move.l d0, (a3)+
db 0x60, 0x00, 0xF0, 0x34 ; file 00DA9C | 68k bra.w $536c
db 0x3A, 0x18 ; file 00DAA0 | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00DAA2 | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00DAA4 | 68k ror.w #$8, d4
db 0x30, 0x04 ; file 00DAA6 | 68k move.w d4, d0
db 0x10, 0x05 ; file 00DAA8 | 68k move.b d5, d0
db 0x48, 0x40 ; file 00DAAA | 68k swap d0
db 0x30, 0x04 ; file 00DAAC | 68k move.w d4, d0
db 0x10, 0x05 ; file 00DAAE | 68k move.b d5, d0
db 0x22, 0xC0 ; file 00DAB0 | 68k move.l d0, (a1)+
db 0x24, 0xC0 ; file 00DAB2 | 68k move.l d0, (a2)+
db 0x26, 0xC0 ; file 00DAB4 | 68k move.l d0, (a3)+
db 0x28, 0xC0 ; file 00DAB6 | 68k move.l d0, (a4)+
db 0x60, 0x00, 0xF0, 0x18 ; file 00DAB8 | 68k bra.w $536c
db 0x3A, 0x18 ; file 00DABC | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00DABE | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00DAC0 | 68k ror.w #$8, d4
db 0x30, 0x04 ; file 00DAC2 | 68k move.w d4, d0
db 0x48, 0x40 ; file 00DAC4 | 68k swap d0
db 0x30, 0x04 ; file 00DAC6 | 68k move.w d4, d0
db 0x10, 0x05 ; file 00DAC8 | 68k move.b d5, d0
db 0x22, 0xC0 ; file 00DACA | 68k move.l d0, (a1)+
db 0x24, 0xC0 ; file 00DACC | 68k move.l d0, (a2)+
db 0x26, 0xC0 ; file 00DACE | 68k move.l d0, (a3)+
db 0x28, 0xC0 ; file 00DAD0 | 68k move.l d0, (a4)+
db 0x60, 0x00, 0xEF, 0xFE ; file 00DAD2 | 68k bra.w $536c
db 0x3A, 0x18 ; file 00DAD6 | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00DAD8 | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00DADA | 68k ror.w #$8, d4
db 0x30, 0x04 ; file 00DADC | 68k move.w d4, d0
db 0x10, 0x05 ; file 00DADE | 68k move.b d5, d0
db 0x48, 0x40 ; file 00DAE0 | 68k swap d0
db 0x30, 0x05 ; file 00DAE2 | 68k move.w d5, d0
db 0x22, 0xC0 ; file 00DAE4 | 68k move.l d0, (a1)+
db 0x24, 0xC0 ; file 00DAE6 | 68k move.l d0, (a2)+
db 0x26, 0xC0 ; file 00DAE8 | 68k move.l d0, (a3)+
db 0x28, 0xC0 ; file 00DAEA | 68k move.l d0, (a4)+
db 0x60, 0x00, 0xEF, 0xE4 ; file 00DAEC | 68k bra.w $536c
db 0x58, 0x8F ; file 00DAF0 | 68k addq.l #$4, a7
db 0x2A, 0x5F ; file 00DAF2 | 68k movea.l (a7)+, a5
db 0x4C, 0xDF, 0x7C, 0xF8 ; file 00DAF4 | 68k movem.l (a7)+, d3-d7/a2-a6
db 0x60, 0x00, 0x06, 0xE2 ; file 00DAF8 | 68k bra.w $6a76
db 0x48, 0xE7, 0x1F, 0x3E ; file 00DAFC | 68k movem.l d3-d7/a2-a6, -(a7)
db 0x22, 0x6D, 0xFC, 0xAE ; file 00DB00 | 68k movea.l -$352(a5), a1
db 0x20, 0x6E, 0xFF, 0xF0 ; file 00DB04 | 68k movea.l -$10(a6), a0
db 0x7C, 0x00 ; file 00DB08 | 68k moveq #$0, d6
db 0x3C, 0x2D, 0xFC, 0x86 ; file 00DB0A | 68k move.w -$37a(a5), d6
db 0x26, 0x09 ; file 00DB0E | 68k move.l a1, d3
db 0xD6, 0x86 ; file 00DB10 | 68k add.l d6, d3
db 0xD6, 0x86 ; file 00DB12 | 68k add.l d6, d3
db 0x24, 0x49 ; file 00DB14 | 68k movea.l a1, a2
db 0xD5, 0xC6 ; file 00DB16 | 68k adda.l d6, a2
db 0x28, 0x6D, 0xFC, 0xC0 ; file 00DB18 | 68k movea.l -$340(a5), a4
db 0x7E, 0x50 ; file 00DB1C | 68k moveq #$50, d7
db 0x70, 0x00 ; file 00DB1E | 68k moveq #$0, d0
db 0x10, 0x18 ; file 00DB20 | 68k move.b (a0)+, d0
db 0x32, 0x00 ; file 00DB22 | 68k move.w d0, d1
db 0xD2, 0x41 ; file 00DB24 | 68k add.w d1, d1
db 0xD2, 0x7B, 0x10, 0x06 ; file 00DB26 | 68k add.w $63c8(pc, d1.w), d1
db 0x4E, 0xFB, 0x10, 0x02 ; file 00DB2A | 68k jmp $63c8(pc, d1.w)
db 0x03, 0x42 ; file 00DB2E | 68k bchg.b d1, d2
db 0x04, 0x00, 0x03, 0xFE ; file 00DB30 | 68k subi.b #$fe, d0
db 0x04, 0x1C, 0x04, 0x1A ; file 00DB34 | 68k subi.b #$1a, (a4)+
db 0x02, 0xB8, 0x02, 0xB6, 0x03, 0xD4, 0x03, 0xD2 ; file 00DB38 | 68k andi.l #$2b603d4, $3d2.w
db 0x04, 0x10, 0x03, 0x2E ; file 00DB40 | 68k subi.b #$2e, (a0)
db 0x02, 0xEC ; file 00DB44 | 68k dc.w
db 0x02, 0xEA ; file 00DB46 | 68k dc.w
db 0x02, 0xA8, 0x03, 0x46, 0x03, 0x44, 0x03, 0xA2 ; file 00DB48 | 68k andi.l #$3460344, $3a2(a0)
db 0x03, 0xA0 ; file 00DB50 | 68k bclr.b d1, -(a0)
db 0x03, 0xFE ; file 00DB52 | 68k dc.w
db 0x02, 0x1C, 0x02, 0xBA ; file 00DB54 | 68k andi.b #$ba, (a4)+
db 0x02, 0xB8, 0x02, 0xB6, 0x03, 0x54, 0x02, 0x72 ; file 00DB58 | 68k andi.l #$2b60354, $272.w
db 0x02, 0x70, 0x03, 0xCE, 0x02, 0xAC ; file 00DB60 | 68k andi.w #$3ce, -$54(a0, d0.w)
db 0x03, 0xAA, 0x03, 0x48 ; file 00DB66 | 68k bclr.b d1, $348(a2)
db 0x03, 0x66 ; file 00DB6A | 68k bchg.b d1, -(a6)
db 0x02, 0x84, 0x02, 0xE2, 0x03, 0x00 ; file 00DB6C | 68k andi.l #$2e20300, d4
db 0x02, 0xFE ; file 00DB72 | 68k dc.w
db 0x02, 0xFC ; file 00DB74 | 68k dc.w
db 0x02, 0xBA ; file 00DB76 | 68k dc.w
db 0x02, 0x18, 0x02, 0x16 ; file 00DB78 | 68k andi.b #$16, (a0)+
db 0x02, 0x74, 0x02, 0x72, 0x03, 0x10 ; file 00DB7C | 68k andi.w #$272, (a4, d0.w * 2)
db 0x03, 0x0E, 0x02, 0x2C ; file 00DB82 | 68k movep.w $22c(a6), d1
db 0x03, 0xAA, 0x02, 0x08 ; file 00DB86 | 68k bclr.b d1, $208(a2)
db 0x02, 0x06, 0x02, 0xC4 ; file 00DB8A | 68k andi.b #$c4, d6
db 0x02, 0xA2, 0x02, 0xE0, 0x03, 0x3E ; file 00DB8E | 68k andi.l #$2e0033e, -(a2)
db 0x03, 0x3C, 0x02, 0x5A, 0x03, 0x78 ; file 00DB94 | 68k btst.l d1, #$25a0378
db 0x02, 0x16, 0x02, 0x14 ; file 00DB9A | 68k andi.b #$14, (a6)
db 0x02, 0x72, 0x03, 0x10, 0x03, 0x4E ; file 00DB9E | 68k andi.w #$310, ([a2])
db 0x02, 0x2C, 0x03, 0x0A, 0x02, 0x68 ; file 00DBA4 | 68k andi.b #$a, $268(a4)
db 0x03, 0x06 ; file 00DBAA | 68k btst.l d1, d6
db 0x03, 0x64 ; file 00DBAC | 68k bchg.b d1, -(a4)
db 0x02, 0x02, 0x02, 0x20 ; file 00DBAE | 68k andi.b #$20, d2
db 0x02, 0x1E, 0x02, 0xFC ; file 00DBB2 | 68k andi.b #$fc, (a6)+
db 0x03, 0x3A, 0x03, 0x38 ; file 00DBB6 | 68k btst.l d1, $678a(pc)
db 0x02, 0x56, 0x02, 0x54 ; file 00DBBA | 68k andi.w #$254, (a6)
db 0x03, 0x32, 0x02, 0x10 ; file 00DBBE | 68k btst.l d1, $10(a2, d0.w)
db 0x02, 0x6E, 0x02, 0x8C, 0x02, 0x4A ; file 00DBC2 | 68k andi.w #$28c, $24a(a6)
db 0x02, 0x68, 0x02, 0x86, 0x03, 0x24 ; file 00DBC8 | 68k andi.w #$286, $324(a0)
db 0x03, 0x02 ; file 00DBCE | 68k btst.l d1, d2
db 0x03, 0x00 ; file 00DBD0 | 68k btst.l d1, d0
db 0x02, 0xDE ; file 00DBD2 | 68k dc.w
db 0x02, 0x3C ; file 00DBD4 | 68k dc.w
db 0x01, 0xFA ; file 00DBD6 | 68k dc.w
db 0x01, 0xB8, 0x02, 0x36 ; file 00DBD8 | 68k bclr.b d0, $236.w
db 0x02, 0xD4 ; file 00DBDC | 68k dc.w
db 0x02, 0xD2 ; file 00DBDE | 68k dc.w
db 0x02, 0xD0 ; file 00DBE0 | 68k dc.w
db 0x02, 0x6E, 0x01, 0x8C, 0x01, 0xEA ; file 00DBE2 | 68k andi.w #$18c, $1ea(a6)
db 0x01, 0x88, 0x02, 0xC6 ; file 00DBE8 | 68k movep.w d0, $2c6(a0)
db 0x01, 0x84 ; file 00DBEC | 68k bclr.b d0, d4
db 0x05, 0x82 ; file 00DBEE | 68k bclr.b d2, d2
db 0x05, 0x94 ; file 00DBF0 | 68k bclr.b d2, (a4)
db 0x05, 0xA4 ; file 00DBF2 | 68k bclr.b d2, -(a4)
db 0x05, 0xA2 ; file 00DBF4 | 68k bclr.b d2, -(a2)
db 0x05, 0xA0 ; file 00DBF6 | 68k bclr.b d2, -(a0)
db 0x05, 0x9E ; file 00DBF8 | 68k bclr.b d2, (a6)+
db 0x05, 0x9C ; file 00DBFA | 68k bclr.b d2, (a4)+
db 0x05, 0x9A ; file 00DBFC | 68k bclr.b d2, (a2)+
db 0x05, 0x98 ; file 00DBFE | 68k bclr.b d2, (a0)+
db 0x05, 0x96 ; file 00DC00 | 68k bclr.b d2, (a6)
db 0x05, 0x94 ; file 00DC02 | 68k bclr.b d2, (a4)
db 0x05, 0x92 ; file 00DC04 | 68k bclr.b d2, (a2)
db 0x05, 0x9E ; file 00DC06 | 68k bclr.b d2, (a6)+
db 0x05, 0x9C ; file 00DC08 | 68k bclr.b d2, (a4)+
db 0x05, 0x9A ; file 00DC0A | 68k bclr.b d2, (a2)+
db 0x05, 0x98 ; file 00DC0C | 68k bclr.b d2, (a0)+
db 0x05, 0x96 ; file 00DC0E | 68k bclr.b d2, (a6)
db 0x05, 0x94 ; file 00DC10 | 68k bclr.b d2, (a4)
db 0x05, 0x92 ; file 00DC12 | 68k bclr.b d2, (a2)
db 0x05, 0x90 ; file 00DC14 | 68k bclr.b d2, (a0)
db 0x05, 0x8E, 0x05, 0x8C ; file 00DC16 | 68k movep.w d2, $58c(a6)
db 0x05, 0xA4 ; file 00DC1A | 68k bclr.b d2, -(a4)
db 0x05, 0xA2 ; file 00DC1C | 68k bclr.b d2, -(a2)
db 0x05, 0xA0 ; file 00DC1E | 68k bclr.b d2, -(a0)
db 0x05, 0x9E ; file 00DC20 | 68k bclr.b d2, (a6)+
db 0x05, 0x9C ; file 00DC22 | 68k bclr.b d2, (a4)+
db 0x05, 0x9A ; file 00DC24 | 68k bclr.b d2, (a2)+
db 0x05, 0x98 ; file 00DC26 | 68k bclr.b d2, (a0)+
db 0x05, 0x96 ; file 00DC28 | 68k bclr.b d2, (a6)
db 0x05, 0x94 ; file 00DC2A | 68k bclr.b d2, (a4)
db 0x05, 0x92 ; file 00DC2C | 68k bclr.b d2, (a2)
db 0x01, 0x00 ; file 00DC2E | 68k btst.l d0, d0
db 0x00, 0xFE ; file 00DC30 | 68k dc.w
db 0x00, 0xFC ; file 00DC32 | 68k dc.w
db 0x00, 0xFA ; file 00DC34 | 68k dc.w
db 0x00, 0xF8 ; file 00DC36 | 68k dc.w
db 0x00, 0xF6 ; file 00DC38 | 68k dc.w
db 0x00, 0xF4 ; file 00DC3A | 68k dc.w
db 0x00, 0xF2 ; file 00DC3C | 68k dc.w
db 0x00, 0xF0 ; file 00DC3E | 68k dc.w
db 0x00, 0xEE ; file 00DC40 | 68k dc.w
db 0x00, 0xEC ; file 00DC42 | 68k dc.w
db 0x00, 0xEA ; file 00DC44 | 68k dc.w
db 0x00, 0xE8 ; file 00DC46 | 68k dc.w
db 0x00, 0xE6 ; file 00DC48 | 68k dc.w
db 0x00, 0xE4 ; file 00DC4A | 68k dc.w
db 0x00, 0xE2 ; file 00DC4C | 68k dc.w
db 0x00, 0xE0 ; file 00DC4E | 68k dc.w
db 0x00, 0xDE ; file 00DC50 | 68k dc.w
db 0x00, 0xDC ; file 00DC52 | 68k dc.w
db 0x00, 0xDA ; file 00DC54 | 68k dc.w
db 0x00, 0xD8 ; file 00DC56 | 68k dc.w
db 0x00, 0xD6 ; file 00DC58 | 68k dc.w
db 0x00, 0xD4 ; file 00DC5A | 68k dc.w
db 0x00, 0xD2 ; file 00DC5C | 68k dc.w
db 0x00, 0xD0 ; file 00DC5E | 68k dc.w
db 0x00, 0xCE ; file 00DC60 | 68k dc.w
db 0x00, 0xCC ; file 00DC62 | 68k dc.w
db 0x00, 0xCA ; file 00DC64 | 68k dc.w
db 0x00, 0xC8 ; file 00DC66 | 68k dc.w
db 0x00, 0xC6 ; file 00DC68 | 68k dc.w
db 0x00, 0xC4 ; file 00DC6A | 68k dc.w
db 0x00, 0xC2 ; file 00DC6C | 68k dc.w
db 0x00, 0xC0 ; file 00DC6E | 68k dc.w
db 0x00, 0xBE ; file 00DC70 | 68k dc.w
db 0x00, 0xBC ; file 00DC72 | 68k dc.w
db 0x00, 0xBA ; file 00DC74 | 68k dc.w
db 0x00, 0xB8, 0x00, 0xB6, 0x00, 0xB4, 0x00, 0xB2 ; file 00DC76 | 68k ori.l #$b600b4, $b2.w
db 0x00, 0xB0, 0x00, 0xAE, 0x00, 0xAC, 0x00, 0xAA ; file 00DC7E | 68k ori.l #$ae00ac, -$56(a0, d0.w)
db 0x00, 0xA8, 0x00, 0xA6, 0x00, 0xA4, 0x00, 0xA2 ; file 00DC86 | 68k ori.l #$a600a4, $a2(a0)
db 0x00, 0xA0, 0x00, 0x9E, 0x00, 0x9C ; file 00DC8E | 68k ori.l #$9e009c, -(a0)
db 0x00, 0x9A, 0x00, 0x98, 0x00, 0x96 ; file 00DC94 | 68k ori.l #$980096, (a2)+
db 0x00, 0x94, 0x00, 0x92, 0x00, 0x90 ; file 00DC9A | 68k ori.l #$920090, (a4)
db 0x00, 0x8E ; file 00DCA0 | 68k dc.w
db 0x00, 0x8C ; file 00DCA2 | 68k dc.w
db 0x00, 0x8A ; file 00DCA4 | 68k dc.w
db 0x00, 0x88 ; file 00DCA6 | 68k dc.w
db 0x00, 0x86, 0x00, 0x84, 0x00, 0x82 ; file 00DCA8 | 68k ori.l #$840082, d6
db 0x00, 0x80, 0x00, 0x7E, 0x00, 0x7C ; file 00DCAE | 68k ori.l #$7e007c, d0
db 0x00, 0x7A ; file 00DCB4 | 68k dc.w
db 0x00, 0x78, 0x00, 0x76, 0x00, 0x74 ; file 00DCB6 | 68k ori.w #$76, $74.w
db 0x00, 0x72, 0x00, 0x70, 0x00, 0x6E ; file 00DCBC | 68k ori.w #$70, $6e(a2, d0.w)
db 0x00, 0x6C, 0x00, 0x6A, 0x00, 0x68 ; file 00DCC2 | 68k ori.w #$6a, $68(a4)
db 0x00, 0x66, 0x00, 0x64 ; file 00DCC8 | 68k ori.w #$64, -(a6)
db 0x00, 0x62, 0x00, 0x60 ; file 00DCCC | 68k ori.w #$60, -(a2)
db 0x00, 0x5E, 0x00, 0x5C ; file 00DCD0 | 68k ori.w #$5c, (a6)+
db 0x00, 0x5A, 0x00, 0x58 ; file 00DCD4 | 68k ori.w #$58, (a2)+
db 0x00, 0x56, 0x00, 0x54 ; file 00DCD8 | 68k ori.w #$54, (a6)
db 0x00, 0x52, 0x00, 0x50 ; file 00DCDC | 68k ori.w #$50, (a2)
db 0x00, 0x4E ; file 00DCE0 | 68k dc.w
db 0x00, 0x4C ; file 00DCE2 | 68k dc.w
db 0x00, 0x4A ; file 00DCE4 | 68k dc.w
db 0x00, 0x48 ; file 00DCE6 | 68k dc.w
db 0x00, 0x46, 0x00, 0x44 ; file 00DCE8 | 68k ori.w #$44, d6
db 0x00, 0x42, 0x00, 0x40 ; file 00DCEC | 68k ori.w #$40, d2
db 0x00, 0x3E ; file 00DCF0 | 68k dc.w
db 0x00, 0x3C, 0x00, 0x3A ; file 00DCF2 | 68k ori.b #$3a, ccr
db 0x00, 0x38, 0x00, 0x36, 0x00, 0x34 ; file 00DCF6 | 68k ori.b #$36, $34.w
db 0x00, 0x32, 0x00, 0x30, 0x00, 0x2E ; file 00DCFC | 68k ori.b #$30, $2e(a2, d0.w)
db 0x00, 0x2C, 0x00, 0x2A, 0x00, 0x28 ; file 00DD02 | 68k ori.b #$2a, $28(a4)
db 0x00, 0x26, 0x00, 0x24 ; file 00DD08 | 68k ori.b #$24, -(a6)
db 0x00, 0x22, 0x00, 0x20 ; file 00DD0C | 68k ori.b #$20, -(a2)
db 0x00, 0x1E, 0x00, 0x1C ; file 00DD10 | 68k ori.b #$1c, (a6)+
db 0x00, 0x1A, 0x00, 0x18 ; file 00DD14 | 68k ori.b #$18, (a2)+
db 0x00, 0x16, 0x00, 0x14 ; file 00DD18 | 68k ori.b #$14, (a6)
db 0x00, 0x12, 0x00, 0x10 ; file 00DD1C | 68k ori.b #$10, (a2)
db 0x00, 0x0E ; file 00DD20 | 68k dc.w
db 0x00, 0x0C ; file 00DD22 | 68k dc.w
db 0x00, 0x0A ; file 00DD24 | 68k dc.w
db 0x00, 0x08 ; file 00DD26 | 68k dc.w
db 0x00, 0x06, 0x00, 0x04 ; file 00DD28 | 68k ori.b #$4, d6
db 0x00, 0x02, 0xE1, 0x48 ; file 00DD2C | 68k ori.b #$48, d2
db 0x10, 0x18 ; file 00DD30 | 68k move.b (a0)+, d0
db 0xE1, 0x58 ; file 00DD32 | 68k rol.w #$8, d0
db 0x72, 0x00 ; file 00DD34 | 68k moveq #$0, d1
db 0x12, 0x34, 0x08, 0x00 ; file 00DD36 | 68k move.b (a4, d0.l), d1
db 0xEB, 0x49 ; file 00DD3A | 68k lsl.w #$5, d1
db 0x4E, 0xFB, 0x10, 0x32 ; file 00DD3C | 68k jmp $660a(pc, d1.w)
db 0x3A, 0x18 ; file 00DD40 | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00DD42 | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00DD44 | 68k ror.w #$8, d4
db 0x26, 0x49 ; file 00DD46 | 68k movea.l a1, a3
db 0x74, 0x01 ; file 00DD48 | 68k moveq #$1, d2
db 0xE5, 0x48 ; file 00DD4A | 68k lsl.w #$2, d0
db 0x64, 0x04 ; file 00DD4C | 68k bcc.b $65ec
db 0x32, 0x05 ; file 00DD4E | 68k move.w d5, d1
db 0x60, 0x02 ; file 00DD50 | 68k bra.b $65ee
db 0x32, 0x04 ; file 00DD52 | 68k move.w d4, d1
db 0xE5, 0x48 ; file 00DD54 | 68k lsl.w #$2, d0
db 0x64, 0x04 ; file 00DD56 | 68k bcc.b $65f6
db 0x12, 0x04 ; file 00DD58 | 68k move.b d4, d1
db 0x60, 0x02 ; file 00DD5A | 68k bra.b $65f8
db 0x12, 0x05 ; file 00DD5C | 68k move.b d5, d1
db 0x36, 0x81 ; file 00DD5E | 68k move.w d1, (a3)
db 0xE9, 0x48 ; file 00DD60 | 68k lsl.w #$4, d0
db 0xD7, 0xC6 ; file 00DD62 | 68k adda.l d6, a3
db 0x51, 0xCA, 0xFF, 0xE4 ; file 00DD64 | 68k dbra d2, $65e4
db 0x54, 0x89 ; file 00DD68 | 68k addq.l #$2, a1
db 0x54, 0x8A ; file 00DD6A | 68k addq.l #$2, a2
db 0x60, 0x00, 0xFD, 0xB0 ; file 00DD6C | 68k bra.w $63b8
db 0x3A, 0x18 ; file 00DD70 | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00DD72 | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00DD74 | 68k ror.w #$8, d4
db 0x30, 0x04 ; file 00DD76 | 68k move.w d4, d0
db 0x10, 0x05 ; file 00DD78 | 68k move.b d5, d0
db 0x32, 0xC0 ; file 00DD7A | 68k move.w d0, (a1)+
db 0x34, 0xC0 ; file 00DD7C | 68k move.w d0, (a2)+
db 0x60, 0x00, 0xFD, 0x9E ; file 00DD7E | 68k bra.w $63b8
db 0x4E, 0x71 ; file 00DD82 | 68k nop 
db 0x4E, 0x71 ; file 00DD84 | 68k nop 
db 0x4E, 0x71 ; file 00DD86 | 68k nop 
db 0x4E, 0x71 ; file 00DD88 | 68k nop 
db 0x4E, 0x71 ; file 00DD8A | 68k nop 
db 0x4E, 0x71 ; file 00DD8C | 68k nop 
db 0x4E, 0x71 ; file 00DD8E | 68k nop 
db 0x3A, 0x18 ; file 00DD90 | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00DD92 | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00DD94 | 68k ror.w #$8, d4
db 0x30, 0x04 ; file 00DD96 | 68k move.w d4, d0
db 0x10, 0x05 ; file 00DD98 | 68k move.b d5, d0
db 0x32, 0xC0 ; file 00DD9A | 68k move.w d0, (a1)+
db 0x34, 0xC4 ; file 00DD9C | 68k move.w d4, (a2)+
db 0x60, 0x00, 0xFD, 0x7E ; file 00DD9E | 68k bra.w $63b8
db 0x4E, 0x71 ; file 00DDA2 | 68k nop 
db 0x4E, 0x71 ; file 00DDA4 | 68k nop 
db 0x4E, 0x71 ; file 00DDA6 | 68k nop 
db 0x4E, 0x71 ; file 00DDA8 | 68k nop 
db 0x4E, 0x71 ; file 00DDAA | 68k nop 
db 0x4E, 0x71 ; file 00DDAC | 68k nop 
db 0x4E, 0x71 ; file 00DDAE | 68k nop 
db 0x3A, 0x18 ; file 00DDB0 | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00DDB2 | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00DDB4 | 68k ror.w #$8, d4
db 0x30, 0x04 ; file 00DDB6 | 68k move.w d4, d0
db 0x10, 0x05 ; file 00DDB8 | 68k move.b d5, d0
db 0x32, 0xC0 ; file 00DDBA | 68k move.w d0, (a1)+
db 0x34, 0xC5 ; file 00DDBC | 68k move.w d5, (a2)+
db 0x60, 0x00, 0xFD, 0x5E ; file 00DDBE | 68k bra.w $63b8
db 0x4E, 0x71 ; file 00DDC2 | 68k nop 
db 0x4E, 0x71 ; file 00DDC4 | 68k nop 
db 0x4E, 0x71 ; file 00DDC6 | 68k nop 
db 0x4E, 0x71 ; file 00DDC8 | 68k nop 
db 0x4E, 0x71 ; file 00DDCA | 68k nop 
db 0x4E, 0x71 ; file 00DDCC | 68k nop 
db 0x4E, 0x71 ; file 00DDCE | 68k nop 
db 0x3A, 0x18 ; file 00DDD0 | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00DDD2 | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00DDD4 | 68k ror.w #$8, d4
db 0x30, 0x04 ; file 00DDD6 | 68k move.w d4, d0
db 0x10, 0x05 ; file 00DDD8 | 68k move.b d5, d0
db 0x32, 0xC0 ; file 00DDDA | 68k move.w d0, (a1)+
db 0x30, 0x05 ; file 00DDDC | 68k move.w d5, d0
db 0x10, 0x04 ; file 00DDDE | 68k move.b d4, d0
db 0x34, 0xC0 ; file 00DDE0 | 68k move.w d0, (a2)+
db 0x60, 0x00, 0xFD, 0x3A ; file 00DDE2 | 68k bra.w $63b8
db 0x4E, 0x71 ; file 00DDE6 | 68k nop 
db 0x4E, 0x71 ; file 00DDE8 | 68k nop 
db 0x4E, 0x71 ; file 00DDEA | 68k nop 
db 0x4E, 0x71 ; file 00DDEC | 68k nop 
db 0x4E, 0x71 ; file 00DDEE | 68k nop 
db 0x3A, 0x18 ; file 00DDF0 | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00DDF2 | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00DDF4 | 68k ror.w #$8, d4
db 0x32, 0xC4 ; file 00DDF6 | 68k move.w d4, (a1)+
db 0x30, 0x04 ; file 00DDF8 | 68k move.w d4, d0
db 0x10, 0x05 ; file 00DDFA | 68k move.b d5, d0
db 0x34, 0xC0 ; file 00DDFC | 68k move.w d0, (a2)+
db 0x60, 0x00, 0xFD, 0x1E ; file 00DDFE | 68k bra.w $63b8
db 0x4E, 0x71 ; file 00DE02 | 68k nop 
db 0x4E, 0x71 ; file 00DE04 | 68k nop 
db 0x4E, 0x71 ; file 00DE06 | 68k nop 
db 0x4E, 0x71 ; file 00DE08 | 68k nop 
db 0x4E, 0x71 ; file 00DE0A | 68k nop 
db 0x4E, 0x71 ; file 00DE0C | 68k nop 
db 0x4E, 0x71 ; file 00DE0E | 68k nop 
db 0x3A, 0x18 ; file 00DE10 | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00DE12 | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00DE14 | 68k ror.w #$8, d4
db 0x32, 0xC4 ; file 00DE16 | 68k move.w d4, (a1)+
db 0x34, 0xC4 ; file 00DE18 | 68k move.w d4, (a2)+
db 0x60, 0x00, 0xFD, 0x02 ; file 00DE1A | 68k bra.w $63b8
db 0x4E, 0x71 ; file 00DE1E | 68k nop 
db 0x4E, 0x71 ; file 00DE20 | 68k nop 
db 0x4E, 0x71 ; file 00DE22 | 68k nop 
db 0x4E, 0x71 ; file 00DE24 | 68k nop 
db 0x4E, 0x71 ; file 00DE26 | 68k nop 
db 0x4E, 0x71 ; file 00DE28 | 68k nop 
db 0x4E, 0x71 ; file 00DE2A | 68k nop 
db 0x4E, 0x71 ; file 00DE2C | 68k nop 
db 0x4E, 0x71 ; file 00DE2E | 68k nop 
db 0x3A, 0x18 ; file 00DE30 | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00DE32 | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00DE34 | 68k ror.w #$8, d4
db 0x32, 0xC4 ; file 00DE36 | 68k move.w d4, (a1)+
db 0x34, 0xC5 ; file 00DE38 | 68k move.w d5, (a2)+
db 0x60, 0x00, 0xFC, 0xE2 ; file 00DE3A | 68k bra.w $63b8
db 0x4E, 0x71 ; file 00DE3E | 68k nop 
db 0x4E, 0x71 ; file 00DE40 | 68k nop 
db 0x4E, 0x71 ; file 00DE42 | 68k nop 
db 0x4E, 0x71 ; file 00DE44 | 68k nop 
db 0x4E, 0x71 ; file 00DE46 | 68k nop 
db 0x4E, 0x71 ; file 00DE48 | 68k nop 
db 0x4E, 0x71 ; file 00DE4A | 68k nop 
db 0x4E, 0x71 ; file 00DE4C | 68k nop 
db 0x4E, 0x71 ; file 00DE4E | 68k nop 
db 0x3A, 0x18 ; file 00DE50 | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00DE52 | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00DE54 | 68k ror.w #$8, d4
db 0x32, 0xC4 ; file 00DE56 | 68k move.w d4, (a1)+
db 0x30, 0x05 ; file 00DE58 | 68k move.w d5, d0
db 0x10, 0x04 ; file 00DE5A | 68k move.b d4, d0
db 0x34, 0xC0 ; file 00DE5C | 68k move.w d0, (a2)+
db 0x60, 0x00, 0xFC, 0xBE ; file 00DE5E | 68k bra.w $63b8
db 0x4E, 0x71 ; file 00DE62 | 68k nop 
db 0x4E, 0x71 ; file 00DE64 | 68k nop 
db 0x4E, 0x71 ; file 00DE66 | 68k nop 
db 0x4E, 0x71 ; file 00DE68 | 68k nop 
db 0x4E, 0x71 ; file 00DE6A | 68k nop 
db 0x4E, 0x71 ; file 00DE6C | 68k nop 
db 0x4E, 0x71 ; file 00DE6E | 68k nop 
db 0x3A, 0x18 ; file 00DE70 | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00DE72 | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00DE74 | 68k ror.w #$8, d4
db 0x32, 0xC5 ; file 00DE76 | 68k move.w d5, (a1)+
db 0x30, 0x04 ; file 00DE78 | 68k move.w d4, d0
db 0x10, 0x05 ; file 00DE7A | 68k move.b d5, d0
db 0x34, 0xC0 ; file 00DE7C | 68k move.w d0, (a2)+
db 0x60, 0x00, 0xFC, 0x9E ; file 00DE7E | 68k bra.w $63b8
db 0x4E, 0x71 ; file 00DE82 | 68k nop 
db 0x4E, 0x71 ; file 00DE84 | 68k nop 
db 0x4E, 0x71 ; file 00DE86 | 68k nop 
db 0x4E, 0x71 ; file 00DE88 | 68k nop 
db 0x4E, 0x71 ; file 00DE8A | 68k nop 
db 0x4E, 0x71 ; file 00DE8C | 68k nop 
db 0x4E, 0x71 ; file 00DE8E | 68k nop 
db 0x3A, 0x18 ; file 00DE90 | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00DE92 | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00DE94 | 68k ror.w #$8, d4
db 0x32, 0xC5 ; file 00DE96 | 68k move.w d5, (a1)+
db 0x34, 0xC4 ; file 00DE98 | 68k move.w d4, (a2)+
db 0x60, 0x00, 0xFC, 0x82 ; file 00DE9A | 68k bra.w $63b8
db 0x4E, 0x71 ; file 00DE9E | 68k nop 
db 0x4E, 0x71 ; file 00DEA0 | 68k nop 
db 0x4E, 0x71 ; file 00DEA2 | 68k nop 
db 0x4E, 0x71 ; file 00DEA4 | 68k nop 
db 0x4E, 0x71 ; file 00DEA6 | 68k nop 
db 0x4E, 0x71 ; file 00DEA8 | 68k nop 
db 0x4E, 0x71 ; file 00DEAA | 68k nop 
db 0x4E, 0x71 ; file 00DEAC | 68k nop 
db 0x4E, 0x71 ; file 00DEAE | 68k nop 
db 0x3A, 0x18 ; file 00DEB0 | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00DEB2 | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00DEB4 | 68k ror.w #$8, d4
db 0x32, 0xC5 ; file 00DEB6 | 68k move.w d5, (a1)+
db 0x34, 0xC4 ; file 00DEB8 | 68k move.w d4, (a2)+
db 0x60, 0x00, 0xFC, 0x62 ; file 00DEBA | 68k bra.w $63b8
db 0x4E, 0x71 ; file 00DEBE | 68k nop 
db 0x4E, 0x71 ; file 00DEC0 | 68k nop 
db 0x4E, 0x71 ; file 00DEC2 | 68k nop 
db 0x4E, 0x71 ; file 00DEC4 | 68k nop 
db 0x4E, 0x71 ; file 00DEC6 | 68k nop 
db 0x4E, 0x71 ; file 00DEC8 | 68k nop 
db 0x4E, 0x71 ; file 00DECA | 68k nop 
db 0x4E, 0x71 ; file 00DECC | 68k nop 
db 0x4E, 0x71 ; file 00DECE | 68k nop 
db 0x3A, 0x18 ; file 00DED0 | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00DED2 | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00DED4 | 68k ror.w #$8, d4
db 0x32, 0xC5 ; file 00DED6 | 68k move.w d5, (a1)+
db 0x30, 0x05 ; file 00DED8 | 68k move.w d5, d0
db 0x10, 0x04 ; file 00DEDA | 68k move.b d4, d0
db 0x34, 0xC0 ; file 00DEDC | 68k move.w d0, (a2)+
db 0x60, 0x00, 0xFC, 0x3E ; file 00DEDE | 68k bra.w $63b8
db 0x4E, 0x71 ; file 00DEE2 | 68k nop 
db 0x4E, 0x71 ; file 00DEE4 | 68k nop 
db 0x4E, 0x71 ; file 00DEE6 | 68k nop 
db 0x4E, 0x71 ; file 00DEE8 | 68k nop 
db 0x4E, 0x71 ; file 00DEEA | 68k nop 
db 0x4E, 0x71 ; file 00DEEC | 68k nop 
db 0x4E, 0x71 ; file 00DEEE | 68k nop 
db 0x3A, 0x18 ; file 00DEF0 | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00DEF2 | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00DEF4 | 68k ror.w #$8, d4
db 0x30, 0x05 ; file 00DEF6 | 68k move.w d5, d0
db 0x10, 0x04 ; file 00DEF8 | 68k move.b d4, d0
db 0x32, 0xC0 ; file 00DEFA | 68k move.w d0, (a1)+
db 0x30, 0x04 ; file 00DEFC | 68k move.w d4, d0
db 0x10, 0x05 ; file 00DEFE | 68k move.b d5, d0
db 0x34, 0xC0 ; file 00DF00 | 68k move.w d0, (a2)+
db 0x60, 0x00, 0xFC, 0x1A ; file 00DF02 | 68k bra.w $63b8
db 0x4E, 0x71 ; file 00DF06 | 68k nop 
db 0x4E, 0x71 ; file 00DF08 | 68k nop 
db 0x4E, 0x71 ; file 00DF0A | 68k nop 
db 0x4E, 0x71 ; file 00DF0C | 68k nop 
db 0x4E, 0x71 ; file 00DF0E | 68k nop 
db 0x3A, 0x18 ; file 00DF10 | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00DF12 | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00DF14 | 68k ror.w #$8, d4
db 0x30, 0x05 ; file 00DF16 | 68k move.w d5, d0
db 0x10, 0x04 ; file 00DF18 | 68k move.b d4, d0
db 0x32, 0xC0 ; file 00DF1A | 68k move.w d0, (a1)+
db 0x34, 0xC4 ; file 00DF1C | 68k move.w d4, (a2)+
db 0x60, 0x00, 0xFB, 0xFE ; file 00DF1E | 68k bra.w $63b8
db 0x4E, 0x71 ; file 00DF22 | 68k nop 
db 0x4E, 0x71 ; file 00DF24 | 68k nop 
db 0x4E, 0x71 ; file 00DF26 | 68k nop 
db 0x4E, 0x71 ; file 00DF28 | 68k nop 
db 0x4E, 0x71 ; file 00DF2A | 68k nop 
db 0x4E, 0x71 ; file 00DF2C | 68k nop 
db 0x4E, 0x71 ; file 00DF2E | 68k nop 
db 0x3A, 0x18 ; file 00DF30 | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00DF32 | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00DF34 | 68k ror.w #$8, d4
db 0x30, 0x05 ; file 00DF36 | 68k move.w d5, d0
db 0x10, 0x04 ; file 00DF38 | 68k move.b d4, d0
db 0x32, 0xC0 ; file 00DF3A | 68k move.w d0, (a1)+
db 0x34, 0xC5 ; file 00DF3C | 68k move.w d5, (a2)+
db 0x60, 0x00, 0xFB, 0xDE ; file 00DF3E | 68k bra.w $63b8
db 0x4E, 0x71 ; file 00DF42 | 68k nop 
db 0x4E, 0x71 ; file 00DF44 | 68k nop 
db 0x4E, 0x71 ; file 00DF46 | 68k nop 
db 0x4E, 0x71 ; file 00DF48 | 68k nop 
db 0x4E, 0x71 ; file 00DF4A | 68k nop 
db 0x4E, 0x71 ; file 00DF4C | 68k nop 
db 0x4E, 0x71 ; file 00DF4E | 68k nop 
db 0x3A, 0x18 ; file 00DF50 | 68k move.w (a0)+, d5
db 0x38, 0x05 ; file 00DF52 | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00DF54 | 68k ror.w #$8, d4
db 0x30, 0x05 ; file 00DF56 | 68k move.w d5, d0
db 0x10, 0x04 ; file 00DF58 | 68k move.b d4, d0
db 0x32, 0xC0 ; file 00DF5A | 68k move.w d0, (a1)+
db 0x34, 0xC0 ; file 00DF5C | 68k move.w d0, (a2)+
db 0x60, 0x00, 0xFB, 0xBE ; file 00DF5E | 68k bra.w $63b8
db 0x4E, 0x71 ; file 00DF62 | 68k nop 
db 0x4E, 0x71 ; file 00DF64 | 68k nop 
db 0x4E, 0x71 ; file 00DF66 | 68k nop 
db 0x4E, 0x71 ; file 00DF68 | 68k nop 
db 0x4E, 0x71 ; file 00DF6A | 68k nop 
db 0x4E, 0x71 ; file 00DF6C | 68k nop 
db 0x4E, 0x71 ; file 00DF6E | 68k nop 
db 0x3A, 0x18 ; file 00DF70 | 68k move.w (a0)+, d5
db 0xE1, 0x5D ; file 00DF72 | 68k rol.w #$8, d5
db 0x38, 0x05 ; file 00DF74 | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00DF76 | 68k ror.w #$8, d4
db 0x30, 0x04 ; file 00DF78 | 68k move.w d4, d0
db 0x10, 0x05 ; file 00DF7A | 68k move.b d5, d0
db 0x32, 0xC0 ; file 00DF7C | 68k move.w d0, (a1)+
db 0x34, 0xC0 ; file 00DF7E | 68k move.w d0, (a2)+
db 0x60, 0x00, 0xFB, 0x9C ; file 00DF80 | 68k bra.w $63b8
db 0x4E, 0x71 ; file 00DF84 | 68k nop 
db 0x4E, 0x71 ; file 00DF86 | 68k nop 
db 0x4E, 0x71 ; file 00DF88 | 68k nop 
db 0x4E, 0x71 ; file 00DF8A | 68k nop 
db 0x4E, 0x71 ; file 00DF8C | 68k nop 
db 0x4E, 0x71 ; file 00DF8E | 68k nop 
db 0x3A, 0x18 ; file 00DF90 | 68k move.w (a0)+, d5
db 0xE1, 0x5D ; file 00DF92 | 68k rol.w #$8, d5
db 0x38, 0x05 ; file 00DF94 | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00DF96 | 68k ror.w #$8, d4
db 0x30, 0x04 ; file 00DF98 | 68k move.w d4, d0
db 0x10, 0x05 ; file 00DF9A | 68k move.b d5, d0
db 0x32, 0xC0 ; file 00DF9C | 68k move.w d0, (a1)+
db 0x34, 0xC4 ; file 00DF9E | 68k move.w d4, (a2)+
db 0x60, 0x00, 0xFB, 0x7C ; file 00DFA0 | 68k bra.w $63b8
db 0x4E, 0x71 ; file 00DFA4 | 68k nop 
db 0x4E, 0x71 ; file 00DFA6 | 68k nop 
db 0x4E, 0x71 ; file 00DFA8 | 68k nop 
db 0x4E, 0x71 ; file 00DFAA | 68k nop 
db 0x4E, 0x71 ; file 00DFAC | 68k nop 
db 0x4E, 0x71 ; file 00DFAE | 68k nop 
db 0x3A, 0x18 ; file 00DFB0 | 68k move.w (a0)+, d5
db 0xE1, 0x5D ; file 00DFB2 | 68k rol.w #$8, d5
db 0x38, 0x05 ; file 00DFB4 | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00DFB6 | 68k ror.w #$8, d4
db 0x30, 0x04 ; file 00DFB8 | 68k move.w d4, d0
db 0x10, 0x05 ; file 00DFBA | 68k move.b d5, d0
db 0x32, 0xC0 ; file 00DFBC | 68k move.w d0, (a1)+
db 0x34, 0xC5 ; file 00DFBE | 68k move.w d5, (a2)+
db 0x60, 0x00, 0xFB, 0x5C ; file 00DFC0 | 68k bra.w $63b8
db 0x4E, 0x71 ; file 00DFC4 | 68k nop 
db 0x4E, 0x71 ; file 00DFC6 | 68k nop 
db 0x4E, 0x71 ; file 00DFC8 | 68k nop 
db 0x4E, 0x71 ; file 00DFCA | 68k nop 
db 0x4E, 0x71 ; file 00DFCC | 68k nop 
db 0x4E, 0x71 ; file 00DFCE | 68k nop 
db 0x3A, 0x18 ; file 00DFD0 | 68k move.w (a0)+, d5
db 0xE1, 0x5D ; file 00DFD2 | 68k rol.w #$8, d5
db 0x38, 0x05 ; file 00DFD4 | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00DFD6 | 68k ror.w #$8, d4
db 0x30, 0x04 ; file 00DFD8 | 68k move.w d4, d0
db 0x10, 0x05 ; file 00DFDA | 68k move.b d5, d0
db 0x32, 0xC0 ; file 00DFDC | 68k move.w d0, (a1)+
db 0x30, 0x05 ; file 00DFDE | 68k move.w d5, d0
db 0x10, 0x04 ; file 00DFE0 | 68k move.b d4, d0
db 0x34, 0xC0 ; file 00DFE2 | 68k move.w d0, (a2)+
db 0x60, 0x00, 0xFB, 0x38 ; file 00DFE4 | 68k bra.w $63b8
db 0x4E, 0x71 ; file 00DFE8 | 68k nop 
db 0x4E, 0x71 ; file 00DFEA | 68k nop 
db 0x4E, 0x71 ; file 00DFEC | 68k nop 
db 0x4E, 0x71 ; file 00DFEE | 68k nop 
db 0x3A, 0x18 ; file 00DFF0 | 68k move.w (a0)+, d5
db 0xE1, 0x5D ; file 00DFF2 | 68k rol.w #$8, d5
db 0x38, 0x05 ; file 00DFF4 | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00DFF6 | 68k ror.w #$8, d4
db 0x32, 0xC4 ; file 00DFF8 | 68k move.w d4, (a1)+
db 0x30, 0x04 ; file 00DFFA | 68k move.w d4, d0
db 0x10, 0x05 ; file 00DFFC | 68k move.b d5, d0
db 0x34, 0xC0 ; file 00DFFE | 68k move.w d0, (a2)+
db 0x60, 0x00, 0xFB, 0x1C ; file 00E000 | 68k bra.w $63b8
db 0x4E, 0x71 ; file 00E004 | 68k nop 
db 0x4E, 0x71 ; file 00E006 | 68k nop 
db 0x4E, 0x71 ; file 00E008 | 68k nop 
db 0x4E, 0x71 ; file 00E00A | 68k nop 
db 0x4E, 0x71 ; file 00E00C | 68k nop 
db 0x4E, 0x71 ; file 00E00E | 68k nop 
db 0x3A, 0x18 ; file 00E010 | 68k move.w (a0)+, d5
db 0xE1, 0x5D ; file 00E012 | 68k rol.w #$8, d5
db 0x38, 0x05 ; file 00E014 | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00E016 | 68k ror.w #$8, d4
db 0x32, 0xC4 ; file 00E018 | 68k move.w d4, (a1)+
db 0x34, 0xC4 ; file 00E01A | 68k move.w d4, (a2)+
db 0x60, 0x00, 0xFB, 0x00 ; file 00E01C | 68k bra.w $63b8
db 0x4E, 0x71 ; file 00E020 | 68k nop 
db 0x4E, 0x71 ; file 00E022 | 68k nop 
db 0x4E, 0x71 ; file 00E024 | 68k nop 
db 0x4E, 0x71 ; file 00E026 | 68k nop 
db 0x4E, 0x71 ; file 00E028 | 68k nop 
db 0x4E, 0x71 ; file 00E02A | 68k nop 
db 0x4E, 0x71 ; file 00E02C | 68k nop 
db 0x4E, 0x71 ; file 00E02E | 68k nop 
db 0x3A, 0x18 ; file 00E030 | 68k move.w (a0)+, d5
db 0xE1, 0x5D ; file 00E032 | 68k rol.w #$8, d5
db 0x38, 0x05 ; file 00E034 | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00E036 | 68k ror.w #$8, d4
db 0x32, 0xC4 ; file 00E038 | 68k move.w d4, (a1)+
db 0x34, 0xC5 ; file 00E03A | 68k move.w d5, (a2)+
db 0x60, 0x00, 0xFA, 0xE0 ; file 00E03C | 68k bra.w $63b8
db 0x4E, 0x71 ; file 00E040 | 68k nop 
db 0x4E, 0x71 ; file 00E042 | 68k nop 
db 0x4E, 0x71 ; file 00E044 | 68k nop 
db 0x4E, 0x71 ; file 00E046 | 68k nop 
db 0x4E, 0x71 ; file 00E048 | 68k nop 
db 0x4E, 0x71 ; file 00E04A | 68k nop 
db 0x4E, 0x71 ; file 00E04C | 68k nop 
db 0x4E, 0x71 ; file 00E04E | 68k nop 
db 0x3A, 0x18 ; file 00E050 | 68k move.w (a0)+, d5
db 0xE1, 0x5D ; file 00E052 | 68k rol.w #$8, d5
db 0x38, 0x05 ; file 00E054 | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00E056 | 68k ror.w #$8, d4
db 0x32, 0xC4 ; file 00E058 | 68k move.w d4, (a1)+
db 0x30, 0x05 ; file 00E05A | 68k move.w d5, d0
db 0x10, 0x04 ; file 00E05C | 68k move.b d4, d0
db 0x34, 0xC0 ; file 00E05E | 68k move.w d0, (a2)+
db 0x60, 0x00, 0xFA, 0xBC ; file 00E060 | 68k bra.w $63b8
db 0x4E, 0x71 ; file 00E064 | 68k nop 
db 0x4E, 0x71 ; file 00E066 | 68k nop 
db 0x4E, 0x71 ; file 00E068 | 68k nop 
db 0x4E, 0x71 ; file 00E06A | 68k nop 
db 0x4E, 0x71 ; file 00E06C | 68k nop 
db 0x4E, 0x71 ; file 00E06E | 68k nop 
db 0x3A, 0x18 ; file 00E070 | 68k move.w (a0)+, d5
db 0xE1, 0x5D ; file 00E072 | 68k rol.w #$8, d5
db 0x38, 0x05 ; file 00E074 | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00E076 | 68k ror.w #$8, d4
db 0x32, 0xC5 ; file 00E078 | 68k move.w d5, (a1)+
db 0x30, 0x04 ; file 00E07A | 68k move.w d4, d0
db 0x10, 0x05 ; file 00E07C | 68k move.b d5, d0
db 0x34, 0xC0 ; file 00E07E | 68k move.w d0, (a2)+
db 0x60, 0x00, 0xFA, 0x9C ; file 00E080 | 68k bra.w $63b8
db 0x4E, 0x71 ; file 00E084 | 68k nop 
db 0x4E, 0x71 ; file 00E086 | 68k nop 
db 0x4E, 0x71 ; file 00E088 | 68k nop 
db 0x4E, 0x71 ; file 00E08A | 68k nop 
db 0x4E, 0x71 ; file 00E08C | 68k nop 
db 0x4E, 0x71 ; file 00E08E | 68k nop 
db 0x3A, 0x18 ; file 00E090 | 68k move.w (a0)+, d5
db 0xE1, 0x5D ; file 00E092 | 68k rol.w #$8, d5
db 0x38, 0x05 ; file 00E094 | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00E096 | 68k ror.w #$8, d4
db 0x32, 0xC5 ; file 00E098 | 68k move.w d5, (a1)+
db 0x34, 0xC4 ; file 00E09A | 68k move.w d4, (a2)+
db 0x60, 0x00, 0xFA, 0x80 ; file 00E09C | 68k bra.w $63b8
db 0x4E, 0x71 ; file 00E0A0 | 68k nop 
db 0x4E, 0x71 ; file 00E0A2 | 68k nop 
db 0x4E, 0x71 ; file 00E0A4 | 68k nop 
db 0x4E, 0x71 ; file 00E0A6 | 68k nop 
db 0x4E, 0x71 ; file 00E0A8 | 68k nop 
db 0x4E, 0x71 ; file 00E0AA | 68k nop 
db 0x4E, 0x71 ; file 00E0AC | 68k nop 
db 0x4E, 0x71 ; file 00E0AE | 68k nop 
db 0x3A, 0x18 ; file 00E0B0 | 68k move.w (a0)+, d5
db 0xE1, 0x5D ; file 00E0B2 | 68k rol.w #$8, d5
db 0x38, 0x05 ; file 00E0B4 | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00E0B6 | 68k ror.w #$8, d4
db 0x32, 0xC5 ; file 00E0B8 | 68k move.w d5, (a1)+
db 0x34, 0xC4 ; file 00E0BA | 68k move.w d4, (a2)+
db 0x60, 0x00, 0xFA, 0x60 ; file 00E0BC | 68k bra.w $63b8
db 0x4E, 0x71 ; file 00E0C0 | 68k nop 
db 0x4E, 0x71 ; file 00E0C2 | 68k nop 
db 0x4E, 0x71 ; file 00E0C4 | 68k nop 
db 0x4E, 0x71 ; file 00E0C6 | 68k nop 
db 0x4E, 0x71 ; file 00E0C8 | 68k nop 
db 0x4E, 0x71 ; file 00E0CA | 68k nop 
db 0x4E, 0x71 ; file 00E0CC | 68k nop 
db 0x4E, 0x71 ; file 00E0CE | 68k nop 
db 0x3A, 0x18 ; file 00E0D0 | 68k move.w (a0)+, d5
db 0xE1, 0x5D ; file 00E0D2 | 68k rol.w #$8, d5
db 0x38, 0x05 ; file 00E0D4 | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00E0D6 | 68k ror.w #$8, d4
db 0x32, 0xC5 ; file 00E0D8 | 68k move.w d5, (a1)+
db 0x30, 0x05 ; file 00E0DA | 68k move.w d5, d0
db 0x10, 0x04 ; file 00E0DC | 68k move.b d4, d0
db 0x34, 0xC0 ; file 00E0DE | 68k move.w d0, (a2)+
db 0x60, 0x00, 0xFA, 0x3C ; file 00E0E0 | 68k bra.w $63b8
db 0x4E, 0x71 ; file 00E0E4 | 68k nop 
db 0x4E, 0x71 ; file 00E0E6 | 68k nop 
db 0x4E, 0x71 ; file 00E0E8 | 68k nop 
db 0x4E, 0x71 ; file 00E0EA | 68k nop 
db 0x4E, 0x71 ; file 00E0EC | 68k nop 
db 0x4E, 0x71 ; file 00E0EE | 68k nop 
db 0x3A, 0x18 ; file 00E0F0 | 68k move.w (a0)+, d5
db 0xE1, 0x5D ; file 00E0F2 | 68k rol.w #$8, d5
db 0x38, 0x05 ; file 00E0F4 | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00E0F6 | 68k ror.w #$8, d4
db 0x30, 0x05 ; file 00E0F8 | 68k move.w d5, d0
db 0x10, 0x04 ; file 00E0FA | 68k move.b d4, d0
db 0x32, 0xC0 ; file 00E0FC | 68k move.w d0, (a1)+
db 0x30, 0x04 ; file 00E0FE | 68k move.w d4, d0
db 0x10, 0x05 ; file 00E100 | 68k move.b d5, d0
db 0x34, 0xC0 ; file 00E102 | 68k move.w d0, (a2)+
db 0x60, 0x00, 0xFA, 0x18 ; file 00E104 | 68k bra.w $63b8
db 0x4E, 0x71 ; file 00E108 | 68k nop 
db 0x4E, 0x71 ; file 00E10A | 68k nop 
db 0x4E, 0x71 ; file 00E10C | 68k nop 
db 0x4E, 0x71 ; file 00E10E | 68k nop 
db 0x3A, 0x18 ; file 00E110 | 68k move.w (a0)+, d5
db 0xE1, 0x5D ; file 00E112 | 68k rol.w #$8, d5
db 0x38, 0x05 ; file 00E114 | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00E116 | 68k ror.w #$8, d4
db 0x30, 0x05 ; file 00E118 | 68k move.w d5, d0
db 0x10, 0x04 ; file 00E11A | 68k move.b d4, d0
db 0x32, 0xC0 ; file 00E11C | 68k move.w d0, (a1)+
db 0x34, 0xC4 ; file 00E11E | 68k move.w d4, (a2)+
db 0x60, 0x00, 0xF9, 0xFC ; file 00E120 | 68k bra.w $63b8
db 0x4E, 0x71 ; file 00E124 | 68k nop 
db 0x4E, 0x71 ; file 00E126 | 68k nop 
db 0x4E, 0x71 ; file 00E128 | 68k nop 
db 0x4E, 0x71 ; file 00E12A | 68k nop 
db 0x4E, 0x71 ; file 00E12C | 68k nop 
db 0x4E, 0x71 ; file 00E12E | 68k nop 
db 0x3A, 0x18 ; file 00E130 | 68k move.w (a0)+, d5
db 0xE1, 0x5D ; file 00E132 | 68k rol.w #$8, d5
db 0x38, 0x05 ; file 00E134 | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00E136 | 68k ror.w #$8, d4
db 0x30, 0x05 ; file 00E138 | 68k move.w d5, d0
db 0x10, 0x04 ; file 00E13A | 68k move.b d4, d0
db 0x32, 0xC0 ; file 00E13C | 68k move.w d0, (a1)+
db 0x34, 0xC5 ; file 00E13E | 68k move.w d5, (a2)+
db 0x60, 0x00, 0xF9, 0xDC ; file 00E140 | 68k bra.w $63b8
db 0x4E, 0x71 ; file 00E144 | 68k nop 
db 0x4E, 0x71 ; file 00E146 | 68k nop 
db 0x4E, 0x71 ; file 00E148 | 68k nop 
db 0x4E, 0x71 ; file 00E14A | 68k nop 
db 0x4E, 0x71 ; file 00E14C | 68k nop 
db 0x4E, 0x71 ; file 00E14E | 68k nop 
db 0x3A, 0x18 ; file 00E150 | 68k move.w (a0)+, d5
db 0xE1, 0x5D ; file 00E152 | 68k rol.w #$8, d5
db 0x38, 0x05 ; file 00E154 | 68k move.w d5, d4
db 0xE0, 0x5C ; file 00E156 | 68k ror.w #$8, d4
db 0x30, 0x05 ; file 00E158 | 68k move.w d5, d0
db 0x10, 0x04 ; file 00E15A | 68k move.b d4, d0
db 0x32, 0xC0 ; file 00E15C | 68k move.w d0, (a1)+
db 0x34, 0xC0 ; file 00E15E | 68k move.w d0, (a2)+
db 0x60, 0x00, 0xF9, 0xBC ; file 00E160 | 68k bra.w $63b8
db 0x4E, 0x71 ; file 00E164 | 68k nop 
db 0x4E, 0x71 ; file 00E166 | 68k nop 
db 0x4E, 0x71 ; file 00E168 | 68k nop 
db 0x4E, 0x71 ; file 00E16A | 68k nop 
db 0x4E, 0x71 ; file 00E16C | 68k nop 
db 0x4E, 0x71 ; file 00E16E | 68k nop 
db 0x30, 0x18 ; file 00E170 | 68k move.w (a0)+, d0
db 0x10, 0x18 ; file 00E172 | 68k move.b (a0)+, d0
db 0x32, 0xC0 ; file 00E174 | 68k move.w d0, (a1)+
db 0x5A, 0x88 ; file 00E176 | 68k addq.l #$5, a0
db 0x30, 0x18 ; file 00E178 | 68k move.w (a0)+, d0
db 0x10, 0x18 ; file 00E17A | 68k move.b (a0)+, d0
db 0x34, 0xC0 ; file 00E17C | 68k move.w d0, (a2)+
db 0x5A, 0x88 ; file 00E17E | 68k addq.l #$5, a0
db 0x60, 0x00, 0xF9, 0x9C ; file 00E180 | 68k bra.w $63b8
db 0x53, 0x47 ; file 00E184 | 68k subq.w #$1, d7
db 0x67, 0x50 ; file 00E186 | 68k beq.b $6a72
db 0x22, 0x43 ; file 00E188 | 68k movea.l d3, a1
db 0xD6, 0x86 ; file 00E18A | 68k add.l d6, d3
db 0xD6, 0x86 ; file 00E18C | 68k add.l d6, d3
db 0x24, 0x49 ; file 00E18E | 68k movea.l a1, a2
db 0xD5, 0xC6 ; file 00E190 | 68k adda.l d6, a2
db 0x60, 0x00, 0xF9, 0x8A ; file 00E192 | 68k bra.w $63b8
db 0x04, 0x40, 0x00, 0x62 ; file 00E196 | 68k subi.w #$62, d0
db 0xD0, 0x40 ; file 00E19A | 68k add.w d0, d0
db 0xD2, 0xC0 ; file 00E19C | 68k adda.w d0, a1
db 0xD4, 0xC0 ; file 00E19E | 68k adda.w d0, a2
db 0x60, 0x00, 0xF9, 0x7C ; file 00E1A0 | 68k bra.w $63b8
db 0x04, 0x40, 0x00, 0x6C ; file 00E1A4 | 68k subi.w #$6c, d0
db 0x72, 0x00 ; file 00E1A8 | 68k moveq #$0, d1
db 0x14, 0x18 ; file 00E1AA | 68k move.b (a0)+, d2
db 0x12, 0x02 ; file 00E1AC | 68k move.b d2, d1
db 0xE1, 0x89 ; file 00E1AE | 68k lsl.l #$8, d1
db 0x12, 0x02 ; file 00E1B0 | 68k move.b d2, d1
db 0x32, 0xC1 ; file 00E1B2 | 68k move.w d1, (a1)+
db 0x34, 0xC1 ; file 00E1B4 | 68k move.w d1, (a2)+
db 0x51, 0xC8, 0xFF, 0xFA ; file 00E1B6 | 68k dbra d0, $6a4c
db 0x60, 0x00, 0xF9, 0x62 ; file 00E1BA | 68k bra.w $63b8
db 0x04, 0x40, 0x00, 0x75 ; file 00E1BE | 68k subi.w #$75, d0
db 0x53, 0x40 ; file 00E1C2 | 68k subq.w #$1, d0
db 0x14, 0x18 ; file 00E1C4 | 68k move.b (a0)+, d2
db 0x12, 0x02 ; file 00E1C6 | 68k move.b d2, d1
db 0xE1, 0x89 ; file 00E1C8 | 68k lsl.l #$8, d1
db 0x12, 0x02 ; file 00E1CA | 68k move.b d2, d1
db 0x32, 0xC1 ; file 00E1CC | 68k move.w d1, (a1)+
db 0x34, 0xC1 ; file 00E1CE | 68k move.w d1, (a2)+
db 0x51, 0xC8, 0xFF, 0xF2 ; file 00E1D0 | 68k dbra d0, $6a5e
db 0x60, 0x00, 0xF9, 0x48 ; file 00E1D4 | 68k bra.w $63b8
db 0x4C, 0xDF, 0x7C, 0xF8 ; file 00E1D8 | 68k movem.l (a7)+, d3-d7/a2-a6
db 0x70, 0x01 ; file 00E1DC | 68k moveq #$1, d0
db 0x4E, 0x5E ; file 00E1DE | 68k unlk a6
db 0x4E, 0x75 ; file 00E1E0 | 68k rts 
