; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00E1C0–00E1E1, inclusive.
cdi_nodv_entry_00e1c0:
db 0x48, 0xE7, 0xFF, 0xFC ; 00E1C0: provisional 68k movem.l d0-d7/a0-a5, -(a7)
db 0x20, 0x2E, 0xAB, 0xB6 ; 00E1C4: provisional 68k move.l -$544a(a6), d0
db 0x67, 0x00, 0x00, 0x22 ; 00E1C8: provisional 68k beq.w $e1ec
db 0x2F, 0x00 ; 00E1CC: provisional 68k move.l d0, -(a7)
db 0x3F, 0x3C, 0x00, 0x00 ; 00E1CE: provisional 68k move.w #$0, -(a7)
db 0x61, 0x00, 0xF0, 0xC2 ; 00E1D2: provisional 68k bsr.w $d296
db 0x30, 0x2E, 0xAB, 0x14 ; 00E1D6: provisional 68k move.w -$54ec(a6), d0
db 0x32, 0x3C, 0x01, 0x1E ; 00E1DA: provisional 68k move.w #$11e, d1
db 0x4E, 0x40, 0x00, 0x8E ; 00E1DE: provisional 68k trap #0 ; OS-9 service word $008E
