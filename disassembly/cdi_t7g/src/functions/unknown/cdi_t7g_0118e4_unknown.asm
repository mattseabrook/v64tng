; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 0118E4–011919, inclusive.
cdi_t7g_entry_0118e4:
db 0x48, 0xE7, 0xFF, 0xFC ; 0118E4: provisional 68k movem.l d0-d7/a0-a5, -(a7)
db 0x4C, 0xEF, 0x03, 0x00, 0x00, 0x3C ; 0118E8: provisional 68k movem.l $3c(a7), a0-a1
db 0x61, 0x00, 0x06, 0x42 ; 0118EE: provisional 68k bsr.w $11f32
db 0xE2, 0x4F ; 0118F2: provisional 68k lsr.w #$1, d7
db 0x53, 0x47 ; 0118F4: provisional 68k subq.w #$1, d7
db 0x6B, 0x14 ; 0118F6: provisional 68k bmi.b $1190c
db 0x48, 0xE7, 0x03, 0x18 ; 0118F8: provisional 68k movem.l d6-d7/a3-a4, -(a7)
db 0x61, 0x00, 0x05, 0x52 ; 0118FC: provisional 68k bsr.w $11e50
db 0x4C, 0xDF, 0x18, 0xC0 ; 011900: provisional 68k movem.l (a7)+, d6-d7/a3-a4
db 0x58, 0x4B ; 011904: provisional 68k addq.w #$4, a3
db 0x50, 0x4C ; 011906: provisional 68k addq.w #$8, a4
db 0x51, 0xCF, 0xFF, 0xEE ; 011908: provisional 68k dbra d7, $118f8
db 0x4C, 0xDF, 0x3F, 0xFF ; 01190C: provisional 68k movem.l (a7)+, d0-d7/a0-a5
db 0x2F, 0x57, 0x00, 0x10 ; 011910: provisional 68k move.l (a7), $10(a7)
db 0x4F, 0xEF, 0x00, 0x10 ; 011914: provisional 68k lea.l $10(a7), a7
db 0x4E, 0x75 ; 011918: provisional 68k rts 
