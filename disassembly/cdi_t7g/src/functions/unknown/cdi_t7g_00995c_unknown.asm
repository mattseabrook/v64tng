; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00995C–009BD7, inclusive.
cdi_t7g_entry_00995c:
db 0x01, 0x19 ; 00995C: provisional 68k btst.l d0, (a1)+
db 0x01, 0x14 ; 00995E: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 009960
db 0x01, 0x0D, 0x01, 0x14 ; 009962: provisional 68k movep.w $114(a5), d0
db 0x00, 0x00, 0x01, 0x00 ; 009966: provisional 68k ori.b #$0, d0
db 0x01, 0x08, 0x01, 0x14 ; 00996A: provisional 68k movep.w $114(a0), d0
db 0x00, 0xFF ; file 00996E
db 0x01, 0x00 ; 009970: provisional 68k btst.l d0, d0
db 0x00, 0x11, 0x01, 0x14 ; 009972: provisional 68k ori.b #$14, (a1)
db 0x00, 0x1B, 0x01, 0x0D ; 009976: provisional 68k ori.b #$d, (a3)+
db 0x01, 0x14 ; 00997A: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 00997C: provisional 68k ori.b #$0, d2
db 0x01, 0x14 ; 009980: provisional 68k btst.l d0, (a4)
db 0x62, 0x30 ; 009982: provisional 68k bhi.b $99b4
db 0x01, 0x0E, 0x01, 0x14 ; 009984: provisional 68k movep.w $114(a6), d0
db 0x00, 0x30, 0x01, 0x00, 0x00, 0x07 ; 009988: provisional 68k ori.b #$0, $7(a0, d0.w)
db 0x01, 0x14 ; 00998E: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 009990: provisional 68k ori.b #$0, d1
db 0x01, 0x19 ; 009994: provisional 68k btst.l d0, (a1)+
db 0x01, 0x14 ; 009996: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 009998
db 0x01, 0x0D, 0x01, 0x14 ; 00999A: provisional 68k movep.w $114(a5), d0
db 0x00, 0x00, 0x01, 0x00 ; 00999E: provisional 68k ori.b #$0, d0
db 0x01, 0x0E, 0x01, 0x14 ; 0099A2: provisional 68k movep.w $114(a6), d0
db 0x01, 0x00 ; 0099A6: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 0099A8: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x04 ; 0099AA: provisional 68k ori.b #$4, d0
db 0x18, 0xF8, 0x00, 0x11 ; 0099AE: provisional 68k move.b $11.w, (a4)+
db 0x01, 0x14 ; 0099B2: provisional 68k btst.l d0, (a4)
db 0x00, 0x1B, 0x01, 0x0D ; 0099B4: provisional 68k ori.b #$d, (a3)+
db 0x01, 0x14 ; 0099B8: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 0099BA: provisional 68k ori.b #$0, d2
db 0x01, 0x14 ; 0099BE: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 0099C0: provisional 68k ori.b #$0, d0
db 0x00, 0x07, 0x01, 0x14 ; 0099C4: provisional 68k ori.b #$14, d7
db 0x00, 0x01, 0x01, 0x00 ; 0099C8: provisional 68k ori.b #$0, d1
db 0x01, 0x19 ; 0099CC: provisional 68k btst.l d0, (a1)+
db 0x01, 0x14 ; 0099CE: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 0099D0
db 0x01, 0x0D, 0x01, 0x14 ; 0099D2: provisional 68k movep.w $114(a5), d0
db 0x00, 0x00, 0x01, 0x00 ; 0099D6: provisional 68k ori.b #$0, d0
db 0x01, 0x00 ; 0099DA: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x0F ; 0099DC: provisional 68k ori.b #$f, d0
db 0x19, 0x40, 0x01, 0x18 ; 0099E0: provisional 68k move.b d0, $118(a4)
db 0x01, 0x14 ; 0099E4: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 0099E6: provisional 68k ori.b #$0, d1
db 0x01, 0x07 ; 0099EA: provisional 68k btst.l d0, d7
db 0x01, 0x14 ; 0099EC: provisional 68k btst.l d0, (a4)
db 0x00, 0x0A ; file 0099EE
db 0x01, 0x00 ; 0099F0: provisional 68k btst.l d0, d0
db 0x00, 0x11, 0x01, 0x14 ; 0099F2: provisional 68k ori.b #$14, (a1)
db 0x00, 0x1B, 0x01, 0x0D ; 0099F6: provisional 68k ori.b #$d, (a3)+
db 0x01, 0x14 ; 0099FA: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 0099FC: provisional 68k ori.b #$0, d1
db 0x01, 0x14 ; 009A00: provisional 68k btst.l d0, (a4)
db 0x30, 0x30, 0x01, 0x0D ; 009A02: provisional 68k move.w ([a0], d0.w), d0
db 0x01, 0x13 ; 009A06: provisional 68k btst.l d0, (a3)
db 0x01, 0x14 ; 009A08: provisional 68k btst.l d0, (a4)
db 0x01, 0x00 ; 009A0A: provisional 68k btst.l d0, d0
db 0x01, 0x0F, 0x01, 0x18 ; 009A0C: provisional 68k movep.w $118(a7), d0
db 0x01, 0x14 ; 009A10: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 009A12: provisional 68k ori.b #$0, d1
db 0x01, 0x01 ; 009A16: provisional 68k btst.l d0, d1
db 0x01, 0x0E, 0x01, 0x14 ; 009A18: provisional 68k movep.w $114(a6), d0
db 0x00, 0x30, 0x01, 0x00, 0x00, 0x00 ; 009A1C: provisional 68k ori.b #$0, (a0, d0.w)
db 0x00, 0x04, 0x19, 0x80 ; 009A22: provisional 68k ori.b #$80, d4
db 0x00, 0x11, 0x01, 0x14 ; 009A26: provisional 68k ori.b #$14, (a1)
db 0x00, 0x1B, 0x01, 0x0D ; 009A2A: provisional 68k ori.b #$d, (a3)+
db 0x01, 0x14 ; 009A2E: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 009A30: provisional 68k ori.b #$0, d1
db 0x01, 0x14 ; 009A34: provisional 68k btst.l d0, (a4)
db 0x30, 0x30, 0x01, 0x0D ; 009A36: provisional 68k move.w ([a0], d0.w), d0
db 0x01, 0x14 ; 009A3A: provisional 68k btst.l d0, (a4)
db 0x01, 0x00 ; 009A3C: provisional 68k btst.l d0, d0
db 0x01, 0x0F, 0x01, 0x13 ; 009A3E: provisional 68k movep.w $113(a7), d0
db 0x01, 0x18 ; 009A42: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 009A44: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 009A46: provisional 68k ori.b #$0, d1
db 0x01, 0x10 ; 009A4A: provisional 68k btst.l d0, (a0)
db 0x01, 0x14 ; 009A4C: provisional 68k btst.l d0, (a4)
db 0x00, 0x0A ; file 009A4E
db 0x01, 0x01 ; 009A50: provisional 68k btst.l d0, d1
db 0x01, 0x0D, 0x01, 0x18 ; 009A52: provisional 68k movep.w $118(a5), d0
db 0x01, 0x14 ; 009A56: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 009A58: provisional 68k ori.b #$0, d1
db 0x01, 0x11 ; 009A5C: provisional 68k btst.l d0, (a1)
db 0x01, 0x14 ; 009A5E: provisional 68k btst.l d0, (a4)
db 0x00, 0x0A ; file 009A60
db 0x01, 0x00 ; 009A62: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x08 ; 009A64: provisional 68k ori.b #$8, d0
db 0x01, 0x14 ; 009A68: provisional 68k btst.l d0, (a4)
db 0x00, 0x0C ; file 009A6A
db 0x01, 0x00 ; 009A6C: provisional 68k btst.l d0, d0
db 0x01, 0x13 ; 009A6E: provisional 68k btst.l d0, (a3)
db 0x01, 0x14 ; 009A70: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x05 ; 009A72: provisional 68k ori.b #$5, d1
db 0x01, 0x14 ; 009A76: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x01 ; 009A78: provisional 68k ori.b #$1, d1
db 0x01, 0x00 ; 009A7C: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x07 ; 009A7E: provisional 68k ori.b #$7, d0
db 0x01, 0x14 ; 009A82: provisional 68k btst.l d0, (a4)
db 0x00, 0x03, 0x01, 0x00 ; 009A84: provisional 68k ori.b #$0, d3
db 0x01, 0x14 ; 009A88: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 009A8A: provisional 68k ori.b #$0, d1
db 0x00, 0x00, 0x00, 0x52 ; 009A8E: provisional 68k ori.b #$52, d0
db 0x01, 0x27 ; 009A92: provisional 68k btst.l d0, -(a7)
db 0x01, 0x14 ; 009A94: provisional 68k btst.l d0, (a4)
db 0x1C, 0xB8, 0x01, 0x00 ; 009A96: provisional 68k move.b $100.w, (a6)
db 0x01, 0x00 ; 009A9A: provisional 68k btst.l d0, d0
db 0x01, 0x26 ; 009A9C: provisional 68k btst.l d0, -(a6)
db 0x01, 0x14 ; 009A9E: provisional 68k btst.l d0, (a4)
db 0x00, 0x1B, 0x01, 0x00 ; 009AA0: provisional 68k ori.b #$0, (a3)+
db 0x01, 0x00 ; 009AA4: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x04 ; 009AA6: provisional 68k ori.b #$4, d0
db 0x1C, 0xAC, 0x00, 0x0F ; 009AAA: provisional 68k move.b $f(a4), (a6)
db 0x1C, 0x42 ; file 009AAE
db 0x01, 0x18 ; 009AB0: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 009AB2: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 009AB4: provisional 68k ori.b #$0, d0
db 0x01, 0x05 ; 009AB8: provisional 68k btst.l d0, d5
db 0x01, 0x14 ; 009ABA: provisional 68k btst.l d0, (a4)
db 0x00, 0x65, 0x01, 0x00 ; 009ABC: provisional 68k ori.w #$100, -(a5)
db 0x00, 0x07, 0x01, 0x14 ; 009AC0: provisional 68k ori.b #$14, d7
db 0x00, 0x06, 0x01, 0x00 ; 009AC4: provisional 68k ori.b #$0, d6
db 0x01, 0x13 ; 009AC8: provisional 68k btst.l d0, (a3)
db 0x01, 0x14 ; 009ACA: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x05 ; 009ACC: provisional 68k ori.b #$5, d1
db 0x01, 0x14 ; 009AD0: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x01 ; 009AD2: provisional 68k ori.b #$1, d0
db 0x01, 0x00 ; 009AD6: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x08 ; 009AD8: provisional 68k ori.b #$8, d0
db 0x01, 0x14 ; 009ADC: provisional 68k btst.l d0, (a4)
db 0x00, 0x07, 0x01, 0x00 ; 009ADE: provisional 68k ori.b #$0, d7
db 0x01, 0x14 ; 009AE2: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 009AE4: provisional 68k ori.b #$0, d1
db 0x00, 0x00, 0x00, 0x07 ; 009AE8: provisional 68k ori.b #$7, d0
db 0x01, 0x14 ; 009AEC: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 009AEE: provisional 68k ori.b #$0, d2
db 0x01, 0x14 ; 009AF2: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 009AF4: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x54 ; 009AF8: provisional 68k ori.b #$54, d0
db 0x01, 0x19 ; 009AFC: provisional 68k btst.l d0, (a1)+
db 0x01, 0x14 ; 009AFE: provisional 68k btst.l d0, (a4)
db 0x00, 0x06, 0x01, 0x00 ; 009B00: provisional 68k ori.b #$0, d6
db 0x01, 0x00 ; 009B04: provisional 68k btst.l d0, d0
db 0x01, 0x19 ; 009B06: provisional 68k btst.l d0, (a1)+
db 0x01, 0x14 ; 009B08: provisional 68k btst.l d0, (a4)
db 0x00, 0x07, 0x01, 0x00 ; 009B0A: provisional 68k ori.b #$0, d7
db 0x01, 0x00 ; 009B0E: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x0F ; 009B10: provisional 68k ori.b #$f, d0
db 0x1A, 0x66 ; file 009B14
db 0x01, 0x19 ; 009B16: provisional 68k btst.l d0, (a1)+
db 0x01, 0x14 ; 009B18: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 009B1A
db 0x01, 0x0D, 0x01, 0x14 ; 009B1C: provisional 68k movep.w $114(a5), d0
db 0x00, 0x00, 0x01, 0x00 ; 009B20: provisional 68k ori.b #$0, d0
db 0x01, 0x05 ; 009B24: provisional 68k btst.l d0, d5
db 0x01, 0x14 ; 009B26: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 009B28: provisional 68k ori.b #$0, d0
db 0x00, 0x08 ; file 009B2C
db 0x01, 0x14 ; 009B2E: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 009B30
db 0x01, 0x0D, 0x01, 0x14 ; 009B32: provisional 68k movep.w $114(a5), d0
db 0x00, 0x00, 0x01, 0x00 ; 009B36: provisional 68k ori.b #$0, d0
db 0x01, 0x19 ; 009B3A: provisional 68k btst.l d0, (a1)+
db 0x01, 0x14 ; 009B3C: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 009B3E
db 0x01, 0x0D, 0x01, 0x14 ; 009B40: provisional 68k movep.w $114(a5), d0
db 0x00, 0x00, 0x01, 0x00 ; 009B44: provisional 68k ori.b #$0, d0
db 0x01, 0x00 ; 009B48: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x0F ; 009B4A: provisional 68k ori.b #$f, d0
db 0x1A, 0x96 ; 009B4E: provisional 68k move.b (a6), (a5)
db 0x01, 0x19 ; 009B50: provisional 68k btst.l d0, (a1)+
db 0x01, 0x14 ; 009B52: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 009B54
db 0x01, 0x0D, 0x01, 0x14 ; 009B56: provisional 68k movep.w $114(a5), d0
db 0x00, 0x00, 0x01, 0x00 ; 009B5A: provisional 68k ori.b #$0, d0
db 0x01, 0x05 ; 009B5E: provisional 68k btst.l d0, d5
db 0x01, 0x14 ; 009B60: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 009B62: provisional 68k ori.b #$0, d0
db 0x00, 0x08 ; file 009B66
db 0x01, 0x14 ; 009B68: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 009B6A
db 0x01, 0x0D, 0x01, 0x14 ; 009B6C: provisional 68k movep.w $114(a5), d0
db 0x00, 0x00, 0x01, 0x00 ; 009B70: provisional 68k ori.b #$0, d0
db 0x01, 0x14 ; 009B74: provisional 68k btst.l d0, (a4)
db 0x00, 0x38, 0x01, 0x00, 0x00, 0x00 ; 009B76: provisional 68k ori.b #$0, $0.w
db 0x00, 0x0F ; file 009B7C
db 0x1A, 0xEE, 0x01, 0x19 ; 009B7E: provisional 68k move.b $119(a6), (a5)+
db 0x01, 0x14 ; 009B82: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 009B84
db 0x01, 0x0D, 0x01, 0x14 ; 009B86: provisional 68k movep.w $114(a5), d0
db 0x00, 0x00, 0x01, 0x00 ; 009B8A: provisional 68k ori.b #$0, d0
db 0x01, 0x08, 0x01, 0x14 ; 009B8E: provisional 68k movep.w $114(a0), d0
db 0x01, 0xFF ; file 009B92
db 0x01, 0x00 ; 009B94: provisional 68k btst.l d0, d0
db 0x00, 0x11, 0x01, 0x14 ; 009B96: provisional 68k ori.b #$14, (a1)
db 0x00, 0x1B, 0x01, 0x0D ; 009B9A: provisional 68k ori.b #$d, (a3)+
db 0x01, 0x14 ; 009B9E: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 009BA0: provisional 68k ori.b #$0, d2
db 0x01, 0x14 ; 009BA4: provisional 68k btst.l d0, (a4)
db 0x61, 0x30 ; 009BA6: provisional 68k bsr.b $9bd8
db 0x01, 0x0E, 0x01, 0x14 ; 009BA8: provisional 68k movep.w $114(a6), d0
db 0x00, 0x30, 0x01, 0x00, 0x00, 0x07 ; 009BAC: provisional 68k ori.b #$0, $7(a0, d0.w)
db 0x01, 0x14 ; 009BB2: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 009BB4: provisional 68k ori.b #$0, d1
db 0x01, 0x19 ; 009BB8: provisional 68k btst.l d0, (a1)+
db 0x01, 0x14 ; 009BBA: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 009BBC
db 0x01, 0x0D, 0x01, 0x14 ; 009BBE: provisional 68k movep.w $114(a5), d0
db 0x00, 0x00, 0x01, 0x00 ; 009BC2: provisional 68k ori.b #$0, d0
db 0x01, 0x0E, 0x01, 0x14 ; 009BC6: provisional 68k movep.w $114(a6), d0
db 0x02, 0x00, 0x01, 0x00 ; 009BCA: provisional 68k andi.b #$0, d0
db 0x00, 0x00, 0x00, 0x04 ; 009BCE: provisional 68k ori.b #$4, d0
db 0x1B, 0x74, 0x00, 0x0F, 0x1B, 0x46 ; 009BD2: provisional 68k move.b $f(a4, d0.w), $1b46(a5)
