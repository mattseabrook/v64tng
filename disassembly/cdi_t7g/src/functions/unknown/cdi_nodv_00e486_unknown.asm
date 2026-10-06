; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00E486–00E4E5, inclusive.
cdi_nodv_entry_00e486:
db 0x42, 0xE7 ; 00E486: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 00E488: provisional 68k pea.l $e492(pc)
db 0x61, 0x00, 0xE7, 0x42 ; 00E48C: provisional 68k bsr.w $cbd0
db 0x60, 0x1A ; 00E490: provisional 68k bra.b $e4ac
db 0x4E, 0x75 ; 00E492: provisional 68k rts 
db 0x6D, 0x62 ; 00E494: provisional 68k blt.b $e4f8
db 0x65, 0x72 ; 00E496: provisional 68k bcs.b $e50a
db 0x20, 0x6F, 0x66, 0x20 ; 00E498: provisional 68k movea.l $6620(a7), a0
db 0x6F, 0x62 ; 00E49C: provisional 68k ble.b $e500
db 0x6A, 0x65 ; 00E49E: provisional 68k bpl.b $e505
db 0x63, 0x74 ; 00E4A0: provisional 68k bls.b $e516
db 0x73, 0x20 ; file 00E4A2
db 0x69, 0x6E ; 00E4A4: provisional 68k bvs.b $e514
db 0x20, 0x64 ; 00E4A6: provisional 68k movea.l -(a4), a0
db 0x73, 0x70 ; file 00E4A8
db 0x00, 0x00, 0x3F, 0x2D ; 00E4AA: provisional 68k ori.b #$2d, d0
db 0x00, 0x58, 0x61, 0x00 ; 00E4AE: provisional 68k ori.w #$6100, (a0)+
db 0xE6, 0x6C ; 00E4B2: provisional 68k lsr.w d3, d4
db 0x44, 0xDF ; 00E4B4: provisional 68k move.w (a7)+, ccr
db 0x61, 0x00, 0xE6, 0xFE ; 00E4B6: provisional 68k bsr.w $cbb6
db 0x41, 0xED, 0x00, 0x5A ; 00E4BA: provisional 68k lea.l $5a(a5), a0
db 0x3E, 0x3C, 0x00, 0x07 ; 00E4BE: provisional 68k move.w #$7, d7
db 0x42, 0xE7 ; 00E4C2: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 00E4C4: provisional 68k pea.l $e4ce(pc)
db 0x61, 0x00, 0xE7, 0x06 ; 00E4C8: provisional 68k bsr.w $cbd0
db 0x60, 0x02 ; 00E4CC: provisional 68k bra.b $e4d0
db 0x20, 0x00 ; 00E4CE: provisional 68k move.l d0, d0
db 0x2F, 0x18 ; 00E4D0: provisional 68k move.l (a0)+, -(a7)
db 0x61, 0x00, 0xE6, 0x00 ; 00E4D2: provisional 68k bsr.w $cad4
db 0x44, 0xDF ; 00E4D6: provisional 68k move.w (a7)+, ccr
db 0x61, 0x00, 0xE6, 0xDC ; 00E4D8: provisional 68k bsr.w $cbb6
db 0x51, 0xCF, 0xFF, 0xE4 ; 00E4DC: provisional 68k dbra d7, $e4c2
db 0x61, 0x00, 0xE6, 0xD4 ; 00E4E0: provisional 68k bsr.w $cbb6
db 0x4E, 0x75 ; 00E4E4: provisional 68k rts 
