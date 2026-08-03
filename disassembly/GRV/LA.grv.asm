; T7G/LA.GRV
; size=5939 sha256=71e202dd234ae33a3a26c09c1501c5814b8c917181cd1f9dc8c3467281c1ba12
; instructions=1217 input_loops=2

0000  04                                     PALFADEOUT
0001  02 3A 4C                               PLAYSONG                      ref=0x4C3A (XMI[58]=gu63.xmi)
0004  2C 2E 17 08                            SET_HOTSPOT_TOP               target=0x172E, cursor=0x08
0008  2D 32 00 06                            SET_HOTSPOT_BOTTOM            target=0x0032, cursor=0x06
000C  44 30 17                               SET_HOTSPOT_RIGHT             target=0x1730
000F  45 30 17                               SET_HOTSPOT_LEFT              target=0x1730
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
0042  09 00 30                               VIDEOREF                      ref=0x3000 (LA[0]=borup.vdx)
0045  22                                     COPY_BG_TO_FG
0046  40 D8 FF D8 FF                         SET_VIDEO_ORIGIN              x=-40, y=-40
004B  09 33 30                               VIDEOREF                      ref=0x3033 (LA[51]=la_b44.vdx)
004E  40 D8 FF 28 00                         SET_VIDEO_ORIGIN              x=-40, y=40
0053  09 38 30                               VIDEOREF                      ref=0x3038 (LA[56]=la_r04.vdx)
0056  40 28 00 28 00                         SET_VIDEO_ORIGIN              x=40, y=40
005B  09 1C 30                               VIDEOREF                      ref=0x301C (LA[28]=la_b00.vdx)
005E  40 28 00 D8 FF                         SET_VIDEO_ORIGIN              x=40, y=-40
0063  09 47 30                               VIDEOREF                      ref=0x3047 (LA[71]=la_r40.vdx)
0066  1A 07 01 B0 75 00                      STRCMP_NE_JMP                 start=v[0x107], values=[0], target=0x0075
006C  46                                     RESOURCE_CONTEXT_SAVE
006D  07                                     VIDEOFLAG7_ON
006E  09 62 50                               VIDEOREF                      ref=0x5062 (GAMWAV[98]=17_e_2.vdx)
0071  47                                     RESOURCE_CONTEXT_RESTORE
0072  1F 07 01                               INC                           var=v[0x107]
0075  96 19 62 30 30 30 30 30 72 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 72 30 30 30 30 30 E2 LOADSTRING                    dst=v[0x019], values=[50, 0, 0, 0, 0, 0, 66, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66, 0, 0, 0, 0, 0, 50]
00A8  22                                     COPY_BG_TO_FG
00A9  18 24 08                               CALL                          target=0x0824
00AC  1A 08 01 B0 B5 00                      STRCMP_NE_JMP                 start=v[0x108], values=[0], target=0x00B5
00B2  15 DC 00                               JMP                           target=0x00DC
00B5  18 83 07                               CALL                          target=0x0783
00B8  1A 09 01 B0 C1 00                      STRCMP_NE_JMP                 start=v[0x109], values=[0], target=0x00C1
00BE  15 D3 00                               JMP                           target=0x00D3
00C1  1A 0A 01 B0 D0 00                      STRCMP_NE_JMP                 start=v[0x10A], values=[0], target=0x00D0
00C7  1A 0B 01 B0 D0 00                      STRCMP_NE_JMP                 start=v[0x10B], values=[0], target=0x00D0
00CD  15 18 01                               JMP                           target=0x0118
00D0  15 A8 00                               JMP                           target=0x00A8
00D3  07                                     VIDEOFLAG7_ON
00D4  09 A0 50                               VIDEOREF                      ref=0x50A0 (GAMWAV[160]=gen_s_9.vdx)
00D7  96 EB E1                               LOADSTRING                    dst=v[0x0EB], values=[49]
00DA  43 00                                  RETURNSCRIPT                  value=0x00
00DC  07                                     VIDEOFLAG7_ON
00DD  09 90 50                               VIDEOREF                      ref=0x5090 (GAMWAV[144]=gen_e_10.vdx)
00E0  15 32 00                               JMP                           target=0x0032
00E3  96 00 30 30 30 B0                      LOADSTRING                    dst=v[0x000], values=[0, 0, 0, 0]
00E9  96 04 7C 23 63 23 E4                   LOADSTRING                    dst=v[0x004], values=[grid[v[0x002],v[0x003]]]
00F0  9A 04 F2 F7 00                         STRCMP_NE_JMP                 start=v[0x004], values=[66], target=0x00F7
00F5  9F 01                                  INC                           var=v[0x001]
00F7  9A 04 E2 FE 00                         STRCMP_NE_JMP                 start=v[0x004], values=[50], target=0x00FE
00FC  9F 00                                  INC                           var=v[0x000]
00FE  9A 03 B9 0B 01                         STRCMP_NE_JMP                 start=v[0x003], values=[9], target=0x010B
0103  9F 02                                  INC                           var=v[0x002]
0105  96 03 B0                               LOADSTRING                    dst=v[0x003], values=[0]
0108  15 0D 01                               JMP                           target=0x010D
010B  9F 03                                  INC                           var=v[0x003]
010D  A3 02 35 B0 16 01                      STRCMP_EQ_JMP                 start=v[0x002], values=[5, 0], target=0x0116
0113  15 E9 00                               JMP                           target=0x00E9
0116  17 00                                  RET                           value=0x00
0118  18 E3 00                               CALL                          target=0x00E3
011B  B6 01 23 E1 27 01                      CHAR_LESS_JMP                 start=v[0x001], values=[v[0x000]], target=0x0127
0121  15 DC 00                               JMP                           target=0x00DC
0124  15 2A 01                               JMP                           target=0x012A
0127  15 D3 00                               JMP                           target=0x00D3
012A  18 B9 01                               CALL                          target=0x01B9
012D  9A 05 B0 34 01                         STRCMP_NE_JMP                 start=v[0x005], values=[0], target=0x0134
0132  9F 02                                  INC                           var=v[0x002]
0134  17 00                                  RET                           value=0x00
0136  96 17 23 61 23 E2                      LOADSTRING                    dst=v[0x017], values=[v[0x000], v[0x001]]
013C  96 02 B0                               LOADSTRING                    dst=v[0x002], values=[0]
013F  A0 17                                  DEC                           var=v[0x017]
0141  18 2A 01                               CALL                          target=0x012A
0144  A0 18                                  DEC                           var=v[0x018]
0146  18 2A 01                               CALL                          target=0x012A
0149  9F 17                                  INC                           var=v[0x017]
014B  18 2A 01                               CALL                          target=0x012A
014E  9F 17                                  INC                           var=v[0x017]
0150  18 2A 01                               CALL                          target=0x012A
0153  9F 18                                  INC                           var=v[0x018]
0155  18 2A 01                               CALL                          target=0x012A
0158  9F 18                                  INC                           var=v[0x018]
015A  18 2A 01                               CALL                          target=0x012A
015D  A0 17                                  DEC                           var=v[0x017]
015F  18 2A 01                               CALL                          target=0x012A
0162  A0 17                                  DEC                           var=v[0x017]
0164  18 2A 01                               CALL                          target=0x012A
0167  A0 17                                  DEC                           var=v[0x017]
0169  18 2A 01                               CALL                          target=0x012A
016C  A0 18                                  DEC                           var=v[0x018]
016E  18 2A 01                               CALL                          target=0x012A
0171  A0 18                                  DEC                           var=v[0x018]
0173  18 2A 01                               CALL                          target=0x012A
0176  A0 18                                  DEC                           var=v[0x018]
0178  18 2A 01                               CALL                          target=0x012A
017B  9F 17                                  INC                           var=v[0x017]
017D  18 2A 01                               CALL                          target=0x012A
0180  9F 17                                  INC                           var=v[0x017]
0182  18 2A 01                               CALL                          target=0x012A
0185  9F 17                                  INC                           var=v[0x017]
0187  18 2A 01                               CALL                          target=0x012A
018A  9F 17                                  INC                           var=v[0x017]
018C  18 2A 01                               CALL                          target=0x012A
018F  9F 18                                  INC                           var=v[0x018]
0191  18 2A 01                               CALL                          target=0x012A
0194  9F 18                                  INC                           var=v[0x018]
0196  18 2A 01                               CALL                          target=0x012A
0199  9F 18                                  INC                           var=v[0x018]
019B  18 2A 01                               CALL                          target=0x012A
019E  9F 18                                  INC                           var=v[0x018]
01A0  18 2A 01                               CALL                          target=0x012A
01A3  A0 17                                  DEC                           var=v[0x017]
01A5  18 2A 01                               CALL                          target=0x012A
01A8  A0 17                                  DEC                           var=v[0x017]
01AA  18 2A 01                               CALL                          target=0x012A
01AD  A0 17                                  DEC                           var=v[0x017]
01AF  18 2A 01                               CALL                          target=0x012A
01B2  A0 17                                  DEC                           var=v[0x017]
01B4  18 2A 01                               CALL                          target=0x012A
01B7  17 00                                  RET                           value=0x00
01B9  96 05 F8                               LOADSTRING                    dst=v[0x005], values=[72]
01BC  9A 17 30 B0 C6 01                      STRCMP_NE_JMP                 start=v[0x017], values=[0, 0], target=0x01C6
01C2  A4 05 19 00                            MOV                           dst=v[0x005], src=0x0019
01C6  9A 17 30 B1 D0 01                      STRCMP_NE_JMP                 start=v[0x017], values=[0, 1], target=0x01D0
01CC  A4 05 1A 00                            MOV                           dst=v[0x005], src=0x001A
01D0  9A 17 30 B2 DA 01                      STRCMP_NE_JMP                 start=v[0x017], values=[0, 2], target=0x01DA
01D6  A4 05 1B 00                            MOV                           dst=v[0x005], src=0x001B
01DA  9A 17 30 B3 E4 01                      STRCMP_NE_JMP                 start=v[0x017], values=[0, 3], target=0x01E4
01E0  A4 05 1C 00                            MOV                           dst=v[0x005], src=0x001C
01E4  9A 17 30 B4 EE 01                      STRCMP_NE_JMP                 start=v[0x017], values=[0, 4], target=0x01EE
01EA  A4 05 1D 00                            MOV                           dst=v[0x005], src=0x001D
01EE  9A 17 30 B5 F8 01                      STRCMP_NE_JMP                 start=v[0x017], values=[0, 5], target=0x01F8
01F4  A4 05 1E 00                            MOV                           dst=v[0x005], src=0x001E
01F8  9A 17 30 B6 02 02                      STRCMP_NE_JMP                 start=v[0x017], values=[0, 6], target=0x0202
01FE  A4 05 1F 00                            MOV                           dst=v[0x005], src=0x001F
0202  9A 17 31 B0 0C 02                      STRCMP_NE_JMP                 start=v[0x017], values=[1, 0], target=0x020C
0208  A4 05 20 00                            MOV                           dst=v[0x005], src=0x0020
020C  9A 17 31 B1 16 02                      STRCMP_NE_JMP                 start=v[0x017], values=[1, 1], target=0x0216
0212  A4 05 21 00                            MOV                           dst=v[0x005], src=0x0021
0216  9A 17 31 B2 20 02                      STRCMP_NE_JMP                 start=v[0x017], values=[1, 2], target=0x0220
021C  A4 05 22 00                            MOV                           dst=v[0x005], src=0x0022
0220  9A 17 31 B3 2A 02                      STRCMP_NE_JMP                 start=v[0x017], values=[1, 3], target=0x022A
0226  A4 05 23 00                            MOV                           dst=v[0x005], src=0x0023
022A  9A 17 31 B4 34 02                      STRCMP_NE_JMP                 start=v[0x017], values=[1, 4], target=0x0234
0230  A4 05 24 00                            MOV                           dst=v[0x005], src=0x0024
0234  9A 17 31 B5 3E 02                      STRCMP_NE_JMP                 start=v[0x017], values=[1, 5], target=0x023E
023A  A4 05 25 00                            MOV                           dst=v[0x005], src=0x0025
023E  9A 17 31 B6 48 02                      STRCMP_NE_JMP                 start=v[0x017], values=[1, 6], target=0x0248
0244  A4 05 26 00                            MOV                           dst=v[0x005], src=0x0026
0248  9A 17 32 B0 52 02                      STRCMP_NE_JMP                 start=v[0x017], values=[2, 0], target=0x0252
024E  A4 05 27 00                            MOV                           dst=v[0x005], src=0x0027
0252  9A 17 32 B1 5C 02                      STRCMP_NE_JMP                 start=v[0x017], values=[2, 1], target=0x025C
0258  A4 05 28 00                            MOV                           dst=v[0x005], src=0x0028
025C  9A 17 32 B2 66 02                      STRCMP_NE_JMP                 start=v[0x017], values=[2, 2], target=0x0266
0262  A4 05 29 00                            MOV                           dst=v[0x005], src=0x0029
0266  9A 17 32 B3 70 02                      STRCMP_NE_JMP                 start=v[0x017], values=[2, 3], target=0x0270
026C  A4 05 2A 00                            MOV                           dst=v[0x005], src=0x002A
0270  9A 17 32 B4 7A 02                      STRCMP_NE_JMP                 start=v[0x017], values=[2, 4], target=0x027A
0276  A4 05 2B 00                            MOV                           dst=v[0x005], src=0x002B
027A  9A 17 32 B5 84 02                      STRCMP_NE_JMP                 start=v[0x017], values=[2, 5], target=0x0284
0280  A4 05 2C 00                            MOV                           dst=v[0x005], src=0x002C
0284  9A 17 32 B6 8E 02                      STRCMP_NE_JMP                 start=v[0x017], values=[2, 6], target=0x028E
028A  A4 05 2D 00                            MOV                           dst=v[0x005], src=0x002D
028E  9A 17 33 B0 98 02                      STRCMP_NE_JMP                 start=v[0x017], values=[3, 0], target=0x0298
0294  A4 05 2E 00                            MOV                           dst=v[0x005], src=0x002E
0298  9A 17 33 B1 A2 02                      STRCMP_NE_JMP                 start=v[0x017], values=[3, 1], target=0x02A2
029E  A4 05 2F 00                            MOV                           dst=v[0x005], src=0x002F
02A2  9A 17 33 B2 AC 02                      STRCMP_NE_JMP                 start=v[0x017], values=[3, 2], target=0x02AC
02A8  A4 05 30 00                            MOV                           dst=v[0x005], src=0x0030
02AC  9A 17 33 B3 B6 02                      STRCMP_NE_JMP                 start=v[0x017], values=[3, 3], target=0x02B6
02B2  A4 05 31 00                            MOV                           dst=v[0x005], src=0x0031
02B6  9A 17 33 B4 C0 02                      STRCMP_NE_JMP                 start=v[0x017], values=[3, 4], target=0x02C0
02BC  A4 05 32 00                            MOV                           dst=v[0x005], src=0x0032
02C0  9A 17 33 B5 CA 02                      STRCMP_NE_JMP                 start=v[0x017], values=[3, 5], target=0x02CA
02C6  A4 05 33 00                            MOV                           dst=v[0x005], src=0x0033
02CA  9A 17 33 B6 D4 02                      STRCMP_NE_JMP                 start=v[0x017], values=[3, 6], target=0x02D4
02D0  A4 05 34 00                            MOV                           dst=v[0x005], src=0x0034
02D4  9A 17 34 B0 DE 02                      STRCMP_NE_JMP                 start=v[0x017], values=[4, 0], target=0x02DE
02DA  A4 05 35 00                            MOV                           dst=v[0x005], src=0x0035
02DE  9A 17 34 B1 E8 02                      STRCMP_NE_JMP                 start=v[0x017], values=[4, 1], target=0x02E8
02E4  A4 05 36 00                            MOV                           dst=v[0x005], src=0x0036
02E8  9A 17 34 B2 F2 02                      STRCMP_NE_JMP                 start=v[0x017], values=[4, 2], target=0x02F2
02EE  A4 05 37 00                            MOV                           dst=v[0x005], src=0x0037
02F2  9A 17 34 B3 FC 02                      STRCMP_NE_JMP                 start=v[0x017], values=[4, 3], target=0x02FC
02F8  A4 05 38 00                            MOV                           dst=v[0x005], src=0x0038
02FC  9A 17 34 B4 06 03                      STRCMP_NE_JMP                 start=v[0x017], values=[4, 4], target=0x0306
0302  A4 05 39 00                            MOV                           dst=v[0x005], src=0x0039
0306  9A 17 34 B5 10 03                      STRCMP_NE_JMP                 start=v[0x017], values=[4, 5], target=0x0310
030C  A4 05 3A 00                            MOV                           dst=v[0x005], src=0x003A
0310  9A 17 34 B6 1A 03                      STRCMP_NE_JMP                 start=v[0x017], values=[4, 6], target=0x031A
0316  A4 05 3B 00                            MOV                           dst=v[0x005], src=0x003B
031A  9A 17 35 B0 24 03                      STRCMP_NE_JMP                 start=v[0x017], values=[5, 0], target=0x0324
0320  A4 05 3C 00                            MOV                           dst=v[0x005], src=0x003C
0324  9A 17 35 B1 2E 03                      STRCMP_NE_JMP                 start=v[0x017], values=[5, 1], target=0x032E
032A  A4 05 3D 00                            MOV                           dst=v[0x005], src=0x003D
032E  9A 17 35 B2 38 03                      STRCMP_NE_JMP                 start=v[0x017], values=[5, 2], target=0x0338
0334  A4 05 3E 00                            MOV                           dst=v[0x005], src=0x003E
0338  9A 17 35 B3 42 03                      STRCMP_NE_JMP                 start=v[0x017], values=[5, 3], target=0x0342
033E  A4 05 3F 00                            MOV                           dst=v[0x005], src=0x003F
0342  9A 17 35 B4 4C 03                      STRCMP_NE_JMP                 start=v[0x017], values=[5, 4], target=0x034C
0348  A4 05 40 00                            MOV                           dst=v[0x005], src=0x0040
034C  9A 17 35 B5 56 03                      STRCMP_NE_JMP                 start=v[0x017], values=[5, 5], target=0x0356
0352  A4 05 41 00                            MOV                           dst=v[0x005], src=0x0041
0356  9A 17 35 B6 60 03                      STRCMP_NE_JMP                 start=v[0x017], values=[5, 6], target=0x0360
035C  A4 05 42 00                            MOV                           dst=v[0x005], src=0x0042
0360  9A 17 36 B0 6A 03                      STRCMP_NE_JMP                 start=v[0x017], values=[6, 0], target=0x036A
0366  A4 05 43 00                            MOV                           dst=v[0x005], src=0x0043
036A  9A 17 36 B1 74 03                      STRCMP_NE_JMP                 start=v[0x017], values=[6, 1], target=0x0374
0370  A4 05 44 00                            MOV                           dst=v[0x005], src=0x0044
0374  9A 17 36 B2 7E 03                      STRCMP_NE_JMP                 start=v[0x017], values=[6, 2], target=0x037E
037A  A4 05 45 00                            MOV                           dst=v[0x005], src=0x0045
037E  9A 17 36 B3 88 03                      STRCMP_NE_JMP                 start=v[0x017], values=[6, 3], target=0x0388
0384  A4 05 46 00                            MOV                           dst=v[0x005], src=0x0046
0388  9A 17 36 B4 92 03                      STRCMP_NE_JMP                 start=v[0x017], values=[6, 4], target=0x0392
038E  A4 05 47 00                            MOV                           dst=v[0x005], src=0x0047
0392  9A 17 36 B5 9C 03                      STRCMP_NE_JMP                 start=v[0x017], values=[6, 5], target=0x039C
0398  A4 05 48 00                            MOV                           dst=v[0x005], src=0x0048
039C  9A 17 36 B6 A6 03                      STRCMP_NE_JMP                 start=v[0x017], values=[6, 6], target=0x03A6
03A2  A4 05 49 00                            MOV                           dst=v[0x005], src=0x0049
03A6  17 00                                  RET                           value=0x00
03A8  9A 17 30 B0 B2 03                      STRCMP_NE_JMP                 start=v[0x017], values=[0, 0], target=0x03B2
03AE  A4 19 04 00                            MOV                           dst=v[0x019], src=0x0004
03B2  9A 17 30 B1 BC 03                      STRCMP_NE_JMP                 start=v[0x017], values=[0, 1], target=0x03BC
03B8  A4 1A 04 00                            MOV                           dst=v[0x01A], src=0x0004
03BC  9A 17 30 B2 C6 03                      STRCMP_NE_JMP                 start=v[0x017], values=[0, 2], target=0x03C6
03C2  A4 1B 04 00                            MOV                           dst=v[0x01B], src=0x0004
03C6  9A 17 30 B3 D0 03                      STRCMP_NE_JMP                 start=v[0x017], values=[0, 3], target=0x03D0
03CC  A4 1C 04 00                            MOV                           dst=v[0x01C], src=0x0004
03D0  9A 17 30 B4 DA 03                      STRCMP_NE_JMP                 start=v[0x017], values=[0, 4], target=0x03DA
03D6  A4 1D 04 00                            MOV                           dst=v[0x01D], src=0x0004
03DA  9A 17 30 B5 E4 03                      STRCMP_NE_JMP                 start=v[0x017], values=[0, 5], target=0x03E4
03E0  A4 1E 04 00                            MOV                           dst=v[0x01E], src=0x0004
03E4  9A 17 30 B6 EE 03                      STRCMP_NE_JMP                 start=v[0x017], values=[0, 6], target=0x03EE
03EA  A4 1F 04 00                            MOV                           dst=v[0x01F], src=0x0004
03EE  9A 17 31 B0 F8 03                      STRCMP_NE_JMP                 start=v[0x017], values=[1, 0], target=0x03F8
03F4  A4 20 04 00                            MOV                           dst=v[0x020], src=0x0004
03F8  9A 17 31 B1 02 04                      STRCMP_NE_JMP                 start=v[0x017], values=[1, 1], target=0x0402
03FE  A4 21 04 00                            MOV                           dst=v[0x021], src=0x0004
0402  9A 17 31 B2 0C 04                      STRCMP_NE_JMP                 start=v[0x017], values=[1, 2], target=0x040C
0408  A4 22 04 00                            MOV                           dst=v[0x022], src=0x0004
040C  9A 17 31 B3 16 04                      STRCMP_NE_JMP                 start=v[0x017], values=[1, 3], target=0x0416
0412  A4 23 04 00                            MOV                           dst=v[0x023], src=0x0004
0416  9A 17 31 B4 20 04                      STRCMP_NE_JMP                 start=v[0x017], values=[1, 4], target=0x0420
041C  A4 24 04 00                            MOV                           dst=v[0x024], src=0x0004
0420  9A 17 31 B5 2A 04                      STRCMP_NE_JMP                 start=v[0x017], values=[1, 5], target=0x042A
0426  A4 25 04 00                            MOV                           dst=v[0x025], src=0x0004
042A  9A 17 31 B6 34 04                      STRCMP_NE_JMP                 start=v[0x017], values=[1, 6], target=0x0434
0430  A4 26 04 00                            MOV                           dst=v[0x026], src=0x0004
0434  9A 17 32 B0 3E 04                      STRCMP_NE_JMP                 start=v[0x017], values=[2, 0], target=0x043E
043A  A4 27 04 00                            MOV                           dst=v[0x027], src=0x0004
043E  9A 17 32 B1 48 04                      STRCMP_NE_JMP                 start=v[0x017], values=[2, 1], target=0x0448
0444  A4 28 04 00                            MOV                           dst=v[0x028], src=0x0004
0448  9A 17 32 B2 52 04                      STRCMP_NE_JMP                 start=v[0x017], values=[2, 2], target=0x0452
044E  A4 29 04 00                            MOV                           dst=v[0x029], src=0x0004
0452  9A 17 32 B3 5C 04                      STRCMP_NE_JMP                 start=v[0x017], values=[2, 3], target=0x045C
0458  A4 2A 04 00                            MOV                           dst=v[0x02A], src=0x0004
045C  9A 17 32 B4 66 04                      STRCMP_NE_JMP                 start=v[0x017], values=[2, 4], target=0x0466
0462  A4 2B 04 00                            MOV                           dst=v[0x02B], src=0x0004
0466  9A 17 32 B5 70 04                      STRCMP_NE_JMP                 start=v[0x017], values=[2, 5], target=0x0470
046C  A4 2C 04 00                            MOV                           dst=v[0x02C], src=0x0004
0470  9A 17 32 B6 7A 04                      STRCMP_NE_JMP                 start=v[0x017], values=[2, 6], target=0x047A
0476  A4 2D 04 00                            MOV                           dst=v[0x02D], src=0x0004
047A  9A 17 33 B0 84 04                      STRCMP_NE_JMP                 start=v[0x017], values=[3, 0], target=0x0484
0480  A4 2E 04 00                            MOV                           dst=v[0x02E], src=0x0004
0484  9A 17 33 B1 8E 04                      STRCMP_NE_JMP                 start=v[0x017], values=[3, 1], target=0x048E
048A  A4 2F 04 00                            MOV                           dst=v[0x02F], src=0x0004
048E  9A 17 33 B2 98 04                      STRCMP_NE_JMP                 start=v[0x017], values=[3, 2], target=0x0498
0494  A4 30 04 00                            MOV                           dst=v[0x030], src=0x0004
0498  9A 17 33 B3 A2 04                      STRCMP_NE_JMP                 start=v[0x017], values=[3, 3], target=0x04A2
049E  A4 31 04 00                            MOV                           dst=v[0x031], src=0x0004
04A2  9A 17 33 B4 AC 04                      STRCMP_NE_JMP                 start=v[0x017], values=[3, 4], target=0x04AC
04A8  A4 32 04 00                            MOV                           dst=v[0x032], src=0x0004
04AC  9A 17 33 B5 B6 04                      STRCMP_NE_JMP                 start=v[0x017], values=[3, 5], target=0x04B6
04B2  A4 33 04 00                            MOV                           dst=v[0x033], src=0x0004
04B6  9A 17 33 B6 C0 04                      STRCMP_NE_JMP                 start=v[0x017], values=[3, 6], target=0x04C0
04BC  A4 34 04 00                            MOV                           dst=v[0x034], src=0x0004
04C0  9A 17 34 B0 CA 04                      STRCMP_NE_JMP                 start=v[0x017], values=[4, 0], target=0x04CA
04C6  A4 35 04 00                            MOV                           dst=v[0x035], src=0x0004
04CA  9A 17 34 B1 D4 04                      STRCMP_NE_JMP                 start=v[0x017], values=[4, 1], target=0x04D4
04D0  A4 36 04 00                            MOV                           dst=v[0x036], src=0x0004
04D4  9A 17 34 B2 DE 04                      STRCMP_NE_JMP                 start=v[0x017], values=[4, 2], target=0x04DE
04DA  A4 37 04 00                            MOV                           dst=v[0x037], src=0x0004
04DE  9A 17 34 B3 E8 04                      STRCMP_NE_JMP                 start=v[0x017], values=[4, 3], target=0x04E8
04E4  A4 38 04 00                            MOV                           dst=v[0x038], src=0x0004
04E8  9A 17 34 B4 F2 04                      STRCMP_NE_JMP                 start=v[0x017], values=[4, 4], target=0x04F2
04EE  A4 39 04 00                            MOV                           dst=v[0x039], src=0x0004
04F2  9A 17 34 B5 FC 04                      STRCMP_NE_JMP                 start=v[0x017], values=[4, 5], target=0x04FC
04F8  A4 3A 04 00                            MOV                           dst=v[0x03A], src=0x0004
04FC  9A 17 34 B6 06 05                      STRCMP_NE_JMP                 start=v[0x017], values=[4, 6], target=0x0506
0502  A4 3B 04 00                            MOV                           dst=v[0x03B], src=0x0004
0506  9A 17 35 B0 10 05                      STRCMP_NE_JMP                 start=v[0x017], values=[5, 0], target=0x0510
050C  A4 3C 04 00                            MOV                           dst=v[0x03C], src=0x0004
0510  9A 17 35 B1 1A 05                      STRCMP_NE_JMP                 start=v[0x017], values=[5, 1], target=0x051A
0516  A4 3D 04 00                            MOV                           dst=v[0x03D], src=0x0004
051A  9A 17 35 B2 24 05                      STRCMP_NE_JMP                 start=v[0x017], values=[5, 2], target=0x0524
0520  A4 3E 04 00                            MOV                           dst=v[0x03E], src=0x0004
0524  9A 17 35 B3 2E 05                      STRCMP_NE_JMP                 start=v[0x017], values=[5, 3], target=0x052E
052A  A4 3F 04 00                            MOV                           dst=v[0x03F], src=0x0004
052E  9A 17 35 B4 38 05                      STRCMP_NE_JMP                 start=v[0x017], values=[5, 4], target=0x0538
0534  A4 40 04 00                            MOV                           dst=v[0x040], src=0x0004
0538  9A 17 35 B5 42 05                      STRCMP_NE_JMP                 start=v[0x017], values=[5, 5], target=0x0542
053E  A4 41 04 00                            MOV                           dst=v[0x041], src=0x0004
0542  9A 17 35 B6 4C 05                      STRCMP_NE_JMP                 start=v[0x017], values=[5, 6], target=0x054C
0548  A4 42 04 00                            MOV                           dst=v[0x042], src=0x0004
054C  9A 17 36 B0 56 05                      STRCMP_NE_JMP                 start=v[0x017], values=[6, 0], target=0x0556
0552  A4 43 04 00                            MOV                           dst=v[0x043], src=0x0004
0556  9A 17 36 B1 60 05                      STRCMP_NE_JMP                 start=v[0x017], values=[6, 1], target=0x0560
055C  A4 44 04 00                            MOV                           dst=v[0x044], src=0x0004
0560  9A 17 36 B2 6A 05                      STRCMP_NE_JMP                 start=v[0x017], values=[6, 2], target=0x056A
0566  A4 45 04 00                            MOV                           dst=v[0x045], src=0x0004
056A  9A 17 36 B3 74 05                      STRCMP_NE_JMP                 start=v[0x017], values=[6, 3], target=0x0574
0570  A4 46 04 00                            MOV                           dst=v[0x046], src=0x0004
0574  9A 17 36 B4 7E 05                      STRCMP_NE_JMP                 start=v[0x017], values=[6, 4], target=0x057E
057A  A4 47 04 00                            MOV                           dst=v[0x047], src=0x0004
057E  9A 17 36 B5 88 05                      STRCMP_NE_JMP                 start=v[0x017], values=[6, 5], target=0x0588
0584  A4 48 04 00                            MOV                           dst=v[0x048], src=0x0004
0588  9A 17 36 B6 92 05                      STRCMP_NE_JMP                 start=v[0x017], values=[6, 6], target=0x0592
058E  A4 49 04 00                            MOV                           dst=v[0x049], src=0x0004
0592  17 00                                  RET                           value=0x00
0594  96 05 F8                               LOADSTRING                    dst=v[0x005], values=[72]
0597  9A 17 30 B0 A1 05                      STRCMP_NE_JMP                 start=v[0x017], values=[0, 0], target=0x05A1
059D  96 4B 23 E3                            LOADSTRING                    dst=v[0x04B], values=[v[0x002]]
05A1  9A 17 30 B1 AB 05                      STRCMP_NE_JMP                 start=v[0x017], values=[0, 1], target=0x05AB
05A7  96 4C 23 E3                            LOADSTRING                    dst=v[0x04C], values=[v[0x002]]
05AB  9A 17 30 B2 B5 05                      STRCMP_NE_JMP                 start=v[0x017], values=[0, 2], target=0x05B5
05B1  96 4D 23 E3                            LOADSTRING                    dst=v[0x04D], values=[v[0x002]]
05B5  9A 17 30 B3 BF 05                      STRCMP_NE_JMP                 start=v[0x017], values=[0, 3], target=0x05BF
05BB  96 4E 23 E3                            LOADSTRING                    dst=v[0x04E], values=[v[0x002]]
05BF  9A 17 30 B4 C9 05                      STRCMP_NE_JMP                 start=v[0x017], values=[0, 4], target=0x05C9
05C5  96 4F 23 E3                            LOADSTRING                    dst=v[0x04F], values=[v[0x002]]
05C9  9A 17 30 B5 D3 05                      STRCMP_NE_JMP                 start=v[0x017], values=[0, 5], target=0x05D3
05CF  96 50 23 E3                            LOADSTRING                    dst=v[0x050], values=[v[0x002]]
05D3  9A 17 30 B6 DD 05                      STRCMP_NE_JMP                 start=v[0x017], values=[0, 6], target=0x05DD
05D9  96 51 23 E3                            LOADSTRING                    dst=v[0x051], values=[v[0x002]]
05DD  9A 17 31 B0 E7 05                      STRCMP_NE_JMP                 start=v[0x017], values=[1, 0], target=0x05E7
05E3  96 52 23 E3                            LOADSTRING                    dst=v[0x052], values=[v[0x002]]
05E7  9A 17 31 B1 F1 05                      STRCMP_NE_JMP                 start=v[0x017], values=[1, 1], target=0x05F1
05ED  96 53 23 E3                            LOADSTRING                    dst=v[0x053], values=[v[0x002]]
05F1  9A 17 31 B2 FB 05                      STRCMP_NE_JMP                 start=v[0x017], values=[1, 2], target=0x05FB
05F7  96 54 23 E3                            LOADSTRING                    dst=v[0x054], values=[v[0x002]]
05FB  9A 17 31 B3 05 06                      STRCMP_NE_JMP                 start=v[0x017], values=[1, 3], target=0x0605
0601  96 55 23 E3                            LOADSTRING                    dst=v[0x055], values=[v[0x002]]
0605  9A 17 31 B4 0F 06                      STRCMP_NE_JMP                 start=v[0x017], values=[1, 4], target=0x060F
060B  96 56 23 E3                            LOADSTRING                    dst=v[0x056], values=[v[0x002]]
060F  9A 17 31 B5 19 06                      STRCMP_NE_JMP                 start=v[0x017], values=[1, 5], target=0x0619
0615  96 57 23 E3                            LOADSTRING                    dst=v[0x057], values=[v[0x002]]
0619  9A 17 31 B6 23 06                      STRCMP_NE_JMP                 start=v[0x017], values=[1, 6], target=0x0623
061F  96 58 23 E3                            LOADSTRING                    dst=v[0x058], values=[v[0x002]]
0623  9A 17 32 B0 2D 06                      STRCMP_NE_JMP                 start=v[0x017], values=[2, 0], target=0x062D
0629  96 59 23 E3                            LOADSTRING                    dst=v[0x059], values=[v[0x002]]
062D  9A 17 32 B1 37 06                      STRCMP_NE_JMP                 start=v[0x017], values=[2, 1], target=0x0637
0633  96 5A 23 E3                            LOADSTRING                    dst=v[0x05A], values=[v[0x002]]
0637  9A 17 32 B2 41 06                      STRCMP_NE_JMP                 start=v[0x017], values=[2, 2], target=0x0641
063D  96 5B 23 E3                            LOADSTRING                    dst=v[0x05B], values=[v[0x002]]
0641  9A 17 32 B3 4B 06                      STRCMP_NE_JMP                 start=v[0x017], values=[2, 3], target=0x064B
0647  96 5C 23 E3                            LOADSTRING                    dst=v[0x05C], values=[v[0x002]]
064B  9A 17 32 B4 55 06                      STRCMP_NE_JMP                 start=v[0x017], values=[2, 4], target=0x0655
0651  96 5D 23 E3                            LOADSTRING                    dst=v[0x05D], values=[v[0x002]]
0655  9A 17 32 B5 5F 06                      STRCMP_NE_JMP                 start=v[0x017], values=[2, 5], target=0x065F
065B  96 5E 23 E3                            LOADSTRING                    dst=v[0x05E], values=[v[0x002]]
065F  9A 17 32 B6 69 06                      STRCMP_NE_JMP                 start=v[0x017], values=[2, 6], target=0x0669
0665  96 5F 23 E3                            LOADSTRING                    dst=v[0x05F], values=[v[0x002]]
0669  9A 17 33 B0 73 06                      STRCMP_NE_JMP                 start=v[0x017], values=[3, 0], target=0x0673
066F  96 60 23 E3                            LOADSTRING                    dst=v[0x060], values=[v[0x002]]
0673  9A 17 33 B1 7D 06                      STRCMP_NE_JMP                 start=v[0x017], values=[3, 1], target=0x067D
0679  96 61 23 E3                            LOADSTRING                    dst=v[0x061], values=[v[0x002]]
067D  9A 17 33 B2 87 06                      STRCMP_NE_JMP                 start=v[0x017], values=[3, 2], target=0x0687
0683  96 62 23 E3                            LOADSTRING                    dst=v[0x062], values=[v[0x002]]
0687  9A 17 33 B3 91 06                      STRCMP_NE_JMP                 start=v[0x017], values=[3, 3], target=0x0691
068D  96 63 23 E3                            LOADSTRING                    dst=v[0x063], values=[v[0x002]]
0691  9A 17 33 B4 9B 06                      STRCMP_NE_JMP                 start=v[0x017], values=[3, 4], target=0x069B
0697  96 64 23 E3                            LOADSTRING                    dst=v[0x064], values=[v[0x002]]
069B  9A 17 33 B5 A5 06                      STRCMP_NE_JMP                 start=v[0x017], values=[3, 5], target=0x06A5
06A1  96 65 23 E3                            LOADSTRING                    dst=v[0x065], values=[v[0x002]]
06A5  9A 17 33 B6 AF 06                      STRCMP_NE_JMP                 start=v[0x017], values=[3, 6], target=0x06AF
06AB  96 66 23 E3                            LOADSTRING                    dst=v[0x066], values=[v[0x002]]
06AF  9A 17 34 B0 B9 06                      STRCMP_NE_JMP                 start=v[0x017], values=[4, 0], target=0x06B9
06B5  96 67 23 E3                            LOADSTRING                    dst=v[0x067], values=[v[0x002]]
06B9  9A 17 34 B1 C3 06                      STRCMP_NE_JMP                 start=v[0x017], values=[4, 1], target=0x06C3
06BF  96 68 23 E3                            LOADSTRING                    dst=v[0x068], values=[v[0x002]]
06C3  9A 17 34 B2 CD 06                      STRCMP_NE_JMP                 start=v[0x017], values=[4, 2], target=0x06CD
06C9  96 69 23 E3                            LOADSTRING                    dst=v[0x069], values=[v[0x002]]
06CD  9A 17 34 B3 D7 06                      STRCMP_NE_JMP                 start=v[0x017], values=[4, 3], target=0x06D7
06D3  96 6A 23 E3                            LOADSTRING                    dst=v[0x06A], values=[v[0x002]]
06D7  9A 17 34 B4 E1 06                      STRCMP_NE_JMP                 start=v[0x017], values=[4, 4], target=0x06E1
06DD  96 6B 23 E3                            LOADSTRING                    dst=v[0x06B], values=[v[0x002]]
06E1  9A 17 34 B5 EB 06                      STRCMP_NE_JMP                 start=v[0x017], values=[4, 5], target=0x06EB
06E7  96 6C 23 E3                            LOADSTRING                    dst=v[0x06C], values=[v[0x002]]
06EB  9A 17 34 B6 F5 06                      STRCMP_NE_JMP                 start=v[0x017], values=[4, 6], target=0x06F5
06F1  96 6D 23 E3                            LOADSTRING                    dst=v[0x06D], values=[v[0x002]]
06F5  9A 17 35 B0 FF 06                      STRCMP_NE_JMP                 start=v[0x017], values=[5, 0], target=0x06FF
06FB  96 6E 23 E3                            LOADSTRING                    dst=v[0x06E], values=[v[0x002]]
06FF  9A 17 35 B1 09 07                      STRCMP_NE_JMP                 start=v[0x017], values=[5, 1], target=0x0709
0705  96 6F 23 E3                            LOADSTRING                    dst=v[0x06F], values=[v[0x002]]
0709  9A 17 35 B2 13 07                      STRCMP_NE_JMP                 start=v[0x017], values=[5, 2], target=0x0713
070F  96 70 23 E3                            LOADSTRING                    dst=v[0x070], values=[v[0x002]]
0713  9A 17 35 B3 1D 07                      STRCMP_NE_JMP                 start=v[0x017], values=[5, 3], target=0x071D
0719  96 71 23 E3                            LOADSTRING                    dst=v[0x071], values=[v[0x002]]
071D  9A 17 35 B4 27 07                      STRCMP_NE_JMP                 start=v[0x017], values=[5, 4], target=0x0727
0723  96 72 23 E3                            LOADSTRING                    dst=v[0x072], values=[v[0x002]]
0727  9A 17 35 B5 31 07                      STRCMP_NE_JMP                 start=v[0x017], values=[5, 5], target=0x0731
072D  96 73 23 E3                            LOADSTRING                    dst=v[0x073], values=[v[0x002]]
0731  9A 17 35 B6 3B 07                      STRCMP_NE_JMP                 start=v[0x017], values=[5, 6], target=0x073B
0737  96 74 23 E3                            LOADSTRING                    dst=v[0x074], values=[v[0x002]]
073B  9A 17 36 B0 45 07                      STRCMP_NE_JMP                 start=v[0x017], values=[6, 0], target=0x0745
0741  96 75 23 E3                            LOADSTRING                    dst=v[0x075], values=[v[0x002]]
0745  9A 17 36 B1 4F 07                      STRCMP_NE_JMP                 start=v[0x017], values=[6, 1], target=0x074F
074B  96 76 23 E3                            LOADSTRING                    dst=v[0x076], values=[v[0x002]]
074F  9A 17 36 B2 59 07                      STRCMP_NE_JMP                 start=v[0x017], values=[6, 2], target=0x0759
0755  96 77 23 E3                            LOADSTRING                    dst=v[0x077], values=[v[0x002]]
0759  9A 17 36 B3 63 07                      STRCMP_NE_JMP                 start=v[0x017], values=[6, 3], target=0x0763
075F  96 78 23 E3                            LOADSTRING                    dst=v[0x078], values=[v[0x002]]
0763  9A 17 36 B4 6D 07                      STRCMP_NE_JMP                 start=v[0x017], values=[6, 4], target=0x076D
0769  96 79 23 E3                            LOADSTRING                    dst=v[0x079], values=[v[0x002]]
076D  9A 17 36 B5 77 07                      STRCMP_NE_JMP                 start=v[0x017], values=[6, 5], target=0x0777
0773  96 7A 23 E3                            LOADSTRING                    dst=v[0x07A], values=[v[0x002]]
0777  9A 17 36 B6 81 07                      STRCMP_NE_JMP                 start=v[0x017], values=[6, 6], target=0x0781
077D  96 7B 23 E3                            LOADSTRING                    dst=v[0x07B], values=[v[0x002]]
0781  17 00                                  RET                           value=0x00
0783  96 00 30 B0                            LOADSTRING                    dst=v[0x000], values=[0, 0]
0787  96 03 35 B0                            LOADSTRING                    dst=v[0x003], values=[5, 0]
078B  16 0B 01 B0                            LOADSTRING                    dst=v[0x10B], values=[0]
078F  16 09 01 B0                            LOADSTRING                    dst=v[0x109], values=[0]
0793  96 17 23 61 23 E2                      LOADSTRING                    dst=v[0x017], values=[v[0x000], v[0x001]]
0799  18 B9 01                               CALL                          target=0x01B9
079C  9A 05 F2 C4 07                         STRCMP_NE_JMP                 start=v[0x005], values=[66], target=0x07C4
07A1  16 09 01 B1                            LOADSTRING                    dst=v[0x109], values=[1]
07A5  18 36 01                               CALL                          target=0x0136
07A8  9A 02 B0 B3 07                         STRCMP_NE_JMP                 start=v[0x002], values=[0], target=0x07B3
07AD  96 7C B1                               LOADSTRING                    dst=v[0x07C], values=[1]
07B0  15 BA 07                               JMP                           target=0x07BA
07B3  96 7C B0                               LOADSTRING                    dst=v[0x07C], values=[0]
07B6  16 0B 01 B1                            LOADSTRING                    dst=v[0x10B], values=[1]
07BA  39 39 B9 23 64 23 E5                   GRID_SWAP                     row1=9, col1=9, row2=v[0x003], col2=v[0x004]
07C1  15 CE 07                               JMP                           target=0x07CE
07C4  96 7C B1                               LOADSTRING                    dst=v[0x07C], values=[1]
07C7  39 39 B9 23 64 23 E5                   GRID_SWAP                     row1=9, col1=9, row2=v[0x003], col2=v[0x004]
07CE  9A 01 B6 DB 07                         STRCMP_NE_JMP                 start=v[0x001], values=[6], target=0x07DB
07D3  9F 00                                  INC                           var=v[0x000]
07D5  96 01 B0                               LOADSTRING                    dst=v[0x001], values=[0]
07D8  15 DD 07                               JMP                           target=0x07DD
07DB  9F 01                                  INC                           var=v[0x001]
07DD  9A 04 B9 EA 07                         STRCMP_NE_JMP                 start=v[0x004], values=[9], target=0x07EA
07E2  9F 03                                  INC                           var=v[0x003]
07E4  96 04 B0                               LOADSTRING                    dst=v[0x004], values=[0]
07E7  15 EC 07                               JMP                           target=0x07EC
07EA  9F 04                                  INC                           var=v[0x004]
07EC  A3 03 39 B9 F5 07                      STRCMP_EQ_JMP                 start=v[0x003], values=[9, 9], target=0x07F5
07F2  15 93 07                               JMP                           target=0x0793
07F5  1A 0B 01 B0 FD 07                      STRCMP_NE_JMP                 start=v[0x10B], values=[0], target=0x07FD
07FB  17 00                                  RET                           value=0x00
07FD  1A 0A 01 B0 08 08                      STRCMP_NE_JMP                 start=v[0x10A], values=[0], target=0x0808
0803  42 01                                  GAMELOGIC                     value=0x01
0805  15 1E 08                               JMP                           target=0x081E
0808  9A EB B0 12 08                         STRCMP_NE_JMP                 start=v[0x0EB], values=[0], target=0x0812
080D  42 07                                  GAMELOGIC                     value=0x07
080F  15 1E 08                               JMP                           target=0x081E
0812  9A EB E1 1C 08                         STRCMP_NE_JMP                 start=v[0x0EB], values=[49], target=0x081C
0817  42 07                                  GAMELOGIC                     value=0x07
0819  15 1E 08                               JMP                           target=0x081E
081C  42 06                                  GAMELOGIC                     value=0x06
081E  96 04 F2                               LOADSTRING                    dst=v[0x004], values=[66]
0821  15 BF 14                               JMP                           target=0x14BF
0824  96 00 30 B0                            LOADSTRING                    dst=v[0x000], values=[0, 0]
0828  96 03 35 B0                            LOADSTRING                    dst=v[0x003], values=[5, 0]
082C  16 0A 01 B0                            LOADSTRING                    dst=v[0x10A], values=[0]
0830  16 08 01 B0                            LOADSTRING                    dst=v[0x108], values=[0]
0834  96 17 23 61 23 E2                      LOADSTRING                    dst=v[0x017], values=[v[0x000], v[0x001]]
083A  18 B9 01                               CALL                          target=0x01B9
083D  9A 05 E2 65 08                         STRCMP_NE_JMP                 start=v[0x005], values=[50], target=0x0865
0842  16 08 01 B1                            LOADSTRING                    dst=v[0x108], values=[1]
0846  18 36 01                               CALL                          target=0x0136
0849  9A 02 B0 54 08                         STRCMP_NE_JMP                 start=v[0x002], values=[0], target=0x0854
084E  96 7C B1                               LOADSTRING                    dst=v[0x07C], values=[1]
0851  15 5B 08                               JMP                           target=0x085B
0854  96 7C B0                               LOADSTRING                    dst=v[0x07C], values=[0]
0857  16 0A 01 B1                            LOADSTRING                    dst=v[0x10A], values=[1]
085B  39 39 B9 23 64 23 E5                   GRID_SWAP                     row1=9, col1=9, row2=v[0x003], col2=v[0x004]
0862  15 6F 08                               JMP                           target=0x086F
0865  96 7C B1                               LOADSTRING                    dst=v[0x07C], values=[1]
0868  39 39 B9 23 64 23 E5                   GRID_SWAP                     row1=9, col1=9, row2=v[0x003], col2=v[0x004]
086F  9A 01 B6 7C 08                         STRCMP_NE_JMP                 start=v[0x001], values=[6], target=0x087C
0874  9F 00                                  INC                           var=v[0x000]
0876  96 01 B0                               LOADSTRING                    dst=v[0x001], values=[0]
0879  15 7E 08                               JMP                           target=0x087E
087C  9F 01                                  INC                           var=v[0x001]
087E  9A 04 B9 8B 08                         STRCMP_NE_JMP                 start=v[0x004], values=[9], target=0x088B
0883  9F 03                                  INC                           var=v[0x003]
0885  96 04 B0                               LOADSTRING                    dst=v[0x004], values=[0]
0888  15 8D 08                               JMP                           target=0x088D
088B  9F 04                                  INC                           var=v[0x004]
088D  A3 03 39 B9 96 08                      STRCMP_EQ_JMP                 start=v[0x003], values=[9, 9], target=0x0896
0893  15 34 08                               JMP                           target=0x0834
0896  1A 0A 01 B0 9E 08                      STRCMP_NE_JMP                 start=v[0x10A], values=[0], target=0x089E
089C  17 00                                  RET                           value=0x00
089E  0B                                     INPUTLOOPSTART
089F  9A 4B B0 B0 08                         STRCMP_NE_JMP                 start=v[0x04B], values=[0], target=0x08B0
08A4  0D B4 00 63 00 DA 00 89 00 E1 0B 09    HOTSPOT_RECT                  left=0x00B4, top=0x0063, right=0x00DA, bottom=0x0089, target=0x0BE1, cursor=0x09
08B0  9A 4C B0 C1 08                         STRCMP_NE_JMP                 start=v[0x04C], values=[0], target=0x08C1
08B5  0D DC 00 63 00 02 01 89 00 E8 0B 0A    HOTSPOT_RECT                  left=0x00DC, top=0x0063, right=0x0102, bottom=0x0089, target=0x0BE8, cursor=0x0A
08C1  9A 4D B0 D2 08                         STRCMP_NE_JMP                 start=v[0x04D], values=[0], target=0x08D2
08C6  0D 04 01 63 00 2A 01 89 00 EF 0B 09    HOTSPOT_RECT                  left=0x0104, top=0x0063, right=0x012A, bottom=0x0089, target=0x0BEF, cursor=0x09
08D2  9A 4E B0 E3 08                         STRCMP_NE_JMP                 start=v[0x04E], values=[0], target=0x08E3
08D7  0D 2C 01 63 00 52 01 89 00 F6 0B 0A    HOTSPOT_RECT                  left=0x012C, top=0x0063, right=0x0152, bottom=0x0089, target=0x0BF6, cursor=0x0A
08E3  9A 4F B0 F4 08                         STRCMP_NE_JMP                 start=v[0x04F], values=[0], target=0x08F4
08E8  0D 54 01 63 00 7A 01 89 00 FD 0B 09    HOTSPOT_RECT                  left=0x0154, top=0x0063, right=0x017A, bottom=0x0089, target=0x0BFD, cursor=0x09
08F4  9A 50 B0 05 09                         STRCMP_NE_JMP                 start=v[0x050], values=[0], target=0x0905
08F9  0D 7C 01 63 00 A2 01 89 00 04 0C 0A    HOTSPOT_RECT                  left=0x017C, top=0x0063, right=0x01A2, bottom=0x0089, target=0x0C04, cursor=0x0A
0905  9A 51 B0 16 09                         STRCMP_NE_JMP                 start=v[0x051], values=[0], target=0x0916
090A  0D A4 01 63 00 CA 01 89 00 0B 0C 09    HOTSPOT_RECT                  left=0x01A4, top=0x0063, right=0x01CA, bottom=0x0089, target=0x0C0B, cursor=0x09
0916  9A 52 B0 27 09                         STRCMP_NE_JMP                 start=v[0x052], values=[0], target=0x0927
091B  0D B4 00 8B 00 DA 00 B1 00 12 0C 0A    HOTSPOT_RECT                  left=0x00B4, top=0x008B, right=0x00DA, bottom=0x00B1, target=0x0C12, cursor=0x0A
0927  9A 53 B0 38 09                         STRCMP_NE_JMP                 start=v[0x053], values=[0], target=0x0938
092C  0D DC 00 8B 00 02 01 B1 00 19 0C 09    HOTSPOT_RECT                  left=0x00DC, top=0x008B, right=0x0102, bottom=0x00B1, target=0x0C19, cursor=0x09
0938  9A 54 B0 49 09                         STRCMP_NE_JMP                 start=v[0x054], values=[0], target=0x0949
093D  0D 04 01 8B 00 2A 01 B1 00 20 0C 0A    HOTSPOT_RECT                  left=0x0104, top=0x008B, right=0x012A, bottom=0x00B1, target=0x0C20, cursor=0x0A
0949  9A 55 B0 5A 09                         STRCMP_NE_JMP                 start=v[0x055], values=[0], target=0x095A
094E  0D 2C 01 8B 00 52 01 B1 00 27 0C 09    HOTSPOT_RECT                  left=0x012C, top=0x008B, right=0x0152, bottom=0x00B1, target=0x0C27, cursor=0x09
095A  9A 56 B0 6B 09                         STRCMP_NE_JMP                 start=v[0x056], values=[0], target=0x096B
095F  0D 54 01 8B 00 7A 01 B1 00 2E 0C 0A    HOTSPOT_RECT                  left=0x0154, top=0x008B, right=0x017A, bottom=0x00B1, target=0x0C2E, cursor=0x0A
096B  9A 57 B0 7C 09                         STRCMP_NE_JMP                 start=v[0x057], values=[0], target=0x097C
0970  0D 7C 01 8B 00 A2 01 B1 00 35 0C 09    HOTSPOT_RECT                  left=0x017C, top=0x008B, right=0x01A2, bottom=0x00B1, target=0x0C35, cursor=0x09
097C  9A 58 B0 8D 09                         STRCMP_NE_JMP                 start=v[0x058], values=[0], target=0x098D
0981  0D A4 01 8B 00 CA 01 B1 00 3C 0C 0A    HOTSPOT_RECT                  left=0x01A4, top=0x008B, right=0x01CA, bottom=0x00B1, target=0x0C3C, cursor=0x0A
098D  9A 59 B0 9E 09                         STRCMP_NE_JMP                 start=v[0x059], values=[0], target=0x099E
0992  0D B4 00 B3 00 DA 00 D9 00 43 0C 09    HOTSPOT_RECT                  left=0x00B4, top=0x00B3, right=0x00DA, bottom=0x00D9, target=0x0C43, cursor=0x09
099E  9A 5A B0 AF 09                         STRCMP_NE_JMP                 start=v[0x05A], values=[0], target=0x09AF
09A3  0D DC 00 B3 00 02 01 D9 00 4A 0C 0A    HOTSPOT_RECT                  left=0x00DC, top=0x00B3, right=0x0102, bottom=0x00D9, target=0x0C4A, cursor=0x0A
09AF  9A 5B B0 C0 09                         STRCMP_NE_JMP                 start=v[0x05B], values=[0], target=0x09C0
09B4  0D 04 01 B3 00 2A 01 D9 00 51 0C 09    HOTSPOT_RECT                  left=0x0104, top=0x00B3, right=0x012A, bottom=0x00D9, target=0x0C51, cursor=0x09
09C0  9A 5C B0 D1 09                         STRCMP_NE_JMP                 start=v[0x05C], values=[0], target=0x09D1
09C5  0D 2C 01 B3 00 52 01 D9 00 58 0C 0A    HOTSPOT_RECT                  left=0x012C, top=0x00B3, right=0x0152, bottom=0x00D9, target=0x0C58, cursor=0x0A
09D1  9A 5D B0 E2 09                         STRCMP_NE_JMP                 start=v[0x05D], values=[0], target=0x09E2
09D6  0D 54 01 B3 00 7A 01 D9 00 5F 0C 09    HOTSPOT_RECT                  left=0x0154, top=0x00B3, right=0x017A, bottom=0x00D9, target=0x0C5F, cursor=0x09
09E2  9A 5E B0 F3 09                         STRCMP_NE_JMP                 start=v[0x05E], values=[0], target=0x09F3
09E7  0D 7C 01 B3 00 A2 01 D9 00 66 0C 0A    HOTSPOT_RECT                  left=0x017C, top=0x00B3, right=0x01A2, bottom=0x00D9, target=0x0C66, cursor=0x0A
09F3  9A 5F B0 04 0A                         STRCMP_NE_JMP                 start=v[0x05F], values=[0], target=0x0A04
09F8  0D A4 01 B3 00 CA 01 D9 00 6D 0C 09    HOTSPOT_RECT                  left=0x01A4, top=0x00B3, right=0x01CA, bottom=0x00D9, target=0x0C6D, cursor=0x09
0A04  9A 60 B0 15 0A                         STRCMP_NE_JMP                 start=v[0x060], values=[0], target=0x0A15
0A09  0D B4 00 DB 00 DA 00 01 01 74 0C 0A    HOTSPOT_RECT                  left=0x00B4, top=0x00DB, right=0x00DA, bottom=0x0101, target=0x0C74, cursor=0x0A
0A15  9A 61 B0 26 0A                         STRCMP_NE_JMP                 start=v[0x061], values=[0], target=0x0A26
0A1A  0D DC 00 DB 00 02 01 01 01 7B 0C 09    HOTSPOT_RECT                  left=0x00DC, top=0x00DB, right=0x0102, bottom=0x0101, target=0x0C7B, cursor=0x09
0A26  9A 62 B0 37 0A                         STRCMP_NE_JMP                 start=v[0x062], values=[0], target=0x0A37
0A2B  0D 04 01 DB 00 2A 01 01 01 82 0C 0A    HOTSPOT_RECT                  left=0x0104, top=0x00DB, right=0x012A, bottom=0x0101, target=0x0C82, cursor=0x0A
0A37  9A 63 B0 48 0A                         STRCMP_NE_JMP                 start=v[0x063], values=[0], target=0x0A48
0A3C  0D 2C 01 DB 00 52 01 01 01 89 0C 09    HOTSPOT_RECT                  left=0x012C, top=0x00DB, right=0x0152, bottom=0x0101, target=0x0C89, cursor=0x09
0A48  9A 64 B0 59 0A                         STRCMP_NE_JMP                 start=v[0x064], values=[0], target=0x0A59
0A4D  0D 54 01 DB 00 7A 01 01 01 90 0C 0A    HOTSPOT_RECT                  left=0x0154, top=0x00DB, right=0x017A, bottom=0x0101, target=0x0C90, cursor=0x0A
0A59  9A 65 B0 6A 0A                         STRCMP_NE_JMP                 start=v[0x065], values=[0], target=0x0A6A
0A5E  0D 7C 01 DB 00 A2 01 01 01 97 0C 09    HOTSPOT_RECT                  left=0x017C, top=0x00DB, right=0x01A2, bottom=0x0101, target=0x0C97, cursor=0x09
0A6A  9A 66 B0 7B 0A                         STRCMP_NE_JMP                 start=v[0x066], values=[0], target=0x0A7B
0A6F  0D A4 01 DB 00 CA 01 01 01 9E 0C 0A    HOTSPOT_RECT                  left=0x01A4, top=0x00DB, right=0x01CA, bottom=0x0101, target=0x0C9E, cursor=0x0A
0A7B  9A 67 B0 8C 0A                         STRCMP_NE_JMP                 start=v[0x067], values=[0], target=0x0A8C
0A80  0D B4 00 03 01 DA 00 29 01 A5 0C 09    HOTSPOT_RECT                  left=0x00B4, top=0x0103, right=0x00DA, bottom=0x0129, target=0x0CA5, cursor=0x09
0A8C  9A 68 B0 9D 0A                         STRCMP_NE_JMP                 start=v[0x068], values=[0], target=0x0A9D
0A91  0D DC 00 03 01 02 01 29 01 AC 0C 0A    HOTSPOT_RECT                  left=0x00DC, top=0x0103, right=0x0102, bottom=0x0129, target=0x0CAC, cursor=0x0A
0A9D  9A 69 B0 AE 0A                         STRCMP_NE_JMP                 start=v[0x069], values=[0], target=0x0AAE
0AA2  0D 04 01 03 01 2A 01 29 01 B3 0C 09    HOTSPOT_RECT                  left=0x0104, top=0x0103, right=0x012A, bottom=0x0129, target=0x0CB3, cursor=0x09
0AAE  9A 6A B0 BF 0A                         STRCMP_NE_JMP                 start=v[0x06A], values=[0], target=0x0ABF
0AB3  0D 2C 01 03 01 52 01 29 01 BA 0C 0A    HOTSPOT_RECT                  left=0x012C, top=0x0103, right=0x0152, bottom=0x0129, target=0x0CBA, cursor=0x0A
0ABF  9A 6B B0 D0 0A                         STRCMP_NE_JMP                 start=v[0x06B], values=[0], target=0x0AD0
0AC4  0D 54 01 03 01 7A 01 29 01 C1 0C 09    HOTSPOT_RECT                  left=0x0154, top=0x0103, right=0x017A, bottom=0x0129, target=0x0CC1, cursor=0x09
0AD0  9A 6C B0 E1 0A                         STRCMP_NE_JMP                 start=v[0x06C], values=[0], target=0x0AE1
0AD5  0D 7C 01 03 01 A2 01 29 01 C8 0C 0A    HOTSPOT_RECT                  left=0x017C, top=0x0103, right=0x01A2, bottom=0x0129, target=0x0CC8, cursor=0x0A
0AE1  9A 6D B0 F2 0A                         STRCMP_NE_JMP                 start=v[0x06D], values=[0], target=0x0AF2
0AE6  0D A4 01 03 01 CA 01 29 01 CF 0C 09    HOTSPOT_RECT                  left=0x01A4, top=0x0103, right=0x01CA, bottom=0x0129, target=0x0CCF, cursor=0x09
0AF2  9A 6E B0 03 0B                         STRCMP_NE_JMP                 start=v[0x06E], values=[0], target=0x0B03
0AF7  0D B4 00 2B 01 DA 00 51 01 D6 0C 0A    HOTSPOT_RECT                  left=0x00B4, top=0x012B, right=0x00DA, bottom=0x0151, target=0x0CD6, cursor=0x0A
0B03  9A 6F B0 14 0B                         STRCMP_NE_JMP                 start=v[0x06F], values=[0], target=0x0B14
0B08  0D DC 00 2B 01 02 01 51 01 DD 0C 09    HOTSPOT_RECT                  left=0x00DC, top=0x012B, right=0x0102, bottom=0x0151, target=0x0CDD, cursor=0x09
0B14  9A 70 B0 25 0B                         STRCMP_NE_JMP                 start=v[0x070], values=[0], target=0x0B25
0B19  0D 04 01 2B 01 2A 01 51 01 E4 0C 0A    HOTSPOT_RECT                  left=0x0104, top=0x012B, right=0x012A, bottom=0x0151, target=0x0CE4, cursor=0x0A
0B25  9A 71 B0 36 0B                         STRCMP_NE_JMP                 start=v[0x071], values=[0], target=0x0B36
0B2A  0D 2C 01 2B 01 52 01 51 01 EB 0C 09    HOTSPOT_RECT                  left=0x012C, top=0x012B, right=0x0152, bottom=0x0151, target=0x0CEB, cursor=0x09
0B36  9A 72 B0 47 0B                         STRCMP_NE_JMP                 start=v[0x072], values=[0], target=0x0B47
0B3B  0D 54 01 2B 01 7A 01 51 01 F2 0C 0A    HOTSPOT_RECT                  left=0x0154, top=0x012B, right=0x017A, bottom=0x0151, target=0x0CF2, cursor=0x0A
0B47  9A 73 B0 58 0B                         STRCMP_NE_JMP                 start=v[0x073], values=[0], target=0x0B58
0B4C  0D 7C 01 2B 01 A2 01 51 01 F9 0C 09    HOTSPOT_RECT                  left=0x017C, top=0x012B, right=0x01A2, bottom=0x0151, target=0x0CF9, cursor=0x09
0B58  9A 74 B0 69 0B                         STRCMP_NE_JMP                 start=v[0x074], values=[0], target=0x0B69
0B5D  0D A4 01 2B 01 CA 01 51 01 00 0D 0A    HOTSPOT_RECT                  left=0x01A4, top=0x012B, right=0x01CA, bottom=0x0151, target=0x0D00, cursor=0x0A
0B69  9A 75 B0 7A 0B                         STRCMP_NE_JMP                 start=v[0x075], values=[0], target=0x0B7A
0B6E  0D B4 00 53 01 DA 00 79 01 07 0D 09    HOTSPOT_RECT                  left=0x00B4, top=0x0153, right=0x00DA, bottom=0x0179, target=0x0D07, cursor=0x09
0B7A  9A 76 B0 8B 0B                         STRCMP_NE_JMP                 start=v[0x076], values=[0], target=0x0B8B
0B7F  0D DC 00 53 01 02 01 79 01 0E 0D 0A    HOTSPOT_RECT                  left=0x00DC, top=0x0153, right=0x0102, bottom=0x0179, target=0x0D0E, cursor=0x0A
0B8B  9A 77 B0 9C 0B                         STRCMP_NE_JMP                 start=v[0x077], values=[0], target=0x0B9C
0B90  0D 04 01 53 01 2A 01 79 01 15 0D 09    HOTSPOT_RECT                  left=0x0104, top=0x0153, right=0x012A, bottom=0x0179, target=0x0D15, cursor=0x09
0B9C  9A 78 B0 AD 0B                         STRCMP_NE_JMP                 start=v[0x078], values=[0], target=0x0BAD
0BA1  0D 2C 01 53 01 52 01 79 01 1C 0D 0A    HOTSPOT_RECT                  left=0x012C, top=0x0153, right=0x0152, bottom=0x0179, target=0x0D1C, cursor=0x0A
0BAD  9A 79 B0 BE 0B                         STRCMP_NE_JMP                 start=v[0x079], values=[0], target=0x0BBE
0BB2  0D 54 01 53 01 7A 01 79 01 23 0D 09    HOTSPOT_RECT                  left=0x0154, top=0x0153, right=0x017A, bottom=0x0179, target=0x0D23, cursor=0x09
0BBE  9A 7A B0 CF 0B                         STRCMP_NE_JMP                 start=v[0x07A], values=[0], target=0x0BCF
0BC3  0D 7C 01 53 01 A2 01 79 01 2A 0D 0A    HOTSPOT_RECT                  left=0x017C, top=0x0153, right=0x01A2, bottom=0x0179, target=0x0D2A, cursor=0x0A
0BCF  9A 7B B0 E0 0B                         STRCMP_NE_JMP                 start=v[0x07B], values=[0], target=0x0BE0
0BD4  0D A4 01 53 01 CA 01 79 01 31 0D 09    HOTSPOT_RECT                  left=0x01A4, top=0x0153, right=0x01CA, bottom=0x0179, target=0x0D31, cursor=0x09
0BE0  13                                     INPUTLOOPEND
0BE1  96 00 30 B0                            LOADSTRING                    dst=v[0x000], values=[0, 0]
0BE5  15 4E 0D                               JMP                           target=0x0D4E
0BE8  96 00 30 B1                            LOADSTRING                    dst=v[0x000], values=[0, 1]
0BEC  15 4E 0D                               JMP                           target=0x0D4E
0BEF  96 00 30 B2                            LOADSTRING                    dst=v[0x000], values=[0, 2]
0BF3  15 4E 0D                               JMP                           target=0x0D4E
0BF6  96 00 30 B3                            LOADSTRING                    dst=v[0x000], values=[0, 3]
0BFA  15 4E 0D                               JMP                           target=0x0D4E
0BFD  96 00 30 B4                            LOADSTRING                    dst=v[0x000], values=[0, 4]
0C01  15 4E 0D                               JMP                           target=0x0D4E
0C04  96 00 30 B5                            LOADSTRING                    dst=v[0x000], values=[0, 5]
0C08  15 4E 0D                               JMP                           target=0x0D4E
0C0B  96 00 30 B6                            LOADSTRING                    dst=v[0x000], values=[0, 6]
0C0F  15 4E 0D                               JMP                           target=0x0D4E
0C12  96 00 31 B0                            LOADSTRING                    dst=v[0x000], values=[1, 0]
0C16  15 4E 0D                               JMP                           target=0x0D4E
0C19  96 00 31 B1                            LOADSTRING                    dst=v[0x000], values=[1, 1]
0C1D  15 4E 0D                               JMP                           target=0x0D4E
0C20  96 00 31 B2                            LOADSTRING                    dst=v[0x000], values=[1, 2]
0C24  15 4E 0D                               JMP                           target=0x0D4E
0C27  96 00 31 B3                            LOADSTRING                    dst=v[0x000], values=[1, 3]
0C2B  15 4E 0D                               JMP                           target=0x0D4E
0C2E  96 00 31 B4                            LOADSTRING                    dst=v[0x000], values=[1, 4]
0C32  15 4E 0D                               JMP                           target=0x0D4E
0C35  96 00 31 B5                            LOADSTRING                    dst=v[0x000], values=[1, 5]
0C39  15 4E 0D                               JMP                           target=0x0D4E
0C3C  96 00 31 B6                            LOADSTRING                    dst=v[0x000], values=[1, 6]
0C40  15 4E 0D                               JMP                           target=0x0D4E
0C43  96 00 32 B0                            LOADSTRING                    dst=v[0x000], values=[2, 0]
0C47  15 4E 0D                               JMP                           target=0x0D4E
0C4A  96 00 32 B1                            LOADSTRING                    dst=v[0x000], values=[2, 1]
0C4E  15 4E 0D                               JMP                           target=0x0D4E
0C51  96 00 32 B2                            LOADSTRING                    dst=v[0x000], values=[2, 2]
0C55  15 4E 0D                               JMP                           target=0x0D4E
0C58  96 00 32 B3                            LOADSTRING                    dst=v[0x000], values=[2, 3]
0C5C  15 4E 0D                               JMP                           target=0x0D4E
0C5F  96 00 32 B4                            LOADSTRING                    dst=v[0x000], values=[2, 4]
0C63  15 4E 0D                               JMP                           target=0x0D4E
0C66  96 00 32 B5                            LOADSTRING                    dst=v[0x000], values=[2, 5]
0C6A  15 4E 0D                               JMP                           target=0x0D4E
0C6D  96 00 32 B6                            LOADSTRING                    dst=v[0x000], values=[2, 6]
0C71  15 4E 0D                               JMP                           target=0x0D4E
0C74  96 00 33 B0                            LOADSTRING                    dst=v[0x000], values=[3, 0]
0C78  15 4E 0D                               JMP                           target=0x0D4E
0C7B  96 00 33 B1                            LOADSTRING                    dst=v[0x000], values=[3, 1]
0C7F  15 4E 0D                               JMP                           target=0x0D4E
0C82  96 00 33 B2                            LOADSTRING                    dst=v[0x000], values=[3, 2]
0C86  15 4E 0D                               JMP                           target=0x0D4E
0C89  96 00 33 B3                            LOADSTRING                    dst=v[0x000], values=[3, 3]
0C8D  15 4E 0D                               JMP                           target=0x0D4E
0C90  96 00 33 B4                            LOADSTRING                    dst=v[0x000], values=[3, 4]
0C94  15 4E 0D                               JMP                           target=0x0D4E
0C97  96 00 33 B5                            LOADSTRING                    dst=v[0x000], values=[3, 5]
0C9B  15 4E 0D                               JMP                           target=0x0D4E
0C9E  96 00 33 B6                            LOADSTRING                    dst=v[0x000], values=[3, 6]
0CA2  15 4E 0D                               JMP                           target=0x0D4E
0CA5  96 00 34 B0                            LOADSTRING                    dst=v[0x000], values=[4, 0]
0CA9  15 4E 0D                               JMP                           target=0x0D4E
0CAC  96 00 34 B1                            LOADSTRING                    dst=v[0x000], values=[4, 1]
0CB0  15 4E 0D                               JMP                           target=0x0D4E
0CB3  96 00 34 B2                            LOADSTRING                    dst=v[0x000], values=[4, 2]
0CB7  15 4E 0D                               JMP                           target=0x0D4E
0CBA  96 00 34 B3                            LOADSTRING                    dst=v[0x000], values=[4, 3]
0CBE  15 4E 0D                               JMP                           target=0x0D4E
0CC1  96 00 34 B4                            LOADSTRING                    dst=v[0x000], values=[4, 4]
0CC5  15 4E 0D                               JMP                           target=0x0D4E
0CC8  96 00 34 B5                            LOADSTRING                    dst=v[0x000], values=[4, 5]
0CCC  15 4E 0D                               JMP                           target=0x0D4E
0CCF  96 00 34 B6                            LOADSTRING                    dst=v[0x000], values=[4, 6]
0CD3  15 4E 0D                               JMP                           target=0x0D4E
0CD6  96 00 35 B0                            LOADSTRING                    dst=v[0x000], values=[5, 0]
0CDA  15 4E 0D                               JMP                           target=0x0D4E
0CDD  96 00 35 B1                            LOADSTRING                    dst=v[0x000], values=[5, 1]
0CE1  15 4E 0D                               JMP                           target=0x0D4E
0CE4  96 00 35 B2                            LOADSTRING                    dst=v[0x000], values=[5, 2]
0CE8  15 4E 0D                               JMP                           target=0x0D4E
0CEB  96 00 35 B3                            LOADSTRING                    dst=v[0x000], values=[5, 3]
0CEF  15 4E 0D                               JMP                           target=0x0D4E
0CF2  96 00 35 B4                            LOADSTRING                    dst=v[0x000], values=[5, 4]
0CF6  15 4E 0D                               JMP                           target=0x0D4E
0CF9  96 00 35 B5                            LOADSTRING                    dst=v[0x000], values=[5, 5]
0CFD  15 4E 0D                               JMP                           target=0x0D4E
0D00  96 00 35 B6                            LOADSTRING                    dst=v[0x000], values=[5, 6]
0D04  15 4E 0D                               JMP                           target=0x0D4E
0D07  96 00 36 B0                            LOADSTRING                    dst=v[0x000], values=[6, 0]
0D0B  15 4E 0D                               JMP                           target=0x0D4E
0D0E  96 00 36 B1                            LOADSTRING                    dst=v[0x000], values=[6, 1]
0D12  15 4E 0D                               JMP                           target=0x0D4E
0D15  96 00 36 B2                            LOADSTRING                    dst=v[0x000], values=[6, 2]
0D19  15 4E 0D                               JMP                           target=0x0D4E
0D1C  96 00 36 B3                            LOADSTRING                    dst=v[0x000], values=[6, 3]
0D20  15 4E 0D                               JMP                           target=0x0D4E
0D23  96 00 36 B4                            LOADSTRING                    dst=v[0x000], values=[6, 4]
0D27  15 4E 0D                               JMP                           target=0x0D4E
0D2A  96 00 36 B5                            LOADSTRING                    dst=v[0x000], values=[6, 5]
0D2E  15 4E 0D                               JMP                           target=0x0D4E
0D31  96 00 36 B6                            LOADSTRING                    dst=v[0x000], values=[6, 6]
0D35  15 4E 0D                               JMP                           target=0x0D4E
0D38  18 B9 01                               CALL                          target=0x01B9
0D3B  9A 05 B0 46 0D                         STRCMP_NE_JMP                 start=v[0x005], values=[0], target=0x0D46
0D40  96 02 B0                               LOADSTRING                    dst=v[0x002], values=[0]
0D43  15 49 0D                               JMP                           target=0x0D49
0D46  96 02 B1                               LOADSTRING                    dst=v[0x002], values=[1]
0D49  18 94 05                               CALL                          target=0x0594
0D4C  17 00                                  RET                           value=0x00
0D4E  96 4B 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 F8 LOADSTRING                    dst=v[0x04B], values=[72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72]
0D81  96 02 B0                               LOADSTRING                    dst=v[0x002], values=[0]
0D84  96 17 23 61 23 E2                      LOADSTRING                    dst=v[0x017], values=[v[0x000], v[0x001]]
0D8A  18 94 05                               CALL                          target=0x0594
0D8D  A0 17                                  DEC                           var=v[0x017]
0D8F  18 38 0D                               CALL                          target=0x0D38
0D92  A0 18                                  DEC                           var=v[0x018]
0D94  18 38 0D                               CALL                          target=0x0D38
0D97  9F 17                                  INC                           var=v[0x017]
0D99  18 38 0D                               CALL                          target=0x0D38
0D9C  9F 17                                  INC                           var=v[0x017]
0D9E  18 38 0D                               CALL                          target=0x0D38
0DA1  9F 18                                  INC                           var=v[0x018]
0DA3  18 38 0D                               CALL                          target=0x0D38
0DA6  9F 18                                  INC                           var=v[0x018]
0DA8  18 38 0D                               CALL                          target=0x0D38
0DAB  A0 17                                  DEC                           var=v[0x017]
0DAD  18 38 0D                               CALL                          target=0x0D38
0DB0  A0 17                                  DEC                           var=v[0x017]
0DB2  18 38 0D                               CALL                          target=0x0D38
0DB5  A0 17                                  DEC                           var=v[0x017]
0DB7  18 38 0D                               CALL                          target=0x0D38
0DBA  A0 18                                  DEC                           var=v[0x018]
0DBC  18 38 0D                               CALL                          target=0x0D38
0DBF  A0 18                                  DEC                           var=v[0x018]
0DC1  18 38 0D                               CALL                          target=0x0D38
0DC4  A0 18                                  DEC                           var=v[0x018]
0DC6  18 38 0D                               CALL                          target=0x0D38
0DC9  9F 17                                  INC                           var=v[0x017]
0DCB  18 38 0D                               CALL                          target=0x0D38
0DCE  9F 17                                  INC                           var=v[0x017]
0DD0  18 38 0D                               CALL                          target=0x0D38
0DD3  9F 17                                  INC                           var=v[0x017]
0DD5  18 38 0D                               CALL                          target=0x0D38
0DD8  9F 17                                  INC                           var=v[0x017]
0DDA  18 38 0D                               CALL                          target=0x0D38
0DDD  9F 18                                  INC                           var=v[0x018]
0DDF  18 38 0D                               CALL                          target=0x0D38
0DE2  9F 18                                  INC                           var=v[0x018]
0DE4  18 38 0D                               CALL                          target=0x0D38
0DE7  9F 18                                  INC                           var=v[0x018]
0DE9  18 38 0D                               CALL                          target=0x0D38
0DEC  9F 18                                  INC                           var=v[0x018]
0DEE  18 38 0D                               CALL                          target=0x0D38
0DF1  A0 17                                  DEC                           var=v[0x017]
0DF3  18 38 0D                               CALL                          target=0x0D38
0DF6  A0 17                                  DEC                           var=v[0x017]
0DF8  18 38 0D                               CALL                          target=0x0D38
0DFB  A0 17                                  DEC                           var=v[0x017]
0DFD  18 38 0D                               CALL                          target=0x0D38
0E00  A0 17                                  DEC                           var=v[0x017]
0E02  18 38 0D                               CALL                          target=0x0D38
0E05  96 04 E2                               LOADSTRING                    dst=v[0x004], values=[50]
0E08  0B                                     INPUTLOOPSTART
0E09  9A 4B B0 1A 0E                         STRCMP_NE_JMP                 start=v[0x04B], values=[0], target=0x0E1A
0E0E  0D B4 00 63 00 DA 00 89 00 4B 11 0A    HOTSPOT_RECT                  left=0x00B4, top=0x0063, right=0x00DA, bottom=0x0089, target=0x114B, cursor=0x0A
0E1A  9A 4C B0 2B 0E                         STRCMP_NE_JMP                 start=v[0x04C], values=[0], target=0x0E2B
0E1F  0D DC 00 63 00 02 01 89 00 52 11 09    HOTSPOT_RECT                  left=0x00DC, top=0x0063, right=0x0102, bottom=0x0089, target=0x1152, cursor=0x09
0E2B  9A 4D B0 3C 0E                         STRCMP_NE_JMP                 start=v[0x04D], values=[0], target=0x0E3C
0E30  0D 04 01 63 00 2A 01 89 00 59 11 0A    HOTSPOT_RECT                  left=0x0104, top=0x0063, right=0x012A, bottom=0x0089, target=0x1159, cursor=0x0A
0E3C  9A 4E B0 4D 0E                         STRCMP_NE_JMP                 start=v[0x04E], values=[0], target=0x0E4D
0E41  0D 2C 01 63 00 52 01 89 00 60 11 09    HOTSPOT_RECT                  left=0x012C, top=0x0063, right=0x0152, bottom=0x0089, target=0x1160, cursor=0x09
0E4D  9A 4F B0 5E 0E                         STRCMP_NE_JMP                 start=v[0x04F], values=[0], target=0x0E5E
0E52  0D 54 01 63 00 7A 01 89 00 67 11 0A    HOTSPOT_RECT                  left=0x0154, top=0x0063, right=0x017A, bottom=0x0089, target=0x1167, cursor=0x0A
0E5E  9A 50 B0 6F 0E                         STRCMP_NE_JMP                 start=v[0x050], values=[0], target=0x0E6F
0E63  0D 7C 01 63 00 A2 01 89 00 6E 11 09    HOTSPOT_RECT                  left=0x017C, top=0x0063, right=0x01A2, bottom=0x0089, target=0x116E, cursor=0x09
0E6F  9A 51 B0 80 0E                         STRCMP_NE_JMP                 start=v[0x051], values=[0], target=0x0E80
0E74  0D A4 01 63 00 CA 01 89 00 75 11 0A    HOTSPOT_RECT                  left=0x01A4, top=0x0063, right=0x01CA, bottom=0x0089, target=0x1175, cursor=0x0A
0E80  9A 52 B0 91 0E                         STRCMP_NE_JMP                 start=v[0x052], values=[0], target=0x0E91
0E85  0D B4 00 8B 00 DA 00 B1 00 7C 11 09    HOTSPOT_RECT                  left=0x00B4, top=0x008B, right=0x00DA, bottom=0x00B1, target=0x117C, cursor=0x09
0E91  9A 53 B0 A2 0E                         STRCMP_NE_JMP                 start=v[0x053], values=[0], target=0x0EA2
0E96  0D DC 00 8B 00 02 01 B1 00 83 11 0A    HOTSPOT_RECT                  left=0x00DC, top=0x008B, right=0x0102, bottom=0x00B1, target=0x1183, cursor=0x0A
0EA2  9A 54 B0 B3 0E                         STRCMP_NE_JMP                 start=v[0x054], values=[0], target=0x0EB3
0EA7  0D 04 01 8B 00 2A 01 B1 00 8A 11 09    HOTSPOT_RECT                  left=0x0104, top=0x008B, right=0x012A, bottom=0x00B1, target=0x118A, cursor=0x09
0EB3  9A 55 B0 C4 0E                         STRCMP_NE_JMP                 start=v[0x055], values=[0], target=0x0EC4
0EB8  0D 2C 01 8B 00 52 01 B1 00 91 11 0A    HOTSPOT_RECT                  left=0x012C, top=0x008B, right=0x0152, bottom=0x00B1, target=0x1191, cursor=0x0A
0EC4  9A 56 B0 D5 0E                         STRCMP_NE_JMP                 start=v[0x056], values=[0], target=0x0ED5
0EC9  0D 54 01 8B 00 7A 01 B1 00 98 11 09    HOTSPOT_RECT                  left=0x0154, top=0x008B, right=0x017A, bottom=0x00B1, target=0x1198, cursor=0x09
0ED5  9A 57 B0 E6 0E                         STRCMP_NE_JMP                 start=v[0x057], values=[0], target=0x0EE6
0EDA  0D 7C 01 8B 00 A2 01 B1 00 9F 11 0A    HOTSPOT_RECT                  left=0x017C, top=0x008B, right=0x01A2, bottom=0x00B1, target=0x119F, cursor=0x0A
0EE6  9A 58 B0 F7 0E                         STRCMP_NE_JMP                 start=v[0x058], values=[0], target=0x0EF7
0EEB  0D A4 01 8B 00 CA 01 B1 00 A6 11 09    HOTSPOT_RECT                  left=0x01A4, top=0x008B, right=0x01CA, bottom=0x00B1, target=0x11A6, cursor=0x09
0EF7  9A 59 B0 08 0F                         STRCMP_NE_JMP                 start=v[0x059], values=[0], target=0x0F08
0EFC  0D B4 00 B3 00 DA 00 D9 00 AD 11 0A    HOTSPOT_RECT                  left=0x00B4, top=0x00B3, right=0x00DA, bottom=0x00D9, target=0x11AD, cursor=0x0A
0F08  9A 5A B0 19 0F                         STRCMP_NE_JMP                 start=v[0x05A], values=[0], target=0x0F19
0F0D  0D DC 00 B3 00 02 01 D9 00 B4 11 09    HOTSPOT_RECT                  left=0x00DC, top=0x00B3, right=0x0102, bottom=0x00D9, target=0x11B4, cursor=0x09
0F19  9A 5B B0 2A 0F                         STRCMP_NE_JMP                 start=v[0x05B], values=[0], target=0x0F2A
0F1E  0D 04 01 B3 00 2A 01 D9 00 BB 11 0A    HOTSPOT_RECT                  left=0x0104, top=0x00B3, right=0x012A, bottom=0x00D9, target=0x11BB, cursor=0x0A
0F2A  9A 5C B0 3B 0F                         STRCMP_NE_JMP                 start=v[0x05C], values=[0], target=0x0F3B
0F2F  0D 2C 01 B3 00 52 01 D9 00 C2 11 09    HOTSPOT_RECT                  left=0x012C, top=0x00B3, right=0x0152, bottom=0x00D9, target=0x11C2, cursor=0x09
0F3B  9A 5D B0 4C 0F                         STRCMP_NE_JMP                 start=v[0x05D], values=[0], target=0x0F4C
0F40  0D 54 01 B3 00 7A 01 D9 00 C9 11 0A    HOTSPOT_RECT                  left=0x0154, top=0x00B3, right=0x017A, bottom=0x00D9, target=0x11C9, cursor=0x0A
0F4C  9A 5E B0 5D 0F                         STRCMP_NE_JMP                 start=v[0x05E], values=[0], target=0x0F5D
0F51  0D 7C 01 B3 00 A2 01 D9 00 D0 11 09    HOTSPOT_RECT                  left=0x017C, top=0x00B3, right=0x01A2, bottom=0x00D9, target=0x11D0, cursor=0x09
0F5D  9A 5F B0 6E 0F                         STRCMP_NE_JMP                 start=v[0x05F], values=[0], target=0x0F6E
0F62  0D A4 01 B3 00 CA 01 D9 00 D7 11 0A    HOTSPOT_RECT                  left=0x01A4, top=0x00B3, right=0x01CA, bottom=0x00D9, target=0x11D7, cursor=0x0A
0F6E  9A 60 B0 7F 0F                         STRCMP_NE_JMP                 start=v[0x060], values=[0], target=0x0F7F
0F73  0D B4 00 DB 00 DA 00 01 01 DE 11 09    HOTSPOT_RECT                  left=0x00B4, top=0x00DB, right=0x00DA, bottom=0x0101, target=0x11DE, cursor=0x09
0F7F  9A 61 B0 90 0F                         STRCMP_NE_JMP                 start=v[0x061], values=[0], target=0x0F90
0F84  0D DC 00 DB 00 02 01 01 01 E5 11 0A    HOTSPOT_RECT                  left=0x00DC, top=0x00DB, right=0x0102, bottom=0x0101, target=0x11E5, cursor=0x0A
0F90  9A 62 B0 A1 0F                         STRCMP_NE_JMP                 start=v[0x062], values=[0], target=0x0FA1
0F95  0D 04 01 DB 00 2A 01 01 01 EC 11 09    HOTSPOT_RECT                  left=0x0104, top=0x00DB, right=0x012A, bottom=0x0101, target=0x11EC, cursor=0x09
0FA1  9A 63 B0 B2 0F                         STRCMP_NE_JMP                 start=v[0x063], values=[0], target=0x0FB2
0FA6  0D 2C 01 DB 00 52 01 01 01 F3 11 0A    HOTSPOT_RECT                  left=0x012C, top=0x00DB, right=0x0152, bottom=0x0101, target=0x11F3, cursor=0x0A
0FB2  9A 64 B0 C3 0F                         STRCMP_NE_JMP                 start=v[0x064], values=[0], target=0x0FC3
0FB7  0D 54 01 DB 00 7A 01 01 01 FA 11 09    HOTSPOT_RECT                  left=0x0154, top=0x00DB, right=0x017A, bottom=0x0101, target=0x11FA, cursor=0x09
0FC3  9A 65 B0 D4 0F                         STRCMP_NE_JMP                 start=v[0x065], values=[0], target=0x0FD4
0FC8  0D 7C 01 DB 00 A2 01 01 01 01 12 0A    HOTSPOT_RECT                  left=0x017C, top=0x00DB, right=0x01A2, bottom=0x0101, target=0x1201, cursor=0x0A
0FD4  9A 66 B0 E5 0F                         STRCMP_NE_JMP                 start=v[0x066], values=[0], target=0x0FE5
0FD9  0D A4 01 DB 00 CA 01 01 01 08 12 09    HOTSPOT_RECT                  left=0x01A4, top=0x00DB, right=0x01CA, bottom=0x0101, target=0x1208, cursor=0x09
0FE5  9A 67 B0 F6 0F                         STRCMP_NE_JMP                 start=v[0x067], values=[0], target=0x0FF6
0FEA  0D B4 00 03 01 DA 00 29 01 0F 12 0A    HOTSPOT_RECT                  left=0x00B4, top=0x0103, right=0x00DA, bottom=0x0129, target=0x120F, cursor=0x0A
0FF6  9A 68 B0 07 10                         STRCMP_NE_JMP                 start=v[0x068], values=[0], target=0x1007
0FFB  0D DC 00 03 01 02 01 29 01 16 12 09    HOTSPOT_RECT                  left=0x00DC, top=0x0103, right=0x0102, bottom=0x0129, target=0x1216, cursor=0x09
1007  9A 69 B0 18 10                         STRCMP_NE_JMP                 start=v[0x069], values=[0], target=0x1018
100C  0D 04 01 03 01 2A 01 29 01 1D 12 0A    HOTSPOT_RECT                  left=0x0104, top=0x0103, right=0x012A, bottom=0x0129, target=0x121D, cursor=0x0A
1018  9A 6A B0 29 10                         STRCMP_NE_JMP                 start=v[0x06A], values=[0], target=0x1029
101D  0D 2C 01 03 01 52 01 29 01 24 12 09    HOTSPOT_RECT                  left=0x012C, top=0x0103, right=0x0152, bottom=0x0129, target=0x1224, cursor=0x09
1029  9A 6B B0 3A 10                         STRCMP_NE_JMP                 start=v[0x06B], values=[0], target=0x103A
102E  0D 54 01 03 01 7A 01 29 01 2B 12 0A    HOTSPOT_RECT                  left=0x0154, top=0x0103, right=0x017A, bottom=0x0129, target=0x122B, cursor=0x0A
103A  9A 6C B0 4B 10                         STRCMP_NE_JMP                 start=v[0x06C], values=[0], target=0x104B
103F  0D 7C 01 03 01 A2 01 29 01 32 12 09    HOTSPOT_RECT                  left=0x017C, top=0x0103, right=0x01A2, bottom=0x0129, target=0x1232, cursor=0x09
104B  9A 6D B0 5C 10                         STRCMP_NE_JMP                 start=v[0x06D], values=[0], target=0x105C
1050  0D A4 01 03 01 CA 01 29 01 39 12 0A    HOTSPOT_RECT                  left=0x01A4, top=0x0103, right=0x01CA, bottom=0x0129, target=0x1239, cursor=0x0A
105C  9A 6E B0 6D 10                         STRCMP_NE_JMP                 start=v[0x06E], values=[0], target=0x106D
1061  0D B4 00 2B 01 DA 00 51 01 40 12 09    HOTSPOT_RECT                  left=0x00B4, top=0x012B, right=0x00DA, bottom=0x0151, target=0x1240, cursor=0x09
106D  9A 6F B0 7E 10                         STRCMP_NE_JMP                 start=v[0x06F], values=[0], target=0x107E
1072  0D DC 00 2B 01 02 01 51 01 47 12 0A    HOTSPOT_RECT                  left=0x00DC, top=0x012B, right=0x0102, bottom=0x0151, target=0x1247, cursor=0x0A
107E  9A 70 B0 8F 10                         STRCMP_NE_JMP                 start=v[0x070], values=[0], target=0x108F
1083  0D 04 01 2B 01 2A 01 51 01 4E 12 09    HOTSPOT_RECT                  left=0x0104, top=0x012B, right=0x012A, bottom=0x0151, target=0x124E, cursor=0x09
108F  9A 71 B0 A0 10                         STRCMP_NE_JMP                 start=v[0x071], values=[0], target=0x10A0
1094  0D 2C 01 2B 01 52 01 51 01 55 12 0A    HOTSPOT_RECT                  left=0x012C, top=0x012B, right=0x0152, bottom=0x0151, target=0x1255, cursor=0x0A
10A0  9A 72 B0 B1 10                         STRCMP_NE_JMP                 start=v[0x072], values=[0], target=0x10B1
10A5  0D 54 01 2B 01 7A 01 51 01 5C 12 09    HOTSPOT_RECT                  left=0x0154, top=0x012B, right=0x017A, bottom=0x0151, target=0x125C, cursor=0x09
10B1  9A 73 B0 C2 10                         STRCMP_NE_JMP                 start=v[0x073], values=[0], target=0x10C2
10B6  0D 7C 01 2B 01 A2 01 51 01 63 12 0A    HOTSPOT_RECT                  left=0x017C, top=0x012B, right=0x01A2, bottom=0x0151, target=0x1263, cursor=0x0A
10C2  9A 74 B0 D3 10                         STRCMP_NE_JMP                 start=v[0x074], values=[0], target=0x10D3
10C7  0D A4 01 2B 01 CA 01 51 01 6A 12 09    HOTSPOT_RECT                  left=0x01A4, top=0x012B, right=0x01CA, bottom=0x0151, target=0x126A, cursor=0x09
10D3  9A 75 B0 E4 10                         STRCMP_NE_JMP                 start=v[0x075], values=[0], target=0x10E4
10D8  0D B4 00 53 01 DA 00 79 01 71 12 0A    HOTSPOT_RECT                  left=0x00B4, top=0x0153, right=0x00DA, bottom=0x0179, target=0x1271, cursor=0x0A
10E4  9A 76 B0 F5 10                         STRCMP_NE_JMP                 start=v[0x076], values=[0], target=0x10F5
10E9  0D DC 00 53 01 02 01 79 01 78 12 09    HOTSPOT_RECT                  left=0x00DC, top=0x0153, right=0x0102, bottom=0x0179, target=0x1278, cursor=0x09
10F5  9A 77 B0 06 11                         STRCMP_NE_JMP                 start=v[0x077], values=[0], target=0x1106
10FA  0D 04 01 53 01 2A 01 79 01 7F 12 0A    HOTSPOT_RECT                  left=0x0104, top=0x0153, right=0x012A, bottom=0x0179, target=0x127F, cursor=0x0A
1106  9A 78 B0 17 11                         STRCMP_NE_JMP                 start=v[0x078], values=[0], target=0x1117
110B  0D 2C 01 53 01 52 01 79 01 86 12 09    HOTSPOT_RECT                  left=0x012C, top=0x0153, right=0x0152, bottom=0x0179, target=0x1286, cursor=0x09
1117  9A 79 B0 28 11                         STRCMP_NE_JMP                 start=v[0x079], values=[0], target=0x1128
111C  0D 54 01 53 01 7A 01 79 01 8D 12 0A    HOTSPOT_RECT                  left=0x0154, top=0x0153, right=0x017A, bottom=0x0179, target=0x128D, cursor=0x0A
1128  9A 7A B0 39 11                         STRCMP_NE_JMP                 start=v[0x07A], values=[0], target=0x1139
112D  0D 7C 01 53 01 A2 01 79 01 94 12 09    HOTSPOT_RECT                  left=0x017C, top=0x0153, right=0x01A2, bottom=0x0179, target=0x1294, cursor=0x09
1139  9A 7B B0 4A 11                         STRCMP_NE_JMP                 start=v[0x07B], values=[0], target=0x114A
113E  0D A4 01 53 01 CA 01 79 01 9B 12 0A    HOTSPOT_RECT                  left=0x01A4, top=0x0153, right=0x01CA, bottom=0x0179, target=0x129B, cursor=0x0A
114A  13                                     INPUTLOOPEND
114B  96 02 30 B0                            LOADSTRING                    dst=v[0x002], values=[0, 0]
114F  15 BF 14                               JMP                           target=0x14BF
1152  96 02 30 B1                            LOADSTRING                    dst=v[0x002], values=[0, 1]
1156  15 BF 14                               JMP                           target=0x14BF
1159  96 02 30 B2                            LOADSTRING                    dst=v[0x002], values=[0, 2]
115D  15 BF 14                               JMP                           target=0x14BF
1160  96 02 30 B3                            LOADSTRING                    dst=v[0x002], values=[0, 3]
1164  15 BF 14                               JMP                           target=0x14BF
1167  96 02 30 B4                            LOADSTRING                    dst=v[0x002], values=[0, 4]
116B  15 BF 14                               JMP                           target=0x14BF
116E  96 02 30 B5                            LOADSTRING                    dst=v[0x002], values=[0, 5]
1172  15 BF 14                               JMP                           target=0x14BF
1175  96 02 30 B6                            LOADSTRING                    dst=v[0x002], values=[0, 6]
1179  15 BF 14                               JMP                           target=0x14BF
117C  96 02 31 B0                            LOADSTRING                    dst=v[0x002], values=[1, 0]
1180  15 BF 14                               JMP                           target=0x14BF
1183  96 02 31 B1                            LOADSTRING                    dst=v[0x002], values=[1, 1]
1187  15 BF 14                               JMP                           target=0x14BF
118A  96 02 31 B2                            LOADSTRING                    dst=v[0x002], values=[1, 2]
118E  15 BF 14                               JMP                           target=0x14BF
1191  96 02 31 B3                            LOADSTRING                    dst=v[0x002], values=[1, 3]
1195  15 BF 14                               JMP                           target=0x14BF
1198  96 02 31 B4                            LOADSTRING                    dst=v[0x002], values=[1, 4]
119C  15 BF 14                               JMP                           target=0x14BF
119F  96 02 31 B5                            LOADSTRING                    dst=v[0x002], values=[1, 5]
11A3  15 BF 14                               JMP                           target=0x14BF
11A6  96 02 31 B6                            LOADSTRING                    dst=v[0x002], values=[1, 6]
11AA  15 BF 14                               JMP                           target=0x14BF
11AD  96 02 32 B0                            LOADSTRING                    dst=v[0x002], values=[2, 0]
11B1  15 BF 14                               JMP                           target=0x14BF
11B4  96 02 32 B1                            LOADSTRING                    dst=v[0x002], values=[2, 1]
11B8  15 BF 14                               JMP                           target=0x14BF
11BB  96 02 32 B2                            LOADSTRING                    dst=v[0x002], values=[2, 2]
11BF  15 BF 14                               JMP                           target=0x14BF
11C2  96 02 32 B3                            LOADSTRING                    dst=v[0x002], values=[2, 3]
11C6  15 BF 14                               JMP                           target=0x14BF
11C9  96 02 32 B4                            LOADSTRING                    dst=v[0x002], values=[2, 4]
11CD  15 BF 14                               JMP                           target=0x14BF
11D0  96 02 32 B5                            LOADSTRING                    dst=v[0x002], values=[2, 5]
11D4  15 BF 14                               JMP                           target=0x14BF
11D7  96 02 32 B6                            LOADSTRING                    dst=v[0x002], values=[2, 6]
11DB  15 BF 14                               JMP                           target=0x14BF
11DE  96 02 33 B0                            LOADSTRING                    dst=v[0x002], values=[3, 0]
11E2  15 BF 14                               JMP                           target=0x14BF
11E5  96 02 33 B1                            LOADSTRING                    dst=v[0x002], values=[3, 1]
11E9  15 BF 14                               JMP                           target=0x14BF
11EC  96 02 33 B2                            LOADSTRING                    dst=v[0x002], values=[3, 2]
11F0  15 BF 14                               JMP                           target=0x14BF
11F3  96 02 33 B3                            LOADSTRING                    dst=v[0x002], values=[3, 3]
11F7  15 BF 14                               JMP                           target=0x14BF
11FA  96 02 33 B4                            LOADSTRING                    dst=v[0x002], values=[3, 4]
11FE  15 BF 14                               JMP                           target=0x14BF
1201  96 02 33 B5                            LOADSTRING                    dst=v[0x002], values=[3, 5]
1205  15 BF 14                               JMP                           target=0x14BF
1208  96 02 33 B6                            LOADSTRING                    dst=v[0x002], values=[3, 6]
120C  15 BF 14                               JMP                           target=0x14BF
120F  96 02 34 B0                            LOADSTRING                    dst=v[0x002], values=[4, 0]
1213  15 BF 14                               JMP                           target=0x14BF
1216  96 02 34 B1                            LOADSTRING                    dst=v[0x002], values=[4, 1]
121A  15 BF 14                               JMP                           target=0x14BF
121D  96 02 34 B2                            LOADSTRING                    dst=v[0x002], values=[4, 2]
1221  15 BF 14                               JMP                           target=0x14BF
1224  96 02 34 B3                            LOADSTRING                    dst=v[0x002], values=[4, 3]
1228  15 BF 14                               JMP                           target=0x14BF
122B  96 02 34 B4                            LOADSTRING                    dst=v[0x002], values=[4, 4]
122F  15 BF 14                               JMP                           target=0x14BF
1232  96 02 34 B5                            LOADSTRING                    dst=v[0x002], values=[4, 5]
1236  15 BF 14                               JMP                           target=0x14BF
1239  96 02 34 B6                            LOADSTRING                    dst=v[0x002], values=[4, 6]
123D  15 BF 14                               JMP                           target=0x14BF
1240  96 02 35 B0                            LOADSTRING                    dst=v[0x002], values=[5, 0]
1244  15 BF 14                               JMP                           target=0x14BF
1247  96 02 35 B1                            LOADSTRING                    dst=v[0x002], values=[5, 1]
124B  15 BF 14                               JMP                           target=0x14BF
124E  96 02 35 B2                            LOADSTRING                    dst=v[0x002], values=[5, 2]
1252  15 BF 14                               JMP                           target=0x14BF
1255  96 02 35 B3                            LOADSTRING                    dst=v[0x002], values=[5, 3]
1259  15 BF 14                               JMP                           target=0x14BF
125C  96 02 35 B4                            LOADSTRING                    dst=v[0x002], values=[5, 4]
1260  15 BF 14                               JMP                           target=0x14BF
1263  96 02 35 B5                            LOADSTRING                    dst=v[0x002], values=[5, 5]
1267  15 BF 14                               JMP                           target=0x14BF
126A  96 02 35 B6                            LOADSTRING                    dst=v[0x002], values=[5, 6]
126E  15 BF 14                               JMP                           target=0x14BF
1271  96 02 36 B0                            LOADSTRING                    dst=v[0x002], values=[6, 0]
1275  15 BF 14                               JMP                           target=0x14BF
1278  96 02 36 B1                            LOADSTRING                    dst=v[0x002], values=[6, 1]
127C  15 BF 14                               JMP                           target=0x14BF
127F  96 02 36 B2                            LOADSTRING                    dst=v[0x002], values=[6, 2]
1283  15 BF 14                               JMP                           target=0x14BF
1286  96 02 36 B3                            LOADSTRING                    dst=v[0x002], values=[6, 3]
128A  15 BF 14                               JMP                           target=0x14BF
128D  96 02 36 B4                            LOADSTRING                    dst=v[0x002], values=[6, 4]
1291  15 BF 14                               JMP                           target=0x14BF
1294  96 02 36 B5                            LOADSTRING                    dst=v[0x002], values=[6, 5]
1298  15 BF 14                               JMP                           target=0x14BF
129B  96 02 36 B6                            LOADSTRING                    dst=v[0x002], values=[6, 6]
129F  15 BF 14                               JMP                           target=0x14BF
12A2  9A 17 30 B0 AD 12                      STRCMP_NE_JMP                 start=v[0x017], values=[0, 0], target=0x12AD
12A8  40 88 FF 88 FF                         SET_VIDEO_ORIGIN              x=-120, y=-120
12AD  9A 17 30 B1 B8 12                      STRCMP_NE_JMP                 start=v[0x017], values=[0, 1], target=0x12B8
12B3  40 B0 FF 88 FF                         SET_VIDEO_ORIGIN              x=-80, y=-120
12B8  9A 17 30 B2 C3 12                      STRCMP_NE_JMP                 start=v[0x017], values=[0, 2], target=0x12C3
12BE  40 D8 FF 88 FF                         SET_VIDEO_ORIGIN              x=-40, y=-120
12C3  9A 17 30 B3 CE 12                      STRCMP_NE_JMP                 start=v[0x017], values=[0, 3], target=0x12CE
12C9  40 00 00 88 FF                         SET_VIDEO_ORIGIN              x=0, y=-120
12CE  9A 17 30 B4 D9 12                      STRCMP_NE_JMP                 start=v[0x017], values=[0, 4], target=0x12D9
12D4  40 28 00 88 FF                         SET_VIDEO_ORIGIN              x=40, y=-120
12D9  9A 17 30 B5 E4 12                      STRCMP_NE_JMP                 start=v[0x017], values=[0, 5], target=0x12E4
12DF  40 50 00 88 FF                         SET_VIDEO_ORIGIN              x=80, y=-120
12E4  9A 17 30 B6 EF 12                      STRCMP_NE_JMP                 start=v[0x017], values=[0, 6], target=0x12EF
12EA  40 78 00 88 FF                         SET_VIDEO_ORIGIN              x=120, y=-120
12EF  9A 17 31 B0 FA 12                      STRCMP_NE_JMP                 start=v[0x017], values=[1, 0], target=0x12FA
12F5  40 88 FF B0 FF                         SET_VIDEO_ORIGIN              x=-120, y=-80
12FA  9A 17 31 B1 05 13                      STRCMP_NE_JMP                 start=v[0x017], values=[1, 1], target=0x1305
1300  40 B0 FF B0 FF                         SET_VIDEO_ORIGIN              x=-80, y=-80
1305  9A 17 31 B2 10 13                      STRCMP_NE_JMP                 start=v[0x017], values=[1, 2], target=0x1310
130B  40 D8 FF B0 FF                         SET_VIDEO_ORIGIN              x=-40, y=-80
1310  9A 17 31 B3 1B 13                      STRCMP_NE_JMP                 start=v[0x017], values=[1, 3], target=0x131B
1316  40 00 00 B0 FF                         SET_VIDEO_ORIGIN              x=0, y=-80
131B  9A 17 31 B4 26 13                      STRCMP_NE_JMP                 start=v[0x017], values=[1, 4], target=0x1326
1321  40 28 00 B0 FF                         SET_VIDEO_ORIGIN              x=40, y=-80
1326  9A 17 31 B5 31 13                      STRCMP_NE_JMP                 start=v[0x017], values=[1, 5], target=0x1331
132C  40 50 00 B0 FF                         SET_VIDEO_ORIGIN              x=80, y=-80
1331  9A 17 31 B6 3C 13                      STRCMP_NE_JMP                 start=v[0x017], values=[1, 6], target=0x133C
1337  40 78 00 B0 FF                         SET_VIDEO_ORIGIN              x=120, y=-80
133C  9A 17 32 B0 47 13                      STRCMP_NE_JMP                 start=v[0x017], values=[2, 0], target=0x1347
1342  40 88 FF D8 FF                         SET_VIDEO_ORIGIN              x=-120, y=-40
1347  9A 17 32 B1 52 13                      STRCMP_NE_JMP                 start=v[0x017], values=[2, 1], target=0x1352
134D  40 B0 FF D8 FF                         SET_VIDEO_ORIGIN              x=-80, y=-40
1352  9A 17 32 B2 5D 13                      STRCMP_NE_JMP                 start=v[0x017], values=[2, 2], target=0x135D
1358  40 D8 FF D8 FF                         SET_VIDEO_ORIGIN              x=-40, y=-40
135D  9A 17 32 B3 68 13                      STRCMP_NE_JMP                 start=v[0x017], values=[2, 3], target=0x1368
1363  40 00 00 D8 FF                         SET_VIDEO_ORIGIN              x=0, y=-40
1368  9A 17 32 B4 73 13                      STRCMP_NE_JMP                 start=v[0x017], values=[2, 4], target=0x1373
136E  40 28 00 D8 FF                         SET_VIDEO_ORIGIN              x=40, y=-40
1373  9A 17 32 B5 7E 13                      STRCMP_NE_JMP                 start=v[0x017], values=[2, 5], target=0x137E
1379  40 50 00 D8 FF                         SET_VIDEO_ORIGIN              x=80, y=-40
137E  9A 17 32 B6 89 13                      STRCMP_NE_JMP                 start=v[0x017], values=[2, 6], target=0x1389
1384  40 78 00 D8 FF                         SET_VIDEO_ORIGIN              x=120, y=-40
1389  9A 17 33 B0 94 13                      STRCMP_NE_JMP                 start=v[0x017], values=[3, 0], target=0x1394
138F  40 88 FF 00 00                         SET_VIDEO_ORIGIN              x=-120, y=0
1394  9A 17 33 B1 9F 13                      STRCMP_NE_JMP                 start=v[0x017], values=[3, 1], target=0x139F
139A  40 B0 FF 00 00                         SET_VIDEO_ORIGIN              x=-80, y=0
139F  9A 17 33 B2 AA 13                      STRCMP_NE_JMP                 start=v[0x017], values=[3, 2], target=0x13AA
13A5  40 D8 FF 00 00                         SET_VIDEO_ORIGIN              x=-40, y=0
13AA  9A 17 33 B3 B5 13                      STRCMP_NE_JMP                 start=v[0x017], values=[3, 3], target=0x13B5
13B0  40 00 00 00 00                         SET_VIDEO_ORIGIN              x=0, y=0
13B5  9A 17 33 B4 C0 13                      STRCMP_NE_JMP                 start=v[0x017], values=[3, 4], target=0x13C0
13BB  40 28 00 00 00                         SET_VIDEO_ORIGIN              x=40, y=0
13C0  9A 17 33 B5 CB 13                      STRCMP_NE_JMP                 start=v[0x017], values=[3, 5], target=0x13CB
13C6  40 50 00 00 00                         SET_VIDEO_ORIGIN              x=80, y=0
13CB  9A 17 33 B6 D6 13                      STRCMP_NE_JMP                 start=v[0x017], values=[3, 6], target=0x13D6
13D1  40 78 00 00 00                         SET_VIDEO_ORIGIN              x=120, y=0
13D6  9A 17 34 B0 E1 13                      STRCMP_NE_JMP                 start=v[0x017], values=[4, 0], target=0x13E1
13DC  40 88 FF 28 00                         SET_VIDEO_ORIGIN              x=-120, y=40
13E1  9A 17 34 B1 EC 13                      STRCMP_NE_JMP                 start=v[0x017], values=[4, 1], target=0x13EC
13E7  40 B0 FF 28 00                         SET_VIDEO_ORIGIN              x=-80, y=40
13EC  9A 17 34 B2 F7 13                      STRCMP_NE_JMP                 start=v[0x017], values=[4, 2], target=0x13F7
13F2  40 D8 FF 28 00                         SET_VIDEO_ORIGIN              x=-40, y=40
13F7  9A 17 34 B3 02 14                      STRCMP_NE_JMP                 start=v[0x017], values=[4, 3], target=0x1402
13FD  40 00 00 28 00                         SET_VIDEO_ORIGIN              x=0, y=40
1402  9A 17 34 B4 0D 14                      STRCMP_NE_JMP                 start=v[0x017], values=[4, 4], target=0x140D
1408  40 28 00 28 00                         SET_VIDEO_ORIGIN              x=40, y=40
140D  9A 17 34 B5 18 14                      STRCMP_NE_JMP                 start=v[0x017], values=[4, 5], target=0x1418
1413  40 50 00 28 00                         SET_VIDEO_ORIGIN              x=80, y=40
1418  9A 17 34 B6 23 14                      STRCMP_NE_JMP                 start=v[0x017], values=[4, 6], target=0x1423
141E  40 78 00 28 00                         SET_VIDEO_ORIGIN              x=120, y=40
1423  9A 17 35 B0 2E 14                      STRCMP_NE_JMP                 start=v[0x017], values=[5, 0], target=0x142E
1429  40 88 FF 50 00                         SET_VIDEO_ORIGIN              x=-120, y=80
142E  9A 17 35 B1 39 14                      STRCMP_NE_JMP                 start=v[0x017], values=[5, 1], target=0x1439
1434  40 B0 FF 50 00                         SET_VIDEO_ORIGIN              x=-80, y=80
1439  9A 17 35 B2 44 14                      STRCMP_NE_JMP                 start=v[0x017], values=[5, 2], target=0x1444
143F  40 D8 FF 50 00                         SET_VIDEO_ORIGIN              x=-40, y=80
1444  9A 17 35 B3 4F 14                      STRCMP_NE_JMP                 start=v[0x017], values=[5, 3], target=0x144F
144A  40 00 00 50 00                         SET_VIDEO_ORIGIN              x=0, y=80
144F  9A 17 35 B4 5A 14                      STRCMP_NE_JMP                 start=v[0x017], values=[5, 4], target=0x145A
1455  40 28 00 50 00                         SET_VIDEO_ORIGIN              x=40, y=80
145A  9A 17 35 B5 65 14                      STRCMP_NE_JMP                 start=v[0x017], values=[5, 5], target=0x1465
1460  40 50 00 50 00                         SET_VIDEO_ORIGIN              x=80, y=80
1465  9A 17 35 B6 70 14                      STRCMP_NE_JMP                 start=v[0x017], values=[5, 6], target=0x1470
146B  40 78 00 50 00                         SET_VIDEO_ORIGIN              x=120, y=80
1470  9A 17 36 B0 7B 14                      STRCMP_NE_JMP                 start=v[0x017], values=[6, 0], target=0x147B
1476  40 88 FF 78 00                         SET_VIDEO_ORIGIN              x=-120, y=120
147B  9A 17 36 B1 86 14                      STRCMP_NE_JMP                 start=v[0x017], values=[6, 1], target=0x1486
1481  40 B0 FF 78 00                         SET_VIDEO_ORIGIN              x=-80, y=120
1486  9A 17 36 B2 91 14                      STRCMP_NE_JMP                 start=v[0x017], values=[6, 2], target=0x1491
148C  40 D8 FF 78 00                         SET_VIDEO_ORIGIN              x=-40, y=120
1491  9A 17 36 B3 9C 14                      STRCMP_NE_JMP                 start=v[0x017], values=[6, 3], target=0x149C
1497  40 00 00 78 00                         SET_VIDEO_ORIGIN              x=0, y=120
149C  9A 17 36 B4 A7 14                      STRCMP_NE_JMP                 start=v[0x017], values=[6, 4], target=0x14A7
14A2  40 28 00 78 00                         SET_VIDEO_ORIGIN              x=40, y=120
14A7  9A 17 36 B5 B2 14                      STRCMP_NE_JMP                 start=v[0x017], values=[6, 5], target=0x14B2
14AD  40 50 00 78 00                         SET_VIDEO_ORIGIN              x=80, y=120
14B2  9A 17 36 B6 BD 14                      STRCMP_NE_JMP                 start=v[0x017], values=[6, 6], target=0x14BD
14B8  40 78 00 78 00                         SET_VIDEO_ORIGIN              x=120, y=120
14BD  17 00                                  RET                           value=0x00
14BF  9A 00 23 63 23 E4 D0 14                STRCMP_NE_JMP                 start=v[0x000], values=[v[0x002], v[0x003]], target=0x14D0
14C7  07                                     VIDEOFLAG7_ON
14C8  46                                     RESOURCE_CONTEXT_SAVE
14C9  09 8A 50                               VIDEOREF                      ref=0x508A (GAMWAV[138]=gen_e_4.vdx)
14CC  47                                     RESOURCE_CONTEXT_RESTORE
14CD  15 24 08                               JMP                           target=0x0824
14D0  96 05 23 61 23 E2                      LOADSTRING                    dst=v[0x005], values=[v[0x000], v[0x001]]
14D6  96 07 23 61 23 E2                      LOADSTRING                    dst=v[0x007], values=[v[0x000], v[0x001]]
14DC  96 17 23 63 23 E4                      LOADSTRING                    dst=v[0x017], values=[v[0x002], v[0x003]]
14E2  9F 05                                  INC                           var=v[0x005]
14E4  9F 05                                  INC                           var=v[0x005]
14E6  9F 06                                  INC                           var=v[0x006]
14E8  9F 06                                  INC                           var=v[0x006]
14EA  C1 05 02 00                            SUB                           dst=v[0x005], src=0x0002
14EE  C1 06 03 00                            SUB                           dst=v[0x006], src=0x0003
14F2  18 A8 03                               CALL                          target=0x03A8
14F5  9A 05 B4 FD 14                         STRCMP_NE_JMP                 start=v[0x005], values=[4], target=0x14FD
14FA  15 FA 16                               JMP                           target=0x16FA
14FD  9A 05 B0 05 15                         STRCMP_NE_JMP                 start=v[0x005], values=[0], target=0x1505
1502  15 FA 16                               JMP                           target=0x16FA
1505  9A 06 B4 0D 15                         STRCMP_NE_JMP                 start=v[0x006], values=[4], target=0x150D
150A  15 FA 16                               JMP                           target=0x16FA
150D  9A 06 B0 15 15                         STRCMP_NE_JMP                 start=v[0x006], values=[0], target=0x1515
1512  15 FA 16                               JMP                           target=0x16FA
1515  96 17 23 61 23 E2                      LOADSTRING                    dst=v[0x017], values=[v[0x000], v[0x001]]
151B  18 A2 12                               CALL                          target=0x12A2
151E  26 6C 61 5F 23 65 23 66 23 67 00       VIDEO_NAME                    name="la_{v004}{v005}{v006}"
1529  22                                     COPY_BG_TO_FG
152A  16 0C 01 B0                            LOADSTRING                    dst=v[0x10C], values=[0]
152E  9A 04 E2 39 15                         STRCMP_NE_JMP                 start=v[0x004], values=[50], target=0x1539
1533  96 0E F2                               LOADSTRING                    dst=v[0x00E], values=[66]
1536  15 3C 15                               JMP                           target=0x153C
1539  96 0E E2                               LOADSTRING                    dst=v[0x00E], values=[50]
153C  96 06 23 63 23 E4                      LOADSTRING                    dst=v[0x006], values=[v[0x002], v[0x003]]
1542  A0 06                                  DEC                           var=v[0x006]
1544  A0 07                                  DEC                           var=v[0x007]
1546  96 17 23 67 23 E8                      LOADSTRING                    dst=v[0x017], values=[v[0x006], v[0x007]]
154C  18 B9 01                               CALL                          target=0x01B9
154F  9A 05 23 EF 6E 15                      STRCMP_NE_JMP                 start=v[0x005], values=[v[0x00E]], target=0x156E
1555  18 A8 03                               CALL                          target=0x03A8
1558  96 17 23 63 23 E4                      LOADSTRING                    dst=v[0x017], values=[v[0x002], v[0x003]]
155E  18 A2 12                               CALL                          target=0x12A2
1561  26 6C 61 5F 23 65 33 33 00             VIDEO_NAME                    name="la_{v004}33"
156A  22                                     COPY_BG_TO_FG
156B  1F 0C 01                               INC                           var=v[0x10C]
156E  9F 07                                  INC                           var=v[0x007]
1570  96 17 23 67 23 E8                      LOADSTRING                    dst=v[0x017], values=[v[0x006], v[0x007]]
1576  18 B9 01                               CALL                          target=0x01B9
1579  9A 05 23 EF 98 15                      STRCMP_NE_JMP                 start=v[0x005], values=[v[0x00E]], target=0x1598
157F  18 A8 03                               CALL                          target=0x03A8
1582  96 17 23 63 23 E4                      LOADSTRING                    dst=v[0x017], values=[v[0x002], v[0x003]]
1588  18 A2 12                               CALL                          target=0x12A2
158B  26 6C 61 5F 23 65 33 32 00             VIDEO_NAME                    name="la_{v004}32"
1594  22                                     COPY_BG_TO_FG
1595  1F 0C 01                               INC                           var=v[0x10C]
1598  9F 07                                  INC                           var=v[0x007]
159A  96 17 23 67 23 E8                      LOADSTRING                    dst=v[0x017], values=[v[0x006], v[0x007]]
15A0  18 B9 01                               CALL                          target=0x01B9
15A3  9A 05 23 EF C2 15                      STRCMP_NE_JMP                 start=v[0x005], values=[v[0x00E]], target=0x15C2
15A9  18 A8 03                               CALL                          target=0x03A8
15AC  96 17 23 63 23 E4                      LOADSTRING                    dst=v[0x017], values=[v[0x002], v[0x003]]
15B2  18 A2 12                               CALL                          target=0x12A2
15B5  26 6C 61 5F 23 65 33 31 00             VIDEO_NAME                    name="la_{v004}31"
15BE  22                                     COPY_BG_TO_FG
15BF  1F 0C 01                               INC                           var=v[0x10C]
15C2  9F 06                                  INC                           var=v[0x006]
15C4  96 17 23 67 23 E8                      LOADSTRING                    dst=v[0x017], values=[v[0x006], v[0x007]]
15CA  18 B9 01                               CALL                          target=0x01B9
15CD  9A 05 23 EF EC 15                      STRCMP_NE_JMP                 start=v[0x005], values=[v[0x00E]], target=0x15EC
15D3  18 A8 03                               CALL                          target=0x03A8
15D6  96 17 23 63 23 E4                      LOADSTRING                    dst=v[0x017], values=[v[0x002], v[0x003]]
15DC  18 A2 12                               CALL                          target=0x12A2
15DF  26 6C 61 5F 23 65 32 31 00             VIDEO_NAME                    name="la_{v004}21"
15E8  22                                     COPY_BG_TO_FG
15E9  1F 0C 01                               INC                           var=v[0x10C]
15EC  9F 06                                  INC                           var=v[0x006]
15EE  96 17 23 67 23 E8                      LOADSTRING                    dst=v[0x017], values=[v[0x006], v[0x007]]
15F4  18 B9 01                               CALL                          target=0x01B9
15F7  9A 05 23 EF 16 16                      STRCMP_NE_JMP                 start=v[0x005], values=[v[0x00E]], target=0x1616
15FD  18 A8 03                               CALL                          target=0x03A8
1600  96 17 23 63 23 E4                      LOADSTRING                    dst=v[0x017], values=[v[0x002], v[0x003]]
1606  18 A2 12                               CALL                          target=0x12A2
1609  26 6C 61 5F 23 65 31 31 00             VIDEO_NAME                    name="la_{v004}11"
1612  22                                     COPY_BG_TO_FG
1613  1F 0C 01                               INC                           var=v[0x10C]
1616  A0 07                                  DEC                           var=v[0x007]
1618  96 17 23 67 23 E8                      LOADSTRING                    dst=v[0x017], values=[v[0x006], v[0x007]]
161E  18 B9 01                               CALL                          target=0x01B9
1621  9A 05 23 EF 40 16                      STRCMP_NE_JMP                 start=v[0x005], values=[v[0x00E]], target=0x1640
1627  18 A8 03                               CALL                          target=0x03A8
162A  96 17 23 63 23 E4                      LOADSTRING                    dst=v[0x017], values=[v[0x002], v[0x003]]
1630  18 A2 12                               CALL                          target=0x12A2
1633  26 6C 61 5F 23 65 31 32 00             VIDEO_NAME                    name="la_{v004}12"
163C  22                                     COPY_BG_TO_FG
163D  1F 0C 01                               INC                           var=v[0x10C]
1640  A0 07                                  DEC                           var=v[0x007]
1642  96 17 23 67 23 E8                      LOADSTRING                    dst=v[0x017], values=[v[0x006], v[0x007]]
1648  18 B9 01                               CALL                          target=0x01B9
164B  9A 05 23 EF 6A 16                      STRCMP_NE_JMP                 start=v[0x005], values=[v[0x00E]], target=0x166A
1651  18 A8 03                               CALL                          target=0x03A8
1654  96 17 23 63 23 E4                      LOADSTRING                    dst=v[0x017], values=[v[0x002], v[0x003]]
165A  18 A2 12                               CALL                          target=0x12A2
165D  26 6C 61 5F 23 65 31 33 00             VIDEO_NAME                    name="la_{v004}13"
1666  22                                     COPY_BG_TO_FG
1667  1F 0C 01                               INC                           var=v[0x10C]
166A  A0 06                                  DEC                           var=v[0x006]
166C  96 17 23 67 23 E8                      LOADSTRING                    dst=v[0x017], values=[v[0x006], v[0x007]]
1672  18 B9 01                               CALL                          target=0x01B9
1675  9A 05 23 EF 94 16                      STRCMP_NE_JMP                 start=v[0x005], values=[v[0x00E]], target=0x1694
167B  18 A8 03                               CALL                          target=0x03A8
167E  96 17 23 63 23 E4                      LOADSTRING                    dst=v[0x017], values=[v[0x002], v[0x003]]
1684  18 A2 12                               CALL                          target=0x12A2
1687  26 6C 61 5F 23 65 32 33 00             VIDEO_NAME                    name="la_{v004}23"
1690  22                                     COPY_BG_TO_FG
1691  1F 0C 01                               INC                           var=v[0x10C]
1694  46                                     RESOURCE_CONTEXT_SAVE
1695  9A 04 F2 C5 16                         STRCMP_NE_JMP                 start=v[0x004], values=[66], target=0x16C5
169A  1A 0C 01 B8 A4 16                      STRCMP_NE_JMP                 start=v[0x10C], values=[8], target=0x16A4
16A0  07                                     VIDEOFLAG7_ON
16A1  09 A4 50                               VIDEOREF                      ref=0x50A4 (GAMWAV[164]=gen_s_13.vdx)
16A4  1A 0C 01 B7 AE 16                      STRCMP_NE_JMP                 start=v[0x10C], values=[7], target=0x16AE
16AA  07                                     VIDEOFLAG7_ON
16AB  09 8C 50                               VIDEOREF                      ref=0x508C (GAMWAV[140]=gen_e_6.vdx)
16AE  1A 0C 01 B6 B8 16                      STRCMP_NE_JMP                 start=v[0x10C], values=[6], target=0x16B8
16B4  07                                     VIDEOFLAG7_ON
16B5  09 8D 50                               VIDEOREF                      ref=0x508D (GAMWAV[141]=gen_e_7.vdx)
16B8  1A 0C 01 B5 C2 16                      STRCMP_NE_JMP                 start=v[0x10C], values=[5], target=0x16C2
16BE  07                                     VIDEOFLAG7_ON
16BF  09 8B 50                               VIDEOREF                      ref=0x508B (GAMWAV[139]=gen_e_5.vdx)
16C2  15 F7 16                               JMP                           target=0x16F7
16C5  1A 0C 01 B8 CF 16                      STRCMP_NE_JMP                 start=v[0x10C], values=[8], target=0x16CF
16CB  07                                     VIDEOFLAG7_ON
16CC  09 A6 50                               VIDEOREF                      ref=0x50A6 (GAMWAV[166]=gen_s_15.vdx)
16CF  1A 0C 01 B7 D9 16                      STRCMP_NE_JMP                 start=v[0x10C], values=[7], target=0x16D9
16D5  07                                     VIDEOFLAG7_ON
16D6  09 88 50                               VIDEOREF                      ref=0x5088 (GAMWAV[136]=gen_e_2.vdx)
16D9  1A 0C 01 B6 E3 16                      STRCMP_NE_JMP                 start=v[0x10C], values=[6], target=0x16E3
16DF  07                                     VIDEOFLAG7_ON
16E0  09 93 50                               VIDEOREF                      ref=0x5093 (GAMWAV[147]=gen_e_13.vdx)
16E3  1A 0C 01 B5 ED 16                      STRCMP_NE_JMP                 start=v[0x10C], values=[5], target=0x16ED
16E9  07                                     VIDEOFLAG7_ON
16EA  09 87 50                               VIDEOREF                      ref=0x5087 (GAMWAV[135]=gen_e_1.vdx)
16ED  1A 0C 01 B4 F7 16                      STRCMP_NE_JMP                 start=v[0x10C], values=[4], target=0x16F7
16F3  07                                     VIDEOFLAG7_ON
16F4  09 99 50                               VIDEOREF                      ref=0x5099 (GAMWAV[153]=gen_s_2.vdx)
16F7  47                                     RESOURCE_CONTEXT_RESTORE
16F8  17 00                                  RET                           value=0x00
16FA  40 00 00 00 00                         SET_VIDEO_ORIGIN              x=0, y=0
16FF  27 73 74 65 6E 23 61 23 62 00          VIDEO_TRANSITION_NAME         name="sten{v000}{v001}"
1709  96 17 23 61 23 E2                      LOADSTRING                    dst=v[0x017], values=[v[0x000], v[0x001]]
170F  18 A2 12                               CALL                          target=0x12A2
1712  26 6C 61 5F 23 65 23 66 23 67 00       VIDEO_NAME                    name="la_{v004}{v005}{v006}"
171D  96 09 23 E5                            LOADSTRING                    dst=v[0x009], values=[v[0x004]]
1721  96 04 B0                               LOADSTRING                    dst=v[0x004], values=[0]
1724  18 A8 03                               CALL                          target=0x03A8
1727  96 04 23 EA                            LOADSTRING                    dst=v[0x004], values=[v[0x009]]
172B  15 29 15                               JMP                           target=0x1529
172E  43 01                                  RETURNSCRIPT                  value=0x01
1730  04                                     PALFADEOUT
1731  43 00                                  RETURNSCRIPT                  value=0x00
