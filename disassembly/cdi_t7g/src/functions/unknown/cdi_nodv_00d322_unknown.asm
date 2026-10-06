; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00D322–00D357, inclusive.
cdi_nodv_entry_00d322:
db 0x48, 0xE7, 0xFF, 0xFC ; 00D322: provisional 68k movem.l d0-d7/a0-a5, -(a7)
db 0x4A, 0x6E, 0xAA, 0x86 ; 00D326: provisional 68k tst.w -$557a(a6)
db 0x67, 0x12 ; 00D32A: provisional 68k beq.b $d33e
db 0x30, 0x2E, 0xAA, 0x82 ; 00D32C: provisional 68k move.w -$557e(a6), d0
db 0x32, 0x3C, 0x01, 0x10 ; 00D330: provisional 68k move.w #$110, d1
db 0x4E, 0x40, 0x00, 0x8E ; 00D334: provisional 68k trap #0 ; OS-9 service word $008E
db 0x65, 0x0A ; 00D338: provisional 68k bcs.b $d344
db 0x42, 0x6E, 0xAA, 0x86 ; 00D33A: provisional 68k clr.w -$557a(a6)
db 0x4C, 0xDF, 0x3F, 0xFF ; 00D33E: provisional 68k movem.l (a7)+, d0-d7/a0-a5
db 0x4E, 0x75 ; 00D342: provisional 68k rts 
db 0x32, 0x01 ; 00D344: provisional 68k move.w d1, d1
db 0x61, 0x00, 0xF8, 0xB6 ; 00D346: provisional 68k bsr.w $cbfe
db 0x6D, 0x76 ; 00D34A: provisional 68k blt.b $d3c2
db 0x6D, 0x5F ; 00D34C: provisional 68k blt.b $d3ad
db 0x6F, 0x66 ; 00D34E: provisional 68k ble.b $d3b6
db 0x66, 0x3A ; 00D350: provisional 68k bne.b $d38c
db 0x20, 0x21 ; 00D352: provisional 68k move.l -(a1), d0
db 0x21, 0x21 ; 00D354: provisional 68k move.l -(a1), -(a0)
db 0x00, 0x00 ; file 00D356
