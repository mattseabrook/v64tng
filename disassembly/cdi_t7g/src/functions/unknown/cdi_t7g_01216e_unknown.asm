; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 01216E–0121D7, inclusive.
cdi_t7g_entry_01216e:
db 0x0C, 0x6C ; file 01216E
db 0x00, 0x06, 0x00, 0x1C ; 012170: provisional 68k ori.b #$1c, d6
db 0x67, 0x0A ; 012174: provisional 68k beq.b $12180
db 0x0C, 0x6C, 0x00, 0x02, 0x00, 0x1C ; 012176: provisional 68k cmpi.w #$2, $1c(a4)
db 0x66, 0x00, 0x00, 0x3C ; 01217C: provisional 68k bne.w $121ba
db 0x61, 0x00, 0x01, 0xB2 ; 012180: provisional 68k bsr.w $12334
db 0x65, 0x00, 0x00, 0x32 ; 012184: provisional 68k bcs.w $121b8
db 0xE2, 0x4A ; 012188: provisional 68k lsr.w #$1, d2
db 0xE2, 0x4C ; 01218A: provisional 68k lsr.w #$1, d4
db 0x20, 0x6D, 0x00, 0x34 ; 01218C: provisional 68k movea.l $34(a5), a0
db 0x22, 0x6C, 0x00, 0x34 ; 012190: provisional 68k movea.l $34(a4), a1
db 0xE5, 0x43 ; 012194: provisional 68k asl.w #$2, d3
db 0xD0, 0xC3 ; 012196: provisional 68k adda.w d3, a0
db 0xE5, 0x45 ; 012198: provisional 68k asl.w #$2, d5
db 0xD2, 0xC5 ; 01219A: provisional 68k adda.w d5, a1
db 0xE4, 0x4E ; 01219C: provisional 68k lsr.w #$2, d6
db 0x53, 0x46 ; 01219E: provisional 68k subq.w #$1, d6
db 0x53, 0x47 ; 0121A0: provisional 68k subq.w #$1, d7
db 0x3F, 0x06 ; 0121A2: provisional 68k move.w d6, -(a7)
db 0x24, 0x58 ; 0121A4: provisional 68k movea.l (a0)+, a2
db 0xD4, 0xC2 ; 0121A6: provisional 68k adda.w d2, a2
db 0x26, 0x59 ; 0121A8: provisional 68k movea.l (a1)+, a3
db 0xD6, 0xC4 ; 0121AA: provisional 68k adda.w d4, a3
db 0x36, 0xDA ; 0121AC: provisional 68k move.w (a2)+, (a3)+
db 0x51, 0xCE, 0xFF, 0xFC ; 0121AE: provisional 68k dbra d6, $121ac
db 0x3C, 0x1F ; 0121B2: provisional 68k move.w (a7)+, d6
db 0x51, 0xCF, 0xFF, 0xEC ; 0121B4: provisional 68k dbra d7, $121a2
db 0x4E, 0x75 ; 0121B8: provisional 68k rts 
db 0x32, 0x3C, 0x80, 0x00 ; 0121BA: provisional 68k move.w #$8000, d1
db 0x61, 0x00, 0x9B, 0xBE ; 0121BE: provisional 68k bsr.w $bd7e
db 0x70, 0x61 ; 0121C2: provisional 68k moveq #$61, d0
db 0x73, 0x74 ; file 0121C4
db 0x65, 0x5F ; 0121C6: provisional 68k bcs.b $12227
db 0x63, 0x6C ; 0121C8: provisional 68k bls.b $12236
db 0x38, 0x3A, 0x20, 0x55 ; 0121CA: provisional 68k move.w $14221(pc), d4
db 0x6E, 0x73 ; 0121CE: provisional 68k bgt.b $12243
db 0x75, 0x70 ; file 0121D0
db 0x70, 0x6F ; 0121D2: provisional 68k moveq #$6f, d0
db 0x72, 0x74 ; 0121D4: provisional 68k moveq #$74, d1
db 0x65, 0x64 ; 0121D6: provisional 68k bcs.b $1223c
