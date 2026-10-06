; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 014CA4–014CBD, inclusive.
cdi_nodv_entry_014ca4:
db 0x0C, 0x18, 0x00, 0x3A ; 014CA4: provisional 68k cmpi.b #$3a, (a0)+
db 0x66, 0xFA ; 014CA8: provisional 68k bne.b $14ca4
db 0x0C, 0x18, 0x00, 0x3A ; 014CAA: provisional 68k cmpi.b #$3a, (a0)+
db 0x66, 0xFA ; 014CAE: provisional 68k bne.b $14caa
db 0x0C, 0x10, 0x00, 0x0D ; 014CB0: provisional 68k cmpi.b #$d, (a0)
db 0x67, 0x04 ; 014CB4: provisional 68k beq.b $14cba
db 0x12, 0xD8 ; 014CB6: provisional 68k move.b (a0)+, (a1)+
db 0x60, 0xF6 ; 014CB8: provisional 68k bra.b $14cb0
db 0x42, 0x11 ; 014CBA: provisional 68k clr.b (a1)
db 0x4E, 0x75 ; 014CBC: provisional 68k rts 
