; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00E462–00E48B, inclusive.
cdi_t7g_entry_00e462:
db 0x3D, 0x7C, 0x00, 0x00, 0xAB, 0xE4 ; 00E462: provisional 68k move.w #$0, -$541c(a6)
db 0x3F, 0x00 ; 00E468: provisional 68k move.w d0, -(a7)
db 0x30, 0x2E, 0xAB, 0xE6 ; 00E46A: provisional 68k move.w -$541a(a6), d0
db 0x32, 0x3C, 0x00, 0x05 ; 00E46E: provisional 68k move.w #$5, d1
db 0x4E, 0x40, 0x00, 0x8D ; 00E472: provisional 68k trap #0 ; OS-9 service word $008D
db 0x65, 0x56 ; 00E476: provisional 68k bcs.b $e4ce
db 0x30, 0x1F ; 00E478: provisional 68k move.w (a7)+, d0
db 0x20, 0x6E, 0xAC, 0x80 ; 00E47A: provisional 68k movea.l -$5380(a6), a0
db 0xE0, 0x82 ; 00E47E: provisional 68k asr.l #$8, d2
db 0xE6, 0x82 ; 00E480: provisional 68k asr.l #$3, d2
db 0x21, 0x42, 0x00, 0x2E ; 00E482: provisional 68k move.l d2, $2e(a0)
db 0x42, 0xAE, 0xAC, 0x80 ; 00E486: provisional 68k clr.l -$5380(a6)
db 0x4E, 0x75 ; 00E48A: provisional 68k rts 
