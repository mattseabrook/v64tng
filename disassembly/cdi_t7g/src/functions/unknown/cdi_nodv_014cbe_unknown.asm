; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 014CBE–014CD1, inclusive.
cdi_nodv_entry_014cbe:
db 0x0C, 0x18, 0x00, 0x3A ; 014CBE: provisional 68k cmpi.b #$3a, (a0)+
db 0x66, 0xFA ; 014CC2: provisional 68k bne.b $14cbe
db 0x0C, 0x10, 0x00, 0x3A ; 014CC4: provisional 68k cmpi.b #$3a, (a0)
db 0x67, 0x04 ; 014CC8: provisional 68k beq.b $14cce
db 0x12, 0xD8 ; 014CCA: provisional 68k move.b (a0)+, (a1)+
db 0x60, 0xF6 ; 014CCC: provisional 68k bra.b $14cc4
db 0x42, 0x11 ; 014CCE: provisional 68k clr.b (a1)
db 0x4E, 0x75 ; 014CD0: provisional 68k rts 
