; verified-role: Store the current source/destination/kind triple and set candidate count to one.
; Original native symbol: None; evidence file offset 0x8146.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_5_cell_reset_best_move_list:
db 0x1B, 0x6D, 0xDF, 0x6B, 0xE5, 0x74 ; file 008146 | 68k move.b -$2095(a5), -$1a8c(a5)
db 0x1B, 0x6D, 0xDF, 0x6C, 0xE5, 0xD7 ; file 00814C | 68k move.b -$2094(a5), -$1a29(a5)
db 0x1B, 0x6D, 0xDF, 0x6D, 0xE6, 0x3A ; file 008152 | 68k move.b -$2093(a5), -$19c6(a5)
db 0x3B, 0x7C, 0x00, 0x01, 0xE6, 0x9E ; file 008158 | 68k move.w #$1, -$1962(a5)
db 0x4E, 0x75 ; file 00815E | 68k rts 
