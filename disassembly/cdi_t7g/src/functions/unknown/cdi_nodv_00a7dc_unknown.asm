; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00A7DC–00AA57, inclusive.
cdi_nodv_entry_00a7dc:
db 0x01, 0x19 ; 00A7DC: provisional 68k btst.l d0, (a1)+
db 0x01, 0x14 ; 00A7DE: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 00A7E0
db 0x01, 0x0D, 0x01, 0x14 ; 00A7E2: provisional 68k movep.w $114(a5), d0
db 0x00, 0x00, 0x01, 0x00 ; 00A7E6: provisional 68k ori.b #$0, d0
db 0x01, 0x08, 0x01, 0x14 ; 00A7EA: provisional 68k movep.w $114(a0), d0
db 0x00, 0xFF ; file 00A7EE
db 0x01, 0x00 ; 00A7F0: provisional 68k btst.l d0, d0
db 0x00, 0x11, 0x01, 0x14 ; 00A7F2: provisional 68k ori.b #$14, (a1)
db 0x00, 0x1B, 0x01, 0x0D ; 00A7F6: provisional 68k ori.b #$d, (a3)+
db 0x01, 0x14 ; 00A7FA: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 00A7FC: provisional 68k ori.b #$0, d2
db 0x01, 0x14 ; 00A800: provisional 68k btst.l d0, (a4)
db 0x62, 0x30 ; 00A802: provisional 68k bhi.b $a834
db 0x01, 0x0E, 0x01, 0x14 ; 00A804: provisional 68k movep.w $114(a6), d0
db 0x00, 0x30, 0x01, 0x00, 0x00, 0x07 ; 00A808: provisional 68k ori.b #$0, $7(a0, d0.w)
db 0x01, 0x14 ; 00A80E: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 00A810: provisional 68k ori.b #$0, d1
db 0x01, 0x19 ; 00A814: provisional 68k btst.l d0, (a1)+
db 0x01, 0x14 ; 00A816: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 00A818
db 0x01, 0x0D, 0x01, 0x14 ; 00A81A: provisional 68k movep.w $114(a5), d0
db 0x00, 0x00, 0x01, 0x00 ; 00A81E: provisional 68k ori.b #$0, d0
db 0x01, 0x0E, 0x01, 0x14 ; 00A822: provisional 68k movep.w $114(a6), d0
db 0x01, 0x00 ; 00A826: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 00A828: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x04 ; 00A82A: provisional 68k ori.b #$4, d0
db 0x18, 0xF8, 0x00, 0x11 ; 00A82E: provisional 68k move.b $11.w, (a4)+
db 0x01, 0x14 ; 00A832: provisional 68k btst.l d0, (a4)
db 0x00, 0x1B, 0x01, 0x0D ; 00A834: provisional 68k ori.b #$d, (a3)+
db 0x01, 0x14 ; 00A838: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 00A83A: provisional 68k ori.b #$0, d2
db 0x01, 0x14 ; 00A83E: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 00A840: provisional 68k ori.b #$0, d0
db 0x00, 0x07, 0x01, 0x14 ; 00A844: provisional 68k ori.b #$14, d7
db 0x00, 0x01, 0x01, 0x00 ; 00A848: provisional 68k ori.b #$0, d1
db 0x01, 0x19 ; 00A84C: provisional 68k btst.l d0, (a1)+
db 0x01, 0x14 ; 00A84E: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 00A850
db 0x01, 0x0D, 0x01, 0x14 ; 00A852: provisional 68k movep.w $114(a5), d0
db 0x00, 0x00, 0x01, 0x00 ; 00A856: provisional 68k ori.b #$0, d0
db 0x01, 0x00 ; 00A85A: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x0F ; 00A85C: provisional 68k ori.b #$f, d0
db 0x19, 0x40, 0x01, 0x18 ; 00A860: provisional 68k move.b d0, $118(a4)
db 0x01, 0x14 ; 00A864: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 00A866: provisional 68k ori.b #$0, d1
db 0x01, 0x07 ; 00A86A: provisional 68k btst.l d0, d7
db 0x01, 0x14 ; 00A86C: provisional 68k btst.l d0, (a4)
db 0x00, 0x0A ; file 00A86E
db 0x01, 0x00 ; 00A870: provisional 68k btst.l d0, d0
db 0x00, 0x11, 0x01, 0x14 ; 00A872: provisional 68k ori.b #$14, (a1)
db 0x00, 0x1B, 0x01, 0x0D ; 00A876: provisional 68k ori.b #$d, (a3)+
db 0x01, 0x14 ; 00A87A: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 00A87C: provisional 68k ori.b #$0, d1
db 0x01, 0x14 ; 00A880: provisional 68k btst.l d0, (a4)
db 0x30, 0x30, 0x01, 0x0D ; 00A882: provisional 68k move.w ([a0], d0.w), d0
db 0x01, 0x13 ; 00A886: provisional 68k btst.l d0, (a3)
db 0x01, 0x14 ; 00A888: provisional 68k btst.l d0, (a4)
db 0x01, 0x00 ; 00A88A: provisional 68k btst.l d0, d0
db 0x01, 0x0F, 0x01, 0x18 ; 00A88C: provisional 68k movep.w $118(a7), d0
db 0x01, 0x14 ; 00A890: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 00A892: provisional 68k ori.b #$0, d1
db 0x01, 0x01 ; 00A896: provisional 68k btst.l d0, d1
db 0x01, 0x0E, 0x01, 0x14 ; 00A898: provisional 68k movep.w $114(a6), d0
db 0x00, 0x30, 0x01, 0x00, 0x00, 0x00 ; 00A89C: provisional 68k ori.b #$0, (a0, d0.w)
db 0x00, 0x04, 0x19, 0x80 ; 00A8A2: provisional 68k ori.b #$80, d4
db 0x00, 0x11, 0x01, 0x14 ; 00A8A6: provisional 68k ori.b #$14, (a1)
db 0x00, 0x1B, 0x01, 0x0D ; 00A8AA: provisional 68k ori.b #$d, (a3)+
db 0x01, 0x14 ; 00A8AE: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 00A8B0: provisional 68k ori.b #$0, d1
db 0x01, 0x14 ; 00A8B4: provisional 68k btst.l d0, (a4)
db 0x30, 0x30, 0x01, 0x0D ; 00A8B6: provisional 68k move.w ([a0], d0.w), d0
db 0x01, 0x14 ; 00A8BA: provisional 68k btst.l d0, (a4)
db 0x01, 0x00 ; 00A8BC: provisional 68k btst.l d0, d0
db 0x01, 0x0F, 0x01, 0x13 ; 00A8BE: provisional 68k movep.w $113(a7), d0
db 0x01, 0x18 ; 00A8C2: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 00A8C4: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 00A8C6: provisional 68k ori.b #$0, d1
db 0x01, 0x10 ; 00A8CA: provisional 68k btst.l d0, (a0)
db 0x01, 0x14 ; 00A8CC: provisional 68k btst.l d0, (a4)
db 0x00, 0x0A ; file 00A8CE
db 0x01, 0x01 ; 00A8D0: provisional 68k btst.l d0, d1
db 0x01, 0x0D, 0x01, 0x18 ; 00A8D2: provisional 68k movep.w $118(a5), d0
db 0x01, 0x14 ; 00A8D6: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 00A8D8: provisional 68k ori.b #$0, d1
db 0x01, 0x11 ; 00A8DC: provisional 68k btst.l d0, (a1)
db 0x01, 0x14 ; 00A8DE: provisional 68k btst.l d0, (a4)
db 0x00, 0x0A ; file 00A8E0
db 0x01, 0x00 ; 00A8E2: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x08 ; 00A8E4: provisional 68k ori.b #$8, d0
db 0x01, 0x14 ; 00A8E8: provisional 68k btst.l d0, (a4)
db 0x00, 0x0C ; file 00A8EA
db 0x01, 0x00 ; 00A8EC: provisional 68k btst.l d0, d0
db 0x01, 0x13 ; 00A8EE: provisional 68k btst.l d0, (a3)
db 0x01, 0x14 ; 00A8F0: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x05 ; 00A8F2: provisional 68k ori.b #$5, d1
db 0x01, 0x14 ; 00A8F6: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x01 ; 00A8F8: provisional 68k ori.b #$1, d1
db 0x01, 0x00 ; 00A8FC: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x07 ; 00A8FE: provisional 68k ori.b #$7, d0
db 0x01, 0x14 ; 00A902: provisional 68k btst.l d0, (a4)
db 0x00, 0x03, 0x01, 0x00 ; 00A904: provisional 68k ori.b #$0, d3
db 0x01, 0x14 ; 00A908: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 00A90A: provisional 68k ori.b #$0, d1
db 0x00, 0x00, 0x00, 0x52 ; 00A90E: provisional 68k ori.b #$52, d0
db 0x01, 0x27 ; 00A912: provisional 68k btst.l d0, -(a7)
db 0x01, 0x14 ; 00A914: provisional 68k btst.l d0, (a4)
db 0x1C, 0xB8, 0x01, 0x00 ; 00A916: provisional 68k move.b $100.w, (a6)
db 0x01, 0x00 ; 00A91A: provisional 68k btst.l d0, d0
db 0x01, 0x26 ; 00A91C: provisional 68k btst.l d0, -(a6)
db 0x01, 0x14 ; 00A91E: provisional 68k btst.l d0, (a4)
db 0x00, 0x1B, 0x01, 0x00 ; 00A920: provisional 68k ori.b #$0, (a3)+
db 0x01, 0x00 ; 00A924: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x04 ; 00A926: provisional 68k ori.b #$4, d0
db 0x1C, 0xAC, 0x00, 0x0F ; 00A92A: provisional 68k move.b $f(a4), (a6)
db 0x1C, 0x42 ; file 00A92E
db 0x01, 0x18 ; 00A930: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 00A932: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 00A934: provisional 68k ori.b #$0, d0
db 0x01, 0x05 ; 00A938: provisional 68k btst.l d0, d5
db 0x01, 0x14 ; 00A93A: provisional 68k btst.l d0, (a4)
db 0x00, 0x65, 0x01, 0x00 ; 00A93C: provisional 68k ori.w #$100, -(a5)
db 0x00, 0x07, 0x01, 0x14 ; 00A940: provisional 68k ori.b #$14, d7
db 0x00, 0x06, 0x01, 0x00 ; 00A944: provisional 68k ori.b #$0, d6
db 0x01, 0x13 ; 00A948: provisional 68k btst.l d0, (a3)
db 0x01, 0x14 ; 00A94A: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x05 ; 00A94C: provisional 68k ori.b #$5, d1
db 0x01, 0x14 ; 00A950: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x01 ; 00A952: provisional 68k ori.b #$1, d0
db 0x01, 0x00 ; 00A956: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x08 ; 00A958: provisional 68k ori.b #$8, d0
db 0x01, 0x14 ; 00A95C: provisional 68k btst.l d0, (a4)
db 0x00, 0x07, 0x01, 0x00 ; 00A95E: provisional 68k ori.b #$0, d7
db 0x01, 0x14 ; 00A962: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 00A964: provisional 68k ori.b #$0, d1
db 0x00, 0x00, 0x00, 0x07 ; 00A968: provisional 68k ori.b #$7, d0
db 0x01, 0x14 ; 00A96C: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 00A96E: provisional 68k ori.b #$0, d2
db 0x01, 0x14 ; 00A972: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 00A974: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x54 ; 00A978: provisional 68k ori.b #$54, d0
db 0x01, 0x19 ; 00A97C: provisional 68k btst.l d0, (a1)+
db 0x01, 0x14 ; 00A97E: provisional 68k btst.l d0, (a4)
db 0x00, 0x06, 0x01, 0x00 ; 00A980: provisional 68k ori.b #$0, d6
db 0x01, 0x00 ; 00A984: provisional 68k btst.l d0, d0
db 0x01, 0x19 ; 00A986: provisional 68k btst.l d0, (a1)+
db 0x01, 0x14 ; 00A988: provisional 68k btst.l d0, (a4)
db 0x00, 0x07, 0x01, 0x00 ; 00A98A: provisional 68k ori.b #$0, d7
db 0x01, 0x00 ; 00A98E: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x0F ; 00A990: provisional 68k ori.b #$f, d0
db 0x1A, 0x66 ; file 00A994
db 0x01, 0x19 ; 00A996: provisional 68k btst.l d0, (a1)+
db 0x01, 0x14 ; 00A998: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 00A99A
db 0x01, 0x0D, 0x01, 0x14 ; 00A99C: provisional 68k movep.w $114(a5), d0
db 0x00, 0x00, 0x01, 0x00 ; 00A9A0: provisional 68k ori.b #$0, d0
db 0x01, 0x05 ; 00A9A4: provisional 68k btst.l d0, d5
db 0x01, 0x14 ; 00A9A6: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 00A9A8: provisional 68k ori.b #$0, d0
db 0x00, 0x08 ; file 00A9AC
db 0x01, 0x14 ; 00A9AE: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 00A9B0
db 0x01, 0x0D, 0x01, 0x14 ; 00A9B2: provisional 68k movep.w $114(a5), d0
db 0x00, 0x00, 0x01, 0x00 ; 00A9B6: provisional 68k ori.b #$0, d0
db 0x01, 0x19 ; 00A9BA: provisional 68k btst.l d0, (a1)+
db 0x01, 0x14 ; 00A9BC: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 00A9BE
db 0x01, 0x0D, 0x01, 0x14 ; 00A9C0: provisional 68k movep.w $114(a5), d0
db 0x00, 0x00, 0x01, 0x00 ; 00A9C4: provisional 68k ori.b #$0, d0
db 0x01, 0x00 ; 00A9C8: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x0F ; 00A9CA: provisional 68k ori.b #$f, d0
db 0x1A, 0x96 ; 00A9CE: provisional 68k move.b (a6), (a5)
db 0x01, 0x19 ; 00A9D0: provisional 68k btst.l d0, (a1)+
db 0x01, 0x14 ; 00A9D2: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 00A9D4
db 0x01, 0x0D, 0x01, 0x14 ; 00A9D6: provisional 68k movep.w $114(a5), d0
db 0x00, 0x00, 0x01, 0x00 ; 00A9DA: provisional 68k ori.b #$0, d0
db 0x01, 0x05 ; 00A9DE: provisional 68k btst.l d0, d5
db 0x01, 0x14 ; 00A9E0: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 00A9E2: provisional 68k ori.b #$0, d0
db 0x00, 0x08 ; file 00A9E6
db 0x01, 0x14 ; 00A9E8: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 00A9EA
db 0x01, 0x0D, 0x01, 0x14 ; 00A9EC: provisional 68k movep.w $114(a5), d0
db 0x00, 0x00, 0x01, 0x00 ; 00A9F0: provisional 68k ori.b #$0, d0
db 0x01, 0x14 ; 00A9F4: provisional 68k btst.l d0, (a4)
db 0x00, 0x38, 0x01, 0x00, 0x00, 0x00 ; 00A9F6: provisional 68k ori.b #$0, $0.w
db 0x00, 0x0F ; file 00A9FC
db 0x1A, 0xEE, 0x01, 0x19 ; 00A9FE: provisional 68k move.b $119(a6), (a5)+
db 0x01, 0x14 ; 00AA02: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 00AA04
db 0x01, 0x0D, 0x01, 0x14 ; 00AA06: provisional 68k movep.w $114(a5), d0
db 0x00, 0x00, 0x01, 0x00 ; 00AA0A: provisional 68k ori.b #$0, d0
db 0x01, 0x08, 0x01, 0x14 ; 00AA0E: provisional 68k movep.w $114(a0), d0
db 0x01, 0xFF ; file 00AA12
db 0x01, 0x00 ; 00AA14: provisional 68k btst.l d0, d0
db 0x00, 0x11, 0x01, 0x14 ; 00AA16: provisional 68k ori.b #$14, (a1)
db 0x00, 0x1B, 0x01, 0x0D ; 00AA1A: provisional 68k ori.b #$d, (a3)+
db 0x01, 0x14 ; 00AA1E: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 00AA20: provisional 68k ori.b #$0, d2
db 0x01, 0x14 ; 00AA24: provisional 68k btst.l d0, (a4)
db 0x61, 0x30 ; 00AA26: provisional 68k bsr.b $aa58
db 0x01, 0x0E, 0x01, 0x14 ; 00AA28: provisional 68k movep.w $114(a6), d0
db 0x00, 0x30, 0x01, 0x00, 0x00, 0x07 ; 00AA2C: provisional 68k ori.b #$0, $7(a0, d0.w)
db 0x01, 0x14 ; 00AA32: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 00AA34: provisional 68k ori.b #$0, d1
db 0x01, 0x19 ; 00AA38: provisional 68k btst.l d0, (a1)+
db 0x01, 0x14 ; 00AA3A: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 00AA3C
db 0x01, 0x0D, 0x01, 0x14 ; 00AA3E: provisional 68k movep.w $114(a5), d0
db 0x00, 0x00, 0x01, 0x00 ; 00AA42: provisional 68k ori.b #$0, d0
db 0x01, 0x0E, 0x01, 0x14 ; 00AA46: provisional 68k movep.w $114(a6), d0
db 0x02, 0x00, 0x01, 0x00 ; 00AA4A: provisional 68k andi.b #$0, d0
db 0x00, 0x00, 0x00, 0x04 ; 00AA4E: provisional 68k ori.b #$4, d0
db 0x1B, 0x74, 0x00, 0x0F, 0x1B, 0x46 ; 00AA52: provisional 68k move.b $f(a4, d0.w), $1b46(a5)
