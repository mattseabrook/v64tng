; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00D144–00D227, inclusive.
cdi_t7g_entry_00d144:
db 0x4A, 0xAE ; file 00D144
db 0xAB, 0xB6 ; 00D146: provisional 68k dc.w $abb6
db 0x67, 0x24 ; 00D148: provisional 68k beq.b $d16e
db 0x2A, 0x6E, 0xAB, 0xB6 ; 00D14A: provisional 68k movea.l -$544a(a6), a5
db 0x0C, 0x6D, 0x00, 0x04, 0x00, 0x1C ; 00D14E: provisional 68k cmpi.w #$4, $1c(a5)
db 0x67, 0x16 ; 00D154: provisional 68k beq.b $d16c
db 0x3B, 0x7C, 0x00, 0x03, 0x00, 0x1C ; 00D156: provisional 68k move.w #$3, $1c(a5)
db 0x26, 0x79, 0x00, 0x00, 0x00, 0x00 ; 00D15C: provisional 68k movea.l $0.l, a3
db 0x24, 0x2B, 0x00, 0x54 ; 00D162: provisional 68k move.l $54(a3), d2
db 0x2D, 0x42, 0xAB, 0xC6 ; 00D166: provisional 68k move.l d2, -$543a(a6)
db 0x4E, 0x75 ; 00D16A: provisional 68k rts 
db 0x4E, 0x75 ; 00D16C: provisional 68k rts 
db 0x4E, 0x75 ; 00D16E: provisional 68k rts 
db 0x4A, 0xAE, 0xAB, 0xB6 ; 00D170: provisional 68k tst.l -$544a(a6)
db 0x67, 0x00, 0x00, 0x92 ; 00D174: provisional 68k beq.w $d208
db 0x08, 0x01, 0x00, 0x04 ; 00D178: provisional 68k btst.b #$4, d1
db 0x66, 0x32 ; 00D17C: provisional 68k bne.b $d1b0
db 0x08, 0x01, 0x00, 0x00 ; 00D17E: provisional 68k btst.b #$0, d1
db 0x66, 0x36 ; 00D182: provisional 68k bne.b $d1ba
db 0x08, 0x01, 0x00, 0x03 ; 00D184: provisional 68k btst.b #$3, d1
db 0x66, 0x00, 0x00, 0x56 ; 00D188: provisional 68k bne.w $d1e0
db 0x32, 0x3C, 0x80, 0x00 ; 00D18C: provisional 68k move.w #$8000, d1
db 0x61, 0x00, 0xEB, 0xEC ; 00D190: provisional 68k bsr.w $bd7e
db 0x61, 0x75 ; 00D194: provisional 68k bsr.b $d20b
db 0x64, 0x69 ; 00D196: provisional 68k bcc.b $d201
db 0x6F, 0x5F ; 00D198: provisional 68k ble.b $d1f9
db 0x73, 0x72 ; file 00D19A
db 0x76, 0x3A ; 00D19C: provisional 68k moveq #$3a, d3
db 0x20, 0x55 ; 00D19E: provisional 68k movea.l (a5), a0
db 0x6E, 0x65 ; 00D1A0: provisional 68k bgt.b $d207
db 0x78, 0x70 ; 00D1A2: provisional 68k moveq #$70, d4
db 0x65, 0x63 ; 00D1A4: provisional 68k bcs.b $d209
db 0x74, 0x65 ; 00D1A6: provisional 68k moveq #$65, d2
db 0x64, 0x20 ; 00D1A8: provisional 68k bcc.b $d1ca
db 0x65, 0x76 ; 00D1AA: provisional 68k bcs.b $d222
db 0x65, 0x6E ; 00D1AC: provisional 68k bcs.b $d21c
db 0x74, 0x00 ; 00D1AE: provisional 68k moveq #$0, d2
db 0x30, 0x3C, 0x00, 0x5A ; 00D1B0: provisional 68k move.w #$5a, d0
db 0x61, 0x00, 0x01, 0x4E ; 00D1B4: provisional 68k bsr.w $d304
db 0x4E, 0x75 ; 00D1B8: provisional 68k rts 
db 0x30, 0x2E, 0xAB, 0x14 ; 00D1BA: provisional 68k move.w -$54ec(a6), d0
db 0x32, 0x3C, 0x01, 0x1E ; 00D1BE: provisional 68k move.w #$11e, d1
db 0x4E, 0x40, 0x00, 0x8E ; 00D1C2: provisional 68k trap #0 ; OS-9 service word $008E
db 0x4A, 0x6E, 0xAB, 0xCC ; 00D1C6: provisional 68k tst.w -$5434(a6)
db 0x66, 0x0A ; 00D1CA: provisional 68k bne.b $d1d6
db 0x30, 0x3C, 0x00, 0x5B ; 00D1CC: provisional 68k move.w #$5b, d0
db 0x61, 0x00, 0x00, 0x56 ; 00D1D0: provisional 68k bsr.w $d228
db 0x4E, 0x75 ; 00D1D4: provisional 68k rts 
db 0x30, 0x3C, 0x00, 0x5D ; 00D1D6: provisional 68k move.w #$5d, d0
db 0x61, 0x00, 0x00, 0x4C ; 00D1DA: provisional 68k bsr.w $d228
db 0x4E, 0x75 ; 00D1DE: provisional 68k rts 
db 0x4A, 0x6E, 0xAB, 0xCA ; 00D1E0: provisional 68k tst.w -$5436(a6)
db 0x67, 0x0C ; 00D1E4: provisional 68k beq.b $d1f2
db 0xC0, 0x6E, 0xAB, 0xCC ; 00D1E6: provisional 68k and.w -$5434(a6), d0
db 0x67, 0x06 ; 00D1EA: provisional 68k beq.b $d1f2
db 0x61, 0x00, 0x01, 0x52 ; 00D1EC: provisional 68k bsr.w $d340
db 0x4E, 0x75 ; 00D1F0: provisional 68k rts 
db 0x30, 0x2E, 0xAB, 0x14 ; 00D1F2: provisional 68k move.w -$54ec(a6), d0
db 0x32, 0x3C, 0x01, 0x1E ; 00D1F6: provisional 68k move.w #$11e, d1
db 0x4E, 0x40, 0x00, 0x8E ; 00D1FA: provisional 68k trap #0 ; OS-9 service word $008E
db 0x30, 0x3C, 0x00, 0x5C ; 00D1FE: provisional 68k move.w #$5c, d0
db 0x61, 0x00, 0x00, 0x24 ; 00D202: provisional 68k bsr.w $d228
db 0x4E, 0x75 ; 00D206: provisional 68k rts 
db 0x32, 0x3C, 0x80, 0x00 ; 00D208: provisional 68k move.w #$8000, d1
db 0x61, 0x00, 0xEB, 0x70 ; 00D20C: provisional 68k bsr.w $bd7e
db 0x61, 0x75 ; 00D210: provisional 68k bsr.b $d287
db 0x64, 0x69 ; 00D212: provisional 68k bcc.b $d27d
db 0x6F, 0x5F ; 00D214: provisional 68k ble.b $d275
db 0x73, 0x72 ; file 00D216
db 0x76, 0x3A ; 00D218: provisional 68k moveq #$3a, d3
db 0x20, 0x63 ; 00D21A: provisional 68k movea.l -(a3), a0
db 0x75, 0x72 ; file 00D21C
db 0x5F, 0x62 ; 00D21E: provisional 68k subq.w #$7, -(a2)
db 0x61, 0x64 ; 00D220: provisional 68k bsr.b $d286
db 0x20, 0x3D ; file 00D222
db 0x20, 0x30, 0x20, 0x00 ; 00D224: provisional 68k move.l (a0, d2.w), d0
