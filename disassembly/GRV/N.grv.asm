; T7G/N.GRV
; size=842 sha256=b8136f852c7ccbf7dd5ff93b75ab556f46c45f290faea4a3b70fccc93b1fe998
; instructions=210 input_loops=1

0000  16 03 01 B0                            LOADSTRING                    dst=v[0x103], values=[0]
0004  16 07 01 B0                            LOADSTRING                    dst=v[0x107], values=[0]
0008  44 7B 01                               SET_HOTSPOT_RIGHT             target=0x017B
000B  45 7B 01                               SET_HOTSPOT_LEFT              target=0x017B
000E  2C 27 03 08                            SET_HOTSPOT_TOP               target=0x0327, cursor=0x08
0012  2D 3B 03 06                            SET_HOTSPOT_BOTTOM            target=0x033B, cursor=0x06
0016  46                                     RESOURCE_CONTEXT_SAVE
0017  9A F7 B4 24 00                         STRCMP_NE_JMP                 start=v[0x0F7], values=[4], target=0x0024
001C  07                                     VIDEOFLAG7_ON
001D  0A                                     VIDEOFLAG5_ON
001E  09 9D 50                               VIDEOREF                      ref=0x509D (GAMWAV[157]=gen_s_6.vdx)
0021  96 F7 B5                               LOADSTRING                    dst=v[0x0F7], values=[5]
0024  9A F7 B2 31 00                         STRCMP_NE_JMP                 start=v[0x0F7], values=[2], target=0x0031
0029  07                                     VIDEOFLAG7_ON
002A  0A                                     VIDEOFLAG5_ON
002B  09 30 50                               VIDEOREF                      ref=0x5030 (GAMWAV[48]=8_s_4.vdx)
002E  96 F7 B3                               LOADSTRING                    dst=v[0x0F7], values=[3]
0031  9A F7 B0 3E 00                         STRCMP_NE_JMP                 start=v[0x0F7], values=[0], target=0x003E
0036  07                                     VIDEOFLAG7_ON
0037  0A                                     VIDEOFLAG5_ON
0038  09 13 50                               VIDEOREF                      ref=0x5013 (GAMWAV[19]=4_s_1.vdx)
003B  96 F7 B1                               LOADSTRING                    dst=v[0x0F7], values=[1]
003E  47                                     RESOURCE_CONTEXT_RESTORE
003F  28 12 44                               RESERVED_28                   value=0x4412
0042  96 00 64 61 74 79 6F 62 74 65 E7       LOADSTRING                    dst=v[0x000], values=[52, 49, 68, 73, 63, 50, 68, 53, 55]
004D  05                                     FIRSTFRAME_NEXT_VIDEO
004E  09 12 44                               VIDEOREF                      ref=0x4412 (N[18]=npuzb.vdx)
0051  22                                     COPY_BG_TO_FG
0052  9A 00 67 65 74 62 6F 79 74 61 E4 62 00 STRCMP_NE_JMP                 start=v[0x000], values=[55, 53, 68, 50, 63, 73, 68, 49, 52], target=0x0062
005F  15 6C 01                               JMP                           target=0x016C
0062  9A 00 67 62 74 65 6F 61 74 79 E4 72 00 STRCMP_NE_JMP                 start=v[0x000], values=[55, 50, 68, 53, 63, 49, 68, 73, 52], target=0x0072
006F  15 6C 01                               JMP                           target=0x016C
0072  36 03 01 F9 8C 00                      CHAR_LESS_JMP                 start=v[0x103], values=[73], target=0x008C
0078  1A 07 01 B3 8C 00                      STRCMP_NE_JMP                 start=v[0x107], values=[3], target=0x008C
007E  16 03 01 B0                            LOADSTRING                    dst=v[0x103], values=[0]
0082  16 07 01 B4                            LOADSTRING                    dst=v[0x107], values=[4]
0086  46                                     RESOURCE_CONTEXT_SAVE
0087  07                                     VIDEOFLAG7_ON
0088  09 49 50                               VIDEOREF                      ref=0x5049 (GAMWAV[73]=11_s_5.vdx)
008B  47                                     RESOURCE_CONTEXT_RESTORE
008C  36 03 01 E7 A6 00                      CHAR_LESS_JMP                 start=v[0x103], values=[55], target=0x00A6
0092  1A 07 01 B2 A6 00                      STRCMP_NE_JMP                 start=v[0x107], values=[2], target=0x00A6
0098  16 03 01 B0                            LOADSTRING                    dst=v[0x103], values=[0]
009C  16 07 01 B3                            LOADSTRING                    dst=v[0x107], values=[3]
00A0  46                                     RESOURCE_CONTEXT_SAVE
00A1  07                                     VIDEOFLAG7_ON
00A2  09 10 50                               VIDEOREF                      ref=0x5010 (GAMWAV[16]=4_e_3.vdx)
00A5  47                                     RESOURCE_CONTEXT_RESTORE
00A6  36 03 01 B6 C0 00                      CHAR_LESS_JMP                 start=v[0x103], values=[6], target=0x00C0
00AC  1A 07 01 B1 C0 00                      STRCMP_NE_JMP                 start=v[0x107], values=[1], target=0x00C0
00B2  16 03 01 B0                            LOADSTRING                    dst=v[0x103], values=[0]
00B6  16 07 01 B2                            LOADSTRING                    dst=v[0x107], values=[2]
00BA  46                                     RESOURCE_CONTEXT_SAVE
00BB  07                                     VIDEOFLAG7_ON
00BC  09 11 50                               VIDEOREF                      ref=0x5011 (GAMWAV[17]=4_e_4.vdx)
00BF  47                                     RESOURCE_CONTEXT_RESTORE
00C0  36 03 01 B9 DA 00                      CHAR_LESS_JMP                 start=v[0x103], values=[9], target=0x00DA
00C6  1A 07 01 B0 DA 00                      STRCMP_NE_JMP                 start=v[0x107], values=[0], target=0x00DA
00CC  16 03 01 B0                            LOADSTRING                    dst=v[0x103], values=[0]
00D0  16 07 01 B1                            LOADSTRING                    dst=v[0x107], values=[1]
00D4  46                                     RESOURCE_CONTEXT_SAVE
00D5  07                                     VIDEOFLAG7_ON
00D6  09 0F 50                               VIDEOREF                      ref=0x500F (GAMWAV[15]=4_e_2.vdx)
00D9  47                                     RESOURCE_CONTEXT_RESTORE
00DA  0B                                     INPUTLOOPSTART
00DB  0D B0 00 53 00 03 01 67 00 83 01 09    HOTSPOT_RECT                  left=0x00B0, top=0x0053, right=0x0103, bottom=0x0067, target=0x0183, cursor=0x09
00E7  0D 16 01 53 00 68 01 82 00 A6 01 0A    HOTSPOT_RECT                  left=0x0116, top=0x0053, right=0x0168, bottom=0x0082, target=0x01A6, cursor=0x0A
00F3  0D 7A 01 53 00 CC 01 72 00 C9 01 09    HOTSPOT_RECT                  left=0x017A, top=0x0053, right=0x01CC, bottom=0x0072, target=0x01C9, cursor=0x09
00FF  0D 8C 00 64 00 B5 00 AE 00 EC 01 0A    HOTSPOT_RECT                  left=0x008C, top=0x0064, right=0x00B5, bottom=0x00AE, target=0x01EC, cursor=0x0A
010B  0D C7 01 66 00 F0 01 AD 00 0F 02 09    HOTSPOT_RECT                  left=0x01C7, top=0x0066, right=0x01F0, bottom=0x00AD, target=0x020F, cursor=0x09
0117  0D 83 00 C0 00 AF 00 14 01 32 02 0A    HOTSPOT_RECT                  left=0x0083, top=0x00C0, right=0x00AF, bottom=0x0114, target=0x0232, cursor=0x0A
0123  0D CF 01 C2 00 01 02 13 01 55 02 09    HOTSPOT_RECT                  left=0x01CF, top=0x00C2, right=0x0201, bottom=0x0113, target=0x0255, cursor=0x09
012F  0D 7D 00 28 01 AB 00 7D 01 78 02 0A    HOTSPOT_RECT                  left=0x007D, top=0x0128, right=0x00AB, bottom=0x017D, target=0x0278, cursor=0x0A
013B  0D D6 01 28 01 0B 02 80 01 9B 02 09    HOTSPOT_RECT                  left=0x01D6, top=0x0128, right=0x020B, bottom=0x0180, target=0x029B, cursor=0x09
0147  0D A9 00 76 01 F4 00 92 01 BE 02 0A    HOTSPOT_RECT                  left=0x00A9, top=0x0176, right=0x00F4, bottom=0x0192, target=0x02BE, cursor=0x0A
0153  0D 14 01 6F 01 68 01 93 01 E1 02 09    HOTSPOT_RECT                  left=0x0114, top=0x016F, right=0x0168, bottom=0x0193, target=0x02E1, cursor=0x09
015F  0D 83 01 6D 01 D8 01 92 01 04 03 0A    HOTSPOT_RECT                  left=0x0183, top=0x016D, right=0x01D8, bottom=0x0192, target=0x0304, cursor=0x0A
016B  13                                     INPUTLOOPEND
016C  1C 12 44                               VIDEO_TRANSITION_REF          ref=0x4412 (N[18]=npuzb.vdx)
016F  18 29 03                               CALL                          target=0x0329
0172  07                                     VIDEOFLAG7_ON
0173  09 88 50                               VIDEOREF                      ref=0x5088 (GAMWAV[136]=gen_e_2.vdx)
0176  96 F7 E1                               LOADSTRING                    dst=v[0x0F7], values=[49]
0179  43 00                                  RETURNSCRIPT                  value=0x00
017B  1C 12 44                               VIDEO_TRANSITION_REF          ref=0x4412 (N[18]=npuzb.vdx)
017E  18 29 03                               CALL                          target=0x0329
0181  43 00                                  RETURNSCRIPT                  value=0x00
0183  07                                     VIDEOFLAG7_ON
0184  26 61 23 61 23 64 00                   VIDEO_NAME                    name="a{v000}{v003}"
018B  07                                     VIDEOFLAG7_ON
018C  26 64 23 64 23 67 00                   VIDEO_NAME                    name="d{v003}{v006}"
0193  07                                     VIDEOFLAG7_ON
0194  26 67 23 67 23 61 00                   VIDEO_NAME                    name="g{v006}{v000}"
019B  9D 00 03 00                            SWAP                          dst=v[0x000], src=0x0003
019F  9D 03 06 00                            SWAP                          dst=v[0x003], src=0x0006
01A3  15 52 00                               JMP                           target=0x0052
01A6  07                                     VIDEOFLAG7_ON
01A7  26 62 23 62 23 65 00                   VIDEO_NAME                    name="b{v001}{v004}"
01AE  07                                     VIDEOFLAG7_ON
01AF  26 65 23 65 23 68 00                   VIDEO_NAME                    name="e{v004}{v007}"
01B6  07                                     VIDEOFLAG7_ON
01B7  26 68 23 68 23 62 00                   VIDEO_NAME                    name="h{v007}{v001}"
01BE  9D 01 04 00                            SWAP                          dst=v[0x001], src=0x0004
01C2  9D 04 07 00                            SWAP                          dst=v[0x004], src=0x0007
01C6  15 52 00                               JMP                           target=0x0052
01C9  07                                     VIDEOFLAG7_ON
01CA  26 63 23 63 23 66 00                   VIDEO_NAME                    name="c{v002}{v005}"
01D1  07                                     VIDEOFLAG7_ON
01D2  26 66 23 66 23 69 00                   VIDEO_NAME                    name="f{v005}{v008}"
01D9  07                                     VIDEOFLAG7_ON
01DA  26 69 23 69 23 63 00                   VIDEO_NAME                    name="i{v008}{v002}"
01E1  9D 02 05 00                            SWAP                          dst=v[0x002], src=0x0005
01E5  9D 05 08 00                            SWAP                          dst=v[0x005], src=0x0008
01E9  15 52 00                               JMP                           target=0x0052
01EC  07                                     VIDEOFLAG7_ON
01ED  26 61 23 61 23 62 00                   VIDEO_NAME                    name="a{v000}{v001}"
01F4  07                                     VIDEOFLAG7_ON
01F5  26 62 23 62 23 63 00                   VIDEO_NAME                    name="b{v001}{v002}"
01FC  07                                     VIDEOFLAG7_ON
01FD  26 63 23 63 23 61 00                   VIDEO_NAME                    name="c{v002}{v000}"
0204  9D 00 01 00                            SWAP                          dst=v[0x000], src=0x0001
0208  9D 01 02 00                            SWAP                          dst=v[0x001], src=0x0002
020C  15 52 00                               JMP                           target=0x0052
020F  07                                     VIDEOFLAG7_ON
0210  26 63 23 63 23 62 00                   VIDEO_NAME                    name="c{v002}{v001}"
0217  07                                     VIDEOFLAG7_ON
0218  26 62 23 62 23 61 00                   VIDEO_NAME                    name="b{v001}{v000}"
021F  07                                     VIDEOFLAG7_ON
0220  26 61 23 61 23 63 00                   VIDEO_NAME                    name="a{v000}{v002}"
0227  9D 02 01 00                            SWAP                          dst=v[0x002], src=0x0001
022B  9D 01 00 00                            SWAP                          dst=v[0x001], src=0x0000
022F  15 52 00                               JMP                           target=0x0052
0232  07                                     VIDEOFLAG7_ON
0233  26 64 23 64 23 65 00                   VIDEO_NAME                    name="d{v003}{v004}"
023A  07                                     VIDEOFLAG7_ON
023B  26 65 23 65 23 66 00                   VIDEO_NAME                    name="e{v004}{v005}"
0242  07                                     VIDEOFLAG7_ON
0243  26 66 23 66 23 64 00                   VIDEO_NAME                    name="f{v005}{v003}"
024A  9D 03 04 00                            SWAP                          dst=v[0x003], src=0x0004
024E  9D 04 05 00                            SWAP                          dst=v[0x004], src=0x0005
0252  15 52 00                               JMP                           target=0x0052
0255  07                                     VIDEOFLAG7_ON
0256  26 66 23 66 23 65 00                   VIDEO_NAME                    name="f{v005}{v004}"
025D  07                                     VIDEOFLAG7_ON
025E  26 65 23 65 23 64 00                   VIDEO_NAME                    name="e{v004}{v003}"
0265  07                                     VIDEOFLAG7_ON
0266  26 64 23 64 23 66 00                   VIDEO_NAME                    name="d{v003}{v005}"
026D  9D 05 04 00                            SWAP                          dst=v[0x005], src=0x0004
0271  9D 04 03 00                            SWAP                          dst=v[0x004], src=0x0003
0275  15 52 00                               JMP                           target=0x0052
0278  07                                     VIDEOFLAG7_ON
0279  26 67 23 67 23 68 00                   VIDEO_NAME                    name="g{v006}{v007}"
0280  07                                     VIDEOFLAG7_ON
0281  26 68 23 68 23 69 00                   VIDEO_NAME                    name="h{v007}{v008}"
0288  07                                     VIDEOFLAG7_ON
0289  26 69 23 69 23 67 00                   VIDEO_NAME                    name="i{v008}{v006}"
0290  9D 06 07 00                            SWAP                          dst=v[0x006], src=0x0007
0294  9D 07 08 00                            SWAP                          dst=v[0x007], src=0x0008
0298  15 52 00                               JMP                           target=0x0052
029B  07                                     VIDEOFLAG7_ON
029C  26 69 23 69 23 68 00                   VIDEO_NAME                    name="i{v008}{v007}"
02A3  07                                     VIDEOFLAG7_ON
02A4  26 68 23 68 23 67 00                   VIDEO_NAME                    name="h{v007}{v006}"
02AB  07                                     VIDEOFLAG7_ON
02AC  26 67 23 67 23 69 00                   VIDEO_NAME                    name="g{v006}{v008}"
02B3  9D 08 07 00                            SWAP                          dst=v[0x008], src=0x0007
02B7  9D 07 06 00                            SWAP                          dst=v[0x007], src=0x0006
02BB  15 52 00                               JMP                           target=0x0052
02BE  07                                     VIDEOFLAG7_ON
02BF  26 67 23 67 23 64 00                   VIDEO_NAME                    name="g{v006}{v003}"
02C6  07                                     VIDEOFLAG7_ON
02C7  26 64 23 64 23 61 00                   VIDEO_NAME                    name="d{v003}{v000}"
02CE  07                                     VIDEOFLAG7_ON
02CF  26 61 23 61 23 67 00                   VIDEO_NAME                    name="a{v000}{v006}"
02D6  9D 06 03 00                            SWAP                          dst=v[0x006], src=0x0003
02DA  9D 03 00 00                            SWAP                          dst=v[0x003], src=0x0000
02DE  15 52 00                               JMP                           target=0x0052
02E1  07                                     VIDEOFLAG7_ON
02E2  26 68 23 68 23 65 00                   VIDEO_NAME                    name="h{v007}{v004}"
02E9  07                                     VIDEOFLAG7_ON
02EA  26 65 23 65 23 62 00                   VIDEO_NAME                    name="e{v004}{v001}"
02F1  07                                     VIDEOFLAG7_ON
02F2  26 62 23 62 23 68 00                   VIDEO_NAME                    name="b{v001}{v007}"
02F9  9D 07 04 00                            SWAP                          dst=v[0x007], src=0x0004
02FD  9D 04 01 00                            SWAP                          dst=v[0x004], src=0x0001
0301  15 52 00                               JMP                           target=0x0052
0304  07                                     VIDEOFLAG7_ON
0305  26 69 23 69 23 66 00                   VIDEO_NAME                    name="i{v008}{v005}"
030C  07                                     VIDEOFLAG7_ON
030D  26 66 23 66 23 63 00                   VIDEO_NAME                    name="f{v005}{v002}"
0314  07                                     VIDEOFLAG7_ON
0315  26 63 23 63 23 69 00                   VIDEO_NAME                    name="c{v002}{v008}"
031C  9D 08 05 00                            SWAP                          dst=v[0x008], src=0x0005
0320  9D 05 02 00                            SWAP                          dst=v[0x005], src=0x0002
0324  15 52 00                               JMP                           target=0x0052
0327  43 01                                  RETURNSCRIPT                  value=0x01
0329  0A                                     VIDEOFLAG5_ON
032A  07                                     VIDEOFLAG7_ON
032B  46                                     RESOURCE_CONTEXT_SAVE
032C  09 01 24                               VIDEOREF                      ref=0x2401 (INTRO[1]=fade.vdx)
032F  37 00 00 50 00 7F 02 8F 01             COPY_RECT_TO_BG               left=0x0000, top=0x0050, right=0x027F, bottom=0x018F
0338  47                                     RESOURCE_CONTEXT_RESTORE
0339  17 00                                  RET                           value=0x00
033B  07                                     VIDEOFLAG7_ON
033C  46                                     RESOURCE_CONTEXT_SAVE
033D  09 8B 50                               VIDEOREF                      ref=0x508B (GAMWAV[139]=gen_e_5.vdx)
0340  47                                     RESOURCE_CONTEXT_RESTORE
0341  1C 12 44                               VIDEO_TRANSITION_REF          ref=0x4412 (N[18]=npuzb.vdx)
0344  18 29 03                               CALL                          target=0x0329
0347  15 00 00                               JMP                           target=0x0000
