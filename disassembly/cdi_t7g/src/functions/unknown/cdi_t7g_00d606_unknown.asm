; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00D606–00D665, inclusive.
cdi_t7g_entry_00d606:
db 0x42, 0xE7 ; 00D606: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 00D608: provisional 68k pea.l $d612(pc)
db 0x61, 0x00, 0xE7, 0x42 ; 00D60C: provisional 68k bsr.w $bd50
db 0x60, 0x1A ; 00D610: provisional 68k bra.b $d62c
db 0x4E, 0x75 ; 00D612: provisional 68k rts 
db 0x6D, 0x62 ; 00D614: provisional 68k blt.b $d678
db 0x65, 0x72 ; 00D616: provisional 68k bcs.b $d68a
db 0x20, 0x6F, 0x66, 0x20 ; 00D618: provisional 68k movea.l $6620(a7), a0
db 0x6F, 0x62 ; 00D61C: provisional 68k ble.b $d680
db 0x6A, 0x65 ; 00D61E: provisional 68k bpl.b $d685
db 0x63, 0x74 ; 00D620: provisional 68k bls.b $d696
db 0x73, 0x20 ; file 00D622
db 0x69, 0x6E ; 00D624: provisional 68k bvs.b $d694
db 0x20, 0x64 ; 00D626: provisional 68k movea.l -(a4), a0
db 0x73, 0x70 ; file 00D628
db 0x00, 0x00, 0x3F, 0x2D ; 00D62A: provisional 68k ori.b #$2d, d0
db 0x00, 0x58, 0x61, 0x00 ; 00D62E: provisional 68k ori.w #$6100, (a0)+
db 0xE6, 0x6C ; 00D632: provisional 68k lsr.w d3, d4
db 0x44, 0xDF ; 00D634: provisional 68k move.w (a7)+, ccr
db 0x61, 0x00, 0xE6, 0xFE ; 00D636: provisional 68k bsr.w $bd36
db 0x41, 0xED, 0x00, 0x5A ; 00D63A: provisional 68k lea.l $5a(a5), a0
db 0x3E, 0x3C, 0x00, 0x07 ; 00D63E: provisional 68k move.w #$7, d7
db 0x42, 0xE7 ; 00D642: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 00D644: provisional 68k pea.l $d64e(pc)
db 0x61, 0x00, 0xE7, 0x06 ; 00D648: provisional 68k bsr.w $bd50
db 0x60, 0x02 ; 00D64C: provisional 68k bra.b $d650
db 0x20, 0x00 ; 00D64E: provisional 68k move.l d0, d0
db 0x2F, 0x18 ; 00D650: provisional 68k move.l (a0)+, -(a7)
db 0x61, 0x00, 0xE6, 0x00 ; 00D652: provisional 68k bsr.w $bc54
db 0x44, 0xDF ; 00D656: provisional 68k move.w (a7)+, ccr
db 0x61, 0x00, 0xE6, 0xDC ; 00D658: provisional 68k bsr.w $bd36
db 0x51, 0xCF, 0xFF, 0xE4 ; 00D65C: provisional 68k dbra d7, $d642
db 0x61, 0x00, 0xE6, 0xD4 ; 00D660: provisional 68k bsr.w $bd36
db 0x4E, 0x75 ; 00D664: provisional 68k rts 
