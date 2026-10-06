; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 010444–010487, inclusive.
cdi_nodv_entry_010444:
db 0x48, 0xE7, 0xFF, 0x00 ; 010444: provisional 68k movem.l d0-d7, -(a7)
db 0x42, 0x6E, 0xC0, 0xCE ; 010448: provisional 68k clr.w -$3f32(a6)
db 0x4C, 0xAF, 0x00, 0x30, 0x00, 0x24 ; 01044C: provisional 68k movem.w $24(a7), d4-d5
db 0x98, 0x6E, 0xC0, 0xD4 ; 010452: provisional 68k sub.w -$3f2c(a6), d4
db 0x9A, 0x6E, 0xC0, 0xD6 ; 010456: provisional 68k sub.w -$3f2a(a6), d5
db 0x3D, 0x44, 0xC0, 0xD8 ; 01045A: provisional 68k move.w d4, -$3f28(a6)
db 0x3D, 0x45, 0xC0, 0xDA ; 01045E: provisional 68k move.w d5, -$3f26(a6)
db 0x4C, 0xAF, 0x00, 0xC0, 0x00, 0x28 ; 010462: provisional 68k movem.w $28(a7), d6-d7
db 0x3D, 0x46, 0xC0, 0xDC ; 010468: provisional 68k move.w d6, -$3f24(a6)
db 0x3D, 0x47, 0xC0, 0xDE ; 01046C: provisional 68k move.w d7, -$3f22(a6)
db 0x22, 0x2E, 0xC0, 0xE0 ; 010470: provisional 68k move.l -$3f20(a6), d1
db 0x46, 0x81 ; 010474: provisional 68k not.l d1
db 0x2D, 0x41, 0xC0, 0xE0 ; 010476: provisional 68k move.l d1, -$3f20(a6)
db 0x4C, 0xDF, 0x00, 0xFF ; 01047A: provisional 68k movem.l (a7)+, d0-d7
db 0x2F, 0x57, 0x00, 0x08 ; 01047E: provisional 68k move.l (a7), $8(a7)
db 0x4F, 0xEF, 0x00, 0x08 ; 010482: provisional 68k lea.l $8(a7), a7
db 0x4E, 0x75 ; 010486: provisional 68k rts 
