; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 012878–0128D3, inclusive.
cdi_t7g_entry_012878:
db 0x00, 0x48, 0x00, 0xDA, 0x00, 0xFC ; file 012878
db 0x32, 0x39, 0x00, 0x00, 0x80, 0x00 ; 01287E: provisional 68k move.w $8000.l, d1
db 0x61, 0x00, 0x94, 0xF8 ; 012884: provisional 68k bsr.w $bd7e
db 0x73, 0x70 ; file 012888
db 0x72, 0x5F ; 01288A: provisional 68k moveq #$5f, d1
db 0x63, 0x72 ; 01288C: provisional 68k bls.b $12900
db 0x65, 0x61 ; 01288E: provisional 68k bcs.b $128f1
db 0x74, 0x65 ; 012890: provisional 68k moveq #$65, d2
db 0x20, 0x3A, 0x20, 0x53 ; 012892: provisional 68k move.l $148e7(pc), d0
db 0x70, 0x72 ; 012896: provisional 68k moveq #$72, d0
db 0x69, 0x74 ; 012898: provisional 68k bvs.b $1290e
db 0x65, 0x20 ; 01289A: provisional 68k bcs.b $128bc
db 0x74, 0x79 ; 01289C: provisional 68k moveq #$79, d2
db 0x70, 0x65 ; 01289E: provisional 68k moveq #$65, d0
db 0x20, 0x6E, 0x6F, 0x74 ; 0128A0: provisional 68k movea.l $6f74(a6), a0
db 0x20, 0x69, 0x6D, 0x70 ; 0128A4: provisional 68k movea.l $6d70(a1), a0
db 0x6C, 0x65 ; 0128A8: provisional 68k bge.b $1290f
db 0x6D, 0x65 ; 0128AA: provisional 68k blt.b $12911
db 0x6E, 0x74 ; 0128AC: provisional 68k bgt.b $12922
db 0x65, 0x64 ; 0128AE: provisional 68k bcs.b $12914
db 0x20, 0x79, 0x65, 0x74, 0x00, 0x00 ; 0128B0: provisional 68k movea.l $65740000.l, a0
db 0x42, 0x6D, 0x00, 0x2A ; 0128B6: provisional 68k clr.w $2a(a5)
db 0x56, 0x42 ; 0128BA: provisional 68k addq.w #$3, d2
db 0x52, 0x43 ; 0128BC: provisional 68k addq.w #$1, d3
db 0xE4, 0x4A ; 0128BE: provisional 68k lsr.w #$2, d2
db 0xC4, 0xFC, 0x00, 0x0A ; 0128C0: provisional 68k mulu.w #$a, d2
db 0xE2, 0x4B ; 0128C4: provisional 68k lsr.w #$1, d3
db 0x3B, 0x42, 0x00, 0x2C ; 0128C6: provisional 68k move.w d2, $2c(a5)
db 0x3B, 0x43, 0x00, 0x2E ; 0128CA: provisional 68k move.w d3, $2e(a5)
db 0x61, 0x00, 0x00, 0x04 ; 0128CE: provisional 68k bsr.w $128d4
db 0x4E, 0x75 ; 0128D2: provisional 68k rts 
