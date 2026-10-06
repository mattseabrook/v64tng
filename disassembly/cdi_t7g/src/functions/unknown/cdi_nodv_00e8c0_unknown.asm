; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00E8C0–00E8CF, inclusive.
cdi_nodv_entry_00e8c0:
db 0x4A, 0x6D, 0x00, 0x3A ; 00E8C0: provisional 68k tst.w $3a(a5)
db 0x67, 0x08 ; 00E8C4: provisional 68k beq.b $e8ce
db 0x61, 0x00, 0x00, 0x08 ; 00E8C6: provisional 68k bsr.w $e8d0
db 0x61, 0x00, 0x00, 0x3C ; 00E8CA: provisional 68k bsr.w $e908
db 0x4E, 0x75 ; 00E8CE: provisional 68k rts 
