; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00F1DE–00F277, inclusive.
cdi_nodv_entry_00f1de:
db 0x48, 0xE7 ; file 00F1DE
db 0xC0, 0x80 ; 00F1E0: provisional 68k and.l d0, d0
db 0x20, 0x2E, 0xAC, 0x80 ; 00F1E2: provisional 68k move.l -$5380(a6), d0
db 0x67, 0x14 ; 00F1E6: provisional 68k beq.b $f1fc
db 0x20, 0x40 ; 00F1E8: provisional 68k movea.l d0, a0
db 0x20, 0x2F, 0x00, 0x10 ; 00F1EA: provisional 68k move.l $10(a7), d0
db 0x67, 0x08 ; 00F1EE: provisional 68k beq.b $f1f8
db 0xB0, 0xAE, 0xAC, 0x80 ; 00F1F0: provisional 68k cmp.l -$5380(a6), d0
db 0x66, 0x06 ; 00F1F4: provisional 68k bne.b $f1fc
db 0x20, 0x40 ; 00F1F6: provisional 68k movea.l d0, a0
db 0x42, 0xA8, 0x00, 0x04 ; 00F1F8: provisional 68k clr.l $4(a0)
db 0x4C, 0xDF, 0x01, 0x03 ; 00F1FC: provisional 68k movem.l (a7)+, d0-d1/a0
db 0x2E, 0x9F ; 00F200: provisional 68k move.l (a7)+, (a7)
db 0x4E, 0x75 ; 00F202: provisional 68k rts 
db 0x42, 0xE7 ; 00F204: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 00F206: provisional 68k pea.l $f210(pc)
db 0x61, 0x00, 0xD9, 0xC4 ; 00F20A: provisional 68k bsr.w $cbd0
db 0x60, 0x0C ; 00F20E: provisional 68k bra.b $f21c
db 0x67, 0x66 ; 00F210: provisional 68k beq.b $f278
db 0x6D, 0x5F ; 00F212: provisional 68k blt.b $f273
db 0x61, 0x62 ; 00F214: provisional 68k bsr.b $f278
db 0x6F, 0x72 ; 00F216: provisional 68k ble.b $f28a
db 0x74, 0x20 ; 00F218: provisional 68k moveq #$20, d2
db 0x00, 0x00, 0x3F, 0x01 ; 00F21A: provisional 68k ori.b #$1, d0
db 0x61, 0x00, 0xD8, 0xFE ; 00F21E: provisional 68k bsr.w $cb1e
db 0x44, 0xDF ; 00F222: provisional 68k move.w (a7)+, ccr
db 0x32, 0x3C, 0x80, 0x00 ; 00F224: provisional 68k move.w #$8000, d1
db 0x61, 0x00, 0xD9, 0xD4 ; 00F228: provisional 68k bsr.w $cbfe
db 0x67, 0x66 ; 00F22C: provisional 68k beq.b $f294
db 0x6D, 0x5F ; 00F22E: provisional 68k blt.b $f28f
db 0x61, 0x62 ; 00F230: provisional 68k bsr.b $f294
db 0x6F, 0x72 ; 00F232: provisional 68k ble.b $f2a6
db 0x74, 0x3A ; 00F234: provisional 68k moveq #$3a, d2
db 0x20, 0x65 ; 00F236: provisional 68k movea.l -(a5), a0
db 0x72, 0x72 ; 00F238: provisional 68k moveq #$72, d1
db 0x6F, 0x72 ; 00F23A: provisional 68k ble.b $f2ae
db 0x00, 0x00, 0x20, 0x6E ; 00F23C: provisional 68k ori.b #$6e, d0
db 0xAC, 0x80 ; 00F240: provisional 68k dc.w $ac80
db 0x30, 0x28, 0x00, 0x00 ; 00F242: provisional 68k move.w $0(a0), d0
db 0x32, 0x00 ; 00F246: provisional 68k move.w d0, d1
db 0x02, 0x41, 0x81, 0x91 ; 00F248: provisional 68k andi.w #$8191, d1
db 0x66, 0x0A ; 00F24C: provisional 68k bne.b $f258
db 0x08, 0x00, 0x00, 0x00 ; 00F24E: provisional 68k btst.b #$0, d0
db 0x66, 0x04 ; 00F252: provisional 68k bne.b $f258
db 0x00, 0x40, 0x00, 0x01 ; 00F254: provisional 68k ori.w #$1, d0
db 0x4A, 0x40 ; 00F258: provisional 68k tst.w d0
db 0x6A, 0x0C ; 00F25A: provisional 68k bpl.b $f268
db 0x0C, 0x68, 0x06, 0x0A, 0x00, 0x02 ; 00F25C: provisional 68k cmpi.w #$60a, $2(a0)
db 0x66, 0x04 ; 00F262: provisional 68k bne.b $f268
db 0x61, 0x34 ; 00F264: provisional 68k bsr.b $f29a
db 0x4E, 0x75 ; 00F266: provisional 68k rts 
db 0x08, 0x00, 0x00, 0x04 ; 00F268: provisional 68k btst.b #$4, d0
db 0x67, 0x04 ; 00F26C: provisional 68k beq.b $f272
db 0x61, 0x00, 0x00, 0x36 ; 00F26E: provisional 68k bsr.w $f2a6
db 0x08, 0x00, 0x00, 0x00 ; 00F272: provisional 68k btst.b #$0, d0
db 0x67, 0x04 ; 00F276: provisional 68k beq.b $f27c
