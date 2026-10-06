; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00D752–00D795, inclusive.
cdi_t7g_entry_00d752:
db 0x48, 0xE7, 0x80, 0xC4 ; 00D752: provisional 68k movem.l d0/a0-a1/a5, -(a7)
db 0x30, 0x2F, 0x00, 0x14 ; 00D756: provisional 68k move.w $14(a7), d0
db 0x61, 0x00, 0x02, 0xD4 ; 00D75A: provisional 68k bsr.w $da30
db 0x0C, 0x6F, 0x00, 0x80, 0x00, 0x16 ; 00D75E: provisional 68k cmpi.w #$80, $16(a7)
db 0x66, 0x0E ; 00D764: provisional 68k bne.b $d774
db 0x41, 0xED, 0x00, 0x40 ; 00D766: provisional 68k lea.l $40(a5), a0
db 0x43, 0xED, 0x00, 0x44 ; 00D76A: provisional 68k lea.l $44(a5), a1
db 0x50, 0xED, 0x00, 0x38 ; 00D76E: provisional 68k st.b $38(a5)
db 0x60, 0x0C ; 00D772: provisional 68k bra.b $d780
db 0x41, 0xED, 0x00, 0x48 ; 00D774: provisional 68k lea.l $48(a5), a0
db 0x43, 0xED, 0x00, 0x4C ; 00D778: provisional 68k lea.l $4c(a5), a1
db 0x50, 0xED, 0x00, 0x39 ; 00D77C: provisional 68k st.b $39(a5)
db 0x20, 0xAF, 0x00, 0x18 ; 00D780: provisional 68k move.l $18(a7), (a0)
db 0x22, 0xAF, 0x00, 0x1C ; 00D784: provisional 68k move.l $1c(a7), (a1)
db 0x4C, 0xDF, 0x23, 0x01 ; 00D788: provisional 68k movem.l (a7)+, d0/a0-a1/a5
db 0x2F, 0x57, 0x00, 0x0C ; 00D78C: provisional 68k move.l (a7), $c(a7)
db 0x4F, 0xEF, 0x00, 0x0C ; 00D790: provisional 68k lea.l $c(a7), a7
db 0x4E, 0x75 ; 00D794: provisional 68k rts 
