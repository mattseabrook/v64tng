; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 013E3E–013E51, inclusive.
cdi_t7g_entry_013e3e:
db 0x0C, 0x18, 0x00, 0x3A ; 013E3E: provisional 68k cmpi.b #$3a, (a0)+
db 0x66, 0xFA ; 013E42: provisional 68k bne.b $13e3e
db 0x0C, 0x10, 0x00, 0x3A ; 013E44: provisional 68k cmpi.b #$3a, (a0)
db 0x67, 0x04 ; 013E48: provisional 68k beq.b $13e4e
db 0x12, 0xD8 ; 013E4A: provisional 68k move.b (a0)+, (a1)+
db 0x60, 0xF6 ; 013E4C: provisional 68k bra.b $13e44
db 0x42, 0x11 ; 013E4E: provisional 68k clr.b (a1)
db 0x4E, 0x75 ; 013E50: provisional 68k rts 
