; verified-role: Native StandardInitialization routine; the compiler debug trailer supplies its original symbol. Full argument types remain under study.
; Original native symbol: StandardInitialization; evidence file offset 0x7334.
; Exact bytes retained; instruction decoding remains provisional where inline data may occur.
mac_code_2_standard_initialization:
db 0x4E, 0x56, 0x00, 0x00 ; file 007310 | 68k link.w a6, #$0
db 0x4E, 0xBA, 0xFA, 0x4A ; file 007314 | 68k jsr $5cf8(pc)
db 0x60, 0x02 ; file 007318 | 68k bra.b $62b4
db 0xA0, 0x36 ; file 00731A | 68k dc.w $a036
db 0x30, 0x2E, 0x00, 0x08 ; file 00731C | 68k move.w $8(a6), d0
db 0x53, 0x6E, 0x00, 0x08 ; file 007320 | 68k subq.w #$1, $8(a6)
db 0x4A, 0x40 ; file 007324 | 68k tst.w d0
db 0x66, 0xF2 ; file 007326 | 68k bne.b $62b2
db 0x4E, 0xBA, 0xFE, 0x12 ; file 007328 | 68k jsr $60d4(pc)
db 0x4E, 0xBA, 0xFA, 0x48 ; file 00732C | 68k jsr $5d0e(pc)
db 0x4E, 0x5E ; file 007330 | 68k unlk a6
db 0x4E, 0x75 ; file 007332 | 68k rts 
