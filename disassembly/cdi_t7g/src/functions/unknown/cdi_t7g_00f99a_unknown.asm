; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00F99A–00F9AD, inclusive.
cdi_t7g_entry_00f99a:
db 0x61, 0x00, 0x00, 0x12 ; 00F99A: provisional 68k bsr.w $f9ae
db 0x65, 0x0C ; 00F99E: provisional 68k bcs.b $f9ac
db 0x30, 0x2E, 0xCF, 0xD2 ; 00F9A0: provisional 68k move.w -$302e(a6), d0
db 0x61, 0x00, 0x00, 0x7C ; 00F9A4: provisional 68k bsr.w $fa22
db 0x42, 0x6E, 0xCF, 0xD2 ; 00F9A8: provisional 68k clr.w -$302e(a6)
db 0x4E, 0x75 ; 00F9AC: provisional 68k rts 
