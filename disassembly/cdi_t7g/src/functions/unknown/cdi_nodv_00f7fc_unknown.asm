; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00F7FC–00F9E9, inclusive.
cdi_nodv_entry_00f7fc:
db 0x20, 0x6E, 0xAC, 0x8E ; 00F7FC: provisional 68k movea.l -$5372(a6), a0
db 0x22, 0x68, 0x00, 0x2C ; 00F800: provisional 68k movea.l $2c(a0), a1
db 0x42, 0x46 ; 00F804: provisional 68k clr.w d6
db 0x47, 0xEE, 0xAC, 0xC2 ; 00F806: provisional 68k lea.l -$533e(a6), a3
db 0x2D, 0x4B, 0xAC, 0xBE ; 00F80A: provisional 68k move.l a3, -$5342(a6)
db 0x42, 0x6E, 0xAC, 0xBC ; 00F80E: provisional 68k clr.w -$5344(a6)
db 0x47, 0xEE, 0xAC, 0x98 ; 00F812: provisional 68k lea.l -$5368(a6), a3
db 0x2F, 0x09 ; 00F816: provisional 68k move.l a1, -(a7)
db 0x3E, 0x29, 0x00, 0x00 ; 00F818: provisional 68k move.w $0(a1), d7
db 0x43, 0xE9, 0x00, 0x04 ; 00F81C: provisional 68k lea.l $4(a1), a1
db 0x53, 0x47 ; 00F820: provisional 68k subq.w #$1, d7
db 0x42, 0x41 ; 00F822: provisional 68k clr.w d1
db 0x34, 0x01 ; 00F824: provisional 68k move.w d1, d2
db 0x12, 0x19 ; 00F826: provisional 68k move.b (a1)+, d1
db 0x14, 0x19 ; 00F828: provisional 68k move.b (a1)+, d2
db 0x36, 0x19 ; 00F82A: provisional 68k move.w (a1)+, d3
db 0x38, 0x19 ; 00F82C: provisional 68k move.w (a1)+, d4
db 0x45, 0xE8, 0x00, 0x82 ; 00F82E: provisional 68k lea.l $82(a0), a2
db 0x4A, 0x02 ; 00F832: provisional 68k tst.b d2
db 0x6A, 0x08 ; 00F834: provisional 68k bpl.b $f83e
db 0x45, 0xE8, 0x00, 0xC2 ; 00F836: provisional 68k lea.l $c2(a0), a2
db 0xC4, 0x7C, 0x00, 0x7F ; 00F83A: provisional 68k and.w #$7f, d2
db 0x4A, 0x43 ; 00F83E: provisional 68k tst.w d3
db 0x67, 0x10 ; 00F840: provisional 68k beq.b $f852
db 0xBC, 0x7C, 0x00, 0x10 ; 00F842: provisional 68k cmp.w #$10, d6
db 0x67, 0x00, 0x00, 0x70 ; 00F846: provisional 68k beq.w $f8b8
db 0x36, 0xC3 ; 00F84A: provisional 68k move.w d3, (a3)+
db 0x52, 0x46 ; 00F84C: provisional 68k addq.w #$1, d6
db 0x36, 0x2E, 0xAC, 0x92 ; 00F84E: provisional 68k move.w -$536e(a6), d3
db 0x48, 0xE7, 0xFF, 0xFC ; 00F852: provisional 68k movem.l d0-d7/a0-a5, -(a7)
db 0x43, 0xF1, 0x40, 0xFE ; 00F856: provisional 68k lea.l -$2(a1, d4.w), a1
db 0xD2, 0x41 ; 00F85A: provisional 68k add.w d1, d1
db 0x32, 0x3B, 0x10, 0x3E ; 00F85C: provisional 68k move.w $f89c(pc, d1.w), d1
db 0x4E, 0xBB, 0x10, 0x3A ; 00F860: provisional 68k jsr $f89c(pc, d1.w)
db 0x4C, 0xDF, 0x3F, 0xFF ; 00F864: provisional 68k movem.l (a7)+, d0-d7/a0-a5
db 0x51, 0xCF, 0xFF, 0xB8 ; 00F868: provisional 68k dbra d7, $f822
db 0x22, 0x5F ; 00F86C: provisional 68k movea.l (a7)+, a1
db 0x4A, 0x69, 0x00, 0x02 ; 00F86E: provisional 68k tst.w $2(a1)
db 0x67, 0x08 ; 00F872: provisional 68k beq.b $f87c
db 0x22, 0x69, 0x09, 0x34 ; 00F874: provisional 68k movea.l $934(a1), a1
db 0x60, 0x00, 0xFF, 0x9C ; 00F878: provisional 68k bra.w $f816
db 0x2F, 0x28, 0x00, 0x2C ; 00F87C: provisional 68k move.l $2c(a0), -(a7)
db 0x61, 0x00, 0xD7, 0x76 ; 00F880: provisional 68k bsr.w $cff8
db 0x41, 0xEE, 0xAC, 0x98 ; 00F884: provisional 68k lea.l -$5368(a6), a0
db 0x2D, 0x48, 0xAC, 0x94 ; 00F888: provisional 68k move.l a0, -$536c(a6)
db 0x41, 0xEE, 0xAC, 0xC2 ; 00F88C: provisional 68k lea.l -$533e(a6), a0
db 0x2D, 0x48, 0xAC, 0xBE ; 00F890: provisional 68k move.l a0, -$5342(a6)
db 0x3D, 0x7C, 0x00, 0x02, 0xAC, 0x8C ; 00F894: provisional 68k move.w #$2, -$5374(a6)
db 0x4E, 0x75 ; 00F89A: provisional 68k rts 
db 0x00, 0x1A, 0x00, 0x1A ; 00F89C: provisional 68k ori.b #$1a, (a2)+
db 0x00, 0x1A, 0x00, 0x1A ; 00F8A0: provisional 68k ori.b #$1a, (a2)+
db 0x00, 0x1A, 0x00, 0x52 ; 00F8A4: provisional 68k ori.b #$52, (a2)+
db 0x00, 0x54, 0x00, 0x1A ; 00F8A8: provisional 68k ori.w #$1a, (a4)
db 0x01, 0x42 ; 00F8AC: provisional 68k bchg.b d0, d2
db 0x00, 0x1A, 0x01, 0x86 ; 00F8AE: provisional 68k ori.b #$86, (a2)+
db 0x00, 0x1A, 0x02, 0x10 ; 00F8B2: provisional 68k ori.b #$10, (a2)+
db 0x4E, 0x75 ; 00F8B6: provisional 68k rts 
db 0x32, 0x3C, 0x80, 0x00 ; 00F8B8: provisional 68k move.w #$8000, d1
db 0x61, 0x00, 0xD3, 0x40 ; 00F8BC: provisional 68k bsr.w $cbfe
db 0x63, 0x72 ; 00F8C0: provisional 68k bls.b $f934
db 0x65, 0x61 ; 00F8C2: provisional 68k bcs.b $f925
db 0x74, 0x65 ; 00F8C4: provisional 68k moveq #$65, d2
db 0x5F, 0x6F, 0x62, 0x6A ; 00F8C6: provisional 68k subq.w #$7, $626a(a7)
db 0x65, 0x63 ; 00F8CA: provisional 68k bcs.b $f92f
db 0x74, 0x73 ; 00F8CC: provisional 68k moveq #$73, d2
db 0x3A, 0x20 ; 00F8CE: provisional 68k move.w -(a0), d5
db 0x4F, 0x62 ; file 00F8D0
db 0x6A, 0x65 ; 00F8D2: provisional 68k bpl.b $f939
db 0x63, 0x74 ; 00F8D4: provisional 68k bls.b $f94a
db 0x20, 0x65 ; 00F8D6: provisional 68k movea.l -(a5), a0
db 0x76, 0x65 ; 00F8D8: provisional 68k moveq #$65, d3
db 0x6E, 0x74 ; 00F8DA: provisional 68k bgt.b $f950
db 0x20, 0x76, 0x61, 0x6C, 0x75, 0x65 ; 00F8DC: provisional 68k movea.l $7565(a6, invalid.w), a0
db 0x20, 0x6C, 0x69, 0x73 ; 00F8E2: provisional 68k movea.l $6973(a4), a0
db 0x74, 0x20 ; 00F8E6: provisional 68k moveq #$20, d2
db 0x66, 0x75 ; 00F8E8: provisional 68k bne.b $f95f
db 0x6C, 0x6C ; 00F8EA: provisional 68k bge.b $f958
db 0x00, 0x00, 0x4E, 0x75 ; 00F8EC: provisional 68k ori.b #$75, d0
db 0x48, 0xA7, 0x30, 0x00 ; 00F8F0: provisional 68k movem.w d2-d3, -(a7)
db 0x42, 0x80 ; 00F8F4: provisional 68k clr.l d0
db 0x42, 0x81 ; 00F8F6: provisional 68k clr.l d1
db 0x42, 0x82 ; 00F8F8: provisional 68k clr.l d2
db 0x42, 0x83 ; 00F8FA: provisional 68k clr.l d3
db 0x42, 0x84 ; 00F8FC: provisional 68k clr.l d4
db 0x42, 0x85 ; 00F8FE: provisional 68k clr.l d5
db 0x10, 0x29, 0x00, 0x00 ; 00F900: provisional 68k move.b $0(a1), d0
db 0x12, 0x29, 0x00, 0x02 ; 00F904: provisional 68k move.b $2(a1), d1
db 0x14, 0x29, 0x00, 0x01 ; 00F908: provisional 68k move.b $1(a1), d2
db 0x36, 0x29, 0x00, 0x04 ; 00F90C: provisional 68k move.w $4(a1), d3
db 0x38, 0x29, 0x00, 0x06 ; 00F910: provisional 68k move.w $6(a1), d4
db 0x1A, 0x29, 0x00, 0x03 ; 00F914: provisional 68k move.b $3(a1), d5
db 0x3F, 0x3C, 0x00, 0x06 ; 00F918: provisional 68k move.w #$6, -(a7)
db 0x2F, 0x08 ; 00F91C: provisional 68k move.l a0, -(a7)
db 0x2D, 0x40, 0xCF, 0xE8 ; 00F91E: provisional 68k move.l d0, -$3018(a6)
db 0x2D, 0x43, 0xCF, 0xEC ; 00F922: provisional 68k move.l d3, -$3014(a6)
db 0x2D, 0x44, 0xCF, 0xF0 ; 00F926: provisional 68k move.l d4, -$3010(a6)
db 0x2D, 0x41, 0xCF, 0xF4 ; 00F92A: provisional 68k move.l d1, -$300c(a6)
db 0x2D, 0x42, 0xCF, 0xF8 ; 00F92E: provisional 68k move.l d2, -$3008(a6)
db 0x2D, 0x45, 0xCF, 0xFC ; 00F932: provisional 68k move.l d5, -$3004(a6)
db 0x61, 0x00, 0x15, 0xC6 ; 00F936: provisional 68k bsr.w $10efe
db 0x3F, 0x29, 0x00, 0x0A ; 00F93A: provisional 68k move.w $a(a1), -(a7)
db 0x3F, 0x29, 0x00, 0x08 ; 00F93E: provisional 68k move.w $8(a1), -(a7)
db 0x2F, 0x08 ; 00F942: provisional 68k move.l a0, -(a7)
db 0x61, 0x00, 0x2C, 0x00 ; 00F944: provisional 68k bsr.w $12546
db 0x4C, 0x9F, 0x00, 0x0C ; 00F948: provisional 68k movem.w (a7)+, d2-d3
db 0x30, 0x29, 0x00, 0x0C ; 00F94C: provisional 68k move.w $c(a1), d0
db 0x0C, 0x40, 0xFF, 0xFE ; 00F950: provisional 68k cmpi.w #$fffe, d0
db 0x66, 0x3E ; 00F954: provisional 68k bne.b $f994
db 0x48, 0xE7, 0x00, 0xD0 ; 00F956: provisional 68k movem.l a0-a1/a3, -(a7)
db 0x0C, 0x6E, 0x00, 0x10, 0xAC, 0xBC ; 00F95A: provisional 68k cmpi.w #$10, -$5344(a6)
db 0x67, 0x00, 0x00, 0x52 ; 00F960: provisional 68k beq.w $f9b4
db 0x26, 0x48 ; 00F964: provisional 68k movea.l a0, a3
db 0x3F, 0x3C, 0x00, 0x01 ; 00F966: provisional 68k move.w #$1, -(a7)
db 0x2F, 0x2E, 0xA9, 0x04 ; 00F96A: provisional 68k move.l -$56fc(a6), -(a7)
db 0x61, 0x00, 0xD5, 0x3A ; 00F96E: provisional 68k bsr.w $ceaa
db 0x3F, 0x02 ; 00F972: provisional 68k move.w d2, -(a7)
db 0x2F, 0x0A ; 00F974: provisional 68k move.l a2, -(a7)
db 0x3F, 0x2E, 0xAC, 0xB8 ; 00F976: provisional 68k move.w -$5348(a6), -(a7)
db 0x2F, 0x08 ; 00F97A: provisional 68k move.l a0, -(a7)
db 0x61, 0x00, 0xF9, 0xDE ; 00F97C: provisional 68k bsr.w $f35c
db 0x22, 0x6E, 0xAC, 0xBE ; 00F980: provisional 68k movea.l -$5342(a6), a1
db 0x22, 0xCB ; 00F984: provisional 68k move.l a3, (a1)+
db 0x22, 0xC8 ; 00F986: provisional 68k move.l a0, (a1)+
db 0x2D, 0x49, 0xAC, 0xBE ; 00F988: provisional 68k move.l a1, -$5342(a6)
db 0x52, 0x6E, 0xAC, 0xBC ; 00F98C: provisional 68k addq.w #$1, -$5344(a6)
db 0x4C, 0xDF, 0x0B, 0x00 ; 00F990: provisional 68k movem.l (a7)+, a0-a1/a3
db 0x2D, 0x43, 0xCF, 0xE8 ; 00F994: provisional 68k move.l d3, -$3018(a6)
db 0x2D, 0x4A, 0xCF, 0xEC ; 00F998: provisional 68k move.l a2, -$3014(a6)
db 0x2D, 0x42, 0xCF, 0xF0 ; 00F99C: provisional 68k move.l d2, -$3010(a6)
db 0x2F, 0x08 ; 00F9A0: provisional 68k move.l a0, -(a7)
db 0x61, 0x00, 0x17, 0x32 ; 00F9A2: provisional 68k bsr.w $110d6
db 0x43, 0xE9, 0x00, 0x0E ; 00F9A6: provisional 68k lea.l $e(a1), a1
db 0x2F, 0x09 ; 00F9AA: provisional 68k move.l a1, -(a7)
db 0x2F, 0x08 ; 00F9AC: provisional 68k move.l a0, -(a7)
db 0x61, 0x00, 0x17, 0xF2 ; 00F9AE: provisional 68k bsr.w $111a2
db 0x4E, 0x75 ; 00F9B2: provisional 68k rts 
db 0x32, 0x3C, 0x80, 0x00 ; 00F9B4: provisional 68k move.w #$8000, d1
db 0x61, 0x00, 0xD2, 0x44 ; 00F9B8: provisional 68k bsr.w $cbfe
db 0x63, 0x72 ; 00F9BC: provisional 68k bls.b $fa30
db 0x74, 0x5F ; 00F9BE: provisional 68k moveq #$5f, d2
db 0x70, 0x69 ; 00F9C0: provisional 68k moveq #$69, d0
db 0x63, 0x3A ; 00F9C2: provisional 68k bls.b $f9fe
db 0x20, 0x44 ; 00F9C4: provisional 68k movea.l d4, a0
db 0x61, 0x74 ; 00F9C6: provisional 68k bsr.b $fa3c
db 0x61, 0x20 ; 00F9C8: provisional 68k bsr.b $f9ea
db 0x70, 0x61 ; 00F9CA: provisional 68k moveq #$61, d0
db 0x6C, 0x65 ; 00F9CC: provisional 68k bge.b $fa33
db 0x74, 0x74 ; 00F9CE: provisional 68k moveq #$74, d2
db 0x65, 0x20 ; 00F9D0: provisional 68k bcs.b $f9f2
db 0x6C, 0x69 ; 00F9D2: provisional 68k bge.b $fa3d
db 0x73, 0x74 ; file 00F9D4
db 0x20, 0x66 ; 00F9D6: provisional 68k movea.l -(a6), a0
db 0x75, 0x6C ; file 00F9D8
db 0x6C, 0x21 ; 00F9DA: provisional 68k bge.b $f9fd
db 0x00, 0x00, 0x42, 0x40 ; 00F9DC: provisional 68k ori.b #$40, d0
db 0x42, 0x41 ; 00F9E0: provisional 68k clr.w d1
db 0x10, 0x29, 0x00, 0x00 ; 00F9E2: provisional 68k move.b $0(a1), d0
db 0x12, 0x29, 0x00, 0x01 ; 00F9E6: provisional 68k move.b $1(a1), d1
