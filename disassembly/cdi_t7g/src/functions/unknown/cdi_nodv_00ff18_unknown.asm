; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00FF18–00FFED, inclusive.
cdi_nodv_entry_00ff18:
db 0x30, 0x2E, 0xAD, 0xA2 ; 00FF18: provisional 68k move.w -$525e(a6), d0
db 0x72, 0x56 ; 00FF1C: provisional 68k moveq #$56, d1
db 0x74, 0x10 ; 00FF1E: provisional 68k moveq #$10, d2
db 0x36, 0x2E, 0xC0, 0x54 ; 00FF20: provisional 68k move.w -$3fac(a6), d3
db 0x38, 0x3C, 0x00, 0x00 ; 00FF24: provisional 68k move.w #$0, d4
db 0x3A, 0x3C, 0x00, 0x00 ; 00FF28: provisional 68k move.w #$0, d5
db 0x3C, 0x2E, 0xAD, 0xB6 ; 00FF2C: provisional 68k move.w -$524a(a6), d6
db 0x3E, 0x3C, 0x00, 0x08 ; 00FF30: provisional 68k move.w #$8, d7
db 0x4E, 0x40, 0x00, 0x8E ; 00FF34: provisional 68k trap #0 ; OS-9 service word $008E
db 0x65, 0x00, 0x00, 0xCA ; 00FF38: provisional 68k bcs.w $10004
db 0x30, 0x2E, 0xAD, 0xA2 ; 00FF3C: provisional 68k move.w -$525e(a6), d0
db 0x72, 0x56 ; 00FF40: provisional 68k moveq #$56, d1
db 0x74, 0x0A ; 00FF42: provisional 68k moveq #$a, d2
db 0x36, 0x2E, 0xC0, 0x54 ; 00FF44: provisional 68k move.w -$3fac(a6), d3
db 0x38, 0x2E, 0xAD, 0xAC ; 00FF48: provisional 68k move.w -$5254(a6), d4
db 0x3A, 0x3C, 0x00, 0x07 ; 00FF4C: provisional 68k move.w #$7, d5
db 0x2C, 0x3C, 0xC3, 0x00, 0x00, 0x00 ; 00FF50: provisional 68k move.l #$c3000000, d6
db 0x4E, 0x40, 0x00, 0x8E ; 00FF56: provisional 68k trap #0 ; OS-9 service word $008E
db 0x65, 0x00, 0x00, 0xA8 ; 00FF5A: provisional 68k bcs.w $10004
db 0x30, 0x2E, 0xAD, 0xA2 ; 00FF5E: provisional 68k move.w -$525e(a6), d0
db 0x72, 0x56 ; 00FF62: provisional 68k moveq #$56, d1
db 0x74, 0x0C ; 00FF64: provisional 68k moveq #$c, d2
db 0x36, 0x2E, 0xC0, 0x4C ; 00FF66: provisional 68k move.w -$3fb4(a6), d3
db 0x38, 0x2E, 0xC0, 0x54 ; 00FF6A: provisional 68k move.w -$3fac(a6), d4
db 0x3A, 0x2E, 0xAD, 0xAC ; 00FF6E: provisional 68k move.w -$5254(a6), d5
db 0x4E, 0x40, 0x00, 0x8E ; 00FF72: provisional 68k trap #0 ; OS-9 service word $008E
db 0x65, 0x00, 0x00, 0x8C ; 00FF76: provisional 68k bcs.w $10004
db 0x30, 0x2E, 0xAD, 0xA2 ; 00FF7A: provisional 68k move.w -$525e(a6), d0
db 0x72, 0x56 ; 00FF7E: provisional 68k moveq #$56, d1
db 0x74, 0x10 ; 00FF80: provisional 68k moveq #$10, d2
db 0x36, 0x2E, 0xC0, 0x56 ; 00FF82: provisional 68k move.w -$3faa(a6), d3
db 0x38, 0x3C, 0x00, 0x00 ; 00FF86: provisional 68k move.w #$0, d4
db 0x3A, 0x3C, 0x00, 0x00 ; 00FF8A: provisional 68k move.w #$0, d5
db 0x3C, 0x2E, 0xAD, 0xB6 ; 00FF8E: provisional 68k move.w -$524a(a6), d6
db 0x3E, 0x3C, 0x00, 0x08 ; 00FF92: provisional 68k move.w #$8, d7
db 0x4E, 0x40, 0x00, 0x8E ; 00FF96: provisional 68k trap #0 ; OS-9 service word $008E
db 0x65, 0x00, 0x00, 0x68 ; 00FF9A: provisional 68k bcs.w $10004
db 0x30, 0x2E, 0xAD, 0xA2 ; 00FF9E: provisional 68k move.w -$525e(a6), d0
db 0x72, 0x56 ; 00FFA2: provisional 68k moveq #$56, d1
db 0x74, 0x0A ; 00FFA4: provisional 68k moveq #$a, d2
db 0x36, 0x2E, 0xC0, 0x56 ; 00FFA6: provisional 68k move.w -$3faa(a6), d3
db 0x38, 0x2E, 0xAD, 0xAC ; 00FFAA: provisional 68k move.w -$5254(a6), d4
db 0x3A, 0x3C, 0x00, 0x07 ; 00FFAE: provisional 68k move.w #$7, d5
db 0x2C, 0x3C, 0xC3, 0x00, 0x00, 0x00 ; 00FFB2: provisional 68k move.l #$c3000000, d6
db 0x4E, 0x40, 0x00, 0x8E ; 00FFB8: provisional 68k trap #0 ; OS-9 service word $008E
db 0x65, 0x00, 0x00, 0x46 ; 00FFBC: provisional 68k bcs.w $10004
db 0x30, 0x2E, 0xAD, 0xA2 ; 00FFC0: provisional 68k move.w -$525e(a6), d0
db 0x72, 0x56 ; 00FFC4: provisional 68k moveq #$56, d1
db 0x74, 0x0C ; 00FFC6: provisional 68k moveq #$c, d2
db 0x36, 0x2E, 0xC0, 0x4E ; 00FFC8: provisional 68k move.w -$3fb2(a6), d3
db 0x38, 0x2E, 0xC0, 0x56 ; 00FFCC: provisional 68k move.w -$3faa(a6), d4
db 0x3A, 0x2E, 0xAD, 0xAC ; 00FFD0: provisional 68k move.w -$5254(a6), d5
db 0x4E, 0x40, 0x00, 0x8E ; 00FFD4: provisional 68k trap #0 ; OS-9 service word $008E
db 0x65, 0x00, 0x00, 0x2A ; 00FFD8: provisional 68k bcs.w $10004
db 0x3E, 0x2E, 0xAD, 0xB6 ; 00FFDC: provisional 68k move.w -$524a(a6), d7
db 0x53, 0x47 ; 00FFE0: provisional 68k subq.w #$1, d7
db 0x61, 0x00, 0x00, 0x0A ; 00FFE2: provisional 68k bsr.w $ffee
db 0x53, 0x47 ; 00FFE6: provisional 68k subq.w #$1, d7
db 0x61, 0x00, 0x00, 0x04 ; 00FFE8: provisional 68k bsr.w $ffee
db 0x4E, 0x75 ; 00FFEC: provisional 68k rts 
