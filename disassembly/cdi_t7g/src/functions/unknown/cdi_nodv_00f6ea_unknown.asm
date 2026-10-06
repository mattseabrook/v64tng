; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00F6EA–00F721, inclusive.
cdi_nodv_entry_00f6ea:
db 0x30, 0x2E ; file 00F6EA
db 0xAC, 0x8A ; 00F6EC: provisional 68k dc.w $ac8a
db 0x66, 0x02 ; 00F6EE: provisional 68k bne.b $f6f2
db 0x4E, 0x75 ; 00F6F0: provisional 68k rts 
db 0x30, 0x2E, 0xAC, 0xBA ; 00F6F2: provisional 68k move.w -$5346(a6), d0
db 0x67, 0x04 ; 00F6F6: provisional 68k beq.b $f6fc
db 0x61, 0x00, 0x00, 0xA2 ; 00F6F8: provisional 68k bsr.w $f79c
db 0x30, 0x2E, 0xAC, 0x8C ; 00F6FC: provisional 68k move.w -$5374(a6), d0
db 0xB0, 0x7C, 0x00, 0x00 ; 00F700: provisional 68k cmp.w #$0, d0
db 0x66, 0x02 ; 00F704: provisional 68k bne.b $f708
db 0x4E, 0x75 ; 00F706: provisional 68k rts 
db 0xB0, 0x7C, 0x00, 0x02 ; 00F708: provisional 68k cmp.w #$2, d0
db 0x66, 0x02 ; 00F70C: provisional 68k bne.b $f710
db 0x4E, 0x75 ; 00F70E: provisional 68k rts 
db 0xB0, 0x7C, 0x00, 0x01 ; 00F710: provisional 68k cmp.w #$1, d0
db 0x66, 0x0A ; 00F714: provisional 68k bne.b $f720
db 0x61, 0x00, 0x00, 0xE4 ; 00F716: provisional 68k bsr.w $f7fc
db 0x61, 0x00, 0x00, 0xD2 ; 00F71A: provisional 68k bsr.w $f7ee
db 0x4E, 0x75 ; 00F71E: provisional 68k rts 
db 0xB0, 0x7C ; file 00F720
