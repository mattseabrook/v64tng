; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 013462–013547, inclusive.
cdi_t7g_entry_013462:
db 0x00, 0x00, 0x01, 0x02 ; 013462: provisional 68k ori.b #$2, d0
db 0x03, 0x03 ; 013466: provisional 68k btst.l d1, d3
db 0x04, 0x05, 0x06, 0x06 ; 013468: provisional 68k subi.b #$6, d5
db 0x07, 0x08, 0x09, 0x09 ; 01346C: provisional 68k movep.w $909(a0), d3
db 0x0A, 0x0B, 0x0C, 0x0C ; file 013470
db 0x0D, 0x0E, 0x0F, 0x0F ; 013474: provisional 68k movep.w $f0f(a6), d6
db 0x10, 0x11 ; 013478: provisional 68k move.b (a1), d0
db 0x12, 0x12 ; 01347A: provisional 68k move.b (a2), d1
db 0x13, 0x14 ; 01347C: provisional 68k move.b (a4), -(a1)
db 0x15, 0x15 ; 01347E: provisional 68k move.b (a5), -(a2)
db 0x16, 0x17 ; 013480: provisional 68k move.b (a7), d3
db 0x18, 0x18 ; 013482: provisional 68k move.b (a0)+, d4
db 0x19, 0x1A ; 013484: provisional 68k move.b (a2)+, -(a4)
db 0x1B, 0x1B ; 013486: provisional 68k move.b (a3)+, -(a5)
db 0x1C, 0x1D ; 013488: provisional 68k move.b (a5)+, d6
db 0x1E, 0x1E ; 01348A: provisional 68k move.b (a6)+, d7
db 0x1F, 0x20 ; 01348C: provisional 68k move.b -(a0), -(a7)
db 0x21, 0x21 ; 01348E: provisional 68k move.l -(a1), -(a0)
db 0x22, 0x23 ; 013490: provisional 68k move.l -(a3), d1
db 0x24, 0x24 ; 013492: provisional 68k move.l -(a4), d2
db 0x25, 0x26 ; 013494: provisional 68k move.l -(a6), -(a2)
db 0x27, 0x27 ; 013496: provisional 68k move.l -(a7), -(a3)
db 0x28, 0x29, 0x2A, 0x2A ; 013498: provisional 68k move.l $2a2a(a1), d4
db 0x2B, 0x2C, 0x2D, 0x2D ; 01349C: provisional 68k move.l $2d2d(a4), -(a5)
db 0x2E, 0x2F, 0x30, 0x30 ; 0134A0: provisional 68k move.l $3030(a7), d7
db 0x31, 0x32, 0x33, 0x33, 0x34, 0x35, 0x36, 0x36, 0x37, 0x38, 0x39, 0x39 ; 0134A4: provisional 68k move.w ([$34353636, a2, d3.w * 2], $37383939), -(a0)
db 0x3A, 0x3B, 0x3C, 0x3C ; 0134B0: provisional 68k move.w $134ee(pc, d3.l), d5
db 0x3D, 0x3E, 0x3F, 0x3F ; file 0134B4
db 0x40, 0x41 ; 0134B8: provisional 68k negx.w d1
db 0x42, 0x42 ; 0134BA: provisional 68k clr.w d2
db 0x43, 0x44, 0x45, 0x45 ; file 0134BC
db 0x46, 0x47 ; 0134C0: provisional 68k not.w d7
db 0x48, 0x48 ; 0134C2: provisional 68k dc.w $4848
db 0x49, 0x4A, 0x4B, 0x4B, 0x4C, 0x4D ; file 0134C4
db 0x4E, 0x4E ; 0134CA: provisional 68k trap #$e
db 0x4F, 0x50 ; file 0134CC
db 0x51, 0x51 ; 0134CE: provisional 68k subq.w #$8, (a1)
db 0x52, 0x53 ; 0134D0: provisional 68k addq.w #$1, (a3)
db 0x54, 0x54 ; 0134D2: provisional 68k addq.w #$2, (a4)
db 0x55, 0x56 ; 0134D4: provisional 68k subq.w #$2, (a6)
db 0x57, 0x57 ; 0134D6: provisional 68k subq.w #$3, (a7)
db 0x58, 0x59 ; 0134D8: provisional 68k addq.w #$4, (a1)+
db 0x5A, 0x5A ; 0134DA: provisional 68k addq.w #$5, (a2)+
db 0x5B, 0x5C ; 0134DC: provisional 68k subq.w #$5, (a4)+
db 0x5D, 0x5D ; 0134DE: provisional 68k subq.w #$6, (a5)+
db 0x5E, 0x5F ; 0134E0: provisional 68k addq.w #$7, (a7)+
db 0x60, 0x60 ; 0134E2: provisional 68k bra.b $13544
db 0x61, 0x62 ; 0134E4: provisional 68k bsr.b $13548
db 0x63, 0x63 ; 0134E6: provisional 68k bls.b $1354b
db 0x64, 0x65 ; 0134E8: provisional 68k bcc.b $1354f
db 0x66, 0x66 ; 0134EA: provisional 68k bne.b $13552
db 0x67, 0x68 ; 0134EC: provisional 68k beq.b $13556
db 0x69, 0x69 ; 0134EE: provisional 68k bvs.b $13559
db 0x6A, 0x6B ; 0134F0: provisional 68k bpl.b $1355d
db 0x6C, 0x6C ; 0134F2: provisional 68k bge.b $13560
db 0x6D, 0x6E ; 0134F4: provisional 68k blt.b $13564
db 0x6F, 0x6F ; 0134F6: provisional 68k ble.b $13567
db 0x70, 0x71 ; 0134F8: provisional 68k moveq #$71, d0
db 0x72, 0x72 ; 0134FA: provisional 68k moveq #$72, d1
db 0x73, 0x74, 0x75, 0x75 ; file 0134FC
db 0x76, 0x77 ; 013500: provisional 68k moveq #$77, d3
db 0x78, 0x78 ; 013502: provisional 68k moveq #$78, d4
db 0x79, 0x7A, 0x7B, 0x7B ; file 013504
db 0x7C, 0x7D ; 013508: provisional 68k moveq #$7d, d6
db 0x7E, 0x7E ; 01350A: provisional 68k moveq #$7e, d7
db 0x7F, 0x80 ; file 01350C
db 0x81, 0x81 ; 01350E: provisional 68k dc.w $8181
db 0x82, 0x83 ; 013510: provisional 68k or.l d3, d1
db 0x84, 0x84 ; 013512: provisional 68k or.l d4, d2
db 0x85, 0x86 ; 013514: provisional 68k dc.w $8586
db 0x87, 0x87 ; 013516: provisional 68k dc.w $8787
db 0x88, 0x89, 0x8A, 0x8A ; file 013518
db 0x8B, 0x8C ; 01351C: provisional 68k dc.w $8b8c
db 0x8D, 0x8D ; 01351E: provisional 68k dc.w $8d8d
db 0x8E, 0x8F ; file 013520
db 0x90, 0x90 ; 013522: provisional 68k sub.l (a0), d0
db 0x91, 0x92 ; 013524: provisional 68k sub.l d0, (a2)
db 0x93, 0x93 ; 013526: provisional 68k sub.l d1, (a3)
db 0x94, 0x95 ; 013528: provisional 68k sub.l (a5), d2
db 0x96, 0x96 ; 01352A: provisional 68k sub.l (a6), d3
db 0x97, 0x98 ; 01352C: provisional 68k sub.l d3, (a0)+
db 0x99, 0x99 ; 01352E: provisional 68k sub.l d4, (a1)+
db 0x9A, 0x9B ; 013530: provisional 68k sub.l (a3)+, d5
db 0x9C, 0x9C ; 013532: provisional 68k sub.l (a4)+, d6
db 0x9D, 0x9E ; 013534: provisional 68k sub.l d6, (a6)+
db 0x9F, 0x9F ; 013536: provisional 68k sub.l d7, (a7)+
db 0xA0, 0xA1 ; 013538: provisional 68k dc.w $a0a1
db 0xA2, 0xA2 ; 01353A: provisional 68k dc.w $a2a2
db 0xA3, 0xA4 ; 01353C: provisional 68k dc.w $a3a4
db 0xA5, 0xA5 ; 01353E: provisional 68k dc.w $a5a5
db 0xA6, 0xA7 ; 013540: provisional 68k dc.w $a6a7
db 0xA8, 0xA8 ; 013542: provisional 68k dc.w $a8a8
db 0xA9, 0xAA ; 013544: provisional 68k dc.w $a9aa
db 0xAB, 0xAB ; 013546: provisional 68k dc.w $abab
