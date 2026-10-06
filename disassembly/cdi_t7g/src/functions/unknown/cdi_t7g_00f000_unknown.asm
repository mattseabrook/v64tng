; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00F000–00F097, inclusive.
cdi_t7g_entry_00f000:
db 0x30, 0x2E, 0xAD, 0xA2 ; 00F000: provisional 68k move.w -$525e(a6), d0
db 0x72, 0x56 ; 00F004: provisional 68k moveq #$56, d1
db 0x74, 0x00 ; 00F006: provisional 68k moveq #$0, d2
db 0x36, 0x3C, 0x00, 0x01 ; 00F008: provisional 68k move.w #$1, d3
db 0x38, 0x3C, 0x00, 0x0F ; 00F00C: provisional 68k move.w #$f, d4
db 0x3A, 0x2E, 0xAD, 0xA8 ; 00F010: provisional 68k move.w -$5258(a6), d5
db 0x4E, 0x40, 0x00, 0x8E ; 00F014: provisional 68k trap #0 ; OS-9 service word $008E
db 0x65, 0x00, 0x00, 0x68 ; 00F018: provisional 68k bcs.w $f082
db 0x3D, 0x40, 0xC0, 0x4C ; 00F01C: provisional 68k move.w d0, -$3fb4(a6)
db 0x30, 0x2E, 0xAD, 0xA2 ; 00F020: provisional 68k move.w -$525e(a6), d0
db 0x72, 0x56 ; 00F024: provisional 68k moveq #$56, d1
db 0x74, 0x00 ; 00F026: provisional 68k moveq #$0, d2
db 0x36, 0x3C, 0x00, 0x01 ; 00F028: provisional 68k move.w #$1, d3
db 0x38, 0x3C, 0x00, 0x0F ; 00F02C: provisional 68k move.w #$f, d4
db 0x3A, 0x2E, 0xAD, 0xA8 ; 00F030: provisional 68k move.w -$5258(a6), d5
db 0x4E, 0x40, 0x00, 0x8E ; 00F034: provisional 68k trap #0 ; OS-9 service word $008E
db 0x65, 0x00, 0x00, 0x48 ; 00F038: provisional 68k bcs.w $f082
db 0x3D, 0x40, 0xC0, 0x4E ; 00F03C: provisional 68k move.w d0, -$3fb2(a6)
db 0x3E, 0x2E, 0xAD, 0xB6 ; 00F040: provisional 68k move.w -$524a(a6), d7
db 0x30, 0x2E, 0xAD, 0xA2 ; 00F044: provisional 68k move.w -$525e(a6), d0
db 0x72, 0x56 ; 00F048: provisional 68k moveq #$56, d1
db 0x74, 0x06 ; 00F04A: provisional 68k moveq #$6, d2
db 0x36, 0x3C, 0x00, 0x01 ; 00F04C: provisional 68k move.w #$1, d3
db 0x38, 0x07 ; 00F050: provisional 68k move.w d7, d4
db 0x3A, 0x2E, 0xAD, 0xA8 ; 00F052: provisional 68k move.w -$5258(a6), d5
db 0x4E, 0x40, 0x00, 0x8E ; 00F056: provisional 68k trap #0 ; OS-9 service word $008E
db 0x65, 0x00, 0x00, 0x26 ; 00F05A: provisional 68k bcs.w $f082
db 0x3D, 0x40, 0xC0, 0x54 ; 00F05E: provisional 68k move.w d0, -$3fac(a6)
db 0x30, 0x2E, 0xAD, 0xA2 ; 00F062: provisional 68k move.w -$525e(a6), d0
db 0x72, 0x56 ; 00F066: provisional 68k moveq #$56, d1
db 0x74, 0x06 ; 00F068: provisional 68k moveq #$6, d2
db 0x36, 0x3C, 0x00, 0x01 ; 00F06A: provisional 68k move.w #$1, d3
db 0x38, 0x07 ; 00F06E: provisional 68k move.w d7, d4
db 0x3A, 0x2E, 0xAD, 0xA8 ; 00F070: provisional 68k move.w -$5258(a6), d5
db 0x4E, 0x40, 0x00, 0x8E ; 00F074: provisional 68k trap #0 ; OS-9 service word $008E
db 0x65, 0x00, 0x00, 0x08 ; 00F078: provisional 68k bcs.w $f082
db 0x3D, 0x40, 0xC0, 0x56 ; 00F07C: provisional 68k move.w d0, -$3faa(a6)
db 0x4E, 0x75 ; 00F080: provisional 68k rts 
db 0x32, 0x01 ; 00F082: provisional 68k move.w d1, d1
db 0x61, 0x00, 0xCC, 0xF8 ; 00F084: provisional 68k bsr.w $bd7e
db 0x63, 0x72 ; 00F088: provisional 68k bls.b $f0fc
db 0x65, 0x61 ; 00F08A: provisional 68k bcs.b $f0ed
db 0x74, 0x65 ; 00F08C: provisional 68k moveq #$65, d2
db 0x5F, 0x64 ; 00F08E: provisional 68k subq.w #$7, -(a4)
db 0x63, 0x70 ; 00F090: provisional 68k bls.b $f102
db 0x5F, 0x62 ; 00F092: provisional 68k subq.w #$7, -(a2)
db 0x20, 0x3A, 0x20, 0x00 ; 00F094: provisional 68k move.l $11096(pc), d0
