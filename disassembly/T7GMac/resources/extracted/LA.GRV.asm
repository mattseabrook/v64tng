; LA.GRV
; size=6524 instructions=1363 input_loops=2

0000  04                                     PALFADEOUT                    
0001  02 3A 4C                               PLAYSONG                      ref=0x4C3A (XMI[58]=gu63.xmi)
0004  2C 77 19 08                            SET_HOTSPOT_TOP               target=0x1977, cursor=0x08
0008  2D 32 00 06                            SET_HOTSPOT_BOTTOM            target=0x0032, cursor=0x06
000C  44 79 19                               SET_HOTSPOT_RIGHT             target=0x1979
000F  45 79 19                               SET_HOTSPOT_LEFT              target=0x1979
0012  96 92 31 B9                            LOADSTRING                    dst=v[0x092], values=[1, 9]
0016  9A EB B4 1E 00                         STRCMP_NE_JMP                 start=v[0x0EB], values=[4], target=0x001E
001B  96 EB B5                               LOADSTRING                    dst=v[0x0EB], values=[5]
001E  9A EB B2 26 00                         STRCMP_NE_JMP                 start=v[0x0EB], values=[2], target=0x0026
0023  96 EB B3                               LOADSTRING                    dst=v[0x0EB], values=[3]
0026  9A EB B0 2E 00                         STRCMP_NE_JMP                 start=v[0x0EB], values=[0], target=0x002E
002B  96 EB B1                               LOADSTRING                    dst=v[0x0EB], values=[1]
002E  16 07 01 B0                            LOADSTRING                    dst=v[0x107], values=[0]
0032  16 08 01 B0                            LOADSTRING                    dst=v[0x108], values=[0]
0036  16 09 01 B0                            LOADSTRING                    dst=v[0x109], values=[0]
003A  16 0A 01 B0                            LOADSTRING                    dst=v[0x10A], values=[0]
003E  16 0B 01 B0                            LOADSTRING                    dst=v[0x10B], values=[0]
0042  16 0C 01 B0                            LOADSTRING                    dst=v[0x10C], values=[0]
0046  09 00 30                               VIDEOREF                      ref=0x3000 (LA[0]=borup.vdx)
0049  22                                     COPY_BG_TO_FG                 
004A  40 D8 FF D8 FF                         SET_VIDEO_ORIGIN              x=-40, y=-40
004F  09 33 30                               VIDEOREF                      ref=0x3033 (LA[51]=la_b44.vdx)
0052  40 D8 FF 28 00                         SET_VIDEO_ORIGIN              x=-40, y=40
0057  09 38 30                               VIDEOREF                      ref=0x3038 (LA[56]=la_r04.vdx)
005A  40 28 00 28 00                         SET_VIDEO_ORIGIN              x=40, y=40
005F  09 1C 30                               VIDEOREF                      ref=0x301C (LA[28]=la_b00.vdx)
0062  40 28 00 D8 FF                         SET_VIDEO_ORIGIN              x=40, y=-40
0067  09 47 30                               VIDEOREF                      ref=0x3047 (LA[71]=la_r40.vdx)
006A  1A 07 01 B0 79 00                      STRCMP_NE_JMP                 start=v[0x107], values=[0], target=0x0079
0070  46                                     RESOURCE_CONTEXT_SAVE         
0071  07                                     VIDEOFLAG7_ON                 
0072  09 62 50                               VIDEOREF                      ref=0x5062 (GAMWAV[98]=17_e_2.vdx)
0075  47                                     RESOURCE_CONTEXT_RESTORE      
0076  1F 07 01                               INC                           var=v[0x107]
0079  96 19 62 30 30 30 30 30 72 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 72 30 30 30 30 30 E2 LOADSTRING                    dst=v[0x019], values=[50, 0, 0, 0, 0, 0, 66, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66, 0, 0, 0, 0, 0, 50]
00AC  22                                     COPY_BG_TO_FG                 
00AD  18 AC 08                               CALL                          target=0x08AC
00B0  1A 09 01 B0 B9 00                      STRCMP_NE_JMP                 start=v[0x109], values=[0], target=0x00B9
00B6  15 E0 00                               JMP                           target=0x00E0
00B9  18 8F 07                               CALL                          target=0x078F
00BC  1A 0A 01 B0 C5 00                      STRCMP_NE_JMP                 start=v[0x10A], values=[0], target=0x00C5
00C2  15 D7 00                               JMP                           target=0x00D7
00C5  1A 0B 01 B0 D4 00                      STRCMP_NE_JMP                 start=v[0x10B], values=[0], target=0x00D4
00CB  1A 0C 01 B0 D4 00                      STRCMP_NE_JMP                 start=v[0x10C], values=[0], target=0x00D4
00D1  15 1C 01                               JMP                           target=0x011C
00D4  15 AC 00                               JMP                           target=0x00AC
00D7  07                                     VIDEOFLAG7_ON                 
00D8  09 A0 50                               VIDEOREF                      ref=0x50A0 (GAMWAV[160]=gen_s_9.vdx)
00DB  96 EB E1                               LOADSTRING                    dst=v[0x0EB], values=[49]
00DE  43 00                                  RETURNSCRIPT                  value=0x00
00E0  07                                     VIDEOFLAG7_ON                 
00E1  09 90 50                               VIDEOREF                      ref=0x5090 (GAMWAV[144]=gen_e_10.vdx)
00E4  15 32 00                               JMP                           target=0x0032
00E7  96 00 30 30 30 B0                      LOADSTRING                    dst=v[0x000], values=[0, 0, 0, 0]
00ED  96 04 7C 23 63 23 E4                   LOADSTRING                    dst=v[0x004], values=[grid[v[0x002],v[0x003]]]
00F4  9A 04 F2 FB 00                         STRCMP_NE_JMP                 start=v[0x004], values=[66], target=0x00FB
00F9  9F 01                                  INC                           var=v[0x001]
00FB  9A 04 E2 02 01                         STRCMP_NE_JMP                 start=v[0x004], values=[50], target=0x0102
0100  9F 00                                  INC                           var=v[0x000]
0102  9A 03 B9 0F 01                         STRCMP_NE_JMP                 start=v[0x003], values=[9], target=0x010F
0107  9F 02                                  INC                           var=v[0x002]
0109  96 03 B0                               LOADSTRING                    dst=v[0x003], values=[0]
010C  15 11 01                               JMP                           target=0x0111
010F  9F 03                                  INC                           var=v[0x003]
0111  A3 02 35 B0 1A 01                      STRCMP_EQ_JMP                 start=v[0x002], values=[5, 0], target=0x011A
0117  15 ED 00                               JMP                           target=0x00ED
011A  17 00                                  RET                           value=0x00
011C  18 E7 00                               CALL                          target=0x00E7
011F  B6 01 23 E1 2B 01                      CHAR_LESS_JMP                 start=v[0x001], values=[v[0x000]], target=0x012B
0125  15 E0 00                               JMP                           target=0x00E0
0128  15 2E 01                               JMP                           target=0x012E
012B  15 D7 00                               JMP                           target=0x00D7
012E  16 0D 01 B0                            LOADSTRING                    dst=v[0x10D], values=[0]
0132  16 0E 01 B0                            LOADSTRING                    dst=v[0x10E], values=[0]
0136  16 0F 01 B0                            LOADSTRING                    dst=v[0x10F], values=[0]
013A  16 10 01 B3                            LOADSTRING                    dst=v[0x110], values=[3]
013E  96 17 23 61 23 E2                      LOADSTRING                    dst=v[0x017], values=[v[0x000], v[0x001]]
0144  96 02 B0                               LOADSTRING                    dst=v[0x002], values=[0]
0147  A0 17                                  DEC                           var=v[0x017]
0149  18 37 08                               CALL                          target=0x0837
014C  A0 18                                  DEC                           var=v[0x018]
014E  18 37 08                               CALL                          target=0x0837
0151  9F 17                                  INC                           var=v[0x017]
0153  18 37 08                               CALL                          target=0x0837
0156  9F 17                                  INC                           var=v[0x017]
0158  18 37 08                               CALL                          target=0x0837
015B  9F 18                                  INC                           var=v[0x018]
015D  18 37 08                               CALL                          target=0x0837
0160  9F 18                                  INC                           var=v[0x018]
0162  18 37 08                               CALL                          target=0x0837
0165  A0 17                                  DEC                           var=v[0x017]
0167  18 37 08                               CALL                          target=0x0837
016A  A0 17                                  DEC                           var=v[0x017]
016C  18 37 08                               CALL                          target=0x0837
016F  16 10 01 B0                            LOADSTRING                    dst=v[0x110], values=[0]
0173  A0 17                                  DEC                           var=v[0x017]
0175  18 37 08                               CALL                          target=0x0837
0178  A0 18                                  DEC                           var=v[0x018]
017A  18 37 08                               CALL                          target=0x0837
017D  A0 18                                  DEC                           var=v[0x018]
017F  18 37 08                               CALL                          target=0x0837
0182  A0 18                                  DEC                           var=v[0x018]
0184  18 37 08                               CALL                          target=0x0837
0187  9F 17                                  INC                           var=v[0x017]
0189  18 37 08                               CALL                          target=0x0837
018C  9F 17                                  INC                           var=v[0x017]
018E  18 37 08                               CALL                          target=0x0837
0191  9F 17                                  INC                           var=v[0x017]
0193  18 37 08                               CALL                          target=0x0837
0196  9F 17                                  INC                           var=v[0x017]
0198  18 37 08                               CALL                          target=0x0837
019B  9F 18                                  INC                           var=v[0x018]
019D  18 37 08                               CALL                          target=0x0837
01A0  9F 18                                  INC                           var=v[0x018]
01A2  18 37 08                               CALL                          target=0x0837
01A5  9F 18                                  INC                           var=v[0x018]
01A7  18 37 08                               CALL                          target=0x0837
01AA  9F 18                                  INC                           var=v[0x018]
01AC  18 37 08                               CALL                          target=0x0837
01AF  A0 17                                  DEC                           var=v[0x017]
01B1  18 37 08                               CALL                          target=0x0837
01B4  A0 17                                  DEC                           var=v[0x017]
01B6  18 37 08                               CALL                          target=0x0837
01B9  A0 17                                  DEC                           var=v[0x017]
01BB  18 37 08                               CALL                          target=0x0837
01BE  A0 17                                  DEC                           var=v[0x017]
01C0  18 37 08                               CALL                          target=0x0837
01C3  17 00                                  RET                           value=0x00
01C5  96 05 F8                               LOADSTRING                    dst=v[0x005], values=[72]
01C8  9A 17 30 B0 D2 01                      STRCMP_NE_JMP                 start=v[0x017], values=[0, 0], target=0x01D2
01CE  A4 05 19 00                            MOV                           dst=v[0x005], src=0x0019
01D2  9A 17 30 B1 DC 01                      STRCMP_NE_JMP                 start=v[0x017], values=[0, 1], target=0x01DC
01D8  A4 05 1A 00                            MOV                           dst=v[0x005], src=0x001A
01DC  9A 17 30 B2 E6 01                      STRCMP_NE_JMP                 start=v[0x017], values=[0, 2], target=0x01E6
01E2  A4 05 1B 00                            MOV                           dst=v[0x005], src=0x001B
01E6  9A 17 30 B3 F0 01                      STRCMP_NE_JMP                 start=v[0x017], values=[0, 3], target=0x01F0
01EC  A4 05 1C 00                            MOV                           dst=v[0x005], src=0x001C
01F0  9A 17 30 B4 FA 01                      STRCMP_NE_JMP                 start=v[0x017], values=[0, 4], target=0x01FA
01F6  A4 05 1D 00                            MOV                           dst=v[0x005], src=0x001D
01FA  9A 17 30 B5 04 02                      STRCMP_NE_JMP                 start=v[0x017], values=[0, 5], target=0x0204
0200  A4 05 1E 00                            MOV                           dst=v[0x005], src=0x001E
0204  9A 17 30 B6 0E 02                      STRCMP_NE_JMP                 start=v[0x017], values=[0, 6], target=0x020E
020A  A4 05 1F 00                            MOV                           dst=v[0x005], src=0x001F
020E  9A 17 31 B0 18 02                      STRCMP_NE_JMP                 start=v[0x017], values=[1, 0], target=0x0218
0214  A4 05 20 00                            MOV                           dst=v[0x005], src=0x0020
0218  9A 17 31 B1 22 02                      STRCMP_NE_JMP                 start=v[0x017], values=[1, 1], target=0x0222
021E  A4 05 21 00                            MOV                           dst=v[0x005], src=0x0021
0222  9A 17 31 B2 2C 02                      STRCMP_NE_JMP                 start=v[0x017], values=[1, 2], target=0x022C
0228  A4 05 22 00                            MOV                           dst=v[0x005], src=0x0022
022C  9A 17 31 B3 36 02                      STRCMP_NE_JMP                 start=v[0x017], values=[1, 3], target=0x0236
0232  A4 05 23 00                            MOV                           dst=v[0x005], src=0x0023
0236  9A 17 31 B4 40 02                      STRCMP_NE_JMP                 start=v[0x017], values=[1, 4], target=0x0240
023C  A4 05 24 00                            MOV                           dst=v[0x005], src=0x0024
0240  9A 17 31 B5 4A 02                      STRCMP_NE_JMP                 start=v[0x017], values=[1, 5], target=0x024A
0246  A4 05 25 00                            MOV                           dst=v[0x005], src=0x0025
024A  9A 17 31 B6 54 02                      STRCMP_NE_JMP                 start=v[0x017], values=[1, 6], target=0x0254
0250  A4 05 26 00                            MOV                           dst=v[0x005], src=0x0026
0254  9A 17 32 B0 5E 02                      STRCMP_NE_JMP                 start=v[0x017], values=[2, 0], target=0x025E
025A  A4 05 27 00                            MOV                           dst=v[0x005], src=0x0027
025E  9A 17 32 B1 68 02                      STRCMP_NE_JMP                 start=v[0x017], values=[2, 1], target=0x0268
0264  A4 05 28 00                            MOV                           dst=v[0x005], src=0x0028
0268  9A 17 32 B2 72 02                      STRCMP_NE_JMP                 start=v[0x017], values=[2, 2], target=0x0272
026E  A4 05 29 00                            MOV                           dst=v[0x005], src=0x0029
0272  9A 17 32 B3 7C 02                      STRCMP_NE_JMP                 start=v[0x017], values=[2, 3], target=0x027C
0278  A4 05 2A 00                            MOV                           dst=v[0x005], src=0x002A
027C  9A 17 32 B4 86 02                      STRCMP_NE_JMP                 start=v[0x017], values=[2, 4], target=0x0286
0282  A4 05 2B 00                            MOV                           dst=v[0x005], src=0x002B
0286  9A 17 32 B5 90 02                      STRCMP_NE_JMP                 start=v[0x017], values=[2, 5], target=0x0290
028C  A4 05 2C 00                            MOV                           dst=v[0x005], src=0x002C
0290  9A 17 32 B6 9A 02                      STRCMP_NE_JMP                 start=v[0x017], values=[2, 6], target=0x029A
0296  A4 05 2D 00                            MOV                           dst=v[0x005], src=0x002D
029A  9A 17 33 B0 A4 02                      STRCMP_NE_JMP                 start=v[0x017], values=[3, 0], target=0x02A4
02A0  A4 05 2E 00                            MOV                           dst=v[0x005], src=0x002E
02A4  9A 17 33 B1 AE 02                      STRCMP_NE_JMP                 start=v[0x017], values=[3, 1], target=0x02AE
02AA  A4 05 2F 00                            MOV                           dst=v[0x005], src=0x002F
02AE  9A 17 33 B2 B8 02                      STRCMP_NE_JMP                 start=v[0x017], values=[3, 2], target=0x02B8
02B4  A4 05 30 00                            MOV                           dst=v[0x005], src=0x0030
02B8  9A 17 33 B3 C2 02                      STRCMP_NE_JMP                 start=v[0x017], values=[3, 3], target=0x02C2
02BE  A4 05 31 00                            MOV                           dst=v[0x005], src=0x0031
02C2  9A 17 33 B4 CC 02                      STRCMP_NE_JMP                 start=v[0x017], values=[3, 4], target=0x02CC
02C8  A4 05 32 00                            MOV                           dst=v[0x005], src=0x0032
02CC  9A 17 33 B5 D6 02                      STRCMP_NE_JMP                 start=v[0x017], values=[3, 5], target=0x02D6
02D2  A4 05 33 00                            MOV                           dst=v[0x005], src=0x0033
02D6  9A 17 33 B6 E0 02                      STRCMP_NE_JMP                 start=v[0x017], values=[3, 6], target=0x02E0
02DC  A4 05 34 00                            MOV                           dst=v[0x005], src=0x0034
02E0  9A 17 34 B0 EA 02                      STRCMP_NE_JMP                 start=v[0x017], values=[4, 0], target=0x02EA
02E6  A4 05 35 00                            MOV                           dst=v[0x005], src=0x0035
02EA  9A 17 34 B1 F4 02                      STRCMP_NE_JMP                 start=v[0x017], values=[4, 1], target=0x02F4
02F0  A4 05 36 00                            MOV                           dst=v[0x005], src=0x0036
02F4  9A 17 34 B2 FE 02                      STRCMP_NE_JMP                 start=v[0x017], values=[4, 2], target=0x02FE
02FA  A4 05 37 00                            MOV                           dst=v[0x005], src=0x0037
02FE  9A 17 34 B3 08 03                      STRCMP_NE_JMP                 start=v[0x017], values=[4, 3], target=0x0308
0304  A4 05 38 00                            MOV                           dst=v[0x005], src=0x0038
0308  9A 17 34 B4 12 03                      STRCMP_NE_JMP                 start=v[0x017], values=[4, 4], target=0x0312
030E  A4 05 39 00                            MOV                           dst=v[0x005], src=0x0039
0312  9A 17 34 B5 1C 03                      STRCMP_NE_JMP                 start=v[0x017], values=[4, 5], target=0x031C
0318  A4 05 3A 00                            MOV                           dst=v[0x005], src=0x003A
031C  9A 17 34 B6 26 03                      STRCMP_NE_JMP                 start=v[0x017], values=[4, 6], target=0x0326
0322  A4 05 3B 00                            MOV                           dst=v[0x005], src=0x003B
0326  9A 17 35 B0 30 03                      STRCMP_NE_JMP                 start=v[0x017], values=[5, 0], target=0x0330
032C  A4 05 3C 00                            MOV                           dst=v[0x005], src=0x003C
0330  9A 17 35 B1 3A 03                      STRCMP_NE_JMP                 start=v[0x017], values=[5, 1], target=0x033A
0336  A4 05 3D 00                            MOV                           dst=v[0x005], src=0x003D
033A  9A 17 35 B2 44 03                      STRCMP_NE_JMP                 start=v[0x017], values=[5, 2], target=0x0344
0340  A4 05 3E 00                            MOV                           dst=v[0x005], src=0x003E
0344  9A 17 35 B3 4E 03                      STRCMP_NE_JMP                 start=v[0x017], values=[5, 3], target=0x034E
034A  A4 05 3F 00                            MOV                           dst=v[0x005], src=0x003F
034E  9A 17 35 B4 58 03                      STRCMP_NE_JMP                 start=v[0x017], values=[5, 4], target=0x0358
0354  A4 05 40 00                            MOV                           dst=v[0x005], src=0x0040
0358  9A 17 35 B5 62 03                      STRCMP_NE_JMP                 start=v[0x017], values=[5, 5], target=0x0362
035E  A4 05 41 00                            MOV                           dst=v[0x005], src=0x0041
0362  9A 17 35 B6 6C 03                      STRCMP_NE_JMP                 start=v[0x017], values=[5, 6], target=0x036C
0368  A4 05 42 00                            MOV                           dst=v[0x005], src=0x0042
036C  9A 17 36 B0 76 03                      STRCMP_NE_JMP                 start=v[0x017], values=[6, 0], target=0x0376
0372  A4 05 43 00                            MOV                           dst=v[0x005], src=0x0043
0376  9A 17 36 B1 80 03                      STRCMP_NE_JMP                 start=v[0x017], values=[6, 1], target=0x0380
037C  A4 05 44 00                            MOV                           dst=v[0x005], src=0x0044
0380  9A 17 36 B2 8A 03                      STRCMP_NE_JMP                 start=v[0x017], values=[6, 2], target=0x038A
0386  A4 05 45 00                            MOV                           dst=v[0x005], src=0x0045
038A  9A 17 36 B3 94 03                      STRCMP_NE_JMP                 start=v[0x017], values=[6, 3], target=0x0394
0390  A4 05 46 00                            MOV                           dst=v[0x005], src=0x0046
0394  9A 17 36 B4 9E 03                      STRCMP_NE_JMP                 start=v[0x017], values=[6, 4], target=0x039E
039A  A4 05 47 00                            MOV                           dst=v[0x005], src=0x0047
039E  9A 17 36 B5 A8 03                      STRCMP_NE_JMP                 start=v[0x017], values=[6, 5], target=0x03A8
03A4  A4 05 48 00                            MOV                           dst=v[0x005], src=0x0048
03A8  9A 17 36 B6 B2 03                      STRCMP_NE_JMP                 start=v[0x017], values=[6, 6], target=0x03B2
03AE  A4 05 49 00                            MOV                           dst=v[0x005], src=0x0049
03B2  17 00                                  RET                           value=0x00
03B4  9A 17 30 B0 BE 03                      STRCMP_NE_JMP                 start=v[0x017], values=[0, 0], target=0x03BE
03BA  A4 19 04 00                            MOV                           dst=v[0x019], src=0x0004
03BE  9A 17 30 B1 C8 03                      STRCMP_NE_JMP                 start=v[0x017], values=[0, 1], target=0x03C8
03C4  A4 1A 04 00                            MOV                           dst=v[0x01A], src=0x0004
03C8  9A 17 30 B2 D2 03                      STRCMP_NE_JMP                 start=v[0x017], values=[0, 2], target=0x03D2
03CE  A4 1B 04 00                            MOV                           dst=v[0x01B], src=0x0004
03D2  9A 17 30 B3 DC 03                      STRCMP_NE_JMP                 start=v[0x017], values=[0, 3], target=0x03DC
03D8  A4 1C 04 00                            MOV                           dst=v[0x01C], src=0x0004
03DC  9A 17 30 B4 E6 03                      STRCMP_NE_JMP                 start=v[0x017], values=[0, 4], target=0x03E6
03E2  A4 1D 04 00                            MOV                           dst=v[0x01D], src=0x0004
03E6  9A 17 30 B5 F0 03                      STRCMP_NE_JMP                 start=v[0x017], values=[0, 5], target=0x03F0
03EC  A4 1E 04 00                            MOV                           dst=v[0x01E], src=0x0004
03F0  9A 17 30 B6 FA 03                      STRCMP_NE_JMP                 start=v[0x017], values=[0, 6], target=0x03FA
03F6  A4 1F 04 00                            MOV                           dst=v[0x01F], src=0x0004
03FA  9A 17 31 B0 04 04                      STRCMP_NE_JMP                 start=v[0x017], values=[1, 0], target=0x0404
0400  A4 20 04 00                            MOV                           dst=v[0x020], src=0x0004
0404  9A 17 31 B1 0E 04                      STRCMP_NE_JMP                 start=v[0x017], values=[1, 1], target=0x040E
040A  A4 21 04 00                            MOV                           dst=v[0x021], src=0x0004
040E  9A 17 31 B2 18 04                      STRCMP_NE_JMP                 start=v[0x017], values=[1, 2], target=0x0418
0414  A4 22 04 00                            MOV                           dst=v[0x022], src=0x0004
0418  9A 17 31 B3 22 04                      STRCMP_NE_JMP                 start=v[0x017], values=[1, 3], target=0x0422
041E  A4 23 04 00                            MOV                           dst=v[0x023], src=0x0004
0422  9A 17 31 B4 2C 04                      STRCMP_NE_JMP                 start=v[0x017], values=[1, 4], target=0x042C
0428  A4 24 04 00                            MOV                           dst=v[0x024], src=0x0004
042C  9A 17 31 B5 36 04                      STRCMP_NE_JMP                 start=v[0x017], values=[1, 5], target=0x0436
0432  A4 25 04 00                            MOV                           dst=v[0x025], src=0x0004
0436  9A 17 31 B6 40 04                      STRCMP_NE_JMP                 start=v[0x017], values=[1, 6], target=0x0440
043C  A4 26 04 00                            MOV                           dst=v[0x026], src=0x0004
0440  9A 17 32 B0 4A 04                      STRCMP_NE_JMP                 start=v[0x017], values=[2, 0], target=0x044A
0446  A4 27 04 00                            MOV                           dst=v[0x027], src=0x0004
044A  9A 17 32 B1 54 04                      STRCMP_NE_JMP                 start=v[0x017], values=[2, 1], target=0x0454
0450  A4 28 04 00                            MOV                           dst=v[0x028], src=0x0004
0454  9A 17 32 B2 5E 04                      STRCMP_NE_JMP                 start=v[0x017], values=[2, 2], target=0x045E
045A  A4 29 04 00                            MOV                           dst=v[0x029], src=0x0004
045E  9A 17 32 B3 68 04                      STRCMP_NE_JMP                 start=v[0x017], values=[2, 3], target=0x0468
0464  A4 2A 04 00                            MOV                           dst=v[0x02A], src=0x0004
0468  9A 17 32 B4 72 04                      STRCMP_NE_JMP                 start=v[0x017], values=[2, 4], target=0x0472
046E  A4 2B 04 00                            MOV                           dst=v[0x02B], src=0x0004
0472  9A 17 32 B5 7C 04                      STRCMP_NE_JMP                 start=v[0x017], values=[2, 5], target=0x047C
0478  A4 2C 04 00                            MOV                           dst=v[0x02C], src=0x0004
047C  9A 17 32 B6 86 04                      STRCMP_NE_JMP                 start=v[0x017], values=[2, 6], target=0x0486
0482  A4 2D 04 00                            MOV                           dst=v[0x02D], src=0x0004
0486  9A 17 33 B0 90 04                      STRCMP_NE_JMP                 start=v[0x017], values=[3, 0], target=0x0490
048C  A4 2E 04 00                            MOV                           dst=v[0x02E], src=0x0004
0490  9A 17 33 B1 9A 04                      STRCMP_NE_JMP                 start=v[0x017], values=[3, 1], target=0x049A
0496  A4 2F 04 00                            MOV                           dst=v[0x02F], src=0x0004
049A  9A 17 33 B2 A4 04                      STRCMP_NE_JMP                 start=v[0x017], values=[3, 2], target=0x04A4
04A0  A4 30 04 00                            MOV                           dst=v[0x030], src=0x0004
04A4  9A 17 33 B3 AE 04                      STRCMP_NE_JMP                 start=v[0x017], values=[3, 3], target=0x04AE
04AA  A4 31 04 00                            MOV                           dst=v[0x031], src=0x0004
04AE  9A 17 33 B4 B8 04                      STRCMP_NE_JMP                 start=v[0x017], values=[3, 4], target=0x04B8
04B4  A4 32 04 00                            MOV                           dst=v[0x032], src=0x0004
04B8  9A 17 33 B5 C2 04                      STRCMP_NE_JMP                 start=v[0x017], values=[3, 5], target=0x04C2
04BE  A4 33 04 00                            MOV                           dst=v[0x033], src=0x0004
04C2  9A 17 33 B6 CC 04                      STRCMP_NE_JMP                 start=v[0x017], values=[3, 6], target=0x04CC
04C8  A4 34 04 00                            MOV                           dst=v[0x034], src=0x0004
04CC  9A 17 34 B0 D6 04                      STRCMP_NE_JMP                 start=v[0x017], values=[4, 0], target=0x04D6
04D2  A4 35 04 00                            MOV                           dst=v[0x035], src=0x0004
04D6  9A 17 34 B1 E0 04                      STRCMP_NE_JMP                 start=v[0x017], values=[4, 1], target=0x04E0
04DC  A4 36 04 00                            MOV                           dst=v[0x036], src=0x0004
04E0  9A 17 34 B2 EA 04                      STRCMP_NE_JMP                 start=v[0x017], values=[4, 2], target=0x04EA
04E6  A4 37 04 00                            MOV                           dst=v[0x037], src=0x0004
04EA  9A 17 34 B3 F4 04                      STRCMP_NE_JMP                 start=v[0x017], values=[4, 3], target=0x04F4
04F0  A4 38 04 00                            MOV                           dst=v[0x038], src=0x0004
04F4  9A 17 34 B4 FE 04                      STRCMP_NE_JMP                 start=v[0x017], values=[4, 4], target=0x04FE
04FA  A4 39 04 00                            MOV                           dst=v[0x039], src=0x0004
04FE  9A 17 34 B5 08 05                      STRCMP_NE_JMP                 start=v[0x017], values=[4, 5], target=0x0508
0504  A4 3A 04 00                            MOV                           dst=v[0x03A], src=0x0004
0508  9A 17 34 B6 12 05                      STRCMP_NE_JMP                 start=v[0x017], values=[4, 6], target=0x0512
050E  A4 3B 04 00                            MOV                           dst=v[0x03B], src=0x0004
0512  9A 17 35 B0 1C 05                      STRCMP_NE_JMP                 start=v[0x017], values=[5, 0], target=0x051C
0518  A4 3C 04 00                            MOV                           dst=v[0x03C], src=0x0004
051C  9A 17 35 B1 26 05                      STRCMP_NE_JMP                 start=v[0x017], values=[5, 1], target=0x0526
0522  A4 3D 04 00                            MOV                           dst=v[0x03D], src=0x0004
0526  9A 17 35 B2 30 05                      STRCMP_NE_JMP                 start=v[0x017], values=[5, 2], target=0x0530
052C  A4 3E 04 00                            MOV                           dst=v[0x03E], src=0x0004
0530  9A 17 35 B3 3A 05                      STRCMP_NE_JMP                 start=v[0x017], values=[5, 3], target=0x053A
0536  A4 3F 04 00                            MOV                           dst=v[0x03F], src=0x0004
053A  9A 17 35 B4 44 05                      STRCMP_NE_JMP                 start=v[0x017], values=[5, 4], target=0x0544
0540  A4 40 04 00                            MOV                           dst=v[0x040], src=0x0004
0544  9A 17 35 B5 4E 05                      STRCMP_NE_JMP                 start=v[0x017], values=[5, 5], target=0x054E
054A  A4 41 04 00                            MOV                           dst=v[0x041], src=0x0004
054E  9A 17 35 B6 58 05                      STRCMP_NE_JMP                 start=v[0x017], values=[5, 6], target=0x0558
0554  A4 42 04 00                            MOV                           dst=v[0x042], src=0x0004
0558  9A 17 36 B0 62 05                      STRCMP_NE_JMP                 start=v[0x017], values=[6, 0], target=0x0562
055E  A4 43 04 00                            MOV                           dst=v[0x043], src=0x0004
0562  9A 17 36 B1 6C 05                      STRCMP_NE_JMP                 start=v[0x017], values=[6, 1], target=0x056C
0568  A4 44 04 00                            MOV                           dst=v[0x044], src=0x0004
056C  9A 17 36 B2 76 05                      STRCMP_NE_JMP                 start=v[0x017], values=[6, 2], target=0x0576
0572  A4 45 04 00                            MOV                           dst=v[0x045], src=0x0004
0576  9A 17 36 B3 80 05                      STRCMP_NE_JMP                 start=v[0x017], values=[6, 3], target=0x0580
057C  A4 46 04 00                            MOV                           dst=v[0x046], src=0x0004
0580  9A 17 36 B4 8A 05                      STRCMP_NE_JMP                 start=v[0x017], values=[6, 4], target=0x058A
0586  A4 47 04 00                            MOV                           dst=v[0x047], src=0x0004
058A  9A 17 36 B5 94 05                      STRCMP_NE_JMP                 start=v[0x017], values=[6, 5], target=0x0594
0590  A4 48 04 00                            MOV                           dst=v[0x048], src=0x0004
0594  9A 17 36 B6 9E 05                      STRCMP_NE_JMP                 start=v[0x017], values=[6, 6], target=0x059E
059A  A4 49 04 00                            MOV                           dst=v[0x049], src=0x0004
059E  17 00                                  RET                           value=0x00
05A0  96 05 F8                               LOADSTRING                    dst=v[0x005], values=[72]
05A3  9A 17 30 B0 AD 05                      STRCMP_NE_JMP                 start=v[0x017], values=[0, 0], target=0x05AD
05A9  96 4B 23 E3                            LOADSTRING                    dst=v[0x04B], values=[v[0x002]]
05AD  9A 17 30 B1 B7 05                      STRCMP_NE_JMP                 start=v[0x017], values=[0, 1], target=0x05B7
05B3  96 4C 23 E3                            LOADSTRING                    dst=v[0x04C], values=[v[0x002]]
05B7  9A 17 30 B2 C1 05                      STRCMP_NE_JMP                 start=v[0x017], values=[0, 2], target=0x05C1
05BD  96 4D 23 E3                            LOADSTRING                    dst=v[0x04D], values=[v[0x002]]
05C1  9A 17 30 B3 CB 05                      STRCMP_NE_JMP                 start=v[0x017], values=[0, 3], target=0x05CB
05C7  96 4E 23 E3                            LOADSTRING                    dst=v[0x04E], values=[v[0x002]]
05CB  9A 17 30 B4 D5 05                      STRCMP_NE_JMP                 start=v[0x017], values=[0, 4], target=0x05D5
05D1  96 4F 23 E3                            LOADSTRING                    dst=v[0x04F], values=[v[0x002]]
05D5  9A 17 30 B5 DF 05                      STRCMP_NE_JMP                 start=v[0x017], values=[0, 5], target=0x05DF
05DB  96 50 23 E3                            LOADSTRING                    dst=v[0x050], values=[v[0x002]]
05DF  9A 17 30 B6 E9 05                      STRCMP_NE_JMP                 start=v[0x017], values=[0, 6], target=0x05E9
05E5  96 51 23 E3                            LOADSTRING                    dst=v[0x051], values=[v[0x002]]
05E9  9A 17 31 B0 F3 05                      STRCMP_NE_JMP                 start=v[0x017], values=[1, 0], target=0x05F3
05EF  96 52 23 E3                            LOADSTRING                    dst=v[0x052], values=[v[0x002]]
05F3  9A 17 31 B1 FD 05                      STRCMP_NE_JMP                 start=v[0x017], values=[1, 1], target=0x05FD
05F9  96 53 23 E3                            LOADSTRING                    dst=v[0x053], values=[v[0x002]]
05FD  9A 17 31 B2 07 06                      STRCMP_NE_JMP                 start=v[0x017], values=[1, 2], target=0x0607
0603  96 54 23 E3                            LOADSTRING                    dst=v[0x054], values=[v[0x002]]
0607  9A 17 31 B3 11 06                      STRCMP_NE_JMP                 start=v[0x017], values=[1, 3], target=0x0611
060D  96 55 23 E3                            LOADSTRING                    dst=v[0x055], values=[v[0x002]]
0611  9A 17 31 B4 1B 06                      STRCMP_NE_JMP                 start=v[0x017], values=[1, 4], target=0x061B
0617  96 56 23 E3                            LOADSTRING                    dst=v[0x056], values=[v[0x002]]
061B  9A 17 31 B5 25 06                      STRCMP_NE_JMP                 start=v[0x017], values=[1, 5], target=0x0625
0621  96 57 23 E3                            LOADSTRING                    dst=v[0x057], values=[v[0x002]]
0625  9A 17 31 B6 2F 06                      STRCMP_NE_JMP                 start=v[0x017], values=[1, 6], target=0x062F
062B  96 58 23 E3                            LOADSTRING                    dst=v[0x058], values=[v[0x002]]
062F  9A 17 32 B0 39 06                      STRCMP_NE_JMP                 start=v[0x017], values=[2, 0], target=0x0639
0635  96 59 23 E3                            LOADSTRING                    dst=v[0x059], values=[v[0x002]]
0639  9A 17 32 B1 43 06                      STRCMP_NE_JMP                 start=v[0x017], values=[2, 1], target=0x0643
063F  96 5A 23 E3                            LOADSTRING                    dst=v[0x05A], values=[v[0x002]]
0643  9A 17 32 B2 4D 06                      STRCMP_NE_JMP                 start=v[0x017], values=[2, 2], target=0x064D
0649  96 5B 23 E3                            LOADSTRING                    dst=v[0x05B], values=[v[0x002]]
064D  9A 17 32 B3 57 06                      STRCMP_NE_JMP                 start=v[0x017], values=[2, 3], target=0x0657
0653  96 5C 23 E3                            LOADSTRING                    dst=v[0x05C], values=[v[0x002]]
0657  9A 17 32 B4 61 06                      STRCMP_NE_JMP                 start=v[0x017], values=[2, 4], target=0x0661
065D  96 5D 23 E3                            LOADSTRING                    dst=v[0x05D], values=[v[0x002]]
0661  9A 17 32 B5 6B 06                      STRCMP_NE_JMP                 start=v[0x017], values=[2, 5], target=0x066B
0667  96 5E 23 E3                            LOADSTRING                    dst=v[0x05E], values=[v[0x002]]
066B  9A 17 32 B6 75 06                      STRCMP_NE_JMP                 start=v[0x017], values=[2, 6], target=0x0675
0671  96 5F 23 E3                            LOADSTRING                    dst=v[0x05F], values=[v[0x002]]
0675  9A 17 33 B0 7F 06                      STRCMP_NE_JMP                 start=v[0x017], values=[3, 0], target=0x067F
067B  96 60 23 E3                            LOADSTRING                    dst=v[0x060], values=[v[0x002]]
067F  9A 17 33 B1 89 06                      STRCMP_NE_JMP                 start=v[0x017], values=[3, 1], target=0x0689
0685  96 61 23 E3                            LOADSTRING                    dst=v[0x061], values=[v[0x002]]
0689  9A 17 33 B2 93 06                      STRCMP_NE_JMP                 start=v[0x017], values=[3, 2], target=0x0693
068F  96 62 23 E3                            LOADSTRING                    dst=v[0x062], values=[v[0x002]]
0693  9A 17 33 B3 9D 06                      STRCMP_NE_JMP                 start=v[0x017], values=[3, 3], target=0x069D
0699  96 63 23 E3                            LOADSTRING                    dst=v[0x063], values=[v[0x002]]
069D  9A 17 33 B4 A7 06                      STRCMP_NE_JMP                 start=v[0x017], values=[3, 4], target=0x06A7
06A3  96 64 23 E3                            LOADSTRING                    dst=v[0x064], values=[v[0x002]]
06A7  9A 17 33 B5 B1 06                      STRCMP_NE_JMP                 start=v[0x017], values=[3, 5], target=0x06B1
06AD  96 65 23 E3                            LOADSTRING                    dst=v[0x065], values=[v[0x002]]
06B1  9A 17 33 B6 BB 06                      STRCMP_NE_JMP                 start=v[0x017], values=[3, 6], target=0x06BB
06B7  96 66 23 E3                            LOADSTRING                    dst=v[0x066], values=[v[0x002]]
06BB  9A 17 34 B0 C5 06                      STRCMP_NE_JMP                 start=v[0x017], values=[4, 0], target=0x06C5
06C1  96 67 23 E3                            LOADSTRING                    dst=v[0x067], values=[v[0x002]]
06C5  9A 17 34 B1 CF 06                      STRCMP_NE_JMP                 start=v[0x017], values=[4, 1], target=0x06CF
06CB  96 68 23 E3                            LOADSTRING                    dst=v[0x068], values=[v[0x002]]
06CF  9A 17 34 B2 D9 06                      STRCMP_NE_JMP                 start=v[0x017], values=[4, 2], target=0x06D9
06D5  96 69 23 E3                            LOADSTRING                    dst=v[0x069], values=[v[0x002]]
06D9  9A 17 34 B3 E3 06                      STRCMP_NE_JMP                 start=v[0x017], values=[4, 3], target=0x06E3
06DF  96 6A 23 E3                            LOADSTRING                    dst=v[0x06A], values=[v[0x002]]
06E3  9A 17 34 B4 ED 06                      STRCMP_NE_JMP                 start=v[0x017], values=[4, 4], target=0x06ED
06E9  96 6B 23 E3                            LOADSTRING                    dst=v[0x06B], values=[v[0x002]]
06ED  9A 17 34 B5 F7 06                      STRCMP_NE_JMP                 start=v[0x017], values=[4, 5], target=0x06F7
06F3  96 6C 23 E3                            LOADSTRING                    dst=v[0x06C], values=[v[0x002]]
06F7  9A 17 34 B6 01 07                      STRCMP_NE_JMP                 start=v[0x017], values=[4, 6], target=0x0701
06FD  96 6D 23 E3                            LOADSTRING                    dst=v[0x06D], values=[v[0x002]]
0701  9A 17 35 B0 0B 07                      STRCMP_NE_JMP                 start=v[0x017], values=[5, 0], target=0x070B
0707  96 6E 23 E3                            LOADSTRING                    dst=v[0x06E], values=[v[0x002]]
070B  9A 17 35 B1 15 07                      STRCMP_NE_JMP                 start=v[0x017], values=[5, 1], target=0x0715
0711  96 6F 23 E3                            LOADSTRING                    dst=v[0x06F], values=[v[0x002]]
0715  9A 17 35 B2 1F 07                      STRCMP_NE_JMP                 start=v[0x017], values=[5, 2], target=0x071F
071B  96 70 23 E3                            LOADSTRING                    dst=v[0x070], values=[v[0x002]]
071F  9A 17 35 B3 29 07                      STRCMP_NE_JMP                 start=v[0x017], values=[5, 3], target=0x0729
0725  96 71 23 E3                            LOADSTRING                    dst=v[0x071], values=[v[0x002]]
0729  9A 17 35 B4 33 07                      STRCMP_NE_JMP                 start=v[0x017], values=[5, 4], target=0x0733
072F  96 72 23 E3                            LOADSTRING                    dst=v[0x072], values=[v[0x002]]
0733  9A 17 35 B5 3D 07                      STRCMP_NE_JMP                 start=v[0x017], values=[5, 5], target=0x073D
0739  96 73 23 E3                            LOADSTRING                    dst=v[0x073], values=[v[0x002]]
073D  9A 17 35 B6 47 07                      STRCMP_NE_JMP                 start=v[0x017], values=[5, 6], target=0x0747
0743  96 74 23 E3                            LOADSTRING                    dst=v[0x074], values=[v[0x002]]
0747  9A 17 36 B0 51 07                      STRCMP_NE_JMP                 start=v[0x017], values=[6, 0], target=0x0751
074D  96 75 23 E3                            LOADSTRING                    dst=v[0x075], values=[v[0x002]]
0751  9A 17 36 B1 5B 07                      STRCMP_NE_JMP                 start=v[0x017], values=[6, 1], target=0x075B
0757  96 76 23 E3                            LOADSTRING                    dst=v[0x076], values=[v[0x002]]
075B  9A 17 36 B2 65 07                      STRCMP_NE_JMP                 start=v[0x017], values=[6, 2], target=0x0765
0761  96 77 23 E3                            LOADSTRING                    dst=v[0x077], values=[v[0x002]]
0765  9A 17 36 B3 6F 07                      STRCMP_NE_JMP                 start=v[0x017], values=[6, 3], target=0x076F
076B  96 78 23 E3                            LOADSTRING                    dst=v[0x078], values=[v[0x002]]
076F  9A 17 36 B4 79 07                      STRCMP_NE_JMP                 start=v[0x017], values=[6, 4], target=0x0779
0775  96 79 23 E3                            LOADSTRING                    dst=v[0x079], values=[v[0x002]]
0779  9A 17 36 B5 83 07                      STRCMP_NE_JMP                 start=v[0x017], values=[6, 5], target=0x0783
077F  96 7A 23 E3                            LOADSTRING                    dst=v[0x07A], values=[v[0x002]]
0783  9A 17 36 B6 8D 07                      STRCMP_NE_JMP                 start=v[0x017], values=[6, 6], target=0x078D
0789  96 7B 23 E3                            LOADSTRING                    dst=v[0x07B], values=[v[0x002]]
078D  17 00                                  RET                           value=0x00
078F  16 11 01 B0                            LOADSTRING                    dst=v[0x111], values=[0]
0793  16 12 01 B0                            LOADSTRING                    dst=v[0x112], values=[0]
0797  16 13 01 B0                            LOADSTRING                    dst=v[0x113], values=[0]
079B  16 14 01 B0                            LOADSTRING                    dst=v[0x114], values=[0]
079F  16 15 01 B0                            LOADSTRING                    dst=v[0x115], values=[0]
07A3  16 16 01 B0                            LOADSTRING                    dst=v[0x116], values=[0]
07A7  96 00 30 B0                            LOADSTRING                    dst=v[0x000], values=[0, 0]
07AB  96 03 35 B0                            LOADSTRING                    dst=v[0x003], values=[5, 0]
07AF  16 0C 01 B0                            LOADSTRING                    dst=v[0x10C], values=[0]
07B3  16 0A 01 B0                            LOADSTRING                    dst=v[0x10A], values=[0]
07B7  96 17 23 61 23 E2                      LOADSTRING                    dst=v[0x017], values=[v[0x000], v[0x001]]
07BD  18 C5 01                               CALL                          target=0x01C5
07C0  9A 05 F2 E8 07                         STRCMP_NE_JMP                 start=v[0x005], values=[66], target=0x07E8
07C5  16 0A 01 B1                            LOADSTRING                    dst=v[0x10A], values=[1]
07C9  18 2E 01                               CALL                          target=0x012E
07CC  9A 02 B0 D7 07                         STRCMP_NE_JMP                 start=v[0x002], values=[0], target=0x07D7
07D1  96 7C B1                               LOADSTRING                    dst=v[0x07C], values=[1]
07D4  15 DE 07                               JMP                           target=0x07DE
07D7  96 7C B0                               LOADSTRING                    dst=v[0x07C], values=[0]
07DA  16 0C 01 B1                            LOADSTRING                    dst=v[0x10C], values=[1]
07DE  39 39 B9 23 64 23 E5                   GRID_SWAP                     row1=9, col1=9, row2=v[0x003], col2=v[0x004]
07E5  15 F2 07                               JMP                           target=0x07F2
07E8  96 7C B1                               LOADSTRING                    dst=v[0x07C], values=[1]
07EB  39 39 B9 23 64 23 E5                   GRID_SWAP                     row1=9, col1=9, row2=v[0x003], col2=v[0x004]
07F2  9A 01 B6 FF 07                         STRCMP_NE_JMP                 start=v[0x001], values=[6], target=0x07FF
07F7  9F 00                                  INC                           var=v[0x000]
07F9  96 01 B0                               LOADSTRING                    dst=v[0x001], values=[0]
07FC  15 01 08                               JMP                           target=0x0801
07FF  9F 01                                  INC                           var=v[0x001]
0801  9A 04 B9 0E 08                         STRCMP_NE_JMP                 start=v[0x004], values=[9], target=0x080E
0806  9F 03                                  INC                           var=v[0x003]
0808  96 04 B0                               LOADSTRING                    dst=v[0x004], values=[0]
080B  15 10 08                               JMP                           target=0x0810
080E  9F 04                                  INC                           var=v[0x004]
0810  A3 03 39 B9 19 08                      STRCMP_EQ_JMP                 start=v[0x003], values=[9, 9], target=0x0819
0816  15 B7 07                               JMP                           target=0x07B7
0819  1A 0C 01 B0 21 08                      STRCMP_NE_JMP                 start=v[0x10C], values=[0], target=0x0821
081F  17 00                                  RET                           value=0x00
0821  A4 00 11 01                            MOV                           dst=v[0x000], src=0x0111
0825  A4 01 12 01                            MOV                           dst=v[0x001], src=0x0112
0829  A4 02 15 01                            MOV                           dst=v[0x002], src=0x0115
082D  A4 03 16 01                            MOV                           dst=v[0x003], src=0x0116
0831  96 04 F2                               LOADSTRING                    dst=v[0x004], values=[66]
0834  15 47 15                               JMP                           target=0x1547
0837  18 C5 01                               CALL                          target=0x01C5
083A  9A 05 B0 AA 08                         STRCMP_NE_JMP                 start=v[0x005], values=[0], target=0x08AA
083F  9F 02                                  INC                           var=v[0x002]
0841  24 08 01 10 01                         MOV                           dst=v[0x108], src=0x0110
0846  18 B6 17                               CALL                          target=0x17B6
0849  A4 05 13 01                            MOV                           dst=v[0x005], src=0x0113
084D  36 08 01 23 E6 82 08                   CHAR_LESS_JMP                 start=v[0x108], values=[v[0x005]], target=0x0882
0854  1A 08 01 23 E6 66 08                   STRCMP_NE_JMP                 start=v[0x108], values=[v[0x005]], target=0x0866
085B  94 05 07                               RANDOM                        dst=v[0x005], max=0x07
085E  B6 05 B2 66 08                         CHAR_LESS_JMP                 start=v[0x005], values=[2], target=0x0866
0863  15 82 08                               JMP                           target=0x0882
0866  24 11 01 00 00                         MOV                           dst=v[0x111], src=0x0000
086B  24 12 01 01 00                         MOV                           dst=v[0x112], src=0x0001
0870  24 15 01 17 00                         MOV                           dst=v[0x115], src=0x0017
0875  24 16 01 18 00                         MOV                           dst=v[0x116], src=0x0018
087A  24 13 01 08 01                         MOV                           dst=v[0x113], src=0x0108
087F  15 AA 08                               JMP                           target=0x08AA
0882  1A 14 01 B0 AA 08                      STRCMP_NE_JMP                 start=v[0x114], values=[0], target=0x08AA
0888  1A 08 01 B0 AA 08                      STRCMP_NE_JMP                 start=v[0x108], values=[0], target=0x08AA
088E  1F 14 01                               INC                           var=v[0x114]
0891  24 11 01 00 00                         MOV                           dst=v[0x111], src=0x0000
0896  24 12 01 01 00                         MOV                           dst=v[0x112], src=0x0001
089B  24 15 01 17 00                         MOV                           dst=v[0x115], src=0x0017
08A0  24 16 01 18 00                         MOV                           dst=v[0x116], src=0x0018
08A5  24 13 01 08 01                         MOV                           dst=v[0x113], src=0x0108
08AA  17 00                                  RET                           value=0x00
08AC  96 00 30 B0                            LOADSTRING                    dst=v[0x000], values=[0, 0]
08B0  96 03 35 B0                            LOADSTRING                    dst=v[0x003], values=[5, 0]
08B4  16 0B 01 B0                            LOADSTRING                    dst=v[0x10B], values=[0]
08B8  16 09 01 B0                            LOADSTRING                    dst=v[0x109], values=[0]
08BC  96 17 23 61 23 E2                      LOADSTRING                    dst=v[0x017], values=[v[0x000], v[0x001]]
08C2  18 C5 01                               CALL                          target=0x01C5
08C5  9A 05 E2 ED 08                         STRCMP_NE_JMP                 start=v[0x005], values=[50], target=0x08ED
08CA  16 09 01 B1                            LOADSTRING                    dst=v[0x109], values=[1]
08CE  18 2E 01                               CALL                          target=0x012E
08D1  9A 02 B0 DC 08                         STRCMP_NE_JMP                 start=v[0x002], values=[0], target=0x08DC
08D6  96 7C B1                               LOADSTRING                    dst=v[0x07C], values=[1]
08D9  15 E3 08                               JMP                           target=0x08E3
08DC  96 7C B0                               LOADSTRING                    dst=v[0x07C], values=[0]
08DF  16 0B 01 B1                            LOADSTRING                    dst=v[0x10B], values=[1]
08E3  39 39 B9 23 64 23 E5                   GRID_SWAP                     row1=9, col1=9, row2=v[0x003], col2=v[0x004]
08EA  15 F7 08                               JMP                           target=0x08F7
08ED  96 7C B1                               LOADSTRING                    dst=v[0x07C], values=[1]
08F0  39 39 B9 23 64 23 E5                   GRID_SWAP                     row1=9, col1=9, row2=v[0x003], col2=v[0x004]
08F7  9A 01 B6 04 09                         STRCMP_NE_JMP                 start=v[0x001], values=[6], target=0x0904
08FC  9F 00                                  INC                           var=v[0x000]
08FE  96 01 B0                               LOADSTRING                    dst=v[0x001], values=[0]
0901  15 06 09                               JMP                           target=0x0906
0904  9F 01                                  INC                           var=v[0x001]
0906  9A 04 B9 13 09                         STRCMP_NE_JMP                 start=v[0x004], values=[9], target=0x0913
090B  9F 03                                  INC                           var=v[0x003]
090D  96 04 B0                               LOADSTRING                    dst=v[0x004], values=[0]
0910  15 15 09                               JMP                           target=0x0915
0913  9F 04                                  INC                           var=v[0x004]
0915  A3 03 39 B9 1E 09                      STRCMP_EQ_JMP                 start=v[0x003], values=[9, 9], target=0x091E
091B  15 BC 08                               JMP                           target=0x08BC
091E  1A 0B 01 B0 26 09                      STRCMP_NE_JMP                 start=v[0x10B], values=[0], target=0x0926
0924  17 00                                  RET                           value=0x00
0926  0B                                     INPUTLOOPSTART                
0927  9A 4B B0 38 09                         STRCMP_NE_JMP                 start=v[0x04B], values=[0], target=0x0938
092C  0D B4 00 63 00 DA 00 89 00 69 0C 09    HOTSPOT_RECT                  left=0x00B4, top=0x0063, right=0x00DA, bottom=0x0089, target=0x0C69, cursor=0x09
0938  9A 4C B0 49 09                         STRCMP_NE_JMP                 start=v[0x04C], values=[0], target=0x0949
093D  0D DC 00 63 00 02 01 89 00 70 0C 0A    HOTSPOT_RECT                  left=0x00DC, top=0x0063, right=0x0102, bottom=0x0089, target=0x0C70, cursor=0x0A
0949  9A 4D B0 5A 09                         STRCMP_NE_JMP                 start=v[0x04D], values=[0], target=0x095A
094E  0D 04 01 63 00 2A 01 89 00 77 0C 09    HOTSPOT_RECT                  left=0x0104, top=0x0063, right=0x012A, bottom=0x0089, target=0x0C77, cursor=0x09
095A  9A 4E B0 6B 09                         STRCMP_NE_JMP                 start=v[0x04E], values=[0], target=0x096B
095F  0D 2C 01 63 00 52 01 89 00 7E 0C 0A    HOTSPOT_RECT                  left=0x012C, top=0x0063, right=0x0152, bottom=0x0089, target=0x0C7E, cursor=0x0A
096B  9A 4F B0 7C 09                         STRCMP_NE_JMP                 start=v[0x04F], values=[0], target=0x097C
0970  0D 54 01 63 00 7A 01 89 00 85 0C 09    HOTSPOT_RECT                  left=0x0154, top=0x0063, right=0x017A, bottom=0x0089, target=0x0C85, cursor=0x09
097C  9A 50 B0 8D 09                         STRCMP_NE_JMP                 start=v[0x050], values=[0], target=0x098D
0981  0D 7C 01 63 00 A2 01 89 00 8C 0C 0A    HOTSPOT_RECT                  left=0x017C, top=0x0063, right=0x01A2, bottom=0x0089, target=0x0C8C, cursor=0x0A
098D  9A 51 B0 9E 09                         STRCMP_NE_JMP                 start=v[0x051], values=[0], target=0x099E
0992  0D A4 01 63 00 CA 01 89 00 93 0C 09    HOTSPOT_RECT                  left=0x01A4, top=0x0063, right=0x01CA, bottom=0x0089, target=0x0C93, cursor=0x09
099E  9A 52 B0 AF 09                         STRCMP_NE_JMP                 start=v[0x052], values=[0], target=0x09AF
09A3  0D B4 00 8B 00 DA 00 B1 00 9A 0C 0A    HOTSPOT_RECT                  left=0x00B4, top=0x008B, right=0x00DA, bottom=0x00B1, target=0x0C9A, cursor=0x0A
09AF  9A 53 B0 C0 09                         STRCMP_NE_JMP                 start=v[0x053], values=[0], target=0x09C0
09B4  0D DC 00 8B 00 02 01 B1 00 A1 0C 09    HOTSPOT_RECT                  left=0x00DC, top=0x008B, right=0x0102, bottom=0x00B1, target=0x0CA1, cursor=0x09
09C0  9A 54 B0 D1 09                         STRCMP_NE_JMP                 start=v[0x054], values=[0], target=0x09D1
09C5  0D 04 01 8B 00 2A 01 B1 00 A8 0C 0A    HOTSPOT_RECT                  left=0x0104, top=0x008B, right=0x012A, bottom=0x00B1, target=0x0CA8, cursor=0x0A
09D1  9A 55 B0 E2 09                         STRCMP_NE_JMP                 start=v[0x055], values=[0], target=0x09E2
09D6  0D 2C 01 8B 00 52 01 B1 00 AF 0C 09    HOTSPOT_RECT                  left=0x012C, top=0x008B, right=0x0152, bottom=0x00B1, target=0x0CAF, cursor=0x09
09E2  9A 56 B0 F3 09                         STRCMP_NE_JMP                 start=v[0x056], values=[0], target=0x09F3
09E7  0D 54 01 8B 00 7A 01 B1 00 B6 0C 0A    HOTSPOT_RECT                  left=0x0154, top=0x008B, right=0x017A, bottom=0x00B1, target=0x0CB6, cursor=0x0A
09F3  9A 57 B0 04 0A                         STRCMP_NE_JMP                 start=v[0x057], values=[0], target=0x0A04
09F8  0D 7C 01 8B 00 A2 01 B1 00 BD 0C 09    HOTSPOT_RECT                  left=0x017C, top=0x008B, right=0x01A2, bottom=0x00B1, target=0x0CBD, cursor=0x09
0A04  9A 58 B0 15 0A                         STRCMP_NE_JMP                 start=v[0x058], values=[0], target=0x0A15
0A09  0D A4 01 8B 00 CA 01 B1 00 C4 0C 0A    HOTSPOT_RECT                  left=0x01A4, top=0x008B, right=0x01CA, bottom=0x00B1, target=0x0CC4, cursor=0x0A
0A15  9A 59 B0 26 0A                         STRCMP_NE_JMP                 start=v[0x059], values=[0], target=0x0A26
0A1A  0D B4 00 B3 00 DA 00 D9 00 CB 0C 09    HOTSPOT_RECT                  left=0x00B4, top=0x00B3, right=0x00DA, bottom=0x00D9, target=0x0CCB, cursor=0x09
0A26  9A 5A B0 37 0A                         STRCMP_NE_JMP                 start=v[0x05A], values=[0], target=0x0A37
0A2B  0D DC 00 B3 00 02 01 D9 00 D2 0C 0A    HOTSPOT_RECT                  left=0x00DC, top=0x00B3, right=0x0102, bottom=0x00D9, target=0x0CD2, cursor=0x0A
0A37  9A 5B B0 48 0A                         STRCMP_NE_JMP                 start=v[0x05B], values=[0], target=0x0A48
0A3C  0D 04 01 B3 00 2A 01 D9 00 D9 0C 09    HOTSPOT_RECT                  left=0x0104, top=0x00B3, right=0x012A, bottom=0x00D9, target=0x0CD9, cursor=0x09
0A48  9A 5C B0 59 0A                         STRCMP_NE_JMP                 start=v[0x05C], values=[0], target=0x0A59
0A4D  0D 2C 01 B3 00 52 01 D9 00 E0 0C 0A    HOTSPOT_RECT                  left=0x012C, top=0x00B3, right=0x0152, bottom=0x00D9, target=0x0CE0, cursor=0x0A
0A59  9A 5D B0 6A 0A                         STRCMP_NE_JMP                 start=v[0x05D], values=[0], target=0x0A6A
0A5E  0D 54 01 B3 00 7A 01 D9 00 E7 0C 09    HOTSPOT_RECT                  left=0x0154, top=0x00B3, right=0x017A, bottom=0x00D9, target=0x0CE7, cursor=0x09
0A6A  9A 5E B0 7B 0A                         STRCMP_NE_JMP                 start=v[0x05E], values=[0], target=0x0A7B
0A6F  0D 7C 01 B3 00 A2 01 D9 00 EE 0C 0A    HOTSPOT_RECT                  left=0x017C, top=0x00B3, right=0x01A2, bottom=0x00D9, target=0x0CEE, cursor=0x0A
0A7B  9A 5F B0 8C 0A                         STRCMP_NE_JMP                 start=v[0x05F], values=[0], target=0x0A8C
0A80  0D A4 01 B3 00 CA 01 D9 00 F5 0C 09    HOTSPOT_RECT                  left=0x01A4, top=0x00B3, right=0x01CA, bottom=0x00D9, target=0x0CF5, cursor=0x09
0A8C  9A 60 B0 9D 0A                         STRCMP_NE_JMP                 start=v[0x060], values=[0], target=0x0A9D
0A91  0D B4 00 DB 00 DA 00 01 01 FC 0C 0A    HOTSPOT_RECT                  left=0x00B4, top=0x00DB, right=0x00DA, bottom=0x0101, target=0x0CFC, cursor=0x0A
0A9D  9A 61 B0 AE 0A                         STRCMP_NE_JMP                 start=v[0x061], values=[0], target=0x0AAE
0AA2  0D DC 00 DB 00 02 01 01 01 03 0D 09    HOTSPOT_RECT                  left=0x00DC, top=0x00DB, right=0x0102, bottom=0x0101, target=0x0D03, cursor=0x09
0AAE  9A 62 B0 BF 0A                         STRCMP_NE_JMP                 start=v[0x062], values=[0], target=0x0ABF
0AB3  0D 04 01 DB 00 2A 01 01 01 0A 0D 0A    HOTSPOT_RECT                  left=0x0104, top=0x00DB, right=0x012A, bottom=0x0101, target=0x0D0A, cursor=0x0A
0ABF  9A 63 B0 D0 0A                         STRCMP_NE_JMP                 start=v[0x063], values=[0], target=0x0AD0
0AC4  0D 2C 01 DB 00 52 01 01 01 11 0D 09    HOTSPOT_RECT                  left=0x012C, top=0x00DB, right=0x0152, bottom=0x0101, target=0x0D11, cursor=0x09
0AD0  9A 64 B0 E1 0A                         STRCMP_NE_JMP                 start=v[0x064], values=[0], target=0x0AE1
0AD5  0D 54 01 DB 00 7A 01 01 01 18 0D 0A    HOTSPOT_RECT                  left=0x0154, top=0x00DB, right=0x017A, bottom=0x0101, target=0x0D18, cursor=0x0A
0AE1  9A 65 B0 F2 0A                         STRCMP_NE_JMP                 start=v[0x065], values=[0], target=0x0AF2
0AE6  0D 7C 01 DB 00 A2 01 01 01 1F 0D 09    HOTSPOT_RECT                  left=0x017C, top=0x00DB, right=0x01A2, bottom=0x0101, target=0x0D1F, cursor=0x09
0AF2  9A 66 B0 03 0B                         STRCMP_NE_JMP                 start=v[0x066], values=[0], target=0x0B03
0AF7  0D A4 01 DB 00 CA 01 01 01 26 0D 0A    HOTSPOT_RECT                  left=0x01A4, top=0x00DB, right=0x01CA, bottom=0x0101, target=0x0D26, cursor=0x0A
0B03  9A 67 B0 14 0B                         STRCMP_NE_JMP                 start=v[0x067], values=[0], target=0x0B14
0B08  0D B4 00 03 01 DA 00 29 01 2D 0D 09    HOTSPOT_RECT                  left=0x00B4, top=0x0103, right=0x00DA, bottom=0x0129, target=0x0D2D, cursor=0x09
0B14  9A 68 B0 25 0B                         STRCMP_NE_JMP                 start=v[0x068], values=[0], target=0x0B25
0B19  0D DC 00 03 01 02 01 29 01 34 0D 0A    HOTSPOT_RECT                  left=0x00DC, top=0x0103, right=0x0102, bottom=0x0129, target=0x0D34, cursor=0x0A
0B25  9A 69 B0 36 0B                         STRCMP_NE_JMP                 start=v[0x069], values=[0], target=0x0B36
0B2A  0D 04 01 03 01 2A 01 29 01 3B 0D 09    HOTSPOT_RECT                  left=0x0104, top=0x0103, right=0x012A, bottom=0x0129, target=0x0D3B, cursor=0x09
0B36  9A 6A B0 47 0B                         STRCMP_NE_JMP                 start=v[0x06A], values=[0], target=0x0B47
0B3B  0D 2C 01 03 01 52 01 29 01 42 0D 0A    HOTSPOT_RECT                  left=0x012C, top=0x0103, right=0x0152, bottom=0x0129, target=0x0D42, cursor=0x0A
0B47  9A 6B B0 58 0B                         STRCMP_NE_JMP                 start=v[0x06B], values=[0], target=0x0B58
0B4C  0D 54 01 03 01 7A 01 29 01 49 0D 09    HOTSPOT_RECT                  left=0x0154, top=0x0103, right=0x017A, bottom=0x0129, target=0x0D49, cursor=0x09
0B58  9A 6C B0 69 0B                         STRCMP_NE_JMP                 start=v[0x06C], values=[0], target=0x0B69
0B5D  0D 7C 01 03 01 A2 01 29 01 50 0D 0A    HOTSPOT_RECT                  left=0x017C, top=0x0103, right=0x01A2, bottom=0x0129, target=0x0D50, cursor=0x0A
0B69  9A 6D B0 7A 0B                         STRCMP_NE_JMP                 start=v[0x06D], values=[0], target=0x0B7A
0B6E  0D A4 01 03 01 CA 01 29 01 57 0D 09    HOTSPOT_RECT                  left=0x01A4, top=0x0103, right=0x01CA, bottom=0x0129, target=0x0D57, cursor=0x09
0B7A  9A 6E B0 8B 0B                         STRCMP_NE_JMP                 start=v[0x06E], values=[0], target=0x0B8B
0B7F  0D B4 00 2B 01 DA 00 51 01 5E 0D 0A    HOTSPOT_RECT                  left=0x00B4, top=0x012B, right=0x00DA, bottom=0x0151, target=0x0D5E, cursor=0x0A
0B8B  9A 6F B0 9C 0B                         STRCMP_NE_JMP                 start=v[0x06F], values=[0], target=0x0B9C
0B90  0D DC 00 2B 01 02 01 51 01 65 0D 09    HOTSPOT_RECT                  left=0x00DC, top=0x012B, right=0x0102, bottom=0x0151, target=0x0D65, cursor=0x09
0B9C  9A 70 B0 AD 0B                         STRCMP_NE_JMP                 start=v[0x070], values=[0], target=0x0BAD
0BA1  0D 04 01 2B 01 2A 01 51 01 6C 0D 0A    HOTSPOT_RECT                  left=0x0104, top=0x012B, right=0x012A, bottom=0x0151, target=0x0D6C, cursor=0x0A
0BAD  9A 71 B0 BE 0B                         STRCMP_NE_JMP                 start=v[0x071], values=[0], target=0x0BBE
0BB2  0D 2C 01 2B 01 52 01 51 01 73 0D 09    HOTSPOT_RECT                  left=0x012C, top=0x012B, right=0x0152, bottom=0x0151, target=0x0D73, cursor=0x09
0BBE  9A 72 B0 CF 0B                         STRCMP_NE_JMP                 start=v[0x072], values=[0], target=0x0BCF
0BC3  0D 54 01 2B 01 7A 01 51 01 7A 0D 0A    HOTSPOT_RECT                  left=0x0154, top=0x012B, right=0x017A, bottom=0x0151, target=0x0D7A, cursor=0x0A
0BCF  9A 73 B0 E0 0B                         STRCMP_NE_JMP                 start=v[0x073], values=[0], target=0x0BE0
0BD4  0D 7C 01 2B 01 A2 01 51 01 81 0D 09    HOTSPOT_RECT                  left=0x017C, top=0x012B, right=0x01A2, bottom=0x0151, target=0x0D81, cursor=0x09
0BE0  9A 74 B0 F1 0B                         STRCMP_NE_JMP                 start=v[0x074], values=[0], target=0x0BF1
0BE5  0D A4 01 2B 01 CA 01 51 01 88 0D 0A    HOTSPOT_RECT                  left=0x01A4, top=0x012B, right=0x01CA, bottom=0x0151, target=0x0D88, cursor=0x0A
0BF1  9A 75 B0 02 0C                         STRCMP_NE_JMP                 start=v[0x075], values=[0], target=0x0C02
0BF6  0D B4 00 53 01 DA 00 79 01 8F 0D 09    HOTSPOT_RECT                  left=0x00B4, top=0x0153, right=0x00DA, bottom=0x0179, target=0x0D8F, cursor=0x09
0C02  9A 76 B0 13 0C                         STRCMP_NE_JMP                 start=v[0x076], values=[0], target=0x0C13
0C07  0D DC 00 53 01 02 01 79 01 96 0D 0A    HOTSPOT_RECT                  left=0x00DC, top=0x0153, right=0x0102, bottom=0x0179, target=0x0D96, cursor=0x0A
0C13  9A 77 B0 24 0C                         STRCMP_NE_JMP                 start=v[0x077], values=[0], target=0x0C24
0C18  0D 04 01 53 01 2A 01 79 01 9D 0D 09    HOTSPOT_RECT                  left=0x0104, top=0x0153, right=0x012A, bottom=0x0179, target=0x0D9D, cursor=0x09
0C24  9A 78 B0 35 0C                         STRCMP_NE_JMP                 start=v[0x078], values=[0], target=0x0C35
0C29  0D 2C 01 53 01 52 01 79 01 A4 0D 0A    HOTSPOT_RECT                  left=0x012C, top=0x0153, right=0x0152, bottom=0x0179, target=0x0DA4, cursor=0x0A
0C35  9A 79 B0 46 0C                         STRCMP_NE_JMP                 start=v[0x079], values=[0], target=0x0C46
0C3A  0D 54 01 53 01 7A 01 79 01 AB 0D 09    HOTSPOT_RECT                  left=0x0154, top=0x0153, right=0x017A, bottom=0x0179, target=0x0DAB, cursor=0x09
0C46  9A 7A B0 57 0C                         STRCMP_NE_JMP                 start=v[0x07A], values=[0], target=0x0C57
0C4B  0D 7C 01 53 01 A2 01 79 01 B2 0D 0A    HOTSPOT_RECT                  left=0x017C, top=0x0153, right=0x01A2, bottom=0x0179, target=0x0DB2, cursor=0x0A
0C57  9A 7B B0 68 0C                         STRCMP_NE_JMP                 start=v[0x07B], values=[0], target=0x0C68
0C5C  0D A4 01 53 01 CA 01 79 01 B9 0D 09    HOTSPOT_RECT                  left=0x01A4, top=0x0153, right=0x01CA, bottom=0x0179, target=0x0DB9, cursor=0x09
0C68  13                                     INPUTLOOPEND                  
0C69  96 00 30 B0                            LOADSTRING                    dst=v[0x000], values=[0, 0]
0C6D  15 D6 0D                               JMP                           target=0x0DD6
0C70  96 00 30 B1                            LOADSTRING                    dst=v[0x000], values=[0, 1]
0C74  15 D6 0D                               JMP                           target=0x0DD6
0C77  96 00 30 B2                            LOADSTRING                    dst=v[0x000], values=[0, 2]
0C7B  15 D6 0D                               JMP                           target=0x0DD6
0C7E  96 00 30 B3                            LOADSTRING                    dst=v[0x000], values=[0, 3]
0C82  15 D6 0D                               JMP                           target=0x0DD6
0C85  96 00 30 B4                            LOADSTRING                    dst=v[0x000], values=[0, 4]
0C89  15 D6 0D                               JMP                           target=0x0DD6
0C8C  96 00 30 B5                            LOADSTRING                    dst=v[0x000], values=[0, 5]
0C90  15 D6 0D                               JMP                           target=0x0DD6
0C93  96 00 30 B6                            LOADSTRING                    dst=v[0x000], values=[0, 6]
0C97  15 D6 0D                               JMP                           target=0x0DD6
0C9A  96 00 31 B0                            LOADSTRING                    dst=v[0x000], values=[1, 0]
0C9E  15 D6 0D                               JMP                           target=0x0DD6
0CA1  96 00 31 B1                            LOADSTRING                    dst=v[0x000], values=[1, 1]
0CA5  15 D6 0D                               JMP                           target=0x0DD6
0CA8  96 00 31 B2                            LOADSTRING                    dst=v[0x000], values=[1, 2]
0CAC  15 D6 0D                               JMP                           target=0x0DD6
0CAF  96 00 31 B3                            LOADSTRING                    dst=v[0x000], values=[1, 3]
0CB3  15 D6 0D                               JMP                           target=0x0DD6
0CB6  96 00 31 B4                            LOADSTRING                    dst=v[0x000], values=[1, 4]
0CBA  15 D6 0D                               JMP                           target=0x0DD6
0CBD  96 00 31 B5                            LOADSTRING                    dst=v[0x000], values=[1, 5]
0CC1  15 D6 0D                               JMP                           target=0x0DD6
0CC4  96 00 31 B6                            LOADSTRING                    dst=v[0x000], values=[1, 6]
0CC8  15 D6 0D                               JMP                           target=0x0DD6
0CCB  96 00 32 B0                            LOADSTRING                    dst=v[0x000], values=[2, 0]
0CCF  15 D6 0D                               JMP                           target=0x0DD6
0CD2  96 00 32 B1                            LOADSTRING                    dst=v[0x000], values=[2, 1]
0CD6  15 D6 0D                               JMP                           target=0x0DD6
0CD9  96 00 32 B2                            LOADSTRING                    dst=v[0x000], values=[2, 2]
0CDD  15 D6 0D                               JMP                           target=0x0DD6
0CE0  96 00 32 B3                            LOADSTRING                    dst=v[0x000], values=[2, 3]
0CE4  15 D6 0D                               JMP                           target=0x0DD6
0CE7  96 00 32 B4                            LOADSTRING                    dst=v[0x000], values=[2, 4]
0CEB  15 D6 0D                               JMP                           target=0x0DD6
0CEE  96 00 32 B5                            LOADSTRING                    dst=v[0x000], values=[2, 5]
0CF2  15 D6 0D                               JMP                           target=0x0DD6
0CF5  96 00 32 B6                            LOADSTRING                    dst=v[0x000], values=[2, 6]
0CF9  15 D6 0D                               JMP                           target=0x0DD6
0CFC  96 00 33 B0                            LOADSTRING                    dst=v[0x000], values=[3, 0]
0D00  15 D6 0D                               JMP                           target=0x0DD6
0D03  96 00 33 B1                            LOADSTRING                    dst=v[0x000], values=[3, 1]
0D07  15 D6 0D                               JMP                           target=0x0DD6
0D0A  96 00 33 B2                            LOADSTRING                    dst=v[0x000], values=[3, 2]
0D0E  15 D6 0D                               JMP                           target=0x0DD6
0D11  96 00 33 B3                            LOADSTRING                    dst=v[0x000], values=[3, 3]
0D15  15 D6 0D                               JMP                           target=0x0DD6
0D18  96 00 33 B4                            LOADSTRING                    dst=v[0x000], values=[3, 4]
0D1C  15 D6 0D                               JMP                           target=0x0DD6
0D1F  96 00 33 B5                            LOADSTRING                    dst=v[0x000], values=[3, 5]
0D23  15 D6 0D                               JMP                           target=0x0DD6
0D26  96 00 33 B6                            LOADSTRING                    dst=v[0x000], values=[3, 6]
0D2A  15 D6 0D                               JMP                           target=0x0DD6
0D2D  96 00 34 B0                            LOADSTRING                    dst=v[0x000], values=[4, 0]
0D31  15 D6 0D                               JMP                           target=0x0DD6
0D34  96 00 34 B1                            LOADSTRING                    dst=v[0x000], values=[4, 1]
0D38  15 D6 0D                               JMP                           target=0x0DD6
0D3B  96 00 34 B2                            LOADSTRING                    dst=v[0x000], values=[4, 2]
0D3F  15 D6 0D                               JMP                           target=0x0DD6
0D42  96 00 34 B3                            LOADSTRING                    dst=v[0x000], values=[4, 3]
0D46  15 D6 0D                               JMP                           target=0x0DD6
0D49  96 00 34 B4                            LOADSTRING                    dst=v[0x000], values=[4, 4]
0D4D  15 D6 0D                               JMP                           target=0x0DD6
0D50  96 00 34 B5                            LOADSTRING                    dst=v[0x000], values=[4, 5]
0D54  15 D6 0D                               JMP                           target=0x0DD6
0D57  96 00 34 B6                            LOADSTRING                    dst=v[0x000], values=[4, 6]
0D5B  15 D6 0D                               JMP                           target=0x0DD6
0D5E  96 00 35 B0                            LOADSTRING                    dst=v[0x000], values=[5, 0]
0D62  15 D6 0D                               JMP                           target=0x0DD6
0D65  96 00 35 B1                            LOADSTRING                    dst=v[0x000], values=[5, 1]
0D69  15 D6 0D                               JMP                           target=0x0DD6
0D6C  96 00 35 B2                            LOADSTRING                    dst=v[0x000], values=[5, 2]
0D70  15 D6 0D                               JMP                           target=0x0DD6
0D73  96 00 35 B3                            LOADSTRING                    dst=v[0x000], values=[5, 3]
0D77  15 D6 0D                               JMP                           target=0x0DD6
0D7A  96 00 35 B4                            LOADSTRING                    dst=v[0x000], values=[5, 4]
0D7E  15 D6 0D                               JMP                           target=0x0DD6
0D81  96 00 35 B5                            LOADSTRING                    dst=v[0x000], values=[5, 5]
0D85  15 D6 0D                               JMP                           target=0x0DD6
0D88  96 00 35 B6                            LOADSTRING                    dst=v[0x000], values=[5, 6]
0D8C  15 D6 0D                               JMP                           target=0x0DD6
0D8F  96 00 36 B0                            LOADSTRING                    dst=v[0x000], values=[6, 0]
0D93  15 D6 0D                               JMP                           target=0x0DD6
0D96  96 00 36 B1                            LOADSTRING                    dst=v[0x000], values=[6, 1]
0D9A  15 D6 0D                               JMP                           target=0x0DD6
0D9D  96 00 36 B2                            LOADSTRING                    dst=v[0x000], values=[6, 2]
0DA1  15 D6 0D                               JMP                           target=0x0DD6
0DA4  96 00 36 B3                            LOADSTRING                    dst=v[0x000], values=[6, 3]
0DA8  15 D6 0D                               JMP                           target=0x0DD6
0DAB  96 00 36 B4                            LOADSTRING                    dst=v[0x000], values=[6, 4]
0DAF  15 D6 0D                               JMP                           target=0x0DD6
0DB2  96 00 36 B5                            LOADSTRING                    dst=v[0x000], values=[6, 5]
0DB6  15 D6 0D                               JMP                           target=0x0DD6
0DB9  96 00 36 B6                            LOADSTRING                    dst=v[0x000], values=[6, 6]
0DBD  15 D6 0D                               JMP                           target=0x0DD6
0DC0  18 C5 01                               CALL                          target=0x01C5
0DC3  9A 05 B0 CE 0D                         STRCMP_NE_JMP                 start=v[0x005], values=[0], target=0x0DCE
0DC8  96 02 B0                               LOADSTRING                    dst=v[0x002], values=[0]
0DCB  15 D1 0D                               JMP                           target=0x0DD1
0DCE  96 02 B1                               LOADSTRING                    dst=v[0x002], values=[1]
0DD1  18 A0 05                               CALL                          target=0x05A0
0DD4  17 00                                  RET                           value=0x00
0DD6  96 4B 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 F8 LOADSTRING                    dst=v[0x04B], values=[72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72]
0E09  96 02 B0                               LOADSTRING                    dst=v[0x002], values=[0]
0E0C  96 17 23 61 23 E2                      LOADSTRING                    dst=v[0x017], values=[v[0x000], v[0x001]]
0E12  18 A0 05                               CALL                          target=0x05A0
0E15  A0 17                                  DEC                           var=v[0x017]
0E17  18 C0 0D                               CALL                          target=0x0DC0
0E1A  A0 18                                  DEC                           var=v[0x018]
0E1C  18 C0 0D                               CALL                          target=0x0DC0
0E1F  9F 17                                  INC                           var=v[0x017]
0E21  18 C0 0D                               CALL                          target=0x0DC0
0E24  9F 17                                  INC                           var=v[0x017]
0E26  18 C0 0D                               CALL                          target=0x0DC0
0E29  9F 18                                  INC                           var=v[0x018]
0E2B  18 C0 0D                               CALL                          target=0x0DC0
0E2E  9F 18                                  INC                           var=v[0x018]
0E30  18 C0 0D                               CALL                          target=0x0DC0
0E33  A0 17                                  DEC                           var=v[0x017]
0E35  18 C0 0D                               CALL                          target=0x0DC0
0E38  A0 17                                  DEC                           var=v[0x017]
0E3A  18 C0 0D                               CALL                          target=0x0DC0
0E3D  A0 17                                  DEC                           var=v[0x017]
0E3F  18 C0 0D                               CALL                          target=0x0DC0
0E42  A0 18                                  DEC                           var=v[0x018]
0E44  18 C0 0D                               CALL                          target=0x0DC0
0E47  A0 18                                  DEC                           var=v[0x018]
0E49  18 C0 0D                               CALL                          target=0x0DC0
0E4C  A0 18                                  DEC                           var=v[0x018]
0E4E  18 C0 0D                               CALL                          target=0x0DC0
0E51  9F 17                                  INC                           var=v[0x017]
0E53  18 C0 0D                               CALL                          target=0x0DC0
0E56  9F 17                                  INC                           var=v[0x017]
0E58  18 C0 0D                               CALL                          target=0x0DC0
0E5B  9F 17                                  INC                           var=v[0x017]
0E5D  18 C0 0D                               CALL                          target=0x0DC0
0E60  9F 17                                  INC                           var=v[0x017]
0E62  18 C0 0D                               CALL                          target=0x0DC0
0E65  9F 18                                  INC                           var=v[0x018]
0E67  18 C0 0D                               CALL                          target=0x0DC0
0E6A  9F 18                                  INC                           var=v[0x018]
0E6C  18 C0 0D                               CALL                          target=0x0DC0
0E6F  9F 18                                  INC                           var=v[0x018]
0E71  18 C0 0D                               CALL                          target=0x0DC0
0E74  9F 18                                  INC                           var=v[0x018]
0E76  18 C0 0D                               CALL                          target=0x0DC0
0E79  A0 17                                  DEC                           var=v[0x017]
0E7B  18 C0 0D                               CALL                          target=0x0DC0
0E7E  A0 17                                  DEC                           var=v[0x017]
0E80  18 C0 0D                               CALL                          target=0x0DC0
0E83  A0 17                                  DEC                           var=v[0x017]
0E85  18 C0 0D                               CALL                          target=0x0DC0
0E88  A0 17                                  DEC                           var=v[0x017]
0E8A  18 C0 0D                               CALL                          target=0x0DC0
0E8D  96 04 E2                               LOADSTRING                    dst=v[0x004], values=[50]
0E90  0B                                     INPUTLOOPSTART                
0E91  9A 4B B0 A2 0E                         STRCMP_NE_JMP                 start=v[0x04B], values=[0], target=0x0EA2
0E96  0D B4 00 63 00 DA 00 89 00 D3 11 0A    HOTSPOT_RECT                  left=0x00B4, top=0x0063, right=0x00DA, bottom=0x0089, target=0x11D3, cursor=0x0A
0EA2  9A 4C B0 B3 0E                         STRCMP_NE_JMP                 start=v[0x04C], values=[0], target=0x0EB3
0EA7  0D DC 00 63 00 02 01 89 00 DA 11 09    HOTSPOT_RECT                  left=0x00DC, top=0x0063, right=0x0102, bottom=0x0089, target=0x11DA, cursor=0x09
0EB3  9A 4D B0 C4 0E                         STRCMP_NE_JMP                 start=v[0x04D], values=[0], target=0x0EC4
0EB8  0D 04 01 63 00 2A 01 89 00 E1 11 0A    HOTSPOT_RECT                  left=0x0104, top=0x0063, right=0x012A, bottom=0x0089, target=0x11E1, cursor=0x0A
0EC4  9A 4E B0 D5 0E                         STRCMP_NE_JMP                 start=v[0x04E], values=[0], target=0x0ED5
0EC9  0D 2C 01 63 00 52 01 89 00 E8 11 09    HOTSPOT_RECT                  left=0x012C, top=0x0063, right=0x0152, bottom=0x0089, target=0x11E8, cursor=0x09
0ED5  9A 4F B0 E6 0E                         STRCMP_NE_JMP                 start=v[0x04F], values=[0], target=0x0EE6
0EDA  0D 54 01 63 00 7A 01 89 00 EF 11 0A    HOTSPOT_RECT                  left=0x0154, top=0x0063, right=0x017A, bottom=0x0089, target=0x11EF, cursor=0x0A
0EE6  9A 50 B0 F7 0E                         STRCMP_NE_JMP                 start=v[0x050], values=[0], target=0x0EF7
0EEB  0D 7C 01 63 00 A2 01 89 00 F6 11 09    HOTSPOT_RECT                  left=0x017C, top=0x0063, right=0x01A2, bottom=0x0089, target=0x11F6, cursor=0x09
0EF7  9A 51 B0 08 0F                         STRCMP_NE_JMP                 start=v[0x051], values=[0], target=0x0F08
0EFC  0D A4 01 63 00 CA 01 89 00 FD 11 0A    HOTSPOT_RECT                  left=0x01A4, top=0x0063, right=0x01CA, bottom=0x0089, target=0x11FD, cursor=0x0A
0F08  9A 52 B0 19 0F                         STRCMP_NE_JMP                 start=v[0x052], values=[0], target=0x0F19
0F0D  0D B4 00 8B 00 DA 00 B1 00 04 12 09    HOTSPOT_RECT                  left=0x00B4, top=0x008B, right=0x00DA, bottom=0x00B1, target=0x1204, cursor=0x09
0F19  9A 53 B0 2A 0F                         STRCMP_NE_JMP                 start=v[0x053], values=[0], target=0x0F2A
0F1E  0D DC 00 8B 00 02 01 B1 00 0B 12 0A    HOTSPOT_RECT                  left=0x00DC, top=0x008B, right=0x0102, bottom=0x00B1, target=0x120B, cursor=0x0A
0F2A  9A 54 B0 3B 0F                         STRCMP_NE_JMP                 start=v[0x054], values=[0], target=0x0F3B
0F2F  0D 04 01 8B 00 2A 01 B1 00 12 12 09    HOTSPOT_RECT                  left=0x0104, top=0x008B, right=0x012A, bottom=0x00B1, target=0x1212, cursor=0x09
0F3B  9A 55 B0 4C 0F                         STRCMP_NE_JMP                 start=v[0x055], values=[0], target=0x0F4C
0F40  0D 2C 01 8B 00 52 01 B1 00 19 12 0A    HOTSPOT_RECT                  left=0x012C, top=0x008B, right=0x0152, bottom=0x00B1, target=0x1219, cursor=0x0A
0F4C  9A 56 B0 5D 0F                         STRCMP_NE_JMP                 start=v[0x056], values=[0], target=0x0F5D
0F51  0D 54 01 8B 00 7A 01 B1 00 20 12 09    HOTSPOT_RECT                  left=0x0154, top=0x008B, right=0x017A, bottom=0x00B1, target=0x1220, cursor=0x09
0F5D  9A 57 B0 6E 0F                         STRCMP_NE_JMP                 start=v[0x057], values=[0], target=0x0F6E
0F62  0D 7C 01 8B 00 A2 01 B1 00 27 12 0A    HOTSPOT_RECT                  left=0x017C, top=0x008B, right=0x01A2, bottom=0x00B1, target=0x1227, cursor=0x0A
0F6E  9A 58 B0 7F 0F                         STRCMP_NE_JMP                 start=v[0x058], values=[0], target=0x0F7F
0F73  0D A4 01 8B 00 CA 01 B1 00 2E 12 09    HOTSPOT_RECT                  left=0x01A4, top=0x008B, right=0x01CA, bottom=0x00B1, target=0x122E, cursor=0x09
0F7F  9A 59 B0 90 0F                         STRCMP_NE_JMP                 start=v[0x059], values=[0], target=0x0F90
0F84  0D B4 00 B3 00 DA 00 D9 00 35 12 0A    HOTSPOT_RECT                  left=0x00B4, top=0x00B3, right=0x00DA, bottom=0x00D9, target=0x1235, cursor=0x0A
0F90  9A 5A B0 A1 0F                         STRCMP_NE_JMP                 start=v[0x05A], values=[0], target=0x0FA1
0F95  0D DC 00 B3 00 02 01 D9 00 3C 12 09    HOTSPOT_RECT                  left=0x00DC, top=0x00B3, right=0x0102, bottom=0x00D9, target=0x123C, cursor=0x09
0FA1  9A 5B B0 B2 0F                         STRCMP_NE_JMP                 start=v[0x05B], values=[0], target=0x0FB2
0FA6  0D 04 01 B3 00 2A 01 D9 00 43 12 0A    HOTSPOT_RECT                  left=0x0104, top=0x00B3, right=0x012A, bottom=0x00D9, target=0x1243, cursor=0x0A
0FB2  9A 5C B0 C3 0F                         STRCMP_NE_JMP                 start=v[0x05C], values=[0], target=0x0FC3
0FB7  0D 2C 01 B3 00 52 01 D9 00 4A 12 09    HOTSPOT_RECT                  left=0x012C, top=0x00B3, right=0x0152, bottom=0x00D9, target=0x124A, cursor=0x09
0FC3  9A 5D B0 D4 0F                         STRCMP_NE_JMP                 start=v[0x05D], values=[0], target=0x0FD4
0FC8  0D 54 01 B3 00 7A 01 D9 00 51 12 0A    HOTSPOT_RECT                  left=0x0154, top=0x00B3, right=0x017A, bottom=0x00D9, target=0x1251, cursor=0x0A
0FD4  9A 5E B0 E5 0F                         STRCMP_NE_JMP                 start=v[0x05E], values=[0], target=0x0FE5
0FD9  0D 7C 01 B3 00 A2 01 D9 00 58 12 09    HOTSPOT_RECT                  left=0x017C, top=0x00B3, right=0x01A2, bottom=0x00D9, target=0x1258, cursor=0x09
0FE5  9A 5F B0 F6 0F                         STRCMP_NE_JMP                 start=v[0x05F], values=[0], target=0x0FF6
0FEA  0D A4 01 B3 00 CA 01 D9 00 5F 12 0A    HOTSPOT_RECT                  left=0x01A4, top=0x00B3, right=0x01CA, bottom=0x00D9, target=0x125F, cursor=0x0A
0FF6  9A 60 B0 07 10                         STRCMP_NE_JMP                 start=v[0x060], values=[0], target=0x1007
0FFB  0D B4 00 DB 00 DA 00 01 01 66 12 09    HOTSPOT_RECT                  left=0x00B4, top=0x00DB, right=0x00DA, bottom=0x0101, target=0x1266, cursor=0x09
1007  9A 61 B0 18 10                         STRCMP_NE_JMP                 start=v[0x061], values=[0], target=0x1018
100C  0D DC 00 DB 00 02 01 01 01 6D 12 0A    HOTSPOT_RECT                  left=0x00DC, top=0x00DB, right=0x0102, bottom=0x0101, target=0x126D, cursor=0x0A
1018  9A 62 B0 29 10                         STRCMP_NE_JMP                 start=v[0x062], values=[0], target=0x1029
101D  0D 04 01 DB 00 2A 01 01 01 74 12 09    HOTSPOT_RECT                  left=0x0104, top=0x00DB, right=0x012A, bottom=0x0101, target=0x1274, cursor=0x09
1029  9A 63 B0 3A 10                         STRCMP_NE_JMP                 start=v[0x063], values=[0], target=0x103A
102E  0D 2C 01 DB 00 52 01 01 01 7B 12 0A    HOTSPOT_RECT                  left=0x012C, top=0x00DB, right=0x0152, bottom=0x0101, target=0x127B, cursor=0x0A
103A  9A 64 B0 4B 10                         STRCMP_NE_JMP                 start=v[0x064], values=[0], target=0x104B
103F  0D 54 01 DB 00 7A 01 01 01 82 12 09    HOTSPOT_RECT                  left=0x0154, top=0x00DB, right=0x017A, bottom=0x0101, target=0x1282, cursor=0x09
104B  9A 65 B0 5C 10                         STRCMP_NE_JMP                 start=v[0x065], values=[0], target=0x105C
1050  0D 7C 01 DB 00 A2 01 01 01 89 12 0A    HOTSPOT_RECT                  left=0x017C, top=0x00DB, right=0x01A2, bottom=0x0101, target=0x1289, cursor=0x0A
105C  9A 66 B0 6D 10                         STRCMP_NE_JMP                 start=v[0x066], values=[0], target=0x106D
1061  0D A4 01 DB 00 CA 01 01 01 90 12 09    HOTSPOT_RECT                  left=0x01A4, top=0x00DB, right=0x01CA, bottom=0x0101, target=0x1290, cursor=0x09
106D  9A 67 B0 7E 10                         STRCMP_NE_JMP                 start=v[0x067], values=[0], target=0x107E
1072  0D B4 00 03 01 DA 00 29 01 97 12 0A    HOTSPOT_RECT                  left=0x00B4, top=0x0103, right=0x00DA, bottom=0x0129, target=0x1297, cursor=0x0A
107E  9A 68 B0 8F 10                         STRCMP_NE_JMP                 start=v[0x068], values=[0], target=0x108F
1083  0D DC 00 03 01 02 01 29 01 9E 12 09    HOTSPOT_RECT                  left=0x00DC, top=0x0103, right=0x0102, bottom=0x0129, target=0x129E, cursor=0x09
108F  9A 69 B0 A0 10                         STRCMP_NE_JMP                 start=v[0x069], values=[0], target=0x10A0
1094  0D 04 01 03 01 2A 01 29 01 A5 12 0A    HOTSPOT_RECT                  left=0x0104, top=0x0103, right=0x012A, bottom=0x0129, target=0x12A5, cursor=0x0A
10A0  9A 6A B0 B1 10                         STRCMP_NE_JMP                 start=v[0x06A], values=[0], target=0x10B1
10A5  0D 2C 01 03 01 52 01 29 01 AC 12 09    HOTSPOT_RECT                  left=0x012C, top=0x0103, right=0x0152, bottom=0x0129, target=0x12AC, cursor=0x09
10B1  9A 6B B0 C2 10                         STRCMP_NE_JMP                 start=v[0x06B], values=[0], target=0x10C2
10B6  0D 54 01 03 01 7A 01 29 01 B3 12 0A    HOTSPOT_RECT                  left=0x0154, top=0x0103, right=0x017A, bottom=0x0129, target=0x12B3, cursor=0x0A
10C2  9A 6C B0 D3 10                         STRCMP_NE_JMP                 start=v[0x06C], values=[0], target=0x10D3
10C7  0D 7C 01 03 01 A2 01 29 01 BA 12 09    HOTSPOT_RECT                  left=0x017C, top=0x0103, right=0x01A2, bottom=0x0129, target=0x12BA, cursor=0x09
10D3  9A 6D B0 E4 10                         STRCMP_NE_JMP                 start=v[0x06D], values=[0], target=0x10E4
10D8  0D A4 01 03 01 CA 01 29 01 C1 12 0A    HOTSPOT_RECT                  left=0x01A4, top=0x0103, right=0x01CA, bottom=0x0129, target=0x12C1, cursor=0x0A
10E4  9A 6E B0 F5 10                         STRCMP_NE_JMP                 start=v[0x06E], values=[0], target=0x10F5
10E9  0D B4 00 2B 01 DA 00 51 01 C8 12 09    HOTSPOT_RECT                  left=0x00B4, top=0x012B, right=0x00DA, bottom=0x0151, target=0x12C8, cursor=0x09
10F5  9A 6F B0 06 11                         STRCMP_NE_JMP                 start=v[0x06F], values=[0], target=0x1106
10FA  0D DC 00 2B 01 02 01 51 01 CF 12 0A    HOTSPOT_RECT                  left=0x00DC, top=0x012B, right=0x0102, bottom=0x0151, target=0x12CF, cursor=0x0A
1106  9A 70 B0 17 11                         STRCMP_NE_JMP                 start=v[0x070], values=[0], target=0x1117
110B  0D 04 01 2B 01 2A 01 51 01 D6 12 09    HOTSPOT_RECT                  left=0x0104, top=0x012B, right=0x012A, bottom=0x0151, target=0x12D6, cursor=0x09
1117  9A 71 B0 28 11                         STRCMP_NE_JMP                 start=v[0x071], values=[0], target=0x1128
111C  0D 2C 01 2B 01 52 01 51 01 DD 12 0A    HOTSPOT_RECT                  left=0x012C, top=0x012B, right=0x0152, bottom=0x0151, target=0x12DD, cursor=0x0A
1128  9A 72 B0 39 11                         STRCMP_NE_JMP                 start=v[0x072], values=[0], target=0x1139
112D  0D 54 01 2B 01 7A 01 51 01 E4 12 09    HOTSPOT_RECT                  left=0x0154, top=0x012B, right=0x017A, bottom=0x0151, target=0x12E4, cursor=0x09
1139  9A 73 B0 4A 11                         STRCMP_NE_JMP                 start=v[0x073], values=[0], target=0x114A
113E  0D 7C 01 2B 01 A2 01 51 01 EB 12 0A    HOTSPOT_RECT                  left=0x017C, top=0x012B, right=0x01A2, bottom=0x0151, target=0x12EB, cursor=0x0A
114A  9A 74 B0 5B 11                         STRCMP_NE_JMP                 start=v[0x074], values=[0], target=0x115B
114F  0D A4 01 2B 01 CA 01 51 01 F2 12 09    HOTSPOT_RECT                  left=0x01A4, top=0x012B, right=0x01CA, bottom=0x0151, target=0x12F2, cursor=0x09
115B  9A 75 B0 6C 11                         STRCMP_NE_JMP                 start=v[0x075], values=[0], target=0x116C
1160  0D B4 00 53 01 DA 00 79 01 F9 12 0A    HOTSPOT_RECT                  left=0x00B4, top=0x0153, right=0x00DA, bottom=0x0179, target=0x12F9, cursor=0x0A
116C  9A 76 B0 7D 11                         STRCMP_NE_JMP                 start=v[0x076], values=[0], target=0x117D
1171  0D DC 00 53 01 02 01 79 01 00 13 09    HOTSPOT_RECT                  left=0x00DC, top=0x0153, right=0x0102, bottom=0x0179, target=0x1300, cursor=0x09
117D  9A 77 B0 8E 11                         STRCMP_NE_JMP                 start=v[0x077], values=[0], target=0x118E
1182  0D 04 01 53 01 2A 01 79 01 07 13 0A    HOTSPOT_RECT                  left=0x0104, top=0x0153, right=0x012A, bottom=0x0179, target=0x1307, cursor=0x0A
118E  9A 78 B0 9F 11                         STRCMP_NE_JMP                 start=v[0x078], values=[0], target=0x119F
1193  0D 2C 01 53 01 52 01 79 01 0E 13 09    HOTSPOT_RECT                  left=0x012C, top=0x0153, right=0x0152, bottom=0x0179, target=0x130E, cursor=0x09
119F  9A 79 B0 B0 11                         STRCMP_NE_JMP                 start=v[0x079], values=[0], target=0x11B0
11A4  0D 54 01 53 01 7A 01 79 01 15 13 0A    HOTSPOT_RECT                  left=0x0154, top=0x0153, right=0x017A, bottom=0x0179, target=0x1315, cursor=0x0A
11B0  9A 7A B0 C1 11                         STRCMP_NE_JMP                 start=v[0x07A], values=[0], target=0x11C1
11B5  0D 7C 01 53 01 A2 01 79 01 1C 13 09    HOTSPOT_RECT                  left=0x017C, top=0x0153, right=0x01A2, bottom=0x0179, target=0x131C, cursor=0x09
11C1  9A 7B B0 D2 11                         STRCMP_NE_JMP                 start=v[0x07B], values=[0], target=0x11D2
11C6  0D A4 01 53 01 CA 01 79 01 23 13 0A    HOTSPOT_RECT                  left=0x01A4, top=0x0153, right=0x01CA, bottom=0x0179, target=0x1323, cursor=0x0A
11D2  13                                     INPUTLOOPEND                  
11D3  96 02 30 B0                            LOADSTRING                    dst=v[0x002], values=[0, 0]
11D7  15 47 15                               JMP                           target=0x1547
11DA  96 02 30 B1                            LOADSTRING                    dst=v[0x002], values=[0, 1]
11DE  15 47 15                               JMP                           target=0x1547
11E1  96 02 30 B2                            LOADSTRING                    dst=v[0x002], values=[0, 2]
11E5  15 47 15                               JMP                           target=0x1547
11E8  96 02 30 B3                            LOADSTRING                    dst=v[0x002], values=[0, 3]
11EC  15 47 15                               JMP                           target=0x1547
11EF  96 02 30 B4                            LOADSTRING                    dst=v[0x002], values=[0, 4]
11F3  15 47 15                               JMP                           target=0x1547
11F6  96 02 30 B5                            LOADSTRING                    dst=v[0x002], values=[0, 5]
11FA  15 47 15                               JMP                           target=0x1547
11FD  96 02 30 B6                            LOADSTRING                    dst=v[0x002], values=[0, 6]
1201  15 47 15                               JMP                           target=0x1547
1204  96 02 31 B0                            LOADSTRING                    dst=v[0x002], values=[1, 0]
1208  15 47 15                               JMP                           target=0x1547
120B  96 02 31 B1                            LOADSTRING                    dst=v[0x002], values=[1, 1]
120F  15 47 15                               JMP                           target=0x1547
1212  96 02 31 B2                            LOADSTRING                    dst=v[0x002], values=[1, 2]
1216  15 47 15                               JMP                           target=0x1547
1219  96 02 31 B3                            LOADSTRING                    dst=v[0x002], values=[1, 3]
121D  15 47 15                               JMP                           target=0x1547
1220  96 02 31 B4                            LOADSTRING                    dst=v[0x002], values=[1, 4]
1224  15 47 15                               JMP                           target=0x1547
1227  96 02 31 B5                            LOADSTRING                    dst=v[0x002], values=[1, 5]
122B  15 47 15                               JMP                           target=0x1547
122E  96 02 31 B6                            LOADSTRING                    dst=v[0x002], values=[1, 6]
1232  15 47 15                               JMP                           target=0x1547
1235  96 02 32 B0                            LOADSTRING                    dst=v[0x002], values=[2, 0]
1239  15 47 15                               JMP                           target=0x1547
123C  96 02 32 B1                            LOADSTRING                    dst=v[0x002], values=[2, 1]
1240  15 47 15                               JMP                           target=0x1547
1243  96 02 32 B2                            LOADSTRING                    dst=v[0x002], values=[2, 2]
1247  15 47 15                               JMP                           target=0x1547
124A  96 02 32 B3                            LOADSTRING                    dst=v[0x002], values=[2, 3]
124E  15 47 15                               JMP                           target=0x1547
1251  96 02 32 B4                            LOADSTRING                    dst=v[0x002], values=[2, 4]
1255  15 47 15                               JMP                           target=0x1547
1258  96 02 32 B5                            LOADSTRING                    dst=v[0x002], values=[2, 5]
125C  15 47 15                               JMP                           target=0x1547
125F  96 02 32 B6                            LOADSTRING                    dst=v[0x002], values=[2, 6]
1263  15 47 15                               JMP                           target=0x1547
1266  96 02 33 B0                            LOADSTRING                    dst=v[0x002], values=[3, 0]
126A  15 47 15                               JMP                           target=0x1547
126D  96 02 33 B1                            LOADSTRING                    dst=v[0x002], values=[3, 1]
1271  15 47 15                               JMP                           target=0x1547
1274  96 02 33 B2                            LOADSTRING                    dst=v[0x002], values=[3, 2]
1278  15 47 15                               JMP                           target=0x1547
127B  96 02 33 B3                            LOADSTRING                    dst=v[0x002], values=[3, 3]
127F  15 47 15                               JMP                           target=0x1547
1282  96 02 33 B4                            LOADSTRING                    dst=v[0x002], values=[3, 4]
1286  15 47 15                               JMP                           target=0x1547
1289  96 02 33 B5                            LOADSTRING                    dst=v[0x002], values=[3, 5]
128D  15 47 15                               JMP                           target=0x1547
1290  96 02 33 B6                            LOADSTRING                    dst=v[0x002], values=[3, 6]
1294  15 47 15                               JMP                           target=0x1547
1297  96 02 34 B0                            LOADSTRING                    dst=v[0x002], values=[4, 0]
129B  15 47 15                               JMP                           target=0x1547
129E  96 02 34 B1                            LOADSTRING                    dst=v[0x002], values=[4, 1]
12A2  15 47 15                               JMP                           target=0x1547
12A5  96 02 34 B2                            LOADSTRING                    dst=v[0x002], values=[4, 2]
12A9  15 47 15                               JMP                           target=0x1547
12AC  96 02 34 B3                            LOADSTRING                    dst=v[0x002], values=[4, 3]
12B0  15 47 15                               JMP                           target=0x1547
12B3  96 02 34 B4                            LOADSTRING                    dst=v[0x002], values=[4, 4]
12B7  15 47 15                               JMP                           target=0x1547
12BA  96 02 34 B5                            LOADSTRING                    dst=v[0x002], values=[4, 5]
12BE  15 47 15                               JMP                           target=0x1547
12C1  96 02 34 B6                            LOADSTRING                    dst=v[0x002], values=[4, 6]
12C5  15 47 15                               JMP                           target=0x1547
12C8  96 02 35 B0                            LOADSTRING                    dst=v[0x002], values=[5, 0]
12CC  15 47 15                               JMP                           target=0x1547
12CF  96 02 35 B1                            LOADSTRING                    dst=v[0x002], values=[5, 1]
12D3  15 47 15                               JMP                           target=0x1547
12D6  96 02 35 B2                            LOADSTRING                    dst=v[0x002], values=[5, 2]
12DA  15 47 15                               JMP                           target=0x1547
12DD  96 02 35 B3                            LOADSTRING                    dst=v[0x002], values=[5, 3]
12E1  15 47 15                               JMP                           target=0x1547
12E4  96 02 35 B4                            LOADSTRING                    dst=v[0x002], values=[5, 4]
12E8  15 47 15                               JMP                           target=0x1547
12EB  96 02 35 B5                            LOADSTRING                    dst=v[0x002], values=[5, 5]
12EF  15 47 15                               JMP                           target=0x1547
12F2  96 02 35 B6                            LOADSTRING                    dst=v[0x002], values=[5, 6]
12F6  15 47 15                               JMP                           target=0x1547
12F9  96 02 36 B0                            LOADSTRING                    dst=v[0x002], values=[6, 0]
12FD  15 47 15                               JMP                           target=0x1547
1300  96 02 36 B1                            LOADSTRING                    dst=v[0x002], values=[6, 1]
1304  15 47 15                               JMP                           target=0x1547
1307  96 02 36 B2                            LOADSTRING                    dst=v[0x002], values=[6, 2]
130B  15 47 15                               JMP                           target=0x1547
130E  96 02 36 B3                            LOADSTRING                    dst=v[0x002], values=[6, 3]
1312  15 47 15                               JMP                           target=0x1547
1315  96 02 36 B4                            LOADSTRING                    dst=v[0x002], values=[6, 4]
1319  15 47 15                               JMP                           target=0x1547
131C  96 02 36 B5                            LOADSTRING                    dst=v[0x002], values=[6, 5]
1320  15 47 15                               JMP                           target=0x1547
1323  96 02 36 B6                            LOADSTRING                    dst=v[0x002], values=[6, 6]
1327  15 47 15                               JMP                           target=0x1547
132A  9A 17 30 B0 35 13                      STRCMP_NE_JMP                 start=v[0x017], values=[0, 0], target=0x1335
1330  40 88 FF 88 FF                         SET_VIDEO_ORIGIN              x=-120, y=-120
1335  9A 17 30 B1 40 13                      STRCMP_NE_JMP                 start=v[0x017], values=[0, 1], target=0x1340
133B  40 B0 FF 88 FF                         SET_VIDEO_ORIGIN              x=-80, y=-120
1340  9A 17 30 B2 4B 13                      STRCMP_NE_JMP                 start=v[0x017], values=[0, 2], target=0x134B
1346  40 D8 FF 88 FF                         SET_VIDEO_ORIGIN              x=-40, y=-120
134B  9A 17 30 B3 56 13                      STRCMP_NE_JMP                 start=v[0x017], values=[0, 3], target=0x1356
1351  40 00 00 88 FF                         SET_VIDEO_ORIGIN              x=0, y=-120
1356  9A 17 30 B4 61 13                      STRCMP_NE_JMP                 start=v[0x017], values=[0, 4], target=0x1361
135C  40 28 00 88 FF                         SET_VIDEO_ORIGIN              x=40, y=-120
1361  9A 17 30 B5 6C 13                      STRCMP_NE_JMP                 start=v[0x017], values=[0, 5], target=0x136C
1367  40 50 00 88 FF                         SET_VIDEO_ORIGIN              x=80, y=-120
136C  9A 17 30 B6 77 13                      STRCMP_NE_JMP                 start=v[0x017], values=[0, 6], target=0x1377
1372  40 78 00 88 FF                         SET_VIDEO_ORIGIN              x=120, y=-120
1377  9A 17 31 B0 82 13                      STRCMP_NE_JMP                 start=v[0x017], values=[1, 0], target=0x1382
137D  40 88 FF B0 FF                         SET_VIDEO_ORIGIN              x=-120, y=-80
1382  9A 17 31 B1 8D 13                      STRCMP_NE_JMP                 start=v[0x017], values=[1, 1], target=0x138D
1388  40 B0 FF B0 FF                         SET_VIDEO_ORIGIN              x=-80, y=-80
138D  9A 17 31 B2 98 13                      STRCMP_NE_JMP                 start=v[0x017], values=[1, 2], target=0x1398
1393  40 D8 FF B0 FF                         SET_VIDEO_ORIGIN              x=-40, y=-80
1398  9A 17 31 B3 A3 13                      STRCMP_NE_JMP                 start=v[0x017], values=[1, 3], target=0x13A3
139E  40 00 00 B0 FF                         SET_VIDEO_ORIGIN              x=0, y=-80
13A3  9A 17 31 B4 AE 13                      STRCMP_NE_JMP                 start=v[0x017], values=[1, 4], target=0x13AE
13A9  40 28 00 B0 FF                         SET_VIDEO_ORIGIN              x=40, y=-80
13AE  9A 17 31 B5 B9 13                      STRCMP_NE_JMP                 start=v[0x017], values=[1, 5], target=0x13B9
13B4  40 50 00 B0 FF                         SET_VIDEO_ORIGIN              x=80, y=-80
13B9  9A 17 31 B6 C4 13                      STRCMP_NE_JMP                 start=v[0x017], values=[1, 6], target=0x13C4
13BF  40 78 00 B0 FF                         SET_VIDEO_ORIGIN              x=120, y=-80
13C4  9A 17 32 B0 CF 13                      STRCMP_NE_JMP                 start=v[0x017], values=[2, 0], target=0x13CF
13CA  40 88 FF D8 FF                         SET_VIDEO_ORIGIN              x=-120, y=-40
13CF  9A 17 32 B1 DA 13                      STRCMP_NE_JMP                 start=v[0x017], values=[2, 1], target=0x13DA
13D5  40 B0 FF D8 FF                         SET_VIDEO_ORIGIN              x=-80, y=-40
13DA  9A 17 32 B2 E5 13                      STRCMP_NE_JMP                 start=v[0x017], values=[2, 2], target=0x13E5
13E0  40 D8 FF D8 FF                         SET_VIDEO_ORIGIN              x=-40, y=-40
13E5  9A 17 32 B3 F0 13                      STRCMP_NE_JMP                 start=v[0x017], values=[2, 3], target=0x13F0
13EB  40 00 00 D8 FF                         SET_VIDEO_ORIGIN              x=0, y=-40
13F0  9A 17 32 B4 FB 13                      STRCMP_NE_JMP                 start=v[0x017], values=[2, 4], target=0x13FB
13F6  40 28 00 D8 FF                         SET_VIDEO_ORIGIN              x=40, y=-40
13FB  9A 17 32 B5 06 14                      STRCMP_NE_JMP                 start=v[0x017], values=[2, 5], target=0x1406
1401  40 50 00 D8 FF                         SET_VIDEO_ORIGIN              x=80, y=-40
1406  9A 17 32 B6 11 14                      STRCMP_NE_JMP                 start=v[0x017], values=[2, 6], target=0x1411
140C  40 78 00 D8 FF                         SET_VIDEO_ORIGIN              x=120, y=-40
1411  9A 17 33 B0 1C 14                      STRCMP_NE_JMP                 start=v[0x017], values=[3, 0], target=0x141C
1417  40 88 FF 00 00                         SET_VIDEO_ORIGIN              x=-120, y=0
141C  9A 17 33 B1 27 14                      STRCMP_NE_JMP                 start=v[0x017], values=[3, 1], target=0x1427
1422  40 B0 FF 00 00                         SET_VIDEO_ORIGIN              x=-80, y=0
1427  9A 17 33 B2 32 14                      STRCMP_NE_JMP                 start=v[0x017], values=[3, 2], target=0x1432
142D  40 D8 FF 00 00                         SET_VIDEO_ORIGIN              x=-40, y=0
1432  9A 17 33 B3 3D 14                      STRCMP_NE_JMP                 start=v[0x017], values=[3, 3], target=0x143D
1438  40 00 00 00 00                         SET_VIDEO_ORIGIN              x=0, y=0
143D  9A 17 33 B4 48 14                      STRCMP_NE_JMP                 start=v[0x017], values=[3, 4], target=0x1448
1443  40 28 00 00 00                         SET_VIDEO_ORIGIN              x=40, y=0
1448  9A 17 33 B5 53 14                      STRCMP_NE_JMP                 start=v[0x017], values=[3, 5], target=0x1453
144E  40 50 00 00 00                         SET_VIDEO_ORIGIN              x=80, y=0
1453  9A 17 33 B6 5E 14                      STRCMP_NE_JMP                 start=v[0x017], values=[3, 6], target=0x145E
1459  40 78 00 00 00                         SET_VIDEO_ORIGIN              x=120, y=0
145E  9A 17 34 B0 69 14                      STRCMP_NE_JMP                 start=v[0x017], values=[4, 0], target=0x1469
1464  40 88 FF 28 00                         SET_VIDEO_ORIGIN              x=-120, y=40
1469  9A 17 34 B1 74 14                      STRCMP_NE_JMP                 start=v[0x017], values=[4, 1], target=0x1474
146F  40 B0 FF 28 00                         SET_VIDEO_ORIGIN              x=-80, y=40
1474  9A 17 34 B2 7F 14                      STRCMP_NE_JMP                 start=v[0x017], values=[4, 2], target=0x147F
147A  40 D8 FF 28 00                         SET_VIDEO_ORIGIN              x=-40, y=40
147F  9A 17 34 B3 8A 14                      STRCMP_NE_JMP                 start=v[0x017], values=[4, 3], target=0x148A
1485  40 00 00 28 00                         SET_VIDEO_ORIGIN              x=0, y=40
148A  9A 17 34 B4 95 14                      STRCMP_NE_JMP                 start=v[0x017], values=[4, 4], target=0x1495
1490  40 28 00 28 00                         SET_VIDEO_ORIGIN              x=40, y=40
1495  9A 17 34 B5 A0 14                      STRCMP_NE_JMP                 start=v[0x017], values=[4, 5], target=0x14A0
149B  40 50 00 28 00                         SET_VIDEO_ORIGIN              x=80, y=40
14A0  9A 17 34 B6 AB 14                      STRCMP_NE_JMP                 start=v[0x017], values=[4, 6], target=0x14AB
14A6  40 78 00 28 00                         SET_VIDEO_ORIGIN              x=120, y=40
14AB  9A 17 35 B0 B6 14                      STRCMP_NE_JMP                 start=v[0x017], values=[5, 0], target=0x14B6
14B1  40 88 FF 50 00                         SET_VIDEO_ORIGIN              x=-120, y=80
14B6  9A 17 35 B1 C1 14                      STRCMP_NE_JMP                 start=v[0x017], values=[5, 1], target=0x14C1
14BC  40 B0 FF 50 00                         SET_VIDEO_ORIGIN              x=-80, y=80
14C1  9A 17 35 B2 CC 14                      STRCMP_NE_JMP                 start=v[0x017], values=[5, 2], target=0x14CC
14C7  40 D8 FF 50 00                         SET_VIDEO_ORIGIN              x=-40, y=80
14CC  9A 17 35 B3 D7 14                      STRCMP_NE_JMP                 start=v[0x017], values=[5, 3], target=0x14D7
14D2  40 00 00 50 00                         SET_VIDEO_ORIGIN              x=0, y=80
14D7  9A 17 35 B4 E2 14                      STRCMP_NE_JMP                 start=v[0x017], values=[5, 4], target=0x14E2
14DD  40 28 00 50 00                         SET_VIDEO_ORIGIN              x=40, y=80
14E2  9A 17 35 B5 ED 14                      STRCMP_NE_JMP                 start=v[0x017], values=[5, 5], target=0x14ED
14E8  40 50 00 50 00                         SET_VIDEO_ORIGIN              x=80, y=80
14ED  9A 17 35 B6 F8 14                      STRCMP_NE_JMP                 start=v[0x017], values=[5, 6], target=0x14F8
14F3  40 78 00 50 00                         SET_VIDEO_ORIGIN              x=120, y=80
14F8  9A 17 36 B0 03 15                      STRCMP_NE_JMP                 start=v[0x017], values=[6, 0], target=0x1503
14FE  40 88 FF 78 00                         SET_VIDEO_ORIGIN              x=-120, y=120
1503  9A 17 36 B1 0E 15                      STRCMP_NE_JMP                 start=v[0x017], values=[6, 1], target=0x150E
1509  40 B0 FF 78 00                         SET_VIDEO_ORIGIN              x=-80, y=120
150E  9A 17 36 B2 19 15                      STRCMP_NE_JMP                 start=v[0x017], values=[6, 2], target=0x1519
1514  40 D8 FF 78 00                         SET_VIDEO_ORIGIN              x=-40, y=120
1519  9A 17 36 B3 24 15                      STRCMP_NE_JMP                 start=v[0x017], values=[6, 3], target=0x1524
151F  40 00 00 78 00                         SET_VIDEO_ORIGIN              x=0, y=120
1524  9A 17 36 B4 2F 15                      STRCMP_NE_JMP                 start=v[0x017], values=[6, 4], target=0x152F
152A  40 28 00 78 00                         SET_VIDEO_ORIGIN              x=40, y=120
152F  9A 17 36 B5 3A 15                      STRCMP_NE_JMP                 start=v[0x017], values=[6, 5], target=0x153A
1535  40 50 00 78 00                         SET_VIDEO_ORIGIN              x=80, y=120
153A  9A 17 36 B6 45 15                      STRCMP_NE_JMP                 start=v[0x017], values=[6, 6], target=0x1545
1540  40 78 00 78 00                         SET_VIDEO_ORIGIN              x=120, y=120
1545  17 00                                  RET                           value=0x00
1547  9A 00 23 63 23 E4 58 15                STRCMP_NE_JMP                 start=v[0x000], values=[v[0x002], v[0x003]], target=0x1558
154F  07                                     VIDEOFLAG7_ON                 
1550  46                                     RESOURCE_CONTEXT_SAVE         
1551  09 8A 50                               VIDEOREF                      ref=0x508A (GAMWAV[138]=gen_e_4.vdx)
1554  47                                     RESOURCE_CONTEXT_RESTORE      
1555  15 AC 08                               JMP                           target=0x08AC
1558  96 05 23 61 23 E2                      LOADSTRING                    dst=v[0x005], values=[v[0x000], v[0x001]]
155E  96 07 23 61 23 E2                      LOADSTRING                    dst=v[0x007], values=[v[0x000], v[0x001]]
1564  96 17 23 63 23 E4                      LOADSTRING                    dst=v[0x017], values=[v[0x002], v[0x003]]
156A  9F 05                                  INC                           var=v[0x005]
156C  9F 05                                  INC                           var=v[0x005]
156E  9F 06                                  INC                           var=v[0x006]
1570  9F 06                                  INC                           var=v[0x006]
1572  C1 05 02 00                            SUB                           dst=v[0x005], src=0x0002
1576  C1 06 03 00                            SUB                           dst=v[0x006], src=0x0003
157A  18 B4 03                               CALL                          target=0x03B4
157D  9A 05 B4 85 15                         STRCMP_NE_JMP                 start=v[0x005], values=[4], target=0x1585
1582  15 82 17                               JMP                           target=0x1782
1585  9A 05 B0 8D 15                         STRCMP_NE_JMP                 start=v[0x005], values=[0], target=0x158D
158A  15 82 17                               JMP                           target=0x1782
158D  9A 06 B4 95 15                         STRCMP_NE_JMP                 start=v[0x006], values=[4], target=0x1595
1592  15 82 17                               JMP                           target=0x1782
1595  9A 06 B0 9D 15                         STRCMP_NE_JMP                 start=v[0x006], values=[0], target=0x159D
159A  15 82 17                               JMP                           target=0x1782
159D  96 17 23 61 23 E2                      LOADSTRING                    dst=v[0x017], values=[v[0x000], v[0x001]]
15A3  18 2A 13                               CALL                          target=0x132A
15A6  26 6C 61 5F 23 65 23 66 23 67 00       VIDEO_NAME                    name="la_{v004}{v005}{v006}"
15B1  22                                     COPY_BG_TO_FG                 
15B2  16 17 01 B0                            LOADSTRING                    dst=v[0x117], values=[0]
15B6  9A 04 E2 C1 15                         STRCMP_NE_JMP                 start=v[0x004], values=[50], target=0x15C1
15BB  96 0E F2                               LOADSTRING                    dst=v[0x00E], values=[66]
15BE  15 C4 15                               JMP                           target=0x15C4
15C1  96 0E E2                               LOADSTRING                    dst=v[0x00E], values=[50]
15C4  96 06 23 63 23 E4                      LOADSTRING                    dst=v[0x006], values=[v[0x002], v[0x003]]
15CA  A0 06                                  DEC                           var=v[0x006]
15CC  A0 07                                  DEC                           var=v[0x007]
15CE  96 17 23 67 23 E8                      LOADSTRING                    dst=v[0x017], values=[v[0x006], v[0x007]]
15D4  18 C5 01                               CALL                          target=0x01C5
15D7  9A 05 23 EF F6 15                      STRCMP_NE_JMP                 start=v[0x005], values=[v[0x00E]], target=0x15F6
15DD  18 B4 03                               CALL                          target=0x03B4
15E0  96 17 23 63 23 E4                      LOADSTRING                    dst=v[0x017], values=[v[0x002], v[0x003]]
15E6  18 2A 13                               CALL                          target=0x132A
15E9  26 6C 61 5F 23 65 33 33 00             VIDEO_NAME                    name="la_{v004}33"
15F2  22                                     COPY_BG_TO_FG                 
15F3  1F 17 01                               INC                           var=v[0x117]
15F6  9F 07                                  INC                           var=v[0x007]
15F8  96 17 23 67 23 E8                      LOADSTRING                    dst=v[0x017], values=[v[0x006], v[0x007]]
15FE  18 C5 01                               CALL                          target=0x01C5
1601  9A 05 23 EF 20 16                      STRCMP_NE_JMP                 start=v[0x005], values=[v[0x00E]], target=0x1620
1607  18 B4 03                               CALL                          target=0x03B4
160A  96 17 23 63 23 E4                      LOADSTRING                    dst=v[0x017], values=[v[0x002], v[0x003]]
1610  18 2A 13                               CALL                          target=0x132A
1613  26 6C 61 5F 23 65 33 32 00             VIDEO_NAME                    name="la_{v004}32"
161C  22                                     COPY_BG_TO_FG                 
161D  1F 17 01                               INC                           var=v[0x117]
1620  9F 07                                  INC                           var=v[0x007]
1622  96 17 23 67 23 E8                      LOADSTRING                    dst=v[0x017], values=[v[0x006], v[0x007]]
1628  18 C5 01                               CALL                          target=0x01C5
162B  9A 05 23 EF 4A 16                      STRCMP_NE_JMP                 start=v[0x005], values=[v[0x00E]], target=0x164A
1631  18 B4 03                               CALL                          target=0x03B4
1634  96 17 23 63 23 E4                      LOADSTRING                    dst=v[0x017], values=[v[0x002], v[0x003]]
163A  18 2A 13                               CALL                          target=0x132A
163D  26 6C 61 5F 23 65 33 31 00             VIDEO_NAME                    name="la_{v004}31"
1646  22                                     COPY_BG_TO_FG                 
1647  1F 17 01                               INC                           var=v[0x117]
164A  9F 06                                  INC                           var=v[0x006]
164C  96 17 23 67 23 E8                      LOADSTRING                    dst=v[0x017], values=[v[0x006], v[0x007]]
1652  18 C5 01                               CALL                          target=0x01C5
1655  9A 05 23 EF 74 16                      STRCMP_NE_JMP                 start=v[0x005], values=[v[0x00E]], target=0x1674
165B  18 B4 03                               CALL                          target=0x03B4
165E  96 17 23 63 23 E4                      LOADSTRING                    dst=v[0x017], values=[v[0x002], v[0x003]]
1664  18 2A 13                               CALL                          target=0x132A
1667  26 6C 61 5F 23 65 32 31 00             VIDEO_NAME                    name="la_{v004}21"
1670  22                                     COPY_BG_TO_FG                 
1671  1F 17 01                               INC                           var=v[0x117]
1674  9F 06                                  INC                           var=v[0x006]
1676  96 17 23 67 23 E8                      LOADSTRING                    dst=v[0x017], values=[v[0x006], v[0x007]]
167C  18 C5 01                               CALL                          target=0x01C5
167F  9A 05 23 EF 9E 16                      STRCMP_NE_JMP                 start=v[0x005], values=[v[0x00E]], target=0x169E
1685  18 B4 03                               CALL                          target=0x03B4
1688  96 17 23 63 23 E4                      LOADSTRING                    dst=v[0x017], values=[v[0x002], v[0x003]]
168E  18 2A 13                               CALL                          target=0x132A
1691  26 6C 61 5F 23 65 31 31 00             VIDEO_NAME                    name="la_{v004}11"
169A  22                                     COPY_BG_TO_FG                 
169B  1F 17 01                               INC                           var=v[0x117]
169E  A0 07                                  DEC                           var=v[0x007]
16A0  96 17 23 67 23 E8                      LOADSTRING                    dst=v[0x017], values=[v[0x006], v[0x007]]
16A6  18 C5 01                               CALL                          target=0x01C5
16A9  9A 05 23 EF C8 16                      STRCMP_NE_JMP                 start=v[0x005], values=[v[0x00E]], target=0x16C8
16AF  18 B4 03                               CALL                          target=0x03B4
16B2  96 17 23 63 23 E4                      LOADSTRING                    dst=v[0x017], values=[v[0x002], v[0x003]]
16B8  18 2A 13                               CALL                          target=0x132A
16BB  26 6C 61 5F 23 65 31 32 00             VIDEO_NAME                    name="la_{v004}12"
16C4  22                                     COPY_BG_TO_FG                 
16C5  1F 17 01                               INC                           var=v[0x117]
16C8  A0 07                                  DEC                           var=v[0x007]
16CA  96 17 23 67 23 E8                      LOADSTRING                    dst=v[0x017], values=[v[0x006], v[0x007]]
16D0  18 C5 01                               CALL                          target=0x01C5
16D3  9A 05 23 EF F2 16                      STRCMP_NE_JMP                 start=v[0x005], values=[v[0x00E]], target=0x16F2
16D9  18 B4 03                               CALL                          target=0x03B4
16DC  96 17 23 63 23 E4                      LOADSTRING                    dst=v[0x017], values=[v[0x002], v[0x003]]
16E2  18 2A 13                               CALL                          target=0x132A
16E5  26 6C 61 5F 23 65 31 33 00             VIDEO_NAME                    name="la_{v004}13"
16EE  22                                     COPY_BG_TO_FG                 
16EF  1F 17 01                               INC                           var=v[0x117]
16F2  A0 06                                  DEC                           var=v[0x006]
16F4  96 17 23 67 23 E8                      LOADSTRING                    dst=v[0x017], values=[v[0x006], v[0x007]]
16FA  18 C5 01                               CALL                          target=0x01C5
16FD  9A 05 23 EF 1C 17                      STRCMP_NE_JMP                 start=v[0x005], values=[v[0x00E]], target=0x171C
1703  18 B4 03                               CALL                          target=0x03B4
1706  96 17 23 63 23 E4                      LOADSTRING                    dst=v[0x017], values=[v[0x002], v[0x003]]
170C  18 2A 13                               CALL                          target=0x132A
170F  26 6C 61 5F 23 65 32 33 00             VIDEO_NAME                    name="la_{v004}23"
1718  22                                     COPY_BG_TO_FG                 
1719  1F 17 01                               INC                           var=v[0x117]
171C  46                                     RESOURCE_CONTEXT_SAVE         
171D  9A 04 F2 4D 17                         STRCMP_NE_JMP                 start=v[0x004], values=[66], target=0x174D
1722  1A 17 01 B8 2C 17                      STRCMP_NE_JMP                 start=v[0x117], values=[8], target=0x172C
1728  07                                     VIDEOFLAG7_ON                 
1729  09 A4 50                               VIDEOREF                      ref=0x50A4 (GAMWAV[164]=gen_s_13.vdx)
172C  1A 17 01 B7 36 17                      STRCMP_NE_JMP                 start=v[0x117], values=[7], target=0x1736
1732  07                                     VIDEOFLAG7_ON                 
1733  09 8C 50                               VIDEOREF                      ref=0x508C (GAMWAV[140]=gen_e_6.vdx)
1736  1A 17 01 B6 40 17                      STRCMP_NE_JMP                 start=v[0x117], values=[6], target=0x1740
173C  07                                     VIDEOFLAG7_ON                 
173D  09 8D 50                               VIDEOREF                      ref=0x508D (GAMWAV[141]=gen_e_7.vdx)
1740  1A 17 01 B5 4A 17                      STRCMP_NE_JMP                 start=v[0x117], values=[5], target=0x174A
1746  07                                     VIDEOFLAG7_ON                 
1747  09 8B 50                               VIDEOREF                      ref=0x508B (GAMWAV[139]=gen_e_5.vdx)
174A  15 7F 17                               JMP                           target=0x177F
174D  1A 17 01 B8 57 17                      STRCMP_NE_JMP                 start=v[0x117], values=[8], target=0x1757
1753  07                                     VIDEOFLAG7_ON                 
1754  09 A6 50                               VIDEOREF                      ref=0x50A6 (GAMWAV[166]=gen_s_15.vdx)
1757  1A 17 01 B7 61 17                      STRCMP_NE_JMP                 start=v[0x117], values=[7], target=0x1761
175D  07                                     VIDEOFLAG7_ON                 
175E  09 88 50                               VIDEOREF                      ref=0x5088 (GAMWAV[136]=gen_e_2.vdx)
1761  1A 17 01 B6 6B 17                      STRCMP_NE_JMP                 start=v[0x117], values=[6], target=0x176B
1767  07                                     VIDEOFLAG7_ON                 
1768  09 93 50                               VIDEOREF                      ref=0x5093 (GAMWAV[147]=gen_e_13.vdx)
176B  1A 17 01 B5 75 17                      STRCMP_NE_JMP                 start=v[0x117], values=[5], target=0x1775
1771  07                                     VIDEOFLAG7_ON                 
1772  09 87 50                               VIDEOREF                      ref=0x5087 (GAMWAV[135]=gen_e_1.vdx)
1775  1A 17 01 B4 7F 17                      STRCMP_NE_JMP                 start=v[0x117], values=[4], target=0x177F
177B  07                                     VIDEOFLAG7_ON                 
177C  09 99 50                               VIDEOREF                      ref=0x5099 (GAMWAV[153]=gen_s_2.vdx)
177F  47                                     RESOURCE_CONTEXT_RESTORE      
1780  17 00                                  RET                           value=0x00
1782  40 00 00 00 00                         SET_VIDEO_ORIGIN              x=0, y=0
1787  27 73 74 65 6E 23 61 23 62 00          VIDEO_TRANSITION_NAME         name="sten{v000}{v001}"
1791  96 17 23 61 23 E2                      LOADSTRING                    dst=v[0x017], values=[v[0x000], v[0x001]]
1797  18 2A 13                               CALL                          target=0x132A
179A  26 6C 61 5F 23 65 23 66 23 67 00       VIDEO_NAME                    name="la_{v004}{v005}{v006}"
17A5  96 09 23 E5                            LOADSTRING                    dst=v[0x009], values=[v[0x004]]
17A9  96 04 B0                               LOADSTRING                    dst=v[0x004], values=[0]
17AC  18 B4 03                               CALL                          target=0x03B4
17AF  96 04 23 EA                            LOADSTRING                    dst=v[0x004], values=[v[0x009]]
17B3  15 B1 15                               JMP                           target=0x15B1
17B6  16 18 01 B0                            LOADSTRING                    dst=v[0x118], values=[0]
17BA  16 19 01 23 F8                         LOADSTRING                    dst=v[0x119], values=[v[0x017]]
17BF  16 1B 01 23 F9                         LOADSTRING                    dst=v[0x11B], values=[v[0x018]]
17C4  16 1D 01 23 E7                         LOADSTRING                    dst=v[0x11D], values=[v[0x006]]
17C9  16 1F 01 23 E8                         LOADSTRING                    dst=v[0x11F], values=[v[0x007]]
17CE  16 21 01 23 E6                         LOADSTRING                    dst=v[0x121], values=[v[0x005]]
17D3  96 06 23 78 23 F9                      LOADSTRING                    dst=v[0x006], values=[v[0x017], v[0x018]]
17D9  A0 06                                  DEC                           var=v[0x006]
17DB  A0 07                                  DEC                           var=v[0x007]
17DD  96 17 23 67 23 E8                      LOADSTRING                    dst=v[0x017], values=[v[0x006], v[0x007]]
17E3  18 C5 01                               CALL                          target=0x01C5
17E6  9A 05 E2 F1 17                         STRCMP_NE_JMP                 start=v[0x005], values=[50], target=0x17F1
17EB  1F 08 01                               INC                           var=v[0x108]
17EE  1F 08 01                               INC                           var=v[0x108]
17F1  9F 07                                  INC                           var=v[0x007]
17F3  96 17 23 67 23 E8                      LOADSTRING                    dst=v[0x017], values=[v[0x006], v[0x007]]
17F9  18 C5 01                               CALL                          target=0x01C5
17FC  9A 05 E2 07 18                         STRCMP_NE_JMP                 start=v[0x005], values=[50], target=0x1807
1801  1F 08 01                               INC                           var=v[0x108]
1804  1F 08 01                               INC                           var=v[0x108]
1807  9F 07                                  INC                           var=v[0x007]
1809  96 17 23 67 23 E8                      LOADSTRING                    dst=v[0x017], values=[v[0x006], v[0x007]]
180F  18 C5 01                               CALL                          target=0x01C5
1812  9A 05 E2 1D 18                         STRCMP_NE_JMP                 start=v[0x005], values=[50], target=0x181D
1817  1F 08 01                               INC                           var=v[0x108]
181A  1F 08 01                               INC                           var=v[0x108]
181D  9F 06                                  INC                           var=v[0x006]
181F  96 17 23 67 23 E8                      LOADSTRING                    dst=v[0x017], values=[v[0x006], v[0x007]]
1825  18 C5 01                               CALL                          target=0x01C5
1828  9A 05 E2 33 18                         STRCMP_NE_JMP                 start=v[0x005], values=[50], target=0x1833
182D  1F 08 01                               INC                           var=v[0x108]
1830  1F 08 01                               INC                           var=v[0x108]
1833  9F 06                                  INC                           var=v[0x006]
1835  96 17 23 67 23 E8                      LOADSTRING                    dst=v[0x017], values=[v[0x006], v[0x007]]
183B  18 C5 01                               CALL                          target=0x01C5
183E  9A 05 E2 49 18                         STRCMP_NE_JMP                 start=v[0x005], values=[50], target=0x1849
1843  1F 08 01                               INC                           var=v[0x108]
1846  1F 08 01                               INC                           var=v[0x108]
1849  A0 07                                  DEC                           var=v[0x007]
184B  96 17 23 67 23 E8                      LOADSTRING                    dst=v[0x017], values=[v[0x006], v[0x007]]
1851  18 C5 01                               CALL                          target=0x01C5
1854  9A 05 E2 5F 18                         STRCMP_NE_JMP                 start=v[0x005], values=[50], target=0x185F
1859  1F 08 01                               INC                           var=v[0x108]
185C  1F 08 01                               INC                           var=v[0x108]
185F  A0 07                                  DEC                           var=v[0x007]
1861  96 17 23 67 23 E8                      LOADSTRING                    dst=v[0x017], values=[v[0x006], v[0x007]]
1867  18 C5 01                               CALL                          target=0x01C5
186A  9A 05 E2 75 18                         STRCMP_NE_JMP                 start=v[0x005], values=[50], target=0x1875
186F  1F 08 01                               INC                           var=v[0x108]
1872  1F 08 01                               INC                           var=v[0x108]
1875  A0 06                                  DEC                           var=v[0x006]
1877  96 17 23 67 23 E8                      LOADSTRING                    dst=v[0x017], values=[v[0x006], v[0x007]]
187D  18 C5 01                               CALL                          target=0x01C5
1880  9A 05 E2 8B 18                         STRCMP_NE_JMP                 start=v[0x005], values=[50], target=0x188B
1885  1F 08 01                               INC                           var=v[0x108]
1888  1F 08 01                               INC                           var=v[0x108]
188B  1A 10 01 B3 31 19                      STRCMP_NE_JMP                 start=v[0x110], values=[3], target=0x1931
1891  96 06 23 61 23 E2                      LOADSTRING                    dst=v[0x006], values=[v[0x000], v[0x001]]
1897  A0 06                                  DEC                           var=v[0x006]
1899  A0 07                                  DEC                           var=v[0x007]
189B  96 17 23 67 23 E8                      LOADSTRING                    dst=v[0x017], values=[v[0x006], v[0x007]]
18A1  18 C5 01                               CALL                          target=0x01C5
18A4  9A 05 F2 AC 18                         STRCMP_NE_JMP                 start=v[0x005], values=[66], target=0x18AC
18A9  18 47 19                               CALL                          target=0x1947
18AC  9F 07                                  INC                           var=v[0x007]
18AE  96 17 23 67 23 E8                      LOADSTRING                    dst=v[0x017], values=[v[0x006], v[0x007]]
18B4  18 C5 01                               CALL                          target=0x01C5
18B7  9A 05 F2 BF 18                         STRCMP_NE_JMP                 start=v[0x005], values=[66], target=0x18BF
18BC  18 47 19                               CALL                          target=0x1947
18BF  9F 07                                  INC                           var=v[0x007]
18C1  96 17 23 67 23 E8                      LOADSTRING                    dst=v[0x017], values=[v[0x006], v[0x007]]
18C7  18 C5 01                               CALL                          target=0x01C5
18CA  9A 05 F2 D2 18                         STRCMP_NE_JMP                 start=v[0x005], values=[66], target=0x18D2
18CF  18 47 19                               CALL                          target=0x1947
18D2  9F 06                                  INC                           var=v[0x006]
18D4  96 17 23 67 23 E8                      LOADSTRING                    dst=v[0x017], values=[v[0x006], v[0x007]]
18DA  18 C5 01                               CALL                          target=0x01C5
18DD  9A 05 F2 E5 18                         STRCMP_NE_JMP                 start=v[0x005], values=[66], target=0x18E5
18E2  18 47 19                               CALL                          target=0x1947
18E5  9F 06                                  INC                           var=v[0x006]
18E7  96 17 23 67 23 E8                      LOADSTRING                    dst=v[0x017], values=[v[0x006], v[0x007]]
18ED  18 C5 01                               CALL                          target=0x01C5
18F0  9A 05 F2 F8 18                         STRCMP_NE_JMP                 start=v[0x005], values=[66], target=0x18F8
18F5  18 47 19                               CALL                          target=0x1947
18F8  A0 07                                  DEC                           var=v[0x007]
18FA  96 17 23 67 23 E8                      LOADSTRING                    dst=v[0x017], values=[v[0x006], v[0x007]]
1900  18 C5 01                               CALL                          target=0x01C5
1903  9A 05 F2 0B 19                         STRCMP_NE_JMP                 start=v[0x005], values=[66], target=0x190B
1908  18 47 19                               CALL                          target=0x1947
190B  A0 07                                  DEC                           var=v[0x007]
190D  96 17 23 67 23 E8                      LOADSTRING                    dst=v[0x017], values=[v[0x006], v[0x007]]
1913  18 C5 01                               CALL                          target=0x01C5
1916  9A 05 F2 1E 19                         STRCMP_NE_JMP                 start=v[0x005], values=[66], target=0x191E
191B  18 47 19                               CALL                          target=0x1947
191E  A0 06                                  DEC                           var=v[0x006]
1920  96 17 23 67 23 E8                      LOADSTRING                    dst=v[0x017], values=[v[0x006], v[0x007]]
1926  18 C5 01                               CALL                          target=0x01C5
1929  9A 05 F2 31 19                         STRCMP_NE_JMP                 start=v[0x005], values=[66], target=0x1931
192E  18 47 19                               CALL                          target=0x1947
1931  A4 17 19 01                            MOV                           dst=v[0x017], src=0x0119
1935  A4 18 1B 01                            MOV                           dst=v[0x018], src=0x011B
1939  A4 06 1D 01                            MOV                           dst=v[0x006], src=0x011D
193D  A4 07 1F 01                            MOV                           dst=v[0x007], src=0x011F
1941  A4 05 21 01                            MOV                           dst=v[0x005], src=0x0121
1945  17 00                                  RET                           value=0x00
1947  36 08 01 B1 60 19                      CHAR_LESS_JMP                 start=v[0x108], values=[1], target=0x1960
194D  1A 18 01 B1 5D 19                      STRCMP_NE_JMP                 start=v[0x118], values=[1], target=0x195D
1953  20 08 01                               DEC                           var=v[0x108]
1956  16 18 01 B0                            LOADSTRING                    dst=v[0x118], values=[0]
195A  15 60 19                               JMP                           target=0x1960
195D  1F 18 01                               INC                           var=v[0x118]
1960  17 00                                  RET                           value=0x00
1962  1A 18 01 B1 72 19                      STRCMP_NE_JMP                 start=v[0x118], values=[1], target=0x1972
1968  1F 08 01                               INC                           var=v[0x108]
196B  16 18 01 B0                            LOADSTRING                    dst=v[0x118], values=[0]
196F  15 75 19                               JMP                           target=0x1975
1972  1F 18 01                               INC                           var=v[0x118]
1975  17 00                                  RET                           value=0x00
1977  43 01                                  RETURNSCRIPT                  value=0x01
1979  04                                     PALFADEOUT                    
197A  43 00                                  RETURNSCRIPT                  value=0x00
