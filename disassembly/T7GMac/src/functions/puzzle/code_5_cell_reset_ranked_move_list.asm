; verified-role: Clear ranked-list state and set its head to FFFF.
; Original native symbol: None; evidence file offset 0x8918.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_5_cell_reset_ranked_move_list:
db 0x42, 0x2D, 0xEE, 0xA2 ; file 008918 | 68k clr.b -$115e(a5)
db 0x3B, 0x7C, 0xFF, 0xFF, 0xEE, 0x9E ; file 00891C | 68k move.w #$ffff, -$1162(a5)
db 0x42, 0x6D, 0xEE, 0xA0 ; file 008922 | 68k clr.w -$1160(a5)
db 0x42, 0x6D, 0xEC, 0xA0 ; file 008926 | 68k clr.w -$1360(a5)
db 0x4E, 0x75 ; file 00892A | 68k rts 
