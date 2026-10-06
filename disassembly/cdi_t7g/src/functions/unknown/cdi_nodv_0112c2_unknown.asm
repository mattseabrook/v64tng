; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 0112C2–011317, inclusive.
cdi_nodv_entry_0112c2:
db 0x48, 0xE7, 0xFF, 0xFC ; 0112C2: provisional 68k movem.l d0-d7/a0-a5, -(a7)
db 0x61, 0x00, 0xB8, 0xEE ; 0112C6: provisional 68k bsr.w $cbb6
db 0x20, 0x2F, 0x00, 0x3C ; 0112CA: provisional 68k move.l $3c(a7), d0
db 0x66, 0x04 ; 0112CE: provisional 68k bne.b $112d4
db 0x20, 0x2E, 0xD0, 0x00 ; 0112D0: provisional 68k move.l -$3000(a6), d0
db 0x20, 0x40 ; 0112D4: provisional 68k movea.l d0, a0
db 0x42, 0xE7 ; 0112D6: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 0112D8: provisional 68k pea.l $112e2(pc)
db 0x61, 0x00, 0xB8, 0xF2 ; 0112DC: provisional 68k bsr.w $cbd0
db 0x60, 0x02 ; 0112E0: provisional 68k bra.b $112e4
db 0x20, 0x00 ; 0112E2: provisional 68k move.l d0, d0
db 0x2F, 0x08 ; 0112E4: provisional 68k move.l a0, -(a7)
db 0x61, 0x00, 0xB7, 0xEC ; 0112E6: provisional 68k bsr.w $cad4
db 0x44, 0xDF ; 0112EA: provisional 68k move.w (a7)+, ccr
db 0x48, 0x7A, 0x00, 0x08 ; 0112EC: provisional 68k pea.l $112f6(pc)
db 0x61, 0x00, 0xB8, 0xDE ; 0112F0: provisional 68k bsr.w $cbd0
db 0x60, 0x02 ; 0112F4: provisional 68k bra.b $112f8
db 0x20, 0x00 ; 0112F6: provisional 68k move.l d0, d0
db 0x2F, 0x08 ; 0112F8: provisional 68k move.l a0, -(a7)
db 0x61, 0x00, 0xFE, 0x1E ; 0112FA: provisional 68k bsr.w $1111a
db 0x61, 0x00, 0xB8, 0xB6 ; 0112FE: provisional 68k bsr.w $cbb6
db 0x42, 0x47 ; 011302: provisional 68k clr.w d7
db 0x20, 0x28, 0x00, 0x10 ; 011304: provisional 68k move.l $10(a0), d0
db 0x61, 0x00, 0x00, 0x0E ; 011308: provisional 68k bsr.w $11318
db 0x61, 0x00, 0xB8, 0xA8 ; 01130C: provisional 68k bsr.w $cbb6
db 0x4C, 0xDF, 0x3F, 0xFF ; 011310: provisional 68k movem.l (a7)+, d0-d7/a0-a5
db 0x2E, 0x9F ; 011314: provisional 68k move.l (a7)+, (a7)
db 0x4E, 0x75 ; 011316: provisional 68k rts 
