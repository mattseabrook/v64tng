; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00C948–00C999, inclusive.
cdi_t7g_entry_00c948:
db 0x3F, 0x3C, 0x01, 0x51 ; 00C948: provisional 68k move.w #$151, -(a7)
db 0x61, 0x00, 0xFA, 0x8E ; 00C94C: provisional 68k bsr.w $c3dc
db 0x20, 0x2E, 0xAA, 0x88 ; 00C950: provisional 68k move.l -$5578(a6), d0
db 0x67, 0x0E ; 00C954: provisional 68k beq.b $c964
db 0x20, 0x40 ; 00C956: provisional 68k movea.l d0, a0
db 0x20, 0x2E, 0xAA, 0x8C ; 00C958: provisional 68k move.l -$5574(a6), d0
db 0x42, 0x41 ; 00C95C: provisional 68k clr.w d1
db 0x34, 0x3C, 0x00, 0x3C ; 00C95E: provisional 68k move.w #$3c, d2
db 0x4E, 0x90 ; 00C962: provisional 68k jsr (a0)
db 0x4E, 0x75 ; 00C964: provisional 68k rts 
db 0x3F, 0x3C, 0x00, 0x11 ; 00C966: provisional 68k move.w #$11, -(a7)
db 0x61, 0x00, 0xFA, 0x70 ; 00C96A: provisional 68k bsr.w $c3dc
db 0x4E, 0x75 ; 00C96E: provisional 68k rts 
db 0x3D, 0x7C, 0xFF, 0xFF, 0xAA, 0x9A ; 00C970: provisional 68k move.w #$ffff, -$5566(a6)
db 0x30, 0x2E, 0xAA, 0x82 ; 00C976: provisional 68k move.w -$557e(a6), d0
db 0x32, 0x3C, 0x01, 0x00 ; 00C97A: provisional 68k move.w #$100, d1
db 0x4E, 0x40, 0x00, 0x8E ; 00C97E: provisional 68k trap #0 ; OS-9 service word $008E
db 0x3F, 0x3C, 0x00, 0x00 ; 00C982: provisional 68k move.w #$0, -(a7)
db 0x61, 0x00, 0xFA, 0x54 ; 00C986: provisional 68k bsr.w $c3dc
db 0x34, 0x3C, 0x00, 0x3D ; 00C98A: provisional 68k move.w #$3d, d2
db 0x61, 0x00, 0x00, 0x48 ; 00C98E: provisional 68k bsr.w $c9d8
db 0x61, 0x00, 0x00, 0x56 ; 00C992: provisional 68k bsr.w $c9ea
db 0x4E, 0x75 ; 00C996: provisional 68k rts 
db 0x08, 0x01 ; file 00C998
