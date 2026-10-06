; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 0100A4–0100CB, inclusive.
cdi_t7g_entry_0100a4:
db 0x00, 0x00 ; file 0100A4
db 0x20, 0x4D ; 0100A6: provisional 68k movea.l a5, a0
db 0x4C, 0xDF, 0x3E, 0xFF ; 0100A8: provisional 68k movem.l (a7)+, d0-d7/a1-a5
db 0x2F, 0x57, 0x00, 0x06 ; 0100AC: provisional 68k move.l (a7), $6(a7)
db 0x4F, 0xEF, 0x00, 0x06 ; 0100B0: provisional 68k lea.l $6(a7), a7
db 0x4E, 0x75 ; 0100B4: provisional 68k rts 
db 0x32, 0x3C, 0x80, 0x00 ; 0100B6: provisional 68k move.w #$8000, d1
db 0x61, 0x00, 0xBC, 0xC2 ; 0100BA: provisional 68k bsr.w $bd7e
db 0x6F, 0x62 ; 0100BE: provisional 68k ble.b $10122
db 0x6A, 0x5F ; 0100C0: provisional 68k bpl.b $10121
db 0x63, 0x72 ; 0100C2: provisional 68k bls.b $10136
db 0x65, 0x61 ; 0100C4: provisional 68k bcs.b $10127
db 0x74, 0x65 ; 0100C6: provisional 68k moveq #$65, d2
db 0x20, 0x3A, 0x20, 0x43 ; 0100C8: provisional 68k move.l $1210d(pc), d0
