; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 011D5C–011D79, inclusive.
cdi_nodv_entry_011d5c:
db 0x20, 0x00 ; file 011D5C
db 0x2F, 0x0D ; 011D5E: provisional 68k move.l a5, -(a7)
db 0x61, 0x00, 0xF4, 0x8A ; 011D60: provisional 68k bsr.w $111ec
db 0x4E, 0x75 ; 011D64: provisional 68k rts 
db 0x4E, 0x75 ; 011D66: provisional 68k rts 
db 0x2F, 0x2D, 0x00, 0x20 ; 011D68: provisional 68k move.l $20(a5), -(a7)
db 0x61, 0x00, 0xF1, 0xF6 ; 011D6C: provisional 68k bsr.w $10f64
db 0x2F, 0x2D, 0x00, 0x24 ; 011D70: provisional 68k move.l $24(a5), -(a7)
db 0x61, 0x00, 0xF1, 0xEE ; 011D74: provisional 68k bsr.w $10f64
db 0x4E, 0x75 ; 011D78: provisional 68k rts 
