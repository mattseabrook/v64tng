; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00B2BA–00B853, inclusive.
cdi_t7g_entry_00b2ba:
db 0x61, 0x00, 0xFA, 0xB6 ; 00B2BA: provisional 68k bsr.w $ad72
db 0x54, 0x4B ; 00B2BE: provisional 68k addq.w #$2, a3
db 0x3F, 0x00 ; 00B2C0: provisional 68k move.w d0, -(a7)
db 0x61, 0x00, 0x4E, 0xDE ; 00B2C2: provisional 68k bsr.w $101a2
db 0x2F, 0x08 ; 00B2C6: provisional 68k move.l a0, -(a7)
db 0x61, 0x00, 0xFA, 0xA8 ; 00B2C8: provisional 68k bsr.w $ad72
db 0x54, 0x4B ; 00B2CC: provisional 68k addq.w #$2, a3
db 0x22, 0x6C, 0x00, 0x1E ; 00B2CE: provisional 68k movea.l $1e(a4), a1
db 0xC0, 0xBC, 0x00, 0x00, 0xFF, 0xFF ; 00B2D2: provisional 68k and.l #$ffff, d0
db 0xD3, 0xC0 ; 00B2D8: provisional 68k adda.l d0, a1
db 0x20, 0x1F ; 00B2DA: provisional 68k move.l (a7)+, d0
db 0x2F, 0x09 ; 00B2DC: provisional 68k move.l a1, -(a7)
db 0x2F, 0x00 ; 00B2DE: provisional 68k move.l d0, -(a7)
db 0x61, 0x00, 0x72, 0x6E ; 00B2E0: provisional 68k bsr.w $12550
db 0x2F, 0x00 ; 00B2E4: provisional 68k move.l d0, -(a7)
db 0x61, 0x00, 0xFA, 0x8A ; 00B2E6: provisional 68k bsr.w $ad72
db 0x54, 0x4B ; 00B2EA: provisional 68k addq.w #$2, a3
db 0x3F, 0x00 ; 00B2EC: provisional 68k move.w d0, -(a7)
db 0x61, 0x00, 0xFA, 0x82 ; 00B2EE: provisional 68k bsr.w $ad72
db 0x54, 0x4B ; 00B2F2: provisional 68k addq.w #$2, a3
db 0x38, 0x00 ; 00B2F4: provisional 68k move.w d0, d4
db 0x36, 0x1F ; 00B2F6: provisional 68k move.w (a7)+, d3
db 0x24, 0x1F ; 00B2F8: provisional 68k move.l (a7)+, d2
db 0x61, 0x00, 0x08, 0x1A ; 00B2FA: provisional 68k bsr.w $bb16
db 0x64, 0x06 ; 00B2FE: provisional 68k bcc.b $b306
db 0x70, 0xFF ; 00B300: provisional 68k moveq #$ff, d0
db 0x00, 0x3C, 0x00, 0x01 ; 00B302: provisional 68k ori.b #$1, ccr
db 0x4E, 0x75 ; 00B306: provisional 68k rts 
db 0x48, 0xE7, 0x01, 0x80 ; 00B308: provisional 68k movem.l d7/a0, -(a7)
db 0x61, 0x00, 0xFA, 0x64 ; 00B30C: provisional 68k bsr.w $ad72
db 0x54, 0x4B ; 00B310: provisional 68k addq.w #$2, a3
db 0x3F, 0x00 ; 00B312: provisional 68k move.w d0, -(a7)
db 0x61, 0x00, 0x4E, 0x8C ; 00B314: provisional 68k bsr.w $101a2
db 0x30, 0x28, 0x00, 0x26 ; 00B318: provisional 68k move.w $26(a0), d0
db 0x4C, 0xDF, 0x01, 0x80 ; 00B31C: provisional 68k movem.l (a7)+, d7/a0
db 0x60, 0x00, 0xFA, 0x54 ; 00B320: provisional 68k bra.w $ad76
db 0x48, 0xE7, 0x01, 0x80 ; 00B324: provisional 68k movem.l d7/a0, -(a7)
db 0x61, 0x00, 0xFA, 0x48 ; 00B328: provisional 68k bsr.w $ad72
db 0x54, 0x4B ; 00B32C: provisional 68k addq.w #$2, a3
db 0x3F, 0x00 ; 00B32E: provisional 68k move.w d0, -(a7)
db 0x61, 0x00, 0x4E, 0x70 ; 00B330: provisional 68k bsr.w $101a2
db 0x30, 0x28, 0x00, 0x28 ; 00B334: provisional 68k move.w $28(a0), d0
db 0x4C, 0xDF, 0x01, 0x80 ; 00B338: provisional 68k movem.l (a7)+, d7/a0
db 0x60, 0x00, 0xFA, 0x38 ; 00B33C: provisional 68k bra.w $ad76
db 0x48, 0xE7, 0x01, 0x80 ; 00B340: provisional 68k movem.l d7/a0, -(a7)
db 0x61, 0x00, 0xFA, 0x2C ; 00B344: provisional 68k bsr.w $ad72
db 0x54, 0x4B ; 00B348: provisional 68k addq.w #$2, a3
db 0x3F, 0x00 ; 00B34A: provisional 68k move.w d0, -(a7)
db 0x61, 0x00, 0x4E, 0x54 ; 00B34C: provisional 68k bsr.w $101a2
db 0x30, 0x28, 0x00, 0x22 ; 00B350: provisional 68k move.w $22(a0), d0
db 0x4C, 0xDF, 0x01, 0x80 ; 00B354: provisional 68k movem.l (a7)+, d7/a0
db 0x60, 0x00, 0xFA, 0x1C ; 00B358: provisional 68k bra.w $ad76
db 0x48, 0xE7, 0x01, 0x80 ; 00B35C: provisional 68k movem.l d7/a0, -(a7)
db 0x61, 0x00, 0xFA, 0x10 ; 00B360: provisional 68k bsr.w $ad72
db 0x54, 0x4B ; 00B364: provisional 68k addq.w #$2, a3
db 0x3F, 0x00 ; 00B366: provisional 68k move.w d0, -(a7)
db 0x61, 0x00, 0x4E, 0x38 ; 00B368: provisional 68k bsr.w $101a2
db 0x30, 0x28, 0x00, 0x24 ; 00B36C: provisional 68k move.w $24(a0), d0
db 0x4C, 0xDF, 0x01, 0x80 ; 00B370: provisional 68k movem.l (a7)+, d7/a0
db 0x60, 0x00, 0xFA, 0x00 ; 00B374: provisional 68k bra.w $ad76
db 0x48, 0xE7, 0x01, 0x80 ; 00B378: provisional 68k movem.l d7/a0, -(a7)
db 0x61, 0x00, 0xF9, 0xF4 ; 00B37C: provisional 68k bsr.w $ad72
db 0x54, 0x4B ; 00B380: provisional 68k addq.w #$2, a3
db 0x3F, 0x00 ; 00B382: provisional 68k move.w d0, -(a7)
db 0x61, 0x00, 0x4E, 0x1C ; 00B384: provisional 68k bsr.w $101a2
db 0x30, 0x28, 0x00, 0x1E ; 00B388: provisional 68k move.w $1e(a0), d0
db 0x4C, 0xDF, 0x01, 0x80 ; 00B38C: provisional 68k movem.l (a7)+, d7/a0
db 0x60, 0x00, 0xF9, 0xE4 ; 00B390: provisional 68k bra.w $ad76
db 0x48, 0xE7, 0x01, 0x80 ; 00B394: provisional 68k movem.l d7/a0, -(a7)
db 0x61, 0x00, 0xF9, 0xD8 ; 00B398: provisional 68k bsr.w $ad72
db 0x54, 0x4B ; 00B39C: provisional 68k addq.w #$2, a3
db 0x3F, 0x00 ; 00B39E: provisional 68k move.w d0, -(a7)
db 0x61, 0x00, 0x4E, 0x00 ; 00B3A0: provisional 68k bsr.w $101a2
db 0x20, 0x68, 0x00, 0x3C ; 00B3A4: provisional 68k movea.l $3c(a0), a0
db 0x2F, 0x08 ; 00B3A8: provisional 68k move.l a0, -(a7)
db 0x61, 0x00, 0x4D, 0xCA ; 00B3AA: provisional 68k bsr.w $10176
db 0x4C, 0xDF, 0x01, 0x80 ; 00B3AE: provisional 68k movem.l (a7)+, d7/a0
db 0x60, 0x00, 0xF9, 0xC2 ; 00B3B2: provisional 68k bra.w $ad76
db 0x48, 0xE7, 0x01, 0x80 ; 00B3B6: provisional 68k movem.l d7/a0, -(a7)
db 0x61, 0x00, 0xF9, 0xB6 ; 00B3BA: provisional 68k bsr.w $ad72
db 0x54, 0x4B ; 00B3BE: provisional 68k addq.w #$2, a3
db 0x3F, 0x00 ; 00B3C0: provisional 68k move.w d0, -(a7)
db 0x61, 0x00, 0x4D, 0xDE ; 00B3C2: provisional 68k bsr.w $101a2
db 0x20, 0x68, 0x00, 0x40 ; 00B3C6: provisional 68k movea.l $40(a0), a0
db 0x2F, 0x08 ; 00B3CA: provisional 68k move.l a0, -(a7)
db 0x61, 0x00, 0x4D, 0xA8 ; 00B3CC: provisional 68k bsr.w $10176
db 0x4C, 0xDF, 0x01, 0x80 ; 00B3D0: provisional 68k movem.l (a7)+, d7/a0
db 0x60, 0x00, 0xF9, 0xA0 ; 00B3D4: provisional 68k bra.w $ad76
db 0x48, 0xE7, 0x01, 0x80 ; 00B3D8: provisional 68k movem.l d7/a0, -(a7)
db 0x61, 0x00, 0xF9, 0x94 ; 00B3DC: provisional 68k bsr.w $ad72
db 0x54, 0x4B ; 00B3E0: provisional 68k addq.w #$2, a3
db 0x3F, 0x00 ; 00B3E2: provisional 68k move.w d0, -(a7)
db 0x61, 0x00, 0x4D, 0xBC ; 00B3E4: provisional 68k bsr.w $101a2
db 0x20, 0x68, 0x00, 0x44 ; 00B3E8: provisional 68k movea.l $44(a0), a0
db 0x2F, 0x08 ; 00B3EC: provisional 68k move.l a0, -(a7)
db 0x61, 0x00, 0x4D, 0x86 ; 00B3EE: provisional 68k bsr.w $10176
db 0x4C, 0xDF, 0x01, 0x80 ; 00B3F2: provisional 68k movem.l (a7)+, d7/a0
db 0x60, 0x00, 0xF9, 0x7E ; 00B3F6: provisional 68k bra.w $ad76
db 0x48, 0xE7, 0x01, 0x80 ; 00B3FA: provisional 68k movem.l d7/a0, -(a7)
db 0x61, 0x00, 0xF9, 0x72 ; 00B3FE: provisional 68k bsr.w $ad72
db 0x54, 0x4B ; 00B402: provisional 68k addq.w #$2, a3
db 0x3F, 0x00 ; 00B404: provisional 68k move.w d0, -(a7)
db 0x61, 0x00, 0x4D, 0x9A ; 00B406: provisional 68k bsr.w $101a2
db 0x30, 0x28, 0x00, 0x1C ; 00B40A: provisional 68k move.w $1c(a0), d0
db 0x4C, 0xDF, 0x01, 0x80 ; 00B40E: provisional 68k movem.l (a7)+, d7/a0
db 0x60, 0x00, 0xF9, 0x62 ; 00B412: provisional 68k bra.w $ad76
db 0x48, 0xE7, 0x01, 0x80 ; 00B416: provisional 68k movem.l d7/a0, -(a7)
db 0x61, 0x00, 0xF9, 0x56 ; 00B41A: provisional 68k bsr.w $ad72
db 0x54, 0x4B ; 00B41E: provisional 68k addq.w #$2, a3
db 0x3F, 0x00 ; 00B420: provisional 68k move.w d0, -(a7)
db 0x61, 0x00, 0x4D, 0x7E ; 00B422: provisional 68k bsr.w $101a2
db 0x30, 0x28, 0x00, 0x1E ; 00B426: provisional 68k move.w $1e(a0), d0
db 0x4C, 0xDF, 0x01, 0x80 ; 00B42A: provisional 68k movem.l (a7)+, d7/a0
db 0x60, 0x00, 0xF9, 0x46 ; 00B42E: provisional 68k bra.w $ad76
db 0x48, 0xE7, 0x41, 0x80 ; 00B432: provisional 68k movem.l d1/d7/a0, -(a7)
db 0x61, 0x00, 0xF9, 0x3A ; 00B436: provisional 68k bsr.w $ad72
db 0x54, 0x4B ; 00B43A: provisional 68k addq.w #$2, a3
db 0x3F, 0x00 ; 00B43C: provisional 68k move.w d0, -(a7)
db 0x61, 0x00, 0x4D, 0x62 ; 00B43E: provisional 68k bsr.w $101a2
db 0x61, 0x00, 0xF9, 0x2E ; 00B442: provisional 68k bsr.w $ad72
db 0x54, 0x4B ; 00B446: provisional 68k addq.w #$2, a3
db 0x32, 0x00 ; 00B448: provisional 68k move.w d0, d1
db 0x61, 0x00, 0xF9, 0x26 ; 00B44A: provisional 68k bsr.w $ad72
db 0x54, 0x4B ; 00B44E: provisional 68k addq.w #$2, a3
db 0x3F, 0x00 ; 00B450: provisional 68k move.w d0, -(a7)
db 0x3F, 0x01 ; 00B452: provisional 68k move.w d1, -(a7)
db 0x2F, 0x08 ; 00B454: provisional 68k move.l a0, -(a7)
db 0x61, 0x00, 0x5C, 0x0C ; 00B456: provisional 68k bsr.w $11064
db 0x4C, 0xDF, 0x01, 0x82 ; 00B45A: provisional 68k movem.l (a7)+, d1/d7/a0
db 0x60, 0x00, 0xF9, 0x16 ; 00B45E: provisional 68k bra.w $ad76
db 0x48, 0xE7, 0x01, 0x80 ; 00B462: provisional 68k movem.l d7/a0, -(a7)
db 0x61, 0x00, 0xF9, 0x0A ; 00B466: provisional 68k bsr.w $ad72
db 0x54, 0x4B ; 00B46A: provisional 68k addq.w #$2, a3
db 0x3F, 0x00 ; 00B46C: provisional 68k move.w d0, -(a7)
db 0x61, 0x00, 0x4D, 0x32 ; 00B46E: provisional 68k bsr.w $101a2
db 0x30, 0x28, 0x00, 0x26 ; 00B472: provisional 68k move.w $26(a0), d0
db 0x4C, 0xDF, 0x01, 0x80 ; 00B476: provisional 68k movem.l (a7)+, d7/a0
db 0x60, 0x00, 0xF8, 0xFA ; 00B47A: provisional 68k bra.w $ad76
db 0x48, 0xE7, 0x01, 0x80 ; 00B47E: provisional 68k movem.l d7/a0, -(a7)
db 0x61, 0x00, 0xF8, 0xEE ; 00B482: provisional 68k bsr.w $ad72
db 0x54, 0x4B ; 00B486: provisional 68k addq.w #$2, a3
db 0x3F, 0x00 ; 00B488: provisional 68k move.w d0, -(a7)
db 0x61, 0x00, 0x4D, 0x16 ; 00B48A: provisional 68k bsr.w $101a2
db 0x30, 0x28, 0x00, 0x28 ; 00B48E: provisional 68k move.w $28(a0), d0
db 0x4C, 0xDF, 0x01, 0x80 ; 00B492: provisional 68k movem.l (a7)+, d7/a0
db 0x60, 0x00, 0xF8, 0xDE ; 00B496: provisional 68k bra.w $ad76
db 0x48, 0xE7, 0x01, 0x80 ; 00B49A: provisional 68k movem.l d7/a0, -(a7)
db 0x61, 0x00, 0xF8, 0xD2 ; 00B49E: provisional 68k bsr.w $ad72
db 0x54, 0x4B ; 00B4A2: provisional 68k addq.w #$2, a3
db 0x3F, 0x00 ; 00B4A4: provisional 68k move.w d0, -(a7)
db 0x61, 0x00, 0x4C, 0xFA ; 00B4A6: provisional 68k bsr.w $101a2
db 0x30, 0x28, 0x00, 0x22 ; 00B4AA: provisional 68k move.w $22(a0), d0
db 0x4C, 0xDF, 0x01, 0x80 ; 00B4AE: provisional 68k movem.l (a7)+, d7/a0
db 0x60, 0x00, 0xF8, 0xC2 ; 00B4B2: provisional 68k bra.w $ad76
db 0x48, 0xE7, 0x01, 0x80 ; 00B4B6: provisional 68k movem.l d7/a0, -(a7)
db 0x61, 0x00, 0xF8, 0xB6 ; 00B4BA: provisional 68k bsr.w $ad72
db 0x54, 0x4B ; 00B4BE: provisional 68k addq.w #$2, a3
db 0x3F, 0x00 ; 00B4C0: provisional 68k move.w d0, -(a7)
db 0x61, 0x00, 0x4C, 0xDE ; 00B4C2: provisional 68k bsr.w $101a2
db 0x30, 0x28, 0x00, 0x24 ; 00B4C6: provisional 68k move.w $24(a0), d0
db 0x4C, 0xDF, 0x01, 0x80 ; 00B4CA: provisional 68k movem.l (a7)+, d7/a0
db 0x60, 0x00, 0xF8, 0xA6 ; 00B4CE: provisional 68k bra.w $ad76
db 0x48, 0xE7, 0x7F, 0x80 ; 00B4D2: provisional 68k movem.l d1-d7/a0, -(a7)
db 0x61, 0x00, 0xF8, 0x9A ; 00B4D6: provisional 68k bsr.w $ad72
db 0x54, 0x4B ; 00B4DA: provisional 68k addq.w #$2, a3
db 0x3F, 0x00 ; 00B4DC: provisional 68k move.w d0, -(a7)
db 0x61, 0x00, 0xF8, 0x92 ; 00B4DE: provisional 68k bsr.w $ad72
db 0x54, 0x4B ; 00B4E2: provisional 68k addq.w #$2, a3
db 0x3F, 0x00 ; 00B4E4: provisional 68k move.w d0, -(a7)
db 0x61, 0x00, 0xF8, 0x8A ; 00B4E6: provisional 68k bsr.w $ad72
db 0x54, 0x4B ; 00B4EA: provisional 68k addq.w #$2, a3
db 0x3F, 0x00 ; 00B4EC: provisional 68k move.w d0, -(a7)
db 0x61, 0x00, 0xF8, 0x82 ; 00B4EE: provisional 68k bsr.w $ad72
db 0x54, 0x4B ; 00B4F2: provisional 68k addq.w #$2, a3
db 0x3F, 0x00 ; 00B4F4: provisional 68k move.w d0, -(a7)
db 0x61, 0x00, 0xF8, 0x7A ; 00B4F6: provisional 68k bsr.w $ad72
db 0x54, 0x4B ; 00B4FA: provisional 68k addq.w #$2, a3
db 0x3F, 0x00 ; 00B4FC: provisional 68k move.w d0, -(a7)
db 0x61, 0x00, 0xF8, 0x72 ; 00B4FE: provisional 68k bsr.w $ad72
db 0x54, 0x4B ; 00B502: provisional 68k addq.w #$2, a3
db 0x3F, 0x00 ; 00B504: provisional 68k move.w d0, -(a7)
db 0x61, 0x00, 0xF8, 0x6A ; 00B506: provisional 68k bsr.w $ad72
db 0x54, 0x4B ; 00B50A: provisional 68k addq.w #$2, a3
db 0x4C, 0x9F, 0x00, 0x7E ; 00B50C: provisional 68k movem.w (a7)+, d1-d6
db 0x48, 0xC0 ; 00B510: provisional 68k ext.l d0
db 0x3F, 0x3C, 0x00, 0x06 ; 00B512: provisional 68k move.w #$6, -(a7)
db 0x2F, 0x2C, 0x00, 0x04 ; 00B516: provisional 68k move.l $4(a4), -(a7)
db 0x2D, 0x46, 0xCF, 0xE8 ; 00B51A: provisional 68k move.l d6, -$3018(a6)
db 0x2D, 0x44, 0xCF, 0xEC ; 00B51E: provisional 68k move.l d4, -$3014(a6)
db 0x2D, 0x43, 0xCF, 0xF0 ; 00B522: provisional 68k move.l d3, -$3010(a6)
db 0x2D, 0x45, 0xCF, 0xF4 ; 00B526: provisional 68k move.l d5, -$300c(a6)
db 0x2D, 0x40, 0xCF, 0xF8 ; 00B52A: provisional 68k move.l d0, -$3008(a6)
db 0x61, 0x00, 0x4B, 0x4E ; 00B52E: provisional 68k bsr.w $1007e
db 0x3F, 0x01 ; 00B532: provisional 68k move.w d1, -(a7)
db 0x3F, 0x02 ; 00B534: provisional 68k move.w d2, -(a7)
db 0x2F, 0x08 ; 00B536: provisional 68k move.l a0, -(a7)
db 0x61, 0x00, 0x61, 0x8C ; 00B538: provisional 68k bsr.w $116c6
db 0x2F, 0x08 ; 00B53C: provisional 68k move.l a0, -(a7)
db 0x61, 0x00, 0x4C, 0x36 ; 00B53E: provisional 68k bsr.w $10176
db 0x4C, 0xDF, 0x01, 0xFE ; 00B542: provisional 68k movem.l (a7)+, d1-d7/a0
db 0x60, 0x00, 0xF8, 0x2E ; 00B546: provisional 68k bra.w $ad76
db 0x3F, 0x07 ; 00B54A: provisional 68k move.w d7, -(a7)
db 0x61, 0x00, 0xF8, 0x24 ; 00B54C: provisional 68k bsr.w $ad72
db 0x54, 0x4B ; 00B550: provisional 68k addq.w #$2, a3
db 0x3F, 0x00 ; 00B552: provisional 68k move.w d0, -(a7)
db 0x61, 0x00, 0x48, 0x8C ; 00B554: provisional 68k bsr.w $fde2
db 0x3E, 0x1F ; 00B558: provisional 68k move.w (a7)+, d7
db 0x60, 0x00, 0xF8, 0x1A ; 00B55A: provisional 68k bra.w $ad76
db 0x3F, 0x07 ; 00B55E: provisional 68k move.w d7, -(a7)
db 0x61, 0x00, 0xF8, 0x10 ; 00B560: provisional 68k bsr.w $ad72
db 0x54, 0x4B ; 00B564: provisional 68k addq.w #$2, a3
db 0x3F, 0x00 ; 00B566: provisional 68k move.w d0, -(a7)
db 0x61, 0x00, 0x4C, 0x38 ; 00B568: provisional 68k bsr.w $101a2
db 0x30, 0x28, 0x00, 0x32 ; 00B56C: provisional 68k move.w $32(a0), d0
db 0x3E, 0x1F ; 00B570: provisional 68k move.w (a7)+, d7
db 0x60, 0x00, 0xF8, 0x02 ; 00B572: provisional 68k bra.w $ad76
db 0x3F, 0x07 ; 00B576: provisional 68k move.w d7, -(a7)
db 0x61, 0x00, 0xF7, 0xF8 ; 00B578: provisional 68k bsr.w $ad72
db 0x54, 0x4B ; 00B57C: provisional 68k addq.w #$2, a3
db 0x3F, 0x00 ; 00B57E: provisional 68k move.w d0, -(a7)
db 0x61, 0x00, 0x4C, 0x20 ; 00B580: provisional 68k bsr.w $101a2
db 0x30, 0x28, 0x00, 0x20 ; 00B584: provisional 68k move.w $20(a0), d0
db 0x3E, 0x1F ; 00B588: provisional 68k move.w (a7)+, d7
db 0x60, 0x00, 0xF7, 0xEA ; 00B58A: provisional 68k bra.w $ad76
db 0x3F, 0x07 ; 00B58E: provisional 68k move.w d7, -(a7)
db 0x61, 0x00, 0xF7, 0xE0 ; 00B590: provisional 68k bsr.w $ad72
db 0x54, 0x4B ; 00B594: provisional 68k addq.w #$2, a3
db 0x3F, 0x00 ; 00B596: provisional 68k move.w d0, -(a7)
db 0x61, 0x00, 0x4C, 0x08 ; 00B598: provisional 68k bsr.w $101a2
db 0x30, 0x28, 0x00, 0x22 ; 00B59C: provisional 68k move.w $22(a0), d0
db 0x3E, 0x1F ; 00B5A0: provisional 68k move.w (a7)+, d7
db 0x60, 0x00, 0xF7, 0xD2 ; 00B5A2: provisional 68k bra.w $ad76
db 0x3F, 0x07 ; 00B5A6: provisional 68k move.w d7, -(a7)
db 0x61, 0x00, 0xF7, 0xC8 ; 00B5A8: provisional 68k bsr.w $ad72
db 0x54, 0x4B ; 00B5AC: provisional 68k addq.w #$2, a3
db 0x3F, 0x00 ; 00B5AE: provisional 68k move.w d0, -(a7)
db 0x61, 0x00, 0x4B, 0xF0 ; 00B5B0: provisional 68k bsr.w $101a2
db 0x30, 0x28, 0x00, 0x2C ; 00B5B4: provisional 68k move.w $2c(a0), d0
db 0x3E, 0x1F ; 00B5B8: provisional 68k move.w (a7)+, d7
db 0x60, 0x00, 0xF7, 0xBA ; 00B5BA: provisional 68k bra.w $ad76
db 0x3F, 0x07 ; 00B5BE: provisional 68k move.w d7, -(a7)
db 0x61, 0x00, 0xF7, 0xB0 ; 00B5C0: provisional 68k bsr.w $ad72
db 0x54, 0x4B ; 00B5C4: provisional 68k addq.w #$2, a3
db 0x3F, 0x00 ; 00B5C6: provisional 68k move.w d0, -(a7)
db 0x61, 0x00, 0x4B, 0xD8 ; 00B5C8: provisional 68k bsr.w $101a2
db 0x30, 0x28, 0x00, 0x2E ; 00B5CC: provisional 68k move.w $2e(a0), d0
db 0x3E, 0x1F ; 00B5D0: provisional 68k move.w (a7)+, d7
db 0x60, 0x00, 0xF7, 0xA2 ; 00B5D2: provisional 68k bra.w $ad76
db 0x3F, 0x07 ; 00B5D6: provisional 68k move.w d7, -(a7)
db 0x61, 0x00, 0xF7, 0x98 ; 00B5D8: provisional 68k bsr.w $ad72
db 0x54, 0x4B ; 00B5DC: provisional 68k addq.w #$2, a3
db 0x3F, 0x00 ; 00B5DE: provisional 68k move.w d0, -(a7)
db 0x61, 0x00, 0x4B, 0xC0 ; 00B5E0: provisional 68k bsr.w $101a2
db 0x30, 0x28, 0x00, 0x24 ; 00B5E4: provisional 68k move.w $24(a0), d0
db 0x3E, 0x1F ; 00B5E8: provisional 68k move.w (a7)+, d7
db 0x60, 0x00, 0xF7, 0x8A ; 00B5EA: provisional 68k bra.w $ad76
db 0x3F, 0x07 ; 00B5EE: provisional 68k move.w d7, -(a7)
db 0x61, 0x00, 0xF7, 0x80 ; 00B5F0: provisional 68k bsr.w $ad72
db 0x54, 0x4B ; 00B5F4: provisional 68k addq.w #$2, a3
db 0x3F, 0x00 ; 00B5F6: provisional 68k move.w d0, -(a7)
db 0x61, 0x00, 0x4B, 0xA8 ; 00B5F8: provisional 68k bsr.w $101a2
db 0x30, 0x28, 0x00, 0x26 ; 00B5FC: provisional 68k move.w $26(a0), d0
db 0x3E, 0x1F ; 00B600: provisional 68k move.w (a7)+, d7
db 0x60, 0x00, 0xF7, 0x72 ; 00B602: provisional 68k bra.w $ad76
db 0x48, 0xE7, 0x01, 0x80 ; 00B606: provisional 68k movem.l d7/a0, -(a7)
db 0x61, 0x00, 0xF7, 0x66 ; 00B60A: provisional 68k bsr.w $ad72
db 0x54, 0x4B ; 00B60E: provisional 68k addq.w #$2, a3
db 0xC0, 0xFC, 0x00, 0x7A ; 00B610: provisional 68k mulu.w #$7a, d0
db 0x41, 0xEE, 0x80, 0x5E ; 00B614: provisional 68k lea.l -$7fa2(a6), a0
db 0x20, 0x70, 0x08, 0x04 ; 00B618: provisional 68k movea.l $4(a0, d0.l), a0
db 0x2F, 0x08 ; 00B61C: provisional 68k move.l a0, -(a7)
db 0x61, 0x00, 0x4B, 0x56 ; 00B61E: provisional 68k bsr.w $10176
db 0x4C, 0xDF, 0x01, 0x80 ; 00B622: provisional 68k movem.l (a7)+, d7/a0
db 0x60, 0x00, 0xF7, 0x4E ; 00B626: provisional 68k bra.w $ad76
db 0x2F, 0x08 ; 00B62A: provisional 68k move.l a0, -(a7)
db 0x32, 0x3C, 0x80, 0x00 ; 00B62C: provisional 68k move.w #$8000, d1
db 0x61, 0x00, 0x07, 0x4C ; 00B630: provisional 68k bsr.w $bd7e
db 0x61, 0x73 ; 00B634: provisional 68k bsr.b $b6a9
db 0x73, 0x65 ; file 00B636
db 0x74, 0x5F ; 00B638: provisional 68k moveq #$5f, d2
db 0x70, 0x61 ; 00B63A: provisional 68k moveq #$61, d0
db 0x72, 0x65 ; 00B63C: provisional 68k moveq #$65, d1
db 0x6E, 0x74 ; 00B63E: provisional 68k bgt.b $b6b4
db 0x3A, 0x20 ; 00B640: provisional 68k move.w -(a0), d5
db 0x4E, 0x6F ; 00B642: provisional 68k move usp, a7
db 0x74, 0x20 ; 00B644: provisional 68k moveq #$20, d2
db 0x69, 0x6D ; 00B646: provisional 68k bvs.b $b6b5
db 0x70, 0x6C ; 00B648: provisional 68k moveq #$6c, d0
db 0x65, 0x6D ; 00B64A: provisional 68k bcs.b $b6b9
db 0x65, 0x6E ; 00B64C: provisional 68k bcs.b $b6bc
db 0x74, 0x65 ; 00B64E: provisional 68k moveq #$65, d2
db 0x64, 0x20 ; 00B650: provisional 68k bcc.b $b672
db 0x79, 0x65 ; file 00B652
db 0x74, 0x21 ; 00B654: provisional 68k moveq #$21, d2
db 0x00, 0x00, 0x20, 0x5F ; 00B656: provisional 68k ori.b #$5f, d0
db 0x60, 0x00, 0xF7, 0x1A ; 00B65A: provisional 68k bra.w $ad76
db 0x48, 0xE7, 0x7F, 0xEE ; 00B65E: provisional 68k movem.l d1-d7/a0-a2/a4-a6, -(a7)
db 0x61, 0x00, 0xF7, 0x0E ; 00B662: provisional 68k bsr.w $ad72
db 0x54, 0x4B ; 00B666: provisional 68k addq.w #$2, a3
db 0x3F, 0x00 ; 00B668: provisional 68k move.w d0, -(a7)
db 0x61, 0x00, 0xF7, 0x06 ; 00B66A: provisional 68k bsr.w $ad72
db 0x54, 0x4B ; 00B66E: provisional 68k addq.w #$2, a3
db 0x3F, 0x00 ; 00B670: provisional 68k move.w d0, -(a7)
db 0x61, 0x00, 0xF6, 0xFE ; 00B672: provisional 68k bsr.w $ad72
db 0x54, 0x4B ; 00B676: provisional 68k addq.w #$2, a3
db 0x3F, 0x00 ; 00B678: provisional 68k move.w d0, -(a7)
db 0x61, 0x00, 0xF6, 0xF6 ; 00B67A: provisional 68k bsr.w $ad72
db 0x54, 0x4B ; 00B67E: provisional 68k addq.w #$2, a3
db 0x36, 0x00 ; 00B680: provisional 68k move.w d0, d3
db 0x24, 0x6C, 0x00, 0x1E ; 00B682: provisional 68k movea.l $1e(a4), a2
db 0x42, 0x80 ; 00B686: provisional 68k clr.l d0
db 0x30, 0x2A, 0x00, 0x0A ; 00B688: provisional 68k move.w $a(a2), d0
db 0xD5, 0xC0 ; 00B68C: provisional 68k adda.l d0, a2
db 0x34, 0x1F ; 00B68E: provisional 68k move.w (a7)+, d2
db 0x32, 0x1F ; 00B690: provisional 68k move.w (a7)+, d1
db 0x30, 0x1F ; 00B692: provisional 68k move.w (a7)+, d0
db 0x2F, 0x0B ; 00B694: provisional 68k move.l a3, -(a7)
db 0x20, 0x6C, 0x00, 0x1E ; 00B696: provisional 68k movea.l $1e(a4), a0
db 0x43, 0xFA, 0x4D, 0x1A ; 00B69A: provisional 68k lea.l $103b6(pc), a1
db 0x4E, 0x92 ; 00B69E: provisional 68k jsr (a2)
db 0x26, 0x5F ; 00B6A0: provisional 68k movea.l (a7)+, a3
db 0x4C, 0xDF, 0x77, 0xFE ; 00B6A2: provisional 68k movem.l (a7)+, d1-d7/a0-a2/a4-a6
db 0x60, 0x00, 0xF6, 0xCE ; 00B6A6: provisional 68k bra.w $ad76
db 0x48, 0xE7, 0x7F, 0xEC ; 00B6AA: provisional 68k movem.l d1-d7/a0-a2/a4-a5, -(a7)
db 0x61, 0x00, 0xF6, 0xC2 ; 00B6AE: provisional 68k bsr.w $ad72
db 0x54, 0x4B ; 00B6B2: provisional 68k addq.w #$2, a3
db 0x20, 0x6C, 0x00, 0x1E ; 00B6B4: provisional 68k movea.l $1e(a4), a0
db 0xC0, 0xBC, 0x00, 0x00, 0xFF, 0xFF ; 00B6B8: provisional 68k and.l #$ffff, d0
db 0xD1, 0xC0 ; 00B6BE: provisional 68k adda.l d0, a0
db 0x61, 0x00, 0xF6, 0xB0 ; 00B6C0: provisional 68k bsr.w $ad72
db 0x54, 0x4B ; 00B6C4: provisional 68k addq.w #$2, a3
db 0x24, 0x6C, 0x00, 0x1E ; 00B6C6: provisional 68k movea.l $1e(a4), a2
db 0xC0, 0xBC, 0x00, 0x00, 0xFF, 0xFF ; 00B6CA: provisional 68k and.l #$ffff, d0
db 0xD5, 0xC0 ; 00B6D0: provisional 68k adda.l d0, a2
db 0x34, 0xBC, 0xFF, 0xFF ; 00B6D2: provisional 68k move.w #$ffff, (a2)
db 0x70, 0x43 ; 00B6D6: provisional 68k moveq #$43, d0
db 0x4E, 0x40, 0x00, 0x84 ; 00B6D8: provisional 68k trap #0 ; OS-9 service word $0084
db 0x65, 0x04 ; 00B6DC: provisional 68k bcs.b $b6e2
db 0x34, 0x80 ; 00B6DE: provisional 68k move.w d0, (a2)
db 0x42, 0x41 ; 00B6E0: provisional 68k clr.w d1
db 0x30, 0x01 ; 00B6E2: provisional 68k move.w d1, d0
db 0x4C, 0xDF, 0x37, 0xFE ; 00B6E4: provisional 68k movem.l (a7)+, d1-d7/a0-a2/a4-a5
db 0x60, 0x00, 0xF6, 0x8C ; 00B6E8: provisional 68k bra.w $ad76
db 0x48, 0xE7, 0x7F, 0xEC ; 00B6EC: provisional 68k movem.l d1-d7/a0-a2/a4-a5, -(a7)
db 0x61, 0x00, 0xF6, 0x80 ; 00B6F0: provisional 68k bsr.w $ad72
db 0x54, 0x4B ; 00B6F4: provisional 68k addq.w #$2, a3
db 0x4E, 0x40, 0x00, 0x8F ; 00B6F6: provisional 68k trap #0 ; OS-9 service word $008F
db 0x65, 0x02 ; 00B6FA: provisional 68k bcs.b $b6fe
db 0x42, 0x41 ; 00B6FC: provisional 68k clr.w d1
db 0x30, 0x01 ; 00B6FE: provisional 68k move.w d1, d0
db 0x4C, 0xDF, 0x37, 0xFE ; 00B700: provisional 68k movem.l (a7)+, d1-d7/a0-a2/a4-a5
db 0x60, 0x00, 0xF6, 0x70 ; 00B704: provisional 68k bra.w $ad76
db 0x48, 0xE7, 0x7F, 0xEC ; 00B708: provisional 68k movem.l d1-d7/a0-a2/a4-a5, -(a7)
db 0x61, 0x00, 0xF6, 0x64 ; 00B70C: provisional 68k bsr.w $ad72
db 0x54, 0x4B ; 00B710: provisional 68k addq.w #$2, a3
db 0x3F, 0x00 ; 00B712: provisional 68k move.w d0, -(a7)
db 0x61, 0x00, 0xF6, 0x5C ; 00B714: provisional 68k bsr.w $ad72
db 0x54, 0x4B ; 00B718: provisional 68k addq.w #$2, a3
db 0x3F, 0x00 ; 00B71A: provisional 68k move.w d0, -(a7)
db 0x61, 0x00, 0xF6, 0x54 ; 00B71C: provisional 68k bsr.w $ad72
db 0x54, 0x4B ; 00B720: provisional 68k addq.w #$2, a3
db 0x28, 0x6C, 0x00, 0x1E ; 00B722: provisional 68k movea.l $1e(a4), a4
db 0xC0, 0xBC, 0x00, 0x00, 0xFF, 0xFF ; 00B726: provisional 68k and.l #$ffff, d0
db 0xD9, 0xC0 ; 00B72C: provisional 68k adda.l d0, a4
db 0x42, 0x81 ; 00B72E: provisional 68k clr.l d1
db 0x32, 0x1F ; 00B730: provisional 68k move.w (a7)+, d1
db 0x34, 0x1F ; 00B732: provisional 68k move.w (a7)+, d2
db 0x38, 0xBC, 0xFF, 0xFF ; 00B734: provisional 68k move.w #$ffff, (a4)
db 0x30, 0x02 ; 00B738: provisional 68k move.w d2, d0
db 0x4E, 0x40, 0x00, 0x88 ; 00B73A: provisional 68k trap #0 ; OS-9 service word $0088
db 0x65, 0x18 ; 00B73E: provisional 68k bcs.b $b758
db 0x42, 0x6E, 0x80, 0x4C ; 00B740: provisional 68k clr.w -$7fb4(a6)
db 0x72, 0x01 ; 00B744: provisional 68k moveq #$1, d1
db 0x41, 0xEE, 0x80, 0x4D ; 00B746: provisional 68k lea.l -$7fb3(a6), a0
db 0x30, 0x02 ; 00B74A: provisional 68k move.w d2, d0
db 0x4E, 0x40, 0x00, 0x89 ; 00B74C: provisional 68k trap #0 ; OS-9 service word $0089
db 0x65, 0x06 ; 00B750: provisional 68k bcs.b $b758
db 0x38, 0xAE, 0x80, 0x4C ; 00B752: provisional 68k move.w -$7fb4(a6), (a4)
db 0x42, 0x41 ; 00B756: provisional 68k clr.w d1
db 0x30, 0x01 ; 00B758: provisional 68k move.w d1, d0
db 0x4C, 0xDF, 0x37, 0xFE ; 00B75A: provisional 68k movem.l (a7)+, d1-d7/a0-a2/a4-a5
db 0x60, 0x00, 0xF6, 0x16 ; 00B75E: provisional 68k bra.w $ad76
db 0x48, 0xE7, 0x7F, 0xEC ; 00B762: provisional 68k movem.l d1-d7/a0-a2/a4-a5, -(a7)
db 0x61, 0x00, 0xF6, 0x0A ; 00B766: provisional 68k bsr.w $ad72
db 0x54, 0x4B ; 00B76A: provisional 68k addq.w #$2, a3
db 0x3F, 0x00 ; 00B76C: provisional 68k move.w d0, -(a7)
db 0x61, 0x00, 0xF6, 0x02 ; 00B76E: provisional 68k bsr.w $ad72
db 0x54, 0x4B ; 00B772: provisional 68k addq.w #$2, a3
db 0x3F, 0x00 ; 00B774: provisional 68k move.w d0, -(a7)
db 0x61, 0x00, 0xF5, 0xFA ; 00B776: provisional 68k bsr.w $ad72
db 0x54, 0x4B ; 00B77A: provisional 68k addq.w #$2, a3
db 0x1D, 0x40, 0x80, 0x4C ; 00B77C: provisional 68k move.b d0, -$7fb4(a6)
db 0x42, 0x82 ; 00B780: provisional 68k clr.l d2
db 0x34, 0x1F ; 00B782: provisional 68k move.w (a7)+, d2
db 0x36, 0x1F ; 00B784: provisional 68k move.w (a7)+, d3
db 0x22, 0x02 ; 00B786: provisional 68k move.l d2, d1
db 0x30, 0x03 ; 00B788: provisional 68k move.w d3, d0
db 0x4E, 0x40, 0x00, 0x88 ; 00B78A: provisional 68k trap #0 ; OS-9 service word $0088
db 0x65, 0x10 ; 00B78E: provisional 68k bcs.b $b7a0
db 0x41, 0xEE, 0x80, 0x4C ; 00B790: provisional 68k lea.l -$7fb4(a6), a0
db 0x72, 0x01 ; 00B794: provisional 68k moveq #$1, d1
db 0x30, 0x03 ; 00B796: provisional 68k move.w d3, d0
db 0x4E, 0x40, 0x00, 0x8A ; 00B798: provisional 68k trap #0 ; OS-9 service word $008A
db 0x65, 0x02 ; 00B79C: provisional 68k bcs.b $b7a0
db 0x42, 0x41 ; 00B79E: provisional 68k clr.w d1
db 0x30, 0x01 ; 00B7A0: provisional 68k move.w d1, d0
db 0x4C, 0xDF, 0x37, 0xFE ; 00B7A2: provisional 68k movem.l (a7)+, d1-d7/a0-a2/a4-a5
db 0x60, 0x00, 0xF5, 0xCE ; 00B7A6: provisional 68k bra.w $ad76
db 0x48, 0xE7, 0x7F, 0xEC ; 00B7AA: provisional 68k movem.l d1-d7/a0-a2/a4-a5, -(a7)
db 0x61, 0x00, 0xF5, 0xC2 ; 00B7AE: provisional 68k bsr.w $ad72
db 0x54, 0x4B ; 00B7B2: provisional 68k addq.w #$2, a3
db 0x20, 0x6C, 0x00, 0x1E ; 00B7B4: provisional 68k movea.l $1e(a4), a0
db 0xC0, 0xBC, 0x00, 0x00, 0xFF, 0xFF ; 00B7B8: provisional 68k and.l #$ffff, d0
db 0xD1, 0xC0 ; 00B7BE: provisional 68k adda.l d0, a0
db 0x2F, 0x08 ; 00B7C0: provisional 68k move.l a0, -(a7)
db 0x61, 0x00, 0xF5, 0xAE ; 00B7C2: provisional 68k bsr.w $ad72
db 0x54, 0x4B ; 00B7C6: provisional 68k addq.w #$2, a3
db 0x28, 0x6C, 0x00, 0x1E ; 00B7C8: provisional 68k movea.l $1e(a4), a4
db 0xC0, 0xBC, 0x00, 0x00, 0xFF, 0xFF ; 00B7CC: provisional 68k and.l #$ffff, d0
db 0xD9, 0xC0 ; 00B7D2: provisional 68k adda.l d0, a4
db 0x2F, 0x0C ; 00B7D4: provisional 68k move.l a4, -(a7)
db 0x61, 0x00, 0xF5, 0x9A ; 00B7D6: provisional 68k bsr.w $ad72
db 0x54, 0x4B ; 00B7DA: provisional 68k addq.w #$2, a3
db 0x28, 0x5F ; 00B7DC: provisional 68k movea.l (a7)+, a4
db 0x20, 0x5F ; 00B7DE: provisional 68k movea.l (a7)+, a0
db 0x38, 0xBC, 0xFF, 0xFF ; 00B7E0: provisional 68k move.w #$ffff, (a4)
db 0x42, 0x82 ; 00B7E4: provisional 68k clr.l d2
db 0x34, 0x00 ; 00B7E6: provisional 68k move.w d0, d2
db 0x32, 0x3C, 0x00, 0x33 ; 00B7E8: provisional 68k move.w #$33, d1
db 0x30, 0x3C, 0x00, 0x43 ; 00B7EC: provisional 68k move.w #$43, d0
db 0x08, 0xC0, 0x00, 0x05 ; 00B7F0: provisional 68k bset.b #$5, d0
db 0x4E, 0x40, 0x00, 0x83 ; 00B7F4: provisional 68k trap #0 ; OS-9 service word $0083
db 0x65, 0x04 ; 00B7F8: provisional 68k bcs.b $b7fe
db 0x38, 0x80 ; 00B7FA: provisional 68k move.w d0, (a4)
db 0x42, 0x41 ; 00B7FC: provisional 68k clr.w d1
db 0x30, 0x01 ; 00B7FE: provisional 68k move.w d1, d0
db 0x4C, 0xDF, 0x37, 0xFE ; 00B800: provisional 68k movem.l (a7)+, d1-d7/a0-a2/a4-a5
db 0x60, 0x00, 0xF5, 0x70 ; 00B804: provisional 68k bra.w $ad76
db 0x48, 0xE7, 0x7F, 0xEC ; 00B808: provisional 68k movem.l d1-d7/a0-a2/a4-a5, -(a7)
db 0x61, 0x00, 0xF5, 0x64 ; 00B80C: provisional 68k bsr.w $ad72
db 0x54, 0x4B ; 00B810: provisional 68k addq.w #$2, a3
db 0x20, 0x6C, 0x00, 0x1E ; 00B812: provisional 68k movea.l $1e(a4), a0
db 0xC0, 0xBC, 0x00, 0x00, 0xFF, 0xFF ; 00B816: provisional 68k and.l #$ffff, d0
db 0xD1, 0xC0 ; 00B81C: provisional 68k adda.l d0, a0
db 0x30, 0x3C, 0x00, 0x41 ; 00B81E: provisional 68k move.w #$41, d0
db 0x4E, 0x40, 0x00, 0x87 ; 00B822: provisional 68k trap #0 ; OS-9 service word $0087
db 0x30, 0x01 ; 00B826: provisional 68k move.w d1, d0
db 0x4C, 0xDF, 0x37, 0xFE ; 00B828: provisional 68k movem.l (a7)+, d1-d7/a0-a2/a4-a5
db 0x60, 0x00, 0xF5, 0x48 ; 00B82C: provisional 68k bra.w $ad76
db 0x32, 0x3C, 0x80, 0x00 ; 00B830: provisional 68k move.w #$8000, d1
db 0x61, 0x00, 0x05, 0x48 ; 00B834: provisional 68k bsr.w $bd7e
db 0x6E, 0x76 ; 00B838: provisional 68k bgt.b $b8b0
db 0x72, 0x5F ; 00B83A: provisional 68k moveq #$5f, d1
db 0x3F, 0x3F ; file 00B83C
db 0x3F, 0x3A, 0x20, 0x4E ; 00B83E: provisional 68k move.w $d88e(pc), -(a7)
db 0x6F, 0x74 ; 00B842: provisional 68k ble.b $b8b8
db 0x20, 0x73, 0x75, 0x70, 0x70, 0x6F, 0x72, 0x74 ; 00B844: provisional 68k movea.l $706f7274(a3, invalid.w), a0
db 0x65, 0x64 ; 00B84C: provisional 68k bcs.b $b8b2
db 0x20, 0x79, 0x65, 0x74, 0x00, 0x00 ; 00B84E: provisional 68k movea.l $65740000.l, a0
