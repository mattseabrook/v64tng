; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00F978–00F999, inclusive.
cdi_t7g_entry_00f978:
db 0x08, 0x00, 0x00, 0x01 ; 00F978: provisional 68k btst.b #$1, d0
db 0x66, 0x0E ; 00F97C: provisional 68k bne.b $f98c
db 0x30, 0x2E, 0xCF, 0xD2 ; 00F97E: provisional 68k move.w -$302e(a6), d0
db 0x34, 0x3C, 0x00, 0x05 ; 00F982: provisional 68k move.w #$5, d2
db 0x61, 0x00, 0xFF, 0x82 ; 00F986: provisional 68k bsr.w $f90a
db 0x4E, 0x75 ; 00F98A: provisional 68k rts 
db 0x30, 0x2E, 0xCF, 0xD2 ; 00F98C: provisional 68k move.w -$302e(a6), d0
db 0x34, 0x3C, 0x00, 0x06 ; 00F990: provisional 68k move.w #$6, d2
db 0x61, 0x00, 0xFF, 0x74 ; 00F994: provisional 68k bsr.w $f90a
db 0x4E, 0x75 ; 00F998: provisional 68k rts 
