; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 012088–0120E1, inclusive.
cdi_t7g_entry_012088:
db 0x0C, 0x6C ; file 012088
db 0x00, 0x00, 0x00, 0x1C ; 01208A: provisional 68k ori.b #$1c, d0
db 0x66, 0x22 ; 01208E: provisional 68k bne.b $120b2
db 0x48, 0xE7, 0x00, 0x0C ; 012090: provisional 68k movem.l a4-a5, -(a7)
db 0x28, 0x6C, 0x00, 0x40 ; 012094: provisional 68k movea.l $40(a4), a4
db 0x2A, 0x6D, 0x00, 0x40 ; 012098: provisional 68k movea.l $40(a5), a5
db 0x61, 0x00, 0x00, 0x44 ; 01209C: provisional 68k bsr.w $120e2
db 0x4C, 0xDF, 0x30, 0x00 ; 0120A0: provisional 68k movem.l (a7)+, a4-a5
db 0x28, 0x6C, 0x00, 0x3C ; 0120A4: provisional 68k movea.l $3c(a4), a4
db 0x2A, 0x6D, 0x00, 0x3C ; 0120A8: provisional 68k movea.l $3c(a5), a5
db 0x61, 0x00, 0x01, 0x3C ; 0120AC: provisional 68k bsr.w $121ea
db 0x4E, 0x75 ; 0120B0: provisional 68k rts 
db 0x32, 0x3C, 0x80, 0x00 ; 0120B2: provisional 68k move.w #$8000, d1
db 0x61, 0x00, 0x9C, 0xC6 ; 0120B6: provisional 68k bsr.w $bd7e
db 0x70, 0x61 ; 0120BA: provisional 68k moveq #$61, d0
db 0x73, 0x74 ; file 0120BC
db 0x65, 0x5F ; 0120BE: provisional 68k bcs.b $1211f
db 0x71, 0x68, 0x79, 0x3A ; file 0120C0
db 0x20, 0x55 ; 0120C4: provisional 68k movea.l (a5), a0
db 0x6E, 0x73 ; 0120C6: provisional 68k bgt.b $1213b
db 0x75, 0x70 ; file 0120C8
db 0x70, 0x6F ; 0120CA: provisional 68k moveq #$6f, d0
db 0x72, 0x74 ; 0120CC: provisional 68k moveq #$74, d1
db 0x65, 0x64 ; 0120CE: provisional 68k bcs.b $12134
db 0x20, 0x64 ; 0120D0: provisional 68k movea.l -(a4), a0
db 0x65, 0x73 ; 0120D2: provisional 68k bcs.b $12147
db 0x74, 0x69 ; 0120D4: provisional 68k moveq #$69, d2
db 0x6E, 0x61 ; 0120D6: provisional 68k bgt.b $12139
db 0x74, 0x69 ; 0120D8: provisional 68k moveq #$69, d2
db 0x6F, 0x6E ; 0120DA: provisional 68k ble.b $1214a
db 0x20, 0x74, 0x79, 0x70, 0x65, 0x00 ; file 0120DC
