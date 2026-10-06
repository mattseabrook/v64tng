; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00CC70–00CCA9, inclusive.
cdi_t7g_entry_00cc70:
db 0x30, 0x2E, 0xAB, 0x90 ; 00CC70: provisional 68k move.w -$5470(a6), d0
db 0x43, 0xEE, 0xAB, 0xA8 ; 00CC74: provisional 68k lea.l -$5458(a6), a1
db 0x24, 0x6E, 0xAB, 0x98 ; 00CC78: provisional 68k movea.l -$5468(a6), a2
db 0x42, 0x69, 0x00, 0x00 ; 00CC7C: provisional 68k clr.w $0(a1)
db 0x33, 0x6E, 0xAB, 0x92, 0x00, 0x02 ; 00CC80: provisional 68k move.w -$546e(a6), $2(a1)
db 0x24, 0x88 ; 00CC86: provisional 68k move.l a0, (a2)
db 0x36, 0x00 ; 00CC88: provisional 68k move.w d0, d3
db 0x20, 0x49 ; 00CC8A: provisional 68k movea.l a1, a0
db 0x30, 0x2E, 0xAB, 0x78 ; 00CC8C: provisional 68k move.w -$5488(a6), d0
db 0x32, 0x3C, 0x00, 0x3B ; 00CC90: provisional 68k move.w #$3b, d1
db 0x34, 0x3C, 0x00, 0x01 ; 00CC94: provisional 68k move.w #$1, d2
db 0x4E, 0x40, 0x00, 0x8E ; 00CC98: provisional 68k trap #0 ; OS-9 service word $008E
db 0x65, 0x02 ; 00CC9C: provisional 68k bcs.b $cca0
db 0x4E, 0x75 ; 00CC9E: provisional 68k rts 
db 0x42, 0xE7 ; 00CCA0: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 00CCA2: provisional 68k pea.l $ccac(pc)
db 0x61, 0x00, 0xF0, 0xA8 ; 00CCA6: provisional 68k bsr.w $bd50
