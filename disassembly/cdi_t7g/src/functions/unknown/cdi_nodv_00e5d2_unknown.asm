; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00E5D2–00E615, inclusive.
cdi_nodv_entry_00e5d2:
db 0x48, 0xE7, 0x80, 0xC4 ; 00E5D2: provisional 68k movem.l d0/a0-a1/a5, -(a7)
db 0x30, 0x2F, 0x00, 0x14 ; 00E5D6: provisional 68k move.w $14(a7), d0
db 0x61, 0x00, 0x02, 0xD4 ; 00E5DA: provisional 68k bsr.w $e8b0
db 0x0C, 0x6F, 0x00, 0x80, 0x00, 0x16 ; 00E5DE: provisional 68k cmpi.w #$80, $16(a7)
db 0x66, 0x0E ; 00E5E4: provisional 68k bne.b $e5f4
db 0x41, 0xED, 0x00, 0x40 ; 00E5E6: provisional 68k lea.l $40(a5), a0
db 0x43, 0xED, 0x00, 0x44 ; 00E5EA: provisional 68k lea.l $44(a5), a1
db 0x50, 0xED, 0x00, 0x38 ; 00E5EE: provisional 68k st.b $38(a5)
db 0x60, 0x0C ; 00E5F2: provisional 68k bra.b $e600
db 0x41, 0xED, 0x00, 0x48 ; 00E5F4: provisional 68k lea.l $48(a5), a0
db 0x43, 0xED, 0x00, 0x4C ; 00E5F8: provisional 68k lea.l $4c(a5), a1
db 0x50, 0xED, 0x00, 0x39 ; 00E5FC: provisional 68k st.b $39(a5)
db 0x20, 0xAF, 0x00, 0x18 ; 00E600: provisional 68k move.l $18(a7), (a0)
db 0x22, 0xAF, 0x00, 0x1C ; 00E604: provisional 68k move.l $1c(a7), (a1)
db 0x4C, 0xDF, 0x23, 0x01 ; 00E608: provisional 68k movem.l (a7)+, d0/a0-a1/a5
db 0x2F, 0x57, 0x00, 0x0C ; 00E60C: provisional 68k move.l (a7), $c(a7)
db 0x4F, 0xEF, 0x00, 0x0C ; 00E610: provisional 68k lea.l $c(a7), a7
db 0x4E, 0x75 ; 00E614: provisional 68k rts 
