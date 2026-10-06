; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00CA4E–00CA7D, inclusive.
cdi_nodv_entry_00ca4e:
db 0x61, 0x63, 0x65, 0x73, 0x3A, 0x20, 0x00, 0x00 ; file 00CA4E
db 0x43, 0xEE, 0xA8, 0xFA ; 00CA56: provisional 68k lea.l -$5706(a6), a1
db 0x30, 0x3C, 0x00, 0x01 ; 00CA5A: provisional 68k move.w #$1, d0
db 0x42, 0xE7 ; 00CA5E: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 00CA60: provisional 68k pea.l $ca6a(pc)
db 0x61, 0x00, 0x01, 0x6A ; 00CA64: provisional 68k bsr.w $cbd0
db 0x60, 0x02 ; 00CA68: provisional 68k bra.b $ca6c
db 0x20, 0x00 ; 00CA6A: provisional 68k move.l d0, d0
db 0x1F, 0x19 ; 00CA6C: provisional 68k move.b (a1)+, -(a7)
db 0x61, 0x00, 0x00, 0xFA ; 00CA6E: provisional 68k bsr.w $cb6a
db 0x44, 0xDF ; 00CA72: provisional 68k move.w (a7)+, ccr
db 0x51, 0xC8, 0xFF, 0xE8 ; 00CA74: provisional 68k dbra d0, $ca5e
db 0x61, 0x00, 0x01, 0x3C ; 00CA78: provisional 68k bsr.w $cbb6
db 0x4E, 0x75 ; 00CA7C: provisional 68k rts 
