; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 013E24–013E3D, inclusive.
cdi_t7g_entry_013e24:
db 0x0C, 0x18, 0x00, 0x3A ; 013E24: provisional 68k cmpi.b #$3a, (a0)+
db 0x66, 0xFA ; 013E28: provisional 68k bne.b $13e24
db 0x0C, 0x18, 0x00, 0x3A ; 013E2A: provisional 68k cmpi.b #$3a, (a0)+
db 0x66, 0xFA ; 013E2E: provisional 68k bne.b $13e2a
db 0x0C, 0x10, 0x00, 0x0D ; 013E30: provisional 68k cmpi.b #$d, (a0)
db 0x67, 0x04 ; 013E34: provisional 68k beq.b $13e3a
db 0x12, 0xD8 ; 013E36: provisional 68k move.b (a0)+, (a1)+
db 0x60, 0xF6 ; 013E38: provisional 68k bra.b $13e30
db 0x42, 0x11 ; 013E3A: provisional 68k clr.b (a1)
db 0x4E, 0x75 ; 013E3C: provisional 68k rts 
