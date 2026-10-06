; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 0100E4–01010D, inclusive.
cdi_t7g_entry_0100e4:
db 0x48, 0xE7 ; file 0100E4
db 0xFF, 0xFC ; 0100E6: provisional 68k dc.w $fffc
db 0x20, 0x2F, 0x00, 0x3C ; 0100E8: provisional 68k move.l $3c(a7), d0
db 0x67, 0x18 ; 0100EC: provisional 68k beq.b $10106
db 0x2A, 0x40 ; 0100EE: provisional 68k movea.l d0, a5
db 0x30, 0x2D, 0x00, 0x0A ; 0100F0: provisional 68k move.w $a(a5), d0
db 0xC0, 0xFC, 0x00, 0x16 ; 0100F4: provisional 68k mulu.w #$16, d0
db 0x41, 0xFA, 0xFD, 0x7C ; 0100F8: provisional 68k lea.l $fe76(pc), a0
db 0xD0, 0xC0 ; 0100FC: provisional 68k adda.w d0, a0
db 0x4E, 0xA8, 0x00, 0x04 ; 0100FE: provisional 68k jsr $4(a0)
db 0x61, 0x00, 0x00, 0x56 ; 010102: provisional 68k bsr.w $1015a
db 0x4C, 0xDF, 0x3F, 0xFF ; 010106: provisional 68k movem.l (a7)+, d0-d7/a0-a5
db 0x2E, 0x9F ; 01010A: provisional 68k move.l (a7)+, (a7)
db 0x4E, 0x75 ; 01010C: provisional 68k rts 
