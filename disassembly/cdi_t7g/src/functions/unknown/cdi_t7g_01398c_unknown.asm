; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 01398C–013A1F, inclusive.
cdi_t7g_entry_01398c:
db 0x32, 0x2D, 0x00, 0x28 ; 01398C: provisional 68k move.w $28(a5), d1
db 0x34, 0x2D, 0x00, 0x24 ; 013990: provisional 68k move.w $24(a5), d2
db 0x2F, 0x0D ; 013994: provisional 68k move.l a5, -(a7)
db 0x70, 0x01 ; 013996: provisional 68k moveq #$1, d0
db 0x61, 0x00, 0xA0, 0x96 ; 013998: provisional 68k bsr.w $da30
db 0x3F, 0x01 ; 01399C: provisional 68k move.w d1, -(a7)
db 0x2F, 0x2D, 0x00, 0x32 ; 01399E: provisional 68k move.l $32(a5), -(a7)
db 0x61, 0x00, 0xCE, 0x68 ; 0139A2: provisional 68k bsr.w $1080c
db 0x2D, 0x48, 0xD0, 0x3C ; 0139A6: provisional 68k move.l a0, -$2fc4(a6)
db 0x2A, 0x5F ; 0139AA: provisional 68k movea.l (a7)+, a5
db 0x61, 0x00, 0xFE, 0x6A ; 0139AC: provisional 68k bsr.w $13818
db 0x3F, 0x02 ; 0139B0: provisional 68k move.w d2, -(a7)
db 0x61, 0x00, 0xF4, 0x22 ; 0139B2: provisional 68k bsr.w $12dd6
db 0x65, 0x00, 0x00, 0x42 ; 0139B6: provisional 68k bcs.w $139fa
db 0x34, 0x1F ; 0139BA: provisional 68k move.w (a7)+, d2
db 0x30, 0x2C, 0x00, 0x28 ; 0139BC: provisional 68k move.w $28(a4), d0
db 0x90, 0x6B, 0x00, 0x28 ; 0139C0: provisional 68k sub.w $28(a3), d0
db 0xD0, 0x45 ; 0139C4: provisional 68k add.w d5, d0
db 0x26, 0x6B, 0x00, 0x34 ; 0139C6: provisional 68k movea.l $34(a3), a3
db 0xE5, 0x40 ; 0139CA: provisional 68k asl.w #$2, d0
db 0xD6, 0xC0 ; 0139CC: provisional 68k adda.w d0, a3
db 0x20, 0x6C, 0x00, 0x34 ; 0139CE: provisional 68k movea.l $34(a4), a0
db 0xE5, 0x45 ; 0139D2: provisional 68k asl.w #$2, d5
db 0xD0, 0xC5 ; 0139D4: provisional 68k adda.w d5, a0
db 0x22, 0x6D, 0x00, 0x3C ; 0139D6: provisional 68k movea.l $3c(a5), a1
db 0x48, 0xC4 ; 0139DA: provisional 68k ext.l d4
db 0x3A, 0x44 ; 0139DC: provisional 68k movea.w d4, a5
db 0x28, 0x6E, 0xD0, 0x3C ; 0139DE: provisional 68k movea.l -$2fc4(a6), a4
db 0x28, 0x0B ; 0139E2: provisional 68k move.l a3, d4
db 0x26, 0x49 ; 0139E4: provisional 68k movea.l a1, a3
db 0x32, 0x29, 0x00, 0x08 ; 0139E6: provisional 68k move.w $8(a1), d1
db 0x3F, 0x01 ; 0139EA: provisional 68k move.w d1, -(a7)
db 0xE3, 0x41 ; 0139EC: provisional 68k asl.w #$1, d1
db 0xD2, 0x5F ; 0139EE: provisional 68k add.w (a7)+, d1
db 0x43, 0xF1, 0x10, 0x0A ; 0139F0: provisional 68k lea.l $a(a1, d1.w), a1
db 0x61, 0x00, 0x00, 0x2A ; 0139F4: provisional 68k bsr.w $13a20
db 0x4E, 0x75 ; 0139F8: provisional 68k rts 
db 0x32, 0x3C, 0x80, 0x00 ; 0139FA: provisional 68k move.w #$8000, d1
db 0x61, 0x00, 0x83, 0x7E ; 0139FE: provisional 68k bsr.w $bd7e
db 0x70, 0x61 ; 013A02: provisional 68k moveq #$61, d0
db 0x73, 0x74 ; file 013A04
db 0x65, 0x5F ; 013A06: provisional 68k bcs.b $13a67
db 0x63, 0x6C ; 013A08: provisional 68k bls.b $13a76
db 0x34, 0x71, 0x5F, 0x6D, 0x61, 0x73 ; 013A0A: provisional 68k movea.w ([$6173, a1]), a2
db 0x6B, 0x3A ; 013A10: provisional 68k bmi.b $13a4c
db 0x20, 0x4E ; 013A12: provisional 68k movea.l a6, a0
db 0x6F, 0x74 ; 013A14: provisional 68k ble.b $13a8a
db 0x20, 0x76, 0x69, 0x73, 0x69, 0x62, 0x6C, 0x65, 0x21, 0x00 ; file 013A16
