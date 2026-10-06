; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00A026–00A07B, inclusive.
cdi_t7g_entry_00a026:
db 0x20, 0x28, 0x00, 0x0E ; 00A026: provisional 68k move.l $e(a0), d0
db 0x61, 0x00, 0x00, 0x50 ; 00A02A: provisional 68k bsr.w $a07c
db 0x26, 0x68, 0x00, 0x3E ; 00A02E: provisional 68k movea.l $3e(a0), a3
db 0x24, 0x68, 0x00, 0x42 ; 00A032: provisional 68k movea.l $42(a0), a2
db 0x20, 0x0B ; 00A036: provisional 68k move.l a3, d0
db 0x67, 0x04 ; 00A038: provisional 68k beq.b $a03e
db 0x27, 0x4A, 0x00, 0x42 ; 00A03A: provisional 68k move.l a2, $42(a3)
db 0x20, 0x0A ; 00A03E: provisional 68k move.l a2, d0
db 0x67, 0x06 ; 00A040: provisional 68k beq.b $a048
db 0x25, 0x4B, 0x00, 0x3E ; 00A042: provisional 68k move.l a3, $3e(a2)
db 0x60, 0x12 ; 00A046: provisional 68k bra.b $a05a
db 0x20, 0x28, 0x00, 0x0A ; 00A048: provisional 68k move.l $a(a0), d0
db 0x67, 0x08 ; 00A04C: provisional 68k beq.b $a056
db 0x24, 0x40 ; 00A04E: provisional 68k movea.l d0, a2
db 0x25, 0x4B, 0x00, 0x0E ; 00A050: provisional 68k move.l a3, $e(a2)
db 0x60, 0x04 ; 00A054: provisional 68k bra.b $a05a
db 0x2D, 0x4B, 0x80, 0x52 ; 00A056: provisional 68k move.l a3, -$7fae(a6)
db 0x30, 0x28, 0x00, 0x00 ; 00A05A: provisional 68k move.w $0(a0), d0
db 0xB0, 0x68, 0x00, 0x08 ; 00A05E: provisional 68k cmp.w $8(a0), d0
db 0x66, 0x08 ; 00A062: provisional 68k bne.b $a06c
db 0x2F, 0x28, 0x00, 0x04 ; 00A064: provisional 68k move.l $4(a0), -(a7)
db 0x61, 0x00, 0x60, 0x7A ; 00A068: provisional 68k bsr.w $100e4
db 0x21, 0x6E, 0x80, 0x56, 0x00, 0x3E ; 00A06C: provisional 68k move.l -$7faa(a6), $3e(a0)
db 0x2D, 0x48, 0x80, 0x56 ; 00A072: provisional 68k move.l a0, -$7faa(a6)
db 0x52, 0x6E, 0x80, 0x5A ; 00A076: provisional 68k addq.w #$1, -$7fa6(a6)
db 0x4E, 0x75 ; 00A07A: provisional 68k rts 
