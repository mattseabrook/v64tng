; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 010EBE–010EFD, inclusive.
cdi_nodv_entry_010ebe:
db 0x6C, 0x09 ; 010EBE: provisional 68k bge.b $10ec9
db 0x00, 0x00, 0x3F, 0x28 ; 010EC0: provisional 68k ori.b #$28, d0
db 0x00, 0x02, 0x61, 0x00 ; 010EC4: provisional 68k ori.b #$0, d2
db 0xBC, 0x56 ; 010EC8: provisional 68k cmp.w (a6), d6
db 0x44, 0xDF ; 010ECA: provisional 68k move.w (a7)+, ccr
db 0x61, 0x00, 0xBC, 0xE8 ; 010ECC: provisional 68k bsr.w $cbb6
db 0x42, 0xE7 ; 010ED0: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 010ED2: provisional 68k pea.l $10edc(pc)
db 0x61, 0x00, 0xBC, 0xF8 ; 010ED6: provisional 68k bsr.w $cbd0
db 0x60, 0x0E ; 010EDA: provisional 68k bra.b $10eea
db 0x73, 0x6D ; file 010EDC
db 0x61, 0x6C ; 010EDE: provisional 68k bsr.b $10f4c
db 0x6C, 0x20 ; 010EE0: provisional 68k bge.b $10f02
db 0x66, 0x72 ; 010EE2: provisional 68k bne.b $10f56
db 0x65, 0x65 ; 010EE4: provisional 68k bcs.b $10f4b
db 0x09, 0x09, 0x00, 0x00 ; 010EE6: provisional 68k movep.w $0(a1), d4
db 0x3F, 0x28, 0x00, 0x04 ; 010EEA: provisional 68k move.w $4(a0), -(a7)
db 0x61, 0x00, 0xBC, 0x2E ; 010EEE: provisional 68k bsr.w $cb1e
db 0x44, 0xDF ; 010EF2: provisional 68k move.w (a7)+, ccr
db 0x61, 0x00, 0xBC, 0xC0 ; 010EF4: provisional 68k bsr.w $cbb6
db 0x61, 0x00, 0xBC, 0xBC ; 010EF8: provisional 68k bsr.w $cbb6
db 0x4E, 0x75 ; 010EFC: provisional 68k rts 
