; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00E5A0–00E5D1, inclusive.
cdi_nodv_entry_00e5a0:
db 0x48, 0xE7, 0x81, 0xE4 ; 00E5A0: provisional 68k movem.l d0/d7/a0-a2/a5, -(a7)
db 0x30, 0x2F, 0x00, 0x1C ; 00E5A4: provisional 68k move.w $1c(a7), d0
db 0x61, 0x00, 0x03, 0x06 ; 00E5A8: provisional 68k bsr.w $e8b0
db 0x3E, 0x2D, 0x00, 0x58 ; 00E5AC: provisional 68k move.w $58(a5), d7
db 0x67, 0x14 ; 00E5B0: provisional 68k beq.b $e5c6
db 0x43, 0xED, 0x00, 0x5A ; 00E5B2: provisional 68k lea.l $5a(a5), a1
db 0x53, 0x47 ; 00E5B6: provisional 68k subq.w #$1, d7
db 0x24, 0x59 ; 00E5B8: provisional 68k movea.l (a1)+, a2
db 0x2F, 0x0D ; 00E5BA: provisional 68k move.l a5, -(a7)
db 0x2F, 0x0A ; 00E5BC: provisional 68k move.l a2, -(a7)
db 0x61, 0x00, 0x29, 0xF4 ; 00E5BE: provisional 68k bsr.w $10fb4
db 0x51, 0xCF, 0xFF, 0xF4 ; 00E5C2: provisional 68k dbra d7, $e5b8
db 0x4C, 0xDF, 0x27, 0x81 ; 00E5C6: provisional 68k movem.l (a7)+, d0/d7/a0-a2/a5
db 0x2F, 0x57, 0x00, 0x02 ; 00E5CA: provisional 68k move.l (a7), $2(a7)
db 0x54, 0x4F ; 00E5CE: provisional 68k addq.w #$2, a7
db 0x4E, 0x75 ; 00E5D0: provisional 68k rts 
