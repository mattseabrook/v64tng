; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 014698–014721, inclusive.
cdi_nodv_entry_014698:
db 0x48, 0xE7, 0x60, 0x1C ; 014698: provisional 68k movem.l d1-d2/a3-a5, -(a7)
db 0x22, 0x6D, 0x00, 0x3C ; 01469C: provisional 68k movea.l $3c(a5), a1
db 0x32, 0x29, 0x00, 0x08 ; 0146A0: provisional 68k move.w $8(a1), d1
db 0x67, 0x00, 0x00, 0x76 ; 0146A4: provisional 68k beq.w $1471c
db 0x3E, 0x01 ; 0146A8: provisional 68k move.w d1, d7
db 0x43, 0xE9, 0x00, 0x0A ; 0146AA: provisional 68k lea.l $a(a1), a1
db 0x24, 0x6E, 0xAB, 0x7A ; 0146AE: provisional 68k movea.l -$5486(a6), a2
db 0x20, 0x3C, 0x80, 0x00, 0x00, 0x00 ; 0146B2: provisional 68k move.l #$80000000, d0
db 0x24, 0x3C, 0x01, 0x00, 0x00, 0x00 ; 0146B8: provisional 68k move.l #$1000000, d2
db 0x53, 0x41 ; 0146BE: provisional 68k subq.w #$1, d1
db 0x42, 0x43 ; 0146C0: provisional 68k clr.w d3
db 0x16, 0x19 ; 0146C2: provisional 68k move.b (a1)+, d3
db 0x48, 0x43 ; 0146C4: provisional 68k swap d3
db 0x16, 0x19 ; 0146C6: provisional 68k move.b (a1)+, d3
db 0xE1, 0x43 ; 0146C8: provisional 68k asl.w #$8, d3
db 0x16, 0x19 ; 0146CA: provisional 68k move.b (a1)+, d3
db 0x86, 0x80 ; 0146CC: provisional 68k or.l d0, d3
db 0x24, 0xC3 ; 0146CE: provisional 68k move.l d3, (a2)+
db 0xD0, 0x82 ; 0146D0: provisional 68k add.l d2, d0
db 0x51, 0xC9, 0xFF, 0xEC ; 0146D2: provisional 68k dbra d1, $146c0
db 0x30, 0x3C, 0x00, 0x01 ; 0146D6: provisional 68k move.w #$1, d0
db 0x61, 0x00, 0xA1, 0xD4 ; 0146DA: provisional 68k bsr.w $e8b0
db 0x0C, 0x6C, 0x00, 0x80, 0x00, 0x1E ; 0146DE: provisional 68k cmpi.w #$80, $1e(a4)
db 0x66, 0x1C ; 0146E4: provisional 68k bne.b $14702
db 0x30, 0x2E, 0xAD, 0xA2 ; 0146E6: provisional 68k move.w -$525e(a6), d0
db 0x72, 0x56 ; 0146EA: provisional 68k moveq #$56, d1
db 0x74, 0x02 ; 0146EC: provisional 68k moveq #$2, d2
db 0x36, 0x2D, 0x00, 0x1E ; 0146EE: provisional 68k move.w $1e(a5), d3
db 0x38, 0x3C, 0x00, 0x11 ; 0146F2: provisional 68k move.w #$11, d4
db 0x3A, 0x07 ; 0146F6: provisional 68k move.w d7, d5
db 0x20, 0x6E, 0xAB, 0x7A ; 0146F8: provisional 68k movea.l -$5486(a6), a0
db 0x4E, 0x40, 0x00, 0x8E ; 0146FC: provisional 68k trap #0 ; OS-9 service word $008E
db 0x60, 0x1A ; 014700: provisional 68k bra.b $1471c
db 0x30, 0x2E, 0xAD, 0xA2 ; 014702: provisional 68k move.w -$525e(a6), d0
db 0x72, 0x56 ; 014706: provisional 68k moveq #$56, d1
db 0x74, 0x02 ; 014708: provisional 68k moveq #$2, d2
db 0x36, 0x2D, 0x00, 0x1E ; 01470A: provisional 68k move.w $1e(a5), d3
db 0x38, 0x3C, 0x00, 0x93 ; 01470E: provisional 68k move.w #$93, d4
db 0x3A, 0x07 ; 014712: provisional 68k move.w d7, d5
db 0x20, 0x6E, 0xAB, 0x7A ; 014714: provisional 68k movea.l -$5486(a6), a0
db 0x4E, 0x40, 0x00, 0x8E ; 014718: provisional 68k trap #0 ; OS-9 service word $008E
db 0x4C, 0xDF, 0x38, 0x06 ; 01471C: provisional 68k movem.l (a7)+, d1-d2/a3-a5
db 0x4E, 0x75 ; 014720: provisional 68k rts 
