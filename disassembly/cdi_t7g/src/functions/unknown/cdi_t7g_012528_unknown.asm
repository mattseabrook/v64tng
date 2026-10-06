; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 012528–01254F, inclusive.
cdi_t7g_entry_012528:
db 0x00, 0x08 ; file 012528
db 0x61, 0x00, 0x98, 0x24 ; 01252A: provisional 68k bsr.w $bd50
db 0x60, 0x1E ; 01252E: provisional 68k bra.b $1254e
db 0x67, 0x64 ; 012530: provisional 68k beq.b $12596
db 0x69, 0x72 ; 012532: provisional 68k bvs.b $125a6
db 0x5F, 0x64 ; 012534: provisional 68k subq.w #$7, -(a4)
db 0x65, 0x73 ; 012536: provisional 68k bcs.b $125ab
db 0x74, 0x72 ; 012538: provisional 68k moveq #$72, d2
db 0x6F, 0x79 ; 01253A: provisional 68k ble.b $125b5
db 0x20, 0x3A, 0x20, 0x4B ; 01253C: provisional 68k move.l $14589(pc), d0
db 0x69, 0x6C ; 012540: provisional 68k bvs.b $125ae
db 0x6C, 0x69 ; 012542: provisional 68k bge.b $125ad
db 0x6E, 0x67 ; 012544: provisional 68k bgt.b $125ad
db 0x20, 0x6F, 0x62, 0x6A ; 012546: provisional 68k movea.l $626a(a7), a0
db 0x65, 0x63 ; 01254A: provisional 68k bcs.b $125af
db 0x74, 0x00 ; 01254C: provisional 68k moveq #$0, d2
db 0x4E, 0x75 ; 01254E: provisional 68k rts 
