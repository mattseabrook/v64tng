; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 0104E4–0104E9, inclusive.
cdi_nodv_entry_0104e4:
db 0x7E, 0xFF ; 0104E4: provisional 68k moveq #$ff, d7
db 0x60, 0x00, 0x00, 0x04 ; 0104E6: provisional 68k bra.w $104ec
