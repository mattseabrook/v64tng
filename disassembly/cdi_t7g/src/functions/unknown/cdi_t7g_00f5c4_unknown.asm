; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00F5C4–00F607, inclusive.
cdi_t7g_entry_00f5c4:
db 0x48, 0xE7, 0xFF, 0x00 ; 00F5C4: provisional 68k movem.l d0-d7, -(a7)
db 0x42, 0x6E, 0xC0, 0xCE ; 00F5C8: provisional 68k clr.w -$3f32(a6)
db 0x4C, 0xAF, 0x00, 0x30, 0x00, 0x24 ; 00F5CC: provisional 68k movem.w $24(a7), d4-d5
db 0x98, 0x6E, 0xC0, 0xD4 ; 00F5D2: provisional 68k sub.w -$3f2c(a6), d4
db 0x9A, 0x6E, 0xC0, 0xD6 ; 00F5D6: provisional 68k sub.w -$3f2a(a6), d5
db 0x3D, 0x44, 0xC0, 0xD8 ; 00F5DA: provisional 68k move.w d4, -$3f28(a6)
db 0x3D, 0x45, 0xC0, 0xDA ; 00F5DE: provisional 68k move.w d5, -$3f26(a6)
db 0x4C, 0xAF, 0x00, 0xC0, 0x00, 0x28 ; 00F5E2: provisional 68k movem.w $28(a7), d6-d7
db 0x3D, 0x46, 0xC0, 0xDC ; 00F5E8: provisional 68k move.w d6, -$3f24(a6)
db 0x3D, 0x47, 0xC0, 0xDE ; 00F5EC: provisional 68k move.w d7, -$3f22(a6)
db 0x22, 0x2E, 0xC0, 0xE0 ; 00F5F0: provisional 68k move.l -$3f20(a6), d1
db 0x46, 0x81 ; 00F5F4: provisional 68k not.l d1
db 0x2D, 0x41, 0xC0, 0xE0 ; 00F5F6: provisional 68k move.l d1, -$3f20(a6)
db 0x4C, 0xDF, 0x00, 0xFF ; 00F5FA: provisional 68k movem.l (a7)+, d0-d7
db 0x2F, 0x57, 0x00, 0x08 ; 00F5FE: provisional 68k move.l (a7), $8(a7)
db 0x4F, 0xEF, 0x00, 0x08 ; 00F602: provisional 68k lea.l $8(a7), a7
db 0x4E, 0x75 ; 00F606: provisional 68k rts 
