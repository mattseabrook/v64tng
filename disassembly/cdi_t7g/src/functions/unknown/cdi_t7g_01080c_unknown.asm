; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 01080C–010899, inclusive.
cdi_t7g_entry_01080c:
db 0x2F, 0x00 ; 01080C: provisional 68k move.l d0, -(a7)
db 0x20, 0x6F, 0x00, 0x08 ; 01080E: provisional 68k movea.l $8(a7), a0
db 0x30, 0x2F, 0x00, 0x0C ; 010812: provisional 68k move.w $c(a7), d0
db 0x90, 0x68, 0x00, 0x20 ; 010816: provisional 68k sub.w $20(a0), d0
db 0x6B, 0x22 ; 01081A: provisional 68k bmi.b $1083e
db 0x0C, 0x6E, 0x00, 0x01, 0xAD, 0xA8 ; 01081C: provisional 68k cmpi.w #$1, -$5258(a6)
db 0x67, 0x02 ; 010822: provisional 68k beq.b $10826
db 0xE4, 0x48 ; 010824: provisional 68k lsr.w #$2, d0
db 0xE5, 0x40 ; 010826: provisional 68k asl.w #$2, d0
db 0xC0, 0xE8, 0x00, 0x22 ; 010828: provisional 68k mulu.w $22(a0), d0
db 0x20, 0x68, 0x00, 0x24 ; 01082C: provisional 68k movea.l $24(a0), a0
db 0xD0, 0xC0 ; 010830: provisional 68k adda.w d0, a0
db 0x20, 0x1F ; 010832: provisional 68k move.l (a7)+, d0
db 0x2F, 0x57, 0x00, 0x06 ; 010834: provisional 68k move.l (a7), $6(a7)
db 0x4F, 0xEF, 0x00, 0x06 ; 010838: provisional 68k lea.l $6(a7), a7
db 0x4E, 0x75 ; 01083C: provisional 68k rts 
db 0x42, 0xE7 ; 01083E: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 010840: provisional 68k pea.l $1084a(pc)
db 0x61, 0x00, 0xB5, 0x0A ; 010844: provisional 68k bsr.w $bd50
db 0x60, 0x12 ; 010848: provisional 68k bra.b $1085c
db 0x6C, 0x63 ; 01084A: provisional 68k bge.b $108af
db 0x74, 0x62 ; 01084C: provisional 68k moveq #$62, d2
db 0x66, 0x72 ; 01084E: provisional 68k bne.b $108c2
db 0x5F, 0x73, 0x63, 0x61, 0x6E, 0x6C ; 010850: provisional 68k subq.w #$7, ([$6e6c, a3])
db 0x69, 0x6E ; 010856: provisional 68k bvs.b $108c6
db 0x65, 0x3A ; 010858: provisional 68k bcs.b $10894
db 0x20, 0x00 ; 01085A: provisional 68k move.l d0, d0
db 0x3F, 0x00 ; 01085C: provisional 68k move.w d0, -(a7)
db 0x61, 0x00, 0xB4, 0x3E ; 01085E: provisional 68k bsr.w $bc9e
db 0x44, 0xDF ; 010862: provisional 68k move.w (a7)+, ccr
db 0x61, 0x00, 0xB4, 0xD0 ; 010864: provisional 68k bsr.w $bd36
db 0x32, 0x3C, 0x80, 0x00 ; 010868: provisional 68k move.w #$8000, d1
db 0x61, 0x00, 0xB5, 0x10 ; 01086C: provisional 68k bsr.w $bd7e
db 0x6C, 0x63 ; 010870: provisional 68k bge.b $108d5
db 0x74, 0x62 ; 010872: provisional 68k moveq #$62, d2
db 0x66, 0x72 ; 010874: provisional 68k bne.b $108e8
db 0x5F, 0x73, 0x63, 0x61, 0x6E, 0x6C ; 010876: provisional 68k subq.w #$7, ([$6e6c, a3])
db 0x69, 0x6E ; 01087C: provisional 68k bvs.b $108ec
db 0x65, 0x3A ; 01087E: provisional 68k bcs.b $108ba
db 0x20, 0x53 ; 010880: provisional 68k movea.l (a3), a0
db 0x63, 0x61 ; 010882: provisional 68k bls.b $108e5
db 0x6E, 0x6C ; 010884: provisional 68k bgt.b $108f2
db 0x69, 0x6E ; 010886: provisional 68k bvs.b $108f6
db 0x65, 0x20 ; 010888: provisional 68k bcs.b $108aa
db 0x64, 0x6F ; 01088A: provisional 68k bcc.b $108fb
db 0x65, 0x73 ; 01088C: provisional 68k bcs.b $10901
db 0x6E, 0x27 ; 01088E: provisional 68k bgt.b $108b7
db 0x74, 0x20 ; 010890: provisional 68k moveq #$20, d2
db 0x65, 0x78 ; 010892: provisional 68k bcs.b $1090c
db 0x69, 0x73 ; 010894: provisional 68k bvs.b $10909
db 0x74, 0x21 ; 010896: provisional 68k moveq #$21, d2
db 0x00, 0x00 ; file 010898
