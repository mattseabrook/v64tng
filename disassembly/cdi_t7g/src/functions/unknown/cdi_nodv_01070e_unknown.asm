; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 01070E–01072B, inclusive.
cdi_nodv_entry_01070e:
db 0x48, 0xE7, 0x80, 0x40 ; 01070E: provisional 68k movem.l d0/a1, -(a7)
db 0x30, 0x2F, 0x00, 0x0C ; 010712: provisional 68k move.w $c(a7), d0
db 0x61, 0x00, 0x03, 0x1A ; 010716: provisional 68k bsr.w $10a32
db 0x50, 0xE9, 0x00, 0x01 ; 01071A: provisional 68k st.b $1(a1)
db 0x4C, 0xDF, 0x02, 0x01 ; 01071E: provisional 68k movem.l (a7)+, d0/a1
db 0x2F, 0x57, 0x00, 0x02 ; 010722: provisional 68k move.l (a7), $2(a7)
db 0x4F, 0xEF, 0x00, 0x02 ; 010726: provisional 68k lea.l $2(a7), a7
db 0x4E, 0x75 ; 01072A: provisional 68k rts 
