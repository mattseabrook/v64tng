; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 0138BE–013959, inclusive.
cdi_nodv_entry_0138be:
db 0x48, 0xE7, 0xFF, 0xFC ; 0138BE: provisional 68k movem.l d0-d7/a0-a5, -(a7)
db 0x2A, 0x6F, 0x00, 0x3C ; 0138C2: provisional 68k movea.l $3c(a7), a5
db 0x28, 0x6F, 0x00, 0x40 ; 0138C6: provisional 68k movea.l $40(a7), a4
db 0x26, 0x6F, 0x00, 0x44 ; 0138CA: provisional 68k movea.l $44(a7), a3
db 0x0C, 0x6D, 0x00, 0x05, 0x00, 0x1C ; 0138CE: provisional 68k cmpi.w #$5, $1c(a5)
db 0x66, 0x06 ; 0138D4: provisional 68k bne.b $138dc
db 0x61, 0x00, 0x01, 0x44 ; 0138D6: provisional 68k bsr.w $13a1c
db 0x60, 0x44 ; 0138DA: provisional 68k bra.b $13920
db 0x0C, 0x6D, 0x00, 0x06, 0x00, 0x1C ; 0138DC: provisional 68k cmpi.w #$6, $1c(a5)
db 0x66, 0x06 ; 0138E2: provisional 68k bne.b $138ea
db 0x61, 0x00, 0x00, 0xAC ; 0138E4: provisional 68k bsr.w $13992
db 0x60, 0x36 ; 0138E8: provisional 68k bra.b $13920
db 0x0C, 0x6D, 0x00, 0x02, 0x00, 0x1C ; 0138EA: provisional 68k cmpi.w #$2, $1c(a5)
db 0x66, 0x06 ; 0138F0: provisional 68k bne.b $138f8
db 0x61, 0x00, 0x00, 0x9E ; 0138F2: provisional 68k bsr.w $13992
db 0x60, 0x28 ; 0138F6: provisional 68k bra.b $13920
db 0x0C, 0x6D, 0x00, 0x03, 0x00, 0x1C ; 0138F8: provisional 68k cmpi.w #$3, $1c(a5)
db 0x66, 0x06 ; 0138FE: provisional 68k bne.b $13906
db 0x61, 0x00, 0x00, 0x58 ; 013900: provisional 68k bsr.w $1395a
db 0x60, 0x1A ; 013904: provisional 68k bra.b $13920
db 0x0C, 0x6D, 0x00, 0x07, 0x00, 0x1C ; 013906: provisional 68k cmpi.w #$7, $1c(a5)
db 0x66, 0x20 ; 01390C: provisional 68k bne.b $1392e
db 0xB7, 0xFC, 0x00, 0x00, 0x00, 0x00 ; 01390E: provisional 68k cmpa.l #$0, a3
db 0x66, 0x06 ; 013914: provisional 68k bne.b $1391c
db 0x61, 0x00, 0x0C, 0xCA ; 013916: provisional 68k bsr.w $145e2
db 0x60, 0x04 ; 01391A: provisional 68k bra.b $13920
db 0x61, 0x00, 0x0E, 0xEE ; 01391C: provisional 68k bsr.w $1480c
db 0x4C, 0xDF, 0x3F, 0xFF ; 013920: provisional 68k movem.l (a7)+, d0-d7/a0-a5
db 0x2F, 0x57, 0x00, 0x0C ; 013924: provisional 68k move.l (a7), $c(a7)
db 0x4F, 0xEF, 0x00, 0x0C ; 013928: provisional 68k lea.l $c(a7), a7
db 0x4E, 0x75 ; 01392C: provisional 68k rts 
db 0x32, 0x3C, 0x80, 0x00 ; 01392E: provisional 68k move.w #$8000, d1
db 0x61, 0x00, 0x92, 0xCA ; 013932: provisional 68k bsr.w $cbfe
db 0x73, 0x70 ; file 013936
db 0x72, 0x5F ; 013938: provisional 68k moveq #$5f, d1
db 0x70, 0x61 ; 01393A: provisional 68k moveq #$61, d0
db 0x73, 0x74 ; file 01393C
db 0x65, 0x3A ; 01393E: provisional 68k bcs.b $1397a
db 0x20, 0x55 ; 013940: provisional 68k movea.l (a5), a0
db 0x6E, 0x73 ; 013942: provisional 68k bgt.b $139b7
db 0x75, 0x70 ; file 013944
db 0x70, 0x6F ; 013946: provisional 68k moveq #$6f, d0
db 0x72, 0x74 ; 013948: provisional 68k moveq #$74, d1
db 0x65, 0x64 ; 01394A: provisional 68k bcs.b $139b0
db 0x20, 0x73, 0x70, 0x72 ; 01394C: provisional 68k movea.l $72(a3, d7.w), a0
db 0x69, 0x74 ; 013950: provisional 68k bvs.b $139c6
db 0x65, 0x20 ; 013952: provisional 68k bcs.b $13974
db 0x74, 0x79 ; 013954: provisional 68k moveq #$79, d2
db 0x70, 0x65 ; 013956: provisional 68k moveq #$65, d0
db 0x00, 0x00 ; file 013958
