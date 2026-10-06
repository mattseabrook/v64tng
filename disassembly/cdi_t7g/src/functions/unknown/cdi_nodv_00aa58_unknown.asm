; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00AA58–00AE75, inclusive.
cdi_nodv_entry_00aa58:
db 0x01, 0x19 ; 00AA58: provisional 68k btst.l d0, (a1)+
db 0x01, 0x14 ; 00AA5A: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 00AA5C
db 0x01, 0x0D, 0x01, 0x14 ; 00AA5E: provisional 68k movep.w $114(a5), d0
db 0x00, 0x00, 0x01, 0x00 ; 00AA62: provisional 68k ori.b #$0, d0
db 0x01, 0x08, 0x01, 0x14 ; 00AA66: provisional 68k movep.w $114(a0), d0
db 0x00, 0xFF ; file 00AA6A
db 0x01, 0x00 ; 00AA6C: provisional 68k btst.l d0, d0
db 0x00, 0x11, 0x01, 0x14 ; 00AA6E: provisional 68k ori.b #$14, (a1)
db 0x00, 0x1B, 0x01, 0x0D ; 00AA72: provisional 68k ori.b #$d, (a3)+
db 0x01, 0x14 ; 00AA76: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 00AA78: provisional 68k ori.b #$0, d2
db 0x01, 0x14 ; 00AA7C: provisional 68k btst.l d0, (a4)
db 0x62, 0x30 ; 00AA7E: provisional 68k bhi.b $aab0
db 0x01, 0x0E, 0x01, 0x14 ; 00AA80: provisional 68k movep.w $114(a6), d0
db 0x00, 0x30, 0x01, 0x00, 0x00, 0x07 ; 00AA84: provisional 68k ori.b #$0, $7(a0, d0.w)
db 0x01, 0x14 ; 00AA8A: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 00AA8C: provisional 68k ori.b #$0, d1
db 0x01, 0x19 ; 00AA90: provisional 68k btst.l d0, (a1)+
db 0x01, 0x14 ; 00AA92: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 00AA94
db 0x01, 0x0D, 0x01, 0x14 ; 00AA96: provisional 68k movep.w $114(a5), d0
db 0x00, 0x00, 0x01, 0x00 ; 00AA9A: provisional 68k ori.b #$0, d0
db 0x01, 0x0E, 0x01, 0x14 ; 00AA9E: provisional 68k movep.w $114(a6), d0
db 0x01, 0x00 ; 00AAA2: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 00AAA4: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x04 ; 00AAA6: provisional 68k ori.b #$4, d0
db 0x1B, 0x74, 0x00, 0x11, 0x01, 0x14 ; 00AAAA: provisional 68k move.b $11(a4, d0.w), $114(a5)
db 0x00, 0x1B, 0x01, 0x0D ; 00AAB0: provisional 68k ori.b #$d, (a3)+
db 0x01, 0x14 ; 00AAB4: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 00AAB6: provisional 68k ori.b #$0, d2
db 0x01, 0x14 ; 00AABA: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 00AABC: provisional 68k ori.b #$0, d0
db 0x00, 0x07, 0x01, 0x14 ; 00AAC0: provisional 68k ori.b #$14, d7
db 0x00, 0x01, 0x01, 0x00 ; 00AAC4: provisional 68k ori.b #$0, d1
db 0x01, 0x19 ; 00AAC8: provisional 68k btst.l d0, (a1)+
db 0x01, 0x14 ; 00AACA: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 00AACC
db 0x01, 0x0D, 0x01, 0x14 ; 00AACE: provisional 68k movep.w $114(a5), d0
db 0x00, 0x00, 0x01, 0x00 ; 00AAD2: provisional 68k ori.b #$0, d0
db 0x01, 0x00 ; 00AAD6: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x0F ; 00AAD8: provisional 68k ori.b #$f, d0
db 0x1B, 0xBC, 0x01, 0x18, 0x01, 0x14 ; 00AADC: provisional 68k move.b #$18, (a5, d0.w)
db 0x00, 0x01, 0x01, 0x00 ; 00AAE2: provisional 68k ori.b #$0, d1
db 0x01, 0x07 ; 00AAE6: provisional 68k btst.l d0, d7
db 0x01, 0x14 ; 00AAE8: provisional 68k btst.l d0, (a4)
db 0x00, 0x0A ; file 00AAEA
db 0x01, 0x00 ; 00AAEC: provisional 68k btst.l d0, d0
db 0x00, 0x11, 0x01, 0x14 ; 00AAEE: provisional 68k ori.b #$14, (a1)
db 0x00, 0x1B, 0x01, 0x0D ; 00AAF2: provisional 68k ori.b #$d, (a3)+
db 0x01, 0x14 ; 00AAF6: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 00AAF8: provisional 68k ori.b #$0, d1
db 0x01, 0x14 ; 00AAFC: provisional 68k btst.l d0, (a4)
db 0x30, 0x30, 0x01, 0x0D ; 00AAFE: provisional 68k move.w ([a0], d0.w), d0
db 0x01, 0x13 ; 00AB02: provisional 68k btst.l d0, (a3)
db 0x01, 0x14 ; 00AB04: provisional 68k btst.l d0, (a4)
db 0x01, 0x00 ; 00AB06: provisional 68k btst.l d0, d0
db 0x01, 0x0F, 0x01, 0x18 ; 00AB08: provisional 68k movep.w $118(a7), d0
db 0x01, 0x14 ; 00AB0C: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 00AB0E: provisional 68k ori.b #$0, d1
db 0x01, 0x01 ; 00AB12: provisional 68k btst.l d0, d1
db 0x01, 0x0E, 0x01, 0x14 ; 00AB14: provisional 68k movep.w $114(a6), d0
db 0x00, 0x30, 0x01, 0x00, 0x00, 0x00 ; 00AB18: provisional 68k ori.b #$0, (a0, d0.w)
db 0x00, 0x04, 0x1B, 0xFC ; 00AB1E: provisional 68k ori.b #$fc, d4
db 0x00, 0x11, 0x01, 0x14 ; 00AB22: provisional 68k ori.b #$14, (a1)
db 0x00, 0x1B, 0x01, 0x0D ; 00AB26: provisional 68k ori.b #$d, (a3)+
db 0x01, 0x14 ; 00AB2A: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 00AB2C: provisional 68k ori.b #$0, d1
db 0x01, 0x14 ; 00AB30: provisional 68k btst.l d0, (a4)
db 0x30, 0x30, 0x01, 0x0D ; 00AB32: provisional 68k move.w ([a0], d0.w), d0
db 0x01, 0x14 ; 00AB36: provisional 68k btst.l d0, (a4)
db 0x01, 0x00 ; 00AB38: provisional 68k btst.l d0, d0
db 0x01, 0x0F, 0x01, 0x13 ; 00AB3A: provisional 68k movep.w $113(a7), d0
db 0x01, 0x18 ; 00AB3E: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 00AB40: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 00AB42: provisional 68k ori.b #$0, d1
db 0x01, 0x10 ; 00AB46: provisional 68k btst.l d0, (a0)
db 0x01, 0x14 ; 00AB48: provisional 68k btst.l d0, (a4)
db 0x00, 0x0A ; file 00AB4A
db 0x01, 0x01 ; 00AB4C: provisional 68k btst.l d0, d1
db 0x01, 0x0D, 0x01, 0x18 ; 00AB4E: provisional 68k movep.w $118(a5), d0
db 0x01, 0x14 ; 00AB52: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 00AB54: provisional 68k ori.b #$0, d1
db 0x01, 0x11 ; 00AB58: provisional 68k btst.l d0, (a1)
db 0x01, 0x14 ; 00AB5A: provisional 68k btst.l d0, (a4)
db 0x00, 0x0A ; file 00AB5C
db 0x01, 0x00 ; 00AB5E: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x08 ; 00AB60: provisional 68k ori.b #$8, d0
db 0x01, 0x14 ; 00AB64: provisional 68k btst.l d0, (a4)
db 0x00, 0x0C ; file 00AB66
db 0x01, 0x00 ; 00AB68: provisional 68k btst.l d0, d0
db 0x01, 0x13 ; 00AB6A: provisional 68k btst.l d0, (a3)
db 0x01, 0x14 ; 00AB6C: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x05 ; 00AB6E: provisional 68k ori.b #$5, d1
db 0x01, 0x14 ; 00AB72: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x01 ; 00AB74: provisional 68k ori.b #$1, d1
db 0x01, 0x00 ; 00AB78: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x07 ; 00AB7A: provisional 68k ori.b #$7, d0
db 0x01, 0x14 ; 00AB7E: provisional 68k btst.l d0, (a4)
db 0x00, 0x03, 0x01, 0x00 ; 00AB80: provisional 68k ori.b #$0, d3
db 0x01, 0x14 ; 00AB84: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 00AB86: provisional 68k ori.b #$0, d1
db 0x00, 0x00, 0x00, 0x52 ; 00AB8A: provisional 68k ori.b #$52, d0
db 0x01, 0x27 ; 00AB8E: provisional 68k btst.l d0, -(a7)
db 0x01, 0x14 ; 00AB90: provisional 68k btst.l d0, (a4)
db 0x1C, 0xB0, 0x01, 0x00 ; 00AB92: provisional 68k move.b (a0, d0.w), (a6)
db 0x01, 0x00 ; 00AB96: provisional 68k btst.l d0, d0
db 0x01, 0x26 ; 00AB98: provisional 68k btst.l d0, -(a6)
db 0x01, 0x14 ; 00AB9A: provisional 68k btst.l d0, (a4)
db 0x00, 0x1B, 0x01, 0x00 ; 00AB9C: provisional 68k ori.b #$0, (a3)+
db 0x01, 0x00 ; 00ABA0: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x04 ; 00ABA2: provisional 68k ori.b #$4, d0
db 0x1C, 0xAC, 0x00, 0x0F ; 00ABA6: provisional 68k move.b $f(a4), (a6)
db 0x1C, 0xAC, 0x01, 0x18 ; 00ABAA: provisional 68k move.b $118(a4), (a6)
db 0x01, 0x14 ; 00ABAE: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 00ABB0: provisional 68k ori.b #$0, d0
db 0x01, 0x05 ; 00ABB4: provisional 68k btst.l d0, d5
db 0x01, 0x14 ; 00ABB6: provisional 68k btst.l d0, (a4)
db 0x00, 0x66, 0x01, 0x00 ; 00ABB8: provisional 68k ori.w #$100, -(a6)
db 0x00, 0x0F ; file 00ABBC
db 0x1C, 0x92 ; 00ABBE: provisional 68k move.b (a2), (a6)
db 0x01, 0x18 ; 00ABC0: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 00ABC2: provisional 68k btst.l d0, (a4)
db 0x00, 0x03, 0x01, 0x00 ; 00ABC4: provisional 68k ori.b #$0, d3
db 0x01, 0x05 ; 00ABC8: provisional 68k btst.l d0, d5
db 0x01, 0x14 ; 00ABCA: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 00ABCC: provisional 68k ori.b #$0, d1
db 0x00, 0x07, 0x01, 0x14 ; 00ABD0: provisional 68k ori.b #$14, d7
db 0x00, 0x05, 0x01, 0x00 ; 00ABD4: provisional 68k ori.b #$0, d5
db 0x01, 0x14 ; 00ABD8: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 00ABDA: provisional 68k ori.b #$0, d1
db 0x00, 0x00, 0x00, 0x07 ; 00ABDE: provisional 68k ori.b #$7, d0
db 0x01, 0x14 ; 00ABE2: provisional 68k btst.l d0, (a4)
db 0x00, 0x04, 0x01, 0x00 ; 00ABE4: provisional 68k ori.b #$0, d4
db 0x01, 0x18 ; 00ABE8: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 00ABEA: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 00ABEC: provisional 68k ori.b #$0, d1
db 0x01, 0x00 ; 00ABF0: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x04 ; 00ABF2: provisional 68k ori.b #$4, d0
db 0x1C, 0xAC, 0x00, 0x15 ; 00ABF6: provisional 68k move.b $15(a4), (a6)
db 0x01, 0x18 ; 00ABFA: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 00ABFC: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 00ABFE: provisional 68k ori.b #$0, d1
db 0x01, 0x00 ; 00AC02: provisional 68k btst.l d0, d0
db 0x01, 0x14 ; 00AC04: provisional 68k btst.l d0, (a4)
db 0x00, 0x14, 0x01, 0x00 ; 00AC06: provisional 68k ori.b #$0, (a4)
db 0x01, 0x14 ; 00AC0A: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 00AC0C: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x04 ; 00AC10: provisional 68k ori.b #$4, d0
db 0x10, 0x4A ; file 00AC14
db 0x72, 0x74 ; 00AC16: provisional 68k moveq #$74, d1
db 0x67, 0x72 ; 00AC18: provisional 68k beq.b $ac8c
db 0x65, 0x65 ; 00AC1A: provisional 68k bcs.b $ac81
db 0x6E, 0x00, 0x72, 0x74 ; 00AC1C: provisional 68k bgt.w $11e92
db 0x67, 0x72 ; 00AC20: provisional 68k beq.b $ac94
db 0x65, 0x65 ; 00AC22: provisional 68k bcs.b $ac89
db 0x6E, 0x00, 0x72, 0x74 ; 00AC24: provisional 68k bgt.w $11e9a
db 0x67, 0x72 ; 00AC28: provisional 68k beq.b $ac9c
db 0x65, 0x65 ; 00AC2A: provisional 68k bcs.b $ac91
db 0x6E, 0x00, 0x72, 0x74 ; 00AC2C: provisional 68k bgt.w $11ea2
db 0x67, 0x72 ; 00AC30: provisional 68k beq.b $aca4
db 0x65, 0x65 ; 00AC32: provisional 68k bcs.b $ac99
db 0x6E, 0x00, 0x72, 0x74 ; 00AC34: provisional 68k bgt.w $11eaa
db 0x67, 0x72 ; 00AC38: provisional 68k beq.b $acac
db 0x65, 0x65 ; 00AC3A: provisional 68k bcs.b $aca1
db 0x6E, 0x00, 0x00, 0x07 ; 00AC3C: provisional 68k bgt.w $ac45
db 0x01, 0x14 ; 00AC40: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 00AC42: provisional 68k ori.b #$0, d0
db 0x01, 0x14 ; 00AC46: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 00AC48: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x10 ; 00AC4C: provisional 68k ori.b #$10, d0
db 0x1E, 0xF0, 0x01, 0x13, 0x01, 0x14, 0x00, 0x01 ; 00AC50: provisional 68k move.b ([a0, d0.w], $1140001), (a7)+
db 0x01, 0x05 ; 00AC58: provisional 68k btst.l d0, d5
db 0x01, 0x14 ; 00AC5A: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x01 ; 00AC5C: provisional 68k ori.b #$1, d1
db 0x01, 0x00 ; 00AC60: provisional 68k btst.l d0, d0
db 0x00, 0x14, 0x00, 0x07 ; 00AC62: provisional 68k ori.b #$7, (a4)
db 0x01, 0x14 ; 00AC66: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 00AC68: provisional 68k ori.b #$0, d0
db 0x01, 0x1F ; 00AC6C: provisional 68k btst.l d0, (a7)+
db 0x01, 0x00 ; 00AC6E: provisional 68k btst.l d0, d0
db 0x00, 0x07, 0x01, 0x14 ; 00AC70: provisional 68k ori.b #$14, d7
db 0x00, 0x01, 0x01, 0x00 ; 00AC74: provisional 68k ori.b #$0, d1
db 0x01, 0x20 ; 00AC78: provisional 68k btst.l d0, -(a0)
db 0x01, 0x00 ; 00AC7A: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x07 ; 00AC7C: provisional 68k ori.b #$7, d0
db 0x01, 0x14 ; 00AC80: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 00AC82: provisional 68k ori.b #$0, d2
db 0x01, 0x14 ; 00AC86: provisional 68k btst.l d0, (a4)
db 0x00, 0x1E, 0x01, 0x00 ; 00AC88: provisional 68k ori.b #$0, (a6)+
db 0x00, 0x07, 0x01, 0x14 ; 00AC8C: provisional 68k ori.b #$14, d7
db 0x00, 0x03, 0x01, 0x00 ; 00AC90: provisional 68k ori.b #$0, d3
db 0x01, 0x14 ; 00AC94: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 00AC96: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x0F ; 00AC9A: provisional 68k ori.b #$f, d0
db 0x1D, 0x78, 0x01, 0x13, 0x01, 0x18 ; 00AC9E: provisional 68k move.b $113.w, $118(a6)
db 0x01, 0x14 ; 00ACA4: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 00ACA6: provisional 68k ori.b #$0, d1
db 0x01, 0x05 ; 00ACAA: provisional 68k btst.l d0, d5
db 0x01, 0x14 ; 00ACAC: provisional 68k btst.l d0, (a4)
db 0x00, 0x11, 0x01, 0x01 ; 00ACAE: provisional 68k ori.b #$1, (a1)
db 0x01, 0x04 ; 00ACB2: provisional 68k btst.l d0, d4
db 0x01, 0x13 ; 00ACB4: provisional 68k btst.l d0, (a3)
db 0x01, 0x19 ; 00ACB6: provisional 68k btst.l d0, (a1)+
db 0x01, 0x14 ; 00ACB8: provisional 68k btst.l d0, (a4)
db 0x00, 0x24, 0x01, 0x0D ; 00ACBA: provisional 68k ori.b #$d, -(a4)
db 0x01, 0x14 ; 00ACBE: provisional 68k btst.l d0, (a4)
db 0x00, 0x24, 0x01, 0x00 ; 00ACC0: provisional 68k ori.b #$0, -(a4)
db 0x01, 0x05 ; 00ACC4: provisional 68k btst.l d0, d5
db 0x01, 0x14 ; 00ACC6: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x01 ; 00ACC8: provisional 68k ori.b #$1, d1
db 0x01, 0x00 ; 00ACCC: provisional 68k btst.l d0, d0
db 0x00, 0x07, 0x01, 0x14 ; 00ACCE: provisional 68k ori.b #$14, d7
db 0x00, 0x02, 0x01, 0x00 ; 00ACD2: provisional 68k ori.b #$0, d2
db 0x01, 0x14 ; 00ACD6: provisional 68k btst.l d0, (a4)
db 0x00, 0x14, 0x01, 0x00 ; 00ACD8: provisional 68k ori.b #$0, (a4)
db 0x00, 0x00, 0x00, 0x0F ; 00ACDC: provisional 68k ori.b #$f, d0
db 0x1D, 0xAA, 0x01, 0x19, 0x01, 0x14 ; 00ACE0: provisional 68k move.b $119(a2), (a6, d0.w)
db 0x00, 0x0D ; file 00ACE6
db 0x01, 0x0D, 0x01, 0x18 ; 00ACE8: provisional 68k movep.w $118(a5), d0
db 0x01, 0x14 ; 00ACEC: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 00ACEE: provisional 68k ori.b #$0, d1
db 0x01, 0x00 ; 00ACF2: provisional 68k btst.l d0, d0
db 0x01, 0x05 ; 00ACF4: provisional 68k btst.l d0, d5
db 0x01, 0x14 ; 00ACF6: provisional 68k btst.l d0, (a4)
db 0x00, 0x06, 0x01, 0x00 ; 00ACF8: provisional 68k ori.b #$0, d6
db 0x00, 0x07, 0x01, 0x14 ; 00ACFC: provisional 68k ori.b #$14, d7
db 0x00, 0x02, 0x01, 0x00 ; 00AD00: provisional 68k ori.b #$0, d2
db 0x01, 0x14 ; 00AD04: provisional 68k btst.l d0, (a4)
db 0x00, 0x28, 0x01, 0x00, 0x00, 0x00 ; 00AD06: provisional 68k ori.b #$0, $0(a0)
db 0x00, 0x04, 0x1E, 0xCE ; 00AD0C: provisional 68k ori.b #$ce, d4
db 0x00, 0x0F ; file 00AD10
db 0x1E, 0x3C, 0x01, 0x18 ; 00AD12: provisional 68k move.b #$18, d7
db 0x01, 0x14 ; 00AD16: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 00AD18: provisional 68k ori.b #$0, d1
db 0x01, 0x06 ; 00AD1C: provisional 68k btst.l d0, d6
db 0x01, 0x14 ; 00AD1E: provisional 68k btst.l d0, (a4)
db 0x00, 0x15, 0x01, 0x00 ; 00AD20: provisional 68k ori.b #$0, (a5)
db 0x00, 0x0F ; file 00AD24
db 0x1E, 0x38, 0x01, 0x13 ; 00AD26: provisional 68k move.b $113.w, d7
db 0x01, 0x19 ; 00AD2A: provisional 68k btst.l d0, (a1)+
db 0x01, 0x14 ; 00AD2C: provisional 68k btst.l d0, (a4)
db 0x00, 0x0D ; file 00AD2E
db 0x01, 0x0D, 0x01, 0x1E ; 00AD30: provisional 68k movep.w $11e(a5), d0
db 0x01, 0x14 ; 00AD34: provisional 68k btst.l d0, (a4)
db 0x00, 0x1E, 0x01, 0x0D ; 00AD36: provisional 68k ori.b #$d, (a6)+
db 0x01, 0x14 ; 00AD3A: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x0F ; 00AD3C: provisional 68k ori.b #$f, d2
db 0x01, 0x18 ; 00AD40: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 00AD42: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 00AD44: provisional 68k ori.b #$0, d1
db 0x01, 0x00 ; 00AD48: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 00AD4A: provisional 68k btst.l d0, d0
db 0x01, 0x05 ; 00AD4C: provisional 68k btst.l d0, d5
db 0x01, 0x14 ; 00AD4E: provisional 68k btst.l d0, (a4)
db 0x00, 0x06, 0x01, 0x01 ; 00AD50: provisional 68k ori.b #$1, d6
db 0x01, 0x02 ; 00AD54: provisional 68k btst.l d0, d2
db 0x01, 0x13 ; 00AD56: provisional 68k btst.l d0, (a3)
db 0x01, 0x19 ; 00AD58: provisional 68k btst.l d0, (a1)+
db 0x01, 0x14 ; 00AD5A: provisional 68k btst.l d0, (a4)
db 0x00, 0x0D ; file 00AD5C
db 0x01, 0x0D, 0x01, 0x1E ; 00AD5E: provisional 68k movep.w $11e(a5), d0
db 0x01, 0x14 ; 00AD62: provisional 68k btst.l d0, (a4)
db 0x00, 0x1E, 0x01, 0x0D ; 00AD64: provisional 68k ori.b #$d, (a6)+
db 0x01, 0x13 ; 00AD68: provisional 68k btst.l d0, (a3)
db 0x01, 0x14 ; 00AD6A: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x0F ; 00AD6C: provisional 68k ori.b #$f, d2
db 0x01, 0x18 ; 00AD70: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 00AD72: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 00AD74: provisional 68k ori.b #$0, d1
db 0x01, 0x01 ; 00AD78: provisional 68k btst.l d0, d1
db 0x01, 0x0D, 0x01, 0x14 ; 00AD7A: provisional 68k movep.w $114(a5), d0
db 0x00, 0x01, 0x01, 0x00 ; 00AD7E: provisional 68k ori.b #$0, d1
db 0x01, 0x00 ; 00AD82: provisional 68k btst.l d0, d0
db 0x01, 0x05 ; 00AD84: provisional 68k btst.l d0, d5
db 0x01, 0x14 ; 00AD86: provisional 68k btst.l d0, (a4)
db 0x00, 0x06, 0x01, 0x01 ; 00AD88: provisional 68k ori.b #$1, d6
db 0x01, 0x00 ; 00AD8C: provisional 68k btst.l d0, d0
db 0x00, 0x07, 0x01, 0x14 ; 00AD8E: provisional 68k ori.b #$14, d7
db 0x00, 0x02, 0x01, 0x00 ; 00AD92: provisional 68k ori.b #$0, d2
db 0x01, 0x14 ; 00AD96: provisional 68k btst.l d0, (a4)
db 0x00, 0x14, 0x01, 0x00 ; 00AD98: provisional 68k ori.b #$0, (a4)
db 0x00, 0x00, 0x00, 0x04 ; 00AD9C: provisional 68k ori.b #$4, d0
db 0x1E, 0xCE ; file 00ADA0
db 0x00, 0x07, 0x01, 0x14 ; 00ADA2: provisional 68k ori.b #$14, d7
db 0x00, 0x02, 0x01, 0x00 ; 00ADA6: provisional 68k ori.b #$0, d2
db 0x01, 0x14 ; 00ADAA: provisional 68k btst.l d0, (a4)
db 0x00, 0x14, 0x01, 0x00 ; 00ADAC: provisional 68k ori.b #$0, (a4)
db 0x00, 0x00, 0x00, 0x10 ; 00ADB0: provisional 68k ori.b #$10, d0
db 0x1E, 0xCE ; file 00ADB4
db 0x01, 0x13 ; 00ADB6: provisional 68k btst.l d0, (a3)
db 0x01, 0x18 ; 00ADB8: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 00ADBA: provisional 68k btst.l d0, (a4)
db 0x00, 0x03, 0x01, 0x00 ; 00ADBC: provisional 68k ori.b #$0, d3
db 0x01, 0x07 ; 00ADC0: provisional 68k btst.l d0, d7
db 0x01, 0x14 ; 00ADC2: provisional 68k btst.l d0, (a4)
db 0x00, 0x07, 0x01, 0x01 ; 00ADC4: provisional 68k ori.b #$1, d7
db 0x01, 0x04 ; 00ADC8: provisional 68k btst.l d0, d4
db 0x01, 0x13 ; 00ADCA: provisional 68k btst.l d0, (a3)
db 0x01, 0x18 ; 00ADCC: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 00ADCE: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 00ADD0: provisional 68k ori.b #$0, d2
db 0x01, 0x05 ; 00ADD4: provisional 68k btst.l d0, d5
db 0x01, 0x14 ; 00ADD6: provisional 68k btst.l d0, (a4)
db 0x00, 0x14, 0x01, 0x01 ; 00ADD8: provisional 68k ori.b #$1, (a4)
db 0x01, 0x00 ; 00ADDC: provisional 68k btst.l d0, d0
db 0x00, 0x0F ; file 00ADDE
db 0x1E, 0xB0, 0x01, 0x19 ; 00ADE0: provisional 68k move.b ([a0, d0.w]), (a7)
db 0x01, 0x14 ; 00ADE4: provisional 68k btst.l d0, (a4)
db 0x00, 0x0D ; file 00ADE6
db 0x01, 0x0D, 0x01, 0x1E ; 00ADE8: provisional 68k movep.w $11e(a5), d0
db 0x01, 0x14 ; 00ADEC: provisional 68k btst.l d0, (a4)
db 0x00, 0x4C ; file 00ADEE
db 0x01, 0x0D, 0x01, 0x18 ; 00ADF0: provisional 68k movep.w $118(a5), d0
db 0x01, 0x14 ; 00ADF4: provisional 68k btst.l d0, (a4)
db 0x00, 0x03, 0x01, 0x00 ; 00ADF6: provisional 68k ori.b #$0, d3
db 0x01, 0x00 ; 00ADFA: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 00ADFC: provisional 68k btst.l d0, d0
db 0x01, 0x06 ; 00ADFE: provisional 68k btst.l d0, d6
db 0x01, 0x14 ; 00AE00: provisional 68k btst.l d0, (a4)
db 0x00, 0x06, 0x01, 0x00 ; 00AE02: provisional 68k ori.b #$0, d6
db 0x00, 0x07, 0x01, 0x14 ; 00AE06: provisional 68k ori.b #$14, d7
db 0x00, 0x02, 0x01, 0x00 ; 00AE0A: provisional 68k ori.b #$0, d2
db 0x01, 0x14 ; 00AE0E: provisional 68k btst.l d0, (a4)
db 0x00, 0x1E, 0x01, 0x00 ; 00AE10: provisional 68k ori.b #$0, (a6)+
db 0x00, 0x00, 0x00, 0x07 ; 00AE14: provisional 68k ori.b #$7, d0
db 0x01, 0x14 ; 00AE18: provisional 68k btst.l d0, (a4)
db 0x00, 0x03, 0x01, 0x00 ; 00AE1A: provisional 68k ori.b #$0, d3
db 0x01, 0x18 ; 00AE1E: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 00AE20: provisional 68k btst.l d0, (a4)
db 0x00, 0x03, 0x01, 0x00 ; 00AE22: provisional 68k ori.b #$0, d3
db 0x01, 0x0D, 0x01, 0x14 ; 00AE26: provisional 68k movep.w $114(a5), d0
db 0x00, 0x01, 0x01, 0x00 ; 00AE2A: provisional 68k ori.b #$0, d1
db 0x00, 0x00, 0x00, 0x04 ; 00AE2E: provisional 68k ori.b #$4, d0
db 0x1E, 0x4C ; file 00AE32
db 0x00, 0x15, 0x01, 0x18 ; 00AE34: provisional 68k ori.b #$18, (a5)
db 0x01, 0x14 ; 00AE38: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 00AE3A: provisional 68k ori.b #$0, d0
db 0x01, 0x00 ; 00AE3E: provisional 68k btst.l d0, d0
db 0x01, 0x14 ; 00AE40: provisional 68k btst.l d0, (a4)
db 0x00, 0x0A ; file 00AE42
db 0x01, 0x00 ; 00AE44: provisional 68k btst.l d0, d0
db 0x01, 0x18 ; 00AE46: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 00AE48: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 00AE4A: provisional 68k ori.b #$0, d2
db 0x01, 0x00 ; 00AE4E: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x04 ; 00AE50: provisional 68k ori.b #$4, d0
db 0x1C, 0xE8, 0x20, 0x2E ; 00AE54: provisional 68k move.b $202e(a0), (a6)+
db 0x80, 0x4E ; file 00AE58
db 0x67, 0x3E ; 00AE5A: provisional 68k beq.b $ae9a
db 0x28, 0x40 ; 00AE5C: provisional 68k movea.l d0, a4
db 0x0C, 0x6C, 0x00, 0x02, 0x00, 0x02 ; 00AE5E: provisional 68k cmpi.w #$2, $2(a4)
db 0x67, 0x36 ; 00AE64: provisional 68k beq.b $ae9c
db 0x61, 0x00, 0x00, 0xBE ; 00AE66: provisional 68k bsr.w $af26
db 0x20, 0x2C, 0x00, 0x0E ; 00AE6A: provisional 68k move.l $e(a4), d0
db 0x67, 0x06 ; 00AE6E: provisional 68k beq.b $ae76
db 0x2D, 0x40, 0x80, 0x4E ; 00AE70: provisional 68k move.l d0, -$7fb2(a6)
db 0x4E, 0x75 ; 00AE74: provisional 68k rts 
