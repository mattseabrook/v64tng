; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00E616–00E64B, inclusive.
cdi_nodv_entry_00e616:
db 0x48, 0xE7, 0x80, 0x84 ; 00E616: provisional 68k movem.l d0/a0/a5, -(a7)
db 0x30, 0x2F, 0x00, 0x10 ; 00E61A: provisional 68k move.w $10(a7), d0
db 0x61, 0x00, 0x02, 0x90 ; 00E61E: provisional 68k bsr.w $e8b0
db 0x0C, 0x6F, 0x00, 0x80, 0x00, 0x12 ; 00E622: provisional 68k cmpi.w #$80, $12(a7)
db 0x66, 0x0A ; 00E628: provisional 68k bne.b $e634
db 0x41, 0xED, 0x00, 0x50 ; 00E62A: provisional 68k lea.l $50(a5), a0
db 0x50, 0xED, 0x00, 0x38 ; 00E62E: provisional 68k st.b $38(a5)
db 0x60, 0x08 ; 00E632: provisional 68k bra.b $e63c
db 0x41, 0xED, 0x00, 0x54 ; 00E634: provisional 68k lea.l $54(a5), a0
db 0x50, 0xED, 0x00, 0x39 ; 00E638: provisional 68k st.b $39(a5)
db 0x20, 0xAF, 0x00, 0x14 ; 00E63C: provisional 68k move.l $14(a7), (a0)
db 0x4C, 0xDF, 0x21, 0x01 ; 00E640: provisional 68k movem.l (a7)+, d0/a0/a5
db 0x2F, 0x57, 0x00, 0x08 ; 00E644: provisional 68k move.l (a7), $8(a7)
db 0x50, 0x4F ; 00E648: provisional 68k addq.w #$8, a7
db 0x4E, 0x75 ; 00E64A: provisional 68k rts 
