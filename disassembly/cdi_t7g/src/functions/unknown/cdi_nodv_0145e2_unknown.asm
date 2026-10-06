; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 0145E2–014697, inclusive.
cdi_nodv_entry_0145e2:
db 0x32, 0x2D, 0x00, 0x28 ; 0145E2: provisional 68k move.w $28(a5), d1
db 0x34, 0x2D, 0x00, 0x24 ; 0145E6: provisional 68k move.w $24(a5), d2
db 0x2F, 0x0D ; 0145EA: provisional 68k move.l a5, -(a7)
db 0x70, 0x01 ; 0145EC: provisional 68k moveq #$1, d0
db 0x61, 0x00, 0xA2, 0xC0 ; 0145EE: provisional 68k bsr.w $e8b0
db 0x3F, 0x01 ; 0145F2: provisional 68k move.w d1, -(a7)
db 0x2F, 0x2D, 0x00, 0x32 ; 0145F4: provisional 68k move.l $32(a5), -(a7)
db 0x61, 0x00, 0xD0, 0x92 ; 0145F8: provisional 68k bsr.w $1168c
db 0x2D, 0x48, 0xD0, 0x3C ; 0145FC: provisional 68k move.l a0, -$2fc4(a6)
db 0x2A, 0x5F ; 014600: provisional 68k movea.l (a7)+, a5
db 0x61, 0x00, 0x00, 0x94 ; 014602: provisional 68k bsr.w $14698
db 0x3F, 0x02 ; 014606: provisional 68k move.w d2, -(a7)
db 0x61, 0x00, 0xF6, 0x4C ; 014608: provisional 68k bsr.w $13c56
db 0x65, 0x00, 0x00, 0x2E ; 01460C: provisional 68k bcs.w $1463c
db 0x34, 0x1F ; 014610: provisional 68k move.w (a7)+, d2
db 0x20, 0x6C, 0x00, 0x34 ; 014612: provisional 68k movea.l $34(a4), a0
db 0xE5, 0x45 ; 014616: provisional 68k asl.w #$2, d5
db 0xD0, 0xC5 ; 014618: provisional 68k adda.w d5, a0
db 0x26, 0x6D, 0x00, 0x3C ; 01461A: provisional 68k movea.l $3c(a5), a3
db 0x22, 0x4B ; 01461E: provisional 68k movea.l a3, a1
db 0x48, 0xC4 ; 014620: provisional 68k ext.l d4
db 0x3A, 0x44 ; 014622: provisional 68k movea.w d4, a5
db 0x28, 0x6E, 0xD0, 0x3C ; 014624: provisional 68k movea.l -$2fc4(a6), a4
db 0x32, 0x29, 0x00, 0x08 ; 014628: provisional 68k move.w $8(a1), d1
db 0x3F, 0x01 ; 01462C: provisional 68k move.w d1, -(a7)
db 0xE3, 0x41 ; 01462E: provisional 68k asl.w #$1, d1
db 0xD2, 0x5F ; 014630: provisional 68k add.w (a7)+, d1
db 0x43, 0xF1, 0x10, 0x0A ; 014632: provisional 68k lea.l $a(a1, d1.w), a1
db 0x61, 0x00, 0x00, 0xEA ; 014636: provisional 68k bsr.w $14722
db 0x4E, 0x75 ; 01463A: provisional 68k rts 
db 0x32, 0x3C, 0x80, 0x00 ; 01463C: provisional 68k move.w #$8000, d1
db 0x61, 0x00, 0x85, 0xBC ; 014640: provisional 68k bsr.w $cbfe
db 0x70, 0x61 ; 014644: provisional 68k moveq #$61, d0
db 0x73, 0x74 ; file 014646
db 0x65, 0x5F ; 014648: provisional 68k bcs.b $146a9
db 0x63, 0x6C ; 01464A: provisional 68k bls.b $146b8
db 0x34, 0x71, 0x5F, 0x6E, 0x6F, 0x5F ; 01464C: provisional 68k movea.w ([$6f5f, a1]), a2
db 0x6D, 0x61 ; 014652: provisional 68k blt.b $146b5
db 0x73, 0x6B ; file 014654
db 0x3A, 0x20 ; 014656: provisional 68k move.w -(a0), d5
db 0x4E, 0x6F ; 014658: provisional 68k move usp, a7
db 0x74, 0x20 ; 01465A: provisional 68k moveq #$20, d2
db 0x76, 0x69 ; 01465C: provisional 68k moveq #$69, d3
db 0x73, 0x69 ; file 01465E
db 0x62, 0x6C ; 014660: provisional 68k bhi.b $146ce
db 0x65, 0x21 ; 014662: provisional 68k bcs.b $14685
db 0x00, 0x00, 0x30, 0x39 ; 014664: provisional 68k ori.b #$39, d0
db 0x00, 0x00, 0x00, 0x01 ; 014668: provisional 68k ori.b #$1, d0
db 0x30, 0x3C, 0x00, 0x01 ; 01466C: provisional 68k move.w #$1, d0
db 0x61, 0x00, 0xA2, 0x3E ; 014670: provisional 68k bsr.w $e8b0
db 0x20, 0x6E, 0xD0, 0x3C ; 014674: provisional 68k movea.l -$2fc4(a6), a0
db 0x36, 0x2D, 0x00, 0x24 ; 014678: provisional 68k move.w $24(a5), d3
db 0x38, 0x01 ; 01467C: provisional 68k move.w d1, d4
db 0x3A, 0x3C, 0x00, 0x00 ; 01467E: provisional 68k move.w #$0, d5
db 0x3C, 0x02 ; 014682: provisional 68k move.w d2, d6
db 0x3E, 0x3C, 0x00, 0x06 ; 014684: provisional 68k move.w #$6, d7
db 0x20, 0x48 ; 014688: provisional 68k movea.l a0, a0
db 0x30, 0x2E, 0xAD, 0xA2 ; 01468A: provisional 68k move.w -$525e(a6), d0
db 0x72, 0x56 ; 01468E: provisional 68k moveq #$56, d1
db 0x74, 0x08 ; 014690: provisional 68k moveq #$8, d2
db 0x4E, 0x40, 0x00, 0x8E ; 014692: provisional 68k trap #0 ; OS-9 service word $008E
db 0x4E, 0x75 ; 014696: provisional 68k rts 
