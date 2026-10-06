; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 014722–01480B, inclusive.
cdi_nodv_entry_014722:
db 0x48, 0xE7, 0xF0, 0xFC ; 014722: provisional 68k movem.l d0-d3/a0-a5, -(a7)
db 0x53, 0x42 ; 014726: provisional 68k subq.w #$1, d2
db 0x16, 0x3C, 0x00, 0xD0 ; 014728: provisional 68k move.b #$d0, d3
db 0x24, 0x58 ; 01472C: provisional 68k movea.l (a0)+, a2
db 0x20, 0x0D ; 01472E: provisional 68k move.l a5, d0
db 0xE2, 0x88 ; 014730: provisional 68k lsr.l #$1, d0
db 0xD5, 0xC0 ; 014732: provisional 68k adda.l d0, a2
db 0x2F, 0x2C, 0x00, 0x18 ; 014734: provisional 68k move.l $18(a4), -(a7)
db 0x48, 0xE7, 0x00, 0x0C ; 014738: provisional 68k movem.l a4-a5, -(a7)
db 0x72, 0x00 ; 01473C: provisional 68k moveq #$0, d1
db 0x12, 0x19 ; 01473E: provisional 68k move.b (a1)+, d1
db 0x6A, 0x06 ; 014740: provisional 68k bpl.b $14748
db 0x12, 0x19 ; 014742: provisional 68k move.b (a1)+, d1
db 0x6B, 0x00, 0x00, 0x88 ; 014744: provisional 68k bmi.w $147ce
db 0xD4, 0xC1 ; 014748: provisional 68k adda.w d1, a2
db 0xD2, 0x41 ; 01474A: provisional 68k add.w d1, d1
db 0xDA, 0xC1 ; 01474C: provisional 68k adda.w d1, a5
db 0x28, 0xCD ; 01474E: provisional 68k move.l a5, (a4)+
db 0x19, 0x43, 0xFF, 0xFC ; 014750: provisional 68k move.b d3, -$4(a4)
db 0x19, 0x7C, 0x00, 0x60, 0xFF, 0xFD ; 014754: provisional 68k move.b #$60, -$3(a4)
db 0x52, 0x03 ; 01475A: provisional 68k addq.b #$1, d3
db 0x72, 0x00 ; 01475C: provisional 68k moveq #$0, d1
db 0x78, 0x00 ; 01475E: provisional 68k moveq #$0, d4
db 0x12, 0x19 ; 014760: provisional 68k move.b (a1)+, d1
db 0x30, 0x01 ; 014762: provisional 68k move.w d1, d0
db 0xD0, 0x40 ; 014764: provisional 68k add.w d0, d0
db 0x4B, 0xF5, 0x00, 0x02 ; 014766: provisional 68k lea.l $2(a5, d0.w), a5
db 0x10, 0x11 ; 01476A: provisional 68k move.b (a1), d0
db 0x6B, 0x16 ; 01476C: provisional 68k bmi.b $14784
db 0x52, 0xAC, 0xFF, 0xFC ; 01476E: provisional 68k addq.l #$1, -$4(a4)
db 0x02, 0x00, 0x00, 0x0F ; 014772: provisional 68k andi.b #$f, d0
db 0x02, 0x12, 0x00, 0xF0 ; 014776: provisional 68k andi.b #$f0, (a2)
db 0x81, 0x1A ; 01477A: provisional 68k or.b d0, (a2)+
db 0x52, 0x49 ; 01477C: provisional 68k addq.w #$1, a1
db 0x4A, 0x41 ; 01477E: provisional 68k tst.w d1
db 0x67, 0x30 ; 014780: provisional 68k beq.b $147b2
db 0x60, 0x06 ; 014782: provisional 68k bra.b $1478a
db 0x4A, 0x01 ; 014784: provisional 68k tst.b d1
db 0x67, 0x0A ; 014786: provisional 68k beq.b $14792
db 0x14, 0xD9 ; 014788: provisional 68k move.b (a1)+, (a2)+
db 0x53, 0x41 ; 01478A: provisional 68k subq.w #$1, d1
db 0x67, 0x04 ; 01478C: provisional 68k beq.b $14792
db 0x6B, 0x22 ; 01478E: provisional 68k bmi.b $147b2
db 0x60, 0xF6 ; 014790: provisional 68k bra.b $14788
db 0x78, 0x00 ; 014792: provisional 68k moveq #$0, d4
db 0x10, 0x11 ; 014794: provisional 68k move.b (a1), d0
db 0x02, 0x00, 0x00, 0x0F ; 014796: provisional 68k andi.b #$f, d0
db 0x0C, 0x00, 0x00, 0x08 ; 01479A: provisional 68k cmpi.b #$8, d0
db 0x6C, 0x10 ; 01479E: provisional 68k bge.b $147b0
db 0x02, 0x12, 0x00, 0x0F ; 0147A0: provisional 68k andi.b #$f, (a2)
db 0x10, 0x19 ; 0147A4: provisional 68k move.b (a1)+, d0
db 0x02, 0x00, 0x00, 0xF0 ; 0147A6: provisional 68k andi.b #$f0, d0
db 0x81, 0x1A ; 0147AA: provisional 68k or.b d0, (a2)+
db 0x78, 0x01 ; 0147AC: provisional 68k moveq #$1, d4
db 0x60, 0x02 ; 0147AE: provisional 68k bra.b $147b2
db 0x14, 0xD9 ; 0147B0: provisional 68k move.b (a1)+, (a2)+
db 0x28, 0xCD ; 0147B2: provisional 68k move.l a5, (a4)+
db 0x19, 0x43, 0xFF, 0xFC ; 0147B4: provisional 68k move.b d3, -$4(a4)
db 0x19, 0x7C, 0x00, 0x60, 0xFF, 0xFD ; 0147B8: provisional 68k move.b #$60, -$3(a4)
db 0x00, 0x2C, 0x00, 0xFC, 0xFF, 0xFE ; 0147BE: provisional 68k ori.b #$fc, -$2(a4)
db 0x52, 0x03 ; 0147C4: provisional 68k addq.b #$1, d3
db 0x99, 0xAC, 0xFF, 0xFC ; 0147C6: provisional 68k sub.l d4, -$4(a4)
db 0x60, 0x00, 0xFF, 0x70 ; 0147CA: provisional 68k bra.w $1473c
db 0x0C, 0x01, 0x00, 0x80 ; 0147CE: provisional 68k cmpi.b #$80, d1
db 0x66, 0x06 ; 0147D2: provisional 68k bne.b $147da
db 0x26, 0x6B, 0x09, 0x34 ; 0147D4: provisional 68k movea.l $934(a3), a3
db 0x22, 0x4B ; 0147D8: provisional 68k movea.l a3, a1
db 0x18, 0x83 ; 0147DA: provisional 68k move.b d3, (a4)
db 0x19, 0x7C, 0x00, 0x00, 0x00, 0x01 ; 0147DC: provisional 68k move.b #$0, $1(a4)
db 0x00, 0x2C, 0x00, 0xFC, 0x00, 0x02 ; 0147E2: provisional 68k ori.b #$fc, $2(a4)
db 0x4C, 0xDF, 0x30, 0x00 ; 0147E8: provisional 68k movem.l (a7)+, a4-a5
db 0x29, 0x5F, 0x00, 0x18 ; 0147EC: provisional 68k move.l (a7)+, $18(a4)
db 0x49, 0xEC, 0x00, 0x20 ; 0147F0: provisional 68k lea.l $20(a4), a4
db 0x51, 0xCA, 0xFF, 0x32 ; 0147F4: provisional 68k dbra d2, $14728
db 0x28, 0xBC, 0xD0, 0x00, 0x00, 0x00 ; 0147F8: provisional 68k move.l #$d0000000, (a4)
db 0x29, 0x7C, 0xD0, 0x00, 0x00, 0x00, 0x00, 0x20 ; 0147FE: provisional 68k move.l #$d0000000, $20(a4)
db 0x4C, 0xDF, 0x3F, 0x0F ; 014806: provisional 68k movem.l (a7)+, d0-d3/a0-a5
db 0x4E, 0x75 ; 01480A: provisional 68k rts 
