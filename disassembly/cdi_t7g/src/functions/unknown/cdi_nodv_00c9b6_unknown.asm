; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00C9B6–00C9F7, inclusive.
cdi_nodv_entry_00c9b6:
db 0x41, 0xEE, 0xA8, 0xFA ; 00C9B6: provisional 68k lea.l -$5706(a6), a0
db 0x42, 0x40 ; 00C9BA: provisional 68k clr.w d0
db 0x4A, 0x18 ; 00C9BC: provisional 68k tst.b (a0)+
db 0x67, 0x24 ; 00C9BE: provisional 68k beq.b $c9e4
db 0x52, 0x40 ; 00C9C0: provisional 68k addq.w #$1, d0
db 0xB0, 0x7C, 0x00, 0x02 ; 00C9C2: provisional 68k cmp.w #$2, d0
db 0x66, 0xF4 ; 00C9C6: provisional 68k bne.b $c9bc
db 0x32, 0x3C, 0x80, 0x00 ; 00C9C8: provisional 68k move.w #$8000, d1
db 0x61, 0x00, 0x02, 0x30 ; 00C9CC: provisional 68k bsr.w $cbfe
db 0x68, 0x69 ; 00C9D0: provisional 68k bvc.b $ca3b
db 0x5F, 0x61 ; 00C9D2: provisional 68k subq.w #$7, -(a1)
db 0x6C, 0x6C ; 00C9D4: provisional 68k bge.b $ca42
db 0x63, 0x6F ; 00C9D6: provisional 68k bls.b $ca47
db 0x61, 0x74 ; 00C9D8: provisional 68k bsr.b $ca4e
db 0x65, 0x3A ; 00C9DA: provisional 68k bcs.b $ca16
db 0x20, 0x45 ; 00C9DC: provisional 68k movea.l d5, a0
db 0x72, 0x72 ; 00C9DE: provisional 68k moveq #$72, d1
db 0x6F, 0x72 ; 00C9E0: provisional 68k ble.b $ca54
db 0x00, 0x00, 0x50, 0xE8 ; 00C9E2: provisional 68k ori.b #$e8, d0
db 0xFF, 0xFF ; 00C9E6: provisional 68k dc.w $ffff
db 0x3F, 0x00 ; 00C9E8: provisional 68k move.w d0, -(a7)
db 0x41, 0xEE, 0xA8, 0xF2 ; 00C9EA: provisional 68k lea.l -$570e(a6), a0
db 0xE5, 0x40 ; 00C9EE: provisional 68k asl.w #$2, d0
db 0x20, 0x70, 0x00, 0x00 ; 00C9F0: provisional 68k movea.l (a0, d0.w), a0
db 0x30, 0x1F ; 00C9F4: provisional 68k move.w (a7)+, d0
db 0x4E, 0x75 ; 00C9F6: provisional 68k rts 
