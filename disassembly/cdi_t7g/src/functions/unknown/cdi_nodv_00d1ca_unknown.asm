; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00D1CA–00D25B, inclusive.
cdi_nodv_entry_00d1ca:
db 0x41, 0xFA, 0x00, 0x10 ; 00D1CA: provisional 68k lea.l $d1dc(pc), a0
db 0x2D, 0x48, 0xAA, 0x1A ; 00D1CE: provisional 68k move.l a0, -$55e6(a6)
db 0x41, 0xFA, 0x00, 0x22 ; 00D1D2: provisional 68k lea.l $d1f6(pc), a0
db 0x2D, 0x48, 0xAA, 0x1E ; 00D1D6: provisional 68k move.l a0, -$55e2(a6)
db 0x4E, 0x75 ; 00D1DA: provisional 68k rts 
db 0x61, 0x00, 0x3C, 0x62 ; 00D1DC: provisional 68k bsr.w $10e40
db 0x61, 0x00, 0x1C, 0x40 ; 00D1E0: provisional 68k bsr.w $ee22
db 0x61, 0x00, 0x22, 0xF8 ; 00D1E4: provisional 68k bsr.w $f4de
db 0x61, 0x00, 0x00, 0xFA ; 00D1E8: provisional 68k bsr.w $d2e4
db 0x61, 0x00, 0x09, 0xE0 ; 00D1EC: provisional 68k bsr.w $dbce
db 0x61, 0x00, 0xF8, 0x48 ; 00D1F0: provisional 68k bsr.w $ca3a
db 0x4E, 0x75 ; 00D1F4: provisional 68k rts 
db 0x3F, 0x3C, 0x00, 0x00 ; 00D1F6: provisional 68k move.w #$0, -(a7)
db 0x61, 0x00, 0x39, 0x0E ; 00D1FA: provisional 68k bsr.w $10b0a
db 0x4E, 0x75 ; 00D1FE: provisional 68k rts 
db 0x61, 0x00, 0xF9, 0xB4 ; 00D200: provisional 68k bsr.w $cbb6
db 0x61, 0x00, 0xF9, 0xB0 ; 00D204: provisional 68k bsr.w $cbb6
db 0x42, 0xE7 ; 00D208: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 00D20A: provisional 68k pea.l $d214(pc)
db 0x61, 0x00, 0xF9, 0xC0 ; 00D20E: provisional 68k bsr.w $cbd0
db 0x60, 0x26 ; 00D212: provisional 68k bra.b $d23a
db 0x3E, 0x3E ; file 00D214
db 0x3E, 0x20 ; 00D216: provisional 68k move.w -(a0), d7
db 0x53, 0x20 ; 00D218: provisional 68k subq.b #$1, -(a0)
db 0x50, 0x20 ; 00D21A: provisional 68k addq.b #$8, -(a0)
db 0x55, 0x20 ; 00D21C: provisional 68k subq.b #$2, -(a0)
db 0x52, 0x20 ; 00D21E: provisional 68k addq.b #$1, -(a0)
db 0x49, 0x20 ; 00D220: provisional 68k dc.w $4920
db 0x4F, 0x20 ; 00D222: provisional 68k dc.w $4f20
db 0x55, 0x20 ; 00D224: provisional 68k subq.b #$2, -(a0)
db 0x53, 0x20 ; 00D226: provisional 68k subq.b #$1, -(a0)
db 0x20, 0x20 ; 00D228: provisional 68k move.l -(a0), d0
db 0x53, 0x20 ; 00D22A: provisional 68k subq.b #$1, -(a0)
db 0x49, 0x20 ; 00D22C: provisional 68k dc.w $4920
db 0x47, 0x20 ; 00D22E: provisional 68k dc.w $4720
db 0x4E, 0x20 ; file 00D230
db 0x41, 0x20 ; 00D232: provisional 68k dc.w $4120
db 0x4C, 0x20 ; file 00D234
db 0x20, 0x20 ; 00D236: provisional 68k move.l -(a0), d0
db 0x00, 0x00, 0x3F, 0x00 ; 00D238: provisional 68k ori.b #$0, d0
db 0x61, 0x00, 0xF8, 0xE0 ; 00D23C: provisional 68k bsr.w $cb1e
db 0x44, 0xDF ; 00D240: provisional 68k move.w (a7)+, ccr
db 0x48, 0x7A, 0x00, 0x08 ; 00D242: provisional 68k pea.l $d24c(pc)
db 0x61, 0x00, 0xF9, 0x88 ; 00D246: provisional 68k bsr.w $cbd0
db 0x60, 0x06 ; 00D24A: provisional 68k bra.b $d252
db 0x20, 0x3C, 0x3C, 0x3C, 0x00, 0x00 ; 00D24C: provisional 68k move.l #$3c3c0000, d0
db 0x61, 0x00, 0xF9, 0x62 ; 00D252: provisional 68k bsr.w $cbb6
db 0x61, 0x00, 0xF9, 0x5E ; 00D256: provisional 68k bsr.w $cbb6
db 0x4E, 0x75 ; 00D25A: provisional 68k rts 
