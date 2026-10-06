; verified-role: Append the current move triple and increment the candidate count.
; Original native symbol: None; evidence file offset 0x8160.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_5_cell_append_tied_best_move:
db 0x30, 0x2D, 0xE6, 0x9E ; file 008160 | 68k move.w -$1962(a5), d0
db 0x1B, 0xAD, 0xDF, 0x6B, 0x01, 0x20, 0xE5, 0x74 ; file 008164 | 68k move.b -$2095(a5), $e574(a5, d0.w)
db 0x1B, 0xAD, 0xDF, 0x6C, 0x01, 0x20, 0xE5, 0xD7 ; file 00816C | 68k move.b -$2094(a5), $e5d7(a5, d0.w)
db 0x1B, 0xAD, 0xDF, 0x6D, 0x01, 0x20, 0xE6, 0x3A ; file 008174 | 68k move.b -$2093(a5), $e63a(a5, d0.w)
db 0x52, 0x6D, 0xE6, 0x9E ; file 00817C | 68k addq.w #$1, -$1962(a5)
db 0x4E, 0x75 ; file 008180 | 68k rts 
