; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00E1A4–00E241, inclusive.
cdi_t7g_entry_00e1a4:
db 0x48, 0xE7 ; file 00E1A4
db 0xFF, 0xFC ; 00E1A6: provisional 68k dc.w $fffc
db 0x42, 0xAE, 0xAC, 0x86 ; 00E1A8: provisional 68k clr.l -$537a(a6)
db 0x3F, 0x3C, 0x00, 0x03 ; 00E1AC: provisional 68k move.w #$3, -(a7)
db 0x2F, 0x2E, 0xA9, 0x04 ; 00E1B0: provisional 68k move.l -$56fc(a6), -(a7)
db 0x61, 0x00, 0xDE, 0x74 ; 00E1B4: provisional 68k bsr.w $c02a
db 0x43, 0xEE, 0xAB, 0xEE ; 00E1B8: provisional 68k lea.l -$5412(a6), a1
db 0x45, 0xEE, 0xAC, 0x20 ; 00E1BC: provisional 68k lea.l -$53e0(a6), a2
db 0x47, 0xEE, 0xAC, 0x60 ; 00E1C0: provisional 68k lea.l -$53a0(a6), a3
db 0x49, 0xEE, 0xAC, 0x40 ; 00E1C4: provisional 68k lea.l -$53c0(a6), a4
db 0x2F, 0x0C ; 00E1C8: provisional 68k move.l a4, -(a7)
db 0x2F, 0x0B ; 00E1CA: provisional 68k move.l a3, -(a7)
db 0x2F, 0x0A ; 00E1CC: provisional 68k move.l a2, -(a7)
db 0x2F, 0x09 ; 00E1CE: provisional 68k move.l a1, -(a7)
db 0x61, 0x00, 0x03, 0xC6 ; 00E1D0: provisional 68k bsr.w $e598
db 0x3F, 0x3C, 0x00, 0x00 ; 00E1D4: provisional 68k move.w #$0, -(a7)
db 0x2F, 0x0A ; 00E1D8: provisional 68k move.l a2, -(a7)
db 0x3F, 0x3C, 0x00, 0x00 ; 00E1DA: provisional 68k move.w #$0, -(a7)
db 0x2F, 0x08 ; 00E1DE: provisional 68k move.l a0, -(a7)
db 0x61, 0x00, 0x02, 0xFA ; 00E1E0: provisional 68k bsr.w $e4dc
db 0x3F, 0x3C, 0x00, 0x00 ; 00E1E4: provisional 68k move.w #$0, -(a7)
db 0x2F, 0x0A ; 00E1E8: provisional 68k move.l a2, -(a7)
db 0x61, 0x00, 0x04, 0x4C ; 00E1EA: provisional 68k bsr.w $e638
db 0x47, 0xFA, 0x00, 0x4C ; 00E1EE: provisional 68k lea.l $e23c(pc), a3
db 0x2F, 0x0B ; 00E1F2: provisional 68k move.l a3, -(a7)
db 0x2F, 0x2E, 0xAB, 0xE8 ; 00E1F4: provisional 68k move.l -$5418(a6), -(a7)
db 0x61, 0x00, 0x43, 0x56 ; 00E1F8: provisional 68k bsr.w $12550
db 0x3E, 0x00 ; 00E1FC: provisional 68k move.w d0, d7
db 0x2F, 0x3C, 0x00, 0x00, 0x00, 0x00 ; 00E1FE: provisional 68k move.l #$0, -(a7)
db 0x2F, 0x3C, 0x00, 0x00, 0x00, 0x00 ; 00E204: provisional 68k move.l #$0, -(a7)
db 0x2F, 0x3C, 0x00, 0x00, 0x00, 0x00 ; 00E20A: provisional 68k move.l #$0, -(a7)
db 0x2F, 0x3C, 0x00, 0x00, 0x00, 0x03 ; 00E210: provisional 68k move.l #$3, -(a7)
db 0x2F, 0x00 ; 00E216: provisional 68k move.l d0, -(a7)
db 0x2F, 0x09 ; 00E218: provisional 68k move.l a1, -(a7)
db 0x61, 0x00, 0x00, 0x26 ; 00E21A: provisional 68k bsr.w $e242
db 0x3F, 0x3C, 0x00, 0x01 ; 00E21E: provisional 68k move.w #$1, -(a7)
db 0x61, 0x00, 0xFE, 0x10 ; 00E222: provisional 68k bsr.w $e034
db 0x56, 0x87 ; 00E226: provisional 68k addq.l #$3, d7
db 0x9E, 0xA9, 0x00, 0x2E ; 00E228: provisional 68k sub.l $2e(a1), d7
db 0x2D, 0x47, 0xAC, 0x86 ; 00E22C: provisional 68k move.l d7, -$537a(a6)
db 0x2F, 0x08 ; 00E230: provisional 68k move.l a0, -(a7)
db 0x61, 0x00, 0xDF, 0x44 ; 00E232: provisional 68k bsr.w $c178
db 0x4C, 0xDF, 0x3F, 0xFF ; 00E236: provisional 68k movem.l (a7)+, d0-d7/a0-a5
db 0x4E, 0x75 ; 00E23A: provisional 68k rts 
db 0x67, 0x70 ; 00E23C: provisional 68k beq.b $e2ae
db 0x6F, 0x73 ; 00E23E: provisional 68k ble.b $e2b3
db 0x00, 0x00 ; file 00E240
