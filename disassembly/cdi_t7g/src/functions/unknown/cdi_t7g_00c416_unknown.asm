; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00C416–00C44F, inclusive.
cdi_t7g_entry_00c416:
db 0x48, 0xE7, 0xD0, 0x00 ; 00C416: provisional 68k movem.l d0-d1/d3, -(a7)
db 0x36, 0x2F, 0x00, 0x10 ; 00C41A: provisional 68k move.w $10(a7), d3
db 0x00, 0x43, 0xC0, 0x00 ; 00C41E: provisional 68k ori.w #$c000, d3
db 0x36, 0x03 ; 00C422: provisional 68k move.w d3, d3
db 0x30, 0x2E, 0xAB, 0x14 ; 00C424: provisional 68k move.w -$54ec(a6), d0
db 0x32, 0x3C, 0x01, 0x26 ; 00C428: provisional 68k move.w #$126, d1
db 0x4E, 0x40, 0x00, 0x8E ; 00C42C: provisional 68k trap #0 ; OS-9 service word $008E
db 0x65, 0x0C ; 00C430: provisional 68k bcs.b $c43e
db 0x4C, 0xDF, 0x00, 0x0B ; 00C432: provisional 68k movem.l (a7)+, d0-d1/d3
db 0x2F, 0x57, 0x00, 0x02 ; 00C436: provisional 68k move.l (a7), $2(a7)
db 0x54, 0x4F ; 00C43A: provisional 68k addq.w #$2, a7
db 0x4E, 0x75 ; 00C43C: provisional 68k rts 
db 0x32, 0x3C, 0x80, 0x00 ; 00C43E: provisional 68k move.w #$8000, d1
db 0x61, 0x00, 0xF9, 0x3A ; 00C442: provisional 68k bsr.w $bd7e
db 0x73, 0x67 ; file 00C446
db 0x6D, 0x5F ; 00C448: provisional 68k blt.b $c4a9
db 0x6D, 0x61 ; 00C44A: provisional 68k blt.b $c4ad
db 0x74, 0x3A ; 00C44C: provisional 68k moveq #$3a, d2
db 0x20, 0x00 ; 00C44E: provisional 68k move.l d0, d0
