; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00FD7A–00FE4B, inclusive.
cdi_nodv_entry_00fd7a:
db 0x30, 0x2E, 0xAD, 0xA2 ; 00FD7A: provisional 68k move.w -$525e(a6), d0
db 0x72, 0x56 ; 00FD7E: provisional 68k moveq #$56, d1
db 0x74, 0x10 ; 00FD80: provisional 68k moveq #$10, d2
db 0x36, 0x2E, 0xC0, 0x50 ; 00FD82: provisional 68k move.w -$3fb0(a6), d3
db 0x38, 0x3C, 0x00, 0x00 ; 00FD86: provisional 68k move.w #$0, d4
db 0x3A, 0x3C, 0x00, 0x00 ; 00FD8A: provisional 68k move.w #$0, d5
db 0x3C, 0x2E, 0xAD, 0xB6 ; 00FD8E: provisional 68k move.w -$524a(a6), d6
db 0x3E, 0x3C, 0x00, 0x08 ; 00FD92: provisional 68k move.w #$8, d7
db 0x4E, 0x40, 0x00, 0x8E ; 00FD96: provisional 68k trap #0 ; OS-9 service word $008E
db 0x65, 0x00, 0x00, 0xCE ; 00FD9A: provisional 68k bcs.w $fe6a
db 0x30, 0x2E, 0xAD, 0xA2 ; 00FD9E: provisional 68k move.w -$525e(a6), d0
db 0x72, 0x56 ; 00FDA2: provisional 68k moveq #$56, d1
db 0x74, 0x0A ; 00FDA4: provisional 68k moveq #$a, d2
db 0x36, 0x2E, 0xC0, 0x50 ; 00FDA6: provisional 68k move.w -$3fb0(a6), d3
db 0x38, 0x2E, 0xAD, 0xAC ; 00FDAA: provisional 68k move.w -$5254(a6), d4
db 0x3A, 0x3C, 0x00, 0x07 ; 00FDAE: provisional 68k move.w #$7, d5
db 0x2C, 0x3C, 0xC3, 0x00, 0x00, 0x00 ; 00FDB2: provisional 68k move.l #$c3000000, d6
db 0x4E, 0x40, 0x00, 0x8E ; 00FDB8: provisional 68k trap #0 ; OS-9 service word $008E
db 0x65, 0x00, 0x00, 0xAC ; 00FDBC: provisional 68k bcs.w $fe6a
db 0x30, 0x2E, 0xAD, 0xA2 ; 00FDC0: provisional 68k move.w -$525e(a6), d0
db 0x72, 0x56 ; 00FDC4: provisional 68k moveq #$56, d1
db 0x74, 0x0C ; 00FDC6: provisional 68k moveq #$c, d2
db 0x36, 0x2E, 0xC0, 0x48 ; 00FDC8: provisional 68k move.w -$3fb8(a6), d3
db 0x38, 0x2E, 0xC0, 0x50 ; 00FDCC: provisional 68k move.w -$3fb0(a6), d4
db 0x3A, 0x2E, 0xAD, 0xAC ; 00FDD0: provisional 68k move.w -$5254(a6), d5
db 0x4E, 0x40, 0x00, 0x8E ; 00FDD4: provisional 68k trap #0 ; OS-9 service word $008E
db 0x65, 0x00, 0x00, 0x90 ; 00FDD8: provisional 68k bcs.w $fe6a
db 0x30, 0x2E, 0xAD, 0xA2 ; 00FDDC: provisional 68k move.w -$525e(a6), d0
db 0x72, 0x56 ; 00FDE0: provisional 68k moveq #$56, d1
db 0x74, 0x10 ; 00FDE2: provisional 68k moveq #$10, d2
db 0x36, 0x2E, 0xC0, 0x52 ; 00FDE4: provisional 68k move.w -$3fae(a6), d3
db 0x38, 0x3C, 0x00, 0x00 ; 00FDE8: provisional 68k move.w #$0, d4
db 0x3A, 0x3C, 0x00, 0x00 ; 00FDEC: provisional 68k move.w #$0, d5
db 0x3C, 0x2E, 0xAD, 0xB6 ; 00FDF0: provisional 68k move.w -$524a(a6), d6
db 0x3E, 0x3C, 0x00, 0x08 ; 00FDF4: provisional 68k move.w #$8, d7
db 0x4E, 0x40, 0x00, 0x8E ; 00FDF8: provisional 68k trap #0 ; OS-9 service word $008E
db 0x65, 0x00, 0x00, 0x6C ; 00FDFC: provisional 68k bcs.w $fe6a
db 0x30, 0x2E, 0xAD, 0xA2 ; 00FE00: provisional 68k move.w -$525e(a6), d0
db 0x72, 0x56 ; 00FE04: provisional 68k moveq #$56, d1
db 0x74, 0x0A ; 00FE06: provisional 68k moveq #$a, d2
db 0x36, 0x2E, 0xC0, 0x52 ; 00FE08: provisional 68k move.w -$3fae(a6), d3
db 0x38, 0x2E, 0xAD, 0xAC ; 00FE0C: provisional 68k move.w -$5254(a6), d4
db 0x3A, 0x3C, 0x00, 0x07 ; 00FE10: provisional 68k move.w #$7, d5
db 0x2C, 0x3C, 0xC3, 0x00, 0x00, 0x00 ; 00FE14: provisional 68k move.l #$c3000000, d6
db 0x4E, 0x40, 0x00, 0x8E ; 00FE1A: provisional 68k trap #0 ; OS-9 service word $008E
db 0x65, 0x00, 0x00, 0x4A ; 00FE1E: provisional 68k bcs.w $fe6a
db 0x30, 0x2E, 0xAD, 0xA2 ; 00FE22: provisional 68k move.w -$525e(a6), d0
db 0x72, 0x56 ; 00FE26: provisional 68k moveq #$56, d1
db 0x74, 0x0C ; 00FE28: provisional 68k moveq #$c, d2
db 0x36, 0x2E, 0xC0, 0x4A ; 00FE2A: provisional 68k move.w -$3fb6(a6), d3
db 0x38, 0x2E, 0xC0, 0x52 ; 00FE2E: provisional 68k move.w -$3fae(a6), d4
db 0x3A, 0x2E, 0xAD, 0xAC ; 00FE32: provisional 68k move.w -$5254(a6), d5
db 0x4E, 0x40, 0x00, 0x8E ; 00FE36: provisional 68k trap #0 ; OS-9 service word $008E
db 0x65, 0x00, 0x00, 0x2E ; 00FE3A: provisional 68k bcs.w $fe6a
db 0x3E, 0x2E, 0xAD, 0xB6 ; 00FE3E: provisional 68k move.w -$524a(a6), d7
db 0x53, 0x47 ; 00FE42: provisional 68k subq.w #$1, d7
db 0x61, 0x06 ; 00FE44: provisional 68k bsr.b $fe4c
db 0x53, 0x47 ; 00FE46: provisional 68k subq.w #$1, d7
db 0x61, 0x02 ; 00FE48: provisional 68k bsr.b $fe4c
db 0x4E, 0x75 ; 00FE4A: provisional 68k rts 
