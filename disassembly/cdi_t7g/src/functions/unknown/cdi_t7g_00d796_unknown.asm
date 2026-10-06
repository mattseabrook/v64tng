; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00D796–00D7CB, inclusive.
cdi_t7g_entry_00d796:
db 0x48, 0xE7, 0x80, 0x84 ; 00D796: provisional 68k movem.l d0/a0/a5, -(a7)
db 0x30, 0x2F, 0x00, 0x10 ; 00D79A: provisional 68k move.w $10(a7), d0
db 0x61, 0x00, 0x02, 0x90 ; 00D79E: provisional 68k bsr.w $da30
db 0x0C, 0x6F, 0x00, 0x80, 0x00, 0x12 ; 00D7A2: provisional 68k cmpi.w #$80, $12(a7)
db 0x66, 0x0A ; 00D7A8: provisional 68k bne.b $d7b4
db 0x41, 0xED, 0x00, 0x50 ; 00D7AA: provisional 68k lea.l $50(a5), a0
db 0x50, 0xED, 0x00, 0x38 ; 00D7AE: provisional 68k st.b $38(a5)
db 0x60, 0x08 ; 00D7B2: provisional 68k bra.b $d7bc
db 0x41, 0xED, 0x00, 0x54 ; 00D7B4: provisional 68k lea.l $54(a5), a0
db 0x50, 0xED, 0x00, 0x39 ; 00D7B8: provisional 68k st.b $39(a5)
db 0x20, 0xAF, 0x00, 0x14 ; 00D7BC: provisional 68k move.l $14(a7), (a0)
db 0x4C, 0xDF, 0x21, 0x01 ; 00D7C0: provisional 68k movem.l (a7)+, d0/a0/a5
db 0x2F, 0x57, 0x00, 0x08 ; 00D7C4: provisional 68k move.l (a7), $8(a7)
db 0x50, 0x4F ; 00D7C8: provisional 68k addq.w #$8, a7
db 0x4E, 0x75 ; 00D7CA: provisional 68k rts 
