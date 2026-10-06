; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 0136F8–013753, inclusive.
cdi_nodv_entry_0136f8:
db 0x00, 0x48, 0x00, 0xDA, 0x00, 0xFC ; file 0136F8
db 0x32, 0x39, 0x00, 0x00, 0x80, 0x00 ; 0136FE: provisional 68k move.w $8000.l, d1
db 0x61, 0x00, 0x94, 0xF8 ; 013704: provisional 68k bsr.w $cbfe
db 0x73, 0x70 ; file 013708
db 0x72, 0x5F ; 01370A: provisional 68k moveq #$5f, d1
db 0x63, 0x72 ; 01370C: provisional 68k bls.b $13780
db 0x65, 0x61 ; 01370E: provisional 68k bcs.b $13771
db 0x74, 0x65 ; 013710: provisional 68k moveq #$65, d2
db 0x20, 0x3A, 0x20, 0x53 ; 013712: provisional 68k move.l $15767(pc), d0
db 0x70, 0x72 ; 013716: provisional 68k moveq #$72, d0
db 0x69, 0x74 ; 013718: provisional 68k bvs.b $1378e
db 0x65, 0x20 ; 01371A: provisional 68k bcs.b $1373c
db 0x74, 0x79 ; 01371C: provisional 68k moveq #$79, d2
db 0x70, 0x65 ; 01371E: provisional 68k moveq #$65, d0
db 0x20, 0x6E, 0x6F, 0x74 ; 013720: provisional 68k movea.l $6f74(a6), a0
db 0x20, 0x69, 0x6D, 0x70 ; 013724: provisional 68k movea.l $6d70(a1), a0
db 0x6C, 0x65 ; 013728: provisional 68k bge.b $1378f
db 0x6D, 0x65 ; 01372A: provisional 68k blt.b $13791
db 0x6E, 0x74 ; 01372C: provisional 68k bgt.b $137a2
db 0x65, 0x64 ; 01372E: provisional 68k bcs.b $13794
db 0x20, 0x79, 0x65, 0x74, 0x00, 0x00 ; 013730: provisional 68k movea.l $65740000.l, a0
db 0x42, 0x6D, 0x00, 0x2A ; 013736: provisional 68k clr.w $2a(a5)
db 0x56, 0x42 ; 01373A: provisional 68k addq.w #$3, d2
db 0x52, 0x43 ; 01373C: provisional 68k addq.w #$1, d3
db 0xE4, 0x4A ; 01373E: provisional 68k lsr.w #$2, d2
db 0xC4, 0xFC, 0x00, 0x0A ; 013740: provisional 68k mulu.w #$a, d2
db 0xE2, 0x4B ; 013744: provisional 68k lsr.w #$1, d3
db 0x3B, 0x42, 0x00, 0x2C ; 013746: provisional 68k move.w d2, $2c(a5)
db 0x3B, 0x43, 0x00, 0x2E ; 01374A: provisional 68k move.w d3, $2e(a5)
db 0x61, 0x00, 0x00, 0x04 ; 01374E: provisional 68k bsr.w $13754
db 0x4E, 0x75 ; 013752: provisional 68k rts 
