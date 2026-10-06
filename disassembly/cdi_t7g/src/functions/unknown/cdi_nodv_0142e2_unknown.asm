; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 0142E2–0143C7, inclusive.
cdi_nodv_entry_0142e2:
db 0x00, 0x00, 0x01, 0x02 ; 0142E2: provisional 68k ori.b #$2, d0
db 0x03, 0x03 ; 0142E6: provisional 68k btst.l d1, d3
db 0x04, 0x05, 0x06, 0x06 ; 0142E8: provisional 68k subi.b #$6, d5
db 0x07, 0x08, 0x09, 0x09 ; 0142EC: provisional 68k movep.w $909(a0), d3
db 0x0A, 0x0B, 0x0C, 0x0C ; file 0142F0
db 0x0D, 0x0E, 0x0F, 0x0F ; 0142F4: provisional 68k movep.w $f0f(a6), d6
db 0x10, 0x11 ; 0142F8: provisional 68k move.b (a1), d0
db 0x12, 0x12 ; 0142FA: provisional 68k move.b (a2), d1
db 0x13, 0x14 ; 0142FC: provisional 68k move.b (a4), -(a1)
db 0x15, 0x15 ; 0142FE: provisional 68k move.b (a5), -(a2)
db 0x16, 0x17 ; 014300: provisional 68k move.b (a7), d3
db 0x18, 0x18 ; 014302: provisional 68k move.b (a0)+, d4
db 0x19, 0x1A ; 014304: provisional 68k move.b (a2)+, -(a4)
db 0x1B, 0x1B ; 014306: provisional 68k move.b (a3)+, -(a5)
db 0x1C, 0x1D ; 014308: provisional 68k move.b (a5)+, d6
db 0x1E, 0x1E ; 01430A: provisional 68k move.b (a6)+, d7
db 0x1F, 0x20 ; 01430C: provisional 68k move.b -(a0), -(a7)
db 0x21, 0x21 ; 01430E: provisional 68k move.l -(a1), -(a0)
db 0x22, 0x23 ; 014310: provisional 68k move.l -(a3), d1
db 0x24, 0x24 ; 014312: provisional 68k move.l -(a4), d2
db 0x25, 0x26 ; 014314: provisional 68k move.l -(a6), -(a2)
db 0x27, 0x27 ; 014316: provisional 68k move.l -(a7), -(a3)
db 0x28, 0x29, 0x2A, 0x2A ; 014318: provisional 68k move.l $2a2a(a1), d4
db 0x2B, 0x2C, 0x2D, 0x2D ; 01431C: provisional 68k move.l $2d2d(a4), -(a5)
db 0x2E, 0x2F, 0x30, 0x30 ; 014320: provisional 68k move.l $3030(a7), d7
db 0x31, 0x32, 0x33, 0x33, 0x34, 0x35, 0x36, 0x36, 0x37, 0x38, 0x39, 0x39 ; 014324: provisional 68k move.w ([$34353636, a2, d3.w * 2], $37383939), -(a0)
db 0x3A, 0x3B, 0x3C, 0x3C ; 014330: provisional 68k move.w $1436e(pc, d3.l), d5
db 0x3D, 0x3E, 0x3F, 0x3F ; file 014334
db 0x40, 0x41 ; 014338: provisional 68k negx.w d1
db 0x42, 0x42 ; 01433A: provisional 68k clr.w d2
db 0x43, 0x44, 0x45, 0x45 ; file 01433C
db 0x46, 0x47 ; 014340: provisional 68k not.w d7
db 0x48, 0x48 ; 014342: provisional 68k dc.w $4848
db 0x49, 0x4A, 0x4B, 0x4B, 0x4C, 0x4D ; file 014344
db 0x4E, 0x4E ; 01434A: provisional 68k trap #$e
db 0x4F, 0x50 ; file 01434C
db 0x51, 0x51 ; 01434E: provisional 68k subq.w #$8, (a1)
db 0x52, 0x53 ; 014350: provisional 68k addq.w #$1, (a3)
db 0x54, 0x54 ; 014352: provisional 68k addq.w #$2, (a4)
db 0x55, 0x56 ; 014354: provisional 68k subq.w #$2, (a6)
db 0x57, 0x57 ; 014356: provisional 68k subq.w #$3, (a7)
db 0x58, 0x59 ; 014358: provisional 68k addq.w #$4, (a1)+
db 0x5A, 0x5A ; 01435A: provisional 68k addq.w #$5, (a2)+
db 0x5B, 0x5C ; 01435C: provisional 68k subq.w #$5, (a4)+
db 0x5D, 0x5D ; 01435E: provisional 68k subq.w #$6, (a5)+
db 0x5E, 0x5F ; 014360: provisional 68k addq.w #$7, (a7)+
db 0x60, 0x60 ; 014362: provisional 68k bra.b $143c4
db 0x61, 0x62 ; 014364: provisional 68k bsr.b $143c8
db 0x63, 0x63 ; 014366: provisional 68k bls.b $143cb
db 0x64, 0x65 ; 014368: provisional 68k bcc.b $143cf
db 0x66, 0x66 ; 01436A: provisional 68k bne.b $143d2
db 0x67, 0x68 ; 01436C: provisional 68k beq.b $143d6
db 0x69, 0x69 ; 01436E: provisional 68k bvs.b $143d9
db 0x6A, 0x6B ; 014370: provisional 68k bpl.b $143dd
db 0x6C, 0x6C ; 014372: provisional 68k bge.b $143e0
db 0x6D, 0x6E ; 014374: provisional 68k blt.b $143e4
db 0x6F, 0x6F ; 014376: provisional 68k ble.b $143e7
db 0x70, 0x71 ; 014378: provisional 68k moveq #$71, d0
db 0x72, 0x72 ; 01437A: provisional 68k moveq #$72, d1
db 0x73, 0x74, 0x75, 0x75 ; file 01437C
db 0x76, 0x77 ; 014380: provisional 68k moveq #$77, d3
db 0x78, 0x78 ; 014382: provisional 68k moveq #$78, d4
db 0x79, 0x7A, 0x7B, 0x7B ; file 014384
db 0x7C, 0x7D ; 014388: provisional 68k moveq #$7d, d6
db 0x7E, 0x7E ; 01438A: provisional 68k moveq #$7e, d7
db 0x7F, 0x80 ; file 01438C
db 0x81, 0x81 ; 01438E: provisional 68k dc.w $8181
db 0x82, 0x83 ; 014390: provisional 68k or.l d3, d1
db 0x84, 0x84 ; 014392: provisional 68k or.l d4, d2
db 0x85, 0x86 ; 014394: provisional 68k dc.w $8586
db 0x87, 0x87 ; 014396: provisional 68k dc.w $8787
db 0x88, 0x89, 0x8A, 0x8A ; file 014398
db 0x8B, 0x8C ; 01439C: provisional 68k dc.w $8b8c
db 0x8D, 0x8D ; 01439E: provisional 68k dc.w $8d8d
db 0x8E, 0x8F ; file 0143A0
db 0x90, 0x90 ; 0143A2: provisional 68k sub.l (a0), d0
db 0x91, 0x92 ; 0143A4: provisional 68k sub.l d0, (a2)
db 0x93, 0x93 ; 0143A6: provisional 68k sub.l d1, (a3)
db 0x94, 0x95 ; 0143A8: provisional 68k sub.l (a5), d2
db 0x96, 0x96 ; 0143AA: provisional 68k sub.l (a6), d3
db 0x97, 0x98 ; 0143AC: provisional 68k sub.l d3, (a0)+
db 0x99, 0x99 ; 0143AE: provisional 68k sub.l d4, (a1)+
db 0x9A, 0x9B ; 0143B0: provisional 68k sub.l (a3)+, d5
db 0x9C, 0x9C ; 0143B2: provisional 68k sub.l (a4)+, d6
db 0x9D, 0x9E ; 0143B4: provisional 68k sub.l d6, (a6)+
db 0x9F, 0x9F ; 0143B6: provisional 68k sub.l d7, (a7)+
db 0xA0, 0xA1 ; 0143B8: provisional 68k dc.w $a0a1
db 0xA2, 0xA2 ; 0143BA: provisional 68k dc.w $a2a2
db 0xA3, 0xA4 ; 0143BC: provisional 68k dc.w $a3a4
db 0xA5, 0xA5 ; 0143BE: provisional 68k dc.w $a5a5
db 0xA6, 0xA7 ; 0143C0: provisional 68k dc.w $a6a7
db 0xA8, 0xA8 ; 0143C2: provisional 68k dc.w $a8a8
db 0xA9, 0xAA ; 0143C4: provisional 68k dc.w $a9aa
db 0xAB, 0xAB ; 0143C6: provisional 68k dc.w $abab
