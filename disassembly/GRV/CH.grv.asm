; T7G/CH.GRV
; size=7365 sha256=b689035a1f02648d153c1f513e6151b8013fce0f7f4399abf383b8f14c5bc2c6
; instructions=1778 input_loops=29

0000  96 92 31 B0                            LOADSTRING                    dst=v[0x092], values=[1, 0]
0004  9A F3 B4 0C 00                         STRCMP_NE_JMP                 start=v[0x0F3], values=[4], target=0x000C
0009  96 F3 B5                               LOADSTRING                    dst=v[0x0F3], values=[5]
000C  9A F3 B2 14 00                         STRCMP_NE_JMP                 start=v[0x0F3], values=[2], target=0x0014
0011  96 F3 B3                               LOADSTRING                    dst=v[0x0F3], values=[3]
0014  9A F3 B0 1C 00                         STRCMP_NE_JMP                 start=v[0x0F3], values=[0], target=0x001C
0019  96 F3 B1                               LOADSTRING                    dst=v[0x0F3], values=[1]
001C  28 00 00                               RESERVED_28                   value=0x0000
001F  2C B1 1C 08                            SET_HOTSPOT_TOP               target=0x1CB1, cursor=0x08
0023  2D 9D 1C 06                            SET_HOTSPOT_BOTTOM            target=0x1C9D, cursor=0x06
0027  44 8B 1C                               SET_HOTSPOT_RIGHT             target=0x1C8B
002A  45 8B 1C                               SET_HOTSPOT_LEFT              target=0x1C8B
002D  16 03 01 B0                            LOADSTRING                    dst=v[0x103], values=[0]
0031  46                                     RESOURCE_CONTEXT_SAVE
0032  07                                     VIDEOFLAG7_ON
0033  09 3E 50                               VIDEOREF                      ref=0x503E (GAMWAV[62]=9_s_1.vdx)
0036  47                                     RESOURCE_CONTEXT_RESTORE
0037  22                                     COPY_BG_TO_FG
0038  96 1A 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 B0 LOADSTRING                    dst=v[0x01A], values=[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
0059  16 07 01 B3                            LOADSTRING                    dst=v[0x107], values=[3]
005D  16 08 01 B3                            LOADSTRING                    dst=v[0x108], values=[3]
0061  16 09 01 B1                            LOADSTRING                    dst=v[0x109], values=[1]
0065  16 0A 01 B2                            LOADSTRING                    dst=v[0x10A], values=[2]
0069  16 0B 01 B1                            LOADSTRING                    dst=v[0x10B], values=[1]
006D  16 0C 01 B2                            LOADSTRING                    dst=v[0x10C], values=[2]
0071  16 0D 01 B0                            LOADSTRING                    dst=v[0x10D], values=[0]
0075  16 0E 01 B2                            LOADSTRING                    dst=v[0x10E], values=[2]
0079  16 0F 01 B1                            LOADSTRING                    dst=v[0x10F], values=[1]
007D  16 10 01 B3                            LOADSTRING                    dst=v[0x110], values=[3]
0081  16 11 01 B1                            LOADSTRING                    dst=v[0x111], values=[1]
0085  16 12 01 B3                            LOADSTRING                    dst=v[0x112], values=[3]
0089  16 13 01 B1                            LOADSTRING                    dst=v[0x113], values=[1]
008D  16 14 01 B1                            LOADSTRING                    dst=v[0x114], values=[1]
0091  16 15 01 B1                            LOADSTRING                    dst=v[0x115], values=[1]
0095  16 16 01 B1                            LOADSTRING                    dst=v[0x116], values=[1]
0099  16 17 01 B3                            LOADSTRING                    dst=v[0x117], values=[3]
009D  16 18 01 B2                            LOADSTRING                    dst=v[0x118], values=[2]
00A1  16 19 01 B3                            LOADSTRING                    dst=v[0x119], values=[3]
00A5  16 1A 01 B3                            LOADSTRING                    dst=v[0x11A], values=[3]
00A9  16 1B 01 B3                            LOADSTRING                    dst=v[0x11B], values=[3]
00AD  16 1C 01 B2                            LOADSTRING                    dst=v[0x11C], values=[2]
00B1  16 1D 01 B3                            LOADSTRING                    dst=v[0x11D], values=[3]
00B5  16 1E 01 B3                            LOADSTRING                    dst=v[0x11E], values=[3]
00B9  16 1F 01 B3                            LOADSTRING                    dst=v[0x11F], values=[3]
00BD  16 20 01 B2                            LOADSTRING                    dst=v[0x120], values=[2]
00C1  16 21 01 B2                            LOADSTRING                    dst=v[0x121], values=[2]
00C5  16 22 01 B1                            LOADSTRING                    dst=v[0x122], values=[1]
00C9  16 23 01 B2                            LOADSTRING                    dst=v[0x123], values=[2]
00CD  16 24 01 B1                            LOADSTRING                    dst=v[0x124], values=[1]
00D1  16 25 01 B1                            LOADSTRING                    dst=v[0x125], values=[1]
00D5  96 00 B0                               LOADSTRING                    dst=v[0x000], values=[0]
00D8  96 01 B0                               LOADSTRING                    dst=v[0x001], values=[0]
00DB  16 26 01 B0                            LOADSTRING                    dst=v[0x126], values=[0]
00DF  16 27 01 B0                            LOADSTRING                    dst=v[0x127], values=[0]
00E3  96 02 30 B0                            LOADSTRING                    dst=v[0x002], values=[0, 0]
00E7  96 37 B2                               LOADSTRING                    dst=v[0x037], values=[2]
00EA  1C 50 08                               VIDEO_TRANSITION_REF          ref=0x0850 (CH[80]=chpuzb.vdx)
00ED  9C 43 08                               VIDEO_TRANSITION_REF          ref=0x0843 (CH[67]=chpuz25_.vdx)
00F0  09 4D 08                               VIDEOREF                      ref=0x084D (CH[77]=chpuz30_.vdx)
00F3  16 27 01 B1                            LOADSTRING                    dst=v[0x127], values=[1]
00F7  16 28 01 B0                            LOADSTRING                    dst=v[0x128], values=[0]
00FB  36 03 01 B9 15 01                      CHAR_LESS_JMP                 start=v[0x103], values=[9], target=0x0115
0101  07                                     VIDEOFLAG7_ON
0102  1A 28 01 B2 15 01                      STRCMP_NE_JMP                 start=v[0x128], values=[2], target=0x0115
0108  46                                     RESOURCE_CONTEXT_SAVE
0109  16 28 01 B3                            LOADSTRING                    dst=v[0x128], values=[3]
010D  09 3C 50                               VIDEOREF                      ref=0x503C (GAMWAV[60]=9_e_1.vdx)
0110  16 03 01 B0                            LOADSTRING                    dst=v[0x103], values=[0]
0114  47                                     RESOURCE_CONTEXT_RESTORE
0115  36 03 01 B9 2F 01                      CHAR_LESS_JMP                 start=v[0x103], values=[9], target=0x012F
011B  07                                     VIDEOFLAG7_ON
011C  1A 28 01 B1 2F 01                      STRCMP_NE_JMP                 start=v[0x128], values=[1], target=0x012F
0122  46                                     RESOURCE_CONTEXT_SAVE
0123  16 28 01 B2                            LOADSTRING                    dst=v[0x128], values=[2]
0127  09 1D 50                               VIDEOREF                      ref=0x501D (GAMWAV[29]=6_e_3.vdx)
012A  16 03 01 B0                            LOADSTRING                    dst=v[0x103], values=[0]
012E  47                                     RESOURCE_CONTEXT_RESTORE
012F  36 03 01 B9 49 01                      CHAR_LESS_JMP                 start=v[0x103], values=[9], target=0x0149
0135  07                                     VIDEOFLAG7_ON
0136  1A 28 01 B0 49 01                      STRCMP_NE_JMP                 start=v[0x128], values=[0], target=0x0149
013C  46                                     RESOURCE_CONTEXT_SAVE
013D  16 28 01 B1                            LOADSTRING                    dst=v[0x128], values=[1]
0141  09 3D 50                               VIDEOREF                      ref=0x503D (GAMWAV[61]=9_e_2.vdx)
0144  16 03 01 B0                            LOADSTRING                    dst=v[0x103], values=[0]
0148  47                                     RESOURCE_CONTEXT_RESTORE
0149  22                                     COPY_BG_TO_FG
014A  20 27 01                               DEC                           var=v[0x127]
014D  16 29 01 B0                            LOADSTRING                    dst=v[0x129], values=[0]
0151  9A 1A B2 7B 01                         STRCMP_NE_JMP                 start=v[0x01A], values=[2], target=0x017B
0156  96 1A B2                               LOADSTRING                    dst=v[0x01A], values=[2]
0159  18 A7 19                               CALL                          target=0x19A7
015C  1A 02 01 B1 65 01                      STRCMP_NE_JMP                 start=v[0x102], values=[1], target=0x0165
0162  15 9D 1C                               JMP                           target=0x1C9D
0165  96 1A B1                               LOADSTRING                    dst=v[0x01A], values=[1]
0168  0B                                     INPUTLOOPSTART
0169  9A 1B B0 7A 01                         STRCMP_NE_JMP                 start=v[0x01B], values=[0], target=0x017A
016E  0D C4 00 71 00 F4 00 8E 00 FE 0A 09    HOTSPOT_RECT                  left=0x00C4, top=0x0071, right=0x00F4, bottom=0x008E, target=0x0AFE, cursor=0x09
017A  13                                     INPUTLOOPEND
017B  9A 1B B2 D8 01                         STRCMP_NE_JMP                 start=v[0x01B], values=[2], target=0x01D8
0180  96 1B B2                               LOADSTRING                    dst=v[0x01B], values=[2]
0183  18 A7 19                               CALL                          target=0x19A7
0186  1A 02 01 B1 8F 01                      STRCMP_NE_JMP                 start=v[0x102], values=[1], target=0x018F
018C  15 9D 1C                               JMP                           target=0x1C9D
018F  96 1B B1                               LOADSTRING                    dst=v[0x01B], values=[1]
0192  0B                                     INPUTLOOPSTART
0193  9A 1A B0 A4 01                         STRCMP_NE_JMP                 start=v[0x01A], values=[0], target=0x01A4
0198  0D 94 00 64 00 C3 00 7F 00 E3 0A 09    HOTSPOT_RECT                  left=0x0094, top=0x0064, right=0x00C3, bottom=0x007F, target=0x0AE3, cursor=0x09
01A4  9A 1C B0 B5 01                         STRCMP_NE_JMP                 start=v[0x01C], values=[0], target=0x01B5
01A9  0D F8 00 62 00 28 01 7F 00 19 0B 09    HOTSPOT_RECT                  left=0x00F8, top=0x0062, right=0x0128, bottom=0x007F, target=0x0B19, cursor=0x09
01B5  9A 21 B0 C6 01                         STRCMP_NE_JMP                 start=v[0x021], values=[0], target=0x01C6
01BA  0D BE 00 8F 00 F0 00 AF 00 9E 0B 09    HOTSPOT_RECT                  left=0x00BE, top=0x008F, right=0x00F0, bottom=0x00AF, target=0x0B9E, cursor=0x09
01C6  9A 22 B0 D7 01                         STRCMP_NE_JMP                 start=v[0x022], values=[0], target=0x01D7
01CB  0D F5 00 7F 00 28 01 9E 00 B9 0B 09    HOTSPOT_RECT                  left=0x00F5, top=0x007F, right=0x0128, bottom=0x009E, target=0x0BB9, cursor=0x09
01D7  13                                     INPUTLOOPEND
01D8  9A 1C B2 24 02                         STRCMP_NE_JMP                 start=v[0x01C], values=[2], target=0x0224
01DD  96 1C B2                               LOADSTRING                    dst=v[0x01C], values=[2]
01E0  18 A7 19                               CALL                          target=0x19A7
01E3  1A 02 01 B1 EC 01                      STRCMP_NE_JMP                 start=v[0x102], values=[1], target=0x01EC
01E9  15 9D 1C                               JMP                           target=0x1C9D
01EC  96 1C B1                               LOADSTRING                    dst=v[0x01C], values=[1]
01EF  0B                                     INPUTLOOPSTART
01F0  9A 1B B0 01 02                         STRCMP_NE_JMP                 start=v[0x01B], values=[0], target=0x0201
01F5  0D C4 00 71 00 F4 00 8E 00 FE 0A 09    HOTSPOT_RECT                  left=0x00C4, top=0x0071, right=0x00F4, bottom=0x008E, target=0x0AFE, cursor=0x09
0201  9A 1D B0 12 02                         STRCMP_NE_JMP                 start=v[0x01D], values=[0], target=0x0212
0206  0D 2A 01 70 00 5B 01 8F 00 34 0B 09    HOTSPOT_RECT                  left=0x012A, top=0x0070, right=0x015B, bottom=0x008F, target=0x0B34, cursor=0x09
0212  9A 22 B0 23 02                         STRCMP_NE_JMP                 start=v[0x022], values=[0], target=0x0223
0217  0D F5 00 7F 00 28 01 9E 00 B9 0B 09    HOTSPOT_RECT                  left=0x00F5, top=0x007F, right=0x0128, bottom=0x009E, target=0x0BB9, cursor=0x09
0223  13                                     INPUTLOOPEND
0224  9A 1D B2 81 02                         STRCMP_NE_JMP                 start=v[0x01D], values=[2], target=0x0281
0229  96 1D B2                               LOADSTRING                    dst=v[0x01D], values=[2]
022C  18 A7 19                               CALL                          target=0x19A7
022F  1A 02 01 B1 38 02                      STRCMP_NE_JMP                 start=v[0x102], values=[1], target=0x0238
0235  15 9D 1C                               JMP                           target=0x1C9D
0238  96 1D B1                               LOADSTRING                    dst=v[0x01D], values=[1]
023B  0B                                     INPUTLOOPSTART
023C  9A 1C B0 4D 02                         STRCMP_NE_JMP                 start=v[0x01C], values=[0], target=0x024D
0241  0D F8 00 62 00 28 01 7F 00 19 0B 09    HOTSPOT_RECT                  left=0x00F8, top=0x0062, right=0x0128, bottom=0x007F, target=0x0B19, cursor=0x09
024D  9A 1E B0 5E 02                         STRCMP_NE_JMP                 start=v[0x01E], values=[0], target=0x025E
0252  0D 5C 01 64 00 8E 01 7F 00 4F 0B 09    HOTSPOT_RECT                  left=0x015C, top=0x0064, right=0x018E, bottom=0x007F, target=0x0B4F, cursor=0x09
025E  9A 22 B0 6F 02                         STRCMP_NE_JMP                 start=v[0x022], values=[0], target=0x026F
0263  0D F5 00 7F 00 28 01 9E 00 B9 0B 09    HOTSPOT_RECT                  left=0x00F5, top=0x007F, right=0x0128, bottom=0x009E, target=0x0BB9, cursor=0x09
026F  9A 23 B0 80 02                         STRCMP_NE_JMP                 start=v[0x023], values=[0], target=0x0280
0274  0D 5D 01 7F 00 91 01 9F 00 D4 0B 09    HOTSPOT_RECT                  left=0x015D, top=0x007F, right=0x0191, bottom=0x009F, target=0x0BD4, cursor=0x09
0280  13                                     INPUTLOOPEND
0281  9A 1E B2 CD 02                         STRCMP_NE_JMP                 start=v[0x01E], values=[2], target=0x02CD
0286  96 1E B2                               LOADSTRING                    dst=v[0x01E], values=[2]
0289  18 A7 19                               CALL                          target=0x19A7
028C  1A 02 01 B1 95 02                      STRCMP_NE_JMP                 start=v[0x102], values=[1], target=0x0295
0292  15 9D 1C                               JMP                           target=0x1C9D
0295  96 1E B1                               LOADSTRING                    dst=v[0x01E], values=[1]
0298  0B                                     INPUTLOOPSTART
0299  9A 1D B0 AA 02                         STRCMP_NE_JMP                 start=v[0x01D], values=[0], target=0x02AA
029E  0D 2A 01 70 00 5B 01 8F 00 34 0B 09    HOTSPOT_RECT                  left=0x012A, top=0x0070, right=0x015B, bottom=0x008F, target=0x0B34, cursor=0x09
02AA  9A 1F B0 BB 02                         STRCMP_NE_JMP                 start=v[0x01F], values=[0], target=0x02BB
02AF  0D 8F 01 70 00 C2 01 8E 00 6A 0B 09    HOTSPOT_RECT                  left=0x018F, top=0x0070, right=0x01C2, bottom=0x008E, target=0x0B6A, cursor=0x09
02BB  9A 23 B0 CC 02                         STRCMP_NE_JMP                 start=v[0x023], values=[0], target=0x02CC
02C0  0D 5D 01 7F 00 91 01 9F 00 D4 0B 09    HOTSPOT_RECT                  left=0x015D, top=0x007F, right=0x0191, bottom=0x009F, target=0x0BD4, cursor=0x09
02CC  13                                     INPUTLOOPEND
02CD  9A 1F B2 2A 03                         STRCMP_NE_JMP                 start=v[0x01F], values=[2], target=0x032A
02D2  96 1F B2                               LOADSTRING                    dst=v[0x01F], values=[2]
02D5  18 A7 19                               CALL                          target=0x19A7
02D8  1A 02 01 B1 E1 02                      STRCMP_NE_JMP                 start=v[0x102], values=[1], target=0x02E1
02DE  15 9D 1C                               JMP                           target=0x1C9D
02E1  96 1F B1                               LOADSTRING                    dst=v[0x01F], values=[1]
02E4  0B                                     INPUTLOOPSTART
02E5  9A 1E B0 F6 02                         STRCMP_NE_JMP                 start=v[0x01E], values=[0], target=0x02F6
02EA  0D 5C 01 64 00 8E 01 7F 00 4F 0B 09    HOTSPOT_RECT                  left=0x015C, top=0x0064, right=0x018E, bottom=0x007F, target=0x0B4F, cursor=0x09
02F6  9A 20 B0 07 03                         STRCMP_NE_JMP                 start=v[0x020], values=[0], target=0x0307
02FB  0D BF 01 64 00 F4 01 81 00 85 0B 09    HOTSPOT_RECT                  left=0x01BF, top=0x0064, right=0x01F4, bottom=0x0081, target=0x0B85, cursor=0x09
0307  9A 23 B0 18 03                         STRCMP_NE_JMP                 start=v[0x023], values=[0], target=0x0318
030C  0D 5D 01 7F 00 91 01 9F 00 D4 0B 09    HOTSPOT_RECT                  left=0x015D, top=0x007F, right=0x0191, bottom=0x009F, target=0x0BD4, cursor=0x09
0318  9A 24 B0 29 03                         STRCMP_NE_JMP                 start=v[0x024], values=[0], target=0x0329
031D  0D 93 01 8F 00 CA 01 B0 00 EF 0B 09    HOTSPOT_RECT                  left=0x0193, top=0x008F, right=0x01CA, bottom=0x00B0, target=0x0BEF, cursor=0x09
0329  13                                     INPUTLOOPEND
032A  9A 20 B2 3B 03                         STRCMP_NE_JMP                 start=v[0x020], values=[2], target=0x033B
032F  1A 27 01 B0 38 03                      STRCMP_NE_JMP                 start=v[0x127], values=[0], target=0x0338
0335  15 79 1C                               JMP                           target=0x1C79
0338  15 9D 1C                               JMP                           target=0x1C9D
033B  9A 21 B2 98 03                         STRCMP_NE_JMP                 start=v[0x021], values=[2], target=0x0398
0340  96 21 B2                               LOADSTRING                    dst=v[0x021], values=[2]
0343  18 A7 19                               CALL                          target=0x19A7
0346  1A 02 01 B1 4F 03                      STRCMP_NE_JMP                 start=v[0x102], values=[1], target=0x034F
034C  15 9D 1C                               JMP                           target=0x1C9D
034F  96 21 B1                               LOADSTRING                    dst=v[0x021], values=[1]
0352  0B                                     INPUTLOOPSTART
0353  9A 1B B0 64 03                         STRCMP_NE_JMP                 start=v[0x01B], values=[0], target=0x0364
0358  0D C4 00 71 00 F4 00 8E 00 FE 0A 09    HOTSPOT_RECT                  left=0x00C4, top=0x0071, right=0x00F4, bottom=0x008E, target=0x0AFE, cursor=0x09
0364  9A 22 B0 75 03                         STRCMP_NE_JMP                 start=v[0x022], values=[0], target=0x0375
0369  0D F5 00 7F 00 28 01 9E 00 B9 0B 09    HOTSPOT_RECT                  left=0x00F5, top=0x007F, right=0x0128, bottom=0x009E, target=0x0BB9, cursor=0x09
0375  9A 25 B0 86 03                         STRCMP_NE_JMP                 start=v[0x025], values=[0], target=0x0386
037A  0D 84 00 9F 00 B6 00 C3 00 0A 0C 09    HOTSPOT_RECT                  left=0x0084, top=0x009F, right=0x00B6, bottom=0x00C3, target=0x0C0A, cursor=0x09
0386  9A 27 B0 97 03                         STRCMP_NE_JMP                 start=v[0x027], values=[0], target=0x0397
038B  0D B7 00 B1 00 EC 00 D5 00 40 0C 09    HOTSPOT_RECT                  left=0x00B7, top=0x00B1, right=0x00EC, bottom=0x00D5, target=0x0C40, cursor=0x09
0397  13                                     INPUTLOOPEND
0398  9A 22 B2 F5 03                         STRCMP_NE_JMP                 start=v[0x022], values=[2], target=0x03F5
039D  96 22 B2                               LOADSTRING                    dst=v[0x022], values=[2]
03A0  18 A7 19                               CALL                          target=0x19A7
03A3  1A 02 01 B1 AC 03                      STRCMP_NE_JMP                 start=v[0x102], values=[1], target=0x03AC
03A9  15 9D 1C                               JMP                           target=0x1C9D
03AC  96 22 B1                               LOADSTRING                    dst=v[0x022], values=[1]
03AF  0B                                     INPUTLOOPSTART
03B0  9A 1B B0 C1 03                         STRCMP_NE_JMP                 start=v[0x01B], values=[0], target=0x03C1
03B5  0D C4 00 71 00 F4 00 8E 00 FE 0A 09    HOTSPOT_RECT                  left=0x00C4, top=0x0071, right=0x00F4, bottom=0x008E, target=0x0AFE, cursor=0x09
03C1  9A 1C B0 D2 03                         STRCMP_NE_JMP                 start=v[0x01C], values=[0], target=0x03D2
03C6  0D F8 00 62 00 28 01 7F 00 19 0B 09    HOTSPOT_RECT                  left=0x00F8, top=0x0062, right=0x0128, bottom=0x007F, target=0x0B19, cursor=0x09
03D2  9A 1D B0 E3 03                         STRCMP_NE_JMP                 start=v[0x01D], values=[0], target=0x03E3
03D7  0D 2A 01 70 00 5B 01 8F 00 34 0B 09    HOTSPOT_RECT                  left=0x012A, top=0x0070, right=0x015B, bottom=0x008F, target=0x0B34, cursor=0x09
03E3  9A 21 B0 F4 03                         STRCMP_NE_JMP                 start=v[0x021], values=[0], target=0x03F4
03E8  0D BE 00 8F 00 F0 00 AF 00 9E 0B 09    HOTSPOT_RECT                  left=0x00BE, top=0x008F, right=0x00F0, bottom=0x00AF, target=0x0B9E, cursor=0x09
03F4  13                                     INPUTLOOPEND
03F5  9A 23 B2 52 04                         STRCMP_NE_JMP                 start=v[0x023], values=[2], target=0x0452
03FA  96 23 B2                               LOADSTRING                    dst=v[0x023], values=[2]
03FD  18 A7 19                               CALL                          target=0x19A7
0400  1A 02 01 B1 09 04                      STRCMP_NE_JMP                 start=v[0x102], values=[1], target=0x0409
0406  15 9D 1C                               JMP                           target=0x1C9D
0409  96 23 B1                               LOADSTRING                    dst=v[0x023], values=[1]
040C  0B                                     INPUTLOOPSTART
040D  9A 1D B0 1E 04                         STRCMP_NE_JMP                 start=v[0x01D], values=[0], target=0x041E
0412  0D 2A 01 70 00 5B 01 8F 00 34 0B 09    HOTSPOT_RECT                  left=0x012A, top=0x0070, right=0x015B, bottom=0x008F, target=0x0B34, cursor=0x09
041E  9A 1E B0 2F 04                         STRCMP_NE_JMP                 start=v[0x01E], values=[0], target=0x042F
0423  0D 5C 01 64 00 8E 01 7F 00 4F 0B 09    HOTSPOT_RECT                  left=0x015C, top=0x0064, right=0x018E, bottom=0x007F, target=0x0B4F, cursor=0x09
042F  9A 1F B0 40 04                         STRCMP_NE_JMP                 start=v[0x01F], values=[0], target=0x0440
0434  0D 8F 01 70 00 C2 01 8E 00 6A 0B 09    HOTSPOT_RECT                  left=0x018F, top=0x0070, right=0x01C2, bottom=0x008E, target=0x0B6A, cursor=0x09
0440  9A 24 B0 51 04                         STRCMP_NE_JMP                 start=v[0x024], values=[0], target=0x0451
0445  0D 93 01 8F 00 CA 01 B0 00 EF 0B 09    HOTSPOT_RECT                  left=0x0193, top=0x008F, right=0x01CA, bottom=0x00B0, target=0x0BEF, cursor=0x09
0451  13                                     INPUTLOOPEND
0452  9A 24 B2 AF 04                         STRCMP_NE_JMP                 start=v[0x024], values=[2], target=0x04AF
0457  96 24 B2                               LOADSTRING                    dst=v[0x024], values=[2]
045A  18 A7 19                               CALL                          target=0x19A7
045D  1A 02 01 B1 66 04                      STRCMP_NE_JMP                 start=v[0x102], values=[1], target=0x0466
0463  15 9D 1C                               JMP                           target=0x1C9D
0466  96 24 B1                               LOADSTRING                    dst=v[0x024], values=[1]
0469  0B                                     INPUTLOOPSTART
046A  9A 1F B0 7B 04                         STRCMP_NE_JMP                 start=v[0x01F], values=[0], target=0x047B
046F  0D 8F 01 70 00 C2 01 8E 00 6A 0B 09    HOTSPOT_RECT                  left=0x018F, top=0x0070, right=0x01C2, bottom=0x008E, target=0x0B6A, cursor=0x09
047B  9A 23 B0 8C 04                         STRCMP_NE_JMP                 start=v[0x023], values=[0], target=0x048C
0480  0D 5D 01 7F 00 91 01 9F 00 D4 0B 09    HOTSPOT_RECT                  left=0x015D, top=0x007F, right=0x0191, bottom=0x009F, target=0x0BD4, cursor=0x09
048C  9A 26 B0 9D 04                         STRCMP_NE_JMP                 start=v[0x026], values=[0], target=0x049D
0491  0D CB 01 A0 00 04 02 C2 00 25 0C 09    HOTSPOT_RECT                  left=0x01CB, top=0x00A0, right=0x0204, bottom=0x00C2, target=0x0C25, cursor=0x09
049D  9A 28 B0 AE 04                         STRCMP_NE_JMP                 start=v[0x028], values=[0], target=0x04AE
04A2  0D 96 01 B0 00 D1 01 D4 00 5B 0C 09    HOTSPOT_RECT                  left=0x0196, top=0x00B0, right=0x01D1, bottom=0x00D4, target=0x0C5B, cursor=0x09
04AE  13                                     INPUTLOOPEND
04AF  9A 25 B2 EA 04                         STRCMP_NE_JMP                 start=v[0x025], values=[2], target=0x04EA
04B4  96 25 B2                               LOADSTRING                    dst=v[0x025], values=[2]
04B7  18 A7 19                               CALL                          target=0x19A7
04BA  1A 02 01 B1 C3 04                      STRCMP_NE_JMP                 start=v[0x102], values=[1], target=0x04C3
04C0  15 9D 1C                               JMP                           target=0x1C9D
04C3  96 25 B1                               LOADSTRING                    dst=v[0x025], values=[1]
04C6  0B                                     INPUTLOOPSTART
04C7  9A 21 B0 D8 04                         STRCMP_NE_JMP                 start=v[0x021], values=[0], target=0x04D8
04CC  0D BE 00 8F 00 F0 00 AF 00 9E 0B 09    HOTSPOT_RECT                  left=0x00BE, top=0x008F, right=0x00F0, bottom=0x00AF, target=0x0B9E, cursor=0x09
04D8  9A 27 B0 E9 04                         STRCMP_NE_JMP                 start=v[0x027], values=[0], target=0x04E9
04DD  0D B7 00 B1 00 EC 00 D5 00 40 0C 09    HOTSPOT_RECT                  left=0x00B7, top=0x00B1, right=0x00EC, bottom=0x00D5, target=0x0C40, cursor=0x09
04E9  13                                     INPUTLOOPEND
04EA  9A 26 B2 25 05                         STRCMP_NE_JMP                 start=v[0x026], values=[2], target=0x0525
04EF  96 26 B2                               LOADSTRING                    dst=v[0x026], values=[2]
04F2  18 A7 19                               CALL                          target=0x19A7
04F5  1A 02 01 B1 FE 04                      STRCMP_NE_JMP                 start=v[0x102], values=[1], target=0x04FE
04FB  15 9D 1C                               JMP                           target=0x1C9D
04FE  96 26 B1                               LOADSTRING                    dst=v[0x026], values=[1]
0501  0B                                     INPUTLOOPSTART
0502  9A 24 B0 13 05                         STRCMP_NE_JMP                 start=v[0x024], values=[0], target=0x0513
0507  0D 93 01 8F 00 CA 01 B0 00 EF 0B 09    HOTSPOT_RECT                  left=0x0193, top=0x008F, right=0x01CA, bottom=0x00B0, target=0x0BEF, cursor=0x09
0513  9A 28 B0 24 05                         STRCMP_NE_JMP                 start=v[0x028], values=[0], target=0x0524
0518  0D 96 01 B0 00 D1 01 D4 00 5B 0C 09    HOTSPOT_RECT                  left=0x0196, top=0x00B0, right=0x01D1, bottom=0x00D4, target=0x0C5B, cursor=0x09
0524  13                                     INPUTLOOPEND
0525  9A 27 B2 71 05                         STRCMP_NE_JMP                 start=v[0x027], values=[2], target=0x0571
052A  96 27 B2                               LOADSTRING                    dst=v[0x027], values=[2]
052D  18 A7 19                               CALL                          target=0x19A7
0530  1A 02 01 B1 39 05                      STRCMP_NE_JMP                 start=v[0x102], values=[1], target=0x0539
0536  15 9D 1C                               JMP                           target=0x1C9D
0539  96 27 B1                               LOADSTRING                    dst=v[0x027], values=[1]
053C  0B                                     INPUTLOOPSTART
053D  9A 21 B0 4E 05                         STRCMP_NE_JMP                 start=v[0x021], values=[0], target=0x054E
0542  0D BE 00 8F 00 F0 00 AF 00 9E 0B 09    HOTSPOT_RECT                  left=0x00BE, top=0x008F, right=0x00F0, bottom=0x00AF, target=0x0B9E, cursor=0x09
054E  9A 25 B0 5F 05                         STRCMP_NE_JMP                 start=v[0x025], values=[0], target=0x055F
0553  0D 84 00 9F 00 B6 00 C3 00 0A 0C 09    HOTSPOT_RECT                  left=0x0084, top=0x009F, right=0x00B6, bottom=0x00C3, target=0x0C0A, cursor=0x09
055F  9A 29 B0 70 05                         STRCMP_NE_JMP                 start=v[0x029], values=[0], target=0x0570
0564  0D AF 00 D5 00 E7 00 FC 00 76 0C 09    HOTSPOT_RECT                  left=0x00AF, top=0x00D5, right=0x00E7, bottom=0x00FC, target=0x0C76, cursor=0x09
0570  13                                     INPUTLOOPEND
0571  9A 28 B2 BD 05                         STRCMP_NE_JMP                 start=v[0x028], values=[2], target=0x05BD
0576  96 28 B2                               LOADSTRING                    dst=v[0x028], values=[2]
0579  18 A7 19                               CALL                          target=0x19A7
057C  1A 02 01 B1 85 05                      STRCMP_NE_JMP                 start=v[0x102], values=[1], target=0x0585
0582  15 9D 1C                               JMP                           target=0x1C9D
0585  96 28 B1                               LOADSTRING                    dst=v[0x028], values=[1]
0588  0B                                     INPUTLOOPSTART
0589  9A 24 B0 9A 05                         STRCMP_NE_JMP                 start=v[0x024], values=[0], target=0x059A
058E  0D 93 01 8F 00 CA 01 B0 00 EF 0B 09    HOTSPOT_RECT                  left=0x0193, top=0x008F, right=0x01CA, bottom=0x00B0, target=0x0BEF, cursor=0x09
059A  9A 26 B0 AB 05                         STRCMP_NE_JMP                 start=v[0x026], values=[0], target=0x05AB
059F  0D CB 01 A0 00 04 02 C2 00 25 0C 09    HOTSPOT_RECT                  left=0x01CB, top=0x00A0, right=0x0204, bottom=0x00C2, target=0x0C25, cursor=0x09
05AB  9A 2A B0 BC 05                         STRCMP_NE_JMP                 start=v[0x02A], values=[0], target=0x05BC
05B0  0D 9B 01 D6 00 D8 01 FD 00 91 0C 09    HOTSPOT_RECT                  left=0x019B, top=0x00D6, right=0x01D8, bottom=0x00FD, target=0x0C91, cursor=0x09
05BC  13                                     INPUTLOOPEND
05BD  9A 29 B2 1A 06                         STRCMP_NE_JMP                 start=v[0x029], values=[2], target=0x061A
05C2  96 29 B2                               LOADSTRING                    dst=v[0x029], values=[2]
05C5  18 A7 19                               CALL                          target=0x19A7
05C8  1A 02 01 B1 D1 05                      STRCMP_NE_JMP                 start=v[0x102], values=[1], target=0x05D1
05CE  15 9D 1C                               JMP                           target=0x1C9D
05D1  96 29 B1                               LOADSTRING                    dst=v[0x029], values=[1]
05D4  0B                                     INPUTLOOPSTART
05D5  9A 27 B0 E6 05                         STRCMP_NE_JMP                 start=v[0x027], values=[0], target=0x05E6
05DA  0D B7 00 B1 00 EC 00 D5 00 40 0C 09    HOTSPOT_RECT                  left=0x00B7, top=0x00B1, right=0x00EC, bottom=0x00D5, target=0x0C40, cursor=0x09
05E6  9A 2B B0 F7 05                         STRCMP_NE_JMP                 start=v[0x02B], values=[0], target=0x05F7
05EB  0D 6F 00 E9 00 A4 00 13 01 AC 0C 09    HOTSPOT_RECT                  left=0x006F, top=0x00E9, right=0x00A4, bottom=0x0113, target=0x0CAC, cursor=0x09
05F7  9A 2C B0 08 06                         STRCMP_NE_JMP                 start=v[0x02C], values=[0], target=0x0608
05FC  0D A8 00 FF 00 E1 00 2B 01 C7 0C 09    HOTSPOT_RECT                  left=0x00A8, top=0x00FF, right=0x00E1, bottom=0x012B, target=0x0CC7, cursor=0x09
0608  9A 2D B0 19 06                         STRCMP_NE_JMP                 start=v[0x02D], values=[0], target=0x0619
060D  0D E9 00 E9 00 23 01 13 01 E2 0C 09    HOTSPOT_RECT                  left=0x00E9, top=0x00E9, right=0x0123, bottom=0x0113, target=0x0CE2, cursor=0x09
0619  13                                     INPUTLOOPEND
061A  9A 2A B2 77 06                         STRCMP_NE_JMP                 start=v[0x02A], values=[2], target=0x0677
061F  96 2A B2                               LOADSTRING                    dst=v[0x02A], values=[2]
0622  18 A7 19                               CALL                          target=0x19A7
0625  1A 02 01 B1 2E 06                      STRCMP_NE_JMP                 start=v[0x102], values=[1], target=0x062E
062B  15 9D 1C                               JMP                           target=0x1C9D
062E  96 2A B1                               LOADSTRING                    dst=v[0x02A], values=[1]
0631  0B                                     INPUTLOOPSTART
0632  9A 28 B0 43 06                         STRCMP_NE_JMP                 start=v[0x028], values=[0], target=0x0643
0637  0D 96 01 B0 00 D1 01 D4 00 5B 0C 09    HOTSPOT_RECT                  left=0x0196, top=0x00B0, right=0x01D1, bottom=0x00D4, target=0x0C5B, cursor=0x09
0643  9A 2F B0 54 06                         STRCMP_NE_JMP                 start=v[0x02F], values=[0], target=0x0654
0648  0D 62 01 E9 00 9E 01 14 01 18 0D 09    HOTSPOT_RECT                  left=0x0162, top=0x00E9, right=0x019E, bottom=0x0114, target=0x0D18, cursor=0x09
0654  9A 30 B0 65 06                         STRCMP_NE_JMP                 start=v[0x030], values=[0], target=0x0665
0659  0D A2 01 FE 00 E2 01 2B 01 33 0D 09    HOTSPOT_RECT                  left=0x01A2, top=0x00FE, right=0x01E2, bottom=0x012B, target=0x0D33, cursor=0x09
0665  9A 31 B0 76 06                         STRCMP_NE_JMP                 start=v[0x031], values=[0], target=0x0676
066A  0D DB 01 E9 00 1A 02 13 01 4E 0D 09    HOTSPOT_RECT                  left=0x01DB, top=0x00E9, right=0x021A, bottom=0x0113, target=0x0D4E, cursor=0x09
0676  13                                     INPUTLOOPEND
0677  9A 2B B2 B2 06                         STRCMP_NE_JMP                 start=v[0x02B], values=[2], target=0x06B2
067C  96 2B B2                               LOADSTRING                    dst=v[0x02B], values=[2]
067F  18 A7 19                               CALL                          target=0x19A7
0682  1A 02 01 B1 8B 06                      STRCMP_NE_JMP                 start=v[0x102], values=[1], target=0x068B
0688  15 9D 1C                               JMP                           target=0x1C9D
068B  96 2B B1                               LOADSTRING                    dst=v[0x02B], values=[1]
068E  0B                                     INPUTLOOPSTART
068F  9A 29 B0 A0 06                         STRCMP_NE_JMP                 start=v[0x029], values=[0], target=0x06A0
0694  0D AF 00 D5 00 E7 00 FC 00 76 0C 09    HOTSPOT_RECT                  left=0x00AF, top=0x00D5, right=0x00E7, bottom=0x00FC, target=0x0C76, cursor=0x09
06A0  9A 2C B0 B1 06                         STRCMP_NE_JMP                 start=v[0x02C], values=[0], target=0x06B1
06A5  0D A8 00 FF 00 E1 00 2B 01 C7 0C 09    HOTSPOT_RECT                  left=0x00A8, top=0x00FF, right=0x00E1, bottom=0x012B, target=0x0CC7, cursor=0x09
06B1  13                                     INPUTLOOPEND
06B2  9A 2C B2 20 07                         STRCMP_NE_JMP                 start=v[0x02C], values=[2], target=0x0720
06B7  96 2C B2                               LOADSTRING                    dst=v[0x02C], values=[2]
06BA  18 A7 19                               CALL                          target=0x19A7
06BD  1A 02 01 B1 C6 06                      STRCMP_NE_JMP                 start=v[0x102], values=[1], target=0x06C6
06C3  15 9D 1C                               JMP                           target=0x1C9D
06C6  96 2C B1                               LOADSTRING                    dst=v[0x02C], values=[1]
06C9  0B                                     INPUTLOOPSTART
06CA  9A 29 B0 DB 06                         STRCMP_NE_JMP                 start=v[0x029], values=[0], target=0x06DB
06CF  0D AF 00 D5 00 E7 00 FC 00 76 0C 09    HOTSPOT_RECT                  left=0x00AF, top=0x00D5, right=0x00E7, bottom=0x00FC, target=0x0C76, cursor=0x09
06DB  9A 2B B0 EC 06                         STRCMP_NE_JMP                 start=v[0x02B], values=[0], target=0x06EC
06E0  0D 6F 00 E9 00 A4 00 13 01 AC 0C 09    HOTSPOT_RECT                  left=0x006F, top=0x00E9, right=0x00A4, bottom=0x0113, target=0x0CAC, cursor=0x09
06EC  9A 2D B0 FD 06                         STRCMP_NE_JMP                 start=v[0x02D], values=[0], target=0x06FD
06F1  0D E9 00 E9 00 23 01 13 01 E2 0C 09    HOTSPOT_RECT                  left=0x00E9, top=0x00E9, right=0x0123, bottom=0x0113, target=0x0CE2, cursor=0x09
06FD  9A 32 B0 0E 07                         STRCMP_NE_JMP                 start=v[0x032], values=[0], target=0x070E
0702  0D 9E 00 2D 01 DB 00 5C 01 69 0D 09    HOTSPOT_RECT                  left=0x009E, top=0x012D, right=0x00DB, bottom=0x015C, target=0x0D69, cursor=0x09
070E  9A 33 B0 1F 07                         STRCMP_NE_JMP                 start=v[0x033], values=[0], target=0x071F
0713  0D 61 00 14 01 20 01 43 01 84 0D 09    HOTSPOT_RECT                  left=0x0061, top=0x0114, right=0x0120, bottom=0x0143, target=0x0D84, cursor=0x09
071F  13                                     INPUTLOOPEND
0720  9A 2D B2 7D 07                         STRCMP_NE_JMP                 start=v[0x02D], values=[2], target=0x077D
0725  96 2D B2                               LOADSTRING                    dst=v[0x02D], values=[2]
0728  18 A7 19                               CALL                          target=0x19A7
072B  1A 02 01 B1 34 07                      STRCMP_NE_JMP                 start=v[0x102], values=[1], target=0x0734
0731  15 9D 1C                               JMP                           target=0x1C9D
0734  96 2D B1                               LOADSTRING                    dst=v[0x02D], values=[1]
0737  0B                                     INPUTLOOPSTART
0738  9A 29 B0 49 07                         STRCMP_NE_JMP                 start=v[0x029], values=[0], target=0x0749
073D  0D AF 00 D5 00 E7 00 FC 00 76 0C 09    HOTSPOT_RECT                  left=0x00AF, top=0x00D5, right=0x00E7, bottom=0x00FC, target=0x0C76, cursor=0x09
0749  9A 2C B0 5A 07                         STRCMP_NE_JMP                 start=v[0x02C], values=[0], target=0x075A
074E  0D A8 00 FF 00 E1 00 2B 01 C7 0C 09    HOTSPOT_RECT                  left=0x00A8, top=0x00FF, right=0x00E1, bottom=0x012B, target=0x0CC7, cursor=0x09
075A  9A 2E B0 6B 07                         STRCMP_NE_JMP                 start=v[0x02E], values=[0], target=0x076B
075F  0D 24 01 FE 00 60 01 2B 01 FD 0C 09    HOTSPOT_RECT                  left=0x0124, top=0x00FE, right=0x0160, bottom=0x012B, target=0x0CFD, cursor=0x09
076B  9A 33 B0 7C 07                         STRCMP_NE_JMP                 start=v[0x033], values=[0], target=0x077C
0770  0D 61 00 14 01 20 01 43 01 84 0D 09    HOTSPOT_RECT                  left=0x0061, top=0x0114, right=0x0120, bottom=0x0143, target=0x0D84, cursor=0x09
077C  13                                     INPUTLOOPEND
077D  9A 2E B2 EB 07                         STRCMP_NE_JMP                 start=v[0x02E], values=[2], target=0x07EB
0782  96 2E B2                               LOADSTRING                    dst=v[0x02E], values=[2]
0785  18 A7 19                               CALL                          target=0x19A7
0788  1A 02 01 B1 91 07                      STRCMP_NE_JMP                 start=v[0x102], values=[1], target=0x0791
078E  15 9D 1C                               JMP                           target=0x1C9D
0791  96 2E B1                               LOADSTRING                    dst=v[0x02E], values=[1]
0794  0B                                     INPUTLOOPSTART
0795  9A 2D B0 A6 07                         STRCMP_NE_JMP                 start=v[0x02D], values=[0], target=0x07A6
079A  0D E9 00 E9 00 23 01 13 01 E2 0C 09    HOTSPOT_RECT                  left=0x00E9, top=0x00E9, right=0x0123, bottom=0x0113, target=0x0CE2, cursor=0x09
07A6  9A 2F B0 B7 07                         STRCMP_NE_JMP                 start=v[0x02F], values=[0], target=0x07B7
07AB  0D 62 01 E9 00 9E 01 14 01 18 0D 09    HOTSPOT_RECT                  left=0x0162, top=0x00E9, right=0x019E, bottom=0x0114, target=0x0D18, cursor=0x09
07B7  9A 33 B0 C8 07                         STRCMP_NE_JMP                 start=v[0x033], values=[0], target=0x07C8
07BC  0D 61 00 14 01 20 01 43 01 84 0D 09    HOTSPOT_RECT                  left=0x0061, top=0x0114, right=0x0120, bottom=0x0143, target=0x0D84, cursor=0x09
07C8  9A 34 B0 D9 07                         STRCMP_NE_JMP                 start=v[0x034], values=[0], target=0x07D9
07CD  0D 23 01 2D 01 64 01 5E 01 9F 0D 09    HOTSPOT_RECT                  left=0x0123, top=0x012D, right=0x0164, bottom=0x015E, target=0x0D9F, cursor=0x09
07D9  9A 35 B0 EA 07                         STRCMP_NE_JMP                 start=v[0x035], values=[0], target=0x07EA
07DE  0D 65 01 14 01 A6 01 46 01 BA 0D 09    HOTSPOT_RECT                  left=0x0165, top=0x0114, right=0x01A6, bottom=0x0146, target=0x0DBA, cursor=0x09
07EA  13                                     INPUTLOOPEND
07EB  9A 2F B2 48 08                         STRCMP_NE_JMP                 start=v[0x02F], values=[2], target=0x0848
07F0  96 2F B2                               LOADSTRING                    dst=v[0x02F], values=[2]
07F3  18 A7 19                               CALL                          target=0x19A7
07F6  1A 02 01 B1 FF 07                      STRCMP_NE_JMP                 start=v[0x102], values=[1], target=0x07FF
07FC  15 9D 1C                               JMP                           target=0x1C9D
07FF  96 2F B1                               LOADSTRING                    dst=v[0x02F], values=[1]
0802  0B                                     INPUTLOOPSTART
0803  9A 2A B0 14 08                         STRCMP_NE_JMP                 start=v[0x02A], values=[0], target=0x0814
0808  0D 9B 01 D6 00 D8 01 FD 00 91 0C 09    HOTSPOT_RECT                  left=0x019B, top=0x00D6, right=0x01D8, bottom=0x00FD, target=0x0C91, cursor=0x09
0814  9A 2E B0 25 08                         STRCMP_NE_JMP                 start=v[0x02E], values=[0], target=0x0825
0819  0D 24 01 FE 00 60 01 2B 01 FD 0C 09    HOTSPOT_RECT                  left=0x0124, top=0x00FE, right=0x0160, bottom=0x012B, target=0x0CFD, cursor=0x09
0825  9A 30 B0 36 08                         STRCMP_NE_JMP                 start=v[0x030], values=[0], target=0x0836
082A  0D A2 01 FE 00 E2 01 2B 01 33 0D 09    HOTSPOT_RECT                  left=0x01A2, top=0x00FE, right=0x01E2, bottom=0x012B, target=0x0D33, cursor=0x09
0836  9A 35 B0 47 08                         STRCMP_NE_JMP                 start=v[0x035], values=[0], target=0x0847
083B  0D 65 01 14 01 A6 01 46 01 BA 0D 09    HOTSPOT_RECT                  left=0x0165, top=0x0114, right=0x01A6, bottom=0x0146, target=0x0DBA, cursor=0x09
0847  13                                     INPUTLOOPEND
0848  9A 30 B2 B6 08                         STRCMP_NE_JMP                 start=v[0x030], values=[2], target=0x08B6
084D  96 30 B2                               LOADSTRING                    dst=v[0x030], values=[2]
0850  18 A7 19                               CALL                          target=0x19A7
0853  1A 02 01 B1 5C 08                      STRCMP_NE_JMP                 start=v[0x102], values=[1], target=0x085C
0859  15 9D 1C                               JMP                           target=0x1C9D
085C  96 30 B1                               LOADSTRING                    dst=v[0x030], values=[1]
085F  0B                                     INPUTLOOPSTART
0860  9A 2A B0 71 08                         STRCMP_NE_JMP                 start=v[0x02A], values=[0], target=0x0871
0865  0D 9B 01 D6 00 D8 01 FD 00 91 0C 09    HOTSPOT_RECT                  left=0x019B, top=0x00D6, right=0x01D8, bottom=0x00FD, target=0x0C91, cursor=0x09
0871  9A 2F B0 82 08                         STRCMP_NE_JMP                 start=v[0x02F], values=[0], target=0x0882
0876  0D 62 01 E9 00 9E 01 14 01 18 0D 09    HOTSPOT_RECT                  left=0x0162, top=0x00E9, right=0x019E, bottom=0x0114, target=0x0D18, cursor=0x09
0882  9A 31 B0 93 08                         STRCMP_NE_JMP                 start=v[0x031], values=[0], target=0x0893
0887  0D DB 01 E9 00 1A 02 13 01 4E 0D 09    HOTSPOT_RECT                  left=0x01DB, top=0x00E9, right=0x021A, bottom=0x0113, target=0x0D4E, cursor=0x09
0893  9A 35 B0 A4 08                         STRCMP_NE_JMP                 start=v[0x035], values=[0], target=0x08A4
0898  0D 65 01 14 01 A6 01 46 01 BA 0D 09    HOTSPOT_RECT                  left=0x0165, top=0x0114, right=0x01A6, bottom=0x0146, target=0x0DBA, cursor=0x09
08A4  9A 36 B0 B5 08                         STRCMP_NE_JMP                 start=v[0x036], values=[0], target=0x08B5
08A9  0D A6 01 2C 01 E9 01 5E 01 D5 0D 09    HOTSPOT_RECT                  left=0x01A6, top=0x012C, right=0x01E9, bottom=0x015E, target=0x0DD5, cursor=0x09
08B5  13                                     INPUTLOOPEND
08B6  9A 31 B2 F1 08                         STRCMP_NE_JMP                 start=v[0x031], values=[2], target=0x08F1
08BB  96 31 B2                               LOADSTRING                    dst=v[0x031], values=[2]
08BE  18 A7 19                               CALL                          target=0x19A7
08C1  1A 02 01 B1 CA 08                      STRCMP_NE_JMP                 start=v[0x102], values=[1], target=0x08CA
08C7  15 9D 1C                               JMP                           target=0x1C9D
08CA  96 31 B1                               LOADSTRING                    dst=v[0x031], values=[1]
08CD  0B                                     INPUTLOOPSTART
08CE  9A 2A B0 DF 08                         STRCMP_NE_JMP                 start=v[0x02A], values=[0], target=0x08DF
08D3  0D 9B 01 D6 00 D8 01 FD 00 91 0C 09    HOTSPOT_RECT                  left=0x019B, top=0x00D6, right=0x01D8, bottom=0x00FD, target=0x0C91, cursor=0x09
08DF  9A 30 B0 F0 08                         STRCMP_NE_JMP                 start=v[0x030], values=[0], target=0x08F0
08E4  0D A2 01 FE 00 E2 01 2B 01 33 0D 09    HOTSPOT_RECT                  left=0x01A2, top=0x00FE, right=0x01E2, bottom=0x012B, target=0x0D33, cursor=0x09
08F0  13                                     INPUTLOOPEND
08F1  9A 32 B2 3D 09                         STRCMP_NE_JMP                 start=v[0x032], values=[2], target=0x093D
08F6  96 32 B2                               LOADSTRING                    dst=v[0x032], values=[2]
08F9  18 A7 19                               CALL                          target=0x19A7
08FC  1A 02 01 B1 05 09                      STRCMP_NE_JMP                 start=v[0x102], values=[1], target=0x0905
0902  15 9D 1C                               JMP                           target=0x1C9D
0905  96 32 B1                               LOADSTRING                    dst=v[0x032], values=[1]
0908  0B                                     INPUTLOOPSTART
0909  9A 2C B0 1A 09                         STRCMP_NE_JMP                 start=v[0x02C], values=[0], target=0x091A
090E  0D A8 00 FF 00 E1 00 2B 01 C7 0C 09    HOTSPOT_RECT                  left=0x00A8, top=0x00FF, right=0x00E1, bottom=0x012B, target=0x0CC7, cursor=0x09
091A  9A 33 B0 2B 09                         STRCMP_NE_JMP                 start=v[0x033], values=[0], target=0x092B
091F  0D 61 00 14 01 20 01 43 01 84 0D 09    HOTSPOT_RECT                  left=0x0061, top=0x0114, right=0x0120, bottom=0x0143, target=0x0D84, cursor=0x09
092B  9A 37 B0 3C 09                         STRCMP_NE_JMP                 start=v[0x037], values=[0], target=0x093C
0930  0D 55 00 44 01 95 00 7C 01 F0 0D 09    HOTSPOT_RECT                  left=0x0055, top=0x0144, right=0x0095, bottom=0x017C, target=0x0DF0, cursor=0x09
093C  13                                     INPUTLOOPEND
093D  9A 33 B2 AB 09                         STRCMP_NE_JMP                 start=v[0x033], values=[2], target=0x09AB
0942  96 33 B2                               LOADSTRING                    dst=v[0x033], values=[2]
0945  18 A7 19                               CALL                          target=0x19A7
0948  1A 02 01 B1 51 09                      STRCMP_NE_JMP                 start=v[0x102], values=[1], target=0x0951
094E  15 9D 1C                               JMP                           target=0x1C9D
0951  96 33 B1                               LOADSTRING                    dst=v[0x033], values=[1]
0954  0B                                     INPUTLOOPSTART
0955  9A 2C B0 66 09                         STRCMP_NE_JMP                 start=v[0x02C], values=[0], target=0x0966
095A  0D A8 00 FF 00 E1 00 2B 01 C7 0C 09    HOTSPOT_RECT                  left=0x00A8, top=0x00FF, right=0x00E1, bottom=0x012B, target=0x0CC7, cursor=0x09
0966  9A 2D B0 77 09                         STRCMP_NE_JMP                 start=v[0x02D], values=[0], target=0x0977
096B  0D E9 00 E9 00 23 01 13 01 E2 0C 09    HOTSPOT_RECT                  left=0x00E9, top=0x00E9, right=0x0123, bottom=0x0113, target=0x0CE2, cursor=0x09
0977  9A 2E B0 88 09                         STRCMP_NE_JMP                 start=v[0x02E], values=[0], target=0x0988
097C  0D 24 01 FE 00 60 01 2B 01 FD 0C 09    HOTSPOT_RECT                  left=0x0124, top=0x00FE, right=0x0160, bottom=0x012B, target=0x0CFD, cursor=0x09
0988  9A 32 B0 99 09                         STRCMP_NE_JMP                 start=v[0x032], values=[0], target=0x0999
098D  0D 9E 00 2D 01 DB 00 5C 01 69 0D 09    HOTSPOT_RECT                  left=0x009E, top=0x012D, right=0x00DB, bottom=0x015C, target=0x0D69, cursor=0x09
0999  9A 34 B0 AA 09                         STRCMP_NE_JMP                 start=v[0x034], values=[0], target=0x09AA
099E  0D 23 01 2D 01 64 01 5E 01 9F 0D 09    HOTSPOT_RECT                  left=0x0123, top=0x012D, right=0x0164, bottom=0x015E, target=0x0D9F, cursor=0x09
09AA  13                                     INPUTLOOPEND
09AB  9A 34 B2 F7 09                         STRCMP_NE_JMP                 start=v[0x034], values=[2], target=0x09F7
09B0  96 34 B2                               LOADSTRING                    dst=v[0x034], values=[2]
09B3  18 A7 19                               CALL                          target=0x19A7
09B6  1A 02 01 B1 BF 09                      STRCMP_NE_JMP                 start=v[0x102], values=[1], target=0x09BF
09BC  15 9D 1C                               JMP                           target=0x1C9D
09BF  96 34 B1                               LOADSTRING                    dst=v[0x034], values=[1]
09C2  0B                                     INPUTLOOPSTART
09C3  9A 2E B0 D4 09                         STRCMP_NE_JMP                 start=v[0x02E], values=[0], target=0x09D4
09C8  0D 24 01 FE 00 60 01 2B 01 FD 0C 09    HOTSPOT_RECT                  left=0x0124, top=0x00FE, right=0x0160, bottom=0x012B, target=0x0CFD, cursor=0x09
09D4  9A 33 B0 E5 09                         STRCMP_NE_JMP                 start=v[0x033], values=[0], target=0x09E5
09D9  0D 61 00 14 01 20 01 43 01 84 0D 09    HOTSPOT_RECT                  left=0x0061, top=0x0114, right=0x0120, bottom=0x0143, target=0x0D84, cursor=0x09
09E5  9A 35 B0 F6 09                         STRCMP_NE_JMP                 start=v[0x035], values=[0], target=0x09F6
09EA  0D 65 01 14 01 A6 01 46 01 BA 0D 09    HOTSPOT_RECT                  left=0x0165, top=0x0114, right=0x01A6, bottom=0x0146, target=0x0DBA, cursor=0x09
09F6  13                                     INPUTLOOPEND
09F7  9A 35 B2 65 0A                         STRCMP_NE_JMP                 start=v[0x035], values=[2], target=0x0A65
09FC  96 35 B2                               LOADSTRING                    dst=v[0x035], values=[2]
09FF  18 A7 19                               CALL                          target=0x19A7
0A02  1A 02 01 B1 0B 0A                      STRCMP_NE_JMP                 start=v[0x102], values=[1], target=0x0A0B
0A08  15 9D 1C                               JMP                           target=0x1C9D
0A0B  96 35 B1                               LOADSTRING                    dst=v[0x035], values=[1]
0A0E  0B                                     INPUTLOOPSTART
0A0F  9A 2E B0 20 0A                         STRCMP_NE_JMP                 start=v[0x02E], values=[0], target=0x0A20
0A14  0D 24 01 FE 00 60 01 2B 01 FD 0C 09    HOTSPOT_RECT                  left=0x0124, top=0x00FE, right=0x0160, bottom=0x012B, target=0x0CFD, cursor=0x09
0A20  9A 2F B0 31 0A                         STRCMP_NE_JMP                 start=v[0x02F], values=[0], target=0x0A31
0A25  0D 62 01 E9 00 9E 01 14 01 18 0D 09    HOTSPOT_RECT                  left=0x0162, top=0x00E9, right=0x019E, bottom=0x0114, target=0x0D18, cursor=0x09
0A31  9A 30 B0 42 0A                         STRCMP_NE_JMP                 start=v[0x030], values=[0], target=0x0A42
0A36  0D A2 01 FE 00 E2 01 2B 01 33 0D 09    HOTSPOT_RECT                  left=0x01A2, top=0x00FE, right=0x01E2, bottom=0x012B, target=0x0D33, cursor=0x09
0A42  9A 34 B0 53 0A                         STRCMP_NE_JMP                 start=v[0x034], values=[0], target=0x0A53
0A47  0D 23 01 2D 01 64 01 5E 01 9F 0D 09    HOTSPOT_RECT                  left=0x0123, top=0x012D, right=0x0164, bottom=0x015E, target=0x0D9F, cursor=0x09
0A53  9A 36 B0 64 0A                         STRCMP_NE_JMP                 start=v[0x036], values=[0], target=0x0A64
0A58  0D A6 01 2C 01 E9 01 5E 01 D5 0D 09    HOTSPOT_RECT                  left=0x01A6, top=0x012C, right=0x01E9, bottom=0x015E, target=0x0DD5, cursor=0x09
0A64  13                                     INPUTLOOPEND
0A65  9A 36 B2 B1 0A                         STRCMP_NE_JMP                 start=v[0x036], values=[2], target=0x0AB1
0A6A  96 36 B2                               LOADSTRING                    dst=v[0x036], values=[2]
0A6D  18 A7 19                               CALL                          target=0x19A7
0A70  1A 02 01 B1 79 0A                      STRCMP_NE_JMP                 start=v[0x102], values=[1], target=0x0A79
0A76  15 9D 1C                               JMP                           target=0x1C9D
0A79  96 36 B1                               LOADSTRING                    dst=v[0x036], values=[1]
0A7C  0B                                     INPUTLOOPSTART
0A7D  9A 30 B0 8E 0A                         STRCMP_NE_JMP                 start=v[0x030], values=[0], target=0x0A8E
0A82  0D A2 01 FE 00 E2 01 2B 01 33 0D 09    HOTSPOT_RECT                  left=0x01A2, top=0x00FE, right=0x01E2, bottom=0x012B, target=0x0D33, cursor=0x09
0A8E  9A 35 B0 9F 0A                         STRCMP_NE_JMP                 start=v[0x035], values=[0], target=0x0A9F
0A93  0D 65 01 14 01 A6 01 46 01 BA 0D 09    HOTSPOT_RECT                  left=0x0165, top=0x0114, right=0x01A6, bottom=0x0146, target=0x0DBA, cursor=0x09
0A9F  9A 38 B0 B0 0A                         STRCMP_NE_JMP                 start=v[0x038], values=[0], target=0x0AB0
0AA4  0D EF 01 48 01 3A 02 7A 01 0B 0E 09    HOTSPOT_RECT                  left=0x01EF, top=0x0148, right=0x023A, bottom=0x017A, target=0x0E0B, cursor=0x09
0AB0  13                                     INPUTLOOPEND
0AB1  9A 37 B2 DB 0A                         STRCMP_NE_JMP                 start=v[0x037], values=[2], target=0x0ADB
0AB6  96 37 B2                               LOADSTRING                    dst=v[0x037], values=[2]
0AB9  18 A7 19                               CALL                          target=0x19A7
0ABC  1A 02 01 B1 C5 0A                      STRCMP_NE_JMP                 start=v[0x102], values=[1], target=0x0AC5
0AC2  15 9D 1C                               JMP                           target=0x1C9D
0AC5  96 37 B1                               LOADSTRING                    dst=v[0x037], values=[1]
0AC8  0B                                     INPUTLOOPSTART
0AC9  9A 32 B0 DA 0A                         STRCMP_NE_JMP                 start=v[0x032], values=[0], target=0x0ADA
0ACE  0D 9E 00 2D 01 DB 00 5C 01 69 0D 09    HOTSPOT_RECT                  left=0x009E, top=0x012D, right=0x00DB, bottom=0x015C, target=0x0D69, cursor=0x09
0ADA  13                                     INPUTLOOPEND
0ADB  9A 38 B2 E3 0A                         STRCMP_NE_JMP                 start=v[0x038], values=[2], target=0x0AE3
0AE0  15 9D 1C                               JMP                           target=0x1C9D
0AE3  96 1A B2                               LOADSTRING                    dst=v[0x01A], values=[2]
0AE6  96 02 30 B1                            LOADSTRING                    dst=v[0x002], values=[0, 1]
0AEA  18 65 0E                               CALL                          target=0x0E65
0AED  1A 27 01 B0 FB 0A                      STRCMP_NE_JMP                 start=v[0x127], values=[0], target=0x0AFB
0AF3  18 26 0E                               CALL                          target=0x0E26
0AF6  24 27 01 07 01                         MOV                           dst=v[0x127], src=0x0107
0AFB  15 FB 00                               JMP                           target=0x00FB
0AFE  96 1B B2                               LOADSTRING                    dst=v[0x01B], values=[2]
0B01  96 02 30 B2                            LOADSTRING                    dst=v[0x002], values=[0, 2]
0B05  18 65 0E                               CALL                          target=0x0E65
0B08  1A 27 01 B0 16 0B                      STRCMP_NE_JMP                 start=v[0x127], values=[0], target=0x0B16
0B0E  18 26 0E                               CALL                          target=0x0E26
0B11  24 27 01 08 01                         MOV                           dst=v[0x127], src=0x0108
0B16  15 FB 00                               JMP                           target=0x00FB
0B19  96 1C B2                               LOADSTRING                    dst=v[0x01C], values=[2]
0B1C  96 02 30 B3                            LOADSTRING                    dst=v[0x002], values=[0, 3]
0B20  18 65 0E                               CALL                          target=0x0E65
0B23  1A 27 01 B0 31 0B                      STRCMP_NE_JMP                 start=v[0x127], values=[0], target=0x0B31
0B29  18 26 0E                               CALL                          target=0x0E26
0B2C  24 27 01 09 01                         MOV                           dst=v[0x127], src=0x0109
0B31  15 FB 00                               JMP                           target=0x00FB
0B34  96 1D B2                               LOADSTRING                    dst=v[0x01D], values=[2]
0B37  96 02 30 B4                            LOADSTRING                    dst=v[0x002], values=[0, 4]
0B3B  18 65 0E                               CALL                          target=0x0E65
0B3E  1A 27 01 B0 4C 0B                      STRCMP_NE_JMP                 start=v[0x127], values=[0], target=0x0B4C
0B44  18 26 0E                               CALL                          target=0x0E26
0B47  24 27 01 0A 01                         MOV                           dst=v[0x127], src=0x010A
0B4C  15 FB 00                               JMP                           target=0x00FB
0B4F  96 1E B2                               LOADSTRING                    dst=v[0x01E], values=[2]
0B52  96 02 30 B5                            LOADSTRING                    dst=v[0x002], values=[0, 5]
0B56  18 65 0E                               CALL                          target=0x0E65
0B59  1A 27 01 B0 67 0B                      STRCMP_NE_JMP                 start=v[0x127], values=[0], target=0x0B67
0B5F  18 26 0E                               CALL                          target=0x0E26
0B62  24 27 01 0B 01                         MOV                           dst=v[0x127], src=0x010B
0B67  15 FB 00                               JMP                           target=0x00FB
0B6A  96 1F B2                               LOADSTRING                    dst=v[0x01F], values=[2]
0B6D  96 02 30 B6                            LOADSTRING                    dst=v[0x002], values=[0, 6]
0B71  18 65 0E                               CALL                          target=0x0E65
0B74  1A 27 01 B0 82 0B                      STRCMP_NE_JMP                 start=v[0x127], values=[0], target=0x0B82
0B7A  18 26 0E                               CALL                          target=0x0E26
0B7D  24 27 01 0C 01                         MOV                           dst=v[0x127], src=0x010C
0B82  15 FB 00                               JMP                           target=0x00FB
0B85  96 20 B2                               LOADSTRING                    dst=v[0x020], values=[2]
0B88  96 02 30 B7                            LOADSTRING                    dst=v[0x002], values=[0, 7]
0B8C  18 65 0E                               CALL                          target=0x0E65
0B8F  1A 27 01 B0 9B 0B                      STRCMP_NE_JMP                 start=v[0x127], values=[0], target=0x0B9B
0B95  18 26 0E                               CALL                          target=0x0E26
0B98  15 79 1C                               JMP                           target=0x1C79
0B9B  15 9D 1C                               JMP                           target=0x1C9D
0B9E  96 21 B2                               LOADSTRING                    dst=v[0x021], values=[2]
0BA1  96 02 30 B8                            LOADSTRING                    dst=v[0x002], values=[0, 8]
0BA5  18 65 0E                               CALL                          target=0x0E65
0BA8  1A 27 01 B0 B6 0B                      STRCMP_NE_JMP                 start=v[0x127], values=[0], target=0x0BB6
0BAE  18 26 0E                               CALL                          target=0x0E26
0BB1  24 27 01 0E 01                         MOV                           dst=v[0x127], src=0x010E
0BB6  15 FB 00                               JMP                           target=0x00FB
0BB9  96 22 B2                               LOADSTRING                    dst=v[0x022], values=[2]
0BBC  96 02 30 B9                            LOADSTRING                    dst=v[0x002], values=[0, 9]
0BC0  18 65 0E                               CALL                          target=0x0E65
0BC3  1A 27 01 B0 D1 0B                      STRCMP_NE_JMP                 start=v[0x127], values=[0], target=0x0BD1
0BC9  18 26 0E                               CALL                          target=0x0E26
0BCC  24 27 01 0F 01                         MOV                           dst=v[0x127], src=0x010F
0BD1  15 FB 00                               JMP                           target=0x00FB
0BD4  96 23 B2                               LOADSTRING                    dst=v[0x023], values=[2]
0BD7  96 02 31 B0                            LOADSTRING                    dst=v[0x002], values=[1, 0]
0BDB  18 65 0E                               CALL                          target=0x0E65
0BDE  1A 27 01 B0 EC 0B                      STRCMP_NE_JMP                 start=v[0x127], values=[0], target=0x0BEC
0BE4  18 26 0E                               CALL                          target=0x0E26
0BE7  24 27 01 10 01                         MOV                           dst=v[0x127], src=0x0110
0BEC  15 FB 00                               JMP                           target=0x00FB
0BEF  96 24 B2                               LOADSTRING                    dst=v[0x024], values=[2]
0BF2  96 02 31 B1                            LOADSTRING                    dst=v[0x002], values=[1, 1]
0BF6  18 65 0E                               CALL                          target=0x0E65
0BF9  1A 27 01 B0 07 0C                      STRCMP_NE_JMP                 start=v[0x127], values=[0], target=0x0C07
0BFF  18 26 0E                               CALL                          target=0x0E26
0C02  24 27 01 11 01                         MOV                           dst=v[0x127], src=0x0111
0C07  15 FB 00                               JMP                           target=0x00FB
0C0A  96 25 B2                               LOADSTRING                    dst=v[0x025], values=[2]
0C0D  96 02 31 B2                            LOADSTRING                    dst=v[0x002], values=[1, 2]
0C11  18 65 0E                               CALL                          target=0x0E65
0C14  1A 27 01 B0 22 0C                      STRCMP_NE_JMP                 start=v[0x127], values=[0], target=0x0C22
0C1A  18 26 0E                               CALL                          target=0x0E26
0C1D  24 27 01 12 01                         MOV                           dst=v[0x127], src=0x0112
0C22  15 FB 00                               JMP                           target=0x00FB
0C25  96 26 B2                               LOADSTRING                    dst=v[0x026], values=[2]
0C28  96 02 31 B3                            LOADSTRING                    dst=v[0x002], values=[1, 3]
0C2C  18 65 0E                               CALL                          target=0x0E65
0C2F  1A 27 01 B0 3D 0C                      STRCMP_NE_JMP                 start=v[0x127], values=[0], target=0x0C3D
0C35  18 26 0E                               CALL                          target=0x0E26
0C38  24 27 01 13 01                         MOV                           dst=v[0x127], src=0x0113
0C3D  15 FB 00                               JMP                           target=0x00FB
0C40  96 27 B2                               LOADSTRING                    dst=v[0x027], values=[2]
0C43  96 02 31 B4                            LOADSTRING                    dst=v[0x002], values=[1, 4]
0C47  18 65 0E                               CALL                          target=0x0E65
0C4A  1A 27 01 B0 58 0C                      STRCMP_NE_JMP                 start=v[0x127], values=[0], target=0x0C58
0C50  18 26 0E                               CALL                          target=0x0E26
0C53  24 27 01 14 01                         MOV                           dst=v[0x127], src=0x0114
0C58  15 FB 00                               JMP                           target=0x00FB
0C5B  96 28 B2                               LOADSTRING                    dst=v[0x028], values=[2]
0C5E  96 02 31 B5                            LOADSTRING                    dst=v[0x002], values=[1, 5]
0C62  18 65 0E                               CALL                          target=0x0E65
0C65  1A 27 01 B0 73 0C                      STRCMP_NE_JMP                 start=v[0x127], values=[0], target=0x0C73
0C6B  18 26 0E                               CALL                          target=0x0E26
0C6E  24 27 01 15 01                         MOV                           dst=v[0x127], src=0x0115
0C73  15 FB 00                               JMP                           target=0x00FB
0C76  96 29 B2                               LOADSTRING                    dst=v[0x029], values=[2]
0C79  96 02 31 B6                            LOADSTRING                    dst=v[0x002], values=[1, 6]
0C7D  18 65 0E                               CALL                          target=0x0E65
0C80  1A 27 01 B0 8E 0C                      STRCMP_NE_JMP                 start=v[0x127], values=[0], target=0x0C8E
0C86  18 26 0E                               CALL                          target=0x0E26
0C89  24 27 01 16 01                         MOV                           dst=v[0x127], src=0x0116
0C8E  15 FB 00                               JMP                           target=0x00FB
0C91  96 2A B2                               LOADSTRING                    dst=v[0x02A], values=[2]
0C94  96 02 31 B7                            LOADSTRING                    dst=v[0x002], values=[1, 7]
0C98  18 65 0E                               CALL                          target=0x0E65
0C9B  1A 27 01 B0 A9 0C                      STRCMP_NE_JMP                 start=v[0x127], values=[0], target=0x0CA9
0CA1  18 26 0E                               CALL                          target=0x0E26
0CA4  24 27 01 17 01                         MOV                           dst=v[0x127], src=0x0117
0CA9  15 FB 00                               JMP                           target=0x00FB
0CAC  96 2B B2                               LOADSTRING                    dst=v[0x02B], values=[2]
0CAF  96 02 31 B8                            LOADSTRING                    dst=v[0x002], values=[1, 8]
0CB3  18 65 0E                               CALL                          target=0x0E65
0CB6  1A 27 01 B0 C4 0C                      STRCMP_NE_JMP                 start=v[0x127], values=[0], target=0x0CC4
0CBC  18 26 0E                               CALL                          target=0x0E26
0CBF  24 27 01 18 01                         MOV                           dst=v[0x127], src=0x0118
0CC4  15 FB 00                               JMP                           target=0x00FB
0CC7  96 2C B2                               LOADSTRING                    dst=v[0x02C], values=[2]
0CCA  96 02 31 B9                            LOADSTRING                    dst=v[0x002], values=[1, 9]
0CCE  18 65 0E                               CALL                          target=0x0E65
0CD1  1A 27 01 B0 DF 0C                      STRCMP_NE_JMP                 start=v[0x127], values=[0], target=0x0CDF
0CD7  18 26 0E                               CALL                          target=0x0E26
0CDA  24 27 01 19 01                         MOV                           dst=v[0x127], src=0x0119
0CDF  15 FB 00                               JMP                           target=0x00FB
0CE2  96 2D B2                               LOADSTRING                    dst=v[0x02D], values=[2]
0CE5  96 02 32 B0                            LOADSTRING                    dst=v[0x002], values=[2, 0]
0CE9  18 65 0E                               CALL                          target=0x0E65
0CEC  1A 27 01 B0 FA 0C                      STRCMP_NE_JMP                 start=v[0x127], values=[0], target=0x0CFA
0CF2  18 26 0E                               CALL                          target=0x0E26
0CF5  24 27 01 1A 01                         MOV                           dst=v[0x127], src=0x011A
0CFA  15 FB 00                               JMP                           target=0x00FB
0CFD  96 2E B2                               LOADSTRING                    dst=v[0x02E], values=[2]
0D00  96 02 32 B1                            LOADSTRING                    dst=v[0x002], values=[2, 1]
0D04  18 65 0E                               CALL                          target=0x0E65
0D07  1A 27 01 B0 15 0D                      STRCMP_NE_JMP                 start=v[0x127], values=[0], target=0x0D15
0D0D  18 26 0E                               CALL                          target=0x0E26
0D10  24 27 01 1B 01                         MOV                           dst=v[0x127], src=0x011B
0D15  15 FB 00                               JMP                           target=0x00FB
0D18  96 2F B2                               LOADSTRING                    dst=v[0x02F], values=[2]
0D1B  96 02 32 B2                            LOADSTRING                    dst=v[0x002], values=[2, 2]
0D1F  18 65 0E                               CALL                          target=0x0E65
0D22  1A 27 01 B0 30 0D                      STRCMP_NE_JMP                 start=v[0x127], values=[0], target=0x0D30
0D28  18 26 0E                               CALL                          target=0x0E26
0D2B  24 27 01 1C 01                         MOV                           dst=v[0x127], src=0x011C
0D30  15 FB 00                               JMP                           target=0x00FB
0D33  96 30 B2                               LOADSTRING                    dst=v[0x030], values=[2]
0D36  96 02 32 B3                            LOADSTRING                    dst=v[0x002], values=[2, 3]
0D3A  18 65 0E                               CALL                          target=0x0E65
0D3D  1A 27 01 B0 4B 0D                      STRCMP_NE_JMP                 start=v[0x127], values=[0], target=0x0D4B
0D43  18 26 0E                               CALL                          target=0x0E26
0D46  24 27 01 1D 01                         MOV                           dst=v[0x127], src=0x011D
0D4B  15 FB 00                               JMP                           target=0x00FB
0D4E  96 31 B2                               LOADSTRING                    dst=v[0x031], values=[2]
0D51  96 02 32 B4                            LOADSTRING                    dst=v[0x002], values=[2, 4]
0D55  18 65 0E                               CALL                          target=0x0E65
0D58  1A 27 01 B0 66 0D                      STRCMP_NE_JMP                 start=v[0x127], values=[0], target=0x0D66
0D5E  18 26 0E                               CALL                          target=0x0E26
0D61  24 27 01 1E 01                         MOV                           dst=v[0x127], src=0x011E
0D66  15 FB 00                               JMP                           target=0x00FB
0D69  96 32 B2                               LOADSTRING                    dst=v[0x032], values=[2]
0D6C  96 02 32 B5                            LOADSTRING                    dst=v[0x002], values=[2, 5]
0D70  18 65 0E                               CALL                          target=0x0E65
0D73  1A 27 01 B0 81 0D                      STRCMP_NE_JMP                 start=v[0x127], values=[0], target=0x0D81
0D79  18 26 0E                               CALL                          target=0x0E26
0D7C  24 27 01 1F 01                         MOV                           dst=v[0x127], src=0x011F
0D81  15 FB 00                               JMP                           target=0x00FB
0D84  96 33 B2                               LOADSTRING                    dst=v[0x033], values=[2]
0D87  96 02 32 B6                            LOADSTRING                    dst=v[0x002], values=[2, 6]
0D8B  18 65 0E                               CALL                          target=0x0E65
0D8E  1A 27 01 B0 9C 0D                      STRCMP_NE_JMP                 start=v[0x127], values=[0], target=0x0D9C
0D94  18 26 0E                               CALL                          target=0x0E26
0D97  24 27 01 20 01                         MOV                           dst=v[0x127], src=0x0120
0D9C  15 FB 00                               JMP                           target=0x00FB
0D9F  96 34 B2                               LOADSTRING                    dst=v[0x034], values=[2]
0DA2  96 02 32 B7                            LOADSTRING                    dst=v[0x002], values=[2, 7]
0DA6  18 65 0E                               CALL                          target=0x0E65
0DA9  1A 27 01 B0 B7 0D                      STRCMP_NE_JMP                 start=v[0x127], values=[0], target=0x0DB7
0DAF  18 26 0E                               CALL                          target=0x0E26
0DB2  24 27 01 21 01                         MOV                           dst=v[0x127], src=0x0121
0DB7  15 FB 00                               JMP                           target=0x00FB
0DBA  96 35 B2                               LOADSTRING                    dst=v[0x035], values=[2]
0DBD  96 02 32 B8                            LOADSTRING                    dst=v[0x002], values=[2, 8]
0DC1  18 65 0E                               CALL                          target=0x0E65
0DC4  1A 27 01 B0 D2 0D                      STRCMP_NE_JMP                 start=v[0x127], values=[0], target=0x0DD2
0DCA  18 26 0E                               CALL                          target=0x0E26
0DCD  24 27 01 22 01                         MOV                           dst=v[0x127], src=0x0122
0DD2  15 FB 00                               JMP                           target=0x00FB
0DD5  96 36 B2                               LOADSTRING                    dst=v[0x036], values=[2]
0DD8  96 02 32 B9                            LOADSTRING                    dst=v[0x002], values=[2, 9]
0DDC  18 65 0E                               CALL                          target=0x0E65
0DDF  1A 27 01 B0 ED 0D                      STRCMP_NE_JMP                 start=v[0x127], values=[0], target=0x0DED
0DE5  18 26 0E                               CALL                          target=0x0E26
0DE8  24 27 01 23 01                         MOV                           dst=v[0x127], src=0x0123
0DED  15 FB 00                               JMP                           target=0x00FB
0DF0  96 37 B2                               LOADSTRING                    dst=v[0x037], values=[2]
0DF3  96 02 33 B0                            LOADSTRING                    dst=v[0x002], values=[3, 0]
0DF7  18 65 0E                               CALL                          target=0x0E65
0DFA  1A 27 01 B0 08 0E                      STRCMP_NE_JMP                 start=v[0x127], values=[0], target=0x0E08
0E00  18 26 0E                               CALL                          target=0x0E26
0E03  24 27 01 24 01                         MOV                           dst=v[0x127], src=0x0124
0E08  15 FB 00                               JMP                           target=0x00FB
0E0B  96 38 B2                               LOADSTRING                    dst=v[0x038], values=[2]
0E0E  96 02 33 B1                            LOADSTRING                    dst=v[0x002], values=[3, 1]
0E12  18 65 0E                               CALL                          target=0x0E65
0E15  1A 27 01 B0 23 0E                      STRCMP_NE_JMP                 start=v[0x127], values=[0], target=0x0E23
0E1B  18 26 0E                               CALL                          target=0x0E26
0E1E  24 27 01 25 01                         MOV                           dst=v[0x127], src=0x0125
0E23  15 FB 00                               JMP                           target=0x00FB
0E26  96 02 30 31 B1                         LOADSTRING                    dst=v[0x002], values=[0, 1, 1]
0E2B  96 13 B3                               LOADSTRING                    dst=v[0x013], values=[3]
0E2E  96 05 7C 23 63 23 E4                   LOADSTRING                    dst=v[0x005], values=[grid[v[0x002],v[0x003]]]
0E35  9A 04 23 E6 4B 0E                      STRCMP_NE_JMP                 start=v[0x004], values=[v[0x005]], target=0x0E4B
0E3B  96 19 E6                               LOADSTRING                    dst=v[0x019], values=[54]
0E3E  18 6D 0E                               CALL                          target=0x0E6D
0E41  96 19 B3                               LOADSTRING                    dst=v[0x019], values=[3]
0E44  39 23 63 23 E4 30 B0                   GRID_SWAP                     row1=v[0x002], col1=v[0x003], row2=0, col2=0
0E4B  9A 03 B9 58 0E                         STRCMP_NE_JMP                 start=v[0x003], values=[9], target=0x0E58
0E50  9F 02                                  INC                           var=v[0x002]
0E52  96 03 B0                               LOADSTRING                    dst=v[0x003], values=[0]
0E55  15 5A 0E                               JMP                           target=0x0E5A
0E58  9F 03                                  INC                           var=v[0x003]
0E5A  A3 02 33 B2 63 0E                      STRCMP_EQ_JMP                 start=v[0x002], values=[3, 2], target=0x0E63
0E60  15 2E 0E                               JMP                           target=0x0E2E
0E63  17 00                                  RET                           value=0x00
0E65  96 19 E4                               LOADSTRING                    dst=v[0x019], values=[52]
0E68  18 6D 0E                               CALL                          target=0x0E6D
0E6B  17 00                                  RET                           value=0x00
0E6D  1C 50 08                               VIDEO_TRANSITION_REF          ref=0x0850 (CH[80]=chpuzb.vdx)
0E70  9A 02 33 B1 7C 0E                      STRCMP_NE_JMP                 start=v[0x002], values=[3, 1], target=0x0E7C
0E76  18 E7 18                               CALL                          target=0x18E7
0E79  15 C1 11                               JMP                           target=0x11C1
0E7C  9A 02 33 B0 88 0E                      STRCMP_NE_JMP                 start=v[0x002], values=[3, 0], target=0x0E88
0E82  18 E7 17                               CALL                          target=0x17E7
0E85  15 C1 11                               JMP                           target=0x11C1
0E88  9A 02 32 B9 A9 0E                      STRCMP_NE_JMP                 start=v[0x002], values=[2, 9], target=0x0EA9
0E8E  18 27 13                               CALL                          target=0x1327
0E91  18 67 14                               CALL                          target=0x1467
0E94  18 67 15                               CALL                          target=0x1567
0E97  18 E7 15                               CALL                          target=0x15E7
0E9A  18 A7 17                               CALL                          target=0x17A7
0E9D  18 67 17                               CALL                          target=0x1767
0EA0  18 E7 17                               CALL                          target=0x17E7
0EA3  18 A7 18                               CALL                          target=0x18A7
0EA6  15 C1 11                               JMP                           target=0x11C1
0EA9  9A 02 32 B8 BE 0E                      STRCMP_NE_JMP                 start=v[0x002], values=[2, 8], target=0x0EBE
0EAF  18 27 17                               CALL                          target=0x1727
0EB2  18 67 17                               CALL                          target=0x1767
0EB5  18 E7 18                               CALL                          target=0x18E7
0EB8  18 87 18                               CALL                          target=0x1887
0EBB  15 C1 11                               JMP                           target=0x11C1
0EBE  9A 02 32 B7 D0 0E                      STRCMP_NE_JMP                 start=v[0x002], values=[2, 7], target=0x0ED0
0EC4  18 E7 16                               CALL                          target=0x16E7
0EC7  18 27 18                               CALL                          target=0x1827
0ECA  18 A7 18                               CALL                          target=0x18A7
0ECD  15 C1 11                               JMP                           target=0x11C1
0ED0  9A 02 32 B6 E5 0E                      STRCMP_NE_JMP                 start=v[0x002], values=[2, 6], target=0x0EE5
0ED6  18 67 16                               CALL                          target=0x1667
0ED9  18 A7 16                               CALL                          target=0x16A7
0EDC  18 E7 17                               CALL                          target=0x17E7
0EDF  18 87 18                               CALL                          target=0x1887
0EE2  15 C1 11                               JMP                           target=0x11C1
0EE5  9A 02 32 B5 06 0F                      STRCMP_NE_JMP                 start=v[0x002], values=[2, 5], target=0x0F06
0EEB  18 27 12                               CALL                          target=0x1227
0EEE  18 A7 13                               CALL                          target=0x13A7
0EF1  18 27 15                               CALL                          target=0x1527
0EF4  18 27 16                               CALL                          target=0x1627
0EF7  18 A7 15                               CALL                          target=0x15A7
0EFA  18 67 16                               CALL                          target=0x1667
0EFD  18 27 19                               CALL                          target=0x1927
0F00  18 27 18                               CALL                          target=0x1827
0F03  15 C1 11                               JMP                           target=0x11C1
0F06  9A 02 32 B4 18 0F                      STRCMP_NE_JMP                 start=v[0x002], values=[2, 4], target=0x0F18
0F0C  18 E7 15                               CALL                          target=0x15E7
0F0F  18 87 17                               CALL                          target=0x1787
0F12  18 07 19                               CALL                          target=0x1907
0F15  15 C1 11                               JMP                           target=0x11C1
0F18  9A 02 32 B3 36 0F                      STRCMP_NE_JMP                 start=v[0x002], values=[2, 3], target=0x0F36
0F1E  18 67 14                               CALL                          target=0x1467
0F21  18 67 15                               CALL                          target=0x1567
0F24  18 E7 15                               CALL                          target=0x15E7
0F27  18 27 17                               CALL                          target=0x1727
0F2A  18 A7 17                               CALL                          target=0x17A7
0F2D  18 C7 18                               CALL                          target=0x18C7
0F30  18 07 19                               CALL                          target=0x1907
0F33  15 C1 11                               JMP                           target=0x11C1
0F36  9A 02 32 B2 51 0F                      STRCMP_NE_JMP                 start=v[0x002], values=[2, 2], target=0x0F51
0F3C  18 27 14                               CALL                          target=0x1427
0F3F  18 E7 15                               CALL                          target=0x15E7
0F42  18 67 17                               CALL                          target=0x1767
0F45  18 07 17                               CALL                          target=0x1707
0F48  18 C7 18                               CALL                          target=0x18C7
0F4B  18 87 18                               CALL                          target=0x1887
0F4E  15 C1 11                               JMP                           target=0x11C1
0F51  9A 02 32 B1 6C 0F                      STRCMP_NE_JMP                 start=v[0x002], values=[2, 1], target=0x0F6C
0F57  18 A7 12                               CALL                          target=0x12A7
0F5A  18 A7 16                               CALL                          target=0x16A7
0F5D  18 27 17                               CALL                          target=0x1727
0F60  18 27 18                               CALL                          target=0x1827
0F63  18 A7 18                               CALL                          target=0x18A7
0F66  18 87 18                               CALL                          target=0x1887
0F69  15 C1 11                               JMP                           target=0x11C1
0F6C  9A 02 32 B0 87 0F                      STRCMP_NE_JMP                 start=v[0x002], values=[2, 0], target=0x0F87
0F72  18 E7 13                               CALL                          target=0x13E7
0F75  18 A7 15                               CALL                          target=0x15A7
0F78  18 67 16                               CALL                          target=0x1667
0F7B  18 07 17                               CALL                          target=0x1707
0F7E  18 47 18                               CALL                          target=0x1847
0F81  18 87 18                               CALL                          target=0x1887
0F84  15 C1 11                               JMP                           target=0x11C1
0F87  9A 02 31 B9 A5 0F                      STRCMP_NE_JMP                 start=v[0x002], values=[1, 9], target=0x0FA5
0F8D  18 A7 13                               CALL                          target=0x13A7
0F90  18 27 15                               CALL                          target=0x1527
0F93  18 A7 15                               CALL                          target=0x15A7
0F96  18 27 16                               CALL                          target=0x1627
0F99  18 A7 16                               CALL                          target=0x16A7
0F9C  18 07 18                               CALL                          target=0x1807
0F9F  18 47 18                               CALL                          target=0x1847
0FA2  15 C1 11                               JMP                           target=0x11C1
0FA5  9A 02 31 B8 B7 0F                      STRCMP_NE_JMP                 start=v[0x002], values=[1, 8], target=0x0FB7
0FAB  18 A7 15                               CALL                          target=0x15A7
0FAE  18 87 16                               CALL                          target=0x1687
0FB1  18 07 18                               CALL                          target=0x1807
0FB4  15 C1 11                               JMP                           target=0x11C1
0FB7  9A 02 31 B7 D2 0F                      STRCMP_NE_JMP                 start=v[0x002], values=[1, 7], target=0x0FD2
0FBD  18 67 15                               CALL                          target=0x1567
0FC0  18 A7 17                               CALL                          target=0x17A7
0FC3  18 47 17                               CALL                          target=0x1747
0FC6  18 C7 18                               CALL                          target=0x18C7
0FC9  18 87 17                               CALL                          target=0x1787
0FCC  18 07 19                               CALL                          target=0x1907
0FCF  15 C1 11                               JMP                           target=0x11C1
0FD2  9A 02 31 B6 ED 0F                      STRCMP_NE_JMP                 start=v[0x002], values=[1, 6], target=0x0FED
0FD8  18 27 15                               CALL                          target=0x1527
0FDB  18 27 16                               CALL                          target=0x1627
0FDE  18 C7 16                               CALL                          target=0x16C7
0FE1  18 87 16                               CALL                          target=0x1687
0FE4  18 07 18                               CALL                          target=0x1807
0FE7  18 47 18                               CALL                          target=0x1847
0FEA  15 C1 11                               JMP                           target=0x11C1
0FED  9A 02 31 B5 0B 10                      STRCMP_NE_JMP                 start=v[0x002], values=[1, 5], target=0x100B
0FF3  18 E7 14                               CALL                          target=0x14E7
0FF6  18 67 14                               CALL                          target=0x1467
0FF9  18 07 16                               CALL                          target=0x1607
0FFC  18 87 17                               CALL                          target=0x1787
0FFF  18 07 19                               CALL                          target=0x1907
1002  18 47 17                               CALL                          target=0x1747
1005  18 C7 18                               CALL                          target=0x18C7
1008  15 C1 11                               JMP                           target=0x11C1
100B  9A 02 31 B4 29 10                      STRCMP_NE_JMP                 start=v[0x002], values=[1, 4], target=0x1029
1011  18 A7 14                               CALL                          target=0x14A7
1014  18 A7 13                               CALL                          target=0x13A7
1017  18 C7 15                               CALL                          target=0x15C7
101A  18 87 16                               CALL                          target=0x1687
101D  18 07 18                               CALL                          target=0x1807
1020  18 C7 16                               CALL                          target=0x16C7
1023  18 47 18                               CALL                          target=0x1847
1026  15 C1 11                               JMP                           target=0x11C1
1029  9A 02 31 B3 3E 10                      STRCMP_NE_JMP                 start=v[0x002], values=[1, 3], target=0x103E
102F  18 67 14                               CALL                          target=0x1467
1032  18 87 15                               CALL                          target=0x1587
1035  18 07 16                               CALL                          target=0x1607
1038  18 07 19                               CALL                          target=0x1907
103B  15 C1 11                               JMP                           target=0x11C1
103E  9A 02 31 B2 53 10                      STRCMP_NE_JMP                 start=v[0x002], values=[1, 2], target=0x1053
1044  18 A7 13                               CALL                          target=0x13A7
1047  18 47 15                               CALL                          target=0x1547
104A  18 C7 15                               CALL                          target=0x15C7
104D  18 07 18                               CALL                          target=0x1807
1050  15 C1 11                               JMP                           target=0x11C1
1053  9A 02 31 B1 77 10                      STRCMP_NE_JMP                 start=v[0x002], values=[1, 1], target=0x1077
1059  18 27 13                               CALL                          target=0x1327
105C  18 E7 14                               CALL                          target=0x14E7
105F  18 27 14                               CALL                          target=0x1427
1062  18 87 15                               CALL                          target=0x1587
1065  18 07 16                               CALL                          target=0x1607
1068  18 87 17                               CALL                          target=0x1787
106B  18 07 19                               CALL                          target=0x1907
106E  18 47 17                               CALL                          target=0x1747
1071  18 C7 18                               CALL                          target=0x18C7
1074  15 C1 11                               JMP                           target=0x11C1
1077  9A 02 31 B0 98 10                      STRCMP_NE_JMP                 start=v[0x002], values=[1, 0], target=0x1098
107D  18 27 13                               CALL                          target=0x1327
1080  18 A7 12                               CALL                          target=0x12A7
1083  18 E7 12                               CALL                          target=0x12E7
1086  18 67 14                               CALL                          target=0x1467
1089  18 47 17                               CALL                          target=0x1747
108C  18 C7 18                               CALL                          target=0x18C7
108F  18 07 17                               CALL                          target=0x1707
1092  18 87 18                               CALL                          target=0x1887
1095  15 C1 11                               JMP                           target=0x11C1
1098  9A 02 30 B9 B9 10                      STRCMP_NE_JMP                 start=v[0x002], values=[0, 9], target=0x10B9
109E  18 27 12                               CALL                          target=0x1227
10A1  18 A7 12                               CALL                          target=0x12A7
10A4  18 67 12                               CALL                          target=0x1267
10A7  18 A7 13                               CALL                          target=0x13A7
10AA  18 C7 16                               CALL                          target=0x16C7
10AD  18 47 18                               CALL                          target=0x1847
10B0  18 07 17                               CALL                          target=0x1707
10B3  18 87 18                               CALL                          target=0x1887
10B6  15 C1 11                               JMP                           target=0x11C1
10B9  9A 02 30 B8 DD 10                      STRCMP_NE_JMP                 start=v[0x002], values=[0, 8], target=0x10DD
10BF  18 27 12                               CALL                          target=0x1227
10C2  18 E7 13                               CALL                          target=0x13E7
10C5  18 A7 14                               CALL                          target=0x14A7
10C8  18 47 15                               CALL                          target=0x1547
10CB  18 C7 15                               CALL                          target=0x15C7
10CE  18 87 16                               CALL                          target=0x1687
10D1  18 07 18                               CALL                          target=0x1807
10D4  18 C7 16                               CALL                          target=0x16C7
10D7  18 47 18                               CALL                          target=0x1847
10DA  15 C1 11                               JMP                           target=0x11C1
10DD  9A 02 30 B7 FE 10                      STRCMP_NE_JMP                 start=v[0x002], values=[0, 7], target=0x10FE
10E3  18 47 13                               CALL                          target=0x1347
10E6  18 87 14                               CALL                          target=0x1487
10E9  18 87 15                               CALL                          target=0x1587
10EC  18 07 16                               CALL                          target=0x1607
10EF  18 87 17                               CALL                          target=0x1787
10F2  18 07 19                               CALL                          target=0x1907
10F5  18 47 17                               CALL                          target=0x1747
10F8  18 C7 18                               CALL                          target=0x18C7
10FB  15 C1 11                               JMP                           target=0x11C1
10FE  9A 02 30 B6 25 11                      STRCMP_NE_JMP                 start=v[0x002], values=[0, 6], target=0x1125
1104  18 E7 12                               CALL                          target=0x12E7
1107  18 67 13                               CALL                          target=0x1367
110A  18 47 14                               CALL                          target=0x1447
110D  18 87 14                               CALL                          target=0x1487
1110  18 87 15                               CALL                          target=0x1587
1113  18 07 16                               CALL                          target=0x1607
1116  18 87 17                               CALL                          target=0x1787
1119  18 07 19                               CALL                          target=0x1907
111C  18 47 17                               CALL                          target=0x1747
111F  18 C7 18                               CALL                          target=0x18C7
1122  15 C1 11                               JMP                           target=0x11C1
1125  9A 02 30 B5 43 11                      STRCMP_NE_JMP                 start=v[0x002], values=[0, 5], target=0x1143
112B  18 27 13                               CALL                          target=0x1327
112E  18 C7 12                               CALL                          target=0x12C7
1131  18 47 14                               CALL                          target=0x1447
1134  18 47 17                               CALL                          target=0x1747
1137  18 C7 18                               CALL                          target=0x18C7
113A  18 07 17                               CALL                          target=0x1707
113D  18 87 18                               CALL                          target=0x1887
1140  15 C1 11                               JMP                           target=0x11C1
1143  9A 02 30 B4 5E 11                      STRCMP_NE_JMP                 start=v[0x002], values=[0, 4], target=0x115E
1149  18 67 12                               CALL                          target=0x1267
114C  18 E7 12                               CALL                          target=0x12E7
114F  18 07 14                               CALL                          target=0x1407
1152  18 47 14                               CALL                          target=0x1447
1155  18 07 17                               CALL                          target=0x1707
1158  18 87 18                               CALL                          target=0x1887
115B  15 C1 11                               JMP                           target=0x11C1
115E  9A 02 30 B3 7C 11                      STRCMP_NE_JMP                 start=v[0x002], values=[0, 3], target=0x117C
1164  18 27 12                               CALL                          target=0x1227
1167  18 C7 12                               CALL                          target=0x12C7
116A  18 07 14                               CALL                          target=0x1407
116D  18 C7 16                               CALL                          target=0x16C7
1170  18 47 18                               CALL                          target=0x1847
1173  18 07 17                               CALL                          target=0x1707
1176  18 87 18                               CALL                          target=0x1887
1179  15 C1 11                               JMP                           target=0x11C1
117C  9A 02 30 B2 A3 11                      STRCMP_NE_JMP                 start=v[0x002], values=[0, 2], target=0x11A3
1182  18 E7 11                               CALL                          target=0x11E7
1185  18 67 12                               CALL                          target=0x1267
1188  18 07 14                               CALL                          target=0x1407
118B  18 C7 13                               CALL                          target=0x13C7
118E  18 47 15                               CALL                          target=0x1547
1191  18 C7 15                               CALL                          target=0x15C7
1194  18 87 16                               CALL                          target=0x1687
1197  18 07 18                               CALL                          target=0x1807
119A  18 C7 16                               CALL                          target=0x16C7
119D  18 47 18                               CALL                          target=0x1847
11A0  15 C1 11                               JMP                           target=0x11C1
11A3  9A 02 30 B1 C1 11                      STRCMP_NE_JMP                 start=v[0x002], values=[0, 1], target=0x11C1
11A9  18 47 12                               CALL                          target=0x1247
11AC  18 C7 13                               CALL                          target=0x13C7
11AF  18 47 15                               CALL                          target=0x1547
11B2  18 C7 15                               CALL                          target=0x15C7
11B5  18 87 16                               CALL                          target=0x1687
11B8  18 07 18                               CALL                          target=0x1807
11BB  18 C7 16                               CALL                          target=0x16C7
11BE  18 47 18                               CALL                          target=0x1847
11C1  9A 19 E4 D5 11                         STRCMP_NE_JMP                 start=v[0x019], values=[52], target=0x11D5
11C6  26 63 68 70 75 7A 23 63 23 64 5F 00    VIDEO_NAME                    name="chpuz{v002}{v003}_"
11D2  15 E5 11                               JMP                           target=0x11E5
11D5  9A 19 E6 E5 11                         STRCMP_NE_JMP                 start=v[0x019], values=[54], target=0x11E5
11DA  26 63 68 70 75 7A 23 63 23 64 00       VIDEO_NAME                    name="chpuz{v002}{v003}"
11E5  17 00                                  RET                           value=0x00
11E7  9A 1A B0 F2 11                         STRCMP_NE_JMP                 start=v[0x01A], values=[0], target=0x11F2
11EC  1C 13 08                               VIDEO_TRANSITION_REF          ref=0x0813 (CH[19]=chpuz01_.vdx)
11EF  15 05 12                               JMP                           target=0x1205
11F2  9A 1A B1 FD 11                         STRCMP_NE_JMP                 start=v[0x01A], values=[1], target=0x11FD
11F7  1C 12 08                               VIDEO_TRANSITION_REF          ref=0x0812 (CH[18]=chpuz01.vdx)
11FA  15 05 12                               JMP                           target=0x1205
11FD  9A 1A B2 05 12                         STRCMP_NE_JMP                 start=v[0x01A], values=[2], target=0x1205
1202  1C 12 08                               VIDEO_TRANSITION_REF          ref=0x0812 (CH[18]=chpuz01.vdx)
1205  17 00                                  RET                           value=0x00
1207  9A 1A B0 12 12                         STRCMP_NE_JMP                 start=v[0x01A], values=[0], target=0x1212
120C  9C 13 08                               VIDEO_TRANSITION_REF          ref=0x0813 (CH[19]=chpuz01_.vdx)
120F  15 25 12                               JMP                           target=0x1225
1212  9A 1A B1 1D 12                         STRCMP_NE_JMP                 start=v[0x01A], values=[1], target=0x121D
1217  9C 12 08                               VIDEO_TRANSITION_REF          ref=0x0812 (CH[18]=chpuz01.vdx)
121A  15 25 12                               JMP                           target=0x1225
121D  9A 1A B2 25 12                         STRCMP_NE_JMP                 start=v[0x01A], values=[2], target=0x1225
1222  9C 12 08                               VIDEO_TRANSITION_REF          ref=0x0812 (CH[18]=chpuz01.vdx)
1225  17 00                                  RET                           value=0x00
1227  9A 1B B0 32 12                         STRCMP_NE_JMP                 start=v[0x01B], values=[0], target=0x1232
122C  1C 15 08                               VIDEO_TRANSITION_REF          ref=0x0815 (CH[21]=chpuz02_.vdx)
122F  15 45 12                               JMP                           target=0x1245
1232  9A 1B B1 3D 12                         STRCMP_NE_JMP                 start=v[0x01B], values=[1], target=0x123D
1237  1C 14 08                               VIDEO_TRANSITION_REF          ref=0x0814 (CH[20]=chpuz02.vdx)
123A  15 45 12                               JMP                           target=0x1245
123D  9A 1B B2 45 12                         STRCMP_NE_JMP                 start=v[0x01B], values=[2], target=0x1245
1242  1C 14 08                               VIDEO_TRANSITION_REF          ref=0x0814 (CH[20]=chpuz02.vdx)
1245  17 00                                  RET                           value=0x00
1247  9A 1B B0 52 12                         STRCMP_NE_JMP                 start=v[0x01B], values=[0], target=0x1252
124C  9C 15 08                               VIDEO_TRANSITION_REF          ref=0x0815 (CH[21]=chpuz02_.vdx)
124F  15 65 12                               JMP                           target=0x1265
1252  9A 1B B1 5D 12                         STRCMP_NE_JMP                 start=v[0x01B], values=[1], target=0x125D
1257  9C 14 08                               VIDEO_TRANSITION_REF          ref=0x0814 (CH[20]=chpuz02.vdx)
125A  15 65 12                               JMP                           target=0x1265
125D  9A 1B B2 65 12                         STRCMP_NE_JMP                 start=v[0x01B], values=[2], target=0x1265
1262  9C 14 08                               VIDEO_TRANSITION_REF          ref=0x0814 (CH[20]=chpuz02.vdx)
1265  17 00                                  RET                           value=0x00
1267  9A 1C B0 72 12                         STRCMP_NE_JMP                 start=v[0x01C], values=[0], target=0x1272
126C  1C 17 08                               VIDEO_TRANSITION_REF          ref=0x0817 (CH[23]=chpuz03_.vdx)
126F  15 85 12                               JMP                           target=0x1285
1272  9A 1C B1 7D 12                         STRCMP_NE_JMP                 start=v[0x01C], values=[1], target=0x127D
1277  1C 16 08                               VIDEO_TRANSITION_REF          ref=0x0816 (CH[22]=chpuz03.vdx)
127A  15 85 12                               JMP                           target=0x1285
127D  9A 1C B2 85 12                         STRCMP_NE_JMP                 start=v[0x01C], values=[2], target=0x1285
1282  1C 16 08                               VIDEO_TRANSITION_REF          ref=0x0816 (CH[22]=chpuz03.vdx)
1285  17 00                                  RET                           value=0x00
1287  9A 1C B0 92 12                         STRCMP_NE_JMP                 start=v[0x01C], values=[0], target=0x1292
128C  9C 17 08                               VIDEO_TRANSITION_REF          ref=0x0817 (CH[23]=chpuz03_.vdx)
128F  15 A5 12                               JMP                           target=0x12A5
1292  9A 1C B1 9D 12                         STRCMP_NE_JMP                 start=v[0x01C], values=[1], target=0x129D
1297  9C 16 08                               VIDEO_TRANSITION_REF          ref=0x0816 (CH[22]=chpuz03.vdx)
129A  15 A5 12                               JMP                           target=0x12A5
129D  9A 1C B2 A5 12                         STRCMP_NE_JMP                 start=v[0x01C], values=[2], target=0x12A5
12A2  9C 16 08                               VIDEO_TRANSITION_REF          ref=0x0816 (CH[22]=chpuz03.vdx)
12A5  17 00                                  RET                           value=0x00
12A7  9A 1D B0 B2 12                         STRCMP_NE_JMP                 start=v[0x01D], values=[0], target=0x12B2
12AC  1C 19 08                               VIDEO_TRANSITION_REF          ref=0x0819 (CH[25]=chpuz04_.vdx)
12AF  15 C5 12                               JMP                           target=0x12C5
12B2  9A 1D B1 BD 12                         STRCMP_NE_JMP                 start=v[0x01D], values=[1], target=0x12BD
12B7  1C 18 08                               VIDEO_TRANSITION_REF          ref=0x0818 (CH[24]=chpuz04.vdx)
12BA  15 C5 12                               JMP                           target=0x12C5
12BD  9A 1D B2 C5 12                         STRCMP_NE_JMP                 start=v[0x01D], values=[2], target=0x12C5
12C2  1C 18 08                               VIDEO_TRANSITION_REF          ref=0x0818 (CH[24]=chpuz04.vdx)
12C5  17 00                                  RET                           value=0x00
12C7  9A 1D B0 D2 12                         STRCMP_NE_JMP                 start=v[0x01D], values=[0], target=0x12D2
12CC  9C 19 08                               VIDEO_TRANSITION_REF          ref=0x0819 (CH[25]=chpuz04_.vdx)
12CF  15 E5 12                               JMP                           target=0x12E5
12D2  9A 1D B1 DD 12                         STRCMP_NE_JMP                 start=v[0x01D], values=[1], target=0x12DD
12D7  9C 18 08                               VIDEO_TRANSITION_REF          ref=0x0818 (CH[24]=chpuz04.vdx)
12DA  15 E5 12                               JMP                           target=0x12E5
12DD  9A 1D B2 E5 12                         STRCMP_NE_JMP                 start=v[0x01D], values=[2], target=0x12E5
12E2  9C 18 08                               VIDEO_TRANSITION_REF          ref=0x0818 (CH[24]=chpuz04.vdx)
12E5  17 00                                  RET                           value=0x00
12E7  9A 1E B0 F2 12                         STRCMP_NE_JMP                 start=v[0x01E], values=[0], target=0x12F2
12EC  1C 1B 08                               VIDEO_TRANSITION_REF          ref=0x081B (CH[27]=chpuz05_.vdx)
12EF  15 05 13                               JMP                           target=0x1305
12F2  9A 1E B1 FD 12                         STRCMP_NE_JMP                 start=v[0x01E], values=[1], target=0x12FD
12F7  1C 1A 08                               VIDEO_TRANSITION_REF          ref=0x081A (CH[26]=chpuz05.vdx)
12FA  15 05 13                               JMP                           target=0x1305
12FD  9A 1E B2 05 13                         STRCMP_NE_JMP                 start=v[0x01E], values=[2], target=0x1305
1302  1C 1A 08                               VIDEO_TRANSITION_REF          ref=0x081A (CH[26]=chpuz05.vdx)
1305  17 00                                  RET                           value=0x00
1307  9A 1E B0 12 13                         STRCMP_NE_JMP                 start=v[0x01E], values=[0], target=0x1312
130C  9C 1B 08                               VIDEO_TRANSITION_REF          ref=0x081B (CH[27]=chpuz05_.vdx)
130F  15 25 13                               JMP                           target=0x1325
1312  9A 1E B1 1D 13                         STRCMP_NE_JMP                 start=v[0x01E], values=[1], target=0x131D
1317  9C 1A 08                               VIDEO_TRANSITION_REF          ref=0x081A (CH[26]=chpuz05.vdx)
131A  15 25 13                               JMP                           target=0x1325
131D  9A 1E B2 25 13                         STRCMP_NE_JMP                 start=v[0x01E], values=[2], target=0x1325
1322  9C 1A 08                               VIDEO_TRANSITION_REF          ref=0x081A (CH[26]=chpuz05.vdx)
1325  17 00                                  RET                           value=0x00
1327  9A 1F B0 32 13                         STRCMP_NE_JMP                 start=v[0x01F], values=[0], target=0x1332
132C  1C 1D 08                               VIDEO_TRANSITION_REF          ref=0x081D (CH[29]=chpuz06_.vdx)
132F  15 45 13                               JMP                           target=0x1345
1332  9A 1F B1 3D 13                         STRCMP_NE_JMP                 start=v[0x01F], values=[1], target=0x133D
1337  1C 1C 08                               VIDEO_TRANSITION_REF          ref=0x081C (CH[28]=chpuz06.vdx)
133A  15 45 13                               JMP                           target=0x1345
133D  9A 1F B2 45 13                         STRCMP_NE_JMP                 start=v[0x01F], values=[2], target=0x1345
1342  1C 1C 08                               VIDEO_TRANSITION_REF          ref=0x081C (CH[28]=chpuz06.vdx)
1345  17 00                                  RET                           value=0x00
1347  9A 1F B0 52 13                         STRCMP_NE_JMP                 start=v[0x01F], values=[0], target=0x1352
134C  9C 1D 08                               VIDEO_TRANSITION_REF          ref=0x081D (CH[29]=chpuz06_.vdx)
134F  15 65 13                               JMP                           target=0x1365
1352  9A 1F B1 5D 13                         STRCMP_NE_JMP                 start=v[0x01F], values=[1], target=0x135D
1357  9C 1C 08                               VIDEO_TRANSITION_REF          ref=0x081C (CH[28]=chpuz06.vdx)
135A  15 65 13                               JMP                           target=0x1365
135D  9A 1F B2 65 13                         STRCMP_NE_JMP                 start=v[0x01F], values=[2], target=0x1365
1362  9C 1C 08                               VIDEO_TRANSITION_REF          ref=0x081C (CH[28]=chpuz06.vdx)
1365  17 00                                  RET                           value=0x00
1367  9A 20 B0 72 13                         STRCMP_NE_JMP                 start=v[0x020], values=[0], target=0x1372
136C  1C 1F 08                               VIDEO_TRANSITION_REF          ref=0x081F (CH[31]=chpuz07_.vdx)
136F  15 85 13                               JMP                           target=0x1385
1372  9A 20 B1 7D 13                         STRCMP_NE_JMP                 start=v[0x020], values=[1], target=0x137D
1377  1C 1E 08                               VIDEO_TRANSITION_REF          ref=0x081E (CH[30]=chpuz07.vdx)
137A  15 85 13                               JMP                           target=0x1385
137D  9A 20 B2 85 13                         STRCMP_NE_JMP                 start=v[0x020], values=[2], target=0x1385
1382  1C 1E 08                               VIDEO_TRANSITION_REF          ref=0x081E (CH[30]=chpuz07.vdx)
1385  17 00                                  RET                           value=0x00
1387  9A 20 B0 92 13                         STRCMP_NE_JMP                 start=v[0x020], values=[0], target=0x1392
138C  9C 1F 08                               VIDEO_TRANSITION_REF          ref=0x081F (CH[31]=chpuz07_.vdx)
138F  15 A5 13                               JMP                           target=0x13A5
1392  9A 20 B1 9D 13                         STRCMP_NE_JMP                 start=v[0x020], values=[1], target=0x139D
1397  9C 1E 08                               VIDEO_TRANSITION_REF          ref=0x081E (CH[30]=chpuz07.vdx)
139A  15 A5 13                               JMP                           target=0x13A5
139D  9A 20 B2 A5 13                         STRCMP_NE_JMP                 start=v[0x020], values=[2], target=0x13A5
13A2  9C 1E 08                               VIDEO_TRANSITION_REF          ref=0x081E (CH[30]=chpuz07.vdx)
13A5  17 00                                  RET                           value=0x00
13A7  9A 21 B0 B2 13                         STRCMP_NE_JMP                 start=v[0x021], values=[0], target=0x13B2
13AC  1C 21 08                               VIDEO_TRANSITION_REF          ref=0x0821 (CH[33]=chpuz08_.vdx)
13AF  15 C5 13                               JMP                           target=0x13C5
13B2  9A 21 B1 BD 13                         STRCMP_NE_JMP                 start=v[0x021], values=[1], target=0x13BD
13B7  1C 20 08                               VIDEO_TRANSITION_REF          ref=0x0820 (CH[32]=chpuz08.vdx)
13BA  15 C5 13                               JMP                           target=0x13C5
13BD  9A 21 B2 C5 13                         STRCMP_NE_JMP                 start=v[0x021], values=[2], target=0x13C5
13C2  1C 20 08                               VIDEO_TRANSITION_REF          ref=0x0820 (CH[32]=chpuz08.vdx)
13C5  17 00                                  RET                           value=0x00
13C7  9A 21 B0 D2 13                         STRCMP_NE_JMP                 start=v[0x021], values=[0], target=0x13D2
13CC  9C 21 08                               VIDEO_TRANSITION_REF          ref=0x0821 (CH[33]=chpuz08_.vdx)
13CF  15 E5 13                               JMP                           target=0x13E5
13D2  9A 21 B1 DD 13                         STRCMP_NE_JMP                 start=v[0x021], values=[1], target=0x13DD
13D7  9C 20 08                               VIDEO_TRANSITION_REF          ref=0x0820 (CH[32]=chpuz08.vdx)
13DA  15 E5 13                               JMP                           target=0x13E5
13DD  9A 21 B2 E5 13                         STRCMP_NE_JMP                 start=v[0x021], values=[2], target=0x13E5
13E2  9C 20 08                               VIDEO_TRANSITION_REF          ref=0x0820 (CH[32]=chpuz08.vdx)
13E5  17 00                                  RET                           value=0x00
13E7  9A 22 B0 F2 13                         STRCMP_NE_JMP                 start=v[0x022], values=[0], target=0x13F2
13EC  1C 23 08                               VIDEO_TRANSITION_REF          ref=0x0823 (CH[35]=chpuz09_.vdx)
13EF  15 05 14                               JMP                           target=0x1405
13F2  9A 22 B1 FD 13                         STRCMP_NE_JMP                 start=v[0x022], values=[1], target=0x13FD
13F7  1C 22 08                               VIDEO_TRANSITION_REF          ref=0x0822 (CH[34]=chpuz09.vdx)
13FA  15 05 14                               JMP                           target=0x1405
13FD  9A 22 B2 05 14                         STRCMP_NE_JMP                 start=v[0x022], values=[2], target=0x1405
1402  1C 22 08                               VIDEO_TRANSITION_REF          ref=0x0822 (CH[34]=chpuz09.vdx)
1405  17 00                                  RET                           value=0x00
1407  9A 22 B0 12 14                         STRCMP_NE_JMP                 start=v[0x022], values=[0], target=0x1412
140C  9C 23 08                               VIDEO_TRANSITION_REF          ref=0x0823 (CH[35]=chpuz09_.vdx)
140F  15 25 14                               JMP                           target=0x1425
1412  9A 22 B1 1D 14                         STRCMP_NE_JMP                 start=v[0x022], values=[1], target=0x141D
1417  9C 22 08                               VIDEO_TRANSITION_REF          ref=0x0822 (CH[34]=chpuz09.vdx)
141A  15 25 14                               JMP                           target=0x1425
141D  9A 22 B2 25 14                         STRCMP_NE_JMP                 start=v[0x022], values=[2], target=0x1425
1422  9C 22 08                               VIDEO_TRANSITION_REF          ref=0x0822 (CH[34]=chpuz09.vdx)
1425  17 00                                  RET                           value=0x00
1427  9A 23 B0 32 14                         STRCMP_NE_JMP                 start=v[0x023], values=[0], target=0x1432
142C  1C 25 08                               VIDEO_TRANSITION_REF          ref=0x0825 (CH[37]=chpuz10_.vdx)
142F  15 45 14                               JMP                           target=0x1445
1432  9A 23 B1 3D 14                         STRCMP_NE_JMP                 start=v[0x023], values=[1], target=0x143D
1437  1C 24 08                               VIDEO_TRANSITION_REF          ref=0x0824 (CH[36]=chpuz10.vdx)
143A  15 45 14                               JMP                           target=0x1445
143D  9A 23 B2 45 14                         STRCMP_NE_JMP                 start=v[0x023], values=[2], target=0x1445
1442  1C 24 08                               VIDEO_TRANSITION_REF          ref=0x0824 (CH[36]=chpuz10.vdx)
1445  17 00                                  RET                           value=0x00
1447  9A 23 B0 52 14                         STRCMP_NE_JMP                 start=v[0x023], values=[0], target=0x1452
144C  9C 25 08                               VIDEO_TRANSITION_REF          ref=0x0825 (CH[37]=chpuz10_.vdx)
144F  15 65 14                               JMP                           target=0x1465
1452  9A 23 B1 5D 14                         STRCMP_NE_JMP                 start=v[0x023], values=[1], target=0x145D
1457  9C 24 08                               VIDEO_TRANSITION_REF          ref=0x0824 (CH[36]=chpuz10.vdx)
145A  15 65 14                               JMP                           target=0x1465
145D  9A 23 B2 65 14                         STRCMP_NE_JMP                 start=v[0x023], values=[2], target=0x1465
1462  9C 24 08                               VIDEO_TRANSITION_REF          ref=0x0824 (CH[36]=chpuz10.vdx)
1465  17 00                                  RET                           value=0x00
1467  9A 24 B0 72 14                         STRCMP_NE_JMP                 start=v[0x024], values=[0], target=0x1472
146C  1C 27 08                               VIDEO_TRANSITION_REF          ref=0x0827 (CH[39]=chpuz11_.vdx)
146F  15 85 14                               JMP                           target=0x1485
1472  9A 24 B1 7D 14                         STRCMP_NE_JMP                 start=v[0x024], values=[1], target=0x147D
1477  1C 26 08                               VIDEO_TRANSITION_REF          ref=0x0826 (CH[38]=chpuz11.vdx)
147A  15 85 14                               JMP                           target=0x1485
147D  9A 24 B2 85 14                         STRCMP_NE_JMP                 start=v[0x024], values=[2], target=0x1485
1482  1C 26 08                               VIDEO_TRANSITION_REF          ref=0x0826 (CH[38]=chpuz11.vdx)
1485  17 00                                  RET                           value=0x00
1487  9A 24 B0 92 14                         STRCMP_NE_JMP                 start=v[0x024], values=[0], target=0x1492
148C  9C 27 08                               VIDEO_TRANSITION_REF          ref=0x0827 (CH[39]=chpuz11_.vdx)
148F  15 A5 14                               JMP                           target=0x14A5
1492  9A 24 B1 9D 14                         STRCMP_NE_JMP                 start=v[0x024], values=[1], target=0x149D
1497  9C 26 08                               VIDEO_TRANSITION_REF          ref=0x0826 (CH[38]=chpuz11.vdx)
149A  15 A5 14                               JMP                           target=0x14A5
149D  9A 24 B2 A5 14                         STRCMP_NE_JMP                 start=v[0x024], values=[2], target=0x14A5
14A2  9C 26 08                               VIDEO_TRANSITION_REF          ref=0x0826 (CH[38]=chpuz11.vdx)
14A5  17 00                                  RET                           value=0x00
14A7  9A 25 B0 B2 14                         STRCMP_NE_JMP                 start=v[0x025], values=[0], target=0x14B2
14AC  1C 29 08                               VIDEO_TRANSITION_REF          ref=0x0829 (CH[41]=chpuz12_.vdx)
14AF  15 C5 14                               JMP                           target=0x14C5
14B2  9A 25 B1 BD 14                         STRCMP_NE_JMP                 start=v[0x025], values=[1], target=0x14BD
14B7  1C 28 08                               VIDEO_TRANSITION_REF          ref=0x0828 (CH[40]=chpuz12.vdx)
14BA  15 C5 14                               JMP                           target=0x14C5
14BD  9A 25 B2 C5 14                         STRCMP_NE_JMP                 start=v[0x025], values=[2], target=0x14C5
14C2  1C 28 08                               VIDEO_TRANSITION_REF          ref=0x0828 (CH[40]=chpuz12.vdx)
14C5  17 00                                  RET                           value=0x00
14C7  9A 25 B0 D2 14                         STRCMP_NE_JMP                 start=v[0x025], values=[0], target=0x14D2
14CC  9C 29 08                               VIDEO_TRANSITION_REF          ref=0x0829 (CH[41]=chpuz12_.vdx)
14CF  15 E5 14                               JMP                           target=0x14E5
14D2  9A 25 B1 DD 14                         STRCMP_NE_JMP                 start=v[0x025], values=[1], target=0x14DD
14D7  9C 28 08                               VIDEO_TRANSITION_REF          ref=0x0828 (CH[40]=chpuz12.vdx)
14DA  15 E5 14                               JMP                           target=0x14E5
14DD  9A 25 B2 E5 14                         STRCMP_NE_JMP                 start=v[0x025], values=[2], target=0x14E5
14E2  9C 28 08                               VIDEO_TRANSITION_REF          ref=0x0828 (CH[40]=chpuz12.vdx)
14E5  17 00                                  RET                           value=0x00
14E7  9A 26 B0 F2 14                         STRCMP_NE_JMP                 start=v[0x026], values=[0], target=0x14F2
14EC  1C 2B 08                               VIDEO_TRANSITION_REF          ref=0x082B (CH[43]=chpuz13_.vdx)
14EF  15 05 15                               JMP                           target=0x1505
14F2  9A 26 B1 FD 14                         STRCMP_NE_JMP                 start=v[0x026], values=[1], target=0x14FD
14F7  1C 2A 08                               VIDEO_TRANSITION_REF          ref=0x082A (CH[42]=chpuz13.vdx)
14FA  15 05 15                               JMP                           target=0x1505
14FD  9A 26 B2 05 15                         STRCMP_NE_JMP                 start=v[0x026], values=[2], target=0x1505
1502  1C 2A 08                               VIDEO_TRANSITION_REF          ref=0x082A (CH[42]=chpuz13.vdx)
1505  17 00                                  RET                           value=0x00
1507  9A 26 B0 12 15                         STRCMP_NE_JMP                 start=v[0x026], values=[0], target=0x1512
150C  9C 2B 08                               VIDEO_TRANSITION_REF          ref=0x082B (CH[43]=chpuz13_.vdx)
150F  15 25 15                               JMP                           target=0x1525
1512  9A 26 B1 1D 15                         STRCMP_NE_JMP                 start=v[0x026], values=[1], target=0x151D
1517  9C 2A 08                               VIDEO_TRANSITION_REF          ref=0x082A (CH[42]=chpuz13.vdx)
151A  15 25 15                               JMP                           target=0x1525
151D  9A 26 B2 25 15                         STRCMP_NE_JMP                 start=v[0x026], values=[2], target=0x1525
1522  9C 2A 08                               VIDEO_TRANSITION_REF          ref=0x082A (CH[42]=chpuz13.vdx)
1525  17 00                                  RET                           value=0x00
1527  9A 27 B0 32 15                         STRCMP_NE_JMP                 start=v[0x027], values=[0], target=0x1532
152C  1C 2D 08                               VIDEO_TRANSITION_REF          ref=0x082D (CH[45]=chpuz14_.vdx)
152F  15 45 15                               JMP                           target=0x1545
1532  9A 27 B1 3D 15                         STRCMP_NE_JMP                 start=v[0x027], values=[1], target=0x153D
1537  1C 2C 08                               VIDEO_TRANSITION_REF          ref=0x082C (CH[44]=chpuz14.vdx)
153A  15 45 15                               JMP                           target=0x1545
153D  9A 27 B2 45 15                         STRCMP_NE_JMP                 start=v[0x027], values=[2], target=0x1545
1542  1C 2C 08                               VIDEO_TRANSITION_REF          ref=0x082C (CH[44]=chpuz14.vdx)
1545  17 00                                  RET                           value=0x00
1547  9A 27 B0 52 15                         STRCMP_NE_JMP                 start=v[0x027], values=[0], target=0x1552
154C  9C 2D 08                               VIDEO_TRANSITION_REF          ref=0x082D (CH[45]=chpuz14_.vdx)
154F  15 65 15                               JMP                           target=0x1565
1552  9A 27 B1 5D 15                         STRCMP_NE_JMP                 start=v[0x027], values=[1], target=0x155D
1557  9C 2C 08                               VIDEO_TRANSITION_REF          ref=0x082C (CH[44]=chpuz14.vdx)
155A  15 65 15                               JMP                           target=0x1565
155D  9A 27 B2 65 15                         STRCMP_NE_JMP                 start=v[0x027], values=[2], target=0x1565
1562  9C 2C 08                               VIDEO_TRANSITION_REF          ref=0x082C (CH[44]=chpuz14.vdx)
1565  17 00                                  RET                           value=0x00
1567  9A 28 B0 72 15                         STRCMP_NE_JMP                 start=v[0x028], values=[0], target=0x1572
156C  1C 2F 08                               VIDEO_TRANSITION_REF          ref=0x082F (CH[47]=chpuz15_.vdx)
156F  15 85 15                               JMP                           target=0x1585
1572  9A 28 B1 7D 15                         STRCMP_NE_JMP                 start=v[0x028], values=[1], target=0x157D
1577  1C 2E 08                               VIDEO_TRANSITION_REF          ref=0x082E (CH[46]=chpuz15.vdx)
157A  15 85 15                               JMP                           target=0x1585
157D  9A 28 B2 85 15                         STRCMP_NE_JMP                 start=v[0x028], values=[2], target=0x1585
1582  1C 2E 08                               VIDEO_TRANSITION_REF          ref=0x082E (CH[46]=chpuz15.vdx)
1585  17 00                                  RET                           value=0x00
1587  9A 28 B0 92 15                         STRCMP_NE_JMP                 start=v[0x028], values=[0], target=0x1592
158C  9C 2F 08                               VIDEO_TRANSITION_REF          ref=0x082F (CH[47]=chpuz15_.vdx)
158F  15 A5 15                               JMP                           target=0x15A5
1592  9A 28 B1 9D 15                         STRCMP_NE_JMP                 start=v[0x028], values=[1], target=0x159D
1597  9C 2E 08                               VIDEO_TRANSITION_REF          ref=0x082E (CH[46]=chpuz15.vdx)
159A  15 A5 15                               JMP                           target=0x15A5
159D  9A 28 B2 A5 15                         STRCMP_NE_JMP                 start=v[0x028], values=[2], target=0x15A5
15A2  9C 2E 08                               VIDEO_TRANSITION_REF          ref=0x082E (CH[46]=chpuz15.vdx)
15A5  17 00                                  RET                           value=0x00
15A7  9A 29 B0 B2 15                         STRCMP_NE_JMP                 start=v[0x029], values=[0], target=0x15B2
15AC  1C 31 08                               VIDEO_TRANSITION_REF          ref=0x0831 (CH[49]=chpuz16_.vdx)
15AF  15 C5 15                               JMP                           target=0x15C5
15B2  9A 29 B1 BD 15                         STRCMP_NE_JMP                 start=v[0x029], values=[1], target=0x15BD
15B7  1C 30 08                               VIDEO_TRANSITION_REF          ref=0x0830 (CH[48]=chpuz16.vdx)
15BA  15 C5 15                               JMP                           target=0x15C5
15BD  9A 29 B2 C5 15                         STRCMP_NE_JMP                 start=v[0x029], values=[2], target=0x15C5
15C2  1C 30 08                               VIDEO_TRANSITION_REF          ref=0x0830 (CH[48]=chpuz16.vdx)
15C5  17 00                                  RET                           value=0x00
15C7  9A 29 B0 D2 15                         STRCMP_NE_JMP                 start=v[0x029], values=[0], target=0x15D2
15CC  9C 31 08                               VIDEO_TRANSITION_REF          ref=0x0831 (CH[49]=chpuz16_.vdx)
15CF  15 E5 15                               JMP                           target=0x15E5
15D2  9A 29 B1 DD 15                         STRCMP_NE_JMP                 start=v[0x029], values=[1], target=0x15DD
15D7  9C 30 08                               VIDEO_TRANSITION_REF          ref=0x0830 (CH[48]=chpuz16.vdx)
15DA  15 E5 15                               JMP                           target=0x15E5
15DD  9A 29 B2 E5 15                         STRCMP_NE_JMP                 start=v[0x029], values=[2], target=0x15E5
15E2  9C 30 08                               VIDEO_TRANSITION_REF          ref=0x0830 (CH[48]=chpuz16.vdx)
15E5  17 00                                  RET                           value=0x00
15E7  9A 2A B0 F2 15                         STRCMP_NE_JMP                 start=v[0x02A], values=[0], target=0x15F2
15EC  1C 33 08                               VIDEO_TRANSITION_REF          ref=0x0833 (CH[51]=chpuz17_.vdx)
15EF  15 05 16                               JMP                           target=0x1605
15F2  9A 2A B1 FD 15                         STRCMP_NE_JMP                 start=v[0x02A], values=[1], target=0x15FD
15F7  1C 32 08                               VIDEO_TRANSITION_REF          ref=0x0832 (CH[50]=chpuz17.vdx)
15FA  15 05 16                               JMP                           target=0x1605
15FD  9A 2A B2 05 16                         STRCMP_NE_JMP                 start=v[0x02A], values=[2], target=0x1605
1602  1C 32 08                               VIDEO_TRANSITION_REF          ref=0x0832 (CH[50]=chpuz17.vdx)
1605  17 00                                  RET                           value=0x00
1607  9A 2A B0 12 16                         STRCMP_NE_JMP                 start=v[0x02A], values=[0], target=0x1612
160C  9C 33 08                               VIDEO_TRANSITION_REF          ref=0x0833 (CH[51]=chpuz17_.vdx)
160F  15 25 16                               JMP                           target=0x1625
1612  9A 2A B1 1D 16                         STRCMP_NE_JMP                 start=v[0x02A], values=[1], target=0x161D
1617  9C 32 08                               VIDEO_TRANSITION_REF          ref=0x0832 (CH[50]=chpuz17.vdx)
161A  15 25 16                               JMP                           target=0x1625
161D  9A 2A B2 25 16                         STRCMP_NE_JMP                 start=v[0x02A], values=[2], target=0x1625
1622  9C 32 08                               VIDEO_TRANSITION_REF          ref=0x0832 (CH[50]=chpuz17.vdx)
1625  17 00                                  RET                           value=0x00
1627  9A 2B B0 32 16                         STRCMP_NE_JMP                 start=v[0x02B], values=[0], target=0x1632
162C  1C 35 08                               VIDEO_TRANSITION_REF          ref=0x0835 (CH[53]=chpuz18_.vdx)
162F  15 45 16                               JMP                           target=0x1645
1632  9A 2B B1 3D 16                         STRCMP_NE_JMP                 start=v[0x02B], values=[1], target=0x163D
1637  1C 34 08                               VIDEO_TRANSITION_REF          ref=0x0834 (CH[52]=chpuz18.vdx)
163A  15 45 16                               JMP                           target=0x1645
163D  9A 2B B2 45 16                         STRCMP_NE_JMP                 start=v[0x02B], values=[2], target=0x1645
1642  1C 34 08                               VIDEO_TRANSITION_REF          ref=0x0834 (CH[52]=chpuz18.vdx)
1645  17 00                                  RET                           value=0x00
1647  9A 2B B0 52 16                         STRCMP_NE_JMP                 start=v[0x02B], values=[0], target=0x1652
164C  9C 35 08                               VIDEO_TRANSITION_REF          ref=0x0835 (CH[53]=chpuz18_.vdx)
164F  15 65 16                               JMP                           target=0x1665
1652  9A 2B B1 5D 16                         STRCMP_NE_JMP                 start=v[0x02B], values=[1], target=0x165D
1657  9C 34 08                               VIDEO_TRANSITION_REF          ref=0x0834 (CH[52]=chpuz18.vdx)
165A  15 65 16                               JMP                           target=0x1665
165D  9A 2B B2 65 16                         STRCMP_NE_JMP                 start=v[0x02B], values=[2], target=0x1665
1662  9C 34 08                               VIDEO_TRANSITION_REF          ref=0x0834 (CH[52]=chpuz18.vdx)
1665  17 00                                  RET                           value=0x00
1667  9A 2C B0 72 16                         STRCMP_NE_JMP                 start=v[0x02C], values=[0], target=0x1672
166C  1C 37 08                               VIDEO_TRANSITION_REF          ref=0x0837 (CH[55]=chpuz19_.vdx)
166F  15 85 16                               JMP                           target=0x1685
1672  9A 2C B1 7D 16                         STRCMP_NE_JMP                 start=v[0x02C], values=[1], target=0x167D
1677  1C 36 08                               VIDEO_TRANSITION_REF          ref=0x0836 (CH[54]=chpuz19.vdx)
167A  15 85 16                               JMP                           target=0x1685
167D  9A 2C B2 85 16                         STRCMP_NE_JMP                 start=v[0x02C], values=[2], target=0x1685
1682  1C 36 08                               VIDEO_TRANSITION_REF          ref=0x0836 (CH[54]=chpuz19.vdx)
1685  17 00                                  RET                           value=0x00
1687  9A 2C B0 92 16                         STRCMP_NE_JMP                 start=v[0x02C], values=[0], target=0x1692
168C  9C 37 08                               VIDEO_TRANSITION_REF          ref=0x0837 (CH[55]=chpuz19_.vdx)
168F  15 A5 16                               JMP                           target=0x16A5
1692  9A 2C B1 9D 16                         STRCMP_NE_JMP                 start=v[0x02C], values=[1], target=0x169D
1697  9C 36 08                               VIDEO_TRANSITION_REF          ref=0x0836 (CH[54]=chpuz19.vdx)
169A  15 A5 16                               JMP                           target=0x16A5
169D  9A 2C B2 A5 16                         STRCMP_NE_JMP                 start=v[0x02C], values=[2], target=0x16A5
16A2  9C 36 08                               VIDEO_TRANSITION_REF          ref=0x0836 (CH[54]=chpuz19.vdx)
16A5  17 00                                  RET                           value=0x00
16A7  9A 2D B0 B2 16                         STRCMP_NE_JMP                 start=v[0x02D], values=[0], target=0x16B2
16AC  1C 39 08                               VIDEO_TRANSITION_REF          ref=0x0839 (CH[57]=chpuz20_.vdx)
16AF  15 C5 16                               JMP                           target=0x16C5
16B2  9A 2D B1 BD 16                         STRCMP_NE_JMP                 start=v[0x02D], values=[1], target=0x16BD
16B7  1C 38 08                               VIDEO_TRANSITION_REF          ref=0x0838 (CH[56]=chpuz20.vdx)
16BA  15 C5 16                               JMP                           target=0x16C5
16BD  9A 2D B2 C5 16                         STRCMP_NE_JMP                 start=v[0x02D], values=[2], target=0x16C5
16C2  1C 38 08                               VIDEO_TRANSITION_REF          ref=0x0838 (CH[56]=chpuz20.vdx)
16C5  17 00                                  RET                           value=0x00
16C7  9A 2D B0 D2 16                         STRCMP_NE_JMP                 start=v[0x02D], values=[0], target=0x16D2
16CC  9C 39 08                               VIDEO_TRANSITION_REF          ref=0x0839 (CH[57]=chpuz20_.vdx)
16CF  15 E5 16                               JMP                           target=0x16E5
16D2  9A 2D B1 DD 16                         STRCMP_NE_JMP                 start=v[0x02D], values=[1], target=0x16DD
16D7  9C 38 08                               VIDEO_TRANSITION_REF          ref=0x0838 (CH[56]=chpuz20.vdx)
16DA  15 E5 16                               JMP                           target=0x16E5
16DD  9A 2D B2 E5 16                         STRCMP_NE_JMP                 start=v[0x02D], values=[2], target=0x16E5
16E2  9C 38 08                               VIDEO_TRANSITION_REF          ref=0x0838 (CH[56]=chpuz20.vdx)
16E5  17 00                                  RET                           value=0x00
16E7  9A 2E B0 F2 16                         STRCMP_NE_JMP                 start=v[0x02E], values=[0], target=0x16F2
16EC  1C 3B 08                               VIDEO_TRANSITION_REF          ref=0x083B (CH[59]=chpuz21_.vdx)
16EF  15 05 17                               JMP                           target=0x1705
16F2  9A 2E B1 FD 16                         STRCMP_NE_JMP                 start=v[0x02E], values=[1], target=0x16FD
16F7  1C 3A 08                               VIDEO_TRANSITION_REF          ref=0x083A (CH[58]=chpuz21.vdx)
16FA  15 05 17                               JMP                           target=0x1705
16FD  9A 2E B2 05 17                         STRCMP_NE_JMP                 start=v[0x02E], values=[2], target=0x1705
1702  1C 3A 08                               VIDEO_TRANSITION_REF          ref=0x083A (CH[58]=chpuz21.vdx)
1705  17 00                                  RET                           value=0x00
1707  9A 2E B0 12 17                         STRCMP_NE_JMP                 start=v[0x02E], values=[0], target=0x1712
170C  9C 3B 08                               VIDEO_TRANSITION_REF          ref=0x083B (CH[59]=chpuz21_.vdx)
170F  15 25 17                               JMP                           target=0x1725
1712  9A 2E B1 1D 17                         STRCMP_NE_JMP                 start=v[0x02E], values=[1], target=0x171D
1717  9C 3A 08                               VIDEO_TRANSITION_REF          ref=0x083A (CH[58]=chpuz21.vdx)
171A  15 25 17                               JMP                           target=0x1725
171D  9A 2E B2 25 17                         STRCMP_NE_JMP                 start=v[0x02E], values=[2], target=0x1725
1722  9C 3A 08                               VIDEO_TRANSITION_REF          ref=0x083A (CH[58]=chpuz21.vdx)
1725  17 00                                  RET                           value=0x00
1727  9A 2F B0 32 17                         STRCMP_NE_JMP                 start=v[0x02F], values=[0], target=0x1732
172C  1C 3D 08                               VIDEO_TRANSITION_REF          ref=0x083D (CH[61]=chpuz22_.vdx)
172F  15 45 17                               JMP                           target=0x1745
1732  9A 2F B1 3D 17                         STRCMP_NE_JMP                 start=v[0x02F], values=[1], target=0x173D
1737  1C 3C 08                               VIDEO_TRANSITION_REF          ref=0x083C (CH[60]=chpuz22.vdx)
173A  15 45 17                               JMP                           target=0x1745
173D  9A 2F B2 45 17                         STRCMP_NE_JMP                 start=v[0x02F], values=[2], target=0x1745
1742  1C 3C 08                               VIDEO_TRANSITION_REF          ref=0x083C (CH[60]=chpuz22.vdx)
1745  17 00                                  RET                           value=0x00
1747  9A 2F B0 52 17                         STRCMP_NE_JMP                 start=v[0x02F], values=[0], target=0x1752
174C  9C 3D 08                               VIDEO_TRANSITION_REF          ref=0x083D (CH[61]=chpuz22_.vdx)
174F  15 65 17                               JMP                           target=0x1765
1752  9A 2F B1 5D 17                         STRCMP_NE_JMP                 start=v[0x02F], values=[1], target=0x175D
1757  9C 3C 08                               VIDEO_TRANSITION_REF          ref=0x083C (CH[60]=chpuz22.vdx)
175A  15 65 17                               JMP                           target=0x1765
175D  9A 2F B2 65 17                         STRCMP_NE_JMP                 start=v[0x02F], values=[2], target=0x1765
1762  9C 3C 08                               VIDEO_TRANSITION_REF          ref=0x083C (CH[60]=chpuz22.vdx)
1765  17 00                                  RET                           value=0x00
1767  9A 30 B0 72 17                         STRCMP_NE_JMP                 start=v[0x030], values=[0], target=0x1772
176C  1C 3F 08                               VIDEO_TRANSITION_REF          ref=0x083F (CH[63]=chpuz23_.vdx)
176F  15 85 17                               JMP                           target=0x1785
1772  9A 30 B1 7D 17                         STRCMP_NE_JMP                 start=v[0x030], values=[1], target=0x177D
1777  1C 3E 08                               VIDEO_TRANSITION_REF          ref=0x083E (CH[62]=chpuz23.vdx)
177A  15 85 17                               JMP                           target=0x1785
177D  9A 30 B2 85 17                         STRCMP_NE_JMP                 start=v[0x030], values=[2], target=0x1785
1782  1C 3E 08                               VIDEO_TRANSITION_REF          ref=0x083E (CH[62]=chpuz23.vdx)
1785  17 00                                  RET                           value=0x00
1787  9A 30 B0 92 17                         STRCMP_NE_JMP                 start=v[0x030], values=[0], target=0x1792
178C  9C 3F 08                               VIDEO_TRANSITION_REF          ref=0x083F (CH[63]=chpuz23_.vdx)
178F  15 A5 17                               JMP                           target=0x17A5
1792  9A 30 B1 9D 17                         STRCMP_NE_JMP                 start=v[0x030], values=[1], target=0x179D
1797  9C 3E 08                               VIDEO_TRANSITION_REF          ref=0x083E (CH[62]=chpuz23.vdx)
179A  15 A5 17                               JMP                           target=0x17A5
179D  9A 30 B2 A5 17                         STRCMP_NE_JMP                 start=v[0x030], values=[2], target=0x17A5
17A2  9C 3E 08                               VIDEO_TRANSITION_REF          ref=0x083E (CH[62]=chpuz23.vdx)
17A5  17 00                                  RET                           value=0x00
17A7  9A 31 B0 B2 17                         STRCMP_NE_JMP                 start=v[0x031], values=[0], target=0x17B2
17AC  1C 41 08                               VIDEO_TRANSITION_REF          ref=0x0841 (CH[65]=chpuz24_.vdx)
17AF  15 C5 17                               JMP                           target=0x17C5
17B2  9A 31 B1 BD 17                         STRCMP_NE_JMP                 start=v[0x031], values=[1], target=0x17BD
17B7  1C 40 08                               VIDEO_TRANSITION_REF          ref=0x0840 (CH[64]=chpuz24.vdx)
17BA  15 C5 17                               JMP                           target=0x17C5
17BD  9A 31 B2 C5 17                         STRCMP_NE_JMP                 start=v[0x031], values=[2], target=0x17C5
17C2  1C 40 08                               VIDEO_TRANSITION_REF          ref=0x0840 (CH[64]=chpuz24.vdx)
17C5  17 00                                  RET                           value=0x00
17C7  9A 31 B0 D2 17                         STRCMP_NE_JMP                 start=v[0x031], values=[0], target=0x17D2
17CC  9C 41 08                               VIDEO_TRANSITION_REF          ref=0x0841 (CH[65]=chpuz24_.vdx)
17CF  15 E5 17                               JMP                           target=0x17E5
17D2  9A 31 B1 DD 17                         STRCMP_NE_JMP                 start=v[0x031], values=[1], target=0x17DD
17D7  9C 40 08                               VIDEO_TRANSITION_REF          ref=0x0840 (CH[64]=chpuz24.vdx)
17DA  15 E5 17                               JMP                           target=0x17E5
17DD  9A 31 B2 E5 17                         STRCMP_NE_JMP                 start=v[0x031], values=[2], target=0x17E5
17E2  9C 40 08                               VIDEO_TRANSITION_REF          ref=0x0840 (CH[64]=chpuz24.vdx)
17E5  17 00                                  RET                           value=0x00
17E7  9A 32 B0 F2 17                         STRCMP_NE_JMP                 start=v[0x032], values=[0], target=0x17F2
17EC  1C 43 08                               VIDEO_TRANSITION_REF          ref=0x0843 (CH[67]=chpuz25_.vdx)
17EF  15 05 18                               JMP                           target=0x1805
17F2  9A 32 B1 FD 17                         STRCMP_NE_JMP                 start=v[0x032], values=[1], target=0x17FD
17F7  1C 42 08                               VIDEO_TRANSITION_REF          ref=0x0842 (CH[66]=chpuz25.vdx)
17FA  15 05 18                               JMP                           target=0x1805
17FD  9A 32 B2 05 18                         STRCMP_NE_JMP                 start=v[0x032], values=[2], target=0x1805
1802  1C 42 08                               VIDEO_TRANSITION_REF          ref=0x0842 (CH[66]=chpuz25.vdx)
1805  17 00                                  RET                           value=0x00
1807  9A 32 B0 12 18                         STRCMP_NE_JMP                 start=v[0x032], values=[0], target=0x1812
180C  9C 43 08                               VIDEO_TRANSITION_REF          ref=0x0843 (CH[67]=chpuz25_.vdx)
180F  15 25 18                               JMP                           target=0x1825
1812  9A 32 B1 1D 18                         STRCMP_NE_JMP                 start=v[0x032], values=[1], target=0x181D
1817  9C 42 08                               VIDEO_TRANSITION_REF          ref=0x0842 (CH[66]=chpuz25.vdx)
181A  15 25 18                               JMP                           target=0x1825
181D  9A 32 B2 25 18                         STRCMP_NE_JMP                 start=v[0x032], values=[2], target=0x1825
1822  9C 42 08                               VIDEO_TRANSITION_REF          ref=0x0842 (CH[66]=chpuz25.vdx)
1825  17 00                                  RET                           value=0x00
1827  9A 33 B0 32 18                         STRCMP_NE_JMP                 start=v[0x033], values=[0], target=0x1832
182C  1C 45 08                               VIDEO_TRANSITION_REF          ref=0x0845 (CH[69]=chpuz26_.vdx)
182F  15 45 18                               JMP                           target=0x1845
1832  9A 33 B1 3D 18                         STRCMP_NE_JMP                 start=v[0x033], values=[1], target=0x183D
1837  1C 44 08                               VIDEO_TRANSITION_REF          ref=0x0844 (CH[68]=chpuz26.vdx)
183A  15 45 18                               JMP                           target=0x1845
183D  9A 33 B2 45 18                         STRCMP_NE_JMP                 start=v[0x033], values=[2], target=0x1845
1842  1C 44 08                               VIDEO_TRANSITION_REF          ref=0x0844 (CH[68]=chpuz26.vdx)
1845  17 00                                  RET                           value=0x00
1847  9A 33 B0 52 18                         STRCMP_NE_JMP                 start=v[0x033], values=[0], target=0x1852
184C  9C 45 08                               VIDEO_TRANSITION_REF          ref=0x0845 (CH[69]=chpuz26_.vdx)
184F  15 65 18                               JMP                           target=0x1865
1852  9A 33 B1 5D 18                         STRCMP_NE_JMP                 start=v[0x033], values=[1], target=0x185D
1857  9C 44 08                               VIDEO_TRANSITION_REF          ref=0x0844 (CH[68]=chpuz26.vdx)
185A  15 65 18                               JMP                           target=0x1865
185D  9A 33 B2 65 18                         STRCMP_NE_JMP                 start=v[0x033], values=[2], target=0x1865
1862  9C 44 08                               VIDEO_TRANSITION_REF          ref=0x0844 (CH[68]=chpuz26.vdx)
1865  17 00                                  RET                           value=0x00
1867  9A 34 B0 72 18                         STRCMP_NE_JMP                 start=v[0x034], values=[0], target=0x1872
186C  1C 47 08                               VIDEO_TRANSITION_REF          ref=0x0847 (CH[71]=chpuz27_.vdx)
186F  15 85 18                               JMP                           target=0x1885
1872  9A 34 B1 7D 18                         STRCMP_NE_JMP                 start=v[0x034], values=[1], target=0x187D
1877  1C 46 08                               VIDEO_TRANSITION_REF          ref=0x0846 (CH[70]=chpuz27.vdx)
187A  15 85 18                               JMP                           target=0x1885
187D  9A 34 B2 85 18                         STRCMP_NE_JMP                 start=v[0x034], values=[2], target=0x1885
1882  1C 46 08                               VIDEO_TRANSITION_REF          ref=0x0846 (CH[70]=chpuz27.vdx)
1885  17 00                                  RET                           value=0x00
1887  9A 34 B0 92 18                         STRCMP_NE_JMP                 start=v[0x034], values=[0], target=0x1892
188C  9C 47 08                               VIDEO_TRANSITION_REF          ref=0x0847 (CH[71]=chpuz27_.vdx)
188F  15 A5 18                               JMP                           target=0x18A5
1892  9A 34 B1 9D 18                         STRCMP_NE_JMP                 start=v[0x034], values=[1], target=0x189D
1897  9C 46 08                               VIDEO_TRANSITION_REF          ref=0x0846 (CH[70]=chpuz27.vdx)
189A  15 A5 18                               JMP                           target=0x18A5
189D  9A 34 B2 A5 18                         STRCMP_NE_JMP                 start=v[0x034], values=[2], target=0x18A5
18A2  9C 46 08                               VIDEO_TRANSITION_REF          ref=0x0846 (CH[70]=chpuz27.vdx)
18A5  17 00                                  RET                           value=0x00
18A7  9A 35 B0 B2 18                         STRCMP_NE_JMP                 start=v[0x035], values=[0], target=0x18B2
18AC  1C 49 08                               VIDEO_TRANSITION_REF          ref=0x0849 (CH[73]=chpuz28_.vdx)
18AF  15 C5 18                               JMP                           target=0x18C5
18B2  9A 35 B1 BD 18                         STRCMP_NE_JMP                 start=v[0x035], values=[1], target=0x18BD
18B7  1C 48 08                               VIDEO_TRANSITION_REF          ref=0x0848 (CH[72]=chpuz28.vdx)
18BA  15 C5 18                               JMP                           target=0x18C5
18BD  9A 35 B2 C5 18                         STRCMP_NE_JMP                 start=v[0x035], values=[2], target=0x18C5
18C2  1C 48 08                               VIDEO_TRANSITION_REF          ref=0x0848 (CH[72]=chpuz28.vdx)
18C5  17 00                                  RET                           value=0x00
18C7  9A 35 B0 D2 18                         STRCMP_NE_JMP                 start=v[0x035], values=[0], target=0x18D2
18CC  9C 49 08                               VIDEO_TRANSITION_REF          ref=0x0849 (CH[73]=chpuz28_.vdx)
18CF  15 E5 18                               JMP                           target=0x18E5
18D2  9A 35 B1 DD 18                         STRCMP_NE_JMP                 start=v[0x035], values=[1], target=0x18DD
18D7  9C 48 08                               VIDEO_TRANSITION_REF          ref=0x0848 (CH[72]=chpuz28.vdx)
18DA  15 E5 18                               JMP                           target=0x18E5
18DD  9A 35 B2 E5 18                         STRCMP_NE_JMP                 start=v[0x035], values=[2], target=0x18E5
18E2  9C 48 08                               VIDEO_TRANSITION_REF          ref=0x0848 (CH[72]=chpuz28.vdx)
18E5  17 00                                  RET                           value=0x00
18E7  9A 36 B0 F2 18                         STRCMP_NE_JMP                 start=v[0x036], values=[0], target=0x18F2
18EC  1C 4B 08                               VIDEO_TRANSITION_REF          ref=0x084B (CH[75]=chpuz29_.vdx)
18EF  15 05 19                               JMP                           target=0x1905
18F2  9A 36 B1 FD 18                         STRCMP_NE_JMP                 start=v[0x036], values=[1], target=0x18FD
18F7  1C 4A 08                               VIDEO_TRANSITION_REF          ref=0x084A (CH[74]=chpuz29.vdx)
18FA  15 05 19                               JMP                           target=0x1905
18FD  9A 36 B2 05 19                         STRCMP_NE_JMP                 start=v[0x036], values=[2], target=0x1905
1902  1C 4A 08                               VIDEO_TRANSITION_REF          ref=0x084A (CH[74]=chpuz29.vdx)
1905  17 00                                  RET                           value=0x00
1907  9A 36 B0 12 19                         STRCMP_NE_JMP                 start=v[0x036], values=[0], target=0x1912
190C  9C 4B 08                               VIDEO_TRANSITION_REF          ref=0x084B (CH[75]=chpuz29_.vdx)
190F  15 25 19                               JMP                           target=0x1925
1912  9A 36 B1 1D 19                         STRCMP_NE_JMP                 start=v[0x036], values=[1], target=0x191D
1917  9C 4A 08                               VIDEO_TRANSITION_REF          ref=0x084A (CH[74]=chpuz29.vdx)
191A  15 25 19                               JMP                           target=0x1925
191D  9A 36 B2 25 19                         STRCMP_NE_JMP                 start=v[0x036], values=[2], target=0x1925
1922  9C 4A 08                               VIDEO_TRANSITION_REF          ref=0x084A (CH[74]=chpuz29.vdx)
1925  17 00                                  RET                           value=0x00
1927  9A 37 B0 32 19                         STRCMP_NE_JMP                 start=v[0x037], values=[0], target=0x1932
192C  1C 4D 08                               VIDEO_TRANSITION_REF          ref=0x084D (CH[77]=chpuz30_.vdx)
192F  15 45 19                               JMP                           target=0x1945
1932  9A 37 B1 3D 19                         STRCMP_NE_JMP                 start=v[0x037], values=[1], target=0x193D
1937  1C 4C 08                               VIDEO_TRANSITION_REF          ref=0x084C (CH[76]=chpuz30.vdx)
193A  15 45 19                               JMP                           target=0x1945
193D  9A 37 B2 45 19                         STRCMP_NE_JMP                 start=v[0x037], values=[2], target=0x1945
1942  1C 4C 08                               VIDEO_TRANSITION_REF          ref=0x084C (CH[76]=chpuz30.vdx)
1945  17 00                                  RET                           value=0x00
1947  9A 37 B0 52 19                         STRCMP_NE_JMP                 start=v[0x037], values=[0], target=0x1952
194C  9C 4D 08                               VIDEO_TRANSITION_REF          ref=0x084D (CH[77]=chpuz30_.vdx)
194F  15 65 19                               JMP                           target=0x1965
1952  9A 37 B1 5D 19                         STRCMP_NE_JMP                 start=v[0x037], values=[1], target=0x195D
1957  9C 4C 08                               VIDEO_TRANSITION_REF          ref=0x084C (CH[76]=chpuz30.vdx)
195A  15 65 19                               JMP                           target=0x1965
195D  9A 37 B2 65 19                         STRCMP_NE_JMP                 start=v[0x037], values=[2], target=0x1965
1962  9C 4C 08                               VIDEO_TRANSITION_REF          ref=0x084C (CH[76]=chpuz30.vdx)
1965  17 00                                  RET                           value=0x00
1967  9A 38 B0 72 19                         STRCMP_NE_JMP                 start=v[0x038], values=[0], target=0x1972
196C  1C 4F 08                               VIDEO_TRANSITION_REF          ref=0x084F (CH[79]=chpuz31_.vdx)
196F  15 85 19                               JMP                           target=0x1985
1972  9A 38 B1 7D 19                         STRCMP_NE_JMP                 start=v[0x038], values=[1], target=0x197D
1977  1C 4E 08                               VIDEO_TRANSITION_REF          ref=0x084E (CH[78]=chpuz31.vdx)
197A  15 85 19                               JMP                           target=0x1985
197D  9A 38 B2 85 19                         STRCMP_NE_JMP                 start=v[0x038], values=[2], target=0x1985
1982  1C 4E 08                               VIDEO_TRANSITION_REF          ref=0x084E (CH[78]=chpuz31.vdx)
1985  17 00                                  RET                           value=0x00
1987  9A 38 B0 92 19                         STRCMP_NE_JMP                 start=v[0x038], values=[0], target=0x1992
198C  9C 4F 08                               VIDEO_TRANSITION_REF          ref=0x084F (CH[79]=chpuz31_.vdx)
198F  15 A5 19                               JMP                           target=0x19A5
1992  9A 38 B1 9D 19                         STRCMP_NE_JMP                 start=v[0x038], values=[1], target=0x199D
1997  9C 4E 08                               VIDEO_TRANSITION_REF          ref=0x084E (CH[78]=chpuz31.vdx)
199A  15 A5 19                               JMP                           target=0x19A5
199D  9A 38 B2 A5 19                         STRCMP_NE_JMP                 start=v[0x038], values=[2], target=0x19A5
19A2  9C 4E 08                               VIDEO_TRANSITION_REF          ref=0x084E (CH[78]=chpuz31.vdx)
19A5  17 00                                  RET                           value=0x00
19A7  9A 1A B2 B3 19                         STRCMP_NE_JMP                 start=v[0x01A], values=[2], target=0x19B3
19AC  A3 1B B0 B3 19                         STRCMP_EQ_JMP                 start=v[0x01B], values=[0], target=0x19B3
19B1  17 01                                  RET                           value=0x01
19B3  9A 1B B2 CE 19                         STRCMP_NE_JMP                 start=v[0x01B], values=[2], target=0x19CE
19B8  A3 1A B0 CE 19                         STRCMP_EQ_JMP                 start=v[0x01A], values=[0], target=0x19CE
19BD  A3 1C B0 CE 19                         STRCMP_EQ_JMP                 start=v[0x01C], values=[0], target=0x19CE
19C2  A3 21 B0 CE 19                         STRCMP_EQ_JMP                 start=v[0x021], values=[0], target=0x19CE
19C7  A3 22 B0 CE 19                         STRCMP_EQ_JMP                 start=v[0x022], values=[0], target=0x19CE
19CC  17 01                                  RET                           value=0x01
19CE  9A 1C B2 E4 19                         STRCMP_NE_JMP                 start=v[0x01C], values=[2], target=0x19E4
19D3  A3 1B B0 E4 19                         STRCMP_EQ_JMP                 start=v[0x01B], values=[0], target=0x19E4
19D8  A3 1D B0 E4 19                         STRCMP_EQ_JMP                 start=v[0x01D], values=[0], target=0x19E4
19DD  A3 22 B0 E4 19                         STRCMP_EQ_JMP                 start=v[0x022], values=[0], target=0x19E4
19E2  17 01                                  RET                           value=0x01
19E4  9A 1D B2 FF 19                         STRCMP_NE_JMP                 start=v[0x01D], values=[2], target=0x19FF
19E9  A3 1C B0 FF 19                         STRCMP_EQ_JMP                 start=v[0x01C], values=[0], target=0x19FF
19EE  A3 1E B0 FF 19                         STRCMP_EQ_JMP                 start=v[0x01E], values=[0], target=0x19FF
19F3  A3 22 B0 FF 19                         STRCMP_EQ_JMP                 start=v[0x022], values=[0], target=0x19FF
19F8  A3 23 B0 FF 19                         STRCMP_EQ_JMP                 start=v[0x023], values=[0], target=0x19FF
19FD  17 01                                  RET                           value=0x01
19FF  9A 1E B2 15 1A                         STRCMP_NE_JMP                 start=v[0x01E], values=[2], target=0x1A15
1A04  A3 1D B0 15 1A                         STRCMP_EQ_JMP                 start=v[0x01D], values=[0], target=0x1A15
1A09  A3 1F B0 15 1A                         STRCMP_EQ_JMP                 start=v[0x01F], values=[0], target=0x1A15
1A0E  A3 23 B0 15 1A                         STRCMP_EQ_JMP                 start=v[0x023], values=[0], target=0x1A15
1A13  17 01                                  RET                           value=0x01
1A15  9A 1F B2 30 1A                         STRCMP_NE_JMP                 start=v[0x01F], values=[2], target=0x1A30
1A1A  A3 1E B0 30 1A                         STRCMP_EQ_JMP                 start=v[0x01E], values=[0], target=0x1A30
1A1F  A3 20 B0 30 1A                         STRCMP_EQ_JMP                 start=v[0x020], values=[0], target=0x1A30
1A24  A3 23 B0 30 1A                         STRCMP_EQ_JMP                 start=v[0x023], values=[0], target=0x1A30
1A29  A3 24 B0 30 1A                         STRCMP_EQ_JMP                 start=v[0x024], values=[0], target=0x1A30
1A2E  17 01                                  RET                           value=0x01
1A30  9A 21 B2 4B 1A                         STRCMP_NE_JMP                 start=v[0x021], values=[2], target=0x1A4B
1A35  A3 1B B0 4B 1A                         STRCMP_EQ_JMP                 start=v[0x01B], values=[0], target=0x1A4B
1A3A  A3 22 B0 4B 1A                         STRCMP_EQ_JMP                 start=v[0x022], values=[0], target=0x1A4B
1A3F  A3 25 B0 4B 1A                         STRCMP_EQ_JMP                 start=v[0x025], values=[0], target=0x1A4B
1A44  A3 27 B0 4B 1A                         STRCMP_EQ_JMP                 start=v[0x027], values=[0], target=0x1A4B
1A49  17 01                                  RET                           value=0x01
1A4B  9A 22 B2 66 1A                         STRCMP_NE_JMP                 start=v[0x022], values=[2], target=0x1A66
1A50  A3 1B B0 66 1A                         STRCMP_EQ_JMP                 start=v[0x01B], values=[0], target=0x1A66
1A55  A3 1C B0 66 1A                         STRCMP_EQ_JMP                 start=v[0x01C], values=[0], target=0x1A66
1A5A  A3 1D B0 66 1A                         STRCMP_EQ_JMP                 start=v[0x01D], values=[0], target=0x1A66
1A5F  A3 21 B0 66 1A                         STRCMP_EQ_JMP                 start=v[0x021], values=[0], target=0x1A66
1A64  17 01                                  RET                           value=0x01
1A66  9A 23 B2 81 1A                         STRCMP_NE_JMP                 start=v[0x023], values=[2], target=0x1A81
1A6B  A3 1D B0 81 1A                         STRCMP_EQ_JMP                 start=v[0x01D], values=[0], target=0x1A81
1A70  A3 1E B0 81 1A                         STRCMP_EQ_JMP                 start=v[0x01E], values=[0], target=0x1A81
1A75  A3 1F B0 81 1A                         STRCMP_EQ_JMP                 start=v[0x01F], values=[0], target=0x1A81
1A7A  A3 24 B0 81 1A                         STRCMP_EQ_JMP                 start=v[0x024], values=[0], target=0x1A81
1A7F  17 01                                  RET                           value=0x01
1A81  9A 24 B2 9C 1A                         STRCMP_NE_JMP                 start=v[0x024], values=[2], target=0x1A9C
1A86  A3 1F B0 9C 1A                         STRCMP_EQ_JMP                 start=v[0x01F], values=[0], target=0x1A9C
1A8B  A3 23 B0 9C 1A                         STRCMP_EQ_JMP                 start=v[0x023], values=[0], target=0x1A9C
1A90  A3 26 B0 9C 1A                         STRCMP_EQ_JMP                 start=v[0x026], values=[0], target=0x1A9C
1A95  A3 28 B0 9C 1A                         STRCMP_EQ_JMP                 start=v[0x028], values=[0], target=0x1A9C
1A9A  17 01                                  RET                           value=0x01
1A9C  9A 25 B2 AD 1A                         STRCMP_NE_JMP                 start=v[0x025], values=[2], target=0x1AAD
1AA1  A3 21 B0 AD 1A                         STRCMP_EQ_JMP                 start=v[0x021], values=[0], target=0x1AAD
1AA6  A3 27 B0 AD 1A                         STRCMP_EQ_JMP                 start=v[0x027], values=[0], target=0x1AAD
1AAB  17 01                                  RET                           value=0x01
1AAD  9A 26 B2 BE 1A                         STRCMP_NE_JMP                 start=v[0x026], values=[2], target=0x1ABE
1AB2  A3 24 B0 BE 1A                         STRCMP_EQ_JMP                 start=v[0x024], values=[0], target=0x1ABE
1AB7  A3 28 B0 BE 1A                         STRCMP_EQ_JMP                 start=v[0x028], values=[0], target=0x1ABE
1ABC  17 01                                  RET                           value=0x01
1ABE  9A 27 B2 D4 1A                         STRCMP_NE_JMP                 start=v[0x027], values=[2], target=0x1AD4
1AC3  A3 21 B0 D4 1A                         STRCMP_EQ_JMP                 start=v[0x021], values=[0], target=0x1AD4
1AC8  A3 25 B0 D4 1A                         STRCMP_EQ_JMP                 start=v[0x025], values=[0], target=0x1AD4
1ACD  A3 29 B0 D4 1A                         STRCMP_EQ_JMP                 start=v[0x029], values=[0], target=0x1AD4
1AD2  17 01                                  RET                           value=0x01
1AD4  9A 28 B2 EF 1A                         STRCMP_NE_JMP                 start=v[0x028], values=[2], target=0x1AEF
1AD9  A3 24 B0 EF 1A                         STRCMP_EQ_JMP                 start=v[0x024], values=[0], target=0x1AEF
1ADE  A3 26 B0 EF 1A                         STRCMP_EQ_JMP                 start=v[0x026], values=[0], target=0x1AEF
1AE3  A3 2A B0 EF 1A                         STRCMP_EQ_JMP                 start=v[0x02A], values=[0], target=0x1AEF
1AE8  A3 31 B0 EF 1A                         STRCMP_EQ_JMP                 start=v[0x031], values=[0], target=0x1AEF
1AED  17 01                                  RET                           value=0x01
1AEF  9A 29 B2 0A 1B                         STRCMP_NE_JMP                 start=v[0x029], values=[2], target=0x1B0A
1AF4  A3 27 B0 0A 1B                         STRCMP_EQ_JMP                 start=v[0x027], values=[0], target=0x1B0A
1AF9  A3 2B B0 0A 1B                         STRCMP_EQ_JMP                 start=v[0x02B], values=[0], target=0x1B0A
1AFE  A3 2C B0 0A 1B                         STRCMP_EQ_JMP                 start=v[0x02C], values=[0], target=0x1B0A
1B03  A3 2D B0 0A 1B                         STRCMP_EQ_JMP                 start=v[0x02D], values=[0], target=0x1B0A
1B08  17 01                                  RET                           value=0x01
1B0A  9A 2A B2 25 1B                         STRCMP_NE_JMP                 start=v[0x02A], values=[2], target=0x1B25
1B0F  A3 28 B0 25 1B                         STRCMP_EQ_JMP                 start=v[0x028], values=[0], target=0x1B25
1B14  A3 2F B0 25 1B                         STRCMP_EQ_JMP                 start=v[0x02F], values=[0], target=0x1B25
1B19  A3 30 B0 25 1B                         STRCMP_EQ_JMP                 start=v[0x030], values=[0], target=0x1B25
1B1E  A3 31 B0 25 1B                         STRCMP_EQ_JMP                 start=v[0x031], values=[0], target=0x1B25
1B23  17 01                                  RET                           value=0x01
1B25  9A 2B B2 36 1B                         STRCMP_NE_JMP                 start=v[0x02B], values=[2], target=0x1B36
1B2A  A3 29 B0 36 1B                         STRCMP_EQ_JMP                 start=v[0x029], values=[0], target=0x1B36
1B2F  A3 2C B0 36 1B                         STRCMP_EQ_JMP                 start=v[0x02C], values=[0], target=0x1B36
1B34  17 01                                  RET                           value=0x01
1B36  9A 2C B2 56 1B                         STRCMP_NE_JMP                 start=v[0x02C], values=[2], target=0x1B56
1B3B  A3 29 B0 56 1B                         STRCMP_EQ_JMP                 start=v[0x029], values=[0], target=0x1B56
1B40  A3 2B B0 56 1B                         STRCMP_EQ_JMP                 start=v[0x02B], values=[0], target=0x1B56
1B45  A3 2D B0 56 1B                         STRCMP_EQ_JMP                 start=v[0x02D], values=[0], target=0x1B56
1B4A  A3 32 B0 56 1B                         STRCMP_EQ_JMP                 start=v[0x032], values=[0], target=0x1B56
1B4F  A3 33 B0 56 1B                         STRCMP_EQ_JMP                 start=v[0x033], values=[0], target=0x1B56
1B54  17 01                                  RET                           value=0x01
1B56  9A 2D B2 71 1B                         STRCMP_NE_JMP                 start=v[0x02D], values=[2], target=0x1B71
1B5B  A3 29 B0 71 1B                         STRCMP_EQ_JMP                 start=v[0x029], values=[0], target=0x1B71
1B60  A3 2C B0 71 1B                         STRCMP_EQ_JMP                 start=v[0x02C], values=[0], target=0x1B71
1B65  A3 2E B0 71 1B                         STRCMP_EQ_JMP                 start=v[0x02E], values=[0], target=0x1B71
1B6A  A3 33 B0 71 1B                         STRCMP_EQ_JMP                 start=v[0x033], values=[0], target=0x1B71
1B6F  17 01                                  RET                           value=0x01
1B71  9A 2E B2 91 1B                         STRCMP_NE_JMP                 start=v[0x02E], values=[2], target=0x1B91
1B76  A3 2D B0 91 1B                         STRCMP_EQ_JMP                 start=v[0x02D], values=[0], target=0x1B91
1B7B  A3 2F B0 91 1B                         STRCMP_EQ_JMP                 start=v[0x02F], values=[0], target=0x1B91
1B80  A3 33 B0 91 1B                         STRCMP_EQ_JMP                 start=v[0x033], values=[0], target=0x1B91
1B85  A3 34 B0 91 1B                         STRCMP_EQ_JMP                 start=v[0x034], values=[0], target=0x1B91
1B8A  A3 35 B0 91 1B                         STRCMP_EQ_JMP                 start=v[0x035], values=[0], target=0x1B91
1B8F  17 01                                  RET                           value=0x01
1B91  9A 2F B2 AC 1B                         STRCMP_NE_JMP                 start=v[0x02F], values=[2], target=0x1BAC
1B96  A3 2A B0 AC 1B                         STRCMP_EQ_JMP                 start=v[0x02A], values=[0], target=0x1BAC
1B9B  A3 2E B0 AC 1B                         STRCMP_EQ_JMP                 start=v[0x02E], values=[0], target=0x1BAC
1BA0  A3 30 B0 AC 1B                         STRCMP_EQ_JMP                 start=v[0x030], values=[0], target=0x1BAC
1BA5  A3 35 B0 AC 1B                         STRCMP_EQ_JMP                 start=v[0x035], values=[0], target=0x1BAC
1BAA  17 01                                  RET                           value=0x01
1BAC  9A 30 B2 CC 1B                         STRCMP_NE_JMP                 start=v[0x030], values=[2], target=0x1BCC
1BB1  A3 2A B0 CC 1B                         STRCMP_EQ_JMP                 start=v[0x02A], values=[0], target=0x1BCC
1BB6  A3 2F B0 CC 1B                         STRCMP_EQ_JMP                 start=v[0x02F], values=[0], target=0x1BCC
1BBB  A3 31 B0 CC 1B                         STRCMP_EQ_JMP                 start=v[0x031], values=[0], target=0x1BCC
1BC0  A3 35 B0 CC 1B                         STRCMP_EQ_JMP                 start=v[0x035], values=[0], target=0x1BCC
1BC5  A3 36 B0 CC 1B                         STRCMP_EQ_JMP                 start=v[0x036], values=[0], target=0x1BCC
1BCA  17 01                                  RET                           value=0x01
1BCC  9A 31 B2 DD 1B                         STRCMP_NE_JMP                 start=v[0x031], values=[2], target=0x1BDD
1BD1  A3 2A B0 DD 1B                         STRCMP_EQ_JMP                 start=v[0x02A], values=[0], target=0x1BDD
1BD6  A3 30 B0 DD 1B                         STRCMP_EQ_JMP                 start=v[0x030], values=[0], target=0x1BDD
1BDB  17 01                                  RET                           value=0x01
1BDD  9A 32 B2 F3 1B                         STRCMP_NE_JMP                 start=v[0x032], values=[2], target=0x1BF3
1BE2  A3 2C B0 F3 1B                         STRCMP_EQ_JMP                 start=v[0x02C], values=[0], target=0x1BF3
1BE7  A3 33 B0 F3 1B                         STRCMP_EQ_JMP                 start=v[0x033], values=[0], target=0x1BF3
1BEC  A3 37 B0 F3 1B                         STRCMP_EQ_JMP                 start=v[0x037], values=[0], target=0x1BF3
1BF1  17 01                                  RET                           value=0x01
1BF3  9A 33 B2 13 1C                         STRCMP_NE_JMP                 start=v[0x033], values=[2], target=0x1C13
1BF8  A3 2C B0 13 1C                         STRCMP_EQ_JMP                 start=v[0x02C], values=[0], target=0x1C13
1BFD  A3 2D B0 13 1C                         STRCMP_EQ_JMP                 start=v[0x02D], values=[0], target=0x1C13
1C02  A3 2E B0 13 1C                         STRCMP_EQ_JMP                 start=v[0x02E], values=[0], target=0x1C13
1C07  A3 32 B0 13 1C                         STRCMP_EQ_JMP                 start=v[0x032], values=[0], target=0x1C13
1C0C  A3 34 B0 13 1C                         STRCMP_EQ_JMP                 start=v[0x034], values=[0], target=0x1C13
1C11  17 01                                  RET                           value=0x01
1C13  9A 34 B2 29 1C                         STRCMP_NE_JMP                 start=v[0x034], values=[2], target=0x1C29
1C18  A3 2E B0 29 1C                         STRCMP_EQ_JMP                 start=v[0x02E], values=[0], target=0x1C29
1C1D  A3 33 B0 29 1C                         STRCMP_EQ_JMP                 start=v[0x033], values=[0], target=0x1C29
1C22  A3 35 B0 29 1C                         STRCMP_EQ_JMP                 start=v[0x035], values=[0], target=0x1C29
1C27  17 01                                  RET                           value=0x01
1C29  9A 35 B2 49 1C                         STRCMP_NE_JMP                 start=v[0x035], values=[2], target=0x1C49
1C2E  A3 2E B0 49 1C                         STRCMP_EQ_JMP                 start=v[0x02E], values=[0], target=0x1C49
1C33  A3 2F B0 49 1C                         STRCMP_EQ_JMP                 start=v[0x02F], values=[0], target=0x1C49
1C38  A3 30 B0 49 1C                         STRCMP_EQ_JMP                 start=v[0x030], values=[0], target=0x1C49
1C3D  A3 34 B0 49 1C                         STRCMP_EQ_JMP                 start=v[0x034], values=[0], target=0x1C49
1C42  A3 36 B0 49 1C                         STRCMP_EQ_JMP                 start=v[0x036], values=[0], target=0x1C49
1C47  17 01                                  RET                           value=0x01
1C49  9A 36 B2 5F 1C                         STRCMP_NE_JMP                 start=v[0x036], values=[2], target=0x1C5F
1C4E  A3 30 B0 5F 1C                         STRCMP_EQ_JMP                 start=v[0x030], values=[0], target=0x1C5F
1C53  A3 35 B0 5F 1C                         STRCMP_EQ_JMP                 start=v[0x035], values=[0], target=0x1C5F
1C58  A3 38 B0 5F 1C                         STRCMP_EQ_JMP                 start=v[0x038], values=[0], target=0x1C5F
1C5D  17 01                                  RET                           value=0x01
1C5F  9A 37 B2 6B 1C                         STRCMP_NE_JMP                 start=v[0x037], values=[2], target=0x1C6B
1C64  A3 32 B0 6B 1C                         STRCMP_EQ_JMP                 start=v[0x032], values=[0], target=0x1C6B
1C69  17 01                                  RET                           value=0x01
1C6B  9A 38 B2 77 1C                         STRCMP_NE_JMP                 start=v[0x038], values=[2], target=0x1C77
1C70  A3 36 B0 77 1C                         STRCMP_EQ_JMP                 start=v[0x036], values=[0], target=0x1C77
1C75  17 01                                  RET                           value=0x01
1C77  17 00                                  RET                           value=0x00
1C79  96 F3 E1                               LOADSTRING                    dst=v[0x0F3], values=[49]
1C7C  07                                     VIDEOFLAG7_ON
1C7D  0A                                     VIDEOFLAG5_ON
1C7E  46                                     RESOURCE_CONTEXT_SAVE
1C7F  09 3F 50                               VIDEOREF                      ref=0x503F (GAMWAV[63]=9_s_2.vdx)
1C82  47                                     RESOURCE_CONTEXT_RESTORE
1C83  1C 11 08                               VIDEO_TRANSITION_REF          ref=0x0811 (CH[17]=chpub.vdx)
1C86  18 B3 1C                               CALL                          target=0x1CB3
1C89  43 00                                  RETURNSCRIPT                  value=0x00
1C8B  1C 0B 08                               VIDEO_TRANSITION_REF          ref=0x080B (CH[11]=chfa.vdx)
1C8E  18 B3 1C                               CALL                          target=0x1CB3
1C91  07                                     VIDEOFLAG7_ON
1C92  0A                                     VIDEOFLAG5_ON
1C93  46                                     RESOURCE_CONTEXT_SAVE
1C94  09 3F 50                               VIDEOREF                      ref=0x503F (GAMWAV[63]=9_s_2.vdx)
1C97  47                                     RESOURCE_CONTEXT_RESTORE
1C98  09 0B 08                               VIDEOREF                      ref=0x080B (CH[11]=chfa.vdx)
1C9B  43 00                                  RETURNSCRIPT                  value=0x00
1C9D  07                                     VIDEOFLAG7_ON
1C9E  0A                                     VIDEOFLAG5_ON
1C9F  46                                     RESOURCE_CONTEXT_SAVE
1CA0  09 98 50                               VIDEOREF                      ref=0x5098 (GAMWAV[152]=gen_s_1.vdx)
1CA3  47                                     RESOURCE_CONTEXT_RESTORE
1CA4  1C 11 08                               VIDEO_TRANSITION_REF          ref=0x0811 (CH[17]=chpub.vdx)
1CA7  18 B3 1C                               CALL                          target=0x1CB3
1CAA  05                                     FIRSTFRAME_NEXT_VIDEO
1CAB  09 11 08                               VIDEOREF                      ref=0x0811 (CH[17]=chpub.vdx)
1CAE  15 00 00                               JMP                           target=0x0000
1CB1  43 01                                  RETURNSCRIPT                  value=0x01
1CB3  0A                                     VIDEOFLAG5_ON
1CB4  07                                     VIDEOFLAG7_ON
1CB5  46                                     RESOURCE_CONTEXT_SAVE
1CB6  09 01 24                               VIDEOREF                      ref=0x2401 (INTRO[1]=fade.vdx)
1CB9  37 00 00 50 00 7F 02 8F 01             COPY_RECT_TO_BG               left=0x0000, top=0x0050, right=0x027F, bottom=0x018F
1CC2  47                                     RESOURCE_CONTEXT_RESTORE
1CC3  17 00                                  RET                           value=0x00
