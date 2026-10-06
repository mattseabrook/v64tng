; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 010EFE–010F23, inclusive.
cdi_nodv_entry_010efe:
db 0x48, 0xE7, 0xFF, 0x7C ; 010EFE: provisional 68k movem.l d0-d7/a1-a5, -(a7)
db 0x22, 0x6F, 0x00, 0x38 ; 010F02: provisional 68k movea.l $38(a7), a1
db 0x30, 0x2F, 0x00, 0x3C ; 010F06: provisional 68k move.w $3c(a7), d0
db 0x32, 0x00 ; 010F0A: provisional 68k move.w d0, d1
db 0xC2, 0xFC, 0x00, 0x16 ; 010F0C: provisional 68k mulu.w #$16, d1
db 0x41, 0xFA, 0xFD, 0xE4 ; 010F10: provisional 68k lea.l $10cf6(pc), a0
db 0xD0, 0xC1 ; 010F14: provisional 68k adda.w d1, a0
db 0x61, 0x00, 0x04, 0xF0 ; 010F16: provisional 68k bsr.w $11408
db 0x3B, 0x40, 0x00, 0x0A ; 010F1A: provisional 68k move.w d0, $a(a5)
db 0x61, 0x00, 0x01, 0x92 ; 010F1E: provisional 68k bsr.w $110b2
db 0x4E, 0xA8 ; file 010F22
