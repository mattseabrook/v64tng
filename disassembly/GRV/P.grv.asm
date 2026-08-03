; T7G/P.GRV
; size=1125 sha256=e47745d48ba47eda49b2b6f2e0f506c5b709345a4cc6b5aeae3e17f9e58ab293
; instructions=327 input_loops=1

0000  16 03 01 B0                            LOADSTRING                    dst=v[0x103], values=[0]
0004  16 07 01 B0                            LOADSTRING                    dst=v[0x107], values=[0]
0008  96 92 31 B7                            LOADSTRING                    dst=v[0x092], values=[1, 7]
000C  9A ED E1 11 00                         STRCMP_NE_JMP                 start=v[0x0ED], values=[49], target=0x0011
0011  46                                     RESOURCE_CONTEXT_SAVE
0012  9A ED B4 1F 00                         STRCMP_NE_JMP                 start=v[0x0ED], values=[4], target=0x001F
0017  0A                                     VIDEOFLAG5_ON
0018  07                                     VIDEOFLAG7_ON
0019  09 AA 50                               VIDEOREF                      ref=0x50AA (GAMWAV[170]=gen_s_19.vdx)
001C  96 ED B5                               LOADSTRING                    dst=v[0x0ED], values=[5]
001F  9A ED B2 2C 00                         STRCMP_NE_JMP                 start=v[0x0ED], values=[2], target=0x002C
0024  0A                                     VIDEOFLAG5_ON
0025  07                                     VIDEOFLAG7_ON
0026  09 9A 50                               VIDEOREF                      ref=0x509A (GAMWAV[154]=gen_s_3.vdx)
0029  96 ED B3                               LOADSTRING                    dst=v[0x0ED], values=[3]
002C  9A ED B0 39 00                         STRCMP_NE_JMP                 start=v[0x0ED], values=[0], target=0x0039
0031  0A                                     VIDEOFLAG5_ON
0032  07                                     VIDEOFLAG7_ON
0033  09 59 50                               VIDEOREF                      ref=0x5059 (GAMWAV[89]=15_s_1.vdx)
0036  96 ED B1                               LOADSTRING                    dst=v[0x0ED], values=[1]
0039  47                                     RESOURCE_CONTEXT_RESTORE
003A  2C 51 04 08                            SET_HOTSPOT_TOP               target=0x0451, cursor=0x08
003E  2D 37 04 06                            SET_HOTSPOT_BOTTOM            target=0x0437, cursor=0x06
0042  44 29 02                               SET_HOTSPOT_RIGHT             target=0x0229
0045  45 29 02                               SET_HOTSPOT_LEFT              target=0x0229
0048  09 2A 48                               VIDEOREF                      ref=0x482A (P[42]=pstauf.vdx)
004B  1C 2A 48                               VIDEO_TRANSITION_REF          ref=0x482A (P[42]=pstauf.vdx)
004E  96 00 30 30 30 30 30 30 30 30 B0       LOADSTRING                    dst=v[0x000], values=[0, 0, 0, 0, 0, 0, 0, 0, 0]
0059  94 11 01                               RANDOM                        dst=v[0x011], max=0x01
005C  9A 11 B1 64 00                         STRCMP_NE_JMP                 start=v[0x011], values=[1], target=0x0064
0061  18 0D 04                               CALL                          target=0x040D
0064  94 11 01                               RANDOM                        dst=v[0x011], max=0x01
0067  9A 11 B1 6F 00                         STRCMP_NE_JMP                 start=v[0x011], values=[1], target=0x006F
006C  18 B9 03                               CALL                          target=0x03B9
006F  94 11 01                               RANDOM                        dst=v[0x011], max=0x01
0072  9A 11 B1 7A 00                         STRCMP_NE_JMP                 start=v[0x011], values=[1], target=0x007A
0077  18 E3 03                               CALL                          target=0x03E3
007A  94 11 01                               RANDOM                        dst=v[0x011], max=0x01
007D  9A 11 B1 85 00                         STRCMP_NE_JMP                 start=v[0x011], values=[1], target=0x0085
0082  18 BD 02                               CALL                          target=0x02BD
0085  94 11 01                               RANDOM                        dst=v[0x011], max=0x01
0088  9A 11 B1 90 00                         STRCMP_NE_JMP                 start=v[0x011], values=[1], target=0x0090
008D  18 8F 03                               CALL                          target=0x038F
0090  94 11 01                               RANDOM                        dst=v[0x011], max=0x01
0093  9A 11 B1 9B 00                         STRCMP_NE_JMP                 start=v[0x011], values=[1], target=0x009B
0098  18 11 03                               CALL                          target=0x0311
009B  94 11 01                               RANDOM                        dst=v[0x011], max=0x01
009E  9A 11 B1 A6 00                         STRCMP_NE_JMP                 start=v[0x011], values=[1], target=0x00A6
00A3  18 3B 03                               CALL                          target=0x033B
00A6  94 11 01                               RANDOM                        dst=v[0x011], max=0x01
00A9  9A 11 B1 B1 00                         STRCMP_NE_JMP                 start=v[0x011], values=[1], target=0x00B1
00AE  18 E7 02                               CALL                          target=0x02E7
00B1  94 11 01                               RANDOM                        dst=v[0x011], max=0x01
00B4  9A 11 B1 BC 00                         STRCMP_NE_JMP                 start=v[0x011], values=[1], target=0x00BC
00B9  18 65 03                               CALL                          target=0x0365
00BC  94 11 01                               RANDOM                        dst=v[0x011], max=0x01
00BF  9A 11 B1 C7 00                         STRCMP_NE_JMP                 start=v[0x011], values=[1], target=0x00C7
00C4  18 0D 04                               CALL                          target=0x040D
00C7  94 11 01                               RANDOM                        dst=v[0x011], max=0x01
00CA  9A 11 B1 D2 00                         STRCMP_NE_JMP                 start=v[0x011], values=[1], target=0x00D2
00CF  18 B9 03                               CALL                          target=0x03B9
00D2  94 11 01                               RANDOM                        dst=v[0x011], max=0x01
00D5  9A 11 B1 DD 00                         STRCMP_NE_JMP                 start=v[0x011], values=[1], target=0x00DD
00DA  18 E3 03                               CALL                          target=0x03E3
00DD  94 11 01                               RANDOM                        dst=v[0x011], max=0x01
00E0  9A 11 B1 E8 00                         STRCMP_NE_JMP                 start=v[0x011], values=[1], target=0x00E8
00E5  18 BD 02                               CALL                          target=0x02BD
00E8  94 11 01                               RANDOM                        dst=v[0x011], max=0x01
00EB  9A 11 B1 F3 00                         STRCMP_NE_JMP                 start=v[0x011], values=[1], target=0x00F3
00F0  18 8F 03                               CALL                          target=0x038F
00F3  94 11 01                               RANDOM                        dst=v[0x011], max=0x01
00F6  9A 11 B1 FE 00                         STRCMP_NE_JMP                 start=v[0x011], values=[1], target=0x00FE
00FB  18 11 03                               CALL                          target=0x0311
00FE  94 11 01                               RANDOM                        dst=v[0x011], max=0x01
0101  9A 11 B1 09 01                         STRCMP_NE_JMP                 start=v[0x011], values=[1], target=0x0109
0106  18 3B 03                               CALL                          target=0x033B
0109  94 11 01                               RANDOM                        dst=v[0x011], max=0x01
010C  9A 11 B1 14 01                         STRCMP_NE_JMP                 start=v[0x011], values=[1], target=0x0114
0111  18 E7 02                               CALL                          target=0x02E7
0114  94 11 01                               RANDOM                        dst=v[0x011], max=0x01
0117  9A 11 B1 1F 01                         STRCMP_NE_JMP                 start=v[0x011], values=[1], target=0x011F
011C  18 65 03                               CALL                          target=0x0365
011F  9A 00 30 30 30 30 30 30 30 30 B0 2F 01 STRCMP_NE_JMP                 start=v[0x000], values=[0, 0, 0, 0, 0, 0, 0, 0, 0], target=0x012F
012C  15 59 00                               JMP                           target=0x0059
012F  9A 00 30 30 30 30 30 30 30 30 B0 3F 01 STRCMP_NE_JMP                 start=v[0x000], values=[0, 0, 0, 0, 0, 0, 0, 0, 0], target=0x013F
013C  15 35 02                               JMP                           target=0x0235
013F  36 03 01 F1 59 01                      CHAR_LESS_JMP                 start=v[0x103], values=[65], target=0x0159
0145  1A 07 01 B4 59 01                      STRCMP_NE_JMP                 start=v[0x107], values=[4], target=0x0159
014B  16 07 01 B4                            LOADSTRING                    dst=v[0x107], values=[4]
014F  16 03 01 B0                            LOADSTRING                    dst=v[0x103], values=[0]
0153  46                                     RESOURCE_CONTEXT_SAVE
0154  07                                     VIDEOFLAG7_ON
0155  09 98 50                               VIDEOREF                      ref=0x5098 (GAMWAV[152]=gen_s_1.vdx)
0158  47                                     RESOURCE_CONTEXT_RESTORE
0159  36 03 01 F1 6D 01                      CHAR_LESS_JMP                 start=v[0x103], values=[65], target=0x016D
015F  1A 07 01 B3 6D 01                      STRCMP_NE_JMP                 start=v[0x107], values=[3], target=0x016D
0165  16 07 01 B4                            LOADSTRING                    dst=v[0x107], values=[4]
0169  16 03 01 B0                            LOADSTRING                    dst=v[0x103], values=[0]
016D  36 03 01 E6 87 01                      CHAR_LESS_JMP                 start=v[0x103], values=[54], target=0x0187
0173  1A 07 01 B2 87 01                      STRCMP_NE_JMP                 start=v[0x107], values=[2], target=0x0187
0179  16 07 01 B3                            LOADSTRING                    dst=v[0x107], values=[3]
017D  16 03 01 B0                            LOADSTRING                    dst=v[0x103], values=[0]
0181  46                                     RESOURCE_CONTEXT_SAVE
0182  07                                     VIDEOFLAG7_ON
0183  09 58 50                               VIDEOREF                      ref=0x5058 (GAMWAV[88]=15_e_3.vdx)
0186  47                                     RESOURCE_CONTEXT_RESTORE
0187  36 03 01 E6 A1 01                      CHAR_LESS_JMP                 start=v[0x103], values=[54], target=0x01A1
018D  1A 07 01 B1 A1 01                      STRCMP_NE_JMP                 start=v[0x107], values=[1], target=0x01A1
0193  16 07 01 B2                            LOADSTRING                    dst=v[0x107], values=[2]
0197  16 03 01 B0                            LOADSTRING                    dst=v[0x103], values=[0]
019B  46                                     RESOURCE_CONTEXT_SAVE
019C  07                                     VIDEOFLAG7_ON
019D  09 57 50                               VIDEOREF                      ref=0x5057 (GAMWAV[87]=15_e_2.vdx)
01A0  47                                     RESOURCE_CONTEXT_RESTORE
01A1  36 03 01 E6 BB 01                      CHAR_LESS_JMP                 start=v[0x103], values=[54], target=0x01BB
01A7  1A 07 01 B0 BB 01                      STRCMP_NE_JMP                 start=v[0x107], values=[0], target=0x01BB
01AD  16 07 01 B1                            LOADSTRING                    dst=v[0x107], values=[1]
01B1  16 03 01 B0                            LOADSTRING                    dst=v[0x103], values=[0]
01B5  46                                     RESOURCE_CONTEXT_SAVE
01B6  07                                     VIDEOFLAG7_ON
01B7  09 56 50                               VIDEOREF                      ref=0x5056 (GAMWAV[86]=15_e_1.vdx)
01BA  47                                     RESOURCE_CONTEXT_RESTORE
01BB  0B                                     INPUTLOOPSTART
01BC  0D 06 01 7C 00 35 01 D3 00 3F 02 09    HOTSPOT_RECT                  left=0x0106, top=0x007C, right=0x0135, bottom=0x00D3, target=0x023F, cursor=0x09
01C8  0D 36 01 7C 00 65 01 D3 00 4E 02 0A    HOTSPOT_RECT                  left=0x0136, top=0x007C, right=0x0165, bottom=0x00D3, target=0x024E, cursor=0x0A
01D4  0D 66 01 7C 00 95 01 D3 00 5A 02 09    HOTSPOT_RECT                  left=0x0166, top=0x007C, right=0x0195, bottom=0x00D3, target=0x025A, cursor=0x09
01E0  0D 06 01 D4 00 35 01 35 01 69 02 0A    HOTSPOT_RECT                  left=0x0106, top=0x00D4, right=0x0135, bottom=0x0135, target=0x0269, cursor=0x0A
01EC  0D 36 01 D4 00 65 01 35 01 75 02 09    HOTSPOT_RECT                  left=0x0136, top=0x00D4, right=0x0165, bottom=0x0135, target=0x0275, cursor=0x09
01F8  0D 66 01 D4 00 95 01 35 01 87 02 0A    HOTSPOT_RECT                  left=0x0166, top=0x00D4, right=0x0195, bottom=0x0135, target=0x0287, cursor=0x0A
0204  0D 06 01 2C 01 35 01 83 01 93 02 09    HOTSPOT_RECT                  left=0x0106, top=0x012C, right=0x0135, bottom=0x0183, target=0x0293, cursor=0x09
0210  0D 36 01 2C 01 65 01 83 01 A2 02 0A    HOTSPOT_RECT                  left=0x0136, top=0x012C, right=0x0165, bottom=0x0183, target=0x02A2, cursor=0x0A
021C  0D 66 01 2C 01 95 01 83 01 AE 02 09    HOTSPOT_RECT                  left=0x0166, top=0x012C, right=0x0195, bottom=0x0183, target=0x02AE, cursor=0x09
0228  13                                     INPUTLOOPEND
0229  1C 2A 48                               VIDEO_TRANSITION_REF          ref=0x482A (P[42]=pstauf.vdx)
022C  18 53 04                               CALL                          target=0x0453
022F  07                                     VIDEOFLAG7_ON
0230  09 8A 50                               VIDEOREF                      ref=0x508A (GAMWAV[138]=gen_e_4.vdx)
0233  43 00                                  RETURNSCRIPT                  value=0x00
0235  07                                     VIDEOFLAG7_ON
0236  0A                                     VIDEOFLAG5_ON
0237  09 A2 50                               VIDEOREF                      ref=0x50A2 (GAMWAV[162]=gen_s_11.vdx)
023A  96 ED E1                               LOADSTRING                    dst=v[0x0ED], values=[49]
023D  43 00                                  RETURNSCRIPT                  value=0x00
023F  18 0D 04                               CALL                          target=0x040D
0242  18 B9 03                               CALL                          target=0x03B9
0245  18 BD 02                               CALL                          target=0x02BD
0248  18 8F 03                               CALL                          target=0x038F
024B  15 2F 01                               JMP                           target=0x012F
024E  18 B9 03                               CALL                          target=0x03B9
0251  18 0D 04                               CALL                          target=0x040D
0254  18 E3 03                               CALL                          target=0x03E3
0257  15 2F 01                               JMP                           target=0x012F
025A  18 E3 03                               CALL                          target=0x03E3
025D  18 8F 03                               CALL                          target=0x038F
0260  18 B9 03                               CALL                          target=0x03B9
0263  18 11 03                               CALL                          target=0x0311
0266  15 2F 01                               JMP                           target=0x012F
0269  18 BD 02                               CALL                          target=0x02BD
026C  18 3B 03                               CALL                          target=0x033B
026F  18 0D 04                               CALL                          target=0x040D
0272  15 2F 01                               JMP                           target=0x012F
0275  18 8F 03                               CALL                          target=0x038F
0278  18 B9 03                               CALL                          target=0x03B9
027B  18 BD 02                               CALL                          target=0x02BD
027E  18 11 03                               CALL                          target=0x0311
0281  18 E7 02                               CALL                          target=0x02E7
0284  15 2F 01                               JMP                           target=0x012F
0287  18 11 03                               CALL                          target=0x0311
028A  18 E3 03                               CALL                          target=0x03E3
028D  18 65 03                               CALL                          target=0x0365
0290  15 2F 01                               JMP                           target=0x012F
0293  18 3B 03                               CALL                          target=0x033B
0296  18 BD 02                               CALL                          target=0x02BD
0299  18 8F 03                               CALL                          target=0x038F
029C  18 E7 02                               CALL                          target=0x02E7
029F  15 2F 01                               JMP                           target=0x012F
02A2  18 E7 02                               CALL                          target=0x02E7
02A5  18 3B 03                               CALL                          target=0x033B
02A8  18 65 03                               CALL                          target=0x0365
02AB  15 2F 01                               JMP                           target=0x012F
02AE  18 65 03                               CALL                          target=0x0365
02B1  18 E7 02                               CALL                          target=0x02E7
02B4  18 8F 03                               CALL                          target=0x038F
02B7  18 11 03                               CALL                          target=0x0311
02BA  15 2F 01                               JMP                           target=0x012F
02BD  0A                                     VIDEOFLAG5_ON
02BE  06                                     VIDEOFLAG6_ON
02BF  07                                     VIDEOFLAG7_ON
02C0  9A 03 B0 CB 02                         STRCMP_NE_JMP                 start=v[0x003], values=[0], target=0x02CB
02C5  09 16 48                               VIDEOREF                      ref=0x4816 (P[22]=ps4_1.vdx)
02C8  96 13 B1                               LOADSTRING                    dst=v[0x013], values=[1]
02CB  9A 03 B1 D6 02                         STRCMP_NE_JMP                 start=v[0x003], values=[1], target=0x02D6
02D0  09 17 48                               VIDEOREF                      ref=0x4817 (P[23]=ps4_2.vdx)
02D3  96 13 B2                               LOADSTRING                    dst=v[0x013], values=[2]
02D6  9A 03 B2 E1 02                         STRCMP_NE_JMP                 start=v[0x003], values=[2], target=0x02E1
02DB  09 18 48                               VIDEOREF                      ref=0x4818 (P[24]=ps4_3.vdx)
02DE  96 13 B0                               LOADSTRING                    dst=v[0x013], values=[0]
02E1  9D 03 13 00                            SWAP                          dst=v[0x003], src=0x0013
02E5  17 00                                  RET                           value=0x00
02E7  0A                                     VIDEOFLAG5_ON
02E8  06                                     VIDEOFLAG6_ON
02E9  07                                     VIDEOFLAG7_ON
02EA  9A 07 B0 F5 02                         STRCMP_NE_JMP                 start=v[0x007], values=[0], target=0x02F5
02EF  09 22 48                               VIDEOREF                      ref=0x4822 (P[34]=ps8_1.vdx)
02F2  96 13 B1                               LOADSTRING                    dst=v[0x013], values=[1]
02F5  9A 07 B1 00 03                         STRCMP_NE_JMP                 start=v[0x007], values=[1], target=0x0300
02FA  09 23 48                               VIDEOREF                      ref=0x4823 (P[35]=ps8_2.vdx)
02FD  96 13 B2                               LOADSTRING                    dst=v[0x013], values=[2]
0300  9A 07 B2 0B 03                         STRCMP_NE_JMP                 start=v[0x007], values=[2], target=0x030B
0305  09 24 48                               VIDEOREF                      ref=0x4824 (P[36]=ps8_3.vdx)
0308  96 13 B0                               LOADSTRING                    dst=v[0x013], values=[0]
030B  9D 07 13 00                            SWAP                          dst=v[0x007], src=0x0013
030F  17 00                                  RET                           value=0x00
0311  0A                                     VIDEOFLAG5_ON
0312  06                                     VIDEOFLAG6_ON
0313  07                                     VIDEOFLAG7_ON
0314  9A 05 B0 1F 03                         STRCMP_NE_JMP                 start=v[0x005], values=[0], target=0x031F
0319  09 1C 48                               VIDEOREF                      ref=0x481C (P[28]=ps6_1.vdx)
031C  96 13 B1                               LOADSTRING                    dst=v[0x013], values=[1]
031F  9A 05 B1 2A 03                         STRCMP_NE_JMP                 start=v[0x005], values=[1], target=0x032A
0324  09 1D 48                               VIDEOREF                      ref=0x481D (P[29]=ps6_2.vdx)
0327  96 13 B2                               LOADSTRING                    dst=v[0x013], values=[2]
032A  9A 05 B2 35 03                         STRCMP_NE_JMP                 start=v[0x005], values=[2], target=0x0335
032F  09 1E 48                               VIDEOREF                      ref=0x481E (P[30]=ps6_3.vdx)
0332  96 13 B0                               LOADSTRING                    dst=v[0x013], values=[0]
0335  9D 05 13 00                            SWAP                          dst=v[0x005], src=0x0013
0339  17 00                                  RET                           value=0x00
033B  0A                                     VIDEOFLAG5_ON
033C  06                                     VIDEOFLAG6_ON
033D  07                                     VIDEOFLAG7_ON
033E  9A 06 B0 49 03                         STRCMP_NE_JMP                 start=v[0x006], values=[0], target=0x0349
0343  09 1F 48                               VIDEOREF                      ref=0x481F (P[31]=ps7_1.vdx)
0346  96 13 B1                               LOADSTRING                    dst=v[0x013], values=[1]
0349  9A 06 B1 54 03                         STRCMP_NE_JMP                 start=v[0x006], values=[1], target=0x0354
034E  09 20 48                               VIDEOREF                      ref=0x4820 (P[32]=ps7_2.vdx)
0351  96 13 B2                               LOADSTRING                    dst=v[0x013], values=[2]
0354  9A 06 B2 5F 03                         STRCMP_NE_JMP                 start=v[0x006], values=[2], target=0x035F
0359  09 21 48                               VIDEOREF                      ref=0x4821 (P[33]=ps7_3.vdx)
035C  96 13 B0                               LOADSTRING                    dst=v[0x013], values=[0]
035F  9D 06 13 00                            SWAP                          dst=v[0x006], src=0x0013
0363  17 00                                  RET                           value=0x00
0365  0A                                     VIDEOFLAG5_ON
0366  06                                     VIDEOFLAG6_ON
0367  07                                     VIDEOFLAG7_ON
0368  9A 08 B0 73 03                         STRCMP_NE_JMP                 start=v[0x008], values=[0], target=0x0373
036D  09 25 48                               VIDEOREF                      ref=0x4825 (P[37]=ps9_1.vdx)
0370  96 13 B1                               LOADSTRING                    dst=v[0x013], values=[1]
0373  9A 08 B1 7E 03                         STRCMP_NE_JMP                 start=v[0x008], values=[1], target=0x037E
0378  09 26 48                               VIDEOREF                      ref=0x4826 (P[38]=ps9_2.vdx)
037B  96 13 B2                               LOADSTRING                    dst=v[0x013], values=[2]
037E  9A 08 B2 89 03                         STRCMP_NE_JMP                 start=v[0x008], values=[2], target=0x0389
0383  09 27 48                               VIDEOREF                      ref=0x4827 (P[39]=ps9_3.vdx)
0386  96 13 B0                               LOADSTRING                    dst=v[0x013], values=[0]
0389  9D 08 13 00                            SWAP                          dst=v[0x008], src=0x0013
038D  17 00                                  RET                           value=0x00
038F  0A                                     VIDEOFLAG5_ON
0390  06                                     VIDEOFLAG6_ON
0391  07                                     VIDEOFLAG7_ON
0392  9A 04 B0 9D 03                         STRCMP_NE_JMP                 start=v[0x004], values=[0], target=0x039D
0397  09 19 48                               VIDEOREF                      ref=0x4819 (P[25]=ps5_1.vdx)
039A  96 13 B1                               LOADSTRING                    dst=v[0x013], values=[1]
039D  9A 04 B1 A8 03                         STRCMP_NE_JMP                 start=v[0x004], values=[1], target=0x03A8
03A2  09 1A 48                               VIDEOREF                      ref=0x481A (P[26]=ps5_2.vdx)
03A5  96 13 B2                               LOADSTRING                    dst=v[0x013], values=[2]
03A8  9A 04 B2 B3 03                         STRCMP_NE_JMP                 start=v[0x004], values=[2], target=0x03B3
03AD  09 1B 48                               VIDEOREF                      ref=0x481B (P[27]=ps5_3.vdx)
03B0  96 13 B0                               LOADSTRING                    dst=v[0x013], values=[0]
03B3  9D 04 13 00                            SWAP                          dst=v[0x004], src=0x0013
03B7  17 00                                  RET                           value=0x00
03B9  0A                                     VIDEOFLAG5_ON
03BA  06                                     VIDEOFLAG6_ON
03BB  07                                     VIDEOFLAG7_ON
03BC  9A 01 B0 C7 03                         STRCMP_NE_JMP                 start=v[0x001], values=[0], target=0x03C7
03C1  09 10 48                               VIDEOREF                      ref=0x4810 (P[16]=ps2_1.vdx)
03C4  96 13 B1                               LOADSTRING                    dst=v[0x013], values=[1]
03C7  9A 01 B1 D2 03                         STRCMP_NE_JMP                 start=v[0x001], values=[1], target=0x03D2
03CC  09 11 48                               VIDEOREF                      ref=0x4811 (P[17]=ps2_2.vdx)
03CF  96 13 B2                               LOADSTRING                    dst=v[0x013], values=[2]
03D2  9A 01 B2 DD 03                         STRCMP_NE_JMP                 start=v[0x001], values=[2], target=0x03DD
03D7  09 12 48                               VIDEOREF                      ref=0x4812 (P[18]=ps2_3.vdx)
03DA  96 13 B0                               LOADSTRING                    dst=v[0x013], values=[0]
03DD  9D 01 13 00                            SWAP                          dst=v[0x001], src=0x0013
03E1  17 00                                  RET                           value=0x00
03E3  0A                                     VIDEOFLAG5_ON
03E4  06                                     VIDEOFLAG6_ON
03E5  07                                     VIDEOFLAG7_ON
03E6  9A 02 B0 F1 03                         STRCMP_NE_JMP                 start=v[0x002], values=[0], target=0x03F1
03EB  09 13 48                               VIDEOREF                      ref=0x4813 (P[19]=ps3_1.vdx)
03EE  96 13 B1                               LOADSTRING                    dst=v[0x013], values=[1]
03F1  9A 02 B1 FC 03                         STRCMP_NE_JMP                 start=v[0x002], values=[1], target=0x03FC
03F6  09 14 48                               VIDEOREF                      ref=0x4814 (P[20]=ps3_2.vdx)
03F9  96 13 B2                               LOADSTRING                    dst=v[0x013], values=[2]
03FC  9A 02 B2 07 04                         STRCMP_NE_JMP                 start=v[0x002], values=[2], target=0x0407
0401  09 15 48                               VIDEOREF                      ref=0x4815 (P[21]=ps3_3.vdx)
0404  96 13 B0                               LOADSTRING                    dst=v[0x013], values=[0]
0407  9D 02 13 00                            SWAP                          dst=v[0x002], src=0x0013
040B  17 00                                  RET                           value=0x00
040D  0A                                     VIDEOFLAG5_ON
040E  06                                     VIDEOFLAG6_ON
040F  07                                     VIDEOFLAG7_ON
0410  9A 00 B0 1B 04                         STRCMP_NE_JMP                 start=v[0x000], values=[0], target=0x041B
0415  09 0D 48                               VIDEOREF                      ref=0x480D (P[13]=ps1_1.vdx)
0418  96 13 B1                               LOADSTRING                    dst=v[0x013], values=[1]
041B  9A 00 B1 26 04                         STRCMP_NE_JMP                 start=v[0x000], values=[1], target=0x0426
0420  09 0E 48                               VIDEOREF                      ref=0x480E (P[14]=ps1_2.vdx)
0423  96 13 B2                               LOADSTRING                    dst=v[0x013], values=[2]
0426  9A 00 B2 31 04                         STRCMP_NE_JMP                 start=v[0x000], values=[2], target=0x0431
042B  09 0F 48                               VIDEOREF                      ref=0x480F (P[15]=ps1_3.vdx)
042E  96 13 B0                               LOADSTRING                    dst=v[0x013], values=[0]
0431  9D 00 13 00                            SWAP                          dst=v[0x000], src=0x0013
0435  17 00                                  RET                           value=0x00
0437  07                                     VIDEOFLAG7_ON
0438  46                                     RESOURCE_CONTEXT_SAVE
0439  09 8B 50                               VIDEOREF                      ref=0x508B (GAMWAV[139]=gen_e_5.vdx)
043C  47                                     RESOURCE_CONTEXT_RESTORE
043D  1C 2A 48                               VIDEO_TRANSITION_REF          ref=0x482A (P[42]=pstauf.vdx)
0440  18 53 04                               CALL                          target=0x0453
0443  96 00 30 30 30 30 30 30 30 30 B0       LOADSTRING                    dst=v[0x000], values=[0, 0, 0, 0, 0, 0, 0, 0, 0]
044E  15 59 00                               JMP                           target=0x0059
0451  43 01                                  RETURNSCRIPT                  value=0x01
0453  0A                                     VIDEOFLAG5_ON
0454  07                                     VIDEOFLAG7_ON
0455  46                                     RESOURCE_CONTEXT_SAVE
0456  09 01 24                               VIDEOREF                      ref=0x2401 (INTRO[1]=fade.vdx)
0459  37 00 00 50 00 7F 02 8F 01             COPY_RECT_TO_BG               left=0x0000, top=0x0050, right=0x027F, bottom=0x018F
0462  47                                     RESOURCE_CONTEXT_RESTORE
0463  17 00                                  RET                           value=0x00
