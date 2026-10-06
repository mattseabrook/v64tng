; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00D2E4–00D321, inclusive.
cdi_nodv_entry_00d2e4:
db 0x48, 0x7A, 0x00, 0x08 ; 00D2E4: provisional 68k pea.l $d2ee(pc)
db 0x61, 0x00, 0xF8, 0xE6 ; 00D2E8: provisional 68k bsr.w $cbd0
db 0x60, 0x0A ; 00D2EC: provisional 68k bra.b $d2f8
db 0x6D, 0x76 ; 00D2EE: provisional 68k blt.b $d366
db 0x6D, 0x61 ; 00D2F0: provisional 68k blt.b $d353
db 0x6E, 0x3A ; 00D2F2: provisional 68k bgt.b $d32e
db 0x0D, 0x0A, 0x00, 0x00 ; 00D2F4: provisional 68k movep.w $0(a2), d6
db 0x42, 0xE7 ; 00D2F8: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 00D2FA: provisional 68k pea.l $d304(pc)
db 0x61, 0x00, 0xF8, 0xD0 ; 00D2FE: provisional 68k bsr.w $cbd0
db 0x60, 0x0A ; 00D302: provisional 68k bra.b $d30e
db 0x63, 0x75 ; 00D304: provisional 68k bls.b $d37b
db 0x72, 0x5F ; 00D306: provisional 68k moveq #$5f, d1
db 0x6D, 0x76 ; 00D308: provisional 68k blt.b $d380
db 0x09, 0x09, 0x09, 0x00 ; 00D30A: provisional 68k movep.w $900(a1), d4
db 0x2F, 0x2E, 0xAA, 0x90 ; 00D30E: provisional 68k move.l -$5570(a6), -(a7)
db 0x61, 0x00, 0xF7, 0xC0 ; 00D312: provisional 68k bsr.w $cad4
db 0x44, 0xDF ; 00D316: provisional 68k move.w (a7)+, ccr
db 0x61, 0x00, 0xF8, 0x9C ; 00D318: provisional 68k bsr.w $cbb6
db 0x61, 0x00, 0xF8, 0x98 ; 00D31C: provisional 68k bsr.w $cbb6
db 0x4E, 0x75 ; 00D320: provisional 68k rts 
