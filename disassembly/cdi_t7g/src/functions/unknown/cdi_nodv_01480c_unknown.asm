; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 01480C–01489F, inclusive.
cdi_nodv_entry_01480c:
db 0x32, 0x2D, 0x00, 0x28 ; 01480C: provisional 68k move.w $28(a5), d1
db 0x34, 0x2D, 0x00, 0x24 ; 014810: provisional 68k move.w $24(a5), d2
db 0x2F, 0x0D ; 014814: provisional 68k move.l a5, -(a7)
db 0x70, 0x01 ; 014816: provisional 68k moveq #$1, d0
db 0x61, 0x00, 0xA0, 0x96 ; 014818: provisional 68k bsr.w $e8b0
db 0x3F, 0x01 ; 01481C: provisional 68k move.w d1, -(a7)
db 0x2F, 0x2D, 0x00, 0x32 ; 01481E: provisional 68k move.l $32(a5), -(a7)
db 0x61, 0x00, 0xCE, 0x68 ; 014822: provisional 68k bsr.w $1168c
db 0x2D, 0x48, 0xD0, 0x3C ; 014826: provisional 68k move.l a0, -$2fc4(a6)
db 0x2A, 0x5F ; 01482A: provisional 68k movea.l (a7)+, a5
db 0x61, 0x00, 0xFE, 0x6A ; 01482C: provisional 68k bsr.w $14698
db 0x3F, 0x02 ; 014830: provisional 68k move.w d2, -(a7)
db 0x61, 0x00, 0xF4, 0x22 ; 014832: provisional 68k bsr.w $13c56
db 0x65, 0x00, 0x00, 0x42 ; 014836: provisional 68k bcs.w $1487a
db 0x34, 0x1F ; 01483A: provisional 68k move.w (a7)+, d2
db 0x30, 0x2C, 0x00, 0x28 ; 01483C: provisional 68k move.w $28(a4), d0
db 0x90, 0x6B, 0x00, 0x28 ; 014840: provisional 68k sub.w $28(a3), d0
db 0xD0, 0x45 ; 014844: provisional 68k add.w d5, d0
db 0x26, 0x6B, 0x00, 0x34 ; 014846: provisional 68k movea.l $34(a3), a3
db 0xE5, 0x40 ; 01484A: provisional 68k asl.w #$2, d0
db 0xD6, 0xC0 ; 01484C: provisional 68k adda.w d0, a3
db 0x20, 0x6C, 0x00, 0x34 ; 01484E: provisional 68k movea.l $34(a4), a0
db 0xE5, 0x45 ; 014852: provisional 68k asl.w #$2, d5
db 0xD0, 0xC5 ; 014854: provisional 68k adda.w d5, a0
db 0x22, 0x6D, 0x00, 0x3C ; 014856: provisional 68k movea.l $3c(a5), a1
db 0x48, 0xC4 ; 01485A: provisional 68k ext.l d4
db 0x3A, 0x44 ; 01485C: provisional 68k movea.w d4, a5
db 0x28, 0x6E, 0xD0, 0x3C ; 01485E: provisional 68k movea.l -$2fc4(a6), a4
db 0x28, 0x0B ; 014862: provisional 68k move.l a3, d4
db 0x26, 0x49 ; 014864: provisional 68k movea.l a1, a3
db 0x32, 0x29, 0x00, 0x08 ; 014866: provisional 68k move.w $8(a1), d1
db 0x3F, 0x01 ; 01486A: provisional 68k move.w d1, -(a7)
db 0xE3, 0x41 ; 01486C: provisional 68k asl.w #$1, d1
db 0xD2, 0x5F ; 01486E: provisional 68k add.w (a7)+, d1
db 0x43, 0xF1, 0x10, 0x0A ; 014870: provisional 68k lea.l $a(a1, d1.w), a1
db 0x61, 0x00, 0x00, 0x2A ; 014874: provisional 68k bsr.w $148a0
db 0x4E, 0x75 ; 014878: provisional 68k rts 
db 0x32, 0x3C, 0x80, 0x00 ; 01487A: provisional 68k move.w #$8000, d1
db 0x61, 0x00, 0x83, 0x7E ; 01487E: provisional 68k bsr.w $cbfe
db 0x70, 0x61 ; 014882: provisional 68k moveq #$61, d0
db 0x73, 0x74 ; file 014884
db 0x65, 0x5F ; 014886: provisional 68k bcs.b $148e7
db 0x63, 0x6C ; 014888: provisional 68k bls.b $148f6
db 0x34, 0x71, 0x5F, 0x6D, 0x61, 0x73 ; 01488A: provisional 68k movea.w ([$6173, a1]), a2
db 0x6B, 0x3A ; 014890: provisional 68k bmi.b $148cc
db 0x20, 0x4E ; 014892: provisional 68k movea.l a6, a0
db 0x6F, 0x74 ; 014894: provisional 68k ble.b $1490a
db 0x20, 0x76, 0x69, 0x73, 0x69, 0x62, 0x6C, 0x65, 0x21, 0x00 ; file 014896
