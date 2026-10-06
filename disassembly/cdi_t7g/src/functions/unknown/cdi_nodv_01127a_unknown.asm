; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 01127A–011285, inclusive.
cdi_nodv_entry_01127a:
db 0x61, 0x00, 0x00, 0x2C ; 01127A: provisional 68k bsr.w $112a8
db 0x65, 0x04 ; 01127E: provisional 68k bcs.b $11284
db 0x61, 0x00, 0x00, 0x04 ; 011280: provisional 68k bsr.w $11286
db 0x4E, 0x75 ; 011284: provisional 68k rts 
