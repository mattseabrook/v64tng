; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00AD2E–00AD71, inclusive.
cdi_t7g_entry_00ad2e:
db 0x41, 0xEE, 0x80, 0x5E ; 00AD2E: provisional 68k lea.l -$7fa2(a6), a0
db 0x2D, 0x48, 0x80, 0x56 ; 00AD32: provisional 68k move.l a0, -$7faa(a6)
db 0x22, 0x48 ; 00AD36: provisional 68k movea.l a0, a1
db 0xD2, 0xFC, 0x00, 0x7A ; 00AD38: provisional 68k adda.w #$7a, a1
db 0x42, 0x40 ; 00AD3C: provisional 68k clr.w d0
db 0x32, 0x3C, 0x00, 0x4E ; 00AD3E: provisional 68k move.w #$4e, d1
db 0x31, 0x40, 0x00, 0x00 ; 00AD42: provisional 68k move.w d0, $0(a0)
db 0x21, 0x49, 0x00, 0x3E ; 00AD46: provisional 68k move.l a1, $3e(a0)
db 0x20, 0x49 ; 00AD4A: provisional 68k movea.l a1, a0
db 0xD2, 0xFC, 0x00, 0x7A ; 00AD4C: provisional 68k adda.w #$7a, a1
db 0x52, 0x40 ; 00AD50: provisional 68k addq.w #$1, d0
db 0x51, 0xC9, 0xFF, 0xEE ; 00AD52: provisional 68k dbra d1, $ad42
db 0x42, 0xA8, 0x00, 0x3E ; 00AD56: provisional 68k clr.l $3e(a0)
db 0x31, 0x40, 0x00, 0x00 ; 00AD5A: provisional 68k move.w d0, $0(a0)
db 0x42, 0xAE, 0x80, 0x52 ; 00AD5E: provisional 68k clr.l -$7fae(a6)
db 0x42, 0x6E, 0x80, 0x5C ; 00AD62: provisional 68k clr.w -$7fa4(a6)
db 0x3D, 0x7C, 0x00, 0x50, 0x80, 0x5A ; 00AD66: provisional 68k move.w #$50, -$7fa6(a6)
db 0x42, 0xAE, 0x80, 0x4E ; 00AD6C: provisional 68k clr.l -$7fb2(a6)
db 0x4E, 0x75 ; 00AD70: provisional 68k rts 
