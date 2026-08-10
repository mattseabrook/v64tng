; T7G/SCRIPT.GRV
; size=16659 sha256=17eefc60a0853660ab191c33a778ed16961aa0f88d1ff0bdf5deb96f64b347bf
; instructions=4599 input_loops=124

0000  38                                     RESTORESTACK
0001  01                                     RESERVED_01
0002  18 F1 02                               CALL                          target=0x02F1
0005  31 63 00 00 00                         MIDI_CONTROL                  value=0x0063, time=0x0000
000A  4A 50 00                               MIDI_DRIVER_PARAM             value=0x0050
; Case-sensitive main-menu cheat state machine:
; "Zaphod Beeblebrox" (including the space and capital Z/B).
; Successful keys advance v[0x107] from 49; the final x sets it to 240.
000D  16 07 01 E1                            LOADSTRING                    dst=v[0x107], values=[49]
0011  16 08 01 B0                            LOADSTRING                    dst=v[0x108], values=[0]
0015  3D                                     RESETVARS
0016  16 09 01 B0                            LOADSTRING                    dst=v[0x109], values=[0]
001A  02 39 4C                               PLAYSONG                      ref=0x4C39 (XMI[57]=gu61.xmi)
001D  1A 00 01 B0 29 00                      STRCMP_NE_JMP                 start=v[0x100], values=[0], target=0x0029
0023  08 0C 4C                               SETBACKGROUNDSONG             ref=0x4C0C (XMI[12]=gu16.xmi)
0026  15 2C 00                               JMP                           target=0x002C
0029  08 00 4C                               SETBACKGROUNDSONG             ref=0x4C00 (XMI[0]=agu16.xmi)
002C  23 05 01 B0 38 00                      STRCMP_EQ_JMP                 start=v[0x105], values=[0], target=0x0038
0032  4B 00                                  SET_VIDEO_MODE                value=0x00
0034  16 09 01 B1                            LOADSTRING                    dst=v[0x109], values=[1]
0038  18 67 03                               CALL                          target=0x0367
003B  09 18 24                               VIDEOREF                      ref=0x2418 (INTRO[24]=sphinx.vdx)
003E  0A                                     VIDEOFLAG5_ON
003F  09 1F 24                               VIDEOREF                      ref=0x241F (INTRO[31]=sphmen1i.vdx)
0042  0A                                     VIDEOFLAG5_ON
0043  09 25 24                               VIDEOREF                      ref=0x2425 (INTRO[37]=sphprm1i.vdx)
; Both retail players probe ten slots here (DOS: save.0..save.9,
; Win95: st7g.0..st7g.9).  Slot flags go to v[0]..v[9], and v[0x104]
; receives the valid-save count.
0046  3C                                     CHECK_VALID_SAVES
0047  07                                     VIDEOFLAG7_ON
0048  46                                     RESOURCE_CONTEXT_SAVE
0049  1A 04 01 B0 55 00                      STRCMP_NE_JMP                 start=v[0x104], values=[0], target=0x0055
; No saves: "Welcome to my house."
004F  09 A9 50                               VIDEOREF                      ref=0x50A9 (GAMWAV[169]=gen_s_18.vdx)
0052  15 58 00                               JMP                           target=0x0058
; One or more saves: "Back for more?"
0055  09 AA 50                               VIDEOREF                      ref=0x50AA (GAMWAV[170]=gen_s_19.vdx)
0058  47                                     RESOURCE_CONTEXT_RESTORE
0059  0B                                     INPUTLOOPSTART
005A  1A 07 01 E1 64 00                      STRCMP_NE_JMP                 start=v[0x107], values=[49], target=0x0064
0060  0C 5A 65 01                            KEYACTION                     key=0x5A, target=0x0165
0064  1A 07 01 E2 6E 00                      STRCMP_NE_JMP                 start=v[0x107], values=[50], target=0x006E
006A  0C 61 65 01                            KEYACTION                     key=0x61, target=0x0165
006E  1A 07 01 E3 78 00                      STRCMP_NE_JMP                 start=v[0x107], values=[51], target=0x0078
0074  0C 70 65 01                            KEYACTION                     key=0x70, target=0x0165
0078  1A 07 01 E4 82 00                      STRCMP_NE_JMP                 start=v[0x107], values=[52], target=0x0082
007E  0C 68 65 01                            KEYACTION                     key=0x68, target=0x0165
0082  1A 07 01 E5 8C 00                      STRCMP_NE_JMP                 start=v[0x107], values=[53], target=0x008C
0088  0C 6F 65 01                            KEYACTION                     key=0x6F, target=0x0165
008C  1A 07 01 E6 96 00                      STRCMP_NE_JMP                 start=v[0x107], values=[54], target=0x0096
0092  0C 64 65 01                            KEYACTION                     key=0x64, target=0x0165
0096  1A 07 01 E7 A0 00                      STRCMP_NE_JMP                 start=v[0x107], values=[55], target=0x00A0
009C  0C 20 65 01                            KEYACTION                     key=0x20, target=0x0165
00A0  1A 07 01 E8 AA 00                      STRCMP_NE_JMP                 start=v[0x107], values=[56], target=0x00AA
00A6  0C 42 65 01                            KEYACTION                     key=0x42, target=0x0165
00AA  1A 07 01 E9 B4 00                      STRCMP_NE_JMP                 start=v[0x107], values=[57], target=0x00B4
00B0  0C 65 65 01                            KEYACTION                     key=0x65, target=0x0165
00B4  1A 07 01 EA BE 00                      STRCMP_NE_JMP                 start=v[0x107], values=[58], target=0x00BE
00BA  0C 65 65 01                            KEYACTION                     key=0x65, target=0x0165
00BE  1A 07 01 EB C8 00                      STRCMP_NE_JMP                 start=v[0x107], values=[59], target=0x00C8
00C4  0C 62 65 01                            KEYACTION                     key=0x62, target=0x0165
00C8  1A 07 01 EC D2 00                      STRCMP_NE_JMP                 start=v[0x107], values=[60], target=0x00D2
00CE  0C 6C 65 01                            KEYACTION                     key=0x6C, target=0x0165
00D2  1A 07 01 ED DC 00                      STRCMP_NE_JMP                 start=v[0x107], values=[61], target=0x00DC
00D8  0C 65 65 01                            KEYACTION                     key=0x65, target=0x0165
00DC  1A 07 01 EE E6 00                      STRCMP_NE_JMP                 start=v[0x107], values=[62], target=0x00E6
00E2  0C 62 65 01                            KEYACTION                     key=0x62, target=0x0165
00E6  1A 07 01 EF F0 00                      STRCMP_NE_JMP                 start=v[0x107], values=[63], target=0x00F0
00EC  0C 72 65 01                            KEYACTION                     key=0x72, target=0x0165
00F0  1A 07 01 F0 FA 00                      STRCMP_NE_JMP                 start=v[0x107], values=[64], target=0x00FA
00F6  0C 6F 65 01                            KEYACTION                     key=0x6F, target=0x0165
00FA  1A 07 01 F1 04 01                      STRCMP_NE_JMP                 start=v[0x107], values=[65], target=0x0104
0100  0C 78 6B 01                            KEYACTION                     key=0x78, target=0x016B
0104  1A 07 01 A0 3A 01                      STRCMP_NE_JMP                 start=v[0x107], values=[240], target=0x013A
010A  0D 64 00 9B 00 B8 00 CC 00 A0 1A 07    HOTSPOT_RECT                  left=0x0064, top=0x009B, right=0x00B8, bottom=0x00CC, target=0x1AA0, cursor=0x07
0116  0D C2 01 9D 00 1E 02 C9 00 A0 1A 07    HOTSPOT_RECT                  left=0x01C2, top=0x009D, right=0x021E, bottom=0x00C9, target=0x1AA0, cursor=0x07
0122  0D 2A 00 2B 01 B2 00 85 01 A0 1A 07    HOTSPOT_RECT                  left=0x002A, top=0x012B, right=0x00B2, bottom=0x0185, target=0x1AA0, cursor=0x07
012E  0D D6 01 2C 01 59 02 85 01 A0 1A 07    HOTSPOT_RECT                  left=0x01D6, top=0x012C, right=0x0259, bottom=0x0185, target=0x1AA0, cursor=0x07
013A  23 04 01 B0 4C 01                      STRCMP_EQ_JMP                 start=v[0x104], values=[0], target=0x014C
0140  0D 03 01 F5 00 7D 01 1C 01 79 01 08    HOTSPOT_RECT                  left=0x0103, top=0x00F5, right=0x017D, bottom=0x011C, target=0x0179, cursor=0x08
014C  0D CB 00 2A 01 B2 01 47 01 E8 03 08    HOTSPOT_RECT                  left=0x00CB, top=0x012A, right=0x01B2, bottom=0x0147, target=0x03E8, cursor=0x08
0158  0D D5 00 61 01 AA 01 76 01 AC 02 08    HOTSPOT_RECT                  left=0x00D5, top=0x0161, right=0x01AA, bottom=0x0176, target=0x02AC, cursor=0x08
0164  13                                     INPUTLOOPEND
0165  1F 07 01                               INC                           var=v[0x107]
0168  15 59 00                               JMP                           target=0x0059
; Runtime verified by v32tng trace 20260809-164423: the final x writes 240,
; stages video flags 5 and 7, sets rate 15, and selects groovie.vdx.
; Cheat accepted: expose the hidden whole-house teleport map.
016B  16 07 01 A0                            LOADSTRING                    dst=v[0x107], values=[240]
016F  0A                                     VIDEOFLAG5_ON
0170  07                                     VIDEOFLAG7_ON
0171  48 0F                                  SET_VDX_RATE_OVERRIDE         value=0x0F
0173  09 31 24                               VIDEOREF                      ref=0x2431 (INTRO[49]=groovie.vdx; voice says "groovie")
0176  15 59 00                               JMP                           target=0x0059
0179  0A                                     VIDEOFLAG5_ON
017A  09 20 24                               VIDEOREF                      ref=0x2420 (INTRO[32]=sphmen1o.vdx)
017D  0A                                     VIDEOFLAG5_ON
017E  09 26 24                               VIDEOREF                      ref=0x2426 (INTRO[38]=sphprm1o.vdx)
0181  0A                                     VIDEOFLAG5_ON
0182  09 23 24                               VIDEOREF                      ref=0x2423 (INTRO[35]=sphmen3i.vdx)
0185  0A                                     VIDEOFLAG5_ON
0186  09 29 24                               VIDEOREF                      ref=0x2429 (INTRO[41]=sphprm3i.vdx)
0189  0B                                     INPUTLOOPSTART
018A  A3 01 B0 9C 01                         STRCMP_EQ_JMP                 start=v[0x001], values=[0], target=0x019C
018F  3B 01 B2 00 36 01 C1 00 4D 01 4B 02 08 HOTSPOT_SAVE_SLOT             slot=0x01, left=0x00B2, top=0x0136, right=0x00C1, bottom=0x014D, target=0x024B, cursor=0x08
019C  A3 02 B0 AE 01                         STRCMP_EQ_JMP                 start=v[0x002], values=[0], target=0x01AE
01A1  3B 02 C5 00 36 01 DE 00 4D 01 51 02 08 HOTSPOT_SAVE_SLOT             slot=0x02, left=0x00C5, top=0x0136, right=0x00DE, bottom=0x014D, target=0x0251, cursor=0x08
01AE  A3 03 B0 C0 01                         STRCMP_EQ_JMP                 start=v[0x003], values=[0], target=0x01C0
01B3  3B 03 E4 00 36 01 FE 00 4D 01 57 02 08 HOTSPOT_SAVE_SLOT             slot=0x03, left=0x00E4, top=0x0136, right=0x00FE, bottom=0x014D, target=0x0257, cursor=0x08
01C0  A3 04 B0 D2 01                         STRCMP_EQ_JMP                 start=v[0x004], values=[0], target=0x01D2
01C5  3B 04 04 01 36 01 1F 01 4D 01 5D 02 08 HOTSPOT_SAVE_SLOT             slot=0x04, left=0x0104, top=0x0136, right=0x011F, bottom=0x014D, target=0x025D, cursor=0x08
01D2  A3 05 B0 E4 01                         STRCMP_EQ_JMP                 start=v[0x005], values=[0], target=0x01E4
01D7  3B 05 24 01 36 01 3E 01 4D 01 63 02 08 HOTSPOT_SAVE_SLOT             slot=0x05, left=0x0124, top=0x0136, right=0x013E, bottom=0x014D, target=0x0263, cursor=0x08
01E4  A3 06 B0 F6 01                         STRCMP_EQ_JMP                 start=v[0x006], values=[0], target=0x01F6
01E9  3B 06 41 01 36 01 5A 01 4D 01 69 02 08 HOTSPOT_SAVE_SLOT             slot=0x06, left=0x0141, top=0x0136, right=0x015A, bottom=0x014D, target=0x0269, cursor=0x08
01F6  A3 07 B0 08 02                         STRCMP_EQ_JMP                 start=v[0x007], values=[0], target=0x0208
01FB  3B 07 5E 01 36 01 77 01 4D 01 6F 02 08 HOTSPOT_SAVE_SLOT             slot=0x07, left=0x015E, top=0x0136, right=0x0177, bottom=0x014D, target=0x026F, cursor=0x08
0208  A3 08 B0 1A 02                         STRCMP_EQ_JMP                 start=v[0x008], values=[0], target=0x021A
020D  3B 08 7C 01 36 01 96 01 4D 01 75 02 08 HOTSPOT_SAVE_SLOT             slot=0x08, left=0x017C, top=0x0136, right=0x0196, bottom=0x014D, target=0x0275, cursor=0x08
021A  A3 09 B0 2C 02                         STRCMP_EQ_JMP                 start=v[0x009], values=[0], target=0x022C
021F  3B 09 99 01 36 01 B3 01 4D 01 7B 02 08 HOTSPOT_SAVE_SLOT             slot=0x09, left=0x0199, top=0x0136, right=0x01B3, bottom=0x014D, target=0x027B, cursor=0x08
022C  A3 00 B0 3E 02                         STRCMP_EQ_JMP                 start=v[0x000], values=[0], target=0x023E
0231  3B 00 B5 01 36 01 D2 01 4D 01 81 02 08 HOTSPOT_SAVE_SLOT             slot=0x00, left=0x01B5, top=0x0136, right=0x01D2, bottom=0x014D, target=0x0281, cursor=0x08
023E  0D D5 00 61 01 AA 01 76 01 15 00 08    HOTSPOT_RECT                  left=0x00D5, top=0x0161, right=0x01AA, bottom=0x0176, target=0x0015, cursor=0x08
024A  13                                     INPUTLOOPEND
024B  96 19 B1                               LOADSTRING                    dst=v[0x019], values=[1]
024E  15 87 02                               JMP                           target=0x0287
0251  96 19 B2                               LOADSTRING                    dst=v[0x019], values=[2]
0254  15 87 02                               JMP                           target=0x0287
0257  96 19 B3                               LOADSTRING                    dst=v[0x019], values=[3]
025A  15 87 02                               JMP                           target=0x0287
025D  96 19 B4                               LOADSTRING                    dst=v[0x019], values=[4]
0260  15 87 02                               JMP                           target=0x0287
0263  96 19 B5                               LOADSTRING                    dst=v[0x019], values=[5]
0266  15 87 02                               JMP                           target=0x0287
0269  96 19 B6                               LOADSTRING                    dst=v[0x019], values=[6]
026C  15 87 02                               JMP                           target=0x0287
026F  96 19 B7                               LOADSTRING                    dst=v[0x019], values=[7]
0272  15 87 02                               JMP                           target=0x0287
0275  96 19 B8                               LOADSTRING                    dst=v[0x019], values=[8]
0278  15 87 02                               JMP                           target=0x0287
027B  96 19 B9                               LOADSTRING                    dst=v[0x019], values=[9]
027E  15 87 02                               JMP                           target=0x0287
0281  96 19 B0                               LOADSTRING                    dst=v[0x019], values=[0]
0284  15 87 02                               JMP                           target=0x0287
0287  1A 09 01 B0 9B 02                      STRCMP_NE_JMP                 start=v[0x109], values=[0], target=0x029B
028D  2E 19 00                               LOADGAME                      var=v[0x019]
0290  16 05 01 B0                            LOADSTRING                    dst=v[0x105], values=[0]
0294  16 09 01 B0                            LOADSTRING                    dst=v[0x109], values=[0]
0298  15 A6 02                               JMP                           target=0x02A6
029B  2E 19 00                               LOADGAME                      var=v[0x019]
029E  16 05 01 B1                            LOADSTRING                    dst=v[0x105], values=[1]
02A2  16 09 01 B1                            LOADSTRING                    dst=v[0x109], values=[1]
02A6  08 35 4C                               SETBACKGROUNDSONG             ref=0x4C35 (XMI[53]=gu56.xmi)
02A9  15 55 1C                               JMP                           target=0x1C55
; Runtime verified quit path (v32tng trace 20260809-164423): ordered refs
; INTRO[32], INTRO[38], INTRO[39], then YES -> INTRO[40], GAMWAV[163], end.
02AC  0A                                     VIDEOFLAG5_ON
02AD  09 20 24                               VIDEOREF                      ref=0x2420 (INTRO[32]=sphmen1o.vdx)
02B0  0A                                     VIDEOFLAG5_ON
02B1  09 26 24                               VIDEOREF                      ref=0x2426 (INTRO[38]=sphprm1o.vdx)
02B4  0A                                     VIDEOFLAG5_ON
02B5  09 27 24                               VIDEOREF                      ref=0x2427 (INTRO[39]=sphprm2i.vdx)
02B8  0B                                     INPUTLOOPSTART
02B9  0D 54 00 B3 00 B2 00 F7 00 DE 02 08    HOTSPOT_RECT                  left=0x0054, top=0x00B3, right=0x00B2, bottom=0x00F7, target=0x02DE, cursor=0x08
02C5  0D CB 01 B6 00 2C 02 ED 00 EA 02 08    HOTSPOT_RECT                  left=0x01CB, top=0x00B6, right=0x022C, bottom=0x00ED, target=0x02EA, cursor=0x08
02D1  0D D5 00 61 01 AA 01 76 01 DE 02 08    HOTSPOT_RECT                  left=0x00D5, top=0x0161, right=0x01AA, bottom=0x0176, target=0x02DE, cursor=0x08
02DD  13                                     INPUTLOOPEND
02DE  0A                                     VIDEOFLAG5_ON
02DF  09 28 24                               VIDEOREF                      ref=0x2428 (INTRO[40]=sphprm2o.vdx)
02E2  0A                                     VIDEOFLAG5_ON
02E3  46                                     RESOURCE_CONTEXT_SAVE
02E4  09 A3 50                               VIDEOREF                      ref=0x50A3 (GAMWAV[163]=gen_s_12.vdx)
02E7  47                                     RESOURCE_CONTEXT_RESTORE
02E8  04                                     PALFADEOUT
02E9  2A                                     ENDSCRIPT
02EA  0A                                     VIDEOFLAG5_ON
02EB  09 28 24                               VIDEOREF                      ref=0x2428 (INTRO[40]=sphprm2o.vdx)
02EE  15 15 00                               JMP                           target=0x0015
02F1  1A 00 01 B1 03 03                      STRCMP_NE_JMP                 start=v[0x100], values=[1], target=0x0303
02F7  02 46 4C                               PLAYSONG                      ref=0x4C46 (XMI[70]=ini_sc.xmi)
02FA  03                                     FADEIN_NEXT_VIDEO
02FB  09 60 24                               VIDEOREF                      ref=0x2460 (INTRO[96]=genmid.vdx)
02FE  09 60 24                               VIDEOREF                      ref=0x2460 (INTRO[96]=genmid.vdx)
0301  04                                     PALFADEOUT
0302  29                                     STOP_OR_WAIT_MIDI
0303  1A 00 01 B2 12 03                      STRCMP_NE_JMP                 start=v[0x100], values=[2], target=0x0312
0309  02 45 4C                               PLAYSONG                      ref=0x4C45 (XMI[69]=ini_mt_o.xmi)
030C  03                                     FADEIN_NEXT_VIDEO
030D  09 61 24                               VIDEOREF                      ref=0x2461 (INTRO[97]=rolmid.vdx)
0310  04                                     PALFADEOUT
0311  29                                     STOP_OR_WAIT_MIDI
0312  17 00                                  RET                           value=0x00
0314  03                                     FADEIN_NEXT_VIDEO
0315  4C                                     GETCD
0316  1A 06 01 B0 1F 03                      STRCMP_NE_JMP                 start=v[0x106], values=[0], target=0x031F
031C  15 58 03                               JMP                           target=0x0358
031F  1A 06 01 B2 28 03                      STRCMP_NE_JMP                 start=v[0x106], values=[2], target=0x0328
0325  15 58 03                               JMP                           target=0x0358
0328  23 05 01 B0 3A 03                      STRCMP_EQ_JMP                 start=v[0x105], values=[0], target=0x033A
032E  1A 09 01 B0 3A 03                      STRCMP_NE_JMP                 start=v[0x109], values=[0], target=0x033A
0334  4B 00                                  SET_VIDEO_MODE                value=0x00
0336  16 09 01 B2                            LOADSTRING                    dst=v[0x109], values=[2]
033A  09 01 1C                               VIDEOREF                      ref=0x1C01 (HDISK[1]=pid2.vdx)
033D  0B                                     INPUTLOOPSTART
033E  12 42 03                               HOTSPOT_CURRENT               target=0x0342
0341  13                                     INPUTLOOPEND
0342  4C                                     GETCD
0343  1A 06 01 B0 4C 03                      STRCMP_NE_JMP                 start=v[0x106], values=[0], target=0x034C
0349  15 58 03                               JMP                           target=0x0358
034C  1A 06 01 B2 55 03                      STRCMP_NE_JMP                 start=v[0x106], values=[2], target=0x0355
0352  15 58 03                               JMP                           target=0x0358
0355  15 3D 03                               JMP                           target=0x033D
0358  04                                     PALFADEOUT
0359  1A 09 01 B2 65 03                      STRCMP_NE_JMP                 start=v[0x109], values=[2], target=0x0365
035F  4B 01                                  SET_VIDEO_MODE                value=0x01
0361  16 09 01 B0                            LOADSTRING                    dst=v[0x109], values=[0]
0365  17 00                                  RET                           value=0x00
0367  4C                                     GETCD
0368  1A 06 01 B0 71 03                      STRCMP_NE_JMP                 start=v[0x106], values=[0], target=0x0371
036E  15 AC 03                               JMP                           target=0x03AC
0371  1A 06 01 B1 7A 03                      STRCMP_NE_JMP                 start=v[0x106], values=[1], target=0x037A
0377  15 AC 03                               JMP                           target=0x03AC
037A  23 05 01 B0 8C 03                      STRCMP_EQ_JMP                 start=v[0x105], values=[0], target=0x038C
0380  1A 09 01 B0 8C 03                      STRCMP_NE_JMP                 start=v[0x109], values=[0], target=0x038C
0386  4B 00                                  SET_VIDEO_MODE                value=0x00
0388  16 09 01 B2                            LOADSTRING                    dst=v[0x109], values=[2]
038C  09 00 1C                               VIDEOREF                      ref=0x1C00 (HDISK[0]=pid1.vdx)
038F  0B                                     INPUTLOOPSTART
0390  12 94 03                               HOTSPOT_CURRENT               target=0x0394
0393  13                                     INPUTLOOPEND
0394  4C                                     GETCD
0395  1A 06 01 B0 9F 03                      STRCMP_NE_JMP                 start=v[0x106], values=[0], target=0x039F
039B  04                                     PALFADEOUT
039C  15 AC 03                               JMP                           target=0x03AC
039F  1A 06 01 B1 A9 03                      STRCMP_NE_JMP                 start=v[0x106], values=[1], target=0x03A9
03A5  04                                     PALFADEOUT
03A6  15 AC 03                               JMP                           target=0x03AC
03A9  15 8F 03                               JMP                           target=0x038F
03AC  1A 09 01 B2 B8 03                      STRCMP_NE_JMP                 start=v[0x109], values=[2], target=0x03B8
03B2  4B 01                                  SET_VIDEO_MODE                value=0x01
03B4  16 09 01 B0                            LOADSTRING                    dst=v[0x109], values=[0]
03B8  17 00                                  RET                           value=0x00
03BA  0A                                     VIDEOFLAG5_ON
03BB  07                                     VIDEOFLAG7_ON
03BC  09 01 24                               VIDEOREF                      ref=0x2401 (INTRO[1]=fade.vdx)
03BF  37 00 00 50 00 7F 02 8F 01             COPY_RECT_TO_BG               left=0x0000, top=0x0050, right=0x027F, bottom=0x018F
03C8  17 00                                  RET                           value=0x00
03CA  96 8C 30 B2                            LOADSTRING                    dst=v[0x08C], values=[0, 2]
03CE  02 39 4C                               PLAYSONG                      ref=0x4C39 (XMI[57]=gu61.xmi)
03D1  03                                     FADEIN_NEXT_VIDEO
03D2  05                                     FIRSTFRAME_NEXT_VIDEO
03D3  09 AB 14                               VIDEOREF                      ref=0x14AB (FH[171]=h_morph.vdx)
03D6  15 83 0E                               JMP                           target=0x0E83
03D9  96 8C 30 B1                            LOADSTRING                    dst=v[0x08C], values=[0, 1]
03DD  02 35 4C                               PLAYSONG                      ref=0x4C35 (XMI[53]=gu56.xmi)
03E0  03                                     FADEIN_NEXT_VIDEO
03E1  05                                     FIRSTFRAME_NEXT_VIDEO
03E2  09 03 14                               VIDEOREF                      ref=0x1403 (FH[3]=f1_6.vdx)
03E5  15 FD 04                               JMP                           target=0x04FD
03E8  23 09 01 B0 F4 03                      STRCMP_EQ_JMP                 start=v[0x109], values=[0], target=0x03F4
03EE  4B 01                                  SET_VIDEO_MODE                value=0x01
03F0  16 09 01 B0                            LOADSTRING                    dst=v[0x109], values=[0]
03F4  2C AB 17 08                            SET_HOTSPOT_TOP               target=0x17AB, cursor=0x08
03F8  31 00 00 E8 03                         MIDI_CONTROL                  value=0x0000, time=0x03E8
03FD  04                                     PALFADEOUT
03FE  19 01 00                               SLEEP                         ticks=0x0001
; Runtime verified by v32tng trace 20260809-180432. PLAYCD 02 reached Miles
; with a nonzero CD-device handle, but data-only media yielded track-2 bounds
; 0..0 and no active track; execution continued normally.
0401  4D 02                                  PLAYCD                        value=0x02
0403  19 BC 02                               SLEEP                         ticks=0x02BC
0406  03                                     FADEIN_NEXT_VIDEO
0407  09 04 1C                               VIDEOREF                      ref=0x1C04 (HDISK[4]=vlogo.vdx)
040A  19 8A 02                               SLEEP                         ticks=0x028A
040D  04                                     PALFADEOUT
040E  03                                     FADEIN_NEXT_VIDEO
040F  09 03 1C                               VIDEOREF                      ref=0x1C03 (HDISK[3]=tripro.vdx)
0412  19 EE 02                               SLEEP                         ticks=0x02EE
0415  04                                     PALFADEOUT
0416  03                                     FADEIN_NEXT_VIDEO
; Standalone house/lightning/title/credits resource. The trace captured 75
; delta frames and no embedded VDX audio; with no active Red Book track its
; native pacing selected 40 ms rather than the 100 ms Red Book interval.
0417  09 02 1C                               VIDEOREF                      ref=0x1C02 (HDISK[2]=title.vdx)
041A  19 5E 01                               SLEEP                         ticks=0x015E
041D  4D 62                                  PLAYCD                        value=0x62
041F  31 00 00 00 00                         MIDI_CONTROL                  value=0x0000, time=0x0000
0424  02 42 4C                               PLAYSONG                      ref=0x4C42 (XMI[66]=gu74.xmi)
0427  31 63 00 2C 01                         MIDI_CONTROL                  value=0x0063, time=0x012C
; First book resources are separate from title.vdx. o1pa.vdx and o1tu.vdx
; each carried 30 delta frames and no embedded audio in the same trace.
042C  09 02 24                               VIDEOREF                      ref=0x2402 (INTRO[2]=o1pa.vdx)
042F  06                                     VIDEOFLAG6_ON
0430  29                                     STOP_OR_WAIT_MIDI
0431  02 42 4C                               PLAYSONG                      ref=0x4C42 (XMI[66]=gu74.xmi)
0434  31 63 00 32 00                         MIDI_CONTROL                  value=0x0063, time=0x0032
0439  09 03 24                               VIDEOREF                      ref=0x2403 (INTRO[3]=o1tu.vdx)
043C  02 3F 4C                               PLAYSONG                      ref=0x4C3F (XMI[63]=gu71.xmi)
043F  31 63 00 32 00                         MIDI_CONTROL                  value=0x0063, time=0x0032
0444  19 C8 00                               SLEEP                         ticks=0x00C8
0447  09 04 24                               VIDEOREF                      ref=0x2404 (INTRO[4]=o3pa.vdx)
044A  19 C8 00                               SLEEP                         ticks=0x00C8
044D  06                                     VIDEOFLAG6_ON
044E  09 05 24                               VIDEOREF                      ref=0x2405 (INTRO[5]=o3tu.vdx)
0451  19 C8 00                               SLEEP                         ticks=0x00C8
0454  09 06 24                               VIDEOREF                      ref=0x2406 (INTRO[6]=o4pa.vdx)
0457  19 C8 00                               SLEEP                         ticks=0x00C8
045A  06                                     VIDEOFLAG6_ON
045B  09 07 24                               VIDEOREF                      ref=0x2407 (INTRO[7]=o4tu.vdx)
045E  19 C8 00                               SLEEP                         ticks=0x00C8
0461  09 08 24                               VIDEOREF                      ref=0x2408 (INTRO[8]=o5pa.vdx)
0464  19 C8 00                               SLEEP                         ticks=0x00C8
0467  06                                     VIDEOFLAG6_ON
0468  31 00 00 C4 09                         MIDI_CONTROL                  value=0x0000, time=0x09C4
046D  02 40 4C                               PLAYSONG                      ref=0x4C40 (XMI[64]=gu72.xmi)
0470  31 63 00 32 00                         MIDI_CONTROL                  value=0x0063, time=0x0032
0475  09 09 24                               VIDEOREF                      ref=0x2409 (INTRO[9]=o5tu.vdx)
0478  19 C8 00                               SLEEP                         ticks=0x00C8
047B  09 0A 24                               VIDEOREF                      ref=0x240A (INTRO[10]=o6pa.vdx)
047E  19 2C 01                               SLEEP                         ticks=0x012C
0481  06                                     VIDEOFLAG6_ON
0482  09 0B 24                               VIDEOREF                      ref=0x240B (INTRO[11]=o6tu.vdx)
0485  19 2C 01                               SLEEP                         ticks=0x012C
0488  09 0C 24                               VIDEOREF                      ref=0x240C (INTRO[12]=o7pa.vdx)
048B  19 64 00                               SLEEP                         ticks=0x0064
048E  06                                     VIDEOFLAG6_ON
048F  09 0D 24                               VIDEOREF                      ref=0x240D (INTRO[13]=o7tu.vdx)
0492  19 64 00                               SLEEP                         ticks=0x0064
0495  02 41 4C                               PLAYSONG                      ref=0x4C41 (XMI[65]=gu73.xmi)
0498  31 63 00 32 00                         MIDI_CONTROL                  value=0x0063, time=0x0032
049D  09 0E 24                               VIDEOREF                      ref=0x240E (INTRO[14]=o8pa.vdx)
04A0  19 64 00                               SLEEP                         ticks=0x0064
04A3  06                                     VIDEOFLAG6_ON
04A4  09 0F 24                               VIDEOREF                      ref=0x240F (INTRO[15]=o8tu.vdx)
04A7  19 64 00                               SLEEP                         ticks=0x0064
04AA  09 10 24                               VIDEOREF                      ref=0x2410 (INTRO[16]=o9pa.vdx)
04AD  19 64 00                               SLEEP                         ticks=0x0064
04B0  06                                     VIDEOFLAG6_ON
04B1  09 11 24                               VIDEOREF                      ref=0x2411 (INTRO[17]=o9tu.vdx)
04B4  19 64 00                               SLEEP                         ticks=0x0064
04B7  09 12 24                               VIDEOREF                      ref=0x2412 (INTRO[18]=o10pa.vdx)
04BA  19 64 00                               SLEEP                         ticks=0x0064
04BD  06                                     VIDEOFLAG6_ON
04BE  09 13 24                               VIDEOREF                      ref=0x2413 (INTRO[19]=o10tu.vdx)
04C1  19 C8 00                               SLEEP                         ticks=0x00C8
04C4  09 14 24                               VIDEOREF                      ref=0x2414 (INTRO[20]=o12pa.vdx)
04C7  19 64 00                               SLEEP                         ticks=0x0064
04CA  06                                     VIDEOFLAG6_ON
04CB  09 36 34                               VIDEOREF                      ref=0x3436 (LI[54]=l_in.vdx)
04CE  03                                     FADEIN_NEXT_VIDEO
04CF  09 41 14                               VIDEOREF                      ref=0x1441 (FH[65]=f_5ba.vdx)
04D2  09 15 14                               VIDEOREF                      ref=0x1415 (FH[21]=f5_1.vdx)
04D5  29                                     STOP_OR_WAIT_MIDI
04D6  19 58 02                               SLEEP                         ticks=0x0258
04D9  18 BF 36                               CALL                          target=0x36BF
04DC  96 E5 B1                               LOADSTRING                    dst=v[0x0E5], values=[1]
04DF  96 8E 30 B2                            LOADSTRING                    dst=v[0x08E], values=[0, 2]
04E3  09 25 14                               VIDEOREF                      ref=0x1425 (FH[37]=f_1fa.vdx)
04E6  02 35 4C                               PLAYSONG                      ref=0x4C35 (XMI[53]=gu56.xmi)
04E9  96 8C 30 B1                            LOADSTRING                    dst=v[0x08C], values=[0, 1]
04ED  09 26 14                               VIDEOREF                      ref=0x1426 (FH[38]=f_1fb.vdx)
04F0  46                                     RESOURCE_CONTEXT_SAVE
04F1  07                                     VIDEOFLAG7_ON
04F2  09 00 50                               VIDEOREF                      ref=0x5000 (GAMWAV[0]=1_e_1.vdx)
04F5  19 64 00                               SLEEP                         ticks=0x0064
04F8  07                                     VIDEOFLAG7_ON
04F9  09 01 50                               VIDEOREF                      ref=0x5001 (GAMWAV[1]=1_e_2.vdx)
04FC  47                                     RESOURCE_CONTEXT_RESTORE
04FD  0B                                     INPUTLOOPSTART
04FE  9A 8E 30 B2 07 05                      STRCMP_NE_JMP                 start=v[0x08E], values=[0, 2], target=0x0507
0504  30 12 39                               HOTSPOT_BOTTOM_4              target=0x3912
0507  0D 00 00 DE 00 68 00 54 01 51 05 00    HOTSPOT_RECT                  left=0x0000, top=0x00DE, right=0x0068, bottom=0x0154, target=0x0551, cursor=0x00
0513  0D CA 01 F2 00 33 02 52 01 57 05 00    HOTSPOT_RECT                  left=0x01CA, top=0x00F2, right=0x0233, bottom=0x0152, target=0x0557, cursor=0x00
051F  0D 23 01 50 00 A8 01 C0 00 60 05 00    HOTSPOT_RECT                  left=0x0123, top=0x0050, right=0x01A8, bottom=0x00C0, target=0x0560, cursor=0x00
052B  A3 99 B0 41 05                         STRCMP_EQ_JMP                 start=v[0x099], values=[0], target=0x0541
0530  9A F3 E1 41 05                         STRCMP_NE_JMP                 start=v[0x0F3], values=[49], target=0x0541
0535  0D C8 00 2C 01 B8 01 90 01 48 05 07    HOTSPOT_RECT                  left=0x00C8, top=0x012C, right=0x01B8, bottom=0x0190, target=0x0548, cursor=0x07
0541  0E 8F 06                               HOTSPOT_LEFT                  target=0x068F
0544  0F 95 06                               HOTSPOT_RIGHT                 target=0x0695
0547  13                                     INPUTLOOPEND
0548  09 08 14                               VIDEOREF                      ref=0x1408 (FH[8]=f1_rm.vdx)
054B  09 07 14                               VIDEOREF                      ref=0x1407 (FH[7]=f1_r.vdx)
054E  15 EE 15                               JMP                           target=0x15EE
0551  09 01 14                               VIDEOREF                      ref=0x1401 (FH[1]=f1_2.vdx)
0554  15 D9 06                               JMP                           target=0x06D9
0557  09 02 14                               VIDEOREF                      ref=0x1402 (FH[2]=f1_5.vdx)
055A  09 16 14                               VIDEOREF                      ref=0x1416 (FH[22]=f5_4.vdx)
055D  15 DC 07                               JMP                           target=0x07DC
0560  09 03 14                               VIDEOREF                      ref=0x1403 (FH[3]=f1_6.vdx)
0563  15 83 0E                               JMP                           target=0x0E83
0566  0B                                     INPUTLOOPSTART
0567  0D 13 02 D4 00 7F 02 54 01 7A 05 00    HOTSPOT_RECT                  left=0x0213, top=0x00D4, right=0x027F, bottom=0x0154, target=0x057A, cursor=0x00
0573  0E 9B 06                               HOTSPOT_LEFT                  target=0x069B
0576  0F A1 06                               HOTSPOT_RIGHT                 target=0x06A1
0579  13                                     INPUTLOOPEND
057A  09 26 14                               VIDEOREF                      ref=0x1426 (FH[38]=f_1fb.vdx)
057D  09 01 14                               VIDEOREF                      ref=0x1401 (FH[1]=f1_2.vdx)
0580  15 D9 06                               JMP                           target=0x06D9
0583  0B                                     INPUTLOOPSTART
0584  0E A7 06                               HOTSPOT_LEFT                  target=0x06A7
0587  0F AD 06                               HOTSPOT_RIGHT                 target=0x06AD
058A  A3 FA B0 A5 05                         STRCMP_EQ_JMP                 start=v[0x0FA], values=[0], target=0x05A5
058F  9A E4 B1 A5 05                         STRCMP_NE_JMP                 start=v[0x0E4], values=[1], target=0x05A5
0594  A3 FB E1 A5 05                         STRCMP_EQ_JMP                 start=v[0x0FB], values=[49], target=0x05A5
0599  0D AC 00 3A 00 8F 01 13 01 FF 05 06    HOTSPOT_RECT                  left=0x00AC, top=0x003A, right=0x018F, bottom=0x0113, target=0x05FF, cursor=0x06
05A5  1A 08 01 B1 B7 05                      STRCMP_NE_JMP                 start=v[0x108], values=[1], target=0x05B7
05AB  0D AC 00 3A 00 8F 01 13 01 FF 05 06    HOTSPOT_RECT                  left=0x00AC, top=0x003A, right=0x018F, bottom=0x0113, target=0x05FF, cursor=0x06
05B7  9A E4 B1 C5 05                         STRCMP_NE_JMP                 start=v[0x0E4], values=[1], target=0x05C5
05BC  9A 8E 30 B3 C5 05                      STRCMP_NE_JMP                 start=v[0x08E], values=[0, 3], target=0x05C5
05C2  30 12 39                               HOTSPOT_BOTTOM_4              target=0x3912
05C5  9A 8E 30 B4 CE 05                      STRCMP_NE_JMP                 start=v[0x08E], values=[0, 4], target=0x05CE
05CB  30 12 39                               HOTSPOT_BOTTOM_4              target=0x3912
05CE  9A E4 B0 DF 05                         STRCMP_NE_JMP                 start=v[0x0E4], values=[0], target=0x05DF
05D3  0D C8 00 50 00 B8 01 8F 01 E0 05 04    HOTSPOT_RECT                  left=0x00C8, top=0x0050, right=0x01B8, bottom=0x018F, target=0x05E0, cursor=0x04
05DF  13                                     INPUTLOOPEND
05E0  96 E4 B1                               LOADSTRING                    dst=v[0x0E4], values=[1]
05E3  96 8E 30 B3                            LOADSTRING                    dst=v[0x08E], values=[0, 3]
05E7  18 DF 36                               CALL                          target=0x36DF
05EA  19 64 00                               SLEEP                         ticks=0x0064
05ED  1A 00 01 B0 F9 05                      STRCMP_NE_JMP                 start=v[0x100], values=[0], target=0x05F9
05F3  02 00 4C                               PLAYSONG                      ref=0x4C00 (XMI[0]=agu16.xmi)
05F6  15 FC 05                               JMP                           target=0x05FC
05F9  02 0C 4C                               PLAYSONG                      ref=0x4C0C (XMI[12]=gu16.xmi)
05FC  15 83 05                               JMP                           target=0x0583
05FF  09 06 14                               VIDEOREF                      ref=0x1406 (FH[6]=f1_pf.vdx)
0602  15 09 06                               JMP                           target=0x0609
0605  03                                     FADEIN_NEXT_VIDEO
0606  09 06 14                               VIDEOREF                      ref=0x1406 (FH[6]=f1_pf.vdx)
0609  96 92 30 B2                            LOADSTRING                    dst=v[0x092], values=[0, 2]
060D  9A FB B4 15 06                         STRCMP_NE_JMP                 start=v[0x0FB], values=[4], target=0x0615
0612  96 FB B5                               LOADSTRING                    dst=v[0x0FB], values=[5]
0615  9A FB B2 1D 06                         STRCMP_NE_JMP                 start=v[0x0FB], values=[2], target=0x061D
061A  96 FB B3                               LOADSTRING                    dst=v[0x0FB], values=[3]
061D  9A FB B0 25 06                         STRCMP_NE_JMP                 start=v[0x0FB], values=[0], target=0x0625
0622  96 FB B1                               LOADSTRING                    dst=v[0x0FB], values=[1]
0625  18 1F 3F                               CALL                          target=0x3F1F
0628  9A FB E1 3F 06                         STRCMP_NE_JMP                 start=v[0x0FB], values=[49], target=0x063F
062D  9A E3 B0 3F 06                         STRCMP_NE_JMP                 start=v[0x0E3], values=[0], target=0x063F
0632  02 11 4C                               PLAYSONG                      ref=0x4C11 (XMI[17]=gu20.xmi)
0635  96 E3 B1                               LOADSTRING                    dst=v[0x0E3], values=[1]
0638  96 8E 30 B4                            LOADSTRING                    dst=v[0x08E], values=[0, 4]
063C  18 F4 36                               CALL                          target=0x36F4
063F  1A 00 01 B0 4B 06                      STRCMP_NE_JMP                 start=v[0x100], values=[0], target=0x064B
0645  02 00 4C                               PLAYSONG                      ref=0x4C00 (XMI[0]=agu16.xmi)
0648  15 4E 06                               JMP                           target=0x064E
064B  02 0C 4C                               PLAYSONG                      ref=0x4C0C (XMI[12]=gu16.xmi)
064E  15 51 06                               JMP                           target=0x0651
0651  09 05 14                               VIDEOREF                      ref=0x1405 (FH[5]=f1_pb.vdx)
0654  15 83 05                               JMP                           target=0x0583
0657  0B                                     INPUTLOOPSTART
0658  0D 00 00 C9 00 50 00 47 01 77 06 00    HOTSPOT_RECT                  left=0x0000, top=0x00C9, right=0x0050, bottom=0x0147, target=0x0677, cursor=0x00
0664  0D AC 00 CC 00 E8 00 4F 01 83 06 00    HOTSPOT_RECT                  left=0x00AC, top=0x00CC, right=0x00E8, bottom=0x014F, target=0x0683, cursor=0x00
0670  0E B3 06                               HOTSPOT_LEFT                  target=0x06B3
0673  0F B9 06                               HOTSPOT_RIGHT                 target=0x06B9
0676  13                                     INPUTLOOPEND
0677  09 23 14                               VIDEOREF                      ref=0x1423 (FH[35]=f_1bc.vdx)
067A  09 02 14                               VIDEOREF                      ref=0x1402 (FH[2]=f1_5.vdx)
067D  09 16 14                               VIDEOREF                      ref=0x1416 (FH[22]=f5_4.vdx)
0680  15 DC 07                               JMP                           target=0x07DC
0683  09 23 14                               VIDEOREF                      ref=0x1423 (FH[35]=f_1bc.vdx)
0686  09 02 14                               VIDEOREF                      ref=0x1402 (FH[2]=f1_5.vdx)
0689  09 47 14                               VIDEOREF                      ref=0x1447 (FH[71]=f_5fc.vdx)
068C  15 AC 08                               JMP                           target=0x08AC
068F  09 22 14                               VIDEOREF                      ref=0x1422 (FH[34]=f_1bb.vdx)
0692  15 66 05                               JMP                           target=0x0566
0695  09 27 14                               VIDEOREF                      ref=0x1427 (FH[39]=f_1fc.vdx)
0698  15 57 06                               JMP                           target=0x0657
069B  09 21 14                               VIDEOREF                      ref=0x1421 (FH[33]=f_1ba.vdx)
069E  15 83 05                               JMP                           target=0x0583
06A1  09 26 14                               VIDEOREF                      ref=0x1426 (FH[38]=f_1fb.vdx)
06A4  15 FD 04                               JMP                           target=0x04FD
06A7  09 24 14                               VIDEOREF                      ref=0x1424 (FH[36]=f_1bd.vdx)
06AA  15 57 06                               JMP                           target=0x0657
06AD  09 25 14                               VIDEOREF                      ref=0x1425 (FH[37]=f_1fa.vdx)
06B0  15 66 05                               JMP                           target=0x0566
06B3  09 23 14                               VIDEOREF                      ref=0x1423 (FH[35]=f_1bc.vdx)
06B6  15 FD 04                               JMP                           target=0x04FD
06B9  09 28 14                               VIDEOREF                      ref=0x1428 (FH[40]=f_1fd.vdx)
06BC  15 83 05                               JMP                           target=0x0583
06BF  0B                                     INPUTLOOPSTART
06C0  0D 1C 01 6D 00 88 01 35 01 D3 06 00    HOTSPOT_RECT                  left=0x011C, top=0x006D, right=0x0188, bottom=0x0135, target=0x06D3, cursor=0x00
06CC  0E 0A 07                               HOTSPOT_LEFT                  target=0x070A
06CF  0F 10 07                               HOTSPOT_RIGHT                 target=0x0710
06D2  13                                     INPUTLOOPEND
06D3  09 0B 14                               VIDEOREF                      ref=0x140B (FH[11]=f2_3.vdx)
06D6  15 3A 07                               JMP                           target=0x073A
06D9  0B                                     INPUTLOOPSTART
06DA  0E 16 07                               HOTSPOT_LEFT                  target=0x0716
06DD  0F 1C 07                               HOTSPOT_RIGHT                 target=0x071C
06E0  10 F6 08                               HOTSPOT_CENTER                target=0x08F6
06E3  13                                     INPUTLOOPEND
06E4  0B                                     INPUTLOOPSTART
06E5  0E 22 07                               HOTSPOT_LEFT                  target=0x0722
06E8  0F 28 07                               HOTSPOT_RIGHT                 target=0x0728
06EB  13                                     INPUTLOOPEND
06EC  96 8C 30 B1                            LOADSTRING                    dst=v[0x08C], values=[0, 1]
06F0  0B                                     INPUTLOOPSTART
06F1  0D BB 01 B3 00 1B 02 13 01 04 07 00    HOTSPOT_RECT                  left=0x01BB, top=0x00B3, right=0x021B, bottom=0x0113, target=0x0704, cursor=0x00
06FD  0E 2E 07                               HOTSPOT_LEFT                  target=0x072E
0700  0F 34 07                               HOTSPOT_RIGHT                 target=0x0734
0703  13                                     INPUTLOOPEND
0704  09 0A 14                               VIDEOREF                      ref=0x140A (FH[10]=f2_1.vdx)
0707  15 83 05                               JMP                           target=0x0583
070A  09 2A 14                               VIDEOREF                      ref=0x142A (FH[42]=f_2bb.vdx)
070D  15 D9 06                               JMP                           target=0x06D9
0710  09 2F 14                               VIDEOREF                      ref=0x142F (FH[47]=f_2fc.vdx)
0713  15 EC 06                               JMP                           target=0x06EC
0716  09 29 14                               VIDEOREF                      ref=0x1429 (FH[41]=f_2ba.vdx)
0719  15 E4 06                               JMP                           target=0x06E4
071C  09 2E 14                               VIDEOREF                      ref=0x142E (FH[46]=f_2fb.vdx)
071F  15 BF 06                               JMP                           target=0x06BF
0722  09 2C 14                               VIDEOREF                      ref=0x142C (FH[44]=f_2bd.vdx)
0725  15 EC 06                               JMP                           target=0x06EC
0728  09 2D 14                               VIDEOREF                      ref=0x142D (FH[45]=f_2fa.vdx)
072B  15 D9 06                               JMP                           target=0x06D9
072E  09 2B 14                               VIDEOREF                      ref=0x142B (FH[43]=f_2bc.vdx)
0731  15 BF 06                               JMP                           target=0x06BF
0734  09 30 14                               VIDEOREF                      ref=0x1430 (FH[48]=f_2fd.vdx)
0737  15 E4 06                               JMP                           target=0x06E4
073A  0B                                     INPUTLOOPSTART
073B  0E AC 07                               HOTSPOT_LEFT                  target=0x07AC
073E  9A FA E1 46 07                         STRCMP_NE_JMP                 start=v[0x0FA], values=[49], target=0x0746
0743  10 4A 07                               HOTSPOT_CENTER                target=0x074A
0746  0F B2 07                               HOTSPOT_RIGHT                 target=0x07B2
0749  13                                     INPUTLOOPEND
074A  09 12 14                               VIDEOREF                      ref=0x1412 (FH[18]=f3_d.vdx)
074D  15 16 0A                               JMP                           target=0x0A16
0750  0B                                     INPUTLOOPSTART
0751  0D 42 00 52 00 E6 00 6E 01 64 07 00    HOTSPOT_RECT                  left=0x0042, top=0x0052, right=0x00E6, bottom=0x016E, target=0x0764, cursor=0x00
075D  0E B8 07                               HOTSPOT_LEFT                  target=0x07B8
0760  0F BE 07                               HOTSPOT_RIGHT                 target=0x07BE
0763  13                                     INPUTLOOPEND
0764  09 31 14                               VIDEOREF                      ref=0x1431 (FH[49]=f_3ba.vdx)
0767  09 0E 14                               VIDEOREF                      ref=0x140E (FH[14]=f3_2.vdx)
076A  09 2D 14                               VIDEOREF                      ref=0x142D (FH[45]=f_2fa.vdx)
076D  15 D9 06                               JMP                           target=0x06D9
0770  96 8C 30 B1                            LOADSTRING                    dst=v[0x08C], values=[0, 1]
0774  0B                                     INPUTLOOPSTART
0775  0E C4 07                               HOTSPOT_LEFT                  target=0x07C4
0778  0F CA 07                               HOTSPOT_RIGHT                 target=0x07CA
077B  11 7F 07                               HOTSPOT_CENTER_2              target=0x077F
077E  13                                     INPUTLOOPEND
077F  09 0E 14                               VIDEOREF                      ref=0x140E (FH[14]=f3_2.vdx)
0782  15 E4 06                               JMP                           target=0x06E4
0785  0B                                     INPUTLOOPSTART
0786  0E D0 07                               HOTSPOT_LEFT                  target=0x07D0
0789  0F D6 07                               HOTSPOT_RIGHT                 target=0x07D6
078C  0D EE 00 55 00 39 01 7C 01 99 07 07    HOTSPOT_RECT                  left=0x00EE, top=0x0055, right=0x0139, bottom=0x017C, target=0x0799, cursor=0x07
0798  13                                     INPUTLOOPEND
; Runtime verified by trace 20260809-195435: clicking the grandfather clock
; takes this hotspot.  It switches to gu40.xmi, plays the three clock-specific
; layers f3_cmf/f3_clt/f3_cmb (the middle with video flag 5), restores gu16.xmi,
; and returns to the same foyer input loop.
0799  02 25 4C                               PLAYSONG                      ref=0x4C25 (XMI[37]=gu40.xmi)
079C  09 11 14                               VIDEOREF                      ref=0x1411 (FH[17]=f3_cmf.vdx)
079F  0A                                     VIDEOFLAG5_ON
07A0  09 0F 14                               VIDEOREF                      ref=0x140F (FH[15]=f3_clt.vdx)
07A3  09 10 14                               VIDEOREF                      ref=0x1410 (FH[16]=f3_cmb.vdx)
07A6  02 0C 4C                               PLAYSONG                      ref=0x4C0C (XMI[12]=gu16.xmi)
07A9  15 85 07                               JMP                           target=0x0785
07AC  09 32 14                               VIDEOREF                      ref=0x1432 (FH[50]=f_3bb.vdx)
07AF  15 50 07                               JMP                           target=0x0750
07B2  09 37 14                               VIDEOREF                      ref=0x1437 (FH[55]=f_3fc.vdx)
07B5  15 85 07                               JMP                           target=0x0785
07B8  09 31 14                               VIDEOREF                      ref=0x1431 (FH[49]=f_3ba.vdx)
07BB  15 70 07                               JMP                           target=0x0770
07BE  09 36 14                               VIDEOREF                      ref=0x1436 (FH[54]=f_3fb.vdx)
07C1  15 3A 07                               JMP                           target=0x073A
07C4  09 34 14                               VIDEOREF                      ref=0x1434 (FH[52]=f_3bd.vdx)
07C7  15 85 07                               JMP                           target=0x0785
07CA  09 35 14                               VIDEOREF                      ref=0x1435 (FH[53]=f_3fa.vdx)
07CD  15 50 07                               JMP                           target=0x0750
07D0  09 33 14                               VIDEOREF                      ref=0x1433 (FH[51]=f_3bc.vdx)
07D3  15 3A 07                               JMP                           target=0x073A
07D6  09 38 14                               VIDEOREF                      ref=0x1438 (FH[56]=f_3fd.vdx)
07D9  15 70 07                               JMP                           target=0x0770
07DC  0B                                     INPUTLOOPSTART
07DD  0E 3C 08                               HOTSPOT_LEFT                  target=0x083C
07E0  A3 99 B0 F2 07                         STRCMP_EQ_JMP                 start=v[0x099], values=[0], target=0x07F2
07E5  9A F3 E1 F2 07                         STRCMP_NE_JMP                 start=v[0x0F3], values=[49], target=0x07F2
07EA  9A E9 E1 F2 07                         STRCMP_NE_JMP                 start=v[0x0E9], values=[49], target=0x07F2
07EF  10 DE 0B                               HOTSPOT_CENTER                target=0x0BDE
07F2  0F 42 08                               HOTSPOT_RIGHT                 target=0x0842
07F5  13                                     INPUTLOOPEND
07F6  09 13 14                               VIDEOREF                      ref=0x1413 (FH[19]=f4_5.vdx)
07F9  15 92 08                               JMP                           target=0x0892
07FC  0B                                     INPUTLOOPSTART
07FD  0E 48 08                               HOTSPOT_LEFT                  target=0x0848
0800  0F 4E 08                               HOTSPOT_RIGHT                 target=0x084E
0803  13                                     INPUTLOOPEND
0804  96 8C 30 B1                            LOADSTRING                    dst=v[0x08C], values=[0, 1]
0808  0B                                     INPUTLOOPSTART
0809  0D 14 01 B2 00 5C 01 10 01 F6 07 00    HOTSPOT_RECT                  left=0x0114, top=0x00B2, right=0x015C, bottom=0x0110, target=0x07F6, cursor=0x00
0815  0E 54 08                               HOTSPOT_LEFT                  target=0x0854
0818  0F 5A 08                               HOTSPOT_RIGHT                 target=0x085A
081B  13                                     INPUTLOOPEND
081C  0B                                     INPUTLOOPSTART
081D  0D FC 01 50 00 4A 02 55 01 30 08 00    HOTSPOT_RECT                  left=0x01FC, top=0x0050, right=0x024A, bottom=0x0155, target=0x0830, cursor=0x00
0829  0E 60 08                               HOTSPOT_LEFT                  target=0x0860
082C  0F 66 08                               HOTSPOT_RIGHT                 target=0x0866
082F  13                                     INPUTLOOPEND
0830  09 40 14                               VIDEOREF                      ref=0x1440 (FH[64]=f_4fd.vdx)
0833  09 13 14                               VIDEOREF                      ref=0x1413 (FH[19]=f4_5.vdx)
0836  09 44 14                               VIDEOREF                      ref=0x1444 (FH[68]=f_5bd.vdx)
0839  15 AC 08                               JMP                           target=0x08AC
083C  09 3A 14                               VIDEOREF                      ref=0x143A (FH[58]=f_4bb.vdx)
083F  15 FC 07                               JMP                           target=0x07FC
0842  09 3F 14                               VIDEOREF                      ref=0x143F (FH[63]=f_4fc.vdx)
0845  15 1C 08                               JMP                           target=0x081C
0848  09 39 14                               VIDEOREF                      ref=0x1439 (FH[57]=f_4ba.vdx)
084B  15 04 08                               JMP                           target=0x0804
084E  09 3E 14                               VIDEOREF                      ref=0x143E (FH[62]=f_4fb.vdx)
0851  15 DC 07                               JMP                           target=0x07DC
0854  09 3C 14                               VIDEOREF                      ref=0x143C (FH[60]=f_4bd.vdx)
0857  15 1C 08                               JMP                           target=0x081C
085A  09 3D 14                               VIDEOREF                      ref=0x143D (FH[61]=f_4fa.vdx)
085D  15 FC 07                               JMP                           target=0x07FC
0860  09 3B 14                               VIDEOREF                      ref=0x143B (FH[59]=f_4bc.vdx)
0863  15 DC 07                               JMP                           target=0x07DC
0866  09 40 14                               VIDEOREF                      ref=0x1440 (FH[64]=f_4fd.vdx)
0869  15 04 08                               JMP                           target=0x0804
086C  0B                                     INPUTLOOPSTART
086D  0D 7C 00 51 00 51 01 57 01 80 08 00    HOTSPOT_RECT                  left=0x007C, top=0x0051, right=0x0151, bottom=0x0157, target=0x0880, cursor=0x00
0879  0E C6 08                               HOTSPOT_LEFT                  target=0x08C6
087C  0F CC 08                               HOTSPOT_RIGHT                 target=0x08CC
087F  13                                     INPUTLOOPEND
0880  09 16 14                               VIDEOREF                      ref=0x1416 (FH[22]=f5_4.vdx)
0883  15 DC 07                               JMP                           target=0x07DC
0886  96 8C 30 B1                            LOADSTRING                    dst=v[0x08C], values=[0, 1]
088A  0B                                     INPUTLOOPSTART
088B  0E D2 08                               HOTSPOT_LEFT                  target=0x08D2
088E  0F D8 08                               HOTSPOT_RIGHT                 target=0x08D8
0891  13                                     INPUTLOOPEND
0892  0B                                     INPUTLOOPSTART
0893  0D 05 01 9D 00 5D 01 17 01 A6 08 00    HOTSPOT_RECT                  left=0x0105, top=0x009D, right=0x015D, bottom=0x0117, target=0x08A6, cursor=0x00
089F  0E DE 08                               HOTSPOT_LEFT                  target=0x08DE
08A2  0F E4 08                               HOTSPOT_RIGHT                 target=0x08E4
08A5  13                                     INPUTLOOPEND
08A6  09 15 14                               VIDEOREF                      ref=0x1415 (FH[21]=f5_1.vdx)
08A9  15 83 05                               JMP                           target=0x0583
08AC  0B                                     INPUTLOOPSTART
08AD  0D D4 00 59 00 F0 01 8D 01 C0 08 00    HOTSPOT_RECT                  left=0x00D4, top=0x0059, right=0x01F0, bottom=0x018D, target=0x08C0, cursor=0x00
08B9  0E EA 08                               HOTSPOT_LEFT                  target=0x08EA
08BC  0F F0 08                               HOTSPOT_RIGHT                 target=0x08F0
08BF  13                                     INPUTLOOPEND
08C0  09 17 14                               VIDEOREF                      ref=0x1417 (FH[23]=f5_d.vdx)
08C3  15 70 21                               JMP                           target=0x2170
08C6  09 42 14                               VIDEOREF                      ref=0x1442 (FH[66]=f_5bb.vdx)
08C9  15 86 08                               JMP                           target=0x0886
08CC  09 47 14                               VIDEOREF                      ref=0x1447 (FH[71]=f_5fc.vdx)
08CF  15 AC 08                               JMP                           target=0x08AC
08D2  09 41 14                               VIDEOREF                      ref=0x1441 (FH[65]=f_5ba.vdx)
08D5  15 92 08                               JMP                           target=0x0892
08D8  09 46 14                               VIDEOREF                      ref=0x1446 (FH[70]=f_5fb.vdx)
08DB  15 6C 08                               JMP                           target=0x086C
08DE  09 44 14                               VIDEOREF                      ref=0x1444 (FH[68]=f_5bd.vdx)
08E1  15 AC 08                               JMP                           target=0x08AC
08E4  09 45 14                               VIDEOREF                      ref=0x1445 (FH[69]=f_5fa.vdx)
08E7  15 86 08                               JMP                           target=0x0886
08EA  09 43 14                               VIDEOREF                      ref=0x1443 (FH[67]=f_5bc.vdx)
08ED  15 6C 08                               JMP                           target=0x086C
08F0  09 48 14                               VIDEOREF                      ref=0x1448 (FH[72]=f_5fd.vdx)
08F3  15 92 08                               JMP                           target=0x0892
08F6  96 8C 30 B3                            LOADSTRING                    dst=v[0x08C], values=[0, 3]
08FA  09 0C 14                               VIDEOREF                      ref=0x140C (FH[12]=f2_d.vdx)
08FD  03                                     FADEIN_NEXT_VIDEO
08FE  05                                     FIRSTFRAME_NEXT_VIDEO
08FF  09 64 10                               VIDEOREF                      ref=0x1064 (DR[100]=dr_tba.vdx)
0902  A3 D7 B0 0A 09                         STRCMP_EQ_JMP                 start=v[0x0D7], values=[0], target=0x090A
0907  02 0A 4C                               PLAYSONG                      ref=0x4C0A (XMI[10]=gu12.xmi)
090A  96 8C 30 B3                            LOADSTRING                    dst=v[0x08C], values=[0, 3]
090E  0B                                     INPUTLOOPSTART
090F  0E 19 09                               HOTSPOT_LEFT                  target=0x0919
0912  0F 1F 09                               HOTSPOT_RIGHT                 target=0x091F
0915  11 57 09                               HOTSPOT_CENTER_2              target=0x0957
0918  13                                     INPUTLOOPEND
0919  09 64 10                               VIDEOREF                      ref=0x1064 (DR[100]=dr_tba.vdx)
091C  15 25 09                               JMP                           target=0x0925
091F  09 67 10                               VIDEOREF                      ref=0x1067 (DR[103]=dr_tfc.vdx)
0922  15 25 09                               JMP                           target=0x0925
0925  0B                                     INPUTLOOPSTART
0926  0F 3F 09                               HOTSPOT_RIGHT                 target=0x093F
0929  0E 39 09                               HOTSPOT_LEFT                  target=0x0939
092C  0D 24 00 73 00 5C 02 80 01 45 09 00    HOTSPOT_RECT                  left=0x0024, top=0x0073, right=0x025C, bottom=0x0180, target=0x0945, cursor=0x00
0938  13                                     INPUTLOOPEND
0939  09 65 10                               VIDEOREF                      ref=0x1065 (DR[101]=dr_tbc.vdx)
093C  15 0A 09                               JMP                           target=0x090A
093F  09 66 10                               VIDEOREF                      ref=0x1066 (DR[102]=dr_tfa.vdx)
0942  15 0A 09                               JMP                           target=0x090A
0945  09 5E 10                               VIDEOREF                      ref=0x105E (DR[94]=dr_d.vdx)
0948  03                                     FADEIN_NEXT_VIDEO
0949  05                                     FIRSTFRAME_NEXT_VIDEO
094A  09 2B 14                               VIDEOREF                      ref=0x142B (FH[43]=f_2bc.vdx)
094D  96 8C 30 B1                            LOADSTRING                    dst=v[0x08C], values=[0, 1]
0951  02 39 4C                               PLAYSONG                      ref=0x4C39 (XMI[57]=gu61.xmi)
0954  15 EC 06                               JMP                           target=0x06EC
; Dining-room puzzle return gate, verified by trace 20260809-212141:
; DR.GRV sets shared v[0FA]=49 after all six cake pieces are committed and
; returns byte 0.  v[0D6] is the persistent cake-completed latch; v[0D7] is
; the one-time first-visit dining close-up latch.
0957  09 5F 10                               VIDEOREF                      ref=0x105F (DR[95]=dr_mi.vdx)
095A  9A FA E1 71 09                         STRCMP_NE_JMP                 start=v[0x0FA], values=[49], target=0x0971
095F  9A D6 B0 71 09                         STRCMP_NE_JMP                 start=v[0x0D6], values=[0], target=0x0971
0964  96 D6 B1                               LOADSTRING                    dst=v[0x0D6], values=[1]
0967  18 F5 35                               CALL                          target=0x35F5
096A  96 8E 31 B7                            LOADSTRING                    dst=v[0x08E], values=[1, 7]
096E  02 10 4C                               PLAYSONG                      ref=0x4C10 (XMI[16]=gu19.xmi)
0971  9A D7 B0 80 09                         STRCMP_NE_JMP                 start=v[0x0D7], values=[0], target=0x0980
0976  96 D7 B1                               LOADSTRING                    dst=v[0x0D7], values=[1]
0979  18 E3 35                               CALL                          target=0x35E3
097C  96 8E 31 B6                            LOADSTRING                    dst=v[0x08E], values=[1, 6]
0980  0B                                     INPUTLOOPSTART
0981  9A 8E 31 B6 8A 09                      STRCMP_NE_JMP                 start=v[0x08E], values=[1, 6], target=0x098A
0987  30 12 39                               HOTSPOT_BOTTOM_4              target=0x3912
098A  A3 FA E1 9B 09                         STRCMP_EQ_JMP                 start=v[0x0FA], values=[49], target=0x099B
098F  0D 02 01 F8 00 73 01 3A 01 E8 09 06    HOTSPOT_RECT                  left=0x0102, top=0x00F8, right=0x0173, bottom=0x013A, target=0x09E8, cursor=0x06
099B  1A 08 01 B1 AD 09                      STRCMP_NE_JMP                 start=v[0x108], values=[1], target=0x09AD
09A1  0D 02 01 F8 00 73 01 3A 01 E8 09 06    HOTSPOT_RECT                  left=0x0102, top=0x00F8, right=0x0173, bottom=0x013A, target=0x09E8, cursor=0x06
09AD  0F 0D 0A                               HOTSPOT_RIGHT                 target=0x0A0D
09B0  0D 6C 00 0B 01 48 02 31 01 01 0A 07    HOTSPOT_RECT                  left=0x006C, top=0x010B, right=0x0248, bottom=0x0131, target=0x0A01, cursor=0x07
09BC  9A D6 B1 CD 09                         STRCMP_NE_JMP                 start=v[0x0D6], values=[1], target=0x09CD
09C1  0D 37 00 95 00 4F 00 3F 01 DC 09 04    HOTSPOT_RECT                  left=0x0037, top=0x0095, right=0x004F, bottom=0x013F, target=0x09DC, cursor=0x04
09CD  9A 8E 31 B7 DB 09                      STRCMP_NE_JMP                 start=v[0x08E], values=[1, 7], target=0x09DB
09D3  9A D6 B1 DB 09                         STRCMP_NE_JMP                 start=v[0x0D6], values=[1], target=0x09DB
09D8  30 12 39                               HOTSPOT_BOTTOM_4              target=0x3912
09DB  13                                     INPUTLOOPEND
09DC  02 07 4C                               PLAYSONG                      ref=0x4C07 (XMI[7]=gu9.xmi)
09DF  09 00 10                               VIDEOREF                      ref=0x1000 (DR[0]=come.vdx)
09E2  02 10 4C                               PLAYSONG                      ref=0x4C10 (XMI[16]=gu19.xmi)
09E5  15 5A 09                               JMP                           target=0x095A
09E8  02 0A 4C                               PLAYSONG                      ref=0x4C0A (XMI[10]=gu12.xmi)
09EB  09 69 10                               VIDEOREF                      ref=0x1069 (DR[105]=dr_v.vdx)
09EE  18 E9 40                               CALL                          target=0x40E9
09F1  1C 6A 10                               VIDEO_TRANSITION_REF          ref=0x106A (DR[106]=dr_vb.vdx)
09F4  18 BA 03                               CALL                          target=0x03BA
09F7  05                                     FIRSTFRAME_NEXT_VIDEO
09F8  09 6A 10                               VIDEOREF                      ref=0x106A (DR[106]=dr_vb.vdx)
09FB  09 6A 10                               VIDEOREF                      ref=0x106A (DR[106]=dr_vb.vdx)
09FE  15 5A 09                               JMP                           target=0x095A
0A01  02 04 4C                               PLAYSONG                      ref=0x4C04 (XMI[4]=gu5.xmi)
0A04  09 63 10                               VIDEOREF                      ref=0x1063 (DR[99]=dr_r.vdx)
0A07  02 10 4C                               PLAYSONG                      ref=0x4C10 (XMI[16]=gu19.xmi)
0A0A  15 5A 09                               JMP                           target=0x095A
0A0D  09 62 10                               VIDEOREF                      ref=0x1062 (DR[98]=dr_mtf.vdx)
0A10  09 60 10                               VIDEOREF                      ref=0x1060 (DR[96]=dr_mo.vdx)
0A13  15 25 09                               JMP                           target=0x0925
0A16  96 8C 30 B4                            LOADSTRING                    dst=v[0x08C], values=[0, 4]
0A1A  03                                     FADEIN_NEXT_VIDEO
0A1B  05                                     FIRSTFRAME_NEXT_VIDEO
0A1C  09 0C 2C                               VIDEOREF                      ref=0x2C0C (K[12]=k_1ba.vdx)
0A1F  02 22 4C                               PLAYSONG                      ref=0x4C22 (XMI[34]=gu37.xmi)
0A22  9A C3 B1 3C 0A                         STRCMP_NE_JMP                 start=v[0x0C3], values=[1], target=0x0A3C
0A27  9A C0 B0 3C 0A                         STRCMP_NE_JMP                 start=v[0x0C0], values=[0], target=0x0A3C
0A2C  09 0F 2C                               VIDEOREF                      ref=0x2C0F (K[15]=k_1tf.vdx)
0A2F  18 C4 37                               CALL                          target=0x37C4
0A32  96 8E 33 B9                            LOADSTRING                    dst=v[0x08E], values=[3, 9]
0A36  96 C0 B1                               LOADSTRING                    dst=v[0x0C0], values=[1]
0A39  09 0E 2C                               VIDEOREF                      ref=0x2C0E (K[14]=k_1tb.vdx)
0A3C  0B                                     INPUTLOOPSTART
0A3D  9A 8E 33 B9 46 0A                      STRCMP_NE_JMP                 start=v[0x08E], values=[3, 9], target=0x0A46
0A43  30 12 39                               HOTSPOT_BOTTOM_4              target=0x3912
0A46  0E A0 0A                               HOTSPOT_LEFT                  target=0x0AA0
0A49  9A BF B0 5A 0A                         STRCMP_NE_JMP                 start=v[0x0BF], values=[0], target=0x0A5A
0A4E  0D E7 00 AA 00 8C 01 49 01 86 0A 04    HOTSPOT_RECT                  left=0x00E7, top=0x00AA, right=0x018C, bottom=0x0149, target=0x0A86, cursor=0x04
0A5A  9A BF B1 62 0A                         STRCMP_NE_JMP                 start=v[0x0BF], values=[1], target=0x0A62
0A5F  11 D1 0A                               HOTSPOT_CENTER_2              target=0x0AD1
0A62  9A C1 B0 73 0A                         STRCMP_NE_JMP                 start=v[0x0C1], values=[0], target=0x0A73
0A67  0D BE 01 E5 00 29 02 24 01 93 0A 04    HOTSPOT_RECT                  left=0x01BE, top=0x00E5, right=0x0229, bottom=0x0124, target=0x0A93, cursor=0x04
0A73  9A 8E 34 B0 7C 0A                      STRCMP_NE_JMP                 start=v[0x08E], values=[4, 0], target=0x0A7C
0A79  30 12 39                               HOTSPOT_BOTTOM_4              target=0x3912
0A7C  9A 8E 33 B8 85 0A                      STRCMP_NE_JMP                 start=v[0x08E], values=[3, 8], target=0x0A85
0A82  30 12 39                               HOTSPOT_BOTTOM_4              target=0x3912
0A85  13                                     INPUTLOOPEND
0A86  96 BF B1                               LOADSTRING                    dst=v[0x0BF], values=[1]
0A89  96 8E 34 B0                            LOADSTRING                    dst=v[0x08E], values=[4, 0]
0A8D  18 42 37                               CALL                          target=0x3742
0A90  15 3C 0A                               JMP                           target=0x0A3C
0A93  96 C1 B1                               LOADSTRING                    dst=v[0x0C1], values=[1]
0A96  96 8E 33 B8                            LOADSTRING                    dst=v[0x08E], values=[3, 8]
0A9A  18 54 37                               CALL                          target=0x3754
0A9D  15 3C 0A                               JMP                           target=0x0A3C
0AA0  09 0C 2C                               VIDEOREF                      ref=0x2C0C (K[12]=k_1ba.vdx)
0AA3  15 AC 0A                               JMP                           target=0x0AAC
0AA6  09 0D 2C                               VIDEOREF                      ref=0x2C0D (K[13]=k_1fa.vdx)
0AA9  15 3C 0A                               JMP                           target=0x0A3C
0AAC  0B                                     INPUTLOOPSTART
0AAD  0F A6 0A                               HOTSPOT_RIGHT                 target=0x0AA6
0AB0  10 B4 0A                               HOTSPOT_CENTER                target=0x0AB4
0AB3  13                                     INPUTLOOPEND
0AB4  09 01 2C                               VIDEOREF                      ref=0x2C01 (K[1]=k1_6.vdx)
0AB7  03                                     FADEIN_NEXT_VIDEO
0AB8  05                                     FIRSTFRAME_NEXT_VIDEO
0AB9  09 35 14                               VIDEOREF                      ref=0x1435 (FH[53]=f_3fa.vdx)
0ABC  96 8C 30 B1                            LOADSTRING                    dst=v[0x08C], values=[0, 1]
0AC0  02 39 4C                               PLAYSONG                      ref=0x4C39 (XMI[57]=gu61.xmi)
0AC3  15 70 07                               JMP                           target=0x0770
0AC6  09 04 2C                               VIDEOREF                      ref=0x2C04 (K[4]=k2_5.vdx)
0AC9  96 8C 30 B5                            LOADSTRING                    dst=v[0x08C], values=[0, 5]
0ACD  03                                     FADEIN_NEXT_VIDEO
0ACE  15 00 17                               JMP                           target=0x1700
0AD1  09 00 2C                               VIDEOREF                      ref=0x2C00 (K[0]=k1_2.vdx)
0AD4  15 E7 0A                               JMP                           target=0x0AE7
0AD7  03                                     FADEIN_NEXT_VIDEO
0AD8  09 18 2C                               VIDEOREF                      ref=0x2C18 (K[24]=k_st.vdx)
0ADB  15 E7 0A                               JMP                           target=0x0AE7
0ADE  09 16 2C                               VIDEOREF                      ref=0x2C16 (K[22]=k_2fc.vdx)
0AE1  15 E7 0A                               JMP                           target=0x0AE7
0AE4  09 13 2C                               VIDEOREF                      ref=0x2C13 (K[19]=k_2bd.vdx)
0AE7  0B                                     INPUTLOOPSTART
0AE8  0E 52 0B                               HOTSPOT_LEFT                  target=0x0B52
0AEB  0F 63 0B                               HOTSPOT_RIGHT                 target=0x0B63
0AEE  9A FA E1 04 0B                         STRCMP_NE_JMP                 start=v[0x0FA], values=[49], target=0x0B04
0AF3  A3 F9 E1 04 0B                         STRCMP_EQ_JMP                 start=v[0x0F9], values=[49], target=0x0B04
0AF8  0D 65 00 77 00 1F 02 69 01 17 0B 06    HOTSPOT_RECT                  left=0x0065, top=0x0077, right=0x021F, bottom=0x0169, target=0x0B17, cursor=0x06
0B04  1A 08 01 B1 16 0B                      STRCMP_NE_JMP                 start=v[0x108], values=[1], target=0x0B16
0B0A  0D 65 00 77 00 1F 02 69 01 17 0B 06    HOTSPOT_RECT                  left=0x0065, top=0x0077, right=0x021F, bottom=0x0169, target=0x0B17, cursor=0x06
0B16  13                                     INPUTLOOPEND
0B17  09 03 2C                               VIDEOREF                      ref=0x2C03 (K[3]=k2_4.vdx)
0B1A  23 05 01 B0 26 0B                      STRCMP_EQ_JMP                 start=v[0x105], values=[0], target=0x0B26
0B20  4B 00                                  SET_VIDEO_MODE                value=0x00
0B22  16 09 01 B1                            LOADSTRING                    dst=v[0x109], values=[1]
0B26  03                                     FADEIN_NEXT_VIDEO
0B27  09 19 2C                               VIDEOREF                      ref=0x2C19 (K[25]=shelf.vdx)
0B2A  18 48 3F                               CALL                          target=0x3F48
0B2D  9A F9 E1 3D 0B                         STRCMP_NE_JMP                 start=v[0x0F9], values=[49], target=0x0B3D
0B32  9A BE B0 3D 0B                         STRCMP_NE_JMP                 start=v[0x0BE], values=[0], target=0x0B3D
0B37  96 BE B1                               LOADSTRING                    dst=v[0x0BE], values=[1]
0B3A  18 66 37                               CALL                          target=0x3766
0B3D  04                                     PALFADEOUT
0B3E  1A 09 01 B1 4A 0B                      STRCMP_NE_JMP                 start=v[0x109], values=[1], target=0x0B4A
0B44  4B 01                                  SET_VIDEO_MODE                value=0x01
0B46  16 09 01 B0                            LOADSTRING                    dst=v[0x109], values=[0]
0B4A  03                                     FADEIN_NEXT_VIDEO
0B4B  05                                     FIRSTFRAME_NEXT_VIDEO
0B4C  09 17 2C                               VIDEOREF                      ref=0x2C17 (K[23]=k_2fd.vdx)
0B4F  15 E7 0A                               JMP                           target=0x0AE7
0B52  09 12 2C                               VIDEOREF                      ref=0x2C12 (K[18]=k_2bc.vdx)
0B55  15 5B 0B                               JMP                           target=0x0B5B
0B58  09 15 2C                               VIDEOREF                      ref=0x2C15 (K[21]=k_2fb.vdx)
0B5B  0B                                     INPUTLOOPSTART
0B5C  0E 82 0B                               HOTSPOT_LEFT                  target=0x0B82
0B5F  0F DE 0A                               HOTSPOT_RIGHT                 target=0x0ADE
0B62  13                                     INPUTLOOPEND
0B63  09 17 2C                               VIDEOREF                      ref=0x2C17 (K[23]=k_2fd.vdx)
0B66  15 6C 0B                               JMP                           target=0x0B6C
0B69  09 10 2C                               VIDEOREF                      ref=0x2C10 (K[16]=k_2ba.vdx)
0B6C  0B                                     INPUTLOOPSTART
0B6D  0E E4 0A                               HOTSPOT_LEFT                  target=0x0AE4
0B70  9A F9 E1 78 0B                         STRCMP_NE_JMP                 start=v[0x0F9], values=[49], target=0x0B78
0B75  10 C6 0A                               HOTSPOT_CENTER                target=0x0AC6
0B78  0F 7C 0B                               HOTSPOT_RIGHT                 target=0x0B7C
0B7B  13                                     INPUTLOOPEND
0B7C  09 14 2C                               VIDEOREF                      ref=0x2C14 (K[20]=k_2fa.vdx)
0B7F  15 AE 0B                               JMP                           target=0x0BAE
0B82  09 11 2C                               VIDEOREF                      ref=0x2C11 (K[17]=k_2bb.vdx)
0B85  15 AE 0B                               JMP                           target=0x0BAE
0B88  1A 00 01 B0 94 0B                      STRCMP_NE_JMP                 start=v[0x100], values=[0], target=0x0B94
0B8E  02 02 4C                               PLAYSONG                      ref=0x4C02 (XMI[2]=agu38.xmi)
0B91  15 97 0B                               JMP                           target=0x0B97
0B94  02 23 4C                               PLAYSONG                      ref=0x4C23 (XMI[35]=gu38.xmi)
0B97  09 06 2C                               VIDEOREF                      ref=0x2C06 (K[6]=k2_7f.vdx)
0B9A  96 BD B1                               LOADSTRING                    dst=v[0x0BD], values=[1]
0B9D  18 73 37                               CALL                          target=0x3773
0BA0  96 8E 34 B2                            LOADSTRING                    dst=v[0x08E], values=[4, 2]
0BA4  07                                     VIDEOFLAG7_ON
0BA5  09 14 50                               VIDEOREF                      ref=0x5014 (GAMWAV[20]=5_e_1.vdx)
0BA8  09 05 2C                               VIDEOREF                      ref=0x2C05 (K[5]=k2_7b.vdx)
0BAB  15 AE 0B                               JMP                           target=0x0BAE
0BAE  0B                                     INPUTLOOPSTART
0BAF  9A 8E 34 B2 B8 0B                      STRCMP_NE_JMP                 start=v[0x08E], values=[4, 2], target=0x0BB8
0BB5  30 12 39                               HOTSPOT_BOTTOM_4              target=0x3912
0BB8  0E 69 0B                               HOTSPOT_LEFT                  target=0x0B69
0BBB  9A BD B0 D1 0B                         STRCMP_NE_JMP                 start=v[0x0BD], values=[0], target=0x0BD1
0BC0  9A F9 E1 D1 0B                         STRCMP_NE_JMP                 start=v[0x0F9], values=[49], target=0x0BD1
0BC5  0D 90 00 DA 00 E0 00 1C 01 88 0B 04    HOTSPOT_RECT                  left=0x0090, top=0x00DA, right=0x00E0, bottom=0x011C, target=0x0B88, cursor=0x04
0BD1  11 D8 0B                               HOTSPOT_CENTER_2              target=0x0BD8
0BD4  0F 58 0B                               HOTSPOT_RIGHT                 target=0x0B58
0BD7  13                                     INPUTLOOPEND
0BD8  09 02 2C                               VIDEOREF                      ref=0x2C02 (K[2]=k2_1.vdx)
0BDB  15 AC 0A                               JMP                           target=0x0AAC
0BDE  09 14 14                               VIDEOREF                      ref=0x1414 (FH[20]=f4_d.vdx)
0BE1  96 8C 30 B8                            LOADSTRING                    dst=v[0x08C], values=[0, 8]
0BE5  03                                     FADEIN_NEXT_VIDEO
0BE6  05                                     FIRSTFRAME_NEXT_VIDEO
0BE7  09 01 40                               VIDEOREF                      ref=0x4001 (MU[1]=muab.vdx)
0BEA  96 8C 30 B8                            LOADSTRING                    dst=v[0x08C], values=[0, 8]
0BEE  9A CD B0 07 0C                         STRCMP_NE_JMP                 start=v[0x0CD], values=[0], target=0x0C07
0BF3  9A F3 E1 07 0C                         STRCMP_NE_JMP                 start=v[0x0F3], values=[49], target=0x0C07
0BF8  9A F6 E1 07 0C                         STRCMP_NE_JMP                 start=v[0x0F6], values=[49], target=0x0C07
0BFD  96 CD B1                               LOADSTRING                    dst=v[0x0CD], values=[1]
0C00  96 8E 32 B6                            LOADSTRING                    dst=v[0x08E], values=[2, 6]
0C04  18 52 38                               CALL                          target=0x3852
0C07  0B                                     INPUTLOOPSTART
0C08  9A 8E 32 B6 11 0C                      STRCMP_NE_JMP                 start=v[0x08E], values=[2, 6], target=0x0C11
0C0E  30 12 39                               HOTSPOT_BOTTOM_4              target=0x3912
0C11  9A 8E 32 B7 1A 0C                      STRCMP_NE_JMP                 start=v[0x08E], values=[2, 7], target=0x0C1A
0C17  30 12 39                               HOTSPOT_BOTTOM_4              target=0x3912
0C1A  9A 8E 32 B8 23 0C                      STRCMP_NE_JMP                 start=v[0x08E], values=[2, 8], target=0x0C23
0C20  30 12 39                               HOTSPOT_BOTTOM_4              target=0x3912
0C23  0E D1 0C                               HOTSPOT_LEFT                  target=0x0CD1
0C26  9A CC B1 3C 0C                         STRCMP_NE_JMP                 start=v[0x0CC], values=[1], target=0x0C3C
0C2B  A3 F6 E1 3C 0C                         STRCMP_EQ_JMP                 start=v[0x0F6], values=[49], target=0x0C3C
0C30  0D C8 00 F0 00 27 01 1D 01 AC 0C 06    HOTSPOT_RECT                  left=0x00C8, top=0x00F0, right=0x0127, bottom=0x011D, target=0x0CAC, cursor=0x06
0C3C  1A 08 01 B1 4E 0C                      STRCMP_NE_JMP                 start=v[0x108], values=[1], target=0x0C4E
0C42  0D C8 00 F0 00 27 01 1D 01 AC 0C 06    HOTSPOT_RECT                  left=0x00C8, top=0x00F0, right=0x0127, bottom=0x011D, target=0x0CAC, cursor=0x06
0C4E  9A CC B0 5F 0C                         STRCMP_NE_JMP                 start=v[0x0CC], values=[0], target=0x0C5F
0C53  0D C8 00 F0 00 27 01 1D 01 80 0C 04    HOTSPOT_RECT                  left=0x00C8, top=0x00F0, right=0x0127, bottom=0x011D, target=0x0C80, cursor=0x04
0C5F  9A CB B0 70 0C                         STRCMP_NE_JMP                 start=v[0x0CB], values=[0], target=0x0C70
0C64  0D 68 00 83 00 B8 00 09 01 90 0C 04    HOTSPOT_RECT                  left=0x0068, top=0x0083, right=0x00B8, bottom=0x0109, target=0x0C90, cursor=0x04
0C70  0D C6 01 82 00 22 02 30 01 BC 0C 07    HOTSPOT_RECT                  left=0x01C6, top=0x0082, right=0x0222, bottom=0x0130, target=0x0CBC, cursor=0x07
0C7C  0F D7 0C                               HOTSPOT_RIGHT                 target=0x0CD7
0C7F  13                                     INPUTLOOPEND
0C80  02 25 4C                               PLAYSONG                      ref=0x4C25 (XMI[37]=gu40.xmi)
0C83  96 CC B1                               LOADSTRING                    dst=v[0x0CC], values=[1]
0C86  96 8E 32 B7                            LOADSTRING                    dst=v[0x08E], values=[2, 7]
0C8A  18 76 38                               CALL                          target=0x3876
0C8D  15 EA 0B                               JMP                           target=0x0BEA
0C90  96 CB B1                               LOADSTRING                    dst=v[0x0CB], values=[1]
0C93  96 8E 32 B8                            LOADSTRING                    dst=v[0x08E], values=[2, 8]
0C97  02 17 4C                               PLAYSONG                      ref=0x4C17 (XMI[23]=gu26.xmi)
0C9A  18 85 38                               CALL                          target=0x3885
0C9D  15 EA 0B                               JMP                           target=0x0BEA
0CA0  09 02 40                               VIDEOREF                      ref=0x4002 (MU[2]=muabb.vdx)
0CA3  15 EA 0B                               JMP                           target=0x0BEA
0CA6  09 03 40                               VIDEOREF                      ref=0x4003 (MU[3]=mucd.vdx)
0CA9  15 EA 0B                               JMP                           target=0x0BEA
0CAC  96 92 30 B7                            LOADSTRING                    dst=v[0x092], values=[0, 7]
0CB0  09 09 40                               VIDEOREF                      ref=0x4009 (MU[9]=mupi.vdx)
0CB3  18 B7 3D                               CALL                          target=0x3DB7
0CB6  09 0A 40                               VIDEOREF                      ref=0x400A (MU[10]=mupib.vdx)
0CB9  15 EA 0B                               JMP                           target=0x0BEA
0CBC  0A                                     VIDEOFLAG5_ON
0CBD  02 3E 4C                               PLAYSONG                      ref=0x4C3E (XMI[62]=gu70.xmi)
0CC0  09 06 40                               VIDEOREF                      ref=0x4006 (MU[6]=mugr.vdx)
0CC3  07                                     VIDEOFLAG7_ON
0CC4  09 64 50                               VIDEOREF                      ref=0x5064 (GAMWAV[100]=19_e_1.vdx)
0CC7  09 0B 40                               VIDEOREF                      ref=0x400B (MU[11]=mupl.vdx)
0CCA  96 8C 31 B5                            LOADSTRING                    dst=v[0x08C], values=[1, 5]
0CCE  15 58 0D                               JMP                           target=0x0D58
0CD1  09 04 40                               VIDEOREF                      ref=0x4004 (MU[4]=mucdb.vdx)
0CD4  15 DD 0C                               JMP                           target=0x0CDD
0CD7  09 01 40                               VIDEOREF                      ref=0x4001 (MU[1]=muab.vdx)
0CDA  15 DD 0C                               JMP                           target=0x0CDD
0CDD  0B                                     INPUTLOOPSTART
0CDE  9A CA B0 EF 0C                         STRCMP_NE_JMP                 start=v[0x0CA], values=[0], target=0x0CEF
0CE3  0D 12 00 9C 00 7E 00 F9 00 2A 0D 07    HOTSPOT_RECT                  left=0x0012, top=0x009C, right=0x007E, bottom=0x00F9, target=0x0D2A, cursor=0x07
0CEF  9A C9 B0 00 0D                         STRCMP_NE_JMP                 start=v[0x0C9], values=[0], target=0x0D00
0CF4  0D 12 00 9C 00 7E 00 F9 00 30 0D 07    HOTSPOT_RECT                  left=0x0012, top=0x009C, right=0x007E, bottom=0x00F9, target=0x0D30, cursor=0x07
0D00  9A C8 B0 11 0D                         STRCMP_NE_JMP                 start=v[0x0C8], values=[0], target=0x0D11
0D05  0D 12 00 9C 00 7E 00 F9 00 36 0D 07    HOTSPOT_RECT                  left=0x0012, top=0x009C, right=0x007E, bottom=0x00F9, target=0x0D36, cursor=0x07
0D11  0F A6 0C                               HOTSPOT_RIGHT                 target=0x0CA6
0D14  0E A0 0C                               HOTSPOT_LEFT                  target=0x0CA0
0D17  10 1B 0D                               HOTSPOT_CENTER                target=0x0D1B
0D1A  13                                     INPUTLOOPEND
0D1B  09 05 40                               VIDEOREF                      ref=0x4005 (MU[5]=muex.vdx)
0D1E  03                                     FADEIN_NEXT_VIDEO
0D1F  05                                     FIRSTFRAME_NEXT_VIDEO
0D20  09 3D 14                               VIDEOREF                      ref=0x143D (FH[61]=f_4fa.vdx)
0D23  96 8C 30 B1                            LOADSTRING                    dst=v[0x08C], values=[0, 1]
0D27  15 04 08                               JMP                           target=0x0804
0D2A  18 94 38                               CALL                          target=0x3894
0D2D  15 DD 0C                               JMP                           target=0x0CDD
0D30  18 A3 38                               CALL                          target=0x38A3
0D33  15 DD 0C                               JMP                           target=0x0CDD
0D36  18 B2 38                               CALL                          target=0x38B2
0D39  15 DD 0C                               JMP                           target=0x0CDD
0D3C  09 0C 40                               VIDEOREF                      ref=0x400C (MU[12]=muplb.vdx)
0D3F  09 07 40                               VIDEOREF                      ref=0x4007 (MU[7]=mugrb.vdx)
0D42  96 8C 30 B8                            LOADSTRING                    dst=v[0x08C], values=[0, 8]
0D46  15 EA 0B                               JMP                           target=0x0BEA
0D49  02 06 4C                               PLAYSONG                      ref=0x4C06 (XMI[6]=gu8.xmi)
0D4C  96 8C 31 B5                            LOADSTRING                    dst=v[0x08C], values=[1, 5]
0D50  03                                     FADEIN_NEXT_VIDEO
0D51  05                                     FIRSTFRAME_NEXT_VIDEO
0D52  09 72 20                               VIDEOREF                      ref=0x2072 (HTBD[114]=bdab.vdx)
0D55  15 60 0D                               JMP                           target=0x0D60
0D58  03                                     FADEIN_NEXT_VIDEO
0D59  09 7A 20                               VIDEOREF                      ref=0x207A (HTBD[122]=bdplb.vdx)
0D5C  96 8C 31 B5                            LOADSTRING                    dst=v[0x08C], values=[1, 5]
0D60  9A E9 E1 74 0D                         STRCMP_NE_JMP                 start=v[0x0E9], values=[49], target=0x0D74
0D65  9A D4 B0 74 0D                         STRCMP_NE_JMP                 start=v[0x0D4], values=[0], target=0x0D74
0D6A  96 D4 B1                               LOADSTRING                    dst=v[0x0D4], values=[1]
0D6D  96 8E 31 B9                            LOADSTRING                    dst=v[0x08E], values=[1, 9]
0D71  18 D1 35                               CALL                          target=0x35D1
0D74  0B                                     INPUTLOOPSTART
0D75  0F 37 0E                               HOTSPOT_RIGHT                 target=0x0E37
0D78  A3 E9 E1 89 0D                         STRCMP_EQ_JMP                 start=v[0x0E9], values=[49], target=0x0D89
0D7D  0D 17 01 E6 00 6C 01 19 01 22 0E 06    HOTSPOT_RECT                  left=0x0117, top=0x00E6, right=0x016C, bottom=0x0119, target=0x0E22, cursor=0x06
0D89  1A 08 01 B1 9B 0D                      STRCMP_NE_JMP                 start=v[0x108], values=[1], target=0x0D9B
0D8F  0D 17 01 E6 00 6C 01 19 01 22 0E 06    HOTSPOT_RECT                  left=0x0117, top=0x00E6, right=0x016C, bottom=0x0119, target=0x0E22, cursor=0x06
0D9B  9A E9 E1 C5 0D                         STRCMP_NE_JMP                 start=v[0x0E9], values=[49], target=0x0DC5
0DA0  A3 99 B0 C5 0D                         STRCMP_EQ_JMP                 start=v[0x099], values=[0], target=0x0DC5
0DA5  9A D3 B0 B9 0D                         STRCMP_NE_JMP                 start=v[0x0D3], values=[0], target=0x0DB9
0DAA  0D 22 00 5F 00 5A 00 59 01 60 0E 04    HOTSPOT_RECT                  left=0x0022, top=0x005F, right=0x005A, bottom=0x0159, target=0x0E60, cursor=0x04
0DB6  15 C5 0D                               JMP                           target=0x0DC5
0DB9  0D 22 00 5F 00 5A 00 59 01 0B 0E 00    HOTSPOT_RECT                  left=0x0022, top=0x005F, right=0x005A, bottom=0x0159, target=0x0E0B, cursor=0x00
0DC5  9A 8E 32 B0 CE 0D                      STRCMP_NE_JMP                 start=v[0x08E], values=[2, 0], target=0x0DCE
0DCB  30 12 39                               HOTSPOT_BOTTOM_4              target=0x3912
0DCE  9A F3 E1 E4 0D                         STRCMP_NE_JMP                 start=v[0x0F3], values=[49], target=0x0DE4
0DD3  9A E9 E1 E4 0D                         STRCMP_NE_JMP                 start=v[0x0E9], values=[49], target=0x0DE4
0DD8  0D 11 02 DC 00 53 02 5A 01 75 0E 07    HOTSPOT_RECT                  left=0x0211, top=0x00DC, right=0x0253, bottom=0x015A, target=0x0E75, cursor=0x07
0DE4  9A D2 B0 F5 0D                         STRCMP_NE_JMP                 start=v[0x0D2], values=[0], target=0x0DF5
0DE9  0D E6 01 F4 00 09 02 29 01 15 0E 04    HOTSPOT_RECT                  left=0x01E6, top=0x00F4, right=0x0209, bottom=0x0129, target=0x0E15, cursor=0x04
0DF5  9A 8E 32 B1 FE 0D                      STRCMP_NE_JMP                 start=v[0x08E], values=[2, 1], target=0x0DFE
0DFB  30 12 39                               HOTSPOT_BOTTOM_4              target=0x3912
0DFE  9A 8E 31 B9 07 0E                      STRCMP_NE_JMP                 start=v[0x08E], values=[1, 9], target=0x0E07
0E04  30 12 39                               HOTSPOT_BOTTOM_4              target=0x3912
0E07  0E 31 0E                               HOTSPOT_LEFT                  target=0x0E31
0E0A  13                                     INPUTLOOPEND
0E0B  96 8C 31 B6                            LOADSTRING                    dst=v[0x08C], values=[1, 6]
0E0F  09 76 20                               VIDEOREF                      ref=0x2076 (HTBD[118]=bdch.vdx)
0E12  15 47 2E                               JMP                           target=0x2E47
0E15  96 D2 B1                               LOADSTRING                    dst=v[0x0D2], values=[1]
0E18  18 37 36                               CALL                          target=0x3637
0E1B  96 8E 32 B1                            LOADSTRING                    dst=v[0x08E], values=[2, 1]
0E1F  15 60 0D                               JMP                           target=0x0D60
0E22  09 6C 20                               VIDEOREF                      ref=0x206C (HTBD[108]=bd1p.vdx)
0E25  09 6F 20                               VIDEOREF                      ref=0x206F (HTBD[111]=bd2p.vdx)
0E28  96 17 B4                               LOADSTRING                    dst=v[0x017], values=[4]
0E2B  18 95 40                               CALL                          target=0x4095
0E2E  15 60 0D                               JMP                           target=0x0D60
0E31  09 75 20                               VIDEOREF                      ref=0x2075 (HTBD[117]=bdcdb.vdx)
0E34  15 3A 0E                               JMP                           target=0x0E3A
0E37  09 72 20                               VIDEOREF                      ref=0x2072 (HTBD[114]=bdab.vdx)
0E3A  0B                                     INPUTLOOPSTART
0E3B  0E 4B 0E                               HOTSPOT_LEFT                  target=0x0E4B
0E3E  10 51 0E                               HOTSPOT_CENTER                target=0x0E51
0E41  0F 45 0E                               HOTSPOT_RIGHT                 target=0x0E45
0E44  13                                     INPUTLOOPEND
0E45  09 74 20                               VIDEOREF                      ref=0x2074 (HTBD[116]=bdcd.vdx)
0E48  15 60 0D                               JMP                           target=0x0D60
0E4B  09 73 20                               VIDEOREF                      ref=0x2073 (HTBD[115]=bdabb.vdx)
0E4E  15 60 0D                               JMP                           target=0x0D60
0E51  09 78 20                               VIDEOREF                      ref=0x2078 (HTBD[120]=bdex.vdx)
0E54  03                                     FADEIN_NEXT_VIDEO
0E55  05                                     FIRSTFRAME_NEXT_VIDEO
0E56  09 8F 14                               VIDEOREF                      ref=0x148F (FH[143]=h_4fc.vdx)
0E59  96 8C 30 B2                            LOADSTRING                    dst=v[0x08C], values=[0, 2]
0E5D  15 68 11                               JMP                           target=0x1168
0E60  9A D3 B0 6F 0E                         STRCMP_NE_JMP                 start=v[0x0D3], values=[0], target=0x0E6F
0E65  18 BF 35                               CALL                          target=0x35BF
0E68  96 D3 B1                               LOADSTRING                    dst=v[0x0D3], values=[1]
0E6B  96 8E 32 B0                            LOADSTRING                    dst=v[0x08E], values=[2, 0]
0E6F  09 76 20                               VIDEOREF                      ref=0x2076 (HTBD[118]=bdch.vdx)
0E72  15 47 2E                               JMP                           target=0x2E47
0E75  02 3D 4C                               PLAYSONG                      ref=0x4C3D (XMI[61]=gu69.xmi)
0E78  07                                     VIDEOFLAG7_ON
0E79  09 65 50                               VIDEOREF                      ref=0x5065 (GAMWAV[101]=19_e_2.vdx)
0E7C  09 79 20                               VIDEOREF                      ref=0x2079 (HTBD[121]=bdpl.vdx)
0E7F  04                                     PALFADEOUT
0E80  15 3C 0D                               JMP                           target=0x0D3C
0E83  96 8C 30 B2                            LOADSTRING                    dst=v[0x08C], values=[0, 2]
0E87  0B                                     INPUTLOOPSTART
0E88  0D D4 00 88 00 18 02 6F 01 9B 0E 07    HOTSPOT_RECT                  left=0x00D4, top=0x0088, right=0x0218, bottom=0x016F, target=0x0E9B, cursor=0x07
0E94  0E 89 0F                               HOTSPOT_LEFT                  target=0x0F89
0E97  0F 9C 0F                               HOTSPOT_RIGHT                 target=0x0F9C
0E9A  13                                     INPUTLOOPEND
; Runtime verified by trace 20260809-195435: the upstairs hands-painting
; easter-egg hotspot enables flag 5, switches to gu18.xmi, and plays h_morph.
0E9B  0A                                     VIDEOFLAG5_ON
0E9C  02 0F 4C                               PLAYSONG                      ref=0x4C0F (XMI[15]=gu18.xmi)
0E9F  09 AB 14                               VIDEOREF                      ref=0x14AB (FH[171]=h_morph.vdx)
0EA2  31 00 00 F4 01                         MIDI_CONTROL                  value=0x0000, time=0x01F4
0EA7  15 83 0E                               JMP                           target=0x0E83
0EAA  9A 90 B2 BC 0E                         STRCMP_NE_JMP                 start=v[0x090], values=[2], target=0x0EBC
0EAF  96 90 B3                               LOADSTRING                    dst=v[0x090], values=[3]
0EB2  18 08 35                               CALL                          target=0x3508
0EB5  96 DC B1                               LOADSTRING                    dst=v[0x0DC], values=[1]
0EB8  96 8E 31 B1                            LOADSTRING                    dst=v[0x08E], values=[1, 1]
0EBC  9A 90 B1 CE 0E                         STRCMP_NE_JMP                 start=v[0x090], values=[1], target=0x0ECE
0EC1  96 90 B2                               LOADSTRING                    dst=v[0x090], values=[2]
0EC4  18 F9 34                               CALL                          target=0x34F9
0EC7  96 DD B1                               LOADSTRING                    dst=v[0x0DD], values=[1]
0ECA  96 8E 31 B0                            LOADSTRING                    dst=v[0x08E], values=[1, 0]
0ECE  9A 90 B0 E0 0E                         STRCMP_NE_JMP                 start=v[0x090], values=[0], target=0x0EE0
0ED3  96 90 B1                               LOADSTRING                    dst=v[0x090], values=[1]
0ED6  18 DB 34                               CALL                          target=0x34DB
0ED9  96 DF B1                               LOADSTRING                    dst=v[0x0DF], values=[1]
0EDC  96 8E 30 B8                            LOADSTRING                    dst=v[0x08E], values=[0, 8]
0EE0  9A FA E1 F4 0E                         STRCMP_NE_JMP                 start=v[0x0FA], values=[49], target=0x0EF4
0EE5  9A E0 B0 F4 0E                         STRCMP_NE_JMP                 start=v[0x0E0], values=[0], target=0x0EF4
0EEA  18 BA 34                               CALL                          target=0x34BA
0EED  96 8E 30 B7                            LOADSTRING                    dst=v[0x08E], values=[0, 7]
0EF1  96 E0 B1                               LOADSTRING                    dst=v[0x0E0], values=[1]
0EF4  9A C3 B1 0D 0F                         STRCMP_NE_JMP                 start=v[0x0C3], values=[1], target=0x0F0D
0EF9  9A D7 B1 0D 0F                         STRCMP_NE_JMP                 start=v[0x0D7], values=[1], target=0x0F0D
0EFE  9A E2 B0 0D 0F                         STRCMP_NE_JMP                 start=v[0x0E2], values=[0], target=0x0F0D
0F03  96 E2 B1                               LOADSTRING                    dst=v[0x0E2], values=[1]
0F06  18 C9 34                               CALL                          target=0x34C9
0F09  96 8E 30 B5                            LOADSTRING                    dst=v[0x08E], values=[0, 5]
0F0D  0B                                     INPUTLOOPSTART
0F0E  11 45 0F                               HOTSPOT_CENTER_2              target=0x0F45
0F11  0E AF 0F                               HOTSPOT_LEFT                  target=0x0FAF
0F14  0F B5 0F                               HOTSPOT_RIGHT                 target=0x0FB5
0F17  9A 8E 31 B1 20 0F                      STRCMP_NE_JMP                 start=v[0x08E], values=[1, 1], target=0x0F20
0F1D  30 12 39                               HOTSPOT_BOTTOM_4              target=0x3912
0F20  9A 8E 31 B0 29 0F                      STRCMP_NE_JMP                 start=v[0x08E], values=[1, 0], target=0x0F29
0F26  30 12 39                               HOTSPOT_BOTTOM_4              target=0x3912
0F29  9A 8E 30 B8 32 0F                      STRCMP_NE_JMP                 start=v[0x08E], values=[0, 8], target=0x0F32
0F2F  30 12 39                               HOTSPOT_BOTTOM_4              target=0x3912
0F32  9A 8E 30 B7 3B 0F                      STRCMP_NE_JMP                 start=v[0x08E], values=[0, 7], target=0x0F3B
0F38  30 12 39                               HOTSPOT_BOTTOM_4              target=0x3912
0F3B  9A 8E 30 B5 44 0F                      STRCMP_NE_JMP                 start=v[0x08E], values=[0, 5], target=0x0F44
0F41  30 12 39                               HOTSPOT_BOTTOM_4              target=0x3912
0F44  13                                     INPUTLOOPEND
0F45  09 59 14                               VIDEOREF                      ref=0x1459 (FH[89]=h1_2.vdx)
0F48  15 ED 0F                               JMP                           target=0x0FED
0F4B  0B                                     INPUTLOOPSTART
0F4C  11 56 0F                               HOTSPOT_CENTER_2              target=0x0F56
0F4F  0E BB 0F                               HOTSPOT_LEFT                  target=0x0FBB
0F52  0F C1 0F                               HOTSPOT_RIGHT                 target=0x0FC1
0F55  13                                     INPUTLOOPEND
0F56  09 18 14                               VIDEOREF                      ref=0x1418 (FH[24]=f6_1.vdx)
0F59  96 8C 30 B1                            LOADSTRING                    dst=v[0x08C], values=[0, 1]
0F5D  15 83 05                               JMP                           target=0x0583
0F60  9A E1 B0 6F 0F                         STRCMP_NE_JMP                 start=v[0x0E1], values=[0], target=0x0F6F
0F65  18 AB 34                               CALL                          target=0x34AB
0F68  96 E1 B1                               LOADSTRING                    dst=v[0x0E1], values=[1]
0F6B  96 8E 30 B6                            LOADSTRING                    dst=v[0x08E], values=[0, 6]
0F6F  0B                                     INPUTLOOPSTART
0F70  9A 8E 30 B6 79 0F                      STRCMP_NE_JMP                 start=v[0x08E], values=[0, 6], target=0x0F79
0F76  30 12 39                               HOTSPOT_BOTTOM_4              target=0x3912
0F79  11 83 0F                               HOTSPOT_CENTER_2              target=0x0F83
0F7C  0E C7 0F                               HOTSPOT_LEFT                  target=0x0FC7
0F7F  0F CD 0F                               HOTSPOT_RIGHT                 target=0x0FCD
0F82  13                                     INPUTLOOPEND
0F83  09 5A 14                               VIDEOREF                      ref=0x145A (FH[90]=h1_8.vdx)
0F86  15 A6 10                               JMP                           target=0x10A6
0F89  09 72 14                               VIDEOREF                      ref=0x1472 (FH[114]=h_1bb.vdx)
0F8C  31 00 00 00 00                         MIDI_CONTROL                  value=0x0000, time=0x0000
0F91  02 39 4C                               PLAYSONG                      ref=0x4C39 (XMI[57]=gu61.xmi)
0F94  31 5F 00 EE 02                         MIDI_CONTROL                  value=0x005F, time=0x02EE
0F99  15 AA 0E                               JMP                           target=0x0EAA
0F9C  09 77 14                               VIDEOREF                      ref=0x1477 (FH[119]=h_1fc.vdx)
0F9F  31 00 00 00 00                         MIDI_CONTROL                  value=0x0000, time=0x0000
0FA4  02 35 4C                               PLAYSONG                      ref=0x4C35 (XMI[53]=gu56.xmi)
0FA7  31 5F 00 EE 02                         MIDI_CONTROL                  value=0x005F, time=0x02EE
0FAC  15 60 0F                               JMP                           target=0x0F60
0FAF  09 71 14                               VIDEOREF                      ref=0x1471 (FH[113]=h_1ba.vdx)
0FB2  15 4B 0F                               JMP                           target=0x0F4B
0FB5  09 76 14                               VIDEOREF                      ref=0x1476 (FH[118]=h_1fb.vdx)
0FB8  15 83 0E                               JMP                           target=0x0E83
0FBB  09 74 14                               VIDEOREF                      ref=0x1474 (FH[116]=h_1bd.vdx)
0FBE  15 60 0F                               JMP                           target=0x0F60
0FC1  09 75 14                               VIDEOREF                      ref=0x1475 (FH[117]=h_1fa.vdx)
0FC4  15 AA 0E                               JMP                           target=0x0EAA
0FC7  09 73 14                               VIDEOREF                      ref=0x1473 (FH[115]=h_1bc.vdx)
0FCA  15 83 0E                               JMP                           target=0x0E83
0FCD  09 78 14                               VIDEOREF                      ref=0x1478 (FH[120]=h_1fd.vdx)
0FD0  15 4B 0F                               JMP                           target=0x0F4B
0FD3  96 8C 30 B2                            LOADSTRING                    dst=v[0x08C], values=[0, 2]
0FD7  0B                                     INPUTLOOPSTART
0FD8  9A FA E1 E0 0F                         STRCMP_NE_JMP                 start=v[0x0FA], values=[49], target=0x0FE0
0FDD  10 10 10                               HOTSPOT_CENTER                target=0x1010
0FE0  0E 2D 10                               HOTSPOT_LEFT                  target=0x102D
0FE3  0F 33 10                               HOTSPOT_RIGHT                 target=0x1033
0FE6  13                                     INPUTLOOPEND
0FE7  09 5E 14                               VIDEOREF                      ref=0x145E (FH[94]=h2_e.vdx)
0FEA  15 4E 32                               JMP                           target=0x324E
0FED  96 8C 30 B2                            LOADSTRING                    dst=v[0x08C], values=[0, 2]
0FF1  0B                                     INPUTLOOPSTART
0FF2  11 21 10                               HOTSPOT_CENTER_2              target=0x1021
0FF5  0E 39 10                               HOTSPOT_LEFT                  target=0x1039
0FF8  0F 3F 10                               HOTSPOT_RIGHT                 target=0x103F
0FFB  13                                     INPUTLOOPEND
0FFC  96 8C 30 B2                            LOADSTRING                    dst=v[0x08C], values=[0, 2]
1000  0B                                     INPUTLOOPSTART
1001  9A FA E1 09 10                         STRCMP_NE_JMP                 start=v[0x0FA], values=[49], target=0x1009
1006  10 E7 0F                               HOTSPOT_CENTER                target=0x0FE7
1009  0E 45 10                               HOTSPOT_LEFT                  target=0x1045
100C  0F 4B 10                               HOTSPOT_RIGHT                 target=0x104B
100F  13                                     INPUTLOOPEND
1010  09 5F 14                               VIDEOREF                      ref=0x145F (FH[95]=h2_g.vdx)
1013  15 06 2D                               JMP                           target=0x2D06
1016  0B                                     INPUTLOOPSTART
1017  11 27 10                               HOTSPOT_CENTER_2              target=0x1027
101A  0E 51 10                               HOTSPOT_LEFT                  target=0x1051
101D  0F 57 10                               HOTSPOT_RIGHT                 target=0x1057
1020  13                                     INPUTLOOPEND
1021  09 5D 14                               VIDEOREF                      ref=0x145D (FH[93]=h2_3.vdx)
1024  15 0A 11                               JMP                           target=0x110A
1027  09 5C 14                               VIDEOREF                      ref=0x145C (FH[92]=h2_1.vdx)
102A  15 60 0F                               JMP                           target=0x0F60
102D  09 7A 14                               VIDEOREF                      ref=0x147A (FH[122]=h_2bb.vdx)
1030  15 ED 0F                               JMP                           target=0x0FED
1033  09 7F 14                               VIDEOREF                      ref=0x147F (FH[127]=h_2fc.vdx)
1036  15 16 10                               JMP                           target=0x1016
1039  09 79 14                               VIDEOREF                      ref=0x1479 (FH[121]=h_2ba.vdx)
103C  15 FC 0F                               JMP                           target=0x0FFC
103F  09 7E 14                               VIDEOREF                      ref=0x147E (FH[126]=h_2fb.vdx)
1042  15 D3 0F                               JMP                           target=0x0FD3
1045  09 7C 14                               VIDEOREF                      ref=0x147C (FH[124]=h_2bd.vdx)
1048  15 16 10                               JMP                           target=0x1016
104B  09 7D 14                               VIDEOREF                      ref=0x147D (FH[125]=h_2fa.vdx)
104E  15 ED 0F                               JMP                           target=0x0FED
1051  09 7B 14                               VIDEOREF                      ref=0x147B (FH[123]=h_2bc.vdx)
1054  15 D3 0F                               JMP                           target=0x0FD3
1057  09 80 14                               VIDEOREF                      ref=0x1480 (FH[128]=h_2fd.vdx)
105A  15 FC 0F                               JMP                           target=0x0FFC
105D  96 8C 30 B2                            LOADSTRING                    dst=v[0x08C], values=[0, 2]
1061  0B                                     INPUTLOOPSTART
1062  0E C0 10                               HOTSPOT_LEFT                  target=0x10C0
1065  0F C6 10                               HOTSPOT_RIGHT                 target=0x10C6
1068  9A FA E1 70 10                         STRCMP_NE_JMP                 start=v[0x0FA], values=[49], target=0x1070
106D  10 71 10                               HOTSPOT_CENTER                target=0x1071
1070  13                                     INPUTLOOPEND
1071  09 6C 14                               VIDEOREF                      ref=0x146C (FH[108]=h8_u.vdx)
1074  15 97 14                               JMP                           target=0x1497
1077  96 8C 30 B2                            LOADSTRING                    dst=v[0x08C], values=[0, 2]
107B  0B                                     INPUTLOOPSTART
107C  11 86 10                               HOTSPOT_CENTER_2              target=0x1086
107F  0E CC 10                               HOTSPOT_LEFT                  target=0x10CC
1082  0F D2 10                               HOTSPOT_RIGHT                 target=0x10D2
1085  13                                     INPUTLOOPEND
1086  09 6B 14                               VIDEOREF                      ref=0x146B (FH[107]=h8_1.vdx)
1089  15 AA 0E                               JMP                           target=0x0EAA
108C  96 8C 30 B2                            LOADSTRING                    dst=v[0x08C], values=[0, 2]
1090  0B                                     INPUTLOOPSTART
1091  A3 99 B0 99 10                         STRCMP_EQ_JMP                 start=v[0x099], values=[0], target=0x1099
1096  10 A0 10                               HOTSPOT_CENTER                target=0x10A0
1099  0E D8 10                               HOTSPOT_LEFT                  target=0x10D8
109C  0F DE 10                               HOTSPOT_RIGHT                 target=0x10DE
109F  13                                     INPUTLOOPEND
10A0  09 6D 14                               VIDEOREF                      ref=0x146D (FH[109]=h8_w.vdx)
10A3  15 C5 12                               JMP                           target=0x12C5
10A6  96 8C 30 B2                            LOADSTRING                    dst=v[0x08C], values=[0, 2]
10AA  0B                                     INPUTLOOPSTART
10AB  9A FA E1 B3 10                         STRCMP_NE_JMP                 start=v[0x0FA], values=[49], target=0x10B3
10B0  10 BA 10                               HOTSPOT_CENTER                target=0x10BA
10B3  0E E4 10                               HOTSPOT_LEFT                  target=0x10E4
10B6  0F EA 10                               HOTSPOT_RIGHT                 target=0x10EA
10B9  13                                     INPUTLOOPEND
10BA  09 6E 14                               VIDEOREF                      ref=0x146E (FH[110]=h8_x.vdx)
10BD  15 8F 13                               JMP                           target=0x138F
10C0  09 96 14                               VIDEOREF                      ref=0x1496 (FH[150]=h_8bb.vdx)
10C3  15 77 10                               JMP                           target=0x1077
10C6  09 9B 14                               VIDEOREF                      ref=0x149B (FH[155]=h_8fc.vdx)
10C9  15 A6 10                               JMP                           target=0x10A6
10CC  09 95 14                               VIDEOREF                      ref=0x1495 (FH[149]=h_8ba.vdx)
10CF  15 8C 10                               JMP                           target=0x108C
10D2  09 9A 14                               VIDEOREF                      ref=0x149A (FH[154]=h_8fb.vdx)
10D5  15 5D 10                               JMP                           target=0x105D
10D8  09 98 14                               VIDEOREF                      ref=0x1498 (FH[152]=h_8bd.vdx)
10DB  15 A6 10                               JMP                           target=0x10A6
10DE  09 99 14                               VIDEOREF                      ref=0x1499 (FH[153]=h_8fa.vdx)
10E1  15 77 10                               JMP                           target=0x1077
10E4  09 97 14                               VIDEOREF                      ref=0x1497 (FH[151]=h_8bc.vdx)
10E7  15 5D 10                               JMP                           target=0x105D
10EA  09 9C 14                               VIDEOREF                      ref=0x149C (FH[156]=h_8fd.vdx)
10ED  15 8C 10                               JMP                           target=0x108C
10F0  96 8C 30 B2                            LOADSTRING                    dst=v[0x08C], values=[0, 2]
10F4  0B                                     INPUTLOOPSTART
10F5  A3 99 B0 FD 10                         STRCMP_EQ_JMP                 start=v[0x099], values=[0], target=0x10FD
10FA  10 04 11                               HOTSPOT_CENTER                target=0x1104
10FD  0E 38 11                               HOTSPOT_LEFT                  target=0x1138
1100  0F 3E 11                               HOTSPOT_RIGHT                 target=0x113E
1103  13                                     INPUTLOOPEND
1104  09 62 14                               VIDEOREF                      ref=0x1462 (FH[98]=h3_k.vdx)
1107  15 77 2B                               JMP                           target=0x2B77
110A  0B                                     INPUTLOOPSTART
110B  11 15 11                               HOTSPOT_CENTER_2              target=0x1115
110E  0E 44 11                               HOTSPOT_LEFT                  target=0x1144
1111  0F 4A 11                               HOTSPOT_RIGHT                 target=0x114A
1114  13                                     INPUTLOOPEND
1115  09 61 14                               VIDEOREF                      ref=0x1461 (FH[97]=h3_4.vdx)
1118  15 B8 11                               JMP                           target=0x11B8
111B  96 8C 30 B2                            LOADSTRING                    dst=v[0x08C], values=[0, 2]
111F  0B                                     INPUTLOOPSTART
1120  0E 50 11                               HOTSPOT_LEFT                  target=0x1150
1123  0F 56 11                               HOTSPOT_RIGHT                 target=0x1156
1126  13                                     INPUTLOOPEND
1127  0B                                     INPUTLOOPSTART
1128  11 32 11                               HOTSPOT_CENTER_2              target=0x1132
112B  0E 5C 11                               HOTSPOT_LEFT                  target=0x115C
112E  0F 62 11                               HOTSPOT_RIGHT                 target=0x1162
1131  13                                     INPUTLOOPEND
1132  09 60 14                               VIDEOREF                      ref=0x1460 (FH[96]=h3_2.vdx)
1135  15 16 10                               JMP                           target=0x1016
1138  09 82 14                               VIDEOREF                      ref=0x1482 (FH[130]=h_3bb.vdx)
113B  15 0A 11                               JMP                           target=0x110A
113E  09 87 14                               VIDEOREF                      ref=0x1487 (FH[135]=h_3fc.vdx)
1141  15 27 11                               JMP                           target=0x1127
1144  09 81 14                               VIDEOREF                      ref=0x1481 (FH[129]=h_3ba.vdx)
1147  15 1B 11                               JMP                           target=0x111B
114A  09 86 14                               VIDEOREF                      ref=0x1486 (FH[134]=h_3fb.vdx)
114D  15 F0 10                               JMP                           target=0x10F0
1150  09 84 14                               VIDEOREF                      ref=0x1484 (FH[132]=h_3bd.vdx)
1153  15 27 11                               JMP                           target=0x1127
1156  09 85 14                               VIDEOREF                      ref=0x1485 (FH[133]=h_3fa.vdx)
1159  15 0A 11                               JMP                           target=0x110A
115C  09 83 14                               VIDEOREF                      ref=0x1483 (FH[131]=h_3bc.vdx)
115F  15 F0 10                               JMP                           target=0x10F0
1162  09 88 14                               VIDEOREF                      ref=0x1488 (FH[136]=h_3fd.vdx)
1165  15 1B 11                               JMP                           target=0x111B
1168  96 8C 30 B2                            LOADSTRING                    dst=v[0x08C], values=[0, 2]
116C  0B                                     INPUTLOOPSTART
116D  0E 0B 12                               HOTSPOT_LEFT                  target=0x120B
1170  0F 11 12                               HOTSPOT_RIGHT                 target=0x1211
1173  9A EB E1 A8 11                         STRCMP_NE_JMP                 start=v[0x0EB], values=[49], target=0x11A8
1178  9A F4 E1 A8 11                         STRCMP_NE_JMP                 start=v[0x0F4], values=[49], target=0x11A8
117D  9A F7 E1 A8 11                         STRCMP_NE_JMP                 start=v[0x0F7], values=[49], target=0x11A8
1182  9A F6 E1 A8 11                         STRCMP_NE_JMP                 start=v[0x0F6], values=[49], target=0x11A8
1187  9A F5 E1 A8 11                         STRCMP_NE_JMP                 start=v[0x0F5], values=[49], target=0x11A8
118C  9A F3 E1 A8 11                         STRCMP_NE_JMP                 start=v[0x0F3], values=[49], target=0x11A8
1191  9A EE E1 A8 11                         STRCMP_NE_JMP                 start=v[0x0EE], values=[49], target=0x11A8
1196  9A EC E1 A8 11                         STRCMP_NE_JMP                 start=v[0x0EC], values=[49], target=0x11A8
119B  9A F1 E1 A8 11                         STRCMP_NE_JMP                 start=v[0x0F1], values=[49], target=0x11A8
11A0  9A ED E1 A8 11                         STRCMP_NE_JMP                 start=v[0x0ED], values=[49], target=0x11A8
11A5  11 B2 11                               HOTSPOT_CENTER_2              target=0x11B2
11A8  1A 08 01 B1 B1 11                      STRCMP_NE_JMP                 start=v[0x108], values=[1], target=0x11B1
11AE  11 B2 11                               HOTSPOT_CENTER_2              target=0x11B2
11B1  13                                     INPUTLOOPEND
11B2  09 65 14                               VIDEOREF                      ref=0x1465 (FH[101]=h4_7.vdx)
11B5  15 72 12                               JMP                           target=0x1272
11B8  96 8C 30 B2                            LOADSTRING                    dst=v[0x08C], values=[0, 2]
11BC  0B                                     INPUTLOOPSTART
11BD  11 C7 11                               HOTSPOT_CENTER_2              target=0x11C7
11C0  0E 17 12                               HOTSPOT_LEFT                  target=0x1217
11C3  0F 1D 12                               HOTSPOT_RIGHT                 target=0x121D
11C6  13                                     INPUTLOOPEND
11C7  09 64 14                               VIDEOREF                      ref=0x1464 (FH[100]=h4_5.vdx)
11CA  15 3B 12                               JMP                           target=0x123B
11CD  96 8C 30 B2                            LOADSTRING                    dst=v[0x08C], values=[0, 2]
11D1  0B                                     INPUTLOOPSTART
11D2  A3 99 B0 DA 11                         STRCMP_EQ_JMP                 start=v[0x099], values=[0], target=0x11DA
11D7  10 E1 11                               HOTSPOT_CENTER                target=0x11E1
11DA  0E 23 12                               HOTSPOT_LEFT                  target=0x1223
11DD  0F 29 12                               HOTSPOT_RIGHT                 target=0x1229
11E0  13                                     INPUTLOOPEND
11E1  09 66 14                               VIDEOREF                      ref=0x1466 (FH[102]=h4_m.vdx)
11E4  15 49 0D                               JMP                           target=0x0D49
11E7  96 8C 30 B2                            LOADSTRING                    dst=v[0x08C], values=[0, 2]
11EB  9A DE B0 FA 11                         STRCMP_NE_JMP                 start=v[0x0DE], values=[0], target=0x11FA
11F0  96 DE B1                               LOADSTRING                    dst=v[0x0DE], values=[1]
11F3  96 8E 30 B9                            LOADSTRING                    dst=v[0x08E], values=[0, 9]
11F7  18 EA 34                               CALL                          target=0x34EA
11FA  0B                                     INPUTLOOPSTART
11FB  11 05 12                               HOTSPOT_CENTER_2              target=0x1205
11FE  0E 2F 12                               HOTSPOT_LEFT                  target=0x122F
1201  0F 35 12                               HOTSPOT_RIGHT                 target=0x1235
1204  13                                     INPUTLOOPEND
1205  09 63 14                               VIDEOREF                      ref=0x1463 (FH[99]=h4_3.vdx)
1208  15 27 11                               JMP                           target=0x1127
120B  09 8A 14                               VIDEOREF                      ref=0x148A (FH[138]=h_4bb.vdx)
120E  15 B8 11                               JMP                           target=0x11B8
1211  09 8F 14                               VIDEOREF                      ref=0x148F (FH[143]=h_4fc.vdx)
1214  15 E7 11                               JMP                           target=0x11E7
1217  09 89 14                               VIDEOREF                      ref=0x1489 (FH[137]=h_4ba.vdx)
121A  15 CD 11                               JMP                           target=0x11CD
121D  09 8E 14                               VIDEOREF                      ref=0x148E (FH[142]=h_4fb.vdx)
1220  15 68 11                               JMP                           target=0x1168
1223  09 8C 14                               VIDEOREF                      ref=0x148C (FH[140]=h_4bd.vdx)
1226  15 E7 11                               JMP                           target=0x11E7
1229  09 8D 14                               VIDEOREF                      ref=0x148D (FH[141]=h_4fa.vdx)
122C  15 B8 11                               JMP                           target=0x11B8
122F  09 8B 14                               VIDEOREF                      ref=0x148B (FH[139]=h_4bc.vdx)
1232  15 68 11                               JMP                           target=0x1168
1235  09 90 14                               VIDEOREF                      ref=0x1490 (FH[144]=h_4fd.vdx)
1238  15 CD 11                               JMP                           target=0x11CD
123B  96 8C 30 B2                            LOADSTRING                    dst=v[0x08C], values=[0, 2]
123F  0B                                     INPUTLOOPSTART
1240  9A F0 E1 4D 12                         STRCMP_NE_JMP                 start=v[0x0F0], values=[49], target=0x124D
1245  A3 99 B0 4D 12                         STRCMP_EQ_JMP                 start=v[0x099], values=[0], target=0x124D
124A  10 51 12                               HOTSPOT_CENTER                target=0x1251
124D  0E 57 12                               HOTSPOT_LEFT                  target=0x1257
1250  13                                     INPUTLOOPEND
1251  09 68 14                               VIDEOREF                      ref=0x1468 (FH[104]=h5_q.vdx)
1254  15 3F 33                               JMP                           target=0x333F
1257  09 92 14                               VIDEOREF                      ref=0x1492 (FH[146]=h_5f.vdx)
125A  96 8C 30 B2                            LOADSTRING                    dst=v[0x08C], values=[0, 2]
125E  0B                                     INPUTLOOPSTART
125F  0F 66 12                               HOTSPOT_RIGHT                 target=0x1266
1262  11 6C 12                               HOTSPOT_CENTER_2              target=0x126C
1265  13                                     INPUTLOOPEND
1266  09 91 14                               VIDEOREF                      ref=0x1491 (FH[145]=h_5b.vdx)
1269  15 3B 12                               JMP                           target=0x123B
126C  09 67 14                               VIDEOREF                      ref=0x1467 (FH[103]=h5_4.vdx)
126F  15 E7 11                               JMP                           target=0x11E7
1272  96 8C 30 B2                            LOADSTRING                    dst=v[0x08C], values=[0, 2]
1276  0B                                     INPUTLOOPSTART
1277  0E 9C 12                               HOTSPOT_LEFT                  target=0x129C
127A  10 7E 12                               HOTSPOT_CENTER                target=0x127E
127D  13                                     INPUTLOOPEND
127E  9A F2 E1 96 12                         STRCMP_NE_JMP                 start=v[0x0F2], values=[49], target=0x1296
1283  09 6A 14                               VIDEOREF                      ref=0x146A (FH[106]=h7_t.vdx)
1286  18 14 03                               CALL                          target=0x0314
1289  05                                     FIRSTFRAME_NEXT_VIDEO
128A  03                                     FADEIN_NEXT_VIDEO
128B  09 01 00                               VIDEOREF                      ref=0x0001 (AT[1]=as_u.vdx)
128E  0B                                     INPUTLOOPSTART
128F  11 E1 15                               HOTSPOT_CENTER_2              target=0x15E1
1292  13                                     INPUTLOOPEND
1293  15 9C 12                               JMP                           target=0x129C
1296  18 42 40                               CALL                          target=0x4042
1299  15 72 12                               JMP                           target=0x1272
129C  09 93 14                               VIDEOREF                      ref=0x1493 (FH[147]=h_7b.vdx)
129F  96 8C 30 B2                            LOADSTRING                    dst=v[0x08C], values=[0, 2]
12A3  0B                                     INPUTLOOPSTART
12A4  0F B9 12                               HOTSPOT_RIGHT                 target=0x12B9
12A7  11 BF 12                               HOTSPOT_CENTER_2              target=0x12BF
12AA  13                                     INPUTLOOPEND
12AB  03                                     FADEIN_NEXT_VIDEO
12AC  05                                     FIRSTFRAME_NEXT_VIDEO
12AD  09 94 14                               VIDEOREF                      ref=0x1494 (FH[148]=h_7f.vdx)
12B0  96 8C 30 B2                            LOADSTRING                    dst=v[0x08C], values=[0, 2]
12B4  0B                                     INPUTLOOPSTART
12B5  11 BF 12                               HOTSPOT_CENTER_2              target=0x12BF
12B8  13                                     INPUTLOOPEND
12B9  09 94 14                               VIDEOREF                      ref=0x1494 (FH[148]=h_7f.vdx)
12BC  15 72 12                               JMP                           target=0x1272
12BF  09 69 14                               VIDEOREF                      ref=0x1469 (FH[105]=h7_4.vdx)
12C2  15 CD 11                               JMP                           target=0x11CD
12C5  96 8C 31 B0                            LOADSTRING                    dst=v[0x08C], values=[1, 0]
12C9  03                                     FADEIN_NEXT_VIDEO
12CA  05                                     FIRSTFRAME_NEXT_VIDEO
12CB  09 07 20                               VIDEOREF                      ref=0x2007 (HTBD[7]=htab.vdx)
12CE  9A EA E1 DB 12                         STRCMP_NE_JMP                 start=v[0x0EA], values=[49], target=0x12DB
12D3  9A 9A B0 DB 12                         STRCMP_NE_JMP                 start=v[0x09A], values=[0], target=0x12DB
12D8  15 0F 13                               JMP                           target=0x130F
12DB  0B                                     INPUTLOOPSTART
12DC  9A 8E 31 B8 E5 12                      STRCMP_NE_JMP                 start=v[0x08E], values=[1, 8], target=0x12E5
12E2  30 12 39                               HOTSPOT_BOTTOM_4              target=0x3912
12E5  A3 EA E1 F6 12                         STRCMP_EQ_JMP                 start=v[0x0EA], values=[49], target=0x12F6
12EA  0D 1C 02 4A 01 7F 02 8F 01 1C 13 06    HOTSPOT_RECT                  left=0x021C, top=0x014A, right=0x027F, bottom=0x018F, target=0x131C, cursor=0x06
12F6  1A 08 01 B1 08 13                      STRCMP_NE_JMP                 start=v[0x108], values=[1], target=0x1308
12FC  0D 1C 02 4A 01 7F 02 8F 01 1C 13 06    HOTSPOT_RECT                  left=0x021C, top=0x014A, right=0x027F, bottom=0x018F, target=0x131C, cursor=0x06
1308  0E 31 13                               HOTSPOT_LEFT                  target=0x1331
130B  0F 3D 13                               HOTSPOT_RIGHT                 target=0x133D
130E  13                                     INPUTLOOPEND
130F  96 9A B1                               LOADSTRING                    dst=v[0x09A], values=[1]
1312  96 8E 31 B8                            LOADSTRING                    dst=v[0x08E], values=[1, 8]
1316  18 AD 35                               CALL                          target=0x35AD
1319  15 CE 12                               JMP                           target=0x12CE
131C  96 17 B1                               LOADSTRING                    dst=v[0x017], values=[1]
131F  09 00 20                               VIDEOREF                      ref=0x2000 (HTBD[0]=ht1p.vdx)
1322  09 04 20                               VIDEOREF                      ref=0x2004 (HTBD[4]=ht2p.vdx)
1325  18 95 40                               CALL                          target=0x4095
1328  15 CE 12                               JMP                           target=0x12CE
132B  09 08 20                               VIDEOREF                      ref=0x2008 (HTBD[8]=ht_mess.vdx)
132E  15 CE 12                               JMP                           target=0x12CE
1331  09 0A 20                               VIDEOREF                      ref=0x200A (HTBD[10]=htcdb.vdx)
1334  15 40 13                               JMP                           target=0x1340
1337  09 09 20                               VIDEOREF                      ref=0x2009 (HTBD[9]=htcd.vdx)
133A  15 CE 12                               JMP                           target=0x12CE
133D  09 07 20                               VIDEOREF                      ref=0x2007 (HTBD[7]=htab.vdx)
1340  0B                                     INPUTLOOPSTART
1341  0D 2D 00 AA 00 88 00 58 01 6C 13 03    HOTSPOT_RECT                  left=0x002D, top=0x00AA, right=0x0088, bottom=0x0158, target=0x136C, cursor=0x03
134D  0D BA 00 AA 00 15 01 58 01 79 13 03    HOTSPOT_RECT                  left=0x00BA, top=0x00AA, right=0x0115, bottom=0x0158, target=0x1379, cursor=0x03
1359  0D F5 01 AA 00 4F 02 58 01 88 13 03    HOTSPOT_RECT                  left=0x01F5, top=0x00AA, right=0x024F, bottom=0x0158, target=0x1388, cursor=0x03
1365  0F 37 13                               HOTSPOT_RIGHT                 target=0x1337
1368  0E 2B 13                               HOTSPOT_LEFT                  target=0x132B
136B  13                                     INPUTLOOPEND
136C  02 3C 4C                               PLAYSONG                      ref=0x4C3C (XMI[60]=gu68.xmi)
136F  09 02 20                               VIDEOREF                      ref=0x2002 (HTBD[2]=ht1x.vdx)
1372  96 8C 30 B4                            LOADSTRING                    dst=v[0x08C], values=[0, 4]
1376  15 D7 0A                               JMP                           target=0x0AD7
1379  09 06 20                               VIDEOREF                      ref=0x2006 (HTBD[6]=ht2x.vdx)
137C  03                                     FADEIN_NEXT_VIDEO
137D  05                                     FIRSTFRAME_NEXT_VIDEO
137E  09 9B 14                               VIDEOREF                      ref=0x149B (FH[155]=h_8fc.vdx)
1381  96 8C 30 B2                            LOADSTRING                    dst=v[0x08C], values=[0, 2]
1385  15 5D 10                               JMP                           target=0x105D
1388  09 0B 20                               VIDEOREF                      ref=0x200B (HTBD[11]=htfa.vdx)
138B  04                                     PALFADEOUT
138C  15 70 21                               JMP                           target=0x2170
138F  96 8C 30 B9                            LOADSTRING                    dst=v[0x08C], values=[0, 9]
1393  03                                     FADEIN_NEXT_VIDEO
1394  05                                     FIRSTFRAME_NEXT_VIDEO
1395  09 08 18                               VIDEOREF                      ref=0x1808 (GA[8]=gaab.vdx)
1398  9A D1 B0 A7 13                         STRCMP_NE_JMP                 start=v[0x0D1], values=[0], target=0x13A7
139D  96 D1 B1                               LOADSTRING                    dst=v[0x0D1], values=[1]
13A0  96 8E 32 B2                            LOADSTRING                    dst=v[0x08E], values=[2, 2]
13A4  18 38 35                               CALL                          target=0x3538
13A7  9A F0 E1 BB 13                         STRCMP_NE_JMP                 start=v[0x0F0], values=[49], target=0x13BB
13AC  9A CF B0 BB 13                         STRCMP_NE_JMP                 start=v[0x0CF], values=[0], target=0x13BB
13B1  18 4A 35                               CALL                          target=0x354A
13B4  96 CF B1                               LOADSTRING                    dst=v[0x0CF], values=[1]
13B7  96 8E 32 B4                            LOADSTRING                    dst=v[0x08E], values=[2, 4]
13BB  0B                                     INPUTLOOPSTART
13BC  9A 8E 32 B2 C5 13                      STRCMP_NE_JMP                 start=v[0x08E], values=[2, 2], target=0x13C5
13C2  30 12 39                               HOTSPOT_BOTTOM_4              target=0x3912
13C5  0F 68 14                               HOTSPOT_RIGHT                 target=0x1468
13C8  A3 F9 B0 D9 13                         STRCMP_EQ_JMP                 start=v[0x0F9], values=[0], target=0x13D9
13CD  0D A3 01 F8 00 7F 02 44 01 31 14 07    HOTSPOT_RECT                  left=0x01A3, top=0x00F8, right=0x027F, bottom=0x0144, target=0x1431, cursor=0x07
13D9  9A FA E1 EF 13                         STRCMP_NE_JMP                 start=v[0x0FA], values=[49], target=0x13EF
13DE  A3 F0 E1 EF 13                         STRCMP_EQ_JMP                 start=v[0x0F0], values=[49], target=0x13EF
13E3  0D 00 00 0B 01 82 00 7E 01 3B 14 06    HOTSPOT_RECT                  left=0x0000, top=0x010B, right=0x0082, bottom=0x017E, target=0x143B, cursor=0x06
13EF  1A 08 01 B1 01 14                      STRCMP_NE_JMP                 start=v[0x108], values=[1], target=0x1401
13F5  0D 00 00 0B 01 82 00 7E 01 3B 14 06    HOTSPOT_RECT                  left=0x0000, top=0x010B, right=0x0082, bottom=0x017E, target=0x143B, cursor=0x06
1401  9A CE B0 12 14                         STRCMP_NE_JMP                 start=v[0x0CE], values=[0], target=0x1412
1406  0D DF 00 9E 00 01 01 D5 00 1F 14 04    HOTSPOT_RECT                  left=0x00DF, top=0x009E, right=0x0101, bottom=0x00D5, target=0x141F, cursor=0x04
1412  0E 6E 14                               HOTSPOT_LEFT                  target=0x146E
1415  9A 8E 32 B5 1E 14                      STRCMP_NE_JMP                 start=v[0x08E], values=[2, 5], target=0x141E
141B  30 12 39                               HOTSPOT_BOTTOM_4              target=0x3912
141E  13                                     INPUTLOOPEND
141F  9A CE B0 2E 14                         STRCMP_NE_JMP                 start=v[0x0CE], values=[0], target=0x142E
1424  96 CE B1                               LOADSTRING                    dst=v[0x0CE], values=[1]
1427  18 5C 35                               CALL                          target=0x355C
142A  96 8E 32 B5                            LOADSTRING                    dst=v[0x08E], values=[2, 5]
142E  15 A7 13                               JMP                           target=0x13A7
1431  09 0E 18                               VIDEOREF                      ref=0x180E (GA[14]=gapo.vdx)
1434  96 8C 30 B4                            LOADSTRING                    dst=v[0x08C], values=[0, 4]
1438  15 D7 0A                               JMP                           target=0x0AD7
143B  09 00 18                               VIDEOREF                      ref=0x1800 (GA[0]=ga1p.vdx)
143E  96 92 31 B4                            LOADSTRING                    dst=v[0x092], values=[1, 4]
1442  18 9A 3F                               CALL                          target=0x3F9A
1445  9A F0 E1 5C 14                         STRCMP_NE_JMP                 start=v[0x0F0], values=[49], target=0x145C
144A  09 03 18                               VIDEOREF                      ref=0x1803 (GA[3]=ga2p.vdx)
144D  18 6B 35                               CALL                          target=0x356B
1450  96 D0 B1                               LOADSTRING                    dst=v[0x0D0], values=[1]
1453  09 04 18                               VIDEOREF                      ref=0x1804 (GA[4]=ga2pb.vdx)
1456  09 01 18                               VIDEOREF                      ref=0x1801 (GA[1]=ga1pb.vdx)
1459  15 A7 13                               JMP                           target=0x13A7
145C  09 01 18                               VIDEOREF                      ref=0x1801 (GA[1]=ga1pb.vdx)
145F  15 A7 13                               JMP                           target=0x13A7
1462  09 01 18                               VIDEOREF                      ref=0x1801 (GA[1]=ga1pb.vdx)
1465  15 A7 13                               JMP                           target=0x13A7
1468  09 08 18                               VIDEOREF                      ref=0x1808 (GA[8]=gaab.vdx)
146B  15 71 14                               JMP                           target=0x1471
146E  09 0C 18                               VIDEOREF                      ref=0x180C (GA[12]=gacdb.vdx)
1471  0B                                     INPUTLOOPSTART
1472  0F 91 14                               HOTSPOT_RIGHT                 target=0x1491
1475  10 7C 14                               HOTSPOT_CENTER                target=0x147C
1478  0E 8B 14                               HOTSPOT_LEFT                  target=0x148B
147B  13                                     INPUTLOOPEND
147C  09 0D 18                               VIDEOREF                      ref=0x180D (GA[13]=gaex.vdx)
147F  03                                     FADEIN_NEXT_VIDEO
1480  05                                     FIRSTFRAME_NEXT_VIDEO
1481  09 9A 14                               VIDEOREF                      ref=0x149A (FH[154]=h_8fb.vdx)
1484  96 8C 30 B2                            LOADSTRING                    dst=v[0x08C], values=[0, 2]
1488  15 77 10                               JMP                           target=0x1077
148B  09 09 18                               VIDEOREF                      ref=0x1809 (GA[9]=gaabb.vdx)
148E  15 A7 13                               JMP                           target=0x13A7
1491  09 0B 18                               VIDEOREF                      ref=0x180B (GA[11]=gacd.vdx)
1494  15 A7 13                               JMP                           target=0x13A7
1497  96 8C 31 B1                            LOADSTRING                    dst=v[0x08C], values=[1, 1]
149B  03                                     FADEIN_NEXT_VIDEO
149C  05                                     FIRSTFRAME_NEXT_VIDEO
149D  09 69 28                               VIDEOREF                      ref=0x2869 (JHEK[105]=jhab.vdx)
14A0  9A BC B0 AF 14                         STRCMP_NE_JMP                 start=v[0x0BC], values=[0], target=0x14AF
14A5  96 BC B1                               LOADSTRING                    dst=v[0x0BC], values=[1]
14A8  96 8E 34 B3                            LOADSTRING                    dst=v[0x08E], values=[4, 3]
14AC  18 7A 36                               CALL                          target=0x367A
14AF  9A E8 E1 CC 14                         STRCMP_NE_JMP                 start=v[0x0E8], values=[49], target=0x14CC
14B4  9A BA B0 CC 14                         STRCMP_NE_JMP                 start=v[0x0BA], values=[0], target=0x14CC
14B9  96 BA B1                               LOADSTRING                    dst=v[0x0BA], values=[1]
14BC  96 BB B1                               LOADSTRING                    dst=v[0x0BB], values=[1]
14BF  02 1B 4C                               PLAYSONG                      ref=0x4C1B (XMI[27]=gu30.xmi)
14C2  18 8C 36                               CALL                          target=0x368C
14C5  18 9E 36                               CALL                          target=0x369E
14C8  96 8E 34 B4                            LOADSTRING                    dst=v[0x08E], values=[4, 4]
14CC  0B                                     INPUTLOOPSTART
14CD  9A 8E 34 B6 D6 14                      STRCMP_NE_JMP                 start=v[0x08E], values=[4, 6], target=0x14D6
14D3  30 12 39                               HOTSPOT_BOTTOM_4              target=0x3912
14D6  9A 8E 34 B3 DF 14                      STRCMP_NE_JMP                 start=v[0x08E], values=[4, 3], target=0x14DF
14DC  30 12 39                               HOTSPOT_BOTTOM_4              target=0x3912
14DF  9A 8E 34 B4 E8 14                      STRCMP_NE_JMP                 start=v[0x08E], values=[4, 4], target=0x14E8
14E5  30 12 39                               HOTSPOT_BOTTOM_4              target=0x3912
14E8  9A B9 B0 FC 14                         STRCMP_NE_JMP                 start=v[0x0B9], values=[0], target=0x14FC
14ED  0D 32 00 50 00 C0 00 47 01 5C 15 04    HOTSPOT_RECT                  left=0x0032, top=0x0050, right=0x00C0, bottom=0x0147, target=0x155C, cursor=0x04
14F9  15 08 15                               JMP                           target=0x1508
14FC  0D 32 00 50 00 C0 00 47 01 5C 15 00    HOTSPOT_RECT                  left=0x0032, top=0x0050, right=0x00C0, bottom=0x0147, target=0x155C, cursor=0x00
1508  A3 E8 E1 19 15                         STRCMP_EQ_JMP                 start=v[0x0E8], values=[49], target=0x1519
150D  0D 4A 01 5C 01 7F 02 8F 01 32 15 06    HOTSPOT_RECT                  left=0x014A, top=0x015C, right=0x027F, bottom=0x018F, target=0x1532, cursor=0x06
1519  1A 08 01 B1 2B 15                      STRCMP_NE_JMP                 start=v[0x108], values=[1], target=0x152B
151F  0D 4A 01 5C 01 7F 02 8F 01 32 15 06    HOTSPOT_RECT                  left=0x014A, top=0x015C, right=0x027F, bottom=0x018F, target=0x1532, cursor=0x06
152B  0E A5 15                               HOTSPOT_LEFT                  target=0x15A5
152E  0F AB 15                               HOTSPOT_RIGHT                 target=0x15AB
1531  13                                     INPUTLOOPEND
1532  09 76 28                               VIDEOREF                      ref=0x2876 (JHEK[118]=jhpu.vdx)
1535  23 05 01 B0 41 15                      STRCMP_EQ_JMP                 start=v[0x105], values=[0], target=0x1541
153B  4B 00                                  SET_VIDEO_MODE                value=0x00
153D  16 09 01 B1                            LOADSTRING                    dst=v[0x109], values=[1]
1541  09 73 28                               VIDEOREF                      ref=0x2873 (JHEK[115]=jhfup.vdx)
1544  18 E1 3D                               CALL                          target=0x3DE1
1547  09 72 28                               VIDEOREF                      ref=0x2872 (JHEK[114]=jhfout.vdx)
154A  1A 09 01 B1 56 15                      STRCMP_NE_JMP                 start=v[0x109], values=[1], target=0x1556
1550  4B 01                                  SET_VIDEO_MODE                value=0x01
1552  16 09 01 B0                            LOADSTRING                    dst=v[0x109], values=[0]
1556  09 77 28                               VIDEOREF                      ref=0x2877 (JHEK[119]=jhpub.vdx)
1559  15 A0 14                               JMP                           target=0x14A0
155C  09 74 28                               VIDEOREF                      ref=0x2874 (JHEK[116]=jhmi.vdx)
155F  9A B9 B0 97 15                         STRCMP_NE_JMP                 start=v[0x0B9], values=[0], target=0x1597
1564  02 34 4C                               PLAYSONG                      ref=0x4C34 (XMI[52]=gu55.xmi)
1567  96 8E 34 B6                            LOADSTRING                    dst=v[0x08E], values=[4, 6]
156B  96 B9 B1                               LOADSTRING                    dst=v[0x0B9], values=[1]
156E  96 B8 B1                               LOADSTRING                    dst=v[0x0B8], values=[1]
1571  96 B7 B1                               LOADSTRING                    dst=v[0x0B7], values=[1]
1574  96 B6 B1                               LOADSTRING                    dst=v[0x0B6], values=[1]
1577  18 46 36                               CALL                          target=0x3646
157A  18 55 36                               CALL                          target=0x3655
157D  02 0F 4C                               PLAYSONG                      ref=0x4C0F (XMI[15]=gu18.xmi)
1580  18 60 36                               CALL                          target=0x3660
1583  09 75 28                               VIDEOREF                      ref=0x2875 (JHEK[117]=jhmib.vdx)
1586  18 6B 36                               CALL                          target=0x366B
1589  31 00 00 96 00                         MIDI_CONTROL                  value=0x0000, time=0x0096
158E  19 96 00                               SLEEP                         ticks=0x0096
1591  02 3A 4C                               PLAYSONG                      ref=0x4C3A (XMI[58]=gu63.xmi)
1594  15 A0 14                               JMP                           target=0x14A0
1597  0B                                     INPUTLOOPSTART
1598  0E 9F 15                               HOTSPOT_LEFT                  target=0x159F
159B  0F 9F 15                               HOTSPOT_RIGHT                 target=0x159F
159E  13                                     INPUTLOOPEND
159F  09 75 28                               VIDEOREF                      ref=0x2875 (JHEK[117]=jhmib.vdx)
15A2  15 A0 14                               JMP                           target=0x14A0
15A5  09 6E 28                               VIDEOREF                      ref=0x286E (JHEK[110]=jhcdb.vdx)
15A8  15 B1 15                               JMP                           target=0x15B1
15AB  09 69 28                               VIDEOREF                      ref=0x2869 (JHEK[105]=jhab.vdx)
15AE  15 B1 15                               JMP                           target=0x15B1
15B1  0B                                     INPUTLOOPSTART
15B2  0D D2 01 65 00 57 02 76 01 D1 15 00    HOTSPOT_RECT                  left=0x01D2, top=0x0065, right=0x0257, bottom=0x0176, target=0x15D1, cursor=0x00
15BE  0F CB 15                               HOTSPOT_RIGHT                 target=0x15CB
15C1  0E C5 15                               HOTSPOT_LEFT                  target=0x15C5
15C4  13                                     INPUTLOOPEND
15C5  09 6A 28                               VIDEOREF                      ref=0x286A (JHEK[106]=jhabb.vdx)
15C8  15 A0 14                               JMP                           target=0x14A0
15CB  09 6D 28                               VIDEOREF                      ref=0x286D (JHEK[109]=jhcd.vdx)
15CE  15 A0 14                               JMP                           target=0x14A0
15D1  09 71 28                               VIDEOREF                      ref=0x2871 (JHEK[113]=jhex.vdx)
15D4  04                                     PALFADEOUT
15D5  03                                     FADEIN_NEXT_VIDEO
15D6  05                                     FIRSTFRAME_NEXT_VIDEO
15D7  09 99 14                               VIDEOREF                      ref=0x1499 (FH[153]=h_8fa.vdx)
15DA  96 8C 30 B2                            LOADSTRING                    dst=v[0x08C], values=[0, 2]
15DE  15 8C 10                               JMP                           target=0x108C
15E1  96 8C 32 B0                            LOADSTRING                    dst=v[0x08C], values=[2, 0]
15E5  09 01 00                               VIDEOREF                      ref=0x0001 (AT[1]=as_u.vdx)
15E8  09 00 00                               VIDEOREF                      ref=0x0000 (AT[0]=as_ia.vdx)
15EB  15 20 2C                               JMP                           target=0x2C20
15EE  96 8C 32 B3                            LOADSTRING                    dst=v[0x08C], values=[2, 3]
15F2  03                                     FADEIN_NEXT_VIDEO
15F3  05                                     FIRSTFRAME_NEXT_VIDEO
15F4  09 03 48                               VIDEOREF                      ref=0x4803 (P[3]=pfa.vdx)
15F7  9A DB B0 06 16                         STRCMP_NE_JMP                 start=v[0x0DB], values=[0], target=0x1606
15FC  96 DB B1                               LOADSTRING                    dst=v[0x0DB], values=[1]
15FF  18 7D 35                               CALL                          target=0x357D
1602  96 8E 31 B2                            LOADSTRING                    dst=v[0x08E], values=[1, 2]
1606  0B                                     INPUTLOOPSTART
1607  0D 27 00 55 00 F8 00 FF 00 E6 16 04    HOTSPOT_RECT                  left=0x0027, top=0x0055, right=0x00F8, bottom=0x00FF, target=0x16E6, cursor=0x04
1613  0D 06 02 BA 00 3E 02 04 01 F3 16 04    HOTSPOT_RECT                  left=0x0206, top=0x00BA, right=0x023E, bottom=0x0104, target=0x16F3, cursor=0x04
161F  0F 2F 16                               HOTSPOT_RIGHT                 target=0x162F
1622  0E 35 16                               HOTSPOT_LEFT                  target=0x1635
1625  9A 8E 31 B2 2E 16                      STRCMP_NE_JMP                 start=v[0x08E], values=[1, 2], target=0x162E
162B  30 12 39                               HOTSPOT_BOTTOM_4              target=0x3912
162E  13                                     INPUTLOOPEND
162F  09 03 48                               VIDEOREF                      ref=0x4803 (P[3]=pfa.vdx)
1632  15 88 16                               JMP                           target=0x1688
1635  09 0A 48                               VIDEOREF                      ref=0x480A (P[10]=pfdb.vdx)
1638  15 3B 16                               JMP                           target=0x163B
163B  9A D9 B0 4A 16                         STRCMP_NE_JMP                 start=v[0x0D9], values=[0], target=0x164A
1640  96 D9 B1                               LOADSTRING                    dst=v[0x0D9], values=[1]
1643  18 94 37                               CALL                          target=0x3794
1646  96 8E 31 B5                            LOADSTRING                    dst=v[0x08E], values=[1, 5]
164A  0B                                     INPUTLOOPSTART
164B  0E 5B 16                               HOTSPOT_LEFT                  target=0x165B
164E  0F 61 16                               HOTSPOT_RIGHT                 target=0x1661
1651  9A 8E 31 B5 5A 16                      STRCMP_NE_JMP                 start=v[0x08E], values=[1, 5], target=0x165A
1657  30 12 39                               HOTSPOT_BOTTOM_4              target=0x3912
165A  13                                     INPUTLOOPEND
165B  09 08 48                               VIDEOREF                      ref=0x4808 (P[8]=pfcb.vdx)
165E  15 67 16                               JMP                           target=0x1667
1661  09 09 48                               VIDEOREF                      ref=0x4809 (P[9]=pfd.vdx)
1664  15 06 16                               JMP                           target=0x1606
1667  0B                                     INPUTLOOPSTART
1668  10 72 16                               HOTSPOT_CENTER                target=0x1672
166B  0E 7C 16                               HOTSPOT_LEFT                  target=0x167C
166E  0F 82 16                               HOTSPOT_RIGHT                 target=0x1682
1671  13                                     INPUTLOOPEND
1672  09 0C 48                               VIDEOREF                      ref=0x480C (P[12]=pmu.vdx)
1675  96 8C 30 B8                            LOADSTRING                    dst=v[0x08C], values=[0, 8]
1679  15 EA 0B                               JMP                           target=0x0BEA
167C  09 06 48                               VIDEOREF                      ref=0x4806 (P[6]=pfbb.vdx)
167F  15 88 16                               JMP                           target=0x1688
1682  09 07 48                               VIDEOREF                      ref=0x4807 (P[7]=pfc.vdx)
1685  15 3B 16                               JMP                           target=0x163B
1688  0B                                     INPUTLOOPSTART
1689  0E B3 16                               HOTSPOT_LEFT                  target=0x16B3
168C  0F B9 16                               HOTSPOT_RIGHT                 target=0x16B9
168F  A3 ED E1 A0 16                         STRCMP_EQ_JMP                 start=v[0x0ED], values=[49], target=0x16A0
1694  0D CE 00 4E 00 C4 01 89 01 CC 16 06    HOTSPOT_RECT                  left=0x00CE, top=0x004E, right=0x01C4, bottom=0x0189, target=0x16CC, cursor=0x06
16A0  1A 08 01 B1 B2 16                      STRCMP_NE_JMP                 start=v[0x108], values=[1], target=0x16B2
16A6  0D CE 00 4E 00 C4 01 89 01 CC 16 06    HOTSPOT_RECT                  left=0x00CE, top=0x004E, right=0x01C4, bottom=0x0189, target=0x16CC, cursor=0x06
16B2  13                                     INPUTLOOPEND
16B3  09 04 48                               VIDEOREF                      ref=0x4804 (P[4]=pfab.vdx)
16B6  15 06 16                               JMP                           target=0x1606
16B9  09 05 48                               VIDEOREF                      ref=0x4805 (P[5]=pfb.vdx)
16BC  15 67 16                               JMP                           target=0x1667
16BF  0A                                     VIDEOFLAG5_ON
16C0  02 0B 4C                               PLAYSONG                      ref=0x4C0B (XMI[11]=gu15.xmi)
16C3  09 29 48                               VIDEOREF                      ref=0x4829 (P[41]=psta.vdx)
16C6  0A                                     VIDEOFLAG5_ON
16C7  09 29 48                               VIDEOREF                      ref=0x4829 (P[41]=psta.vdx)
16CA  17 00                                  RET                           value=0x00
16CC  09 01 48                               VIDEOREF                      ref=0x4801 (P[1]=p1_2.vdx)
16CF  15 D2 16                               JMP                           target=0x16D2
16D2  18 CC 3E                               CALL                          target=0x3ECC
16D5  15 D8 16                               JMP                           target=0x16D8
16D8  09 02 48                               VIDEOREF                      ref=0x4802 (P[2]=p1_2b.vdx)
16DB  9A ED E1 E3 16                         STRCMP_NE_JMP                 start=v[0x0ED], values=[49], target=0x16E3
16E0  18 BF 16                               CALL                          target=0x16BF
16E3  15 88 16                               JMP                           target=0x1688
16E6  96 DA B1                               LOADSTRING                    dst=v[0x0DA], values=[1]
16E9  96 8E 31 B3                            LOADSTRING                    dst=v[0x08E], values=[1, 3]
16ED  18 8F 35                               CALL                          target=0x358F
16F0  15 06 16                               JMP                           target=0x1606
16F3  96 D8 B1                               LOADSTRING                    dst=v[0x0D8], values=[1]
16F6  96 8E 31 B4                            LOADSTRING                    dst=v[0x08E], values=[1, 4]
16FA  18 9E 35                               CALL                          target=0x359E
16FD  15 06 16                               JMP                           target=0x1606
1700  96 8C 30 B5                            LOADSTRING                    dst=v[0x08C], values=[0, 5]
1704  03                                     FADEIN_NEXT_VIDEO
1705  02 12 4C                               PLAYSONG                      ref=0x4C12 (XMI[18]=gu21.xmi)
1708  09 32 3C                               VIDEOREF                      ref=0x3C32 (MC[50]=mg_in.vdx)
170B  18 42 3E                               CALL                          target=0x3E42
170E  1A 02 01 B1 1D 17                      STRCMP_NE_JMP                 start=v[0x102], values=[1], target=0x171D
1714  46                                     RESOURCE_CONTEXT_SAVE
1715  07                                     VIDEOFLAG7_ON
1716  09 8C 50                               VIDEOREF                      ref=0x508C (GAMWAV[140]=gen_e_6.vdx)
1719  47                                     RESOURCE_CONTEXT_RESTORE
171A  15 2F 17                               JMP                           target=0x172F
171D  09 34 3C                               VIDEOREF                      ref=0x3C34 (MC[52]=mg_in_b.vdx)
1720  09 33 3C                               VIDEOREF                      ref=0x3C33 (MC[51]=mg_inex.vdx)
1723  03                                     FADEIN_NEXT_VIDEO
1724  05                                     FIRSTFRAME_NEXT_VIDEO
1725  09 11 2C                               VIDEOREF                      ref=0x2C11 (K[17]=k_2bb.vdx)
1728  96 8C 30 B4                            LOADSTRING                    dst=v[0x08C], values=[0, 4]
172C  15 5B 0B                               JMP                           target=0x0B5B
172F  96 8C 30 B5                            LOADSTRING                    dst=v[0x08C], values=[0, 5]
1733  18 0B 3E                               CALL                          target=0x3E0B
1736  1A 02 01 B1 3F 17                      STRCMP_NE_JMP                 start=v[0x102], values=[1], target=0x173F
173C  15 20 17                               JMP                           target=0x1720
173F  96 8C 30 B6                            LOADSTRING                    dst=v[0x08C], values=[0, 6]
1743  02 13 4C                               PLAYSONG                      ref=0x4C13 (XMI[19]=gu22.xmi)
1746  03                                     FADEIN_NEXT_VIDEO
1747  05                                     FIRSTFRAME_NEXT_VIDEO
1748  09 6C 3C                               VIDEOREF                      ref=0x3C6C (MC[108]=crea.vdx)
174B  96 92 30 B9                            LOADSTRING                    dst=v[0x092], values=[0, 9]
174F  A3 F4 E1 57 17                         STRCMP_EQ_JMP                 start=v[0x0F4], values=[49], target=0x1757
1754  18 8D 3D                               CALL                          target=0x3D8D
1757  1A 08 01 B1 60 17                      STRCMP_NE_JMP                 start=v[0x108], values=[1], target=0x1760
175D  18 8D 3D                               CALL                          target=0x3D8D
1760  A3 F4 E1 78 17                         STRCMP_EQ_JMP                 start=v[0x0F4], values=[49], target=0x1778
1765  05                                     FIRSTFRAME_NEXT_VIDEO
1766  09 6C 3C                               VIDEOREF                      ref=0x3C6C (MC[108]=crea.vdx)
1769  09 6C 3C                               VIDEOREF                      ref=0x3C6C (MC[108]=crea.vdx)
176C  09 6D 3C                               VIDEOREF                      ref=0x3C6D (MC[109]=creb.vdx)
176F  09 6E 3C                               VIDEOREF                      ref=0x3C6E (MC[110]=crec.vdx)
1772  09 6F 3C                               VIDEOREF                      ref=0x3C6F (MC[111]=cred.vdx)
1775  15 70 21                               JMP                           target=0x2170
1778  09 6C 3C                               VIDEOREF                      ref=0x3C6C (MC[108]=crea.vdx)
177B  9A AA B0 8A 17                         STRCMP_NE_JMP                 start=v[0x0AA], values=[0], target=0x178A
1780  96 AA B1                               LOADSTRING                    dst=v[0x0AA], values=[1]
1783  96 8E 36 B0                            LOADSTRING                    dst=v[0x08E], values=[6, 0]
1787  18 00 39                               CALL                          target=0x3900
178A  09 6D 3C                               VIDEOREF                      ref=0x3C6D (MC[109]=creb.vdx)
178D  0B                                     INPUTLOOPSTART
178E  11 92 17                               HOTSPOT_CENTER_2              target=0x1792
1791  13                                     INPUTLOOPEND
1792  09 6E 3C                               VIDEOREF                      ref=0x3C6E (MC[110]=crec.vdx)
1795  02 15 4C                               PLAYSONG                      ref=0x4C15 (XMI[21]=gu24.xmi)
1798  09 6F 3C                               VIDEOREF                      ref=0x3C6F (MC[111]=cred.vdx)
179B  03                                     FADEIN_NEXT_VIDEO
179C  09 31 3C                               VIDEOREF                      ref=0x3C31 (MC[49]=mg_exout.vdx)
179F  03                                     FADEIN_NEXT_VIDEO
17A0  05                                     FIRSTFRAME_NEXT_VIDEO
17A1  09 11 2C                               VIDEOREF                      ref=0x2C11 (K[17]=k_2bb.vdx)
17A4  96 8C 30 B4                            LOADSTRING                    dst=v[0x08C], values=[0, 4]
17A8  15 5B 0B                               JMP                           target=0x0B5B
17AB  23 05 01 B0 B7 17                      STRCMP_EQ_JMP                 start=v[0x105], values=[0], target=0x17B7
17B1  4B 00                                  SET_VIDEO_MODE                value=0x00
17B3  16 09 01 B1                            LOADSTRING                    dst=v[0x109], values=[1]
17B7  96 00 24 A4                            LOADSTRING                    dst=v[0x000], values=[244, 244]
17BB  3A 23 E1                               PRINTSTRING                   values=[v[0x000]]
17BE  2C 00 00 00                            SET_HOTSPOT_TOP               target=0x0000, cursor=0x00
17C2  31 00 00 E8 03                         MIDI_CONTROL                  value=0x0000, time=0x03E8
17C7  04                                     PALFADEOUT
17C8  35                                     VIDEOFLAG7_OFF
17C9  09 18 24                               VIDEOREF                      ref=0x2418 (INTRO[24]=sphinx.vdx)
17CC  0A                                     VIDEOFLAG5_ON
17CD  09 21 24                               VIDEOREF                      ref=0x2421 (INTRO[33]=sphmen2i.vdx)
17D0  0A                                     VIDEOFLAG5_ON
17D1  09 25 24                               VIDEOREF                      ref=0x2425 (INTRO[37]=sphprm1i.vdx)
17D4  0B                                     INPUTLOOPSTART
17D5  0D 0F 01 F0 00 71 01 08 01 BE 1D 08    HOTSPOT_RECT                  left=0x010F, top=0x00F0, right=0x0171, bottom=0x0108, target=0x1DBE, cursor=0x08
17E1  0D 12 01 09 01 6F 01 24 01 48 18 08    HOTSPOT_RECT                  left=0x0112, top=0x0109, right=0x016F, bottom=0x0124, target=0x1848, cursor=0x08
17ED  0D FB 00 24 01 8E 01 3D 01 55 1C 08    HOTSPOT_RECT                  left=0x00FB, top=0x0124, right=0x018E, bottom=0x013D, target=0x1C55, cursor=0x08
17F9  0D F4 00 40 01 95 01 5D 01 15 00 08    HOTSPOT_RECT                  left=0x00F4, top=0x0140, right=0x0195, bottom=0x015D, target=0x0015, cursor=0x08
1805  0D D5 00 61 01 AA 01 76 01 7B 1D 08    HOTSPOT_RECT                  left=0x00D5, top=0x0161, right=0x01AA, bottom=0x0176, target=0x1D7B, cursor=0x08
; Runtime verified by v32tng trace 20260809-164423: v[0x107] == 240 executes
; all four hidden menu hotspot opcodes. They draw no ordinary menu entries and
; all enter this whole-house teleport map at 0x1AA0.
1811  1A 07 01 A0 47 18                      STRCMP_NE_JMP                 start=v[0x107], values=[240], target=0x1847
1817  0D 64 00 9B 00 B8 00 CC 00 A0 1A 07    HOTSPOT_RECT                  left=0x0064, top=0x009B, right=0x00B8, bottom=0x00CC, target=0x1AA0, cursor=0x07
1823  0D C2 01 9D 00 1E 02 C9 00 A0 1A 07    HOTSPOT_RECT                  left=0x01C2, top=0x009D, right=0x021E, bottom=0x00C9, target=0x1AA0, cursor=0x07
182F  0D 2A 00 2B 01 B2 00 85 01 A0 1A 07    HOTSPOT_RECT                  left=0x002A, top=0x012B, right=0x00B2, bottom=0x0185, target=0x1AA0, cursor=0x07
183B  0D D6 01 2C 01 59 02 85 01 A0 1A 07    HOTSPOT_RECT                  left=0x01D6, top=0x012C, right=0x0259, bottom=0x0185, target=0x1AA0, cursor=0x07
1847  13                                     INPUTLOOPEND
1848  2C AB 17 08                            SET_HOTSPOT_TOP               target=0x17AB, cursor=0x08
184C  22                                     COPY_BG_TO_FG
184D  07                                     VIDEOFLAG7_ON
184E  09 1D 24                               VIDEOREF                      ref=0x241D (INTRO[29]=thetest1.vdx)
1851  22                                     COPY_BG_TO_FG
1852  07                                     VIDEOFLAG7_ON
1853  9A FB E1 5E 18                         STRCMP_NE_JMP                 start=v[0x0FB], values=[49], target=0x185E
1858  09 33 24                               VIDEOREF                      ref=0x2433 (INTRO[51]=00c.vdx)
185B  15 61 18                               JMP                           target=0x1861
185E  09 32 24                               VIDEOREF                      ref=0x2432 (INTRO[50]=00b.vdx)
1861  22                                     COPY_BG_TO_FG
1862  07                                     VIDEOFLAG7_ON
1863  9A F5 E1 6B 18                         STRCMP_NE_JMP                 start=v[0x0F5], values=[49], target=0x186B
1868  09 35 24                               VIDEOREF                      ref=0x2435 (INTRO[53]=01c.vdx)
186B  22                                     COPY_BG_TO_FG
186C  07                                     VIDEOFLAG7_ON
186D  9A FA E1 75 18                         STRCMP_NE_JMP                 start=v[0x0FA], values=[49], target=0x1875
1872  09 3F 24                               VIDEOREF                      ref=0x243F (INTRO[63]=06c.vdx)
1875  A3 99 B0 94 18                         STRCMP_EQ_JMP                 start=v[0x099], values=[0], target=0x1894
187A  9A F3 E1 94 18                         STRCMP_NE_JMP                 start=v[0x0F3], values=[49], target=0x1894
187F  9A E9 E1 94 18                         STRCMP_NE_JMP                 start=v[0x0E9], values=[49], target=0x1894
1884  22                                     COPY_BG_TO_FG
1885  07                                     VIDEOFLAG7_ON
1886  9A F6 E1 91 18                         STRCMP_NE_JMP                 start=v[0x0F6], values=[49], target=0x1891
188B  09 37 24                               VIDEOREF                      ref=0x2437 (INTRO[55]=02c.vdx)
188E  15 94 18                               JMP                           target=0x1894
1891  09 36 24                               VIDEOREF                      ref=0x2436 (INTRO[54]=02b.vdx)
1894  9A FA E1 A9 18                         STRCMP_NE_JMP                 start=v[0x0FA], values=[49], target=0x18A9
1899  22                                     COPY_BG_TO_FG
189A  07                                     VIDEOFLAG7_ON
189B  9A F9 E1 A6 18                         STRCMP_NE_JMP                 start=v[0x0F9], values=[49], target=0x18A6
18A0  09 39 24                               VIDEOREF                      ref=0x2439 (INTRO[57]=03c.vdx)
18A3  15 A9 18                               JMP                           target=0x18A9
18A6  09 38 24                               VIDEOREF                      ref=0x2438 (INTRO[56]=03b.vdx)
18A9  A3 99 B0 C3 18                         STRCMP_EQ_JMP                 start=v[0x099], values=[0], target=0x18C3
18AE  9A F3 E1 C3 18                         STRCMP_NE_JMP                 start=v[0x0F3], values=[49], target=0x18C3
18B3  22                                     COPY_BG_TO_FG
18B4  07                                     VIDEOFLAG7_ON
18B5  9A ED E1 C0 18                         STRCMP_NE_JMP                 start=v[0x0ED], values=[49], target=0x18C0
18BA  09 3D 24                               VIDEOREF                      ref=0x243D (INTRO[61]=05c.vdx)
18BD  15 C3 18                               JMP                           target=0x18C3
18C0  09 3C 24                               VIDEOREF                      ref=0x243C (INTRO[60]=05b.vdx)
18C3  9A F9 E1 D8 18                         STRCMP_NE_JMP                 start=v[0x0F9], values=[49], target=0x18D8
18C8  22                                     COPY_BG_TO_FG
18C9  07                                     VIDEOFLAG7_ON
18CA  9A F8 E1 D5 18                         STRCMP_NE_JMP                 start=v[0x0F8], values=[49], target=0x18D5
18CF  09 3B 24                               VIDEOREF                      ref=0x243B (INTRO[59]=04c.vdx)
18D2  15 D8 18                               JMP                           target=0x18D8
18D5  09 3A 24                               VIDEOREF                      ref=0x243A (INTRO[58]=04b.vdx)
18D8  22                                     COPY_BG_TO_FG
18D9  0B                                     INPUTLOOPSTART
18DA  0D 39 01 F6 00 7B 01 3C 01 53 19 08    HOTSPOT_RECT                  left=0x0139, top=0x00F6, right=0x017B, bottom=0x013C, target=0x1953, cursor=0x08
18E6  9A F9 E1 F7 18                         STRCMP_NE_JMP                 start=v[0x0F9], values=[49], target=0x18F7
18EB  0D 34 01 C6 00 5E 01 E6 00 04 19 08    HOTSPOT_RECT                  left=0x0134, top=0x00C6, right=0x015E, bottom=0x00E6, target=0x1904, cursor=0x08
18F7  0D D5 00 61 01 AA 01 76 01 AB 17 08    HOTSPOT_RECT                  left=0x00D5, top=0x0161, right=0x01AA, bottom=0x0176, target=0x17AB, cursor=0x08
1903  13                                     INPUTLOOPEND
1904  22                                     COPY_BG_TO_FG
1905  07                                     VIDEOFLAG7_ON
1906  09 1C 24                               VIDEOREF                      ref=0x241C (INTRO[28]=thetest0.vdx)
1909  22                                     COPY_BG_TO_FG
190A  07                                     VIDEOFLAG7_ON
190B  9A F8 E1 36 19                         STRCMP_NE_JMP                 start=v[0x0F8], values=[49], target=0x1936
1910  09 5B 24                               VIDEOREF                      ref=0x245B (INTRO[91]=20c.vdx)
1913  22                                     COPY_BG_TO_FG
1914  07                                     VIDEOFLAG7_ON
1915  9A F4 B0 20 19                         STRCMP_NE_JMP                 start=v[0x0F4], values=[0], target=0x1920
191A  09 5C 24                               VIDEOREF                      ref=0x245C (INTRO[92]=21b.vdx)
191D  15 33 19                               JMP                           target=0x1933
1920  09 5D 24                               VIDEOREF                      ref=0x245D (INTRO[93]=21c.vdx)
1923  22                                     COPY_BG_TO_FG
1924  07                                     VIDEOFLAG7_ON
1925  9A F4 E1 30 19                         STRCMP_NE_JMP                 start=v[0x0F4], values=[49], target=0x1930
192A  09 5F 24                               VIDEOREF                      ref=0x245F (INTRO[95]=22c.vdx)
192D  15 33 19                               JMP                           target=0x1933
1930  09 5E 24                               VIDEOREF                      ref=0x245E (INTRO[94]=22b.vdx)
1933  15 39 19                               JMP                           target=0x1939
1936  09 5A 24                               VIDEOREF                      ref=0x245A (INTRO[90]=20b.vdx)
1939  0B                                     INPUTLOOPSTART
193A  0D A1 00 C1 00 E8 01 48 01 4C 18 08    HOTSPOT_RECT                  left=0x00A1, top=0x00C1, right=0x01E8, bottom=0x0148, target=0x184C, cursor=0x08
1946  0D D5 00 61 01 AA 01 76 01 AB 17 08    HOTSPOT_RECT                  left=0x00D5, top=0x0161, right=0x01AA, bottom=0x0176, target=0x17AB, cursor=0x08
1952  13                                     INPUTLOOPEND
1953  22                                     COPY_BG_TO_FG
1954  07                                     VIDEOFLAG7_ON
1955  09 1E 24                               VIDEOREF                      ref=0x241E (INTRO[30]=thetest2.vdx)
1958  22                                     COPY_BG_TO_FG
1959  07                                     VIDEOFLAG7_ON
195A  09 40 24                               VIDEOREF                      ref=0x2440 (INTRO[64]=07b.vdx)
195D  9A FA E1 72 19                         STRCMP_NE_JMP                 start=v[0x0FA], values=[49], target=0x1972
1962  22                                     COPY_BG_TO_FG
1963  07                                     VIDEOFLAG7_ON
1964  9A F0 E1 6F 19                         STRCMP_NE_JMP                 start=v[0x0F0], values=[49], target=0x196F
1969  09 43 24                               VIDEOREF                      ref=0x2443 (INTRO[67]=08c.vdx)
196C  15 72 19                               JMP                           target=0x1972
196F  09 42 24                               VIDEOREF                      ref=0x2442 (INTRO[66]=08b.vdx)
1972  9A FA E1 87 19                         STRCMP_NE_JMP                 start=v[0x0FA], values=[49], target=0x1987
1977  22                                     COPY_BG_TO_FG
1978  07                                     VIDEOFLAG7_ON
1979  9A E8 E1 84 19                         STRCMP_NE_JMP                 start=v[0x0E8], values=[49], target=0x1984
197E  09 45 24                               VIDEOREF                      ref=0x2445 (INTRO[69]=09c.vdx)
1981  15 87 19                               JMP                           target=0x1987
1984  09 44 24                               VIDEOREF                      ref=0x2444 (INTRO[68]=09b.vdx)
1987  9A FA E1 9C 19                         STRCMP_NE_JMP                 start=v[0x0FA], values=[49], target=0x199C
198C  22                                     COPY_BG_TO_FG
198D  07                                     VIDEOFLAG7_ON
198E  9A F1 E1 99 19                         STRCMP_NE_JMP                 start=v[0x0F1], values=[49], target=0x1999
1993  09 47 24                               VIDEOREF                      ref=0x2447 (INTRO[71]=10c.vdx)
1996  15 9C 19                               JMP                           target=0x199C
1999  09 46 24                               VIDEOREF                      ref=0x2446 (INTRO[70]=10b.vdx)
199C  A3 99 B0 B1 19                         STRCMP_EQ_JMP                 start=v[0x099], values=[0], target=0x19B1
19A1  22                                     COPY_BG_TO_FG
19A2  07                                     VIDEOFLAG7_ON
19A3  9A EC E1 AE 19                         STRCMP_NE_JMP                 start=v[0x0EC], values=[49], target=0x19AE
19A8  09 49 24                               VIDEOREF                      ref=0x2449 (INTRO[73]=11c.vdx)
19AB  15 B1 19                               JMP                           target=0x19B1
19AE  09 48 24                               VIDEOREF                      ref=0x2448 (INTRO[72]=11b.vdx)
19B1  9A EB E1 F3 19                         STRCMP_NE_JMP                 start=v[0x0EB], values=[49], target=0x19F3
19B6  9A F4 E1 F3 19                         STRCMP_NE_JMP                 start=v[0x0F4], values=[49], target=0x19F3
19BB  9A F7 E1 F3 19                         STRCMP_NE_JMP                 start=v[0x0F7], values=[49], target=0x19F3
19C0  9A F6 E1 F3 19                         STRCMP_NE_JMP                 start=v[0x0F6], values=[49], target=0x19F3
19C5  9A F5 E1 F3 19                         STRCMP_NE_JMP                 start=v[0x0F5], values=[49], target=0x19F3
19CA  9A F3 E1 F3 19                         STRCMP_NE_JMP                 start=v[0x0F3], values=[49], target=0x19F3
19CF  9A EE E1 F3 19                         STRCMP_NE_JMP                 start=v[0x0EE], values=[49], target=0x19F3
19D4  9A EC E1 F3 19                         STRCMP_NE_JMP                 start=v[0x0EC], values=[49], target=0x19F3
19D9  9A F1 E1 F3 19                         STRCMP_NE_JMP                 start=v[0x0F1], values=[49], target=0x19F3
19DE  9A ED E1 F3 19                         STRCMP_NE_JMP                 start=v[0x0ED], values=[49], target=0x19F3
19E3  22                                     COPY_BG_TO_FG
19E4  07                                     VIDEOFLAG7_ON
19E5  9A F2 E1 F0 19                         STRCMP_NE_JMP                 start=v[0x0F2], values=[49], target=0x19F0
19EA  09 4B 24                               VIDEOREF                      ref=0x244B (INTRO[75]=12c.vdx)
19ED  15 F3 19                               JMP                           target=0x19F3
19F0  09 4A 24                               VIDEOREF                      ref=0x244A (INTRO[74]=12b.vdx)
19F3  A3 99 B0 08 1A                         STRCMP_EQ_JMP                 start=v[0x099], values=[0], target=0x1A08
19F8  22                                     COPY_BG_TO_FG
19F9  07                                     VIDEOFLAG7_ON
19FA  9A EE E1 05 1A                         STRCMP_NE_JMP                 start=v[0x0EE], values=[49], target=0x1A05
19FF  09 4F 24                               VIDEOREF                      ref=0x244F (INTRO[79]=14c.vdx)
1A02  15 08 1A                               JMP                           target=0x1A08
1A05  09 4E 24                               VIDEOREF                      ref=0x244E (INTRO[78]=14b.vdx)
1A08  A3 99 B0 1D 1A                         STRCMP_EQ_JMP                 start=v[0x099], values=[0], target=0x1A1D
1A0D  22                                     COPY_BG_TO_FG
1A0E  07                                     VIDEOFLAG7_ON
1A0F  9A F7 E1 1A 1A                         STRCMP_NE_JMP                 start=v[0x0F7], values=[49], target=0x1A1A
1A14  09 4D 24                               VIDEOREF                      ref=0x244D (INTRO[77]=13c.vdx)
1A17  15 1D 1A                               JMP                           target=0x1A1D
1A1A  09 4C 24                               VIDEOREF                      ref=0x244C (INTRO[76]=13b.vdx)
1A1D  A3 99 B0 32 1A                         STRCMP_EQ_JMP                 start=v[0x099], values=[0], target=0x1A32
1A22  22                                     COPY_BG_TO_FG
1A23  07                                     VIDEOFLAG7_ON
1A24  9A E9 E1 2F 1A                         STRCMP_NE_JMP                 start=v[0x0E9], values=[49], target=0x1A2F
1A29  09 55 24                               VIDEOREF                      ref=0x2455 (INTRO[85]=17c.vdx)
1A2C  15 32 1A                               JMP                           target=0x1A32
1A2F  09 54 24                               VIDEOREF                      ref=0x2454 (INTRO[84]=17b.vdx)
1A32  9A E9 E1 47 1A                         STRCMP_NE_JMP                 start=v[0x0E9], values=[49], target=0x1A47
1A37  22                                     COPY_BG_TO_FG
1A38  07                                     VIDEOFLAG7_ON
1A39  9A F3 E1 44 1A                         STRCMP_NE_JMP                 start=v[0x0F3], values=[49], target=0x1A44
1A3E  09 53 24                               VIDEOREF                      ref=0x2453 (INTRO[83]=16c.vdx)
1A41  15 47 1A                               JMP                           target=0x1A47
1A44  09 52 24                               VIDEOREF                      ref=0x2452 (INTRO[82]=16b.vdx)
1A47  9A F3 E1 5C 1A                         STRCMP_NE_JMP                 start=v[0x0F3], values=[49], target=0x1A5C
1A4C  22                                     COPY_BG_TO_FG
1A4D  07                                     VIDEOFLAG7_ON
1A4E  9A EB E1 59 1A                         STRCMP_NE_JMP                 start=v[0x0EB], values=[49], target=0x1A59
1A53  09 51 24                               VIDEOREF                      ref=0x2451 (INTRO[81]=15c.vdx)
1A56  15 5C 1A                               JMP                           target=0x1A5C
1A59  09 50 24                               VIDEOREF                      ref=0x2450 (INTRO[80]=15b.vdx)
1A5C  9A FA E1 71 1A                         STRCMP_NE_JMP                 start=v[0x0FA], values=[49], target=0x1A71
1A61  22                                     COPY_BG_TO_FG
1A62  07                                     VIDEOFLAG7_ON
1A63  9A EF E1 6E 1A                         STRCMP_NE_JMP                 start=v[0x0EF], values=[49], target=0x1A6E
1A68  09 57 24                               VIDEOREF                      ref=0x2457 (INTRO[87]=18c.vdx)
1A6B  15 71 1A                               JMP                           target=0x1A71
1A6E  09 56 24                               VIDEOREF                      ref=0x2456 (INTRO[86]=18b.vdx)
1A71  A3 99 B0 86 1A                         STRCMP_EQ_JMP                 start=v[0x099], values=[0], target=0x1A86
1A76  22                                     COPY_BG_TO_FG
1A77  07                                     VIDEOFLAG7_ON
1A78  9A EA E1 83 1A                         STRCMP_NE_JMP                 start=v[0x0EA], values=[49], target=0x1A83
1A7D  09 59 24                               VIDEOREF                      ref=0x2459 (INTRO[89]=19c.vdx)
1A80  15 86 1A                               JMP                           target=0x1A86
1A83  09 58 24                               VIDEOREF                      ref=0x2458 (INTRO[88]=19b.vdx)
1A86  0B                                     INPUTLOOPSTART
1A87  0D 64 01 09 01 A2 01 53 01 4C 18 08    HOTSPOT_RECT                  left=0x0164, top=0x0109, right=0x01A2, bottom=0x0153, target=0x184C, cursor=0x08
1A93  0D D5 00 61 01 AA 01 76 01 AB 17 08    HOTSPOT_RECT                  left=0x00D5, top=0x0161, right=0x01AA, bottom=0x0176, target=0x17AB, cursor=0x08
1A9F  13                                     INPUTLOOPEND
1AA0  23 09 01 B0 AC 1A                      STRCMP_EQ_JMP                 start=v[0x109], values=[0], target=0x1AAC
1AA6  4B 01                                  SET_VIDEO_MODE                value=0x01
1AA8  16 09 01 B0                            LOADSTRING                    dst=v[0x109], values=[0]
1AAC  2C AB 17 08                            SET_HOTSPOT_TOP               target=0x17AB, cursor=0x08
1AB0  38                                     RESTORESTACK
1AB1  04                                     PALFADEOUT
1AB2  09 00 24                               VIDEOREF                      ref=0x2400 (INTRO[0]=house.vdx)
1AB5  0B                                     INPUTLOOPSTART
1AB6  0D 00 00 50 00 7F 00 90 00 49 1C 07    HOTSPOT_RECT                  left=0x0000, top=0x0050, right=0x007F, bottom=0x0090, target=0x1C49, cursor=0x07
1AC2  0D 80 00 50 00 FF 00 90 00 CB 1B 09    HOTSPOT_RECT                  left=0x0080, top=0x0050, right=0x00FF, bottom=0x0090, target=0x1BCB, cursor=0x09
1ACE  0D 00 01 50 00 7F 01 90 00 D1 1B 0A    HOTSPOT_RECT                  left=0x0100, top=0x0050, right=0x017F, bottom=0x0090, target=0x1BD1, cursor=0x0A
1ADA  0D 80 01 50 00 FF 01 90 00 D7 1B 07    HOTSPOT_RECT                  left=0x0180, top=0x0050, right=0x01FF, bottom=0x0090, target=0x1BD7, cursor=0x07
1AE6  0D 00 02 50 00 7F 02 90 00 DD 1B 09    HOTSPOT_RECT                  left=0x0200, top=0x0050, right=0x027F, bottom=0x0090, target=0x1BDD, cursor=0x09
1AF2  0D 00 00 91 00 7F 00 D1 00 E3 1B 0A    HOTSPOT_RECT                  left=0x0000, top=0x0091, right=0x007F, bottom=0x00D1, target=0x1BE3, cursor=0x0A
1AFE  0D 80 00 91 00 FF 00 D1 00 E9 1B 07    HOTSPOT_RECT                  left=0x0080, top=0x0091, right=0x00FF, bottom=0x00D1, target=0x1BE9, cursor=0x07
1B0A  0D 00 01 91 00 7F 01 D1 00 EF 1B 09    HOTSPOT_RECT                  left=0x0100, top=0x0091, right=0x017F, bottom=0x00D1, target=0x1BEF, cursor=0x09
1B16  0D 80 01 91 00 00 02 D1 00 F5 1B 0A    HOTSPOT_RECT                  left=0x0180, top=0x0091, right=0x0200, bottom=0x00D1, target=0x1BF5, cursor=0x0A
1B22  0D 00 02 91 00 7F 02 D1 00 FB 1B 07    HOTSPOT_RECT                  left=0x0200, top=0x0091, right=0x027F, bottom=0x00D1, target=0x1BFB, cursor=0x07
1B2E  0D 00 00 D2 00 7F 00 12 01 01 1C 09    HOTSPOT_RECT                  left=0x0000, top=0x00D2, right=0x007F, bottom=0x0112, target=0x1C01, cursor=0x09
1B3A  0D 80 00 D2 00 FF 00 12 01 07 1C 0A    HOTSPOT_RECT                  left=0x0080, top=0x00D2, right=0x00FF, bottom=0x0112, target=0x1C07, cursor=0x0A
1B46  0D 00 01 D2 00 7F 01 12 01 0D 1C 07    HOTSPOT_RECT                  left=0x0100, top=0x00D2, right=0x017F, bottom=0x0112, target=0x1C0D, cursor=0x07
1B52  0D 80 01 D2 00 FF 01 12 01 13 1C 09    HOTSPOT_RECT                  left=0x0180, top=0x00D2, right=0x01FF, bottom=0x0112, target=0x1C13, cursor=0x09
1B5E  0D 00 02 D2 00 7F 02 12 01 19 1C 0A    HOTSPOT_RECT                  left=0x0200, top=0x00D2, right=0x027F, bottom=0x0112, target=0x1C19, cursor=0x0A
1B6A  0D 00 00 13 01 7F 00 52 01 1F 1C 07    HOTSPOT_RECT                  left=0x0000, top=0x0113, right=0x007F, bottom=0x0152, target=0x1C1F, cursor=0x07
1B76  0D 80 00 13 01 FF 00 52 01 25 1C 09    HOTSPOT_RECT                  left=0x0080, top=0x0113, right=0x00FF, bottom=0x0152, target=0x1C25, cursor=0x09
1B82  0D 00 01 13 01 7F 01 52 01 2B 1C 0A    HOTSPOT_RECT                  left=0x0100, top=0x0113, right=0x017F, bottom=0x0152, target=0x1C2B, cursor=0x0A
1B8E  0D 80 01 13 01 FF 01 52 01 31 1C 07    HOTSPOT_RECT                  left=0x0180, top=0x0113, right=0x01FF, bottom=0x0152, target=0x1C31, cursor=0x07
1B9A  0D 00 02 13 01 7F 02 52 01 4F 1C 09    HOTSPOT_RECT                  left=0x0200, top=0x0113, right=0x027F, bottom=0x0152, target=0x1C4F, cursor=0x09
1BA6  0D 00 00 53 01 7F 00 90 01 37 1C 0A    HOTSPOT_RECT                  left=0x0000, top=0x0153, right=0x007F, bottom=0x0190, target=0x1C37, cursor=0x0A
1BB2  0D 80 00 53 01 FF 00 90 01 3D 1C 07    HOTSPOT_RECT                  left=0x0080, top=0x0153, right=0x00FF, bottom=0x0190, target=0x1C3D, cursor=0x07
1BBE  0D 00 01 53 01 7F 01 90 01 43 1C 09    HOTSPOT_RECT                  left=0x0100, top=0x0153, right=0x017F, bottom=0x0190, target=0x1C43, cursor=0x09
1BCA  13                                     INPUTLOOPEND
1BCB  18 67 03                               CALL                          target=0x0367
1BCE  15 49 0D                               JMP                           target=0x0D49
1BD1  18 67 03                               CALL                          target=0x0367
1BD4  15 00 17                               JMP                           target=0x1700
1BD7  18 67 03                               CALL                          target=0x0367
1BDA  15 47 2E                               JMP                           target=0x2E47
1BDD  18 67 03                               CALL                          target=0x0367
1BE0  15 3F 17                               JMP                           target=0x173F
1BE3  18 67 03                               CALL                          target=0x0367
1BE6  15 3F 33                               JMP                           target=0x333F
1BE9  18 67 03                               CALL                          target=0x0367
1BEC  15 FD 08                               JMP                           target=0x08FD
1BEF  18 67 03                               CALL                          target=0x0367
1BF2  15 06 2D                               JMP                           target=0x2D06
1BF5  18 67 03                               CALL                          target=0x0367
1BF8  15 D9 03                               JMP                           target=0x03D9
1BFB  18 67 03                               CALL                          target=0x0367
1BFE  15 8F 13                               JMP                           target=0x138F
1C01  18 67 03                               CALL                          target=0x0367
1C04  15 CA 03                               JMP                           target=0x03CA
1C07  18 67 03                               CALL                          target=0x0367
1C0A  15 C5 12                               JMP                           target=0x12C5
1C0D  18 67 03                               CALL                          target=0x0367
1C10  15 97 14                               JMP                           target=0x1497
1C13  18 67 03                               CALL                          target=0x0367
1C16  15 16 0A                               JMP                           target=0x0A16
1C19  18 67 03                               CALL                          target=0x0367
1C1C  15 90 30                               JMP                           target=0x3090
1C1F  18 67 03                               CALL                          target=0x0367
1C22  15 70 21                               JMP                           target=0x2170
1C25  18 67 03                               CALL                          target=0x0367
1C28  15 4E 32                               JMP                           target=0x324E
1C2B  18 67 03                               CALL                          target=0x0367
1C2E  15 E1 0B                               JMP                           target=0x0BE1
1C31  18 67 03                               CALL                          target=0x0367
1C34  15 EE 15                               JMP                           target=0x15EE
1C37  18 67 03                               CALL                          target=0x0367
1C3A  15 44 2F                               JMP                           target=0x2F44
1C3D  18 67 03                               CALL                          target=0x0367
1C40  15 77 2B                               JMP                           target=0x2B77
1C43  18 67 03                               CALL                          target=0x0367
1C46  15 E8 03                               JMP                           target=0x03E8
1C49  18 14 03                               CALL                          target=0x0314
1C4C  15 20 2C                               JMP                           target=0x2C20
1C4F  18 14 03                               CALL                          target=0x0314
1C52  15 02 3C                               JMP                           target=0x3C02
1C55  23 09 01 B0 61 1C                      STRCMP_EQ_JMP                 start=v[0x109], values=[0], target=0x1C61
1C5B  4B 01                                  SET_VIDEO_MODE                value=0x01
1C5D  16 09 01 B0                            LOADSTRING                    dst=v[0x109], values=[0]
1C61  38                                     RESTORESTACK
1C62  2C AB 17 08                            SET_HOTSPOT_TOP               target=0x17AB, cursor=0x08
1C66  35                                     VIDEOFLAG7_OFF
1C67  9A 8C 30 B1 73 1C                      STRCMP_NE_JMP                 start=v[0x08C], values=[0, 1], target=0x1C73
1C6D  15 F5 1B                               JMP                           target=0x1BF5
1C70  15 78 1D                               JMP                           target=0x1D78
1C73  9A 8C 30 B2 7F 1C                      STRCMP_NE_JMP                 start=v[0x08C], values=[0, 2], target=0x1C7F
1C79  15 01 1C                               JMP                           target=0x1C01
1C7C  15 78 1D                               JMP                           target=0x1D78
1C7F  9A 8C 30 B3 8B 1C                      STRCMP_NE_JMP                 start=v[0x08C], values=[0, 3], target=0x1C8B
1C85  15 E9 1B                               JMP                           target=0x1BE9
1C88  15 78 1D                               JMP                           target=0x1D78
1C8B  9A 8C 30 B4 97 1C                      STRCMP_NE_JMP                 start=v[0x08C], values=[0, 4], target=0x1C97
1C91  15 13 1C                               JMP                           target=0x1C13
1C94  15 78 1D                               JMP                           target=0x1D78
1C97  9A 8C 30 B5 A3 1C                      STRCMP_NE_JMP                 start=v[0x08C], values=[0, 5], target=0x1CA3
1C9D  15 D1 1B                               JMP                           target=0x1BD1
1CA0  15 78 1D                               JMP                           target=0x1D78
1CA3  9A 8C 30 B6 AF 1C                      STRCMP_NE_JMP                 start=v[0x08C], values=[0, 6], target=0x1CAF
1CA9  15 DD 1B                               JMP                           target=0x1BDD
1CAC  15 78 1D                               JMP                           target=0x1D78
1CAF  9A 8C 30 B7 BB 1C                      STRCMP_NE_JMP                 start=v[0x08C], values=[0, 7], target=0x1CBB
1CB5  15 1F 1C                               JMP                           target=0x1C1F
1CB8  15 78 1D                               JMP                           target=0x1D78
1CBB  9A 8C 30 B8 C7 1C                      STRCMP_NE_JMP                 start=v[0x08C], values=[0, 8], target=0x1CC7
1CC1  15 2B 1C                               JMP                           target=0x1C2B
1CC4  15 78 1D                               JMP                           target=0x1D78
1CC7  9A 8C 30 B9 D3 1C                      STRCMP_NE_JMP                 start=v[0x08C], values=[0, 9], target=0x1CD3
1CCD  15 FB 1B                               JMP                           target=0x1BFB
1CD0  15 78 1D                               JMP                           target=0x1D78
1CD3  9A 8C 31 B0 DF 1C                      STRCMP_NE_JMP                 start=v[0x08C], values=[1, 0], target=0x1CDF
1CD9  15 07 1C                               JMP                           target=0x1C07
1CDC  15 78 1D                               JMP                           target=0x1D78
1CDF  9A 8C 31 B1 EB 1C                      STRCMP_NE_JMP                 start=v[0x08C], values=[1, 1], target=0x1CEB
1CE5  15 0D 1C                               JMP                           target=0x1C0D
1CE8  15 78 1D                               JMP                           target=0x1D78
1CEB  9A 8C 31 B2 F7 1C                      STRCMP_NE_JMP                 start=v[0x08C], values=[1, 2], target=0x1CF7
1CF1  15 25 1C                               JMP                           target=0x1C25
1CF4  15 78 1D                               JMP                           target=0x1D78
1CF7  9A 8C 31 B3 03 1D                      STRCMP_NE_JMP                 start=v[0x08C], values=[1, 3], target=0x1D03
1CFD  15 EF 1B                               JMP                           target=0x1BEF
1D00  15 78 1D                               JMP                           target=0x1D78
1D03  9A 8C 31 B4 0F 1D                      STRCMP_NE_JMP                 start=v[0x08C], values=[1, 4], target=0x1D0F
1D09  15 3D 1C                               JMP                           target=0x1C3D
1D0C  15 78 1D                               JMP                           target=0x1D78
1D0F  9A 8C 31 B5 1B 1D                      STRCMP_NE_JMP                 start=v[0x08C], values=[1, 5], target=0x1D1B
1D15  15 CB 1B                               JMP                           target=0x1BCB
1D18  15 78 1D                               JMP                           target=0x1D78
1D1B  9A 8C 31 B6 27 1D                      STRCMP_NE_JMP                 start=v[0x08C], values=[1, 6], target=0x1D27
1D21  15 D7 1B                               JMP                           target=0x1BD7
1D24  15 78 1D                               JMP                           target=0x1D78
1D27  9A 8C 31 B7 33 1D                      STRCMP_NE_JMP                 start=v[0x08C], values=[1, 7], target=0x1D33
1D2D  15 19 1C                               JMP                           target=0x1C19
1D30  15 78 1D                               JMP                           target=0x1D78
1D33  9A 8C 31 B8 3F 1D                      STRCMP_NE_JMP                 start=v[0x08C], values=[1, 8], target=0x1D3F
1D39  15 E3 1B                               JMP                           target=0x1BE3
1D3C  15 78 1D                               JMP                           target=0x1D78
1D3F  9A 8C 31 B9 4B 1D                      STRCMP_NE_JMP                 start=v[0x08C], values=[1, 9], target=0x1D4B
1D45  15 37 1C                               JMP                           target=0x1C37
1D48  15 78 1D                               JMP                           target=0x1D78
1D4B  9A 8C 32 B0 57 1D                      STRCMP_NE_JMP                 start=v[0x08C], values=[2, 0], target=0x1D57
1D51  15 49 1C                               JMP                           target=0x1C49
1D54  15 78 1D                               JMP                           target=0x1D78
1D57  9A 8C 32 B1 63 1D                      STRCMP_NE_JMP                 start=v[0x08C], values=[2, 1], target=0x1D63
1D5D  15 49 1C                               JMP                           target=0x1C49
1D60  15 78 1D                               JMP                           target=0x1D78
1D63  9A 8C 32 B2 6F 1D                      STRCMP_NE_JMP                 start=v[0x08C], values=[2, 2], target=0x1D6F
1D69  15 4F 1C                               JMP                           target=0x1C4F
1D6C  15 78 1D                               JMP                           target=0x1D78
1D6F  9A 8C 32 B3 78 1D                      STRCMP_NE_JMP                 start=v[0x08C], values=[2, 3], target=0x1D78
1D75  15 31 1C                               JMP                           target=0x1C31
1D78  15 E9 04                               JMP                           target=0x04E9
1D7B  0A                                     VIDEOFLAG5_ON
1D7C  09 22 24                               VIDEOREF                      ref=0x2422 (INTRO[34]=sphmen2o.vdx)
1D7F  0A                                     VIDEOFLAG5_ON
1D80  09 26 24                               VIDEOREF                      ref=0x2426 (INTRO[38]=sphprm1o.vdx)
1D83  0A                                     VIDEOFLAG5_ON
1D84  09 27 24                               VIDEOREF                      ref=0x2427 (INTRO[39]=sphprm2i.vdx)
1D87  0B                                     INPUTLOOPSTART
1D88  0D 54 00 B3 00 B2 00 F7 00 AD 1D 08    HOTSPOT_RECT                  left=0x0054, top=0x00B3, right=0x00B2, bottom=0x00F7, target=0x1DAD, cursor=0x08
1D94  0D CB 01 B6 00 2C 02 ED 00 B7 1D 08    HOTSPOT_RECT                  left=0x01CB, top=0x00B6, right=0x022C, bottom=0x00ED, target=0x1DB7, cursor=0x08
1DA0  0D D5 00 61 01 AA 01 76 01 AD 1D 08    HOTSPOT_RECT                  left=0x00D5, top=0x0161, right=0x01AA, bottom=0x0176, target=0x1DAD, cursor=0x08
1DAC  13                                     INPUTLOOPEND
1DAD  0A                                     VIDEOFLAG5_ON
1DAE  09 28 24                               VIDEOREF                      ref=0x2428 (INTRO[40]=sphprm2o.vdx)
1DB1  0A                                     VIDEOFLAG5_ON
1DB2  09 A3 50                               VIDEOREF                      ref=0x50A3 (GAMWAV[163]=gen_s_12.vdx)
1DB5  04                                     PALFADEOUT
1DB6  2A                                     ENDSCRIPT
1DB7  0A                                     VIDEOFLAG5_ON
1DB8  09 28 24                               VIDEOREF                      ref=0x2428 (INTRO[40]=sphprm2o.vdx)
1DBB  15 CC 17                               JMP                           target=0x17CC
1DBE  0A                                     VIDEOFLAG5_ON
; Save-menu path.  Ten HOTSPOT_SAVE_SLOT records store the chosen slot in
; v[019].  Trace 20260809-195435 chose slot 1 and later wrote st7g.1.
1DBF  09 22 24                               VIDEOREF                      ref=0x2422 (INTRO[34]=sphmen2o.vdx)
1DC2  0A                                     VIDEOFLAG5_ON
1DC3  09 26 24                               VIDEOREF                      ref=0x2426 (INTRO[38]=sphprm1o.vdx)
1DC6  0A                                     VIDEOFLAG5_ON
1DC7  09 23 24                               VIDEOREF                      ref=0x2423 (INTRO[35]=sphmen3i.vdx)
1DCA  0A                                     VIDEOFLAG5_ON
1DCB  09 29 24                               VIDEOREF                      ref=0x2429 (INTRO[41]=sphprm3i.vdx)
1DCE  0B                                     INPUTLOOPSTART
1DCF  3B 01 B2 00 36 01 C1 00 4D 01 5E 1E 08 HOTSPOT_SAVE_SLOT             slot=0x01, left=0x00B2, top=0x0136, right=0x00C1, bottom=0x014D, target=0x1E5E, cursor=0x08
1DDC  3B 02 C5 00 36 01 DE 00 4D 01 64 1E 08 HOTSPOT_SAVE_SLOT             slot=0x02, left=0x00C5, top=0x0136, right=0x00DE, bottom=0x014D, target=0x1E64, cursor=0x08
1DE9  3B 03 E4 00 36 01 FE 00 4D 01 6A 1E 08 HOTSPOT_SAVE_SLOT             slot=0x03, left=0x00E4, top=0x0136, right=0x00FE, bottom=0x014D, target=0x1E6A, cursor=0x08
1DF6  3B 04 04 01 36 01 1F 01 4D 01 70 1E 08 HOTSPOT_SAVE_SLOT             slot=0x04, left=0x0104, top=0x0136, right=0x011F, bottom=0x014D, target=0x1E70, cursor=0x08
1E03  3B 05 24 01 36 01 3E 01 4D 01 76 1E 08 HOTSPOT_SAVE_SLOT             slot=0x05, left=0x0124, top=0x0136, right=0x013E, bottom=0x014D, target=0x1E76, cursor=0x08
1E10  3B 06 41 01 36 01 5A 01 4D 01 7C 1E 08 HOTSPOT_SAVE_SLOT             slot=0x06, left=0x0141, top=0x0136, right=0x015A, bottom=0x014D, target=0x1E7C, cursor=0x08
1E1D  3B 07 5E 01 36 01 77 01 4D 01 82 1E 08 HOTSPOT_SAVE_SLOT             slot=0x07, left=0x015E, top=0x0136, right=0x0177, bottom=0x014D, target=0x1E82, cursor=0x08
1E2A  3B 08 7C 01 36 01 96 01 4D 01 88 1E 08 HOTSPOT_SAVE_SLOT             slot=0x08, left=0x017C, top=0x0136, right=0x0196, bottom=0x014D, target=0x1E88, cursor=0x08
1E37  3B 09 99 01 36 01 B3 01 4D 01 8E 1E 08 HOTSPOT_SAVE_SLOT             slot=0x09, left=0x0199, top=0x0136, right=0x01B3, bottom=0x014D, target=0x1E8E, cursor=0x08
1E44  3B 00 B5 01 36 01 D2 01 4D 01 94 1E 08 HOTSPOT_SAVE_SLOT             slot=0x00, left=0x01B5, top=0x0136, right=0x01D2, bottom=0x014D, target=0x1E94, cursor=0x08
1E51  0D D5 00 61 01 AA 01 76 01 AB 17 08    HOTSPOT_RECT                  left=0x00D5, top=0x0161, right=0x01AA, bottom=0x0176, target=0x17AB, cursor=0x08
1E5D  13                                     INPUTLOOPEND
1E5E  96 19 B1                               LOADSTRING                    dst=v[0x019], values=[1]
1E61  15 9A 1E                               JMP                           target=0x1E9A
1E64  96 19 B2                               LOADSTRING                    dst=v[0x019], values=[2]
1E67  15 9A 1E                               JMP                           target=0x1E9A
1E6A  96 19 B3                               LOADSTRING                    dst=v[0x019], values=[3]
1E6D  15 9A 1E                               JMP                           target=0x1E9A
1E70  96 19 B4                               LOADSTRING                    dst=v[0x019], values=[4]
1E73  15 9A 1E                               JMP                           target=0x1E9A
1E76  96 19 B5                               LOADSTRING                    dst=v[0x019], values=[5]
1E79  15 9A 1E                               JMP                           target=0x1E9A
1E7C  96 19 B6                               LOADSTRING                    dst=v[0x019], values=[6]
1E7F  15 9A 1E                               JMP                           target=0x1E9A
1E82  96 19 B7                               LOADSTRING                    dst=v[0x019], values=[7]
1E85  15 9A 1E                               JMP                           target=0x1E9A
1E88  96 19 B8                               LOADSTRING                    dst=v[0x019], values=[8]
1E8B  15 9A 1E                               JMP                           target=0x1E9A
1E8E  96 19 B9                               LOADSTRING                    dst=v[0x019], values=[9]
1E91  15 9A 1E                               JMP                           target=0x1E9A
1E94  96 19 B0                               LOADSTRING                    dst=v[0x019], values=[0]
1E97  15 9A 1E                               JMP                           target=0x1E9A
1E9A  0A                                     VIDEOFLAG5_ON
1E9B  09 2A 24                               VIDEOREF                      ref=0x242A (INTRO[42]=sphprm3o.vdx)
1E9E  0A                                     VIDEOFLAG5_ON
1E9F  09 2B 24                               VIDEOREF                      ref=0x242B (INTRO[43]=sphprm4i.vdx)
1EA2  96 00 24 24 24 24 24 24 24 24 24 24 24 24 24 24 A4 LOADSTRING                    dst=v[0x000], values=[244, 244, 244, 244, 244, 244, 244, 244, 244, 244, 244, 244, 244, 244, 244]
1EB3  96 17 E1                               LOADSTRING                    dst=v[0x017], values=[49]
1EB6  3A 23 61 23 62 23 63 23 64 23 65 23 66 23 67 23 68 23 69 23 6A 23 6B 23 6C 23 6D 23 EE PRINTSTRING                   values=[v[0x000], v[0x001], v[0x002], v[0x003], v[0x004], v[0x005], v[0x006], v[0x007], v[0x008], v[0x009], v[0x00A], v[0x00B], v[0x00C], v[0x00D]]
1ED3  0B                                     INPUTLOOPSTART
1ED4  0C 61 AC 20                            KEYACTION                     key=0x61, target=0x20AC
1ED8  0C 62 B2 20                            KEYACTION                     key=0x62, target=0x20B2
1EDC  0C 63 B8 20                            KEYACTION                     key=0x63, target=0x20B8
1EE0  0C 64 BE 20                            KEYACTION                     key=0x64, target=0x20BE
1EE4  0C 65 C4 20                            KEYACTION                     key=0x65, target=0x20C4
1EE8  0C 66 CA 20                            KEYACTION                     key=0x66, target=0x20CA
1EEC  0C 67 D0 20                            KEYACTION                     key=0x67, target=0x20D0
1EF0  0C 68 D6 20                            KEYACTION                     key=0x68, target=0x20D6
1EF4  0C 69 DC 20                            KEYACTION                     key=0x69, target=0x20DC
1EF8  0C 6A E2 20                            KEYACTION                     key=0x6A, target=0x20E2
1EFC  0C 6B E8 20                            KEYACTION                     key=0x6B, target=0x20E8
1F00  0C 6C EE 20                            KEYACTION                     key=0x6C, target=0x20EE
1F04  0C 6D F4 20                            KEYACTION                     key=0x6D, target=0x20F4
1F08  0C 6E FA 20                            KEYACTION                     key=0x6E, target=0x20FA
1F0C  0C 6F 00 21                            KEYACTION                     key=0x6F, target=0x2100
1F10  0C 70 06 21                            KEYACTION                     key=0x70, target=0x2106
1F14  0C 71 0C 21                            KEYACTION                     key=0x71, target=0x210C
1F18  0C 72 12 21                            KEYACTION                     key=0x72, target=0x2112
1F1C  0C 73 18 21                            KEYACTION                     key=0x73, target=0x2118
1F20  0C 74 1E 21                            KEYACTION                     key=0x74, target=0x211E
1F24  0C 75 24 21                            KEYACTION                     key=0x75, target=0x2124
1F28  0C 76 2A 21                            KEYACTION                     key=0x76, target=0x212A
1F2C  0C 77 30 21                            KEYACTION                     key=0x77, target=0x2130
1F30  0C 78 36 21                            KEYACTION                     key=0x78, target=0x2136
1F34  0C 79 3C 21                            KEYACTION                     key=0x79, target=0x213C
1F38  0C 7A 42 21                            KEYACTION                     key=0x7A, target=0x2142
1F3C  0C 20 A6 20                            KEYACTION                     key=0x20, target=0x20A6
1F40  0D 7C 00 F1 00 98 00 04 01 AC 20 08    HOTSPOT_RECT                  left=0x007C, top=0x00F1, right=0x0098, bottom=0x0104, target=0x20AC, cursor=0x08
1F4C  0D 9F 00 F1 00 B9 00 04 01 B2 20 08    HOTSPOT_RECT                  left=0x009F, top=0x00F1, right=0x00B9, bottom=0x0104, target=0x20B2, cursor=0x08
1F58  0D BD 00 F2 00 D4 00 04 01 B8 20 08    HOTSPOT_RECT                  left=0x00BD, top=0x00F2, right=0x00D4, bottom=0x0104, target=0x20B8, cursor=0x08
1F64  0D DA 00 F1 00 F5 00 04 01 BE 20 08    HOTSPOT_RECT                  left=0x00DA, top=0x00F1, right=0x00F5, bottom=0x0104, target=0x20BE, cursor=0x08
1F70  0D FA 00 F1 00 12 01 04 01 C4 20 08    HOTSPOT_RECT                  left=0x00FA, top=0x00F1, right=0x0112, bottom=0x0104, target=0x20C4, cursor=0x08
1F7C  0D 16 01 F1 00 2C 01 04 01 CA 20 08    HOTSPOT_RECT                  left=0x0116, top=0x00F1, right=0x012C, bottom=0x0104, target=0x20CA, cursor=0x08
1F88  0D 30 01 F1 00 4A 01 04 01 D0 20 08    HOTSPOT_RECT                  left=0x0130, top=0x00F1, right=0x014A, bottom=0x0104, target=0x20D0, cursor=0x08
1F94  0D 50 01 F1 00 6B 01 04 01 D6 20 08    HOTSPOT_RECT                  left=0x0150, top=0x00F1, right=0x016B, bottom=0x0104, target=0x20D6, cursor=0x08
1FA0  0D 6E 01 F1 00 7F 01 04 01 DC 20 08    HOTSPOT_RECT                  left=0x016E, top=0x00F1, right=0x017F, bottom=0x0104, target=0x20DC, cursor=0x08
1FAC  0D 81 01 F1 00 95 01 04 01 E2 20 08    HOTSPOT_RECT                  left=0x0181, top=0x00F1, right=0x0195, bottom=0x0104, target=0x20E2, cursor=0x08
1FB8  0D 9A 01 F1 00 B7 01 04 01 E8 20 08    HOTSPOT_RECT                  left=0x019A, top=0x00F1, right=0x01B7, bottom=0x0104, target=0x20E8, cursor=0x08
1FC4  0D BD 01 F1 00 D5 01 04 01 EE 20 08    HOTSPOT_RECT                  left=0x01BD, top=0x00F1, right=0x01D5, bottom=0x0104, target=0x20EE, cursor=0x08
1FD0  0D D8 01 F1 00 05 02 04 01 F4 20 08    HOTSPOT_RECT                  left=0x01D8, top=0x00F1, right=0x0205, bottom=0x0104, target=0x20F4, cursor=0x08
1FDC  0D 65 00 11 01 85 00 25 01 FA 20 08    HOTSPOT_RECT                  left=0x0065, top=0x0111, right=0x0085, bottom=0x0125, target=0x20FA, cursor=0x08
1FE8  0D 88 00 11 01 A4 00 25 01 00 21 08    HOTSPOT_RECT                  left=0x0088, top=0x0111, right=0x00A4, bottom=0x0125, target=0x2100, cursor=0x08
1FF4  0D A7 00 11 01 C2 00 25 01 06 21 08    HOTSPOT_RECT                  left=0x00A7, top=0x0111, right=0x00C2, bottom=0x0125, target=0x2106, cursor=0x08
2000  0D C5 00 11 01 E1 00 25 01 0C 21 08    HOTSPOT_RECT                  left=0x00C5, top=0x0111, right=0x00E1, bottom=0x0125, target=0x210C, cursor=0x08
200C  0D E6 00 11 01 05 01 25 01 12 21 08    HOTSPOT_RECT                  left=0x00E6, top=0x0111, right=0x0105, bottom=0x0125, target=0x2112, cursor=0x08
2018  0D 0B 01 11 01 24 01 25 01 18 21 08    HOTSPOT_RECT                  left=0x010B, top=0x0111, right=0x0124, bottom=0x0125, target=0x2118, cursor=0x08
2024  0D 29 01 11 01 46 01 25 01 1E 21 08    HOTSPOT_RECT                  left=0x0129, top=0x0111, right=0x0146, bottom=0x0125, target=0x211E, cursor=0x08
2030  0D 49 01 11 01 66 01 25 01 24 21 08    HOTSPOT_RECT                  left=0x0149, top=0x0111, right=0x0166, bottom=0x0125, target=0x2124, cursor=0x08
203C  0D 6A 01 11 01 88 01 25 01 2A 21 08    HOTSPOT_RECT                  left=0x016A, top=0x0111, right=0x0188, bottom=0x0125, target=0x212A, cursor=0x08
2048  0D 8D 01 11 01 B3 01 25 01 30 21 08    HOTSPOT_RECT                  left=0x018D, top=0x0111, right=0x01B3, bottom=0x0125, target=0x2130, cursor=0x08
2054  0D BA 01 11 01 D8 01 25 01 36 21 08    HOTSPOT_RECT                  left=0x01BA, top=0x0111, right=0x01D8, bottom=0x0125, target=0x2136, cursor=0x08
2060  0D DC 01 11 01 FB 01 25 01 3C 21 08    HOTSPOT_RECT                  left=0x01DC, top=0x0111, right=0x01FB, bottom=0x0125, target=0x213C, cursor=0x08
206C  0D FE 01 11 01 1F 02 25 01 42 21 08    HOTSPOT_RECT                  left=0x01FE, top=0x0111, right=0x021F, bottom=0x0125, target=0x2142, cursor=0x08
2078  0D D5 00 61 01 AA 01 76 01 AB 17 08    HOTSPOT_RECT                  left=0x00D5, top=0x0161, right=0x01AA, bottom=0x0176, target=0x17AB, cursor=0x08
2084  0D E6 00 B7 00 9E 01 CF 00 56 21 08    HOTSPOT_RECT                  left=0x00E6, top=0x00B7, right=0x019E, bottom=0x00CF, target=0x2156, cursor=0x08
2090  0C 0D 56 21                            KEYACTION                     key=0x0D, target=0x2156
2094  0C 08 99 20                            KEYACTION                     key=0x08, target=0x2099
2098  13                                     INPUTLOOPEND
2099  A3 17 E1 A0 20                         STRCMP_EQ_JMP                 start=v[0x017], values=[49], target=0x20A0
209E  A0 17                                  DEC                           var=v[0x017]
20A0  B3 17 A4                               LOADSTRING_INDIRECT           dst=v[0x017], values=[244]
20A3  15 B6 1E                               JMP                           target=0x1EB6
20A6  96 18 AE                               LOADSTRING                    dst=v[0x018], values=[254]
20A9  15 48 21                               JMP                           target=0x2148
20AC  96 18 E1                               LOADSTRING                    dst=v[0x018], values=[49]
20AF  15 48 21                               JMP                           target=0x2148
20B2  96 18 E2                               LOADSTRING                    dst=v[0x018], values=[50]
20B5  15 48 21                               JMP                           target=0x2148
20B8  96 18 E3                               LOADSTRING                    dst=v[0x018], values=[51]
20BB  15 48 21                               JMP                           target=0x2148
20BE  96 18 E4                               LOADSTRING                    dst=v[0x018], values=[52]
20C1  15 48 21                               JMP                           target=0x2148
20C4  96 18 E5                               LOADSTRING                    dst=v[0x018], values=[53]
20C7  15 48 21                               JMP                           target=0x2148
20CA  96 18 E6                               LOADSTRING                    dst=v[0x018], values=[54]
20CD  15 48 21                               JMP                           target=0x2148
20D0  96 18 E7                               LOADSTRING                    dst=v[0x018], values=[55]
20D3  15 48 21                               JMP                           target=0x2148
20D6  96 18 E8                               LOADSTRING                    dst=v[0x018], values=[56]
20D9  15 48 21                               JMP                           target=0x2148
20DC  96 18 E9                               LOADSTRING                    dst=v[0x018], values=[57]
20DF  15 48 21                               JMP                           target=0x2148
20E2  96 18 EA                               LOADSTRING                    dst=v[0x018], values=[58]
20E5  15 48 21                               JMP                           target=0x2148
20E8  96 18 EB                               LOADSTRING                    dst=v[0x018], values=[59]
20EB  15 48 21                               JMP                           target=0x2148
20EE  96 18 EC                               LOADSTRING                    dst=v[0x018], values=[60]
20F1  15 48 21                               JMP                           target=0x2148
20F4  96 18 ED                               LOADSTRING                    dst=v[0x018], values=[61]
20F7  15 48 21                               JMP                           target=0x2148
20FA  96 18 EE                               LOADSTRING                    dst=v[0x018], values=[62]
20FD  15 48 21                               JMP                           target=0x2148
2100  96 18 EF                               LOADSTRING                    dst=v[0x018], values=[63]
2103  15 48 21                               JMP                           target=0x2148
2106  96 18 F0                               LOADSTRING                    dst=v[0x018], values=[64]
2109  15 48 21                               JMP                           target=0x2148
210C  96 18 F1                               LOADSTRING                    dst=v[0x018], values=[65]
210F  15 48 21                               JMP                           target=0x2148
2112  96 18 F2                               LOADSTRING                    dst=v[0x018], values=[66]
2115  15 48 21                               JMP                           target=0x2148
2118  96 18 F3                               LOADSTRING                    dst=v[0x018], values=[67]
211B  15 48 21                               JMP                           target=0x2148
211E  96 18 F4                               LOADSTRING                    dst=v[0x018], values=[68]
2121  15 48 21                               JMP                           target=0x2148
2124  96 18 F5                               LOADSTRING                    dst=v[0x018], values=[69]
2127  15 48 21                               JMP                           target=0x2148
212A  96 18 F6                               LOADSTRING                    dst=v[0x018], values=[70]
212D  15 48 21                               JMP                           target=0x2148
2130  96 18 F7                               LOADSTRING                    dst=v[0x018], values=[71]
2133  15 48 21                               JMP                           target=0x2148
2136  96 18 F8                               LOADSTRING                    dst=v[0x018], values=[72]
2139  15 48 21                               JMP                           target=0x2148
213C  96 18 F9                               LOADSTRING                    dst=v[0x018], values=[73]
213F  15 48 21                               JMP                           target=0x2148
2142  96 18 FA                               LOADSTRING                    dst=v[0x018], values=[74]
2145  15 48 21                               JMP                           target=0x2148
; Name-entry encoding is the GRV display alphabet, not ASCII: key 'a' loads
; 49, 'b' loads 50, and so on into v[018], then this indirect store appends it
; at v[v[017]-49].  The captured name ABC therefore appears on disk as
; 31 32 33 followed by the untouched F4 fill bytes.
2148  B3 17 23 F9                            LOADSTRING_INDIRECT           dst=v[0x017], values=[v[0x018]]
214C  9F 17                                  INC                           var=v[0x017]
214E  A3 17 EE 56 21                         STRCMP_EQ_JMP                 start=v[0x017], values=[62], target=0x2156
2153  15 B6 1E                               JMP                           target=0x1EB6
; Runtime verified at 580.800 s in trace 20260809-195435: v[019]=1 selects
; st7g.1; v32tng creates/truncates it and writes the 400h-byte bank exactly.
; Trace 20260809-223655 reached the same save after K.GRV returned 0 from a
; completed soup-can puzzle; the resulting 400h-byte file records v[0F9]=49.
2156  2F 19 00                               SAVEGAME                      var=v[0x019]
2159  96 00 24 A4                            LOADSTRING                    dst=v[0x000], values=[244, 244]
215D  3A 23 E1                               PRINTSTRING                   values=[v[0x000]]
2160  0A                                     VIDEOFLAG5_ON
2161  07                                     VIDEOFLAG7_ON
2162  09 17 24                               VIDEOREF                      ref=0x2417 (INTRO[23]=save2.vdx)
2165  0A                                     VIDEOFLAG5_ON
2166  09 2C 24                               VIDEOREF                      ref=0x242C (INTRO[44]=sphprm4o.vdx)
2169  0A                                     VIDEOFLAG5_ON
216A  09 24 24                               VIDEOREF                      ref=0x2424 (INTRO[36]=sphmen3o.vdx)
216D  15 CC 17                               JMP                           target=0x17CC
2170  1A 00 01 B0 7C 21                      STRCMP_NE_JMP                 start=v[0x100], values=[0], target=0x217C
2176  08 0C 4C                               SETBACKGROUNDSONG             ref=0x4C0C (XMI[12]=gu16.xmi)
2179  15 7F 21                               JMP                           target=0x217F
217C  08 00 4C                               SETBACKGROUNDSONG             ref=0x4C00 (XMI[0]=agu16.xmi)
217F  96 8C 30 B7                            LOADSTRING                    dst=v[0x08C], values=[0, 7]
2183  03                                     FADEIN_NEXT_VIDEO
2184  05                                     FIRSTFRAME_NEXT_VIDEO
2185  09 00 34                               VIDEOREF                      ref=0x3400 (LI[0]=l1_2.vdx)
2188  9A F5 E1 AE 21                         STRCMP_NE_JMP                 start=v[0x0F5], values=[49], target=0x21AE
218D  9A F8 E1 AE 21                         STRCMP_NE_JMP                 start=v[0x0F8], values=[49], target=0x21AE
2192  9A EF E1 AE 21                         STRCMP_NE_JMP                 start=v[0x0EF], values=[49], target=0x21AE
2197  9A F0 E1 AE 21                         STRCMP_NE_JMP                 start=v[0x0F0], values=[49], target=0x21AE
219C  9A C3 B0 AE 21                         STRCMP_NE_JMP                 start=v[0x0C3], values=[0], target=0x21AE
21A1  18 C1 38                               CALL                          target=0x38C1
21A4  96 C3 B1                               LOADSTRING                    dst=v[0x0C3], values=[1]
21A7  96 8E 33 B6                            LOADSTRING                    dst=v[0x08E], values=[3, 6]
21AB  96 99 B1                               LOADSTRING                    dst=v[0x099], values=[1]
21AE  0B                                     INPUTLOOPSTART
21AF  9A 8E 33 B6 B8 21                      STRCMP_NE_JMP                 start=v[0x08E], values=[3, 6], target=0x21B8
21B5  30 12 39                               HOTSPOT_BOTTOM_4              target=0x3912
21B8  A3 92 30 B0 CA 21                      STRCMP_EQ_JMP                 start=v[0x092], values=[0, 0], target=0x21CA
21BE  0D 74 00 11 01 13 01 7A 01 03 22 06    HOTSPOT_RECT                  left=0x0074, top=0x0111, right=0x0113, bottom=0x017A, target=0x2203, cursor=0x06
21CA  0D DC 00 8C 00 18 01 DC 00 E9 21 00    HOTSPOT_RECT                  left=0x00DC, top=0x008C, right=0x0118, bottom=0x00DC, target=0x21E9, cursor=0x00
21D6  0D 5E 01 50 00 F4 01 8F 01 4D 2A 00    HOTSPOT_RECT                  left=0x015E, top=0x0050, right=0x01F4, bottom=0x018F, target=0x2A4D, cursor=0x00
21E2  0E 53 2A                               HOTSPOT_LEFT                  target=0x2A53
21E5  0F 59 2A                               HOTSPOT_RIGHT                 target=0x2A59
21E8  13                                     INPUTLOOPEND
21E9  09 01 34                               VIDEOREF                      ref=0x3401 (LI[1]=l1_4f.vdx)
21EC  0B                                     INPUTLOOPSTART
21ED  10 F4 21                               HOTSPOT_CENTER                target=0x21F4
21F0  0F FD 21                               HOTSPOT_RIGHT                 target=0x21FD
21F3  13                                     INPUTLOOPEND
21F4  09 0B 34                               VIDEOREF                      ref=0x340B (LI[11]=l4_df.vdx)
21F7  09 0A 34                               VIDEOREF                      ref=0x340A (LI[10]=l4_db.vdx)
21FA  15 EC 21                               JMP                           target=0x21EC
21FD  09 09 34                               VIDEOREF                      ref=0x3409 (LI[9]=l4_2f.vdx)
2200  15 76 2A                               JMP                           target=0x2A76
2203  9A 92 30 B0 0C 22                      STRCMP_NE_JMP                 start=v[0x092], values=[0, 0], target=0x220C
2209  15 88 21                               JMP                           target=0x2188
220C  02 35 4C                               PLAYSONG                      ref=0x4C35 (XMI[53]=gu56.xmi)
220F  09 03 34                               VIDEOREF                      ref=0x3403 (LI[3]=l1_cf.vdx)
2212  28 00 00                               RESERVED_28                   value=0x0000
2215  96 00 31 30 B0                         LOADSTRING                    dst=v[0x000], values=[1, 0, 0]
221A  16 0A 01 B0                            LOADSTRING                    dst=v[0x10A], values=[0]
221E  16 0B 01 B0                            LOADSTRING                    dst=v[0x10B], values=[0]
2222  9A 92 32 B2 78 22                      STRCMP_NE_JMP                 start=v[0x092], values=[2, 2], target=0x2278
2228  96 01 EA                               LOADSTRING                    dst=v[0x001], values=[58]
222B  96 02 E8                               LOADSTRING                    dst=v[0x002], values=[56]
222E  9A E8 E1 36 22                         STRCMP_NE_JMP                 start=v[0x0E8], values=[49], target=0x2236
2233  15 1A 29                               JMP                           target=0x291A
2236  9A E8 B5 41 22                         STRCMP_NE_JMP                 start=v[0x0E8], values=[5], target=0x2241
223B  96 E8 E1                               LOADSTRING                    dst=v[0x0E8], values=[49]
223E  15 1A 29                               JMP                           target=0x291A
2241  9A E8 B4 49 22                         STRCMP_NE_JMP                 start=v[0x0E8], values=[4], target=0x2249
2246  96 00 B2                               LOADSTRING                    dst=v[0x000], values=[2]
2249  9A E8 B3 54 22                         STRCMP_NE_JMP                 start=v[0x0E8], values=[3], target=0x2254
224E  96 00 B2                               LOADSTRING                    dst=v[0x000], values=[2]
2251  96 E8 B4                               LOADSTRING                    dst=v[0x0E8], values=[4]
2254  9A E8 B2 5C 22                         STRCMP_NE_JMP                 start=v[0x0E8], values=[2], target=0x225C
2259  96 00 B1                               LOADSTRING                    dst=v[0x000], values=[1]
225C  9A E8 B1 67 22                         STRCMP_NE_JMP                 start=v[0x0E8], values=[1], target=0x2267
2261  96 00 B1                               LOADSTRING                    dst=v[0x000], values=[1]
2264  96 E8 B2                               LOADSTRING                    dst=v[0x0E8], values=[2]
2267  05                                     FIRSTFRAME_NEXT_VIDEO
2268  26 63 6C 23 62 23 63 23 61 6F 75 74 00 VIDEO_NAME                    name="cl{v001}{v002}{v000}out"
2275  15 3B 29                               JMP                           target=0x293B
2278  9A 92 30 B7 CE 22                      STRCMP_NE_JMP                 start=v[0x092], values=[0, 7], target=0x22CE
227E  96 01 ED                               LOADSTRING                    dst=v[0x001], values=[61]
2281  96 02 F5                               LOADSTRING                    dst=v[0x002], values=[69]
2284  9A F6 E1 8C 22                         STRCMP_NE_JMP                 start=v[0x0F6], values=[49], target=0x228C
2289  15 1A 29                               JMP                           target=0x291A
228C  9A F6 B5 97 22                         STRCMP_NE_JMP                 start=v[0x0F6], values=[5], target=0x2297
2291  96 F6 E1                               LOADSTRING                    dst=v[0x0F6], values=[49]
2294  15 1A 29                               JMP                           target=0x291A
2297  9A F6 B4 9F 22                         STRCMP_NE_JMP                 start=v[0x0F6], values=[4], target=0x229F
229C  96 00 B2                               LOADSTRING                    dst=v[0x000], values=[2]
229F  9A F6 B3 AA 22                         STRCMP_NE_JMP                 start=v[0x0F6], values=[3], target=0x22AA
22A4  96 00 B2                               LOADSTRING                    dst=v[0x000], values=[2]
22A7  96 F6 B4                               LOADSTRING                    dst=v[0x0F6], values=[4]
22AA  9A F6 B2 B2 22                         STRCMP_NE_JMP                 start=v[0x0F6], values=[2], target=0x22B2
22AF  96 00 B1                               LOADSTRING                    dst=v[0x000], values=[1]
22B2  9A F6 B1 BD 22                         STRCMP_NE_JMP                 start=v[0x0F6], values=[1], target=0x22BD
22B7  96 00 B1                               LOADSTRING                    dst=v[0x000], values=[1]
22BA  96 F6 B2                               LOADSTRING                    dst=v[0x0F6], values=[2]
22BD  05                                     FIRSTFRAME_NEXT_VIDEO
22BE  26 63 6C 23 62 23 63 23 61 6F 75 74 00 VIDEO_NAME                    name="cl{v001}{v002}{v000}out"
22CB  15 3B 29                               JMP                           target=0x293B
22CE  9A 92 31 B0 23 23                      STRCMP_NE_JMP                 start=v[0x092], values=[1, 0], target=0x2323
22D4  96 01 E3                               LOADSTRING                    dst=v[0x001], values=[51]
22D7  96 02 E8                               LOADSTRING                    dst=v[0x002], values=[56]
22DA  9A F3 E1 E2 22                         STRCMP_NE_JMP                 start=v[0x0F3], values=[49], target=0x22E2
22DF  15 1A 29                               JMP                           target=0x291A
22E2  9A F3 B5 ED 22                         STRCMP_NE_JMP                 start=v[0x0F3], values=[5], target=0x22ED
22E7  96 F3 E1                               LOADSTRING                    dst=v[0x0F3], values=[49]
22EA  15 1A 29                               JMP                           target=0x291A
22ED  9A F3 B4 F5 22                         STRCMP_NE_JMP                 start=v[0x0F3], values=[4], target=0x22F5
22F2  96 00 B2                               LOADSTRING                    dst=v[0x000], values=[2]
22F5  9A F3 B3 00 23                         STRCMP_NE_JMP                 start=v[0x0F3], values=[3], target=0x2300
22FA  96 00 B2                               LOADSTRING                    dst=v[0x000], values=[2]
22FD  96 F3 B4                               LOADSTRING                    dst=v[0x0F3], values=[4]
2300  9A F3 B2 08 23                         STRCMP_NE_JMP                 start=v[0x0F3], values=[2], target=0x2308
2305  96 00 B1                               LOADSTRING                    dst=v[0x000], values=[1]
2308  9A F3 B1 13 23                         STRCMP_NE_JMP                 start=v[0x0F3], values=[1], target=0x2313
230D  96 00 B1                               LOADSTRING                    dst=v[0x000], values=[1]
2310  96 F3 B2                               LOADSTRING                    dst=v[0x0F3], values=[2]
2313  26 63 6C 23 62 23 63 23 61 6F 75 74 00 VIDEO_NAME                    name="cl{v001}{v002}{v000}out"
2320  15 3B 29                               JMP                           target=0x293B
2323  9A 92 32 B0 79 23                      STRCMP_NE_JMP                 start=v[0x092], values=[2, 0], target=0x2379
2329  96 01 E8                               LOADSTRING                    dst=v[0x001], values=[56]
232C  96 02 F4                               LOADSTRING                    dst=v[0x002], values=[68]
232F  9A EA E1 37 23                         STRCMP_NE_JMP                 start=v[0x0EA], values=[49], target=0x2337
2334  15 1A 29                               JMP                           target=0x291A
2337  9A EA B5 42 23                         STRCMP_NE_JMP                 start=v[0x0EA], values=[5], target=0x2342
233C  96 EA E1                               LOADSTRING                    dst=v[0x0EA], values=[49]
233F  15 1A 29                               JMP                           target=0x291A
2342  9A EA B4 4A 23                         STRCMP_NE_JMP                 start=v[0x0EA], values=[4], target=0x234A
2347  96 00 B2                               LOADSTRING                    dst=v[0x000], values=[2]
234A  9A EA B3 55 23                         STRCMP_NE_JMP                 start=v[0x0EA], values=[3], target=0x2355
234F  96 EA B4                               LOADSTRING                    dst=v[0x0EA], values=[4]
2352  96 00 B2                               LOADSTRING                    dst=v[0x000], values=[2]
2355  9A EA B2 5D 23                         STRCMP_NE_JMP                 start=v[0x0EA], values=[2], target=0x235D
235A  96 00 B1                               LOADSTRING                    dst=v[0x000], values=[1]
235D  9A EA B1 68 23                         STRCMP_NE_JMP                 start=v[0x0EA], values=[1], target=0x2368
2362  96 00 B1                               LOADSTRING                    dst=v[0x000], values=[1]
2365  96 EA B2                               LOADSTRING                    dst=v[0x0EA], values=[2]
2368  05                                     FIRSTFRAME_NEXT_VIDEO
2369  26 63 6C 23 62 23 63 23 61 6F 75 74 00 VIDEO_NAME                    name="cl{v001}{v002}{v000}out"
2376  15 3B 29                               JMP                           target=0x293B
2379  9A 92 32 B1 CF 23                      STRCMP_NE_JMP                 start=v[0x092], values=[2, 1], target=0x23CF
237F  96 01 E2                               LOADSTRING                    dst=v[0x001], values=[50]
2382  96 02 E4                               LOADSTRING                    dst=v[0x002], values=[52]
2385  9A E9 E1 8D 23                         STRCMP_NE_JMP                 start=v[0x0E9], values=[49], target=0x238D
238A  15 1A 29                               JMP                           target=0x291A
238D  9A E9 B5 98 23                         STRCMP_NE_JMP                 start=v[0x0E9], values=[5], target=0x2398
2392  96 E9 E1                               LOADSTRING                    dst=v[0x0E9], values=[49]
2395  15 1A 29                               JMP                           target=0x291A
2398  9A E9 B4 A0 23                         STRCMP_NE_JMP                 start=v[0x0E9], values=[4], target=0x23A0
239D  96 00 B2                               LOADSTRING                    dst=v[0x000], values=[2]
23A0  9A E9 B3 AB 23                         STRCMP_NE_JMP                 start=v[0x0E9], values=[3], target=0x23AB
23A5  96 00 B2                               LOADSTRING                    dst=v[0x000], values=[2]
23A8  96 E9 B4                               LOADSTRING                    dst=v[0x0E9], values=[4]
23AB  9A E9 B2 B3 23                         STRCMP_NE_JMP                 start=v[0x0E9], values=[2], target=0x23B3
23B0  96 00 B1                               LOADSTRING                    dst=v[0x000], values=[1]
23B3  9A E9 B1 BE 23                         STRCMP_NE_JMP                 start=v[0x0E9], values=[1], target=0x23BE
23B8  96 00 B1                               LOADSTRING                    dst=v[0x000], values=[1]
23BB  96 E9 B2                               LOADSTRING                    dst=v[0x0E9], values=[2]
23BE  05                                     FIRSTFRAME_NEXT_VIDEO
23BF  26 63 6C 23 62 23 63 23 61 6F 75 74 00 VIDEO_NAME                    name="cl{v001}{v002}{v000}out"
23CC  15 3B 29                               JMP                           target=0x293B
23CF  9A 92 31 B9 24 24                      STRCMP_NE_JMP                 start=v[0x092], values=[1, 9], target=0x2424
23D5  96 01 EC                               LOADSTRING                    dst=v[0x001], values=[60]
23D8  96 02 E1                               LOADSTRING                    dst=v[0x002], values=[49]
23DB  9A EB E1 E3 23                         STRCMP_NE_JMP                 start=v[0x0EB], values=[49], target=0x23E3
23E0  15 1A 29                               JMP                           target=0x291A
23E3  9A EB B5 EE 23                         STRCMP_NE_JMP                 start=v[0x0EB], values=[5], target=0x23EE
23E8  96 EB E1                               LOADSTRING                    dst=v[0x0EB], values=[49]
23EB  15 1A 29                               JMP                           target=0x291A
23EE  9A EB B4 F6 23                         STRCMP_NE_JMP                 start=v[0x0EB], values=[4], target=0x23F6
23F3  96 00 B2                               LOADSTRING                    dst=v[0x000], values=[2]
23F6  9A EB B3 01 24                         STRCMP_NE_JMP                 start=v[0x0EB], values=[3], target=0x2401
23FB  96 00 B2                               LOADSTRING                    dst=v[0x000], values=[2]
23FE  96 EB B4                               LOADSTRING                    dst=v[0x0EB], values=[4]
2401  9A EB B2 09 24                         STRCMP_NE_JMP                 start=v[0x0EB], values=[2], target=0x2409
2406  96 00 B1                               LOADSTRING                    dst=v[0x000], values=[1]
2409  9A EB B1 14 24                         STRCMP_NE_JMP                 start=v[0x0EB], values=[1], target=0x2414
240E  96 00 B1                               LOADSTRING                    dst=v[0x000], values=[1]
2411  96 EB B2                               LOADSTRING                    dst=v[0x0EB], values=[2]
2414  26 63 6C 23 62 23 63 23 61 6F 75 74 00 VIDEO_NAME                    name="cl{v001}{v002}{v000}out"
2421  15 3B 29                               JMP                           target=0x293B
2424  9A 92 31 B1 79 24                      STRCMP_NE_JMP                 start=v[0x092], values=[1, 1], target=0x2479
242A  96 01 E8                               LOADSTRING                    dst=v[0x001], values=[56]
242D  16 0B 01 B1                            LOADSTRING                    dst=v[0x10B], values=[1]
2431  9A F2 E1 39 24                         STRCMP_NE_JMP                 start=v[0x0F2], values=[49], target=0x2439
2436  15 1A 29                               JMP                           target=0x291A
2439  9A F2 B5 44 24                         STRCMP_NE_JMP                 start=v[0x0F2], values=[5], target=0x2444
243E  96 F2 E1                               LOADSTRING                    dst=v[0x0F2], values=[49]
2441  15 1A 29                               JMP                           target=0x291A
2444  9A F2 B4 4C 24                         STRCMP_NE_JMP                 start=v[0x0F2], values=[4], target=0x244C
2449  96 00 B2                               LOADSTRING                    dst=v[0x000], values=[2]
244C  9A F2 B3 57 24                         STRCMP_NE_JMP                 start=v[0x0F2], values=[3], target=0x2457
2451  96 00 B2                               LOADSTRING                    dst=v[0x000], values=[2]
2454  96 F2 B4                               LOADSTRING                    dst=v[0x0F2], values=[4]
2457  9A F2 B2 5F 24                         STRCMP_NE_JMP                 start=v[0x0F2], values=[2], target=0x245F
245C  96 00 B1                               LOADSTRING                    dst=v[0x000], values=[1]
245F  9A F2 B1 6A 24                         STRCMP_NE_JMP                 start=v[0x0F2], values=[1], target=0x246A
2464  96 00 B1                               LOADSTRING                    dst=v[0x000], values=[1]
2467  96 F2 B2                               LOADSTRING                    dst=v[0x0F2], values=[2]
246A  05                                     FIRSTFRAME_NEXT_VIDEO
246B  26 63 6C 23 62 23 61 6F 75 74 00       VIDEO_NAME                    name="cl{v001}{v000}out"
2476  15 3B 29                               JMP                           target=0x293B
2479  9A 92 30 B4 CE 24                      STRCMP_NE_JMP                 start=v[0x092], values=[0, 4], target=0x24CE
247F  96 01 EB                               LOADSTRING                    dst=v[0x001], values=[59]
2482  16 0B 01 B1                            LOADSTRING                    dst=v[0x10B], values=[1]
2486  9A F9 E1 8E 24                         STRCMP_NE_JMP                 start=v[0x0F9], values=[49], target=0x248E
248B  15 1A 29                               JMP                           target=0x291A
248E  9A F9 B5 99 24                         STRCMP_NE_JMP                 start=v[0x0F9], values=[5], target=0x2499
2493  96 F9 E1                               LOADSTRING                    dst=v[0x0F9], values=[49]
2496  15 1A 29                               JMP                           target=0x291A
2499  9A F9 B4 A1 24                         STRCMP_NE_JMP                 start=v[0x0F9], values=[4], target=0x24A1
249E  96 00 B2                               LOADSTRING                    dst=v[0x000], values=[2]
24A1  9A F9 B3 AC 24                         STRCMP_NE_JMP                 start=v[0x0F9], values=[3], target=0x24AC
24A6  96 00 B2                               LOADSTRING                    dst=v[0x000], values=[2]
24A9  96 F9 B4                               LOADSTRING                    dst=v[0x0F9], values=[4]
24AC  9A F9 B2 B4 24                         STRCMP_NE_JMP                 start=v[0x0F9], values=[2], target=0x24B4
24B1  96 00 B1                               LOADSTRING                    dst=v[0x000], values=[1]
24B4  9A F9 B1 BF 24                         STRCMP_NE_JMP                 start=v[0x0F9], values=[1], target=0x24BF
24B9  96 00 B1                               LOADSTRING                    dst=v[0x000], values=[1]
24BC  96 F9 B2                               LOADSTRING                    dst=v[0x0F9], values=[2]
24BF  05                                     FIRSTFRAME_NEXT_VIDEO
24C0  26 63 6C 23 62 23 61 6F 75 74 00       VIDEO_NAME                    name="cl{v001}{v000}out"
24CB  15 3B 29                               JMP                           target=0x293B
24CE  9A 92 31 B2 24 25                      STRCMP_NE_JMP                 start=v[0x092], values=[1, 2], target=0x2524
24D4  96 01 E5                               LOADSTRING                    dst=v[0x001], values=[53]
24D7  96 02 EB                               LOADSTRING                    dst=v[0x002], values=[59]
24DA  9A F1 E1 E2 24                         STRCMP_NE_JMP                 start=v[0x0F1], values=[49], target=0x24E2
24DF  15 1A 29                               JMP                           target=0x291A
24E2  9A F1 B5 ED 24                         STRCMP_NE_JMP                 start=v[0x0F1], values=[5], target=0x24ED
24E7  96 F1 E1                               LOADSTRING                    dst=v[0x0F1], values=[49]
24EA  15 1A 29                               JMP                           target=0x291A
24ED  9A F1 B4 F5 24                         STRCMP_NE_JMP                 start=v[0x0F1], values=[4], target=0x24F5
24F2  96 00 B2                               LOADSTRING                    dst=v[0x000], values=[2]
24F5  9A F1 B3 00 25                         STRCMP_NE_JMP                 start=v[0x0F1], values=[3], target=0x2500
24FA  96 00 B2                               LOADSTRING                    dst=v[0x000], values=[2]
24FD  96 F1 B4                               LOADSTRING                    dst=v[0x0F1], values=[4]
2500  9A F1 B2 08 25                         STRCMP_NE_JMP                 start=v[0x0F1], values=[2], target=0x2508
2505  96 00 B1                               LOADSTRING                    dst=v[0x000], values=[1]
2508  9A F1 B1 13 25                         STRCMP_NE_JMP                 start=v[0x0F1], values=[1], target=0x2513
250D  96 00 B1                               LOADSTRING                    dst=v[0x000], values=[1]
2510  96 F1 B2                               LOADSTRING                    dst=v[0x0F1], values=[2]
2513  05                                     FIRSTFRAME_NEXT_VIDEO
2514  26 63 6C 23 62 23 63 23 61 6F 75 74 00 VIDEO_NAME                    name="cl{v001}{v002}{v000}out"
2521  15 3B 29                               JMP                           target=0x293B
2524  9A 92 30 B8 7A 25                      STRCMP_NE_JMP                 start=v[0x092], values=[0, 8], target=0x257A
252A  96 01 EC                               LOADSTRING                    dst=v[0x001], values=[60]
252D  96 02 E9                               LOADSTRING                    dst=v[0x002], values=[57]
2530  9A F5 E1 38 25                         STRCMP_NE_JMP                 start=v[0x0F5], values=[49], target=0x2538
2535  15 1A 29                               JMP                           target=0x291A
2538  9A F5 B5 43 25                         STRCMP_NE_JMP                 start=v[0x0F5], values=[5], target=0x2543
253D  96 F5 E1                               LOADSTRING                    dst=v[0x0F5], values=[49]
2540  15 1A 29                               JMP                           target=0x291A
2543  9A F5 B4 4B 25                         STRCMP_NE_JMP                 start=v[0x0F5], values=[4], target=0x254B
2548  96 00 B2                               LOADSTRING                    dst=v[0x000], values=[2]
254B  9A F5 B3 56 25                         STRCMP_NE_JMP                 start=v[0x0F5], values=[3], target=0x2556
2550  96 00 B2                               LOADSTRING                    dst=v[0x000], values=[2]
2553  96 F5 B4                               LOADSTRING                    dst=v[0x0F5], values=[4]
2556  9A F5 B2 5E 25                         STRCMP_NE_JMP                 start=v[0x0F5], values=[2], target=0x255E
255B  96 00 B1                               LOADSTRING                    dst=v[0x000], values=[1]
255E  9A F5 B1 69 25                         STRCMP_NE_JMP                 start=v[0x0F5], values=[1], target=0x2569
2563  96 00 B1                               LOADSTRING                    dst=v[0x000], values=[1]
2566  96 F5 B2                               LOADSTRING                    dst=v[0x0F5], values=[2]
2569  05                                     FIRSTFRAME_NEXT_VIDEO
256A  26 63 6C 23 62 23 63 23 61 6F 75 74 00 VIDEO_NAME                    name="cl{v001}{v002}{v000}out"
2577  15 3B 29                               JMP                           target=0x293B
257A  9A 92 30 B9 D0 25                      STRCMP_NE_JMP                 start=v[0x092], values=[0, 9], target=0x25D0
2580  96 01 E3                               LOADSTRING                    dst=v[0x001], values=[51]
2583  96 02 F2                               LOADSTRING                    dst=v[0x002], values=[66]
2586  9A F4 E1 8E 25                         STRCMP_NE_JMP                 start=v[0x0F4], values=[49], target=0x258E
258B  15 1A 29                               JMP                           target=0x291A
258E  9A F4 B5 99 25                         STRCMP_NE_JMP                 start=v[0x0F4], values=[5], target=0x2599
2593  96 F4 E1                               LOADSTRING                    dst=v[0x0F4], values=[49]
2596  15 1A 29                               JMP                           target=0x291A
2599  9A F4 B4 A1 25                         STRCMP_NE_JMP                 start=v[0x0F4], values=[4], target=0x25A1
259E  96 00 B2                               LOADSTRING                    dst=v[0x000], values=[2]
25A1  9A F4 B3 AC 25                         STRCMP_NE_JMP                 start=v[0x0F4], values=[3], target=0x25AC
25A6  96 00 B2                               LOADSTRING                    dst=v[0x000], values=[2]
25A9  96 F4 B4                               LOADSTRING                    dst=v[0x0F4], values=[4]
25AC  9A F4 B2 B4 25                         STRCMP_NE_JMP                 start=v[0x0F4], values=[2], target=0x25B4
25B1  96 00 B1                               LOADSTRING                    dst=v[0x000], values=[1]
25B4  9A F4 B1 BF 25                         STRCMP_NE_JMP                 start=v[0x0F4], values=[1], target=0x25BF
25B9  96 00 B1                               LOADSTRING                    dst=v[0x000], values=[1]
25BC  96 F4 B2                               LOADSTRING                    dst=v[0x0F4], values=[2]
25BF  05                                     FIRSTFRAME_NEXT_VIDEO
25C0  26 63 6C 23 62 23 63 23 61 6F 75 74 00 VIDEO_NAME                    name="cl{v001}{v002}{v000}out"
25CD  15 3B 29                               JMP                           target=0x293B
25D0  9A 92 30 B3 26 26                      STRCMP_NE_JMP                 start=v[0x092], values=[0, 3], target=0x2626
25D6  96 01 E4                               LOADSTRING                    dst=v[0x001], values=[52]
25D9  96 02 F2                               LOADSTRING                    dst=v[0x002], values=[66]
25DC  9A FA E1 E4 25                         STRCMP_NE_JMP                 start=v[0x0FA], values=[49], target=0x25E4
25E1  15 1A 29                               JMP                           target=0x291A
25E4  9A FA B5 EF 25                         STRCMP_NE_JMP                 start=v[0x0FA], values=[5], target=0x25EF
25E9  96 FA E1                               LOADSTRING                    dst=v[0x0FA], values=[49]
25EC  15 1A 29                               JMP                           target=0x291A
25EF  9A FA B4 F7 25                         STRCMP_NE_JMP                 start=v[0x0FA], values=[4], target=0x25F7
25F4  96 00 B2                               LOADSTRING                    dst=v[0x000], values=[2]
25F7  9A FA B3 02 26                         STRCMP_NE_JMP                 start=v[0x0FA], values=[3], target=0x2602
25FC  96 FA B4                               LOADSTRING                    dst=v[0x0FA], values=[4]
25FF  96 00 B2                               LOADSTRING                    dst=v[0x000], values=[2]
2602  9A FA B2 0A 26                         STRCMP_NE_JMP                 start=v[0x0FA], values=[2], target=0x260A
2607  96 00 B1                               LOADSTRING                    dst=v[0x000], values=[1]
260A  9A FA B1 15 26                         STRCMP_NE_JMP                 start=v[0x0FA], values=[1], target=0x2615
260F  96 00 B1                               LOADSTRING                    dst=v[0x000], values=[1]
2612  96 FA B2                               LOADSTRING                    dst=v[0x0FA], values=[2]
2615  05                                     FIRSTFRAME_NEXT_VIDEO
2616  26 63 6C 23 62 23 63 23 61 6F 75 74 00 VIDEO_NAME                    name="cl{v001}{v002}{v000}out"
2623  15 3B 29                               JMP                           target=0x293B
2626  9A 92 31 B8 7B 26                      STRCMP_NE_JMP                 start=v[0x092], values=[1, 8], target=0x267B
262C  96 01 E2                               LOADSTRING                    dst=v[0x001], values=[50]
262F  16 0B 01 B1                            LOADSTRING                    dst=v[0x10B], values=[1]
2633  9A EC E1 3B 26                         STRCMP_NE_JMP                 start=v[0x0EC], values=[49], target=0x263B
2638  15 1A 29                               JMP                           target=0x291A
263B  9A EC B5 46 26                         STRCMP_NE_JMP                 start=v[0x0EC], values=[5], target=0x2646
2640  96 EC E1                               LOADSTRING                    dst=v[0x0EC], values=[49]
2643  15 1A 29                               JMP                           target=0x291A
2646  9A EC B4 4E 26                         STRCMP_NE_JMP                 start=v[0x0EC], values=[4], target=0x264E
264B  96 00 B2                               LOADSTRING                    dst=v[0x000], values=[2]
264E  9A EC B3 59 26                         STRCMP_NE_JMP                 start=v[0x0EC], values=[3], target=0x2659
2653  96 00 B2                               LOADSTRING                    dst=v[0x000], values=[2]
2656  96 EC B4                               LOADSTRING                    dst=v[0x0EC], values=[4]
2659  9A EC B2 61 26                         STRCMP_NE_JMP                 start=v[0x0EC], values=[2], target=0x2661
265E  96 00 B1                               LOADSTRING                    dst=v[0x000], values=[1]
2661  9A EC B1 6C 26                         STRCMP_NE_JMP                 start=v[0x0EC], values=[1], target=0x266C
2666  96 00 B1                               LOADSTRING                    dst=v[0x000], values=[1]
2669  96 EC B2                               LOADSTRING                    dst=v[0x0EC], values=[2]
266C  05                                     FIRSTFRAME_NEXT_VIDEO
266D  26 63 6C 23 62 23 61 6F 75 74 00       VIDEO_NAME                    name="cl{v001}{v000}out"
2678  15 3B 29                               JMP                           target=0x293B
267B  9A 92 31 B4 D1 26                      STRCMP_NE_JMP                 start=v[0x092], values=[1, 4], target=0x26D1
2681  96 01 E7                               LOADSTRING                    dst=v[0x001], values=[55]
2684  96 02 E1                               LOADSTRING                    dst=v[0x002], values=[49]
2687  9A F0 E1 8F 26                         STRCMP_NE_JMP                 start=v[0x0F0], values=[49], target=0x268F
268C  15 1A 29                               JMP                           target=0x291A
268F  9A F0 B5 9A 26                         STRCMP_NE_JMP                 start=v[0x0F0], values=[5], target=0x269A
2694  96 F0 E1                               LOADSTRING                    dst=v[0x0F0], values=[49]
2697  15 1A 29                               JMP                           target=0x291A
269A  9A F0 B4 A2 26                         STRCMP_NE_JMP                 start=v[0x0F0], values=[4], target=0x26A2
269F  96 00 B2                               LOADSTRING                    dst=v[0x000], values=[2]
26A2  9A F0 B3 AD 26                         STRCMP_NE_JMP                 start=v[0x0F0], values=[3], target=0x26AD
26A7  96 00 B2                               LOADSTRING                    dst=v[0x000], values=[2]
26AA  96 F0 B4                               LOADSTRING                    dst=v[0x0F0], values=[4]
26AD  9A F0 B2 B5 26                         STRCMP_NE_JMP                 start=v[0x0F0], values=[2], target=0x26B5
26B2  96 00 B1                               LOADSTRING                    dst=v[0x000], values=[1]
26B5  9A F0 B1 C0 26                         STRCMP_NE_JMP                 start=v[0x0F0], values=[1], target=0x26C0
26BA  96 00 B1                               LOADSTRING                    dst=v[0x000], values=[1]
26BD  96 F0 B2                               LOADSTRING                    dst=v[0x0F0], values=[2]
26C0  05                                     FIRSTFRAME_NEXT_VIDEO
26C1  26 63 6C 23 62 23 63 23 61 6F 75 74 00 VIDEO_NAME                    name="cl{v001}{v002}{v000}out"
26CE  15 3B 29                               JMP                           target=0x293B
26D1  9A 92 31 B7 26 27                      STRCMP_NE_JMP                 start=v[0x092], values=[1, 7], target=0x2726
26D7  96 01 F0                               LOADSTRING                    dst=v[0x001], values=[64]
26DA  16 0B 01 B1                            LOADSTRING                    dst=v[0x10B], values=[1]
26DE  9A ED E1 E6 26                         STRCMP_NE_JMP                 start=v[0x0ED], values=[49], target=0x26E6
26E3  15 1A 29                               JMP                           target=0x291A
26E6  9A ED B5 F1 26                         STRCMP_NE_JMP                 start=v[0x0ED], values=[5], target=0x26F1
26EB  96 ED E1                               LOADSTRING                    dst=v[0x0ED], values=[49]
26EE  15 1A 29                               JMP                           target=0x291A
26F1  9A ED B4 F9 26                         STRCMP_NE_JMP                 start=v[0x0ED], values=[4], target=0x26F9
26F6  96 00 B2                               LOADSTRING                    dst=v[0x000], values=[2]
26F9  9A ED B3 04 27                         STRCMP_NE_JMP                 start=v[0x0ED], values=[3], target=0x2704
26FE  96 00 B2                               LOADSTRING                    dst=v[0x000], values=[2]
2701  96 ED B4                               LOADSTRING                    dst=v[0x0ED], values=[4]
2704  9A ED B2 0C 27                         STRCMP_NE_JMP                 start=v[0x0ED], values=[2], target=0x270C
2709  96 00 B1                               LOADSTRING                    dst=v[0x000], values=[1]
270C  9A ED B1 17 27                         STRCMP_NE_JMP                 start=v[0x0ED], values=[1], target=0x2717
2711  96 00 B1                               LOADSTRING                    dst=v[0x000], values=[1]
2714  96 ED B2                               LOADSTRING                    dst=v[0x0ED], values=[2]
2717  05                                     FIRSTFRAME_NEXT_VIDEO
2718  26 63 6C 23 62 23 61 6F 75 74 00       VIDEO_NAME                    name="cl{v001}{v000}out"
2723  15 3B 29                               JMP                           target=0x293B
2726  9A 92 30 B6 B8 27                      STRCMP_NE_JMP                 start=v[0x092], values=[0, 6], target=0x27B8
272C  96 01 EE                               LOADSTRING                    dst=v[0x001], values=[62]
272F  9A F7 E1 37 27                         STRCMP_NE_JMP                 start=v[0x0F7], values=[49], target=0x2737
2734  15 1A 29                               JMP                           target=0x291A
2737  9A F7 B5 42 27                         STRCMP_NE_JMP                 start=v[0x0F7], values=[5], target=0x2742
273C  96 F7 E1                               LOADSTRING                    dst=v[0x0F7], values=[49]
273F  15 1A 29                               JMP                           target=0x291A
2742  9A F7 B4 4E 27                         STRCMP_NE_JMP                 start=v[0x0F7], values=[4], target=0x274E
2747  96 00 B2                               LOADSTRING                    dst=v[0x000], values=[2]
274A  16 0B 01 B1                            LOADSTRING                    dst=v[0x10B], values=[1]
274E  9A F7 B3 5D 27                         STRCMP_NE_JMP                 start=v[0x0F7], values=[3], target=0x275D
2753  96 00 B2                               LOADSTRING                    dst=v[0x000], values=[2]
2756  16 0B 01 B1                            LOADSTRING                    dst=v[0x10B], values=[1]
275A  96 F7 B4                               LOADSTRING                    dst=v[0x0F7], values=[4]
275D  9A F7 B2 65 27                         STRCMP_NE_JMP                 start=v[0x0F7], values=[2], target=0x2765
2762  96 00 B1                               LOADSTRING                    dst=v[0x000], values=[1]
2765  9A F7 B1 70 27                         STRCMP_NE_JMP                 start=v[0x0F7], values=[1], target=0x2770
276A  96 F7 B2                               LOADSTRING                    dst=v[0x0F7], values=[2]
276D  96 00 B1                               LOADSTRING                    dst=v[0x000], values=[1]
2770  9A 00 B1 A4 27                         STRCMP_NE_JMP                 start=v[0x000], values=[1], target=0x27A4
2775  05                                     FIRSTFRAME_NEXT_VIDEO
2776  26 63 6C 23 62 23 61 61 6F 75 74 00    VIDEO_NAME                    name="cl{v001}{v000}aout"
2782  19 E8 03                               SLEEP                         ticks=0x03E8
2785  19 2C 01                               SLEEP                         ticks=0x012C
2788  26 63 6C 23 62 23 61 61 6F 75 74 00    VIDEO_NAME                    name="cl{v001}{v000}aout"
2794  19 32 00                               SLEEP                         ticks=0x0032
2797  05                                     FIRSTFRAME_NEXT_VIDEO
2798  26 63 6C 23 62 23 61 62 6F 75 74 00    VIDEO_NAME                    name="cl{v001}{v000}bout"
27A4  A3 00 B1 B5 27                         STRCMP_EQ_JMP                 start=v[0x000], values=[1], target=0x27B5
27A9  05                                     FIRSTFRAME_NEXT_VIDEO
27AA  26 63 6C 23 62 23 61 6F 75 74 00       VIDEO_NAME                    name="cl{v001}{v000}out"
27B5  15 3B 29                               JMP                           target=0x293B
27B8  9A 92 31 B6 10 28                      STRCMP_NE_JMP                 start=v[0x092], values=[1, 6], target=0x2810
27BE  96 01 E4                               LOADSTRING                    dst=v[0x001], values=[52]
27C1  96 00 B2                               LOADSTRING                    dst=v[0x000], values=[2]
27C4  16 0B 01 B1                            LOADSTRING                    dst=v[0x10B], values=[1]
27C8  9A EE E1 D0 27                         STRCMP_NE_JMP                 start=v[0x0EE], values=[49], target=0x27D0
27CD  15 1A 29                               JMP                           target=0x291A
27D0  9A EE B5 DB 27                         STRCMP_NE_JMP                 start=v[0x0EE], values=[5], target=0x27DB
27D5  96 EE E1                               LOADSTRING                    dst=v[0x0EE], values=[49]
27D8  15 1A 29                               JMP                           target=0x291A
27DB  9A EE B4 E3 27                         STRCMP_NE_JMP                 start=v[0x0EE], values=[4], target=0x27E3
27E0  96 00 B2                               LOADSTRING                    dst=v[0x000], values=[2]
27E3  9A EE B3 EE 27                         STRCMP_NE_JMP                 start=v[0x0EE], values=[3], target=0x27EE
27E8  96 EE B4                               LOADSTRING                    dst=v[0x0EE], values=[4]
27EB  96 00 B2                               LOADSTRING                    dst=v[0x000], values=[2]
27EE  9A EE B2 F6 27                         STRCMP_NE_JMP                 start=v[0x0EE], values=[2], target=0x27F6
27F3  96 00 B1                               LOADSTRING                    dst=v[0x000], values=[1]
27F6  9A EE B1 01 28                         STRCMP_NE_JMP                 start=v[0x0EE], values=[1], target=0x2801
27FB  96 EE B2                               LOADSTRING                    dst=v[0x0EE], values=[2]
27FE  96 00 B1                               LOADSTRING                    dst=v[0x000], values=[1]
2801  05                                     FIRSTFRAME_NEXT_VIDEO
2802  26 63 6C 23 62 23 61 6F 75 74 00       VIDEO_NAME                    name="cl{v001}{v000}out"
280D  15 3B 29                               JMP                           target=0x293B
2810  9A 92 31 B5 66 28                      STRCMP_NE_JMP                 start=v[0x092], values=[1, 5], target=0x2866
2816  96 01 ED                               LOADSTRING                    dst=v[0x001], values=[61]
2819  96 02 E2                               LOADSTRING                    dst=v[0x002], values=[50]
281C  9A EF E1 24 28                         STRCMP_NE_JMP                 start=v[0x0EF], values=[49], target=0x2824
2821  15 1A 29                               JMP                           target=0x291A
2824  9A EF B5 2F 28                         STRCMP_NE_JMP                 start=v[0x0EF], values=[5], target=0x282F
2829  96 EF E1                               LOADSTRING                    dst=v[0x0EF], values=[49]
282C  15 1A 29                               JMP                           target=0x291A
282F  9A EF B4 37 28                         STRCMP_NE_JMP                 start=v[0x0EF], values=[4], target=0x2837
2834  96 00 B2                               LOADSTRING                    dst=v[0x000], values=[2]
2837  9A EF B3 42 28                         STRCMP_NE_JMP                 start=v[0x0EF], values=[3], target=0x2842
283C  96 EF B4                               LOADSTRING                    dst=v[0x0EF], values=[4]
283F  96 00 B2                               LOADSTRING                    dst=v[0x000], values=[2]
2842  9A EF B2 4A 28                         STRCMP_NE_JMP                 start=v[0x0EF], values=[2], target=0x284A
2847  96 00 B1                               LOADSTRING                    dst=v[0x000], values=[1]
284A  9A EF B1 55 28                         STRCMP_NE_JMP                 start=v[0x0EF], values=[1], target=0x2855
284F  96 EF B2                               LOADSTRING                    dst=v[0x0EF], values=[2]
2852  96 00 B1                               LOADSTRING                    dst=v[0x000], values=[1]
2855  05                                     FIRSTFRAME_NEXT_VIDEO
2856  26 63 6C 23 62 23 63 23 61 6F 75 74 00 VIDEO_NAME                    name="cl{v001}{v002}{v000}out"
2863  15 3B 29                               JMP                           target=0x293B
2866  9A 92 30 B2 BB 28                      STRCMP_NE_JMP                 start=v[0x092], values=[0, 2], target=0x28BB
286C  16 0B 01 B1                            LOADSTRING                    dst=v[0x10B], values=[1]
2870  96 01 E6                               LOADSTRING                    dst=v[0x001], values=[54]
2873  9A FB E1 7B 28                         STRCMP_NE_JMP                 start=v[0x0FB], values=[49], target=0x287B
2878  15 1A 29                               JMP                           target=0x291A
287B  9A FB B5 86 28                         STRCMP_NE_JMP                 start=v[0x0FB], values=[5], target=0x2886
2880  96 FB E1                               LOADSTRING                    dst=v[0x0FB], values=[49]
2883  15 1A 29                               JMP                           target=0x291A
2886  9A FB B4 8E 28                         STRCMP_NE_JMP                 start=v[0x0FB], values=[4], target=0x288E
288B  96 00 B2                               LOADSTRING                    dst=v[0x000], values=[2]
288E  9A FB B3 99 28                         STRCMP_NE_JMP                 start=v[0x0FB], values=[3], target=0x2899
2893  96 FB B4                               LOADSTRING                    dst=v[0x0FB], values=[4]
2896  96 00 B2                               LOADSTRING                    dst=v[0x000], values=[2]
2899  9A FB B2 A1 28                         STRCMP_NE_JMP                 start=v[0x0FB], values=[2], target=0x28A1
289E  96 00 B1                               LOADSTRING                    dst=v[0x000], values=[1]
28A1  9A FB B1 AC 28                         STRCMP_NE_JMP                 start=v[0x0FB], values=[1], target=0x28AC
28A6  96 FB B2                               LOADSTRING                    dst=v[0x0FB], values=[2]
28A9  96 00 B1                               LOADSTRING                    dst=v[0x000], values=[1]
28AC  05                                     FIRSTFRAME_NEXT_VIDEO
28AD  26 63 6C 23 62 23 61 6F 75 74 00       VIDEO_NAME                    name="cl{v001}{v000}out"
28B8  15 3B 29                               JMP                           target=0x293B
28BB  9A 92 30 B5 0F 29                      STRCMP_NE_JMP                 start=v[0x092], values=[0, 5], target=0x290F
28C1  96 01 E2                               LOADSTRING                    dst=v[0x001], values=[50]
28C4  96 02 ED                               LOADSTRING                    dst=v[0x002], values=[61]
28C7  9A F8 E1 CF 28                         STRCMP_NE_JMP                 start=v[0x0F8], values=[49], target=0x28CF
28CC  96 00 B4                               LOADSTRING                    dst=v[0x000], values=[4]
28CF  9A F8 B5 DA 28                         STRCMP_NE_JMP                 start=v[0x0F8], values=[5], target=0x28DA
28D4  96 F8 E1                               LOADSTRING                    dst=v[0x0F8], values=[49]
28D7  96 00 B4                               LOADSTRING                    dst=v[0x000], values=[4]
28DA  9A F8 B4 E2 28                         STRCMP_NE_JMP                 start=v[0x0F8], values=[4], target=0x28E2
28DF  96 00 B4                               LOADSTRING                    dst=v[0x000], values=[4]
28E2  9A F8 B3 ED 28                         STRCMP_NE_JMP                 start=v[0x0F8], values=[3], target=0x28ED
28E7  96 F8 B4                               LOADSTRING                    dst=v[0x0F8], values=[4]
28EA  96 00 B4                               LOADSTRING                    dst=v[0x000], values=[4]
28ED  9A F8 B2 F5 28                         STRCMP_NE_JMP                 start=v[0x0F8], values=[2], target=0x28F5
28F2  96 00 B3                               LOADSTRING                    dst=v[0x000], values=[3]
28F5  9A F8 B1 00 29                         STRCMP_NE_JMP                 start=v[0x0F8], values=[1], target=0x2900
28FA  96 F8 B2                               LOADSTRING                    dst=v[0x0F8], values=[2]
28FD  96 00 B3                               LOADSTRING                    dst=v[0x000], values=[3]
2900  05                                     FIRSTFRAME_NEXT_VIDEO
2901  26 63 6C 62 6D 23 61 6F 75 74 00       VIDEO_NAME                    name="clbm{v000}out"
290C  15 3B 29                               JMP                           target=0x293B
290F  09 29 48                               VIDEOREF                      ref=0x4829 (P[41]=psta.vdx)
2912  03                                     FADEIN_NEXT_VIDEO
2913  05                                     FIRSTFRAME_NEXT_VIDEO
2914  09 00 34                               VIDEOREF                      ref=0x3400 (LI[0]=l1_2.vdx)
2917  15 70 21                               JMP                           target=0x2170
291A  16 0A 01 B1                            LOADSTRING                    dst=v[0x10A], values=[1]
291E  09 62 34                               VIDEOREF                      ref=0x3462 (LI[98]=solv_in.vdx)
2921  0B                                     INPUTLOOPSTART
2922  0D 60 00 76 00 79 02 74 01 4C 29 06    HOTSPOT_RECT                  left=0x0060, top=0x0076, right=0x0279, bottom=0x0174, target=0x294C, cursor=0x06
292E  0E 32 29                               HOTSPOT_LEFT                  target=0x2932
2931  13                                     INPUTLOOPEND
2932  18 1F 2A                               CALL                          target=0x2A1F
2935  09 02 34                               VIDEOREF                      ref=0x3402 (LI[2]=l1_cb.vdx)
2938  15 88 21                               JMP                           target=0x2188
293B  0B                                     INPUTLOOPSTART
293C  0D 60 00 76 00 79 02 74 01 4C 29 06    HOTSPOT_RECT                  left=0x0060, top=0x0076, right=0x0279, bottom=0x0174, target=0x294C, cursor=0x06
2948  0E 16 2A                               HOTSPOT_LEFT                  target=0x2A16
294B  13                                     INPUTLOOPEND
294C  18 1F 2A                               CALL                          target=0x2A1F
294F  09 35 34                               VIDEOREF                      ref=0x3435 (LI[53]=l_cf.vdx)
2952  9A 92 32 B2 5B 29                      STRCMP_NE_JMP                 start=v[0x092], values=[2, 2], target=0x295B
2958  15 97 14                               JMP                           target=0x1497
295B  9A 92 30 B7 64 29                      STRCMP_NE_JMP                 start=v[0x092], values=[0, 7], target=0x2964
2961  15 E1 0B                               JMP                           target=0x0BE1
2964  9A 92 31 B9 6D 29                      STRCMP_NE_JMP                 start=v[0x092], values=[1, 9], target=0x296D
296A  15 90 30                               JMP                           target=0x3090
296D  9A 92 32 B0 76 29                      STRCMP_NE_JMP                 start=v[0x092], values=[2, 0], target=0x2976
2973  15 C5 12                               JMP                           target=0x12C5
2976  9A 92 32 B1 7F 29                      STRCMP_NE_JMP                 start=v[0x092], values=[2, 1], target=0x297F
297C  15 49 0D                               JMP                           target=0x0D49
297F  9A 92 31 B0 88 29                      STRCMP_NE_JMP                 start=v[0x092], values=[1, 0], target=0x2988
2985  15 47 2E                               JMP                           target=0x2E47
2988  9A 92 31 B1 96 29                      STRCMP_NE_JMP                 start=v[0x092], values=[1, 1], target=0x2996
298E  03                                     FADEIN_NEXT_VIDEO
298F  05                                     FIRSTFRAME_NEXT_VIDEO
2990  09 93 14                               VIDEOREF                      ref=0x1493 (FH[147]=h_7b.vdx)
2993  15 7E 12                               JMP                           target=0x127E
2996  9A 92 31 B8 9F 29                      STRCMP_NE_JMP                 start=v[0x092], values=[1, 8], target=0x299F
299C  15 77 2B                               JMP                           target=0x2B77
299F  9A 92 30 B4 A8 29                      STRCMP_NE_JMP                 start=v[0x092], values=[0, 4], target=0x29A8
29A5  15 16 0A                               JMP                           target=0x0A16
29A8  9A 92 31 B2 B1 29                      STRCMP_NE_JMP                 start=v[0x092], values=[1, 2], target=0x29B1
29AE  15 06 2D                               JMP                           target=0x2D06
29B1  9A 92 30 B8 BF 29                      STRCMP_NE_JMP                 start=v[0x092], values=[0, 8], target=0x29BF
29B7  03                                     FADEIN_NEXT_VIDEO
29B8  05                                     FIRSTFRAME_NEXT_VIDEO
29B9  09 07 34                               VIDEOREF                      ref=0x3407 (LI[7]=l2_3f.vdx)
29BC  15 81 2A                               JMP                           target=0x2A81
29BF  9A 92 30 B9 C8 29                      STRCMP_NE_JMP                 start=v[0x092], values=[0, 9], target=0x29C8
29C5  15 3F 17                               JMP                           target=0x173F
29C8  9A 92 30 B3 D1 29                      STRCMP_NE_JMP                 start=v[0x092], values=[0, 3], target=0x29D1
29CE  15 FD 08                               JMP                           target=0x08FD
29D1  9A 92 31 B4 DA 29                      STRCMP_NE_JMP                 start=v[0x092], values=[1, 4], target=0x29DA
29D7  15 8F 13                               JMP                           target=0x138F
29DA  9A 92 31 B7 E3 29                      STRCMP_NE_JMP                 start=v[0x092], values=[1, 7], target=0x29E3
29E0  15 EE 15                               JMP                           target=0x15EE
29E3  9A 92 30 B5 ED 29                      STRCMP_NE_JMP                 start=v[0x092], values=[0, 5], target=0x29ED
29E9  03                                     FADEIN_NEXT_VIDEO
29EA  15 00 17                               JMP                           target=0x1700
29ED  9A 92 30 B2 FB 29                      STRCMP_NE_JMP                 start=v[0x092], values=[0, 2], target=0x29FB
29F3  03                                     FADEIN_NEXT_VIDEO
29F4  05                                     FIRSTFRAME_NEXT_VIDEO
29F5  09 22 14                               VIDEOREF                      ref=0x1422 (FH[34]=f_1bb.vdx)
29F8  15 FD 04                               JMP                           target=0x04FD
29FB  9A 92 31 B5 04 2A                      STRCMP_NE_JMP                 start=v[0x092], values=[1, 5], target=0x2A04
2A01  15 4E 32                               JMP                           target=0x324E
2A04  9A 92 31 B6 0D 2A                      STRCMP_NE_JMP                 start=v[0x092], values=[1, 6], target=0x2A0D
2A0A  15 3F 33                               JMP                           target=0x333F
2A0D  9A 92 30 B6 16 2A                      STRCMP_NE_JMP                 start=v[0x092], values=[0, 6], target=0x2A16
2A13  15 44 2F                               JMP                           target=0x2F44
2A16  18 1F 2A                               CALL                          target=0x2A1F
2A19  09 02 34                               VIDEOREF                      ref=0x3402 (LI[2]=l1_cb.vdx)
2A1C  15 88 21                               JMP                           target=0x2188
2A1F  1C 35 34                               VIDEO_TRANSITION_REF          ref=0x3435 (LI[53]=l_cf.vdx)
2A22  18 BA 03                               CALL                          target=0x03BA
2A25  17 00                                  RET                           value=0x00
2A27  0B                                     INPUTLOOPSTART
2A28  0E 5F 2A                               HOTSPOT_LEFT                  target=0x2A5F
2A2B  0F 65 2A                               HOTSPOT_RIGHT                 target=0x2A65
2A2E  0D 36 00 56 00 3A 01 8D 01 3B 2A 00    HOTSPOT_RECT                  left=0x0036, top=0x0056, right=0x013A, bottom=0x018D, target=0x2A3B, cursor=0x00
2A3A  13                                     INPUTLOOPEND
2A3B  09 04 34                               VIDEOREF                      ref=0x3404 (LI[4]=l1_x.vdx)
2A3E  03                                     FADEIN_NEXT_VIDEO
2A3F  05                                     FIRSTFRAME_NEXT_VIDEO
2A40  09 46 14                               VIDEOREF                      ref=0x1446 (FH[70]=f_5fb.vdx)
2A43  96 8C 30 B1                            LOADSTRING                    dst=v[0x08C], values=[0, 1]
2A47  02 39 4C                               PLAYSONG                      ref=0x4C39 (XMI[57]=gu61.xmi)
2A4A  15 86 08                               JMP                           target=0x0886
2A4D  09 00 34                               VIDEOREF                      ref=0x3400 (LI[0]=l1_2.vdx)
2A50  15 81 2A                               JMP                           target=0x2A81
2A53  09 29 34                               VIDEOREF                      ref=0x3429 (LI[41]=l_1bc.vdx)
2A56  15 27 2A                               JMP                           target=0x2A27
2A59  09 2A 34                               VIDEOREF                      ref=0x342A (LI[42]=l_1fa.vdx)
2A5C  15 27 2A                               JMP                           target=0x2A27
2A5F  09 28 34                               VIDEOREF                      ref=0x3428 (LI[40]=l_1ba.vdx)
2A62  15 88 21                               JMP                           target=0x2188
2A65  09 2B 34                               VIDEOREF                      ref=0x342B (LI[43]=l_1fc.vdx)
2A68  15 88 21                               JMP                           target=0x2188
2A6B  0B                                     INPUTLOOPSTART
2A6C  0E 47 2B                               HOTSPOT_LEFT                  target=0x2B47
2A6F  11 41 2B                               HOTSPOT_CENTER_2              target=0x2B41
2A72  0F 4D 2B                               HOTSPOT_RIGHT                 target=0x2B4D
2A75  13                                     INPUTLOOPEND
2A76  0B                                     INPUTLOOPSTART
2A77  0E 53 2B                               HOTSPOT_LEFT                  target=0x2B53
2A7A  11 3A 2B                               HOTSPOT_CENTER_2              target=0x2B3A
2A7D  0F 59 2B                               HOTSPOT_RIGHT                 target=0x2B59
2A80  13                                     INPUTLOOPEND
2A81  9A 9B B0 90 2A                         STRCMP_NE_JMP                 start=v[0x09B], values=[0], target=0x2A90
2A86  96 9B B1                               LOADSTRING                    dst=v[0x09B], values=[1]
2A89  18 E9 38                               CALL                          target=0x38E9
2A8C  96 8E 37 B5                            LOADSTRING                    dst=v[0x08E], values=[7, 5]
2A90  0B                                     INPUTLOOPSTART
2A91  0E 5F 2B                               HOTSPOT_LEFT                  target=0x2B5F
2A94  0F 65 2B                               HOTSPOT_RIGHT                 target=0x2B65
2A97  A3 F5 E1 A8 2A                         STRCMP_EQ_JMP                 start=v[0x0F5], values=[49], target=0x2AA8
2A9C  0D 05 01 A3 00 93 01 E9 00 BB 2A 06    HOTSPOT_RECT                  left=0x0105, top=0x00A3, right=0x0193, bottom=0x00E9, target=0x2ABB, cursor=0x06
2AA8  1A 08 01 B1 BA 2A                      STRCMP_NE_JMP                 start=v[0x108], values=[1], target=0x2ABA
2AAE  0D 05 01 A3 00 93 01 E9 00 BB 2A 06    HOTSPOT_RECT                  left=0x0105, top=0x00A3, right=0x0193, bottom=0x00E9, target=0x2ABB, cursor=0x06
2ABA  13                                     INPUTLOOPEND
2ABB  02 27 4C                               PLAYSONG                      ref=0x4C27 (XMI[39]=gu42.xmi)
2ABE  09 07 34                               VIDEOREF                      ref=0x3407 (LI[7]=l2_3f.vdx)
2AC1  23 05 01 B0 CD 2A                      STRCMP_EQ_JMP                 start=v[0x105], values=[0], target=0x2ACD
2AC7  4B 00                                  SET_VIDEO_MODE                value=0x00
2AC9  16 09 01 B1                            LOADSTRING                    dst=v[0x109], values=[1]
2ACD  09 10 34                               VIDEOREF                      ref=0x3410 (LI[16]=li_pz_in.vdx)
2AD0  08 0E 4C                               SETBACKGROUNDSONG             ref=0x4C0E (XMI[14]=gu17.xmi)
2AD3  18 18 40                               CALL                          target=0x4018
2AD6  1A 09 01 B1 E2 2A                      STRCMP_NE_JMP                 start=v[0x109], values=[1], target=0x2AE2
2ADC  4B 01                                  SET_VIDEO_MODE                value=0x01
2ADE  16 09 01 B0                            LOADSTRING                    dst=v[0x109], values=[0]
2AE2  08 35 4C                               SETBACKGROUNDSONG             ref=0x4C35 (XMI[53]=gu56.xmi)
2AE5  09 11 34                               VIDEOREF                      ref=0x3411 (LI[17]=li_pz_ot.vdx)
2AE8  09 06 34                               VIDEOREF                      ref=0x3406 (LI[6]=l2_3b.vdx)
2AEB  A3 F5 E1 F6 2A                         STRCMP_EQ_JMP                 start=v[0x0F5], values=[49], target=0x2AF6
2AF0  15 81 2A                               JMP                           target=0x2A81
2AF3  15 0B 2B                               JMP                           target=0x2B0B
2AF6  9A C2 B0 08 2B                         STRCMP_NE_JMP                 start=v[0x0C2], values=[0], target=0x2B08
2AFB  09 2F 34                               VIDEOREF                      ref=0x342F (LI[47]=l_2bd.vdx)
2AFE  96 8E 33 B7                            LOADSTRING                    dst=v[0x08E], values=[3, 7]
2B02  96 C2 B1                               LOADSTRING                    dst=v[0x0C2], values=[1]
2B05  18 FB 38                               CALL                          target=0x38FB
2B08  15 0B 2B                               JMP                           target=0x2B0B
2B0B  0B                                     INPUTLOOPSTART
2B0C  A3 C2 B0 1D 2B                         STRCMP_EQ_JMP                 start=v[0x0C2], values=[0], target=0x2B1D
2B11  0D 5C 00 AF 00 33 01 5C 01 2D 2B 04    HOTSPOT_RECT                  left=0x005C, top=0x00AF, right=0x0133, bottom=0x015C, target=0x2B2D, cursor=0x04
2B1D  9A 8E 33 B7 26 2B                      STRCMP_NE_JMP                 start=v[0x08E], values=[3, 7], target=0x2B26
2B23  30 12 39                               HOTSPOT_BOTTOM_4              target=0x3912
2B26  0E 6B 2B                               HOTSPOT_LEFT                  target=0x2B6B
2B29  0F 71 2B                               HOTSPOT_RIGHT                 target=0x2B71
2B2C  13                                     INPUTLOOPEND
2B2D  96 8E 33 B7                            LOADSTRING                    dst=v[0x08E], values=[3, 7]
2B31  96 C2 B1                               LOADSTRING                    dst=v[0x0C2], values=[1]
2B34  18 FB 38                               CALL                          target=0x38FB
2B37  15 0B 2B                               JMP                           target=0x2B0B
2B3A  09 08 34                               VIDEOREF                      ref=0x3408 (LI[8]=l2_f.vdx)
2B3D  04                                     PALFADEOUT
2B3E  15 AB 12                               JMP                           target=0x12AB
2B41  09 05 34                               VIDEOREF                      ref=0x3405 (LI[5]=l2_1.vdx)
2B44  15 27 2A                               JMP                           target=0x2A27
2B47  09 2D 34                               VIDEOREF                      ref=0x342D (LI[45]=l_2bb.vdx)
2B4A  15 76 2A                               JMP                           target=0x2A76
2B4D  09 32 34                               VIDEOREF                      ref=0x3432 (LI[50]=l_2fc.vdx)
2B50  15 0B 2B                               JMP                           target=0x2B0B
2B53  09 2C 34                               VIDEOREF                      ref=0x342C (LI[44]=l_2ba.vdx)
2B56  15 81 2A                               JMP                           target=0x2A81
2B59  09 31 34                               VIDEOREF                      ref=0x3431 (LI[49]=l_2fb.vdx)
2B5C  15 6B 2A                               JMP                           target=0x2A6B
2B5F  09 2F 34                               VIDEOREF                      ref=0x342F (LI[47]=l_2bd.vdx)
2B62  15 0B 2B                               JMP                           target=0x2B0B
2B65  09 30 34                               VIDEOREF                      ref=0x3430 (LI[48]=l_2fa.vdx)
2B68  15 76 2A                               JMP                           target=0x2A76
2B6B  09 2E 34                               VIDEOREF                      ref=0x342E (LI[46]=l_2bc.vdx)
2B6E  15 6B 2A                               JMP                           target=0x2A6B
2B71  09 33 34                               VIDEOREF                      ref=0x3433 (LI[51]=l_2fd.vdx)
2B74  15 81 2A                               JMP                           target=0x2A81
2B77  96 8C 31 B4                            LOADSTRING                    dst=v[0x08C], values=[1, 4]
2B7B  03                                     FADEIN_NEXT_VIDEO
2B7C  05                                     FIRSTFRAME_NEXT_VIDEO
2B7D  09 08 04                               VIDEOREF                      ref=0x0408 (B[8]=b_1bf.vdx)
2B80  9A EC E1 9A 2B                         STRCMP_NE_JMP                 start=v[0x0EC], values=[49], target=0x2B9A
2B85  9A C4 B0 9A 2B                         STRCMP_NE_JMP                 start=v[0x0C4], values=[0], target=0x2B9A
2B8A  09 0C 04                               VIDEOREF                      ref=0x040C (B[12]=b_ff.vdx)
2B8D  18 25 36                               CALL                          target=0x3625
2B90  96 C4 B1                               LOADSTRING                    dst=v[0x0C4], values=[1]
2B93  96 8E 33 B5                            LOADSTRING                    dst=v[0x08E], values=[3, 5]
2B97  09 0B 04                               VIDEOREF                      ref=0x040B (B[11]=b_fb.vdx)
2B9A  0B                                     INPUTLOOPSTART
2B9B  0F F7 2B                               HOTSPOT_RIGHT                 target=0x2BF7
2B9E  0E F1 2B                               HOTSPOT_LEFT                  target=0x2BF1
2BA1  0D 5F 00 E0 00 E2 00 15 01 E1 2B 07    HOTSPOT_RECT                  left=0x005F, top=0x00E0, right=0x00E2, bottom=0x0115, target=0x2BE1, cursor=0x07
2BAD  A3 EC E1 BE 2B                         STRCMP_EQ_JMP                 start=v[0x0EC], values=[49], target=0x2BBE
2BB2  0D 4F 00 50 01 30 01 8F 01 D1 2B 06    HOTSPOT_RECT                  left=0x004F, top=0x0150, right=0x0130, bottom=0x018F, target=0x2BD1, cursor=0x06
2BBE  1A 08 01 B1 D0 2B                      STRCMP_NE_JMP                 start=v[0x108], values=[1], target=0x2BD0
2BC4  0D 4F 00 50 01 30 01 8F 01 D1 2B 06    HOTSPOT_RECT                  left=0x004F, top=0x0150, right=0x0130, bottom=0x018F, target=0x2BD1, cursor=0x06
2BD0  13                                     INPUTLOOPEND
2BD1  09 02 04                               VIDEOREF                      ref=0x0402 (B[2]=b1_2f.vdx)
2BD4  96 92 31 B8                            LOADSTRING                    dst=v[0x092], values=[1, 8]
2BD8  18 71 3F                               CALL                          target=0x3F71
2BDB  09 01 04                               VIDEOREF                      ref=0x0401 (B[1]=b1_2b.vdx)
2BDE  15 80 2B                               JMP                           target=0x2B80
2BE1  02 3B 4C                               PLAYSONG                      ref=0x4C3B (XMI[59]=gu67.xmi)
2BE4  09 03 04                               VIDEOREF                      ref=0x0403 (B[3]=b1_s.vdx)
2BE7  09 0A 04                               VIDEOREF                      ref=0x040A (B[10]=b_drain.vdx)
2BEA  96 8C 30 B7                            LOADSTRING                    dst=v[0x08C], values=[0, 7]
2BEE  15 70 21                               JMP                           target=0x2170
2BF1  09 08 04                               VIDEOREF                      ref=0x0408 (B[8]=b_1bf.vdx)
2BF4  15 FA 2B                               JMP                           target=0x2BFA
2BF7  09 06 04                               VIDEOREF                      ref=0x0406 (B[6]=b_1af.vdx)
2BFA  0B                                     INPUTLOOPSTART
2BFB  0F 14 2C                               HOTSPOT_RIGHT                 target=0x2C14
2BFE  0E 1A 2C                               HOTSPOT_LEFT                  target=0x2C1A
2C01  10 05 2C                               HOTSPOT_CENTER                target=0x2C05
2C04  13                                     INPUTLOOPEND
2C05  09 09 04                               VIDEOREF                      ref=0x0409 (B[9]=b_d.vdx)
2C08  03                                     FADEIN_NEXT_VIDEO
2C09  05                                     FIRSTFRAME_NEXT_VIDEO
2C0A  09 85 14                               VIDEOREF                      ref=0x1485 (FH[133]=h_3fa.vdx)
2C0D  96 8C 30 B2                            LOADSTRING                    dst=v[0x08C], values=[0, 2]
2C11  15 1B 11                               JMP                           target=0x111B
2C14  09 07 04                               VIDEOREF                      ref=0x0407 (B[7]=b_1bb.vdx)
2C17  15 80 2B                               JMP                           target=0x2B80
2C1A  09 05 04                               VIDEOREF                      ref=0x0405 (B[5]=b_1ab.vdx)
2C1D  15 80 2B                               JMP                           target=0x2B80
2C20  96 8C 32 B1                            LOADSTRING                    dst=v[0x08C], values=[2, 1]
2C24  02 38 4C                               PLAYSONG                      ref=0x4C38 (XMI[56]=gu60.xmi)
2C27  03                                     FADEIN_NEXT_VIDEO
2C28  05                                     FIRSTFRAME_NEXT_VIDEO
2C29  09 11 00                               VIDEOREF                      ref=0x0011 (AT[17]=atab.vdx)
2C2C  0B                                     INPUTLOOPSTART
2C2D  9A E7 E1 50 2C                         STRCMP_NE_JMP                 start=v[0x0E7], values=[49], target=0x2C50
2C32  0D FB 00 22 01 85 01 7B 01 B2 2C 07    HOTSPOT_RECT                  left=0x00FB, top=0x0122, right=0x0185, bottom=0x017B, target=0x2CB2, cursor=0x07
2C3E  1A 08 01 B0 50 2C                      STRCMP_NE_JMP                 start=v[0x108], values=[0], target=0x2C50
2C44  0D 29 01 94 00 56 01 EB 00 CC 2C 00    HOTSPOT_RECT                  left=0x0129, top=0x0094, right=0x0156, bottom=0x00EB, target=0x2CCC, cursor=0x00
2C50  A3 E7 E1 61 2C                         STRCMP_EQ_JMP                 start=v[0x0E7], values=[49], target=0x2C61
2C55  0D 06 02 88 00 66 02 58 01 7A 2C 06    HOTSPOT_RECT                  left=0x0206, top=0x0088, right=0x0266, bottom=0x0158, target=0x2C7A, cursor=0x06
2C61  1A 08 01 B1 73 2C                      STRCMP_NE_JMP                 start=v[0x108], values=[1], target=0x2C73
2C67  0D 06 02 88 00 66 02 58 01 7A 2C 06    HOTSPOT_RECT                  left=0x0206, top=0x0088, right=0x0266, bottom=0x0158, target=0x2C7A, cursor=0x06
2C73  0F E3 2C                               HOTSPOT_RIGHT                 target=0x2CE3
2C76  0E DD 2C                               HOTSPOT_LEFT                  target=0x2CDD
2C79  13                                     INPUTLOOPEND
2C7A  02 37 4C                               PLAYSONG                      ref=0x4C37 (XMI[55]=gu59.xmi)
2C7D  23 05 01 B0 89 2C                      STRCMP_EQ_JMP                 start=v[0x105], values=[0], target=0x2C89
2C83  4B 00                                  SET_VIDEO_MODE                value=0x00
2C85  16 09 01 B1                            LOADSTRING                    dst=v[0x109], values=[1]
2C89  09 03 00                               VIDEOREF                      ref=0x0003 (AT[3]=at1p.vdx)
2C8C  09 08 00                               VIDEOREF                      ref=0x0008 (AT[8]=at2p.vdx)
2C8F  09 0C 00                               VIDEOREF                      ref=0x000C (AT[12]=at3p.vdx)
2C92  18 EE 3F                               CALL                          target=0x3FEE
2C95  1A 09 01 B1 A1 2C                      STRCMP_NE_JMP                 start=v[0x109], values=[1], target=0x2CA1
2C9B  4B 01                                  SET_VIDEO_MODE                value=0x01
2C9D  16 09 01 B0                            LOADSTRING                    dst=v[0x109], values=[0]
2CA1  09 04 00                               VIDEOREF                      ref=0x0004 (AT[4]=at1pb.vdx)
2CA4  9A E7 E1 AF 2C                         STRCMP_NE_JMP                 start=v[0x0E7], values=[49], target=0x2CAF
2CA9  02 38 4C                               PLAYSONG                      ref=0x4C38 (XMI[56]=gu60.xmi)
2CAC  18 B5 37                               CALL                          target=0x37B5
2CAF  15 2C 2C                               JMP                           target=0x2C2C
2CB2  09 05 00                               VIDEOREF                      ref=0x0005 (AT[5]=at1s.vdx)
2CB5  0A                                     VIDEOFLAG5_ON
2CB6  09 0E 00                               VIDEOREF                      ref=0x000E (AT[14]=at3s.vdx)
2CB9  0A                                     VIDEOFLAG5_ON
2CBA  09 0A 00                               VIDEOREF                      ref=0x000A (AT[10]=at2s.vdx)
2CBD  0A                                     VIDEOFLAG5_ON
2CBE  09 0A 00                               VIDEOREF                      ref=0x000A (AT[10]=at2s.vdx)
2CC1  0A                                     VIDEOFLAG5_ON
2CC2  09 0F 00                               VIDEOREF                      ref=0x000F (AT[15]=at4s.vdx)
2CC5  0A                                     VIDEOFLAG5_ON
2CC6  09 06 00                               VIDEOREF                      ref=0x0006 (AT[6]=at1sb.vdx)
2CC9  15 2C 2C                               JMP                           target=0x2C2C
2CCC  09 02 00                               VIDEOREF                      ref=0x0002 (AT[2]=at1f.vdx)
2CCF  18 D6 37                               CALL                          target=0x37D6
2CD2  0B                                     INPUTLOOPSTART
2CD3  0E D7 2C                               HOTSPOT_LEFT                  target=0x2CD7
2CD6  13                                     INPUTLOOPEND
2CD7  09 07 00                               VIDEOREF                      ref=0x0007 (AT[7]=at2f.vdx)
2CDA  15 02 3C                               JMP                           target=0x3C02
2CDD  09 14 00                               VIDEOREF                      ref=0x0014 (AT[20]=atcdb.vdx)
2CE0  15 E9 2C                               JMP                           target=0x2CE9
2CE3  09 11 00                               VIDEOREF                      ref=0x0011 (AT[17]=atab.vdx)
2CE6  18 A6 37                               CALL                          target=0x37A6
2CE9  0B                                     INPUTLOOPSTART
2CEA  11 F4 2C                               HOTSPOT_CENTER_2              target=0x2CF4
2CED  0F FA 2C                               HOTSPOT_RIGHT                 target=0x2CFA
2CF0  0E 00 2D                               HOTSPOT_LEFT                  target=0x2D00
2CF3  13                                     INPUTLOOPEND
2CF4  09 1A 00                               VIDEOREF                      ref=0x001A (AT[26]=atdwarp.vdx)
2CF7  15 E9 2C                               JMP                           target=0x2CE9
2CFA  09 13 00                               VIDEOREF                      ref=0x0013 (AT[19]=atcd.vdx)
2CFD  15 2C 2C                               JMP                           target=0x2C2C
2D00  09 12 00                               VIDEOREF                      ref=0x0012 (AT[18]=atabb.vdx)
2D03  15 2C 2C                               JMP                           target=0x2C2C
2D06  96 8C 31 B3                            LOADSTRING                    dst=v[0x08C], values=[1, 3]
2D0A  05                                     FIRSTFRAME_NEXT_VIDEO
2D0B  03                                     FADEIN_NEXT_VIDEO
2D0C  09 81 28                               VIDEOREF                      ref=0x2881 (JHEK[129]=ekab.vdx)
2D0F  9A B5 B0 1E 2D                         STRCMP_NE_JMP                 start=v[0x0B5], values=[0], target=0x2D1E
2D14  96 B5 B1                               LOADSTRING                    dst=v[0x0B5], values=[1]
2D17  96 8E 35 B0                            LOADSTRING                    dst=v[0x08E], values=[5, 0]
2D1B  18 17 35                               CALL                          target=0x3517
2D1E  0B                                     INPUTLOOPSTART
2D1F  0D 32 00 50 00 96 00 C8 00 A5 2D 00    HOTSPOT_RECT                  left=0x0032, top=0x0050, right=0x0096, bottom=0x00C8, target=0x2DA5, cursor=0x00
2D2B  0F D4 2D                               HOTSPOT_RIGHT                 target=0x2DD4
2D2E  0E 33 2E                               HOTSPOT_LEFT                  target=0x2E33
2D31  A3 99 B0 42 2D                         STRCMP_EQ_JMP                 start=v[0x099], values=[0], target=0x2D42
2D36  0D FA 00 B4 00 5E 01 18 01 39 2E 03    HOTSPOT_RECT                  left=0x00FA, top=0x00B4, right=0x015E, bottom=0x0118, target=0x2E39, cursor=0x03
2D42  0D C8 00 2C 01 B7 01 8F 01 58 2D 06    HOTSPOT_RECT                  left=0x00C8, top=0x012C, right=0x01B7, bottom=0x018F, target=0x2D58, cursor=0x06
2D4E  9A 8E 35 B0 57 2D                      STRCMP_NE_JMP                 start=v[0x08E], values=[5, 0], target=0x2D57
2D54  30 12 39                               HOTSPOT_BOTTOM_4              target=0x3912
2D57  13                                     INPUTLOOPEND
2D58  09 7A 28                               VIDEOREF                      ref=0x287A (JHEK[122]=ek1p.vdx)
2D5B  0B                                     INPUTLOOPSTART
2D5C  A3 F1 E1 6D 2D                         STRCMP_EQ_JMP                 start=v[0x0F1], values=[49], target=0x2D6D
2D61  0D 00 00 50 00 7F 02 18 01 8C 2D 06    HOTSPOT_RECT                  left=0x0000, top=0x0050, right=0x027F, bottom=0x0118, target=0x2D8C, cursor=0x06
2D6D  1A 08 01 B1 7F 2D                      STRCMP_NE_JMP                 start=v[0x108], values=[1], target=0x2D7F
2D73  0D 00 00 50 00 7F 02 18 01 8C 2D 06    HOTSPOT_RECT                  left=0x0000, top=0x0050, right=0x027F, bottom=0x0118, target=0x2D8C, cursor=0x06
2D7F  0D 00 00 2C 01 7F 02 8F 01 9F 2D 00    HOTSPOT_RECT                  left=0x0000, top=0x012C, right=0x027F, bottom=0x018F, target=0x2D9F, cursor=0x00
2D8B  13                                     INPUTLOOPEND
2D8C  09 7E 28                               VIDEOREF                      ref=0x287E (JHEK[126]=ek2p.vdx)
2D8F  96 92 31 B2                            LOADSTRING                    dst=v[0x092], values=[1, 2]
2D93  18 C4 3F                               CALL                          target=0x3FC4
2D96  09 7F 28                               VIDEOREF                      ref=0x287F (JHEK[127]=ek2pb.vdx)
2D99  09 7B 28                               VIDEOREF                      ref=0x287B (JHEK[123]=ek1pb.vdx)
2D9C  15 1E 2D                               JMP                           target=0x2D1E
2D9F  09 7B 28                               VIDEOREF                      ref=0x287B (JHEK[123]=ek1pb.vdx)
2DA2  15 1E 2D                               JMP                           target=0x2D1E
2DA5  09 8B 28                               VIDEOREF                      ref=0x288B (JHEK[139]=ekmb.vdx)
2DA8  15 BD 2D                               JMP                           target=0x2DBD
2DAB  02 0A 4C                               PLAYSONG                      ref=0x4C0A (XMI[10]=gu12.xmi)
2DAE  09 79 28                               VIDEOREF                      ref=0x2879 (JHEK[121]=ek1nb.vdx)
2DB1  09 7D 28                               VIDEOREF                      ref=0x287D (JHEK[125]=ek2n.vdx)
2DB4  09 80 28                               VIDEOREF                      ref=0x2880 (JHEK[128]=ek3nb.vdx)
2DB7  09 78 28                               VIDEOREF                      ref=0x2878 (JHEK[120]=ek1n.vdx)
2DBA  15 BD 2D                               JMP                           target=0x2DBD
2DBD  0B                                     INPUTLOOPSTART
2DBE  0D C8 00 50 00 B7 01 8F 01 AB 2D 07    HOTSPOT_RECT                  left=0x00C8, top=0x0050, right=0x01B7, bottom=0x018F, target=0x2DAB, cursor=0x07
2DCA  0E CE 2D                               HOTSPOT_LEFT                  target=0x2DCE
2DCD  13                                     INPUTLOOPEND
2DCE  09 8C 28                               VIDEOREF                      ref=0x288C (JHEK[140]=ekmbb.vdx)
2DD1  15 1E 2D                               JMP                           target=0x2D1E
2DD4  09 81 28                               VIDEOREF                      ref=0x2881 (JHEK[129]=ekab.vdx)
2DD7  09 83 28                               VIDEOREF                      ref=0x2883 (JHEK[131]=ekbc.vdx)
2DDA  0B                                     INPUTLOOPSTART
2DDB  9A B4 B0 EC 2D                         STRCMP_NE_JMP                 start=v[0x0B4], values=[0], target=0x2DEC
2DE0  0D 7A 01 6B 00 1C 02 8B 01 08 2E 04    HOTSPOT_RECT                  left=0x017A, top=0x006B, right=0x021C, bottom=0x018B, target=0x2E08, cursor=0x04
2DEC  9A 8E 35 B1 F5 2D                      STRCMP_NE_JMP                 start=v[0x08E], values=[5, 1], target=0x2DF5
2DF2  30 12 39                               HOTSPOT_BOTTOM_4              target=0x3912
2DF5  0E 2A 2E                               HOTSPOT_LEFT                  target=0x2E2A
2DF8  0F 24 2E                               HOTSPOT_RIGHT                 target=0x2E24
2DFB  0D 1F 00 5C 00 F5 00 91 01 15 2E 00    HOTSPOT_RECT                  left=0x001F, top=0x005C, right=0x00F5, bottom=0x0191, target=0x2E15, cursor=0x00
2E07  13                                     INPUTLOOPEND
2E08  96 B4 B1                               LOADSTRING                    dst=v[0x0B4], values=[1]
2E0B  96 8E 35 B1                            LOADSTRING                    dst=v[0x08E], values=[5, 1]
2E0F  18 29 35                               CALL                          target=0x3529
2E12  15 DA 2D                               JMP                           target=0x2DDA
2E15  09 8A 28                               VIDEOREF                      ref=0x288A (JHEK[138]=ekex.vdx)
2E18  05                                     FIRSTFRAME_NEXT_VIDEO
2E19  03                                     FADEIN_NEXT_VIDEO
2E1A  96 8C 30 B2                            LOADSTRING                    dst=v[0x08C], values=[0, 2]
2E1E  09 7D 14                               VIDEOREF                      ref=0x147D (FH[125]=h_2fa.vdx)
2E21  15 FC 0F                               JMP                           target=0x0FFC
2E24  09 87 28                               VIDEOREF                      ref=0x2887 (JHEK[135]=ekcd.vdx)
2E27  15 1E 2D                               JMP                           target=0x2D1E
2E2A  09 84 28                               VIDEOREF                      ref=0x2884 (JHEK[132]=ekbcb.vdx)
2E2D  09 82 28                               VIDEOREF                      ref=0x2882 (JHEK[130]=ekabb.vdx)
2E30  15 1E 2D                               JMP                           target=0x2D1E
2E33  09 88 28                               VIDEOREF                      ref=0x2888 (JHEK[136]=ekcdb.vdx)
2E36  15 DA 2D                               JMP                           target=0x2DDA
2E39  09 89 28                               VIDEOREF                      ref=0x2889 (JHEK[137]=ekcl.vdx)
2E3C  03                                     FADEIN_NEXT_VIDEO
2E3D  09 04 04                               VIDEOREF                      ref=0x0404 (B[4]=b4_1.vdx)
2E40  96 8C 31 B4                            LOADSTRING                    dst=v[0x08C], values=[1, 4]
2E44  15 FA 2B                               JMP                           target=0x2BFA
2E47  96 8C 31 B6                            LOADSTRING                    dst=v[0x08C], values=[1, 6]
2E4B  02 2B 4C                               PLAYSONG                      ref=0x4C2B (XMI[43]=gu46.xmi)
2E4E  05                                     FIRSTFRAME_NEXT_VIDEO
2E4F  03                                     FADEIN_NEXT_VIDEO
2E50  09 07 08                               VIDEOREF                      ref=0x0807 (CH[7]=chab.vdx)
2E53  9A AE B0 62 2E                         STRCMP_NE_JMP                 start=v[0x0AE], values=[0], target=0x2E62
2E58  96 AE B1                               LOADSTRING                    dst=v[0x0AE], values=[1]
2E5B  96 8E 35 B7                            LOADSTRING                    dst=v[0x08E], values=[5, 7]
2E5F  18 AD 36                               CALL                          target=0x36AD
2E62  0B                                     INPUTLOOPSTART
2E63  0F A4 2E                               HOTSPOT_RIGHT                 target=0x2EA4
2E66  0E 9E 2E                               HOTSPOT_LEFT                  target=0x2E9E
2E69  A3 F3 E1 7A 2E                         STRCMP_EQ_JMP                 start=v[0x0F3], values=[49], target=0x2E7A
2E6E  0D E2 00 5F 01 8B 01 A3 01 BE 2E 06    HOTSPOT_RECT                  left=0x00E2, top=0x015F, right=0x018B, bottom=0x01A3, target=0x2EBE, cursor=0x06
2E7A  1A 08 01 B1 8C 2E                      STRCMP_NE_JMP                 start=v[0x108], values=[1], target=0x2E8C
2E80  0D E2 00 5F 01 8B 01 A3 01 BE 2E 06    HOTSPOT_RECT                  left=0x00E2, top=0x015F, right=0x018B, bottom=0x01A3, target=0x2EBE, cursor=0x06
2E8C  9A 8E 35 B7 95 2E                      STRCMP_NE_JMP                 start=v[0x08E], values=[5, 7], target=0x2E95
2E92  30 12 39                               HOTSPOT_BOTTOM_4              target=0x3912
2E95  9A F3 E1 9D 2E                         STRCMP_NE_JMP                 start=v[0x0F3], values=[49], target=0x2E9D
2E9A  10 D2 2E                               HOTSPOT_CENTER                target=0x2ED2
2E9D  13                                     INPUTLOOPEND
2E9E  09 0C 08                               VIDEOREF                      ref=0x080C (CH[12]=chcdb.vdx)
2EA1  15 AA 2E                               JMP                           target=0x2EAA
2EA4  09 07 08                               VIDEOREF                      ref=0x0807 (CH[7]=chab.vdx)
2EA7  15 AA 2E                               JMP                           target=0x2EAA
2EAA  0B                                     INPUTLOOPSTART
2EAB  0F B2 2E                               HOTSPOT_RIGHT                 target=0x2EB2
2EAE  0E B8 2E                               HOTSPOT_LEFT                  target=0x2EB8
2EB1  13                                     INPUTLOOPEND
2EB2  09 0A 08                               VIDEOREF                      ref=0x080A (CH[10]=chcd.vdx)
2EB5  15 62 2E                               JMP                           target=0x2E62
2EB8  09 08 08                               VIDEOREF                      ref=0x0808 (CH[8]=chabb.vdx)
2EBB  15 62 2E                               JMP                           target=0x2E62
2EBE  09 10 08                               VIDEOREF                      ref=0x0810 (CH[16]=chpu.vdx)
2EC1  18 6B 40                               CALL                          target=0x406B
2EC4  A3 F3 E1 CC 2E                         STRCMP_EQ_JMP                 start=v[0x0F3], values=[49], target=0x2ECC
2EC9  15 70 21                               JMP                           target=0x2170
2ECC  09 11 08                               VIDEOREF                      ref=0x0811 (CH[17]=chpub.vdx)
2ECF  15 62 2E                               JMP                           target=0x2E62
2ED2  09 09 08                               VIDEOREF                      ref=0x0809 (CH[9]=chal.vdx)
2ED5  9A AD B0 E4 2E                         STRCMP_NE_JMP                 start=v[0x0AD], values=[0], target=0x2EE4
2EDA  96 AD B1                               LOADSTRING                    dst=v[0x0AD], values=[1]
2EDD  96 8E 35 B8                            LOADSTRING                    dst=v[0x08E], values=[5, 8]
2EE1  18 99 34                               CALL                          target=0x3499
2EE4  15 E7 2E                               JMP                           target=0x2EE7
2EE7  0B                                     INPUTLOOPSTART
2EE8  9A 8E 35 B8 F1 2E                      STRCMP_NE_JMP                 start=v[0x08E], values=[5, 8], target=0x2EF1
2EEE  30 12 39                               HOTSPOT_BOTTOM_4              target=0x3912
2EF1  0E F8 2E                               HOTSPOT_LEFT                  target=0x2EF8
2EF4  0F 3A 2F                               HOTSPOT_RIGHT                 target=0x2F3A
2EF7  13                                     INPUTLOOPEND
2EF8  09 0E 08                               VIDEOREF                      ref=0x080E (CH[14]=chor.vdx)
2EFB  15 FE 2E                               JMP                           target=0x2EFE
2EFE  0B                                     INPUTLOOPSTART
2EFF  0D C8 00 50 00 B8 01 8F 01 0F 2F 04    HOTSPOT_RECT                  left=0x00C8, top=0x0050, right=0x01B8, bottom=0x018F, target=0x2F0F, cursor=0x04
2F0B  0F 34 2F                               HOTSPOT_RIGHT                 target=0x2F34
2F0E  13                                     INPUTLOOPEND
2F0F  02 2A 4C                               PLAYSONG                      ref=0x4C2A (XMI[42]=gu45.xmi)
2F12  0A                                     VIDEOFLAG5_ON
2F13  09 00 08                               VIDEOREF                      ref=0x0800 (CH[0]=ch0k.vdx)
2F16  0A                                     VIDEOFLAG5_ON
2F17  09 01 08                               VIDEOREF                      ref=0x0801 (CH[1]=ch1k.vdx)
2F1A  0A                                     VIDEOFLAG5_ON
2F1B  09 02 08                               VIDEOREF                      ref=0x0802 (CH[2]=ch1kb.vdx)
2F1E  0A                                     VIDEOFLAG5_ON
2F1F  09 01 08                               VIDEOREF                      ref=0x0801 (CH[1]=ch1k.vdx)
2F22  0A                                     VIDEOFLAG5_ON
2F23  09 02 08                               VIDEOREF                      ref=0x0802 (CH[2]=ch1kb.vdx)
2F26  0A                                     VIDEOFLAG5_ON
2F27  09 03 08                               VIDEOREF                      ref=0x0803 (CH[3]=ch2k.vdx)
2F2A  0A                                     VIDEOFLAG5_ON
2F2B  09 06 08                               VIDEOREF                      ref=0x0806 (CH[6]=ch4kb.vdx)
2F2E  02 2B 4C                               PLAYSONG                      ref=0x4C2B (XMI[43]=gu46.xmi)
2F31  15 FE 2E                               JMP                           target=0x2EFE
2F34  09 0F 08                               VIDEOREF                      ref=0x080F (CH[15]=chorb.vdx)
2F37  15 E7 2E                               JMP                           target=0x2EE7
2F3A  09 0D 08                               VIDEOREF                      ref=0x080D (CH[13]=chex.vdx)
2F3D  96 8C 31 B7                            LOADSTRING                    dst=v[0x08C], values=[1, 7]
2F41  15 90 30                               JMP                           target=0x3090
2F44  96 8C 31 B9                            LOADSTRING                    dst=v[0x08C], values=[1, 9]
2F48  03                                     FADEIN_NEXT_VIDEO
2F49  05                                     FIRSTFRAME_NEXT_VIDEO
2F4A  09 06 44                               VIDEOREF                      ref=0x4406 (N[6]=nab.vdx)
2F4D  9A F7 E1 61 2F                         STRCMP_NE_JMP                 start=v[0x0F7], values=[49], target=0x2F61
2F52  9A AF B0 61 2F                         STRCMP_NE_JMP                 start=v[0x0AF], values=[0], target=0x2F61
2F57  96 AF B1                               LOADSTRING                    dst=v[0x0AF], values=[1]
2F5A  18 8A 34                               CALL                          target=0x348A
2F5D  96 8E 35 B6                            LOADSTRING                    dst=v[0x08E], values=[5, 6]
2F61  0B                                     INPUTLOOPSTART
2F62  9A 8E 35 B6 6B 2F                      STRCMP_NE_JMP                 start=v[0x08E], values=[5, 6], target=0x2F6B
2F68  30 12 39                               HOTSPOT_BOTTOM_4              target=0x3912
2F6B  0F F0 2F                               HOTSPOT_RIGHT                 target=0x2FF0
2F6E  0E FE 2F                               HOTSPOT_LEFT                  target=0x2FFE
2F71  9A F7 E1 82 2F                         STRCMP_NE_JMP                 start=v[0x0F7], values=[49], target=0x2F82
2F76  0D 02 01 F2 00 7E 01 1E 01 1B 30 04    HOTSPOT_RECT                  left=0x0102, top=0x00F2, right=0x017E, bottom=0x011E, target=0x301B, cursor=0x04
2F82  9A F7 E1 93 2F                         STRCMP_NE_JMP                 start=v[0x0F7], values=[49], target=0x2F93
2F87  0D 6C 01 56 01 93 01 82 01 5C 30 00    HOTSPOT_RECT                  left=0x016C, top=0x0156, right=0x0193, bottom=0x0182, target=0x305C, cursor=0x00
2F93  9A B0 B0 A7 2F                         STRCMP_NE_JMP                 start=v[0x0B0], values=[0], target=0x2FA7
2F98  0D 9E 00 1D 01 F8 00 6D 01 42 30 04    HOTSPOT_RECT                  left=0x009E, top=0x011D, right=0x00F8, bottom=0x016D, target=0x3042, cursor=0x04
2FA4  15 B3 2F                               JMP                           target=0x2FB3
2FA7  0D 9E 00 1D 01 F8 00 6D 01 55 30 00    HOTSPOT_RECT                  left=0x009E, top=0x011D, right=0x00F8, bottom=0x016D, target=0x3055, cursor=0x00
2FB3  9A 8E 35 B5 BC 2F                      STRCMP_NE_JMP                 start=v[0x08E], values=[5, 5], target=0x2FBC
2FB9  30 12 39                               HOTSPOT_BOTTOM_4              target=0x3912
2FBC  A3 F7 E1 CD 2F                         STRCMP_EQ_JMP                 start=v[0x0F7], values=[49], target=0x2FCD
2FC1  0D F9 01 04 01 7D 02 8F 01 7A 30 06    HOTSPOT_RECT                  left=0x01F9, top=0x0104, right=0x027D, bottom=0x018F, target=0x307A, cursor=0x06
2FCD  1A 08 01 B1 DF 2F                      STRCMP_NE_JMP                 start=v[0x108], values=[1], target=0x2FDF
2FD3  0D F9 01 04 01 7D 02 8F 01 7A 30 06    HOTSPOT_RECT                  left=0x01F9, top=0x0104, right=0x027D, bottom=0x018F, target=0x307A, cursor=0x06
2FDF  13                                     INPUTLOOPEND
2FE0  96 8C 31 B9                            LOADSTRING                    dst=v[0x08C], values=[1, 9]
2FE4  04                                     PALFADEOUT
2FE5  03                                     FADEIN_NEXT_VIDEO
2FE6  05                                     FIRSTFRAME_NEXT_VIDEO
2FE7  09 14 44                               VIDEOREF                      ref=0x4414 (N[20]=ntoyb.vdx)
2FEA  09 14 44                               VIDEOREF                      ref=0x4414 (N[20]=ntoyb.vdx)
2FED  15 61 2F                               JMP                           target=0x2F61
2FF0  09 06 44                               VIDEOREF                      ref=0x4406 (N[6]=nab.vdx)
2FF3  0B                                     INPUTLOOPSTART
2FF4  0F 04 30                               HOTSPOT_RIGHT                 target=0x3004
2FF7  10 10 30                               HOTSPOT_CENTER                target=0x3010
2FFA  0E 0A 30                               HOTSPOT_LEFT                  target=0x300A
2FFD  13                                     INPUTLOOPEND
2FFE  09 09 44                               VIDEOREF                      ref=0x4409 (N[9]=ncdb.vdx)
3001  15 F3 2F                               JMP                           target=0x2FF3
3004  09 08 44                               VIDEOREF                      ref=0x4408 (N[8]=ncd.vdx)
3007  15 61 2F                               JMP                           target=0x2F61
300A  09 07 44                               VIDEOREF                      ref=0x4407 (N[7]=nabb.vdx)
300D  15 61 2F                               JMP                           target=0x2F61
3010  09 0E 44                               VIDEOREF                      ref=0x440E (N[14]=nex.vdx)
3013  03                                     FADEIN_NEXT_VIDEO
3014  05                                     FIRSTFRAME_NEXT_VIDEO
3015  09 90 14                               VIDEOREF                      ref=0x1490 (FH[144]=h_4fd.vdx)
3018  15 E7 11                               JMP                           target=0x11E7
301B  09 0A 44                               VIDEOREF                      ref=0x440A (N[10]=ncri.vdx)
301E  9A B1 B0 2E 30                         STRCMP_NE_JMP                 start=v[0x0B1], values=[0], target=0x302E
3023  96 B1 B1                               LOADSTRING                    dst=v[0x0B1], values=[1]
3026  18 07 36                               CALL                          target=0x3607
3029  16 0C 01 35 B4                         LOADSTRING                    dst=v[0x10C], values=[5, 4]
302E  0B                                     INPUTLOOPSTART
302F  11 3C 30                               HOTSPOT_CENTER_2              target=0x303C
3032  9A 8E 35 B4 3B 30                      STRCMP_NE_JMP                 start=v[0x08E], values=[5, 4], target=0x303B
3038  30 12 39                               HOTSPOT_BOTTOM_4              target=0x3912
303B  13                                     INPUTLOOPEND
303C  09 0B 44                               VIDEOREF                      ref=0x440B (N[11]=ncrib.vdx)
303F  15 61 2F                               JMP                           target=0x2F61
3042  9A B0 B0 52 30                         STRCMP_NE_JMP                 start=v[0x0B0], values=[0], target=0x3052
3047  96 B0 B1                               LOADSTRING                    dst=v[0x0B0], values=[1]
304A  18 16 36                               CALL                          target=0x3616
304D  16 0C 01 35 B5                         LOADSTRING                    dst=v[0x10C], values=[5, 5]
3052  15 61 2F                               JMP                           target=0x2F61
3055  09 13 44                               VIDEOREF                      ref=0x4413 (N[19]=ntoy.vdx)
3058  04                                     PALFADEOUT
3059  15 70 21                               JMP                           target=0x2170
305C  09 0F 44                               VIDEOREF                      ref=0x440F (N[15]=njac.vdx)
305F  0A                                     VIDEOFLAG5_ON
3060  09 00 44                               VIDEOREF                      ref=0x4400 (N[0]=n1po.vdx)
3063  0A                                     VIDEOFLAG5_ON
3064  09 01 44                               VIDEOREF                      ref=0x4401 (N[1]=n2po.vdx)
3067  0A                                     VIDEOFLAG5_ON
3068  09 03 44                               VIDEOREF                      ref=0x4403 (N[3]=n3po.vdx)
306B  0A                                     VIDEOFLAG5_ON
306C  09 04 44                               VIDEOREF                      ref=0x4404 (N[4]=n3pob.vdx)
306F  0A                                     VIDEOFLAG5_ON
3070  09 02 44                               VIDEOREF                      ref=0x4402 (N[2]=n2pob.vdx)
3073  0A                                     VIDEOFLAG5_ON
3074  09 10 44                               VIDEOREF                      ref=0x4410 (N[16]=njacb.vdx)
3077  15 61 2F                               JMP                           target=0x2F61
307A  09 11 44                               VIDEOREF                      ref=0x4411 (N[17]=npuz.vdx)
307D  96 92 30 B6                            LOADSTRING                    dst=v[0x092], values=[0, 6]
3081  18 A3 3E                               CALL                          target=0x3EA3
3084  09 12 44                               VIDEOREF                      ref=0x4412 (N[18]=npuzb.vdx)
3087  15 4D 2F                               JMP                           target=0x2F4D
308A  09 0C 44                               VIDEOREF                      ref=0x440C (N[12]=ndra.vdx)
308D  15 61 2F                               JMP                           target=0x2F61
3090  96 8C 31 B7                            LOADSTRING                    dst=v[0x08C], values=[1, 7]
3094  05                                     FIRSTFRAME_NEXT_VIDEO
3095  03                                     FADEIN_NEXT_VIDEO
3096  09 10 30                               VIDEOREF                      ref=0x3010 (LA[16]=la_1fa.vdx)
3099  15 C5 30                               JMP                           target=0x30C5
309C  0B                                     INPUTLOOPSTART
309D  0E 47 31                               HOTSPOT_LEFT                  target=0x3147
30A0  10 A7 30                               HOTSPOT_CENTER                target=0x30A7
30A3  0F 56 31                               HOTSPOT_RIGHT                 target=0x3156
30A6  13                                     INPUTLOOPEND
30A7  0A                                     VIDEOFLAG5_ON
30A8  9A 00 B0 B5 30                         STRCMP_NE_JMP                 start=v[0x000], values=[0], target=0x30B5
30AD  09 03 30                               VIDEOREF                      ref=0x3003 (LA[3]=la_d.vdx)
30B0  9F 00                                  INC                           var=v[0x000]
30B2  15 BA 30                               JMP                           target=0x30BA
30B5  09 04 30                               VIDEOREF                      ref=0x3004 (LA[4]=la_db.vdx)
30B8  A0 00                                  DEC                           var=v[0x000]
30BA  15 9C 30                               JMP                           target=0x309C
30BD  0B                                     INPUTLOOPSTART
30BE  0E 65 31                               HOTSPOT_LEFT                  target=0x3165
30C1  0F 6B 31                               HOTSPOT_RIGHT                 target=0x316B
30C4  13                                     INPUTLOOPEND
30C5  0B                                     INPUTLOOPSTART
30C6  0E 74 31                               HOTSPOT_LEFT                  target=0x3174
30C9  0D 96 00 AD 00 05 01 08 01 3E 31 00    HOTSPOT_RECT                  left=0x0096, top=0x00AD, right=0x0105, bottom=0x0108, target=0x313E, cursor=0x00
30D5  9A B2 B0 E6 30                         STRCMP_NE_JMP                 start=v[0x0B2], values=[0], target=0x30E6
30DA  0D CB 00 0A 01 4A 01 27 01 1A 31 04    HOTSPOT_RECT                  left=0x00CB, top=0x010A, right=0x014A, bottom=0x0127, target=0x311A, cursor=0x04
30E6  9A B3 B0 F7 30                         STRCMP_NE_JMP                 start=v[0x0B3], values=[0], target=0x30F7
30EB  0D 6D 00 28 01 C6 00 8B 01 0D 31 04    HOTSPOT_RECT                  left=0x006D, top=0x0128, right=0x00C6, bottom=0x018B, target=0x310D, cursor=0x04
30F7  9A 8E 35 B2 00 31                      STRCMP_NE_JMP                 start=v[0x08E], values=[5, 2], target=0x3100
30FD  30 12 39                               HOTSPOT_BOTTOM_4              target=0x3912
3100  9A 8E 35 B3 09 31                      STRCMP_NE_JMP                 start=v[0x08E], values=[5, 3], target=0x3109
3106  30 12 39                               HOTSPOT_BOTTOM_4              target=0x3912
3109  0F 7D 31                               HOTSPOT_RIGHT                 target=0x317D
310C  13                                     INPUTLOOPEND
310D  96 B3 B1                               LOADSTRING                    dst=v[0x0B3], values=[1]
3110  96 8E 35 B2                            LOADSTRING                    dst=v[0x08E], values=[5, 2]
3114  18 31 38                               CALL                          target=0x3831
3117  15 C5 30                               JMP                           target=0x30C5
311A  96 B2 B1                               LOADSTRING                    dst=v[0x0B2], values=[1]
311D  96 8E 35 B3                            LOADSTRING                    dst=v[0x08E], values=[5, 3]
3121  18 43 38                               CALL                          target=0x3843
3124  15 C5 30                               JMP                           target=0x30C5
3127  0B                                     INPUTLOOPSTART
3128  0E 86 31                               HOTSPOT_LEFT                  target=0x3186
312B  11 32 31                               HOTSPOT_CENTER_2              target=0x3132
312E  0F 8F 31                               HOTSPOT_RIGHT                 target=0x318F
3131  13                                     INPUTLOOPEND
3132  09 13 30                               VIDEOREF                      ref=0x3013 (LA[19]=la_1fd.vdx)
3135  09 07 30                               VIDEOREF                      ref=0x3007 (LA[7]=la1_2.vdx)
3138  09 17 30                               VIDEOREF                      ref=0x3017 (LA[23]=la_2bd.vdx)
313B  15 0B 32                               JMP                           target=0x320B
313E  09 01 30                               VIDEOREF                      ref=0x3001 (LA[1]=la_s.vdx)
3141  09 07 30                               VIDEOREF                      ref=0x3007 (LA[7]=la1_2.vdx)
3144  15 A8 31                               JMP                           target=0x31A8
3147  9A 00 B1 50 31                         STRCMP_NE_JMP                 start=v[0x000], values=[1], target=0x3150
314C  0A                                     VIDEOFLAG5_ON
314D  09 04 30                               VIDEOREF                      ref=0x3004 (LA[4]=la_db.vdx)
3150  09 0D 30                               VIDEOREF                      ref=0x300D (LA[13]=la_1bb.vdx)
3153  15 BD 30                               JMP                           target=0x30BD
3156  9A 00 B1 5F 31                         STRCMP_NE_JMP                 start=v[0x000], values=[1], target=0x315F
315B  0A                                     VIDEOFLAG5_ON
315C  09 04 30                               VIDEOREF                      ref=0x3004 (LA[4]=la_db.vdx)
315F  09 12 30                               VIDEOREF                      ref=0x3012 (LA[18]=la_1fc.vdx)
3162  15 27 31                               JMP                           target=0x3127
3165  09 0C 30                               VIDEOREF                      ref=0x300C (LA[12]=la_1ba.vdx)
3168  15 C5 30                               JMP                           target=0x30C5
316B  96 00 B0                               LOADSTRING                    dst=v[0x000], values=[0]
316E  09 11 30                               VIDEOREF                      ref=0x3011 (LA[17]=la_1fb.vdx)
3171  15 9C 30                               JMP                           target=0x309C
3174  09 01 30                               VIDEOREF                      ref=0x3001 (LA[1]=la_s.vdx)
3177  09 0F 30                               VIDEOREF                      ref=0x300F (LA[15]=la_1bd.vdx)
317A  15 27 31                               JMP                           target=0x3127
317D  09 01 30                               VIDEOREF                      ref=0x3001 (LA[1]=la_s.vdx)
3180  09 10 30                               VIDEOREF                      ref=0x3010 (LA[16]=la_1fa.vdx)
3183  15 BD 30                               JMP                           target=0x30BD
3186  96 00 B0                               LOADSTRING                    dst=v[0x000], values=[0]
3189  09 0E 30                               VIDEOREF                      ref=0x300E (LA[14]=la_1bc.vdx)
318C  15 9C 30                               JMP                           target=0x309C
318F  09 13 30                               VIDEOREF                      ref=0x3013 (LA[19]=la_1fd.vdx)
3192  15 C5 30                               JMP                           target=0x30C5
3195  0B                                     INPUTLOOPSTART
3196  0E 1E 32                               HOTSPOT_LEFT                  target=0x321E
3199  11 18 32                               HOTSPOT_CENTER_2              target=0x3218
319C  0F 24 32                               HOTSPOT_RIGHT                 target=0x3224
319F  13                                     INPUTLOOPEND
31A0  0B                                     INPUTLOOPSTART
31A1  0E 2A 32                               HOTSPOT_LEFT                  target=0x322A
31A4  0F 30 32                               HOTSPOT_RIGHT                 target=0x3230
31A7  13                                     INPUTLOOPEND
31A8  02 35 4C                               PLAYSONG                      ref=0x4C35 (XMI[53]=gu56.xmi)
31AB  0B                                     INPUTLOOPSTART
31AC  A3 EB E1 BD 31                         STRCMP_EQ_JMP                 start=v[0x0EB], values=[49], target=0x31BD
31B1  0D 97 01 93 00 EB 01 55 01 D6 31 06    HOTSPOT_RECT                  left=0x0197, top=0x0093, right=0x01EB, bottom=0x0155, target=0x31D6, cursor=0x06
31BD  1A 08 01 B1 CF 31                      STRCMP_NE_JMP                 start=v[0x108], values=[1], target=0x31CF
31C3  0D 97 01 93 00 EB 01 55 01 D6 31 06    HOTSPOT_RECT                  left=0x0197, top=0x0093, right=0x01EB, bottom=0x0155, target=0x31D6, cursor=0x06
31CF  0E 36 32                               HOTSPOT_LEFT                  target=0x3236
31D2  0F 3C 32                               HOTSPOT_RIGHT                 target=0x323C
31D5  13                                     INPUTLOOPEND
31D6  09 05 30                               VIDEOREF                      ref=0x3005 (LA[5]=la_p.vdx)
31D9  23 05 01 B0 E5 31                      STRCMP_EQ_JMP                 start=v[0x105], values=[0], target=0x31E5
31DF  4B 00                                  SET_VIDEO_MODE                value=0x00
31E1  16 09 01 B1                            LOADSTRING                    dst=v[0x109], values=[1]
31E5  18 BF 40                               CALL                          target=0x40BF
31E8  1A 09 01 B1 F4 31                      STRCMP_NE_JMP                 start=v[0x109], values=[1], target=0x31F4
31EE  4B 01                                  SET_VIDEO_MODE                value=0x01
31F0  16 09 01 B0                            LOADSTRING                    dst=v[0x109], values=[0]
31F4  09 06 30                               VIDEOREF                      ref=0x3006 (LA[6]=la_pb.vdx)
31F7  15 A8 31                               JMP                           target=0x31A8
31FA  0B                                     INPUTLOOPSTART
31FB  0D 62 00 B0 00 C3 00 66 01 0B 32 00    HOTSPOT_RECT                  left=0x0062, top=0x00B0, right=0x00C3, bottom=0x0166, target=0x320B, cursor=0x00
3207  0F 48 32                               HOTSPOT_RIGHT                 target=0x3248
320A  13                                     INPUTLOOPEND
320B  09 0A 30                               VIDEOREF                      ref=0x300A (LA[10]=la2_3.vdx)
320E  09 0B 30                               VIDEOREF                      ref=0x300B (LA[11]=la3_x.vdx)
3211  96 8C 30 B7                            LOADSTRING                    dst=v[0x08C], values=[0, 7]
3215  15 70 21                               JMP                           target=0x2170
3218  09 09 30                               VIDEOREF                      ref=0x3009 (LA[9]=la2_1.vdx)
321B  15 9C 30                               JMP                           target=0x309C
321E  09 15 30                               VIDEOREF                      ref=0x3015 (LA[21]=la_2bb.vdx)
3221  15 A0 31                               JMP                           target=0x31A0
3224  09 1A 30                               VIDEOREF                      ref=0x301A (LA[26]=la_2fc.vdx)
3227  15 FA 31                               JMP                           target=0x31FA
322A  09 14 30                               VIDEOREF                      ref=0x3014 (LA[20]=la_2ba.vdx)
322D  15 A8 31                               JMP                           target=0x31A8
3230  09 19 30                               VIDEOREF                      ref=0x3019 (LA[25]=la_2fb.vdx)
3233  15 95 31                               JMP                           target=0x3195
3236  09 17 30                               VIDEOREF                      ref=0x3017 (LA[23]=la_2bd.vdx)
3239  15 FA 31                               JMP                           target=0x31FA
323C  09 18 30                               VIDEOREF                      ref=0x3018 (LA[24]=la_2fa.vdx)
323F  15 A0 31                               JMP                           target=0x31A0
3242  09 16 30                               VIDEOREF                      ref=0x3016 (LA[22]=la_2bc.vdx)
3245  15 95 31                               JMP                           target=0x3195
3248  09 1B 30                               VIDEOREF                      ref=0x301B (LA[27]=la_2fd.vdx)
324B  15 A8 31                               JMP                           target=0x31A8
324E  96 8C 31 B2                            LOADSTRING                    dst=v[0x08C], values=[1, 2]
3252  03                                     FADEIN_NEXT_VIDEO
3253  05                                     FIRSTFRAME_NEXT_VIDEO
3254  09 03 38                               VIDEOREF                      ref=0x3803 (MB[3]=mbab.vdx)
3257  9A AB B0 66 32                         STRCMP_NE_JMP                 start=v[0x0AB], values=[0], target=0x3266
325C  09 3D 38                               VIDEOREF                      ref=0x383D (MB[61]=mb_warp.vdx)
325F  96 AB B1                               LOADSTRING                    dst=v[0x0AB], values=[1]
3262  96 8E 39 B9                            LOADSTRING                    dst=v[0x08E], values=[9, 9]
3266  9A EF E1 73 32                         STRCMP_NE_JMP                 start=v[0x0EF], values=[49], target=0x3273
326B  9A AC B0 73 32                         STRCMP_NE_JMP                 start=v[0x0AC], values=[0], target=0x3273
3270  15 23 33                               JMP                           target=0x3323
3273  0B                                     INPUTLOOPSTART
3274  0E C4 32                               HOTSPOT_LEFT                  target=0x32C4
3277  0F CA 32                               HOTSPOT_RIGHT                 target=0x32CA
327A  9A FA E1 90 32                         STRCMP_NE_JMP                 start=v[0x0FA], values=[49], target=0x3290
327F  A3 EF E1 90 32                         STRCMP_EQ_JMP                 start=v[0x0EF], values=[49], target=0x3290
3284  0D B6 00 11 01 36 01 2B 01 D0 32 06    HOTSPOT_RECT                  left=0x00B6, top=0x0111, right=0x0136, bottom=0x012B, target=0x32D0, cursor=0x06
3290  1A 08 01 B1 A2 32                      STRCMP_NE_JMP                 start=v[0x108], values=[1], target=0x32A2
3296  0D B6 00 11 01 36 01 2B 01 D0 32 06    HOTSPOT_RECT                  left=0x00B6, top=0x0111, right=0x0136, bottom=0x012B, target=0x32D0, cursor=0x06
32A2  9A EF E1 B3 32                         STRCMP_NE_JMP                 start=v[0x0EF], values=[49], target=0x32B3
32A7  0D B6 00 11 01 36 01 2B 01 BD 32 07    HOTSPOT_RECT                  left=0x00B6, top=0x0111, right=0x0136, bottom=0x012B, target=0x32BD, cursor=0x07
32B3  9A 8E 35 B9 BC 32                      STRCMP_NE_JMP                 start=v[0x08E], values=[5, 9], target=0x32BC
32B9  30 12 39                               HOTSPOT_BOTTOM_4              target=0x3912
32BC  13                                     INPUTLOOPEND
32BD  07                                     VIDEOFLAG7_ON
32BE  09 3F 38                               VIDEOREF                      ref=0x383F (MB[63]=sexbed.vdx)
32C1  15 66 32                               JMP                           target=0x3266
32C4  09 06 38                               VIDEOREF                      ref=0x3806 (MB[6]=mbcdb.vdx)
32C7  15 FA 32                               JMP                           target=0x32FA
32CA  09 03 38                               VIDEOREF                      ref=0x3803 (MB[3]=mbab.vdx)
32CD  15 FA 32                               JMP                           target=0x32FA
32D0  02 36 4C                               PLAYSONG                      ref=0x4C36 (XMI[54]=gu58.xmi)
32D3  09 08 38                               VIDEOREF                      ref=0x3808 (MB[8]=mbpu.vdx)
32D6  23 05 01 B0 E2 32                      STRCMP_EQ_JMP                 start=v[0x105], values=[0], target=0x32E2
32DC  4B 00                                  SET_VIDEO_MODE                value=0x00
32DE  16 09 01 B1                            LOADSTRING                    dst=v[0x109], values=[1]
32E2  09 00 38                               VIDEOREF                      ref=0x3800 (MB[0]=mb1p.vdx)
32E5  18 F5 3E                               CALL                          target=0x3EF5
32E8  1A 09 01 B1 F4 32                      STRCMP_NE_JMP                 start=v[0x109], values=[1], target=0x32F4
32EE  4B 01                                  SET_VIDEO_MODE                value=0x01
32F0  16 09 01 B0                            LOADSTRING                    dst=v[0x109], values=[0]
32F4  09 09 38                               VIDEOREF                      ref=0x3809 (MB[9]=mbpub.vdx)
32F7  15 66 32                               JMP                           target=0x3266
32FA  0B                                     INPUTLOOPSTART
32FB  0E 0E 33                               HOTSPOT_LEFT                  target=0x330E
32FE  0F 14 33                               HOTSPOT_RIGHT                 target=0x3314
3301  0D 56 01 7A 00 AF 01 74 01 30 33 00    HOTSPOT_RECT                  left=0x0156, top=0x007A, right=0x01AF, bottom=0x0174, target=0x3330, cursor=0x00
330D  13                                     INPUTLOOPEND
330E  09 04 38                               VIDEOREF                      ref=0x3804 (MB[4]=mbabb.vdx)
3311  15 66 32                               JMP                           target=0x3266
3314  09 05 38                               VIDEOREF                      ref=0x3805 (MB[5]=mbcd.vdx)
3317  15 66 32                               JMP                           target=0x3266
331A  09 01 38                               VIDEOREF                      ref=0x3801 (MB[1]=mb1pb.vdx)
331D  09 09 38                               VIDEOREF                      ref=0x3809 (MB[9]=mbpub.vdx)
3320  15 66 32                               JMP                           target=0x3266
3323  96 AC B1                               LOADSTRING                    dst=v[0x0AC], values=[1]
3326  96 8E 35 B9                            LOADSTRING                    dst=v[0x08E], values=[5, 9]
332A  18 82 37                               CALL                          target=0x3782
332D  15 66 32                               JMP                           target=0x3266
3330  09 07 38                               VIDEOREF                      ref=0x3807 (MB[7]=mbex.vdx)
3333  03                                     FADEIN_NEXT_VIDEO
3334  05                                     FIRSTFRAME_NEXT_VIDEO
3335  09 7F 14                               VIDEOREF                      ref=0x147F (FH[127]=h_2fc.vdx)
3338  96 8C 30 B2                            LOADSTRING                    dst=v[0x08C], values=[0, 2]
333C  15 D3 0F                               JMP                           target=0x0FD3
333F  96 8C 31 B8                            LOADSTRING                    dst=v[0x08C], values=[1, 8]
3343  05                                     FIRSTFRAME_NEXT_VIDEO
3344  03                                     FADEIN_NEXT_VIDEO
3345  09 09 0C                               VIDEOREF                      ref=0x0C09 (D[9]=d_1fa.vdx)
3348  9A 9C B0 57 33                         STRCMP_NE_JMP                 start=v[0x09C], values=[0], target=0x3357
334D  96 9C B1                               LOADSTRING                    dst=v[0x09C], values=[1]
3350  18 06 37                               CALL                          target=0x3706
3353  96 8E 37 B4                            LOADSTRING                    dst=v[0x08E], values=[7, 4]
3357  9A 9D B0 6B 33                         STRCMP_NE_JMP                 start=v[0x09D], values=[0], target=0x336B
335C  9A EE E1 6B 33                         STRCMP_NE_JMP                 start=v[0x0EE], values=[49], target=0x336B
3361  96 9D B1                               LOADSTRING                    dst=v[0x09D], values=[1]
3364  18 24 37                               CALL                          target=0x3724
3367  96 8E 37 B3                            LOADSTRING                    dst=v[0x08E], values=[7, 3]
336B  0B                                     INPUTLOOPSTART
336C  9A 8E 37 B4 75 33                      STRCMP_NE_JMP                 start=v[0x08E], values=[7, 4], target=0x3375
3372  30 12 39                               HOTSPOT_BOTTOM_4              target=0x3912
3375  0D 80 00 B3 00 C5 00 30 01 C1 33 00    HOTSPOT_RECT                  left=0x0080, top=0x00B3, right=0x00C5, bottom=0x0130, target=0x33C1, cursor=0x00
3381  A3 EE E1 92 33                         STRCMP_EQ_JMP                 start=v[0x0EE], values=[49], target=0x3392
3386  0D D5 01 F5 00 1D 02 2A 01 C7 33 06    HOTSPOT_RECT                  left=0x01D5, top=0x00F5, right=0x021D, bottom=0x012A, target=0x33C7, cursor=0x06
3392  1A 08 01 B1 A4 33                      STRCMP_NE_JMP                 start=v[0x108], values=[1], target=0x33A4
3398  0D D5 01 F5 00 1D 02 2A 01 C7 33 06    HOTSPOT_RECT                  left=0x01D5, top=0x00F5, right=0x021D, bottom=0x012A, target=0x33C7, cursor=0x06
33A4  9A 8E 37 B3 AD 33                      STRCMP_NE_JMP                 start=v[0x08E], values=[7, 3], target=0x33AD
33AA  30 12 39                               HOTSPOT_BOTTOM_4              target=0x3912
33AD  0E DC 33                               HOTSPOT_LEFT                  target=0x33DC
33B0  0F E2 33                               HOTSPOT_RIGHT                 target=0x33E2
33B3  13                                     INPUTLOOPEND
33B4  96 9D B1                               LOADSTRING                    dst=v[0x09D], values=[1]
33B7  18 24 37                               CALL                          target=0x3724
33BA  96 8E 37 B3                            LOADSTRING                    dst=v[0x08E], values=[7, 3]
33BE  15 57 33                               JMP                           target=0x3357
33C1  09 01 0C                               VIDEOREF                      ref=0x0C01 (D[1]=d1_2.vdx)
33C4  15 0E 34                               JMP                           target=0x340E
33C7  09 02 0C                               VIDEOREF                      ref=0x0C02 (D[2]=d1_3.vdx)
33CA  15 CD 33                               JMP                           target=0x33CD
33CD  18 7A 3E                               CALL                          target=0x3E7A
33D0  09 03 0C                               VIDEOREF                      ref=0x0C03 (D[3]=d1_3b.vdx)
33D3  15 57 33                               JMP                           target=0x3357
33D6  09 03 0C                               VIDEOREF                      ref=0x0C03 (D[3]=d1_3b.vdx)
33D9  15 57 33                               JMP                           target=0x3357
33DC  09 08 0C                               VIDEOREF                      ref=0x0C08 (D[8]=d_1bc.vdx)
33DF  15 E8 33                               JMP                           target=0x33E8
33E2  09 09 0C                               VIDEOREF                      ref=0x0C09 (D[9]=d_1fa.vdx)
33E5  15 E8 33                               JMP                           target=0x33E8
33E8  0B                                     INPUTLOOPSTART
33E9  0E F3 33                               HOTSPOT_LEFT                  target=0x33F3
33EC  0F F9 33                               HOTSPOT_RIGHT                 target=0x33F9
33EF  10 FF 33                               HOTSPOT_CENTER                target=0x33FF
33F2  13                                     INPUTLOOPEND
33F3  09 07 0C                               VIDEOREF                      ref=0x0C07 (D[7]=d_1ba.vdx)
33F6  15 57 33                               JMP                           target=0x3357
33F9  09 0A 0C                               VIDEOREF                      ref=0x0C0A (D[10]=d_1fc.vdx)
33FC  15 57 33                               JMP                           target=0x3357
33FF  09 13 0C                               VIDEOREF                      ref=0x0C13 (D[19]=d_d.vdx)
3402  03                                     FADEIN_NEXT_VIDEO
3403  05                                     FIRSTFRAME_NEXT_VIDEO
3404  09 91 14                               VIDEOREF                      ref=0x1491 (FH[145]=h_5b.vdx)
3407  96 8C 30 B2                            LOADSTRING                    dst=v[0x08C], values=[0, 2]
340B  15 5A 12                               JMP                           target=0x125A
340E  0B                                     INPUTLOOPSTART
340F  0E 29 34                               HOTSPOT_LEFT                  target=0x3429
3412  0F 2F 34                               HOTSPOT_RIGHT                 target=0x342F
3415  A3 99 B0 28 34                         STRCMP_EQ_JMP                 start=v[0x099], values=[0], target=0x3428
341A  0B                                     INPUTLOOPSTART
341B  0D 39 01 A0 00 6F 01 1E 01 3B 34 00    HOTSPOT_RECT                  left=0x0139, top=0x00A0, right=0x016F, bottom=0x011E, target=0x343B, cursor=0x00
3427  13                                     INPUTLOOPEND
3428  13                                     INPUTLOOPEND
3429  09 0D 0C                               VIDEOREF                      ref=0x0C0D (D[13]=d_2bc.vdx)
342C  15 45 34                               JMP                           target=0x3445
342F  09 12 0C                               VIDEOREF                      ref=0x0C12 (D[18]=d_2fd.vdx)
3432  09 0F 0C                               VIDEOREF                      ref=0x0C0F (D[15]=d_2fa.vdx)
3435  09 10 0C                               VIDEOREF                      ref=0x0C10 (D[16]=d_2fb.vdx)
3438  15 45 34                               JMP                           target=0x3445
343B  09 1E 0C                               VIDEOREF                      ref=0x0C1E (D[30]=d_x.vdx)
343E  96 8C 31 B9                            LOADSTRING                    dst=v[0x08C], values=[1, 9]
3442  15 44 2F                               JMP                           target=0x2F44
3445  0B                                     INPUTLOOPSTART
3446  0E 59 34                               HOTSPOT_LEFT                  target=0x3459
3449  0F 65 34                               HOTSPOT_RIGHT                 target=0x3465
344C  0D 85 01 B0 00 E7 01 56 01 6B 34 00    HOTSPOT_RECT                  left=0x0185, top=0x00B0, right=0x01E7, bottom=0x0156, target=0x346B, cursor=0x00
3458  13                                     INPUTLOOPEND
3459  09 0C 0C                               VIDEOREF                      ref=0x0C0C (D[12]=d_2bb.vdx)
345C  09 0B 0C                               VIDEOREF                      ref=0x0C0B (D[11]=d_2ba.vdx)
345F  09 0E 0C                               VIDEOREF                      ref=0x0C0E (D[14]=d_2bd.vdx)
3462  15 0E 34                               JMP                           target=0x340E
3465  09 11 0C                               VIDEOREF                      ref=0x0C11 (D[17]=d_2fc.vdx)
3468  15 0E 34                               JMP                           target=0x340E
346B  09 05 0C                               VIDEOREF                      ref=0x0C05 (D[5]=d2_1.vdx)
346E  15 E8 33                               JMP                           target=0x33E8
3471  31 4B 00 EE 02                         MIDI_CONTROL                  value=0x004B, time=0x02EE
3476  22                                     COPY_BG_TO_FG
3477  49                                     PALETTE_MERGE_ONCE
3478  17 00                                  RET                           value=0x00
347A  37 00 00 50 00 7F 02 8F 01             COPY_RECT_TO_BG               left=0x0000, top=0x0050, right=0x027F, bottom=0x018F
3483  31 63 00 EE 02                         MIDI_CONTROL                  value=0x0063, time=0x02EE
3488  17 00                                  RET                           value=0x00
348A  05                                     FIRSTFRAME_NEXT_VIDEO
348B  09 06 44                               VIDEOREF                      ref=0x4406 (N[6]=nab.vdx)
348E  18 71 34                               CALL                          target=0x3471
3491  09 15 44                               VIDEOREF                      ref=0x4415 (N[21]=nx_.vdx)
3494  18 7A 34                               CALL                          target=0x347A
3497  17 00                                  RET                           value=0x00
3499  05                                     FIRSTFRAME_NEXT_VIDEO
349A  09 0E 08                               VIDEOREF                      ref=0x080E (CH[14]=chor.vdx)
349D  18 71 34                               CALL                          target=0x3471
34A0  02 2A 4C                               PLAYSONG                      ref=0x4C2A (XMI[42]=gu45.xmi)
34A3  09 05 08                               VIDEOREF                      ref=0x0805 (CH[5]=ch3_0.vdx)
34A6  18 7A 34                               CALL                          target=0x347A
34A9  17 00                                  RET                           value=0x00
; Runtime verified by trace 20260809-195435: first-floor hall event seen as
; the magician chasing Tad.  It composites h1_8 with hb_ through the common
; foreground/background helper pair at 3471/347A.
34AB  05                                     FIRSTFRAME_NEXT_VIDEO
34AC  09 5A 14                               VIDEOREF                      ref=0x145A (FH[90]=h1_8.vdx)
34AF  18 71 34                               CALL                          target=0x3471
34B2  09 6F 14                               VIDEOREF                      ref=0x146F (FH[111]=hb_.vdx)
34B5  18 7A 34                               CALL                          target=0x347A
34B8  17 00                                  RET                           value=0x00
34BA  05                                     FIRSTFRAME_NEXT_VIDEO
34BB  09 59 14                               VIDEOREF                      ref=0x1459 (FH[89]=h1_2.vdx)
34BE  18 71 34                               CALL                          target=0x3471
34C1  09 70 14                               VIDEOREF                      ref=0x1470 (FH[112]=hc_.vdx)
34C4  18 7A 34                               CALL                          target=0x347A
34C7  17 00                                  RET                           value=0x00
34C9  05                                     FIRSTFRAME_NEXT_VIDEO
34CA  09 59 14                               VIDEOREF                      ref=0x1459 (FH[89]=h1_2.vdx)
34CD  18 71 34                               CALL                          target=0x3471
34D0  02 2C 4C                               PLAYSONG                      ref=0x4C2C (XMI[44]=gu47.xmi)
34D3  09 5B 14                               VIDEOREF                      ref=0x145B (FH[91]=h2_.vdx)
34D6  18 7A 34                               CALL                          target=0x347A
34D9  17 00                                  RET                           value=0x00
; Runtime verified by trace 20260809-195435: first ghost-girl summons event.
; It composites the h1_2 hall plate with h_ghost1; the following sibling
; routines use h_ghost2 through h_ghost4 for later variants.
34DB  05                                     FIRSTFRAME_NEXT_VIDEO
34DC  09 59 14                               VIDEOREF                      ref=0x1459 (FH[89]=h1_2.vdx)
34DF  18 71 34                               CALL                          target=0x3471
34E2  09 9D 14                               VIDEOREF                      ref=0x149D (FH[157]=h_ghost1.vdx)
34E5  18 7A 34                               CALL                          target=0x347A
34E8  17 00                                  RET                           value=0x00
34EA  05                                     FIRSTFRAME_NEXT_VIDEO
34EB  09 63 14                               VIDEOREF                      ref=0x1463 (FH[99]=h4_3.vdx)
34EE  18 71 34                               CALL                          target=0x3471
34F1  09 9E 14                               VIDEOREF                      ref=0x149E (FH[158]=h_ghost2.vdx)
34F4  18 7A 34                               CALL                          target=0x347A
34F7  17 00                                  RET                           value=0x00
34F9  05                                     FIRSTFRAME_NEXT_VIDEO
34FA  09 59 14                               VIDEOREF                      ref=0x1459 (FH[89]=h1_2.vdx)
34FD  18 71 34                               CALL                          target=0x3471
3500  09 9F 14                               VIDEOREF                      ref=0x149F (FH[159]=h_ghost3.vdx)
3503  18 7A 34                               CALL                          target=0x347A
3506  17 00                                  RET                           value=0x00
3508  05                                     FIRSTFRAME_NEXT_VIDEO
3509  09 59 14                               VIDEOREF                      ref=0x1459 (FH[89]=h1_2.vdx)
350C  18 71 34                               CALL                          target=0x3471
350F  09 A0 14                               VIDEOREF                      ref=0x14A0 (FH[160]=h_ghost4.vdx)
3512  18 7A 34                               CALL                          target=0x347A
3515  17 00                                  RET                           value=0x00
3517  05                                     FIRSTFRAME_NEXT_VIDEO
3518  09 7A 28                               VIDEOREF                      ref=0x287A (JHEK[122]=ek1p.vdx)
351B  18 71 34                               CALL                          target=0x3471
351E  02 2D 4C                               PLAYSONG                      ref=0x4C2D (XMI[45]=gu48.xmi)
3521  09 7C 28                               VIDEOREF                      ref=0x287C (JHEK[124]=ek1_.vdx)
3524  18 7A 34                               CALL                          target=0x347A
3527  17 00                                  RET                           value=0x00
3529  05                                     FIRSTFRAME_NEXT_VIDEO
352A  09 87 28                               VIDEOREF                      ref=0x2887 (JHEK[135]=ekcd.vdx)
352D  18 71 34                               CALL                          target=0x3471
3530  09 8D 28                               VIDEOREF                      ref=0x288D (JHEK[141]=ekmirror.vdx)
3533  18 7A 34                               CALL                          target=0x347A
3536  17 00                                  RET                           value=0x00
3538  02 19 4C                               PLAYSONG                      ref=0x4C19 (XMI[25]=gu28.xmi)
353B  05                                     FIRSTFRAME_NEXT_VIDEO
353C  09 0E 18                               VIDEOREF                      ref=0x180E (GA[14]=gapo.vdx)
353F  18 71 34                               CALL                          target=0x3471
3542  09 02 18                               VIDEOREF                      ref=0x1802 (GA[2]=ga1_.vdx)
3545  18 7A 34                               CALL                          target=0x347A
3548  17 00                                  RET                           value=0x00
354A  05                                     FIRSTFRAME_NEXT_VIDEO
354B  09 0E 18                               VIDEOREF                      ref=0x180E (GA[14]=gapo.vdx)
354E  18 71 34                               CALL                          target=0x3471
3551  02 1B 4C                               PLAYSONG                      ref=0x4C1B (XMI[27]=gu30.xmi)
3554  09 07 18                               VIDEOREF                      ref=0x1807 (GA[7]=ga3_.vdx)
3557  18 7A 34                               CALL                          target=0x347A
355A  17 00                                  RET                           value=0x00
355C  05                                     FIRSTFRAME_NEXT_VIDEO
355D  09 0E 18                               VIDEOREF                      ref=0x180E (GA[14]=gapo.vdx)
3560  18 71 34                               CALL                          target=0x3471
3563  09 06 18                               VIDEOREF                      ref=0x1806 (GA[6]=ga3a_.vdx)
3566  18 7A 34                               CALL                          target=0x347A
3569  17 00                                  RET                           value=0x00
356B  05                                     FIRSTFRAME_NEXT_VIDEO
356C  09 04 18                               VIDEOREF                      ref=0x1804 (GA[4]=ga2pb.vdx)
356F  18 71 34                               CALL                          target=0x3471
3572  02 1A 4C                               PLAYSONG                      ref=0x4C1A (XMI[26]=gu29.xmi)
3575  09 05 18                               VIDEOREF                      ref=0x1805 (GA[5]=ga2_.vdx)
3578  18 7A 34                               CALL                          target=0x347A
357B  17 00                                  RET                           value=0x00
357D  05                                     FIRSTFRAME_NEXT_VIDEO
357E  09 03 48                               VIDEOREF                      ref=0x4803 (P[3]=pfa.vdx)
3581  18 71 34                               CALL                          target=0x3471
3584  02 31 4C                               PLAYSONG                      ref=0x4C31 (XMI[49]=gu52.xmi)
3587  09 00 48                               VIDEOREF                      ref=0x4800 (P[0]=p1_.vdx)
358A  18 7A 34                               CALL                          target=0x347A
358D  17 00                                  RET                           value=0x00
358F  05                                     FIRSTFRAME_NEXT_VIDEO
3590  09 03 48                               VIDEOREF                      ref=0x4803 (P[3]=pfa.vdx)
3593  18 71 34                               CALL                          target=0x3471
3596  09 0B 48                               VIDEOREF                      ref=0x480B (P[11]=pfire.vdx)
3599  18 7A 34                               CALL                          target=0x347A
359C  17 00                                  RET                           value=0x00
359E  05                                     FIRSTFRAME_NEXT_VIDEO
359F  09 03 48                               VIDEOREF                      ref=0x4803 (P[3]=pfa.vdx)
35A2  18 71 34                               CALL                          target=0x3471
35A5  09 28 48                               VIDEOREF                      ref=0x4828 (P[40]=psmoking.vdx)
35A8  18 7A 34                               CALL                          target=0x347A
35AB  17 00                                  RET                           value=0x00
35AD  05                                     FIRSTFRAME_NEXT_VIDEO
35AE  09 00 20                               VIDEOREF                      ref=0x2000 (HTBD[0]=ht1p.vdx)
35B1  18 71 34                               CALL                          target=0x3471
35B4  02 32 4C                               PLAYSONG                      ref=0x4C32 (XMI[50]=gu53.xmi)
35B7  09 03 20                               VIDEOREF                      ref=0x2003 (HTBD[3]=ht1_0.vdx)
35BA  18 7A 34                               CALL                          target=0x347A
35BD  17 00                                  RET                           value=0x00
35BF  05                                     FIRSTFRAME_NEXT_VIDEO
35C0  09 76 20                               VIDEOREF                      ref=0x2076 (HTBD[118]=bdch.vdx)
35C3  18 71 34                               CALL                          target=0x3471
35C6  09 71 20                               VIDEOREF                      ref=0x2071 (HTBD[113]=bd3_.vdx)
35C9  02 33 4C                               PLAYSONG                      ref=0x4C33 (XMI[51]=gu54.xmi)
35CC  18 7A 34                               CALL                          target=0x347A
35CF  17 00                                  RET                           value=0x00
35D1  05                                     FIRSTFRAME_NEXT_VIDEO
35D2  09 76 20                               VIDEOREF                      ref=0x2076 (HTBD[118]=bdch.vdx)
35D5  18 71 34                               CALL                          target=0x3471
35D8  02 30 4C                               PLAYSONG                      ref=0x4C30 (XMI[48]=gu51.xmi)
35DB  09 6E 20                               VIDEOREF                      ref=0x206E (HTBD[110]=bd1_.vdx)
35DE  18 7A 34                               CALL                          target=0x347A
35E1  17 00                                  RET                           value=0x00
35E3  05                                     FIRSTFRAME_NEXT_VIDEO
35E4  09 69 10                               VIDEOREF                      ref=0x1069 (DR[105]=dr_v.vdx)
35E7  18 71 34                               CALL                          target=0x3471
35EA  02 10 4C                               PLAYSONG                      ref=0x4C10 (XMI[16]=gu19.xmi)
35ED  09 07 10                               VIDEOREF                      ref=0x1007 (DR[7]=dr1_0.vdx)
35F0  18 7A 34                               CALL                          target=0x347A
35F3  17 00                                  RET                           value=0x00
35F5  05                                     FIRSTFRAME_NEXT_VIDEO
35F6  09 69 10                               VIDEOREF                      ref=0x1069 (DR[105]=dr_v.vdx)
35F9  18 71 34                               CALL                          target=0x3471
35FC  02 07 4C                               PLAYSONG                      ref=0x4C07 (XMI[7]=gu9.xmi)
35FF  09 0B 10                               VIDEOREF                      ref=0x100B (DR[11]=dr2_.vdx)
3602  18 7A 34                               CALL                          target=0x347A
3605  17 00                                  RET                           value=0x00
3607  05                                     FIRSTFRAME_NEXT_VIDEO
3608  09 0B 44                               VIDEOREF                      ref=0x440B (N[11]=ncrib.vdx)
360B  18 71 34                               CALL                          target=0x3471
360E  09 05 44                               VIDEOREF                      ref=0x4405 (N[5]=n5a_.vdx)
3611  18 7A 34                               CALL                          target=0x347A
3614  17 00                                  RET                           value=0x00
3616  05                                     FIRSTFRAME_NEXT_VIDEO
3617  09 0A 44                               VIDEOREF                      ref=0x440A (N[10]=ncri.vdx)
361A  18 71 34                               CALL                          target=0x3471
361D  09 0D 44                               VIDEOREF                      ref=0x440D (N[13]=nd_.vdx)
3620  18 7A 34                               CALL                          target=0x347A
3623  17 00                                  RET                           value=0x00
3625  05                                     FIRSTFRAME_NEXT_VIDEO
3626  09 0B 04                               VIDEOREF                      ref=0x040B (B[11]=b_fb.vdx)
3629  18 71 34                               CALL                          target=0x3471
362C  02 07 4C                               PLAYSONG                      ref=0x4C07 (XMI[7]=gu9.xmi)
362F  09 00 04                               VIDEOREF                      ref=0x0400 (B[0]=b1_.vdx)
3632  18 7A 34                               CALL                          target=0x347A
3635  17 00                                  RET                           value=0x00
3637  05                                     FIRSTFRAME_NEXT_VIDEO
3638  09 6C 20                               VIDEOREF                      ref=0x206C (HTBD[108]=bd1p.vdx)
363B  18 71 34                               CALL                          target=0x3471
363E  09 7B 20                               VIDEOREF                      ref=0x207B (HTBD[123]=bd_cork.vdx)
3641  18 7A 34                               CALL                          target=0x347A
3644  17 00                                  RET                           value=0x00
3646  05                                     FIRSTFRAME_NEXT_VIDEO
3647  09 75 28                               VIDEOREF                      ref=0x2875 (JHEK[117]=jhmib.vdx)
364A  18 71 34                               CALL                          target=0x3471
364D  09 6B 28                               VIDEOREF                      ref=0x286B (JHEK[107]=jha_.vdx)
3650  18 7A 34                               CALL                          target=0x347A
3653  17 00                                  RET                           value=0x00
3655  18 71 34                               CALL                          target=0x3471
3658  09 6C 28                               VIDEOREF                      ref=0x286C (JHEK[108]=jhb_.vdx)
365B  18 7A 34                               CALL                          target=0x347A
365E  17 00                                  RET                           value=0x00
3660  18 71 34                               CALL                          target=0x3471
3663  09 6F 28                               VIDEOREF                      ref=0x286F (JHEK[111]=jhc_.vdx)
3666  18 7A 34                               CALL                          target=0x347A
3669  17 00                                  RET                           value=0x00
366B  05                                     FIRSTFRAME_NEXT_VIDEO
366C  09 76 28                               VIDEOREF                      ref=0x2876 (JHEK[118]=jhpu.vdx)
366F  18 71 34                               CALL                          target=0x3471
3672  09 70 28                               VIDEOREF                      ref=0x2870 (JHEK[112]=jhd_.vdx)
3675  18 7A 34                               CALL                          target=0x347A
3678  17 00                                  RET                           value=0x00
367A  05                                     FIRSTFRAME_NEXT_VIDEO
367B  09 76 28                               VIDEOREF                      ref=0x2876 (JHEK[118]=jhpu.vdx)
367E  18 71 34                               CALL                          target=0x3471
3681  02 34 4C                               PLAYSONG                      ref=0x4C34 (XMI[52]=gu55.xmi)
3684  09 66 28                               VIDEOREF                      ref=0x2866 (JHEK[102]=jh1_0.vdx)
3687  18 7A 34                               CALL                          target=0x347A
368A  17 00                                  RET                           value=0x00
368C  05                                     FIRSTFRAME_NEXT_VIDEO
368D  09 76 28                               VIDEOREF                      ref=0x2876 (JHEK[118]=jhpu.vdx)
3690  18 71 34                               CALL                          target=0x3471
3693  02 34 4C                               PLAYSONG                      ref=0x4C34 (XMI[52]=gu55.xmi)
3696  09 68 28                               VIDEOREF                      ref=0x2868 (JHEK[104]=jh2_2.vdx)
3699  18 7A 34                               CALL                          target=0x347A
369C  17 00                                  RET                           value=0x00
369E  05                                     FIRSTFRAME_NEXT_VIDEO
369F  09 76 28                               VIDEOREF                      ref=0x2876 (JHEK[118]=jhpu.vdx)
36A2  18 71 34                               CALL                          target=0x3471
36A5  09 67 28                               VIDEOREF                      ref=0x2867 (JHEK[103]=jh2_0.vdx)
36A8  18 7A 34                               CALL                          target=0x347A
36AB  17 00                                  RET                           value=0x00
36AD  05                                     FIRSTFRAME_NEXT_VIDEO
36AE  09 07 08                               VIDEOREF                      ref=0x0807 (CH[7]=chab.vdx)
36B1  18 71 34                               CALL                          target=0x3471
36B4  02 2B 4C                               PLAYSONG                      ref=0x4C2B (XMI[43]=gu46.xmi)
36B7  09 04 08                               VIDEOREF                      ref=0x0804 (CH[4]=ch2_.vdx)
36BA  18 7A 34                               CALL                          target=0x347A
36BD  17 00                                  RET                           value=0x00
36BF  05                                     FIRSTFRAME_NEXT_VIDEO
36C0  09 25 14                               VIDEOREF                      ref=0x1425 (FH[37]=f_1fa.vdx)
36C3  18 71 34                               CALL                          target=0x3471
36C6  1A 00 01 B0 D2 36                      STRCMP_NE_JMP                 start=v[0x100], values=[0], target=0x36D2
36CC  02 01 4C                               PLAYSONG                      ref=0x4C01 (XMI[1]=agu32.xmi)
36CF  15 D5 36                               JMP                           target=0x36D5
36D2  02 1D 4C                               PLAYSONG                      ref=0x4C1D (XMI[29]=gu32.xmi)
36D5  09 00 14                               VIDEOREF                      ref=0x1400 (FH[0]=f1_.vdx)
36D8  31 63 00 EE 02                         MIDI_CONTROL                  value=0x0063, time=0x02EE
36DD  17 00                                  RET                           value=0x00
36DF  05                                     FIRSTFRAME_NEXT_VIDEO
36E0  09 24 14                               VIDEOREF                      ref=0x1424 (FH[36]=f_1bd.vdx)
36E3  18 71 34                               CALL                          target=0x3471
36E6  02 06 4C                               PLAYSONG                      ref=0x4C06 (XMI[6]=gu8.xmi)
36E9  09 09 14                               VIDEOREF                      ref=0x1409 (FH[9]=f2_.vdx)
36EC  02 39 4C                               PLAYSONG                      ref=0x4C39 (XMI[57]=gu61.xmi)
36EF  18 7A 34                               CALL                          target=0x347A
36F2  17 00                                  RET                           value=0x00
36F4  05                                     FIRSTFRAME_NEXT_VIDEO
36F5  09 05 14                               VIDEOREF                      ref=0x1405 (FH[5]=f1_pb.vdx)
36F8  18 71 34                               CALL                          target=0x3471
36FB  02 1F 4C                               PLAYSONG                      ref=0x4C1F (XMI[31]=gu34.xmi)
36FE  09 0D 14                               VIDEOREF                      ref=0x140D (FH[13]=f3_0.vdx)
3701  18 7A 34                               CALL                          target=0x347A
3704  17 00                                  RET                           value=0x00
3706  05                                     FIRSTFRAME_NEXT_VIDEO
3707  09 09 0C                               VIDEOREF                      ref=0x0C09 (D[9]=d_1fa.vdx)
370A  18 71 34                               CALL                          target=0x3471
370D  1A 00 01 B0 19 37                      STRCMP_NE_JMP                 start=v[0x100], values=[0], target=0x3719
3713  02 03 4C                               PLAYSONG                      ref=0x4C03 (XMI[3]=agu50.xmi)
3716  15 1C 37                               JMP                           target=0x371C
3719  02 2F 4C                               PLAYSONG                      ref=0x4C2F (XMI[47]=gu50.xmi)
371C  09 1D 0C                               VIDEOREF                      ref=0x0C1D (D[29]=d_s.vdx)
371F  18 7A 34                               CALL                          target=0x347A
3722  17 00                                  RET                           value=0x00
3724  05                                     FIRSTFRAME_NEXT_VIDEO
3725  09 09 0C                               VIDEOREF                      ref=0x0C09 (D[9]=d_1fa.vdx)
3728  18 71 34                               CALL                          target=0x3471
372B  1A 00 01 B0 37 37                      STRCMP_NE_JMP                 start=v[0x100], values=[0], target=0x3737
3731  02 03 4C                               PLAYSONG                      ref=0x4C03 (XMI[3]=agu50.xmi)
3734  15 3A 37                               JMP                           target=0x373A
3737  02 2F 4C                               PLAYSONG                      ref=0x4C2F (XMI[47]=gu50.xmi)
373A  09 00 0C                               VIDEOREF                      ref=0x0C00 (D[0]=d1_.vdx)
373D  18 7A 34                               CALL                          target=0x347A
3740  17 00                                  RET                           value=0x00
3742  05                                     FIRSTFRAME_NEXT_VIDEO
3743  09 0C 2C                               VIDEOREF                      ref=0x2C0C (K[12]=k_1ba.vdx)
3746  18 71 34                               CALL                          target=0x3471
3749  02 21 4C                               PLAYSONG                      ref=0x4C21 (XMI[33]=gu36.xmi)
374C  09 09 2C                               VIDEOREF                      ref=0x2C09 (K[9]=k5_.vdx)
374F  18 7A 34                               CALL                          target=0x347A
3752  17 00                                  RET                           value=0x00
3754  05                                     FIRSTFRAME_NEXT_VIDEO
3755  09 0C 2C                               VIDEOREF                      ref=0x2C0C (K[12]=k_1ba.vdx)
3758  18 71 34                               CALL                          target=0x3471
375B  02 06 4C                               PLAYSONG                      ref=0x4C06 (XMI[6]=gu8.xmi)
375E  09 07 2C                               VIDEOREF                      ref=0x2C07 (K[7]=k3_.vdx)
3761  18 7A 34                               CALL                          target=0x347A
3764  17 00                                  RET                           value=0x00
3766  05                                     FIRSTFRAME_NEXT_VIDEO
3767  09 19 2C                               VIDEOREF                      ref=0x2C19 (K[25]=shelf.vdx)
376A  02 22 4C                               PLAYSONG                      ref=0x4C22 (XMI[34]=gu37.xmi)
376D  03                                     FADEIN_NEXT_VIDEO
376E  09 0A 2C                               VIDEOREF                      ref=0x2C0A (K[10]=k6_.vdx)
3771  17 00                                  RET                           value=0x00
3773  05                                     FIRSTFRAME_NEXT_VIDEO
3774  09 05 2C                               VIDEOREF                      ref=0x2C05 (K[5]=k2_7b.vdx)
3777  18 71 34                               CALL                          target=0x3471
377A  09 0B 2C                               VIDEOREF                      ref=0x2C0B (K[11]=k7_.vdx)
377D  18 7A 34                               CALL                          target=0x347A
3780  17 00                                  RET                           value=0x00
3782  05                                     FIRSTFRAME_NEXT_VIDEO
3783  09 03 38                               VIDEOREF                      ref=0x3803 (MB[3]=mbab.vdx)
3786  18 71 34                               CALL                          target=0x3471
3789  02 36 4C                               PLAYSONG                      ref=0x4C36 (XMI[54]=gu58.xmi)
378C  09 02 38                               VIDEOREF                      ref=0x3802 (MB[2]=mb1_1.vdx)
378F  18 7A 34                               CALL                          target=0x347A
3792  17 00                                  RET                           value=0x00
3794  05                                     FIRSTFRAME_NEXT_VIDEO
3795  09 08 48                               VIDEOREF                      ref=0x4808 (P[8]=pfcb.vdx)
3798  18 71 34                               CALL                          target=0x3471
379B  02 31 4C                               PLAYSONG                      ref=0x4C31 (XMI[49]=gu52.xmi)
379E  09 2B 48                               VIDEOREF                      ref=0x482B (P[43]=pvampkid.vdx)
37A1  18 7A 34                               CALL                          target=0x347A
37A4  17 00                                  RET                           value=0x00
37A6  05                                     FIRSTFRAME_NEXT_VIDEO
37A7  09 12 00                               VIDEOREF                      ref=0x0012 (AT[18]=atabb.vdx)
37AA  18 71 34                               CALL                          target=0x3471
37AD  09 18 00                               VIDEOREF                      ref=0x0018 (AT[24]=at_dog.vdx)
37B0  18 7A 34                               CALL                          target=0x347A
37B3  17 00                                  RET                           value=0x00
37B5  05                                     FIRSTFRAME_NEXT_VIDEO
37B6  09 03 00                               VIDEOREF                      ref=0x0003 (AT[3]=at1p.vdx)
37B9  18 71 34                               CALL                          target=0x3471
37BC  09 0B 00                               VIDEOREF                      ref=0x000B (AT[11]=at2_.vdx)
37BF  18 7A 34                               CALL                          target=0x347A
37C2  17 00                                  RET                           value=0x00
37C4  05                                     FIRSTFRAME_NEXT_VIDEO
37C5  09 0E 2C                               VIDEOREF                      ref=0x2C0E (K[14]=k_1tb.vdx)
37C8  18 71 34                               CALL                          target=0x3471
37CB  02 1F 4C                               PLAYSONG                      ref=0x4C1F (XMI[31]=gu34.xmi)
37CE  09 08 2C                               VIDEOREF                      ref=0x2C08 (K[8]=k4_.vdx)
37D1  18 7A 34                               CALL                          target=0x347A
37D4  17 00                                  RET                           value=0x00
37D6  31 00 00 32 00                         MIDI_CONTROL                  value=0x0000, time=0x0032
37DB  05                                     FIRSTFRAME_NEXT_VIDEO
37DC  09 07 00                               VIDEOREF                      ref=0x0007 (AT[7]=at2f.vdx)
37DF  09 10 00                               VIDEOREF                      ref=0x0010 (AT[16]=at4_.vdx)
37E2  17 00                                  RET                           value=0x00
37E4  18 71 34                               CALL                          target=0x3471
37E7  09 1B 00                               VIDEOREF                      ref=0x001B (AT[27]=at_b.vdx)
37EA  18 7A 34                               CALL                          target=0x347A
37ED  17 00                                  RET                           value=0x00
37EF  18 71 34                               CALL                          target=0x3471
37F2  09 1C 00                               VIDEOREF                      ref=0x001C (AT[28]=at_d.vdx)
37F5  18 7A 34                               CALL                          target=0x347A
37F8  17 00                                  RET                           value=0x00
37FA  18 71 34                               CALL                          target=0x3471
37FD  09 1D 00                               VIDEOREF                      ref=0x001D (AT[29]=at_e.vdx)
3800  18 7A 34                               CALL                          target=0x347A
3803  17 00                                  RET                           value=0x00
3805  18 71 34                               CALL                          target=0x3471
3808  09 1E 00                               VIDEOREF                      ref=0x001E (AT[30]=at_j.vdx)
380B  18 7A 34                               CALL                          target=0x347A
380E  17 00                                  RET                           value=0x00
3810  18 71 34                               CALL                          target=0x3471
3813  09 1F 00                               VIDEOREF                      ref=0x001F (AT[31]=at_k.vdx)
3816  18 7A 34                               CALL                          target=0x347A
3819  17 00                                  RET                           value=0x00
381B  18 71 34                               CALL                          target=0x3471
381E  09 20 00                               VIDEOREF                      ref=0x0020 (AT[32]=at_t.vdx)
3821  18 7A 34                               CALL                          target=0x347A
3824  17 00                                  RET                           value=0x00
3826  18 71 34                               CALL                          target=0x3471
3829  09 21 00                               VIDEOREF                      ref=0x0021 (AT[33]=at_x.vdx)
382C  18 7A 34                               CALL                          target=0x347A
382F  17 00                                  RET                           value=0x00
3831  05                                     FIRSTFRAME_NEXT_VIDEO
3832  09 07 30                               VIDEOREF                      ref=0x3007 (LA[7]=la1_2.vdx)
3835  18 71 34                               CALL                          target=0x3471
3838  02 1B 4C                               PLAYSONG                      ref=0x4C1B (XMI[27]=gu30.xmi)
383B  09 08 30                               VIDEOREF                      ref=0x3008 (LA[8]=la2_.vdx)
383E  18 7A 34                               CALL                          target=0x347A
3841  17 00                                  RET                           value=0x00
3843  05                                     FIRSTFRAME_NEXT_VIDEO
3844  09 07 30                               VIDEOREF                      ref=0x3007 (LA[7]=la1_2.vdx)
3847  18 71 34                               CALL                          target=0x3471
384A  09 02 30                               VIDEOREF                      ref=0x3002 (LA[2]=la_x.vdx)
384D  18 7A 34                               CALL                          target=0x347A
3850  17 00                                  RET                           value=0x00
3852  08 26 4C                               SETBACKGROUNDSONG             ref=0x4C26 (XMI[38]=gu41.xmi)
3855  4E 2D 00                               MUSICDELAY                    value=0x002D
3858  05                                     FIRSTFRAME_NEXT_VIDEO
3859  09 01 40                               VIDEOREF                      ref=0x4001 (MU[1]=muab.vdx)
385C  18 71 34                               CALL                          target=0x3471
385F  09 00 40                               VIDEOREF                      ref=0x4000 (MU[0]=mu1_.vdx)
3862  18 7A 34                               CALL                          target=0x347A
3865  1A 00 01 B0 71 38                      STRCMP_NE_JMP                 start=v[0x100], values=[0], target=0x3871
386B  08 0C 4C                               SETBACKGROUNDSONG             ref=0x4C0C (XMI[12]=gu16.xmi)
386E  15 74 38                               JMP                           target=0x3874
3871  08 00 4C                               SETBACKGROUNDSONG             ref=0x4C00 (XMI[0]=agu16.xmi)
3874  17 00                                  RET                           value=0x00
3876  05                                     FIRSTFRAME_NEXT_VIDEO
3877  09 01 40                               VIDEOREF                      ref=0x4001 (MU[1]=muab.vdx)
387A  18 71 34                               CALL                          target=0x3471
387D  09 08 40                               VIDEOREF                      ref=0x4008 (MU[8]=muhands.vdx)
3880  18 7A 34                               CALL                          target=0x347A
3883  17 00                                  RET                           value=0x00
3885  05                                     FIRSTFRAME_NEXT_VIDEO
3886  09 01 40                               VIDEOREF                      ref=0x4001 (MU[1]=muab.vdx)
3889  18 71 34                               CALL                          target=0x3471
388C  09 0D 40                               VIDEOREF                      ref=0x400D (MU[13]=muv.vdx)
388F  18 7A 34                               CALL                          target=0x347A
3892  17 00                                  RET                           value=0x00
3894  05                                     FIRSTFRAME_NEXT_VIDEO
3895  09 02 40                               VIDEOREF                      ref=0x4002 (MU[2]=muabb.vdx)
3898  18 71 34                               CALL                          target=0x3471
389B  09 0E 40                               VIDEOREF                      ref=0x400E (MU[14]=mu_gram1.vdx)
389E  18 7A 34                               CALL                          target=0x347A
38A1  17 00                                  RET                           value=0x00
38A3  05                                     FIRSTFRAME_NEXT_VIDEO
38A4  09 02 40                               VIDEOREF                      ref=0x4002 (MU[2]=muabb.vdx)
38A7  18 71 34                               CALL                          target=0x3471
38AA  09 0F 40                               VIDEOREF                      ref=0x400F (MU[15]=mu_gram2.vdx)
38AD  18 7A 34                               CALL                          target=0x347A
38B0  17 00                                  RET                           value=0x00
38B2  05                                     FIRSTFRAME_NEXT_VIDEO
38B3  09 02 40                               VIDEOREF                      ref=0x4002 (MU[2]=muabb.vdx)
38B6  18 71 34                               CALL                          target=0x3471
38B9  09 10 40                               VIDEOREF                      ref=0x4010 (MU[16]=mu_gram3.vdx)
38BC  18 7A 34                               CALL                          target=0x347A
38BF  17 00                                  RET                           value=0x00
38C1  31 00 00 32 00                         MIDI_CONTROL                  value=0x0000, time=0x0032
38C6  08 29 4C                               SETBACKGROUNDSONG             ref=0x4C29 (XMI[41]=gu44.xmi)
38C9  4E BE 00                               MUSICDELAY                    value=0x00BE
38CC  05                                     FIRSTFRAME_NEXT_VIDEO
38CD  09 00 34                               VIDEOREF                      ref=0x3400 (LI[0]=l1_2.vdx)
38D0  22                                     COPY_BG_TO_FG
38D1  49                                     PALETTE_MERGE_ONCE
38D2  09 0C 34                               VIDEOREF                      ref=0x340C (LI[12]=li3_.vdx)
38D5  18 7A 34                               CALL                          target=0x347A
38D8  1A 00 01 B0 E4 38                      STRCMP_NE_JMP                 start=v[0x100], values=[0], target=0x38E4
38DE  08 0C 4C                               SETBACKGROUNDSONG             ref=0x4C0C (XMI[12]=gu16.xmi)
38E1  15 E7 38                               JMP                           target=0x38E7
38E4  08 00 4C                               SETBACKGROUNDSONG             ref=0x4C00 (XMI[0]=agu16.xmi)
38E7  17 00                                  RET                           value=0x00
38E9  02 28 4C                               PLAYSONG                      ref=0x4C28 (XMI[40]=gu43.xmi)
38EC  05                                     FIRSTFRAME_NEXT_VIDEO
38ED  09 07 34                               VIDEOREF                      ref=0x3407 (LI[7]=l2_3f.vdx)
38F0  18 71 34                               CALL                          target=0x3471
38F3  09 27 34                               VIDEOREF                      ref=0x3427 (LI[39]=li_suck.vdx)
38F6  18 7A 34                               CALL                          target=0x347A
38F9  17 00                                  RET                           value=0x00
38FB  09 0D 34                               VIDEOREF                      ref=0x340D (LI[13]=lipoem.vdx)
38FE  17 00                                  RET                           value=0x00
3900  02 16 4C                               PLAYSONG                      ref=0x4C16 (XMI[22]=gu25.xmi)
3903  05                                     FIRSTFRAME_NEXT_VIDEO
3904  09 6D 3C                               VIDEOREF                      ref=0x3C6D (MC[109]=creb.vdx)
3907  18 71 34                               CALL                          target=0x3471
390A  09 56 3C                               VIDEOREF                      ref=0x3C56 (MC[86]=bm5_.vdx)
390D  18 7A 34                               CALL                          target=0x347A
3910  17 00                                  RET                           value=0x00
3912  9A 8E 31 B2 22 39                      STRCMP_NE_JMP                 start=v[0x08E], values=[1, 2], target=0x3922
3918  18 7D 35                               CALL                          target=0x357D
391B  96 8E 30 B0                            LOADSTRING                    dst=v[0x08E], values=[0, 0]
391F  15 06 16                               JMP                           target=0x1606
3922  9A 8E 31 B5 32 39                      STRCMP_NE_JMP                 start=v[0x08E], values=[1, 5], target=0x3932
3928  18 94 37                               CALL                          target=0x3794
392B  96 8E 30 B0                            LOADSTRING                    dst=v[0x08E], values=[0, 0]
392F  15 3B 16                               JMP                           target=0x163B
3932  9A 8E 34 B6 51 39                      STRCMP_NE_JMP                 start=v[0x08E], values=[4, 6], target=0x3951
3938  09 74 28                               VIDEOREF                      ref=0x2874 (JHEK[116]=jhmi.vdx)
393B  18 46 36                               CALL                          target=0x3646
393E  18 55 36                               CALL                          target=0x3655
3941  18 60 36                               CALL                          target=0x3660
3944  09 75 28                               VIDEOREF                      ref=0x2875 (JHEK[117]=jhmib.vdx)
3947  18 6B 36                               CALL                          target=0x366B
394A  96 8E 30 B0                            LOADSTRING                    dst=v[0x08E], values=[0, 0]
394E  15 A0 14                               JMP                           target=0x14A0
3951  9A 8E 34 B4 64 39                      STRCMP_NE_JMP                 start=v[0x08E], values=[4, 4], target=0x3964
3957  18 8C 36                               CALL                          target=0x368C
395A  18 9E 36                               CALL                          target=0x369E
395D  96 8E 30 B0                            LOADSTRING                    dst=v[0x08E], values=[0, 0]
3961  15 A0 14                               JMP                           target=0x14A0
3964  9A 8E 34 B3 74 39                      STRCMP_NE_JMP                 start=v[0x08E], values=[4, 3], target=0x3974
396A  18 7A 36                               CALL                          target=0x367A
396D  96 8E 30 B0                            LOADSTRING                    dst=v[0x08E], values=[0, 0]
3971  15 A0 14                               JMP                           target=0x14A0
3974  9A 8E 32 B5 84 39                      STRCMP_NE_JMP                 start=v[0x08E], values=[2, 5], target=0x3984
397A  18 5C 35                               CALL                          target=0x355C
397D  96 8E 30 B0                            LOADSTRING                    dst=v[0x08E], values=[0, 0]
3981  15 A7 13                               JMP                           target=0x13A7
3984  9A 8E 32 B2 94 39                      STRCMP_NE_JMP                 start=v[0x08E], values=[2, 2], target=0x3994
398A  18 38 35                               CALL                          target=0x3538
398D  96 8E 30 B0                            LOADSTRING                    dst=v[0x08E], values=[0, 0]
3991  15 A7 13                               JMP                           target=0x13A7
3994  9A 8E 31 B8 A4 39                      STRCMP_NE_JMP                 start=v[0x08E], values=[1, 8], target=0x39A4
399A  18 AD 35                               CALL                          target=0x35AD
399D  96 8E 30 B0                            LOADSTRING                    dst=v[0x08E], values=[0, 0]
39A1  15 CE 12                               JMP                           target=0x12CE
39A4  9A 8E 35 B9 B4 39                      STRCMP_NE_JMP                 start=v[0x08E], values=[5, 9], target=0x39B4
39AA  18 82 37                               CALL                          target=0x3782
39AD  96 8E 30 B0                            LOADSTRING                    dst=v[0x08E], values=[0, 0]
39B1  15 66 32                               JMP                           target=0x3266
39B4  9A 8E 39 B9 C4 39                      STRCMP_NE_JMP                 start=v[0x08E], values=[9, 9], target=0x39C4
39BA  09 3D 38                               VIDEOREF                      ref=0x383D (MB[61]=mb_warp.vdx)
39BD  96 8E 30 B0                            LOADSTRING                    dst=v[0x08E], values=[0, 0]
39C1  15 66 32                               JMP                           target=0x3266
39C4  9A 8E 35 B1 D4 39                      STRCMP_NE_JMP                 start=v[0x08E], values=[5, 1], target=0x39D4
39CA  18 29 35                               CALL                          target=0x3529
39CD  96 8E 30 B0                            LOADSTRING                    dst=v[0x08E], values=[0, 0]
39D1  15 DA 2D                               JMP                           target=0x2DDA
39D4  9A 8E 35 B0 E4 39                      STRCMP_NE_JMP                 start=v[0x08E], values=[5, 0], target=0x39E4
39DA  18 17 35                               CALL                          target=0x3517
39DD  96 8E 30 B0                            LOADSTRING                    dst=v[0x08E], values=[0, 0]
39E1  15 1E 2D                               JMP                           target=0x2D1E
39E4  9A 8E 35 B4 F4 39                      STRCMP_NE_JMP                 start=v[0x08E], values=[5, 4], target=0x39F4
39EA  18 07 36                               CALL                          target=0x3607
39ED  96 8E 30 B0                            LOADSTRING                    dst=v[0x08E], values=[0, 0]
39F1  15 1B 30                               JMP                           target=0x301B
39F4  9A 8E 35 B5 04 3A                      STRCMP_NE_JMP                 start=v[0x08E], values=[5, 5], target=0x3A04
39FA  18 16 36                               CALL                          target=0x3616
39FD  96 8E 30 B0                            LOADSTRING                    dst=v[0x08E], values=[0, 0]
3A01  15 61 2F                               JMP                           target=0x2F61
3A04  9A 8E 35 B6 14 3A                      STRCMP_NE_JMP                 start=v[0x08E], values=[5, 6], target=0x3A14
3A0A  18 8A 34                               CALL                          target=0x348A
3A0D  96 8E 30 B0                            LOADSTRING                    dst=v[0x08E], values=[0, 0]
3A11  15 61 2F                               JMP                           target=0x2F61
3A14  9A 8E 37 B3 24 3A                      STRCMP_NE_JMP                 start=v[0x08E], values=[7, 3], target=0x3A24
3A1A  18 24 37                               CALL                          target=0x3724
3A1D  96 8E 30 B0                            LOADSTRING                    dst=v[0x08E], values=[0, 0]
3A21  15 57 33                               JMP                           target=0x3357
3A24  9A 8E 37 B4 34 3A                      STRCMP_NE_JMP                 start=v[0x08E], values=[7, 4], target=0x3A34
3A2A  18 06 37                               CALL                          target=0x3706
3A2D  96 8E 30 B0                            LOADSTRING                    dst=v[0x08E], values=[0, 0]
3A31  15 57 33                               JMP                           target=0x3357
3A34  9A 8E 35 B2 44 3A                      STRCMP_NE_JMP                 start=v[0x08E], values=[5, 2], target=0x3A44
3A3A  18 31 38                               CALL                          target=0x3831
3A3D  96 8E 30 B0                            LOADSTRING                    dst=v[0x08E], values=[0, 0]
3A41  15 C5 30                               JMP                           target=0x30C5
3A44  9A 8E 35 B3 54 3A                      STRCMP_NE_JMP                 start=v[0x08E], values=[5, 3], target=0x3A54
3A4A  18 43 38                               CALL                          target=0x3843
3A4D  96 8E 30 B0                            LOADSTRING                    dst=v[0x08E], values=[0, 0]
3A51  15 C5 30                               JMP                           target=0x30C5
3A54  9A 8E 35 B8 64 3A                      STRCMP_NE_JMP                 start=v[0x08E], values=[5, 8], target=0x3A64
3A5A  18 99 34                               CALL                          target=0x3499
3A5D  96 8E 30 B0                            LOADSTRING                    dst=v[0x08E], values=[0, 0]
3A61  15 E7 2E                               JMP                           target=0x2EE7
3A64  9A 8E 35 B7 74 3A                      STRCMP_NE_JMP                 start=v[0x08E], values=[5, 7], target=0x3A74
3A6A  18 AD 36                               CALL                          target=0x36AD
3A6D  96 8E 30 B0                            LOADSTRING                    dst=v[0x08E], values=[0, 0]
3A71  15 62 2E                               JMP                           target=0x2E62
3A74  9A 8E 32 B0 84 3A                      STRCMP_NE_JMP                 start=v[0x08E], values=[2, 0], target=0x3A84
3A7A  18 BF 35                               CALL                          target=0x35BF
3A7D  96 8E 30 B0                            LOADSTRING                    dst=v[0x08E], values=[0, 0]
3A81  15 60 0D                               JMP                           target=0x0D60
3A84  9A 8E 31 B9 94 3A                      STRCMP_NE_JMP                 start=v[0x08E], values=[1, 9], target=0x3A94
3A8A  18 D1 35                               CALL                          target=0x35D1
3A8D  96 8E 30 B0                            LOADSTRING                    dst=v[0x08E], values=[0, 0]
3A91  15 60 0D                               JMP                           target=0x0D60
3A94  9A 8E 32 B1 A4 3A                      STRCMP_NE_JMP                 start=v[0x08E], values=[2, 1], target=0x3AA4
3A9A  18 37 36                               CALL                          target=0x3637
3A9D  96 8E 30 B0                            LOADSTRING                    dst=v[0x08E], values=[0, 0]
3AA1  15 60 0D                               JMP                           target=0x0D60
3AA4  9A 8E 30 B2 C0 3A                      STRCMP_NE_JMP                 start=v[0x08E], values=[0, 2], target=0x3AC0
; Runtime verified by trace 20260809-195435: the foyer theatre-mask hotspot
; enters here, plays f_1bb/f_1ba, calls the full f1_ replay sequence at 36BF,
; then returns through f_1fa/f_1fb to the foyer loop.
3AAA  09 22 14                               VIDEOREF                      ref=0x1422 (FH[34]=f_1bb.vdx)
3AAD  09 21 14                               VIDEOREF                      ref=0x1421 (FH[33]=f_1ba.vdx)
3AB0  18 BF 36                               CALL                          target=0x36BF
3AB3  96 8E 30 B0                            LOADSTRING                    dst=v[0x08E], values=[0, 0]
3AB7  09 25 14                               VIDEOREF                      ref=0x1425 (FH[37]=f_1fa.vdx)
3ABA  09 26 14                               VIDEOREF                      ref=0x1426 (FH[38]=f_1fb.vdx)
3ABD  15 FD 04                               JMP                           target=0x04FD
3AC0  9A 8E 32 B7 D0 3A                      STRCMP_NE_JMP                 start=v[0x08E], values=[2, 7], target=0x3AD0
3AC6  18 76 38                               CALL                          target=0x3876
3AC9  96 8E 30 B0                            LOADSTRING                    dst=v[0x08E], values=[0, 0]
3ACD  15 EA 0B                               JMP                           target=0x0BEA
3AD0  9A 8E 32 B8 E0 3A                      STRCMP_NE_JMP                 start=v[0x08E], values=[2, 8], target=0x3AE0
3AD6  18 85 38                               CALL                          target=0x3885
3AD9  96 8E 30 B0                            LOADSTRING                    dst=v[0x08E], values=[0, 0]
3ADD  15 EA 0B                               JMP                           target=0x0BEA
3AE0  9A 8E 34 B2 F6 3A                      STRCMP_NE_JMP                 start=v[0x08E], values=[4, 2], target=0x3AF6
3AE6  09 06 2C                               VIDEOREF                      ref=0x2C06 (K[6]=k2_7f.vdx)
3AE9  18 73 37                               CALL                          target=0x3773
3AEC  09 05 2C                               VIDEOREF                      ref=0x2C05 (K[5]=k2_7b.vdx)
3AEF  96 8E 30 B0                            LOADSTRING                    dst=v[0x08E], values=[0, 0]
3AF3  15 AE 0B                               JMP                           target=0x0BAE
3AF6  9A 8E 34 B0 06 3B                      STRCMP_NE_JMP                 start=v[0x08E], values=[4, 0], target=0x3B06
3AFC  18 42 37                               CALL                          target=0x3742
3AFF  96 8E 30 B0                            LOADSTRING                    dst=v[0x08E], values=[0, 0]
3B03  15 3C 0A                               JMP                           target=0x0A3C
3B06  9A 8E 33 B8 16 3B                      STRCMP_NE_JMP                 start=v[0x08E], values=[3, 8], target=0x3B16
3B0C  18 54 37                               CALL                          target=0x3754
3B0F  96 8E 30 B0                            LOADSTRING                    dst=v[0x08E], values=[0, 0]
3B13  15 3C 0A                               JMP                           target=0x0A3C
3B16  9A 8E 33 B9 2C 3B                      STRCMP_NE_JMP                 start=v[0x08E], values=[3, 9], target=0x3B2C
3B1C  09 0F 2C                               VIDEOREF                      ref=0x2C0F (K[15]=k_1tf.vdx)
3B1F  18 C4 37                               CALL                          target=0x37C4
3B22  09 0E 2C                               VIDEOREF                      ref=0x2C0E (K[14]=k_1tb.vdx)
3B25  96 8E 30 B0                            LOADSTRING                    dst=v[0x08E], values=[0, 0]
3B29  15 3C 0A                               JMP                           target=0x0A3C
3B2C  9A 8E 32 B6 3C 3B                      STRCMP_NE_JMP                 start=v[0x08E], values=[2, 6], target=0x3B3C
3B32  18 52 38                               CALL                          target=0x3852
3B35  96 8E 30 B0                            LOADSTRING                    dst=v[0x08E], values=[0, 0]
3B39  15 EA 0B                               JMP                           target=0x0BEA
3B3C  9A 8E 33 B6 4C 3B                      STRCMP_NE_JMP                 start=v[0x08E], values=[3, 6], target=0x3B4C
3B42  18 C1 38                               CALL                          target=0x38C1
3B45  96 8E 30 B0                            LOADSTRING                    dst=v[0x08E], values=[0, 0]
3B49  15 88 21                               JMP                           target=0x2188
3B4C  9A 8E 31 B6 5C 3B                      STRCMP_NE_JMP                 start=v[0x08E], values=[1, 6], target=0x3B5C
3B52  18 E3 35                               CALL                          target=0x35E3
3B55  96 8E 30 B0                            LOADSTRING                    dst=v[0x08E], values=[0, 0]
3B59  15 5A 09                               JMP                           target=0x095A
3B5C  9A 8E 31 B7 6C 3B                      STRCMP_NE_JMP                 start=v[0x08E], values=[1, 7], target=0x3B6C
3B62  18 F5 35                               CALL                          target=0x35F5
3B65  96 8E 30 B0                            LOADSTRING                    dst=v[0x08E], values=[0, 0]
3B69  15 5A 09                               JMP                           target=0x095A
3B6C  9A 8E 30 B3 7C 3B                      STRCMP_NE_JMP                 start=v[0x08E], values=[0, 3], target=0x3B7C
3B72  18 DF 36                               CALL                          target=0x36DF
3B75  96 8E 30 B0                            LOADSTRING                    dst=v[0x08E], values=[0, 0]
3B79  15 83 05                               JMP                           target=0x0583
3B7C  9A 8E 30 B4 92 3B                      STRCMP_NE_JMP                 start=v[0x08E], values=[0, 4], target=0x3B92
3B82  09 06 14                               VIDEOREF                      ref=0x1406 (FH[6]=f1_pf.vdx)
3B85  18 F4 36                               CALL                          target=0x36F4
3B88  09 05 14                               VIDEOREF                      ref=0x1405 (FH[5]=f1_pb.vdx)
3B8B  96 8E 30 B0                            LOADSTRING                    dst=v[0x08E], values=[0, 0]
3B8F  15 83 05                               JMP                           target=0x0583
3B92  9A 8E 30 B6 A2 3B                      STRCMP_NE_JMP                 start=v[0x08E], values=[0, 6], target=0x3BA2
3B98  18 AB 34                               CALL                          target=0x34AB
3B9B  96 8E 30 B0                            LOADSTRING                    dst=v[0x08E], values=[0, 0]
3B9F  15 60 0F                               JMP                           target=0x0F60
3BA2  9A 8E 31 B1 B2 3B                      STRCMP_NE_JMP                 start=v[0x08E], values=[1, 1], target=0x3BB2
3BA8  18 08 35                               CALL                          target=0x3508
3BAB  96 8E 30 B0                            LOADSTRING                    dst=v[0x08E], values=[0, 0]
3BAF  15 AA 0E                               JMP                           target=0x0EAA
3BB2  9A 8E 31 B0 C2 3B                      STRCMP_NE_JMP                 start=v[0x08E], values=[1, 0], target=0x3BC2
3BB8  18 F9 34                               CALL                          target=0x34F9
3BBB  96 8E 30 B0                            LOADSTRING                    dst=v[0x08E], values=[0, 0]
3BBF  15 AA 0E                               JMP                           target=0x0EAA
3BC2  9A 8E 30 B8 D2 3B                      STRCMP_NE_JMP                 start=v[0x08E], values=[0, 8], target=0x3BD2
3BC8  18 DB 34                               CALL                          target=0x34DB
3BCB  96 8E 30 B0                            LOADSTRING                    dst=v[0x08E], values=[0, 0]
3BCF  15 AA 0E                               JMP                           target=0x0EAA
3BD2  9A 8E 30 B7 E2 3B                      STRCMP_NE_JMP                 start=v[0x08E], values=[0, 7], target=0x3BE2
3BD8  18 BA 34                               CALL                          target=0x34BA
3BDB  96 8E 30 B0                            LOADSTRING                    dst=v[0x08E], values=[0, 0]
3BDF  15 AA 0E                               JMP                           target=0x0EAA
3BE2  9A 8E 30 B5 F2 3B                      STRCMP_NE_JMP                 start=v[0x08E], values=[0, 5], target=0x3BF2
3BE8  18 C9 34                               CALL                          target=0x34C9
3BEB  96 8E 30 B0                            LOADSTRING                    dst=v[0x08E], values=[0, 0]
3BEF  15 AA 0E                               JMP                           target=0x0EAA
3BF2  9A 8E 33 B7 02 3C                      STRCMP_NE_JMP                 start=v[0x08E], values=[3, 7], target=0x3C02
3BF8  18 FB 38                               CALL                          target=0x38FB
3BFB  96 8E 30 B0                            LOADSTRING                    dst=v[0x08E], values=[0, 0]
3BFF  15 0B 2B                               JMP                           target=0x2B0B
3C02  03                                     FADEIN_NEXT_VIDEO
3C03  05                                     FIRSTFRAME_NEXT_VIDEO
3C04  09 23 00                               VIDEOREF                      ref=0x0023 (AT[35]=rt1_b.vdx)
3C07  02 43 4C                               PLAYSONG                      ref=0x4C43 (XMI[67]=gu75.xmi)
3C0A  08 44 4C                               SETBACKGROUNDSONG             ref=0x4C44 (XMI[68]=gu76.xmi)
3C0D  4E B5 04                               MUSICDELAY                    value=0x04B5
3C10  09 23 00                               VIDEOREF                      ref=0x0023 (AT[35]=rt1_b.vdx)
3C13  08 00 00                               SETBACKGROUNDSONG             ref=0x0000 (AT[0]=as_ia.vdx)
3C16  04                                     PALFADEOUT
3C17  03                                     FADEIN_NEXT_VIDEO
3C18  09 16 24                               VIDEOREF                      ref=0x2416 (INTRO[22]=ozpt.vdx)
3C1B  09 15 24                               VIDEOREF                      ref=0x2415 (INTRO[21]=ozpa.vdx)
3C1E  4D 03                                  PLAYCD                        value=0x03
3C20  19 B0 04                               SLEEP                         ticks=0x04B0
3C23  04                                     PALFADEOUT
3C24  23 05 01 B0 30 3C                      STRCMP_EQ_JMP                 start=v[0x105], values=[0], target=0x3C30
3C2A  4B 00                                  SET_VIDEO_MODE                value=0x00
3C2C  16 09 01 B1                            LOADSTRING                    dst=v[0x109], values=[1]
3C30  03                                     FADEIN_NEXT_VIDEO
3C31  09 05 1C                               VIDEOREF                      ref=0x1C05 (HDISK[5]=credits.vdx)
3C34  19 B0 04                               SLEEP                         ticks=0x04B0
3C37  16 08 01 B1                            LOADSTRING                    dst=v[0x108], values=[1]
3C3B  96 FB E1                               LOADSTRING                    dst=v[0x0FB], values=[49]
3C3E  96 FA E1                               LOADSTRING                    dst=v[0x0FA], values=[49]
3C41  96 F9 E1                               LOADSTRING                    dst=v[0x0F9], values=[49]
3C44  96 F8 E1                               LOADSTRING                    dst=v[0x0F8], values=[49]
3C47  96 F7 E1                               LOADSTRING                    dst=v[0x0F7], values=[49]
3C4A  96 F6 E1                               LOADSTRING                    dst=v[0x0F6], values=[49]
3C4D  96 F5 E1                               LOADSTRING                    dst=v[0x0F5], values=[49]
3C50  96 F4 E1                               LOADSTRING                    dst=v[0x0F4], values=[49]
3C53  96 F3 E1                               LOADSTRING                    dst=v[0x0F3], values=[49]
3C56  96 F2 E1                               LOADSTRING                    dst=v[0x0F2], values=[49]
3C59  96 F1 E1                               LOADSTRING                    dst=v[0x0F1], values=[49]
3C5C  96 F0 E1                               LOADSTRING                    dst=v[0x0F0], values=[49]
3C5F  96 EF E1                               LOADSTRING                    dst=v[0x0EF], values=[49]
3C62  96 EE E1                               LOADSTRING                    dst=v[0x0EE], values=[49]
3C65  96 ED E1                               LOADSTRING                    dst=v[0x0ED], values=[49]
3C68  96 EC E1                               LOADSTRING                    dst=v[0x0EC], values=[49]
3C6B  96 EB E1                               LOADSTRING                    dst=v[0x0EB], values=[49]
3C6E  96 EA E1                               LOADSTRING                    dst=v[0x0EA], values=[49]
3C71  96 E9 E1                               LOADSTRING                    dst=v[0x0E9], values=[49]
3C74  96 E8 E1                               LOADSTRING                    dst=v[0x0E8], values=[49]
3C77  96 E7 E1                               LOADSTRING                    dst=v[0x0E7], values=[49]
3C7A  96 F9 E1                               LOADSTRING                    dst=v[0x0F9], values=[49]
3C7D  96 E5 B1                               LOADSTRING                    dst=v[0x0E5], values=[1]
3C80  96 E4 B1                               LOADSTRING                    dst=v[0x0E4], values=[1]
3C83  96 E3 B1                               LOADSTRING                    dst=v[0x0E3], values=[1]
3C86  96 E2 B1                               LOADSTRING                    dst=v[0x0E2], values=[1]
3C89  96 E1 B1                               LOADSTRING                    dst=v[0x0E1], values=[1]
3C8C  96 E0 B1                               LOADSTRING                    dst=v[0x0E0], values=[1]
3C8F  96 DF B1                               LOADSTRING                    dst=v[0x0DF], values=[1]
3C92  96 DE B1                               LOADSTRING                    dst=v[0x0DE], values=[1]
3C95  96 DD B1                               LOADSTRING                    dst=v[0x0DD], values=[1]
3C98  96 DC B1                               LOADSTRING                    dst=v[0x0DC], values=[1]
3C9B  96 DB B1                               LOADSTRING                    dst=v[0x0DB], values=[1]
3C9E  96 DA B1                               LOADSTRING                    dst=v[0x0DA], values=[1]
3CA1  96 D9 B1                               LOADSTRING                    dst=v[0x0D9], values=[1]
3CA4  96 D8 B1                               LOADSTRING                    dst=v[0x0D8], values=[1]
3CA7  96 D7 B1                               LOADSTRING                    dst=v[0x0D7], values=[1]
3CAA  96 D6 B1                               LOADSTRING                    dst=v[0x0D6], values=[1]
3CAD  96 D5 B1                               LOADSTRING                    dst=v[0x0D5], values=[1]
3CB0  96 D4 B1                               LOADSTRING                    dst=v[0x0D4], values=[1]
3CB3  96 D3 B1                               LOADSTRING                    dst=v[0x0D3], values=[1]
3CB6  96 D2 B1                               LOADSTRING                    dst=v[0x0D2], values=[1]
3CB9  96 D1 B1                               LOADSTRING                    dst=v[0x0D1], values=[1]
3CBC  96 D0 B1                               LOADSTRING                    dst=v[0x0D0], values=[1]
3CBF  96 CF B1                               LOADSTRING                    dst=v[0x0CF], values=[1]
3CC2  96 CE B1                               LOADSTRING                    dst=v[0x0CE], values=[1]
3CC5  96 CD B1                               LOADSTRING                    dst=v[0x0CD], values=[1]
3CC8  96 CC B1                               LOADSTRING                    dst=v[0x0CC], values=[1]
3CCB  96 CB B1                               LOADSTRING                    dst=v[0x0CB], values=[1]
3CCE  96 CA B1                               LOADSTRING                    dst=v[0x0CA], values=[1]
3CD1  96 C9 B1                               LOADSTRING                    dst=v[0x0C9], values=[1]
3CD4  96 C8 B1                               LOADSTRING                    dst=v[0x0C8], values=[1]
3CD7  96 C7 B1                               LOADSTRING                    dst=v[0x0C7], values=[1]
3CDA  96 C6 B1                               LOADSTRING                    dst=v[0x0C6], values=[1]
3CDD  96 C5 B1                               LOADSTRING                    dst=v[0x0C5], values=[1]
3CE0  96 C4 B1                               LOADSTRING                    dst=v[0x0C4], values=[1]
3CE3  96 C3 B1                               LOADSTRING                    dst=v[0x0C3], values=[1]
3CE6  96 C2 B1                               LOADSTRING                    dst=v[0x0C2], values=[1]
3CE9  96 C1 B1                               LOADSTRING                    dst=v[0x0C1], values=[1]
3CEC  96 C0 B1                               LOADSTRING                    dst=v[0x0C0], values=[1]
3CEF  96 BF B1                               LOADSTRING                    dst=v[0x0BF], values=[1]
3CF2  96 BE B1                               LOADSTRING                    dst=v[0x0BE], values=[1]
3CF5  96 BD B1                               LOADSTRING                    dst=v[0x0BD], values=[1]
3CF8  96 BC B1                               LOADSTRING                    dst=v[0x0BC], values=[1]
3CFB  96 BB B1                               LOADSTRING                    dst=v[0x0BB], values=[1]
3CFE  96 BA B1                               LOADSTRING                    dst=v[0x0BA], values=[1]
3D01  96 B9 B1                               LOADSTRING                    dst=v[0x0B9], values=[1]
3D04  96 B8 B1                               LOADSTRING                    dst=v[0x0B8], values=[1]
3D07  96 B7 B1                               LOADSTRING                    dst=v[0x0B7], values=[1]
3D0A  96 B6 B1                               LOADSTRING                    dst=v[0x0B6], values=[1]
3D0D  96 B5 B1                               LOADSTRING                    dst=v[0x0B5], values=[1]
3D10  96 B4 B1                               LOADSTRING                    dst=v[0x0B4], values=[1]
3D13  96 B3 B1                               LOADSTRING                    dst=v[0x0B3], values=[1]
3D16  96 B2 B1                               LOADSTRING                    dst=v[0x0B2], values=[1]
3D19  96 B1 B1                               LOADSTRING                    dst=v[0x0B1], values=[1]
3D1C  96 B0 B1                               LOADSTRING                    dst=v[0x0B0], values=[1]
3D1F  96 AF B1                               LOADSTRING                    dst=v[0x0AF], values=[1]
3D22  96 AE B1                               LOADSTRING                    dst=v[0x0AE], values=[1]
3D25  96 AD B1                               LOADSTRING                    dst=v[0x0AD], values=[1]
3D28  96 AC B1                               LOADSTRING                    dst=v[0x0AC], values=[1]
3D2B  96 AB B1                               LOADSTRING                    dst=v[0x0AB], values=[1]
3D2E  96 AA B1                               LOADSTRING                    dst=v[0x0AA], values=[1]
3D31  96 A9 B1                               LOADSTRING                    dst=v[0x0A9], values=[1]
3D34  96 A8 B1                               LOADSTRING                    dst=v[0x0A8], values=[1]
3D37  96 A7 B1                               LOADSTRING                    dst=v[0x0A7], values=[1]
3D3A  96 A6 B1                               LOADSTRING                    dst=v[0x0A6], values=[1]
3D3D  96 A5 B1                               LOADSTRING                    dst=v[0x0A5], values=[1]
3D40  96 A4 B1                               LOADSTRING                    dst=v[0x0A4], values=[1]
3D43  96 A3 B1                               LOADSTRING                    dst=v[0x0A3], values=[1]
3D46  96 A2 B1                               LOADSTRING                    dst=v[0x0A2], values=[1]
3D49  96 A1 B1                               LOADSTRING                    dst=v[0x0A1], values=[1]
3D4C  96 A0 B1                               LOADSTRING                    dst=v[0x0A0], values=[1]
3D4F  96 9F B1                               LOADSTRING                    dst=v[0x09F], values=[1]
3D52  96 9E B1                               LOADSTRING                    dst=v[0x09E], values=[1]
3D55  96 9D B1                               LOADSTRING                    dst=v[0x09D], values=[1]
3D58  96 9C B1                               LOADSTRING                    dst=v[0x09C], values=[1]
3D5B  96 9B B1                               LOADSTRING                    dst=v[0x09B], values=[1]
3D5E  96 9A B1                               LOADSTRING                    dst=v[0x09A], values=[1]
3D61  96 99 B1                               LOADSTRING                    dst=v[0x099], values=[1]
3D64  96 00 4F 50 45 4E 40 48 4F 55 53 45 A4 LOADSTRING                    dst=v[0x000], values=[31, 32, 21, 30, 16, 24, 31, 37, 35, 21, 244]
3D71  96 8C 30 B1                            LOADSTRING                    dst=v[0x08C], values=[0, 1]
3D75  16 07 01 A0                            LOADSTRING                    dst=v[0x107], values=[240]
3D79  2F 19 00                               SAVEGAME                      var=v[0x019]
3D7C  1A 09 01 B1 88 3D                      STRCMP_NE_JMP                 start=v[0x109], values=[1], target=0x3D88
3D82  4B 01                                  SET_VIDEO_MODE                value=0x01
3D84  16 09 01 B0                            LOADSTRING                    dst=v[0x109], values=[0]
3D88  4D 62                                  PLAYCD                        value=0x62
3D8A  15 15 00                               JMP                           target=0x0015
3D8D  3F 63 72 2E 67 72 76 00                LOADSCRIPT                    filename="cr.grv"
3D95  2C AB 17 08                            SET_HOTSPOT_TOP               target=0x17AB, cursor=0x08
3D99  2D 00 00 00                            SET_HOTSPOT_BOTTOM            target=0x0000, cursor=0x00
3D9D  44 00 00                               SET_HOTSPOT_RIGHT             target=0x0000
3DA0  45 00 00                               SET_HOTSPOT_LEFT              target=0x0000
3DA3  1A 02 01 B0 AE 3D                      STRCMP_NE_JMP                 start=v[0x102], values=[0], target=0x3DAE
3DA9  17 00                                  RET                           value=0x00
3DAB  15 B7 3D                               JMP                           target=0x3DB7
3DAE  1A 02 01 B1 B7 3D                      STRCMP_NE_JMP                 start=v[0x102], values=[1], target=0x3DB7
3DB4  15 AB 17                               JMP                           target=0x17AB
3DB7  3F 6D 75 2E 67 72 76 00                LOADSCRIPT                    filename="mu.grv"
3DBF  2C AB 17 08                            SET_HOTSPOT_TOP               target=0x17AB, cursor=0x08
3DC3  2D 00 00 00                            SET_HOTSPOT_BOTTOM            target=0x0000, cursor=0x00
3DC7  44 00 00                               SET_HOTSPOT_RIGHT             target=0x0000
3DCA  45 00 00                               SET_HOTSPOT_LEFT              target=0x0000
3DCD  1A 02 01 B0 D8 3D                      STRCMP_NE_JMP                 start=v[0x102], values=[0], target=0x3DD8
3DD3  17 00                                  RET                           value=0x00
3DD5  15 E1 3D                               JMP                           target=0x3DE1
3DD8  1A 02 01 B1 E1 3D                      STRCMP_NE_JMP                 start=v[0x102], values=[1], target=0x3DE1
3DDE  15 AB 17                               JMP                           target=0x17AB
3DE1  3F 6A 68 2E 67 72 76 00                LOADSCRIPT                    filename="jh.grv"
3DE9  2C AB 17 08                            SET_HOTSPOT_TOP               target=0x17AB, cursor=0x08
3DED  2D 00 00 00                            SET_HOTSPOT_BOTTOM            target=0x0000, cursor=0x00
3DF1  44 00 00                               SET_HOTSPOT_RIGHT             target=0x0000
3DF4  45 00 00                               SET_HOTSPOT_LEFT              target=0x0000
3DF7  1A 02 01 B0 02 3E                      STRCMP_NE_JMP                 start=v[0x102], values=[0], target=0x3E02
3DFD  17 00                                  RET                           value=0x00
3DFF  15 0B 3E                               JMP                           target=0x3E0B
3E02  1A 02 01 B1 0B 3E                      STRCMP_NE_JMP                 start=v[0x102], values=[1], target=0x3E0B
3E08  15 AB 17                               JMP                           target=0x17AB
3E0B  3F 6D 61 7A 65 2E 67 72 76 00          LOADSCRIPT                    filename="maze.grv"
3E15  2C AB 17 08                            SET_HOTSPOT_TOP               target=0x17AB, cursor=0x08
3E19  2D 00 00 00                            SET_HOTSPOT_BOTTOM            target=0x0000, cursor=0x00
3E1D  44 00 00                               SET_HOTSPOT_RIGHT             target=0x0000
3E20  45 00 00                               SET_HOTSPOT_LEFT              target=0x0000
3E23  1A 02 01 B0 2E 3E                      STRCMP_NE_JMP                 start=v[0x102], values=[0], target=0x3E2E
3E29  17 00                                  RET                           value=0x00
3E2B  15 42 3E                               JMP                           target=0x3E42
3E2E  1A 02 01 B1 3A 3E                      STRCMP_NE_JMP                 start=v[0x102], values=[1], target=0x3E3A
3E34  15 AB 17                               JMP                           target=0x17AB
3E37  15 42 3E                               JMP                           target=0x3E42
3E3A  1A 02 01 B2 42 3E                      STRCMP_NE_JMP                 start=v[0x102], values=[2], target=0x3E42
3E40  17 01                                  RET                           value=0x01
3E42  3F 67 72 61 74 65 2E 67 72 76 00       LOADSCRIPT                    filename="grate.grv"
3E4D  2C AB 17 08                            SET_HOTSPOT_TOP               target=0x17AB, cursor=0x08
3E51  2D 00 00 00                            SET_HOTSPOT_BOTTOM            target=0x0000, cursor=0x00
3E55  44 00 00                               SET_HOTSPOT_RIGHT             target=0x0000
3E58  45 00 00                               SET_HOTSPOT_LEFT              target=0x0000
3E5B  1A 02 01 B0 66 3E                      STRCMP_NE_JMP                 start=v[0x102], values=[0], target=0x3E66
3E61  17 00                                  RET                           value=0x00
3E63  15 7A 3E                               JMP                           target=0x3E7A
3E66  1A 02 01 B1 72 3E                      STRCMP_NE_JMP                 start=v[0x102], values=[1], target=0x3E72
3E6C  15 AB 17                               JMP                           target=0x17AB
3E6F  15 7A 3E                               JMP                           target=0x3E7A
3E72  1A 02 01 B2 7A 3E                      STRCMP_NE_JMP                 start=v[0x102], values=[2], target=0x3E7A
3E78  17 01                                  RET                           value=0x01
3E7A  3F 64 2E 67 72 76 00                   LOADSCRIPT                    filename="d.grv"
3E81  2C AB 17 08                            SET_HOTSPOT_TOP               target=0x17AB, cursor=0x08
3E85  2D 00 00 00                            SET_HOTSPOT_BOTTOM            target=0x0000, cursor=0x00
3E89  44 00 00                               SET_HOTSPOT_RIGHT             target=0x0000
3E8C  45 00 00                               SET_HOTSPOT_LEFT              target=0x0000
3E8F  1A 02 01 B0 9A 3E                      STRCMP_NE_JMP                 start=v[0x102], values=[0], target=0x3E9A
3E95  17 00                                  RET                           value=0x00
3E97  15 A3 3E                               JMP                           target=0x3EA3
3E9A  1A 02 01 B1 A3 3E                      STRCMP_NE_JMP                 start=v[0x102], values=[1], target=0x3EA3
3EA0  15 AB 17                               JMP                           target=0x17AB
3EA3  3F 6E 2E 67 72 76 00                   LOADSCRIPT                    filename="n.grv"
3EAA  2C AB 17 08                            SET_HOTSPOT_TOP               target=0x17AB, cursor=0x08
3EAE  2D 00 00 00                            SET_HOTSPOT_BOTTOM            target=0x0000, cursor=0x00
3EB2  44 00 00                               SET_HOTSPOT_RIGHT             target=0x0000
3EB5  45 00 00                               SET_HOTSPOT_LEFT              target=0x0000
3EB8  1A 02 01 B0 C3 3E                      STRCMP_NE_JMP                 start=v[0x102], values=[0], target=0x3EC3
3EBE  17 00                                  RET                           value=0x00
3EC0  15 CC 3E                               JMP                           target=0x3ECC
3EC3  1A 02 01 B1 CC 3E                      STRCMP_NE_JMP                 start=v[0x102], values=[1], target=0x3ECC
3EC9  15 AB 17                               JMP                           target=0x17AB
3ECC  3F 70 2E 67 72 76 00                   LOADSCRIPT                    filename="p.grv"
3ED3  2C AB 17 08                            SET_HOTSPOT_TOP               target=0x17AB, cursor=0x08
3ED7  2D 00 00 00                            SET_HOTSPOT_BOTTOM            target=0x0000, cursor=0x00
3EDB  44 00 00                               SET_HOTSPOT_RIGHT             target=0x0000
3EDE  45 00 00                               SET_HOTSPOT_LEFT              target=0x0000
3EE1  1A 02 01 B0 EC 3E                      STRCMP_NE_JMP                 start=v[0x102], values=[0], target=0x3EEC
3EE7  17 00                                  RET                           value=0x00
3EE9  15 F5 3E                               JMP                           target=0x3EF5
3EEC  1A 02 01 B1 F5 3E                      STRCMP_NE_JMP                 start=v[0x102], values=[1], target=0x3EF5
3EF2  15 AB 17                               JMP                           target=0x17AB
3EF5  3F 6D 62 2E 67 72 76 00                LOADSCRIPT                    filename="mb.grv"
3EFD  2C AB 17 08                            SET_HOTSPOT_TOP               target=0x17AB, cursor=0x08
3F01  2D 00 00 00                            SET_HOTSPOT_BOTTOM            target=0x0000, cursor=0x00
3F05  44 00 00                               SET_HOTSPOT_RIGHT             target=0x0000
3F08  45 00 00                               SET_HOTSPOT_LEFT              target=0x0000
3F0B  1A 02 01 B0 16 3F                      STRCMP_NE_JMP                 start=v[0x102], values=[0], target=0x3F16
3F11  17 00                                  RET                           value=0x00
3F13  15 1F 3F                               JMP                           target=0x3F1F
3F16  1A 02 01 B1 1F 3F                      STRCMP_NE_JMP                 start=v[0x102], values=[1], target=0x3F1F
3F1C  15 AB 17                               JMP                           target=0x17AB
3F1F  3F 66 2E 67 72 76 00                   LOADSCRIPT                    filename="f.grv"
3F26  2C AB 17 08                            SET_HOTSPOT_TOP               target=0x17AB, cursor=0x08
3F2A  2D 00 00 00                            SET_HOTSPOT_BOTTOM            target=0x0000, cursor=0x00
3F2E  44 00 00                               SET_HOTSPOT_RIGHT             target=0x0000
3F31  45 00 00                               SET_HOTSPOT_LEFT              target=0x0000
3F34  1A 02 01 B0 3F 3F                      STRCMP_NE_JMP                 start=v[0x102], values=[0], target=0x3F3F
3F3A  17 00                                  RET                           value=0x00
3F3C  15 48 3F                               JMP                           target=0x3F48
3F3F  1A 02 01 B1 48 3F                      STRCMP_NE_JMP                 start=v[0x102], values=[1], target=0x3F48
3F45  15 AB 17                               JMP                           target=0x17AB
; Runtime verified by trace 20260809-223655: normal kitchen entry loads the
; 1873-byte K.GRV soup-can child. Its successful return is 0 and dispatches
; through the branch below; v[0F9]=49 is the durable completion value.
3F48  3F 6B 2E 67 72 76 00                   LOADSCRIPT                    filename="k.grv"
3F4F  2C AB 17 08                            SET_HOTSPOT_TOP               target=0x17AB, cursor=0x08
3F53  2D 00 00 00                            SET_HOTSPOT_BOTTOM            target=0x0000, cursor=0x00
3F57  44 00 00                               SET_HOTSPOT_RIGHT             target=0x0000
3F5A  45 00 00                               SET_HOTSPOT_LEFT              target=0x0000
3F5D  1A 02 01 B0 68 3F                      STRCMP_NE_JMP                 start=v[0x102], values=[0], target=0x3F68
3F63  17 00                                  RET                           value=0x00
3F65  15 71 3F                               JMP                           target=0x3F71
3F68  1A 02 01 B1 71 3F                      STRCMP_NE_JMP                 start=v[0x102], values=[1], target=0x3F71
3F6E  15 AB 17                               JMP                           target=0x17AB
3F71  3F 62 2E 67 72 76 00                   LOADSCRIPT                    filename="b.grv"
3F78  2C AB 17 08                            SET_HOTSPOT_TOP               target=0x17AB, cursor=0x08
3F7C  2D 00 00 00                            SET_HOTSPOT_BOTTOM            target=0x0000, cursor=0x00
3F80  44 00 00                               SET_HOTSPOT_RIGHT             target=0x0000
3F83  45 00 00                               SET_HOTSPOT_LEFT              target=0x0000
3F86  1A 02 01 B0 91 3F                      STRCMP_NE_JMP                 start=v[0x102], values=[0], target=0x3F91
3F8C  17 00                                  RET                           value=0x00
3F8E  15 9A 3F                               JMP                           target=0x3F9A
3F91  1A 02 01 B1 9A 3F                      STRCMP_NE_JMP                 start=v[0x102], values=[1], target=0x3F9A
3F97  15 AB 17                               JMP                           target=0x17AB
3F9A  3F 67 61 2E 67 72 76 00                LOADSCRIPT                    filename="ga.grv"
3FA2  2C AB 17 08                            SET_HOTSPOT_TOP               target=0x17AB, cursor=0x08
3FA6  2D 00 00 00                            SET_HOTSPOT_BOTTOM            target=0x0000, cursor=0x00
3FAA  44 00 00                               SET_HOTSPOT_RIGHT             target=0x0000
3FAD  45 00 00                               SET_HOTSPOT_LEFT              target=0x0000
3FB0  1A 02 01 B0 BB 3F                      STRCMP_NE_JMP                 start=v[0x102], values=[0], target=0x3FBB
3FB6  17 00                                  RET                           value=0x00
3FB8  15 C4 3F                               JMP                           target=0x3FC4
3FBB  1A 02 01 B1 C4 3F                      STRCMP_NE_JMP                 start=v[0x102], values=[1], target=0x3FC4
3FC1  15 AB 17                               JMP                           target=0x17AB
3FC4  3F 65 6B 2E 67 72 76 00                LOADSCRIPT                    filename="ek.grv"
3FCC  2C AB 17 08                            SET_HOTSPOT_TOP               target=0x17AB, cursor=0x08
3FD0  2D 00 00 00                            SET_HOTSPOT_BOTTOM            target=0x0000, cursor=0x00
3FD4  44 00 00                               SET_HOTSPOT_RIGHT             target=0x0000
3FD7  45 00 00                               SET_HOTSPOT_LEFT              target=0x0000
3FDA  1A 02 01 B0 E5 3F                      STRCMP_NE_JMP                 start=v[0x102], values=[0], target=0x3FE5
3FE0  17 00                                  RET                           value=0x00
3FE2  15 EE 3F                               JMP                           target=0x3FEE
3FE5  1A 02 01 B1 EE 3F                      STRCMP_NE_JMP                 start=v[0x102], values=[1], target=0x3FEE
3FEB  15 AB 17                               JMP                           target=0x17AB
3FEE  3F 61 74 2E 67 72 76 00                LOADSCRIPT                    filename="at.grv"
3FF6  2C AB 17 08                            SET_HOTSPOT_TOP               target=0x17AB, cursor=0x08
3FFA  2D 00 00 00                            SET_HOTSPOT_BOTTOM            target=0x0000, cursor=0x00
3FFE  44 00 00                               SET_HOTSPOT_RIGHT             target=0x0000
4001  45 00 00                               SET_HOTSPOT_LEFT              target=0x0000
4004  1A 02 01 B0 0F 40                      STRCMP_NE_JMP                 start=v[0x102], values=[0], target=0x400F
400A  17 00                                  RET                           value=0x00
400C  15 18 40                               JMP                           target=0x4018
400F  1A 02 01 B1 18 40                      STRCMP_NE_JMP                 start=v[0x102], values=[1], target=0x4018
4015  15 AB 17                               JMP                           target=0x17AB
4018  3F 6C 69 2E 67 72 76 00                LOADSCRIPT                    filename="li.grv"
4020  2C AB 17 08                            SET_HOTSPOT_TOP               target=0x17AB, cursor=0x08
4024  2D 00 00 00                            SET_HOTSPOT_BOTTOM            target=0x0000, cursor=0x00
4028  44 00 00                               SET_HOTSPOT_RIGHT             target=0x0000
402B  45 00 00                               SET_HOTSPOT_LEFT              target=0x0000
402E  1A 02 01 B0 39 40                      STRCMP_NE_JMP                 start=v[0x102], values=[0], target=0x4039
4034  17 00                                  RET                           value=0x00
4036  15 42 40                               JMP                           target=0x4042
4039  1A 02 01 B1 42 40                      STRCMP_NE_JMP                 start=v[0x102], values=[1], target=0x4042
403F  15 AB 17                               JMP                           target=0x17AB
4042  3F 68 2E 67 72 76 00                   LOADSCRIPT                    filename="h.grv"
4049  2C AB 17 08                            SET_HOTSPOT_TOP               target=0x17AB, cursor=0x08
404D  2D 00 00 00                            SET_HOTSPOT_BOTTOM            target=0x0000, cursor=0x00
4051  44 00 00                               SET_HOTSPOT_RIGHT             target=0x0000
4054  45 00 00                               SET_HOTSPOT_LEFT              target=0x0000
4057  1A 02 01 B0 62 40                      STRCMP_NE_JMP                 start=v[0x102], values=[0], target=0x4062
405D  17 00                                  RET                           value=0x00
405F  15 6B 40                               JMP                           target=0x406B
4062  1A 02 01 B1 6B 40                      STRCMP_NE_JMP                 start=v[0x102], values=[1], target=0x406B
4068  15 AB 17                               JMP                           target=0x17AB
406B  3F 63 68 2E 67 72 76 00                LOADSCRIPT                    filename="ch.grv"
4073  2C AB 17 08                            SET_HOTSPOT_TOP               target=0x17AB, cursor=0x08
4077  2D 00 00 00                            SET_HOTSPOT_BOTTOM            target=0x0000, cursor=0x00
407B  44 00 00                               SET_HOTSPOT_RIGHT             target=0x0000
407E  45 00 00                               SET_HOTSPOT_LEFT              target=0x0000
4081  1A 02 01 B0 8C 40                      STRCMP_NE_JMP                 start=v[0x102], values=[0], target=0x408C
4087  17 00                                  RET                           value=0x00
4089  15 95 40                               JMP                           target=0x4095
408C  1A 02 01 B1 95 40                      STRCMP_NE_JMP                 start=v[0x102], values=[1], target=0x4095
4092  15 AB 17                               JMP                           target=0x17AB
4095  3F 68 6D 2E 67 72 76 00                LOADSCRIPT                    filename="hm.grv"
409D  2C AB 17 08                            SET_HOTSPOT_TOP               target=0x17AB, cursor=0x08
40A1  2D 00 00 00                            SET_HOTSPOT_BOTTOM            target=0x0000, cursor=0x00
40A5  44 00 00                               SET_HOTSPOT_RIGHT             target=0x0000
40A8  45 00 00                               SET_HOTSPOT_LEFT              target=0x0000
40AB  1A 02 01 B0 B6 40                      STRCMP_NE_JMP                 start=v[0x102], values=[0], target=0x40B6
40B1  17 00                                  RET                           value=0x00
40B3  15 BF 40                               JMP                           target=0x40BF
40B6  1A 02 01 B1 BF 40                      STRCMP_NE_JMP                 start=v[0x102], values=[1], target=0x40BF
40BC  15 AB 17                               JMP                           target=0x17AB
40BF  3F 6C 61 2E 67 72 76 00                LOADSCRIPT                    filename="la.grv"
40C7  2C AB 17 08                            SET_HOTSPOT_TOP               target=0x17AB, cursor=0x08
40CB  2D 00 00 00                            SET_HOTSPOT_BOTTOM            target=0x0000, cursor=0x00
40CF  44 00 00                               SET_HOTSPOT_RIGHT             target=0x0000
40D2  45 00 00                               SET_HOTSPOT_LEFT              target=0x0000
40D5  1A 02 01 B0 E0 40                      STRCMP_NE_JMP                 start=v[0x102], values=[0], target=0x40E0
40DB  17 00                                  RET                           value=0x00
40DD  15 E9 40                               JMP                           target=0x40E9
40E0  1A 02 01 B1 E9 40                      STRCMP_NE_JMP                 start=v[0x102], values=[1], target=0x40E9
40E6  15 AB 17                               JMP                           target=0x17AB
; Native child-script handoff.  Trace 20260809-212141 entered DR.GRV+0000
; here, completed the entire cake puzzle, and resumed at 40F1 with v[102]=0.
40E9  3F 64 72 2E 67 72 76 00                LOADSCRIPT                    filename="dr.grv"
40F1  2C AB 17 08                            SET_HOTSPOT_TOP               target=0x17AB, cursor=0x08
40F5  2D 00 00 00                            SET_HOTSPOT_BOTTOM            target=0x0000, cursor=0x00
40F9  44 00 00                               SET_HOTSPOT_RIGHT             target=0x0000
40FC  45 00 00                               SET_HOTSPOT_LEFT              target=0x0000
40FF  1A 02 01 B0 0A 41                      STRCMP_NE_JMP                 start=v[0x102], values=[0], target=0x410A
4105  17 00                                  RET                           value=0x00
4107  15 13 41                               JMP                           target=0x4113
410A  1A 02 01 B1 13 41                      STRCMP_NE_JMP                 start=v[0x102], values=[1], target=0x4113
4110  15 AB 17                               JMP                           target=0x17AB
