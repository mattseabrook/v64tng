; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 00A54C–00A7DB, inclusive.
cdi_nodv_entry_00a54c:
db 0x00, 0x0F, 0x16, 0x46 ; file 00A54C
db 0x01, 0x19 ; 00A550: provisional 68k btst.l d0, (a1)+
db 0x01, 0x14 ; 00A552: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 00A554
db 0x01, 0x0D, 0x01, 0x18 ; 00A556: provisional 68k movep.w $118(a5), d0
db 0x01, 0x14 ; 00A55A: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 00A55C: provisional 68k ori.b #$0, d2
db 0x01, 0x00 ; 00A560: provisional 68k btst.l d0, d0
db 0x01, 0x08, 0x01, 0x14 ; 00A562: provisional 68k movep.w $114(a0), d0
db 0x00, 0xFF ; file 00A566
db 0x01, 0x00 ; 00A568: provisional 68k btst.l d0, d0
db 0x00, 0x11, 0x01, 0x14 ; 00A56A: provisional 68k ori.b #$14, (a1)
db 0x00, 0x1B, 0x01, 0x0D ; 00A56E: provisional 68k ori.b #$d, (a3)+
db 0x01, 0x14 ; 00A572: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 00A574: provisional 68k ori.b #$0, d2
db 0x01, 0x14 ; 00A578: provisional 68k btst.l d0, (a4)
db 0x62, 0x30 ; 00A57A: provisional 68k bhi.b $a5ac
db 0x01, 0x0E, 0x01, 0x14 ; 00A57C: provisional 68k movep.w $114(a6), d0
db 0x00, 0x30, 0x01, 0x00, 0x00, 0x07 ; 00A580: provisional 68k ori.b #$0, $7(a0, d0.w)
db 0x01, 0x14 ; 00A586: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 00A588: provisional 68k ori.b #$0, d1
db 0x01, 0x19 ; 00A58C: provisional 68k btst.l d0, (a1)+
db 0x01, 0x14 ; 00A58E: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 00A590
db 0x01, 0x0D, 0x01, 0x18 ; 00A592: provisional 68k movep.w $118(a5), d0
db 0x01, 0x14 ; 00A596: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 00A598: provisional 68k ori.b #$0, d2
db 0x01, 0x00 ; 00A59C: provisional 68k btst.l d0, d0
db 0x01, 0x0E, 0x01, 0x14 ; 00A59E: provisional 68k movep.w $114(a6), d0
db 0x01, 0x00 ; 00A5A2: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 00A5A4: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x04 ; 00A5A6: provisional 68k ori.b #$4, d0
db 0x16, 0x78 ; file 00A5AA
db 0x00, 0x11, 0x01, 0x14 ; 00A5AC: provisional 68k ori.b #$14, (a1)
db 0x00, 0x1B, 0x01, 0x0D ; 00A5B0: provisional 68k ori.b #$d, (a3)+
db 0x01, 0x14 ; 00A5B4: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 00A5B6: provisional 68k ori.b #$0, d2
db 0x01, 0x14 ; 00A5BA: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 00A5BC: provisional 68k ori.b #$0, d0
db 0x00, 0x07, 0x01, 0x14 ; 00A5C0: provisional 68k ori.b #$14, d7
db 0x00, 0x01, 0x01, 0x00 ; 00A5C4: provisional 68k ori.b #$0, d1
db 0x01, 0x19 ; 00A5C8: provisional 68k btst.l d0, (a1)+
db 0x01, 0x14 ; 00A5CA: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 00A5CC
db 0x01, 0x0D, 0x01, 0x18 ; 00A5CE: provisional 68k movep.w $118(a5), d0
db 0x01, 0x14 ; 00A5D2: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 00A5D4: provisional 68k ori.b #$0, d2
db 0x01, 0x00 ; 00A5D8: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 00A5DA: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x0F ; 00A5DC: provisional 68k ori.b #$f, d0
db 0x16, 0xC0 ; 00A5E0: provisional 68k move.b d0, (a3)+
db 0x01, 0x18 ; 00A5E2: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 00A5E4: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 00A5E6: provisional 68k ori.b #$0, d1
db 0x01, 0x07 ; 00A5EA: provisional 68k btst.l d0, d7
db 0x01, 0x14 ; 00A5EC: provisional 68k btst.l d0, (a4)
db 0x00, 0x0A ; file 00A5EE
db 0x01, 0x00 ; 00A5F0: provisional 68k btst.l d0, d0
db 0x00, 0x11, 0x01, 0x14 ; 00A5F2: provisional 68k ori.b #$14, (a1)
db 0x00, 0x1B, 0x01, 0x0D ; 00A5F6: provisional 68k ori.b #$d, (a3)+
db 0x01, 0x14 ; 00A5FA: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 00A5FC: provisional 68k ori.b #$0, d1
db 0x01, 0x14 ; 00A600: provisional 68k btst.l d0, (a4)
db 0x30, 0x30, 0x01, 0x0D ; 00A602: provisional 68k move.w ([a0], d0.w), d0
db 0x01, 0x13 ; 00A606: provisional 68k btst.l d0, (a3)
db 0x01, 0x14 ; 00A608: provisional 68k btst.l d0, (a4)
db 0x01, 0x00 ; 00A60A: provisional 68k btst.l d0, d0
db 0x01, 0x0F, 0x01, 0x18 ; 00A60C: provisional 68k movep.w $118(a7), d0
db 0x01, 0x14 ; 00A610: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 00A612: provisional 68k ori.b #$0, d1
db 0x01, 0x01 ; 00A616: provisional 68k btst.l d0, d1
db 0x01, 0x0E, 0x01, 0x14 ; 00A618: provisional 68k movep.w $114(a6), d0
db 0x00, 0x30, 0x01, 0x00, 0x00, 0x00 ; 00A61C: provisional 68k ori.b #$0, (a0, d0.w)
db 0x00, 0x04, 0x17, 0x00 ; 00A622: provisional 68k ori.b #$0, d4
db 0x00, 0x11, 0x01, 0x14 ; 00A626: provisional 68k ori.b #$14, (a1)
db 0x00, 0x1B, 0x01, 0x0D ; 00A62A: provisional 68k ori.b #$d, (a3)+
db 0x01, 0x14 ; 00A62E: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 00A630: provisional 68k ori.b #$0, d1
db 0x01, 0x14 ; 00A634: provisional 68k btst.l d0, (a4)
db 0x30, 0x30, 0x01, 0x0D ; 00A636: provisional 68k move.w ([a0], d0.w), d0
db 0x01, 0x14 ; 00A63A: provisional 68k btst.l d0, (a4)
db 0x01, 0x00 ; 00A63C: provisional 68k btst.l d0, d0
db 0x01, 0x0F, 0x01, 0x13 ; 00A63E: provisional 68k movep.w $113(a7), d0
db 0x01, 0x18 ; 00A642: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 00A644: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 00A646: provisional 68k ori.b #$0, d1
db 0x01, 0x10 ; 00A64A: provisional 68k btst.l d0, (a0)
db 0x01, 0x14 ; 00A64C: provisional 68k btst.l d0, (a4)
db 0x00, 0x0A ; file 00A64E
db 0x01, 0x01 ; 00A650: provisional 68k btst.l d0, d1
db 0x01, 0x0D, 0x01, 0x18 ; 00A652: provisional 68k movep.w $118(a5), d0
db 0x01, 0x14 ; 00A656: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 00A658: provisional 68k ori.b #$0, d1
db 0x01, 0x11 ; 00A65C: provisional 68k btst.l d0, (a1)
db 0x01, 0x14 ; 00A65E: provisional 68k btst.l d0, (a4)
db 0x00, 0x0A ; file 00A660
db 0x01, 0x00 ; 00A662: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x08 ; 00A664: provisional 68k ori.b #$8, d0
db 0x01, 0x14 ; 00A668: provisional 68k btst.l d0, (a4)
db 0x00, 0x0C ; file 00A66A
db 0x01, 0x00 ; 00A66C: provisional 68k btst.l d0, d0
db 0x01, 0x13 ; 00A66E: provisional 68k btst.l d0, (a3)
db 0x01, 0x14 ; 00A670: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x05 ; 00A672: provisional 68k ori.b #$5, d1
db 0x01, 0x14 ; 00A676: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x01 ; 00A678: provisional 68k ori.b #$1, d1
db 0x01, 0x00 ; 00A67C: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x07 ; 00A67E: provisional 68k ori.b #$7, d0
db 0x01, 0x14 ; 00A682: provisional 68k btst.l d0, (a4)
db 0x00, 0x03, 0x01, 0x00 ; 00A684: provisional 68k ori.b #$0, d3
db 0x01, 0x14 ; 00A688: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 00A68A: provisional 68k ori.b #$0, d1
db 0x00, 0x00, 0x00, 0x52 ; 00A68E: provisional 68k ori.b #$52, d0
db 0x01, 0x27 ; 00A692: provisional 68k btst.l d0, -(a7)
db 0x01, 0x14 ; 00A694: provisional 68k btst.l d0, (a4)
db 0x1C, 0xC0 ; 00A696: provisional 68k move.b d0, (a6)+
db 0x01, 0x00 ; 00A698: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 00A69A: provisional 68k btst.l d0, d0
db 0x01, 0x26 ; 00A69C: provisional 68k btst.l d0, -(a6)
db 0x01, 0x14 ; 00A69E: provisional 68k btst.l d0, (a4)
db 0x00, 0x1B, 0x01, 0x00 ; 00A6A0: provisional 68k ori.b #$0, (a3)+
db 0x01, 0x00 ; 00A6A4: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x04 ; 00A6A6: provisional 68k ori.b #$4, d0
db 0x1C, 0xAC, 0x00, 0x0F ; 00A6AA: provisional 68k move.b $f(a4), (a6)
db 0x19, 0xC6 ; file 00A6AE
db 0x01, 0x18 ; 00A6B0: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 00A6B2: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 00A6B4: provisional 68k ori.b #$0, d0
db 0x01, 0x05 ; 00A6B8: provisional 68k btst.l d0, d5
db 0x01, 0x14 ; 00A6BA: provisional 68k btst.l d0, (a4)
db 0x00, 0x64, 0x01, 0x00 ; 00A6BC: provisional 68k ori.w #$100, -(a4)
db 0x00, 0x07, 0x01, 0x14 ; 00A6C0: provisional 68k ori.b #$14, d7
db 0x00, 0x06, 0x01, 0x00 ; 00A6C4: provisional 68k ori.b #$0, d6
db 0x01, 0x13 ; 00A6C8: provisional 68k btst.l d0, (a3)
db 0x01, 0x14 ; 00A6CA: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x05 ; 00A6CC: provisional 68k ori.b #$5, d1
db 0x01, 0x14 ; 00A6D0: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x01 ; 00A6D2: provisional 68k ori.b #$1, d0
db 0x01, 0x00 ; 00A6D6: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x08 ; 00A6D8: provisional 68k ori.b #$8, d0
db 0x01, 0x14 ; 00A6DC: provisional 68k btst.l d0, (a4)
db 0x00, 0x07, 0x01, 0x00 ; 00A6DE: provisional 68k ori.b #$0, d7
db 0x01, 0x14 ; 00A6E2: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 00A6E4: provisional 68k ori.b #$0, d1
db 0x00, 0x00, 0x00, 0x07 ; 00A6E8: provisional 68k ori.b #$7, d0
db 0x01, 0x14 ; 00A6EC: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 00A6EE: provisional 68k ori.b #$0, d2
db 0x01, 0x14 ; 00A6F2: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 00A6F4: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x53 ; 00A6F8: provisional 68k ori.b #$53, d0
db 0x00, 0x00, 0x00, 0x54 ; 00A6FC: provisional 68k ori.b #$54, d0
db 0x01, 0x19 ; 00A700: provisional 68k btst.l d0, (a1)+
db 0x01, 0x14 ; 00A702: provisional 68k btst.l d0, (a4)
db 0x00, 0x06, 0x01, 0x00 ; 00A704: provisional 68k ori.b #$0, d6
db 0x01, 0x00 ; 00A708: provisional 68k btst.l d0, d0
db 0x01, 0x19 ; 00A70A: provisional 68k btst.l d0, (a1)+
db 0x01, 0x14 ; 00A70C: provisional 68k btst.l d0, (a4)
db 0x00, 0x07, 0x01, 0x00 ; 00A70E: provisional 68k ori.b #$0, d7
db 0x01, 0x00 ; 00A712: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x0F ; 00A714: provisional 68k ori.b #$f, d0
db 0x17, 0xEA ; file 00A718
db 0x01, 0x19 ; 00A71A: provisional 68k btst.l d0, (a1)+
db 0x01, 0x14 ; 00A71C: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 00A71E
db 0x01, 0x0D, 0x01, 0x14 ; 00A720: provisional 68k movep.w $114(a5), d0
db 0x00, 0x00, 0x01, 0x00 ; 00A724: provisional 68k ori.b #$0, d0
db 0x01, 0x05 ; 00A728: provisional 68k btst.l d0, d5
db 0x01, 0x14 ; 00A72A: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 00A72C: provisional 68k ori.b #$0, d0
db 0x00, 0x08 ; file 00A730
db 0x01, 0x14 ; 00A732: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 00A734
db 0x01, 0x0D, 0x01, 0x14 ; 00A736: provisional 68k movep.w $114(a5), d0
db 0x00, 0x00, 0x01, 0x00 ; 00A73A: provisional 68k ori.b #$0, d0
db 0x01, 0x19 ; 00A73E: provisional 68k btst.l d0, (a1)+
db 0x01, 0x14 ; 00A740: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 00A742
db 0x01, 0x0D, 0x01, 0x14 ; 00A744: provisional 68k movep.w $114(a5), d0
db 0x00, 0x00, 0x01, 0x00 ; 00A748: provisional 68k ori.b #$0, d0
db 0x01, 0x00 ; 00A74C: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x0F ; 00A74E: provisional 68k ori.b #$f, d0
db 0x18, 0x1A ; 00A752: provisional 68k move.b (a2)+, d4
db 0x01, 0x19 ; 00A754: provisional 68k btst.l d0, (a1)+
db 0x01, 0x14 ; 00A756: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 00A758
db 0x01, 0x0D, 0x01, 0x14 ; 00A75A: provisional 68k movep.w $114(a5), d0
db 0x00, 0x00, 0x01, 0x00 ; 00A75E: provisional 68k ori.b #$0, d0
db 0x01, 0x05 ; 00A762: provisional 68k btst.l d0, d5
db 0x01, 0x14 ; 00A764: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 00A766: provisional 68k ori.b #$0, d0
db 0x00, 0x08 ; file 00A76A
db 0x01, 0x14 ; 00A76C: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 00A76E
db 0x01, 0x0D, 0x01, 0x14 ; 00A770: provisional 68k movep.w $114(a5), d0
db 0x00, 0x00, 0x01, 0x00 ; 00A774: provisional 68k ori.b #$0, d0
db 0x01, 0x14 ; 00A778: provisional 68k btst.l d0, (a4)
db 0x00, 0x38, 0x01, 0x00, 0x00, 0x00 ; 00A77A: provisional 68k ori.b #$0, $0.w
db 0x00, 0x0F, 0x18, 0x72 ; file 00A780
db 0x01, 0x19 ; 00A784: provisional 68k btst.l d0, (a1)+
db 0x01, 0x14 ; 00A786: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 00A788
db 0x01, 0x0D, 0x01, 0x14 ; 00A78A: provisional 68k movep.w $114(a5), d0
db 0x00, 0x00, 0x01, 0x00 ; 00A78E: provisional 68k ori.b #$0, d0
db 0x01, 0x08, 0x01, 0x14 ; 00A792: provisional 68k movep.w $114(a0), d0
db 0x01, 0xFF ; file 00A796
db 0x01, 0x00 ; 00A798: provisional 68k btst.l d0, d0
db 0x00, 0x11, 0x01, 0x14 ; 00A79A: provisional 68k ori.b #$14, (a1)
db 0x00, 0x1B, 0x01, 0x0D ; 00A79E: provisional 68k ori.b #$d, (a3)+
db 0x01, 0x14 ; 00A7A2: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 00A7A4: provisional 68k ori.b #$0, d2
db 0x01, 0x14 ; 00A7A8: provisional 68k btst.l d0, (a4)
db 0x61, 0x30 ; 00A7AA: provisional 68k bsr.b $a7dc
db 0x01, 0x0E, 0x01, 0x14 ; 00A7AC: provisional 68k movep.w $114(a6), d0
db 0x00, 0x30, 0x01, 0x00, 0x00, 0x07 ; 00A7B0: provisional 68k ori.b #$0, $7(a0, d0.w)
db 0x01, 0x14 ; 00A7B6: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 00A7B8: provisional 68k ori.b #$0, d1
db 0x01, 0x19 ; 00A7BC: provisional 68k btst.l d0, (a1)+
db 0x01, 0x14 ; 00A7BE: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 00A7C0
db 0x01, 0x0D, 0x01, 0x14 ; 00A7C2: provisional 68k movep.w $114(a5), d0
db 0x00, 0x00, 0x01, 0x00 ; 00A7C6: provisional 68k ori.b #$0, d0
db 0x01, 0x0E, 0x01, 0x14 ; 00A7CA: provisional 68k movep.w $114(a6), d0
db 0x02, 0x00, 0x01, 0x00 ; 00A7CE: provisional 68k andi.b #$0, d0
db 0x00, 0x00, 0x00, 0x04 ; 00A7D2: provisional 68k ori.b #$4, d0
db 0x18, 0xF8, 0x00, 0x0F ; 00A7D6: provisional 68k move.b $f.w, (a4)+
db 0x18, 0xCA ; file 00A7DA
