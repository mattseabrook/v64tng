; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00C996–00C9B5, inclusive.
cdi_nodv_entry_00c996:
db 0x48, 0xE7, 0x80, 0x80 ; 00C996: provisional 68k movem.l d0/a0, -(a7)
db 0x41, 0xEE, 0xA8, 0xFA ; 00C99A: provisional 68k lea.l -$5706(a6), a0
db 0x42, 0x40 ; 00C99E: provisional 68k clr.w d0
db 0x4A, 0x18 ; 00C9A0: provisional 68k tst.b (a0)+
db 0x67, 0x0C ; 00C9A2: provisional 68k beq.b $c9b0
db 0x52, 0x40 ; 00C9A4: provisional 68k addq.w #$1, d0
db 0xB0, 0x7C, 0x00, 0x02 ; 00C9A6: provisional 68k cmp.w #$2, d0
db 0x66, 0xF4 ; 00C9AA: provisional 68k bne.b $c9a0
db 0x00, 0x3C, 0x00, 0x01 ; 00C9AC: provisional 68k ori.b #$1, ccr
db 0x4C, 0xDF, 0x01, 0x01 ; 00C9B0: provisional 68k movem.l (a7)+, d0/a0
db 0x4E, 0x75 ; 00C9B4: provisional 68k rts 
