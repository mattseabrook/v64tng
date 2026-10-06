; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00D058–00D083, inclusive.
cdi_nodv_entry_00d058:
db 0x67, 0x04 ; 00D058: provisional 68k beq.b $d05e
db 0xB3, 0xC8 ; 00D05A: provisional 68k cmpa.l a0, a1
db 0x66, 0xD8 ; 00D05C: provisional 68k bne.b $d036
db 0x42, 0x6E, 0xA9, 0x0C ; 00D05E: provisional 68k clr.w -$56f4(a6)
db 0x4C, 0xDF, 0x0F, 0x00 ; 00D062: provisional 68k movem.l (a7)+, a0-a3
db 0x2E, 0x9F ; 00D066: provisional 68k move.l (a7)+, (a7)
db 0x4E, 0x75 ; 00D068: provisional 68k rts 
db 0x48, 0xE7, 0xFF, 0xFC ; 00D06A: provisional 68k movem.l d0-d7/a0-a5, -(a7)
db 0x61, 0x00, 0x01, 0x3A ; 00D06E: provisional 68k bsr.w $d1aa
db 0x61, 0x00, 0x01, 0x56 ; 00D072: provisional 68k bsr.w $d1ca
db 0x41, 0xFA, 0x00, 0xE0 ; 00D076: provisional 68k lea.l $d158(pc), a0
db 0x4E, 0x40, 0x00, 0x09 ; 00D07A: provisional 68k trap #0 ; OS-9 service word $0009
db 0x4C, 0xDF, 0x3F, 0xFF ; 00D07E: provisional 68k movem.l (a7)+, d0-d7/a0-a5
db 0x4E, 0x75 ; 00D082: provisional 68k rts 
