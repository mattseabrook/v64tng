; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00F278–00F293, inclusive.
cdi_nodv_entry_00f278:
db 0x61, 0x00, 0x00, 0x48 ; 00F278: provisional 68k bsr.w $f2c2
db 0x08, 0x00, 0x00, 0x08 ; 00F27C: provisional 68k btst.b #$8, d0
db 0x67, 0x04 ; 00F280: provisional 68k beq.b $f286
db 0x61, 0x00, 0x00, 0x5E ; 00F282: provisional 68k bsr.w $f2e2
db 0x08, 0x00, 0x00, 0x07 ; 00F286: provisional 68k btst.b #$7, d0
db 0x67, 0x04 ; 00F28A: provisional 68k beq.b $f290
db 0x61, 0x00, 0x00, 0x7E ; 00F28C: provisional 68k bsr.w $f30c
db 0x08, 0x00, 0x00, 0x0F ; 00F290: provisional 68k btst.b #$f, d0
