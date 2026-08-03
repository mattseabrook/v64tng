; T7G/CR.GRV
; size=1654 sha256=1df412062a7da4f7fb224d1cc8da07356ca8d7b4146bc0ddbd7107768acfb97e
; instructions=475 input_loops=1

0000  02 14 4C                               PLAYSONG                      ref=0x4C14 (XMI[20]=gu23.xmi)
0003  16 03 01 B0                            LOADSTRING                    dst=v[0x103], values=[0]
0007  16 07 01 B0                            LOADSTRING                    dst=v[0x107], values=[0]
000B  16 08 01 B0                            LOADSTRING                    dst=v[0x108], values=[0]
000F  96 92 30 B9                            LOADSTRING                    dst=v[0x092], values=[0, 9]
0013  46                                     RESOURCE_CONTEXT_SAVE
0014  9A F4 B4 1C 00                         STRCMP_NE_JMP                 start=v[0x0F4], values=[4], target=0x001C
0019  96 F4 B5                               LOADSTRING                    dst=v[0x0F4], values=[5]
001C  9A F4 B2 24 00                         STRCMP_NE_JMP                 start=v[0x0F4], values=[2], target=0x0024
0021  96 F4 B3                               LOADSTRING                    dst=v[0x0F4], values=[3]
0024  9A F4 B0 32 00                         STRCMP_NE_JMP                 start=v[0x0F4], values=[0], target=0x0032
0029  07                                     VIDEOFLAG7_ON
002A  46                                     RESOURCE_CONTEXT_SAVE
002B  09 2D 50                               VIDEOREF                      ref=0x502D (GAMWAV[45]=8_s_1.vdx)
002E  47                                     RESOURCE_CONTEXT_RESTORE
002F  96 F4 B1                               LOADSTRING                    dst=v[0x0F4], values=[1]
0032  47                                     RESOURCE_CONTEXT_RESTORE
0033  45 C7 01                               SET_HOTSPOT_LEFT              target=0x01C7
0036  44 C7 01                               SET_HOTSPOT_RIGHT             target=0x01C7
0039  2C 62 06 08                            SET_HOTSPOT_TOP               target=0x0662, cursor=0x08
003D  2D D4 01 06                            SET_HOTSPOT_BOTTOM            target=0x01D4, cursor=0x06
0041  96 00 31 31 31 31 31 31 31 31 B1       LOADSTRING                    dst=v[0x000], values=[1, 1, 1, 1, 1, 1, 1, 1, 1]
004C  94 11 01                               RANDOM                        dst=v[0x011], max=0x01
004F  9A 11 B1 57 00                         STRCMP_NE_JMP                 start=v[0x011], values=[1], target=0x0057
0054  18 DC 05                               CALL                          target=0x05DC
0057  94 11 01                               RANDOM                        dst=v[0x011], max=0x01
005A  9A 11 B1 62 00                         STRCMP_NE_JMP                 start=v[0x011], values=[1], target=0x0062
005F  18 D0 04                               CALL                          target=0x04D0
0062  94 11 01                               RANDOM                        dst=v[0x011], max=0x01
0065  9A 11 B1 6D 00                         STRCMP_NE_JMP                 start=v[0x011], values=[1], target=0x006D
006A  18 56 05                               CALL                          target=0x0556
006D  94 11 01                               RANDOM                        dst=v[0x011], max=0x01
0070  9A 11 B1 78 00                         STRCMP_NE_JMP                 start=v[0x011], values=[1], target=0x0078
0075  18 96 02                               CALL                          target=0x0296
0078  94 11 01                               RANDOM                        dst=v[0x011], max=0x01
007B  9A 11 B1 83 00                         STRCMP_NE_JMP                 start=v[0x011], values=[1], target=0x0083
0080  18 71 04                               CALL                          target=0x0471
0083  94 11 01                               RANDOM                        dst=v[0x011], max=0x01
0086  9A 11 B1 8E 00                         STRCMP_NE_JMP                 start=v[0x011], values=[1], target=0x008E
008B  18 54 03                               CALL                          target=0x0354
008E  94 11 01                               RANDOM                        dst=v[0x011], max=0x01
0091  9A 11 B1 99 00                         STRCMP_NE_JMP                 start=v[0x011], values=[1], target=0x0099
0096  18 B3 03                               CALL                          target=0x03B3
0099  94 11 01                               RANDOM                        dst=v[0x011], max=0x01
009C  9A 11 B1 A4 00                         STRCMP_NE_JMP                 start=v[0x011], values=[1], target=0x00A4
00A1  18 F5 02                               CALL                          target=0x02F5
00A4  94 11 01                               RANDOM                        dst=v[0x011], max=0x01
00A7  9A 11 B1 AF 00                         STRCMP_NE_JMP                 start=v[0x011], values=[1], target=0x00AF
00AC  18 12 04                               CALL                          target=0x0412
00AF  9A 00 31 31 31 31 31 31 31 31 B1 BF 00 STRCMP_NE_JMP                 start=v[0x000], values=[1, 1, 1, 1, 1, 1, 1, 1, 1], target=0x00BF
00BC  15 4C 00                               JMP                           target=0x004C
00BF  36 03 01 E7 D9 00                      CHAR_LESS_JMP                 start=v[0x103], values=[55], target=0x00D9
00C5  1A 07 01 B1 D9 00                      STRCMP_NE_JMP                 start=v[0x107], values=[1], target=0x00D9
00CB  16 03 01 B0                            LOADSTRING                    dst=v[0x103], values=[0]
00CF  16 07 01 B2                            LOADSTRING                    dst=v[0x107], values=[2]
00D3  46                                     RESOURCE_CONTEXT_SAVE
00D4  07                                     VIDEOFLAG7_ON
00D5  09 2F 50                               VIDEOREF                      ref=0x502F (GAMWAV[47]=8_s_3.vdx)
00D8  47                                     RESOURCE_CONTEXT_RESTORE
00D9  36 03 01 E2 F3 00                      CHAR_LESS_JMP                 start=v[0x103], values=[50], target=0x00F3
00DF  1A 07 01 B0 F3 00                      STRCMP_NE_JMP                 start=v[0x107], values=[0], target=0x00F3
00E5  16 03 01 B0                            LOADSTRING                    dst=v[0x103], values=[0]
00E9  16 07 01 B1                            LOADSTRING                    dst=v[0x107], values=[1]
00ED  46                                     RESOURCE_CONTEXT_SAVE
00EE  07                                     VIDEOFLAG7_ON
00EF  09 2E 50                               VIDEOREF                      ref=0x502E (GAMWAV[46]=8_s_2.vdx)
00F2  47                                     RESOURCE_CONTEXT_RESTORE
00F3  36 03 01 B5 11 01                      CHAR_LESS_JMP                 start=v[0x103], values=[5], target=0x0111
00F9  1A 08 01 B0 11 01                      STRCMP_NE_JMP                 start=v[0x108], values=[0], target=0x0111
00FF  16 03 01 B0                            LOADSTRING                    dst=v[0x103], values=[0]
0103  16 08 01 B1                            LOADSTRING                    dst=v[0x108], values=[1]
0107  16 09 01 B0                            LOADSTRING                    dst=v[0x109], values=[0]
010B  46                                     RESOURCE_CONTEXT_SAVE
010C  07                                     VIDEOFLAG7_ON
010D  09 2A 50                               VIDEOREF                      ref=0x502A (GAMWAV[42]=8_e_4.vdx)
0110  47                                     RESOURCE_CONTEXT_RESTORE
0111  36 03 01 B5 2B 01                      CHAR_LESS_JMP                 start=v[0x103], values=[5], target=0x012B
0117  1A 09 01 B0 2B 01                      STRCMP_NE_JMP                 start=v[0x109], values=[0], target=0x012B
011D  16 09 01 B1                            LOADSTRING                    dst=v[0x109], values=[1]
0121  16 03 01 B0                            LOADSTRING                    dst=v[0x103], values=[0]
0125  46                                     RESOURCE_CONTEXT_SAVE
0126  07                                     VIDEOFLAG7_ON
0127  09 2B 50                               VIDEOREF                      ref=0x502B (GAMWAV[43]=8_e_5.vdx)
012A  47                                     RESOURCE_CONTEXT_RESTORE
012B  36 03 01 E6 49 01                      CHAR_LESS_JMP                 start=v[0x103], values=[54], target=0x0149
0131  1A 07 01 B2 49 01                      STRCMP_NE_JMP                 start=v[0x107], values=[2], target=0x0149
0137  16 03 01 B0                            LOADSTRING                    dst=v[0x103], values=[0]
013B  16 08 01 B2                            LOADSTRING                    dst=v[0x108], values=[2]
013F  16 07 01 B3                            LOADSTRING                    dst=v[0x107], values=[3]
0143  46                                     RESOURCE_CONTEXT_SAVE
0144  07                                     VIDEOFLAG7_ON
0145  09 2C 50                               VIDEOREF                      ref=0x502C (GAMWAV[44]=8_e_6.vdx)
0148  47                                     RESOURCE_CONTEXT_RESTORE
0149  9A 00 31 31 31 31 31 31 31 31 B1 59 01 STRCMP_NE_JMP                 start=v[0x000], values=[1, 1, 1, 1, 1, 1, 1, 1, 1], target=0x0159
0156  15 CF 01                               JMP                           target=0x01CF
0159  0B                                     INPUTLOOPSTART
015A  0D FD 00 B2 00 29 01 D4 00 E3 01 09    HOTSPOT_RECT                  left=0x00FD, top=0x00B2, right=0x0129, bottom=0x00D4, target=0x01E3, cursor=0x09
0166  0D 45 01 B0 00 7B 01 CB 00 F3 01 09    HOTSPOT_RECT                  left=0x0145, top=0x00B0, right=0x017B, bottom=0x00CB, target=0x01F3, cursor=0x09
0172  0D 88 01 AC 00 C9 01 C5 00 00 02 09    HOTSPOT_RECT                  left=0x0188, top=0x00AC, right=0x01C9, bottom=0x00C5, target=0x0200, cursor=0x09
017E  0D FF 00 DD 00 36 01 0F 01 10 02 09    HOTSPOT_RECT                  left=0x00FF, top=0x00DD, right=0x0136, bottom=0x010F, target=0x0210, cursor=0x09
018A  0D 5B 01 D6 00 A8 01 06 01 1D 02 09    HOTSPOT_RECT                  left=0x015B, top=0x00D6, right=0x01A8, bottom=0x0106, target=0x021D, cursor=0x09
0196  0D AF 01 D0 00 11 02 FC 00 30 02 09    HOTSPOT_RECT                  left=0x01AF, top=0x00D0, right=0x0211, bottom=0x00FC, target=0x0230, cursor=0x09
01A2  0D FE 00 29 01 50 01 8F 01 3D 02 09    HOTSPOT_RECT                  left=0x00FE, top=0x0129, right=0x0150, bottom=0x018F, target=0x023D, cursor=0x09
01AE  0D 7F 01 1C 01 FD 01 88 01 4D 02 09    HOTSPOT_RECT                  left=0x017F, top=0x011C, right=0x01FD, bottom=0x0188, target=0x024D, cursor=0x09
01BA  0D F3 01 11 01 7F 02 61 01 5A 02 09    HOTSPOT_RECT                  left=0x01F3, top=0x0111, right=0x027F, bottom=0x0161, target=0x025A, cursor=0x09
01C6  13                                     INPUTLOOPEND
01C7  1C 6C 3C                               VIDEO_TRANSITION_REF          ref=0x3C6C (MC[108]=crea.vdx)
01CA  18 64 06                               CALL                          target=0x0664
01CD  43 00                                  RETURNSCRIPT                  value=0x00
01CF  96 F4 E1                               LOADSTRING                    dst=v[0x0F4], values=[49]
01D2  43 00                                  RETURNSCRIPT                  value=0x00
01D4  07                                     VIDEOFLAG7_ON
01D5  46                                     RESOURCE_CONTEXT_SAVE
01D6  09 8B 50                               VIDEOREF                      ref=0x508B (GAMWAV[139]=gen_e_5.vdx)
01D9  47                                     RESOURCE_CONTEXT_RESTORE
01DA  1C 6C 3C                               VIDEO_TRANSITION_REF          ref=0x3C6C (MC[108]=crea.vdx)
01DD  18 64 06                               CALL                          target=0x0664
01E0  15 41 00                               JMP                           target=0x0041
01E3  06                                     VIDEOFLAG6_ON
01E4  18 DC 05                               CALL                          target=0x05DC
01E7  18 D0 04                               CALL                          target=0x04D0
01EA  18 96 02                               CALL                          target=0x0296
01ED  18 71 04                               CALL                          target=0x0471
01F0  15 BF 00                               JMP                           target=0x00BF
01F3  06                                     VIDEOFLAG6_ON
01F4  18 D0 04                               CALL                          target=0x04D0
01F7  18 DC 05                               CALL                          target=0x05DC
01FA  18 56 05                               CALL                          target=0x0556
01FD  15 BF 00                               JMP                           target=0x00BF
0200  06                                     VIDEOFLAG6_ON
0201  18 56 05                               CALL                          target=0x0556
0204  18 71 04                               CALL                          target=0x0471
0207  18 D0 04                               CALL                          target=0x04D0
020A  18 54 03                               CALL                          target=0x0354
020D  15 BF 00                               JMP                           target=0x00BF
0210  06                                     VIDEOFLAG6_ON
0211  18 96 02                               CALL                          target=0x0296
0214  18 B3 03                               CALL                          target=0x03B3
0217  18 DC 05                               CALL                          target=0x05DC
021A  15 BF 00                               JMP                           target=0x00BF
021D  06                                     VIDEOFLAG6_ON
021E  18 71 04                               CALL                          target=0x0471
0221  18 D0 04                               CALL                          target=0x04D0
0224  18 96 02                               CALL                          target=0x0296
0227  18 54 03                               CALL                          target=0x0354
022A  18 F5 02                               CALL                          target=0x02F5
022D  15 BF 00                               JMP                           target=0x00BF
0230  06                                     VIDEOFLAG6_ON
0231  18 54 03                               CALL                          target=0x0354
0234  18 56 05                               CALL                          target=0x0556
0237  18 12 04                               CALL                          target=0x0412
023A  15 BF 00                               JMP                           target=0x00BF
023D  06                                     VIDEOFLAG6_ON
023E  18 B3 03                               CALL                          target=0x03B3
0241  18 96 02                               CALL                          target=0x0296
0244  18 71 04                               CALL                          target=0x0471
0247  18 F5 02                               CALL                          target=0x02F5
024A  15 BF 00                               JMP                           target=0x00BF
024D  06                                     VIDEOFLAG6_ON
024E  18 F5 02                               CALL                          target=0x02F5
0251  18 B3 03                               CALL                          target=0x03B3
0254  18 12 04                               CALL                          target=0x0412
0257  15 BF 00                               JMP                           target=0x00BF
025A  06                                     VIDEOFLAG6_ON
025B  18 12 04                               CALL                          target=0x0412
025E  18 F5 02                               CALL                          target=0x02F5
0261  18 71 04                               CALL                          target=0x0471
0264  18 54 03                               CALL                          target=0x0354
0267  15 BF 00                               JMP                           target=0x00BF
026A  9A 02 B0 75 02                         STRCMP_NE_JMP                 start=v[0x002], values=[0], target=0x0275
026F  1C 5E 3C                               VIDEO_TRANSITION_REF          ref=0x3C5E (MC[94]=c3cb.vdx)
0272  15 78 02                               JMP                           target=0x0278
0275  1C 5F 3C                               VIDEO_TRANSITION_REF          ref=0x3C5F (MC[95]=c3cf.vdx)
0278  9A 01 B0 83 02                         STRCMP_NE_JMP                 start=v[0x001], values=[0], target=0x0283
027D  1C 5C 3C                               VIDEO_TRANSITION_REF          ref=0x3C5C (MC[92]=c2cb.vdx)
0280  15 86 02                               JMP                           target=0x0286
0283  1C 5D 3C                               VIDEO_TRANSITION_REF          ref=0x3C5D (MC[93]=c2cf.vdx)
0286  9A 00 B0 91 02                         STRCMP_NE_JMP                 start=v[0x000], values=[0], target=0x0291
028B  1C 5A 3C                               VIDEO_TRANSITION_REF          ref=0x3C5A (MC[90]=c1cb.vdx)
028E  15 94 02                               JMP                           target=0x0294
0291  1C 5B 3C                               VIDEO_TRANSITION_REF          ref=0x3C5B (MC[91]=c1cf.vdx)
0294  17 00                                  RET                           value=0x00
0296  1C 6C 3C                               VIDEO_TRANSITION_REF          ref=0x3C6C (MC[108]=crea.vdx)
0299  18 6A 02                               CALL                          target=0x026A
029C  9A 05 B0 A7 02                         STRCMP_NE_JMP                 start=v[0x005], values=[0], target=0x02A7
02A1  1C 64 3C                               VIDEO_TRANSITION_REF          ref=0x3C64 (MC[100]=c6cb.vdx)
02A4  15 AA 02                               JMP                           target=0x02AA
02A7  1C 65 3C                               VIDEO_TRANSITION_REF          ref=0x3C65 (MC[101]=c6cf.vdx)
02AA  9A 04 B0 B5 02                         STRCMP_NE_JMP                 start=v[0x004], values=[0], target=0x02B5
02AF  1C 62 3C                               VIDEO_TRANSITION_REF          ref=0x3C62 (MC[98]=c5cb.vdx)
02B2  15 B8 02                               JMP                           target=0x02B8
02B5  1C 63 3C                               VIDEO_TRANSITION_REF          ref=0x3C63 (MC[99]=c5cf.vdx)
02B8  9A 08 B0 C3 02                         STRCMP_NE_JMP                 start=v[0x008], values=[0], target=0x02C3
02BD  9C 6A 3C                               VIDEO_TRANSITION_REF          ref=0x3C6A (MC[106]=c9cb.vdx)
02C0  15 C6 02                               JMP                           target=0x02C6
02C3  9C 6B 3C                               VIDEO_TRANSITION_REF          ref=0x3C6B (MC[107]=c9cf.vdx)
02C6  9A 07 B0 D1 02                         STRCMP_NE_JMP                 start=v[0x007], values=[0], target=0x02D1
02CB  9C 68 3C                               VIDEO_TRANSITION_REF          ref=0x3C68 (MC[104]=c8cb.vdx)
02CE  15 D4 02                               JMP                           target=0x02D4
02D1  9C 69 3C                               VIDEO_TRANSITION_REF          ref=0x3C69 (MC[105]=c8cf.vdx)
02D4  9A 06 B0 DF 02                         STRCMP_NE_JMP                 start=v[0x006], values=[0], target=0x02DF
02D9  9C 66 3C                               VIDEO_TRANSITION_REF          ref=0x3C66 (MC[102]=c7cb.vdx)
02DC  15 E2 02                               JMP                           target=0x02E2
02DF  9C 67 3C                               VIDEO_TRANSITION_REF          ref=0x3C67 (MC[103]=c7cf.vdx)
02E2  9A 03 B1 ED 02                         STRCMP_NE_JMP                 start=v[0x003], values=[1], target=0x02ED
02E7  09 61 3C                               VIDEOREF                      ref=0x3C61 (MC[97]=c4cf.vdx)
02EA  15 F0 02                               JMP                           target=0x02F0
02ED  09 60 3C                               VIDEOREF                      ref=0x3C60 (MC[96]=c4cb.vdx)
02F0  9B 03 B1                               XOR_OBFUSCATE                 start=v[0x003], xor=[0x01]
02F3  17 00                                  RET                           value=0x00
02F5  1C 6C 3C                               VIDEO_TRANSITION_REF          ref=0x3C6C (MC[108]=crea.vdx)
02F8  18 6A 02                               CALL                          target=0x026A
02FB  9A 05 B0 06 03                         STRCMP_NE_JMP                 start=v[0x005], values=[0], target=0x0306
0300  1C 64 3C                               VIDEO_TRANSITION_REF          ref=0x3C64 (MC[100]=c6cb.vdx)
0303  15 09 03                               JMP                           target=0x0309
0306  1C 65 3C                               VIDEO_TRANSITION_REF          ref=0x3C65 (MC[101]=c6cf.vdx)
0309  9A 04 B0 14 03                         STRCMP_NE_JMP                 start=v[0x004], values=[0], target=0x0314
030E  1C 62 3C                               VIDEO_TRANSITION_REF          ref=0x3C62 (MC[98]=c5cb.vdx)
0311  15 17 03                               JMP                           target=0x0317
0314  1C 63 3C                               VIDEO_TRANSITION_REF          ref=0x3C63 (MC[99]=c5cf.vdx)
0317  9A 03 B0 22 03                         STRCMP_NE_JMP                 start=v[0x003], values=[0], target=0x0322
031C  1C 60 3C                               VIDEO_TRANSITION_REF          ref=0x3C60 (MC[96]=c4cb.vdx)
031F  15 25 03                               JMP                           target=0x0325
0322  1C 61 3C                               VIDEO_TRANSITION_REF          ref=0x3C61 (MC[97]=c4cf.vdx)
0325  9A 08 B0 30 03                         STRCMP_NE_JMP                 start=v[0x008], values=[0], target=0x0330
032A  1C 6A 3C                               VIDEO_TRANSITION_REF          ref=0x3C6A (MC[106]=c9cb.vdx)
032D  15 33 03                               JMP                           target=0x0333
0330  1C 6B 3C                               VIDEO_TRANSITION_REF          ref=0x3C6B (MC[107]=c9cf.vdx)
0333  9A 06 B0 3E 03                         STRCMP_NE_JMP                 start=v[0x006], values=[0], target=0x033E
0338  9C 66 3C                               VIDEO_TRANSITION_REF          ref=0x3C66 (MC[102]=c7cb.vdx)
033B  15 41 03                               JMP                           target=0x0341
033E  9C 67 3C                               VIDEO_TRANSITION_REF          ref=0x3C67 (MC[103]=c7cf.vdx)
0341  9A 07 B1 4C 03                         STRCMP_NE_JMP                 start=v[0x007], values=[1], target=0x034C
0346  09 69 3C                               VIDEOREF                      ref=0x3C69 (MC[105]=c8cf.vdx)
0349  15 4F 03                               JMP                           target=0x034F
034C  09 68 3C                               VIDEOREF                      ref=0x3C68 (MC[104]=c8cb.vdx)
034F  9B 07 B1                               XOR_OBFUSCATE                 start=v[0x007], xor=[0x01]
0352  17 00                                  RET                           value=0x00
0354  1C 6C 3C                               VIDEO_TRANSITION_REF          ref=0x3C6C (MC[108]=crea.vdx)
0357  18 6A 02                               CALL                          target=0x026A
035A  9A 04 B0 65 03                         STRCMP_NE_JMP                 start=v[0x004], values=[0], target=0x0365
035F  9C 62 3C                               VIDEO_TRANSITION_REF          ref=0x3C62 (MC[98]=c5cb.vdx)
0362  15 68 03                               JMP                           target=0x0368
0365  9C 63 3C                               VIDEO_TRANSITION_REF          ref=0x3C63 (MC[99]=c5cf.vdx)
0368  9A 03 B0 73 03                         STRCMP_NE_JMP                 start=v[0x003], values=[0], target=0x0373
036D  9C 60 3C                               VIDEO_TRANSITION_REF          ref=0x3C60 (MC[96]=c4cb.vdx)
0370  15 76 03                               JMP                           target=0x0376
0373  9C 61 3C                               VIDEO_TRANSITION_REF          ref=0x3C61 (MC[97]=c4cf.vdx)
0376  9A 08 B0 81 03                         STRCMP_NE_JMP                 start=v[0x008], values=[0], target=0x0381
037B  9C 6A 3C                               VIDEO_TRANSITION_REF          ref=0x3C6A (MC[106]=c9cb.vdx)
037E  15 84 03                               JMP                           target=0x0384
0381  9C 6B 3C                               VIDEO_TRANSITION_REF          ref=0x3C6B (MC[107]=c9cf.vdx)
0384  9A 07 B0 8F 03                         STRCMP_NE_JMP                 start=v[0x007], values=[0], target=0x038F
0389  9C 68 3C                               VIDEO_TRANSITION_REF          ref=0x3C68 (MC[104]=c8cb.vdx)
038C  15 92 03                               JMP                           target=0x0392
038F  9C 69 3C                               VIDEO_TRANSITION_REF          ref=0x3C69 (MC[105]=c8cf.vdx)
0392  9A 06 B0 9D 03                         STRCMP_NE_JMP                 start=v[0x006], values=[0], target=0x039D
0397  9C 66 3C                               VIDEO_TRANSITION_REF          ref=0x3C66 (MC[102]=c7cb.vdx)
039A  15 A0 03                               JMP                           target=0x03A0
039D  9C 67 3C                               VIDEO_TRANSITION_REF          ref=0x3C67 (MC[103]=c7cf.vdx)
03A0  9A 05 B1 AB 03                         STRCMP_NE_JMP                 start=v[0x005], values=[1], target=0x03AB
03A5  09 65 3C                               VIDEOREF                      ref=0x3C65 (MC[101]=c6cf.vdx)
03A8  15 AE 03                               JMP                           target=0x03AE
03AB  09 64 3C                               VIDEOREF                      ref=0x3C64 (MC[100]=c6cb.vdx)
03AE  9B 05 B1                               XOR_OBFUSCATE                 start=v[0x005], xor=[0x01]
03B1  17 00                                  RET                           value=0x00
03B3  1C 6C 3C                               VIDEO_TRANSITION_REF          ref=0x3C6C (MC[108]=crea.vdx)
03B6  18 6A 02                               CALL                          target=0x026A
03B9  9A 05 B0 C4 03                         STRCMP_NE_JMP                 start=v[0x005], values=[0], target=0x03C4
03BE  1C 64 3C                               VIDEO_TRANSITION_REF          ref=0x3C64 (MC[100]=c6cb.vdx)
03C1  15 C7 03                               JMP                           target=0x03C7
03C4  1C 65 3C                               VIDEO_TRANSITION_REF          ref=0x3C65 (MC[101]=c6cf.vdx)
03C7  9A 04 B0 D2 03                         STRCMP_NE_JMP                 start=v[0x004], values=[0], target=0x03D2
03CC  1C 62 3C                               VIDEO_TRANSITION_REF          ref=0x3C62 (MC[98]=c5cb.vdx)
03CF  15 D5 03                               JMP                           target=0x03D5
03D2  1C 63 3C                               VIDEO_TRANSITION_REF          ref=0x3C63 (MC[99]=c5cf.vdx)
03D5  9A 03 B0 E0 03                         STRCMP_NE_JMP                 start=v[0x003], values=[0], target=0x03E0
03DA  1C 60 3C                               VIDEO_TRANSITION_REF          ref=0x3C60 (MC[96]=c4cb.vdx)
03DD  15 E3 03                               JMP                           target=0x03E3
03E0  1C 61 3C                               VIDEO_TRANSITION_REF          ref=0x3C61 (MC[97]=c4cf.vdx)
03E3  9A 08 B0 EE 03                         STRCMP_NE_JMP                 start=v[0x008], values=[0], target=0x03EE
03E8  1C 6A 3C                               VIDEO_TRANSITION_REF          ref=0x3C6A (MC[106]=c9cb.vdx)
03EB  15 F1 03                               JMP                           target=0x03F1
03EE  1C 6B 3C                               VIDEO_TRANSITION_REF          ref=0x3C6B (MC[107]=c9cf.vdx)
03F1  9A 07 B0 FC 03                         STRCMP_NE_JMP                 start=v[0x007], values=[0], target=0x03FC
03F6  1C 68 3C                               VIDEO_TRANSITION_REF          ref=0x3C68 (MC[104]=c8cb.vdx)
03F9  15 FF 03                               JMP                           target=0x03FF
03FC  1C 69 3C                               VIDEO_TRANSITION_REF          ref=0x3C69 (MC[105]=c8cf.vdx)
03FF  9A 06 B1 0A 04                         STRCMP_NE_JMP                 start=v[0x006], values=[1], target=0x040A
0404  09 67 3C                               VIDEOREF                      ref=0x3C67 (MC[103]=c7cf.vdx)
0407  15 0D 04                               JMP                           target=0x040D
040A  09 66 3C                               VIDEOREF                      ref=0x3C66 (MC[102]=c7cb.vdx)
040D  9B 06 B1                               XOR_OBFUSCATE                 start=v[0x006], xor=[0x01]
0410  17 00                                  RET                           value=0x00
0412  1C 6C 3C                               VIDEO_TRANSITION_REF          ref=0x3C6C (MC[108]=crea.vdx)
0415  18 6A 02                               CALL                          target=0x026A
0418  9A 05 B0 23 04                         STRCMP_NE_JMP                 start=v[0x005], values=[0], target=0x0423
041D  1C 64 3C                               VIDEO_TRANSITION_REF          ref=0x3C64 (MC[100]=c6cb.vdx)
0420  15 26 04                               JMP                           target=0x0426
0423  1C 65 3C                               VIDEO_TRANSITION_REF          ref=0x3C65 (MC[101]=c6cf.vdx)
0426  9A 04 B0 31 04                         STRCMP_NE_JMP                 start=v[0x004], values=[0], target=0x0431
042B  1C 62 3C                               VIDEO_TRANSITION_REF          ref=0x3C62 (MC[98]=c5cb.vdx)
042E  15 34 04                               JMP                           target=0x0434
0431  1C 63 3C                               VIDEO_TRANSITION_REF          ref=0x3C63 (MC[99]=c5cf.vdx)
0434  9A 03 B0 3F 04                         STRCMP_NE_JMP                 start=v[0x003], values=[0], target=0x043F
0439  1C 60 3C                               VIDEO_TRANSITION_REF          ref=0x3C60 (MC[96]=c4cb.vdx)
043C  15 42 04                               JMP                           target=0x0442
043F  1C 61 3C                               VIDEO_TRANSITION_REF          ref=0x3C61 (MC[97]=c4cf.vdx)
0442  9A 07 B0 4D 04                         STRCMP_NE_JMP                 start=v[0x007], values=[0], target=0x044D
0447  9C 68 3C                               VIDEO_TRANSITION_REF          ref=0x3C68 (MC[104]=c8cb.vdx)
044A  15 50 04                               JMP                           target=0x0450
044D  9C 69 3C                               VIDEO_TRANSITION_REF          ref=0x3C69 (MC[105]=c8cf.vdx)
0450  9A 06 B0 5B 04                         STRCMP_NE_JMP                 start=v[0x006], values=[0], target=0x045B
0455  9C 66 3C                               VIDEO_TRANSITION_REF          ref=0x3C66 (MC[102]=c7cb.vdx)
0458  15 5E 04                               JMP                           target=0x045E
045B  9C 67 3C                               VIDEO_TRANSITION_REF          ref=0x3C67 (MC[103]=c7cf.vdx)
045E  9A 08 B1 69 04                         STRCMP_NE_JMP                 start=v[0x008], values=[1], target=0x0469
0463  09 6B 3C                               VIDEOREF                      ref=0x3C6B (MC[107]=c9cf.vdx)
0466  15 6C 04                               JMP                           target=0x046C
0469  09 6A 3C                               VIDEOREF                      ref=0x3C6A (MC[106]=c9cb.vdx)
046C  9B 08 B1                               XOR_OBFUSCATE                 start=v[0x008], xor=[0x01]
046F  17 00                                  RET                           value=0x00
0471  1C 6C 3C                               VIDEO_TRANSITION_REF          ref=0x3C6C (MC[108]=crea.vdx)
0474  18 6A 02                               CALL                          target=0x026A
0477  9A 05 B0 82 04                         STRCMP_NE_JMP                 start=v[0x005], values=[0], target=0x0482
047C  1C 64 3C                               VIDEO_TRANSITION_REF          ref=0x3C64 (MC[100]=c6cb.vdx)
047F  15 85 04                               JMP                           target=0x0485
0482  1C 65 3C                               VIDEO_TRANSITION_REF          ref=0x3C65 (MC[101]=c6cf.vdx)
0485  9A 03 B0 90 04                         STRCMP_NE_JMP                 start=v[0x003], values=[0], target=0x0490
048A  9C 60 3C                               VIDEO_TRANSITION_REF          ref=0x3C60 (MC[96]=c4cb.vdx)
048D  15 93 04                               JMP                           target=0x0493
0490  9C 61 3C                               VIDEO_TRANSITION_REF          ref=0x3C61 (MC[97]=c4cf.vdx)
0493  9A 08 B0 9E 04                         STRCMP_NE_JMP                 start=v[0x008], values=[0], target=0x049E
0498  9C 6A 3C                               VIDEO_TRANSITION_REF          ref=0x3C6A (MC[106]=c9cb.vdx)
049B  15 A1 04                               JMP                           target=0x04A1
049E  9C 6B 3C                               VIDEO_TRANSITION_REF          ref=0x3C6B (MC[107]=c9cf.vdx)
04A1  9A 07 B0 AC 04                         STRCMP_NE_JMP                 start=v[0x007], values=[0], target=0x04AC
04A6  9C 68 3C                               VIDEO_TRANSITION_REF          ref=0x3C68 (MC[104]=c8cb.vdx)
04A9  15 AF 04                               JMP                           target=0x04AF
04AC  9C 69 3C                               VIDEO_TRANSITION_REF          ref=0x3C69 (MC[105]=c8cf.vdx)
04AF  9A 06 B0 BA 04                         STRCMP_NE_JMP                 start=v[0x006], values=[0], target=0x04BA
04B4  9C 66 3C                               VIDEO_TRANSITION_REF          ref=0x3C66 (MC[102]=c7cb.vdx)
04B7  15 BD 04                               JMP                           target=0x04BD
04BA  9C 67 3C                               VIDEO_TRANSITION_REF          ref=0x3C67 (MC[103]=c7cf.vdx)
04BD  9A 04 B1 C8 04                         STRCMP_NE_JMP                 start=v[0x004], values=[1], target=0x04C8
04C2  09 63 3C                               VIDEOREF                      ref=0x3C63 (MC[99]=c5cf.vdx)
04C5  15 CB 04                               JMP                           target=0x04CB
04C8  09 62 3C                               VIDEOREF                      ref=0x3C62 (MC[98]=c5cb.vdx)
04CB  9B 04 B1                               XOR_OBFUSCATE                 start=v[0x004], xor=[0x01]
04CE  17 00                                  RET                           value=0x00
04D0  1C 6C 3C                               VIDEO_TRANSITION_REF          ref=0x3C6C (MC[108]=crea.vdx)
04D3  9A 02 B0 DE 04                         STRCMP_NE_JMP                 start=v[0x002], values=[0], target=0x04DE
04D8  1C 5E 3C                               VIDEO_TRANSITION_REF          ref=0x3C5E (MC[94]=c3cb.vdx)
04DB  15 E1 04                               JMP                           target=0x04E1
04DE  1C 5F 3C                               VIDEO_TRANSITION_REF          ref=0x3C5F (MC[95]=c3cf.vdx)
04E1  9A 00 B0 EC 04                         STRCMP_NE_JMP                 start=v[0x000], values=[0], target=0x04EC
04E6  9C 5A 3C                               VIDEO_TRANSITION_REF          ref=0x3C5A (MC[90]=c1cb.vdx)
04E9  15 EF 04                               JMP                           target=0x04EF
04EC  9C 5B 3C                               VIDEO_TRANSITION_REF          ref=0x3C5B (MC[91]=c1cf.vdx)
04EF  9A 05 B0 FA 04                         STRCMP_NE_JMP                 start=v[0x005], values=[0], target=0x04FA
04F4  9C 64 3C                               VIDEO_TRANSITION_REF          ref=0x3C64 (MC[100]=c6cb.vdx)
04F7  15 FD 04                               JMP                           target=0x04FD
04FA  9C 65 3C                               VIDEO_TRANSITION_REF          ref=0x3C65 (MC[101]=c6cf.vdx)
04FD  9A 04 B0 08 05                         STRCMP_NE_JMP                 start=v[0x004], values=[0], target=0x0508
0502  9C 62 3C                               VIDEO_TRANSITION_REF          ref=0x3C62 (MC[98]=c5cb.vdx)
0505  15 0B 05                               JMP                           target=0x050B
0508  9C 63 3C                               VIDEO_TRANSITION_REF          ref=0x3C63 (MC[99]=c5cf.vdx)
050B  9A 03 B0 16 05                         STRCMP_NE_JMP                 start=v[0x003], values=[0], target=0x0516
0510  9C 60 3C                               VIDEO_TRANSITION_REF          ref=0x3C60 (MC[96]=c4cb.vdx)
0513  15 19 05                               JMP                           target=0x0519
0516  9C 61 3C                               VIDEO_TRANSITION_REF          ref=0x3C61 (MC[97]=c4cf.vdx)
0519  9A 06 B0 24 05                         STRCMP_NE_JMP                 start=v[0x006], values=[0], target=0x0524
051E  9C 66 3C                               VIDEO_TRANSITION_REF          ref=0x3C66 (MC[102]=c7cb.vdx)
0521  15 27 05                               JMP                           target=0x0527
0524  9C 67 3C                               VIDEO_TRANSITION_REF          ref=0x3C67 (MC[103]=c7cf.vdx)
0527  9A 07 B0 32 05                         STRCMP_NE_JMP                 start=v[0x007], values=[0], target=0x0532
052C  9C 68 3C                               VIDEO_TRANSITION_REF          ref=0x3C68 (MC[104]=c8cb.vdx)
052F  15 35 05                               JMP                           target=0x0535
0532  9C 69 3C                               VIDEO_TRANSITION_REF          ref=0x3C69 (MC[105]=c8cf.vdx)
0535  9A 08 B0 40 05                         STRCMP_NE_JMP                 start=v[0x008], values=[0], target=0x0540
053A  9C 6A 3C                               VIDEO_TRANSITION_REF          ref=0x3C6A (MC[106]=c9cb.vdx)
053D  15 43 05                               JMP                           target=0x0543
0540  9C 6B 3C                               VIDEO_TRANSITION_REF          ref=0x3C6B (MC[107]=c9cf.vdx)
0543  9A 01 B1 4E 05                         STRCMP_NE_JMP                 start=v[0x001], values=[1], target=0x054E
0548  09 5D 3C                               VIDEOREF                      ref=0x3C5D (MC[93]=c2cf.vdx)
054B  15 51 05                               JMP                           target=0x0551
054E  09 5C 3C                               VIDEOREF                      ref=0x3C5C (MC[92]=c2cb.vdx)
0551  9B 01 B1                               XOR_OBFUSCATE                 start=v[0x001], xor=[0x01]
0554  17 00                                  RET                           value=0x00
0556  1C 6C 3C                               VIDEO_TRANSITION_REF          ref=0x3C6C (MC[108]=crea.vdx)
0559  9A 01 B0 64 05                         STRCMP_NE_JMP                 start=v[0x001], values=[0], target=0x0564
055E  9C 5C 3C                               VIDEO_TRANSITION_REF          ref=0x3C5C (MC[92]=c2cb.vdx)
0561  15 67 05                               JMP                           target=0x0567
0564  9C 5D 3C                               VIDEO_TRANSITION_REF          ref=0x3C5D (MC[93]=c2cf.vdx)
0567  9A 00 B0 72 05                         STRCMP_NE_JMP                 start=v[0x000], values=[0], target=0x0572
056C  9C 5A 3C                               VIDEO_TRANSITION_REF          ref=0x3C5A (MC[90]=c1cb.vdx)
056F  15 75 05                               JMP                           target=0x0575
0572  9C 5B 3C                               VIDEO_TRANSITION_REF          ref=0x3C5B (MC[91]=c1cf.vdx)
0575  9A 05 B0 80 05                         STRCMP_NE_JMP                 start=v[0x005], values=[0], target=0x0580
057A  9C 64 3C                               VIDEO_TRANSITION_REF          ref=0x3C64 (MC[100]=c6cb.vdx)
057D  15 83 05                               JMP                           target=0x0583
0580  9C 65 3C                               VIDEO_TRANSITION_REF          ref=0x3C65 (MC[101]=c6cf.vdx)
0583  9A 04 B0 8E 05                         STRCMP_NE_JMP                 start=v[0x004], values=[0], target=0x058E
0588  9C 62 3C                               VIDEO_TRANSITION_REF          ref=0x3C62 (MC[98]=c5cb.vdx)
058B  15 91 05                               JMP                           target=0x0591
058E  9C 63 3C                               VIDEO_TRANSITION_REF          ref=0x3C63 (MC[99]=c5cf.vdx)
0591  9A 03 B0 9C 05                         STRCMP_NE_JMP                 start=v[0x003], values=[0], target=0x059C
0596  9C 60 3C                               VIDEO_TRANSITION_REF          ref=0x3C60 (MC[96]=c4cb.vdx)
0599  15 9F 05                               JMP                           target=0x059F
059C  9C 61 3C                               VIDEO_TRANSITION_REF          ref=0x3C61 (MC[97]=c4cf.vdx)
059F  9A 06 B0 AA 05                         STRCMP_NE_JMP                 start=v[0x006], values=[0], target=0x05AA
05A4  9C 66 3C                               VIDEO_TRANSITION_REF          ref=0x3C66 (MC[102]=c7cb.vdx)
05A7  15 AD 05                               JMP                           target=0x05AD
05AA  9C 67 3C                               VIDEO_TRANSITION_REF          ref=0x3C67 (MC[103]=c7cf.vdx)
05AD  9A 07 B0 B8 05                         STRCMP_NE_JMP                 start=v[0x007], values=[0], target=0x05B8
05B2  9C 68 3C                               VIDEO_TRANSITION_REF          ref=0x3C68 (MC[104]=c8cb.vdx)
05B5  15 BB 05                               JMP                           target=0x05BB
05B8  9C 69 3C                               VIDEO_TRANSITION_REF          ref=0x3C69 (MC[105]=c8cf.vdx)
05BB  9A 08 B0 C6 05                         STRCMP_NE_JMP                 start=v[0x008], values=[0], target=0x05C6
05C0  9C 6A 3C                               VIDEO_TRANSITION_REF          ref=0x3C6A (MC[106]=c9cb.vdx)
05C3  15 C9 05                               JMP                           target=0x05C9
05C6  9C 6B 3C                               VIDEO_TRANSITION_REF          ref=0x3C6B (MC[107]=c9cf.vdx)
05C9  9A 02 B1 D4 05                         STRCMP_NE_JMP                 start=v[0x002], values=[1], target=0x05D4
05CE  09 5F 3C                               VIDEOREF                      ref=0x3C5F (MC[95]=c3cf.vdx)
05D1  15 D7 05                               JMP                           target=0x05D7
05D4  09 5E 3C                               VIDEOREF                      ref=0x3C5E (MC[94]=c3cb.vdx)
05D7  9B 02 B1                               XOR_OBFUSCATE                 start=v[0x002], xor=[0x01]
05DA  17 00                                  RET                           value=0x00
05DC  1C 6C 3C                               VIDEO_TRANSITION_REF          ref=0x3C6C (MC[108]=crea.vdx)
05DF  9A 02 B0 EA 05                         STRCMP_NE_JMP                 start=v[0x002], values=[0], target=0x05EA
05E4  9C 5E 3C                               VIDEO_TRANSITION_REF          ref=0x3C5E (MC[94]=c3cb.vdx)
05E7  15 ED 05                               JMP                           target=0x05ED
05EA  9C 5F 3C                               VIDEO_TRANSITION_REF          ref=0x3C5F (MC[95]=c3cf.vdx)
05ED  9A 01 B0 F8 05                         STRCMP_NE_JMP                 start=v[0x001], values=[0], target=0x05F8
05F2  9C 5C 3C                               VIDEO_TRANSITION_REF          ref=0x3C5C (MC[92]=c2cb.vdx)
05F5  15 FB 05                               JMP                           target=0x05FB
05F8  9C 5D 3C                               VIDEO_TRANSITION_REF          ref=0x3C5D (MC[93]=c2cf.vdx)
05FB  9A 05 B0 06 06                         STRCMP_NE_JMP                 start=v[0x005], values=[0], target=0x0606
0600  9C 64 3C                               VIDEO_TRANSITION_REF          ref=0x3C64 (MC[100]=c6cb.vdx)
0603  15 09 06                               JMP                           target=0x0609
0606  9C 65 3C                               VIDEO_TRANSITION_REF          ref=0x3C65 (MC[101]=c6cf.vdx)
0609  9A 04 B0 14 06                         STRCMP_NE_JMP                 start=v[0x004], values=[0], target=0x0614
060E  9C 62 3C                               VIDEO_TRANSITION_REF          ref=0x3C62 (MC[98]=c5cb.vdx)
0611  15 17 06                               JMP                           target=0x0617
0614  9C 63 3C                               VIDEO_TRANSITION_REF          ref=0x3C63 (MC[99]=c5cf.vdx)
0617  9A 03 B0 22 06                         STRCMP_NE_JMP                 start=v[0x003], values=[0], target=0x0622
061C  9C 60 3C                               VIDEO_TRANSITION_REF          ref=0x3C60 (MC[96]=c4cb.vdx)
061F  15 25 06                               JMP                           target=0x0625
0622  9C 61 3C                               VIDEO_TRANSITION_REF          ref=0x3C61 (MC[97]=c4cf.vdx)
0625  9A 06 B0 30 06                         STRCMP_NE_JMP                 start=v[0x006], values=[0], target=0x0630
062A  9C 66 3C                               VIDEO_TRANSITION_REF          ref=0x3C66 (MC[102]=c7cb.vdx)
062D  15 33 06                               JMP                           target=0x0633
0630  9C 67 3C                               VIDEO_TRANSITION_REF          ref=0x3C67 (MC[103]=c7cf.vdx)
0633  9A 07 B0 3E 06                         STRCMP_NE_JMP                 start=v[0x007], values=[0], target=0x063E
0638  9C 68 3C                               VIDEO_TRANSITION_REF          ref=0x3C68 (MC[104]=c8cb.vdx)
063B  15 41 06                               JMP                           target=0x0641
063E  9C 69 3C                               VIDEO_TRANSITION_REF          ref=0x3C69 (MC[105]=c8cf.vdx)
0641  9A 08 B0 4C 06                         STRCMP_NE_JMP                 start=v[0x008], values=[0], target=0x064C
0646  9C 6A 3C                               VIDEO_TRANSITION_REF          ref=0x3C6A (MC[106]=c9cb.vdx)
0649  15 4F 06                               JMP                           target=0x064F
064C  9C 6B 3C                               VIDEO_TRANSITION_REF          ref=0x3C6B (MC[107]=c9cf.vdx)
064F  9A 00 B1 5A 06                         STRCMP_NE_JMP                 start=v[0x000], values=[1], target=0x065A
0654  09 5B 3C                               VIDEOREF                      ref=0x3C5B (MC[91]=c1cf.vdx)
0657  15 5D 06                               JMP                           target=0x065D
065A  09 5A 3C                               VIDEOREF                      ref=0x3C5A (MC[90]=c1cb.vdx)
065D  9B 00 B1                               XOR_OBFUSCATE                 start=v[0x000], xor=[0x01]
0660  17 00                                  RET                           value=0x00
0662  43 01                                  RETURNSCRIPT                  value=0x01
0664  0A                                     VIDEOFLAG5_ON
0665  07                                     VIDEOFLAG7_ON
0666  46                                     RESOURCE_CONTEXT_SAVE
0667  09 01 24                               VIDEOREF                      ref=0x2401 (INTRO[1]=fade.vdx)
066A  37 00 00 50 00 7F 02 8F 01             COPY_RECT_TO_BG               left=0x0000, top=0x0050, right=0x027F, bottom=0x018F
0673  47                                     RESOURCE_CONTEXT_RESTORE
0674  17 00                                  RET                           value=0x00
