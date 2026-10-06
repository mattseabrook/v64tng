; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00C13A–00C6D3, inclusive.
cdi_nodv_entry_00c13a:
db 0x61, 0x00, 0xFA, 0xB6 ; 00C13A: provisional 68k bsr.w $bbf2
db 0x54, 0x4B ; 00C13E: provisional 68k addq.w #$2, a3
db 0x3F, 0x00 ; 00C140: provisional 68k move.w d0, -(a7)
db 0x61, 0x00, 0x4E, 0xDE ; 00C142: provisional 68k bsr.w $11022
db 0x2F, 0x08 ; 00C146: provisional 68k move.l a0, -(a7)
db 0x61, 0x00, 0xFA, 0xA8 ; 00C148: provisional 68k bsr.w $bbf2
db 0x54, 0x4B ; 00C14C: provisional 68k addq.w #$2, a3
db 0x22, 0x6C, 0x00, 0x1E ; 00C14E: provisional 68k movea.l $1e(a4), a1
db 0xC0, 0xBC, 0x00, 0x00, 0xFF, 0xFF ; 00C152: provisional 68k and.l #$ffff, d0
db 0xD3, 0xC0 ; 00C158: provisional 68k adda.l d0, a1
db 0x20, 0x1F ; 00C15A: provisional 68k move.l (a7)+, d0
db 0x2F, 0x09 ; 00C15C: provisional 68k move.l a1, -(a7)
db 0x2F, 0x00 ; 00C15E: provisional 68k move.l d0, -(a7)
db 0x61, 0x00, 0x72, 0x6E ; 00C160: provisional 68k bsr.w $133d0
db 0x2F, 0x00 ; 00C164: provisional 68k move.l d0, -(a7)
db 0x61, 0x00, 0xFA, 0x8A ; 00C166: provisional 68k bsr.w $bbf2
db 0x54, 0x4B ; 00C16A: provisional 68k addq.w #$2, a3
db 0x3F, 0x00 ; 00C16C: provisional 68k move.w d0, -(a7)
db 0x61, 0x00, 0xFA, 0x82 ; 00C16E: provisional 68k bsr.w $bbf2
db 0x54, 0x4B ; 00C172: provisional 68k addq.w #$2, a3
db 0x38, 0x00 ; 00C174: provisional 68k move.w d0, d4
db 0x36, 0x1F ; 00C176: provisional 68k move.w (a7)+, d3
db 0x24, 0x1F ; 00C178: provisional 68k move.l (a7)+, d2
db 0x61, 0x00, 0x08, 0x1A ; 00C17A: provisional 68k bsr.w $c996
db 0x64, 0x06 ; 00C17E: provisional 68k bcc.b $c186
db 0x70, 0xFF ; 00C180: provisional 68k moveq #$ff, d0
db 0x00, 0x3C, 0x00, 0x01 ; 00C182: provisional 68k ori.b #$1, ccr
db 0x4E, 0x75 ; 00C186: provisional 68k rts 
db 0x48, 0xE7, 0x01, 0x80 ; 00C188: provisional 68k movem.l d7/a0, -(a7)
db 0x61, 0x00, 0xFA, 0x64 ; 00C18C: provisional 68k bsr.w $bbf2
db 0x54, 0x4B ; 00C190: provisional 68k addq.w #$2, a3
db 0x3F, 0x00 ; 00C192: provisional 68k move.w d0, -(a7)
db 0x61, 0x00, 0x4E, 0x8C ; 00C194: provisional 68k bsr.w $11022
db 0x30, 0x28, 0x00, 0x26 ; 00C198: provisional 68k move.w $26(a0), d0
db 0x4C, 0xDF, 0x01, 0x80 ; 00C19C: provisional 68k movem.l (a7)+, d7/a0
db 0x60, 0x00, 0xFA, 0x54 ; 00C1A0: provisional 68k bra.w $bbf6
db 0x48, 0xE7, 0x01, 0x80 ; 00C1A4: provisional 68k movem.l d7/a0, -(a7)
db 0x61, 0x00, 0xFA, 0x48 ; 00C1A8: provisional 68k bsr.w $bbf2
db 0x54, 0x4B ; 00C1AC: provisional 68k addq.w #$2, a3
db 0x3F, 0x00 ; 00C1AE: provisional 68k move.w d0, -(a7)
db 0x61, 0x00, 0x4E, 0x70 ; 00C1B0: provisional 68k bsr.w $11022
db 0x30, 0x28, 0x00, 0x28 ; 00C1B4: provisional 68k move.w $28(a0), d0
db 0x4C, 0xDF, 0x01, 0x80 ; 00C1B8: provisional 68k movem.l (a7)+, d7/a0
db 0x60, 0x00, 0xFA, 0x38 ; 00C1BC: provisional 68k bra.w $bbf6
db 0x48, 0xE7, 0x01, 0x80 ; 00C1C0: provisional 68k movem.l d7/a0, -(a7)
db 0x61, 0x00, 0xFA, 0x2C ; 00C1C4: provisional 68k bsr.w $bbf2
db 0x54, 0x4B ; 00C1C8: provisional 68k addq.w #$2, a3
db 0x3F, 0x00 ; 00C1CA: provisional 68k move.w d0, -(a7)
db 0x61, 0x00, 0x4E, 0x54 ; 00C1CC: provisional 68k bsr.w $11022
db 0x30, 0x28, 0x00, 0x22 ; 00C1D0: provisional 68k move.w $22(a0), d0
db 0x4C, 0xDF, 0x01, 0x80 ; 00C1D4: provisional 68k movem.l (a7)+, d7/a0
db 0x60, 0x00, 0xFA, 0x1C ; 00C1D8: provisional 68k bra.w $bbf6
db 0x48, 0xE7, 0x01, 0x80 ; 00C1DC: provisional 68k movem.l d7/a0, -(a7)
db 0x61, 0x00, 0xFA, 0x10 ; 00C1E0: provisional 68k bsr.w $bbf2
db 0x54, 0x4B ; 00C1E4: provisional 68k addq.w #$2, a3
db 0x3F, 0x00 ; 00C1E6: provisional 68k move.w d0, -(a7)
db 0x61, 0x00, 0x4E, 0x38 ; 00C1E8: provisional 68k bsr.w $11022
db 0x30, 0x28, 0x00, 0x24 ; 00C1EC: provisional 68k move.w $24(a0), d0
db 0x4C, 0xDF, 0x01, 0x80 ; 00C1F0: provisional 68k movem.l (a7)+, d7/a0
db 0x60, 0x00, 0xFA, 0x00 ; 00C1F4: provisional 68k bra.w $bbf6
db 0x48, 0xE7, 0x01, 0x80 ; 00C1F8: provisional 68k movem.l d7/a0, -(a7)
db 0x61, 0x00, 0xF9, 0xF4 ; 00C1FC: provisional 68k bsr.w $bbf2
db 0x54, 0x4B ; 00C200: provisional 68k addq.w #$2, a3
db 0x3F, 0x00 ; 00C202: provisional 68k move.w d0, -(a7)
db 0x61, 0x00, 0x4E, 0x1C ; 00C204: provisional 68k bsr.w $11022
db 0x30, 0x28, 0x00, 0x1E ; 00C208: provisional 68k move.w $1e(a0), d0
db 0x4C, 0xDF, 0x01, 0x80 ; 00C20C: provisional 68k movem.l (a7)+, d7/a0
db 0x60, 0x00, 0xF9, 0xE4 ; 00C210: provisional 68k bra.w $bbf6
db 0x48, 0xE7, 0x01, 0x80 ; 00C214: provisional 68k movem.l d7/a0, -(a7)
db 0x61, 0x00, 0xF9, 0xD8 ; 00C218: provisional 68k bsr.w $bbf2
db 0x54, 0x4B ; 00C21C: provisional 68k addq.w #$2, a3
db 0x3F, 0x00 ; 00C21E: provisional 68k move.w d0, -(a7)
db 0x61, 0x00, 0x4E, 0x00 ; 00C220: provisional 68k bsr.w $11022
db 0x20, 0x68, 0x00, 0x3C ; 00C224: provisional 68k movea.l $3c(a0), a0
db 0x2F, 0x08 ; 00C228: provisional 68k move.l a0, -(a7)
db 0x61, 0x00, 0x4D, 0xCA ; 00C22A: provisional 68k bsr.w $10ff6
db 0x4C, 0xDF, 0x01, 0x80 ; 00C22E: provisional 68k movem.l (a7)+, d7/a0
db 0x60, 0x00, 0xF9, 0xC2 ; 00C232: provisional 68k bra.w $bbf6
db 0x48, 0xE7, 0x01, 0x80 ; 00C236: provisional 68k movem.l d7/a0, -(a7)
db 0x61, 0x00, 0xF9, 0xB6 ; 00C23A: provisional 68k bsr.w $bbf2
db 0x54, 0x4B ; 00C23E: provisional 68k addq.w #$2, a3
db 0x3F, 0x00 ; 00C240: provisional 68k move.w d0, -(a7)
db 0x61, 0x00, 0x4D, 0xDE ; 00C242: provisional 68k bsr.w $11022
db 0x20, 0x68, 0x00, 0x40 ; 00C246: provisional 68k movea.l $40(a0), a0
db 0x2F, 0x08 ; 00C24A: provisional 68k move.l a0, -(a7)
db 0x61, 0x00, 0x4D, 0xA8 ; 00C24C: provisional 68k bsr.w $10ff6
db 0x4C, 0xDF, 0x01, 0x80 ; 00C250: provisional 68k movem.l (a7)+, d7/a0
db 0x60, 0x00, 0xF9, 0xA0 ; 00C254: provisional 68k bra.w $bbf6
db 0x48, 0xE7, 0x01, 0x80 ; 00C258: provisional 68k movem.l d7/a0, -(a7)
db 0x61, 0x00, 0xF9, 0x94 ; 00C25C: provisional 68k bsr.w $bbf2
db 0x54, 0x4B ; 00C260: provisional 68k addq.w #$2, a3
db 0x3F, 0x00 ; 00C262: provisional 68k move.w d0, -(a7)
db 0x61, 0x00, 0x4D, 0xBC ; 00C264: provisional 68k bsr.w $11022
db 0x20, 0x68, 0x00, 0x44 ; 00C268: provisional 68k movea.l $44(a0), a0
db 0x2F, 0x08 ; 00C26C: provisional 68k move.l a0, -(a7)
db 0x61, 0x00, 0x4D, 0x86 ; 00C26E: provisional 68k bsr.w $10ff6
db 0x4C, 0xDF, 0x01, 0x80 ; 00C272: provisional 68k movem.l (a7)+, d7/a0
db 0x60, 0x00, 0xF9, 0x7E ; 00C276: provisional 68k bra.w $bbf6
db 0x48, 0xE7, 0x01, 0x80 ; 00C27A: provisional 68k movem.l d7/a0, -(a7)
db 0x61, 0x00, 0xF9, 0x72 ; 00C27E: provisional 68k bsr.w $bbf2
db 0x54, 0x4B ; 00C282: provisional 68k addq.w #$2, a3
db 0x3F, 0x00 ; 00C284: provisional 68k move.w d0, -(a7)
db 0x61, 0x00, 0x4D, 0x9A ; 00C286: provisional 68k bsr.w $11022
db 0x30, 0x28, 0x00, 0x1C ; 00C28A: provisional 68k move.w $1c(a0), d0
db 0x4C, 0xDF, 0x01, 0x80 ; 00C28E: provisional 68k movem.l (a7)+, d7/a0
db 0x60, 0x00, 0xF9, 0x62 ; 00C292: provisional 68k bra.w $bbf6
db 0x48, 0xE7, 0x01, 0x80 ; 00C296: provisional 68k movem.l d7/a0, -(a7)
db 0x61, 0x00, 0xF9, 0x56 ; 00C29A: provisional 68k bsr.w $bbf2
db 0x54, 0x4B ; 00C29E: provisional 68k addq.w #$2, a3
db 0x3F, 0x00 ; 00C2A0: provisional 68k move.w d0, -(a7)
db 0x61, 0x00, 0x4D, 0x7E ; 00C2A2: provisional 68k bsr.w $11022
db 0x30, 0x28, 0x00, 0x1E ; 00C2A6: provisional 68k move.w $1e(a0), d0
db 0x4C, 0xDF, 0x01, 0x80 ; 00C2AA: provisional 68k movem.l (a7)+, d7/a0
db 0x60, 0x00, 0xF9, 0x46 ; 00C2AE: provisional 68k bra.w $bbf6
db 0x48, 0xE7, 0x41, 0x80 ; 00C2B2: provisional 68k movem.l d1/d7/a0, -(a7)
db 0x61, 0x00, 0xF9, 0x3A ; 00C2B6: provisional 68k bsr.w $bbf2
db 0x54, 0x4B ; 00C2BA: provisional 68k addq.w #$2, a3
db 0x3F, 0x00 ; 00C2BC: provisional 68k move.w d0, -(a7)
db 0x61, 0x00, 0x4D, 0x62 ; 00C2BE: provisional 68k bsr.w $11022
db 0x61, 0x00, 0xF9, 0x2E ; 00C2C2: provisional 68k bsr.w $bbf2
db 0x54, 0x4B ; 00C2C6: provisional 68k addq.w #$2, a3
db 0x32, 0x00 ; 00C2C8: provisional 68k move.w d0, d1
db 0x61, 0x00, 0xF9, 0x26 ; 00C2CA: provisional 68k bsr.w $bbf2
db 0x54, 0x4B ; 00C2CE: provisional 68k addq.w #$2, a3
db 0x3F, 0x00 ; 00C2D0: provisional 68k move.w d0, -(a7)
db 0x3F, 0x01 ; 00C2D2: provisional 68k move.w d1, -(a7)
db 0x2F, 0x08 ; 00C2D4: provisional 68k move.l a0, -(a7)
db 0x61, 0x00, 0x5C, 0x0C ; 00C2D6: provisional 68k bsr.w $11ee4
db 0x4C, 0xDF, 0x01, 0x82 ; 00C2DA: provisional 68k movem.l (a7)+, d1/d7/a0
db 0x60, 0x00, 0xF9, 0x16 ; 00C2DE: provisional 68k bra.w $bbf6
db 0x48, 0xE7, 0x01, 0x80 ; 00C2E2: provisional 68k movem.l d7/a0, -(a7)
db 0x61, 0x00, 0xF9, 0x0A ; 00C2E6: provisional 68k bsr.w $bbf2
db 0x54, 0x4B ; 00C2EA: provisional 68k addq.w #$2, a3
db 0x3F, 0x00 ; 00C2EC: provisional 68k move.w d0, -(a7)
db 0x61, 0x00, 0x4D, 0x32 ; 00C2EE: provisional 68k bsr.w $11022
db 0x30, 0x28, 0x00, 0x26 ; 00C2F2: provisional 68k move.w $26(a0), d0
db 0x4C, 0xDF, 0x01, 0x80 ; 00C2F6: provisional 68k movem.l (a7)+, d7/a0
db 0x60, 0x00, 0xF8, 0xFA ; 00C2FA: provisional 68k bra.w $bbf6
db 0x48, 0xE7, 0x01, 0x80 ; 00C2FE: provisional 68k movem.l d7/a0, -(a7)
db 0x61, 0x00, 0xF8, 0xEE ; 00C302: provisional 68k bsr.w $bbf2
db 0x54, 0x4B ; 00C306: provisional 68k addq.w #$2, a3
db 0x3F, 0x00 ; 00C308: provisional 68k move.w d0, -(a7)
db 0x61, 0x00, 0x4D, 0x16 ; 00C30A: provisional 68k bsr.w $11022
db 0x30, 0x28, 0x00, 0x28 ; 00C30E: provisional 68k move.w $28(a0), d0
db 0x4C, 0xDF, 0x01, 0x80 ; 00C312: provisional 68k movem.l (a7)+, d7/a0
db 0x60, 0x00, 0xF8, 0xDE ; 00C316: provisional 68k bra.w $bbf6
db 0x48, 0xE7, 0x01, 0x80 ; 00C31A: provisional 68k movem.l d7/a0, -(a7)
db 0x61, 0x00, 0xF8, 0xD2 ; 00C31E: provisional 68k bsr.w $bbf2
db 0x54, 0x4B ; 00C322: provisional 68k addq.w #$2, a3
db 0x3F, 0x00 ; 00C324: provisional 68k move.w d0, -(a7)
db 0x61, 0x00, 0x4C, 0xFA ; 00C326: provisional 68k bsr.w $11022
db 0x30, 0x28, 0x00, 0x22 ; 00C32A: provisional 68k move.w $22(a0), d0
db 0x4C, 0xDF, 0x01, 0x80 ; 00C32E: provisional 68k movem.l (a7)+, d7/a0
db 0x60, 0x00, 0xF8, 0xC2 ; 00C332: provisional 68k bra.w $bbf6
db 0x48, 0xE7, 0x01, 0x80 ; 00C336: provisional 68k movem.l d7/a0, -(a7)
db 0x61, 0x00, 0xF8, 0xB6 ; 00C33A: provisional 68k bsr.w $bbf2
db 0x54, 0x4B ; 00C33E: provisional 68k addq.w #$2, a3
db 0x3F, 0x00 ; 00C340: provisional 68k move.w d0, -(a7)
db 0x61, 0x00, 0x4C, 0xDE ; 00C342: provisional 68k bsr.w $11022
db 0x30, 0x28, 0x00, 0x24 ; 00C346: provisional 68k move.w $24(a0), d0
db 0x4C, 0xDF, 0x01, 0x80 ; 00C34A: provisional 68k movem.l (a7)+, d7/a0
db 0x60, 0x00, 0xF8, 0xA6 ; 00C34E: provisional 68k bra.w $bbf6
db 0x48, 0xE7, 0x7F, 0x80 ; 00C352: provisional 68k movem.l d1-d7/a0, -(a7)
db 0x61, 0x00, 0xF8, 0x9A ; 00C356: provisional 68k bsr.w $bbf2
db 0x54, 0x4B ; 00C35A: provisional 68k addq.w #$2, a3
db 0x3F, 0x00 ; 00C35C: provisional 68k move.w d0, -(a7)
db 0x61, 0x00, 0xF8, 0x92 ; 00C35E: provisional 68k bsr.w $bbf2
db 0x54, 0x4B ; 00C362: provisional 68k addq.w #$2, a3
db 0x3F, 0x00 ; 00C364: provisional 68k move.w d0, -(a7)
db 0x61, 0x00, 0xF8, 0x8A ; 00C366: provisional 68k bsr.w $bbf2
db 0x54, 0x4B ; 00C36A: provisional 68k addq.w #$2, a3
db 0x3F, 0x00 ; 00C36C: provisional 68k move.w d0, -(a7)
db 0x61, 0x00, 0xF8, 0x82 ; 00C36E: provisional 68k bsr.w $bbf2
db 0x54, 0x4B ; 00C372: provisional 68k addq.w #$2, a3
db 0x3F, 0x00 ; 00C374: provisional 68k move.w d0, -(a7)
db 0x61, 0x00, 0xF8, 0x7A ; 00C376: provisional 68k bsr.w $bbf2
db 0x54, 0x4B ; 00C37A: provisional 68k addq.w #$2, a3
db 0x3F, 0x00 ; 00C37C: provisional 68k move.w d0, -(a7)
db 0x61, 0x00, 0xF8, 0x72 ; 00C37E: provisional 68k bsr.w $bbf2
db 0x54, 0x4B ; 00C382: provisional 68k addq.w #$2, a3
db 0x3F, 0x00 ; 00C384: provisional 68k move.w d0, -(a7)
db 0x61, 0x00, 0xF8, 0x6A ; 00C386: provisional 68k bsr.w $bbf2
db 0x54, 0x4B ; 00C38A: provisional 68k addq.w #$2, a3
db 0x4C, 0x9F, 0x00, 0x7E ; 00C38C: provisional 68k movem.w (a7)+, d1-d6
db 0x48, 0xC0 ; 00C390: provisional 68k ext.l d0
db 0x3F, 0x3C, 0x00, 0x06 ; 00C392: provisional 68k move.w #$6, -(a7)
db 0x2F, 0x2C, 0x00, 0x04 ; 00C396: provisional 68k move.l $4(a4), -(a7)
db 0x2D, 0x46, 0xCF, 0xE8 ; 00C39A: provisional 68k move.l d6, -$3018(a6)
db 0x2D, 0x44, 0xCF, 0xEC ; 00C39E: provisional 68k move.l d4, -$3014(a6)
db 0x2D, 0x43, 0xCF, 0xF0 ; 00C3A2: provisional 68k move.l d3, -$3010(a6)
db 0x2D, 0x45, 0xCF, 0xF4 ; 00C3A6: provisional 68k move.l d5, -$300c(a6)
db 0x2D, 0x40, 0xCF, 0xF8 ; 00C3AA: provisional 68k move.l d0, -$3008(a6)
db 0x61, 0x00, 0x4B, 0x4E ; 00C3AE: provisional 68k bsr.w $10efe
db 0x3F, 0x01 ; 00C3B2: provisional 68k move.w d1, -(a7)
db 0x3F, 0x02 ; 00C3B4: provisional 68k move.w d2, -(a7)
db 0x2F, 0x08 ; 00C3B6: provisional 68k move.l a0, -(a7)
db 0x61, 0x00, 0x61, 0x8C ; 00C3B8: provisional 68k bsr.w $12546
db 0x2F, 0x08 ; 00C3BC: provisional 68k move.l a0, -(a7)
db 0x61, 0x00, 0x4C, 0x36 ; 00C3BE: provisional 68k bsr.w $10ff6
db 0x4C, 0xDF, 0x01, 0xFE ; 00C3C2: provisional 68k movem.l (a7)+, d1-d7/a0
db 0x60, 0x00, 0xF8, 0x2E ; 00C3C6: provisional 68k bra.w $bbf6
db 0x3F, 0x07 ; 00C3CA: provisional 68k move.w d7, -(a7)
db 0x61, 0x00, 0xF8, 0x24 ; 00C3CC: provisional 68k bsr.w $bbf2
db 0x54, 0x4B ; 00C3D0: provisional 68k addq.w #$2, a3
db 0x3F, 0x00 ; 00C3D2: provisional 68k move.w d0, -(a7)
db 0x61, 0x00, 0x48, 0x8C ; 00C3D4: provisional 68k bsr.w $10c62
db 0x3E, 0x1F ; 00C3D8: provisional 68k move.w (a7)+, d7
db 0x60, 0x00, 0xF8, 0x1A ; 00C3DA: provisional 68k bra.w $bbf6
db 0x3F, 0x07 ; 00C3DE: provisional 68k move.w d7, -(a7)
db 0x61, 0x00, 0xF8, 0x10 ; 00C3E0: provisional 68k bsr.w $bbf2
db 0x54, 0x4B ; 00C3E4: provisional 68k addq.w #$2, a3
db 0x3F, 0x00 ; 00C3E6: provisional 68k move.w d0, -(a7)
db 0x61, 0x00, 0x4C, 0x38 ; 00C3E8: provisional 68k bsr.w $11022
db 0x30, 0x28, 0x00, 0x32 ; 00C3EC: provisional 68k move.w $32(a0), d0
db 0x3E, 0x1F ; 00C3F0: provisional 68k move.w (a7)+, d7
db 0x60, 0x00, 0xF8, 0x02 ; 00C3F2: provisional 68k bra.w $bbf6
db 0x3F, 0x07 ; 00C3F6: provisional 68k move.w d7, -(a7)
db 0x61, 0x00, 0xF7, 0xF8 ; 00C3F8: provisional 68k bsr.w $bbf2
db 0x54, 0x4B ; 00C3FC: provisional 68k addq.w #$2, a3
db 0x3F, 0x00 ; 00C3FE: provisional 68k move.w d0, -(a7)
db 0x61, 0x00, 0x4C, 0x20 ; 00C400: provisional 68k bsr.w $11022
db 0x30, 0x28, 0x00, 0x20 ; 00C404: provisional 68k move.w $20(a0), d0
db 0x3E, 0x1F ; 00C408: provisional 68k move.w (a7)+, d7
db 0x60, 0x00, 0xF7, 0xEA ; 00C40A: provisional 68k bra.w $bbf6
db 0x3F, 0x07 ; 00C40E: provisional 68k move.w d7, -(a7)
db 0x61, 0x00, 0xF7, 0xE0 ; 00C410: provisional 68k bsr.w $bbf2
db 0x54, 0x4B ; 00C414: provisional 68k addq.w #$2, a3
db 0x3F, 0x00 ; 00C416: provisional 68k move.w d0, -(a7)
db 0x61, 0x00, 0x4C, 0x08 ; 00C418: provisional 68k bsr.w $11022
db 0x30, 0x28, 0x00, 0x22 ; 00C41C: provisional 68k move.w $22(a0), d0
db 0x3E, 0x1F ; 00C420: provisional 68k move.w (a7)+, d7
db 0x60, 0x00, 0xF7, 0xD2 ; 00C422: provisional 68k bra.w $bbf6
db 0x3F, 0x07 ; 00C426: provisional 68k move.w d7, -(a7)
db 0x61, 0x00, 0xF7, 0xC8 ; 00C428: provisional 68k bsr.w $bbf2
db 0x54, 0x4B ; 00C42C: provisional 68k addq.w #$2, a3
db 0x3F, 0x00 ; 00C42E: provisional 68k move.w d0, -(a7)
db 0x61, 0x00, 0x4B, 0xF0 ; 00C430: provisional 68k bsr.w $11022
db 0x30, 0x28, 0x00, 0x2C ; 00C434: provisional 68k move.w $2c(a0), d0
db 0x3E, 0x1F ; 00C438: provisional 68k move.w (a7)+, d7
db 0x60, 0x00, 0xF7, 0xBA ; 00C43A: provisional 68k bra.w $bbf6
db 0x3F, 0x07 ; 00C43E: provisional 68k move.w d7, -(a7)
db 0x61, 0x00, 0xF7, 0xB0 ; 00C440: provisional 68k bsr.w $bbf2
db 0x54, 0x4B ; 00C444: provisional 68k addq.w #$2, a3
db 0x3F, 0x00 ; 00C446: provisional 68k move.w d0, -(a7)
db 0x61, 0x00, 0x4B, 0xD8 ; 00C448: provisional 68k bsr.w $11022
db 0x30, 0x28, 0x00, 0x2E ; 00C44C: provisional 68k move.w $2e(a0), d0
db 0x3E, 0x1F ; 00C450: provisional 68k move.w (a7)+, d7
db 0x60, 0x00, 0xF7, 0xA2 ; 00C452: provisional 68k bra.w $bbf6
db 0x3F, 0x07 ; 00C456: provisional 68k move.w d7, -(a7)
db 0x61, 0x00, 0xF7, 0x98 ; 00C458: provisional 68k bsr.w $bbf2
db 0x54, 0x4B ; 00C45C: provisional 68k addq.w #$2, a3
db 0x3F, 0x00 ; 00C45E: provisional 68k move.w d0, -(a7)
db 0x61, 0x00, 0x4B, 0xC0 ; 00C460: provisional 68k bsr.w $11022
db 0x30, 0x28, 0x00, 0x24 ; 00C464: provisional 68k move.w $24(a0), d0
db 0x3E, 0x1F ; 00C468: provisional 68k move.w (a7)+, d7
db 0x60, 0x00, 0xF7, 0x8A ; 00C46A: provisional 68k bra.w $bbf6
db 0x3F, 0x07 ; 00C46E: provisional 68k move.w d7, -(a7)
db 0x61, 0x00, 0xF7, 0x80 ; 00C470: provisional 68k bsr.w $bbf2
db 0x54, 0x4B ; 00C474: provisional 68k addq.w #$2, a3
db 0x3F, 0x00 ; 00C476: provisional 68k move.w d0, -(a7)
db 0x61, 0x00, 0x4B, 0xA8 ; 00C478: provisional 68k bsr.w $11022
db 0x30, 0x28, 0x00, 0x26 ; 00C47C: provisional 68k move.w $26(a0), d0
db 0x3E, 0x1F ; 00C480: provisional 68k move.w (a7)+, d7
db 0x60, 0x00, 0xF7, 0x72 ; 00C482: provisional 68k bra.w $bbf6
db 0x48, 0xE7, 0x01, 0x80 ; 00C486: provisional 68k movem.l d7/a0, -(a7)
db 0x61, 0x00, 0xF7, 0x66 ; 00C48A: provisional 68k bsr.w $bbf2
db 0x54, 0x4B ; 00C48E: provisional 68k addq.w #$2, a3
db 0xC0, 0xFC, 0x00, 0x7A ; 00C490: provisional 68k mulu.w #$7a, d0
db 0x41, 0xEE, 0x80, 0x5E ; 00C494: provisional 68k lea.l -$7fa2(a6), a0
db 0x20, 0x70, 0x08, 0x04 ; 00C498: provisional 68k movea.l $4(a0, d0.l), a0
db 0x2F, 0x08 ; 00C49C: provisional 68k move.l a0, -(a7)
db 0x61, 0x00, 0x4B, 0x56 ; 00C49E: provisional 68k bsr.w $10ff6
db 0x4C, 0xDF, 0x01, 0x80 ; 00C4A2: provisional 68k movem.l (a7)+, d7/a0
db 0x60, 0x00, 0xF7, 0x4E ; 00C4A6: provisional 68k bra.w $bbf6
db 0x2F, 0x08 ; 00C4AA: provisional 68k move.l a0, -(a7)
db 0x32, 0x3C, 0x80, 0x00 ; 00C4AC: provisional 68k move.w #$8000, d1
db 0x61, 0x00, 0x07, 0x4C ; 00C4B0: provisional 68k bsr.w $cbfe
db 0x61, 0x73 ; 00C4B4: provisional 68k bsr.b $c529
db 0x73, 0x65 ; file 00C4B6
db 0x74, 0x5F ; 00C4B8: provisional 68k moveq #$5f, d2
db 0x70, 0x61 ; 00C4BA: provisional 68k moveq #$61, d0
db 0x72, 0x65 ; 00C4BC: provisional 68k moveq #$65, d1
db 0x6E, 0x74 ; 00C4BE: provisional 68k bgt.b $c534
db 0x3A, 0x20 ; 00C4C0: provisional 68k move.w -(a0), d5
db 0x4E, 0x6F ; 00C4C2: provisional 68k move usp, a7
db 0x74, 0x20 ; 00C4C4: provisional 68k moveq #$20, d2
db 0x69, 0x6D ; 00C4C6: provisional 68k bvs.b $c535
db 0x70, 0x6C ; 00C4C8: provisional 68k moveq #$6c, d0
db 0x65, 0x6D ; 00C4CA: provisional 68k bcs.b $c539
db 0x65, 0x6E ; 00C4CC: provisional 68k bcs.b $c53c
db 0x74, 0x65 ; 00C4CE: provisional 68k moveq #$65, d2
db 0x64, 0x20 ; 00C4D0: provisional 68k bcc.b $c4f2
db 0x79, 0x65 ; file 00C4D2
db 0x74, 0x21 ; 00C4D4: provisional 68k moveq #$21, d2
db 0x00, 0x00, 0x20, 0x5F ; 00C4D6: provisional 68k ori.b #$5f, d0
db 0x60, 0x00, 0xF7, 0x1A ; 00C4DA: provisional 68k bra.w $bbf6
db 0x48, 0xE7, 0x7F, 0xEE ; 00C4DE: provisional 68k movem.l d1-d7/a0-a2/a4-a6, -(a7)
db 0x61, 0x00, 0xF7, 0x0E ; 00C4E2: provisional 68k bsr.w $bbf2
db 0x54, 0x4B ; 00C4E6: provisional 68k addq.w #$2, a3
db 0x3F, 0x00 ; 00C4E8: provisional 68k move.w d0, -(a7)
db 0x61, 0x00, 0xF7, 0x06 ; 00C4EA: provisional 68k bsr.w $bbf2
db 0x54, 0x4B ; 00C4EE: provisional 68k addq.w #$2, a3
db 0x3F, 0x00 ; 00C4F0: provisional 68k move.w d0, -(a7)
db 0x61, 0x00, 0xF6, 0xFE ; 00C4F2: provisional 68k bsr.w $bbf2
db 0x54, 0x4B ; 00C4F6: provisional 68k addq.w #$2, a3
db 0x3F, 0x00 ; 00C4F8: provisional 68k move.w d0, -(a7)
db 0x61, 0x00, 0xF6, 0xF6 ; 00C4FA: provisional 68k bsr.w $bbf2
db 0x54, 0x4B ; 00C4FE: provisional 68k addq.w #$2, a3
db 0x36, 0x00 ; 00C500: provisional 68k move.w d0, d3
db 0x24, 0x6C, 0x00, 0x1E ; 00C502: provisional 68k movea.l $1e(a4), a2
db 0x42, 0x80 ; 00C506: provisional 68k clr.l d0
db 0x30, 0x2A, 0x00, 0x0A ; 00C508: provisional 68k move.w $a(a2), d0
db 0xD5, 0xC0 ; 00C50C: provisional 68k adda.l d0, a2
db 0x34, 0x1F ; 00C50E: provisional 68k move.w (a7)+, d2
db 0x32, 0x1F ; 00C510: provisional 68k move.w (a7)+, d1
db 0x30, 0x1F ; 00C512: provisional 68k move.w (a7)+, d0
db 0x2F, 0x0B ; 00C514: provisional 68k move.l a3, -(a7)
db 0x20, 0x6C, 0x00, 0x1E ; 00C516: provisional 68k movea.l $1e(a4), a0
db 0x43, 0xFA, 0x4D, 0x1A ; 00C51A: provisional 68k lea.l $11236(pc), a1
db 0x4E, 0x92 ; 00C51E: provisional 68k jsr (a2)
db 0x26, 0x5F ; 00C520: provisional 68k movea.l (a7)+, a3
db 0x4C, 0xDF, 0x77, 0xFE ; 00C522: provisional 68k movem.l (a7)+, d1-d7/a0-a2/a4-a6
db 0x60, 0x00, 0xF6, 0xCE ; 00C526: provisional 68k bra.w $bbf6
db 0x48, 0xE7, 0x7F, 0xEC ; 00C52A: provisional 68k movem.l d1-d7/a0-a2/a4-a5, -(a7)
db 0x61, 0x00, 0xF6, 0xC2 ; 00C52E: provisional 68k bsr.w $bbf2
db 0x54, 0x4B ; 00C532: provisional 68k addq.w #$2, a3
db 0x20, 0x6C, 0x00, 0x1E ; 00C534: provisional 68k movea.l $1e(a4), a0
db 0xC0, 0xBC, 0x00, 0x00, 0xFF, 0xFF ; 00C538: provisional 68k and.l #$ffff, d0
db 0xD1, 0xC0 ; 00C53E: provisional 68k adda.l d0, a0
db 0x61, 0x00, 0xF6, 0xB0 ; 00C540: provisional 68k bsr.w $bbf2
db 0x54, 0x4B ; 00C544: provisional 68k addq.w #$2, a3
db 0x24, 0x6C, 0x00, 0x1E ; 00C546: provisional 68k movea.l $1e(a4), a2
db 0xC0, 0xBC, 0x00, 0x00, 0xFF, 0xFF ; 00C54A: provisional 68k and.l #$ffff, d0
db 0xD5, 0xC0 ; 00C550: provisional 68k adda.l d0, a2
db 0x34, 0xBC, 0xFF, 0xFF ; 00C552: provisional 68k move.w #$ffff, (a2)
db 0x70, 0x43 ; 00C556: provisional 68k moveq #$43, d0
db 0x4E, 0x40, 0x00, 0x84 ; 00C558: provisional 68k trap #0 ; OS-9 service word $0084
db 0x65, 0x04 ; 00C55C: provisional 68k bcs.b $c562
db 0x34, 0x80 ; 00C55E: provisional 68k move.w d0, (a2)
db 0x42, 0x41 ; 00C560: provisional 68k clr.w d1
db 0x30, 0x01 ; 00C562: provisional 68k move.w d1, d0
db 0x4C, 0xDF, 0x37, 0xFE ; 00C564: provisional 68k movem.l (a7)+, d1-d7/a0-a2/a4-a5
db 0x60, 0x00, 0xF6, 0x8C ; 00C568: provisional 68k bra.w $bbf6
db 0x48, 0xE7, 0x7F, 0xEC ; 00C56C: provisional 68k movem.l d1-d7/a0-a2/a4-a5, -(a7)
db 0x61, 0x00, 0xF6, 0x80 ; 00C570: provisional 68k bsr.w $bbf2
db 0x54, 0x4B ; 00C574: provisional 68k addq.w #$2, a3
db 0x4E, 0x40, 0x00, 0x8F ; 00C576: provisional 68k trap #0 ; OS-9 service word $008F
db 0x65, 0x02 ; 00C57A: provisional 68k bcs.b $c57e
db 0x42, 0x41 ; 00C57C: provisional 68k clr.w d1
db 0x30, 0x01 ; 00C57E: provisional 68k move.w d1, d0
db 0x4C, 0xDF, 0x37, 0xFE ; 00C580: provisional 68k movem.l (a7)+, d1-d7/a0-a2/a4-a5
db 0x60, 0x00, 0xF6, 0x70 ; 00C584: provisional 68k bra.w $bbf6
db 0x48, 0xE7, 0x7F, 0xEC ; 00C588: provisional 68k movem.l d1-d7/a0-a2/a4-a5, -(a7)
db 0x61, 0x00, 0xF6, 0x64 ; 00C58C: provisional 68k bsr.w $bbf2
db 0x54, 0x4B ; 00C590: provisional 68k addq.w #$2, a3
db 0x3F, 0x00 ; 00C592: provisional 68k move.w d0, -(a7)
db 0x61, 0x00, 0xF6, 0x5C ; 00C594: provisional 68k bsr.w $bbf2
db 0x54, 0x4B ; 00C598: provisional 68k addq.w #$2, a3
db 0x3F, 0x00 ; 00C59A: provisional 68k move.w d0, -(a7)
db 0x61, 0x00, 0xF6, 0x54 ; 00C59C: provisional 68k bsr.w $bbf2
db 0x54, 0x4B ; 00C5A0: provisional 68k addq.w #$2, a3
db 0x28, 0x6C, 0x00, 0x1E ; 00C5A2: provisional 68k movea.l $1e(a4), a4
db 0xC0, 0xBC, 0x00, 0x00, 0xFF, 0xFF ; 00C5A6: provisional 68k and.l #$ffff, d0
db 0xD9, 0xC0 ; 00C5AC: provisional 68k adda.l d0, a4
db 0x42, 0x81 ; 00C5AE: provisional 68k clr.l d1
db 0x32, 0x1F ; 00C5B0: provisional 68k move.w (a7)+, d1
db 0x34, 0x1F ; 00C5B2: provisional 68k move.w (a7)+, d2
db 0x38, 0xBC, 0xFF, 0xFF ; 00C5B4: provisional 68k move.w #$ffff, (a4)
db 0x30, 0x02 ; 00C5B8: provisional 68k move.w d2, d0
db 0x4E, 0x40, 0x00, 0x88 ; 00C5BA: provisional 68k trap #0 ; OS-9 service word $0088
db 0x65, 0x18 ; 00C5BE: provisional 68k bcs.b $c5d8
db 0x42, 0x6E, 0x80, 0x4C ; 00C5C0: provisional 68k clr.w -$7fb4(a6)
db 0x72, 0x01 ; 00C5C4: provisional 68k moveq #$1, d1
db 0x41, 0xEE, 0x80, 0x4D ; 00C5C6: provisional 68k lea.l -$7fb3(a6), a0
db 0x30, 0x02 ; 00C5CA: provisional 68k move.w d2, d0
db 0x4E, 0x40, 0x00, 0x89 ; 00C5CC: provisional 68k trap #0 ; OS-9 service word $0089
db 0x65, 0x06 ; 00C5D0: provisional 68k bcs.b $c5d8
db 0x38, 0xAE, 0x80, 0x4C ; 00C5D2: provisional 68k move.w -$7fb4(a6), (a4)
db 0x42, 0x41 ; 00C5D6: provisional 68k clr.w d1
db 0x30, 0x01 ; 00C5D8: provisional 68k move.w d1, d0
db 0x4C, 0xDF, 0x37, 0xFE ; 00C5DA: provisional 68k movem.l (a7)+, d1-d7/a0-a2/a4-a5
db 0x60, 0x00, 0xF6, 0x16 ; 00C5DE: provisional 68k bra.w $bbf6
db 0x48, 0xE7, 0x7F, 0xEC ; 00C5E2: provisional 68k movem.l d1-d7/a0-a2/a4-a5, -(a7)
db 0x61, 0x00, 0xF6, 0x0A ; 00C5E6: provisional 68k bsr.w $bbf2
db 0x54, 0x4B ; 00C5EA: provisional 68k addq.w #$2, a3
db 0x3F, 0x00 ; 00C5EC: provisional 68k move.w d0, -(a7)
db 0x61, 0x00, 0xF6, 0x02 ; 00C5EE: provisional 68k bsr.w $bbf2
db 0x54, 0x4B ; 00C5F2: provisional 68k addq.w #$2, a3
db 0x3F, 0x00 ; 00C5F4: provisional 68k move.w d0, -(a7)
db 0x61, 0x00, 0xF5, 0xFA ; 00C5F6: provisional 68k bsr.w $bbf2
db 0x54, 0x4B ; 00C5FA: provisional 68k addq.w #$2, a3
db 0x1D, 0x40, 0x80, 0x4C ; 00C5FC: provisional 68k move.b d0, -$7fb4(a6)
db 0x42, 0x82 ; 00C600: provisional 68k clr.l d2
db 0x34, 0x1F ; 00C602: provisional 68k move.w (a7)+, d2
db 0x36, 0x1F ; 00C604: provisional 68k move.w (a7)+, d3
db 0x22, 0x02 ; 00C606: provisional 68k move.l d2, d1
db 0x30, 0x03 ; 00C608: provisional 68k move.w d3, d0
db 0x4E, 0x40, 0x00, 0x88 ; 00C60A: provisional 68k trap #0 ; OS-9 service word $0088
db 0x65, 0x10 ; 00C60E: provisional 68k bcs.b $c620
db 0x41, 0xEE, 0x80, 0x4C ; 00C610: provisional 68k lea.l -$7fb4(a6), a0
db 0x72, 0x01 ; 00C614: provisional 68k moveq #$1, d1
db 0x30, 0x03 ; 00C616: provisional 68k move.w d3, d0
db 0x4E, 0x40, 0x00, 0x8A ; 00C618: provisional 68k trap #0 ; OS-9 service word $008A
db 0x65, 0x02 ; 00C61C: provisional 68k bcs.b $c620
db 0x42, 0x41 ; 00C61E: provisional 68k clr.w d1
db 0x30, 0x01 ; 00C620: provisional 68k move.w d1, d0
db 0x4C, 0xDF, 0x37, 0xFE ; 00C622: provisional 68k movem.l (a7)+, d1-d7/a0-a2/a4-a5
db 0x60, 0x00, 0xF5, 0xCE ; 00C626: provisional 68k bra.w $bbf6
db 0x48, 0xE7, 0x7F, 0xEC ; 00C62A: provisional 68k movem.l d1-d7/a0-a2/a4-a5, -(a7)
db 0x61, 0x00, 0xF5, 0xC2 ; 00C62E: provisional 68k bsr.w $bbf2
db 0x54, 0x4B ; 00C632: provisional 68k addq.w #$2, a3
db 0x20, 0x6C, 0x00, 0x1E ; 00C634: provisional 68k movea.l $1e(a4), a0
db 0xC0, 0xBC, 0x00, 0x00, 0xFF, 0xFF ; 00C638: provisional 68k and.l #$ffff, d0
db 0xD1, 0xC0 ; 00C63E: provisional 68k adda.l d0, a0
db 0x2F, 0x08 ; 00C640: provisional 68k move.l a0, -(a7)
db 0x61, 0x00, 0xF5, 0xAE ; 00C642: provisional 68k bsr.w $bbf2
db 0x54, 0x4B ; 00C646: provisional 68k addq.w #$2, a3
db 0x28, 0x6C, 0x00, 0x1E ; 00C648: provisional 68k movea.l $1e(a4), a4
db 0xC0, 0xBC, 0x00, 0x00, 0xFF, 0xFF ; 00C64C: provisional 68k and.l #$ffff, d0
db 0xD9, 0xC0 ; 00C652: provisional 68k adda.l d0, a4
db 0x2F, 0x0C ; 00C654: provisional 68k move.l a4, -(a7)
db 0x61, 0x00, 0xF5, 0x9A ; 00C656: provisional 68k bsr.w $bbf2
db 0x54, 0x4B ; 00C65A: provisional 68k addq.w #$2, a3
db 0x28, 0x5F ; 00C65C: provisional 68k movea.l (a7)+, a4
db 0x20, 0x5F ; 00C65E: provisional 68k movea.l (a7)+, a0
db 0x38, 0xBC, 0xFF, 0xFF ; 00C660: provisional 68k move.w #$ffff, (a4)
db 0x42, 0x82 ; 00C664: provisional 68k clr.l d2
db 0x34, 0x00 ; 00C666: provisional 68k move.w d0, d2
db 0x32, 0x3C, 0x00, 0x33 ; 00C668: provisional 68k move.w #$33, d1
db 0x30, 0x3C, 0x00, 0x43 ; 00C66C: provisional 68k move.w #$43, d0
db 0x08, 0xC0, 0x00, 0x05 ; 00C670: provisional 68k bset.b #$5, d0
db 0x4E, 0x40, 0x00, 0x83 ; 00C674: provisional 68k trap #0 ; OS-9 service word $0083
db 0x65, 0x04 ; 00C678: provisional 68k bcs.b $c67e
db 0x38, 0x80 ; 00C67A: provisional 68k move.w d0, (a4)
db 0x42, 0x41 ; 00C67C: provisional 68k clr.w d1
db 0x30, 0x01 ; 00C67E: provisional 68k move.w d1, d0
db 0x4C, 0xDF, 0x37, 0xFE ; 00C680: provisional 68k movem.l (a7)+, d1-d7/a0-a2/a4-a5
db 0x60, 0x00, 0xF5, 0x70 ; 00C684: provisional 68k bra.w $bbf6
db 0x48, 0xE7, 0x7F, 0xEC ; 00C688: provisional 68k movem.l d1-d7/a0-a2/a4-a5, -(a7)
db 0x61, 0x00, 0xF5, 0x64 ; 00C68C: provisional 68k bsr.w $bbf2
db 0x54, 0x4B ; 00C690: provisional 68k addq.w #$2, a3
db 0x20, 0x6C, 0x00, 0x1E ; 00C692: provisional 68k movea.l $1e(a4), a0
db 0xC0, 0xBC, 0x00, 0x00, 0xFF, 0xFF ; 00C696: provisional 68k and.l #$ffff, d0
db 0xD1, 0xC0 ; 00C69C: provisional 68k adda.l d0, a0
db 0x30, 0x3C, 0x00, 0x41 ; 00C69E: provisional 68k move.w #$41, d0
db 0x4E, 0x40, 0x00, 0x87 ; 00C6A2: provisional 68k trap #0 ; OS-9 service word $0087
db 0x30, 0x01 ; 00C6A6: provisional 68k move.w d1, d0
db 0x4C, 0xDF, 0x37, 0xFE ; 00C6A8: provisional 68k movem.l (a7)+, d1-d7/a0-a2/a4-a5
db 0x60, 0x00, 0xF5, 0x48 ; 00C6AC: provisional 68k bra.w $bbf6
db 0x32, 0x3C, 0x80, 0x00 ; 00C6B0: provisional 68k move.w #$8000, d1
db 0x61, 0x00, 0x05, 0x48 ; 00C6B4: provisional 68k bsr.w $cbfe
db 0x6E, 0x76 ; 00C6B8: provisional 68k bgt.b $c730
db 0x72, 0x5F ; 00C6BA: provisional 68k moveq #$5f, d1
db 0x3F, 0x3F ; file 00C6BC
db 0x3F, 0x3A, 0x20, 0x4E ; 00C6BE: provisional 68k move.w $e70e(pc), -(a7)
db 0x6F, 0x74 ; 00C6C2: provisional 68k ble.b $c738
db 0x20, 0x73, 0x75, 0x70, 0x70, 0x6F, 0x72, 0x74 ; 00C6C4: provisional 68k movea.l $706f7274(a3, invalid.w), a0
db 0x65, 0x64 ; 00C6CC: provisional 68k bcs.b $c732
db 0x20, 0x79, 0x65, 0x74, 0x00, 0x00 ; 00C6CE: provisional 68k movea.l $65740000.l, a0
