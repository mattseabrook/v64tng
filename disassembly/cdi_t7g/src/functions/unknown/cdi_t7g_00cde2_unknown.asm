; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00CDE2–00CE21, inclusive.
cdi_t7g_entry_00cde2:
db 0x48, 0xE7, 0xFF, 0xFC ; 00CDE2: provisional 68k movem.l d0-d7/a0-a5, -(a7)
db 0x20, 0x2E, 0xAB, 0xB6 ; 00CDE6: provisional 68k move.l -$544a(a6), d0
db 0x67, 0x30 ; 00CDEA: provisional 68k beq.b $ce1c
db 0x20, 0x40 ; 00CDEC: provisional 68k movea.l d0, a0
db 0x0C, 0x68, 0x00, 0x01, 0x00, 0x1C ; 00CDEE: provisional 68k cmpi.w #$1, $1c(a0)
db 0x67, 0x08 ; 00CDF4: provisional 68k beq.b $cdfe
db 0x0C, 0x68, 0x00, 0x02, 0x00, 0x1C ; 00CDF6: provisional 68k cmpi.w #$2, $1c(a0)
db 0x66, 0x1E ; 00CDFC: provisional 68k bne.b $ce1c
db 0x43, 0xE8, 0x00, 0x50 ; 00CDFE: provisional 68k lea.l $50(a0), a1
db 0x2F, 0x09 ; 00CE02: provisional 68k move.l a1, -(a7)
db 0x61, 0x00, 0x15, 0x58 ; 00CE04: provisional 68k bsr.w $e35e
db 0x3F, 0x3C, 0x00, 0x00 ; 00CE08: provisional 68k move.w #$0, -(a7)
db 0x61, 0x00, 0x12, 0x26 ; 00CE0C: provisional 68k bsr.w $e034
db 0x0C, 0x68, 0x00, 0x04, 0x00, 0x1C ; 00CE10: provisional 68k cmpi.w #$4, $1c(a0)
db 0x67, 0x04 ; 00CE16: provisional 68k beq.b $ce1c
db 0x61, 0x00, 0x03, 0x2A ; 00CE18: provisional 68k bsr.w $d144
db 0x4C, 0xDF, 0x3F, 0xFF ; 00CE1C: provisional 68k movem.l (a7)+, d0-d7/a0-a5
db 0x4E, 0x75 ; 00CE20: provisional 68k rts 
