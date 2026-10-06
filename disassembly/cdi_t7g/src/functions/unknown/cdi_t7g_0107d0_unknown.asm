; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 0107D0–0107ED, inclusive.
cdi_t7g_entry_0107d0:
db 0x48, 0xE7, 0xC0, 0x84 ; 0107D0: provisional 68k movem.l d0-d1/a0/a5, -(a7)
db 0x2A, 0x6F, 0x00, 0x14 ; 0107D4: provisional 68k movea.l $14(a7), a5
db 0x30, 0x2D, 0x00, 0x20 ; 0107D8: provisional 68k move.w $20(a5), d0
db 0x32, 0x2D, 0x00, 0x1E ; 0107DC: provisional 68k move.w $1e(a5), d1
db 0x61, 0x00, 0x00, 0x0C ; 0107E0: provisional 68k bsr.w $107ee
db 0x4C, 0xDF, 0x21, 0x03 ; 0107E4: provisional 68k movem.l (a7)+, d0-d1/a0/a5
db 0x2E, 0x9F ; 0107E8: provisional 68k move.l (a7)+, (a7)
db 0x4F, 0xD7 ; 0107EA: provisional 68k lea.l (a7), a7
db 0x4E, 0x75 ; 0107EC: provisional 68k rts 
