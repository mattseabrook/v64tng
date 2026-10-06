; verified-role: Count piece codes 1 through 4 across 49 cells and write four trailing counters.
; Original native symbol: scoreAll; evidence file offset 0x7bd2.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_5_cell_count_board_pieces:
db 0x4E, 0x56, 0x00, 0x00 ; file 007B70 | 68k link.w a6, #$0
db 0x48, 0xE7, 0x01, 0x38 ; file 007B74 | 68k movem.l d7/a2-a4, -(a7)
db 0x26, 0x6E, 0x00, 0x08 ; file 007B78 | 68k movea.l $8(a6), a3
db 0x28, 0x4B ; file 007B7C | 68k movea.l a3, a4
db 0x45, 0xEB, 0x00, 0x31 ; file 007B7E | 68k lea.l $31(a3), a2
db 0x42, 0x2B, 0x00, 0x31 ; file 007B82 | 68k clr.b $31(a3)
db 0x42, 0x2B, 0x00, 0x32 ; file 007B86 | 68k clr.b $32(a3)
db 0x42, 0x2B, 0x00, 0x33 ; file 007B8A | 68k clr.b $33(a3)
db 0x42, 0x2B, 0x00, 0x34 ; file 007B8E | 68k clr.b $34(a3)
db 0x60, 0x32 ; file 007B92 | 68k bra.b $460
db 0x1E, 0x14 ; file 007B94 | 68k move.b (a4), d7
db 0x0C, 0x07, 0x00, 0x01 ; file 007B96 | 68k cmpi.b #$1, d7
db 0x66, 0x06 ; file 007B9A | 68k bne.b $43c
db 0x52, 0x2B, 0x00, 0x31 ; file 007B9C | 68k addq.b #$1, $31(a3)
db 0x60, 0x22 ; file 007BA0 | 68k bra.b $45e
db 0x0C, 0x07, 0x00, 0x02 ; file 007BA2 | 68k cmpi.b #$2, d7
db 0x66, 0x06 ; file 007BA6 | 68k bne.b $448
db 0x52, 0x2B, 0x00, 0x32 ; file 007BA8 | 68k addq.b #$1, $32(a3)
db 0x60, 0x16 ; file 007BAC | 68k bra.b $45e
db 0x0C, 0x07, 0x00, 0x03 ; file 007BAE | 68k cmpi.b #$3, d7
db 0x66, 0x06 ; file 007BB2 | 68k bne.b $454
db 0x52, 0x2B, 0x00, 0x33 ; file 007BB4 | 68k addq.b #$1, $33(a3)
db 0x60, 0x0A ; file 007BB8 | 68k bra.b $45e
db 0x0C, 0x07, 0x00, 0x04 ; file 007BBA | 68k cmpi.b #$4, d7
db 0x66, 0x04 ; file 007BBE | 68k bne.b $45e
db 0x52, 0x2B, 0x00, 0x34 ; file 007BC0 | 68k addq.b #$1, $34(a3)
db 0x52, 0x8C ; file 007BC4 | 68k addq.l #$1, a4
db 0xB5, 0xCC ; file 007BC6 | 68k cmpa.l a4, a2
db 0x62, 0xCA ; file 007BC8 | 68k bhi.b $42e
db 0x4C, 0xDF, 0x1C, 0x80 ; file 007BCA | 68k movem.l (a7)+, d7/a2-a4
db 0x4E, 0x5E ; file 007BCE | 68k unlk a6
db 0x4E, 0x75 ; file 007BD0 | 68k rts 
