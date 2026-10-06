; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00E106–00E183, inclusive.
cdi_nodv_entry_00e106:
db 0x00, 0x00 ; file 00E106
db 0x3C, 0x3C, 0xFF, 0xFF ; 00E108: provisional 68k move.w #$ffff, d6
db 0x28, 0x3C, 0x00, 0x00, 0x00, 0x00 ; 00E10C: provisional 68k move.l #$0, d4
db 0x26, 0x3C, 0x00, 0x00, 0x00, 0x00 ; 00E112: provisional 68k move.l #$0, d3
db 0x34, 0x2E, 0xAB, 0x16 ; 00E118: provisional 68k move.w -$54ea(a6), d2
db 0x30, 0x2E, 0xAB, 0x14 ; 00E11C: provisional 68k move.w -$54ec(a6), d0
db 0x32, 0x3C, 0x01, 0x24 ; 00E120: provisional 68k move.w #$124, d1
db 0x4E, 0x40, 0x00, 0x8E ; 00E124: provisional 68k trap #0 ; OS-9 service word $008E
db 0x65, 0x04 ; 00E128: provisional 68k bcs.b $e12e
db 0x4E, 0x75 ; 00E12A: provisional 68k rts 
db 0x4E, 0x75 ; 00E12C: provisional 68k rts 
db 0x32, 0x01 ; 00E12E: provisional 68k move.w d1, d1
db 0x61, 0x00, 0xEA, 0xCC ; 00E130: provisional 68k bsr.w $cbfe
db 0x70, 0x72 ; 00E134: provisional 68k moveq #$72, d0
db 0x65, 0x6C ; 00E136: provisional 68k bcs.b $e1a4
db 0x6F, 0x61 ; 00E138: provisional 68k ble.b $e19b
db 0x64, 0x5F ; 00E13A: provisional 68k bcc.b $e19b
db 0x64, 0x6F ; 00E13C: provisional 68k bcc.b $e1ad
db 0x6E, 0x65 ; 00E13E: provisional 68k bgt.b $e1a5
db 0x3A, 0x20 ; 00E140: provisional 68k move.w -(a0), d5
db 0x45, 0x72 ; file 00E142
db 0x72, 0x6F ; 00E144: provisional 68k moveq #$6f, d1
db 0x72, 0x20 ; 00E146: provisional 68k moveq #$20, d1
db 0x6F, 0x6E ; 00E148: provisional 68k ble.b $e1b8
db 0x20, 0x6D, 0x61, 0x5F ; 00E14A: provisional 68k movea.l $615f(a5), a0
db 0x70, 0x6C ; 00E14E: provisional 68k moveq #$6c, d0
db 0x61, 0x79 ; 00E150: provisional 68k bsr.b $e1cb
db 0x00, 0x00, 0x4A, 0xAE ; 00E152: provisional 68k ori.b #$ae, d0
db 0xAB, 0xB6 ; 00E156: provisional 68k dc.w $abb6
db 0x67, 0x0C ; 00E158: provisional 68k beq.b $e166
db 0x2A, 0x6E, 0xAB, 0xB6 ; 00E15A: provisional 68k movea.l -$544a(a6), a5
db 0x3B, 0x7C, 0x00, 0x04, 0x00, 0x1C ; 00E15E: provisional 68k move.w #$4, $1c(a5)
db 0x4E, 0x75 ; 00E164: provisional 68k rts 
db 0x32, 0x3C, 0x80, 0x00 ; 00E166: provisional 68k move.w #$8000, d1
db 0x61, 0x00, 0xEA, 0x92 ; 00E16A: provisional 68k bsr.w $cbfe
db 0x73, 0x72 ; file 00E16E
db 0x76, 0x5F ; 00E170: provisional 68k moveq #$5f, d3
db 0x65, 0x6F ; 00E172: provisional 68k bcs.b $e1e3
db 0x66, 0x3A ; 00E174: provisional 68k bne.b $e1b0
db 0x20, 0x63 ; 00E176: provisional 68k movea.l -(a3), a0
db 0x75, 0x72 ; file 00E178
db 0x5F, 0x62 ; 00E17A: provisional 68k subq.w #$7, -(a2)
db 0x61, 0x64 ; 00E17C: provisional 68k bsr.b $e1e2
db 0x20, 0x3D ; file 00E17E
db 0x20, 0x30, 0x20, 0x00 ; 00E180: provisional 68k move.l (a0, d2.w), d0
