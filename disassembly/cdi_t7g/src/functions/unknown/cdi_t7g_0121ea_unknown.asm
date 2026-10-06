; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 0121EA–012333, inclusive.
cdi_t7g_entry_0121ea:
db 0x0C, 0x6C ; file 0121EA
db 0x00, 0x03, 0x00, 0x1C ; 0121EC: provisional 68k ori.b #$1c, d3
db 0x66, 0x00, 0x01, 0x12 ; 0121F0: provisional 68k bne.w $12304
db 0x61, 0x00, 0x01, 0x3E ; 0121F4: provisional 68k bsr.w $12334
db 0x65, 0x00, 0x00, 0x38 ; 0121F8: provisional 68k bcs.w $12232
db 0xE2, 0x4A ; 0121FC: provisional 68k lsr.w #$1, d2
db 0xE2, 0x4C ; 0121FE: provisional 68k lsr.w #$1, d4
db 0x20, 0x6D, 0x00, 0x34 ; 012200: provisional 68k movea.l $34(a5), a0
db 0x22, 0x6C, 0x00, 0x34 ; 012204: provisional 68k movea.l $34(a4), a1
db 0xE5, 0x43 ; 012208: provisional 68k asl.w #$2, d3
db 0xD0, 0xC3 ; 01220A: provisional 68k adda.w d3, a0
db 0xE5, 0x45 ; 01220C: provisional 68k asl.w #$2, d5
db 0xD2, 0xC5 ; 01220E: provisional 68k adda.w d5, a1
db 0x0C, 0x46, 0x03, 0x00 ; 012210: provisional 68k cmpi.w #$300, d6
db 0x67, 0x1E ; 012214: provisional 68k beq.b $12234
db 0xE6, 0x4E ; 012216: provisional 68k lsr.w #$3, d6
db 0x53, 0x46 ; 012218: provisional 68k subq.w #$1, d6
db 0x53, 0x47 ; 01221A: provisional 68k subq.w #$1, d7
db 0x3F, 0x06 ; 01221C: provisional 68k move.w d6, -(a7)
db 0x24, 0x58 ; 01221E: provisional 68k movea.l (a0)+, a2
db 0xD4, 0xC2 ; 012220: provisional 68k adda.w d2, a2
db 0x26, 0x59 ; 012222: provisional 68k movea.l (a1)+, a3
db 0xD6, 0xC4 ; 012224: provisional 68k adda.w d4, a3
db 0x26, 0xDA ; 012226: provisional 68k move.l (a2)+, (a3)+
db 0x51, 0xCE, 0xFF, 0xFC ; 012228: provisional 68k dbra d6, $12226
db 0x3C, 0x1F ; 01222C: provisional 68k move.w (a7)+, d6
db 0x51, 0xCF, 0xFF, 0xEC ; 01222E: provisional 68k dbra d7, $1221c
db 0x4E, 0x75 ; 012232: provisional 68k rts 
db 0x53, 0x47 ; 012234: provisional 68k subq.w #$1, d7
db 0x24, 0x58 ; 012236: provisional 68k movea.l (a0)+, a2
db 0xD4, 0xC2 ; 012238: provisional 68k adda.w d2, a2
db 0x26, 0x59 ; 01223A: provisional 68k movea.l (a1)+, a3
db 0xD6, 0xC4 ; 01223C: provisional 68k adda.w d4, a3
db 0x26, 0xDA ; 01223E: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 012240: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 012242: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 012244: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 012246: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 012248: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 01224A: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 01224C: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 01224E: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 012250: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 012252: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 012254: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 012256: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 012258: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 01225A: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 01225C: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 01225E: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 012260: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 012262: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 012264: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 012266: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 012268: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 01226A: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 01226C: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 01226E: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 012270: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 012272: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 012274: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 012276: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 012278: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 01227A: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 01227C: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 01227E: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 012280: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 012282: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 012284: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 012286: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 012288: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 01228A: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 01228C: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 01228E: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 012290: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 012292: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 012294: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 012296: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 012298: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 01229A: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 01229C: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 01229E: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 0122A0: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 0122A2: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 0122A4: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 0122A6: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 0122A8: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 0122AA: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 0122AC: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 0122AE: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 0122B0: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 0122B2: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 0122B4: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 0122B6: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 0122B8: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 0122BA: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 0122BC: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 0122BE: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 0122C0: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 0122C2: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 0122C4: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 0122C6: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 0122C8: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 0122CA: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 0122CC: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 0122CE: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 0122D0: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 0122D2: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 0122D4: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 0122D6: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 0122D8: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 0122DA: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 0122DC: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 0122DE: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 0122E0: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 0122E2: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 0122E4: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 0122E6: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 0122E8: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 0122EA: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 0122EC: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 0122EE: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 0122F0: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 0122F2: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 0122F4: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 0122F6: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 0122F8: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 0122FA: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 0122FC: provisional 68k move.l (a2)+, (a3)+
db 0x51, 0xCF, 0xFF, 0x36 ; 0122FE: provisional 68k dbra d7, $12236
db 0x4E, 0x75 ; 012302: provisional 68k rts 
db 0x32, 0x3C, 0x80, 0x00 ; 012304: provisional 68k move.w #$8000, d1
db 0x61, 0x00, 0x9A, 0x74 ; 012308: provisional 68k bsr.w $bd7e
db 0x70, 0x61 ; 01230C: provisional 68k moveq #$61, d0
db 0x73, 0x74 ; file 01230E
db 0x65, 0x5F ; 012310: provisional 68k bcs.b $12371
db 0x63, 0x6C ; 012312: provisional 68k bls.b $12380
db 0x34, 0x3A, 0x20, 0x55 ; 012314: provisional 68k move.w $1436b(pc), d2
db 0x6E, 0x73 ; 012318: provisional 68k bgt.b $1238d
db 0x75, 0x70 ; file 01231A
db 0x70, 0x6F ; 01231C: provisional 68k moveq #$6f, d0
db 0x72, 0x74 ; 01231E: provisional 68k moveq #$74, d1
db 0x65, 0x64 ; 012320: provisional 68k bcs.b $12386
db 0x20, 0x64 ; 012322: provisional 68k movea.l -(a4), a0
db 0x65, 0x73 ; 012324: provisional 68k bcs.b $12399
db 0x74, 0x69 ; 012326: provisional 68k moveq #$69, d2
db 0x6E, 0x61 ; 012328: provisional 68k bgt.b $1238b
db 0x74, 0x69 ; 01232A: provisional 68k moveq #$69, d2
db 0x6F, 0x6E ; 01232C: provisional 68k ble.b $1239c
db 0x20, 0x74, 0x79, 0x70, 0x65, 0x00 ; file 01232E
