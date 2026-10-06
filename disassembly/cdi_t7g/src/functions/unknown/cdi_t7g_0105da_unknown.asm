; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 0105DA–0107CF, inclusive.
cdi_t7g_entry_0105da:
db 0x48, 0xE7, 0xC0, 0x00 ; 0105DA: provisional 68k movem.l d0-d1, -(a7)
db 0x43, 0xED, 0x00, 0x00 ; 0105DE: provisional 68k lea.l $0(a5), a1
db 0x22, 0x3C, 0x00, 0x00, 0x27, 0x10 ; 0105E2: provisional 68k move.l #$2710, d1
db 0x70, 0x00 ; 0105E8: provisional 68k moveq #$0, d0
db 0x30, 0x2E, 0xD0, 0x24 ; 0105EA: provisional 68k move.w -$2fdc(a6), d0
db 0x80, 0xC1 ; 0105EE: provisional 68k divu.w d1, d0
db 0xD0, 0x7C, 0x00, 0x30 ; 0105F0: provisional 68k add.w #$30, d0
db 0x12, 0xC0 ; 0105F4: provisional 68k move.b d0, (a1)+
db 0x42, 0x40 ; 0105F6: provisional 68k clr.w d0
db 0x48, 0x40 ; 0105F8: provisional 68k swap d0
db 0x82, 0xFC, 0x00, 0x0A ; 0105FA: provisional 68k divu.w #$a, d1
db 0x48, 0xC1 ; 0105FE: provisional 68k ext.l d1
db 0x66, 0x00, 0xFF, 0xEC ; 010600: provisional 68k bne.w $105ee
db 0x42, 0x11 ; 010604: provisional 68k clr.b (a1)
db 0x52, 0x6E, 0xD0, 0x24 ; 010606: provisional 68k addq.w #$1, -$2fdc(a6)
db 0x4C, 0xDF, 0x00, 0x03 ; 01060A: provisional 68k movem.l (a7)+, d0-d1
db 0x4E, 0x75 ; 01060E: provisional 68k rts 
db 0x4E, 0xD2 ; 010610: provisional 68k jmp (a2)
db 0x42, 0xE7 ; 010612: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 010614: provisional 68k pea.l $1061e(pc)
db 0x61, 0x00, 0xB7, 0x36 ; 010618: provisional 68k bsr.w $bd50
db 0x60, 0x10 ; 01061C: provisional 68k bra.b $1062e
db 0x4F, 0x62 ; file 01061E
db 0x6A, 0x65 ; 010620: provisional 68k bpl.b $10687
db 0x63, 0x74 ; 010622: provisional 68k bls.b $10698
db 0x20, 0x74, 0x79, 0x70, 0x65, 0x20, 0x3D, 0x20 ; 010624: provisional 68k movea.l $65203d20(a4, invalid.w), a0
db 0x00, 0x00, 0x3F, 0x00 ; 01062C: provisional 68k ori.b #$0, d0
db 0x61, 0x00, 0xB6, 0x6C ; 010630: provisional 68k bsr.w $bc9e
db 0x44, 0xDF ; 010634: provisional 68k move.w (a7)+, ccr
db 0x42, 0xE7 ; 010636: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 010638: provisional 68k pea.l $10642(pc)
db 0x61, 0x00, 0xB7, 0x12 ; 01063C: provisional 68k bsr.w $bd50
db 0x60, 0x0A ; 010640: provisional 68k bra.b $1064c
db 0x20, 0x73, 0x69, 0x7A, 0x65, 0x20, 0x3D, 0x20, 0x00, 0x00 ; 010642: provisional 68k movea.l ([$65203d20, a3]), a0
db 0x3F, 0x28, 0x00, 0x14 ; 01064C: provisional 68k move.w $14(a0), -(a7)
db 0x61, 0x00, 0xB6, 0x4C ; 010650: provisional 68k bsr.w $bc9e
db 0x44, 0xDF ; 010654: provisional 68k move.w (a7)+, ccr
db 0x32, 0x3C, 0x80, 0x00 ; 010656: provisional 68k move.w #$8000, d1
db 0x61, 0x00, 0xB7, 0x22 ; 01065A: provisional 68k bsr.w $bd7e
db 0x67, 0x65 ; 01065E: provisional 68k beq.b $106c5
db 0x74, 0x5F ; 010660: provisional 68k moveq #$5f, d2
db 0x6F, 0x62 ; 010662: provisional 68k ble.b $106c6
db 0x6A, 0x65 ; 010664: provisional 68k bpl.b $106cb
db 0x63, 0x74 ; 010666: provisional 68k bls.b $106dc
db 0x3A, 0x20 ; 010668: provisional 68k move.w -(a0), d5
db 0x52, 0x61 ; 01066A: provisional 68k addq.w #$1, -(a1)
db 0x6E, 0x20 ; 01066C: provisional 68k bgt.b $1068e
db 0x6F, 0x75 ; 01066E: provisional 68k ble.b $106e5
db 0x74, 0x20 ; 010670: provisional 68k moveq #$20, d2
db 0x6F, 0x66 ; 010672: provisional 68k ble.b $106da
db 0x20, 0x62 ; 010674: provisional 68k movea.l -(a2), a0
db 0x69, 0x67 ; 010676: provisional 68k bvs.b $106df
db 0x20, 0x6F, 0x62, 0x6A ; 010678: provisional 68k movea.l $626a(a7), a0
db 0x65, 0x63 ; 01067C: provisional 68k bcs.b $106e1
db 0x74, 0x73 ; 01067E: provisional 68k moveq #$73, d2
db 0x21, 0x00 ; 010680: provisional 68k move.l d0, -(a0)
db 0x32, 0x3C, 0x80, 0x00 ; 010682: provisional 68k move.w #$8000, d1
db 0x61, 0x00, 0xB6, 0xF6 ; 010686: provisional 68k bsr.w $bd7e
db 0x67, 0x65 ; 01068A: provisional 68k beq.b $106f1
db 0x74, 0x5F ; 01068C: provisional 68k moveq #$5f, d2
db 0x6F, 0x62 ; 01068E: provisional 68k ble.b $106f2
db 0x6A, 0x65 ; 010690: provisional 68k bpl.b $106f7
db 0x63, 0x74 ; 010692: provisional 68k bls.b $10708
db 0x3A, 0x20 ; 010694: provisional 68k move.w -(a0), d5
db 0x52, 0x61 ; 010696: provisional 68k addq.w #$1, -(a1)
db 0x6E, 0x20 ; 010698: provisional 68k bgt.b $106ba
db 0x6F, 0x75 ; 01069A: provisional 68k ble.b $10711
db 0x74, 0x20 ; 01069C: provisional 68k moveq #$20, d2
db 0x6F, 0x66 ; 01069E: provisional 68k ble.b $10706
db 0x20, 0x73, 0x6D, 0x61, 0x6C, 0x6C ; 0106A0: provisional 68k movea.l ([$6c6c, a3]), a0
db 0x20, 0x6F, 0x62, 0x6A ; 0106A6: provisional 68k movea.l $626a(a7), a0
db 0x65, 0x63 ; 0106AA: provisional 68k bcs.b $1070f
db 0x74, 0x73 ; 0106AC: provisional 68k moveq #$73, d2
db 0x21, 0x00 ; 0106AE: provisional 68k move.l d0, -(a0)
db 0x42, 0xE7 ; 0106B0: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 0106B2: provisional 68k pea.l $106bc(pc)
db 0x61, 0x00, 0xB6, 0x98 ; 0106B6: provisional 68k bsr.w $bd50
db 0x60, 0x10 ; 0106BA: provisional 68k bra.b $106cc
db 0x6F, 0x62 ; 0106BC: provisional 68k ble.b $10720
db 0x6A, 0x65 ; 0106BE: provisional 68k bpl.b $10725
db 0x63, 0x74 ; 0106C0: provisional 68k bls.b $10736
db 0x20, 0x73, 0x69, 0x7A, 0x65, 0x6F, 0x66, 0x20, 0x3A, 0x00 ; 0106C2: provisional 68k movea.l ([$656f6620, a3], $3a00), a0
db 0x3F, 0x28, 0x00, 0x14 ; 0106CC: provisional 68k move.w $14(a0), -(a7)
db 0x61, 0x00, 0xB5, 0xCC ; 0106D0: provisional 68k bsr.w $bc9e
db 0x44, 0xDF ; 0106D4: provisional 68k move.w (a7)+, ccr
db 0x61, 0x00, 0xB6, 0x5E ; 0106D6: provisional 68k bsr.w $bd36
db 0x32, 0x3C, 0x80, 0x00 ; 0106DA: provisional 68k move.w #$8000, d1
db 0x61, 0x00, 0xB6, 0x9E ; 0106DE: provisional 68k bsr.w $bd7e
db 0x67, 0x65 ; 0106E2: provisional 68k beq.b $10749
db 0x74, 0x5F ; 0106E4: provisional 68k moveq #$5f, d2
db 0x6F, 0x62 ; 0106E6: provisional 68k ble.b $1074a
db 0x6A, 0x65 ; 0106E8: provisional 68k bpl.b $1074f
db 0x63, 0x74 ; 0106EA: provisional 68k bls.b $10760
db 0x3A, 0x20 ; 0106EC: provisional 68k move.w -(a0), d5
db 0x4F, 0x62 ; file 0106EE
db 0x6A, 0x65 ; 0106F0: provisional 68k bpl.b $10757
db 0x63, 0x74 ; 0106F2: provisional 68k bls.b $10768
db 0x20, 0x74, 0x6F, 0x6F, 0x20, 0x62 ; 0106F4: provisional 68k movea.l ([$2062, a4]), a0
db 0x69, 0x67 ; 0106FA: provisional 68k bvs.b $10763
db 0x00, 0x00, 0x4E, 0x75 ; 0106FC: provisional 68k ori.b #$75, d0
db 0x48, 0x7A, 0x00, 0x08 ; 010700: provisional 68k pea.l $1070a(pc)
db 0x61, 0x00, 0xB6, 0x4A ; 010704: provisional 68k bsr.w $bd50
db 0x60, 0x08 ; 010708: provisional 68k bra.b $10712
db 0x72, 0x6F ; 01070A: provisional 68k moveq #$6f, d1
db 0x6F, 0x74 ; 01070C: provisional 68k ble.b $10782
db 0x20, 0x2D, 0x20, 0x00 ; 01070E: provisional 68k move.l $2000(a5), d0
db 0x2F, 0x0D ; 010712: provisional 68k move.l a5, -(a7)
db 0x61, 0x00, 0xFC, 0x56 ; 010714: provisional 68k bsr.w $1036c
db 0x4E, 0x75 ; 010718: provisional 68k rts 
db 0x4E, 0x75 ; 01071A: provisional 68k rts 
db 0x48, 0x7A, 0x00, 0x08 ; 01071C: provisional 68k pea.l $10726(pc)
db 0x61, 0x00, 0xB6, 0x2E ; 010720: provisional 68k bsr.w $bd50
db 0x60, 0x1E ; 010724: provisional 68k bra.b $10744
db 0x72, 0x6F ; 010726: provisional 68k moveq #$6f, d1
db 0x6F, 0x74 ; 010728: provisional 68k ble.b $1079e
db 0x5F, 0x64 ; 01072A: provisional 68k subq.w #$7, -(a4)
db 0x65, 0x73 ; 01072C: provisional 68k bcs.b $107a1
db 0x74, 0x72 ; 01072E: provisional 68k moveq #$72, d2
db 0x6F, 0x79 ; 010730: provisional 68k ble.b $107ab
db 0x20, 0x3A, 0x20, 0x4B ; 010732: provisional 68k move.l $1277f(pc), d0
db 0x69, 0x6C ; 010736: provisional 68k bvs.b $107a4
db 0x6C, 0x69 ; 010738: provisional 68k bge.b $107a3
db 0x6E, 0x67 ; 01073A: provisional 68k bgt.b $107a3
db 0x20, 0x6F, 0x62, 0x6A ; 01073C: provisional 68k movea.l $626a(a7), a0
db 0x65, 0x63 ; 010740: provisional 68k bcs.b $107a5
db 0x74, 0x00 ; 010742: provisional 68k moveq #$0, d2
db 0x4E, 0x75 ; 010744: provisional 68k rts 
db 0x4E, 0x75 ; 010746: provisional 68k rts 
db 0x4C, 0xEE, 0x00, 0x1F, 0xCF, 0xE8 ; 010748: provisional 68k movem.l -$3018(a6), d0-d4
db 0x3B, 0x40, 0x00, 0x1E ; 01074E: provisional 68k move.w d0, $1e(a5)
db 0x3B, 0x41, 0x00, 0x20 ; 010752: provisional 68k move.w d1, $20(a5)
db 0x3B, 0x42, 0x00, 0x1C ; 010756: provisional 68k move.w d2, $1c(a5)
db 0x3B, 0x43, 0x00, 0x22 ; 01075A: provisional 68k move.w d3, $22(a5)
db 0x2B, 0x44, 0x00, 0x24 ; 01075E: provisional 68k move.l d4, $24(a5)
db 0x4E, 0x75 ; 010762: provisional 68k rts 
db 0x48, 0x7A, 0x00, 0x08 ; 010764: provisional 68k pea.l $1076e(pc)
db 0x61, 0x00, 0xB5, 0xE6 ; 010768: provisional 68k bsr.w $bd50
db 0x60, 0x0A ; 01076C: provisional 68k bra.b $10778
db 0x6C, 0x63 ; 01076E: provisional 68k bge.b $107d3
db 0x74, 0x62 ; 010770: provisional 68k moveq #$62, d2
db 0x66, 0x72 ; 010772: provisional 68k bne.b $107e6
db 0x20, 0x2D, 0x20, 0x00 ; 010774: provisional 68k move.l $2000(a5), d0
db 0x2F, 0x0D ; 010778: provisional 68k move.l a5, -(a7)
db 0x61, 0x00, 0xFB, 0xF0 ; 01077A: provisional 68k bsr.w $1036c
db 0x4E, 0x75 ; 01077E: provisional 68k rts 
db 0x4E, 0x75 ; 010780: provisional 68k rts 
db 0x48, 0x7A, 0x00, 0x08 ; 010782: provisional 68k pea.l $1078c(pc)
db 0x61, 0x00, 0xB5, 0xC8 ; 010786: provisional 68k bsr.w $bd50
db 0x60, 0x20 ; 01078A: provisional 68k bra.b $107ac
db 0x6C, 0x63 ; 01078C: provisional 68k bge.b $107f1
db 0x74, 0x62 ; 01078E: provisional 68k moveq #$62, d2
db 0x66, 0x72 ; 010790: provisional 68k bne.b $10804
db 0x5F, 0x64 ; 010792: provisional 68k subq.w #$7, -(a4)
db 0x65, 0x73 ; 010794: provisional 68k bcs.b $10809
db 0x74, 0x72 ; 010796: provisional 68k moveq #$72, d2
db 0x6F, 0x79 ; 010798: provisional 68k ble.b $10813
db 0x20, 0x3A, 0x20, 0x4B ; 01079A: provisional 68k move.l $127e7(pc), d0
db 0x69, 0x6C ; 01079E: provisional 68k bvs.b $1080c
db 0x6C, 0x69 ; 0107A0: provisional 68k bge.b $1080b
db 0x6E, 0x67 ; 0107A2: provisional 68k bgt.b $1080b
db 0x20, 0x6F, 0x62, 0x6A ; 0107A4: provisional 68k movea.l $626a(a7), a0
db 0x65, 0x63 ; 0107A8: provisional 68k bcs.b $1080d
db 0x74, 0x00 ; 0107AA: provisional 68k moveq #$0, d2
db 0x4E, 0x75 ; 0107AC: provisional 68k rts 
db 0x48, 0xE7, 0xC0, 0x84 ; 0107AE: provisional 68k movem.l d0-d1/a0/a5, -(a7)
db 0x2A, 0x6F, 0x00, 0x14 ; 0107B2: provisional 68k movea.l $14(a7), a5
db 0x30, 0x2F, 0x00, 0x18 ; 0107B6: provisional 68k move.w $18(a7), d0
db 0x32, 0x2F, 0x00, 0x1A ; 0107BA: provisional 68k move.w $1a(a7), d1
db 0x61, 0x00, 0x00, 0x2E ; 0107BE: provisional 68k bsr.w $107ee
db 0x4C, 0xDF, 0x21, 0x03 ; 0107C2: provisional 68k movem.l (a7)+, d0-d1/a0/a5
db 0x2F, 0x57, 0x00, 0x08 ; 0107C6: provisional 68k move.l (a7), $8(a7)
db 0x4F, 0xEF, 0x00, 0x08 ; 0107CA: provisional 68k lea.l $8(a7), a7
db 0x4E, 0x75 ; 0107CE: provisional 68k rts 
