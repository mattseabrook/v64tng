; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00CFC2–00D005, inclusive.
cdi_t7g_entry_00cfc2:
db 0x48, 0xE7 ; file 00CFC2
db 0xC0, 0x80 ; 00CFC4: provisional 68k and.l d0, d0
db 0x4A, 0xAE, 0xAB, 0xB6 ; 00CFC6: provisional 68k tst.l -$544a(a6)
db 0x66, 0x0A ; 00CFCA: provisional 68k bne.b $cfd6
db 0x30, 0x3C, 0x00, 0x5D ; 00CFCC: provisional 68k move.w #$5d, d0
db 0x61, 0x00, 0x03, 0x54 ; 00CFD0: provisional 68k bsr.w $d326
db 0x60, 0x24 ; 00CFD4: provisional 68k bra.b $cffa
db 0x20, 0x6E, 0xAB, 0xB6 ; 00CFD6: provisional 68k movea.l -$544a(a6), a0
db 0x0C, 0x68, 0x00, 0x01, 0x00, 0x1C ; 00CFDA: provisional 68k cmpi.w #$1, $1c(a0)
db 0x66, 0x06 ; 00CFE0: provisional 68k bne.b $cfe8
db 0x61, 0x00, 0x03, 0x5C ; 00CFE2: provisional 68k bsr.w $d340
db 0x60, 0x12 ; 00CFE6: provisional 68k bra.b $cffa
db 0x30, 0x3C, 0x00, 0x64 ; 00CFE8: provisional 68k move.w #$64, d0
db 0x32, 0x2F, 0x00, 0x10 ; 00CFEC: provisional 68k move.w $10(a7), d1
db 0x61, 0x00, 0xFE, 0xC6 ; 00CFF0: provisional 68k bsr.w $ceb8
db 0x3D, 0x7C, 0xFF, 0xFF, 0xAB, 0xCC ; 00CFF4: provisional 68k move.w #$ffff, -$5434(a6)
db 0x4C, 0xDF, 0x01, 0x03 ; 00CFFA: provisional 68k movem.l (a7)+, d0-d1/a0
db 0x2F, 0x57, 0x00, 0x02 ; 00CFFE: provisional 68k move.l (a7), $2(a7)
db 0x54, 0x4F ; 00D002: provisional 68k addq.w #$2, a7
db 0x4E, 0x75 ; 00D004: provisional 68k rts 
