; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00BBAE–00BBF1, inclusive.
cdi_nodv_entry_00bbae:
db 0x41, 0xEE, 0x80, 0x5E ; 00BBAE: provisional 68k lea.l -$7fa2(a6), a0
db 0x2D, 0x48, 0x80, 0x56 ; 00BBB2: provisional 68k move.l a0, -$7faa(a6)
db 0x22, 0x48 ; 00BBB6: provisional 68k movea.l a0, a1
db 0xD2, 0xFC, 0x00, 0x7A ; 00BBB8: provisional 68k adda.w #$7a, a1
db 0x42, 0x40 ; 00BBBC: provisional 68k clr.w d0
db 0x32, 0x3C, 0x00, 0x4E ; 00BBBE: provisional 68k move.w #$4e, d1
db 0x31, 0x40, 0x00, 0x00 ; 00BBC2: provisional 68k move.w d0, $0(a0)
db 0x21, 0x49, 0x00, 0x3E ; 00BBC6: provisional 68k move.l a1, $3e(a0)
db 0x20, 0x49 ; 00BBCA: provisional 68k movea.l a1, a0
db 0xD2, 0xFC, 0x00, 0x7A ; 00BBCC: provisional 68k adda.w #$7a, a1
db 0x52, 0x40 ; 00BBD0: provisional 68k addq.w #$1, d0
db 0x51, 0xC9, 0xFF, 0xEE ; 00BBD2: provisional 68k dbra d1, $bbc2
db 0x42, 0xA8, 0x00, 0x3E ; 00BBD6: provisional 68k clr.l $3e(a0)
db 0x31, 0x40, 0x00, 0x00 ; 00BBDA: provisional 68k move.w d0, $0(a0)
db 0x42, 0xAE, 0x80, 0x52 ; 00BBDE: provisional 68k clr.l -$7fae(a6)
db 0x42, 0x6E, 0x80, 0x5C ; 00BBE2: provisional 68k clr.w -$7fa4(a6)
db 0x3D, 0x7C, 0x00, 0x50, 0x80, 0x5A ; 00BBE6: provisional 68k move.w #$50, -$7fa6(a6)
db 0x42, 0xAE, 0x80, 0x4E ; 00BBEC: provisional 68k clr.l -$7fb2(a6)
db 0x4E, 0x75 ; 00BBF0: provisional 68k rts 
