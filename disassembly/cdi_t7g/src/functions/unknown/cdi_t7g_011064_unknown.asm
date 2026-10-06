; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 011064–01119B, inclusive.
cdi_t7g_entry_011064:
db 0x2F, 0x0D ; 011064: provisional 68k move.l a5, -(a7)
db 0x2A, 0x6F, 0x00, 0x08 ; 011066: provisional 68k movea.l $8(a7), a5
db 0x30, 0x2F, 0x00, 0x0C ; 01106A: provisional 68k move.w $c(a7), d0
db 0x90, 0x6D, 0x00, 0x1C ; 01106E: provisional 68k sub.w $1c(a5), d0
db 0x6B, 0x2E ; 011072: provisional 68k bmi.b $110a2
db 0xB0, 0x6D, 0x00, 0x1E ; 011074: provisional 68k cmp.w $1e(a5), d0
db 0x6A, 0x28 ; 011078: provisional 68k bpl.b $110a2
db 0x2A, 0x6D, 0x00, 0x20 ; 01107A: provisional 68k movea.l $20(a5), a5
db 0xE5, 0x40 ; 01107E: provisional 68k asl.w #$2, d0
db 0xDA, 0xC0 ; 011080: provisional 68k adda.w d0, a5
db 0x30, 0x2F, 0x00, 0x0E ; 011082: provisional 68k move.w $e(a7), d0
db 0xB0, 0x7C, 0x00, 0x03 ; 011086: provisional 68k cmp.w #$3, d0
db 0x6B, 0x06 ; 01108A: provisional 68k bmi.b $11092
db 0x80, 0xFC, 0x00, 0x03 ; 01108C: provisional 68k divu.w #$3, d0
db 0x48, 0x40 ; 011090: provisional 68k swap d0
db 0x52, 0x40 ; 011092: provisional 68k addq.w #$1, d0
db 0x10, 0x35, 0x00, 0x00 ; 011094: provisional 68k move.b (a5, d0.w), d0
db 0x2A, 0x5F ; 011098: provisional 68k movea.l (a7)+, a5
db 0x2F, 0x57, 0x00, 0x08 ; 01109A: provisional 68k move.l (a7), $8(a7)
db 0x50, 0x4F ; 01109E: provisional 68k addq.w #$8, a7
db 0x4E, 0x75 ; 0110A0: provisional 68k rts 
db 0x42, 0x40 ; 0110A2: provisional 68k clr.w d0
db 0x60, 0xF2 ; 0110A4: provisional 68k bra.b $11098
db 0x48, 0xE7, 0x30, 0x84 ; 0110A6: provisional 68k movem.l d2-d3/a0/a5, -(a7)
db 0x2A, 0x6F, 0x00, 0x14 ; 0110AA: provisional 68k movea.l $14(a7), a5
db 0x34, 0x2F, 0x00, 0x18 ; 0110AE: provisional 68k move.w $18(a7), d2
db 0x36, 0x2F, 0x00, 0x1A ; 0110B2: provisional 68k move.w $1a(a7), d3
db 0x4A, 0xAD, 0x00, 0x24 ; 0110B6: provisional 68k tst.l $24(a5)
db 0x67, 0x0C ; 0110BA: provisional 68k beq.b $110c8
db 0x2F, 0x2D, 0x00, 0x24 ; 0110BC: provisional 68k move.l $24(a5), -(a7)
db 0x61, 0x00, 0xF0, 0x22 ; 0110C0: provisional 68k bsr.w $100e4
db 0x42, 0xAD, 0x00, 0x24 ; 0110C4: provisional 68k clr.l $24(a5)
db 0x41, 0xED, 0x00, 0x28 ; 0110C8: provisional 68k lea.l $28(a5), a0
db 0x3B, 0x42, 0x00, 0x1C ; 0110CC: provisional 68k move.w d2, $1c(a5)
db 0x3B, 0x43, 0x00, 0x1E ; 0110D0: provisional 68k move.w d3, $1e(a5)
db 0xB6, 0x7C, 0x00, 0x10 ; 0110D4: provisional 68k cmp.w #$10, d3
db 0x6F, 0x3A ; 0110D8: provisional 68k ble.b $11114
db 0x3F, 0x3C, 0x00, 0x03 ; 0110DA: provisional 68k move.w #$3, -(a7)
db 0x2F, 0x0D ; 0110DE: provisional 68k move.l a5, -(a7)
db 0x2D, 0x43, 0xCF, 0xE8 ; 0110E0: provisional 68k move.l d3, -$3018(a6)
db 0x2D, 0x7C, 0x00, 0x00, 0x00, 0x04, 0xCF, 0xEC ; 0110E4: provisional 68k move.l #$4, -$3014(a6)
db 0x2D, 0x6E, 0xA9, 0x04, 0xCF, 0xF0 ; 0110EC: provisional 68k move.l -$56fc(a6), -$3010(a6)
db 0x61, 0x00, 0xEF, 0x8A ; 0110F2: provisional 68k bsr.w $1007e
db 0x48, 0x7A, 0x00, 0x0A ; 0110F6: provisional 68k pea.l $11102(pc)
db 0x2F, 0x08 ; 0110FA: provisional 68k move.l a0, -(a7)
db 0x61, 0x00, 0xF2, 0x24 ; 0110FC: provisional 68k bsr.w $10322
db 0x60, 0x0A ; 011100: provisional 68k bra.b $1110c
db 0x72, 0x67 ; 011102: provisional 68k moveq #$67, d1
db 0x62, 0x20 ; 011104: provisional 68k bhi.b $11126
db 0x64, 0x61 ; 011106: provisional 68k bcc.b $11169
db 0x74, 0x61 ; 011108: provisional 68k moveq #$61, d2
db 0x00, 0x00, 0x2B, 0x48 ; 01110A: provisional 68k ori.b #$48, d0
db 0x00, 0x24, 0x20, 0x68 ; 01110E: provisional 68k ori.b #$68, -(a4)
db 0x00, 0x2C, 0x2B, 0x48, 0x00, 0x20 ; 011112: provisional 68k ori.b #$48, $20(a4)
db 0x4C, 0xDF, 0x21, 0x0C ; 011118: provisional 68k movem.l (a7)+, d2-d3/a0/a5
db 0x2F, 0x57, 0x00, 0x08 ; 01111C: provisional 68k move.l (a7), $8(a7)
db 0x50, 0x4F ; 011120: provisional 68k addq.w #$8, a7
db 0x4E, 0x75 ; 011122: provisional 68k rts 
db 0x48, 0xE7, 0xE0, 0x84 ; 011124: provisional 68k movem.l d0-d2/a0/a5, -(a7)
db 0x2A, 0x6F, 0x00, 0x18 ; 011128: provisional 68k movea.l $18(a7), a5
db 0x20, 0x6F, 0x00, 0x1C ; 01112C: provisional 68k movea.l $1c(a7), a0
db 0x30, 0x18 ; 011130: provisional 68k move.w (a0)+, d0
db 0x32, 0x18 ; 011132: provisional 68k move.w (a0)+, d1
db 0x90, 0x6D, 0x00, 0x1C ; 011134: provisional 68k sub.w $1c(a5), d0
db 0x6B, 0x2A ; 011138: provisional 68k bmi.b $11164
db 0x34, 0x01 ; 01113A: provisional 68k move.w d1, d2
db 0xD4, 0x40 ; 01113C: provisional 68k add.w d0, d2
db 0xB4, 0x6D, 0x00, 0x1E ; 01113E: provisional 68k cmp.w $1e(a5), d2
db 0x6E, 0x20 ; 011142: provisional 68k bgt.b $11164
db 0x2A, 0x6D, 0x00, 0x20 ; 011144: provisional 68k movea.l $20(a5), a5
db 0xE5, 0x40 ; 011148: provisional 68k asl.w #$2, d0
db 0xDA, 0xC0 ; 01114A: provisional 68k adda.w d0, a5
db 0x53, 0x41 ; 01114C: provisional 68k subq.w #$1, d1
db 0x67, 0x06 ; 01114E: provisional 68k beq.b $11156
db 0x2A, 0xD8 ; 011150: provisional 68k move.l (a0)+, (a5)+
db 0x51, 0xC9, 0xFF, 0xFC ; 011152: provisional 68k dbra d1, $11150
db 0x4C, 0xDF, 0x21, 0x07 ; 011156: provisional 68k movem.l (a7)+, d0-d2/a0/a5
db 0x2F, 0x57, 0x00, 0x08 ; 01115A: provisional 68k move.l (a7), $8(a7)
db 0x4F, 0xEF, 0x00, 0x08 ; 01115E: provisional 68k lea.l $8(a7), a7
db 0x4E, 0x75 ; 011162: provisional 68k rts 
db 0x32, 0x39, 0x00, 0x00, 0x80, 0x00 ; 011164: provisional 68k move.w $8000.l, d1
db 0x61, 0x00, 0xAC, 0x12 ; 01116A: provisional 68k bsr.w $bd7e
db 0x70, 0x6C ; 01116E: provisional 68k moveq #$6c, d0
db 0x74, 0x65 ; 011170: provisional 68k moveq #$65, d2
db 0x5F, 0x77, 0x72, 0x69 ; 011172: provisional 68k subq.w #$7, $69(a7, d7.w)
db 0x74, 0x65 ; 011176: provisional 68k moveq #$65, d2
db 0x5F, 0x64 ; 011178: provisional 68k subq.w #$7, -(a4)
db 0x61, 0x74 ; 01117A: provisional 68k bsr.b $111f0
db 0x61, 0x20 ; 01117C: provisional 68k bsr.b $1119e
db 0x3A, 0x20 ; 01117E: provisional 68k move.w -(a0), d5
db 0x44, 0x61 ; 011180: provisional 68k neg.w -(a1)
db 0x74, 0x61 ; 011182: provisional 68k moveq #$61, d2
db 0x20, 0x64 ; 011184: provisional 68k movea.l -(a4), a0
db 0x6F, 0x65 ; 011186: provisional 68k ble.b $111ed
db 0x73, 0x6E ; file 011188
db 0x27, 0x74, 0x20, 0x66, 0x69, 0x74 ; 01118A: provisional 68k move.l $66(a4, d2.w), $6974(a3)
db 0x20, 0x69, 0x6E, 0x20 ; 011190: provisional 68k movea.l $6e20(a1), a0
db 0x70, 0x61 ; 011194: provisional 68k moveq #$61, d0
db 0x6C, 0x65 ; 011196: provisional 68k bge.b $111fd
db 0x74, 0x74 ; 011198: provisional 68k moveq #$74, d2
db 0x65, 0x00 ; file 01119A
