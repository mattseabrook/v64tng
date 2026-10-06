; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00DC62–00DCA1, inclusive.
cdi_nodv_entry_00dc62:
db 0x48, 0xE7, 0xFF, 0xFC ; 00DC62: provisional 68k movem.l d0-d7/a0-a5, -(a7)
db 0x20, 0x2E, 0xAB, 0xB6 ; 00DC66: provisional 68k move.l -$544a(a6), d0
db 0x67, 0x30 ; 00DC6A: provisional 68k beq.b $dc9c
db 0x20, 0x40 ; 00DC6C: provisional 68k movea.l d0, a0
db 0x0C, 0x68, 0x00, 0x01, 0x00, 0x1C ; 00DC6E: provisional 68k cmpi.w #$1, $1c(a0)
db 0x67, 0x08 ; 00DC74: provisional 68k beq.b $dc7e
db 0x0C, 0x68, 0x00, 0x02, 0x00, 0x1C ; 00DC76: provisional 68k cmpi.w #$2, $1c(a0)
db 0x66, 0x1E ; 00DC7C: provisional 68k bne.b $dc9c
db 0x43, 0xE8, 0x00, 0x50 ; 00DC7E: provisional 68k lea.l $50(a0), a1
db 0x2F, 0x09 ; 00DC82: provisional 68k move.l a1, -(a7)
db 0x61, 0x00, 0x15, 0x58 ; 00DC84: provisional 68k bsr.w $f1de
db 0x3F, 0x3C, 0x00, 0x00 ; 00DC88: provisional 68k move.w #$0, -(a7)
db 0x61, 0x00, 0x12, 0x26 ; 00DC8C: provisional 68k bsr.w $eeb4
db 0x0C, 0x68, 0x00, 0x04, 0x00, 0x1C ; 00DC90: provisional 68k cmpi.w #$4, $1c(a0)
db 0x67, 0x04 ; 00DC96: provisional 68k beq.b $dc9c
db 0x61, 0x00, 0x03, 0x2A ; 00DC98: provisional 68k bsr.w $dfc4
db 0x4C, 0xDF, 0x3F, 0xFF ; 00DC9C: provisional 68k movem.l (a7)+, d0-d7/a0-a5
db 0x4E, 0x75 ; 00DCA0: provisional 68k rts 
