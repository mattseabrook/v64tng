; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 01145A–01164F, inclusive.
cdi_nodv_entry_01145a:
db 0x48, 0xE7, 0xC0, 0x00 ; 01145A: provisional 68k movem.l d0-d1, -(a7)
db 0x43, 0xED, 0x00, 0x00 ; 01145E: provisional 68k lea.l $0(a5), a1
db 0x22, 0x3C, 0x00, 0x00, 0x27, 0x10 ; 011462: provisional 68k move.l #$2710, d1
db 0x70, 0x00 ; 011468: provisional 68k moveq #$0, d0
db 0x30, 0x2E, 0xD0, 0x24 ; 01146A: provisional 68k move.w -$2fdc(a6), d0
db 0x80, 0xC1 ; 01146E: provisional 68k divu.w d1, d0
db 0xD0, 0x7C, 0x00, 0x30 ; 011470: provisional 68k add.w #$30, d0
db 0x12, 0xC0 ; 011474: provisional 68k move.b d0, (a1)+
db 0x42, 0x40 ; 011476: provisional 68k clr.w d0
db 0x48, 0x40 ; 011478: provisional 68k swap d0
db 0x82, 0xFC, 0x00, 0x0A ; 01147A: provisional 68k divu.w #$a, d1
db 0x48, 0xC1 ; 01147E: provisional 68k ext.l d1
db 0x66, 0x00, 0xFF, 0xEC ; 011480: provisional 68k bne.w $1146e
db 0x42, 0x11 ; 011484: provisional 68k clr.b (a1)
db 0x52, 0x6E, 0xD0, 0x24 ; 011486: provisional 68k addq.w #$1, -$2fdc(a6)
db 0x4C, 0xDF, 0x00, 0x03 ; 01148A: provisional 68k movem.l (a7)+, d0-d1
db 0x4E, 0x75 ; 01148E: provisional 68k rts 
db 0x4E, 0xD2 ; 011490: provisional 68k jmp (a2)
db 0x42, 0xE7 ; 011492: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 011494: provisional 68k pea.l $1149e(pc)
db 0x61, 0x00, 0xB7, 0x36 ; 011498: provisional 68k bsr.w $cbd0
db 0x60, 0x10 ; 01149C: provisional 68k bra.b $114ae
db 0x4F, 0x62 ; file 01149E
db 0x6A, 0x65 ; 0114A0: provisional 68k bpl.b $11507
db 0x63, 0x74 ; 0114A2: provisional 68k bls.b $11518
db 0x20, 0x74, 0x79, 0x70, 0x65, 0x20, 0x3D, 0x20 ; 0114A4: provisional 68k movea.l $65203d20(a4, invalid.w), a0
db 0x00, 0x00, 0x3F, 0x00 ; 0114AC: provisional 68k ori.b #$0, d0
db 0x61, 0x00, 0xB6, 0x6C ; 0114B0: provisional 68k bsr.w $cb1e
db 0x44, 0xDF ; 0114B4: provisional 68k move.w (a7)+, ccr
db 0x42, 0xE7 ; 0114B6: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 0114B8: provisional 68k pea.l $114c2(pc)
db 0x61, 0x00, 0xB7, 0x12 ; 0114BC: provisional 68k bsr.w $cbd0
db 0x60, 0x0A ; 0114C0: provisional 68k bra.b $114cc
db 0x20, 0x73, 0x69, 0x7A, 0x65, 0x20, 0x3D, 0x20, 0x00, 0x00 ; 0114C2: provisional 68k movea.l ([$65203d20, a3]), a0
db 0x3F, 0x28, 0x00, 0x14 ; 0114CC: provisional 68k move.w $14(a0), -(a7)
db 0x61, 0x00, 0xB6, 0x4C ; 0114D0: provisional 68k bsr.w $cb1e
db 0x44, 0xDF ; 0114D4: provisional 68k move.w (a7)+, ccr
db 0x32, 0x3C, 0x80, 0x00 ; 0114D6: provisional 68k move.w #$8000, d1
db 0x61, 0x00, 0xB7, 0x22 ; 0114DA: provisional 68k bsr.w $cbfe
db 0x67, 0x65 ; 0114DE: provisional 68k beq.b $11545
db 0x74, 0x5F ; 0114E0: provisional 68k moveq #$5f, d2
db 0x6F, 0x62 ; 0114E2: provisional 68k ble.b $11546
db 0x6A, 0x65 ; 0114E4: provisional 68k bpl.b $1154b
db 0x63, 0x74 ; 0114E6: provisional 68k bls.b $1155c
db 0x3A, 0x20 ; 0114E8: provisional 68k move.w -(a0), d5
db 0x52, 0x61 ; 0114EA: provisional 68k addq.w #$1, -(a1)
db 0x6E, 0x20 ; 0114EC: provisional 68k bgt.b $1150e
db 0x6F, 0x75 ; 0114EE: provisional 68k ble.b $11565
db 0x74, 0x20 ; 0114F0: provisional 68k moveq #$20, d2
db 0x6F, 0x66 ; 0114F2: provisional 68k ble.b $1155a
db 0x20, 0x62 ; 0114F4: provisional 68k movea.l -(a2), a0
db 0x69, 0x67 ; 0114F6: provisional 68k bvs.b $1155f
db 0x20, 0x6F, 0x62, 0x6A ; 0114F8: provisional 68k movea.l $626a(a7), a0
db 0x65, 0x63 ; 0114FC: provisional 68k bcs.b $11561
db 0x74, 0x73 ; 0114FE: provisional 68k moveq #$73, d2
db 0x21, 0x00 ; 011500: provisional 68k move.l d0, -(a0)
db 0x32, 0x3C, 0x80, 0x00 ; 011502: provisional 68k move.w #$8000, d1
db 0x61, 0x00, 0xB6, 0xF6 ; 011506: provisional 68k bsr.w $cbfe
db 0x67, 0x65 ; 01150A: provisional 68k beq.b $11571
db 0x74, 0x5F ; 01150C: provisional 68k moveq #$5f, d2
db 0x6F, 0x62 ; 01150E: provisional 68k ble.b $11572
db 0x6A, 0x65 ; 011510: provisional 68k bpl.b $11577
db 0x63, 0x74 ; 011512: provisional 68k bls.b $11588
db 0x3A, 0x20 ; 011514: provisional 68k move.w -(a0), d5
db 0x52, 0x61 ; 011516: provisional 68k addq.w #$1, -(a1)
db 0x6E, 0x20 ; 011518: provisional 68k bgt.b $1153a
db 0x6F, 0x75 ; 01151A: provisional 68k ble.b $11591
db 0x74, 0x20 ; 01151C: provisional 68k moveq #$20, d2
db 0x6F, 0x66 ; 01151E: provisional 68k ble.b $11586
db 0x20, 0x73, 0x6D, 0x61, 0x6C, 0x6C ; 011520: provisional 68k movea.l ([$6c6c, a3]), a0
db 0x20, 0x6F, 0x62, 0x6A ; 011526: provisional 68k movea.l $626a(a7), a0
db 0x65, 0x63 ; 01152A: provisional 68k bcs.b $1158f
db 0x74, 0x73 ; 01152C: provisional 68k moveq #$73, d2
db 0x21, 0x00 ; 01152E: provisional 68k move.l d0, -(a0)
db 0x42, 0xE7 ; 011530: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 011532: provisional 68k pea.l $1153c(pc)
db 0x61, 0x00, 0xB6, 0x98 ; 011536: provisional 68k bsr.w $cbd0
db 0x60, 0x10 ; 01153A: provisional 68k bra.b $1154c
db 0x6F, 0x62 ; 01153C: provisional 68k ble.b $115a0
db 0x6A, 0x65 ; 01153E: provisional 68k bpl.b $115a5
db 0x63, 0x74 ; 011540: provisional 68k bls.b $115b6
db 0x20, 0x73, 0x69, 0x7A, 0x65, 0x6F, 0x66, 0x20, 0x3A, 0x00 ; 011542: provisional 68k movea.l ([$656f6620, a3], $3a00), a0
db 0x3F, 0x28, 0x00, 0x14 ; 01154C: provisional 68k move.w $14(a0), -(a7)
db 0x61, 0x00, 0xB5, 0xCC ; 011550: provisional 68k bsr.w $cb1e
db 0x44, 0xDF ; 011554: provisional 68k move.w (a7)+, ccr
db 0x61, 0x00, 0xB6, 0x5E ; 011556: provisional 68k bsr.w $cbb6
db 0x32, 0x3C, 0x80, 0x00 ; 01155A: provisional 68k move.w #$8000, d1
db 0x61, 0x00, 0xB6, 0x9E ; 01155E: provisional 68k bsr.w $cbfe
db 0x67, 0x65 ; 011562: provisional 68k beq.b $115c9
db 0x74, 0x5F ; 011564: provisional 68k moveq #$5f, d2
db 0x6F, 0x62 ; 011566: provisional 68k ble.b $115ca
db 0x6A, 0x65 ; 011568: provisional 68k bpl.b $115cf
db 0x63, 0x74 ; 01156A: provisional 68k bls.b $115e0
db 0x3A, 0x20 ; 01156C: provisional 68k move.w -(a0), d5
db 0x4F, 0x62 ; file 01156E
db 0x6A, 0x65 ; 011570: provisional 68k bpl.b $115d7
db 0x63, 0x74 ; 011572: provisional 68k bls.b $115e8
db 0x20, 0x74, 0x6F, 0x6F, 0x20, 0x62 ; 011574: provisional 68k movea.l ([$2062, a4]), a0
db 0x69, 0x67 ; 01157A: provisional 68k bvs.b $115e3
db 0x00, 0x00, 0x4E, 0x75 ; 01157C: provisional 68k ori.b #$75, d0
db 0x48, 0x7A, 0x00, 0x08 ; 011580: provisional 68k pea.l $1158a(pc)
db 0x61, 0x00, 0xB6, 0x4A ; 011584: provisional 68k bsr.w $cbd0
db 0x60, 0x08 ; 011588: provisional 68k bra.b $11592
db 0x72, 0x6F ; 01158A: provisional 68k moveq #$6f, d1
db 0x6F, 0x74 ; 01158C: provisional 68k ble.b $11602
db 0x20, 0x2D, 0x20, 0x00 ; 01158E: provisional 68k move.l $2000(a5), d0
db 0x2F, 0x0D ; 011592: provisional 68k move.l a5, -(a7)
db 0x61, 0x00, 0xFC, 0x56 ; 011594: provisional 68k bsr.w $111ec
db 0x4E, 0x75 ; 011598: provisional 68k rts 
db 0x4E, 0x75 ; 01159A: provisional 68k rts 
db 0x48, 0x7A, 0x00, 0x08 ; 01159C: provisional 68k pea.l $115a6(pc)
db 0x61, 0x00, 0xB6, 0x2E ; 0115A0: provisional 68k bsr.w $cbd0
db 0x60, 0x1E ; 0115A4: provisional 68k bra.b $115c4
db 0x72, 0x6F ; 0115A6: provisional 68k moveq #$6f, d1
db 0x6F, 0x74 ; 0115A8: provisional 68k ble.b $1161e
db 0x5F, 0x64 ; 0115AA: provisional 68k subq.w #$7, -(a4)
db 0x65, 0x73 ; 0115AC: provisional 68k bcs.b $11621
db 0x74, 0x72 ; 0115AE: provisional 68k moveq #$72, d2
db 0x6F, 0x79 ; 0115B0: provisional 68k ble.b $1162b
db 0x20, 0x3A, 0x20, 0x4B ; 0115B2: provisional 68k move.l $135ff(pc), d0
db 0x69, 0x6C ; 0115B6: provisional 68k bvs.b $11624
db 0x6C, 0x69 ; 0115B8: provisional 68k bge.b $11623
db 0x6E, 0x67 ; 0115BA: provisional 68k bgt.b $11623
db 0x20, 0x6F, 0x62, 0x6A ; 0115BC: provisional 68k movea.l $626a(a7), a0
db 0x65, 0x63 ; 0115C0: provisional 68k bcs.b $11625
db 0x74, 0x00 ; 0115C2: provisional 68k moveq #$0, d2
db 0x4E, 0x75 ; 0115C4: provisional 68k rts 
db 0x4E, 0x75 ; 0115C6: provisional 68k rts 
db 0x4C, 0xEE, 0x00, 0x1F, 0xCF, 0xE8 ; 0115C8: provisional 68k movem.l -$3018(a6), d0-d4
db 0x3B, 0x40, 0x00, 0x1E ; 0115CE: provisional 68k move.w d0, $1e(a5)
db 0x3B, 0x41, 0x00, 0x20 ; 0115D2: provisional 68k move.w d1, $20(a5)
db 0x3B, 0x42, 0x00, 0x1C ; 0115D6: provisional 68k move.w d2, $1c(a5)
db 0x3B, 0x43, 0x00, 0x22 ; 0115DA: provisional 68k move.w d3, $22(a5)
db 0x2B, 0x44, 0x00, 0x24 ; 0115DE: provisional 68k move.l d4, $24(a5)
db 0x4E, 0x75 ; 0115E2: provisional 68k rts 
db 0x48, 0x7A, 0x00, 0x08 ; 0115E4: provisional 68k pea.l $115ee(pc)
db 0x61, 0x00, 0xB5, 0xE6 ; 0115E8: provisional 68k bsr.w $cbd0
db 0x60, 0x0A ; 0115EC: provisional 68k bra.b $115f8
db 0x6C, 0x63 ; 0115EE: provisional 68k bge.b $11653
db 0x74, 0x62 ; 0115F0: provisional 68k moveq #$62, d2
db 0x66, 0x72 ; 0115F2: provisional 68k bne.b $11666
db 0x20, 0x2D, 0x20, 0x00 ; 0115F4: provisional 68k move.l $2000(a5), d0
db 0x2F, 0x0D ; 0115F8: provisional 68k move.l a5, -(a7)
db 0x61, 0x00, 0xFB, 0xF0 ; 0115FA: provisional 68k bsr.w $111ec
db 0x4E, 0x75 ; 0115FE: provisional 68k rts 
db 0x4E, 0x75 ; 011600: provisional 68k rts 
db 0x48, 0x7A, 0x00, 0x08 ; 011602: provisional 68k pea.l $1160c(pc)
db 0x61, 0x00, 0xB5, 0xC8 ; 011606: provisional 68k bsr.w $cbd0
db 0x60, 0x20 ; 01160A: provisional 68k bra.b $1162c
db 0x6C, 0x63 ; 01160C: provisional 68k bge.b $11671
db 0x74, 0x62 ; 01160E: provisional 68k moveq #$62, d2
db 0x66, 0x72 ; 011610: provisional 68k bne.b $11684
db 0x5F, 0x64 ; 011612: provisional 68k subq.w #$7, -(a4)
db 0x65, 0x73 ; 011614: provisional 68k bcs.b $11689
db 0x74, 0x72 ; 011616: provisional 68k moveq #$72, d2
db 0x6F, 0x79 ; 011618: provisional 68k ble.b $11693
db 0x20, 0x3A, 0x20, 0x4B ; 01161A: provisional 68k move.l $13667(pc), d0
db 0x69, 0x6C ; 01161E: provisional 68k bvs.b $1168c
db 0x6C, 0x69 ; 011620: provisional 68k bge.b $1168b
db 0x6E, 0x67 ; 011622: provisional 68k bgt.b $1168b
db 0x20, 0x6F, 0x62, 0x6A ; 011624: provisional 68k movea.l $626a(a7), a0
db 0x65, 0x63 ; 011628: provisional 68k bcs.b $1168d
db 0x74, 0x00 ; 01162A: provisional 68k moveq #$0, d2
db 0x4E, 0x75 ; 01162C: provisional 68k rts 
db 0x48, 0xE7, 0xC0, 0x84 ; 01162E: provisional 68k movem.l d0-d1/a0/a5, -(a7)
db 0x2A, 0x6F, 0x00, 0x14 ; 011632: provisional 68k movea.l $14(a7), a5
db 0x30, 0x2F, 0x00, 0x18 ; 011636: provisional 68k move.w $18(a7), d0
db 0x32, 0x2F, 0x00, 0x1A ; 01163A: provisional 68k move.w $1a(a7), d1
db 0x61, 0x00, 0x00, 0x2E ; 01163E: provisional 68k bsr.w $1166e
db 0x4C, 0xDF, 0x21, 0x03 ; 011642: provisional 68k movem.l (a7)+, d0-d1/a0/a5
db 0x2F, 0x57, 0x00, 0x08 ; 011646: provisional 68k move.l (a7), $8(a7)
db 0x4F, 0xEF, 0x00, 0x08 ; 01164A: provisional 68k lea.l $8(a7), a7
db 0x4E, 0x75 ; 01164E: provisional 68k rts 
