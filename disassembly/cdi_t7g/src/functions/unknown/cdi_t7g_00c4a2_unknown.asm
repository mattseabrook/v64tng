; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00C4A2–00C4D7, inclusive.
cdi_t7g_entry_00c4a2:
db 0x48, 0xE7, 0xFF, 0xFC ; 00C4A2: provisional 68k movem.l d0-d7/a0-a5, -(a7)
db 0x4A, 0x6E, 0xAA, 0x86 ; 00C4A6: provisional 68k tst.w -$557a(a6)
db 0x67, 0x12 ; 00C4AA: provisional 68k beq.b $c4be
db 0x30, 0x2E, 0xAA, 0x82 ; 00C4AC: provisional 68k move.w -$557e(a6), d0
db 0x32, 0x3C, 0x01, 0x10 ; 00C4B0: provisional 68k move.w #$110, d1
db 0x4E, 0x40, 0x00, 0x8E ; 00C4B4: provisional 68k trap #0 ; OS-9 service word $008E
db 0x65, 0x0A ; 00C4B8: provisional 68k bcs.b $c4c4
db 0x42, 0x6E, 0xAA, 0x86 ; 00C4BA: provisional 68k clr.w -$557a(a6)
db 0x4C, 0xDF, 0x3F, 0xFF ; 00C4BE: provisional 68k movem.l (a7)+, d0-d7/a0-a5
db 0x4E, 0x75 ; 00C4C2: provisional 68k rts 
db 0x32, 0x01 ; 00C4C4: provisional 68k move.w d1, d1
db 0x61, 0x00, 0xF8, 0xB6 ; 00C4C6: provisional 68k bsr.w $bd7e
db 0x6D, 0x76 ; 00C4CA: provisional 68k blt.b $c542
db 0x6D, 0x5F ; 00C4CC: provisional 68k blt.b $c52d
db 0x6F, 0x66 ; 00C4CE: provisional 68k ble.b $c536
db 0x66, 0x3A ; 00C4D0: provisional 68k bne.b $c50c
db 0x20, 0x21 ; 00C4D2: provisional 68k move.l -(a1), d0
db 0x21, 0x21 ; 00C4D4: provisional 68k move.l -(a1), -(a0)
db 0x00, 0x00 ; file 00C4D6
