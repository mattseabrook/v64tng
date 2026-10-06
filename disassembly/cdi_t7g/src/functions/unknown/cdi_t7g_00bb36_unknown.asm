; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00BB36–00BB77, inclusive.
cdi_t7g_entry_00bb36:
db 0x41, 0xEE, 0xA8, 0xFA ; 00BB36: provisional 68k lea.l -$5706(a6), a0
db 0x42, 0x40 ; 00BB3A: provisional 68k clr.w d0
db 0x4A, 0x18 ; 00BB3C: provisional 68k tst.b (a0)+
db 0x67, 0x24 ; 00BB3E: provisional 68k beq.b $bb64
db 0x52, 0x40 ; 00BB40: provisional 68k addq.w #$1, d0
db 0xB0, 0x7C, 0x00, 0x02 ; 00BB42: provisional 68k cmp.w #$2, d0
db 0x66, 0xF4 ; 00BB46: provisional 68k bne.b $bb3c
db 0x32, 0x3C, 0x80, 0x00 ; 00BB48: provisional 68k move.w #$8000, d1
db 0x61, 0x00, 0x02, 0x30 ; 00BB4C: provisional 68k bsr.w $bd7e
db 0x68, 0x69 ; 00BB50: provisional 68k bvc.b $bbbb
db 0x5F, 0x61 ; 00BB52: provisional 68k subq.w #$7, -(a1)
db 0x6C, 0x6C ; 00BB54: provisional 68k bge.b $bbc2
db 0x63, 0x6F ; 00BB56: provisional 68k bls.b $bbc7
db 0x61, 0x74 ; 00BB58: provisional 68k bsr.b $bbce
db 0x65, 0x3A ; 00BB5A: provisional 68k bcs.b $bb96
db 0x20, 0x45 ; 00BB5C: provisional 68k movea.l d5, a0
db 0x72, 0x72 ; 00BB5E: provisional 68k moveq #$72, d1
db 0x6F, 0x72 ; 00BB60: provisional 68k ble.b $bbd4
db 0x00, 0x00, 0x50, 0xE8 ; 00BB62: provisional 68k ori.b #$e8, d0
db 0xFF, 0xFF ; 00BB66: provisional 68k dc.w $ffff
db 0x3F, 0x00 ; 00BB68: provisional 68k move.w d0, -(a7)
db 0x41, 0xEE, 0xA8, 0xF2 ; 00BB6A: provisional 68k lea.l -$570e(a6), a0
db 0xE5, 0x40 ; 00BB6E: provisional 68k asl.w #$2, d0
db 0x20, 0x70, 0x00, 0x00 ; 00BB70: provisional 68k movea.l (a0, d0.w), a0
db 0x30, 0x1F ; 00BB74: provisional 68k move.w (a7)+, d0
db 0x4E, 0x75 ; 00BB76: provisional 68k rts 
