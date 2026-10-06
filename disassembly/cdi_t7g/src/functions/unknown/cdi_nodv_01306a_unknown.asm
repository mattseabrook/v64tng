; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 01306A–0131B3, inclusive.
cdi_nodv_entry_01306a:
db 0x0C, 0x6C ; file 01306A
db 0x00, 0x03, 0x00, 0x1C ; 01306C: provisional 68k ori.b #$1c, d3
db 0x66, 0x00, 0x01, 0x12 ; 013070: provisional 68k bne.w $13184
db 0x61, 0x00, 0x01, 0x3E ; 013074: provisional 68k bsr.w $131b4
db 0x65, 0x00, 0x00, 0x38 ; 013078: provisional 68k bcs.w $130b2
db 0xE2, 0x4A ; 01307C: provisional 68k lsr.w #$1, d2
db 0xE2, 0x4C ; 01307E: provisional 68k lsr.w #$1, d4
db 0x20, 0x6D, 0x00, 0x34 ; 013080: provisional 68k movea.l $34(a5), a0
db 0x22, 0x6C, 0x00, 0x34 ; 013084: provisional 68k movea.l $34(a4), a1
db 0xE5, 0x43 ; 013088: provisional 68k asl.w #$2, d3
db 0xD0, 0xC3 ; 01308A: provisional 68k adda.w d3, a0
db 0xE5, 0x45 ; 01308C: provisional 68k asl.w #$2, d5
db 0xD2, 0xC5 ; 01308E: provisional 68k adda.w d5, a1
db 0x0C, 0x46, 0x03, 0x00 ; 013090: provisional 68k cmpi.w #$300, d6
db 0x67, 0x1E ; 013094: provisional 68k beq.b $130b4
db 0xE6, 0x4E ; 013096: provisional 68k lsr.w #$3, d6
db 0x53, 0x46 ; 013098: provisional 68k subq.w #$1, d6
db 0x53, 0x47 ; 01309A: provisional 68k subq.w #$1, d7
db 0x3F, 0x06 ; 01309C: provisional 68k move.w d6, -(a7)
db 0x24, 0x58 ; 01309E: provisional 68k movea.l (a0)+, a2
db 0xD4, 0xC2 ; 0130A0: provisional 68k adda.w d2, a2
db 0x26, 0x59 ; 0130A2: provisional 68k movea.l (a1)+, a3
db 0xD6, 0xC4 ; 0130A4: provisional 68k adda.w d4, a3
db 0x26, 0xDA ; 0130A6: provisional 68k move.l (a2)+, (a3)+
db 0x51, 0xCE, 0xFF, 0xFC ; 0130A8: provisional 68k dbra d6, $130a6
db 0x3C, 0x1F ; 0130AC: provisional 68k move.w (a7)+, d6
db 0x51, 0xCF, 0xFF, 0xEC ; 0130AE: provisional 68k dbra d7, $1309c
db 0x4E, 0x75 ; 0130B2: provisional 68k rts 
db 0x53, 0x47 ; 0130B4: provisional 68k subq.w #$1, d7
db 0x24, 0x58 ; 0130B6: provisional 68k movea.l (a0)+, a2
db 0xD4, 0xC2 ; 0130B8: provisional 68k adda.w d2, a2
db 0x26, 0x59 ; 0130BA: provisional 68k movea.l (a1)+, a3
db 0xD6, 0xC4 ; 0130BC: provisional 68k adda.w d4, a3
db 0x26, 0xDA ; 0130BE: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 0130C0: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 0130C2: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 0130C4: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 0130C6: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 0130C8: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 0130CA: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 0130CC: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 0130CE: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 0130D0: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 0130D2: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 0130D4: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 0130D6: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 0130D8: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 0130DA: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 0130DC: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 0130DE: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 0130E0: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 0130E2: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 0130E4: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 0130E6: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 0130E8: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 0130EA: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 0130EC: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 0130EE: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 0130F0: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 0130F2: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 0130F4: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 0130F6: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 0130F8: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 0130FA: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 0130FC: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 0130FE: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 013100: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 013102: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 013104: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 013106: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 013108: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 01310A: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 01310C: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 01310E: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 013110: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 013112: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 013114: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 013116: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 013118: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 01311A: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 01311C: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 01311E: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 013120: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 013122: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 013124: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 013126: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 013128: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 01312A: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 01312C: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 01312E: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 013130: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 013132: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 013134: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 013136: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 013138: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 01313A: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 01313C: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 01313E: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 013140: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 013142: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 013144: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 013146: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 013148: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 01314A: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 01314C: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 01314E: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 013150: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 013152: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 013154: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 013156: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 013158: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 01315A: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 01315C: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 01315E: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 013160: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 013162: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 013164: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 013166: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 013168: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 01316A: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 01316C: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 01316E: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 013170: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 013172: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 013174: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 013176: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 013178: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 01317A: provisional 68k move.l (a2)+, (a3)+
db 0x26, 0xDA ; 01317C: provisional 68k move.l (a2)+, (a3)+
db 0x51, 0xCF, 0xFF, 0x36 ; 01317E: provisional 68k dbra d7, $130b6
db 0x4E, 0x75 ; 013182: provisional 68k rts 
db 0x32, 0x3C, 0x80, 0x00 ; 013184: provisional 68k move.w #$8000, d1
db 0x61, 0x00, 0x9A, 0x74 ; 013188: provisional 68k bsr.w $cbfe
db 0x70, 0x61 ; 01318C: provisional 68k moveq #$61, d0
db 0x73, 0x74 ; file 01318E
db 0x65, 0x5F ; 013190: provisional 68k bcs.b $131f1
db 0x63, 0x6C ; 013192: provisional 68k bls.b $13200
db 0x34, 0x3A, 0x20, 0x55 ; 013194: provisional 68k move.w $151eb(pc), d2
db 0x6E, 0x73 ; 013198: provisional 68k bgt.b $1320d
db 0x75, 0x70 ; file 01319A
db 0x70, 0x6F ; 01319C: provisional 68k moveq #$6f, d0
db 0x72, 0x74 ; 01319E: provisional 68k moveq #$74, d1
db 0x65, 0x64 ; 0131A0: provisional 68k bcs.b $13206
db 0x20, 0x64 ; 0131A2: provisional 68k movea.l -(a4), a0
db 0x65, 0x73 ; 0131A4: provisional 68k bcs.b $13219
db 0x74, 0x69 ; 0131A6: provisional 68k moveq #$69, d2
db 0x6E, 0x61 ; 0131A8: provisional 68k bgt.b $1320b
db 0x74, 0x69 ; 0131AA: provisional 68k moveq #$69, d2
db 0x6F, 0x6E ; 0131AC: provisional 68k ble.b $1321c
db 0x20, 0x74, 0x79, 0x70, 0x65, 0x00 ; file 0131AE
