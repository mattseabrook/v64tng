; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 0117F2–0118A9, inclusive.
cdi_t7g_entry_0117f2:
db 0x48, 0xE7, 0xC0, 0x04 ; 0117F2: provisional 68k movem.l d0-d1/a5, -(a7)
db 0x2A, 0x6F, 0x00, 0x10 ; 0117F6: provisional 68k movea.l $10(a7), a5
db 0x30, 0x2F, 0x00, 0x14 ; 0117FA: provisional 68k move.w $14(a7), d0
db 0x32, 0x2D, 0x00, 0x1C ; 0117FE: provisional 68k move.w $1c(a5), d1
db 0xD2, 0x41 ; 011802: provisional 68k add.w d1, d1
db 0x32, 0x3B, 0x10, 0x12 ; 011804: provisional 68k move.w $11818(pc, d1.w), d1
db 0x4E, 0xBB, 0x10, 0x0E ; 011808: provisional 68k jsr $11818(pc, d1.w)
db 0x4C, 0xDF, 0x20, 0x03 ; 01180C: provisional 68k movem.l (a7)+, d0-d1/a5
db 0x2F, 0x57, 0x00, 0x06 ; 011810: provisional 68k move.l (a7), $6(a7)
db 0x5C, 0x4F ; 011814: provisional 68k addq.w #$6, a7
db 0x4E, 0x75 ; 011816: provisional 68k rts 
db 0x00, 0x48 ; file 011818
db 0x00, 0x76, 0x00, 0x76, 0x00, 0x76 ; 01181A: provisional 68k ori.w #$76, $76(a6, d0.w)
db 0x00, 0x0E ; file 011820
db 0x00, 0x76, 0x00, 0x76, 0x32, 0x3C ; 011822: provisional 68k ori.w #$76, $3c(a6, d3.w)
db 0x80, 0x00 ; 011828: provisional 68k or.b d0, d0
db 0x61, 0x00, 0xA5, 0x52 ; 01182A: provisional 68k bsr.w $bd7e
db 0x70, 0x69 ; 01182E: provisional 68k moveq #$69, d0
db 0x63, 0x5F ; 011830: provisional 68k bls.b $11891
db 0x63, 0x6C ; 011832: provisional 68k bls.b $118a0
db 0x65, 0x61 ; 011834: provisional 68k bcs.b $11897
db 0x72, 0x3A ; 011836: provisional 68k moveq #$3a, d1
db 0x20, 0x43 ; 011838: provisional 68k movea.l d3, a0
db 0x61, 0x6E ; 01183A: provisional 68k bsr.b $118aa
db 0x27, 0x74, 0x20, 0x63, 0x6C, 0x65 ; 01183C: provisional 68k move.l $63(a4, d2.w), $6c65(a3)
db 0x61, 0x72 ; 011842: provisional 68k bsr.b $118b6
db 0x20, 0x74, 0x68, 0x69 ; 011844: provisional 68k movea.l $69(a4, d6.l), a0
db 0x73, 0x20 ; file 011848
db 0x70, 0x69 ; 01184A: provisional 68k moveq #$69, d0
db 0x63, 0x74 ; 01184C: provisional 68k bls.b $118c2
db 0x75, 0x72 ; file 01184E
db 0x65, 0x20 ; 011850: provisional 68k bcs.b $11872
db 0x74, 0x79 ; 011852: provisional 68k moveq #$79, d2
db 0x70, 0x65 ; 011854: provisional 68k moveq #$65, d0
db 0x2C, 0x20 ; 011856: provisional 68k move.l -(a0), d6
db 0x64, 0x6F ; 011858: provisional 68k bcc.b $118c9
db 0x7A, 0x7A ; 01185A: provisional 68k moveq #$7a, d5
db 0x79, 0x21 ; file 01185C
db 0x00, 0x00, 0x3F, 0x00 ; 01185E: provisional 68k ori.b #$0, d0
db 0x32, 0x00 ; 011862: provisional 68k move.w d0, d1
db 0xE0, 0x49 ; 011864: provisional 68k lsr.w #$8, d1
db 0xC0, 0x7C, 0xFF, 0x00 ; 011866: provisional 68k and.w #$ff00, d0
db 0x82, 0x40 ; 01186A: provisional 68k or.w d0, d1
db 0x3F, 0x01 ; 01186C: provisional 68k move.w d1, -(a7)
db 0x2F, 0x2D, 0x00, 0x3C ; 01186E: provisional 68k move.l $3c(a5), -(a7)
db 0x61, 0x00, 0xFF, 0x7E ; 011872: provisional 68k bsr.w $117f2
db 0x30, 0x1F ; 011876: provisional 68k move.w (a7)+, d0
db 0x32, 0x00 ; 011878: provisional 68k move.w d0, d1
db 0xE1, 0x40 ; 01187A: provisional 68k asl.w #$8, d0
db 0xC2, 0x7C, 0x00, 0xFF ; 01187C: provisional 68k and.w #$ff, d1
db 0x82, 0x40 ; 011880: provisional 68k or.w d0, d1
db 0x3F, 0x01 ; 011882: provisional 68k move.w d1, -(a7)
db 0x2F, 0x2D, 0x00, 0x40 ; 011884: provisional 68k move.l $40(a5), -(a7)
db 0x61, 0x00, 0xFF, 0x68 ; 011888: provisional 68k bsr.w $117f2
db 0x4E, 0x75 ; 01188C: provisional 68k rts 
db 0x48, 0xE7, 0x07, 0xC0 ; 01188E: provisional 68k movem.l d5-d7/a0-a1, -(a7)
db 0x3C, 0x2D, 0x00, 0x2A ; 011892: provisional 68k move.w $2a(a5), d6
db 0xE2, 0x46 ; 011896: provisional 68k asr.w #$1, d6
db 0x53, 0x46 ; 011898: provisional 68k subq.w #$1, d6
db 0x3E, 0x2D, 0x00, 0x2C ; 01189A: provisional 68k move.w $2c(a5), d7
db 0x20, 0x6D, 0x00, 0x34 ; 01189E: provisional 68k movea.l $34(a5), a0
db 0x53, 0x47 ; 0118A2: provisional 68k subq.w #$1, d7
db 0x3A, 0x06 ; 0118A4: provisional 68k move.w d6, d5
db 0x22, 0x58 ; 0118A6: provisional 68k movea.l (a0)+, a1
db 0x32, 0xC0 ; 0118A8: provisional 68k move.w d0, (a1)+
