; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00F024–00F0C1, inclusive.
cdi_nodv_entry_00f024:
db 0x48, 0xE7 ; file 00F024
db 0xFF, 0xFC ; 00F026: provisional 68k dc.w $fffc
db 0x42, 0xAE, 0xAC, 0x86 ; 00F028: provisional 68k clr.l -$537a(a6)
db 0x3F, 0x3C, 0x00, 0x03 ; 00F02C: provisional 68k move.w #$3, -(a7)
db 0x2F, 0x2E, 0xA9, 0x04 ; 00F030: provisional 68k move.l -$56fc(a6), -(a7)
db 0x61, 0x00, 0xDE, 0x74 ; 00F034: provisional 68k bsr.w $ceaa
db 0x43, 0xEE, 0xAB, 0xEE ; 00F038: provisional 68k lea.l -$5412(a6), a1
db 0x45, 0xEE, 0xAC, 0x20 ; 00F03C: provisional 68k lea.l -$53e0(a6), a2
db 0x47, 0xEE, 0xAC, 0x60 ; 00F040: provisional 68k lea.l -$53a0(a6), a3
db 0x49, 0xEE, 0xAC, 0x40 ; 00F044: provisional 68k lea.l -$53c0(a6), a4
db 0x2F, 0x0C ; 00F048: provisional 68k move.l a4, -(a7)
db 0x2F, 0x0B ; 00F04A: provisional 68k move.l a3, -(a7)
db 0x2F, 0x0A ; 00F04C: provisional 68k move.l a2, -(a7)
db 0x2F, 0x09 ; 00F04E: provisional 68k move.l a1, -(a7)
db 0x61, 0x00, 0x03, 0xC6 ; 00F050: provisional 68k bsr.w $f418
db 0x3F, 0x3C, 0x00, 0x00 ; 00F054: provisional 68k move.w #$0, -(a7)
db 0x2F, 0x0A ; 00F058: provisional 68k move.l a2, -(a7)
db 0x3F, 0x3C, 0x00, 0x00 ; 00F05A: provisional 68k move.w #$0, -(a7)
db 0x2F, 0x08 ; 00F05E: provisional 68k move.l a0, -(a7)
db 0x61, 0x00, 0x02, 0xFA ; 00F060: provisional 68k bsr.w $f35c
db 0x3F, 0x3C, 0x00, 0x00 ; 00F064: provisional 68k move.w #$0, -(a7)
db 0x2F, 0x0A ; 00F068: provisional 68k move.l a2, -(a7)
db 0x61, 0x00, 0x04, 0x4C ; 00F06A: provisional 68k bsr.w $f4b8
db 0x47, 0xFA, 0x00, 0x4C ; 00F06E: provisional 68k lea.l $f0bc(pc), a3
db 0x2F, 0x0B ; 00F072: provisional 68k move.l a3, -(a7)
db 0x2F, 0x2E, 0xAB, 0xE8 ; 00F074: provisional 68k move.l -$5418(a6), -(a7)
db 0x61, 0x00, 0x43, 0x56 ; 00F078: provisional 68k bsr.w $133d0
db 0x3E, 0x00 ; 00F07C: provisional 68k move.w d0, d7
db 0x2F, 0x3C, 0x00, 0x00, 0x00, 0x00 ; 00F07E: provisional 68k move.l #$0, -(a7)
db 0x2F, 0x3C, 0x00, 0x00, 0x00, 0x00 ; 00F084: provisional 68k move.l #$0, -(a7)
db 0x2F, 0x3C, 0x00, 0x00, 0x00, 0x00 ; 00F08A: provisional 68k move.l #$0, -(a7)
db 0x2F, 0x3C, 0x00, 0x00, 0x00, 0x03 ; 00F090: provisional 68k move.l #$3, -(a7)
db 0x2F, 0x00 ; 00F096: provisional 68k move.l d0, -(a7)
db 0x2F, 0x09 ; 00F098: provisional 68k move.l a1, -(a7)
db 0x61, 0x00, 0x00, 0x26 ; 00F09A: provisional 68k bsr.w $f0c2
db 0x3F, 0x3C, 0x00, 0x01 ; 00F09E: provisional 68k move.w #$1, -(a7)
db 0x61, 0x00, 0xFE, 0x10 ; 00F0A2: provisional 68k bsr.w $eeb4
db 0x56, 0x87 ; 00F0A6: provisional 68k addq.l #$3, d7
db 0x9E, 0xA9, 0x00, 0x2E ; 00F0A8: provisional 68k sub.l $2e(a1), d7
db 0x2D, 0x47, 0xAC, 0x86 ; 00F0AC: provisional 68k move.l d7, -$537a(a6)
db 0x2F, 0x08 ; 00F0B0: provisional 68k move.l a0, -(a7)
db 0x61, 0x00, 0xDF, 0x44 ; 00F0B2: provisional 68k bsr.w $cff8
db 0x4C, 0xDF, 0x3F, 0xFF ; 00F0B6: provisional 68k movem.l (a7)+, d0-d7/a0-a5
db 0x4E, 0x75 ; 00F0BA: provisional 68k rts 
db 0x67, 0x70 ; 00F0BC: provisional 68k beq.b $f12e
db 0x6F, 0x73 ; 00F0BE: provisional 68k ble.b $f133
db 0x00, 0x00 ; file 00F0C0
