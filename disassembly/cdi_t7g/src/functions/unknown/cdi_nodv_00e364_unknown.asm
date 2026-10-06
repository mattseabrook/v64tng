; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00E364–00E391, inclusive.
cdi_nodv_entry_00e364:
db 0x0C, 0x69 ; file 00E364
db 0x00, 0x00, 0x00, 0x1C ; 00E366: provisional 68k ori.b #$1c, d0
db 0x66, 0x10 ; 00E36A: provisional 68k bne.b $e37c
db 0x2F, 0x09 ; 00E36C: provisional 68k move.l a1, -(a7)
db 0x22, 0x69, 0x00, 0x3C ; 00E36E: provisional 68k movea.l $3c(a1), a1
db 0x61, 0x00, 0xFF, 0xF0 ; 00E372: provisional 68k bsr.w $e364
db 0x22, 0x5F ; 00E376: provisional 68k movea.l (a7)+, a1
db 0x22, 0x69, 0x00, 0x40 ; 00E378: provisional 68k movea.l $40(a1), a1
db 0x3B, 0x7C, 0xFF, 0xFF, 0x00, 0x3A ; 00E37C: provisional 68k move.w #$ffff, $3a(a5)
db 0x3F, 0x29, 0x00, 0x24 ; 00E382: provisional 68k move.w $24(a1), -(a7)
db 0x3F, 0x29, 0x00, 0x28 ; 00E386: provisional 68k move.w $28(a1), -(a7)
db 0x2F, 0x0D ; 00E38A: provisional 68k move.l a5, -(a7)
db 0x61, 0x00, 0x09, 0xA4 ; 00E38C: provisional 68k bsr.w $ed32
db 0x4E, 0x75 ; 00E390: provisional 68k rts 
