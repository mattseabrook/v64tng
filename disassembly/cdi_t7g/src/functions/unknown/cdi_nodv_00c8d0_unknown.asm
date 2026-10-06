; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00C8D0–00C8EF, inclusive.
cdi_nodv_entry_00c8d0:
db 0x48, 0xE7, 0xC1, 0x80 ; 00C8D0: provisional 68k movem.l d0-d1/d7/a0, -(a7)
db 0x32, 0x1B ; 00C8D4: provisional 68k move.w (a3)+, d1
db 0x53, 0x41 ; 00C8D6: provisional 68k subq.w #$1, d1
db 0x6B, 0x10 ; 00C8D8: provisional 68k bmi.b $c8ea
db 0x41, 0xE8, 0x00, 0x46 ; 00C8DA: provisional 68k lea.l $46(a0), a0
db 0x61, 0x00, 0xF3, 0x12 ; 00C8DE: provisional 68k bsr.w $bbf2
db 0x54, 0x4B ; 00C8E2: provisional 68k addq.w #$2, a3
db 0x30, 0xC0 ; 00C8E4: provisional 68k move.w d0, (a0)+
db 0x51, 0xC9, 0xFF, 0xF6 ; 00C8E6: provisional 68k dbra d1, $c8de
db 0x4C, 0xDF, 0x01, 0x83 ; 00C8EA: provisional 68k movem.l (a7)+, d0-d1/d7/a0
db 0x4E, 0x75 ; 00C8EE: provisional 68k rts 
