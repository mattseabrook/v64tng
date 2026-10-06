; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00F57A–00F5C3, inclusive.
cdi_t7g_entry_00f57a:
db 0x48, 0xE7, 0xFF, 0x00 ; 00F57A: provisional 68k movem.l d0-d7, -(a7)
db 0x4C, 0xAF, 0x00, 0xC0, 0x00, 0x24 ; 00F57E: provisional 68k movem.w $24(a7), d6-d7
db 0x3D, 0x46, 0xC0, 0xD4 ; 00F584: provisional 68k move.w d6, -$3f2c(a6)
db 0x3D, 0x47, 0xC0, 0xD6 ; 00F588: provisional 68k move.w d7, -$3f2a(a6)
db 0x9E, 0x6E, 0xAD, 0xAC ; 00F58C: provisional 68k sub.w -$5254(a6), d7
db 0xDC, 0x6E, 0xC0, 0x68 ; 00F590: provisional 68k add.w -$3f98(a6), d6
db 0xDE, 0x6E, 0xC0, 0x6A ; 00F594: provisional 68k add.w -$3f96(a6), d7
db 0x30, 0x2E, 0xC0, 0xCC ; 00F598: provisional 68k move.w -$3f34(a6), d0
db 0x72, 0x59 ; 00F59C: provisional 68k moveq #$59, d1
db 0x74, 0x04 ; 00F59E: provisional 68k moveq #$4, d2
db 0x26, 0x06 ; 00F5A0: provisional 68k move.l d6, d3
db 0x4E, 0x40, 0x00, 0x8E ; 00F5A2: provisional 68k trap #0 ; OS-9 service word $008E
db 0x36, 0x06 ; 00F5A6: provisional 68k move.w d6, d3
db 0x48, 0x43 ; 00F5A8: provisional 68k swap d3
db 0x36, 0x07 ; 00F5AA: provisional 68k move.w d7, d3
db 0x30, 0x2E, 0xAD, 0xA2 ; 00F5AC: provisional 68k move.w -$525e(a6), d0
db 0x32, 0x3C, 0x00, 0x52 ; 00F5B0: provisional 68k move.w #$52, d1
db 0x34, 0x3C, 0x00, 0x06 ; 00F5B4: provisional 68k move.w #$6, d2
db 0x4E, 0x40, 0x00, 0x8E ; 00F5B8: provisional 68k trap #0 ; OS-9 service word $008E
db 0x4C, 0xDF, 0x00, 0xFF ; 00F5BC: provisional 68k movem.l (a7)+, d0-d7
db 0x2E, 0x9F ; 00F5C0: provisional 68k move.l (a7)+, (a7)
db 0x4E, 0x75 ; 00F5C2: provisional 68k rts 
