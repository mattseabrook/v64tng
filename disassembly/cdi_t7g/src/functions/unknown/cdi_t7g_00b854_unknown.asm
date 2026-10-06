; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00B854–00BA4F, inclusive.
cdi_t7g_entry_00b854:
db 0x48, 0xE7, 0x18, 0xC0 ; 00B854: provisional 68k movem.l d3-d4/a0-a1, -(a7)
db 0x20, 0x40 ; 00B858: provisional 68k movea.l d0, a0
db 0x36, 0x28, 0x00, 0x2C ; 00B85A: provisional 68k move.w $2c(a0), d3
db 0x38, 0x03 ; 00B85E: provisional 68k move.w d3, d4
db 0xE5, 0x44 ; 00B860: provisional 68k asl.w #$2, d4
db 0x43, 0xF0, 0x40, 0x2E ; 00B862: provisional 68k lea.l $2e(a0, d4.w), a1
db 0x52, 0x43 ; 00B866: provisional 68k addq.w #$1, d3
db 0x48, 0xC3 ; 00B868: provisional 68k ext.l d3
db 0x86, 0xFC, 0x00, 0x04 ; 00B86A: provisional 68k divu.w #$4, d3
db 0x48, 0x43 ; 00B86E: provisional 68k swap d3
db 0xB6, 0x68, 0x00, 0x2A ; 00B870: provisional 68k cmp.w $2a(a0), d3
db 0x67, 0x48 ; 00B874: provisional 68k beq.b $b8be
db 0x31, 0x43, 0x00, 0x2C ; 00B876: provisional 68k move.w d3, $2c(a0)
db 0x32, 0x81 ; 00B87A: provisional 68k move.w d1, (a1)
db 0x33, 0x42, 0x00, 0x02 ; 00B87C: provisional 68k move.w d2, $2(a1)
db 0x0C, 0x68, 0x00, 0x04, 0x00, 0x02 ; 00B880: provisional 68k cmpi.w #$4, $2(a0)
db 0x67, 0x06 ; 00B886: provisional 68k beq.b $b88e
db 0x4C, 0xDF, 0x03, 0x18 ; 00B888: provisional 68k movem.l (a7)+, d3-d4/a0-a1
db 0x4E, 0x75 ; 00B88C: provisional 68k rts 
db 0x36, 0x28, 0x00, 0x2A ; 00B88E: provisional 68k move.w $2a(a0), d3
db 0x38, 0x03 ; 00B892: provisional 68k move.w d3, d4
db 0xE5, 0x44 ; 00B894: provisional 68k asl.w #$2, d4
db 0x43, 0xF0, 0x40, 0x2E ; 00B896: provisional 68k lea.l $2e(a0, d4.w), a1
db 0x31, 0x51, 0x00, 0x28 ; 00B89A: provisional 68k move.w (a1), $28(a0)
db 0x31, 0x69, 0x00, 0x02, 0x00, 0x26 ; 00B89E: provisional 68k move.w $2(a1), $26(a0)
db 0x52, 0x43 ; 00B8A4: provisional 68k addq.w #$1, d3
db 0x48, 0xC3 ; 00B8A6: provisional 68k ext.l d3
db 0x86, 0xFC, 0x00, 0x04 ; 00B8A8: provisional 68k divu.w #$4, d3
db 0x48, 0x43 ; 00B8AC: provisional 68k swap d3
db 0x31, 0x43, 0x00, 0x2A ; 00B8AE: provisional 68k move.w d3, $2a(a0)
db 0x31, 0x7C, 0x00, 0x01, 0x00, 0x02 ; 00B8B2: provisional 68k move.w #$1, $2(a0)
db 0x4C, 0xDF, 0x03, 0x18 ; 00B8B8: provisional 68k movem.l (a7)+, d3-d4/a0-a1
db 0x4E, 0x75 ; 00B8BC: provisional 68k rts 
db 0x42, 0xE7 ; 00B8BE: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 00B8C0: provisional 68k pea.l $b8ca(pc)
db 0x61, 0x00, 0x04, 0x8A ; 00B8C4: provisional 68k bsr.w $bd50
db 0x60, 0x12 ; 00B8C8: provisional 68k bra.b $b8dc
db 0x68, 0x69 ; 00B8CA: provisional 68k bvc.b $b935
db 0x5F, 0x65 ; 00B8CC: provisional 68k subq.w #$7, -(a5)
db 0x76, 0x65 ; 00B8CE: provisional 68k moveq #$65, d3
db 0x6E, 0x74 ; 00B8D0: provisional 68k bgt.b $b946
db 0x3A, 0x20 ; 00B8D2: provisional 68k move.w -(a0), d5
db 0x6C, 0x77 ; 00B8D4: provisional 68k bge.b $b94d
db 0x6D, 0x20 ; 00B8D6: provisional 68k blt.b $b8f8
db 0x3D, 0x20 ; 00B8D8: provisional 68k move.w -(a0), -(a6)
db 0x00, 0x00, 0x3F, 0x28 ; 00B8DA: provisional 68k ori.b #$28, d0
db 0x00, 0x2A, 0x61, 0x00, 0x03, 0xBC ; 00B8DE: provisional 68k ori.b #$0, $3bc(a2)
db 0x44, 0xDF ; 00B8E4: provisional 68k move.w (a7)+, ccr
db 0x42, 0xE7 ; 00B8E6: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 00B8E8: provisional 68k pea.l $b8f2(pc)
db 0x61, 0x00, 0x04, 0x62 ; 00B8EC: provisional 68k bsr.w $bd50
db 0x60, 0x08 ; 00B8F0: provisional 68k bra.b $b8fa
db 0x20, 0x68, 0x77, 0x6D ; 00B8F2: provisional 68k movea.l $776d(a0), a0
db 0x20, 0x3D ; file 00B8F6
db 0x20, 0x00 ; 00B8F8: provisional 68k move.l d0, d0
db 0x3F, 0x28, 0x00, 0x2C ; 00B8FA: provisional 68k move.w $2c(a0), -(a7)
db 0x61, 0x00, 0x03, 0x9E ; 00B8FE: provisional 68k bsr.w $bc9e
db 0x44, 0xDF ; 00B902: provisional 68k move.w (a7)+, ccr
db 0x61, 0x00, 0x04, 0x30 ; 00B904: provisional 68k bsr.w $bd36
db 0x42, 0xE7 ; 00B908: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 00B90A: provisional 68k pea.l $b914(pc)
db 0x61, 0x00, 0x04, 0x40 ; 00B90E: provisional 68k bsr.w $bd50
db 0x60, 0x12 ; 00B912: provisional 68k bra.b $b926
db 0x65, 0x76 ; 00B914: provisional 68k bcs.b $b98c
db 0x65, 0x6E ; 00B916: provisional 68k bcs.b $b986
db 0x74, 0x20 ; 00B918: provisional 68k moveq #$20, d2
db 0x2F, 0x20 ; 00B91A: provisional 68k move.l -(a0), -(a7)
db 0x76, 0x61 ; 00B91C: provisional 68k moveq #$61, d3
db 0x6C, 0x75 ; 00B91E: provisional 68k bge.b $b995
db 0x65, 0x20 ; 00B920: provisional 68k bcs.b $b942
db 0x3D, 0x20 ; 00B922: provisional 68k move.w -(a0), -(a6)
db 0x00, 0x00, 0x3F, 0x02 ; 00B924: provisional 68k ori.b #$2, d0
db 0x61, 0x00, 0x03, 0x74 ; 00B928: provisional 68k bsr.w $bc9e
db 0x44, 0xDF ; 00B92C: provisional 68k move.w (a7)+, ccr
db 0x42, 0xE7 ; 00B92E: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 00B930: provisional 68k pea.l $b93a(pc)
db 0x61, 0x00, 0x04, 0x1A ; 00B934: provisional 68k bsr.w $bd50
db 0x60, 0x02 ; 00B938: provisional 68k bra.b $b93c
db 0x20, 0x00 ; 00B93A: provisional 68k move.l d0, d0
db 0x3F, 0x01 ; 00B93C: provisional 68k move.w d1, -(a7)
db 0x61, 0x00, 0x03, 0x5E ; 00B93E: provisional 68k bsr.w $bc9e
db 0x44, 0xDF ; 00B942: provisional 68k move.w (a7)+, ccr
db 0x61, 0x00, 0x03, 0xF0 ; 00B944: provisional 68k bsr.w $bd36
db 0x41, 0xE8, 0x00, 0x2E ; 00B948: provisional 68k lea.l $2e(a0), a0
db 0x2F, 0x08 ; 00B94C: provisional 68k move.l a0, -(a7)
db 0x30, 0x3C, 0x00, 0x03 ; 00B94E: provisional 68k move.w #$3, d0
db 0x42, 0xE7 ; 00B952: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 00B954: provisional 68k pea.l $b95e(pc)
db 0x61, 0x00, 0x03, 0xF6 ; 00B958: provisional 68k bsr.w $bd50
db 0x60, 0x02 ; 00B95C: provisional 68k bra.b $b960
db 0x20, 0x00 ; 00B95E: provisional 68k move.l d0, d0
db 0x3F, 0x18 ; 00B960: provisional 68k move.w (a0)+, -(a7)
db 0x61, 0x00, 0x03, 0x3A ; 00B962: provisional 68k bsr.w $bc9e
db 0x44, 0xDF ; 00B966: provisional 68k move.w (a7)+, ccr
db 0x42, 0xE7 ; 00B968: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 00B96A: provisional 68k pea.l $b974(pc)
db 0x61, 0x00, 0x03, 0xE0 ; 00B96E: provisional 68k bsr.w $bd50
db 0x60, 0x02 ; 00B972: provisional 68k bra.b $b976
db 0x20, 0x00 ; 00B974: provisional 68k move.l d0, d0
db 0x3F, 0x18 ; 00B976: provisional 68k move.w (a0)+, -(a7)
db 0x61, 0x00, 0x03, 0x24 ; 00B978: provisional 68k bsr.w $bc9e
db 0x44, 0xDF ; 00B97C: provisional 68k move.w (a7)+, ccr
db 0x61, 0x00, 0x03, 0xB6 ; 00B97E: provisional 68k bsr.w $bd36
db 0x51, 0xC8, 0xFF, 0xCE ; 00B982: provisional 68k dbra d0, $b952
db 0x20, 0x5F ; 00B986: provisional 68k movea.l (a7)+, a0
db 0x61, 0x00, 0x03, 0xAC ; 00B988: provisional 68k bsr.w $bd36
db 0x48, 0x7A, 0x00, 0x08 ; 00B98C: provisional 68k pea.l $b996(pc)
db 0x61, 0x00, 0x03, 0xBE ; 00B990: provisional 68k bsr.w $bd50
db 0x60, 0x0E ; 00B994: provisional 68k bra.b $b9a4
db 0x48, 0x6F, 0x74, 0x73 ; 00B996: provisional 68k pea.l $7473(a7)
db 0x70, 0x6F ; 00B99A: provisional 68k moveq #$6f, d0
db 0x74, 0x73 ; 00B99C: provisional 68k moveq #$73, d2
db 0x3A, 0x2D, 0x20, 0x0D ; 00B99E: provisional 68k move.w $200d(a5), d5
db 0x0A, 0x00, 0x3E, 0x3C ; 00B9A2: provisional 68k eori.b #$3c, d0
db 0x00, 0x03, 0x30, 0x18 ; 00B9A6: provisional 68k ori.b #$18, d3
db 0x54, 0x48 ; 00B9AA: provisional 68k addq.w #$2, a0
db 0x61, 0x00, 0x42, 0x04 ; 00B9AC: provisional 68k bsr.w $fbb2
db 0x42, 0xE7 ; 00B9B0: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 00B9B2: provisional 68k pea.l $b9bc(pc)
db 0x61, 0x00, 0x03, 0x98 ; 00B9B6: provisional 68k bsr.w $bd50
db 0x60, 0x08 ; 00B9BA: provisional 68k bra.b $b9c4
db 0x78, 0x2F ; 00B9BC: provisional 68k moveq #$2f, d4
db 0x79, 0x20 ; file 00B9BE
db 0x3D, 0x20 ; 00B9C0: provisional 68k move.w -(a0), -(a6)
db 0x00, 0x00, 0x3F, 0x29 ; 00B9C2: provisional 68k ori.b #$29, d0
db 0x00, 0x02, 0x61, 0x00 ; 00B9C6: provisional 68k ori.b #$0, d2
db 0x02, 0xD4 ; file 00B9CA
db 0x44, 0xDF ; 00B9CC: provisional 68k move.w (a7)+, ccr
db 0x42, 0xE7 ; 00B9CE: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 00B9D0: provisional 68k pea.l $b9da(pc)
db 0x61, 0x00, 0x03, 0x7A ; 00B9D4: provisional 68k bsr.w $bd50
db 0x60, 0x02 ; 00B9D8: provisional 68k bra.b $b9dc
db 0x20, 0x00 ; 00B9DA: provisional 68k move.l d0, d0
db 0x3F, 0x29, 0x00, 0x04 ; 00B9DC: provisional 68k move.w $4(a1), -(a7)
db 0x61, 0x00, 0x02, 0xBC ; 00B9E0: provisional 68k bsr.w $bc9e
db 0x44, 0xDF ; 00B9E4: provisional 68k move.w (a7)+, ccr
db 0x42, 0xE7 ; 00B9E6: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 00B9E8: provisional 68k pea.l $b9f2(pc)
db 0x61, 0x00, 0x03, 0x62 ; 00B9EC: provisional 68k bsr.w $bd50
db 0x60, 0x10 ; 00B9F0: provisional 68k bra.b $ba02
db 0x20, 0x64 ; 00B9F2: provisional 68k movea.l -(a4), a0
db 0x69, 0x6D ; 00B9F4: provisional 68k bvs.b $ba63
db 0x65, 0x6E ; 00B9F6: provisional 68k bcs.b $ba66
db 0x73, 0x69 ; file 00B9F8
db 0x6F, 0x6E ; 00B9FA: provisional 68k ble.b $ba6a
db 0x73, 0x20 ; file 00B9FC
db 0x3D, 0x20 ; 00B9FE: provisional 68k move.w -(a0), -(a6)
db 0x00, 0x00, 0x3F, 0x29 ; 00BA00: provisional 68k ori.b #$29, d0
db 0x00, 0x06, 0x61, 0x00 ; 00BA04: provisional 68k ori.b #$0, d6
db 0x02, 0x96, 0x44, 0xDF, 0x42, 0xE7 ; 00BA08: provisional 68k andi.l #$44df42e7, (a6)
db 0x48, 0x7A, 0x00, 0x08 ; 00BA0E: provisional 68k pea.l $ba18(pc)
db 0x61, 0x00, 0x03, 0x3C ; 00BA12: provisional 68k bsr.w $bd50
db 0x60, 0x02 ; 00BA16: provisional 68k bra.b $ba1a
db 0x20, 0x00 ; 00BA18: provisional 68k move.l d0, d0
db 0x3F, 0x29, 0x00, 0x08 ; 00BA1A: provisional 68k move.w $8(a1), -(a7)
db 0x61, 0x00, 0x02, 0x7E ; 00BA1E: provisional 68k bsr.w $bc9e
db 0x44, 0xDF ; 00BA22: provisional 68k move.w (a7)+, ccr
db 0x61, 0x00, 0x03, 0x10 ; 00BA24: provisional 68k bsr.w $bd36
db 0x51, 0xCF, 0xFF, 0x7E ; 00BA28: provisional 68k dbra d7, $b9a8
db 0x61, 0x00, 0x03, 0x08 ; 00BA2C: provisional 68k bsr.w $bd36
db 0x32, 0x3C, 0x80, 0x00 ; 00BA30: provisional 68k move.w #$8000, d1
db 0x61, 0x00, 0x03, 0x48 ; 00BA34: provisional 68k bsr.w $bd7e
db 0x68, 0x69 ; 00BA38: provisional 68k bvc.b $baa3
db 0x5F, 0x65 ; 00BA3A: provisional 68k subq.w #$7, -(a5)
db 0x76, 0x65 ; 00BA3C: provisional 68k moveq #$65, d3
db 0x6E, 0x74 ; 00BA3E: provisional 68k bgt.b $bab4
db 0x3A, 0x20 ; 00BA40: provisional 68k move.w -(a0), d5
db 0x66, 0x69 ; 00BA42: provisional 68k bne.b $baad
db 0x66, 0x6F ; 00BA44: provisional 68k bne.b $bab5
db 0x20, 0x6F, 0x76, 0x65 ; 00BA46: provisional 68k movea.l $7665(a7), a0
db 0x72, 0x66 ; 00BA4A: provisional 68k moveq #$66, d1
db 0x6C, 0x6F ; 00BA4C: provisional 68k bge.b $babd
db 0x77, 0x00 ; file 00BA4E
