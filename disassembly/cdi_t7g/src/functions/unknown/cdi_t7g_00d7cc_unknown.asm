; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00D7CC–00D807, inclusive.
cdi_t7g_entry_00d7cc:
db 0x48, 0xE7, 0x80, 0x84 ; 00D7CC: provisional 68k movem.l d0/a0/a5, -(a7)
db 0x30, 0x2F, 0x00, 0x10 ; 00D7D0: provisional 68k move.w $10(a7), d0
db 0x61, 0x00, 0x02, 0x5A ; 00D7D4: provisional 68k bsr.w $da30
db 0x0C, 0x6F, 0x00, 0x80, 0x00, 0x12 ; 00D7D8: provisional 68k cmpi.w #$80, $12(a7)
db 0x66, 0x0A ; 00D7DE: provisional 68k bne.b $d7ea
db 0x41, 0xED, 0x00, 0x36 ; 00D7E0: provisional 68k lea.l $36(a5), a0
db 0x50, 0xED, 0x00, 0x38 ; 00D7E4: provisional 68k st.b $38(a5)
db 0x60, 0x08 ; 00D7E8: provisional 68k bra.b $d7f2
db 0x41, 0xED, 0x00, 0x37 ; 00D7EA: provisional 68k lea.l $37(a5), a0
db 0x50, 0xED, 0x00, 0x39 ; 00D7EE: provisional 68k st.b $39(a5)
db 0x30, 0x2F, 0x00, 0x14 ; 00D7F2: provisional 68k move.w $14(a7), d0
db 0xC0, 0x7C, 0x00, 0x3F ; 00D7F6: provisional 68k and.w #$3f, d0
db 0x10, 0x80 ; 00D7FA: provisional 68k move.b d0, (a0)
db 0x4C, 0xDF, 0x21, 0x01 ; 00D7FC: provisional 68k movem.l (a7)+, d0/a0/a5
db 0x2F, 0x57, 0x00, 0x06 ; 00D800: provisional 68k move.l (a7), $6(a7)
db 0x5C, 0x4F ; 00D804: provisional 68k addq.w #$6, a7
db 0x4E, 0x75 ; 00D806: provisional 68k rts 
