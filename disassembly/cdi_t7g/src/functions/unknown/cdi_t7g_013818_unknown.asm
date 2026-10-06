; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 013818–0138A1, inclusive.
cdi_t7g_entry_013818:
db 0x48, 0xE7, 0x60, 0x1C ; 013818: provisional 68k movem.l d1-d2/a3-a5, -(a7)
db 0x22, 0x6D, 0x00, 0x3C ; 01381C: provisional 68k movea.l $3c(a5), a1
db 0x32, 0x29, 0x00, 0x08 ; 013820: provisional 68k move.w $8(a1), d1
db 0x67, 0x00, 0x00, 0x76 ; 013824: provisional 68k beq.w $1389c
db 0x3E, 0x01 ; 013828: provisional 68k move.w d1, d7
db 0x43, 0xE9, 0x00, 0x0A ; 01382A: provisional 68k lea.l $a(a1), a1
db 0x24, 0x6E, 0xAB, 0x7A ; 01382E: provisional 68k movea.l -$5486(a6), a2
db 0x20, 0x3C, 0x80, 0x00, 0x00, 0x00 ; 013832: provisional 68k move.l #$80000000, d0
db 0x24, 0x3C, 0x01, 0x00, 0x00, 0x00 ; 013838: provisional 68k move.l #$1000000, d2
db 0x53, 0x41 ; 01383E: provisional 68k subq.w #$1, d1
db 0x42, 0x43 ; 013840: provisional 68k clr.w d3
db 0x16, 0x19 ; 013842: provisional 68k move.b (a1)+, d3
db 0x48, 0x43 ; 013844: provisional 68k swap d3
db 0x16, 0x19 ; 013846: provisional 68k move.b (a1)+, d3
db 0xE1, 0x43 ; 013848: provisional 68k asl.w #$8, d3
db 0x16, 0x19 ; 01384A: provisional 68k move.b (a1)+, d3
db 0x86, 0x80 ; 01384C: provisional 68k or.l d0, d3
db 0x24, 0xC3 ; 01384E: provisional 68k move.l d3, (a2)+
db 0xD0, 0x82 ; 013850: provisional 68k add.l d2, d0
db 0x51, 0xC9, 0xFF, 0xEC ; 013852: provisional 68k dbra d1, $13840
db 0x30, 0x3C, 0x00, 0x01 ; 013856: provisional 68k move.w #$1, d0
db 0x61, 0x00, 0xA1, 0xD4 ; 01385A: provisional 68k bsr.w $da30
db 0x0C, 0x6C, 0x00, 0x80, 0x00, 0x1E ; 01385E: provisional 68k cmpi.w #$80, $1e(a4)
db 0x66, 0x1C ; 013864: provisional 68k bne.b $13882
db 0x30, 0x2E, 0xAD, 0xA2 ; 013866: provisional 68k move.w -$525e(a6), d0
db 0x72, 0x56 ; 01386A: provisional 68k moveq #$56, d1
db 0x74, 0x02 ; 01386C: provisional 68k moveq #$2, d2
db 0x36, 0x2D, 0x00, 0x1E ; 01386E: provisional 68k move.w $1e(a5), d3
db 0x38, 0x3C, 0x00, 0x11 ; 013872: provisional 68k move.w #$11, d4
db 0x3A, 0x07 ; 013876: provisional 68k move.w d7, d5
db 0x20, 0x6E, 0xAB, 0x7A ; 013878: provisional 68k movea.l -$5486(a6), a0
db 0x4E, 0x40, 0x00, 0x8E ; 01387C: provisional 68k trap #0 ; OS-9 service word $008E
db 0x60, 0x1A ; 013880: provisional 68k bra.b $1389c
db 0x30, 0x2E, 0xAD, 0xA2 ; 013882: provisional 68k move.w -$525e(a6), d0
db 0x72, 0x56 ; 013886: provisional 68k moveq #$56, d1
db 0x74, 0x02 ; 013888: provisional 68k moveq #$2, d2
db 0x36, 0x2D, 0x00, 0x1E ; 01388A: provisional 68k move.w $1e(a5), d3
db 0x38, 0x3C, 0x00, 0x93 ; 01388E: provisional 68k move.w #$93, d4
db 0x3A, 0x07 ; 013892: provisional 68k move.w d7, d5
db 0x20, 0x6E, 0xAB, 0x7A ; 013894: provisional 68k movea.l -$5486(a6), a0
db 0x4E, 0x40, 0x00, 0x8E ; 013898: provisional 68k trap #0 ; OS-9 service word $008E
db 0x4C, 0xDF, 0x38, 0x06 ; 01389C: provisional 68k movem.l (a7)+, d1-d2/a3-a5
db 0x4E, 0x75 ; 0138A0: provisional 68k rts 
