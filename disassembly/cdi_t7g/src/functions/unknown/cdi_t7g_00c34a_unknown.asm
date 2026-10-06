; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00C34A–00C3DB, inclusive.
cdi_t7g_entry_00c34a:
db 0x41, 0xFA, 0x00, 0x10 ; 00C34A: provisional 68k lea.l $c35c(pc), a0
db 0x2D, 0x48, 0xAA, 0x1A ; 00C34E: provisional 68k move.l a0, -$55e6(a6)
db 0x41, 0xFA, 0x00, 0x22 ; 00C352: provisional 68k lea.l $c376(pc), a0
db 0x2D, 0x48, 0xAA, 0x1E ; 00C356: provisional 68k move.l a0, -$55e2(a6)
db 0x4E, 0x75 ; 00C35A: provisional 68k rts 
db 0x61, 0x00, 0x3C, 0x62 ; 00C35C: provisional 68k bsr.w $ffc0
db 0x61, 0x00, 0x1C, 0x40 ; 00C360: provisional 68k bsr.w $dfa2
db 0x61, 0x00, 0x22, 0xF8 ; 00C364: provisional 68k bsr.w $e65e
db 0x61, 0x00, 0x00, 0xFA ; 00C368: provisional 68k bsr.w $c464
db 0x61, 0x00, 0x09, 0xE0 ; 00C36C: provisional 68k bsr.w $cd4e
db 0x61, 0x00, 0xF8, 0x48 ; 00C370: provisional 68k bsr.w $bbba
db 0x4E, 0x75 ; 00C374: provisional 68k rts 
db 0x3F, 0x3C, 0x00, 0x00 ; 00C376: provisional 68k move.w #$0, -(a7)
db 0x61, 0x00, 0x39, 0x0E ; 00C37A: provisional 68k bsr.w $fc8a
db 0x4E, 0x75 ; 00C37E: provisional 68k rts 
db 0x61, 0x00, 0xF9, 0xB4 ; 00C380: provisional 68k bsr.w $bd36
db 0x61, 0x00, 0xF9, 0xB0 ; 00C384: provisional 68k bsr.w $bd36
db 0x42, 0xE7 ; 00C388: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 00C38A: provisional 68k pea.l $c394(pc)
db 0x61, 0x00, 0xF9, 0xC0 ; 00C38E: provisional 68k bsr.w $bd50
db 0x60, 0x26 ; 00C392: provisional 68k bra.b $c3ba
db 0x3E, 0x3E ; file 00C394
db 0x3E, 0x20 ; 00C396: provisional 68k move.w -(a0), d7
db 0x53, 0x20 ; 00C398: provisional 68k subq.b #$1, -(a0)
db 0x50, 0x20 ; 00C39A: provisional 68k addq.b #$8, -(a0)
db 0x55, 0x20 ; 00C39C: provisional 68k subq.b #$2, -(a0)
db 0x52, 0x20 ; 00C39E: provisional 68k addq.b #$1, -(a0)
db 0x49, 0x20 ; 00C3A0: provisional 68k dc.w $4920
db 0x4F, 0x20 ; 00C3A2: provisional 68k dc.w $4f20
db 0x55, 0x20 ; 00C3A4: provisional 68k subq.b #$2, -(a0)
db 0x53, 0x20 ; 00C3A6: provisional 68k subq.b #$1, -(a0)
db 0x20, 0x20 ; 00C3A8: provisional 68k move.l -(a0), d0
db 0x53, 0x20 ; 00C3AA: provisional 68k subq.b #$1, -(a0)
db 0x49, 0x20 ; 00C3AC: provisional 68k dc.w $4920
db 0x47, 0x20 ; 00C3AE: provisional 68k dc.w $4720
db 0x4E, 0x20 ; file 00C3B0
db 0x41, 0x20 ; 00C3B2: provisional 68k dc.w $4120
db 0x4C, 0x20 ; file 00C3B4
db 0x20, 0x20 ; 00C3B6: provisional 68k move.l -(a0), d0
db 0x00, 0x00, 0x3F, 0x00 ; 00C3B8: provisional 68k ori.b #$0, d0
db 0x61, 0x00, 0xF8, 0xE0 ; 00C3BC: provisional 68k bsr.w $bc9e
db 0x44, 0xDF ; 00C3C0: provisional 68k move.w (a7)+, ccr
db 0x48, 0x7A, 0x00, 0x08 ; 00C3C2: provisional 68k pea.l $c3cc(pc)
db 0x61, 0x00, 0xF9, 0x88 ; 00C3C6: provisional 68k bsr.w $bd50
db 0x60, 0x06 ; 00C3CA: provisional 68k bra.b $c3d2
db 0x20, 0x3C, 0x3C, 0x3C, 0x00, 0x00 ; 00C3CC: provisional 68k move.l #$3c3c0000, d0
db 0x61, 0x00, 0xF9, 0x62 ; 00C3D2: provisional 68k bsr.w $bd36
db 0x61, 0x00, 0xF9, 0x5E ; 00C3D6: provisional 68k bsr.w $bd36
db 0x4E, 0x75 ; 00C3DA: provisional 68k rts 
