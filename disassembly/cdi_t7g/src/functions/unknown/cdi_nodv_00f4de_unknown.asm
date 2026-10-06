; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00F4DE–00F55F, inclusive.
cdi_nodv_entry_00f4de:
db 0x48, 0x7A, 0x00, 0x08 ; 00F4DE: provisional 68k pea.l $f4e8(pc)
db 0x61, 0x00, 0xD6, 0xEC ; 00F4E2: provisional 68k bsr.w $cbd0
db 0x60, 0x0A ; 00F4E6: provisional 68k bra.b $f4f2
db 0x61, 0x76 ; 00F4E8: provisional 68k bsr.b $f560
db 0x6D, 0x61 ; 00F4EA: provisional 68k blt.b $f54d
db 0x6E, 0x3A ; 00F4EC: provisional 68k bgt.b $f528
db 0x0D, 0x0A, 0x00, 0x00 ; 00F4EE: provisional 68k movep.w $0(a2), d6
db 0x42, 0xE7 ; 00F4F2: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 00F4F4: provisional 68k pea.l $f4fe(pc)
db 0x61, 0x00, 0xD6, 0xD6 ; 00F4F8: provisional 68k bsr.w $cbd0
db 0x60, 0x0C ; 00F4FC: provisional 68k bra.b $f50a
db 0x61, 0x76 ; 00F4FE: provisional 68k bsr.b $f576
db 0x6D, 0x5F ; 00F500: provisional 68k blt.b $f561
db 0x73, 0x74 ; file 00F502
db 0x61, 0x74 ; 00F504: provisional 68k bsr.b $f57a
db 0x65, 0x09 ; 00F506: provisional 68k bcs.b $f511
db 0x09, 0x00 ; 00F508: provisional 68k btst.l d4, d0
db 0x3F, 0x2E, 0xAC, 0x8C ; 00F50A: provisional 68k move.w -$5374(a6), -(a7)
db 0x61, 0x00, 0xD6, 0x0E ; 00F50E: provisional 68k bsr.w $cb1e
db 0x44, 0xDF ; 00F512: provisional 68k move.w (a7)+, ccr
db 0x61, 0x00, 0xD6, 0xA0 ; 00F514: provisional 68k bsr.w $cbb6
db 0x42, 0xE7 ; 00F518: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 00F51A: provisional 68k pea.l $f524(pc)
db 0x61, 0x00, 0xD6, 0xB0 ; 00F51E: provisional 68k bsr.w $cbd0
db 0x60, 0x0A ; 00F522: provisional 68k bra.b $f52e
db 0x63, 0x75 ; 00F524: provisional 68k bls.b $f59b
db 0x72, 0x5F ; 00F526: provisional 68k moveq #$5f, d1
db 0x61, 0x76 ; 00F528: provisional 68k bsr.b $f5a0
db 0x09, 0x09, 0x09, 0x00 ; 00F52A: provisional 68k movep.w $900(a1), d4
db 0x2F, 0x2E, 0xAC, 0x8E ; 00F52E: provisional 68k move.l -$5372(a6), -(a7)
db 0x61, 0x00, 0xD5, 0xA0 ; 00F532: provisional 68k bsr.w $cad4
db 0x44, 0xDF ; 00F536: provisional 68k move.w (a7)+, ccr
db 0x61, 0x00, 0xD6, 0x7C ; 00F538: provisional 68k bsr.w $cbb6
db 0x61, 0x00, 0xD6, 0x78 ; 00F53C: provisional 68k bsr.w $cbb6
db 0x4E, 0x75 ; 00F540: provisional 68k rts 
db 0x41, 0xFA, 0x02, 0x36 ; 00F542: provisional 68k lea.l $f77a(pc), a0
db 0x2F, 0x08 ; 00F546: provisional 68k move.l a0, -(a7)
db 0x61, 0x00, 0xDB, 0x3A ; 00F548: provisional 68k bsr.w $d084
db 0x3D, 0x40, 0xAC, 0x92 ; 00F54C: provisional 68k move.w d0, -$536e(a6)
db 0x41, 0xFA, 0x02, 0x44 ; 00F550: provisional 68k lea.l $f796(pc), a0
db 0x2F, 0x08 ; 00F554: provisional 68k move.l a0, -(a7)
db 0x61, 0x00, 0xDB, 0x2C ; 00F556: provisional 68k bsr.w $d084
db 0x3D, 0x40, 0xAC, 0xB8 ; 00F55A: provisional 68k move.w d0, -$5348(a6)
db 0x3D, 0x7C ; file 00F55E
