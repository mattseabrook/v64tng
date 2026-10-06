; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 011650–01166D, inclusive.
cdi_nodv_entry_011650:
db 0x48, 0xE7, 0xC0, 0x84 ; 011650: provisional 68k movem.l d0-d1/a0/a5, -(a7)
db 0x2A, 0x6F, 0x00, 0x14 ; 011654: provisional 68k movea.l $14(a7), a5
db 0x30, 0x2D, 0x00, 0x20 ; 011658: provisional 68k move.w $20(a5), d0
db 0x32, 0x2D, 0x00, 0x1E ; 01165C: provisional 68k move.w $1e(a5), d1
db 0x61, 0x00, 0x00, 0x0C ; 011660: provisional 68k bsr.w $1166e
db 0x4C, 0xDF, 0x21, 0x03 ; 011664: provisional 68k movem.l (a7)+, d0-d1/a0/a5
db 0x2E, 0x9F ; 011668: provisional 68k move.l (a7)+, (a7)
db 0x4F, 0xD7 ; 01166A: provisional 68k lea.l (a7), a7
db 0x4E, 0x75 ; 01166C: provisional 68k rts 
