; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00E392–00E3B1, inclusive.
cdi_nodv_entry_00e392:
db 0x48, 0xE7, 0xC1, 0xC4 ; 00E392: provisional 68k movem.l d0-d1/d7/a0-a1/a5, -(a7)
db 0x30, 0x2F, 0x00, 0x1C ; 00E396: provisional 68k move.w $1c(a7), d0
db 0x61, 0x00, 0x05, 0x14 ; 00E39A: provisional 68k bsr.w $e8b0
db 0x22, 0x6F, 0x00, 0x1E ; 00E39E: provisional 68k movea.l $1e(a7), a1
db 0x20, 0x09 ; 00E3A2: provisional 68k move.l a1, d0
db 0x3E, 0x2D, 0x00, 0x58 ; 00E3A4: provisional 68k move.w $58(a5), d7
db 0x67, 0x3E ; 00E3A8: provisional 68k beq.b $e3e8
db 0x41, 0xED, 0x00, 0x5A ; 00E3AA: provisional 68k lea.l $5a(a5), a0
db 0x53, 0x47 ; 00E3AE: provisional 68k subq.w #$1, d7
db 0xB0, 0x98 ; 00E3B0: provisional 68k cmp.l (a0)+, d0
