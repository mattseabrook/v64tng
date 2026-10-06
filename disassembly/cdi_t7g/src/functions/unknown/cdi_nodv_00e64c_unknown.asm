; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00E64C–00E687, inclusive.
cdi_nodv_entry_00e64c:
db 0x48, 0xE7, 0x80, 0x84 ; 00E64C: provisional 68k movem.l d0/a0/a5, -(a7)
db 0x30, 0x2F, 0x00, 0x10 ; 00E650: provisional 68k move.w $10(a7), d0
db 0x61, 0x00, 0x02, 0x5A ; 00E654: provisional 68k bsr.w $e8b0
db 0x0C, 0x6F, 0x00, 0x80, 0x00, 0x12 ; 00E658: provisional 68k cmpi.w #$80, $12(a7)
db 0x66, 0x0A ; 00E65E: provisional 68k bne.b $e66a
db 0x41, 0xED, 0x00, 0x36 ; 00E660: provisional 68k lea.l $36(a5), a0
db 0x50, 0xED, 0x00, 0x38 ; 00E664: provisional 68k st.b $38(a5)
db 0x60, 0x08 ; 00E668: provisional 68k bra.b $e672
db 0x41, 0xED, 0x00, 0x37 ; 00E66A: provisional 68k lea.l $37(a5), a0
db 0x50, 0xED, 0x00, 0x39 ; 00E66E: provisional 68k st.b $39(a5)
db 0x30, 0x2F, 0x00, 0x14 ; 00E672: provisional 68k move.w $14(a7), d0
db 0xC0, 0x7C, 0x00, 0x3F ; 00E676: provisional 68k and.w #$3f, d0
db 0x10, 0x80 ; 00E67A: provisional 68k move.b d0, (a0)
db 0x4C, 0xDF, 0x21, 0x01 ; 00E67C: provisional 68k movem.l (a7)+, d0/a0/a5
db 0x2F, 0x57, 0x00, 0x06 ; 00E680: provisional 68k move.l (a7), $6(a7)
db 0x5C, 0x4F ; 00E684: provisional 68k addq.w #$6, a7
db 0x4E, 0x75 ; 00E686: provisional 68k rts 
