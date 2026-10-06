; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00EEFA–00EFCB, inclusive.
cdi_t7g_entry_00eefa:
db 0x30, 0x2E, 0xAD, 0xA2 ; 00EEFA: provisional 68k move.w -$525e(a6), d0
db 0x72, 0x56 ; 00EEFE: provisional 68k moveq #$56, d1
db 0x74, 0x10 ; 00EF00: provisional 68k moveq #$10, d2
db 0x36, 0x2E, 0xC0, 0x50 ; 00EF02: provisional 68k move.w -$3fb0(a6), d3
db 0x38, 0x3C, 0x00, 0x00 ; 00EF06: provisional 68k move.w #$0, d4
db 0x3A, 0x3C, 0x00, 0x00 ; 00EF0A: provisional 68k move.w #$0, d5
db 0x3C, 0x2E, 0xAD, 0xB6 ; 00EF0E: provisional 68k move.w -$524a(a6), d6
db 0x3E, 0x3C, 0x00, 0x08 ; 00EF12: provisional 68k move.w #$8, d7
db 0x4E, 0x40, 0x00, 0x8E ; 00EF16: provisional 68k trap #0 ; OS-9 service word $008E
db 0x65, 0x00, 0x00, 0xCE ; 00EF1A: provisional 68k bcs.w $efea
db 0x30, 0x2E, 0xAD, 0xA2 ; 00EF1E: provisional 68k move.w -$525e(a6), d0
db 0x72, 0x56 ; 00EF22: provisional 68k moveq #$56, d1
db 0x74, 0x0A ; 00EF24: provisional 68k moveq #$a, d2
db 0x36, 0x2E, 0xC0, 0x50 ; 00EF26: provisional 68k move.w -$3fb0(a6), d3
db 0x38, 0x2E, 0xAD, 0xAC ; 00EF2A: provisional 68k move.w -$5254(a6), d4
db 0x3A, 0x3C, 0x00, 0x07 ; 00EF2E: provisional 68k move.w #$7, d5
db 0x2C, 0x3C, 0xC3, 0x00, 0x00, 0x00 ; 00EF32: provisional 68k move.l #$c3000000, d6
db 0x4E, 0x40, 0x00, 0x8E ; 00EF38: provisional 68k trap #0 ; OS-9 service word $008E
db 0x65, 0x00, 0x00, 0xAC ; 00EF3C: provisional 68k bcs.w $efea
db 0x30, 0x2E, 0xAD, 0xA2 ; 00EF40: provisional 68k move.w -$525e(a6), d0
db 0x72, 0x56 ; 00EF44: provisional 68k moveq #$56, d1
db 0x74, 0x0C ; 00EF46: provisional 68k moveq #$c, d2
db 0x36, 0x2E, 0xC0, 0x48 ; 00EF48: provisional 68k move.w -$3fb8(a6), d3
db 0x38, 0x2E, 0xC0, 0x50 ; 00EF4C: provisional 68k move.w -$3fb0(a6), d4
db 0x3A, 0x2E, 0xAD, 0xAC ; 00EF50: provisional 68k move.w -$5254(a6), d5
db 0x4E, 0x40, 0x00, 0x8E ; 00EF54: provisional 68k trap #0 ; OS-9 service word $008E
db 0x65, 0x00, 0x00, 0x90 ; 00EF58: provisional 68k bcs.w $efea
db 0x30, 0x2E, 0xAD, 0xA2 ; 00EF5C: provisional 68k move.w -$525e(a6), d0
db 0x72, 0x56 ; 00EF60: provisional 68k moveq #$56, d1
db 0x74, 0x10 ; 00EF62: provisional 68k moveq #$10, d2
db 0x36, 0x2E, 0xC0, 0x52 ; 00EF64: provisional 68k move.w -$3fae(a6), d3
db 0x38, 0x3C, 0x00, 0x00 ; 00EF68: provisional 68k move.w #$0, d4
db 0x3A, 0x3C, 0x00, 0x00 ; 00EF6C: provisional 68k move.w #$0, d5
db 0x3C, 0x2E, 0xAD, 0xB6 ; 00EF70: provisional 68k move.w -$524a(a6), d6
db 0x3E, 0x3C, 0x00, 0x08 ; 00EF74: provisional 68k move.w #$8, d7
db 0x4E, 0x40, 0x00, 0x8E ; 00EF78: provisional 68k trap #0 ; OS-9 service word $008E
db 0x65, 0x00, 0x00, 0x6C ; 00EF7C: provisional 68k bcs.w $efea
db 0x30, 0x2E, 0xAD, 0xA2 ; 00EF80: provisional 68k move.w -$525e(a6), d0
db 0x72, 0x56 ; 00EF84: provisional 68k moveq #$56, d1
db 0x74, 0x0A ; 00EF86: provisional 68k moveq #$a, d2
db 0x36, 0x2E, 0xC0, 0x52 ; 00EF88: provisional 68k move.w -$3fae(a6), d3
db 0x38, 0x2E, 0xAD, 0xAC ; 00EF8C: provisional 68k move.w -$5254(a6), d4
db 0x3A, 0x3C, 0x00, 0x07 ; 00EF90: provisional 68k move.w #$7, d5
db 0x2C, 0x3C, 0xC3, 0x00, 0x00, 0x00 ; 00EF94: provisional 68k move.l #$c3000000, d6
db 0x4E, 0x40, 0x00, 0x8E ; 00EF9A: provisional 68k trap #0 ; OS-9 service word $008E
db 0x65, 0x00, 0x00, 0x4A ; 00EF9E: provisional 68k bcs.w $efea
db 0x30, 0x2E, 0xAD, 0xA2 ; 00EFA2: provisional 68k move.w -$525e(a6), d0
db 0x72, 0x56 ; 00EFA6: provisional 68k moveq #$56, d1
db 0x74, 0x0C ; 00EFA8: provisional 68k moveq #$c, d2
db 0x36, 0x2E, 0xC0, 0x4A ; 00EFAA: provisional 68k move.w -$3fb6(a6), d3
db 0x38, 0x2E, 0xC0, 0x52 ; 00EFAE: provisional 68k move.w -$3fae(a6), d4
db 0x3A, 0x2E, 0xAD, 0xAC ; 00EFB2: provisional 68k move.w -$5254(a6), d5
db 0x4E, 0x40, 0x00, 0x8E ; 00EFB6: provisional 68k trap #0 ; OS-9 service word $008E
db 0x65, 0x00, 0x00, 0x2E ; 00EFBA: provisional 68k bcs.w $efea
db 0x3E, 0x2E, 0xAD, 0xB6 ; 00EFBE: provisional 68k move.w -$524a(a6), d7
db 0x53, 0x47 ; 00EFC2: provisional 68k subq.w #$1, d7
db 0x61, 0x06 ; 00EFC4: provisional 68k bsr.b $efcc
db 0x53, 0x47 ; 00EFC6: provisional 68k subq.w #$1, d7
db 0x61, 0x02 ; 00EFC8: provisional 68k bsr.b $efcc
db 0x4E, 0x75 ; 00EFCA: provisional 68k rts 
