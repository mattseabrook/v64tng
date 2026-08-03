; T7G/MU.GRV
; size=1354 sha256=4bc189e9e74178b8d1784309666a7cc28a28c5ee060dcb87d01fefefedeac6f2
; instructions=370 input_loops=1

0000  02 08 4C                               PLAYSONG                      ref=0x4C08 (XMI[8]=gu11a.xmi)
0003  16 07 01 B0                            LOADSTRING                    dst=v[0x107], values=[0]
0007  16 03 01 B0                            LOADSTRING                    dst=v[0x103], values=[0]
000B  16 08 01 B0                            LOADSTRING                    dst=v[0x108], values=[0]
000F  9A F6 B4 1D 00                         STRCMP_NE_JMP                 start=v[0x0F6], values=[4], target=0x001D
0014  07                                     VIDEOFLAG7_ON
0015  46                                     RESOURCE_CONTEXT_SAVE
0016  09 1E 50                               VIDEOREF                      ref=0x501E (GAMWAV[30]=6_s_1.vdx)
0019  47                                     RESOURCE_CONTEXT_RESTORE
001A  96 F6 B5                               LOADSTRING                    dst=v[0x0F6], values=[5]
001D  9A F6 B2 2B 00                         STRCMP_NE_JMP                 start=v[0x0F6], values=[2], target=0x002B
0022  07                                     VIDEOFLAG7_ON
0023  46                                     RESOURCE_CONTEXT_SAVE
0024  09 1F 50                               VIDEOREF                      ref=0x501F (GAMWAV[31]=6_s_2.vdx)
0027  47                                     RESOURCE_CONTEXT_RESTORE
0028  96 F6 B3                               LOADSTRING                    dst=v[0x0F6], values=[3]
002B  9A F6 B0 39 00                         STRCMP_NE_JMP                 start=v[0x0F6], values=[0], target=0x0039
0030  07                                     VIDEOFLAG7_ON
0031  46                                     RESOURCE_CONTEXT_SAVE
0032  09 20 50                               VIDEOREF                      ref=0x5020 (GAMWAV[32]=6_s_3.vdx)
0035  47                                     RESOURCE_CONTEXT_RESTORE
0036  96 F6 B1                               LOADSTRING                    dst=v[0x0F6], values=[1]
0039  2C D6 01 08                            SET_HOTSPOT_TOP               target=0x01D6, cursor=0x08
003D  2D 3F 05 06                            SET_HOTSPOT_BOTTOM            target=0x053F, cursor=0x06
0041  45 48 05                               SET_HOTSPOT_LEFT              target=0x0548
0044  0A                                     VIDEOFLAG5_ON
0045  09 11 40                               VIDEOREF                      ref=0x4011 (MU[17]=keyboard.vdx)
0048  96 00 E1                               LOADSTRING                    dst=v[0x000], values=[49]
004B  36 03 01 B8 8C 00                      CHAR_LESS_JMP                 start=v[0x103], values=[8], target=0x008C
0051  1A 08 01 B0 67 00                      STRCMP_NE_JMP                 start=v[0x108], values=[0], target=0x0067
0057  46                                     RESOURCE_CONTEXT_SAVE
0058  07                                     VIDEOFLAG7_ON
0059  09 1B 50                               VIDEOREF                      ref=0x501B (GAMWAV[27]=6_e_1.vdx)
005C  47                                     RESOURCE_CONTEXT_RESTORE
005D  1F 08 01                               INC                           var=v[0x108]
0060  16 03 01 B0                            LOADSTRING                    dst=v[0x103], values=[0]
0064  15 8C 00                               JMP                           target=0x008C
0067  1A 08 01 B1 7D 00                      STRCMP_NE_JMP                 start=v[0x108], values=[1], target=0x007D
006D  07                                     VIDEOFLAG7_ON
006E  46                                     RESOURCE_CONTEXT_SAVE
006F  09 1C 50                               VIDEOREF                      ref=0x501C (GAMWAV[28]=6_e_2.vdx)
0072  47                                     RESOURCE_CONTEXT_RESTORE
0073  1F 08 01                               INC                           var=v[0x108]
0076  16 03 01 B0                            LOADSTRING                    dst=v[0x103], values=[0]
007A  15 8C 00                               JMP                           target=0x008C
007D  1A 08 01 B2 8C 00                      STRCMP_NE_JMP                 start=v[0x108], values=[2], target=0x008C
0083  07                                     VIDEOFLAG7_ON
0084  46                                     RESOURCE_CONTEXT_SAVE
0085  09 1D 50                               VIDEOREF                      ref=0x501D (GAMWAV[29]=6_e_3.vdx)
0088  47                                     RESOURCE_CONTEXT_RESTORE
0089  1F 08 01                               INC                           var=v[0x108]
008C  9A 00 F3 94 00                         STRCMP_NE_JMP                 start=v[0x000], values=[67], target=0x0094
0091  15 36 05                               JMP                           target=0x0536
0094  18 EB 02                               CALL                          target=0x02EB
0097  96 01 E0                               LOADSTRING                    dst=v[0x001], values=[48]
009A  9A 01 23 E1 A5 00                      STRCMP_NE_JMP                 start=v[0x001], values=[v[0x000]], target=0x00A5
00A0  9F 00                                  INC                           var=v[0x000]
00A2  15 4B 00                               JMP                           target=0x004B
00A5  0B                                     INPUTLOOPSTART
00A6  0D 22 00 0E 01 3A 00 38 01 D8 01 09    HOTSPOT_RECT                  left=0x0022, top=0x010E, right=0x003A, bottom=0x0138, target=0x01D8, cursor=0x09
00B2  0D 45 00 D8 00 59 00 F4 00 E3 01 0A    HOTSPOT_RECT                  left=0x0045, top=0x00D8, right=0x0059, bottom=0x00F4, target=0x01E3, cursor=0x0A
00BE  0D 47 00 11 01 61 00 37 01 EE 01 09    HOTSPOT_RECT                  left=0x0047, top=0x0111, right=0x0061, bottom=0x0137, target=0x01EE, cursor=0x09
00CA  0D 70 00 DA 00 7F 00 F6 00 F9 01 0A    HOTSPOT_RECT                  left=0x0070, top=0x00DA, right=0x007F, bottom=0x00F6, target=0x01F9, cursor=0x0A
00D6  0D 6D 00 10 01 8B 00 36 01 04 02 09    HOTSPOT_RECT                  left=0x006D, top=0x0110, right=0x008B, bottom=0x0136, target=0x0204, cursor=0x09
00E2  0D 95 00 0C 01 B2 00 36 01 0F 02 0A    HOTSPOT_RECT                  left=0x0095, top=0x010C, right=0x00B2, bottom=0x0136, target=0x020F, cursor=0x0A
00EE  0D B7 00 DC 00 C3 00 F3 00 1A 02 09    HOTSPOT_RECT                  left=0x00B7, top=0x00DC, right=0x00C3, bottom=0x00F3, target=0x021A, cursor=0x09
00FA  0D BA 00 10 01 DB 00 35 01 25 02 0A    HOTSPOT_RECT                  left=0x00BA, top=0x0110, right=0x00DB, bottom=0x0135, target=0x0225, cursor=0x0A
0106  0D DE 00 D8 00 EC 00 F8 00 30 02 09    HOTSPOT_RECT                  left=0x00DE, top=0x00D8, right=0x00EC, bottom=0x00F8, target=0x0230, cursor=0x09
0112  0D E1 00 13 01 04 01 37 01 3B 02 0A    HOTSPOT_RECT                  left=0x00E1, top=0x0113, right=0x0104, bottom=0x0137, target=0x023B, cursor=0x0A
011E  0D 06 01 DA 00 17 01 F9 00 46 02 09    HOTSPOT_RECT                  left=0x0106, top=0x00DA, right=0x0117, bottom=0x00F9, target=0x0246, cursor=0x09
012A  0D 06 01 14 01 2C 01 38 01 51 02 0A    HOTSPOT_RECT                  left=0x0106, top=0x0114, right=0x012C, bottom=0x0138, target=0x0251, cursor=0x0A
0136  0D 2D 01 13 01 53 01 36 01 5C 02 09    HOTSPOT_RECT                  left=0x012D, top=0x0113, right=0x0153, bottom=0x0136, target=0x025C, cursor=0x09
0142  0D 48 01 DD 00 59 01 F6 00 67 02 0A    HOTSPOT_RECT                  left=0x0148, top=0x00DD, right=0x0159, bottom=0x00F6, target=0x0267, cursor=0x0A
014E  0D 54 01 19 01 7A 01 38 01 72 02 09    HOTSPOT_RECT                  left=0x0154, top=0x0119, right=0x017A, bottom=0x0138, target=0x0272, cursor=0x09
015A  0D 71 01 DE 00 80 01 F2 00 7D 02 0A    HOTSPOT_RECT                  left=0x0171, top=0x00DE, right=0x0180, bottom=0x00F2, target=0x027D, cursor=0x0A
0166  0D 7B 01 13 01 A2 01 37 01 88 02 09    HOTSPOT_RECT                  left=0x017B, top=0x0113, right=0x01A2, bottom=0x0137, target=0x0288, cursor=0x09
0172  0D A4 01 11 01 C8 01 37 01 93 02 0A    HOTSPOT_RECT                  left=0x01A4, top=0x0111, right=0x01C8, bottom=0x0137, target=0x0293, cursor=0x0A
017E  0D B2 01 DC 00 C5 01 FC 00 9E 02 09    HOTSPOT_RECT                  left=0x01B2, top=0x00DC, right=0x01C5, bottom=0x00FC, target=0x029E, cursor=0x09
018A  0D CD 01 10 01 EE 01 38 01 A9 02 0A    HOTSPOT_RECT                  left=0x01CD, top=0x0110, right=0x01EE, bottom=0x0138, target=0x02A9, cursor=0x0A
0196  0D DB 01 DC 00 ED 01 F9 00 B4 02 09    HOTSPOT_RECT                  left=0x01DB, top=0x00DC, right=0x01ED, bottom=0x00F9, target=0x02B4, cursor=0x09
01A2  0D F7 01 0F 01 14 02 37 01 BF 02 0A    HOTSPOT_RECT                  left=0x01F7, top=0x010F, right=0x0214, bottom=0x0137, target=0x02BF, cursor=0x0A
01AE  0D 03 02 DC 00 17 02 FB 00 CA 02 09    HOTSPOT_RECT                  left=0x0203, top=0x00DC, right=0x0217, bottom=0x00FB, target=0x02CA, cursor=0x09
01BA  0D 1D 02 0F 01 3C 02 37 01 D5 02 0A    HOTSPOT_RECT                  left=0x021D, top=0x010F, right=0x023C, bottom=0x0137, target=0x02D5, cursor=0x0A
01C6  0D 48 02 0D 01 67 02 37 01 E0 02 09    HOTSPOT_RECT                  left=0x0248, top=0x010D, right=0x0267, bottom=0x0137, target=0x02E0, cursor=0x09
01D2  0F 48 05                               HOTSPOT_RIGHT                 target=0x0548
01D5  13                                     INPUTLOOPEND
01D6  43 01                                  RETURNSCRIPT                  value=0x01
01D8  0A                                     VIDEOFLAG5_ON
01D9  09 12 40                               VIDEOREF                      ref=0x4012 (MU[18]=key00.vdx)
01DC  96 02 30 B0                            LOADSTRING                    dst=v[0x002], values=[0, 0]
01E0  15 8F 03                               JMP                           target=0x038F
01E3  0A                                     VIDEOFLAG5_ON
01E4  09 13 40                               VIDEOREF                      ref=0x4013 (MU[19]=key01.vdx)
01E7  96 02 30 B1                            LOADSTRING                    dst=v[0x002], values=[0, 1]
01EB  15 8F 03                               JMP                           target=0x038F
01EE  0A                                     VIDEOFLAG5_ON
01EF  09 14 40                               VIDEOREF                      ref=0x4014 (MU[20]=key02.vdx)
01F2  96 02 30 B2                            LOADSTRING                    dst=v[0x002], values=[0, 2]
01F6  15 8F 03                               JMP                           target=0x038F
01F9  0A                                     VIDEOFLAG5_ON
01FA  09 15 40                               VIDEOREF                      ref=0x4015 (MU[21]=key03.vdx)
01FD  96 02 30 B3                            LOADSTRING                    dst=v[0x002], values=[0, 3]
0201  15 8F 03                               JMP                           target=0x038F
0204  0A                                     VIDEOFLAG5_ON
0205  09 16 40                               VIDEOREF                      ref=0x4016 (MU[22]=key04.vdx)
0208  96 02 30 B4                            LOADSTRING                    dst=v[0x002], values=[0, 4]
020C  15 8F 03                               JMP                           target=0x038F
020F  0A                                     VIDEOFLAG5_ON
0210  09 17 40                               VIDEOREF                      ref=0x4017 (MU[23]=key05.vdx)
0213  96 02 30 B5                            LOADSTRING                    dst=v[0x002], values=[0, 5]
0217  15 8F 03                               JMP                           target=0x038F
021A  0A                                     VIDEOFLAG5_ON
021B  09 18 40                               VIDEOREF                      ref=0x4018 (MU[24]=key06.vdx)
021E  96 02 30 B6                            LOADSTRING                    dst=v[0x002], values=[0, 6]
0222  15 8F 03                               JMP                           target=0x038F
0225  0A                                     VIDEOFLAG5_ON
0226  09 19 40                               VIDEOREF                      ref=0x4019 (MU[25]=key07.vdx)
0229  96 02 30 B7                            LOADSTRING                    dst=v[0x002], values=[0, 7]
022D  15 8F 03                               JMP                           target=0x038F
0230  0A                                     VIDEOFLAG5_ON
0231  09 1A 40                               VIDEOREF                      ref=0x401A (MU[26]=key08.vdx)
0234  96 02 30 B8                            LOADSTRING                    dst=v[0x002], values=[0, 8]
0238  15 8F 03                               JMP                           target=0x038F
023B  0A                                     VIDEOFLAG5_ON
023C  09 1B 40                               VIDEOREF                      ref=0x401B (MU[27]=key09.vdx)
023F  96 02 30 B9                            LOADSTRING                    dst=v[0x002], values=[0, 9]
0243  15 8F 03                               JMP                           target=0x038F
0246  0A                                     VIDEOFLAG5_ON
0247  09 1C 40                               VIDEOREF                      ref=0x401C (MU[28]=key10.vdx)
024A  96 02 31 B0                            LOADSTRING                    dst=v[0x002], values=[1, 0]
024E  15 8F 03                               JMP                           target=0x038F
0251  0A                                     VIDEOFLAG5_ON
0252  09 1D 40                               VIDEOREF                      ref=0x401D (MU[29]=key11.vdx)
0255  96 02 31 B1                            LOADSTRING                    dst=v[0x002], values=[1, 1]
0259  15 8F 03                               JMP                           target=0x038F
025C  0A                                     VIDEOFLAG5_ON
025D  09 1E 40                               VIDEOREF                      ref=0x401E (MU[30]=key12.vdx)
0260  96 02 31 B2                            LOADSTRING                    dst=v[0x002], values=[1, 2]
0264  15 8F 03                               JMP                           target=0x038F
0267  0A                                     VIDEOFLAG5_ON
0268  09 1F 40                               VIDEOREF                      ref=0x401F (MU[31]=key13.vdx)
026B  96 02 31 B3                            LOADSTRING                    dst=v[0x002], values=[1, 3]
026F  15 8F 03                               JMP                           target=0x038F
0272  0A                                     VIDEOFLAG5_ON
0273  09 20 40                               VIDEOREF                      ref=0x4020 (MU[32]=key14.vdx)
0276  96 02 31 B4                            LOADSTRING                    dst=v[0x002], values=[1, 4]
027A  15 8F 03                               JMP                           target=0x038F
027D  0A                                     VIDEOFLAG5_ON
027E  09 21 40                               VIDEOREF                      ref=0x4021 (MU[33]=key15.vdx)
0281  96 02 31 B5                            LOADSTRING                    dst=v[0x002], values=[1, 5]
0285  15 8F 03                               JMP                           target=0x038F
0288  0A                                     VIDEOFLAG5_ON
0289  09 22 40                               VIDEOREF                      ref=0x4022 (MU[34]=key16.vdx)
028C  96 02 31 B6                            LOADSTRING                    dst=v[0x002], values=[1, 6]
0290  15 8F 03                               JMP                           target=0x038F
0293  0A                                     VIDEOFLAG5_ON
0294  09 23 40                               VIDEOREF                      ref=0x4023 (MU[35]=key17.vdx)
0297  96 02 31 B7                            LOADSTRING                    dst=v[0x002], values=[1, 7]
029B  15 8F 03                               JMP                           target=0x038F
029E  0A                                     VIDEOFLAG5_ON
029F  09 24 40                               VIDEOREF                      ref=0x4024 (MU[36]=key18.vdx)
02A2  96 02 31 B8                            LOADSTRING                    dst=v[0x002], values=[1, 8]
02A6  15 8F 03                               JMP                           target=0x038F
02A9  0A                                     VIDEOFLAG5_ON
02AA  09 25 40                               VIDEOREF                      ref=0x4025 (MU[37]=key19.vdx)
02AD  96 02 31 B9                            LOADSTRING                    dst=v[0x002], values=[1, 9]
02B1  15 8F 03                               JMP                           target=0x038F
02B4  0A                                     VIDEOFLAG5_ON
02B5  09 26 40                               VIDEOREF                      ref=0x4026 (MU[38]=key20.vdx)
02B8  96 02 32 B0                            LOADSTRING                    dst=v[0x002], values=[2, 0]
02BC  15 8F 03                               JMP                           target=0x038F
02BF  0A                                     VIDEOFLAG5_ON
02C0  09 27 40                               VIDEOREF                      ref=0x4027 (MU[39]=key21.vdx)
02C3  96 02 32 B1                            LOADSTRING                    dst=v[0x002], values=[2, 1]
02C7  15 8F 03                               JMP                           target=0x038F
02CA  0A                                     VIDEOFLAG5_ON
02CB  09 28 40                               VIDEOREF                      ref=0x4028 (MU[40]=key22.vdx)
02CE  96 02 32 B2                            LOADSTRING                    dst=v[0x002], values=[2, 2]
02D2  15 8F 03                               JMP                           target=0x038F
02D5  0A                                     VIDEOFLAG5_ON
02D6  09 29 40                               VIDEOREF                      ref=0x4029 (MU[41]=key23.vdx)
02D9  96 02 32 B3                            LOADSTRING                    dst=v[0x002], values=[2, 3]
02DD  15 8F 03                               JMP                           target=0x038F
02E0  0A                                     VIDEOFLAG5_ON
02E1  09 2A 40                               VIDEOREF                      ref=0x402A (MU[42]=key24.vdx)
02E4  96 02 32 B4                            LOADSTRING                    dst=v[0x002], values=[2, 4]
02E8  15 8F 03                               JMP                           target=0x038F
02EB  B6 00 E1 F4 02                         CHAR_LESS_JMP                 start=v[0x000], values=[49], target=0x02F4
02F0  0A                                     VIDEOFLAG5_ON
02F1  09 1D 40                               VIDEOREF                      ref=0x401D (MU[29]=key11.vdx)
02F4  B6 00 E2 FD 02                         CHAR_LESS_JMP                 start=v[0x000], values=[50], target=0x02FD
02F9  0A                                     VIDEOFLAG5_ON
02FA  09 29 40                               VIDEOREF                      ref=0x4029 (MU[41]=key23.vdx)
02FD  B6 00 E3 06 03                         CHAR_LESS_JMP                 start=v[0x000], values=[51], target=0x0306
0302  0A                                     VIDEOFLAG5_ON
0303  09 24 40                               VIDEOREF                      ref=0x4024 (MU[36]=key18.vdx)
0306  B6 00 E4 0F 03                         CHAR_LESS_JMP                 start=v[0x000], values=[52], target=0x030F
030B  0A                                     VIDEOFLAG5_ON
030C  09 25 40                               VIDEOREF                      ref=0x4025 (MU[37]=key19.vdx)
030F  B6 00 E5 18 03                         CHAR_LESS_JMP                 start=v[0x000], values=[53], target=0x0318
0314  0A                                     VIDEOFLAG5_ON
0315  09 22 40                               VIDEOREF                      ref=0x4022 (MU[34]=key16.vdx)
0318  B6 00 E6 21 03                         CHAR_LESS_JMP                 start=v[0x000], values=[54], target=0x0321
031D  0A                                     VIDEOFLAG5_ON
031E  09 21 40                               VIDEOREF                      ref=0x4021 (MU[33]=key15.vdx)
0321  B6 00 E7 2A 03                         CHAR_LESS_JMP                 start=v[0x000], values=[55], target=0x032A
0326  0A                                     VIDEOFLAG5_ON
0327  09 22 40                               VIDEOREF                      ref=0x4022 (MU[34]=key16.vdx)
032A  B6 00 E8 33 03                         CHAR_LESS_JMP                 start=v[0x000], values=[56], target=0x0333
032F  0A                                     VIDEOFLAG5_ON
0330  09 24 40                               VIDEOREF                      ref=0x4024 (MU[36]=key18.vdx)
0333  B6 00 E9 3C 03                         CHAR_LESS_JMP                 start=v[0x000], values=[57], target=0x033C
0338  0A                                     VIDEOFLAG5_ON
0339  09 22 40                               VIDEOREF                      ref=0x4022 (MU[34]=key16.vdx)
033C  B6 00 EA 45 03                         CHAR_LESS_JMP                 start=v[0x000], values=[58], target=0x0345
0341  0A                                     VIDEOFLAG5_ON
0342  09 1D 40                               VIDEOREF                      ref=0x401D (MU[29]=key11.vdx)
0345  B6 00 EB 4E 03                         CHAR_LESS_JMP                 start=v[0x000], values=[59], target=0x034E
034A  0A                                     VIDEOFLAG5_ON
034B  09 29 40                               VIDEOREF                      ref=0x4029 (MU[41]=key23.vdx)
034E  B6 00 EC 57 03                         CHAR_LESS_JMP                 start=v[0x000], values=[60], target=0x0357
0353  0A                                     VIDEOFLAG5_ON
0354  09 2A 40                               VIDEOREF                      ref=0x402A (MU[42]=key24.vdx)
0357  B6 00 ED 60 03                         CHAR_LESS_JMP                 start=v[0x000], values=[61], target=0x0360
035C  0A                                     VIDEOFLAG5_ON
035D  09 29 40                               VIDEOREF                      ref=0x4029 (MU[41]=key23.vdx)
0360  B6 00 EE 69 03                         CHAR_LESS_JMP                 start=v[0x000], values=[62], target=0x0369
0365  0A                                     VIDEOFLAG5_ON
0366  09 27 40                               VIDEOREF                      ref=0x4027 (MU[39]=key21.vdx)
0369  B6 00 EF 72 03                         CHAR_LESS_JMP                 start=v[0x000], values=[63], target=0x0372
036E  0A                                     VIDEOFLAG5_ON
036F  09 25 40                               VIDEOREF                      ref=0x4025 (MU[37]=key19.vdx)
0372  B6 00 F0 7B 03                         CHAR_LESS_JMP                 start=v[0x000], values=[64], target=0x037B
0377  0A                                     VIDEOFLAG5_ON
0378  09 24 40                               VIDEOREF                      ref=0x4024 (MU[36]=key18.vdx)
037B  B6 00 F1 84 03                         CHAR_LESS_JMP                 start=v[0x000], values=[65], target=0x0384
0380  0A                                     VIDEOFLAG5_ON
0381  09 22 40                               VIDEOREF                      ref=0x4022 (MU[34]=key16.vdx)
0384  B6 00 F2 8D 03                         CHAR_LESS_JMP                 start=v[0x000], values=[66], target=0x038D
0389  0A                                     VIDEOFLAG5_ON
038A  09 24 40                               VIDEOREF                      ref=0x4024 (MU[36]=key18.vdx)
038D  17 00                                  RET                           value=0x00
038F  9A 01 E0 A5 03                         STRCMP_NE_JMP                 start=v[0x001], values=[48], target=0x03A5
0394  9A 02 31 B1 A2 03                      STRCMP_NE_JMP                 start=v[0x002], values=[1, 1], target=0x03A2
039A  9F 01                                  INC                           var=v[0x001]
039C  15 9A 00                               JMP                           target=0x009A
039F  15 A5 03                               JMP                           target=0x03A5
03A2  15 1D 05                               JMP                           target=0x051D
03A5  9A 01 E1 BB 03                         STRCMP_NE_JMP                 start=v[0x001], values=[49], target=0x03BB
03AA  9A 02 32 B3 B8 03                      STRCMP_NE_JMP                 start=v[0x002], values=[2, 3], target=0x03B8
03B0  9F 01                                  INC                           var=v[0x001]
03B2  15 9A 00                               JMP                           target=0x009A
03B5  15 BB 03                               JMP                           target=0x03BB
03B8  15 1D 05                               JMP                           target=0x051D
03BB  9A 01 E2 D1 03                         STRCMP_NE_JMP                 start=v[0x001], values=[50], target=0x03D1
03C0  9A 02 31 B8 CE 03                      STRCMP_NE_JMP                 start=v[0x002], values=[1, 8], target=0x03CE
03C6  9F 01                                  INC                           var=v[0x001]
03C8  15 9A 00                               JMP                           target=0x009A
03CB  15 D1 03                               JMP                           target=0x03D1
03CE  15 1D 05                               JMP                           target=0x051D
03D1  9A 01 E3 E7 03                         STRCMP_NE_JMP                 start=v[0x001], values=[51], target=0x03E7
03D6  9A 02 31 B9 E4 03                      STRCMP_NE_JMP                 start=v[0x002], values=[1, 9], target=0x03E4
03DC  9F 01                                  INC                           var=v[0x001]
03DE  15 9A 00                               JMP                           target=0x009A
03E1  15 E7 03                               JMP                           target=0x03E7
03E4  15 1D 05                               JMP                           target=0x051D
03E7  9A 01 E4 FD 03                         STRCMP_NE_JMP                 start=v[0x001], values=[52], target=0x03FD
03EC  9A 02 31 B6 FA 03                      STRCMP_NE_JMP                 start=v[0x002], values=[1, 6], target=0x03FA
03F2  9F 01                                  INC                           var=v[0x001]
03F4  15 9A 00                               JMP                           target=0x009A
03F7  15 FD 03                               JMP                           target=0x03FD
03FA  15 1D 05                               JMP                           target=0x051D
03FD  9A 01 E5 13 04                         STRCMP_NE_JMP                 start=v[0x001], values=[53], target=0x0413
0402  9A 02 31 B5 10 04                      STRCMP_NE_JMP                 start=v[0x002], values=[1, 5], target=0x0410
0408  9F 01                                  INC                           var=v[0x001]
040A  15 9A 00                               JMP                           target=0x009A
040D  15 13 04                               JMP                           target=0x0413
0410  15 1D 05                               JMP                           target=0x051D
0413  9A 01 E6 29 04                         STRCMP_NE_JMP                 start=v[0x001], values=[54], target=0x0429
0418  9A 02 31 B6 26 04                      STRCMP_NE_JMP                 start=v[0x002], values=[1, 6], target=0x0426
041E  9F 01                                  INC                           var=v[0x001]
0420  15 9A 00                               JMP                           target=0x009A
0423  15 29 04                               JMP                           target=0x0429
0426  15 1D 05                               JMP                           target=0x051D
0429  9A 01 E7 3F 04                         STRCMP_NE_JMP                 start=v[0x001], values=[55], target=0x043F
042E  9A 02 31 B8 3C 04                      STRCMP_NE_JMP                 start=v[0x002], values=[1, 8], target=0x043C
0434  9F 01                                  INC                           var=v[0x001]
0436  15 9A 00                               JMP                           target=0x009A
0439  15 3F 04                               JMP                           target=0x043F
043C  15 1D 05                               JMP                           target=0x051D
043F  9A 01 E8 55 04                         STRCMP_NE_JMP                 start=v[0x001], values=[56], target=0x0455
0444  9A 02 31 B6 52 04                      STRCMP_NE_JMP                 start=v[0x002], values=[1, 6], target=0x0452
044A  9F 01                                  INC                           var=v[0x001]
044C  15 9A 00                               JMP                           target=0x009A
044F  15 55 04                               JMP                           target=0x0455
0452  15 1D 05                               JMP                           target=0x051D
0455  9A 01 E9 6B 04                         STRCMP_NE_JMP                 start=v[0x001], values=[57], target=0x046B
045A  9A 02 31 B1 68 04                      STRCMP_NE_JMP                 start=v[0x002], values=[1, 1], target=0x0468
0460  9F 01                                  INC                           var=v[0x001]
0462  15 9A 00                               JMP                           target=0x009A
0465  15 6B 04                               JMP                           target=0x046B
0468  15 1D 05                               JMP                           target=0x051D
046B  9A 01 EA 81 04                         STRCMP_NE_JMP                 start=v[0x001], values=[58], target=0x0481
0470  9A 02 32 B3 7E 04                      STRCMP_NE_JMP                 start=v[0x002], values=[2, 3], target=0x047E
0476  9F 01                                  INC                           var=v[0x001]
0478  15 9A 00                               JMP                           target=0x009A
047B  15 81 04                               JMP                           target=0x0481
047E  15 1D 05                               JMP                           target=0x051D
0481  9A 01 EB 97 04                         STRCMP_NE_JMP                 start=v[0x001], values=[59], target=0x0497
0486  9A 02 32 B4 94 04                      STRCMP_NE_JMP                 start=v[0x002], values=[2, 4], target=0x0494
048C  9F 01                                  INC                           var=v[0x001]
048E  15 9A 00                               JMP                           target=0x009A
0491  15 97 04                               JMP                           target=0x0497
0494  15 1D 05                               JMP                           target=0x051D
0497  9A 01 EC AD 04                         STRCMP_NE_JMP                 start=v[0x001], values=[60], target=0x04AD
049C  9A 02 32 B3 AA 04                      STRCMP_NE_JMP                 start=v[0x002], values=[2, 3], target=0x04AA
04A2  9F 01                                  INC                           var=v[0x001]
04A4  15 9A 00                               JMP                           target=0x009A
04A7  15 AD 04                               JMP                           target=0x04AD
04AA  15 1D 05                               JMP                           target=0x051D
04AD  9A 01 ED C3 04                         STRCMP_NE_JMP                 start=v[0x001], values=[61], target=0x04C3
04B2  9A 02 32 B1 C0 04                      STRCMP_NE_JMP                 start=v[0x002], values=[2, 1], target=0x04C0
04B8  9F 01                                  INC                           var=v[0x001]
04BA  15 9A 00                               JMP                           target=0x009A
04BD  15 C3 04                               JMP                           target=0x04C3
04C0  15 1D 05                               JMP                           target=0x051D
04C3  9A 01 EE D9 04                         STRCMP_NE_JMP                 start=v[0x001], values=[62], target=0x04D9
04C8  9A 02 31 B9 D6 04                      STRCMP_NE_JMP                 start=v[0x002], values=[1, 9], target=0x04D6
04CE  9F 01                                  INC                           var=v[0x001]
04D0  15 9A 00                               JMP                           target=0x009A
04D3  15 D9 04                               JMP                           target=0x04D9
04D6  15 1D 05                               JMP                           target=0x051D
04D9  9A 01 EF EF 04                         STRCMP_NE_JMP                 start=v[0x001], values=[63], target=0x04EF
04DE  9A 02 31 B8 EC 04                      STRCMP_NE_JMP                 start=v[0x002], values=[1, 8], target=0x04EC
04E4  9F 01                                  INC                           var=v[0x001]
04E6  15 9A 00                               JMP                           target=0x009A
04E9  15 EF 04                               JMP                           target=0x04EF
04EC  15 1D 05                               JMP                           target=0x051D
04EF  9A 01 F0 05 05                         STRCMP_NE_JMP                 start=v[0x001], values=[64], target=0x0505
04F4  9A 02 31 B6 02 05                      STRCMP_NE_JMP                 start=v[0x002], values=[1, 6], target=0x0502
04FA  9F 01                                  INC                           var=v[0x001]
04FC  15 9A 00                               JMP                           target=0x009A
04FF  15 05 05                               JMP                           target=0x0505
0502  15 1D 05                               JMP                           target=0x051D
0505  9A 01 F1 1B 05                         STRCMP_NE_JMP                 start=v[0x001], values=[65], target=0x051B
050A  9A 02 31 B8 18 05                      STRCMP_NE_JMP                 start=v[0x002], values=[1, 8], target=0x0518
0510  9F 01                                  INC                           var=v[0x001]
0512  15 9A 00                               JMP                           target=0x009A
0515  15 1B 05                               JMP                           target=0x051B
0518  15 1D 05                               JMP                           target=0x051D
051B  17 00                                  RET                           value=0x00
051D  07                                     VIDEOFLAG7_ON
051E  46                                     RESOURCE_CONTEXT_SAVE
051F  1A 07 01 B0 2F 05                      STRCMP_NE_JMP                 start=v[0x107], values=[0], target=0x052F
0525  09 9B 50                               VIDEOREF                      ref=0x509B (GAMWAV[155]=gen_s_4.vdx)
0528  16 07 01 B1                            LOADSTRING                    dst=v[0x107], values=[1]
052C  15 32 05                               JMP                           target=0x0532
052F  09 A4 50                               VIDEOREF                      ref=0x50A4 (GAMWAV[164]=gen_s_13.vdx)
0532  47                                     RESOURCE_CONTEXT_RESTORE
0533  15 44 00                               JMP                           target=0x0044
0536  07                                     VIDEOFLAG7_ON
0537  09 A1 50                               VIDEOREF                      ref=0x50A1 (GAMWAV[161]=gen_s_10.vdx)
053A  96 F6 E1                               LOADSTRING                    dst=v[0x0F6], values=[49]
053D  43 00                                  RETURNSCRIPT                  value=0x00
053F  07                                     VIDEOFLAG7_ON
0540  46                                     RESOURCE_CONTEXT_SAVE
0541  09 8B 50                               VIDEOREF                      ref=0x508B (GAMWAV[139]=gen_e_5.vdx)
0544  47                                     RESOURCE_CONTEXT_RESTORE
0545  15 44 00                               JMP                           target=0x0044
0548  43 00                                  RETURNSCRIPT                  value=0x00
