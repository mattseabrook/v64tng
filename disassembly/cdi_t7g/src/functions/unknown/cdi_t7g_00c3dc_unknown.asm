; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00C3DC–00C415, inclusive.
cdi_t7g_entry_00c3dc:
db 0x48, 0xE7, 0xD0, 0x00 ; 00C3DC: provisional 68k movem.l d0-d1/d3, -(a7)
db 0x36, 0x2F, 0x00, 0x10 ; 00C3E0: provisional 68k move.w $10(a7), d3
db 0x00, 0x43, 0x80, 0x00 ; 00C3E4: provisional 68k ori.w #$8000, d3
db 0x36, 0x03 ; 00C3E8: provisional 68k move.w d3, d3
db 0x30, 0x2E, 0xAA, 0x82 ; 00C3EA: provisional 68k move.w -$557e(a6), d0
db 0x32, 0x3C, 0x01, 0x13 ; 00C3EE: provisional 68k move.w #$113, d1
db 0x4E, 0x40, 0x00, 0x8E ; 00C3F2: provisional 68k trap #0 ; OS-9 service word $008E
db 0x65, 0x0C ; 00C3F6: provisional 68k bcs.b $c404
db 0x4C, 0xDF, 0x00, 0x0B ; 00C3F8: provisional 68k movem.l (a7)+, d0-d1/d3
db 0x2F, 0x57, 0x00, 0x02 ; 00C3FC: provisional 68k move.l (a7), $2(a7)
db 0x54, 0x4F ; 00C400: provisional 68k addq.w #$2, a7
db 0x4E, 0x75 ; 00C402: provisional 68k rts 
db 0x32, 0x3C, 0x80, 0x00 ; 00C404: provisional 68k move.w #$8000, d1
db 0x61, 0x00, 0xF9, 0x74 ; 00C408: provisional 68k bsr.w $bd7e
db 0x73, 0x67 ; file 00C40C
db 0x6D, 0x5F ; 00C40E: provisional 68k blt.b $c46f
db 0x6D, 0x76 ; 00C410: provisional 68k blt.b $c488
db 0x74, 0x3A ; 00C412: provisional 68k moveq #$3a, d2
db 0x20, 0x00 ; 00C414: provisional 68k move.l d0, d0
