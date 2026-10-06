; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00D81A–00D857, inclusive.
cdi_nodv_entry_00d81a:
db 0x00, 0x03 ; file 00D81A
db 0x66, 0x20 ; 00D81C: provisional 68k bne.b $d83e
db 0x3D, 0x7C, 0xFF, 0xFF, 0xAA, 0x9C ; 00D81E: provisional 68k move.w #$ffff, -$5564(a6)
db 0x30, 0x2E, 0xAB, 0x14 ; 00D824: provisional 68k move.w -$54ec(a6), d0
db 0x32, 0x3C, 0x01, 0x1E ; 00D828: provisional 68k move.w #$11e, d1
db 0x4E, 0x40, 0x00, 0x8E ; 00D82C: provisional 68k trap #0 ; OS-9 service word $008E
db 0x34, 0x3C, 0x00, 0x3E ; 00D830: provisional 68k move.w #$3e, d2
db 0x61, 0x00, 0x00, 0x22 ; 00D834: provisional 68k bsr.w $d858
db 0x61, 0x00, 0x00, 0x30 ; 00D838: provisional 68k bsr.w $d86a
db 0x4E, 0x75 ; 00D83C: provisional 68k rts 
db 0x4E, 0x75 ; 00D83E: provisional 68k rts 
db 0x30, 0x2E, 0xAB, 0x14 ; 00D840: provisional 68k move.w -$54ec(a6), d0
db 0x32, 0x3C, 0x01, 0x1E ; 00D844: provisional 68k move.w #$11e, d1
db 0x4E, 0x40, 0x00, 0x8E ; 00D848: provisional 68k trap #0 ; OS-9 service word $008E
db 0x3D, 0x7C, 0xFF, 0xFF, 0xAA, 0x9C ; 00D84C: provisional 68k move.w #$ffff, -$5564(a6)
db 0x61, 0x00, 0x00, 0x16 ; 00D852: provisional 68k bsr.w $d86a
db 0x4E, 0x75 ; 00D856: provisional 68k rts 
