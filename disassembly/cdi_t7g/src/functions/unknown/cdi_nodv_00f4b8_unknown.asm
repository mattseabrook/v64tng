; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00F4B8–00F4DD, inclusive.
cdi_nodv_entry_00f4b8:
db 0x48, 0xE7, 0x80, 0xC0 ; 00F4B8: provisional 68k movem.l d0/a0-a1, -(a7)
db 0x20, 0x6F, 0x00, 0x10 ; 00F4BC: provisional 68k movea.l $10(a7), a0
db 0x30, 0x2F, 0x00, 0x14 ; 00F4C0: provisional 68k move.w $14(a7), d0
db 0xE5, 0x40 ; 00F4C4: provisional 68k asl.w #$2, d0
db 0xD0, 0xC0 ; 00F4C6: provisional 68k adda.w d0, a0
db 0x22, 0x68, 0x00, 0x10 ; 00F4C8: provisional 68k movea.l $10(a0), a1
db 0x23, 0x50, 0x00, 0x06 ; 00F4CC: provisional 68k move.l (a0), $6(a1)
db 0x4C, 0xDF, 0x03, 0x01 ; 00F4D0: provisional 68k movem.l (a7)+, d0/a0-a1
db 0x2F, 0x57, 0x00, 0x06 ; 00F4D4: provisional 68k move.l (a7), $6(a7)
db 0x4F, 0xEF, 0x00, 0x06 ; 00F4D8: provisional 68k lea.l $6(a7), a7
db 0x4E, 0x75 ; 00F4DC: provisional 68k rts 
