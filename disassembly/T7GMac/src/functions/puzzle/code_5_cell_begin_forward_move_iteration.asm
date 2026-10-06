; verified-role: Reset source/neighbor state and copy the 49-cell board into the forward iterator.
; Original native symbol: None; evidence file offset 0x7bde.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_5_cell_begin_forward_move_iteration:
db 0x2F, 0x07 ; file 007BDE | 68k move.l d7, -(a7)
db 0x42, 0x2D, 0xDF, 0x6B ; file 007BE0 | 68k clr.b -$2095(a5)
db 0x1B, 0x7C, 0x00, 0x01, 0xDF, 0x6D ; file 007BE4 | 68k move.b #$1, -$2093(a5)
db 0x42, 0x2D, 0xDF, 0x6E ; file 007BEA | 68k clr.b -$2092(a5)
db 0x7E, 0x00 ; file 007BEE | 68k moveq #$0, d7
db 0x60, 0x0C ; file 007BF0 | 68k bra.b $498
db 0x1B, 0xB5, 0x71, 0x20, 0xDF, 0x36, 0x71, 0x20, 0xE4, 0xC6 ; file 007BF2 | 68k move.b $df36(a5, d7.w), $e4c6(a5, d7.w)
db 0x52, 0x47 ; file 007BFC | 68k addq.w #$1, d7
db 0x0C, 0x47, 0x00, 0x31 ; file 007BFE | 68k cmpi.w #$31, d7
db 0x6D, 0xEE ; file 007C02 | 68k blt.b $48c
db 0x2E, 0x1F ; file 007C04 | 68k move.l (a7)+, d7
db 0x4E, 0x75 ; file 007C06 | 68k rts 
