; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 0107A6–0107D5, inclusive.
cdi_nodv_entry_0107a6:
db 0x30, 0x2E, 0xC0, 0xCE ; 0107A6: provisional 68k move.w -$3f32(a6), d0
db 0xB0, 0x6E, 0xCF, 0xD4 ; 0107AA: provisional 68k cmp.w -$302c(a6), d0
db 0x66, 0x02 ; 0107AE: provisional 68k bne.b $107b2
db 0x4E, 0x75 ; 0107B0: provisional 68k rts 
db 0x32, 0x2E, 0xCF, 0xD4 ; 0107B2: provisional 68k move.w -$302c(a6), d1
db 0x3D, 0x40, 0xCF, 0xD4 ; 0107B6: provisional 68k move.w d0, -$302c(a6)
db 0x4A, 0x6E, 0xCF, 0xD2 ; 0107BA: provisional 68k tst.w -$302e(a6)
db 0x66, 0x02 ; 0107BE: provisional 68k bne.b $107c2
db 0x4E, 0x75 ; 0107C0: provisional 68k rts 
db 0xB1, 0x41 ; 0107C2: provisional 68k eor.w d0, d1
db 0x08, 0x01, 0x00, 0x00 ; 0107C4: provisional 68k btst.b #$0, d1
db 0x67, 0x06 ; 0107C8: provisional 68k beq.b $107d0
db 0x61, 0x00, 0x00, 0x0A ; 0107CA: provisional 68k bsr.w $107d6
db 0x4E, 0x75 ; 0107CE: provisional 68k rts 
db 0x61, 0x00, 0x00, 0x26 ; 0107D0: provisional 68k bsr.w $107f8
db 0x4E, 0x75 ; 0107D4: provisional 68k rts 
