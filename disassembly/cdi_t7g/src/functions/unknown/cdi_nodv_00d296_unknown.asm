; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00D296–00D2CF, inclusive.
cdi_nodv_entry_00d296:
db 0x48, 0xE7, 0xD0, 0x00 ; 00D296: provisional 68k movem.l d0-d1/d3, -(a7)
db 0x36, 0x2F, 0x00, 0x10 ; 00D29A: provisional 68k move.w $10(a7), d3
db 0x00, 0x43, 0xC0, 0x00 ; 00D29E: provisional 68k ori.w #$c000, d3
db 0x36, 0x03 ; 00D2A2: provisional 68k move.w d3, d3
db 0x30, 0x2E, 0xAB, 0x14 ; 00D2A4: provisional 68k move.w -$54ec(a6), d0
db 0x32, 0x3C, 0x01, 0x26 ; 00D2A8: provisional 68k move.w #$126, d1
db 0x4E, 0x40, 0x00, 0x8E ; 00D2AC: provisional 68k trap #0 ; OS-9 service word $008E
db 0x65, 0x0C ; 00D2B0: provisional 68k bcs.b $d2be
db 0x4C, 0xDF, 0x00, 0x0B ; 00D2B2: provisional 68k movem.l (a7)+, d0-d1/d3
db 0x2F, 0x57, 0x00, 0x02 ; 00D2B6: provisional 68k move.l (a7), $2(a7)
db 0x54, 0x4F ; 00D2BA: provisional 68k addq.w #$2, a7
db 0x4E, 0x75 ; 00D2BC: provisional 68k rts 
db 0x32, 0x3C, 0x80, 0x00 ; 00D2BE: provisional 68k move.w #$8000, d1
db 0x61, 0x00, 0xF9, 0x3A ; 00D2C2: provisional 68k bsr.w $cbfe
db 0x73, 0x67 ; file 00D2C6
db 0x6D, 0x5F ; 00D2C8: provisional 68k blt.b $d329
db 0x6D, 0x61 ; 00D2CA: provisional 68k blt.b $d32d
db 0x74, 0x3A ; 00D2CC: provisional 68k moveq #$3a, d2
db 0x20, 0x00 ; 00D2CE: provisional 68k move.l d0, d0
