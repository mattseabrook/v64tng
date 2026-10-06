; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 0110D6–011119, inclusive.
cdi_nodv_entry_0110d6:
db 0x48, 0xE7, 0xFF, 0xFC ; 0110D6: provisional 68k movem.l d0-d7/a0-a5, -(a7)
db 0x20, 0x2F, 0x00, 0x3C ; 0110DA: provisional 68k move.l $3c(a7), d0
db 0x67, 0x1C ; 0110DE: provisional 68k beq.b $110fc
db 0x2A, 0x40 ; 0110E0: provisional 68k movea.l d0, a5
db 0x30, 0x2D, 0x00, 0x0A ; 0110E2: provisional 68k move.w $a(a5), d0
db 0xC0, 0xFC, 0x00, 0x16 ; 0110E6: provisional 68k mulu.w #$16, d0
db 0x41, 0xFA, 0xFC, 0x0A ; 0110EA: provisional 68k lea.l $10cf6(pc), a0
db 0xD0, 0xC0 ; 0110EE: provisional 68k adda.w d0, a0
db 0x4E, 0xA8, 0x00, 0x10 ; 0110F0: provisional 68k jsr $10(a0)
db 0x4C, 0xDF, 0x3F, 0xFF ; 0110F4: provisional 68k movem.l (a7)+, d0-d7/a0-a5
db 0x2E, 0x9F ; 0110F8: provisional 68k move.l (a7)+, (a7)
db 0x4E, 0x75 ; 0110FA: provisional 68k rts 
db 0x32, 0x3C, 0x80, 0x00 ; 0110FC: provisional 68k move.w #$8000, d1
db 0x61, 0x00, 0xBA, 0xFC ; 011100: provisional 68k bsr.w $cbfe
db 0x6F, 0x62 ; 011104: provisional 68k ble.b $11168
db 0x6A, 0x5F ; 011106: provisional 68k bpl.b $11167
db 0x70, 0x63 ; 011108: provisional 68k moveq #$63, d0
db 0x62, 0x3A ; 01110A: provisional 68k bhi.b $11146
db 0x20, 0x6E, 0x75, 0x6C ; 01110C: provisional 68k movea.l $756c(a6), a0
db 0x6C, 0x20 ; 011110: provisional 68k bge.b $11132
db 0x6F, 0x62 ; 011112: provisional 68k ble.b $11176
db 0x6A, 0x65 ; 011114: provisional 68k bpl.b $1117b
db 0x63, 0x74 ; 011116: provisional 68k bls.b $1118c
db 0x00, 0x00 ; file 011118
