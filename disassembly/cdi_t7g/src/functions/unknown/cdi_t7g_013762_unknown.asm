; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 013762–013817, inclusive.
cdi_t7g_entry_013762:
db 0x32, 0x2D, 0x00, 0x28 ; 013762: provisional 68k move.w $28(a5), d1
db 0x34, 0x2D, 0x00, 0x24 ; 013766: provisional 68k move.w $24(a5), d2
db 0x2F, 0x0D ; 01376A: provisional 68k move.l a5, -(a7)
db 0x70, 0x01 ; 01376C: provisional 68k moveq #$1, d0
db 0x61, 0x00, 0xA2, 0xC0 ; 01376E: provisional 68k bsr.w $da30
db 0x3F, 0x01 ; 013772: provisional 68k move.w d1, -(a7)
db 0x2F, 0x2D, 0x00, 0x32 ; 013774: provisional 68k move.l $32(a5), -(a7)
db 0x61, 0x00, 0xD0, 0x92 ; 013778: provisional 68k bsr.w $1080c
db 0x2D, 0x48, 0xD0, 0x3C ; 01377C: provisional 68k move.l a0, -$2fc4(a6)
db 0x2A, 0x5F ; 013780: provisional 68k movea.l (a7)+, a5
db 0x61, 0x00, 0x00, 0x94 ; 013782: provisional 68k bsr.w $13818
db 0x3F, 0x02 ; 013786: provisional 68k move.w d2, -(a7)
db 0x61, 0x00, 0xF6, 0x4C ; 013788: provisional 68k bsr.w $12dd6
db 0x65, 0x00, 0x00, 0x2E ; 01378C: provisional 68k bcs.w $137bc
db 0x34, 0x1F ; 013790: provisional 68k move.w (a7)+, d2
db 0x20, 0x6C, 0x00, 0x34 ; 013792: provisional 68k movea.l $34(a4), a0
db 0xE5, 0x45 ; 013796: provisional 68k asl.w #$2, d5
db 0xD0, 0xC5 ; 013798: provisional 68k adda.w d5, a0
db 0x26, 0x6D, 0x00, 0x3C ; 01379A: provisional 68k movea.l $3c(a5), a3
db 0x22, 0x4B ; 01379E: provisional 68k movea.l a3, a1
db 0x48, 0xC4 ; 0137A0: provisional 68k ext.l d4
db 0x3A, 0x44 ; 0137A2: provisional 68k movea.w d4, a5
db 0x28, 0x6E, 0xD0, 0x3C ; 0137A4: provisional 68k movea.l -$2fc4(a6), a4
db 0x32, 0x29, 0x00, 0x08 ; 0137A8: provisional 68k move.w $8(a1), d1
db 0x3F, 0x01 ; 0137AC: provisional 68k move.w d1, -(a7)
db 0xE3, 0x41 ; 0137AE: provisional 68k asl.w #$1, d1
db 0xD2, 0x5F ; 0137B0: provisional 68k add.w (a7)+, d1
db 0x43, 0xF1, 0x10, 0x0A ; 0137B2: provisional 68k lea.l $a(a1, d1.w), a1
db 0x61, 0x00, 0x00, 0xEA ; 0137B6: provisional 68k bsr.w $138a2
db 0x4E, 0x75 ; 0137BA: provisional 68k rts 
db 0x32, 0x3C, 0x80, 0x00 ; 0137BC: provisional 68k move.w #$8000, d1
db 0x61, 0x00, 0x85, 0xBC ; 0137C0: provisional 68k bsr.w $bd7e
db 0x70, 0x61 ; 0137C4: provisional 68k moveq #$61, d0
db 0x73, 0x74 ; file 0137C6
db 0x65, 0x5F ; 0137C8: provisional 68k bcs.b $13829
db 0x63, 0x6C ; 0137CA: provisional 68k bls.b $13838
db 0x34, 0x71, 0x5F, 0x6E, 0x6F, 0x5F ; 0137CC: provisional 68k movea.w ([$6f5f, a1]), a2
db 0x6D, 0x61 ; 0137D2: provisional 68k blt.b $13835
db 0x73, 0x6B ; file 0137D4
db 0x3A, 0x20 ; 0137D6: provisional 68k move.w -(a0), d5
db 0x4E, 0x6F ; 0137D8: provisional 68k move usp, a7
db 0x74, 0x20 ; 0137DA: provisional 68k moveq #$20, d2
db 0x76, 0x69 ; 0137DC: provisional 68k moveq #$69, d3
db 0x73, 0x69 ; file 0137DE
db 0x62, 0x6C ; 0137E0: provisional 68k bhi.b $1384e
db 0x65, 0x21 ; 0137E2: provisional 68k bcs.b $13805
db 0x00, 0x00, 0x30, 0x39 ; 0137E4: provisional 68k ori.b #$39, d0
db 0x00, 0x00, 0x00, 0x01 ; 0137E8: provisional 68k ori.b #$1, d0
db 0x30, 0x3C, 0x00, 0x01 ; 0137EC: provisional 68k move.w #$1, d0
db 0x61, 0x00, 0xA2, 0x3E ; 0137F0: provisional 68k bsr.w $da30
db 0x20, 0x6E, 0xD0, 0x3C ; 0137F4: provisional 68k movea.l -$2fc4(a6), a0
db 0x36, 0x2D, 0x00, 0x24 ; 0137F8: provisional 68k move.w $24(a5), d3
db 0x38, 0x01 ; 0137FC: provisional 68k move.w d1, d4
db 0x3A, 0x3C, 0x00, 0x00 ; 0137FE: provisional 68k move.w #$0, d5
db 0x3C, 0x02 ; 013802: provisional 68k move.w d2, d6
db 0x3E, 0x3C, 0x00, 0x06 ; 013804: provisional 68k move.w #$6, d7
db 0x20, 0x48 ; 013808: provisional 68k movea.l a0, a0
db 0x30, 0x2E, 0xAD, 0xA2 ; 01380A: provisional 68k move.w -$525e(a6), d0
db 0x72, 0x56 ; 01380E: provisional 68k moveq #$56, d1
db 0x74, 0x08 ; 013810: provisional 68k moveq #$8, d2
db 0x4E, 0x40, 0x00, 0x8E ; 013812: provisional 68k trap #0 ; OS-9 service word $008E
db 0x4E, 0x75 ; 013816: provisional 68k rts 
