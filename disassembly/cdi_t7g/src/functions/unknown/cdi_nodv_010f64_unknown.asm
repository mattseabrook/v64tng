; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 010F64–010F8D, inclusive.
cdi_nodv_entry_010f64:
db 0x48, 0xE7 ; file 010F64
db 0xFF, 0xFC ; 010F66: provisional 68k dc.w $fffc
db 0x20, 0x2F, 0x00, 0x3C ; 010F68: provisional 68k move.l $3c(a7), d0
db 0x67, 0x18 ; 010F6C: provisional 68k beq.b $10f86
db 0x2A, 0x40 ; 010F6E: provisional 68k movea.l d0, a5
db 0x30, 0x2D, 0x00, 0x0A ; 010F70: provisional 68k move.w $a(a5), d0
db 0xC0, 0xFC, 0x00, 0x16 ; 010F74: provisional 68k mulu.w #$16, d0
db 0x41, 0xFA, 0xFD, 0x7C ; 010F78: provisional 68k lea.l $10cf6(pc), a0
db 0xD0, 0xC0 ; 010F7C: provisional 68k adda.w d0, a0
db 0x4E, 0xA8, 0x00, 0x04 ; 010F7E: provisional 68k jsr $4(a0)
db 0x61, 0x00, 0x00, 0x56 ; 010F82: provisional 68k bsr.w $10fda
db 0x4C, 0xDF, 0x3F, 0xFF ; 010F86: provisional 68k movem.l (a7)+, d0-d7/a0-a5
db 0x2E, 0x9F ; 010F8A: provisional 68k move.l (a7)+, (a7)
db 0x4E, 0x75 ; 010F8C: provisional 68k rts 
