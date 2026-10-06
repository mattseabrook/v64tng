; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 011766–011883, inclusive.
cdi_nodv_entry_011766:
db 0x3F, 0x04 ; 011766: provisional 68k move.w d4, -(a7)
db 0x2F, 0x0D ; 011768: provisional 68k move.l a5, -(a7)
db 0x61, 0x00, 0xFF, 0x20 ; 01176A: provisional 68k bsr.w $1168c
db 0x36, 0x03 ; 01176E: provisional 68k move.w d3, d3
db 0x38, 0x04 ; 011770: provisional 68k move.w d4, d4
db 0x3A, 0x3C, 0x00, 0x00 ; 011772: provisional 68k move.w #$0, d5
db 0x3C, 0x06 ; 011776: provisional 68k move.w d6, d6
db 0x3E, 0x2D, 0x00, 0x22 ; 011778: provisional 68k move.w $22(a5), d7
db 0x20, 0x48 ; 01177C: provisional 68k movea.l a0, a0
db 0x30, 0x2E, 0xAD, 0xA2 ; 01177E: provisional 68k move.w -$525e(a6), d0
db 0x72, 0x56 ; 011782: provisional 68k moveq #$56, d1
db 0x74, 0x08 ; 011784: provisional 68k moveq #$8, d2
db 0x4E, 0x40, 0x00, 0x8E ; 011786: provisional 68k trap #0 ; OS-9 service word $008E
db 0x4E, 0x75 ; 01178A: provisional 68k rts 
db 0x4E, 0x75 ; 01178C: provisional 68k rts 
db 0x42, 0x6D, 0x00, 0x1C ; 01178E: provisional 68k clr.w $1c(a5)
db 0x42, 0x6D, 0x00, 0x1E ; 011792: provisional 68k clr.w $1e(a5)
db 0x42, 0x6D, 0x00, 0x20 ; 011796: provisional 68k clr.w $20(a5)
db 0x42, 0xAD, 0x00, 0x22 ; 01179A: provisional 68k clr.l $22(a5)
db 0x42, 0xAD, 0x00, 0x2C ; 01179E: provisional 68k clr.l $2c(a5)
db 0x42, 0xAD, 0x00, 0x30 ; 0117A2: provisional 68k clr.l $30(a5)
db 0x42, 0xAD, 0x00, 0x34 ; 0117A6: provisional 68k clr.l $34(a5)
db 0x22, 0x2E, 0xCF, 0xE8 ; 0117AA: provisional 68k move.l -$3018(a6), d1
db 0x20, 0x2E, 0xCF, 0xEC ; 0117AE: provisional 68k move.l -$3014(a6), d0
db 0xB0, 0xBC, 0x00, 0x00, 0x04, 0x00 ; 0117B2: provisional 68k cmp.l #$400, d0
db 0x6B, 0x00, 0x00, 0x36 ; 0117B8: provisional 68k bmi.w $117f0
db 0x20, 0x40 ; 0117BC: provisional 68k movea.l d0, a0
db 0x3B, 0x68, 0x00, 0x2A, 0x00, 0x2A ; 0117BE: provisional 68k move.w $2a(a0), $2a(a5)
db 0x3F, 0x01 ; 0117C4: provisional 68k move.w d1, -(a7)
db 0x2F, 0x00 ; 0117C6: provisional 68k move.l d0, -(a7)
db 0x61, 0x00, 0xB6, 0xE0 ; 0117C8: provisional 68k bsr.w $ceaa
db 0x65, 0x00, 0x00, 0x2E ; 0117CC: provisional 68k bcs.w $117fc
db 0x3B, 0x41, 0x00, 0x1C ; 0117D0: provisional 68k move.w d1, $1c(a5)
db 0x3B, 0x41, 0x00, 0x1E ; 0117D4: provisional 68k move.w d1, $1e(a5)
db 0x2B, 0x48, 0x00, 0x22 ; 0117D8: provisional 68k move.l a0, $22(a5)
db 0x2B, 0x40, 0x00, 0x2C ; 0117DC: provisional 68k move.l d0, $2c(a5)
db 0x53, 0x41 ; 0117E0: provisional 68k subq.w #$1, d1
db 0x21, 0x4D, 0x09, 0x30 ; 0117E2: provisional 68k move.l a5, $930(a0)
db 0x20, 0x68, 0x09, 0x34 ; 0117E6: provisional 68k movea.l $934(a0), a0
db 0x51, 0xC9, 0xFF, 0xF6 ; 0117EA: provisional 68k dbra d1, $117e2
db 0x4E, 0x75 ; 0117EE: provisional 68k rts 
db 0x3B, 0x40, 0x00, 0x2A ; 0117F0: provisional 68k move.w d0, $2a(a5)
db 0x61, 0x00, 0x00, 0xB0 ; 0117F4: provisional 68k bsr.w $118a6
db 0x65, 0x40 ; 0117F8: provisional 68k bcs.b $1183a
db 0x4E, 0x75 ; 0117FA: provisional 68k rts 
db 0x32, 0x3C, 0x80, 0x00 ; 0117FC: provisional 68k move.w #$8000, d1
db 0x61, 0x00, 0xB3, 0xFC ; 011800: provisional 68k bsr.w $cbfe
db 0x64, 0x6E ; 011804: provisional 68k bcc.b $11874
db 0x6C, 0x69 ; 011806: provisional 68k bge.b $11871
db 0x73, 0x74 ; file 011808
db 0x5F, 0x63 ; 01180A: provisional 68k subq.w #$7, -(a3)
db 0x72, 0x65 ; 01180C: provisional 68k moveq #$65, d1
db 0x61, 0x74 ; 01180E: provisional 68k bsr.b $11884
db 0x65, 0x20 ; 011810: provisional 68k bcs.b $11832
db 0x3A, 0x20 ; 011812: provisional 68k move.w -(a0), d5
db 0x43, 0x6F, 0x75, 0x6C ; file 011814
db 0x64, 0x6E ; 011818: provisional 68k bcc.b $11888
db 0x27, 0x74, 0x20, 0x61, 0x6C, 0x6C ; 01181A: provisional 68k move.l $61(a4, d2.w), $6c6c(a3)
db 0x6F, 0x63 ; 011820: provisional 68k ble.b $11885
db 0x61, 0x74 ; 011822: provisional 68k bsr.b $11898
db 0x65, 0x20 ; 011824: provisional 68k bcs.b $11846
db 0x66, 0x72 ; 011826: provisional 68k bne.b $1189a
db 0x6F, 0x6D ; 011828: provisional 68k ble.b $11897
db 0x20, 0x73, 0x6F, 0x75, 0x72, 0x63, 0x65, 0x20 ; 01182A: provisional 68k movea.l ([$72636520, a3]), a0
db 0x64, 0x6E ; 011832: provisional 68k bcc.b $118a2
db 0x6C, 0x69 ; 011834: provisional 68k bge.b $1189f
db 0x73, 0x74 ; file 011836
db 0x00, 0x00, 0x42, 0xE7 ; 011838: provisional 68k ori.b #$e7, d0
db 0x48, 0x7A, 0x00, 0x08 ; 01183C: provisional 68k pea.l $11846(pc)
db 0x61, 0x00, 0xB3, 0x8E ; 011840: provisional 68k bsr.w $cbd0
db 0x60, 0x22 ; 011844: provisional 68k bra.b $11868
db 0x64, 0x6E ; 011846: provisional 68k bcc.b $118b6
db 0x6C, 0x73 ; 011848: provisional 68k bge.b $118bd
db 0x69, 0x74 ; 01184A: provisional 68k bvs.b $118c0
db 0x5F, 0x63 ; 01184C: provisional 68k subq.w #$7, -(a3)
db 0x72, 0x65 ; 01184E: provisional 68k moveq #$65, d1
db 0x61, 0x74 ; 011850: provisional 68k bsr.b $118c6
db 0x65, 0x20 ; 011852: provisional 68k bcs.b $11874
db 0x3A, 0x20 ; 011854: provisional 68k move.w -(a0), d5
db 0x46, 0x61 ; 011856: provisional 68k not.w -(a1)
db 0x69, 0x6C ; 011858: provisional 68k bvs.b $118c6
db 0x65, 0x64 ; 01185A: provisional 68k bcs.b $118c0
db 0x20, 0x6F, 0x6E, 0x20 ; 01185C: provisional 68k movea.l $6e20(a7), a0
db 0x70, 0x6C ; 011860: provisional 68k moveq #$6c, d0
db 0x61, 0x6E ; 011862: provisional 68k bsr.b $118d2
db 0x65, 0x20 ; 011864: provisional 68k bcs.b $11886
db 0x00, 0x00, 0x3F, 0x2D ; 011866: provisional 68k ori.b #$2d, d0
db 0x00, 0x2A, 0x61, 0x00, 0xB2, 0xB0 ; 01186A: provisional 68k ori.b #$0, -$4d50(a2)
db 0x44, 0xDF ; 011870: provisional 68k move.w (a7)+, ccr
db 0x61, 0x00, 0xB3, 0x42 ; 011872: provisional 68k bsr.w $cbb6
db 0x32, 0x3C, 0x80, 0x00 ; 011876: provisional 68k move.w #$8000, d1
db 0x61, 0x00, 0xB3, 0x82 ; 01187A: provisional 68k bsr.w $cbfe
db 0x64, 0x6E ; 01187E: provisional 68k bcc.b $118ee
db 0x6C, 0x69 ; 011880: provisional 68k bge.b $118eb
db 0x73, 0x74 ; file 011882
