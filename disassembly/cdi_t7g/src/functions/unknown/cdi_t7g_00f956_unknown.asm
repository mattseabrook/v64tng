; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00F956–00F977, inclusive.
cdi_t7g_entry_00f956:
db 0x08, 0x00, 0x00, 0x00 ; 00F956: provisional 68k btst.b #$0, d0
db 0x66, 0x0E ; 00F95A: provisional 68k bne.b $f96a
db 0x30, 0x2E, 0xCF, 0xD2 ; 00F95C: provisional 68k move.w -$302e(a6), d0
db 0x34, 0x3C, 0x00, 0x02 ; 00F960: provisional 68k move.w #$2, d2
db 0x61, 0x00, 0xFF, 0xA4 ; 00F964: provisional 68k bsr.w $f90a
db 0x4E, 0x75 ; 00F968: provisional 68k rts 
db 0x30, 0x2E, 0xCF, 0xD2 ; 00F96A: provisional 68k move.w -$302e(a6), d0
db 0x34, 0x3C, 0x00, 0x03 ; 00F96E: provisional 68k move.w #$3, d2
db 0x61, 0x00, 0xFF, 0x96 ; 00F972: provisional 68k bsr.w $f90a
db 0x4E, 0x75 ; 00F976: provisional 68k rts 
