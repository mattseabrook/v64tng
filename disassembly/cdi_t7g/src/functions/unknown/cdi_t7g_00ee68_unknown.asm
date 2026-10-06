; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00EE68–00EEF9, inclusive.
cdi_t7g_entry_00ee68:
db 0x30, 0x2E, 0xAD, 0xA2 ; 00EE68: provisional 68k move.w -$525e(a6), d0
db 0x72, 0x56 ; 00EE6C: provisional 68k moveq #$56, d1
db 0x74, 0x00 ; 00EE6E: provisional 68k moveq #$0, d2
db 0x36, 0x3C, 0x00, 0x00 ; 00EE70: provisional 68k move.w #$0, d3
db 0x38, 0x3C, 0x01, 0x1A ; 00EE74: provisional 68k move.w #$11a, d4
db 0x3A, 0x2E, 0xAD, 0xA8 ; 00EE78: provisional 68k move.w -$5258(a6), d5
db 0x4E, 0x40, 0x00, 0x8E ; 00EE7C: provisional 68k trap #0 ; OS-9 service word $008E
db 0x65, 0x00, 0x00, 0x62 ; 00EE80: provisional 68k bcs.w $eee4
db 0x3D, 0x40, 0xC0, 0x48 ; 00EE84: provisional 68k move.w d0, -$3fb8(a6)
db 0x30, 0x2E, 0xAD, 0xA2 ; 00EE88: provisional 68k move.w -$525e(a6), d0
db 0x72, 0x56 ; 00EE8C: provisional 68k moveq #$56, d1
db 0x74, 0x00 ; 00EE8E: provisional 68k moveq #$0, d2
db 0x36, 0x3C, 0x00, 0x00 ; 00EE90: provisional 68k move.w #$0, d3
db 0x38, 0x3C, 0x01, 0x1A ; 00EE94: provisional 68k move.w #$11a, d4
db 0x3A, 0x2E, 0xAD, 0xA8 ; 00EE98: provisional 68k move.w -$5258(a6), d5
db 0x4E, 0x40, 0x00, 0x8E ; 00EE9C: provisional 68k trap #0 ; OS-9 service word $008E
db 0x65, 0x42 ; 00EEA0: provisional 68k bcs.b $eee4
db 0x3D, 0x40, 0xC0, 0x4A ; 00EEA2: provisional 68k move.w d0, -$3fb6(a6)
db 0x3E, 0x2E, 0xAD, 0xB6 ; 00EEA6: provisional 68k move.w -$524a(a6), d7
db 0x30, 0x2E, 0xAD, 0xA2 ; 00EEAA: provisional 68k move.w -$525e(a6), d0
db 0x72, 0x56 ; 00EEAE: provisional 68k moveq #$56, d1
db 0x74, 0x06 ; 00EEB0: provisional 68k moveq #$6, d2
db 0x36, 0x3C, 0x00, 0x00 ; 00EEB2: provisional 68k move.w #$0, d3
db 0x38, 0x07 ; 00EEB6: provisional 68k move.w d7, d4
db 0x3A, 0x2E, 0xAD, 0xA8 ; 00EEB8: provisional 68k move.w -$5258(a6), d5
db 0x4E, 0x40, 0x00, 0x8E ; 00EEBC: provisional 68k trap #0 ; OS-9 service word $008E
db 0x65, 0x22 ; 00EEC0: provisional 68k bcs.b $eee4
db 0x3D, 0x40, 0xC0, 0x50 ; 00EEC2: provisional 68k move.w d0, -$3fb0(a6)
db 0x30, 0x2E, 0xAD, 0xA2 ; 00EEC6: provisional 68k move.w -$525e(a6), d0
db 0x72, 0x56 ; 00EECA: provisional 68k moveq #$56, d1
db 0x74, 0x06 ; 00EECC: provisional 68k moveq #$6, d2
db 0x36, 0x3C, 0x00, 0x00 ; 00EECE: provisional 68k move.w #$0, d3
db 0x38, 0x07 ; 00EED2: provisional 68k move.w d7, d4
db 0x3A, 0x2E, 0xAD, 0xA8 ; 00EED4: provisional 68k move.w -$5258(a6), d5
db 0x4E, 0x40, 0x00, 0x8E ; 00EED8: provisional 68k trap #0 ; OS-9 service word $008E
db 0x65, 0x06 ; 00EEDC: provisional 68k bcs.b $eee4
db 0x3D, 0x40, 0xC0, 0x52 ; 00EEDE: provisional 68k move.w d0, -$3fae(a6)
db 0x4E, 0x75 ; 00EEE2: provisional 68k rts 
db 0x32, 0x01 ; 00EEE4: provisional 68k move.w d1, d1
db 0x61, 0x00, 0xCE, 0x96 ; 00EEE6: provisional 68k bsr.w $bd7e
db 0x63, 0x72 ; 00EEEA: provisional 68k bls.b $ef5e
db 0x65, 0x61 ; 00EEEC: provisional 68k bcs.b $ef4f
db 0x74, 0x65 ; 00EEEE: provisional 68k moveq #$65, d2
db 0x5F, 0x64 ; 00EEF0: provisional 68k subq.w #$7, -(a4)
db 0x63, 0x70 ; 00EEF2: provisional 68k bls.b $ef64
db 0x5F, 0x61 ; 00EEF4: provisional 68k subq.w #$7, -(a1)
db 0x20, 0x3A, 0x20, 0x00 ; 00EEF6: provisional 68k move.l $10ef8(pc), d0
