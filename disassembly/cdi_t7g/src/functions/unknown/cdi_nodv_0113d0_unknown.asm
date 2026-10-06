; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 0113D0–011401, inclusive.
cdi_nodv_entry_0113d0:
db 0x41, 0xF6, 0x28, 0x00 ; 0113D0: provisional 68k lea.l (a6, d2.l), a0
db 0x3B, 0x41, 0x00, 0x00 ; 0113D4: provisional 68k move.w d1, $0(a5)
db 0x3B, 0x40, 0x00, 0x02 ; 0113D8: provisional 68k move.w d0, $2(a5)
db 0x3B, 0x40, 0x00, 0x04 ; 0113DC: provisional 68k move.w d0, $4(a5)
db 0x42, 0x6D, 0x00, 0x06 ; 0113E0: provisional 68k clr.w $6(a5)
db 0x2B, 0x48, 0x00, 0x08 ; 0113E4: provisional 68k move.l a0, $8(a5)
db 0x2B, 0x48, 0x00, 0x0C ; 0113E8: provisional 68k move.l a0, $c(a5)
db 0x55, 0x40 ; 0113EC: provisional 68k subq.w #$2, d0
db 0x43, 0xF0, 0x10, 0x00 ; 0113EE: provisional 68k lea.l (a0, d1.w), a1
db 0x21, 0x49, 0x00, 0x14 ; 0113F2: provisional 68k move.l a1, $14(a0)
db 0x20, 0x49 ; 0113F6: provisional 68k movea.l a1, a0
db 0x51, 0xC8, 0xFF, 0xF4 ; 0113F8: provisional 68k dbra d0, $113ee
db 0x42, 0xA8, 0x00, 0x14 ; 0113FC: provisional 68k clr.l $14(a0)
db 0x4E, 0x75 ; 011400: provisional 68k rts 
