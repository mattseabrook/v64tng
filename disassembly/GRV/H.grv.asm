; T7G/H.GRV
; size=3140 sha256=3d97a376796eb77b70b39dce111314a45fd7313d178f53eee8cfca846b36198d
; instructions=711 input_loops=3

0000  16 03 01 B0                            LOADSTRING                    dst=v[0x103], values=[0]
0004  16 07 01 B0                            LOADSTRING                    dst=v[0x107], values=[0]
0008  96 92 31 B1                            LOADSTRING                    dst=v[0x092], values=[1, 1]
000C  2C 70 01 08                            SET_HOTSPOT_TOP               target=0x0170, cursor=0x08
0010  2D 61 01 06                            SET_HOTSPOT_BOTTOM            target=0x0161, cursor=0x06
0014  44 52 01                               SET_HOTSPOT_RIGHT             target=0x0152
0017  45 52 01                               SET_HOTSPOT_LEFT              target=0x0152
001A  09 AE 14                               VIDEOREF                      ref=0x14AE (FH[174]=h_p_up.vdx)
001D  22                                     COPY_BG_TO_FG
001E  09 AC 14                               VIDEOREF                      ref=0x14AC (FH[172]=h_pf.vdx)
0021  96 00 30 31 31 31 31 31 31 31 31 31 30 B0 LOADSTRING                    dst=v[0x000], values=[0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0]
002F  22                                     COPY_BG_TO_FG
0030  1C A1 14                               VIDEO_TRANSITION_REF          ref=0x14A1 (FH[161]=h_mask_a.vdx)
0033  09 B1 14                               VIDEOREF                      ref=0x14B1 (FH[177]=h_p2af.vdx)
0036  22                                     COPY_BG_TO_FG
0037  96 16 B1                               LOADSTRING                    dst=v[0x016], values=[1]
003A  96 14 C0                               LOADSTRING                    dst=v[0x014], values=[16]
003D  9A F2 B4 45 00                         STRCMP_NE_JMP                 start=v[0x0F2], values=[4], target=0x0045
0042  96 F2 B5                               LOADSTRING                    dst=v[0x0F2], values=[5]
0045  9A F2 B2 4D 00                         STRCMP_NE_JMP                 start=v[0x0F2], values=[2], target=0x004D
004A  96 F2 B3                               LOADSTRING                    dst=v[0x0F2], values=[3]
004D  9A F2 B0 55 00                         STRCMP_NE_JMP                 start=v[0x0F2], values=[0], target=0x0055
0052  96 F2 B1                               LOADSTRING                    dst=v[0x0F2], values=[1]
0055  9A 16 B1 63 00                         STRCMP_NE_JMP                 start=v[0x016], values=[1], target=0x0063
005A  96 19 B0                               LOADSTRING                    dst=v[0x019], values=[0]
005D  15 7F 01                               JMP                           target=0x017F
0060  15 81 00                               JMP                           target=0x0081
0063  9A 16 B2 6E 00                         STRCMP_NE_JMP                 start=v[0x016], values=[2], target=0x006E
0068  15 2C 05                               JMP                           target=0x052C
006B  15 81 00                               JMP                           target=0x0081
006E  9A 16 B3 79 00                         STRCMP_NE_JMP                 start=v[0x016], values=[3], target=0x0079
0073  15 3C 09                               JMP                           target=0x093C
0076  15 81 00                               JMP                           target=0x0081
0079  9A 16 B4 81 00                         STRCMP_NE_JMP                 start=v[0x016], values=[4], target=0x0081
007E  15 AA 09                               JMP                           target=0x09AA
0081  0B                                     INPUTLOOPSTART
0082  36 03 01 E7 9C 00                      CHAR_LESS_JMP                 start=v[0x103], values=[55], target=0x009C
0088  1A 07 01 B2 9C 00                      STRCMP_NE_JMP                 start=v[0x107], values=[2], target=0x009C
008E  16 03 01 B0                            LOADSTRING                    dst=v[0x103], values=[0]
0092  16 07 01 B3                            LOADSTRING                    dst=v[0x107], values=[3]
0096  46                                     RESOURCE_CONTEXT_SAVE
0097  07                                     VIDEOFLAG7_ON
0098  09 49 50                               VIDEOREF                      ref=0x5049 (GAMWAV[73]=11_s_5.vdx)
009B  47                                     RESOURCE_CONTEXT_RESTORE
009C  36 03 01 E3 B6 00                      CHAR_LESS_JMP                 start=v[0x103], values=[51], target=0x00B6
00A2  1A 07 01 B1 B6 00                      STRCMP_NE_JMP                 start=v[0x107], values=[1], target=0x00B6
00A8  16 03 01 B0                            LOADSTRING                    dst=v[0x103], values=[0]
00AC  16 07 01 B2                            LOADSTRING                    dst=v[0x107], values=[2]
00B0  46                                     RESOURCE_CONTEXT_SAVE
00B1  07                                     VIDEOFLAG7_ON
00B2  09 6A 50                               VIDEOREF                      ref=0x506A (GAMWAV[106]=21_e_1.vdx)
00B5  47                                     RESOURCE_CONTEXT_RESTORE
00B6  36 03 01 B9 D0 00                      CHAR_LESS_JMP                 start=v[0x103], values=[9], target=0x00D0
00BC  1A 07 01 B0 D0 00                      STRCMP_NE_JMP                 start=v[0x107], values=[0], target=0x00D0
00C2  16 03 01 B0                            LOADSTRING                    dst=v[0x103], values=[0]
00C6  16 07 01 B1                            LOADSTRING                    dst=v[0x107], values=[1]
00CA  46                                     RESOURCE_CONTEXT_SAVE
00CB  07                                     VIDEOFLAG7_ON
00CC  09 6B 50                               VIDEOREF                      ref=0x506B (GAMWAV[107]=21_e_2.vdx)
00CF  47                                     RESOURCE_CONTEXT_RESTORE
00D0  0D 2E 01 64 00 47 01 76 00 04 0A 0A    HOTSPOT_RECT                  left=0x012E, top=0x0064, right=0x0147, bottom=0x0076, target=0x0A04, cursor=0x0A
00DC  0D 41 01 7E 00 54 01 90 00 3C 0A 09    HOTSPOT_RECT                  left=0x0141, top=0x007E, right=0x0154, bottom=0x0090, target=0x0A3C, cursor=0x09
00E8  0D 6A 01 7E 00 86 01 92 00 74 0A 09    HOTSPOT_RECT                  left=0x016A, top=0x007E, right=0x0186, bottom=0x0092, target=0x0A74, cursor=0x09
00F4  0D 4B 01 93 00 5F 01 A5 00 AC 0A 0A    HOTSPOT_RECT                  left=0x014B, top=0x0093, right=0x015F, bottom=0x00A5, target=0x0AAC, cursor=0x0A
0100  0D 5E 01 AF 00 71 01 C9 00 E4 0A 0A    HOTSPOT_RECT                  left=0x015E, top=0x00AF, right=0x0171, bottom=0x00C9, target=0x0AE4, cursor=0x0A
010C  0D 2E 01 A0 00 46 01 B2 00 1C 0B 09    HOTSPOT_RECT                  left=0x012E, top=0x00A0, right=0x0146, bottom=0x00B2, target=0x0B1C, cursor=0x09
0118  0D 04 01 B0 00 1A 01 C7 00 54 0B 09    HOTSPOT_RECT                  left=0x0104, top=0x00B0, right=0x011A, bottom=0x00C7, target=0x0B54, cursor=0x09
0124  0D 18 01 91 00 28 01 A2 00 8C 0B 0A    HOTSPOT_RECT                  left=0x0118, top=0x0091, right=0x0128, bottom=0x00A2, target=0x0B8C, cursor=0x0A
0130  0D F2 00 7C 00 05 01 96 00 C4 0B 0A    HOTSPOT_RECT                  left=0x00F2, top=0x007C, right=0x0105, bottom=0x0096, target=0x0BC4, cursor=0x0A
013C  0D 1F 01 7C 00 33 01 8F 00 FC 0B 09    HOTSPOT_RECT                  left=0x011F, top=0x007C, right=0x0133, bottom=0x008F, target=0x0BFC, cursor=0x09
0148  13                                     INPUTLOOPEND
0149  96 F2 E1                               LOADSTRING                    dst=v[0x0F2], values=[49]
014C  46                                     RESOURCE_CONTEXT_SAVE
014D  07                                     VIDEOFLAG7_ON
014E  09 87 50                               VIDEOREF                      ref=0x5087 (GAMWAV[135]=gen_e_1.vdx)
0151  47                                     RESOURCE_CONTEXT_RESTORE
0152  1C AD 14                               VIDEO_TRANSITION_REF          ref=0x14AD (FH[173]=h_pb.vdx)
0155  18 34 0C                               CALL                          target=0x0C34
0158  09 AD 14                               VIDEOREF                      ref=0x14AD (FH[173]=h_pb.vdx)
015B  07                                     VIDEOFLAG7_ON
015C  09 AF 14                               VIDEOREF                      ref=0x14AF (FH[175]=h_p_dn.vdx)
015F  43 00                                  RETURNSCRIPT                  value=0x00
0161  07                                     VIDEOFLAG7_ON
0162  46                                     RESOURCE_CONTEXT_SAVE
0163  09 8B 50                               VIDEOREF                      ref=0x508B (GAMWAV[139]=gen_e_5.vdx)
0166  47                                     RESOURCE_CONTEXT_RESTORE
0167  1C AD 14                               VIDEO_TRANSITION_REF          ref=0x14AD (FH[173]=h_pb.vdx)
016A  18 34 0C                               CALL                          target=0x0C34
016D  15 21 00                               JMP                           target=0x0021
0170  1C AD 14                               VIDEO_TRANSITION_REF          ref=0x14AD (FH[173]=h_pb.vdx)
0173  18 34 0C                               CALL                          target=0x0C34
0176  09 AD 14                               VIDEOREF                      ref=0x14AD (FH[173]=h_pb.vdx)
0179  07                                     VIDEOFLAG7_ON
017A  09 AF 14                               VIDEOREF                      ref=0x14AF (FH[175]=h_p_dn.vdx)
017D  43 01                                  RETURNSCRIPT                  value=0x01
017F  96 19 B0                               LOADSTRING                    dst=v[0x019], values=[0]
0182  96 16 B2                               LOADSTRING                    dst=v[0x016], values=[2]
0185  16 08 01 B0                            LOADSTRING                    dst=v[0x108], values=[0]
0189  9A 00 B1 9C 01                         STRCMP_NE_JMP                 start=v[0x000], values=[1], target=0x019C
018E  9A 09 B1 9C 01                         STRCMP_NE_JMP                 start=v[0x009], values=[1], target=0x019C
0193  9A 07 B0 9C 01                         STRCMP_NE_JMP                 start=v[0x007], values=[0], target=0x019C
0198  16 08 01 B1                            LOADSTRING                    dst=v[0x108], values=[1]
019C  9A 00 B1 AF 01                         STRCMP_NE_JMP                 start=v[0x000], values=[1], target=0x01AF
01A1  9A 01 B1 AF 01                         STRCMP_NE_JMP                 start=v[0x001], values=[1], target=0x01AF
01A6  9A 03 B0 AF 01                         STRCMP_NE_JMP                 start=v[0x003], values=[0], target=0x01AF
01AB  16 08 01 B1                            LOADSTRING                    dst=v[0x108], values=[1]
01AF  9A 01 B1 C2 01                         STRCMP_NE_JMP                 start=v[0x001], values=[1], target=0x01C2
01B4  9A 09 B1 C2 01                         STRCMP_NE_JMP                 start=v[0x009], values=[1], target=0x01C2
01B9  9A 08 B0 C2 01                         STRCMP_NE_JMP                 start=v[0x008], values=[0], target=0x01C2
01BE  16 08 01 B1                            LOADSTRING                    dst=v[0x108], values=[1]
01C2  9A 01 B1 D5 01                         STRCMP_NE_JMP                 start=v[0x001], values=[1], target=0x01D5
01C7  9A 03 B1 D5 01                         STRCMP_NE_JMP                 start=v[0x003], values=[1], target=0x01D5
01CC  9A 04 B0 D5 01                         STRCMP_NE_JMP                 start=v[0x004], values=[0], target=0x01D5
01D1  16 08 01 B1                            LOADSTRING                    dst=v[0x108], values=[1]
01D5  9A 02 B1 E8 01                         STRCMP_NE_JMP                 start=v[0x002], values=[1], target=0x01E8
01DA  9A 01 B1 E8 01                         STRCMP_NE_JMP                 start=v[0x001], values=[1], target=0x01E8
01DF  9A 09 B0 E8 01                         STRCMP_NE_JMP                 start=v[0x009], values=[0], target=0x01E8
01E4  16 08 01 B1                            LOADSTRING                    dst=v[0x108], values=[1]
01E8  9A 02 B1 FB 01                         STRCMP_NE_JMP                 start=v[0x002], values=[1], target=0x01FB
01ED  9A 03 B1 FB 01                         STRCMP_NE_JMP                 start=v[0x003], values=[1], target=0x01FB
01F2  9A 05 B0 FB 01                         STRCMP_NE_JMP                 start=v[0x005], values=[0], target=0x01FB
01F7  16 08 01 B1                            LOADSTRING                    dst=v[0x108], values=[1]
01FB  9A 03 B1 0E 02                         STRCMP_NE_JMP                 start=v[0x003], values=[1], target=0x020E
0200  9A 05 B1 0E 02                         STRCMP_NE_JMP                 start=v[0x005], values=[1], target=0x020E
0205  9A 06 B0 0E 02                         STRCMP_NE_JMP                 start=v[0x006], values=[0], target=0x020E
020A  16 08 01 B1                            LOADSTRING                    dst=v[0x108], values=[1]
020E  9A 03 B1 21 02                         STRCMP_NE_JMP                 start=v[0x003], values=[1], target=0x0221
0213  9A 01 B1 21 02                         STRCMP_NE_JMP                 start=v[0x001], values=[1], target=0x0221
0218  9A 00 B0 21 02                         STRCMP_NE_JMP                 start=v[0x000], values=[0], target=0x0221
021D  16 08 01 B1                            LOADSTRING                    dst=v[0x108], values=[1]
0221  9A 04 B1 34 02                         STRCMP_NE_JMP                 start=v[0x004], values=[1], target=0x0234
0226  9A 03 B1 34 02                         STRCMP_NE_JMP                 start=v[0x003], values=[1], target=0x0234
022B  9A 01 B0 34 02                         STRCMP_NE_JMP                 start=v[0x001], values=[0], target=0x0234
0230  16 08 01 B1                            LOADSTRING                    dst=v[0x108], values=[1]
0234  9A 04 B1 47 02                         STRCMP_NE_JMP                 start=v[0x004], values=[1], target=0x0247
0239  9A 05 B1 47 02                         STRCMP_NE_JMP                 start=v[0x005], values=[1], target=0x0247
023E  9A 07 B0 47 02                         STRCMP_NE_JMP                 start=v[0x007], values=[0], target=0x0247
0243  16 08 01 B1                            LOADSTRING                    dst=v[0x108], values=[1]
0247  9A 05 B1 5A 02                         STRCMP_NE_JMP                 start=v[0x005], values=[1], target=0x025A
024C  9A 03 B1 5A 02                         STRCMP_NE_JMP                 start=v[0x003], values=[1], target=0x025A
0251  9A 02 B0 5A 02                         STRCMP_NE_JMP                 start=v[0x002], values=[0], target=0x025A
0256  16 08 01 B1                            LOADSTRING                    dst=v[0x108], values=[1]
025A  9A 05 B1 6D 02                         STRCMP_NE_JMP                 start=v[0x005], values=[1], target=0x026D
025F  9A 07 B1 6D 02                         STRCMP_NE_JMP                 start=v[0x007], values=[1], target=0x026D
0264  9A 08 B0 6D 02                         STRCMP_NE_JMP                 start=v[0x008], values=[0], target=0x026D
0269  16 08 01 B1                            LOADSTRING                    dst=v[0x108], values=[1]
026D  9A 06 B1 80 02                         STRCMP_NE_JMP                 start=v[0x006], values=[1], target=0x0280
0272  9A 05 B1 80 02                         STRCMP_NE_JMP                 start=v[0x005], values=[1], target=0x0280
0277  9A 03 B0 80 02                         STRCMP_NE_JMP                 start=v[0x003], values=[0], target=0x0280
027C  16 08 01 B1                            LOADSTRING                    dst=v[0x108], values=[1]
0280  9A 06 B1 93 02                         STRCMP_NE_JMP                 start=v[0x006], values=[1], target=0x0293
0285  9A 07 B1 93 02                         STRCMP_NE_JMP                 start=v[0x007], values=[1], target=0x0293
028A  9A 09 B0 93 02                         STRCMP_NE_JMP                 start=v[0x009], values=[0], target=0x0293
028F  16 08 01 B1                            LOADSTRING                    dst=v[0x108], values=[1]
0293  9A 07 B1 A6 02                         STRCMP_NE_JMP                 start=v[0x007], values=[1], target=0x02A6
0298  9A 09 B1 A6 02                         STRCMP_NE_JMP                 start=v[0x009], values=[1], target=0x02A6
029D  9A 00 B0 A6 02                         STRCMP_NE_JMP                 start=v[0x000], values=[0], target=0x02A6
02A2  16 08 01 B1                            LOADSTRING                    dst=v[0x108], values=[1]
02A6  9A 07 B1 B9 02                         STRCMP_NE_JMP                 start=v[0x007], values=[1], target=0x02B9
02AB  9A 05 B1 B9 02                         STRCMP_NE_JMP                 start=v[0x005], values=[1], target=0x02B9
02B0  9A 04 B0 B9 02                         STRCMP_NE_JMP                 start=v[0x004], values=[0], target=0x02B9
02B5  16 08 01 B1                            LOADSTRING                    dst=v[0x108], values=[1]
02B9  9A 08 B1 CC 02                         STRCMP_NE_JMP                 start=v[0x008], values=[1], target=0x02CC
02BE  9A 07 B1 CC 02                         STRCMP_NE_JMP                 start=v[0x007], values=[1], target=0x02CC
02C3  9A 05 B0 CC 02                         STRCMP_NE_JMP                 start=v[0x005], values=[0], target=0x02CC
02C8  16 08 01 B1                            LOADSTRING                    dst=v[0x108], values=[1]
02CC  9A 08 B1 DF 02                         STRCMP_NE_JMP                 start=v[0x008], values=[1], target=0x02DF
02D1  9A 09 B1 DF 02                         STRCMP_NE_JMP                 start=v[0x009], values=[1], target=0x02DF
02D6  9A 01 B0 DF 02                         STRCMP_NE_JMP                 start=v[0x001], values=[0], target=0x02DF
02DB  16 08 01 B1                            LOADSTRING                    dst=v[0x108], values=[1]
02DF  9A 09 B1 F2 02                         STRCMP_NE_JMP                 start=v[0x009], values=[1], target=0x02F2
02E4  9A 07 B1 F2 02                         STRCMP_NE_JMP                 start=v[0x007], values=[1], target=0x02F2
02E9  9A 06 B0 F2 02                         STRCMP_NE_JMP                 start=v[0x006], values=[0], target=0x02F2
02EE  16 08 01 B1                            LOADSTRING                    dst=v[0x108], values=[1]
02F2  9A 09 B1 05 03                         STRCMP_NE_JMP                 start=v[0x009], values=[1], target=0x0305
02F7  9A 01 B1 05 03                         STRCMP_NE_JMP                 start=v[0x001], values=[1], target=0x0305
02FC  9A 02 B0 05 03                         STRCMP_NE_JMP                 start=v[0x002], values=[0], target=0x0305
0301  16 08 01 B1                            LOADSTRING                    dst=v[0x108], values=[1]
0305  1A 08 01 B0 0E 03                      STRCMP_NE_JMP                 start=v[0x108], values=[0], target=0x030E
030B  15 61 01                               JMP                           target=0x0161
030E  0B                                     INPUTLOOPSTART
030F  9A 00 B1 2A 03                         STRCMP_NE_JMP                 start=v[0x000], values=[1], target=0x032A
0314  9A 09 B1 2A 03                         STRCMP_NE_JMP                 start=v[0x009], values=[1], target=0x032A
0319  9A 07 B0 2A 03                         STRCMP_NE_JMP                 start=v[0x007], values=[0], target=0x032A
031E  0D 2E 01 64 00 47 01 76 00 04 0A 0A    HOTSPOT_RECT                  left=0x012E, top=0x0064, right=0x0147, bottom=0x0076, target=0x0A04, cursor=0x0A
032A  9A 00 B1 45 03                         STRCMP_NE_JMP                 start=v[0x000], values=[1], target=0x0345
032F  9A 01 B1 45 03                         STRCMP_NE_JMP                 start=v[0x001], values=[1], target=0x0345
0334  9A 03 B0 45 03                         STRCMP_NE_JMP                 start=v[0x003], values=[0], target=0x0345
0339  0D 2E 01 64 00 47 01 76 00 04 0A 0A    HOTSPOT_RECT                  left=0x012E, top=0x0064, right=0x0147, bottom=0x0076, target=0x0A04, cursor=0x0A
0345  9A 01 B1 60 03                         STRCMP_NE_JMP                 start=v[0x001], values=[1], target=0x0360
034A  9A 09 B1 60 03                         STRCMP_NE_JMP                 start=v[0x009], values=[1], target=0x0360
034F  9A 08 B0 60 03                         STRCMP_NE_JMP                 start=v[0x008], values=[0], target=0x0360
0354  0D 41 01 7E 00 54 01 90 00 3C 0A 09    HOTSPOT_RECT                  left=0x0141, top=0x007E, right=0x0154, bottom=0x0090, target=0x0A3C, cursor=0x09
0360  9A 01 B1 7B 03                         STRCMP_NE_JMP                 start=v[0x001], values=[1], target=0x037B
0365  9A 03 B1 7B 03                         STRCMP_NE_JMP                 start=v[0x003], values=[1], target=0x037B
036A  9A 04 B0 7B 03                         STRCMP_NE_JMP                 start=v[0x004], values=[0], target=0x037B
036F  0D 41 01 7E 00 54 01 90 00 3C 0A 09    HOTSPOT_RECT                  left=0x0141, top=0x007E, right=0x0154, bottom=0x0090, target=0x0A3C, cursor=0x09
037B  9A 02 B1 96 03                         STRCMP_NE_JMP                 start=v[0x002], values=[1], target=0x0396
0380  9A 01 B1 96 03                         STRCMP_NE_JMP                 start=v[0x001], values=[1], target=0x0396
0385  9A 09 B0 96 03                         STRCMP_NE_JMP                 start=v[0x009], values=[0], target=0x0396
038A  0D 6A 01 7E 00 86 01 92 00 74 0A 09    HOTSPOT_RECT                  left=0x016A, top=0x007E, right=0x0186, bottom=0x0092, target=0x0A74, cursor=0x09
0396  9A 02 B1 B1 03                         STRCMP_NE_JMP                 start=v[0x002], values=[1], target=0x03B1
039B  9A 03 B1 B1 03                         STRCMP_NE_JMP                 start=v[0x003], values=[1], target=0x03B1
03A0  9A 05 B0 B1 03                         STRCMP_NE_JMP                 start=v[0x005], values=[0], target=0x03B1
03A5  0D 6A 01 7E 00 86 01 92 00 74 0A 09    HOTSPOT_RECT                  left=0x016A, top=0x007E, right=0x0186, bottom=0x0092, target=0x0A74, cursor=0x09
03B1  9A 03 B1 CC 03                         STRCMP_NE_JMP                 start=v[0x003], values=[1], target=0x03CC
03B6  9A 05 B1 CC 03                         STRCMP_NE_JMP                 start=v[0x005], values=[1], target=0x03CC
03BB  9A 06 B0 CC 03                         STRCMP_NE_JMP                 start=v[0x006], values=[0], target=0x03CC
03C0  0D 4B 01 93 00 5F 01 A5 00 AC 0A 0A    HOTSPOT_RECT                  left=0x014B, top=0x0093, right=0x015F, bottom=0x00A5, target=0x0AAC, cursor=0x0A
03CC  9A 03 B1 E7 03                         STRCMP_NE_JMP                 start=v[0x003], values=[1], target=0x03E7
03D1  9A 01 B1 E7 03                         STRCMP_NE_JMP                 start=v[0x001], values=[1], target=0x03E7
03D6  9A 00 B0 E7 03                         STRCMP_NE_JMP                 start=v[0x000], values=[0], target=0x03E7
03DB  0D 4B 01 93 00 5F 01 A5 00 AC 0A 0A    HOTSPOT_RECT                  left=0x014B, top=0x0093, right=0x015F, bottom=0x00A5, target=0x0AAC, cursor=0x0A
03E7  9A 04 B1 02 04                         STRCMP_NE_JMP                 start=v[0x004], values=[1], target=0x0402
03EC  9A 03 B1 02 04                         STRCMP_NE_JMP                 start=v[0x003], values=[1], target=0x0402
03F1  9A 01 B0 02 04                         STRCMP_NE_JMP                 start=v[0x001], values=[0], target=0x0402
03F6  0D 5E 01 AF 00 71 01 C9 00 E4 0A 0A    HOTSPOT_RECT                  left=0x015E, top=0x00AF, right=0x0171, bottom=0x00C9, target=0x0AE4, cursor=0x0A
0402  9A 04 B1 1D 04                         STRCMP_NE_JMP                 start=v[0x004], values=[1], target=0x041D
0407  9A 05 B1 1D 04                         STRCMP_NE_JMP                 start=v[0x005], values=[1], target=0x041D
040C  9A 07 B0 1D 04                         STRCMP_NE_JMP                 start=v[0x007], values=[0], target=0x041D
0411  0D 5E 01 AF 00 71 01 C9 00 E4 0A 0A    HOTSPOT_RECT                  left=0x015E, top=0x00AF, right=0x0171, bottom=0x00C9, target=0x0AE4, cursor=0x0A
041D  9A 05 B1 38 04                         STRCMP_NE_JMP                 start=v[0x005], values=[1], target=0x0438
0422  9A 03 B1 38 04                         STRCMP_NE_JMP                 start=v[0x003], values=[1], target=0x0438
0427  9A 02 B0 38 04                         STRCMP_NE_JMP                 start=v[0x002], values=[0], target=0x0438
042C  0D 2E 01 A0 00 46 01 B2 00 1C 0B 09    HOTSPOT_RECT                  left=0x012E, top=0x00A0, right=0x0146, bottom=0x00B2, target=0x0B1C, cursor=0x09
0438  9A 05 B1 53 04                         STRCMP_NE_JMP                 start=v[0x005], values=[1], target=0x0453
043D  9A 07 B1 53 04                         STRCMP_NE_JMP                 start=v[0x007], values=[1], target=0x0453
0442  9A 08 B0 53 04                         STRCMP_NE_JMP                 start=v[0x008], values=[0], target=0x0453
0447  0D 2E 01 A0 00 46 01 B2 00 1C 0B 09    HOTSPOT_RECT                  left=0x012E, top=0x00A0, right=0x0146, bottom=0x00B2, target=0x0B1C, cursor=0x09
0453  9A 06 B1 6E 04                         STRCMP_NE_JMP                 start=v[0x006], values=[1], target=0x046E
0458  9A 05 B1 6E 04                         STRCMP_NE_JMP                 start=v[0x005], values=[1], target=0x046E
045D  9A 03 B0 6E 04                         STRCMP_NE_JMP                 start=v[0x003], values=[0], target=0x046E
0462  0D 04 01 B0 00 1A 01 C7 00 54 0B 09    HOTSPOT_RECT                  left=0x0104, top=0x00B0, right=0x011A, bottom=0x00C7, target=0x0B54, cursor=0x09
046E  9A 06 B1 89 04                         STRCMP_NE_JMP                 start=v[0x006], values=[1], target=0x0489
0473  9A 07 B1 89 04                         STRCMP_NE_JMP                 start=v[0x007], values=[1], target=0x0489
0478  9A 09 B0 89 04                         STRCMP_NE_JMP                 start=v[0x009], values=[0], target=0x0489
047D  0D 04 01 B0 00 1A 01 C7 00 54 0B 09    HOTSPOT_RECT                  left=0x0104, top=0x00B0, right=0x011A, bottom=0x00C7, target=0x0B54, cursor=0x09
0489  9A 07 B1 A4 04                         STRCMP_NE_JMP                 start=v[0x007], values=[1], target=0x04A4
048E  9A 09 B1 A4 04                         STRCMP_NE_JMP                 start=v[0x009], values=[1], target=0x04A4
0493  9A 00 B0 A4 04                         STRCMP_NE_JMP                 start=v[0x000], values=[0], target=0x04A4
0498  0D 18 01 91 00 28 01 A2 00 8C 0B 0A    HOTSPOT_RECT                  left=0x0118, top=0x0091, right=0x0128, bottom=0x00A2, target=0x0B8C, cursor=0x0A
04A4  9A 07 B1 BF 04                         STRCMP_NE_JMP                 start=v[0x007], values=[1], target=0x04BF
04A9  9A 05 B1 BF 04                         STRCMP_NE_JMP                 start=v[0x005], values=[1], target=0x04BF
04AE  9A 04 B0 BF 04                         STRCMP_NE_JMP                 start=v[0x004], values=[0], target=0x04BF
04B3  0D 18 01 91 00 28 01 A2 00 8C 0B 0A    HOTSPOT_RECT                  left=0x0118, top=0x0091, right=0x0128, bottom=0x00A2, target=0x0B8C, cursor=0x0A
04BF  9A 08 B1 DA 04                         STRCMP_NE_JMP                 start=v[0x008], values=[1], target=0x04DA
04C4  9A 07 B1 DA 04                         STRCMP_NE_JMP                 start=v[0x007], values=[1], target=0x04DA
04C9  9A 05 B0 DA 04                         STRCMP_NE_JMP                 start=v[0x005], values=[0], target=0x04DA
04CE  0D F2 00 7C 00 05 01 96 00 C4 0B 0A    HOTSPOT_RECT                  left=0x00F2, top=0x007C, right=0x0105, bottom=0x0096, target=0x0BC4, cursor=0x0A
04DA  9A 08 B1 F5 04                         STRCMP_NE_JMP                 start=v[0x008], values=[1], target=0x04F5
04DF  9A 09 B1 F5 04                         STRCMP_NE_JMP                 start=v[0x009], values=[1], target=0x04F5
04E4  9A 01 B0 F5 04                         STRCMP_NE_JMP                 start=v[0x001], values=[0], target=0x04F5
04E9  0D F2 00 7C 00 05 01 96 00 C4 0B 0A    HOTSPOT_RECT                  left=0x00F2, top=0x007C, right=0x0105, bottom=0x0096, target=0x0BC4, cursor=0x0A
04F5  9A 09 B1 10 05                         STRCMP_NE_JMP                 start=v[0x009], values=[1], target=0x0510
04FA  9A 07 B1 10 05                         STRCMP_NE_JMP                 start=v[0x007], values=[1], target=0x0510
04FF  9A 06 B0 10 05                         STRCMP_NE_JMP                 start=v[0x006], values=[0], target=0x0510
0504  0D 1F 01 7C 00 33 01 8F 00 FC 0B 09    HOTSPOT_RECT                  left=0x011F, top=0x007C, right=0x0133, bottom=0x008F, target=0x0BFC, cursor=0x09
0510  9A 09 B1 2B 05                         STRCMP_NE_JMP                 start=v[0x009], values=[1], target=0x052B
0515  9A 01 B1 2B 05                         STRCMP_NE_JMP                 start=v[0x001], values=[1], target=0x052B
051A  9A 02 B0 2B 05                         STRCMP_NE_JMP                 start=v[0x002], values=[0], target=0x052B
051F  0D 1F 01 7C 00 33 01 8F 00 FC 0B 09    HOTSPOT_RECT                  left=0x011F, top=0x007C, right=0x0133, bottom=0x008F, target=0x0BFC, cursor=0x09
052B  13                                     INPUTLOOPEND
052C  96 16 B3                               LOADSTRING                    dst=v[0x016], values=[3]
052F  96 17 B0                               LOADSTRING                    dst=v[0x017], values=[0]
0532  9A 19 E1 46 05                         STRCMP_NE_JMP                 start=v[0x019], values=[49], target=0x0546
0537  9A 09 B1 46 05                         STRCMP_NE_JMP                 start=v[0x009], values=[1], target=0x0546
053C  9A 07 B0 46 05                         STRCMP_NE_JMP                 start=v[0x007], values=[0], target=0x0546
0541  96 0F E8                               LOADSTRING                    dst=v[0x00F], values=[56]
0544  9F 17                                  INC                           var=v[0x017]
0546  9A 19 E1 5A 05                         STRCMP_NE_JMP                 start=v[0x019], values=[49], target=0x055A
054B  9A 01 B1 5A 05                         STRCMP_NE_JMP                 start=v[0x001], values=[1], target=0x055A
0550  9A 03 B0 5A 05                         STRCMP_NE_JMP                 start=v[0x003], values=[0], target=0x055A
0555  96 0F E4                               LOADSTRING                    dst=v[0x00F], values=[52]
0558  9F 17                                  INC                           var=v[0x017]
055A  9A 19 E2 6E 05                         STRCMP_NE_JMP                 start=v[0x019], values=[50], target=0x056E
055F  9A 09 B1 6E 05                         STRCMP_NE_JMP                 start=v[0x009], values=[1], target=0x056E
0564  9A 08 B0 6E 05                         STRCMP_NE_JMP                 start=v[0x008], values=[0], target=0x056E
0569  96 0F E9                               LOADSTRING                    dst=v[0x00F], values=[57]
056C  9F 17                                  INC                           var=v[0x017]
056E  9A 19 E2 82 05                         STRCMP_NE_JMP                 start=v[0x019], values=[50], target=0x0582
0573  9A 03 B1 82 05                         STRCMP_NE_JMP                 start=v[0x003], values=[1], target=0x0582
0578  9A 04 B0 82 05                         STRCMP_NE_JMP                 start=v[0x004], values=[0], target=0x0582
057D  96 0F E5                               LOADSTRING                    dst=v[0x00F], values=[53]
0580  9F 17                                  INC                           var=v[0x017]
0582  9A 19 E3 96 05                         STRCMP_NE_JMP                 start=v[0x019], values=[51], target=0x0596
0587  9A 01 B1 96 05                         STRCMP_NE_JMP                 start=v[0x001], values=[1], target=0x0596
058C  9A 09 B0 96 05                         STRCMP_NE_JMP                 start=v[0x009], values=[0], target=0x0596
0591  96 0F EA                               LOADSTRING                    dst=v[0x00F], values=[58]
0594  9F 17                                  INC                           var=v[0x017]
0596  9A 19 E3 AA 05                         STRCMP_NE_JMP                 start=v[0x019], values=[51], target=0x05AA
059B  9A 03 B1 AA 05                         STRCMP_NE_JMP                 start=v[0x003], values=[1], target=0x05AA
05A0  9A 05 B0 AA 05                         STRCMP_NE_JMP                 start=v[0x005], values=[0], target=0x05AA
05A5  96 0F E6                               LOADSTRING                    dst=v[0x00F], values=[54]
05A8  9F 17                                  INC                           var=v[0x017]
05AA  9A 19 E4 BE 05                         STRCMP_NE_JMP                 start=v[0x019], values=[52], target=0x05BE
05AF  9A 05 B1 BE 05                         STRCMP_NE_JMP                 start=v[0x005], values=[1], target=0x05BE
05B4  9A 06 B0 BE 05                         STRCMP_NE_JMP                 start=v[0x006], values=[0], target=0x05BE
05B9  96 0F E7                               LOADSTRING                    dst=v[0x00F], values=[55]
05BC  9F 17                                  INC                           var=v[0x017]
05BE  9A 19 E4 D2 05                         STRCMP_NE_JMP                 start=v[0x019], values=[52], target=0x05D2
05C3  9A 01 B1 D2 05                         STRCMP_NE_JMP                 start=v[0x001], values=[1], target=0x05D2
05C8  9A 00 B0 D2 05                         STRCMP_NE_JMP                 start=v[0x000], values=[0], target=0x05D2
05CD  96 0F E1                               LOADSTRING                    dst=v[0x00F], values=[49]
05D0  9F 17                                  INC                           var=v[0x017]
05D2  9A 19 E5 E6 05                         STRCMP_NE_JMP                 start=v[0x019], values=[53], target=0x05E6
05D7  9A 03 B1 E6 05                         STRCMP_NE_JMP                 start=v[0x003], values=[1], target=0x05E6
05DC  9A 01 B0 E6 05                         STRCMP_NE_JMP                 start=v[0x001], values=[0], target=0x05E6
05E1  96 0F E2                               LOADSTRING                    dst=v[0x00F], values=[50]
05E4  9F 17                                  INC                           var=v[0x017]
05E6  9A 19 E5 FA 05                         STRCMP_NE_JMP                 start=v[0x019], values=[53], target=0x05FA
05EB  9A 05 B1 FA 05                         STRCMP_NE_JMP                 start=v[0x005], values=[1], target=0x05FA
05F0  9A 07 B0 FA 05                         STRCMP_NE_JMP                 start=v[0x007], values=[0], target=0x05FA
05F5  96 0F E8                               LOADSTRING                    dst=v[0x00F], values=[56]
05F8  9F 17                                  INC                           var=v[0x017]
05FA  9A 19 E6 0E 06                         STRCMP_NE_JMP                 start=v[0x019], values=[54], target=0x060E
05FF  9A 03 B1 0E 06                         STRCMP_NE_JMP                 start=v[0x003], values=[1], target=0x060E
0604  9A 02 B0 0E 06                         STRCMP_NE_JMP                 start=v[0x002], values=[0], target=0x060E
0609  96 0F E3                               LOADSTRING                    dst=v[0x00F], values=[51]
060C  9F 17                                  INC                           var=v[0x017]
060E  9A 19 E6 22 06                         STRCMP_NE_JMP                 start=v[0x019], values=[54], target=0x0622
0613  9A 07 B1 22 06                         STRCMP_NE_JMP                 start=v[0x007], values=[1], target=0x0622
0618  9A 08 B0 22 06                         STRCMP_NE_JMP                 start=v[0x008], values=[0], target=0x0622
061D  96 0F E9                               LOADSTRING                    dst=v[0x00F], values=[57]
0620  9F 17                                  INC                           var=v[0x017]
0622  9A 19 E7 36 06                         STRCMP_NE_JMP                 start=v[0x019], values=[55], target=0x0636
0627  9A 05 B1 36 06                         STRCMP_NE_JMP                 start=v[0x005], values=[1], target=0x0636
062C  9A 03 B0 36 06                         STRCMP_NE_JMP                 start=v[0x003], values=[0], target=0x0636
0631  96 0F E4                               LOADSTRING                    dst=v[0x00F], values=[52]
0634  9F 17                                  INC                           var=v[0x017]
0636  9A 19 E7 4A 06                         STRCMP_NE_JMP                 start=v[0x019], values=[55], target=0x064A
063B  9A 07 B1 4A 06                         STRCMP_NE_JMP                 start=v[0x007], values=[1], target=0x064A
0640  9A 09 B0 4A 06                         STRCMP_NE_JMP                 start=v[0x009], values=[0], target=0x064A
0645  96 0F EA                               LOADSTRING                    dst=v[0x00F], values=[58]
0648  9F 17                                  INC                           var=v[0x017]
064A  9A 19 E8 5E 06                         STRCMP_NE_JMP                 start=v[0x019], values=[56], target=0x065E
064F  9A 09 B1 5E 06                         STRCMP_NE_JMP                 start=v[0x009], values=[1], target=0x065E
0654  9A 00 B0 5E 06                         STRCMP_NE_JMP                 start=v[0x000], values=[0], target=0x065E
0659  96 0F E1                               LOADSTRING                    dst=v[0x00F], values=[49]
065C  9F 17                                  INC                           var=v[0x017]
065E  9A 19 E8 72 06                         STRCMP_NE_JMP                 start=v[0x019], values=[56], target=0x0672
0663  9A 05 B1 72 06                         STRCMP_NE_JMP                 start=v[0x005], values=[1], target=0x0672
0668  9A 04 B0 72 06                         STRCMP_NE_JMP                 start=v[0x004], values=[0], target=0x0672
066D  96 0F E5                               LOADSTRING                    dst=v[0x00F], values=[53]
0670  9F 17                                  INC                           var=v[0x017]
0672  9A 19 E9 86 06                         STRCMP_NE_JMP                 start=v[0x019], values=[57], target=0x0686
0677  9A 07 B1 86 06                         STRCMP_NE_JMP                 start=v[0x007], values=[1], target=0x0686
067C  9A 05 B0 86 06                         STRCMP_NE_JMP                 start=v[0x005], values=[0], target=0x0686
0681  96 0F E6                               LOADSTRING                    dst=v[0x00F], values=[54]
0684  9F 17                                  INC                           var=v[0x017]
0686  9A 19 E9 9A 06                         STRCMP_NE_JMP                 start=v[0x019], values=[57], target=0x069A
068B  9A 09 B1 9A 06                         STRCMP_NE_JMP                 start=v[0x009], values=[1], target=0x069A
0690  9A 01 B0 9A 06                         STRCMP_NE_JMP                 start=v[0x001], values=[0], target=0x069A
0695  96 0F E2                               LOADSTRING                    dst=v[0x00F], values=[50]
0698  9F 17                                  INC                           var=v[0x017]
069A  9A 19 EA AE 06                         STRCMP_NE_JMP                 start=v[0x019], values=[58], target=0x06AE
069F  9A 07 B1 AE 06                         STRCMP_NE_JMP                 start=v[0x007], values=[1], target=0x06AE
06A4  9A 06 B0 AE 06                         STRCMP_NE_JMP                 start=v[0x006], values=[0], target=0x06AE
06A9  96 0F E7                               LOADSTRING                    dst=v[0x00F], values=[55]
06AC  9F 17                                  INC                           var=v[0x017]
06AE  9A 19 EA C2 06                         STRCMP_NE_JMP                 start=v[0x019], values=[58], target=0x06C2
06B3  9A 01 B1 C2 06                         STRCMP_NE_JMP                 start=v[0x001], values=[1], target=0x06C2
06B8  9A 02 B0 C2 06                         STRCMP_NE_JMP                 start=v[0x002], values=[0], target=0x06C2
06BD  96 0F E3                               LOADSTRING                    dst=v[0x00F], values=[51]
06C0  9F 17                                  INC                           var=v[0x017]
06C2  9A 17 B1 1A 07                         STRCMP_NE_JMP                 start=v[0x017], values=[1], target=0x071A
06C7  9A 0F E1 CF 06                         STRCMP_NE_JMP                 start=v[0x00F], values=[49], target=0x06CF
06CC  15 04 0A                               JMP                           target=0x0A04
06CF  9A 0F E2 D7 06                         STRCMP_NE_JMP                 start=v[0x00F], values=[50], target=0x06D7
06D4  15 3C 0A                               JMP                           target=0x0A3C
06D7  9A 0F E3 DF 06                         STRCMP_NE_JMP                 start=v[0x00F], values=[51], target=0x06DF
06DC  15 74 0A                               JMP                           target=0x0A74
06DF  9A 0F E4 E7 06                         STRCMP_NE_JMP                 start=v[0x00F], values=[52], target=0x06E7
06E4  15 AC 0A                               JMP                           target=0x0AAC
06E7  9A 0F E5 EF 06                         STRCMP_NE_JMP                 start=v[0x00F], values=[53], target=0x06EF
06EC  15 E4 0A                               JMP                           target=0x0AE4
06EF  9A 0F E6 F7 06                         STRCMP_NE_JMP                 start=v[0x00F], values=[54], target=0x06F7
06F4  15 1C 0B                               JMP                           target=0x0B1C
06F7  9A 0F E7 FF 06                         STRCMP_NE_JMP                 start=v[0x00F], values=[55], target=0x06FF
06FC  15 54 0B                               JMP                           target=0x0B54
06FF  9A 0F E8 07 07                         STRCMP_NE_JMP                 start=v[0x00F], values=[56], target=0x0707
0704  15 8C 0B                               JMP                           target=0x0B8C
0707  9A 0F E9 0F 07                         STRCMP_NE_JMP                 start=v[0x00F], values=[57], target=0x070F
070C  15 C4 0B                               JMP                           target=0x0BC4
070F  9A 0F EA 17 07                         STRCMP_NE_JMP                 start=v[0x00F], values=[58], target=0x0717
0714  15 FC 0B                               JMP                           target=0x0BFC
0717  15 1E 07                               JMP                           target=0x071E
071A  07                                     VIDEOFLAG7_ON
071B  09 8E 50                               VIDEOREF                      ref=0x508E (GAMWAV[142]=gen_e_8.vdx)
071E  0B                                     INPUTLOOPSTART
071F  9A 19 E1 3A 07                         STRCMP_NE_JMP                 start=v[0x019], values=[49], target=0x073A
0724  9A 09 B1 3A 07                         STRCMP_NE_JMP                 start=v[0x009], values=[1], target=0x073A
0729  9A 07 B0 3A 07                         STRCMP_NE_JMP                 start=v[0x007], values=[0], target=0x073A
072E  0D 18 01 91 00 28 01 A2 00 8C 0B 0A    HOTSPOT_RECT                  left=0x0118, top=0x0091, right=0x0128, bottom=0x00A2, target=0x0B8C, cursor=0x0A
073A  9A 19 E1 55 07                         STRCMP_NE_JMP                 start=v[0x019], values=[49], target=0x0755
073F  9A 01 B1 55 07                         STRCMP_NE_JMP                 start=v[0x001], values=[1], target=0x0755
0744  9A 03 B0 55 07                         STRCMP_NE_JMP                 start=v[0x003], values=[0], target=0x0755
0749  0D 4B 01 93 00 5F 01 A5 00 AC 0A 0A    HOTSPOT_RECT                  left=0x014B, top=0x0093, right=0x015F, bottom=0x00A5, target=0x0AAC, cursor=0x0A
0755  9A 19 E2 70 07                         STRCMP_NE_JMP                 start=v[0x019], values=[50], target=0x0770
075A  9A 09 B1 70 07                         STRCMP_NE_JMP                 start=v[0x009], values=[1], target=0x0770
075F  9A 08 B0 70 07                         STRCMP_NE_JMP                 start=v[0x008], values=[0], target=0x0770
0764  0D F2 00 7C 00 05 01 96 00 C4 0B 0A    HOTSPOT_RECT                  left=0x00F2, top=0x007C, right=0x0105, bottom=0x0096, target=0x0BC4, cursor=0x0A
0770  9A 19 E2 8B 07                         STRCMP_NE_JMP                 start=v[0x019], values=[50], target=0x078B
0775  9A 03 B1 8B 07                         STRCMP_NE_JMP                 start=v[0x003], values=[1], target=0x078B
077A  9A 04 B0 8B 07                         STRCMP_NE_JMP                 start=v[0x004], values=[0], target=0x078B
077F  0D 5E 01 AF 00 71 01 C9 00 E4 0A 0A    HOTSPOT_RECT                  left=0x015E, top=0x00AF, right=0x0171, bottom=0x00C9, target=0x0AE4, cursor=0x0A
078B  9A 19 E3 A6 07                         STRCMP_NE_JMP                 start=v[0x019], values=[51], target=0x07A6
0790  9A 01 B1 A6 07                         STRCMP_NE_JMP                 start=v[0x001], values=[1], target=0x07A6
0795  9A 09 B0 A6 07                         STRCMP_NE_JMP                 start=v[0x009], values=[0], target=0x07A6
079A  0D 1F 01 7C 00 33 01 8F 00 FC 0B 09    HOTSPOT_RECT                  left=0x011F, top=0x007C, right=0x0133, bottom=0x008F, target=0x0BFC, cursor=0x09
07A6  9A 19 E3 C1 07                         STRCMP_NE_JMP                 start=v[0x019], values=[51], target=0x07C1
07AB  9A 03 B1 C1 07                         STRCMP_NE_JMP                 start=v[0x003], values=[1], target=0x07C1
07B0  9A 05 B0 C1 07                         STRCMP_NE_JMP                 start=v[0x005], values=[0], target=0x07C1
07B5  0D 2E 01 A0 00 46 01 B2 00 1C 0B 09    HOTSPOT_RECT                  left=0x012E, top=0x00A0, right=0x0146, bottom=0x00B2, target=0x0B1C, cursor=0x09
07C1  9A 19 E4 DC 07                         STRCMP_NE_JMP                 start=v[0x019], values=[52], target=0x07DC
07C6  9A 05 B1 DC 07                         STRCMP_NE_JMP                 start=v[0x005], values=[1], target=0x07DC
07CB  9A 06 B0 DC 07                         STRCMP_NE_JMP                 start=v[0x006], values=[0], target=0x07DC
07D0  0D 04 01 B0 00 1A 01 C7 00 54 0B 09    HOTSPOT_RECT                  left=0x0104, top=0x00B0, right=0x011A, bottom=0x00C7, target=0x0B54, cursor=0x09
07DC  9A 19 E4 F7 07                         STRCMP_NE_JMP                 start=v[0x019], values=[52], target=0x07F7
07E1  9A 01 B1 F7 07                         STRCMP_NE_JMP                 start=v[0x001], values=[1], target=0x07F7
07E6  9A 00 B0 F7 07                         STRCMP_NE_JMP                 start=v[0x000], values=[0], target=0x07F7
07EB  0D 2E 01 64 00 47 01 76 00 04 0A 0A    HOTSPOT_RECT                  left=0x012E, top=0x0064, right=0x0147, bottom=0x0076, target=0x0A04, cursor=0x0A
07F7  9A 19 E5 12 08                         STRCMP_NE_JMP                 start=v[0x019], values=[53], target=0x0812
07FC  9A 03 B1 12 08                         STRCMP_NE_JMP                 start=v[0x003], values=[1], target=0x0812
0801  9A 01 B0 12 08                         STRCMP_NE_JMP                 start=v[0x001], values=[0], target=0x0812
0806  0D 41 01 7E 00 54 01 90 00 3C 0A 09    HOTSPOT_RECT                  left=0x0141, top=0x007E, right=0x0154, bottom=0x0090, target=0x0A3C, cursor=0x09
0812  9A 19 E5 2D 08                         STRCMP_NE_JMP                 start=v[0x019], values=[53], target=0x082D
0817  9A 05 B1 2D 08                         STRCMP_NE_JMP                 start=v[0x005], values=[1], target=0x082D
081C  9A 07 B0 2D 08                         STRCMP_NE_JMP                 start=v[0x007], values=[0], target=0x082D
0821  0D 18 01 91 00 28 01 A2 00 8C 0B 0A    HOTSPOT_RECT                  left=0x0118, top=0x0091, right=0x0128, bottom=0x00A2, target=0x0B8C, cursor=0x0A
082D  9A 19 E6 48 08                         STRCMP_NE_JMP                 start=v[0x019], values=[54], target=0x0848
0832  9A 03 B1 48 08                         STRCMP_NE_JMP                 start=v[0x003], values=[1], target=0x0848
0837  9A 02 B0 48 08                         STRCMP_NE_JMP                 start=v[0x002], values=[0], target=0x0848
083C  0D 6A 01 7E 00 86 01 92 00 74 0A 09    HOTSPOT_RECT                  left=0x016A, top=0x007E, right=0x0186, bottom=0x0092, target=0x0A74, cursor=0x09
0848  9A 19 E6 63 08                         STRCMP_NE_JMP                 start=v[0x019], values=[54], target=0x0863
084D  9A 07 B1 63 08                         STRCMP_NE_JMP                 start=v[0x007], values=[1], target=0x0863
0852  9A 08 B0 63 08                         STRCMP_NE_JMP                 start=v[0x008], values=[0], target=0x0863
0857  0D F2 00 7C 00 05 01 96 00 C4 0B 0A    HOTSPOT_RECT                  left=0x00F2, top=0x007C, right=0x0105, bottom=0x0096, target=0x0BC4, cursor=0x0A
0863  9A 19 E7 7E 08                         STRCMP_NE_JMP                 start=v[0x019], values=[55], target=0x087E
0868  9A 05 B1 7E 08                         STRCMP_NE_JMP                 start=v[0x005], values=[1], target=0x087E
086D  9A 03 B0 7E 08                         STRCMP_NE_JMP                 start=v[0x003], values=[0], target=0x087E
0872  0D 4B 01 93 00 5F 01 A5 00 AC 0A 0A    HOTSPOT_RECT                  left=0x014B, top=0x0093, right=0x015F, bottom=0x00A5, target=0x0AAC, cursor=0x0A
087E  9A 19 E7 99 08                         STRCMP_NE_JMP                 start=v[0x019], values=[55], target=0x0899
0883  9A 07 B1 99 08                         STRCMP_NE_JMP                 start=v[0x007], values=[1], target=0x0899
0888  9A 09 B0 99 08                         STRCMP_NE_JMP                 start=v[0x009], values=[0], target=0x0899
088D  0D 1F 01 7C 00 33 01 8F 00 FC 0B 09    HOTSPOT_RECT                  left=0x011F, top=0x007C, right=0x0133, bottom=0x008F, target=0x0BFC, cursor=0x09
0899  9A 19 E8 B4 08                         STRCMP_NE_JMP                 start=v[0x019], values=[56], target=0x08B4
089E  9A 09 B1 B4 08                         STRCMP_NE_JMP                 start=v[0x009], values=[1], target=0x08B4
08A3  9A 00 B0 B4 08                         STRCMP_NE_JMP                 start=v[0x000], values=[0], target=0x08B4
08A8  0D 2E 01 64 00 47 01 76 00 04 0A 0A    HOTSPOT_RECT                  left=0x012E, top=0x0064, right=0x0147, bottom=0x0076, target=0x0A04, cursor=0x0A
08B4  9A 19 E8 CF 08                         STRCMP_NE_JMP                 start=v[0x019], values=[56], target=0x08CF
08B9  9A 05 B1 CF 08                         STRCMP_NE_JMP                 start=v[0x005], values=[1], target=0x08CF
08BE  9A 04 B0 CF 08                         STRCMP_NE_JMP                 start=v[0x004], values=[0], target=0x08CF
08C3  0D 5E 01 AF 00 71 01 C9 00 E4 0A 0A    HOTSPOT_RECT                  left=0x015E, top=0x00AF, right=0x0171, bottom=0x00C9, target=0x0AE4, cursor=0x0A
08CF  9A 19 E9 EA 08                         STRCMP_NE_JMP                 start=v[0x019], values=[57], target=0x08EA
08D4  9A 07 B1 EA 08                         STRCMP_NE_JMP                 start=v[0x007], values=[1], target=0x08EA
08D9  9A 05 B0 EA 08                         STRCMP_NE_JMP                 start=v[0x005], values=[0], target=0x08EA
08DE  0D 2E 01 A0 00 46 01 B2 00 1C 0B 09    HOTSPOT_RECT                  left=0x012E, top=0x00A0, right=0x0146, bottom=0x00B2, target=0x0B1C, cursor=0x09
08EA  9A 19 E9 05 09                         STRCMP_NE_JMP                 start=v[0x019], values=[57], target=0x0905
08EF  9A 09 B1 05 09                         STRCMP_NE_JMP                 start=v[0x009], values=[1], target=0x0905
08F4  9A 01 B0 05 09                         STRCMP_NE_JMP                 start=v[0x001], values=[0], target=0x0905
08F9  0D 41 01 7E 00 54 01 90 00 3C 0A 09    HOTSPOT_RECT                  left=0x0141, top=0x007E, right=0x0154, bottom=0x0090, target=0x0A3C, cursor=0x09
0905  9A 19 EA 20 09                         STRCMP_NE_JMP                 start=v[0x019], values=[58], target=0x0920
090A  9A 07 B1 20 09                         STRCMP_NE_JMP                 start=v[0x007], values=[1], target=0x0920
090F  9A 06 B0 20 09                         STRCMP_NE_JMP                 start=v[0x006], values=[0], target=0x0920
0914  0D 04 01 B0 00 1A 01 C7 00 54 0B 09    HOTSPOT_RECT                  left=0x0104, top=0x00B0, right=0x011A, bottom=0x00C7, target=0x0B54, cursor=0x09
0920  9A 19 EA 3B 09                         STRCMP_NE_JMP                 start=v[0x019], values=[58], target=0x093B
0925  9A 01 B1 3B 09                         STRCMP_NE_JMP                 start=v[0x001], values=[1], target=0x093B
092A  9A 02 B0 3B 09                         STRCMP_NE_JMP                 start=v[0x002], values=[0], target=0x093B
092F  0D 6A 01 7E 00 86 01 92 00 74 0A 09    HOTSPOT_RECT                  left=0x016A, top=0x007E, right=0x0186, bottom=0x0092, target=0x0A74, cursor=0x09
093B  13                                     INPUTLOOPEND
093C  96 16 B4                               LOADSTRING                    dst=v[0x016], values=[4]
093F  9A 18 E1 4A 09                         STRCMP_NE_JMP                 start=v[0x018], values=[49], target=0x094A
0944  15 04 0A                               JMP                           target=0x0A04
0947  15 AA 09                               JMP                           target=0x09AA
094A  9A 18 E2 55 09                         STRCMP_NE_JMP                 start=v[0x018], values=[50], target=0x0955
094F  15 3C 0A                               JMP                           target=0x0A3C
0952  15 AA 09                               JMP                           target=0x09AA
0955  9A 18 E3 60 09                         STRCMP_NE_JMP                 start=v[0x018], values=[51], target=0x0960
095A  15 74 0A                               JMP                           target=0x0A74
095D  15 AA 09                               JMP                           target=0x09AA
0960  9A 18 E4 6B 09                         STRCMP_NE_JMP                 start=v[0x018], values=[52], target=0x096B
0965  15 AC 0A                               JMP                           target=0x0AAC
0968  15 AA 09                               JMP                           target=0x09AA
096B  9A 18 E5 76 09                         STRCMP_NE_JMP                 start=v[0x018], values=[53], target=0x0976
0970  15 E4 0A                               JMP                           target=0x0AE4
0973  15 AA 09                               JMP                           target=0x09AA
0976  9A 18 E6 81 09                         STRCMP_NE_JMP                 start=v[0x018], values=[54], target=0x0981
097B  15 1C 0B                               JMP                           target=0x0B1C
097E  15 AA 09                               JMP                           target=0x09AA
0981  9A 18 E7 8C 09                         STRCMP_NE_JMP                 start=v[0x018], values=[55], target=0x098C
0986  15 54 0B                               JMP                           target=0x0B54
0989  15 AA 09                               JMP                           target=0x09AA
098C  9A 18 E8 97 09                         STRCMP_NE_JMP                 start=v[0x018], values=[56], target=0x0997
0991  15 8C 0B                               JMP                           target=0x0B8C
0994  15 AA 09                               JMP                           target=0x09AA
0997  9A 18 E9 A2 09                         STRCMP_NE_JMP                 start=v[0x018], values=[57], target=0x09A2
099C  15 C4 0B                               JMP                           target=0x0BC4
099F  15 AA 09                               JMP                           target=0x09AA
09A2  9A 18 EA AA 09                         STRCMP_NE_JMP                 start=v[0x018], values=[58], target=0x09AA
09A7  15 FC 0B                               JMP                           target=0x0BFC
09AA  96 16 B1                               LOADSTRING                    dst=v[0x016], values=[1]
09AD  96 17 B0                               LOADSTRING                    dst=v[0x017], values=[0]
09B0  9A 00 B1 B7 09                         STRCMP_NE_JMP                 start=v[0x000], values=[1], target=0x09B7
09B5  9F 17                                  INC                           var=v[0x017]
09B7  9A 01 B1 BE 09                         STRCMP_NE_JMP                 start=v[0x001], values=[1], target=0x09BE
09BC  9F 17                                  INC                           var=v[0x017]
09BE  9A 02 B1 C5 09                         STRCMP_NE_JMP                 start=v[0x002], values=[1], target=0x09C5
09C3  9F 17                                  INC                           var=v[0x017]
09C5  9A 03 B1 CC 09                         STRCMP_NE_JMP                 start=v[0x003], values=[1], target=0x09CC
09CA  9F 17                                  INC                           var=v[0x017]
09CC  9A 04 B1 D3 09                         STRCMP_NE_JMP                 start=v[0x004], values=[1], target=0x09D3
09D1  9F 17                                  INC                           var=v[0x017]
09D3  9A 05 B1 DA 09                         STRCMP_NE_JMP                 start=v[0x005], values=[1], target=0x09DA
09D8  9F 17                                  INC                           var=v[0x017]
09DA  9A 06 B1 E1 09                         STRCMP_NE_JMP                 start=v[0x006], values=[1], target=0x09E1
09DF  9F 17                                  INC                           var=v[0x017]
09E1  9A 07 B1 E8 09                         STRCMP_NE_JMP                 start=v[0x007], values=[1], target=0x09E8
09E6  9F 17                                  INC                           var=v[0x017]
09E8  9A 08 B1 EF 09                         STRCMP_NE_JMP                 start=v[0x008], values=[1], target=0x09EF
09ED  9F 17                                  INC                           var=v[0x017]
09EF  9A 09 B1 F6 09                         STRCMP_NE_JMP                 start=v[0x009], values=[1], target=0x09F6
09F4  9F 17                                  INC                           var=v[0x017]
09F6  9A 17 B1 01 0A                         STRCMP_NE_JMP                 start=v[0x017], values=[1], target=0x0A01
09FB  15 49 01                               JMP                           target=0x0149
09FE  15 04 0A                               JMP                           target=0x0A04
0A01  15 55 00                               JMP                           target=0x0055
0A04  07                                     VIDEOFLAG7_ON
0A05  96 18 E1                               LOADSTRING                    dst=v[0x018], values=[49]
0A08  9A 19 B0 13 0A                         STRCMP_NE_JMP                 start=v[0x019], values=[0], target=0x0A13
0A0D  96 19 E1                               LOADSTRING                    dst=v[0x019], values=[49]
0A10  15 24 0A                               JMP                           target=0x0A24
0A13  9A 19 E4 1E 0A                         STRCMP_NE_JMP                 start=v[0x019], values=[52], target=0x0A1E
0A18  96 18 E2                               LOADSTRING                    dst=v[0x018], values=[50]
0A1B  15 21 0A                               JMP                           target=0x0A21
0A1E  96 18 EA                               LOADSTRING                    dst=v[0x018], values=[58]
0A21  96 19 B0                               LOADSTRING                    dst=v[0x019], values=[0]
0A24  9A 00 B0 2F 0A                         STRCMP_NE_JMP                 start=v[0x000], values=[0], target=0x0A2F
0A29  09 B0 14                               VIDEOREF                      ref=0x14B0 (FH[176]=h_p2ab.vdx)
0A2C  15 35 0A                               JMP                           target=0x0A35
0A2F  1C A1 14                               VIDEO_TRANSITION_REF          ref=0x14A1 (FH[161]=h_mask_a.vdx)
0A32  09 B1 14                               VIDEOREF                      ref=0x14B1 (FH[177]=h_p2af.vdx)
0A35  9B 00 B1                               XOR_OBFUSCATE                 start=v[0x000], xor=[0x01]
0A38  22                                     COPY_BG_TO_FG
0A39  15 55 00                               JMP                           target=0x0055
0A3C  07                                     VIDEOFLAG7_ON
0A3D  96 18 E2                               LOADSTRING                    dst=v[0x018], values=[50]
0A40  9A 19 B0 4B 0A                         STRCMP_NE_JMP                 start=v[0x019], values=[0], target=0x0A4B
0A45  96 19 E2                               LOADSTRING                    dst=v[0x019], values=[50]
0A48  15 5C 0A                               JMP                           target=0x0A5C
0A4B  9A 19 E5 56 0A                         STRCMP_NE_JMP                 start=v[0x019], values=[53], target=0x0A56
0A50  96 18 E4                               LOADSTRING                    dst=v[0x018], values=[52]
0A53  15 59 0A                               JMP                           target=0x0A59
0A56  96 18 EA                               LOADSTRING                    dst=v[0x018], values=[58]
0A59  96 19 B0                               LOADSTRING                    dst=v[0x019], values=[0]
0A5C  9A 01 B0 67 0A                         STRCMP_NE_JMP                 start=v[0x001], values=[0], target=0x0A67
0A61  09 B2 14                               VIDEOREF                      ref=0x14B2 (FH[178]=h_p2bb.vdx)
0A64  15 6D 0A                               JMP                           target=0x0A6D
0A67  1C A2 14                               VIDEO_TRANSITION_REF          ref=0x14A2 (FH[162]=h_mask_b.vdx)
0A6A  09 B3 14                               VIDEOREF                      ref=0x14B3 (FH[179]=h_p2bf.vdx)
0A6D  9B 01 B1                               XOR_OBFUSCATE                 start=v[0x001], xor=[0x01]
0A70  22                                     COPY_BG_TO_FG
0A71  15 55 00                               JMP                           target=0x0055
0A74  07                                     VIDEOFLAG7_ON
0A75  96 18 E3                               LOADSTRING                    dst=v[0x018], values=[51]
0A78  9A 19 B0 83 0A                         STRCMP_NE_JMP                 start=v[0x019], values=[0], target=0x0A83
0A7D  96 19 E3                               LOADSTRING                    dst=v[0x019], values=[51]
0A80  15 94 0A                               JMP                           target=0x0A94
0A83  9A 19 EA 8E 0A                         STRCMP_NE_JMP                 start=v[0x019], values=[58], target=0x0A8E
0A88  96 18 E2                               LOADSTRING                    dst=v[0x018], values=[50]
0A8B  15 91 0A                               JMP                           target=0x0A91
0A8E  96 18 E4                               LOADSTRING                    dst=v[0x018], values=[52]
0A91  96 19 B0                               LOADSTRING                    dst=v[0x019], values=[0]
0A94  9A 02 B0 9F 0A                         STRCMP_NE_JMP                 start=v[0x002], values=[0], target=0x0A9F
0A99  09 B4 14                               VIDEOREF                      ref=0x14B4 (FH[180]=h_p2cb.vdx)
0A9C  15 A5 0A                               JMP                           target=0x0AA5
0A9F  1C A3 14                               VIDEO_TRANSITION_REF          ref=0x14A3 (FH[163]=h_mask_c.vdx)
0AA2  09 B5 14                               VIDEOREF                      ref=0x14B5 (FH[181]=h_p2cf.vdx)
0AA5  9B 02 B1                               XOR_OBFUSCATE                 start=v[0x002], xor=[0x01]
0AA8  22                                     COPY_BG_TO_FG
0AA9  15 55 00                               JMP                           target=0x0055
0AAC  07                                     VIDEOFLAG7_ON
0AAD  96 18 E4                               LOADSTRING                    dst=v[0x018], values=[52]
0AB0  9A 19 B0 BB 0A                         STRCMP_NE_JMP                 start=v[0x019], values=[0], target=0x0ABB
0AB5  96 19 E4                               LOADSTRING                    dst=v[0x019], values=[52]
0AB8  15 CC 0A                               JMP                           target=0x0ACC
0ABB  9A 19 E1 C6 0A                         STRCMP_NE_JMP                 start=v[0x019], values=[49], target=0x0AC6
0AC0  96 18 E2                               LOADSTRING                    dst=v[0x018], values=[50]
0AC3  15 C9 0A                               JMP                           target=0x0AC9
0AC6  96 18 E6                               LOADSTRING                    dst=v[0x018], values=[54]
0AC9  96 19 B0                               LOADSTRING                    dst=v[0x019], values=[0]
0ACC  9A 03 B0 D7 0A                         STRCMP_NE_JMP                 start=v[0x003], values=[0], target=0x0AD7
0AD1  09 B6 14                               VIDEOREF                      ref=0x14B6 (FH[182]=h_p2db.vdx)
0AD4  15 DD 0A                               JMP                           target=0x0ADD
0AD7  1C A4 14                               VIDEO_TRANSITION_REF          ref=0x14A4 (FH[164]=h_mask_d.vdx)
0ADA  09 B7 14                               VIDEOREF                      ref=0x14B7 (FH[183]=h_p2df.vdx)
0ADD  9B 03 B1                               XOR_OBFUSCATE                 start=v[0x003], xor=[0x01]
0AE0  22                                     COPY_BG_TO_FG
0AE1  15 55 00                               JMP                           target=0x0055
0AE4  07                                     VIDEOFLAG7_ON
0AE5  96 18 E5                               LOADSTRING                    dst=v[0x018], values=[53]
0AE8  9A 19 B0 F3 0A                         STRCMP_NE_JMP                 start=v[0x019], values=[0], target=0x0AF3
0AED  96 19 E5                               LOADSTRING                    dst=v[0x019], values=[53]
0AF0  15 04 0B                               JMP                           target=0x0B04
0AF3  9A 19 E2 FE 0A                         STRCMP_NE_JMP                 start=v[0x019], values=[50], target=0x0AFE
0AF8  96 18 E4                               LOADSTRING                    dst=v[0x018], values=[52]
0AFB  15 01 0B                               JMP                           target=0x0B01
0AFE  96 18 E6                               LOADSTRING                    dst=v[0x018], values=[54]
0B01  96 19 B0                               LOADSTRING                    dst=v[0x019], values=[0]
0B04  9A 04 B0 0F 0B                         STRCMP_NE_JMP                 start=v[0x004], values=[0], target=0x0B0F
0B09  09 B8 14                               VIDEOREF                      ref=0x14B8 (FH[184]=h_p2eb.vdx)
0B0C  15 15 0B                               JMP                           target=0x0B15
0B0F  1C A5 14                               VIDEO_TRANSITION_REF          ref=0x14A5 (FH[165]=h_mask_e.vdx)
0B12  09 B9 14                               VIDEOREF                      ref=0x14B9 (FH[185]=h_p2ef.vdx)
0B15  9B 04 B1                               XOR_OBFUSCATE                 start=v[0x004], xor=[0x01]
0B18  22                                     COPY_BG_TO_FG
0B19  15 55 00                               JMP                           target=0x0055
0B1C  07                                     VIDEOFLAG7_ON
0B1D  96 18 E6                               LOADSTRING                    dst=v[0x018], values=[54]
0B20  9A 19 B0 2B 0B                         STRCMP_NE_JMP                 start=v[0x019], values=[0], target=0x0B2B
0B25  96 19 E6                               LOADSTRING                    dst=v[0x019], values=[54]
0B28  15 3C 0B                               JMP                           target=0x0B3C
0B2B  9A 19 E3 36 0B                         STRCMP_NE_JMP                 start=v[0x019], values=[51], target=0x0B36
0B30  96 18 E4                               LOADSTRING                    dst=v[0x018], values=[52]
0B33  15 39 0B                               JMP                           target=0x0B39
0B36  96 18 E8                               LOADSTRING                    dst=v[0x018], values=[56]
0B39  96 19 B0                               LOADSTRING                    dst=v[0x019], values=[0]
0B3C  9A 05 B0 47 0B                         STRCMP_NE_JMP                 start=v[0x005], values=[0], target=0x0B47
0B41  09 BA 14                               VIDEOREF                      ref=0x14BA (FH[186]=h_p2fb.vdx)
0B44  15 4D 0B                               JMP                           target=0x0B4D
0B47  1C A6 14                               VIDEO_TRANSITION_REF          ref=0x14A6 (FH[166]=h_mask_f.vdx)
0B4A  09 BB 14                               VIDEOREF                      ref=0x14BB (FH[187]=h_p2ff.vdx)
0B4D  9B 05 B1                               XOR_OBFUSCATE                 start=v[0x005], xor=[0x01]
0B50  22                                     COPY_BG_TO_FG
0B51  15 55 00                               JMP                           target=0x0055
0B54  07                                     VIDEOFLAG7_ON
0B55  96 18 E7                               LOADSTRING                    dst=v[0x018], values=[55]
0B58  9A 19 B0 63 0B                         STRCMP_NE_JMP                 start=v[0x019], values=[0], target=0x0B63
0B5D  96 19 E7                               LOADSTRING                    dst=v[0x019], values=[55]
0B60  15 74 0B                               JMP                           target=0x0B74
0B63  9A 19 E4 6E 0B                         STRCMP_NE_JMP                 start=v[0x019], values=[52], target=0x0B6E
0B68  96 18 E6                               LOADSTRING                    dst=v[0x018], values=[54]
0B6B  15 71 0B                               JMP                           target=0x0B71
0B6E  96 18 E8                               LOADSTRING                    dst=v[0x018], values=[56]
0B71  96 19 B0                               LOADSTRING                    dst=v[0x019], values=[0]
0B74  9A 06 B0 7F 0B                         STRCMP_NE_JMP                 start=v[0x006], values=[0], target=0x0B7F
0B79  09 BC 14                               VIDEOREF                      ref=0x14BC (FH[188]=h_p2gb.vdx)
0B7C  15 85 0B                               JMP                           target=0x0B85
0B7F  1C A7 14                               VIDEO_TRANSITION_REF          ref=0x14A7 (FH[167]=h_mask_g.vdx)
0B82  09 BD 14                               VIDEOREF                      ref=0x14BD (FH[189]=h_p2gf.vdx)
0B85  9B 06 B1                               XOR_OBFUSCATE                 start=v[0x006], xor=[0x01]
0B88  22                                     COPY_BG_TO_FG
0B89  15 55 00                               JMP                           target=0x0055
0B8C  07                                     VIDEOFLAG7_ON
0B8D  96 18 E8                               LOADSTRING                    dst=v[0x018], values=[56]
0B90  9A 19 B0 9B 0B                         STRCMP_NE_JMP                 start=v[0x019], values=[0], target=0x0B9B
0B95  96 19 E8                               LOADSTRING                    dst=v[0x019], values=[56]
0B98  15 AC 0B                               JMP                           target=0x0BAC
0B9B  9A 19 E5 A6 0B                         STRCMP_NE_JMP                 start=v[0x019], values=[53], target=0x0BA6
0BA0  96 18 E6                               LOADSTRING                    dst=v[0x018], values=[54]
0BA3  15 A9 0B                               JMP                           target=0x0BA9
0BA6  96 18 EA                               LOADSTRING                    dst=v[0x018], values=[58]
0BA9  96 19 B0                               LOADSTRING                    dst=v[0x019], values=[0]
0BAC  9A 07 B0 B7 0B                         STRCMP_NE_JMP                 start=v[0x007], values=[0], target=0x0BB7
0BB1  09 BE 14                               VIDEOREF                      ref=0x14BE (FH[190]=h_p2hb.vdx)
0BB4  15 BD 0B                               JMP                           target=0x0BBD
0BB7  1C A8 14                               VIDEO_TRANSITION_REF          ref=0x14A8 (FH[168]=h_mask_h.vdx)
0BBA  09 BF 14                               VIDEOREF                      ref=0x14BF (FH[191]=h_p2hf.vdx)
0BBD  9B 07 B1                               XOR_OBFUSCATE                 start=v[0x007], xor=[0x01]
0BC0  22                                     COPY_BG_TO_FG
0BC1  15 55 00                               JMP                           target=0x0055
0BC4  07                                     VIDEOFLAG7_ON
0BC5  96 18 E9                               LOADSTRING                    dst=v[0x018], values=[57]
0BC8  9A 19 B0 D3 0B                         STRCMP_NE_JMP                 start=v[0x019], values=[0], target=0x0BD3
0BCD  96 19 E9                               LOADSTRING                    dst=v[0x019], values=[57]
0BD0  15 E4 0B                               JMP                           target=0x0BE4
0BD3  9A 19 E6 DE 0B                         STRCMP_NE_JMP                 start=v[0x019], values=[54], target=0x0BDE
0BD8  96 18 E8                               LOADSTRING                    dst=v[0x018], values=[56]
0BDB  15 E1 0B                               JMP                           target=0x0BE1
0BDE  96 18 EA                               LOADSTRING                    dst=v[0x018], values=[58]
0BE1  96 19 B0                               LOADSTRING                    dst=v[0x019], values=[0]
0BE4  9A 08 B0 EF 0B                         STRCMP_NE_JMP                 start=v[0x008], values=[0], target=0x0BEF
0BE9  09 C0 14                               VIDEOREF                      ref=0x14C0 (FH[192]=h_p2ib.vdx)
0BEC  15 F5 0B                               JMP                           target=0x0BF5
0BEF  1C A9 14                               VIDEO_TRANSITION_REF          ref=0x14A9 (FH[169]=h_mask_i.vdx)
0BF2  09 C1 14                               VIDEOREF                      ref=0x14C1 (FH[193]=h_p2if.vdx)
0BF5  9B 08 B1                               XOR_OBFUSCATE                 start=v[0x008], xor=[0x01]
0BF8  22                                     COPY_BG_TO_FG
0BF9  15 55 00                               JMP                           target=0x0055
0BFC  07                                     VIDEOFLAG7_ON
0BFD  96 18 EA                               LOADSTRING                    dst=v[0x018], values=[58]
0C00  9A 19 B0 0B 0C                         STRCMP_NE_JMP                 start=v[0x019], values=[0], target=0x0C0B
0C05  96 19 EA                               LOADSTRING                    dst=v[0x019], values=[58]
0C08  15 1C 0C                               JMP                           target=0x0C1C
0C0B  9A 19 E7 16 0C                         STRCMP_NE_JMP                 start=v[0x019], values=[55], target=0x0C16
0C10  96 18 E8                               LOADSTRING                    dst=v[0x018], values=[56]
0C13  15 19 0C                               JMP                           target=0x0C19
0C16  96 18 E2                               LOADSTRING                    dst=v[0x018], values=[50]
0C19  96 19 B0                               LOADSTRING                    dst=v[0x019], values=[0]
0C1C  9A 09 B0 27 0C                         STRCMP_NE_JMP                 start=v[0x009], values=[0], target=0x0C27
0C21  09 C2 14                               VIDEOREF                      ref=0x14C2 (FH[194]=h_p2jb.vdx)
0C24  15 2D 0C                               JMP                           target=0x0C2D
0C27  1C AA 14                               VIDEO_TRANSITION_REF          ref=0x14AA (FH[170]=h_mask_j.vdx)
0C2A  09 C3 14                               VIDEOREF                      ref=0x14C3 (FH[195]=h_p2jf.vdx)
0C2D  9B 09 B1                               XOR_OBFUSCATE                 start=v[0x009], xor=[0x01]
0C30  22                                     COPY_BG_TO_FG
0C31  15 55 00                               JMP                           target=0x0055
0C34  0A                                     VIDEOFLAG5_ON
0C35  07                                     VIDEOFLAG7_ON
0C36  09 01 24                               VIDEOREF                      ref=0x2401 (INTRO[1]=fade.vdx)
0C39  37 00 00 50 00 7F 02 8F 01             COPY_RECT_TO_BG               left=0x0000, top=0x0050, right=0x027F, bottom=0x018F
0C42  17 00                                  RET                           value=0x00
