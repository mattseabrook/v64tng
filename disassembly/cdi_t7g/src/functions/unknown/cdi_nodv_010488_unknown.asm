; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 010488–0104E3, inclusive.
cdi_nodv_entry_010488:
db 0x48, 0xE7, 0x7F, 0xFC ; 010488: provisional 68k movem.l d1-d7/a0-a5, -(a7)
db 0x42, 0x2E, 0xC0, 0xF0 ; 01048C: provisional 68k clr.b -$3f10(a6)
db 0x61, 0x00, 0x00, 0xD8 ; 010490: provisional 68k bsr.w $1056a
db 0x67, 0x2A ; 010494: provisional 68k beq.b $104c0
db 0x61, 0x00, 0x00, 0x52 ; 010496: provisional 68k bsr.w $104ea
db 0x20, 0x2E, 0xC0, 0xE4 ; 01049A: provisional 68k move.l -$3f1c(a6), d0
db 0x67, 0x08 ; 01049E: provisional 68k beq.b $104a8
db 0x20, 0x40 ; 0104A0: provisional 68k movea.l d0, a0
db 0x20, 0x2E, 0xC0, 0xE8 ; 0104A2: provisional 68k move.l -$3f18(a6), d0
db 0x4E, 0x90 ; 0104A6: provisional 68k jsr (a0)
db 0x26, 0x79, 0x00, 0x00, 0x00, 0x00 ; 0104A8: provisional 68k movea.l $0.l, a3
db 0x2D, 0x6B, 0x00, 0x54, 0xC0, 0xF2 ; 0104AE: provisional 68k move.l $54(a3), -$3f0e(a6)
db 0x4C, 0xDF, 0x3F, 0xFE ; 0104B4: provisional 68k movem.l (a7)+, d1-d7/a0-a5
db 0x70, 0x01 ; 0104B8: provisional 68k moveq #$1, d0
db 0x00, 0x3C, 0x00, 0x01 ; 0104BA: provisional 68k ori.b #$1, ccr
db 0x4E, 0x75 ; 0104BE: provisional 68k rts 
db 0x70, 0x00 ; 0104C0: provisional 68k moveq #$0, d0
db 0x26, 0x79, 0x00, 0x00, 0x00, 0x00 ; 0104C2: provisional 68k movea.l $0.l, a3
db 0x22, 0x2B, 0x00, 0x54 ; 0104C8: provisional 68k move.l $54(a3), d1
db 0x92, 0xAE, 0xC0, 0xF2 ; 0104CC: provisional 68k sub.l -$3f0e(a6), d1
db 0x0C, 0x81, 0x00, 0x02, 0xBF, 0x20 ; 0104D0: provisional 68k cmpi.l #$2bf20, d1
db 0x6F, 0x02 ; 0104D6: provisional 68k ble.b $104da
db 0x70, 0x02 ; 0104D8: provisional 68k moveq #$2, d0
db 0x4C, 0xDF, 0x3F, 0xFE ; 0104DA: provisional 68k movem.l (a7)+, d1-d7/a0-a5
db 0x02, 0x3C, 0x00, 0x0E ; 0104DE: provisional 68k andi.b #$e, ccr
db 0x4E, 0x75 ; 0104E2: provisional 68k rts 
