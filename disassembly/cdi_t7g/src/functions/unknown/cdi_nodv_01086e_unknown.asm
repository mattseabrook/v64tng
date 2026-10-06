; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 01086E–010897, inclusive.
cdi_nodv_entry_01086e:
db 0x61, 0x00, 0x01, 0xD2 ; 01086E: provisional 68k bsr.w $10a42
db 0xB0, 0x6E, 0xCF, 0xD2 ; 010872: provisional 68k cmp.w -$302e(a6), d0
db 0x66, 0x02 ; 010876: provisional 68k bne.b $1087a
db 0x4E, 0x75 ; 010878: provisional 68k rts 
db 0x4A, 0x6E, 0xCF, 0xD2 ; 01087A: provisional 68k tst.w -$302e(a6)
db 0x66, 0x0A ; 01087E: provisional 68k bne.b $1088a
db 0x3D, 0x40, 0xCF, 0xD2 ; 010880: provisional 68k move.w d0, -$302e(a6)
db 0x61, 0x00, 0x00, 0x12 ; 010884: provisional 68k bsr.w $10898
db 0x4E, 0x75 ; 010888: provisional 68k rts 
db 0x30, 0x2E, 0xCF, 0xD2 ; 01088A: provisional 68k move.w -$302e(a6), d0
db 0x61, 0x00, 0x00, 0x12 ; 01088E: provisional 68k bsr.w $108a2
db 0x42, 0x6E, 0xCF, 0xD2 ; 010892: provisional 68k clr.w -$302e(a6)
db 0x4E, 0x75 ; 010896: provisional 68k rts 
