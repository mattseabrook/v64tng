; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00D7C8–00D819, inclusive.
cdi_nodv_entry_00d7c8:
db 0x3F, 0x3C, 0x01, 0x51 ; 00D7C8: provisional 68k move.w #$151, -(a7)
db 0x61, 0x00, 0xFA, 0x8E ; 00D7CC: provisional 68k bsr.w $d25c
db 0x20, 0x2E, 0xAA, 0x88 ; 00D7D0: provisional 68k move.l -$5578(a6), d0
db 0x67, 0x0E ; 00D7D4: provisional 68k beq.b $d7e4
db 0x20, 0x40 ; 00D7D6: provisional 68k movea.l d0, a0
db 0x20, 0x2E, 0xAA, 0x8C ; 00D7D8: provisional 68k move.l -$5574(a6), d0
db 0x42, 0x41 ; 00D7DC: provisional 68k clr.w d1
db 0x34, 0x3C, 0x00, 0x3C ; 00D7DE: provisional 68k move.w #$3c, d2
db 0x4E, 0x90 ; 00D7E2: provisional 68k jsr (a0)
db 0x4E, 0x75 ; 00D7E4: provisional 68k rts 
db 0x3F, 0x3C, 0x00, 0x11 ; 00D7E6: provisional 68k move.w #$11, -(a7)
db 0x61, 0x00, 0xFA, 0x70 ; 00D7EA: provisional 68k bsr.w $d25c
db 0x4E, 0x75 ; 00D7EE: provisional 68k rts 
db 0x3D, 0x7C, 0xFF, 0xFF, 0xAA, 0x9A ; 00D7F0: provisional 68k move.w #$ffff, -$5566(a6)
db 0x30, 0x2E, 0xAA, 0x82 ; 00D7F6: provisional 68k move.w -$557e(a6), d0
db 0x32, 0x3C, 0x01, 0x00 ; 00D7FA: provisional 68k move.w #$100, d1
db 0x4E, 0x40, 0x00, 0x8E ; 00D7FE: provisional 68k trap #0 ; OS-9 service word $008E
db 0x3F, 0x3C, 0x00, 0x00 ; 00D802: provisional 68k move.w #$0, -(a7)
db 0x61, 0x00, 0xFA, 0x54 ; 00D806: provisional 68k bsr.w $d25c
db 0x34, 0x3C, 0x00, 0x3D ; 00D80A: provisional 68k move.w #$3d, d2
db 0x61, 0x00, 0x00, 0x48 ; 00D80E: provisional 68k bsr.w $d858
db 0x61, 0x00, 0x00, 0x56 ; 00D812: provisional 68k bsr.w $d86a
db 0x4E, 0x75 ; 00D816: provisional 68k rts 
db 0x08, 0x01 ; file 00D818
