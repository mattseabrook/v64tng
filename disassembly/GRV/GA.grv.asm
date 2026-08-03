; T7G/GA.GRV
; size=2442 sha256=881faed7d1afad002351f7c22f3d68df0e5d77eb8be43a1126bc7b82edce51d2
; instructions=477 input_loops=1

0000  01                                     RESERVED_01
0001  02 1C 4C                               PLAYSONG                      ref=0x4C1C (XMI[28]=gu31.xmi)
0004  08 1C 4C                               SETBACKGROUNDSONG             ref=0x4C1C (XMI[28]=gu31.xmi)
0007  16 03 01 B0                            LOADSTRING                    dst=v[0x103], values=[0]
000B  16 07 01 B0                            LOADSTRING                    dst=v[0x107], values=[0]
000F  46                                     RESOURCE_CONTEXT_SAVE
0010  9A F0 B4 18 00                         STRCMP_NE_JMP                 start=v[0x0F0], values=[4], target=0x0018
0015  96 F0 B5                               LOADSTRING                    dst=v[0x0F0], values=[5]
0018  9A F0 B2 20 00                         STRCMP_NE_JMP                 start=v[0x0F0], values=[2], target=0x0020
001D  96 F0 B3                               LOADSTRING                    dst=v[0x0F0], values=[3]
0020  9A F0 B0 2D 00                         STRCMP_NE_JMP                 start=v[0x0F0], values=[0], target=0x002D
0025  07                                     VIDEOFLAG7_ON
0026  0A                                     VIDEOFLAG5_ON
0027  09 4F 50                               VIDEOREF                      ref=0x504F (GAMWAV[79]=12_s_1.vdx)
002A  96 F0 B1                               LOADSTRING                    dst=v[0x0F0], values=[1]
002D  47                                     RESOURCE_CONTEXT_RESTORE
002E  2C D5 03 08                            SET_HOTSPOT_TOP               target=0x03D5, cursor=0x08
0032  44 BE 03                               SET_HOTSPOT_RIGHT             target=0x03BE
0035  45 BE 03                               SET_HOTSPOT_LEFT              target=0x03BE
0038  2D E6 03 06                            SET_HOTSPOT_BOTTOM            target=0x03E6, cursor=0x06
003C  96 00 30 30 30 30 30 30 30 B0          LOADSTRING                    dst=v[0x000], values=[0, 0, 0, 0, 0, 0, 0, 0]
0046  96 19 B0                               LOADSTRING                    dst=v[0x019], values=[0]
0049  28 0A 18                               RESERVED_28                   value=0x180A
004C  1C 0A 18                               VIDEO_TRANSITION_REF          ref=0x180A (GA[10]=gaback.vdx)
004F  9A 19 B8 6E 00                         STRCMP_NE_JMP                 start=v[0x019], values=[8], target=0x006E
0054  1C 0A 18                               VIDEO_TRANSITION_REF          ref=0x180A (GA[10]=gaback.vdx)
0057  18 78 09                               CALL                          target=0x0978
005A  96 F0 E1                               LOADSTRING                    dst=v[0x0F0], values=[49]
005D  1A 00 01 B0 69 00                      STRCMP_NE_JMP                 start=v[0x100], values=[0], target=0x0069
0063  08 0C 4C                               SETBACKGROUNDSONG             ref=0x4C0C (XMI[12]=gu16.xmi)
0066  15 6C 00                               JMP                           target=0x006C
0069  08 00 4C                               SETBACKGROUNDSONG             ref=0x4C00 (XMI[0]=agu16.xmi)
006C  43 00                                  RETURNSCRIPT                  value=0x00
006E  0B                                     INPUTLOOPSTART
006F  0D 88 00 47 01 B2 00 73 01 F5 03 0A    HOTSPOT_RECT                  left=0x0088, top=0x0147, right=0x00B2, bottom=0x0173, target=0x03F5, cursor=0x0A
007B  0D 93 00 1C 01 B9 00 46 01 FC 03 09    HOTSPOT_RECT                  left=0x0093, top=0x011C, right=0x00B9, bottom=0x0146, target=0x03FC, cursor=0x09
0087  0D 9C 00 F7 00 C0 00 1C 01 03 04 0A    HOTSPOT_RECT                  left=0x009C, top=0x00F7, right=0x00C0, bottom=0x011C, target=0x0403, cursor=0x0A
0093  0D A4 00 D3 00 C7 00 F6 00 0A 04 09    HOTSPOT_RECT                  left=0x00A4, top=0x00D3, right=0x00C7, bottom=0x00F6, target=0x040A, cursor=0x09
009F  0D AB 00 B5 00 CC 00 D4 00 11 04 0A    HOTSPOT_RECT                  left=0x00AB, top=0x00B5, right=0x00CC, bottom=0x00D4, target=0x0411, cursor=0x0A
00AB  0D B3 00 99 00 D2 00 B5 00 18 04 09    HOTSPOT_RECT                  left=0x00B3, top=0x0099, right=0x00D2, bottom=0x00B5, target=0x0418, cursor=0x09
00B7  0D B8 00 80 00 D7 00 99 00 1F 04 0A    HOTSPOT_RECT                  left=0x00B8, top=0x0080, right=0x00D7, bottom=0x0099, target=0x041F, cursor=0x0A
00C3  0D BE 00 67 00 DC 00 7F 00 26 04 09    HOTSPOT_RECT                  left=0x00BE, top=0x0067, right=0x00DC, bottom=0x007F, target=0x0426, cursor=0x09
00CF  0D B9 00 46 01 E4 00 73 01 2D 04 09    HOTSPOT_RECT                  left=0x00B9, top=0x0146, right=0x00E4, bottom=0x0173, target=0x042D, cursor=0x09
00DB  0D C1 00 1C 01 E9 00 46 01 34 04 0A    HOTSPOT_RECT                  left=0x00C1, top=0x011C, right=0x00E9, bottom=0x0146, target=0x0434, cursor=0x0A
00E7  0D C7 00 F5 00 EE 00 1C 01 3B 04 09    HOTSPOT_RECT                  left=0x00C7, top=0x00F5, right=0x00EE, bottom=0x011C, target=0x043B, cursor=0x09
00F3  0D CE 00 D4 00 F3 00 F6 00 42 04 0A    HOTSPOT_RECT                  left=0x00CE, top=0x00D4, right=0x00F3, bottom=0x00F6, target=0x0442, cursor=0x0A
00FF  0D D3 00 B5 00 F6 00 D4 00 49 04 09    HOTSPOT_RECT                  left=0x00D3, top=0x00B5, right=0x00F6, bottom=0x00D4, target=0x0449, cursor=0x09
010B  0D D8 00 99 00 F9 00 B5 00 50 04 0A    HOTSPOT_RECT                  left=0x00D8, top=0x0099, right=0x00F9, bottom=0x00B5, target=0x0450, cursor=0x0A
0117  0D DC 00 7F 00 FD 00 99 00 57 04 09    HOTSPOT_RECT                  left=0x00DC, top=0x007F, right=0x00FD, bottom=0x0099, target=0x0457, cursor=0x09
0123  0D E2 00 68 00 FF 00 7F 00 5E 04 0A    HOTSPOT_RECT                  left=0x00E2, top=0x0068, right=0x00FF, bottom=0x007F, target=0x045E, cursor=0x0A
012F  0D EA 00 46 01 17 01 72 01 65 04 0A    HOTSPOT_RECT                  left=0x00EA, top=0x0146, right=0x0117, bottom=0x0172, target=0x0465, cursor=0x0A
013B  0D EE 00 1B 01 1A 01 47 01 6C 04 09    HOTSPOT_RECT                  left=0x00EE, top=0x011B, right=0x011A, bottom=0x0147, target=0x046C, cursor=0x09
0147  0D F3 00 F7 00 1B 01 1C 01 73 04 0A    HOTSPOT_RECT                  left=0x00F3, top=0x00F7, right=0x011B, bottom=0x011C, target=0x0473, cursor=0x0A
0153  0D F6 00 D4 00 1D 01 F6 00 7A 04 09    HOTSPOT_RECT                  left=0x00F6, top=0x00D4, right=0x011D, bottom=0x00F6, target=0x047A, cursor=0x09
015F  0D FA 00 B5 00 1F 01 D3 00 81 04 0A    HOTSPOT_RECT                  left=0x00FA, top=0x00B5, right=0x011F, bottom=0x00D3, target=0x0481, cursor=0x0A
016B  0D FD 00 99 00 21 01 B5 00 88 04 09    HOTSPOT_RECT                  left=0x00FD, top=0x0099, right=0x0121, bottom=0x00B5, target=0x0488, cursor=0x09
0177  0D 01 01 7F 00 22 01 99 00 8F 04 0A    HOTSPOT_RECT                  left=0x0101, top=0x007F, right=0x0122, bottom=0x0099, target=0x048F, cursor=0x0A
0183  0D 03 01 67 00 23 01 7F 00 96 04 09    HOTSPOT_RECT                  left=0x0103, top=0x0067, right=0x0123, bottom=0x007F, target=0x0496, cursor=0x09
018F  0D 1A 01 46 01 4A 01 72 01 9D 04 09    HOTSPOT_RECT                  left=0x011A, top=0x0146, right=0x014A, bottom=0x0172, target=0x049D, cursor=0x09
019B  0D 1C 01 1C 01 48 01 46 01 A4 04 0A    HOTSPOT_RECT                  left=0x011C, top=0x011C, right=0x0148, bottom=0x0146, target=0x04A4, cursor=0x0A
01A7  0D 1E 01 F6 00 49 01 1C 01 AB 04 09    HOTSPOT_RECT                  left=0x011E, top=0x00F6, right=0x0149, bottom=0x011C, target=0x04AB, cursor=0x09
01B3  0D 20 01 D4 00 47 01 F6 00 B2 04 0A    HOTSPOT_RECT                  left=0x0120, top=0x00D4, right=0x0147, bottom=0x00F6, target=0x04B2, cursor=0x0A
01BF  0D 22 01 B5 00 47 01 D4 00 B9 04 09    HOTSPOT_RECT                  left=0x0122, top=0x00B5, right=0x0147, bottom=0x00D4, target=0x04B9, cursor=0x09
01CB  0D 23 01 99 00 48 01 B5 00 C0 04 0A    HOTSPOT_RECT                  left=0x0123, top=0x0099, right=0x0148, bottom=0x00B5, target=0x04C0, cursor=0x0A
01D7  0D 23 01 7F 00 47 01 99 00 C7 04 09    HOTSPOT_RECT                  left=0x0123, top=0x007F, right=0x0147, bottom=0x0099, target=0x04C7, cursor=0x09
01E3  0D 25 01 68 00 47 01 7F 00 CE 04 0A    HOTSPOT_RECT                  left=0x0125, top=0x0068, right=0x0147, bottom=0x007F, target=0x04CE, cursor=0x0A
01EF  0D 4A 01 46 01 7A 01 72 01 D5 04 0A    HOTSPOT_RECT                  left=0x014A, top=0x0146, right=0x017A, bottom=0x0172, target=0x04D5, cursor=0x0A
01FB  0D 4A 01 1C 01 79 01 46 01 DC 04 09    HOTSPOT_RECT                  left=0x014A, top=0x011C, right=0x0179, bottom=0x0146, target=0x04DC, cursor=0x09
0207  0D 4A 01 F6 00 75 01 1C 01 E3 04 0A    HOTSPOT_RECT                  left=0x014A, top=0x00F6, right=0x0175, bottom=0x011C, target=0x04E3, cursor=0x0A
0213  0D 49 01 D4 00 71 01 F6 00 EA 04 09    HOTSPOT_RECT                  left=0x0149, top=0x00D4, right=0x0171, bottom=0x00F6, target=0x04EA, cursor=0x09
021F  0D 49 01 B5 00 70 01 D4 00 F1 04 0A    HOTSPOT_RECT                  left=0x0149, top=0x00B5, right=0x0170, bottom=0x00D4, target=0x04F1, cursor=0x0A
022B  0D 48 01 98 00 6E 01 B5 00 F8 04 09    HOTSPOT_RECT                  left=0x0148, top=0x0098, right=0x016E, bottom=0x00B5, target=0x04F8, cursor=0x09
0237  0D 48 01 7E 00 6B 01 99 00 FF 04 0A    HOTSPOT_RECT                  left=0x0148, top=0x007E, right=0x016B, bottom=0x0099, target=0x04FF, cursor=0x0A
0243  0D 48 01 68 00 6B 01 7F 00 06 05 09    HOTSPOT_RECT                  left=0x0148, top=0x0068, right=0x016B, bottom=0x007F, target=0x0506, cursor=0x09
024F  0D 7D 01 46 01 AB 01 72 01 0D 05 09    HOTSPOT_RECT                  left=0x017D, top=0x0146, right=0x01AB, bottom=0x0172, target=0x050D, cursor=0x09
025B  0D 7A 01 1C 01 A3 01 46 01 14 05 0A    HOTSPOT_RECT                  left=0x017A, top=0x011C, right=0x01A3, bottom=0x0146, target=0x0514, cursor=0x0A
0267  0D 77 01 F6 00 A0 01 1C 01 1B 05 09    HOTSPOT_RECT                  left=0x0177, top=0x00F6, right=0x01A0, bottom=0x011C, target=0x051B, cursor=0x09
0273  0D 74 01 D4 00 9C 01 F6 00 22 05 0A    HOTSPOT_RECT                  left=0x0174, top=0x00D4, right=0x019C, bottom=0x00F6, target=0x0522, cursor=0x0A
027F  0D 72 01 B6 00 96 01 D3 00 29 05 09    HOTSPOT_RECT                  left=0x0172, top=0x00B6, right=0x0196, bottom=0x00D3, target=0x0529, cursor=0x09
028B  0D 6F 01 99 00 92 01 B5 00 30 05 0A    HOTSPOT_RECT                  left=0x016F, top=0x0099, right=0x0192, bottom=0x00B5, target=0x0530, cursor=0x0A
0297  0D 6D 01 7F 00 8F 01 99 00 37 05 09    HOTSPOT_RECT                  left=0x016D, top=0x007F, right=0x018F, bottom=0x0099, target=0x0537, cursor=0x09
02A3  0D 6C 01 68 00 8C 01 7F 00 3E 05 0A    HOTSPOT_RECT                  left=0x016C, top=0x0068, right=0x018C, bottom=0x007F, target=0x053E, cursor=0x0A
02AF  0D B1 01 46 01 DB 01 72 01 45 05 0A    HOTSPOT_RECT                  left=0x01B1, top=0x0146, right=0x01DB, bottom=0x0172, target=0x0545, cursor=0x0A
02BB  0D AA 01 1B 01 D3 01 46 01 4C 05 09    HOTSPOT_RECT                  left=0x01AA, top=0x011B, right=0x01D3, bottom=0x0146, target=0x054C, cursor=0x09
02C7  0D A4 01 F6 00 CA 01 1C 01 53 05 0A    HOTSPOT_RECT                  left=0x01A4, top=0x00F6, right=0x01CA, bottom=0x011C, target=0x0553, cursor=0x0A
02D3  0D 9F 01 D3 00 C4 01 F6 00 5A 05 09    HOTSPOT_RECT                  left=0x019F, top=0x00D3, right=0x01C4, bottom=0x00F6, target=0x055A, cursor=0x09
02DF  0D 9A 01 B4 00 BE 01 D4 00 61 05 0A    HOTSPOT_RECT                  left=0x019A, top=0x00B4, right=0x01BE, bottom=0x00D4, target=0x0561, cursor=0x0A
02EB  0D 96 01 98 00 B8 01 B5 00 68 05 09    HOTSPOT_RECT                  left=0x0196, top=0x0098, right=0x01B8, bottom=0x00B5, target=0x0568, cursor=0x09
02F7  0D 93 01 7F 00 B3 01 99 00 6F 05 0A    HOTSPOT_RECT                  left=0x0193, top=0x007F, right=0x01B3, bottom=0x0099, target=0x056F, cursor=0x0A
0303  0D 8F 01 67 00 AE 01 7F 00 76 05 09    HOTSPOT_RECT                  left=0x018F, top=0x0067, right=0x01AE, bottom=0x007F, target=0x0576, cursor=0x09
030F  0D E3 01 46 01 18 02 71 01 7D 05 09    HOTSPOT_RECT                  left=0x01E3, top=0x0146, right=0x0218, bottom=0x0171, target=0x057D, cursor=0x09
031B  0D DA 01 1B 01 0B 02 45 01 84 05 0A    HOTSPOT_RECT                  left=0x01DA, top=0x011B, right=0x020B, bottom=0x0145, target=0x0584, cursor=0x0A
0327  0D D2 01 F6 00 FF 01 1C 01 8B 05 09    HOTSPOT_RECT                  left=0x01D2, top=0x00F6, right=0x01FF, bottom=0x011C, target=0x058B, cursor=0x09
0333  0D CB 01 D4 00 F6 01 F6 00 92 05 0A    HOTSPOT_RECT                  left=0x01CB, top=0x00D4, right=0x01F6, bottom=0x00F6, target=0x0592, cursor=0x0A
033F  0D C4 01 B5 00 ED 01 D4 00 99 05 09    HOTSPOT_RECT                  left=0x01C4, top=0x00B5, right=0x01ED, bottom=0x00D4, target=0x0599, cursor=0x09
034B  0D BD 01 99 00 E6 01 B6 00 A0 05 0A    HOTSPOT_RECT                  left=0x01BD, top=0x0099, right=0x01E6, bottom=0x00B6, target=0x05A0, cursor=0x0A
0357  0D B8 01 7E 00 DD 01 99 00 A7 05 09    HOTSPOT_RECT                  left=0x01B8, top=0x007E, right=0x01DD, bottom=0x0099, target=0x05A7, cursor=0x09
0363  0D B3 01 67 00 D7 01 7F 00 AE 05 0A    HOTSPOT_RECT                  left=0x01B3, top=0x0067, right=0x01D7, bottom=0x007F, target=0x05AE, cursor=0x0A
036F  36 03 01 E3 89 03                      CHAR_LESS_JMP                 start=v[0x103], values=[51], target=0x0389
0375  1A 07 01 B1 89 03                      STRCMP_NE_JMP                 start=v[0x107], values=[1], target=0x0389
037B  46                                     RESOURCE_CONTEXT_SAVE
037C  16 03 01 B0                            LOADSTRING                    dst=v[0x103], values=[0]
0380  16 07 01 B2                            LOADSTRING                    dst=v[0x107], values=[2]
0384  07                                     VIDEOFLAG7_ON
0385  09 4D 50                               VIDEOREF                      ref=0x504D (GAMWAV[77]=12_e_4.vdx)
0388  47                                     RESOURCE_CONTEXT_RESTORE
0389  36 03 01 F9 A3 03                      CHAR_LESS_JMP                 start=v[0x103], values=[73], target=0x03A3
038F  1A 07 01 B2 A3 03                      STRCMP_NE_JMP                 start=v[0x107], values=[2], target=0x03A3
0395  46                                     RESOURCE_CONTEXT_SAVE
0396  16 03 01 B0                            LOADSTRING                    dst=v[0x103], values=[0]
039A  16 07 01 B3                            LOADSTRING                    dst=v[0x107], values=[3]
039E  07                                     VIDEOFLAG7_ON
039F  09 49 50                               VIDEOREF                      ref=0x5049 (GAMWAV[73]=11_s_5.vdx)
03A2  47                                     RESOURCE_CONTEXT_RESTORE
03A3  36 03 01 E3 BD 03                      CHAR_LESS_JMP                 start=v[0x103], values=[51], target=0x03BD
03A9  1A 07 01 B0 BD 03                      STRCMP_NE_JMP                 start=v[0x107], values=[0], target=0x03BD
03AF  46                                     RESOURCE_CONTEXT_SAVE
03B0  16 03 01 B0                            LOADSTRING                    dst=v[0x103], values=[0]
03B4  16 07 01 B1                            LOADSTRING                    dst=v[0x107], values=[1]
03B8  07                                     VIDEOFLAG7_ON
03B9  09 4C 50                               VIDEOREF                      ref=0x504C (GAMWAV[76]=12_e_3.vdx)
03BC  47                                     RESOURCE_CONTEXT_RESTORE
03BD  13                                     INPUTLOOPEND
03BE  1C 0A 18                               VIDEO_TRANSITION_REF          ref=0x180A (GA[10]=gaback.vdx)
03C1  18 78 09                               CALL                          target=0x0978
03C4  1A 00 01 B0 D0 03                      STRCMP_NE_JMP                 start=v[0x100], values=[0], target=0x03D0
03CA  08 0C 4C                               SETBACKGROUNDSONG             ref=0x4C0C (XMI[12]=gu16.xmi)
03CD  15 D3 03                               JMP                           target=0x03D3
03D0  08 00 4C                               SETBACKGROUNDSONG             ref=0x4C00 (XMI[0]=agu16.xmi)
03D3  43 00                                  RETURNSCRIPT                  value=0x00
03D5  1A 00 01 B0 E1 03                      STRCMP_NE_JMP                 start=v[0x100], values=[0], target=0x03E1
03DB  08 0C 4C                               SETBACKGROUNDSONG             ref=0x4C0C (XMI[12]=gu16.xmi)
03DE  15 E4 03                               JMP                           target=0x03E4
03E1  08 00 4C                               SETBACKGROUNDSONG             ref=0x4C00 (XMI[0]=agu16.xmi)
03E4  43 01                                  RETURNSCRIPT                  value=0x01
03E6  07                                     VIDEOFLAG7_ON
03E7  46                                     RESOURCE_CONTEXT_SAVE
03E8  09 8B 50                               VIDEOREF                      ref=0x508B (GAMWAV[139]=gen_e_5.vdx)
03EB  47                                     RESOURCE_CONTEXT_RESTORE
03EC  1C 0A 18                               VIDEO_TRANSITION_REF          ref=0x180A (GA[10]=gaback.vdx)
03EF  18 78 09                               CALL                          target=0x0978
03F2  15 01 00                               JMP                           target=0x0001
03F5  96 17 61 B1                            LOADSTRING                    dst=v[0x017], values=[49, 1]
03F9  15 B5 05                               JMP                           target=0x05B5
03FC  96 17 61 B2                            LOADSTRING                    dst=v[0x017], values=[49, 2]
0400  15 B5 05                               JMP                           target=0x05B5
0403  96 17 61 B3                            LOADSTRING                    dst=v[0x017], values=[49, 3]
0407  15 B5 05                               JMP                           target=0x05B5
040A  96 17 61 B4                            LOADSTRING                    dst=v[0x017], values=[49, 4]
040E  15 B5 05                               JMP                           target=0x05B5
0411  96 17 61 B5                            LOADSTRING                    dst=v[0x017], values=[49, 5]
0415  15 B5 05                               JMP                           target=0x05B5
0418  96 17 61 B6                            LOADSTRING                    dst=v[0x017], values=[49, 6]
041C  15 B5 05                               JMP                           target=0x05B5
041F  96 17 61 B7                            LOADSTRING                    dst=v[0x017], values=[49, 7]
0423  15 B5 05                               JMP                           target=0x05B5
0426  96 17 61 B8                            LOADSTRING                    dst=v[0x017], values=[49, 8]
042A  15 B5 05                               JMP                           target=0x05B5
042D  96 17 62 B1                            LOADSTRING                    dst=v[0x017], values=[50, 1]
0431  15 B5 05                               JMP                           target=0x05B5
0434  96 17 62 B2                            LOADSTRING                    dst=v[0x017], values=[50, 2]
0438  15 B5 05                               JMP                           target=0x05B5
043B  96 17 62 B3                            LOADSTRING                    dst=v[0x017], values=[50, 3]
043F  15 B5 05                               JMP                           target=0x05B5
0442  96 17 62 B4                            LOADSTRING                    dst=v[0x017], values=[50, 4]
0446  15 B5 05                               JMP                           target=0x05B5
0449  96 17 62 B5                            LOADSTRING                    dst=v[0x017], values=[50, 5]
044D  15 B5 05                               JMP                           target=0x05B5
0450  96 17 62 B6                            LOADSTRING                    dst=v[0x017], values=[50, 6]
0454  15 B5 05                               JMP                           target=0x05B5
0457  96 17 62 B7                            LOADSTRING                    dst=v[0x017], values=[50, 7]
045B  15 B5 05                               JMP                           target=0x05B5
045E  96 17 62 B8                            LOADSTRING                    dst=v[0x017], values=[50, 8]
0462  15 B5 05                               JMP                           target=0x05B5
0465  96 17 63 B1                            LOADSTRING                    dst=v[0x017], values=[51, 1]
0469  15 B5 05                               JMP                           target=0x05B5
046C  96 17 63 B2                            LOADSTRING                    dst=v[0x017], values=[51, 2]
0470  15 B5 05                               JMP                           target=0x05B5
0473  96 17 63 B3                            LOADSTRING                    dst=v[0x017], values=[51, 3]
0477  15 B5 05                               JMP                           target=0x05B5
047A  96 17 63 B4                            LOADSTRING                    dst=v[0x017], values=[51, 4]
047E  15 B5 05                               JMP                           target=0x05B5
0481  96 17 63 B5                            LOADSTRING                    dst=v[0x017], values=[51, 5]
0485  15 B5 05                               JMP                           target=0x05B5
0488  96 17 63 B6                            LOADSTRING                    dst=v[0x017], values=[51, 6]
048C  15 B5 05                               JMP                           target=0x05B5
048F  96 17 63 B7                            LOADSTRING                    dst=v[0x017], values=[51, 7]
0493  15 B5 05                               JMP                           target=0x05B5
0496  96 17 63 B8                            LOADSTRING                    dst=v[0x017], values=[51, 8]
049A  15 B5 05                               JMP                           target=0x05B5
049D  96 17 64 B1                            LOADSTRING                    dst=v[0x017], values=[52, 1]
04A1  15 B5 05                               JMP                           target=0x05B5
04A4  96 17 64 B2                            LOADSTRING                    dst=v[0x017], values=[52, 2]
04A8  15 B5 05                               JMP                           target=0x05B5
04AB  96 17 64 B3                            LOADSTRING                    dst=v[0x017], values=[52, 3]
04AF  15 B5 05                               JMP                           target=0x05B5
04B2  96 17 64 B4                            LOADSTRING                    dst=v[0x017], values=[52, 4]
04B6  15 B5 05                               JMP                           target=0x05B5
04B9  96 17 64 B5                            LOADSTRING                    dst=v[0x017], values=[52, 5]
04BD  15 B5 05                               JMP                           target=0x05B5
04C0  96 17 64 B6                            LOADSTRING                    dst=v[0x017], values=[52, 6]
04C4  15 B5 05                               JMP                           target=0x05B5
04C7  96 17 64 B7                            LOADSTRING                    dst=v[0x017], values=[52, 7]
04CB  15 B5 05                               JMP                           target=0x05B5
04CE  96 17 64 B8                            LOADSTRING                    dst=v[0x017], values=[52, 8]
04D2  15 B5 05                               JMP                           target=0x05B5
04D5  96 17 65 B1                            LOADSTRING                    dst=v[0x017], values=[53, 1]
04D9  15 B5 05                               JMP                           target=0x05B5
04DC  96 17 65 B2                            LOADSTRING                    dst=v[0x017], values=[53, 2]
04E0  15 B5 05                               JMP                           target=0x05B5
04E3  96 17 65 B3                            LOADSTRING                    dst=v[0x017], values=[53, 3]
04E7  15 B5 05                               JMP                           target=0x05B5
04EA  96 17 65 B4                            LOADSTRING                    dst=v[0x017], values=[53, 4]
04EE  15 B5 05                               JMP                           target=0x05B5
04F1  96 17 65 B5                            LOADSTRING                    dst=v[0x017], values=[53, 5]
04F5  15 B5 05                               JMP                           target=0x05B5
04F8  96 17 65 B6                            LOADSTRING                    dst=v[0x017], values=[53, 6]
04FC  15 B5 05                               JMP                           target=0x05B5
04FF  96 17 65 B7                            LOADSTRING                    dst=v[0x017], values=[53, 7]
0503  15 B5 05                               JMP                           target=0x05B5
0506  96 17 65 B8                            LOADSTRING                    dst=v[0x017], values=[53, 8]
050A  15 B5 05                               JMP                           target=0x05B5
050D  96 17 66 B1                            LOADSTRING                    dst=v[0x017], values=[54, 1]
0511  15 B5 05                               JMP                           target=0x05B5
0514  96 17 66 B2                            LOADSTRING                    dst=v[0x017], values=[54, 2]
0518  15 B5 05                               JMP                           target=0x05B5
051B  96 17 66 B3                            LOADSTRING                    dst=v[0x017], values=[54, 3]
051F  15 B5 05                               JMP                           target=0x05B5
0522  96 17 66 B4                            LOADSTRING                    dst=v[0x017], values=[54, 4]
0526  15 B5 05                               JMP                           target=0x05B5
0529  96 17 66 B5                            LOADSTRING                    dst=v[0x017], values=[54, 5]
052D  15 B5 05                               JMP                           target=0x05B5
0530  96 17 66 B6                            LOADSTRING                    dst=v[0x017], values=[54, 6]
0534  15 B5 05                               JMP                           target=0x05B5
0537  96 17 66 B7                            LOADSTRING                    dst=v[0x017], values=[54, 7]
053B  15 B5 05                               JMP                           target=0x05B5
053E  96 17 66 B8                            LOADSTRING                    dst=v[0x017], values=[54, 8]
0542  15 B5 05                               JMP                           target=0x05B5
0545  96 17 67 B1                            LOADSTRING                    dst=v[0x017], values=[55, 1]
0549  15 B5 05                               JMP                           target=0x05B5
054C  96 17 67 B2                            LOADSTRING                    dst=v[0x017], values=[55, 2]
0550  15 B5 05                               JMP                           target=0x05B5
0553  96 17 67 B3                            LOADSTRING                    dst=v[0x017], values=[55, 3]
0557  15 B5 05                               JMP                           target=0x05B5
055A  96 17 67 B4                            LOADSTRING                    dst=v[0x017], values=[55, 4]
055E  15 B5 05                               JMP                           target=0x05B5
0561  96 17 67 B5                            LOADSTRING                    dst=v[0x017], values=[55, 5]
0565  15 B5 05                               JMP                           target=0x05B5
0568  96 17 67 B6                            LOADSTRING                    dst=v[0x017], values=[55, 6]
056C  15 B5 05                               JMP                           target=0x05B5
056F  96 17 67 B7                            LOADSTRING                    dst=v[0x017], values=[55, 7]
0573  15 B5 05                               JMP                           target=0x05B5
0576  96 17 67 B8                            LOADSTRING                    dst=v[0x017], values=[55, 8]
057A  15 B5 05                               JMP                           target=0x05B5
057D  96 17 68 B1                            LOADSTRING                    dst=v[0x017], values=[56, 1]
0581  15 B5 05                               JMP                           target=0x05B5
0584  96 17 68 B2                            LOADSTRING                    dst=v[0x017], values=[56, 2]
0588  15 B5 05                               JMP                           target=0x05B5
058B  96 17 68 B3                            LOADSTRING                    dst=v[0x017], values=[56, 3]
058F  15 B5 05                               JMP                           target=0x05B5
0592  96 17 68 B4                            LOADSTRING                    dst=v[0x017], values=[56, 4]
0596  15 B5 05                               JMP                           target=0x05B5
0599  96 17 68 B5                            LOADSTRING                    dst=v[0x017], values=[56, 5]
059D  15 B5 05                               JMP                           target=0x05B5
05A0  96 17 68 B6                            LOADSTRING                    dst=v[0x017], values=[56, 6]
05A4  15 B5 05                               JMP                           target=0x05B5
05A7  96 17 68 B7                            LOADSTRING                    dst=v[0x017], values=[56, 7]
05AB  15 B5 05                               JMP                           target=0x05B5
05AE  96 17 68 B8                            LOADSTRING                    dst=v[0x017], values=[56, 8]
05B2  15 B5 05                               JMP                           target=0x05B5
05B5  96 4A B0                               LOADSTRING                    dst=v[0x04A], values=[0]
05B8  9A 18 23 E1 D5 05                      STRCMP_NE_JMP                 start=v[0x018], values=[v[0x000]], target=0x05D5
05BE  96 08 61 23 E1                         LOADSTRING                    dst=v[0x008], values=[49, v[0x000]]
05C3  18 88 08                               CALL                          target=0x0888
05C6  26 67 61 74 2D 61 23 61 62 00          VIDEO_NAME                    name="gat-a{v000}b"
05D0  A0 19                                  DEC                           var=v[0x019]
05D2  96 00 B0                               LOADSTRING                    dst=v[0x000], values=[0]
05D5  9A 17 E1 E4 05                         STRCMP_NE_JMP                 start=v[0x017], values=[49], target=0x05E4
05DA  A3 00 B0 E4 05                         STRCMP_EQ_JMP                 start=v[0x000], values=[0], target=0x05E4
05DF  9F 4A                                  INC                           var=v[0x04A]
05E1  15 BE 05                               JMP                           target=0x05BE
05E4  9A 18 23 E2 01 06                      STRCMP_NE_JMP                 start=v[0x018], values=[v[0x001]], target=0x0601
05EA  96 08 62 23 E2                         LOADSTRING                    dst=v[0x008], values=[50, v[0x001]]
05EF  18 88 08                               CALL                          target=0x0888
05F2  26 67 61 74 2D 62 23 62 62 00          VIDEO_NAME                    name="gat-b{v001}b"
05FC  A0 19                                  DEC                           var=v[0x019]
05FE  96 01 B0                               LOADSTRING                    dst=v[0x001], values=[0]
0601  9A 17 E2 10 06                         STRCMP_NE_JMP                 start=v[0x017], values=[50], target=0x0610
0606  A3 01 B0 10 06                         STRCMP_EQ_JMP                 start=v[0x001], values=[0], target=0x0610
060B  9F 4A                                  INC                           var=v[0x04A]
060D  15 EA 05                               JMP                           target=0x05EA
0610  9A 18 23 E3 2D 06                      STRCMP_NE_JMP                 start=v[0x018], values=[v[0x002]], target=0x062D
0616  96 08 63 23 E3                         LOADSTRING                    dst=v[0x008], values=[51, v[0x002]]
061B  18 88 08                               CALL                          target=0x0888
061E  26 67 61 74 2D 63 23 63 62 00          VIDEO_NAME                    name="gat-c{v002}b"
0628  A0 19                                  DEC                           var=v[0x019]
062A  96 02 B0                               LOADSTRING                    dst=v[0x002], values=[0]
062D  9A 17 E3 3C 06                         STRCMP_NE_JMP                 start=v[0x017], values=[51], target=0x063C
0632  A3 02 B0 3C 06                         STRCMP_EQ_JMP                 start=v[0x002], values=[0], target=0x063C
0637  9F 4A                                  INC                           var=v[0x04A]
0639  15 16 06                               JMP                           target=0x0616
063C  9A 18 23 E4 59 06                      STRCMP_NE_JMP                 start=v[0x018], values=[v[0x003]], target=0x0659
0642  96 08 64 23 E4                         LOADSTRING                    dst=v[0x008], values=[52, v[0x003]]
0647  18 88 08                               CALL                          target=0x0888
064A  26 67 61 74 2D 64 23 64 62 00          VIDEO_NAME                    name="gat-d{v003}b"
0654  A0 19                                  DEC                           var=v[0x019]
0656  96 03 B0                               LOADSTRING                    dst=v[0x003], values=[0]
0659  9A 17 E4 68 06                         STRCMP_NE_JMP                 start=v[0x017], values=[52], target=0x0668
065E  A3 03 B0 68 06                         STRCMP_EQ_JMP                 start=v[0x003], values=[0], target=0x0668
0663  9F 4A                                  INC                           var=v[0x04A]
0665  15 42 06                               JMP                           target=0x0642
0668  9A 18 23 E5 85 06                      STRCMP_NE_JMP                 start=v[0x018], values=[v[0x004]], target=0x0685
066E  96 08 65 23 E5                         LOADSTRING                    dst=v[0x008], values=[53, v[0x004]]
0673  18 88 08                               CALL                          target=0x0888
0676  26 67 61 74 2D 65 23 65 62 00          VIDEO_NAME                    name="gat-e{v004}b"
0680  A0 19                                  DEC                           var=v[0x019]
0682  96 04 B0                               LOADSTRING                    dst=v[0x004], values=[0]
0685  9A 17 E5 94 06                         STRCMP_NE_JMP                 start=v[0x017], values=[53], target=0x0694
068A  A3 04 B0 94 06                         STRCMP_EQ_JMP                 start=v[0x004], values=[0], target=0x0694
068F  9F 4A                                  INC                           var=v[0x04A]
0691  15 6E 06                               JMP                           target=0x066E
0694  9A 18 23 E6 B1 06                      STRCMP_NE_JMP                 start=v[0x018], values=[v[0x005]], target=0x06B1
069A  96 08 66 23 E6                         LOADSTRING                    dst=v[0x008], values=[54, v[0x005]]
069F  18 88 08                               CALL                          target=0x0888
06A2  26 67 61 74 2D 66 23 66 62 00          VIDEO_NAME                    name="gat-f{v005}b"
06AC  A0 19                                  DEC                           var=v[0x019]
06AE  96 05 B0                               LOADSTRING                    dst=v[0x005], values=[0]
06B1  9A 17 E6 C0 06                         STRCMP_NE_JMP                 start=v[0x017], values=[54], target=0x06C0
06B6  A3 05 B0 C0 06                         STRCMP_EQ_JMP                 start=v[0x005], values=[0], target=0x06C0
06BB  9F 4A                                  INC                           var=v[0x04A]
06BD  15 9A 06                               JMP                           target=0x069A
06C0  9A 18 23 E7 DD 06                      STRCMP_NE_JMP                 start=v[0x018], values=[v[0x006]], target=0x06DD
06C6  96 08 67 23 E7                         LOADSTRING                    dst=v[0x008], values=[55, v[0x006]]
06CB  18 88 08                               CALL                          target=0x0888
06CE  26 67 61 74 2D 67 23 67 62 00          VIDEO_NAME                    name="gat-g{v006}b"
06D8  A0 19                                  DEC                           var=v[0x019]
06DA  96 06 B0                               LOADSTRING                    dst=v[0x006], values=[0]
06DD  9A 17 E7 EC 06                         STRCMP_NE_JMP                 start=v[0x017], values=[55], target=0x06EC
06E2  A3 06 B0 EC 06                         STRCMP_EQ_JMP                 start=v[0x006], values=[0], target=0x06EC
06E7  9F 4A                                  INC                           var=v[0x04A]
06E9  15 C6 06                               JMP                           target=0x06C6
06EC  9A 18 23 E8 09 07                      STRCMP_NE_JMP                 start=v[0x018], values=[v[0x007]], target=0x0709
06F2  96 08 68 23 E8                         LOADSTRING                    dst=v[0x008], values=[56, v[0x007]]
06F7  18 88 08                               CALL                          target=0x0888
06FA  26 67 61 74 2D 68 23 68 62 00          VIDEO_NAME                    name="gat-h{v007}b"
0704  A0 19                                  DEC                           var=v[0x019]
0706  96 07 B0                               LOADSTRING                    dst=v[0x007], values=[0]
0709  9A 17 E8 18 07                         STRCMP_NE_JMP                 start=v[0x017], values=[56], target=0x0718
070E  A3 07 B0 18 07                         STRCMP_EQ_JMP                 start=v[0x007], values=[0], target=0x0718
0713  9F 4A                                  INC                           var=v[0x04A]
0715  15 F2 06                               JMP                           target=0x06F2
0718  A4 0E 17 00                            MOV                           dst=v[0x00E], src=0x0017
071C  A4 10 17 00                            MOV                           dst=v[0x010], src=0x0017
0720  A4 12 17 00                            MOV                           dst=v[0x012], src=0x0017
0724  A4 14 17 00                            MOV                           dst=v[0x014], src=0x0017
0728  A4 0F 18 00                            MOV                           dst=v[0x00F], src=0x0018
072C  A4 11 18 00                            MOV                           dst=v[0x011], src=0x0018
0730  A4 13 18 00                            MOV                           dst=v[0x013], src=0x0018
0734  A4 15 18 00                            MOV                           dst=v[0x015], src=0x0018
0738  A3 0E 40 C0 61 07                      STRCMP_EQ_JMP                 start=v[0x00E], values=[16, 16], target=0x0761
073E  B2 0E 0F 00 61 07                      JNE_INDIRECT                  selector=v[0x00E], rhs=0x000F, target=0x0761
0744  96 08 23 6F 23 F0                      LOADSTRING                    dst=v[0x008], values=[v[0x00E], v[0x00F]]
074A  18 88 08                               CALL                          target=0x0888
074D  26 67 61 74 2D 23 6F 23 70 62 00       VIDEO_NAME                    name="gat-{v00E}{v00F}b"
0758  A0 19                                  DEC                           var=v[0x019]
075A  B3 0E B0                               LOADSTRING_INDIRECT           dst=v[0x00E], values=[0]
075D  96 0E 40 C0                            LOADSTRING                    dst=v[0x00E], values=[16, 16]
0761  A3 10 40 C0 8A 07                      STRCMP_EQ_JMP                 start=v[0x010], values=[16, 16], target=0x078A
0767  B2 10 11 00 8A 07                      JNE_INDIRECT                  selector=v[0x010], rhs=0x0011, target=0x078A
076D  96 08 23 71 23 F2                      LOADSTRING                    dst=v[0x008], values=[v[0x010], v[0x011]]
0773  18 88 08                               CALL                          target=0x0888
0776  26 67 61 74 2D 23 71 23 72 62 00       VIDEO_NAME                    name="gat-{v010}{v011}b"
0781  A0 19                                  DEC                           var=v[0x019]
0783  B3 10 B0                               LOADSTRING_INDIRECT           dst=v[0x010], values=[0]
0786  96 10 40 C0                            LOADSTRING                    dst=v[0x010], values=[16, 16]
078A  A3 12 40 C0 B3 07                      STRCMP_EQ_JMP                 start=v[0x012], values=[16, 16], target=0x07B3
0790  B2 12 13 00 B3 07                      JNE_INDIRECT                  selector=v[0x012], rhs=0x0013, target=0x07B3
0796  96 08 23 73 23 F4                      LOADSTRING                    dst=v[0x008], values=[v[0x012], v[0x013]]
079C  18 88 08                               CALL                          target=0x0888
079F  26 67 61 74 2D 23 73 23 74 62 00       VIDEO_NAME                    name="gat-{v012}{v013}b"
07AA  A0 19                                  DEC                           var=v[0x019]
07AC  B3 12 B0                               LOADSTRING_INDIRECT           dst=v[0x012], values=[0]
07AF  96 12 40 C0                            LOADSTRING                    dst=v[0x012], values=[16, 16]
07B3  A3 14 40 C0 DC 07                      STRCMP_EQ_JMP                 start=v[0x014], values=[16, 16], target=0x07DC
07B9  B2 14 15 00 DC 07                      JNE_INDIRECT                  selector=v[0x014], rhs=0x0015, target=0x07DC
07BF  96 08 23 75 23 F6                      LOADSTRING                    dst=v[0x008], values=[v[0x014], v[0x015]]
07C5  18 88 08                               CALL                          target=0x0888
07C8  26 67 61 74 2D 23 75 23 76 62 00       VIDEO_NAME                    name="gat-{v014}{v015}b"
07D3  A0 19                                  DEC                           var=v[0x019]
07D5  B3 14 B0                               LOADSTRING_INDIRECT           dst=v[0x014], values=[0]
07D8  96 14 40 C0                            LOADSTRING                    dst=v[0x014], values=[16, 16]
07DC  9A 0E E1 E5 07                         STRCMP_NE_JMP                 start=v[0x00E], values=[49], target=0x07E5
07E1  96 0E 40 C0                            LOADSTRING                    dst=v[0x00E], values=[16, 16]
07E5  9A 10 E1 EE 07                         STRCMP_NE_JMP                 start=v[0x010], values=[49], target=0x07EE
07EA  96 10 40 C0                            LOADSTRING                    dst=v[0x010], values=[16, 16]
07EE  9A 12 E8 F7 07                         STRCMP_NE_JMP                 start=v[0x012], values=[56], target=0x07F7
07F3  96 12 40 C0                            LOADSTRING                    dst=v[0x012], values=[16, 16]
07F7  9A 14 E8 00 08                         STRCMP_NE_JMP                 start=v[0x014], values=[56], target=0x0800
07FC  96 14 40 C0                            LOADSTRING                    dst=v[0x014], values=[16, 16]
0800  9A 0F B1 09 08                         STRCMP_NE_JMP                 start=v[0x00F], values=[1], target=0x0809
0805  96 0E 40 C0                            LOADSTRING                    dst=v[0x00E], values=[16, 16]
0809  9A 11 B8 12 08                         STRCMP_NE_JMP                 start=v[0x011], values=[8], target=0x0812
080E  96 10 40 C0                            LOADSTRING                    dst=v[0x010], values=[16, 16]
0812  9A 13 B1 1B 08                         STRCMP_NE_JMP                 start=v[0x013], values=[1], target=0x081B
0817  96 12 40 C0                            LOADSTRING                    dst=v[0x012], values=[16, 16]
081B  9A 15 B8 24 08                         STRCMP_NE_JMP                 start=v[0x015], values=[8], target=0x0824
0820  96 14 40 C0                            LOADSTRING                    dst=v[0x014], values=[16, 16]
0824  A3 0E C0 2B 08                         STRCMP_EQ_JMP                 start=v[0x00E], values=[16], target=0x082B
0829  A0 0E                                  DEC                           var=v[0x00E]
082B  A3 10 C0 32 08                         STRCMP_EQ_JMP                 start=v[0x010], values=[16], target=0x0832
0830  A0 10                                  DEC                           var=v[0x010]
0832  A3 12 C0 39 08                         STRCMP_EQ_JMP                 start=v[0x012], values=[16], target=0x0839
0837  9F 12                                  INC                           var=v[0x012]
0839  A3 14 C0 40 08                         STRCMP_EQ_JMP                 start=v[0x014], values=[16], target=0x0840
083E  9F 14                                  INC                           var=v[0x014]
0840  A3 0F C0 47 08                         STRCMP_EQ_JMP                 start=v[0x00F], values=[16], target=0x0847
0845  A0 0F                                  DEC                           var=v[0x00F]
0847  A3 11 C0 4E 08                         STRCMP_EQ_JMP                 start=v[0x011], values=[16], target=0x084E
084C  9F 11                                  INC                           var=v[0x011]
084E  A3 13 C0 55 08                         STRCMP_EQ_JMP                 start=v[0x013], values=[16], target=0x0855
0853  A0 13                                  DEC                           var=v[0x013]
0855  A3 15 C0 5C 08                         STRCMP_EQ_JMP                 start=v[0x015], values=[16], target=0x085C
085A  9F 15                                  INC                           var=v[0x015]
085C  A3 0E 40 40 40 40 40 40 40 C0 6B 08    STRCMP_EQ_JMP                 start=v[0x00E], values=[16, 16, 16, 16, 16, 16, 16, 16], target=0x086B
0868  15 38 07                               JMP                           target=0x0738
086B  96 08 23 78 23 F9                      LOADSTRING                    dst=v[0x008], values=[v[0x017], v[0x018]]
0871  18 88 08                               CALL                          target=0x0888
0874  26 67 61 74 2D 23 78 23 79 66 00       VIDEO_NAME                    name="gat-{v017}{v018}f"
087F  9F 19                                  INC                           var=v[0x019]
0881  B3 17 23 F9                            LOADSTRING_INDIRECT           dst=v[0x017], values=[v[0x018]]
0885  15 4F 00                               JMP                           target=0x004F
0888  1C 0A 18                               VIDEO_TRANSITION_REF          ref=0x180A (GA[10]=gaback.vdx)
088B  A3 00 B0 B2 08                         STRCMP_EQ_JMP                 start=v[0x000], values=[0], target=0x08B2
0890  A3 08 E1 B2 08                         STRCMP_EQ_JMP                 start=v[0x008], values=[49], target=0x08B2
0895  B6 00 23 EA A8 08                      CHAR_LESS_JMP                 start=v[0x000], values=[v[0x009]], target=0x08A8
089B  27 67 61 74 2D 61 23 61 62 00          VIDEO_TRANSITION_NAME         name="gat-a{v000}b"
08A5  15 B2 08                               JMP                           target=0x08B2
08A8  A7 67 61 74 2D 61 23 61 62 00          VIDEO_TRANSITION_NAME         name="gat-a{v000}b"
08B2  A3 01 B0 D9 08                         STRCMP_EQ_JMP                 start=v[0x001], values=[0], target=0x08D9
08B7  A3 08 E2 D9 08                         STRCMP_EQ_JMP                 start=v[0x008], values=[50], target=0x08D9
08BC  B6 01 23 EA CF 08                      CHAR_LESS_JMP                 start=v[0x001], values=[v[0x009]], target=0x08CF
08C2  27 67 61 74 2D 62 23 62 62 00          VIDEO_TRANSITION_NAME         name="gat-b{v001}b"
08CC  15 D9 08                               JMP                           target=0x08D9
08CF  A7 67 61 74 2D 62 23 62 62 00          VIDEO_TRANSITION_NAME         name="gat-b{v001}b"
08D9  A3 02 B0 00 09                         STRCMP_EQ_JMP                 start=v[0x002], values=[0], target=0x0900
08DE  A3 08 E3 00 09                         STRCMP_EQ_JMP                 start=v[0x008], values=[51], target=0x0900
08E3  B6 02 23 EA F6 08                      CHAR_LESS_JMP                 start=v[0x002], values=[v[0x009]], target=0x08F6
08E9  27 67 61 74 2D 63 23 63 62 00          VIDEO_TRANSITION_NAME         name="gat-c{v002}b"
08F3  15 00 09                               JMP                           target=0x0900
08F6  A7 67 61 74 2D 63 23 63 62 00          VIDEO_TRANSITION_NAME         name="gat-c{v002}b"
0900  A3 05 B0 27 09                         STRCMP_EQ_JMP                 start=v[0x005], values=[0], target=0x0927
0905  A3 08 E6 27 09                         STRCMP_EQ_JMP                 start=v[0x008], values=[54], target=0x0927
090A  B6 05 23 EA 1D 09                      CHAR_LESS_JMP                 start=v[0x005], values=[v[0x009]], target=0x091D
0910  27 67 61 74 2D 66 23 66 62 00          VIDEO_TRANSITION_NAME         name="gat-f{v005}b"
091A  15 27 09                               JMP                           target=0x0927
091D  A7 67 61 74 2D 66 23 66 62 00          VIDEO_TRANSITION_NAME         name="gat-f{v005}b"
0927  A3 06 B0 4E 09                         STRCMP_EQ_JMP                 start=v[0x006], values=[0], target=0x094E
092C  A3 08 E7 4E 09                         STRCMP_EQ_JMP                 start=v[0x008], values=[55], target=0x094E
0931  B6 06 23 EA 44 09                      CHAR_LESS_JMP                 start=v[0x006], values=[v[0x009]], target=0x0944
0937  27 67 61 74 2D 67 23 67 62 00          VIDEO_TRANSITION_NAME         name="gat-g{v006}b"
0941  15 4E 09                               JMP                           target=0x094E
0944  A7 67 61 74 2D 67 23 67 62 00          VIDEO_TRANSITION_NAME         name="gat-g{v006}b"
094E  A3 07 B0 75 09                         STRCMP_EQ_JMP                 start=v[0x007], values=[0], target=0x0975
0953  A3 08 E8 75 09                         STRCMP_EQ_JMP                 start=v[0x008], values=[56], target=0x0975
0958  B6 07 23 EA 6B 09                      CHAR_LESS_JMP                 start=v[0x007], values=[v[0x009]], target=0x096B
095E  27 67 61 74 2D 68 23 68 62 00          VIDEO_TRANSITION_NAME         name="gat-h{v007}b"
0968  15 75 09                               JMP                           target=0x0975
096B  A7 67 61 74 2D 68 23 68 62 00          VIDEO_TRANSITION_NAME         name="gat-h{v007}b"
0975  07                                     VIDEOFLAG7_ON
0976  17 00                                  RET                           value=0x00
0978  0A                                     VIDEOFLAG5_ON
0979  07                                     VIDEOFLAG7_ON
097A  46                                     RESOURCE_CONTEXT_SAVE
097B  09 01 24                               VIDEOREF                      ref=0x2401 (INTRO[1]=fade.vdx)
097E  37 00 00 50 00 7F 02 8F 01             COPY_RECT_TO_BG               left=0x0000, top=0x0050, right=0x027F, bottom=0x018F
0987  47                                     RESOURCE_CONTEXT_RESTORE
0988  17 00                                  RET                           value=0x00
