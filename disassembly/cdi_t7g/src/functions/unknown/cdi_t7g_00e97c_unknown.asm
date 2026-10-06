; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00E97C–00EB69, inclusive.
cdi_t7g_entry_00e97c:
db 0x20, 0x6E, 0xAC, 0x8E ; 00E97C: provisional 68k movea.l -$5372(a6), a0
db 0x22, 0x68, 0x00, 0x2C ; 00E980: provisional 68k movea.l $2c(a0), a1
db 0x42, 0x46 ; 00E984: provisional 68k clr.w d6
db 0x47, 0xEE, 0xAC, 0xC2 ; 00E986: provisional 68k lea.l -$533e(a6), a3
db 0x2D, 0x4B, 0xAC, 0xBE ; 00E98A: provisional 68k move.l a3, -$5342(a6)
db 0x42, 0x6E, 0xAC, 0xBC ; 00E98E: provisional 68k clr.w -$5344(a6)
db 0x47, 0xEE, 0xAC, 0x98 ; 00E992: provisional 68k lea.l -$5368(a6), a3
db 0x2F, 0x09 ; 00E996: provisional 68k move.l a1, -(a7)
db 0x3E, 0x29, 0x00, 0x00 ; 00E998: provisional 68k move.w $0(a1), d7
db 0x43, 0xE9, 0x00, 0x04 ; 00E99C: provisional 68k lea.l $4(a1), a1
db 0x53, 0x47 ; 00E9A0: provisional 68k subq.w #$1, d7
db 0x42, 0x41 ; 00E9A2: provisional 68k clr.w d1
db 0x34, 0x01 ; 00E9A4: provisional 68k move.w d1, d2
db 0x12, 0x19 ; 00E9A6: provisional 68k move.b (a1)+, d1
db 0x14, 0x19 ; 00E9A8: provisional 68k move.b (a1)+, d2
db 0x36, 0x19 ; 00E9AA: provisional 68k move.w (a1)+, d3
db 0x38, 0x19 ; 00E9AC: provisional 68k move.w (a1)+, d4
db 0x45, 0xE8, 0x00, 0x82 ; 00E9AE: provisional 68k lea.l $82(a0), a2
db 0x4A, 0x02 ; 00E9B2: provisional 68k tst.b d2
db 0x6A, 0x08 ; 00E9B4: provisional 68k bpl.b $e9be
db 0x45, 0xE8, 0x00, 0xC2 ; 00E9B6: provisional 68k lea.l $c2(a0), a2
db 0xC4, 0x7C, 0x00, 0x7F ; 00E9BA: provisional 68k and.w #$7f, d2
db 0x4A, 0x43 ; 00E9BE: provisional 68k tst.w d3
db 0x67, 0x10 ; 00E9C0: provisional 68k beq.b $e9d2
db 0xBC, 0x7C, 0x00, 0x10 ; 00E9C2: provisional 68k cmp.w #$10, d6
db 0x67, 0x00, 0x00, 0x70 ; 00E9C6: provisional 68k beq.w $ea38
db 0x36, 0xC3 ; 00E9CA: provisional 68k move.w d3, (a3)+
db 0x52, 0x46 ; 00E9CC: provisional 68k addq.w #$1, d6
db 0x36, 0x2E, 0xAC, 0x92 ; 00E9CE: provisional 68k move.w -$536e(a6), d3
db 0x48, 0xE7, 0xFF, 0xFC ; 00E9D2: provisional 68k movem.l d0-d7/a0-a5, -(a7)
db 0x43, 0xF1, 0x40, 0xFE ; 00E9D6: provisional 68k lea.l -$2(a1, d4.w), a1
db 0xD2, 0x41 ; 00E9DA: provisional 68k add.w d1, d1
db 0x32, 0x3B, 0x10, 0x3E ; 00E9DC: provisional 68k move.w $ea1c(pc, d1.w), d1
db 0x4E, 0xBB, 0x10, 0x3A ; 00E9E0: provisional 68k jsr $ea1c(pc, d1.w)
db 0x4C, 0xDF, 0x3F, 0xFF ; 00E9E4: provisional 68k movem.l (a7)+, d0-d7/a0-a5
db 0x51, 0xCF, 0xFF, 0xB8 ; 00E9E8: provisional 68k dbra d7, $e9a2
db 0x22, 0x5F ; 00E9EC: provisional 68k movea.l (a7)+, a1
db 0x4A, 0x69, 0x00, 0x02 ; 00E9EE: provisional 68k tst.w $2(a1)
db 0x67, 0x08 ; 00E9F2: provisional 68k beq.b $e9fc
db 0x22, 0x69, 0x09, 0x34 ; 00E9F4: provisional 68k movea.l $934(a1), a1
db 0x60, 0x00, 0xFF, 0x9C ; 00E9F8: provisional 68k bra.w $e996
db 0x2F, 0x28, 0x00, 0x2C ; 00E9FC: provisional 68k move.l $2c(a0), -(a7)
db 0x61, 0x00, 0xD7, 0x76 ; 00EA00: provisional 68k bsr.w $c178
db 0x41, 0xEE, 0xAC, 0x98 ; 00EA04: provisional 68k lea.l -$5368(a6), a0
db 0x2D, 0x48, 0xAC, 0x94 ; 00EA08: provisional 68k move.l a0, -$536c(a6)
db 0x41, 0xEE, 0xAC, 0xC2 ; 00EA0C: provisional 68k lea.l -$533e(a6), a0
db 0x2D, 0x48, 0xAC, 0xBE ; 00EA10: provisional 68k move.l a0, -$5342(a6)
db 0x3D, 0x7C, 0x00, 0x02, 0xAC, 0x8C ; 00EA14: provisional 68k move.w #$2, -$5374(a6)
db 0x4E, 0x75 ; 00EA1A: provisional 68k rts 
db 0x00, 0x1A, 0x00, 0x1A ; 00EA1C: provisional 68k ori.b #$1a, (a2)+
db 0x00, 0x1A, 0x00, 0x1A ; 00EA20: provisional 68k ori.b #$1a, (a2)+
db 0x00, 0x1A, 0x00, 0x52 ; 00EA24: provisional 68k ori.b #$52, (a2)+
db 0x00, 0x54, 0x00, 0x1A ; 00EA28: provisional 68k ori.w #$1a, (a4)
db 0x01, 0x42 ; 00EA2C: provisional 68k bchg.b d0, d2
db 0x00, 0x1A, 0x01, 0x86 ; 00EA2E: provisional 68k ori.b #$86, (a2)+
db 0x00, 0x1A, 0x02, 0x10 ; 00EA32: provisional 68k ori.b #$10, (a2)+
db 0x4E, 0x75 ; 00EA36: provisional 68k rts 
db 0x32, 0x3C, 0x80, 0x00 ; 00EA38: provisional 68k move.w #$8000, d1
db 0x61, 0x00, 0xD3, 0x40 ; 00EA3C: provisional 68k bsr.w $bd7e
db 0x63, 0x72 ; 00EA40: provisional 68k bls.b $eab4
db 0x65, 0x61 ; 00EA42: provisional 68k bcs.b $eaa5
db 0x74, 0x65 ; 00EA44: provisional 68k moveq #$65, d2
db 0x5F, 0x6F, 0x62, 0x6A ; 00EA46: provisional 68k subq.w #$7, $626a(a7)
db 0x65, 0x63 ; 00EA4A: provisional 68k bcs.b $eaaf
db 0x74, 0x73 ; 00EA4C: provisional 68k moveq #$73, d2
db 0x3A, 0x20 ; 00EA4E: provisional 68k move.w -(a0), d5
db 0x4F, 0x62 ; file 00EA50
db 0x6A, 0x65 ; 00EA52: provisional 68k bpl.b $eab9
db 0x63, 0x74 ; 00EA54: provisional 68k bls.b $eaca
db 0x20, 0x65 ; 00EA56: provisional 68k movea.l -(a5), a0
db 0x76, 0x65 ; 00EA58: provisional 68k moveq #$65, d3
db 0x6E, 0x74 ; 00EA5A: provisional 68k bgt.b $ead0
db 0x20, 0x76, 0x61, 0x6C, 0x75, 0x65 ; 00EA5C: provisional 68k movea.l $7565(a6, invalid.w), a0
db 0x20, 0x6C, 0x69, 0x73 ; 00EA62: provisional 68k movea.l $6973(a4), a0
db 0x74, 0x20 ; 00EA66: provisional 68k moveq #$20, d2
db 0x66, 0x75 ; 00EA68: provisional 68k bne.b $eadf
db 0x6C, 0x6C ; 00EA6A: provisional 68k bge.b $ead8
db 0x00, 0x00, 0x4E, 0x75 ; 00EA6C: provisional 68k ori.b #$75, d0
db 0x48, 0xA7, 0x30, 0x00 ; 00EA70: provisional 68k movem.w d2-d3, -(a7)
db 0x42, 0x80 ; 00EA74: provisional 68k clr.l d0
db 0x42, 0x81 ; 00EA76: provisional 68k clr.l d1
db 0x42, 0x82 ; 00EA78: provisional 68k clr.l d2
db 0x42, 0x83 ; 00EA7A: provisional 68k clr.l d3
db 0x42, 0x84 ; 00EA7C: provisional 68k clr.l d4
db 0x42, 0x85 ; 00EA7E: provisional 68k clr.l d5
db 0x10, 0x29, 0x00, 0x00 ; 00EA80: provisional 68k move.b $0(a1), d0
db 0x12, 0x29, 0x00, 0x02 ; 00EA84: provisional 68k move.b $2(a1), d1
db 0x14, 0x29, 0x00, 0x01 ; 00EA88: provisional 68k move.b $1(a1), d2
db 0x36, 0x29, 0x00, 0x04 ; 00EA8C: provisional 68k move.w $4(a1), d3
db 0x38, 0x29, 0x00, 0x06 ; 00EA90: provisional 68k move.w $6(a1), d4
db 0x1A, 0x29, 0x00, 0x03 ; 00EA94: provisional 68k move.b $3(a1), d5
db 0x3F, 0x3C, 0x00, 0x06 ; 00EA98: provisional 68k move.w #$6, -(a7)
db 0x2F, 0x08 ; 00EA9C: provisional 68k move.l a0, -(a7)
db 0x2D, 0x40, 0xCF, 0xE8 ; 00EA9E: provisional 68k move.l d0, -$3018(a6)
db 0x2D, 0x43, 0xCF, 0xEC ; 00EAA2: provisional 68k move.l d3, -$3014(a6)
db 0x2D, 0x44, 0xCF, 0xF0 ; 00EAA6: provisional 68k move.l d4, -$3010(a6)
db 0x2D, 0x41, 0xCF, 0xF4 ; 00EAAA: provisional 68k move.l d1, -$300c(a6)
db 0x2D, 0x42, 0xCF, 0xF8 ; 00EAAE: provisional 68k move.l d2, -$3008(a6)
db 0x2D, 0x45, 0xCF, 0xFC ; 00EAB2: provisional 68k move.l d5, -$3004(a6)
db 0x61, 0x00, 0x15, 0xC6 ; 00EAB6: provisional 68k bsr.w $1007e
db 0x3F, 0x29, 0x00, 0x0A ; 00EABA: provisional 68k move.w $a(a1), -(a7)
db 0x3F, 0x29, 0x00, 0x08 ; 00EABE: provisional 68k move.w $8(a1), -(a7)
db 0x2F, 0x08 ; 00EAC2: provisional 68k move.l a0, -(a7)
db 0x61, 0x00, 0x2C, 0x00 ; 00EAC4: provisional 68k bsr.w $116c6
db 0x4C, 0x9F, 0x00, 0x0C ; 00EAC8: provisional 68k movem.w (a7)+, d2-d3
db 0x30, 0x29, 0x00, 0x0C ; 00EACC: provisional 68k move.w $c(a1), d0
db 0x0C, 0x40, 0xFF, 0xFE ; 00EAD0: provisional 68k cmpi.w #$fffe, d0
db 0x66, 0x3E ; 00EAD4: provisional 68k bne.b $eb14
db 0x48, 0xE7, 0x00, 0xD0 ; 00EAD6: provisional 68k movem.l a0-a1/a3, -(a7)
db 0x0C, 0x6E, 0x00, 0x10, 0xAC, 0xBC ; 00EADA: provisional 68k cmpi.w #$10, -$5344(a6)
db 0x67, 0x00, 0x00, 0x52 ; 00EAE0: provisional 68k beq.w $eb34
db 0x26, 0x48 ; 00EAE4: provisional 68k movea.l a0, a3
db 0x3F, 0x3C, 0x00, 0x01 ; 00EAE6: provisional 68k move.w #$1, -(a7)
db 0x2F, 0x2E, 0xA9, 0x04 ; 00EAEA: provisional 68k move.l -$56fc(a6), -(a7)
db 0x61, 0x00, 0xD5, 0x3A ; 00EAEE: provisional 68k bsr.w $c02a
db 0x3F, 0x02 ; 00EAF2: provisional 68k move.w d2, -(a7)
db 0x2F, 0x0A ; 00EAF4: provisional 68k move.l a2, -(a7)
db 0x3F, 0x2E, 0xAC, 0xB8 ; 00EAF6: provisional 68k move.w -$5348(a6), -(a7)
db 0x2F, 0x08 ; 00EAFA: provisional 68k move.l a0, -(a7)
db 0x61, 0x00, 0xF9, 0xDE ; 00EAFC: provisional 68k bsr.w $e4dc
db 0x22, 0x6E, 0xAC, 0xBE ; 00EB00: provisional 68k movea.l -$5342(a6), a1
db 0x22, 0xCB ; 00EB04: provisional 68k move.l a3, (a1)+
db 0x22, 0xC8 ; 00EB06: provisional 68k move.l a0, (a1)+
db 0x2D, 0x49, 0xAC, 0xBE ; 00EB08: provisional 68k move.l a1, -$5342(a6)
db 0x52, 0x6E, 0xAC, 0xBC ; 00EB0C: provisional 68k addq.w #$1, -$5344(a6)
db 0x4C, 0xDF, 0x0B, 0x00 ; 00EB10: provisional 68k movem.l (a7)+, a0-a1/a3
db 0x2D, 0x43, 0xCF, 0xE8 ; 00EB14: provisional 68k move.l d3, -$3018(a6)
db 0x2D, 0x4A, 0xCF, 0xEC ; 00EB18: provisional 68k move.l a2, -$3014(a6)
db 0x2D, 0x42, 0xCF, 0xF0 ; 00EB1C: provisional 68k move.l d2, -$3010(a6)
db 0x2F, 0x08 ; 00EB20: provisional 68k move.l a0, -(a7)
db 0x61, 0x00, 0x17, 0x32 ; 00EB22: provisional 68k bsr.w $10256
db 0x43, 0xE9, 0x00, 0x0E ; 00EB26: provisional 68k lea.l $e(a1), a1
db 0x2F, 0x09 ; 00EB2A: provisional 68k move.l a1, -(a7)
db 0x2F, 0x08 ; 00EB2C: provisional 68k move.l a0, -(a7)
db 0x61, 0x00, 0x17, 0xF2 ; 00EB2E: provisional 68k bsr.w $10322
db 0x4E, 0x75 ; 00EB32: provisional 68k rts 
db 0x32, 0x3C, 0x80, 0x00 ; 00EB34: provisional 68k move.w #$8000, d1
db 0x61, 0x00, 0xD2, 0x44 ; 00EB38: provisional 68k bsr.w $bd7e
db 0x63, 0x72 ; 00EB3C: provisional 68k bls.b $ebb0
db 0x74, 0x5F ; 00EB3E: provisional 68k moveq #$5f, d2
db 0x70, 0x69 ; 00EB40: provisional 68k moveq #$69, d0
db 0x63, 0x3A ; 00EB42: provisional 68k bls.b $eb7e
db 0x20, 0x44 ; 00EB44: provisional 68k movea.l d4, a0
db 0x61, 0x74 ; 00EB46: provisional 68k bsr.b $ebbc
db 0x61, 0x20 ; 00EB48: provisional 68k bsr.b $eb6a
db 0x70, 0x61 ; 00EB4A: provisional 68k moveq #$61, d0
db 0x6C, 0x65 ; 00EB4C: provisional 68k bge.b $ebb3
db 0x74, 0x74 ; 00EB4E: provisional 68k moveq #$74, d2
db 0x65, 0x20 ; 00EB50: provisional 68k bcs.b $eb72
db 0x6C, 0x69 ; 00EB52: provisional 68k bge.b $ebbd
db 0x73, 0x74 ; file 00EB54
db 0x20, 0x66 ; 00EB56: provisional 68k movea.l -(a6), a0
db 0x75, 0x6C ; file 00EB58
db 0x6C, 0x21 ; 00EB5A: provisional 68k bge.b $eb7d
db 0x00, 0x00, 0x42, 0x40 ; 00EB5C: provisional 68k ori.b #$40, d0
db 0x42, 0x41 ; 00EB60: provisional 68k clr.w d1
db 0x10, 0x29, 0x00, 0x00 ; 00EB62: provisional 68k move.b $0(a1), d0
db 0x12, 0x29, 0x00, 0x01 ; 00EB66: provisional 68k move.b $1(a1), d1
