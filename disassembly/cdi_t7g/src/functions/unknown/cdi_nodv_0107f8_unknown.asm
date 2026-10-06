; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 0107F8–010819, inclusive.
cdi_nodv_entry_0107f8:
db 0x08, 0x00, 0x00, 0x01 ; 0107F8: provisional 68k btst.b #$1, d0
db 0x66, 0x0E ; 0107FC: provisional 68k bne.b $1080c
db 0x30, 0x2E, 0xCF, 0xD2 ; 0107FE: provisional 68k move.w -$302e(a6), d0
db 0x34, 0x3C, 0x00, 0x05 ; 010802: provisional 68k move.w #$5, d2
db 0x61, 0x00, 0xFF, 0x82 ; 010806: provisional 68k bsr.w $1078a
db 0x4E, 0x75 ; 01080A: provisional 68k rts 
db 0x30, 0x2E, 0xCF, 0xD2 ; 01080C: provisional 68k move.w -$302e(a6), d0
db 0x34, 0x3C, 0x00, 0x06 ; 010810: provisional 68k move.w #$6, d2
db 0x61, 0x00, 0xFF, 0x74 ; 010814: provisional 68k bsr.w $1078a
db 0x4E, 0x75 ; 010818: provisional 68k rts 
