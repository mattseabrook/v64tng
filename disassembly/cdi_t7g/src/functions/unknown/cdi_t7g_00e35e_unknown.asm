; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00E35E–00E3F7, inclusive.
cdi_t7g_entry_00e35e:
db 0x48, 0xE7 ; file 00E35E
db 0xC0, 0x80 ; 00E360: provisional 68k and.l d0, d0
db 0x20, 0x2E, 0xAC, 0x80 ; 00E362: provisional 68k move.l -$5380(a6), d0
db 0x67, 0x14 ; 00E366: provisional 68k beq.b $e37c
db 0x20, 0x40 ; 00E368: provisional 68k movea.l d0, a0
db 0x20, 0x2F, 0x00, 0x10 ; 00E36A: provisional 68k move.l $10(a7), d0
db 0x67, 0x08 ; 00E36E: provisional 68k beq.b $e378
db 0xB0, 0xAE, 0xAC, 0x80 ; 00E370: provisional 68k cmp.l -$5380(a6), d0
db 0x66, 0x06 ; 00E374: provisional 68k bne.b $e37c
db 0x20, 0x40 ; 00E376: provisional 68k movea.l d0, a0
db 0x42, 0xA8, 0x00, 0x04 ; 00E378: provisional 68k clr.l $4(a0)
db 0x4C, 0xDF, 0x01, 0x03 ; 00E37C: provisional 68k movem.l (a7)+, d0-d1/a0
db 0x2E, 0x9F ; 00E380: provisional 68k move.l (a7)+, (a7)
db 0x4E, 0x75 ; 00E382: provisional 68k rts 
db 0x42, 0xE7 ; 00E384: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 00E386: provisional 68k pea.l $e390(pc)
db 0x61, 0x00, 0xD9, 0xC4 ; 00E38A: provisional 68k bsr.w $bd50
db 0x60, 0x0C ; 00E38E: provisional 68k bra.b $e39c
db 0x67, 0x66 ; 00E390: provisional 68k beq.b $e3f8
db 0x6D, 0x5F ; 00E392: provisional 68k blt.b $e3f3
db 0x61, 0x62 ; 00E394: provisional 68k bsr.b $e3f8
db 0x6F, 0x72 ; 00E396: provisional 68k ble.b $e40a
db 0x74, 0x20 ; 00E398: provisional 68k moveq #$20, d2
db 0x00, 0x00, 0x3F, 0x01 ; 00E39A: provisional 68k ori.b #$1, d0
db 0x61, 0x00, 0xD8, 0xFE ; 00E39E: provisional 68k bsr.w $bc9e
db 0x44, 0xDF ; 00E3A2: provisional 68k move.w (a7)+, ccr
db 0x32, 0x3C, 0x80, 0x00 ; 00E3A4: provisional 68k move.w #$8000, d1
db 0x61, 0x00, 0xD9, 0xD4 ; 00E3A8: provisional 68k bsr.w $bd7e
db 0x67, 0x66 ; 00E3AC: provisional 68k beq.b $e414
db 0x6D, 0x5F ; 00E3AE: provisional 68k blt.b $e40f
db 0x61, 0x62 ; 00E3B0: provisional 68k bsr.b $e414
db 0x6F, 0x72 ; 00E3B2: provisional 68k ble.b $e426
db 0x74, 0x3A ; 00E3B4: provisional 68k moveq #$3a, d2
db 0x20, 0x65 ; 00E3B6: provisional 68k movea.l -(a5), a0
db 0x72, 0x72 ; 00E3B8: provisional 68k moveq #$72, d1
db 0x6F, 0x72 ; 00E3BA: provisional 68k ble.b $e42e
db 0x00, 0x00, 0x20, 0x6E ; 00E3BC: provisional 68k ori.b #$6e, d0
db 0xAC, 0x80 ; 00E3C0: provisional 68k dc.w $ac80
db 0x30, 0x28, 0x00, 0x00 ; 00E3C2: provisional 68k move.w $0(a0), d0
db 0x32, 0x00 ; 00E3C6: provisional 68k move.w d0, d1
db 0x02, 0x41, 0x81, 0x91 ; 00E3C8: provisional 68k andi.w #$8191, d1
db 0x66, 0x0A ; 00E3CC: provisional 68k bne.b $e3d8
db 0x08, 0x00, 0x00, 0x00 ; 00E3CE: provisional 68k btst.b #$0, d0
db 0x66, 0x04 ; 00E3D2: provisional 68k bne.b $e3d8
db 0x00, 0x40, 0x00, 0x01 ; 00E3D4: provisional 68k ori.w #$1, d0
db 0x4A, 0x40 ; 00E3D8: provisional 68k tst.w d0
db 0x6A, 0x0C ; 00E3DA: provisional 68k bpl.b $e3e8
db 0x0C, 0x68, 0x06, 0x0A, 0x00, 0x02 ; 00E3DC: provisional 68k cmpi.w #$60a, $2(a0)
db 0x66, 0x04 ; 00E3E2: provisional 68k bne.b $e3e8
db 0x61, 0x34 ; 00E3E4: provisional 68k bsr.b $e41a
db 0x4E, 0x75 ; 00E3E6: provisional 68k rts 
db 0x08, 0x00, 0x00, 0x04 ; 00E3E8: provisional 68k btst.b #$4, d0
db 0x67, 0x04 ; 00E3EC: provisional 68k beq.b $e3f2
db 0x61, 0x00, 0x00, 0x36 ; 00E3EE: provisional 68k bsr.w $e426
db 0x08, 0x00, 0x00, 0x00 ; 00E3F2: provisional 68k btst.b #$0, d0
db 0x67, 0x04 ; 00E3F6: provisional 68k beq.b $e3fc
