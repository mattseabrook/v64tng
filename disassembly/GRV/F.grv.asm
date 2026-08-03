; T7G/F.GRV
; size=1349 sha256=09fb803e7fda01fc68b3a899ee329fe94cbda54c68f21f5c3ed33955753ef259
; instructions=354 input_loops=9

0000  02 0E 4C                               PLAYSONG                      ref=0x4C0E (XMI[14]=gu17.xmi)
0003  2C 31 05 08                            SET_HOTSPOT_TOP               target=0x0531, cursor=0x08
0007  2D 22 05 06                            SET_HOTSPOT_BOTTOM            target=0x0522, cursor=0x06
000B  45 FD 04                               SET_HOTSPOT_LEFT              target=0x04FD
000E  44 FD 04                               SET_HOTSPOT_RIGHT             target=0x04FD
0011  28 49 14                               RESERVED_28                   value=0x1449
0014  22                                     COPY_BG_TO_FG
0015  0A                                     VIDEOFLAG5_ON
0016  07                                     VIDEOFLAG7_ON
0017  46                                     RESOURCE_CONTEXT_SAVE
0018  09 07 50                               VIDEOREF                      ref=0x5007 (GAMWAV[7]=2_s_2.vdx)
001B  47                                     RESOURCE_CONTEXT_RESTORE
001C  22                                     COPY_BG_TO_FG
001D  96 00 30 30 30 30 30 30 30 30 B0       LOADSTRING                    dst=v[0x000], values=[0, 0, 0, 0, 0, 0, 0, 0, 0]
0028  96 12 B0                               LOADSTRING                    dst=v[0x012], values=[0]
002B  96 14 B0                               LOADSTRING                    dst=v[0x014], values=[0]
002E  16 03 01 B0                            LOADSTRING                    dst=v[0x103], values=[0]
0032  16 07 01 B0                            LOADSTRING                    dst=v[0x107], values=[0]
0036  36 03 01 B8 51 00                      CHAR_LESS_JMP                 start=v[0x103], values=[8], target=0x0051
003C  1A 07 01 B2 51 00                      STRCMP_NE_JMP                 start=v[0x107], values=[2], target=0x0051
0042  46                                     RESOURCE_CONTEXT_SAVE
0043  07                                     VIDEOFLAG7_ON
0044  0A                                     VIDEOFLAG5_ON
0045  09 04 50                               VIDEOREF                      ref=0x5004 (GAMWAV[4]=2_e_3.vdx)
0048  16 07 01 B3                            LOADSTRING                    dst=v[0x107], values=[3]
004C  16 03 01 B0                            LOADSTRING                    dst=v[0x103], values=[0]
0050  47                                     RESOURCE_CONTEXT_RESTORE
0051  36 03 01 B8 6C 00                      CHAR_LESS_JMP                 start=v[0x103], values=[8], target=0x006C
0057  1A 07 01 B1 6C 00                      STRCMP_NE_JMP                 start=v[0x107], values=[1], target=0x006C
005D  46                                     RESOURCE_CONTEXT_SAVE
005E  07                                     VIDEOFLAG7_ON
005F  0A                                     VIDEOFLAG5_ON
0060  09 05 50                               VIDEOREF                      ref=0x5005 (GAMWAV[5]=2_e_4.vdx)
0063  16 07 01 B2                            LOADSTRING                    dst=v[0x107], values=[2]
0067  16 03 01 B0                            LOADSTRING                    dst=v[0x103], values=[0]
006B  47                                     RESOURCE_CONTEXT_RESTORE
006C  36 03 01 B7 87 00                      CHAR_LESS_JMP                 start=v[0x103], values=[7], target=0x0087
0072  1A 07 01 B0 87 00                      STRCMP_NE_JMP                 start=v[0x107], values=[0], target=0x0087
0078  46                                     RESOURCE_CONTEXT_SAVE
0079  07                                     VIDEOFLAG7_ON
007A  0A                                     VIDEOFLAG5_ON
007B  09 08 50                               VIDEOREF                      ref=0x5008 (GAMWAV[8]=2_s_3.vdx)
007E  16 07 01 B1                            LOADSTRING                    dst=v[0x107], values=[1]
0082  16 03 01 B0                            LOADSTRING                    dst=v[0x103], values=[0]
0086  47                                     RESOURCE_CONTEXT_RESTORE
0087  9A 12 B7 8F 00                         STRCMP_NE_JMP                 start=v[0x012], values=[7], target=0x008F
008C  15 12 05                               JMP                           target=0x0512
008F  96 14 B0                               LOADSTRING                    dst=v[0x014], values=[0]
0092  9A 00 B0 A7 00                         STRCMP_NE_JMP                 start=v[0x000], values=[0], target=0x00A7
0097  9A 03 B0 9F 00                         STRCMP_NE_JMP                 start=v[0x003], values=[0], target=0x009F
009C  96 14 B1                               LOADSTRING                    dst=v[0x014], values=[1]
009F  9A 05 B0 A7 00                         STRCMP_NE_JMP                 start=v[0x005], values=[0], target=0x00A7
00A4  96 14 B1                               LOADSTRING                    dst=v[0x014], values=[1]
00A7  9A 01 B0 BC 00                         STRCMP_NE_JMP                 start=v[0x001], values=[0], target=0x00BC
00AC  9A 04 B0 B4 00                         STRCMP_NE_JMP                 start=v[0x004], values=[0], target=0x00B4
00B1  96 14 B1                               LOADSTRING                    dst=v[0x014], values=[1]
00B4  9A 06 B0 BC 00                         STRCMP_NE_JMP                 start=v[0x006], values=[0], target=0x00BC
00B9  96 14 B1                               LOADSTRING                    dst=v[0x014], values=[1]
00BC  9A 02 B0 D1 00                         STRCMP_NE_JMP                 start=v[0x002], values=[0], target=0x00D1
00C1  9A 07 B0 C9 00                         STRCMP_NE_JMP                 start=v[0x007], values=[0], target=0x00C9
00C6  96 14 B1                               LOADSTRING                    dst=v[0x014], values=[1]
00C9  9A 05 B0 D1 00                         STRCMP_NE_JMP                 start=v[0x005], values=[0], target=0x00D1
00CE  96 14 B1                               LOADSTRING                    dst=v[0x014], values=[1]
00D1  9A 03 B0 E6 00                         STRCMP_NE_JMP                 start=v[0x003], values=[0], target=0x00E6
00D6  9A 00 B0 DE 00                         STRCMP_NE_JMP                 start=v[0x000], values=[0], target=0x00DE
00DB  96 14 B1                               LOADSTRING                    dst=v[0x014], values=[1]
00DE  9A 06 B0 E6 00                         STRCMP_NE_JMP                 start=v[0x006], values=[0], target=0x00E6
00E3  96 14 B1                               LOADSTRING                    dst=v[0x014], values=[1]
00E6  9A 04 B0 FB 00                         STRCMP_NE_JMP                 start=v[0x004], values=[0], target=0x00FB
00EB  9A 01 B0 F3 00                         STRCMP_NE_JMP                 start=v[0x001], values=[0], target=0x00F3
00F0  96 14 B1                               LOADSTRING                    dst=v[0x014], values=[1]
00F3  9A 07 B0 FB 00                         STRCMP_NE_JMP                 start=v[0x007], values=[0], target=0x00FB
00F8  96 14 B1                               LOADSTRING                    dst=v[0x014], values=[1]
00FB  9A 05 B0 10 01                         STRCMP_NE_JMP                 start=v[0x005], values=[0], target=0x0110
0100  9A 02 B0 08 01                         STRCMP_NE_JMP                 start=v[0x002], values=[0], target=0x0108
0105  96 14 B1                               LOADSTRING                    dst=v[0x014], values=[1]
0108  9A 00 B0 10 01                         STRCMP_NE_JMP                 start=v[0x000], values=[0], target=0x0110
010D  96 14 B1                               LOADSTRING                    dst=v[0x014], values=[1]
0110  9A 06 B0 25 01                         STRCMP_NE_JMP                 start=v[0x006], values=[0], target=0x0125
0115  9A 01 B0 1D 01                         STRCMP_NE_JMP                 start=v[0x001], values=[0], target=0x011D
011A  96 14 B1                               LOADSTRING                    dst=v[0x014], values=[1]
011D  9A 03 B0 25 01                         STRCMP_NE_JMP                 start=v[0x003], values=[0], target=0x0125
0122  96 14 B1                               LOADSTRING                    dst=v[0x014], values=[1]
0125  9A 07 B0 3A 01                         STRCMP_NE_JMP                 start=v[0x007], values=[0], target=0x013A
012A  9A 02 B0 32 01                         STRCMP_NE_JMP                 start=v[0x002], values=[0], target=0x0132
012F  96 14 B1                               LOADSTRING                    dst=v[0x014], values=[1]
0132  9A 04 B0 3A 01                         STRCMP_NE_JMP                 start=v[0x004], values=[0], target=0x013A
0137  96 14 B1                               LOADSTRING                    dst=v[0x014], values=[1]
013A  9A 14 B0 42 01                         STRCMP_NE_JMP                 start=v[0x014], values=[0], target=0x0142
013F  15 05 05                               JMP                           target=0x0505
0142  07                                     VIDEOFLAG7_ON
0143  0B                                     INPUTLOOPSTART
0144  9A 00 B0 6B 01                         STRCMP_NE_JMP                 start=v[0x000], values=[0], target=0x016B
0149  9A 03 B0 5A 01                         STRCMP_NE_JMP                 start=v[0x003], values=[0], target=0x015A
014E  0D 23 01 63 00 4E 01 95 00 7D 02 09    HOTSPOT_RECT                  left=0x0123, top=0x0063, right=0x014E, bottom=0x0095, target=0x027D, cursor=0x09
015A  9A 05 B0 6B 01                         STRCMP_NE_JMP                 start=v[0x005], values=[0], target=0x016B
015F  0D 23 01 63 00 4E 01 95 00 7D 02 09    HOTSPOT_RECT                  left=0x0123, top=0x0063, right=0x014E, bottom=0x0095, target=0x027D, cursor=0x09
016B  9A 01 B0 92 01                         STRCMP_NE_JMP                 start=v[0x001], values=[0], target=0x0192
0170  9A 04 B0 81 01                         STRCMP_NE_JMP                 start=v[0x004], values=[0], target=0x0181
0175  0D CF 00 83 00 F9 00 B3 00 CD 02 09    HOTSPOT_RECT                  left=0x00CF, top=0x0083, right=0x00F9, bottom=0x00B3, target=0x02CD, cursor=0x09
0181  9A 06 B0 92 01                         STRCMP_NE_JMP                 start=v[0x006], values=[0], target=0x0192
0186  0D CF 00 83 00 F9 00 AA 00 CD 02 09    HOTSPOT_RECT                  left=0x00CF, top=0x0083, right=0x00F9, bottom=0x00AA, target=0x02CD, cursor=0x09
0192  9A 02 B0 B9 01                         STRCMP_NE_JMP                 start=v[0x002], values=[0], target=0x01B9
0197  9A 07 B0 A8 01                         STRCMP_NE_JMP                 start=v[0x007], values=[0], target=0x01A8
019C  0D A0 00 D1 00 DC 00 00 01 1D 03 09    HOTSPOT_RECT                  left=0x00A0, top=0x00D1, right=0x00DC, bottom=0x0100, target=0x031D, cursor=0x09
01A8  9A 05 B0 B9 01                         STRCMP_NE_JMP                 start=v[0x005], values=[0], target=0x01B9
01AD  0D A0 00 D1 00 DC 00 00 01 1D 03 09    HOTSPOT_RECT                  left=0x00A0, top=0x00D1, right=0x00DC, bottom=0x0100, target=0x031D, cursor=0x09
01B9  9A 03 B0 E0 01                         STRCMP_NE_JMP                 start=v[0x003], values=[0], target=0x01E0
01BE  9A 06 B0 CF 01                         STRCMP_NE_JMP                 start=v[0x006], values=[0], target=0x01CF
01C3  0D C6 00 24 01 F4 00 5D 01 6D 03 09    HOTSPOT_RECT                  left=0x00C6, top=0x0124, right=0x00F4, bottom=0x015D, target=0x036D, cursor=0x09
01CF  9A 00 B0 E0 01                         STRCMP_NE_JMP                 start=v[0x000], values=[0], target=0x01E0
01D4  0D C6 00 24 01 F4 00 5D 01 6D 03 09    HOTSPOT_RECT                  left=0x00C6, top=0x0124, right=0x00F4, bottom=0x015D, target=0x036D, cursor=0x09
01E0  9A 04 B0 07 02                         STRCMP_NE_JMP                 start=v[0x004], values=[0], target=0x0207
01E5  9A 01 B0 F6 01                         STRCMP_NE_JMP                 start=v[0x001], values=[0], target=0x01F6
01EA  0D 13 01 40 01 49 01 7A 01 BD 03 09    HOTSPOT_RECT                  left=0x0113, top=0x0140, right=0x0149, bottom=0x017A, target=0x03BD, cursor=0x09
01F6  9A 07 B0 07 02                         STRCMP_NE_JMP                 start=v[0x007], values=[0], target=0x0207
01FB  0D 13 01 40 01 49 01 7A 01 BD 03 09    HOTSPOT_RECT                  left=0x0113, top=0x0140, right=0x0149, bottom=0x017A, target=0x03BD, cursor=0x09
0207  9A 05 B0 2E 02                         STRCMP_NE_JMP                 start=v[0x005], values=[0], target=0x022E
020C  9A 02 B0 1D 02                         STRCMP_NE_JMP                 start=v[0x002], values=[0], target=0x021D
0211  0D 79 01 26 01 AC 01 5D 01 0D 04 09    HOTSPOT_RECT                  left=0x0179, top=0x0126, right=0x01AC, bottom=0x015D, target=0x040D, cursor=0x09
021D  9A 00 B0 2E 02                         STRCMP_NE_JMP                 start=v[0x000], values=[0], target=0x022E
0222  0D 15 01 26 01 AC 01 5D 01 0D 04 09    HOTSPOT_RECT                  left=0x0115, top=0x0126, right=0x01AC, bottom=0x015D, target=0x040D, cursor=0x09
022E  9A 06 B0 55 02                         STRCMP_NE_JMP                 start=v[0x006], values=[0], target=0x0255
0233  9A 03 B0 44 02                         STRCMP_NE_JMP                 start=v[0x003], values=[0], target=0x0244
0238  0D 99 01 D1 00 CC 01 06 01 5D 04 09    HOTSPOT_RECT                  left=0x0199, top=0x00D1, right=0x01CC, bottom=0x0106, target=0x045D, cursor=0x09
0244  9A 01 B0 55 02                         STRCMP_NE_JMP                 start=v[0x001], values=[0], target=0x0255
0249  0D 99 01 D1 00 CC 01 06 01 5D 04 09    HOTSPOT_RECT                  left=0x0199, top=0x00D1, right=0x01CC, bottom=0x0106, target=0x045D, cursor=0x09
0255  9A 07 B0 7C 02                         STRCMP_NE_JMP                 start=v[0x007], values=[0], target=0x027C
025A  9A 04 B0 6B 02                         STRCMP_NE_JMP                 start=v[0x004], values=[0], target=0x026B
025F  0D 74 01 7F 00 A9 01 B8 00 AD 04 09    HOTSPOT_RECT                  left=0x0174, top=0x007F, right=0x01A9, bottom=0x00B8, target=0x04AD, cursor=0x09
026B  9A 02 B0 7C 02                         STRCMP_NE_JMP                 start=v[0x002], values=[0], target=0x027C
0270  0D 74 01 7F 00 A9 01 B8 00 AD 04 09    HOTSPOT_RECT                  left=0x0174, top=0x007F, right=0x01A9, bottom=0x00B8, target=0x04AD, cursor=0x09
027C  13                                     INPUTLOOPEND
027D  9A 03 B0 B2 02                         STRCMP_NE_JMP                 start=v[0x003], values=[0], target=0x02B2
0282  9A 05 B0 AC 02                         STRCMP_NE_JMP                 start=v[0x005], values=[0], target=0x02AC
0287  07                                     VIDEOFLAG7_ON
0288  09 19 14                               VIDEOREF                      ref=0x1419 (FH[25]=foy_spa.vdx)
028B  07                                     VIDEOFLAG7_ON
028C  09 8E 50                               VIDEOREF                      ref=0x508E (GAMWAV[142]=gen_e_8.vdx)
028F  0B                                     INPUTLOOPSTART
0290  0D C6 00 24 01 F4 00 5D 01 B5 02 0A    HOTSPOT_RECT                  left=0x00C6, top=0x0124, right=0x00F4, bottom=0x015D, target=0x02B5, cursor=0x0A
029C  0D 79 01 26 01 AC 01 5D 01 C1 02 0A    HOTSPOT_RECT                  left=0x0179, top=0x0126, right=0x01AC, bottom=0x015D, target=0x02C1, cursor=0x0A
02A8  13                                     INPUTLOOPEND
02A9  15 AF 02                               JMP                           target=0x02AF
02AC  15 B5 02                               JMP                           target=0x02B5
02AF  15 B5 02                               JMP                           target=0x02B5
02B2  15 C1 02                               JMP                           target=0x02C1
02B5  07                                     VIDEOFLAG7_ON
02B6  09 49 14                               VIDEOREF                      ref=0x1449 (FH[73]=f_a_d.vdx)
02B9  96 03 B1                               LOADSTRING                    dst=v[0x003], values=[1]
02BC  9F 12                                  INC                           var=v[0x012]
02BE  15 36 00                               JMP                           target=0x0036
02C1  07                                     VIDEOFLAG7_ON
02C2  09 4A 14                               VIDEOREF                      ref=0x144A (FH[74]=f_a_f.vdx)
02C5  96 05 B1                               LOADSTRING                    dst=v[0x005], values=[1]
02C8  9F 12                                  INC                           var=v[0x012]
02CA  15 36 00                               JMP                           target=0x0036
02CD  9A 04 B0 02 03                         STRCMP_NE_JMP                 start=v[0x004], values=[0], target=0x0302
02D2  9A 06 B0 FC 02                         STRCMP_NE_JMP                 start=v[0x006], values=[0], target=0x02FC
02D7  07                                     VIDEOFLAG7_ON
02D8  09 1A 14                               VIDEOREF                      ref=0x141A (FH[26]=foy_spb.vdx)
02DB  07                                     VIDEOFLAG7_ON
02DC  09 8E 50                               VIDEOREF                      ref=0x508E (GAMWAV[142]=gen_e_8.vdx)
02DF  0B                                     INPUTLOOPSTART
02E0  0D 1D 01 4A 01 53 01 84 01 05 03 0A    HOTSPOT_RECT                  left=0x011D, top=0x014A, right=0x0153, bottom=0x0184, target=0x0305, cursor=0x0A
02EC  0D 99 01 D1 00 CC 01 06 01 11 03 0A    HOTSPOT_RECT                  left=0x0199, top=0x00D1, right=0x01CC, bottom=0x0106, target=0x0311, cursor=0x0A
02F8  13                                     INPUTLOOPEND
02F9  15 FF 02                               JMP                           target=0x02FF
02FC  15 05 03                               JMP                           target=0x0305
02FF  15 05 03                               JMP                           target=0x0305
0302  15 11 03                               JMP                           target=0x0311
0305  96 04 B1                               LOADSTRING                    dst=v[0x004], values=[1]
0308  07                                     VIDEOFLAG7_ON
0309  09 4B 14                               VIDEOREF                      ref=0x144B (FH[75]=f_b_e.vdx)
030C  9F 12                                  INC                           var=v[0x012]
030E  15 36 00                               JMP                           target=0x0036
0311  96 06 B1                               LOADSTRING                    dst=v[0x006], values=[1]
0314  07                                     VIDEOFLAG7_ON
0315  09 4C 14                               VIDEOREF                      ref=0x144C (FH[76]=f_b_g.vdx)
0318  9F 12                                  INC                           var=v[0x012]
031A  15 36 00                               JMP                           target=0x0036
031D  9A 07 B0 52 03                         STRCMP_NE_JMP                 start=v[0x007], values=[0], target=0x0352
0322  9A 05 B0 4C 03                         STRCMP_NE_JMP                 start=v[0x005], values=[0], target=0x034C
0327  07                                     VIDEOFLAG7_ON
0328  09 1B 14                               VIDEOREF                      ref=0x141B (FH[27]=foy_spc.vdx)
032B  07                                     VIDEOFLAG7_ON
032C  09 8E 50                               VIDEOREF                      ref=0x508E (GAMWAV[142]=gen_e_8.vdx)
032F  0B                                     INPUTLOOPSTART
0330  0D 74 01 7F 00 A9 01 B8 00 55 03 0A    HOTSPOT_RECT                  left=0x0174, top=0x007F, right=0x01A9, bottom=0x00B8, target=0x0355, cursor=0x0A
033C  0D 79 01 26 01 AC 01 5D 01 61 03 0A    HOTSPOT_RECT                  left=0x0179, top=0x0126, right=0x01AC, bottom=0x015D, target=0x0361, cursor=0x0A
0348  13                                     INPUTLOOPEND
0349  15 4F 03                               JMP                           target=0x034F
034C  15 55 03                               JMP                           target=0x0355
034F  15 55 03                               JMP                           target=0x0355
0352  15 61 03                               JMP                           target=0x0361
0355  96 07 B1                               LOADSTRING                    dst=v[0x007], values=[1]
0358  07                                     VIDEOFLAG7_ON
0359  09 4E 14                               VIDEOREF                      ref=0x144E (FH[78]=f_c_h.vdx)
035C  9F 12                                  INC                           var=v[0x012]
035E  15 36 00                               JMP                           target=0x0036
0361  96 05 B1                               LOADSTRING                    dst=v[0x005], values=[1]
0364  07                                     VIDEOFLAG7_ON
0365  09 4D 14                               VIDEOREF                      ref=0x144D (FH[77]=f_c_f.vdx)
0368  9F 12                                  INC                           var=v[0x012]
036A  15 36 00                               JMP                           target=0x0036
036D  9A 06 B0 A2 03                         STRCMP_NE_JMP                 start=v[0x006], values=[0], target=0x03A2
0372  9A 00 B0 9C 03                         STRCMP_NE_JMP                 start=v[0x000], values=[0], target=0x039C
0377  07                                     VIDEOFLAG7_ON
0378  09 1C 14                               VIDEOREF                      ref=0x141C (FH[28]=foy_spd.vdx)
037B  07                                     VIDEOFLAG7_ON
037C  09 8E 50                               VIDEOREF                      ref=0x508E (GAMWAV[142]=gen_e_8.vdx)
037F  0B                                     INPUTLOOPSTART
0380  0D 23 01 63 00 4E 01 95 00 A5 03 0A    HOTSPOT_RECT                  left=0x0123, top=0x0063, right=0x014E, bottom=0x0095, target=0x03A5, cursor=0x0A
038C  0D 99 01 D1 00 CC 01 06 01 B1 03 0A    HOTSPOT_RECT                  left=0x0199, top=0x00D1, right=0x01CC, bottom=0x0106, target=0x03B1, cursor=0x0A
0398  13                                     INPUTLOOPEND
0399  15 9F 03                               JMP                           target=0x039F
039C  15 B1 03                               JMP                           target=0x03B1
039F  15 A5 03                               JMP                           target=0x03A5
03A2  15 A5 03                               JMP                           target=0x03A5
03A5  96 00 B1                               LOADSTRING                    dst=v[0x000], values=[1]
03A8  07                                     VIDEOFLAG7_ON
03A9  09 4F 14                               VIDEOREF                      ref=0x144F (FH[79]=f_d_a.vdx)
03AC  9F 12                                  INC                           var=v[0x012]
03AE  15 36 00                               JMP                           target=0x0036
03B1  96 06 B1                               LOADSTRING                    dst=v[0x006], values=[1]
03B4  07                                     VIDEOFLAG7_ON
03B5  09 50 14                               VIDEOREF                      ref=0x1450 (FH[80]=f_d_g.vdx)
03B8  9F 12                                  INC                           var=v[0x012]
03BA  15 36 00                               JMP                           target=0x0036
03BD  9A 01 B0 F2 03                         STRCMP_NE_JMP                 start=v[0x001], values=[0], target=0x03F2
03C2  9A 07 B0 EC 03                         STRCMP_NE_JMP                 start=v[0x007], values=[0], target=0x03EC
03C7  07                                     VIDEOFLAG7_ON
03C8  09 1D 14                               VIDEOREF                      ref=0x141D (FH[29]=foy_spe.vdx)
03CB  07                                     VIDEOFLAG7_ON
03CC  09 8E 50                               VIDEOREF                      ref=0x508E (GAMWAV[142]=gen_e_8.vdx)
03CF  0B                                     INPUTLOOPSTART
03D0  0D CF 00 83 00 F9 00 B3 00 F5 03 0A    HOTSPOT_RECT                  left=0x00CF, top=0x0083, right=0x00F9, bottom=0x00B3, target=0x03F5, cursor=0x0A
03DC  0D 74 01 7F 00 A9 01 B8 00 01 04 0A    HOTSPOT_RECT                  left=0x0174, top=0x007F, right=0x01A9, bottom=0x00B8, target=0x0401, cursor=0x0A
03E8  13                                     INPUTLOOPEND
03E9  15 EF 03                               JMP                           target=0x03EF
03EC  15 F5 03                               JMP                           target=0x03F5
03EF  15 F5 03                               JMP                           target=0x03F5
03F2  15 01 04                               JMP                           target=0x0401
03F5  96 01 B1                               LOADSTRING                    dst=v[0x001], values=[1]
03F8  07                                     VIDEOFLAG7_ON
03F9  09 51 14                               VIDEOREF                      ref=0x1451 (FH[81]=f_e_b.vdx)
03FC  9F 12                                  INC                           var=v[0x012]
03FE  15 36 00                               JMP                           target=0x0036
0401  96 07 B1                               LOADSTRING                    dst=v[0x007], values=[1]
0404  07                                     VIDEOFLAG7_ON
0405  09 52 14                               VIDEOREF                      ref=0x1452 (FH[82]=f_e_h.vdx)
0408  9F 12                                  INC                           var=v[0x012]
040A  15 36 00                               JMP                           target=0x0036
040D  9A 00 B0 42 04                         STRCMP_NE_JMP                 start=v[0x000], values=[0], target=0x0442
0412  9A 02 B0 3C 04                         STRCMP_NE_JMP                 start=v[0x002], values=[0], target=0x043C
0417  07                                     VIDEOFLAG7_ON
0418  09 1E 14                               VIDEOREF                      ref=0x141E (FH[30]=foy_spf.vdx)
041B  07                                     VIDEOFLAG7_ON
041C  09 8E 50                               VIDEOREF                      ref=0x508E (GAMWAV[142]=gen_e_8.vdx)
041F  0B                                     INPUTLOOPSTART
0420  0D 23 01 63 00 4E 01 95 00 45 04 0A    HOTSPOT_RECT                  left=0x0123, top=0x0063, right=0x014E, bottom=0x0095, target=0x0445, cursor=0x0A
042C  0D A0 00 D1 00 DC 00 00 01 51 04 0A    HOTSPOT_RECT                  left=0x00A0, top=0x00D1, right=0x00DC, bottom=0x0100, target=0x0451, cursor=0x0A
0438  13                                     INPUTLOOPEND
0439  15 3F 04                               JMP                           target=0x043F
043C  15 45 04                               JMP                           target=0x0445
043F  15 45 04                               JMP                           target=0x0445
0442  15 51 04                               JMP                           target=0x0451
0445  96 00 B1                               LOADSTRING                    dst=v[0x000], values=[1]
0448  07                                     VIDEOFLAG7_ON
0449  09 53 14                               VIDEOREF                      ref=0x1453 (FH[83]=f_f_a.vdx)
044C  9F 12                                  INC                           var=v[0x012]
044E  15 36 00                               JMP                           target=0x0036
0451  96 02 B1                               LOADSTRING                    dst=v[0x002], values=[1]
0454  07                                     VIDEOFLAG7_ON
0455  09 54 14                               VIDEOREF                      ref=0x1454 (FH[84]=f_f_c.vdx)
0458  9F 12                                  INC                           var=v[0x012]
045A  15 36 00                               JMP                           target=0x0036
045D  9A 01 B0 92 04                         STRCMP_NE_JMP                 start=v[0x001], values=[0], target=0x0492
0462  9A 03 B0 8C 04                         STRCMP_NE_JMP                 start=v[0x003], values=[0], target=0x048C
0467  07                                     VIDEOFLAG7_ON
0468  09 1F 14                               VIDEOREF                      ref=0x141F (FH[31]=foy_spg.vdx)
046B  07                                     VIDEOFLAG7_ON
046C  09 8E 50                               VIDEOREF                      ref=0x508E (GAMWAV[142]=gen_e_8.vdx)
046F  0B                                     INPUTLOOPSTART
0470  0D CF 00 83 00 F9 00 B3 00 95 04 0A    HOTSPOT_RECT                  left=0x00CF, top=0x0083, right=0x00F9, bottom=0x00B3, target=0x0495, cursor=0x0A
047C  0D C6 00 24 01 F4 00 5D 01 A1 04 0A    HOTSPOT_RECT                  left=0x00C6, top=0x0124, right=0x00F4, bottom=0x015D, target=0x04A1, cursor=0x0A
0488  13                                     INPUTLOOPEND
0489  15 8F 04                               JMP                           target=0x048F
048C  15 95 04                               JMP                           target=0x0495
048F  15 95 04                               JMP                           target=0x0495
0492  15 A1 04                               JMP                           target=0x04A1
0495  96 01 B1                               LOADSTRING                    dst=v[0x001], values=[1]
0498  07                                     VIDEOFLAG7_ON
0499  09 55 14                               VIDEOREF                      ref=0x1455 (FH[85]=f_g_b.vdx)
049C  9F 12                                  INC                           var=v[0x012]
049E  15 36 00                               JMP                           target=0x0036
04A1  96 03 B1                               LOADSTRING                    dst=v[0x003], values=[1]
04A4  07                                     VIDEOFLAG7_ON
04A5  09 56 14                               VIDEOREF                      ref=0x1456 (FH[86]=f_g_d.vdx)
04A8  9F 12                                  INC                           var=v[0x012]
04AA  15 36 00                               JMP                           target=0x0036
04AD  9A 02 B0 E2 04                         STRCMP_NE_JMP                 start=v[0x002], values=[0], target=0x04E2
04B2  9A 04 B0 DC 04                         STRCMP_NE_JMP                 start=v[0x004], values=[0], target=0x04DC
04B7  07                                     VIDEOFLAG7_ON
04B8  09 20 14                               VIDEOREF                      ref=0x1420 (FH[32]=foy_sph.vdx)
04BB  07                                     VIDEOFLAG7_ON
04BC  09 8E 50                               VIDEOREF                      ref=0x508E (GAMWAV[142]=gen_e_8.vdx)
04BF  0B                                     INPUTLOOPSTART
04C0  0D A0 00 D1 00 DC 00 00 01 E5 04 0A    HOTSPOT_RECT                  left=0x00A0, top=0x00D1, right=0x00DC, bottom=0x0100, target=0x04E5, cursor=0x0A
04CC  0D 1D 01 4A 01 53 01 84 01 F1 04 0A    HOTSPOT_RECT                  left=0x011D, top=0x014A, right=0x0153, bottom=0x0184, target=0x04F1, cursor=0x0A
04D8  13                                     INPUTLOOPEND
04D9  15 DF 04                               JMP                           target=0x04DF
04DC  15 E5 04                               JMP                           target=0x04E5
04DF  15 E5 04                               JMP                           target=0x04E5
04E2  15 F1 04                               JMP                           target=0x04F1
04E5  96 02 B1                               LOADSTRING                    dst=v[0x002], values=[1]
04E8  07                                     VIDEOFLAG7_ON
04E9  09 57 14                               VIDEOREF                      ref=0x1457 (FH[87]=f_h_c.vdx)
04EC  9F 12                                  INC                           var=v[0x012]
04EE  15 36 00                               JMP                           target=0x0036
04F1  96 04 B1                               LOADSTRING                    dst=v[0x004], values=[1]
04F4  07                                     VIDEOFLAG7_ON
04F5  09 58 14                               VIDEOREF                      ref=0x1458 (FH[88]=f_h_e.vdx)
04F8  9F 12                                  INC                           var=v[0x012]
04FA  15 36 00                               JMP                           target=0x0036
04FD  1C 05 14                               VIDEO_TRANSITION_REF          ref=0x1405 (FH[5]=f1_pb.vdx)
0500  18 33 05                               CALL                          target=0x0533
0503  43 00                                  RETURNSCRIPT                  value=0x00
0505  07                                     VIDEOFLAG7_ON
0506  09 8A 50                               VIDEOREF                      ref=0x508A (GAMWAV[138]=gen_e_4.vdx)
0509  1C 05 14                               VIDEO_TRANSITION_REF          ref=0x1405 (FH[5]=f1_pb.vdx)
050C  18 33 05                               CALL                          target=0x0533
050F  15 1D 00                               JMP                           target=0x001D
0512  1C 05 14                               VIDEO_TRANSITION_REF          ref=0x1405 (FH[5]=f1_pb.vdx)
0515  18 33 05                               CALL                          target=0x0533
0518  07                                     VIDEOFLAG7_ON
0519  09 99 50                               VIDEOREF                      ref=0x5099 (GAMWAV[153]=gen_s_2.vdx)
051C  22                                     COPY_BG_TO_FG
051D  96 FB E1                               LOADSTRING                    dst=v[0x0FB], values=[49]
0520  43 00                                  RETURNSCRIPT                  value=0x00
0522  07                                     VIDEOFLAG7_ON
0523  09 8B 50                               VIDEOREF                      ref=0x508B (GAMWAV[139]=gen_e_5.vdx)
0526  1C 05 14                               VIDEO_TRANSITION_REF          ref=0x1405 (FH[5]=f1_pb.vdx)
0529  18 33 05                               CALL                          target=0x0533
052C  15 1D 00                               JMP                           target=0x001D
052F  43 00                                  RETURNSCRIPT                  value=0x00
0531  43 01                                  RETURNSCRIPT                  value=0x01
0533  0A                                     VIDEOFLAG5_ON
0534  07                                     VIDEOFLAG7_ON
0535  46                                     RESOURCE_CONTEXT_SAVE
0536  09 01 24                               VIDEOREF                      ref=0x2401 (INTRO[1]=fade.vdx)
0539  37 00 00 50 00 7F 02 8F 01             COPY_RECT_TO_BG               left=0x0000, top=0x0050, right=0x027F, bottom=0x018F
0542  47                                     RESOURCE_CONTEXT_RESTORE
0543  17 00                                  RET                           value=0x00
