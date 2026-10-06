; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 0103FA–010443, inclusive.
cdi_nodv_entry_0103fa:
db 0x48, 0xE7, 0xFF, 0x00 ; 0103FA: provisional 68k movem.l d0-d7, -(a7)
db 0x4C, 0xAF, 0x00, 0xC0, 0x00, 0x24 ; 0103FE: provisional 68k movem.w $24(a7), d6-d7
db 0x3D, 0x46, 0xC0, 0xD4 ; 010404: provisional 68k move.w d6, -$3f2c(a6)
db 0x3D, 0x47, 0xC0, 0xD6 ; 010408: provisional 68k move.w d7, -$3f2a(a6)
db 0x9E, 0x6E, 0xAD, 0xAC ; 01040C: provisional 68k sub.w -$5254(a6), d7
db 0xDC, 0x6E, 0xC0, 0x68 ; 010410: provisional 68k add.w -$3f98(a6), d6
db 0xDE, 0x6E, 0xC0, 0x6A ; 010414: provisional 68k add.w -$3f96(a6), d7
db 0x30, 0x2E, 0xC0, 0xCC ; 010418: provisional 68k move.w -$3f34(a6), d0
db 0x72, 0x59 ; 01041C: provisional 68k moveq #$59, d1
db 0x74, 0x04 ; 01041E: provisional 68k moveq #$4, d2
db 0x26, 0x06 ; 010420: provisional 68k move.l d6, d3
db 0x4E, 0x40, 0x00, 0x8E ; 010422: provisional 68k trap #0 ; OS-9 service word $008E
db 0x36, 0x06 ; 010426: provisional 68k move.w d6, d3
db 0x48, 0x43 ; 010428: provisional 68k swap d3
db 0x36, 0x07 ; 01042A: provisional 68k move.w d7, d3
db 0x30, 0x2E, 0xAD, 0xA2 ; 01042C: provisional 68k move.w -$525e(a6), d0
db 0x32, 0x3C, 0x00, 0x52 ; 010430: provisional 68k move.w #$52, d1
db 0x34, 0x3C, 0x00, 0x06 ; 010434: provisional 68k move.w #$6, d2
db 0x4E, 0x40, 0x00, 0x8E ; 010438: provisional 68k trap #0 ; OS-9 service word $008E
db 0x4C, 0xDF, 0x00, 0xFF ; 01043C: provisional 68k movem.l (a7)+, d0-d7
db 0x2E, 0x9F ; 010440: provisional 68k move.l (a7)+, (a7)
db 0x4E, 0x75 ; 010442: provisional 68k rts 
