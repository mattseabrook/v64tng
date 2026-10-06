; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00C6D4–00C8CF, inclusive.
cdi_nodv_entry_00c6d4:
db 0x48, 0xE7, 0x18, 0xC0 ; 00C6D4: provisional 68k movem.l d3-d4/a0-a1, -(a7)
db 0x20, 0x40 ; 00C6D8: provisional 68k movea.l d0, a0
db 0x36, 0x28, 0x00, 0x2C ; 00C6DA: provisional 68k move.w $2c(a0), d3
db 0x38, 0x03 ; 00C6DE: provisional 68k move.w d3, d4
db 0xE5, 0x44 ; 00C6E0: provisional 68k asl.w #$2, d4
db 0x43, 0xF0, 0x40, 0x2E ; 00C6E2: provisional 68k lea.l $2e(a0, d4.w), a1
db 0x52, 0x43 ; 00C6E6: provisional 68k addq.w #$1, d3
db 0x48, 0xC3 ; 00C6E8: provisional 68k ext.l d3
db 0x86, 0xFC, 0x00, 0x04 ; 00C6EA: provisional 68k divu.w #$4, d3
db 0x48, 0x43 ; 00C6EE: provisional 68k swap d3
db 0xB6, 0x68, 0x00, 0x2A ; 00C6F0: provisional 68k cmp.w $2a(a0), d3
db 0x67, 0x48 ; 00C6F4: provisional 68k beq.b $c73e
db 0x31, 0x43, 0x00, 0x2C ; 00C6F6: provisional 68k move.w d3, $2c(a0)
db 0x32, 0x81 ; 00C6FA: provisional 68k move.w d1, (a1)
db 0x33, 0x42, 0x00, 0x02 ; 00C6FC: provisional 68k move.w d2, $2(a1)
db 0x0C, 0x68, 0x00, 0x04, 0x00, 0x02 ; 00C700: provisional 68k cmpi.w #$4, $2(a0)
db 0x67, 0x06 ; 00C706: provisional 68k beq.b $c70e
db 0x4C, 0xDF, 0x03, 0x18 ; 00C708: provisional 68k movem.l (a7)+, d3-d4/a0-a1
db 0x4E, 0x75 ; 00C70C: provisional 68k rts 
db 0x36, 0x28, 0x00, 0x2A ; 00C70E: provisional 68k move.w $2a(a0), d3
db 0x38, 0x03 ; 00C712: provisional 68k move.w d3, d4
db 0xE5, 0x44 ; 00C714: provisional 68k asl.w #$2, d4
db 0x43, 0xF0, 0x40, 0x2E ; 00C716: provisional 68k lea.l $2e(a0, d4.w), a1
db 0x31, 0x51, 0x00, 0x28 ; 00C71A: provisional 68k move.w (a1), $28(a0)
db 0x31, 0x69, 0x00, 0x02, 0x00, 0x26 ; 00C71E: provisional 68k move.w $2(a1), $26(a0)
db 0x52, 0x43 ; 00C724: provisional 68k addq.w #$1, d3
db 0x48, 0xC3 ; 00C726: provisional 68k ext.l d3
db 0x86, 0xFC, 0x00, 0x04 ; 00C728: provisional 68k divu.w #$4, d3
db 0x48, 0x43 ; 00C72C: provisional 68k swap d3
db 0x31, 0x43, 0x00, 0x2A ; 00C72E: provisional 68k move.w d3, $2a(a0)
db 0x31, 0x7C, 0x00, 0x01, 0x00, 0x02 ; 00C732: provisional 68k move.w #$1, $2(a0)
db 0x4C, 0xDF, 0x03, 0x18 ; 00C738: provisional 68k movem.l (a7)+, d3-d4/a0-a1
db 0x4E, 0x75 ; 00C73C: provisional 68k rts 
db 0x42, 0xE7 ; 00C73E: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 00C740: provisional 68k pea.l $c74a(pc)
db 0x61, 0x00, 0x04, 0x8A ; 00C744: provisional 68k bsr.w $cbd0
db 0x60, 0x12 ; 00C748: provisional 68k bra.b $c75c
db 0x68, 0x69 ; 00C74A: provisional 68k bvc.b $c7b5
db 0x5F, 0x65 ; 00C74C: provisional 68k subq.w #$7, -(a5)
db 0x76, 0x65 ; 00C74E: provisional 68k moveq #$65, d3
db 0x6E, 0x74 ; 00C750: provisional 68k bgt.b $c7c6
db 0x3A, 0x20 ; 00C752: provisional 68k move.w -(a0), d5
db 0x6C, 0x77 ; 00C754: provisional 68k bge.b $c7cd
db 0x6D, 0x20 ; 00C756: provisional 68k blt.b $c778
db 0x3D, 0x20 ; 00C758: provisional 68k move.w -(a0), -(a6)
db 0x00, 0x00, 0x3F, 0x28 ; 00C75A: provisional 68k ori.b #$28, d0
db 0x00, 0x2A, 0x61, 0x00, 0x03, 0xBC ; 00C75E: provisional 68k ori.b #$0, $3bc(a2)
db 0x44, 0xDF ; 00C764: provisional 68k move.w (a7)+, ccr
db 0x42, 0xE7 ; 00C766: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 00C768: provisional 68k pea.l $c772(pc)
db 0x61, 0x00, 0x04, 0x62 ; 00C76C: provisional 68k bsr.w $cbd0
db 0x60, 0x08 ; 00C770: provisional 68k bra.b $c77a
db 0x20, 0x68, 0x77, 0x6D ; 00C772: provisional 68k movea.l $776d(a0), a0
db 0x20, 0x3D ; file 00C776
db 0x20, 0x00 ; 00C778: provisional 68k move.l d0, d0
db 0x3F, 0x28, 0x00, 0x2C ; 00C77A: provisional 68k move.w $2c(a0), -(a7)
db 0x61, 0x00, 0x03, 0x9E ; 00C77E: provisional 68k bsr.w $cb1e
db 0x44, 0xDF ; 00C782: provisional 68k move.w (a7)+, ccr
db 0x61, 0x00, 0x04, 0x30 ; 00C784: provisional 68k bsr.w $cbb6
db 0x42, 0xE7 ; 00C788: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 00C78A: provisional 68k pea.l $c794(pc)
db 0x61, 0x00, 0x04, 0x40 ; 00C78E: provisional 68k bsr.w $cbd0
db 0x60, 0x12 ; 00C792: provisional 68k bra.b $c7a6
db 0x65, 0x76 ; 00C794: provisional 68k bcs.b $c80c
db 0x65, 0x6E ; 00C796: provisional 68k bcs.b $c806
db 0x74, 0x20 ; 00C798: provisional 68k moveq #$20, d2
db 0x2F, 0x20 ; 00C79A: provisional 68k move.l -(a0), -(a7)
db 0x76, 0x61 ; 00C79C: provisional 68k moveq #$61, d3
db 0x6C, 0x75 ; 00C79E: provisional 68k bge.b $c815
db 0x65, 0x20 ; 00C7A0: provisional 68k bcs.b $c7c2
db 0x3D, 0x20 ; 00C7A2: provisional 68k move.w -(a0), -(a6)
db 0x00, 0x00, 0x3F, 0x02 ; 00C7A4: provisional 68k ori.b #$2, d0
db 0x61, 0x00, 0x03, 0x74 ; 00C7A8: provisional 68k bsr.w $cb1e
db 0x44, 0xDF ; 00C7AC: provisional 68k move.w (a7)+, ccr
db 0x42, 0xE7 ; 00C7AE: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 00C7B0: provisional 68k pea.l $c7ba(pc)
db 0x61, 0x00, 0x04, 0x1A ; 00C7B4: provisional 68k bsr.w $cbd0
db 0x60, 0x02 ; 00C7B8: provisional 68k bra.b $c7bc
db 0x20, 0x00 ; 00C7BA: provisional 68k move.l d0, d0
db 0x3F, 0x01 ; 00C7BC: provisional 68k move.w d1, -(a7)
db 0x61, 0x00, 0x03, 0x5E ; 00C7BE: provisional 68k bsr.w $cb1e
db 0x44, 0xDF ; 00C7C2: provisional 68k move.w (a7)+, ccr
db 0x61, 0x00, 0x03, 0xF0 ; 00C7C4: provisional 68k bsr.w $cbb6
db 0x41, 0xE8, 0x00, 0x2E ; 00C7C8: provisional 68k lea.l $2e(a0), a0
db 0x2F, 0x08 ; 00C7CC: provisional 68k move.l a0, -(a7)
db 0x30, 0x3C, 0x00, 0x03 ; 00C7CE: provisional 68k move.w #$3, d0
db 0x42, 0xE7 ; 00C7D2: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 00C7D4: provisional 68k pea.l $c7de(pc)
db 0x61, 0x00, 0x03, 0xF6 ; 00C7D8: provisional 68k bsr.w $cbd0
db 0x60, 0x02 ; 00C7DC: provisional 68k bra.b $c7e0
db 0x20, 0x00 ; 00C7DE: provisional 68k move.l d0, d0
db 0x3F, 0x18 ; 00C7E0: provisional 68k move.w (a0)+, -(a7)
db 0x61, 0x00, 0x03, 0x3A ; 00C7E2: provisional 68k bsr.w $cb1e
db 0x44, 0xDF ; 00C7E6: provisional 68k move.w (a7)+, ccr
db 0x42, 0xE7 ; 00C7E8: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 00C7EA: provisional 68k pea.l $c7f4(pc)
db 0x61, 0x00, 0x03, 0xE0 ; 00C7EE: provisional 68k bsr.w $cbd0
db 0x60, 0x02 ; 00C7F2: provisional 68k bra.b $c7f6
db 0x20, 0x00 ; 00C7F4: provisional 68k move.l d0, d0
db 0x3F, 0x18 ; 00C7F6: provisional 68k move.w (a0)+, -(a7)
db 0x61, 0x00, 0x03, 0x24 ; 00C7F8: provisional 68k bsr.w $cb1e
db 0x44, 0xDF ; 00C7FC: provisional 68k move.w (a7)+, ccr
db 0x61, 0x00, 0x03, 0xB6 ; 00C7FE: provisional 68k bsr.w $cbb6
db 0x51, 0xC8, 0xFF, 0xCE ; 00C802: provisional 68k dbra d0, $c7d2
db 0x20, 0x5F ; 00C806: provisional 68k movea.l (a7)+, a0
db 0x61, 0x00, 0x03, 0xAC ; 00C808: provisional 68k bsr.w $cbb6
db 0x48, 0x7A, 0x00, 0x08 ; 00C80C: provisional 68k pea.l $c816(pc)
db 0x61, 0x00, 0x03, 0xBE ; 00C810: provisional 68k bsr.w $cbd0
db 0x60, 0x0E ; 00C814: provisional 68k bra.b $c824
db 0x48, 0x6F, 0x74, 0x73 ; 00C816: provisional 68k pea.l $7473(a7)
db 0x70, 0x6F ; 00C81A: provisional 68k moveq #$6f, d0
db 0x74, 0x73 ; 00C81C: provisional 68k moveq #$73, d2
db 0x3A, 0x2D, 0x20, 0x0D ; 00C81E: provisional 68k move.w $200d(a5), d5
db 0x0A, 0x00, 0x3E, 0x3C ; 00C822: provisional 68k eori.b #$3c, d0
db 0x00, 0x03, 0x30, 0x18 ; 00C826: provisional 68k ori.b #$18, d3
db 0x54, 0x48 ; 00C82A: provisional 68k addq.w #$2, a0
db 0x61, 0x00, 0x42, 0x04 ; 00C82C: provisional 68k bsr.w $10a32
db 0x42, 0xE7 ; 00C830: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 00C832: provisional 68k pea.l $c83c(pc)
db 0x61, 0x00, 0x03, 0x98 ; 00C836: provisional 68k bsr.w $cbd0
db 0x60, 0x08 ; 00C83A: provisional 68k bra.b $c844
db 0x78, 0x2F ; 00C83C: provisional 68k moveq #$2f, d4
db 0x79, 0x20 ; file 00C83E
db 0x3D, 0x20 ; 00C840: provisional 68k move.w -(a0), -(a6)
db 0x00, 0x00, 0x3F, 0x29 ; 00C842: provisional 68k ori.b #$29, d0
db 0x00, 0x02, 0x61, 0x00 ; 00C846: provisional 68k ori.b #$0, d2
db 0x02, 0xD4 ; file 00C84A
db 0x44, 0xDF ; 00C84C: provisional 68k move.w (a7)+, ccr
db 0x42, 0xE7 ; 00C84E: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 00C850: provisional 68k pea.l $c85a(pc)
db 0x61, 0x00, 0x03, 0x7A ; 00C854: provisional 68k bsr.w $cbd0
db 0x60, 0x02 ; 00C858: provisional 68k bra.b $c85c
db 0x20, 0x00 ; 00C85A: provisional 68k move.l d0, d0
db 0x3F, 0x29, 0x00, 0x04 ; 00C85C: provisional 68k move.w $4(a1), -(a7)
db 0x61, 0x00, 0x02, 0xBC ; 00C860: provisional 68k bsr.w $cb1e
db 0x44, 0xDF ; 00C864: provisional 68k move.w (a7)+, ccr
db 0x42, 0xE7 ; 00C866: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 00C868: provisional 68k pea.l $c872(pc)
db 0x61, 0x00, 0x03, 0x62 ; 00C86C: provisional 68k bsr.w $cbd0
db 0x60, 0x10 ; 00C870: provisional 68k bra.b $c882
db 0x20, 0x64 ; 00C872: provisional 68k movea.l -(a4), a0
db 0x69, 0x6D ; 00C874: provisional 68k bvs.b $c8e3
db 0x65, 0x6E ; 00C876: provisional 68k bcs.b $c8e6
db 0x73, 0x69 ; file 00C878
db 0x6F, 0x6E ; 00C87A: provisional 68k ble.b $c8ea
db 0x73, 0x20 ; file 00C87C
db 0x3D, 0x20 ; 00C87E: provisional 68k move.w -(a0), -(a6)
db 0x00, 0x00, 0x3F, 0x29 ; 00C880: provisional 68k ori.b #$29, d0
db 0x00, 0x06, 0x61, 0x00 ; 00C884: provisional 68k ori.b #$0, d6
db 0x02, 0x96, 0x44, 0xDF, 0x42, 0xE7 ; 00C888: provisional 68k andi.l #$44df42e7, (a6)
db 0x48, 0x7A, 0x00, 0x08 ; 00C88E: provisional 68k pea.l $c898(pc)
db 0x61, 0x00, 0x03, 0x3C ; 00C892: provisional 68k bsr.w $cbd0
db 0x60, 0x02 ; 00C896: provisional 68k bra.b $c89a
db 0x20, 0x00 ; 00C898: provisional 68k move.l d0, d0
db 0x3F, 0x29, 0x00, 0x08 ; 00C89A: provisional 68k move.w $8(a1), -(a7)
db 0x61, 0x00, 0x02, 0x7E ; 00C89E: provisional 68k bsr.w $cb1e
db 0x44, 0xDF ; 00C8A2: provisional 68k move.w (a7)+, ccr
db 0x61, 0x00, 0x03, 0x10 ; 00C8A4: provisional 68k bsr.w $cbb6
db 0x51, 0xCF, 0xFF, 0x7E ; 00C8A8: provisional 68k dbra d7, $c828
db 0x61, 0x00, 0x03, 0x08 ; 00C8AC: provisional 68k bsr.w $cbb6
db 0x32, 0x3C, 0x80, 0x00 ; 00C8B0: provisional 68k move.w #$8000, d1
db 0x61, 0x00, 0x03, 0x48 ; 00C8B4: provisional 68k bsr.w $cbfe
db 0x68, 0x69 ; 00C8B8: provisional 68k bvc.b $c923
db 0x5F, 0x65 ; 00C8BA: provisional 68k subq.w #$7, -(a5)
db 0x76, 0x65 ; 00C8BC: provisional 68k moveq #$65, d3
db 0x6E, 0x74 ; 00C8BE: provisional 68k bgt.b $c934
db 0x3A, 0x20 ; 00C8C0: provisional 68k move.w -(a0), d5
db 0x66, 0x69 ; 00C8C2: provisional 68k bne.b $c92d
db 0x66, 0x6F ; 00C8C4: provisional 68k bne.b $c935
db 0x20, 0x6F, 0x76, 0x65 ; 00C8C6: provisional 68k movea.l $7665(a7), a0
db 0x72, 0x66 ; 00C8CA: provisional 68k moveq #$66, d1
db 0x6C, 0x6F ; 00C8CC: provisional 68k bge.b $c93d
db 0x77, 0x00 ; file 00C8CE
