; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00A1A6–00A54B, inclusive.
cdi_nodv_entry_00a1a6:
db 0x00, 0x0F ; file 00A1A6
db 0x12, 0xA0 ; 00A1A8: provisional 68k move.b -(a0), (a1)
db 0x01, 0x19 ; 00A1AA: provisional 68k btst.l d0, (a1)+
db 0x01, 0x14 ; 00A1AC: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 00A1AE
db 0x01, 0x0D, 0x01, 0x18 ; 00A1B0: provisional 68k movep.w $118(a5), d0
db 0x01, 0x14 ; 00A1B4: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 00A1B6: provisional 68k ori.b #$0, d2
db 0x01, 0x00 ; 00A1BA: provisional 68k btst.l d0, d0
db 0x01, 0x08, 0x01, 0x14 ; 00A1BC: provisional 68k movep.w $114(a0), d0
db 0x00, 0xFF ; file 00A1C0
db 0x01, 0x00 ; 00A1C2: provisional 68k btst.l d0, d0
db 0x00, 0x11, 0x01, 0x14 ; 00A1C4: provisional 68k ori.b #$14, (a1)
db 0x00, 0x1B, 0x01, 0x0D ; 00A1C8: provisional 68k ori.b #$d, (a3)+
db 0x01, 0x14 ; 00A1CC: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 00A1CE: provisional 68k ori.b #$0, d2
db 0x01, 0x14 ; 00A1D2: provisional 68k btst.l d0, (a4)
db 0x62, 0x30 ; 00A1D4: provisional 68k bhi.b $a206
db 0x01, 0x0E, 0x01, 0x14 ; 00A1D6: provisional 68k movep.w $114(a6), d0
db 0x00, 0x30, 0x01, 0x00, 0x00, 0x07 ; 00A1DA: provisional 68k ori.b #$0, $7(a0, d0.w)
db 0x01, 0x14 ; 00A1E0: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 00A1E2: provisional 68k ori.b #$0, d1
db 0x01, 0x19 ; 00A1E6: provisional 68k btst.l d0, (a1)+
db 0x01, 0x14 ; 00A1E8: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 00A1EA
db 0x01, 0x0D, 0x01, 0x18 ; 00A1EC: provisional 68k movep.w $118(a5), d0
db 0x01, 0x14 ; 00A1F0: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 00A1F2: provisional 68k ori.b #$0, d2
db 0x01, 0x00 ; 00A1F6: provisional 68k btst.l d0, d0
db 0x01, 0x0E, 0x01, 0x14 ; 00A1F8: provisional 68k movep.w $114(a6), d0
db 0x01, 0x00 ; 00A1FC: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 00A1FE: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x04 ; 00A200: provisional 68k ori.b #$4, d0
db 0x12, 0xD2 ; 00A204: provisional 68k move.b (a2), (a1)+
db 0x00, 0x11, 0x01, 0x14 ; 00A206: provisional 68k ori.b #$14, (a1)
db 0x00, 0x1B, 0x01, 0x0D ; 00A20A: provisional 68k ori.b #$d, (a3)+
db 0x01, 0x14 ; 00A20E: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 00A210: provisional 68k ori.b #$0, d2
db 0x01, 0x14 ; 00A214: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 00A216: provisional 68k ori.b #$0, d0
db 0x00, 0x07, 0x01, 0x14 ; 00A21A: provisional 68k ori.b #$14, d7
db 0x00, 0x01, 0x01, 0x00 ; 00A21E: provisional 68k ori.b #$0, d1
db 0x01, 0x19 ; 00A222: provisional 68k btst.l d0, (a1)+
db 0x01, 0x14 ; 00A224: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 00A226
db 0x01, 0x0D, 0x01, 0x18 ; 00A228: provisional 68k movep.w $118(a5), d0
db 0x01, 0x14 ; 00A22C: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 00A22E: provisional 68k ori.b #$0, d2
db 0x01, 0x00 ; 00A232: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 00A234: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x0F ; 00A236: provisional 68k ori.b #$f, d0
db 0x13, 0x1A ; 00A23A: provisional 68k move.b (a2)+, -(a1)
db 0x01, 0x18 ; 00A23C: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 00A23E: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 00A240: provisional 68k ori.b #$0, d1
db 0x01, 0x07 ; 00A244: provisional 68k btst.l d0, d7
db 0x01, 0x14 ; 00A246: provisional 68k btst.l d0, (a4)
db 0x00, 0x0A ; file 00A248
db 0x01, 0x00 ; 00A24A: provisional 68k btst.l d0, d0
db 0x00, 0x11, 0x01, 0x14 ; 00A24C: provisional 68k ori.b #$14, (a1)
db 0x00, 0x1B, 0x01, 0x0D ; 00A250: provisional 68k ori.b #$d, (a3)+
db 0x01, 0x14 ; 00A254: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 00A256: provisional 68k ori.b #$0, d1
db 0x01, 0x14 ; 00A25A: provisional 68k btst.l d0, (a4)
db 0x30, 0x30, 0x01, 0x0D ; 00A25C: provisional 68k move.w ([a0], d0.w), d0
db 0x01, 0x13 ; 00A260: provisional 68k btst.l d0, (a3)
db 0x01, 0x14 ; 00A262: provisional 68k btst.l d0, (a4)
db 0x01, 0x00 ; 00A264: provisional 68k btst.l d0, d0
db 0x01, 0x0F, 0x01, 0x18 ; 00A266: provisional 68k movep.w $118(a7), d0
db 0x01, 0x14 ; 00A26A: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 00A26C: provisional 68k ori.b #$0, d1
db 0x01, 0x01 ; 00A270: provisional 68k btst.l d0, d1
db 0x01, 0x0E, 0x01, 0x14 ; 00A272: provisional 68k movep.w $114(a6), d0
db 0x00, 0x30, 0x01, 0x00, 0x00, 0x00 ; 00A276: provisional 68k ori.b #$0, (a0, d0.w)
db 0x00, 0x04, 0x13, 0x5A ; 00A27C: provisional 68k ori.b #$5a, d4
db 0x00, 0x11, 0x01, 0x14 ; 00A280: provisional 68k ori.b #$14, (a1)
db 0x00, 0x1B, 0x01, 0x0D ; 00A284: provisional 68k ori.b #$d, (a3)+
db 0x01, 0x14 ; 00A288: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 00A28A: provisional 68k ori.b #$0, d1
db 0x01, 0x14 ; 00A28E: provisional 68k btst.l d0, (a4)
db 0x30, 0x30, 0x01, 0x0D ; 00A290: provisional 68k move.w ([a0], d0.w), d0
db 0x01, 0x14 ; 00A294: provisional 68k btst.l d0, (a4)
db 0x01, 0x00 ; 00A296: provisional 68k btst.l d0, d0
db 0x01, 0x0F, 0x01, 0x13 ; 00A298: provisional 68k movep.w $113(a7), d0
db 0x01, 0x18 ; 00A29C: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 00A29E: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 00A2A0: provisional 68k ori.b #$0, d1
db 0x01, 0x10 ; 00A2A4: provisional 68k btst.l d0, (a0)
db 0x01, 0x14 ; 00A2A6: provisional 68k btst.l d0, (a4)
db 0x00, 0x0A ; file 00A2A8
db 0x01, 0x01 ; 00A2AA: provisional 68k btst.l d0, d1
db 0x01, 0x0D, 0x01, 0x18 ; 00A2AC: provisional 68k movep.w $118(a5), d0
db 0x01, 0x14 ; 00A2B0: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 00A2B2: provisional 68k ori.b #$0, d1
db 0x01, 0x11 ; 00A2B6: provisional 68k btst.l d0, (a1)
db 0x01, 0x14 ; 00A2B8: provisional 68k btst.l d0, (a4)
db 0x00, 0x0A ; file 00A2BA
db 0x01, 0x00 ; 00A2BC: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x08 ; 00A2BE: provisional 68k ori.b #$8, d0
db 0x01, 0x14 ; 00A2C2: provisional 68k btst.l d0, (a4)
db 0x00, 0x0C ; file 00A2C4
db 0x01, 0x00 ; 00A2C6: provisional 68k btst.l d0, d0
db 0x01, 0x13 ; 00A2C8: provisional 68k btst.l d0, (a3)
db 0x01, 0x14 ; 00A2CA: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x05 ; 00A2CC: provisional 68k ori.b #$5, d1
db 0x01, 0x14 ; 00A2D0: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x01 ; 00A2D2: provisional 68k ori.b #$1, d1
db 0x01, 0x00 ; 00A2D6: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x07 ; 00A2D8: provisional 68k ori.b #$7, d0
db 0x01, 0x14 ; 00A2DC: provisional 68k btst.l d0, (a4)
db 0x00, 0x03, 0x01, 0x00 ; 00A2DE: provisional 68k ori.b #$0, d3
db 0x01, 0x14 ; 00A2E2: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 00A2E4: provisional 68k ori.b #$0, d1
db 0x00, 0x00, 0x00, 0x52 ; 00A2E8: provisional 68k ori.b #$52, d0
db 0x01, 0x27 ; 00A2EC: provisional 68k btst.l d0, -(a7)
db 0x01, 0x14 ; 00A2EE: provisional 68k btst.l d0, (a4)
db 0x1C, 0xD0 ; 00A2F0: provisional 68k move.b (a0), (a6)+
db 0x01, 0x00 ; 00A2F2: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 00A2F4: provisional 68k btst.l d0, d0
db 0x01, 0x26 ; 00A2F6: provisional 68k btst.l d0, -(a6)
db 0x01, 0x14 ; 00A2F8: provisional 68k btst.l d0, (a4)
db 0x00, 0x1B, 0x01, 0x00 ; 00A2FA: provisional 68k ori.b #$0, (a3)+
db 0x01, 0x00 ; 00A2FE: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x04 ; 00A300: provisional 68k ori.b #$4, d0
db 0x1C, 0xAC, 0x00, 0x0F ; 00A304: provisional 68k move.b $f(a4), (a6)
db 0x14, 0x18 ; 00A308: provisional 68k move.b (a0)+, d2
db 0x01, 0x18 ; 00A30A: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 00A30C: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 00A30E: provisional 68k ori.b #$0, d0
db 0x01, 0x05 ; 00A312: provisional 68k btst.l d0, d5
db 0x01, 0x14 ; 00A314: provisional 68k btst.l d0, (a4)
db 0x00, 0x5C, 0x01, 0x00 ; 00A316: provisional 68k ori.w #$100, (a4)+
db 0x00, 0x0F ; file 00A31A
db 0x14, 0x14 ; 00A31C: provisional 68k move.b (a4), d2
db 0x01, 0x18 ; 00A31E: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 00A320: provisional 68k btst.l d0, (a4)
db 0x00, 0x06, 0x01, 0x00 ; 00A322: provisional 68k ori.b #$0, d6
db 0x01, 0x05 ; 00A326: provisional 68k btst.l d0, d5
db 0x01, 0x13 ; 00A328: provisional 68k btst.l d0, (a3)
db 0x01, 0x14 ; 00A32A: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x05 ; 00A32C: provisional 68k ori.b #$5, d1
db 0x01, 0x14 ; 00A330: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x01 ; 00A332: provisional 68k ori.b #$1, d0
db 0x01, 0x00 ; 00A336: provisional 68k btst.l d0, d0
db 0x00, 0x07, 0x01, 0x14 ; 00A338: provisional 68k ori.b #$14, d7
db 0x00, 0x03, 0x01, 0x00 ; 00A33C: provisional 68k ori.b #$0, d3
db 0x01, 0x14 ; 00A340: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 00A342: provisional 68k ori.b #$0, d1
db 0x00, 0x00, 0x00, 0x08 ; 00A346: provisional 68k ori.b #$8, d0
db 0x01, 0x14 ; 00A34A: provisional 68k btst.l d0, (a4)
db 0x00, 0x0C ; file 00A34C
db 0x01, 0x00 ; 00A34E: provisional 68k btst.l d0, d0
db 0x01, 0x13 ; 00A350: provisional 68k btst.l d0, (a3)
db 0x01, 0x14 ; 00A352: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x05 ; 00A354: provisional 68k ori.b #$5, d1
db 0x01, 0x14 ; 00A358: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x01 ; 00A35A: provisional 68k ori.b #$1, d1
db 0x01, 0x00 ; 00A35E: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x52 ; 00A360: provisional 68k ori.b #$52, d0
db 0x01, 0x27 ; 00A364: provisional 68k btst.l d0, -(a7)
db 0x01, 0x14 ; 00A366: provisional 68k btst.l d0, (a4)
db 0x1C, 0xC8 ; file 00A368
db 0x01, 0x00 ; 00A36A: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 00A36C: provisional 68k btst.l d0, d0
db 0x01, 0x26 ; 00A36E: provisional 68k btst.l d0, -(a6)
db 0x01, 0x14 ; 00A370: provisional 68k btst.l d0, (a4)
db 0x00, 0x1B, 0x01, 0x00 ; 00A372: provisional 68k ori.b #$0, (a3)+
db 0x01, 0x00 ; 00A376: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x04 ; 00A378: provisional 68k ori.b #$4, d0
db 0x1C, 0xAC, 0x00, 0x0F ; 00A37C: provisional 68k move.b $f(a4), (a6)
db 0x14, 0xC0 ; 00A380: provisional 68k move.b d0, (a2)+
db 0x01, 0x18 ; 00A382: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 00A384: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 00A386: provisional 68k ori.b #$0, d0
db 0x01, 0x05 ; 00A38A: provisional 68k btst.l d0, d5
db 0x01, 0x14 ; 00A38C: provisional 68k btst.l d0, (a4)
db 0x00, 0x5D, 0x01, 0x00 ; 00A38E: provisional 68k ori.w #$100, (a5)+
db 0x00, 0x08 ; file 00A392
db 0x01, 0x14 ; 00A394: provisional 68k btst.l d0, (a4)
db 0x00, 0x0C ; file 00A396
db 0x01, 0x00 ; 00A398: provisional 68k btst.l d0, d0
db 0x01, 0x13 ; 00A39A: provisional 68k btst.l d0, (a3)
db 0x01, 0x14 ; 00A39C: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x05 ; 00A39E: provisional 68k ori.b #$5, d1
db 0x01, 0x14 ; 00A3A2: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x01 ; 00A3A4: provisional 68k ori.b #$1, d0
db 0x01, 0x00 ; 00A3A8: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x07 ; 00A3AA: provisional 68k ori.b #$7, d0
db 0x01, 0x14 ; 00A3AE: provisional 68k btst.l d0, (a4)
db 0x00, 0x03, 0x01, 0x00 ; 00A3B0: provisional 68k ori.b #$0, d3
db 0x01, 0x14 ; 00A3B4: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 00A3B6: provisional 68k ori.b #$0, d0
db 0x00, 0x07, 0x01, 0x14 ; 00A3BA: provisional 68k ori.b #$14, d7
db 0x00, 0x02, 0x01, 0x00 ; 00A3BE: provisional 68k ori.b #$0, d2
db 0x01, 0x14 ; 00A3C2: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 00A3C4: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x0F ; 00A3C8: provisional 68k ori.b #$f, d0
db 0x14, 0xA2 ; 00A3CC: provisional 68k move.b -(a2), (a2)
db 0x01, 0x18 ; 00A3CE: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 00A3D0: provisional 68k btst.l d0, (a4)
db 0x00, 0x05, 0x01, 0x00 ; 00A3D2: provisional 68k ori.b #$0, d5
db 0x01, 0x05 ; 00A3D6: provisional 68k btst.l d0, d5
db 0x01, 0x14 ; 00A3D8: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 00A3DA: provisional 68k ori.b #$0, d1
db 0x00, 0x07, 0x01, 0x14 ; 00A3DE: provisional 68k ori.b #$14, d7
db 0x00, 0x05, 0x01, 0x00 ; 00A3E2: provisional 68k ori.b #$0, d5
db 0x01, 0x14 ; 00A3E6: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 00A3E8: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x15 ; 00A3EC: provisional 68k ori.b #$15, d0
db 0x01, 0x18 ; 00A3F0: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 00A3F2: provisional 68k btst.l d0, (a4)
db 0x00, 0x04, 0x01, 0x00 ; 00A3F4: provisional 68k ori.b #$0, d4
db 0x01, 0x00 ; 00A3F8: provisional 68k btst.l d0, d0
db 0x01, 0x14 ; 00A3FA: provisional 68k btst.l d0, (a4)
db 0x00, 0x14, 0x01, 0x00 ; 00A3FC: provisional 68k ori.b #$0, (a4)
db 0x01, 0x14 ; 00A400: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 00A402: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x07 ; 00A406: provisional 68k ori.b #$7, d0
db 0x01, 0x14 ; 00A40A: provisional 68k btst.l d0, (a4)
db 0x00, 0x06, 0x01, 0x00 ; 00A40C: provisional 68k ori.b #$0, d6
db 0x01, 0x13 ; 00A410: provisional 68k btst.l d0, (a3)
db 0x01, 0x14 ; 00A412: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x05 ; 00A414: provisional 68k ori.b #$5, d1
db 0x01, 0x14 ; 00A418: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x01 ; 00A41A: provisional 68k ori.b #$1, d1
db 0x01, 0x00 ; 00A41E: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x04 ; 00A420: provisional 68k ori.b #$4, d0
db 0x1C, 0xAC, 0x00, 0x0F ; 00A424: provisional 68k move.b $f(a4), (a6)
db 0x14, 0xDA ; 00A428: provisional 68k move.b (a2)+, (a2)+
db 0x01, 0x18 ; 00A42A: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 00A42C: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 00A42E: provisional 68k ori.b #$0, d0
db 0x01, 0x05 ; 00A432: provisional 68k btst.l d0, d5
db 0x01, 0x14 ; 00A434: provisional 68k btst.l d0, (a4)
db 0x00, 0x60, 0x01, 0x00 ; 00A436: provisional 68k ori.w #$100, -(a0)
db 0x00, 0x00, 0x00, 0x04 ; 00A43A: provisional 68k ori.b #$4, d0
db 0x1C, 0xAC, 0x00, 0x0F ; 00A43E: provisional 68k move.b $f(a4), (a6)
db 0x17, 0x46, 0x01, 0x18 ; 00A442: provisional 68k move.b d6, $118(a3)
db 0x01, 0x14 ; 00A446: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 00A448: provisional 68k ori.b #$0, d0
db 0x01, 0x05 ; 00A44C: provisional 68k btst.l d0, d5
db 0x01, 0x14 ; 00A44E: provisional 68k btst.l d0, (a4)
db 0x00, 0x61, 0x01, 0x00 ; 00A450: provisional 68k ori.w #$100, -(a1)
db 0x00, 0x0F ; file 00A454
db 0x17, 0x42, 0x01, 0x18 ; 00A456: provisional 68k move.b d2, $118(a3)
db 0x01, 0x14 ; 00A45A: provisional 68k btst.l d0, (a4)
db 0x00, 0x06, 0x01, 0x00 ; 00A45C: provisional 68k ori.b #$0, d6
db 0x01, 0x05 ; 00A460: provisional 68k btst.l d0, d5
db 0x01, 0x13 ; 00A462: provisional 68k btst.l d0, (a3)
db 0x01, 0x14 ; 00A464: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x05 ; 00A466: provisional 68k ori.b #$5, d1
db 0x01, 0x14 ; 00A46A: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x01 ; 00A46C: provisional 68k ori.b #$1, d0
db 0x01, 0x00 ; 00A470: provisional 68k btst.l d0, d0
db 0x00, 0x0F, 0x15, 0x4E ; file 00A472
db 0x01, 0x19 ; 00A476: provisional 68k btst.l d0, (a1)+
db 0x01, 0x14 ; 00A478: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 00A47A
db 0x01, 0x0D, 0x01, 0x18 ; 00A47C: provisional 68k movep.w $118(a5), d0
db 0x01, 0x14 ; 00A480: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 00A482: provisional 68k ori.b #$0, d2
db 0x01, 0x00 ; 00A486: provisional 68k btst.l d0, d0
db 0x01, 0x05 ; 00A488: provisional 68k btst.l d0, d5
db 0x01, 0x14 ; 00A48A: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 00A48C: provisional 68k ori.b #$0, d0
db 0x00, 0x08 ; file 00A490
db 0x01, 0x14 ; 00A492: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 00A494
db 0x01, 0x0D, 0x01, 0x18 ; 00A496: provisional 68k movep.w $118(a5), d0
db 0x01, 0x14 ; 00A49A: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 00A49C: provisional 68k ori.b #$0, d2
db 0x01, 0x00 ; 00A4A0: provisional 68k btst.l d0, d0
db 0x01, 0x19 ; 00A4A2: provisional 68k btst.l d0, (a1)+
db 0x01, 0x14 ; 00A4A4: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 00A4A6
db 0x01, 0x0D, 0x01, 0x14 ; 00A4A8: provisional 68k movep.w $114(a5), d0
db 0x00, 0x00, 0x01, 0x00 ; 00A4AC: provisional 68k ori.b #$0, d0
db 0x01, 0x00 ; 00A4B0: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x0F ; 00A4B2: provisional 68k ori.b #$f, d0
db 0x15, 0x86, 0x01, 0x19 ; 00A4B6: provisional 68k move.b d6, ([a2, d0.w])
db 0x01, 0x14 ; 00A4BA: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 00A4BC
db 0x01, 0x0D, 0x01, 0x18 ; 00A4BE: provisional 68k movep.w $118(a5), d0
db 0x01, 0x14 ; 00A4C2: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 00A4C4: provisional 68k ori.b #$0, d2
db 0x01, 0x00 ; 00A4C8: provisional 68k btst.l d0, d0
db 0x01, 0x05 ; 00A4CA: provisional 68k btst.l d0, d5
db 0x01, 0x14 ; 00A4CC: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 00A4CE: provisional 68k ori.b #$0, d0
db 0x00, 0x08 ; file 00A4D2
db 0x01, 0x14 ; 00A4D4: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 00A4D6
db 0x01, 0x0D, 0x01, 0x18 ; 00A4D8: provisional 68k movep.w $118(a5), d0
db 0x01, 0x14 ; 00A4DC: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 00A4DE: provisional 68k ori.b #$0, d2
db 0x01, 0x00 ; 00A4E2: provisional 68k btst.l d0, d0
db 0x01, 0x14 ; 00A4E4: provisional 68k btst.l d0, (a4)
db 0x00, 0x38, 0x01, 0x00, 0x00, 0x00 ; 00A4E6: provisional 68k ori.b #$0, $0.w
db 0x00, 0x0F, 0x15, 0xE6 ; file 00A4EC
db 0x01, 0x19 ; 00A4F0: provisional 68k btst.l d0, (a1)+
db 0x01, 0x14 ; 00A4F2: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 00A4F4
db 0x01, 0x0D, 0x01, 0x18 ; 00A4F6: provisional 68k movep.w $118(a5), d0
db 0x01, 0x14 ; 00A4FA: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 00A4FC: provisional 68k ori.b #$0, d2
db 0x01, 0x00 ; 00A500: provisional 68k btst.l d0, d0
db 0x01, 0x08, 0x01, 0x14 ; 00A502: provisional 68k movep.w $114(a0), d0
db 0x01, 0xFF ; file 00A506
db 0x01, 0x00 ; 00A508: provisional 68k btst.l d0, d0
db 0x00, 0x11, 0x01, 0x14 ; 00A50A: provisional 68k ori.b #$14, (a1)
db 0x00, 0x1B, 0x01, 0x0D ; 00A50E: provisional 68k ori.b #$d, (a3)+
db 0x01, 0x14 ; 00A512: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 00A514: provisional 68k ori.b #$0, d2
db 0x01, 0x14 ; 00A518: provisional 68k btst.l d0, (a4)
db 0x61, 0x30 ; 00A51A: provisional 68k bsr.b $a54c
db 0x01, 0x0E, 0x01, 0x14 ; 00A51C: provisional 68k movep.w $114(a6), d0
db 0x00, 0x30, 0x01, 0x00, 0x00, 0x07 ; 00A520: provisional 68k ori.b #$0, $7(a0, d0.w)
db 0x01, 0x14 ; 00A526: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 00A528: provisional 68k ori.b #$0, d1
db 0x01, 0x19 ; 00A52C: provisional 68k btst.l d0, (a1)+
db 0x01, 0x14 ; 00A52E: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 00A530
db 0x01, 0x0D, 0x01, 0x18 ; 00A532: provisional 68k movep.w $118(a5), d0
db 0x01, 0x14 ; 00A536: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 00A538: provisional 68k ori.b #$0, d2
db 0x01, 0x00 ; 00A53C: provisional 68k btst.l d0, d0
db 0x01, 0x0E, 0x01, 0x14 ; 00A53E: provisional 68k movep.w $114(a6), d0
db 0x02, 0x00, 0x01, 0x00 ; 00A542: provisional 68k andi.b #$0, d0
db 0x00, 0x00, 0x00, 0x04 ; 00A546: provisional 68k ori.b #$4, d0
db 0x16, 0x78 ; file 00A54A
