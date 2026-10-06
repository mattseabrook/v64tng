; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00C99A–00C9D7, inclusive.
cdi_t7g_entry_00c99a:
db 0x00, 0x03 ; file 00C99A
db 0x66, 0x20 ; 00C99C: provisional 68k bne.b $c9be
db 0x3D, 0x7C, 0xFF, 0xFF, 0xAA, 0x9C ; 00C99E: provisional 68k move.w #$ffff, -$5564(a6)
db 0x30, 0x2E, 0xAB, 0x14 ; 00C9A4: provisional 68k move.w -$54ec(a6), d0
db 0x32, 0x3C, 0x01, 0x1E ; 00C9A8: provisional 68k move.w #$11e, d1
db 0x4E, 0x40, 0x00, 0x8E ; 00C9AC: provisional 68k trap #0 ; OS-9 service word $008E
db 0x34, 0x3C, 0x00, 0x3E ; 00C9B0: provisional 68k move.w #$3e, d2
db 0x61, 0x00, 0x00, 0x22 ; 00C9B4: provisional 68k bsr.w $c9d8
db 0x61, 0x00, 0x00, 0x30 ; 00C9B8: provisional 68k bsr.w $c9ea
db 0x4E, 0x75 ; 00C9BC: provisional 68k rts 
db 0x4E, 0x75 ; 00C9BE: provisional 68k rts 
db 0x30, 0x2E, 0xAB, 0x14 ; 00C9C0: provisional 68k move.w -$54ec(a6), d0
db 0x32, 0x3C, 0x01, 0x1E ; 00C9C4: provisional 68k move.w #$11e, d1
db 0x4E, 0x40, 0x00, 0x8E ; 00C9C8: provisional 68k trap #0 ; OS-9 service word $008E
db 0x3D, 0x7C, 0xFF, 0xFF, 0xAA, 0x9C ; 00C9CC: provisional 68k move.w #$ffff, -$5564(a6)
db 0x61, 0x00, 0x00, 0x16 ; 00C9D2: provisional 68k bsr.w $c9ea
db 0x4E, 0x75 ; 00C9D6: provisional 68k rts 
