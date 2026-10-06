; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 012672–012729, inclusive.
cdi_nodv_entry_012672:
db 0x48, 0xE7, 0xC0, 0x04 ; 012672: provisional 68k movem.l d0-d1/a5, -(a7)
db 0x2A, 0x6F, 0x00, 0x10 ; 012676: provisional 68k movea.l $10(a7), a5
db 0x30, 0x2F, 0x00, 0x14 ; 01267A: provisional 68k move.w $14(a7), d0
db 0x32, 0x2D, 0x00, 0x1C ; 01267E: provisional 68k move.w $1c(a5), d1
db 0xD2, 0x41 ; 012682: provisional 68k add.w d1, d1
db 0x32, 0x3B, 0x10, 0x12 ; 012684: provisional 68k move.w $12698(pc, d1.w), d1
db 0x4E, 0xBB, 0x10, 0x0E ; 012688: provisional 68k jsr $12698(pc, d1.w)
db 0x4C, 0xDF, 0x20, 0x03 ; 01268C: provisional 68k movem.l (a7)+, d0-d1/a5
db 0x2F, 0x57, 0x00, 0x06 ; 012690: provisional 68k move.l (a7), $6(a7)
db 0x5C, 0x4F ; 012694: provisional 68k addq.w #$6, a7
db 0x4E, 0x75 ; 012696: provisional 68k rts 
db 0x00, 0x48 ; file 012698
db 0x00, 0x76, 0x00, 0x76, 0x00, 0x76 ; 01269A: provisional 68k ori.w #$76, $76(a6, d0.w)
db 0x00, 0x0E ; file 0126A0
db 0x00, 0x76, 0x00, 0x76, 0x32, 0x3C ; 0126A2: provisional 68k ori.w #$76, $3c(a6, d3.w)
db 0x80, 0x00 ; 0126A8: provisional 68k or.b d0, d0
db 0x61, 0x00, 0xA5, 0x52 ; 0126AA: provisional 68k bsr.w $cbfe
db 0x70, 0x69 ; 0126AE: provisional 68k moveq #$69, d0
db 0x63, 0x5F ; 0126B0: provisional 68k bls.b $12711
db 0x63, 0x6C ; 0126B2: provisional 68k bls.b $12720
db 0x65, 0x61 ; 0126B4: provisional 68k bcs.b $12717
db 0x72, 0x3A ; 0126B6: provisional 68k moveq #$3a, d1
db 0x20, 0x43 ; 0126B8: provisional 68k movea.l d3, a0
db 0x61, 0x6E ; 0126BA: provisional 68k bsr.b $1272a
db 0x27, 0x74, 0x20, 0x63, 0x6C, 0x65 ; 0126BC: provisional 68k move.l $63(a4, d2.w), $6c65(a3)
db 0x61, 0x72 ; 0126C2: provisional 68k bsr.b $12736
db 0x20, 0x74, 0x68, 0x69 ; 0126C4: provisional 68k movea.l $69(a4, d6.l), a0
db 0x73, 0x20 ; file 0126C8
db 0x70, 0x69 ; 0126CA: provisional 68k moveq #$69, d0
db 0x63, 0x74 ; 0126CC: provisional 68k bls.b $12742
db 0x75, 0x72 ; file 0126CE
db 0x65, 0x20 ; 0126D0: provisional 68k bcs.b $126f2
db 0x74, 0x79 ; 0126D2: provisional 68k moveq #$79, d2
db 0x70, 0x65 ; 0126D4: provisional 68k moveq #$65, d0
db 0x2C, 0x20 ; 0126D6: provisional 68k move.l -(a0), d6
db 0x64, 0x6F ; 0126D8: provisional 68k bcc.b $12749
db 0x7A, 0x7A ; 0126DA: provisional 68k moveq #$7a, d5
db 0x79, 0x21 ; file 0126DC
db 0x00, 0x00, 0x3F, 0x00 ; 0126DE: provisional 68k ori.b #$0, d0
db 0x32, 0x00 ; 0126E2: provisional 68k move.w d0, d1
db 0xE0, 0x49 ; 0126E4: provisional 68k lsr.w #$8, d1
db 0xC0, 0x7C, 0xFF, 0x00 ; 0126E6: provisional 68k and.w #$ff00, d0
db 0x82, 0x40 ; 0126EA: provisional 68k or.w d0, d1
db 0x3F, 0x01 ; 0126EC: provisional 68k move.w d1, -(a7)
db 0x2F, 0x2D, 0x00, 0x3C ; 0126EE: provisional 68k move.l $3c(a5), -(a7)
db 0x61, 0x00, 0xFF, 0x7E ; 0126F2: provisional 68k bsr.w $12672
db 0x30, 0x1F ; 0126F6: provisional 68k move.w (a7)+, d0
db 0x32, 0x00 ; 0126F8: provisional 68k move.w d0, d1
db 0xE1, 0x40 ; 0126FA: provisional 68k asl.w #$8, d0
db 0xC2, 0x7C, 0x00, 0xFF ; 0126FC: provisional 68k and.w #$ff, d1
db 0x82, 0x40 ; 012700: provisional 68k or.w d0, d1
db 0x3F, 0x01 ; 012702: provisional 68k move.w d1, -(a7)
db 0x2F, 0x2D, 0x00, 0x40 ; 012704: provisional 68k move.l $40(a5), -(a7)
db 0x61, 0x00, 0xFF, 0x68 ; 012708: provisional 68k bsr.w $12672
db 0x4E, 0x75 ; 01270C: provisional 68k rts 
db 0x48, 0xE7, 0x07, 0xC0 ; 01270E: provisional 68k movem.l d5-d7/a0-a1, -(a7)
db 0x3C, 0x2D, 0x00, 0x2A ; 012712: provisional 68k move.w $2a(a5), d6
db 0xE2, 0x46 ; 012716: provisional 68k asr.w #$1, d6
db 0x53, 0x46 ; 012718: provisional 68k subq.w #$1, d6
db 0x3E, 0x2D, 0x00, 0x2C ; 01271A: provisional 68k move.w $2c(a5), d7
db 0x20, 0x6D, 0x00, 0x34 ; 01271E: provisional 68k movea.l $34(a5), a0
db 0x53, 0x47 ; 012722: provisional 68k subq.w #$1, d7
db 0x3A, 0x06 ; 012724: provisional 68k move.w d6, d5
db 0x22, 0x58 ; 012726: provisional 68k movea.l (a0)+, a1
db 0x32, 0xC0 ; 012728: provisional 68k move.w d0, (a1)+
