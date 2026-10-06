; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00EB6A–00EBBB, inclusive.
cdi_t7g_entry_00eb6a:
db 0x3F, 0x3C, 0x00, 0x08 ; 00EB6A: provisional 68k move.w #$8, -(a7)
db 0x2F, 0x08 ; 00EB6E: provisional 68k move.l a0, -(a7)
db 0x2D, 0x40, 0xCF, 0xE8 ; 00EB70: provisional 68k move.l d0, -$3018(a6)
db 0x2D, 0x69, 0x00, 0x02, 0xCF, 0xEC ; 00EB74: provisional 68k move.l $2(a1), -$3014(a6)
db 0x2D, 0x41, 0xCF, 0xF0 ; 00EB7A: provisional 68k move.l d1, -$3010(a6)
db 0x61, 0x00, 0x14, 0xFE ; 00EB7E: provisional 68k bsr.w $1007e
db 0x2D, 0x43, 0xCF, 0xE8 ; 00EB82: provisional 68k move.l d3, -$3018(a6)
db 0x2D, 0x4A, 0xCF, 0xEC ; 00EB86: provisional 68k move.l a2, -$3014(a6)
db 0x2D, 0x42, 0xCF, 0xF0 ; 00EB8A: provisional 68k move.l d2, -$3010(a6)
db 0x2F, 0x08 ; 00EB8E: provisional 68k move.l a0, -(a7)
db 0x61, 0x00, 0x16, 0xC4 ; 00EB90: provisional 68k bsr.w $10256
db 0x43, 0xE9, 0x00, 0x06 ; 00EB94: provisional 68k lea.l $6(a1), a1
db 0x2F, 0x09 ; 00EB98: provisional 68k move.l a1, -(a7)
db 0x2F, 0x08 ; 00EB9A: provisional 68k move.l a0, -(a7)
db 0x61, 0x00, 0x17, 0x84 ; 00EB9C: provisional 68k bsr.w $10322
db 0x4E, 0x75 ; 00EBA0: provisional 68k rts 
db 0x2F, 0x02 ; 00EBA2: provisional 68k move.l d2, -(a7)
db 0x42, 0x80 ; 00EBA4: provisional 68k clr.l d0
db 0x42, 0x81 ; 00EBA6: provisional 68k clr.l d1
db 0x42, 0x82 ; 00EBA8: provisional 68k clr.l d2
db 0x10, 0x29, 0x00, 0x00 ; 00EBAA: provisional 68k move.b $0(a1), d0
db 0x12, 0x29, 0x00, 0x01 ; 00EBAE: provisional 68k move.b $1(a1), d1
db 0x14, 0x29, 0x00, 0x02 ; 00EBB2: provisional 68k move.b $2(a1), d2
db 0x48, 0x80 ; 00EBB6: provisional 68k ext.w d0
db 0x48, 0x81 ; 00EBB8: provisional 68k ext.w d1
db 0x48, 0x82 ; 00EBBA: provisional 68k ext.w d2
