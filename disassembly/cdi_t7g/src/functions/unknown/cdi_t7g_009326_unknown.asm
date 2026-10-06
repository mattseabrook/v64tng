; Provisional entry from module header or linear decoded direct call; slice end is NOT a proved function end.
; File offsets 009326–0096CB, inclusive.
cdi_t7g_entry_009326:
db 0x00, 0x0F ; file 009326
db 0x12, 0xA0 ; 009328: provisional 68k move.b -(a0), (a1)
db 0x01, 0x19 ; 00932A: provisional 68k btst.l d0, (a1)+
db 0x01, 0x14 ; 00932C: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 00932E
db 0x01, 0x0D, 0x01, 0x18 ; 009330: provisional 68k movep.w $118(a5), d0
db 0x01, 0x14 ; 009334: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 009336: provisional 68k ori.b #$0, d2
db 0x01, 0x00 ; 00933A: provisional 68k btst.l d0, d0
db 0x01, 0x08, 0x01, 0x14 ; 00933C: provisional 68k movep.w $114(a0), d0
db 0x00, 0xFF ; file 009340
db 0x01, 0x00 ; 009342: provisional 68k btst.l d0, d0
db 0x00, 0x11, 0x01, 0x14 ; 009344: provisional 68k ori.b #$14, (a1)
db 0x00, 0x1B, 0x01, 0x0D ; 009348: provisional 68k ori.b #$d, (a3)+
db 0x01, 0x14 ; 00934C: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 00934E: provisional 68k ori.b #$0, d2
db 0x01, 0x14 ; 009352: provisional 68k btst.l d0, (a4)
db 0x62, 0x30 ; 009354: provisional 68k bhi.b $9386
db 0x01, 0x0E, 0x01, 0x14 ; 009356: provisional 68k movep.w $114(a6), d0
db 0x00, 0x30, 0x01, 0x00, 0x00, 0x07 ; 00935A: provisional 68k ori.b #$0, $7(a0, d0.w)
db 0x01, 0x14 ; 009360: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 009362: provisional 68k ori.b #$0, d1
db 0x01, 0x19 ; 009366: provisional 68k btst.l d0, (a1)+
db 0x01, 0x14 ; 009368: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 00936A
db 0x01, 0x0D, 0x01, 0x18 ; 00936C: provisional 68k movep.w $118(a5), d0
db 0x01, 0x14 ; 009370: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 009372: provisional 68k ori.b #$0, d2
db 0x01, 0x00 ; 009376: provisional 68k btst.l d0, d0
db 0x01, 0x0E, 0x01, 0x14 ; 009378: provisional 68k movep.w $114(a6), d0
db 0x01, 0x00 ; 00937C: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 00937E: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x04 ; 009380: provisional 68k ori.b #$4, d0
db 0x12, 0xD2 ; 009384: provisional 68k move.b (a2), (a1)+
db 0x00, 0x11, 0x01, 0x14 ; 009386: provisional 68k ori.b #$14, (a1)
db 0x00, 0x1B, 0x01, 0x0D ; 00938A: provisional 68k ori.b #$d, (a3)+
db 0x01, 0x14 ; 00938E: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 009390: provisional 68k ori.b #$0, d2
db 0x01, 0x14 ; 009394: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 009396: provisional 68k ori.b #$0, d0
db 0x00, 0x07, 0x01, 0x14 ; 00939A: provisional 68k ori.b #$14, d7
db 0x00, 0x01, 0x01, 0x00 ; 00939E: provisional 68k ori.b #$0, d1
db 0x01, 0x19 ; 0093A2: provisional 68k btst.l d0, (a1)+
db 0x01, 0x14 ; 0093A4: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 0093A6
db 0x01, 0x0D, 0x01, 0x18 ; 0093A8: provisional 68k movep.w $118(a5), d0
db 0x01, 0x14 ; 0093AC: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 0093AE: provisional 68k ori.b #$0, d2
db 0x01, 0x00 ; 0093B2: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 0093B4: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x0F ; 0093B6: provisional 68k ori.b #$f, d0
db 0x13, 0x1A ; 0093BA: provisional 68k move.b (a2)+, -(a1)
db 0x01, 0x18 ; 0093BC: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 0093BE: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 0093C0: provisional 68k ori.b #$0, d1
db 0x01, 0x07 ; 0093C4: provisional 68k btst.l d0, d7
db 0x01, 0x14 ; 0093C6: provisional 68k btst.l d0, (a4)
db 0x00, 0x0A ; file 0093C8
db 0x01, 0x00 ; 0093CA: provisional 68k btst.l d0, d0
db 0x00, 0x11, 0x01, 0x14 ; 0093CC: provisional 68k ori.b #$14, (a1)
db 0x00, 0x1B, 0x01, 0x0D ; 0093D0: provisional 68k ori.b #$d, (a3)+
db 0x01, 0x14 ; 0093D4: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 0093D6: provisional 68k ori.b #$0, d1
db 0x01, 0x14 ; 0093DA: provisional 68k btst.l d0, (a4)
db 0x30, 0x30, 0x01, 0x0D ; 0093DC: provisional 68k move.w ([a0], d0.w), d0
db 0x01, 0x13 ; 0093E0: provisional 68k btst.l d0, (a3)
db 0x01, 0x14 ; 0093E2: provisional 68k btst.l d0, (a4)
db 0x01, 0x00 ; 0093E4: provisional 68k btst.l d0, d0
db 0x01, 0x0F, 0x01, 0x18 ; 0093E6: provisional 68k movep.w $118(a7), d0
db 0x01, 0x14 ; 0093EA: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 0093EC: provisional 68k ori.b #$0, d1
db 0x01, 0x01 ; 0093F0: provisional 68k btst.l d0, d1
db 0x01, 0x0E, 0x01, 0x14 ; 0093F2: provisional 68k movep.w $114(a6), d0
db 0x00, 0x30, 0x01, 0x00, 0x00, 0x00 ; 0093F6: provisional 68k ori.b #$0, (a0, d0.w)
db 0x00, 0x04, 0x13, 0x5A ; 0093FC: provisional 68k ori.b #$5a, d4
db 0x00, 0x11, 0x01, 0x14 ; 009400: provisional 68k ori.b #$14, (a1)
db 0x00, 0x1B, 0x01, 0x0D ; 009404: provisional 68k ori.b #$d, (a3)+
db 0x01, 0x14 ; 009408: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 00940A: provisional 68k ori.b #$0, d1
db 0x01, 0x14 ; 00940E: provisional 68k btst.l d0, (a4)
db 0x30, 0x30, 0x01, 0x0D ; 009410: provisional 68k move.w ([a0], d0.w), d0
db 0x01, 0x14 ; 009414: provisional 68k btst.l d0, (a4)
db 0x01, 0x00 ; 009416: provisional 68k btst.l d0, d0
db 0x01, 0x0F, 0x01, 0x13 ; 009418: provisional 68k movep.w $113(a7), d0
db 0x01, 0x18 ; 00941C: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 00941E: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 009420: provisional 68k ori.b #$0, d1
db 0x01, 0x10 ; 009424: provisional 68k btst.l d0, (a0)
db 0x01, 0x14 ; 009426: provisional 68k btst.l d0, (a4)
db 0x00, 0x0A ; file 009428
db 0x01, 0x01 ; 00942A: provisional 68k btst.l d0, d1
db 0x01, 0x0D, 0x01, 0x18 ; 00942C: provisional 68k movep.w $118(a5), d0
db 0x01, 0x14 ; 009430: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 009432: provisional 68k ori.b #$0, d1
db 0x01, 0x11 ; 009436: provisional 68k btst.l d0, (a1)
db 0x01, 0x14 ; 009438: provisional 68k btst.l d0, (a4)
db 0x00, 0x0A ; file 00943A
db 0x01, 0x00 ; 00943C: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x08 ; 00943E: provisional 68k ori.b #$8, d0
db 0x01, 0x14 ; 009442: provisional 68k btst.l d0, (a4)
db 0x00, 0x0C ; file 009444
db 0x01, 0x00 ; 009446: provisional 68k btst.l d0, d0
db 0x01, 0x13 ; 009448: provisional 68k btst.l d0, (a3)
db 0x01, 0x14 ; 00944A: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x05 ; 00944C: provisional 68k ori.b #$5, d1
db 0x01, 0x14 ; 009450: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x01 ; 009452: provisional 68k ori.b #$1, d1
db 0x01, 0x00 ; 009456: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x07 ; 009458: provisional 68k ori.b #$7, d0
db 0x01, 0x14 ; 00945C: provisional 68k btst.l d0, (a4)
db 0x00, 0x03, 0x01, 0x00 ; 00945E: provisional 68k ori.b #$0, d3
db 0x01, 0x14 ; 009462: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 009464: provisional 68k ori.b #$0, d1
db 0x00, 0x00, 0x00, 0x52 ; 009468: provisional 68k ori.b #$52, d0
db 0x01, 0x27 ; 00946C: provisional 68k btst.l d0, -(a7)
db 0x01, 0x14 ; 00946E: provisional 68k btst.l d0, (a4)
db 0x1C, 0xD0 ; 009470: provisional 68k move.b (a0), (a6)+
db 0x01, 0x00 ; 009472: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 009474: provisional 68k btst.l d0, d0
db 0x01, 0x26 ; 009476: provisional 68k btst.l d0, -(a6)
db 0x01, 0x14 ; 009478: provisional 68k btst.l d0, (a4)
db 0x00, 0x1B, 0x01, 0x00 ; 00947A: provisional 68k ori.b #$0, (a3)+
db 0x01, 0x00 ; 00947E: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x04 ; 009480: provisional 68k ori.b #$4, d0
db 0x1C, 0xAC, 0x00, 0x0F ; 009484: provisional 68k move.b $f(a4), (a6)
db 0x14, 0x18 ; 009488: provisional 68k move.b (a0)+, d2
db 0x01, 0x18 ; 00948A: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 00948C: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 00948E: provisional 68k ori.b #$0, d0
db 0x01, 0x05 ; 009492: provisional 68k btst.l d0, d5
db 0x01, 0x14 ; 009494: provisional 68k btst.l d0, (a4)
db 0x00, 0x5C, 0x01, 0x00 ; 009496: provisional 68k ori.w #$100, (a4)+
db 0x00, 0x0F ; file 00949A
db 0x14, 0x14 ; 00949C: provisional 68k move.b (a4), d2
db 0x01, 0x18 ; 00949E: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 0094A0: provisional 68k btst.l d0, (a4)
db 0x00, 0x06, 0x01, 0x00 ; 0094A2: provisional 68k ori.b #$0, d6
db 0x01, 0x05 ; 0094A6: provisional 68k btst.l d0, d5
db 0x01, 0x13 ; 0094A8: provisional 68k btst.l d0, (a3)
db 0x01, 0x14 ; 0094AA: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x05 ; 0094AC: provisional 68k ori.b #$5, d1
db 0x01, 0x14 ; 0094B0: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x01 ; 0094B2: provisional 68k ori.b #$1, d0
db 0x01, 0x00 ; 0094B6: provisional 68k btst.l d0, d0
db 0x00, 0x07, 0x01, 0x14 ; 0094B8: provisional 68k ori.b #$14, d7
db 0x00, 0x03, 0x01, 0x00 ; 0094BC: provisional 68k ori.b #$0, d3
db 0x01, 0x14 ; 0094C0: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 0094C2: provisional 68k ori.b #$0, d1
db 0x00, 0x00, 0x00, 0x08 ; 0094C6: provisional 68k ori.b #$8, d0
db 0x01, 0x14 ; 0094CA: provisional 68k btst.l d0, (a4)
db 0x00, 0x0C ; file 0094CC
db 0x01, 0x00 ; 0094CE: provisional 68k btst.l d0, d0
db 0x01, 0x13 ; 0094D0: provisional 68k btst.l d0, (a3)
db 0x01, 0x14 ; 0094D2: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x05 ; 0094D4: provisional 68k ori.b #$5, d1
db 0x01, 0x14 ; 0094D8: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x01 ; 0094DA: provisional 68k ori.b #$1, d1
db 0x01, 0x00 ; 0094DE: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x52 ; 0094E0: provisional 68k ori.b #$52, d0
db 0x01, 0x27 ; 0094E4: provisional 68k btst.l d0, -(a7)
db 0x01, 0x14 ; 0094E6: provisional 68k btst.l d0, (a4)
db 0x1C, 0xC8 ; file 0094E8
db 0x01, 0x00 ; 0094EA: provisional 68k btst.l d0, d0
db 0x01, 0x00 ; 0094EC: provisional 68k btst.l d0, d0
db 0x01, 0x26 ; 0094EE: provisional 68k btst.l d0, -(a6)
db 0x01, 0x14 ; 0094F0: provisional 68k btst.l d0, (a4)
db 0x00, 0x1B, 0x01, 0x00 ; 0094F2: provisional 68k ori.b #$0, (a3)+
db 0x01, 0x00 ; 0094F6: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x04 ; 0094F8: provisional 68k ori.b #$4, d0
db 0x1C, 0xAC, 0x00, 0x0F ; 0094FC: provisional 68k move.b $f(a4), (a6)
db 0x14, 0xC0 ; 009500: provisional 68k move.b d0, (a2)+
db 0x01, 0x18 ; 009502: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 009504: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 009506: provisional 68k ori.b #$0, d0
db 0x01, 0x05 ; 00950A: provisional 68k btst.l d0, d5
db 0x01, 0x14 ; 00950C: provisional 68k btst.l d0, (a4)
db 0x00, 0x5D, 0x01, 0x00 ; 00950E: provisional 68k ori.w #$100, (a5)+
db 0x00, 0x08 ; file 009512
db 0x01, 0x14 ; 009514: provisional 68k btst.l d0, (a4)
db 0x00, 0x0C ; file 009516
db 0x01, 0x00 ; 009518: provisional 68k btst.l d0, d0
db 0x01, 0x13 ; 00951A: provisional 68k btst.l d0, (a3)
db 0x01, 0x14 ; 00951C: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x05 ; 00951E: provisional 68k ori.b #$5, d1
db 0x01, 0x14 ; 009522: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x01 ; 009524: provisional 68k ori.b #$1, d0
db 0x01, 0x00 ; 009528: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x07 ; 00952A: provisional 68k ori.b #$7, d0
db 0x01, 0x14 ; 00952E: provisional 68k btst.l d0, (a4)
db 0x00, 0x03, 0x01, 0x00 ; 009530: provisional 68k ori.b #$0, d3
db 0x01, 0x14 ; 009534: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 009536: provisional 68k ori.b #$0, d0
db 0x00, 0x07, 0x01, 0x14 ; 00953A: provisional 68k ori.b #$14, d7
db 0x00, 0x02, 0x01, 0x00 ; 00953E: provisional 68k ori.b #$0, d2
db 0x01, 0x14 ; 009542: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 009544: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x0F ; 009548: provisional 68k ori.b #$f, d0
db 0x14, 0xA2 ; 00954C: provisional 68k move.b -(a2), (a2)
db 0x01, 0x18 ; 00954E: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 009550: provisional 68k btst.l d0, (a4)
db 0x00, 0x05, 0x01, 0x00 ; 009552: provisional 68k ori.b #$0, d5
db 0x01, 0x05 ; 009556: provisional 68k btst.l d0, d5
db 0x01, 0x14 ; 009558: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 00955A: provisional 68k ori.b #$0, d1
db 0x00, 0x07, 0x01, 0x14 ; 00955E: provisional 68k ori.b #$14, d7
db 0x00, 0x05, 0x01, 0x00 ; 009562: provisional 68k ori.b #$0, d5
db 0x01, 0x14 ; 009566: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 009568: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x15 ; 00956C: provisional 68k ori.b #$15, d0
db 0x01, 0x18 ; 009570: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 009572: provisional 68k btst.l d0, (a4)
db 0x00, 0x04, 0x01, 0x00 ; 009574: provisional 68k ori.b #$0, d4
db 0x01, 0x00 ; 009578: provisional 68k btst.l d0, d0
db 0x01, 0x14 ; 00957A: provisional 68k btst.l d0, (a4)
db 0x00, 0x14, 0x01, 0x00 ; 00957C: provisional 68k ori.b #$0, (a4)
db 0x01, 0x14 ; 009580: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 009582: provisional 68k ori.b #$0, d0
db 0x00, 0x00, 0x00, 0x07 ; 009586: provisional 68k ori.b #$7, d0
db 0x01, 0x14 ; 00958A: provisional 68k btst.l d0, (a4)
db 0x00, 0x06, 0x01, 0x00 ; 00958C: provisional 68k ori.b #$0, d6
db 0x01, 0x13 ; 009590: provisional 68k btst.l d0, (a3)
db 0x01, 0x14 ; 009592: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x05 ; 009594: provisional 68k ori.b #$5, d1
db 0x01, 0x14 ; 009598: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x01 ; 00959A: provisional 68k ori.b #$1, d1
db 0x01, 0x00 ; 00959E: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x04 ; 0095A0: provisional 68k ori.b #$4, d0
db 0x1C, 0xAC, 0x00, 0x0F ; 0095A4: provisional 68k move.b $f(a4), (a6)
db 0x14, 0xDA ; 0095A8: provisional 68k move.b (a2)+, (a2)+
db 0x01, 0x18 ; 0095AA: provisional 68k btst.l d0, (a0)+
db 0x01, 0x14 ; 0095AC: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 0095AE: provisional 68k ori.b #$0, d0
db 0x01, 0x05 ; 0095B2: provisional 68k btst.l d0, d5
db 0x01, 0x14 ; 0095B4: provisional 68k btst.l d0, (a4)
db 0x00, 0x60, 0x01, 0x00 ; 0095B6: provisional 68k ori.w #$100, -(a0)
db 0x00, 0x00, 0x00, 0x04 ; 0095BA: provisional 68k ori.b #$4, d0
db 0x1C, 0xAC, 0x00, 0x0F ; 0095BE: provisional 68k move.b $f(a4), (a6)
db 0x17, 0x46, 0x01, 0x18 ; 0095C2: provisional 68k move.b d6, $118(a3)
db 0x01, 0x14 ; 0095C6: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 0095C8: provisional 68k ori.b #$0, d0
db 0x01, 0x05 ; 0095CC: provisional 68k btst.l d0, d5
db 0x01, 0x14 ; 0095CE: provisional 68k btst.l d0, (a4)
db 0x00, 0x61, 0x01, 0x00 ; 0095D0: provisional 68k ori.w #$100, -(a1)
db 0x00, 0x0F ; file 0095D4
db 0x17, 0x42, 0x01, 0x18 ; 0095D6: provisional 68k move.b d2, $118(a3)
db 0x01, 0x14 ; 0095DA: provisional 68k btst.l d0, (a4)
db 0x00, 0x06, 0x01, 0x00 ; 0095DC: provisional 68k ori.b #$0, d6
db 0x01, 0x05 ; 0095E0: provisional 68k btst.l d0, d5
db 0x01, 0x13 ; 0095E2: provisional 68k btst.l d0, (a3)
db 0x01, 0x14 ; 0095E4: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x05 ; 0095E6: provisional 68k ori.b #$5, d1
db 0x01, 0x14 ; 0095EA: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x01 ; 0095EC: provisional 68k ori.b #$1, d0
db 0x01, 0x00 ; 0095F0: provisional 68k btst.l d0, d0
db 0x00, 0x0F, 0x15, 0x4E ; file 0095F2
db 0x01, 0x19 ; 0095F6: provisional 68k btst.l d0, (a1)+
db 0x01, 0x14 ; 0095F8: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 0095FA
db 0x01, 0x0D, 0x01, 0x18 ; 0095FC: provisional 68k movep.w $118(a5), d0
db 0x01, 0x14 ; 009600: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 009602: provisional 68k ori.b #$0, d2
db 0x01, 0x00 ; 009606: provisional 68k btst.l d0, d0
db 0x01, 0x05 ; 009608: provisional 68k btst.l d0, d5
db 0x01, 0x14 ; 00960A: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 00960C: provisional 68k ori.b #$0, d0
db 0x00, 0x08 ; file 009610
db 0x01, 0x14 ; 009612: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 009614
db 0x01, 0x0D, 0x01, 0x18 ; 009616: provisional 68k movep.w $118(a5), d0
db 0x01, 0x14 ; 00961A: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 00961C: provisional 68k ori.b #$0, d2
db 0x01, 0x00 ; 009620: provisional 68k btst.l d0, d0
db 0x01, 0x19 ; 009622: provisional 68k btst.l d0, (a1)+
db 0x01, 0x14 ; 009624: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 009626
db 0x01, 0x0D, 0x01, 0x14 ; 009628: provisional 68k movep.w $114(a5), d0
db 0x00, 0x00, 0x01, 0x00 ; 00962C: provisional 68k ori.b #$0, d0
db 0x01, 0x00 ; 009630: provisional 68k btst.l d0, d0
db 0x00, 0x00, 0x00, 0x0F ; 009632: provisional 68k ori.b #$f, d0
db 0x15, 0x86, 0x01, 0x19 ; 009636: provisional 68k move.b d6, ([a2, d0.w])
db 0x01, 0x14 ; 00963A: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 00963C
db 0x01, 0x0D, 0x01, 0x18 ; 00963E: provisional 68k movep.w $118(a5), d0
db 0x01, 0x14 ; 009642: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 009644: provisional 68k ori.b #$0, d2
db 0x01, 0x00 ; 009648: provisional 68k btst.l d0, d0
db 0x01, 0x05 ; 00964A: provisional 68k btst.l d0, d5
db 0x01, 0x14 ; 00964C: provisional 68k btst.l d0, (a4)
db 0x00, 0x00, 0x01, 0x00 ; 00964E: provisional 68k ori.b #$0, d0
db 0x00, 0x08 ; file 009652
db 0x01, 0x14 ; 009654: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 009656
db 0x01, 0x0D, 0x01, 0x18 ; 009658: provisional 68k movep.w $118(a5), d0
db 0x01, 0x14 ; 00965C: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 00965E: provisional 68k ori.b #$0, d2
db 0x01, 0x00 ; 009662: provisional 68k btst.l d0, d0
db 0x01, 0x14 ; 009664: provisional 68k btst.l d0, (a4)
db 0x00, 0x38, 0x01, 0x00, 0x00, 0x00 ; 009666: provisional 68k ori.b #$0, $0.w
db 0x00, 0x0F, 0x15, 0xE6 ; file 00966C
db 0x01, 0x19 ; 009670: provisional 68k btst.l d0, (a1)+
db 0x01, 0x14 ; 009672: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 009674
db 0x01, 0x0D, 0x01, 0x18 ; 009676: provisional 68k movep.w $118(a5), d0
db 0x01, 0x14 ; 00967A: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 00967C: provisional 68k ori.b #$0, d2
db 0x01, 0x00 ; 009680: provisional 68k btst.l d0, d0
db 0x01, 0x08, 0x01, 0x14 ; 009682: provisional 68k movep.w $114(a0), d0
db 0x01, 0xFF ; file 009686
db 0x01, 0x00 ; 009688: provisional 68k btst.l d0, d0
db 0x00, 0x11, 0x01, 0x14 ; 00968A: provisional 68k ori.b #$14, (a1)
db 0x00, 0x1B, 0x01, 0x0D ; 00968E: provisional 68k ori.b #$d, (a3)+
db 0x01, 0x14 ; 009692: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 009694: provisional 68k ori.b #$0, d2
db 0x01, 0x14 ; 009698: provisional 68k btst.l d0, (a4)
db 0x61, 0x30 ; 00969A: provisional 68k bsr.b $96cc
db 0x01, 0x0E, 0x01, 0x14 ; 00969C: provisional 68k movep.w $114(a6), d0
db 0x00, 0x30, 0x01, 0x00, 0x00, 0x07 ; 0096A0: provisional 68k ori.b #$0, $7(a0, d0.w)
db 0x01, 0x14 ; 0096A6: provisional 68k btst.l d0, (a4)
db 0x00, 0x01, 0x01, 0x00 ; 0096A8: provisional 68k ori.b #$0, d1
db 0x01, 0x19 ; 0096AC: provisional 68k btst.l d0, (a1)+
db 0x01, 0x14 ; 0096AE: provisional 68k btst.l d0, (a4)
db 0x00, 0x09 ; file 0096B0
db 0x01, 0x0D, 0x01, 0x18 ; 0096B2: provisional 68k movep.w $118(a5), d0
db 0x01, 0x14 ; 0096B6: provisional 68k btst.l d0, (a4)
db 0x00, 0x02, 0x01, 0x00 ; 0096B8: provisional 68k ori.b #$0, d2
db 0x01, 0x00 ; 0096BC: provisional 68k btst.l d0, d0
db 0x01, 0x0E, 0x01, 0x14 ; 0096BE: provisional 68k movep.w $114(a6), d0
db 0x02, 0x00, 0x01, 0x00 ; 0096C2: provisional 68k andi.b #$0, d0
db 0x00, 0x00, 0x00, 0x04 ; 0096C6: provisional 68k ori.b #$4, d0
db 0x16, 0x78 ; file 0096CA
