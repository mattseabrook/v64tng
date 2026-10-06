; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00F9EA–00FA3B, inclusive.
cdi_nodv_entry_00f9ea:
db 0x3F, 0x3C, 0x00, 0x08 ; 00F9EA: provisional 68k move.w #$8, -(a7)
db 0x2F, 0x08 ; 00F9EE: provisional 68k move.l a0, -(a7)
db 0x2D, 0x40, 0xCF, 0xE8 ; 00F9F0: provisional 68k move.l d0, -$3018(a6)
db 0x2D, 0x69, 0x00, 0x02, 0xCF, 0xEC ; 00F9F4: provisional 68k move.l $2(a1), -$3014(a6)
db 0x2D, 0x41, 0xCF, 0xF0 ; 00F9FA: provisional 68k move.l d1, -$3010(a6)
db 0x61, 0x00, 0x14, 0xFE ; 00F9FE: provisional 68k bsr.w $10efe
db 0x2D, 0x43, 0xCF, 0xE8 ; 00FA02: provisional 68k move.l d3, -$3018(a6)
db 0x2D, 0x4A, 0xCF, 0xEC ; 00FA06: provisional 68k move.l a2, -$3014(a6)
db 0x2D, 0x42, 0xCF, 0xF0 ; 00FA0A: provisional 68k move.l d2, -$3010(a6)
db 0x2F, 0x08 ; 00FA0E: provisional 68k move.l a0, -(a7)
db 0x61, 0x00, 0x16, 0xC4 ; 00FA10: provisional 68k bsr.w $110d6
db 0x43, 0xE9, 0x00, 0x06 ; 00FA14: provisional 68k lea.l $6(a1), a1
db 0x2F, 0x09 ; 00FA18: provisional 68k move.l a1, -(a7)
db 0x2F, 0x08 ; 00FA1A: provisional 68k move.l a0, -(a7)
db 0x61, 0x00, 0x17, 0x84 ; 00FA1C: provisional 68k bsr.w $111a2
db 0x4E, 0x75 ; 00FA20: provisional 68k rts 
db 0x2F, 0x02 ; 00FA22: provisional 68k move.l d2, -(a7)
db 0x42, 0x80 ; 00FA24: provisional 68k clr.l d0
db 0x42, 0x81 ; 00FA26: provisional 68k clr.l d1
db 0x42, 0x82 ; 00FA28: provisional 68k clr.l d2
db 0x10, 0x29, 0x00, 0x00 ; 00FA2A: provisional 68k move.b $0(a1), d0
db 0x12, 0x29, 0x00, 0x01 ; 00FA2E: provisional 68k move.b $1(a1), d1
db 0x14, 0x29, 0x00, 0x02 ; 00FA32: provisional 68k move.b $2(a1), d2
db 0x48, 0x80 ; 00FA36: provisional 68k ext.w d0
db 0x48, 0x81 ; 00FA38: provisional 68k ext.w d1
db 0x48, 0x82 ; 00FA3A: provisional 68k ext.w d2
