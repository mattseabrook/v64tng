; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00E638–00E65D, inclusive.
cdi_t7g_entry_00e638:
db 0x48, 0xE7, 0x80, 0xC0 ; 00E638: provisional 68k movem.l d0/a0-a1, -(a7)
db 0x20, 0x6F, 0x00, 0x10 ; 00E63C: provisional 68k movea.l $10(a7), a0
db 0x30, 0x2F, 0x00, 0x14 ; 00E640: provisional 68k move.w $14(a7), d0
db 0xE5, 0x40 ; 00E644: provisional 68k asl.w #$2, d0
db 0xD0, 0xC0 ; 00E646: provisional 68k adda.w d0, a0
db 0x22, 0x68, 0x00, 0x10 ; 00E648: provisional 68k movea.l $10(a0), a1
db 0x23, 0x50, 0x00, 0x06 ; 00E64C: provisional 68k move.l (a0), $6(a1)
db 0x4C, 0xDF, 0x03, 0x01 ; 00E650: provisional 68k movem.l (a7)+, d0/a0-a1
db 0x2F, 0x57, 0x00, 0x06 ; 00E654: provisional 68k move.l (a7), $6(a7)
db 0x4F, 0xEF, 0x00, 0x06 ; 00E658: provisional 68k lea.l $6(a7), a7
db 0x4E, 0x75 ; 00E65C: provisional 68k rts 
