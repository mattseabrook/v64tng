; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 0138A2–01398B, inclusive.
cdi_t7g_entry_0138a2:
db 0x48, 0xE7, 0xF0, 0xFC ; 0138A2: provisional 68k movem.l d0-d3/a0-a5, -(a7)
db 0x53, 0x42 ; 0138A6: provisional 68k subq.w #$1, d2
db 0x16, 0x3C, 0x00, 0xD0 ; 0138A8: provisional 68k move.b #$d0, d3
db 0x24, 0x58 ; 0138AC: provisional 68k movea.l (a0)+, a2
db 0x20, 0x0D ; 0138AE: provisional 68k move.l a5, d0
db 0xE2, 0x88 ; 0138B0: provisional 68k lsr.l #$1, d0
db 0xD5, 0xC0 ; 0138B2: provisional 68k adda.l d0, a2
db 0x2F, 0x2C, 0x00, 0x18 ; 0138B4: provisional 68k move.l $18(a4), -(a7)
db 0x48, 0xE7, 0x00, 0x0C ; 0138B8: provisional 68k movem.l a4-a5, -(a7)
db 0x72, 0x00 ; 0138BC: provisional 68k moveq #$0, d1
db 0x12, 0x19 ; 0138BE: provisional 68k move.b (a1)+, d1
db 0x6A, 0x06 ; 0138C0: provisional 68k bpl.b $138c8
db 0x12, 0x19 ; 0138C2: provisional 68k move.b (a1)+, d1
db 0x6B, 0x00, 0x00, 0x88 ; 0138C4: provisional 68k bmi.w $1394e
db 0xD4, 0xC1 ; 0138C8: provisional 68k adda.w d1, a2
db 0xD2, 0x41 ; 0138CA: provisional 68k add.w d1, d1
db 0xDA, 0xC1 ; 0138CC: provisional 68k adda.w d1, a5
db 0x28, 0xCD ; 0138CE: provisional 68k move.l a5, (a4)+
db 0x19, 0x43, 0xFF, 0xFC ; 0138D0: provisional 68k move.b d3, -$4(a4)
db 0x19, 0x7C, 0x00, 0x60, 0xFF, 0xFD ; 0138D4: provisional 68k move.b #$60, -$3(a4)
db 0x52, 0x03 ; 0138DA: provisional 68k addq.b #$1, d3
db 0x72, 0x00 ; 0138DC: provisional 68k moveq #$0, d1
db 0x78, 0x00 ; 0138DE: provisional 68k moveq #$0, d4
db 0x12, 0x19 ; 0138E0: provisional 68k move.b (a1)+, d1
db 0x30, 0x01 ; 0138E2: provisional 68k move.w d1, d0
db 0xD0, 0x40 ; 0138E4: provisional 68k add.w d0, d0
db 0x4B, 0xF5, 0x00, 0x02 ; 0138E6: provisional 68k lea.l $2(a5, d0.w), a5
db 0x10, 0x11 ; 0138EA: provisional 68k move.b (a1), d0
db 0x6B, 0x16 ; 0138EC: provisional 68k bmi.b $13904
db 0x52, 0xAC, 0xFF, 0xFC ; 0138EE: provisional 68k addq.l #$1, -$4(a4)
db 0x02, 0x00, 0x00, 0x0F ; 0138F2: provisional 68k andi.b #$f, d0
db 0x02, 0x12, 0x00, 0xF0 ; 0138F6: provisional 68k andi.b #$f0, (a2)
db 0x81, 0x1A ; 0138FA: provisional 68k or.b d0, (a2)+
db 0x52, 0x49 ; 0138FC: provisional 68k addq.w #$1, a1
db 0x4A, 0x41 ; 0138FE: provisional 68k tst.w d1
db 0x67, 0x30 ; 013900: provisional 68k beq.b $13932
db 0x60, 0x06 ; 013902: provisional 68k bra.b $1390a
db 0x4A, 0x01 ; 013904: provisional 68k tst.b d1
db 0x67, 0x0A ; 013906: provisional 68k beq.b $13912
db 0x14, 0xD9 ; 013908: provisional 68k move.b (a1)+, (a2)+
db 0x53, 0x41 ; 01390A: provisional 68k subq.w #$1, d1
db 0x67, 0x04 ; 01390C: provisional 68k beq.b $13912
db 0x6B, 0x22 ; 01390E: provisional 68k bmi.b $13932
db 0x60, 0xF6 ; 013910: provisional 68k bra.b $13908
db 0x78, 0x00 ; 013912: provisional 68k moveq #$0, d4
db 0x10, 0x11 ; 013914: provisional 68k move.b (a1), d0
db 0x02, 0x00, 0x00, 0x0F ; 013916: provisional 68k andi.b #$f, d0
db 0x0C, 0x00, 0x00, 0x08 ; 01391A: provisional 68k cmpi.b #$8, d0
db 0x6C, 0x10 ; 01391E: provisional 68k bge.b $13930
db 0x02, 0x12, 0x00, 0x0F ; 013920: provisional 68k andi.b #$f, (a2)
db 0x10, 0x19 ; 013924: provisional 68k move.b (a1)+, d0
db 0x02, 0x00, 0x00, 0xF0 ; 013926: provisional 68k andi.b #$f0, d0
db 0x81, 0x1A ; 01392A: provisional 68k or.b d0, (a2)+
db 0x78, 0x01 ; 01392C: provisional 68k moveq #$1, d4
db 0x60, 0x02 ; 01392E: provisional 68k bra.b $13932
db 0x14, 0xD9 ; 013930: provisional 68k move.b (a1)+, (a2)+
db 0x28, 0xCD ; 013932: provisional 68k move.l a5, (a4)+
db 0x19, 0x43, 0xFF, 0xFC ; 013934: provisional 68k move.b d3, -$4(a4)
db 0x19, 0x7C, 0x00, 0x60, 0xFF, 0xFD ; 013938: provisional 68k move.b #$60, -$3(a4)
db 0x00, 0x2C, 0x00, 0xFC, 0xFF, 0xFE ; 01393E: provisional 68k ori.b #$fc, -$2(a4)
db 0x52, 0x03 ; 013944: provisional 68k addq.b #$1, d3
db 0x99, 0xAC, 0xFF, 0xFC ; 013946: provisional 68k sub.l d4, -$4(a4)
db 0x60, 0x00, 0xFF, 0x70 ; 01394A: provisional 68k bra.w $138bc
db 0x0C, 0x01, 0x00, 0x80 ; 01394E: provisional 68k cmpi.b #$80, d1
db 0x66, 0x06 ; 013952: provisional 68k bne.b $1395a
db 0x26, 0x6B, 0x09, 0x34 ; 013954: provisional 68k movea.l $934(a3), a3
db 0x22, 0x4B ; 013958: provisional 68k movea.l a3, a1
db 0x18, 0x83 ; 01395A: provisional 68k move.b d3, (a4)
db 0x19, 0x7C, 0x00, 0x00, 0x00, 0x01 ; 01395C: provisional 68k move.b #$0, $1(a4)
db 0x00, 0x2C, 0x00, 0xFC, 0x00, 0x02 ; 013962: provisional 68k ori.b #$fc, $2(a4)
db 0x4C, 0xDF, 0x30, 0x00 ; 013968: provisional 68k movem.l (a7)+, a4-a5
db 0x29, 0x5F, 0x00, 0x18 ; 01396C: provisional 68k move.l (a7)+, $18(a4)
db 0x49, 0xEC, 0x00, 0x20 ; 013970: provisional 68k lea.l $20(a4), a4
db 0x51, 0xCA, 0xFF, 0x32 ; 013974: provisional 68k dbra d2, $138a8
db 0x28, 0xBC, 0xD0, 0x00, 0x00, 0x00 ; 013978: provisional 68k move.l #$d0000000, (a4)
db 0x29, 0x7C, 0xD0, 0x00, 0x00, 0x00, 0x00, 0x20 ; 01397E: provisional 68k move.l #$d0000000, $20(a4)
db 0x4C, 0xDF, 0x3F, 0x0F ; 013986: provisional 68k movem.l (a7)+, d0-d3/a0-a5
db 0x4E, 0x75 ; 01398A: provisional 68k rts 
