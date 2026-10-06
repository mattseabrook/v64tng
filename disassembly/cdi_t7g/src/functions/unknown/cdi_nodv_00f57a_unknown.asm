; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00F57A–00F597, inclusive.
cdi_nodv_entry_00f57a:
db 0xFC, 0x64 ; file 00F57A
db 0x3F, 0x3C, 0x00, 0x02 ; 00F57C: provisional 68k move.w #$2, -(a7)
db 0x61, 0x00, 0xF9, 0x32 ; 00F580: provisional 68k bsr.w $eeb4
db 0x42, 0xAE, 0xAC, 0x8E ; 00F584: provisional 68k clr.l -$5372(a6)
db 0x3D, 0x7C, 0x00, 0x00, 0xAC, 0x8A ; 00F588: provisional 68k move.w #$0, -$5376(a6)
db 0x42, 0x6E, 0xAC, 0x8C ; 00F58E: provisional 68k clr.w -$5374(a6)
db 0x4C, 0xDF, 0x3F, 0xFF ; 00F592: provisional 68k movem.l (a7)+, d0-d7/a0-a5
db 0x4E, 0x75 ; 00F596: provisional 68k rts 
