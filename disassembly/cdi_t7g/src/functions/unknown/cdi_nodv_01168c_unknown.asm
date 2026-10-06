; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 01168C–011719, inclusive.
cdi_nodv_entry_01168c:
db 0x2F, 0x00 ; 01168C: provisional 68k move.l d0, -(a7)
db 0x20, 0x6F, 0x00, 0x08 ; 01168E: provisional 68k movea.l $8(a7), a0
db 0x30, 0x2F, 0x00, 0x0C ; 011692: provisional 68k move.w $c(a7), d0
db 0x90, 0x68, 0x00, 0x20 ; 011696: provisional 68k sub.w $20(a0), d0
db 0x6B, 0x22 ; 01169A: provisional 68k bmi.b $116be
db 0x0C, 0x6E, 0x00, 0x01, 0xAD, 0xA8 ; 01169C: provisional 68k cmpi.w #$1, -$5258(a6)
db 0x67, 0x02 ; 0116A2: provisional 68k beq.b $116a6
db 0xE4, 0x48 ; 0116A4: provisional 68k lsr.w #$2, d0
db 0xE5, 0x40 ; 0116A6: provisional 68k asl.w #$2, d0
db 0xC0, 0xE8, 0x00, 0x22 ; 0116A8: provisional 68k mulu.w $22(a0), d0
db 0x20, 0x68, 0x00, 0x24 ; 0116AC: provisional 68k movea.l $24(a0), a0
db 0xD0, 0xC0 ; 0116B0: provisional 68k adda.w d0, a0
db 0x20, 0x1F ; 0116B2: provisional 68k move.l (a7)+, d0
db 0x2F, 0x57, 0x00, 0x06 ; 0116B4: provisional 68k move.l (a7), $6(a7)
db 0x4F, 0xEF, 0x00, 0x06 ; 0116B8: provisional 68k lea.l $6(a7), a7
db 0x4E, 0x75 ; 0116BC: provisional 68k rts 
db 0x42, 0xE7 ; 0116BE: provisional 68k dc.w $42e7
db 0x48, 0x7A, 0x00, 0x08 ; 0116C0: provisional 68k pea.l $116ca(pc)
db 0x61, 0x00, 0xB5, 0x0A ; 0116C4: provisional 68k bsr.w $cbd0
db 0x60, 0x12 ; 0116C8: provisional 68k bra.b $116dc
db 0x6C, 0x63 ; 0116CA: provisional 68k bge.b $1172f
db 0x74, 0x62 ; 0116CC: provisional 68k moveq #$62, d2
db 0x66, 0x72 ; 0116CE: provisional 68k bne.b $11742
db 0x5F, 0x73, 0x63, 0x61, 0x6E, 0x6C ; 0116D0: provisional 68k subq.w #$7, ([$6e6c, a3])
db 0x69, 0x6E ; 0116D6: provisional 68k bvs.b $11746
db 0x65, 0x3A ; 0116D8: provisional 68k bcs.b $11714
db 0x20, 0x00 ; 0116DA: provisional 68k move.l d0, d0
db 0x3F, 0x00 ; 0116DC: provisional 68k move.w d0, -(a7)
db 0x61, 0x00, 0xB4, 0x3E ; 0116DE: provisional 68k bsr.w $cb1e
db 0x44, 0xDF ; 0116E2: provisional 68k move.w (a7)+, ccr
db 0x61, 0x00, 0xB4, 0xD0 ; 0116E4: provisional 68k bsr.w $cbb6
db 0x32, 0x3C, 0x80, 0x00 ; 0116E8: provisional 68k move.w #$8000, d1
db 0x61, 0x00, 0xB5, 0x10 ; 0116EC: provisional 68k bsr.w $cbfe
db 0x6C, 0x63 ; 0116F0: provisional 68k bge.b $11755
db 0x74, 0x62 ; 0116F2: provisional 68k moveq #$62, d2
db 0x66, 0x72 ; 0116F4: provisional 68k bne.b $11768
db 0x5F, 0x73, 0x63, 0x61, 0x6E, 0x6C ; 0116F6: provisional 68k subq.w #$7, ([$6e6c, a3])
db 0x69, 0x6E ; 0116FC: provisional 68k bvs.b $1176c
db 0x65, 0x3A ; 0116FE: provisional 68k bcs.b $1173a
db 0x20, 0x53 ; 011700: provisional 68k movea.l (a3), a0
db 0x63, 0x61 ; 011702: provisional 68k bls.b $11765
db 0x6E, 0x6C ; 011704: provisional 68k bgt.b $11772
db 0x69, 0x6E ; 011706: provisional 68k bvs.b $11776
db 0x65, 0x20 ; 011708: provisional 68k bcs.b $1172a
db 0x64, 0x6F ; 01170A: provisional 68k bcc.b $1177b
db 0x65, 0x73 ; 01170C: provisional 68k bcs.b $11781
db 0x6E, 0x27 ; 01170E: provisional 68k bgt.b $11737
db 0x74, 0x20 ; 011710: provisional 68k moveq #$20, d2
db 0x65, 0x78 ; 011712: provisional 68k bcs.b $1178c
db 0x69, 0x73 ; 011714: provisional 68k bvs.b $11789
db 0x74, 0x21 ; 011716: provisional 68k moveq #$21, d2
db 0x00, 0x00 ; file 011718
