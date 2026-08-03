; T7G/EK.GRV
; size=3169 sha256=b54ef6eb11f64d8ad7c93df8eb8e0dc68974c79fc696f33023177220ac10b5a0
; instructions=661 input_loops=2

0000  02 2E 4C                               PLAYSONG                      ref=0x4C2E (XMI[46]=gu49.xmi)
0003  09 86 28                               VIDEOREF                      ref=0x2886 (JHEK[134]=ekbu.vdx)
0006  46                                     RESOURCE_CONTEXT_SAVE
0007  9A F1 B4 13 00                         STRCMP_NE_JMP                 start=v[0x0F1], values=[4], target=0x0013
000C  96 F1 B5                               LOADSTRING                    dst=v[0x0F1], values=[5]
000F  07                                     VIDEOFLAG7_ON
0010  09 9A 50                               VIDEOREF                      ref=0x509A (GAMWAV[154]=gen_s_3.vdx)
0013  9A F1 B2 1F 00                         STRCMP_NE_JMP                 start=v[0x0F1], values=[2], target=0x001F
0018  96 F1 B3                               LOADSTRING                    dst=v[0x0F1], values=[3]
001B  07                                     VIDEOFLAG7_ON
001C  09 AA 50                               VIDEOREF                      ref=0x50AA (GAMWAV[170]=gen_s_19.vdx)
001F  9A F1 B0 2B 00                         STRCMP_NE_JMP                 start=v[0x0F1], values=[0], target=0x002B
0024  96 F1 B1                               LOADSTRING                    dst=v[0x0F1], values=[1]
0027  07                                     VIDEOFLAG7_ON
0028  09 9E 50                               VIDEOREF                      ref=0x509E (GAMWAV[158]=gen_s_7.vdx)
002B  47                                     RESOURCE_CONTEXT_RESTORE
002C  2C 33 0C 08                            SET_HOTSPOT_TOP               target=0x0C33, cursor=0x08
0030  2D 35 0C 06                            SET_HOTSPOT_BOTTOM            target=0x0C35, cursor=0x06
0034  45 47 0C                               SET_HOTSPOT_LEFT              target=0x0C47
0037  44 47 0C                               SET_HOTSPOT_RIGHT             target=0x0C47
003A  96 19 62 73 73 73 77 62 73 73 73 77 62 73 73 73 77 62 73 73 73 F7 LOADSTRING                    dst=v[0x019], values=[50, 67, 67, 67, 71, 50, 67, 67, 67, 71, 50, 67, 67, 67, 71, 50, 67, 67, 67, 71]
0050  9A 19 77 73 73 73 62 77 73 73 73 62 77 73 73 73 62 77 73 73 73 E2 6B 00 STRCMP_NE_JMP                 start=v[0x019], values=[71, 67, 67, 67, 50, 71, 67, 67, 67, 50, 71, 67, 67, 67, 50, 71, 67, 67, 67, 50], target=0x006B
0068  15 27 0C                               JMP                           target=0x0C27
006B  0B                                     INPUTLOOPSTART
006C  A3 19 F3 7D 00                         STRCMP_EQ_JMP                 start=v[0x019], values=[67], target=0x007D
0071  0D 9F 00 3A 01 D8 00 83 01 C1 01 09    HOTSPOT_RECT                  left=0x009F, top=0x013A, right=0x00D8, bottom=0x0183, target=0x01C1, cursor=0x09
007D  A3 1A F3 8E 00                         STRCMP_EQ_JMP                 start=v[0x01A], values=[67], target=0x008E
0082  0D DF 00 39 01 1C 01 84 01 CC 01 0A    HOTSPOT_RECT                  left=0x00DF, top=0x0139, right=0x011C, bottom=0x0184, target=0x01CC, cursor=0x0A
008E  A3 1B F3 9F 00                         STRCMP_EQ_JMP                 start=v[0x01B], values=[67], target=0x009F
0093  0D 1F 01 3A 01 60 01 84 01 D7 01 09    HOTSPOT_RECT                  left=0x011F, top=0x013A, right=0x0160, bottom=0x0184, target=0x01D7, cursor=0x09
009F  A3 1C F3 B0 00                         STRCMP_EQ_JMP                 start=v[0x01C], values=[67], target=0x00B0
00A4  0D 62 01 3A 01 A0 01 84 01 E2 01 0A    HOTSPOT_RECT                  left=0x0162, top=0x013A, right=0x01A0, bottom=0x0184, target=0x01E2, cursor=0x0A
00B0  A3 1D F3 C1 00                         STRCMP_EQ_JMP                 start=v[0x01D], values=[67], target=0x00C1
00B5  0D A8 01 3A 01 E2 01 84 01 ED 01 09    HOTSPOT_RECT                  left=0x01A8, top=0x013A, right=0x01E2, bottom=0x0184, target=0x01ED, cursor=0x09
00C1  A3 1E F3 D2 00                         STRCMP_EQ_JMP                 start=v[0x01E], values=[67], target=0x00D2
00C6  0D A9 00 F8 00 DF 00 3A 01 F8 01 0A    HOTSPOT_RECT                  left=0x00A9, top=0x00F8, right=0x00DF, bottom=0x013A, target=0x01F8, cursor=0x0A
00D2  A3 1F F3 E3 00                         STRCMP_EQ_JMP                 start=v[0x01F], values=[67], target=0x00E3
00D7  0D E6 00 F8 00 1E 01 39 01 03 02 09    HOTSPOT_RECT                  left=0x00E6, top=0x00F8, right=0x011E, bottom=0x0139, target=0x0203, cursor=0x09
00E3  A3 20 F3 F4 00                         STRCMP_EQ_JMP                 start=v[0x020], values=[67], target=0x00F4
00E8  0D 22 01 F8 00 5D 01 39 01 0E 02 0A    HOTSPOT_RECT                  left=0x0122, top=0x00F8, right=0x015D, bottom=0x0139, target=0x020E, cursor=0x0A
00F4  A3 21 F3 05 01                         STRCMP_EQ_JMP                 start=v[0x021], values=[67], target=0x0105
00F9  0D 60 01 F8 00 9A 01 3A 01 19 02 09    HOTSPOT_RECT                  left=0x0160, top=0x00F8, right=0x019A, bottom=0x013A, target=0x0219, cursor=0x09
0105  A3 22 F3 16 01                         STRCMP_EQ_JMP                 start=v[0x022], values=[67], target=0x0116
010A  0D A0 01 F8 00 D8 01 39 01 24 02 0A    HOTSPOT_RECT                  left=0x01A0, top=0x00F8, right=0x01D8, bottom=0x0139, target=0x0224, cursor=0x0A
0116  A3 23 F3 27 01                         STRCMP_EQ_JMP                 start=v[0x023], values=[67], target=0x0127
011B  0D B2 00 BE 00 E6 00 F8 00 2F 02 09    HOTSPOT_RECT                  left=0x00B2, top=0x00BE, right=0x00E6, bottom=0x00F8, target=0x022F, cursor=0x09
0127  A3 24 F3 38 01                         STRCMP_EQ_JMP                 start=v[0x024], values=[67], target=0x0138
012C  0D EC 00 BE 00 22 01 F8 00 3A 02 0A    HOTSPOT_RECT                  left=0x00EC, top=0x00BE, right=0x0122, bottom=0x00F8, target=0x023A, cursor=0x0A
0138  A3 25 F3 49 01                         STRCMP_EQ_JMP                 start=v[0x025], values=[67], target=0x0149
013D  0D 23 01 BE 00 5B 01 F8 00 45 02 09    HOTSPOT_RECT                  left=0x0123, top=0x00BE, right=0x015B, bottom=0x00F8, target=0x0245, cursor=0x09
0149  A3 26 F3 5A 01                         STRCMP_EQ_JMP                 start=v[0x026], values=[67], target=0x015A
014E  0D 5D 01 BD 00 94 01 F7 00 50 02 0A    HOTSPOT_RECT                  left=0x015D, top=0x00BD, right=0x0194, bottom=0x00F7, target=0x0250, cursor=0x0A
015A  A3 27 F3 6B 01                         STRCMP_EQ_JMP                 start=v[0x027], values=[67], target=0x016B
015F  0D 9C 01 BE 00 CE 01 F8 00 5B 02 09    HOTSPOT_RECT                  left=0x019C, top=0x00BE, right=0x01CE, bottom=0x00F8, target=0x025B, cursor=0x09
016B  A3 28 F3 7C 01                         STRCMP_EQ_JMP                 start=v[0x028], values=[67], target=0x017C
0170  0D BC 00 8D 00 EB 00 BE 00 66 02 0A    HOTSPOT_RECT                  left=0x00BC, top=0x008D, right=0x00EB, bottom=0x00BE, target=0x0266, cursor=0x0A
017C  A3 29 F3 8D 01                         STRCMP_EQ_JMP                 start=v[0x029], values=[67], target=0x018D
0181  0D F1 00 8D 00 23 01 BE 00 71 02 09    HOTSPOT_RECT                  left=0x00F1, top=0x008D, right=0x0123, bottom=0x00BE, target=0x0271, cursor=0x09
018D  A3 2A F3 9E 01                         STRCMP_EQ_JMP                 start=v[0x02A], values=[67], target=0x019E
0192  0D 25 01 8D 00 59 01 BE 00 7C 02 0A    HOTSPOT_RECT                  left=0x0125, top=0x008D, right=0x0159, bottom=0x00BE, target=0x027C, cursor=0x0A
019E  A3 2B F3 AF 01                         STRCMP_EQ_JMP                 start=v[0x02B], values=[67], target=0x01AF
01A3  0D 5C 01 8D 00 90 01 BE 00 87 02 09    HOTSPOT_RECT                  left=0x015C, top=0x008D, right=0x0190, bottom=0x00BE, target=0x0287, cursor=0x09
01AF  A3 2C F3 C0 01                         STRCMP_EQ_JMP                 start=v[0x02C], values=[67], target=0x01C0
01B4  0D 95 01 8D 00 C7 01 BE 00 92 02 0A    HOTSPOT_RECT                  left=0x0195, top=0x008D, right=0x01C7, bottom=0x00BE, target=0x0292, cursor=0x0A
01C0  13                                     INPUTLOOPEND
01C1  96 00 61 B1                            LOADSTRING                    dst=v[0x000], values=[49, 1]
01C5  A4 02 19 00                            MOV                           dst=v[0x002], src=0x0019
01C9  15 F4 04                               JMP                           target=0x04F4
01CC  96 00 62 B1                            LOADSTRING                    dst=v[0x000], values=[50, 1]
01D0  A4 02 1A 00                            MOV                           dst=v[0x002], src=0x001A
01D4  15 F4 04                               JMP                           target=0x04F4
01D7  96 00 63 B1                            LOADSTRING                    dst=v[0x000], values=[51, 1]
01DB  A4 02 1B 00                            MOV                           dst=v[0x002], src=0x001B
01DF  15 F4 04                               JMP                           target=0x04F4
01E2  96 00 64 B1                            LOADSTRING                    dst=v[0x000], values=[52, 1]
01E6  A4 02 1C 00                            MOV                           dst=v[0x002], src=0x001C
01EA  15 F4 04                               JMP                           target=0x04F4
01ED  96 00 65 B1                            LOADSTRING                    dst=v[0x000], values=[53, 1]
01F1  A4 02 1D 00                            MOV                           dst=v[0x002], src=0x001D
01F5  15 F4 04                               JMP                           target=0x04F4
01F8  96 00 61 B2                            LOADSTRING                    dst=v[0x000], values=[49, 2]
01FC  A4 02 1E 00                            MOV                           dst=v[0x002], src=0x001E
0200  15 F4 04                               JMP                           target=0x04F4
0203  96 00 62 B2                            LOADSTRING                    dst=v[0x000], values=[50, 2]
0207  A4 02 1F 00                            MOV                           dst=v[0x002], src=0x001F
020B  15 F4 04                               JMP                           target=0x04F4
020E  96 00 63 B2                            LOADSTRING                    dst=v[0x000], values=[51, 2]
0212  A4 02 20 00                            MOV                           dst=v[0x002], src=0x0020
0216  15 F4 04                               JMP                           target=0x04F4
0219  96 00 64 B2                            LOADSTRING                    dst=v[0x000], values=[52, 2]
021D  A4 02 21 00                            MOV                           dst=v[0x002], src=0x0021
0221  15 F4 04                               JMP                           target=0x04F4
0224  96 00 65 B2                            LOADSTRING                    dst=v[0x000], values=[53, 2]
0228  A4 02 22 00                            MOV                           dst=v[0x002], src=0x0022
022C  15 F4 04                               JMP                           target=0x04F4
022F  96 00 61 B3                            LOADSTRING                    dst=v[0x000], values=[49, 3]
0233  A4 02 23 00                            MOV                           dst=v[0x002], src=0x0023
0237  15 F4 04                               JMP                           target=0x04F4
023A  96 00 62 B3                            LOADSTRING                    dst=v[0x000], values=[50, 3]
023E  A4 02 24 00                            MOV                           dst=v[0x002], src=0x0024
0242  15 F4 04                               JMP                           target=0x04F4
0245  96 00 63 B3                            LOADSTRING                    dst=v[0x000], values=[51, 3]
0249  A4 02 25 00                            MOV                           dst=v[0x002], src=0x0025
024D  15 F4 04                               JMP                           target=0x04F4
0250  96 00 64 B3                            LOADSTRING                    dst=v[0x000], values=[52, 3]
0254  A4 02 26 00                            MOV                           dst=v[0x002], src=0x0026
0258  15 F4 04                               JMP                           target=0x04F4
025B  96 00 65 B3                            LOADSTRING                    dst=v[0x000], values=[53, 3]
025F  A4 02 27 00                            MOV                           dst=v[0x002], src=0x0027
0263  15 F4 04                               JMP                           target=0x04F4
0266  96 00 61 B4                            LOADSTRING                    dst=v[0x000], values=[49, 4]
026A  A4 02 28 00                            MOV                           dst=v[0x002], src=0x0028
026E  15 F4 04                               JMP                           target=0x04F4
0271  96 00 62 B4                            LOADSTRING                    dst=v[0x000], values=[50, 4]
0275  A4 02 29 00                            MOV                           dst=v[0x002], src=0x0029
0279  15 F4 04                               JMP                           target=0x04F4
027C  96 00 63 B4                            LOADSTRING                    dst=v[0x000], values=[51, 4]
0280  A4 02 2A 00                            MOV                           dst=v[0x002], src=0x002A
0284  15 F4 04                               JMP                           target=0x04F4
0287  96 00 64 B4                            LOADSTRING                    dst=v[0x000], values=[52, 4]
028B  A4 02 2B 00                            MOV                           dst=v[0x002], src=0x002B
028F  15 F4 04                               JMP                           target=0x04F4
0292  96 00 65 B4                            LOADSTRING                    dst=v[0x000], values=[53, 4]
0296  A4 02 2C 00                            MOV                           dst=v[0x002], src=0x002C
029A  15 F4 04                               JMP                           target=0x04F4
029D  96 4A 23 61 23 62 23 63 23 E4          LOADSTRING                    dst=v[0x04A], values=[v[0x000], v[0x001], v[0x002], v[0x003]]
02A7  96 00 30 30 61 B1                      LOADSTRING                    dst=v[0x000], values=[0, 0, 49, 1]
02AD  9A 17 23 63 23 E4 C0 02                STRCMP_NE_JMP                 start=v[0x017], values=[v[0x002], v[0x003]], target=0x02C0
02B5  96 16 7C 23 61 23 E2                   LOADSTRING                    dst=v[0x016], values=[grid[v[0x000],v[0x001]]]
02BC  96 00 31 B9                            LOADSTRING                    dst=v[0x000], values=[1, 9]
02C0  9A 02 E5 CD 02                         STRCMP_NE_JMP                 start=v[0x002], values=[53], target=0x02CD
02C5  96 02 E1                               LOADSTRING                    dst=v[0x002], values=[49]
02C8  9F 03                                  INC                           var=v[0x003]
02CA  15 CF 02                               JMP                           target=0x02CF
02CD  9F 02                                  INC                           var=v[0x002]
02CF  9A 01 B9 DC 02                         STRCMP_NE_JMP                 start=v[0x001], values=[9], target=0x02DC
02D4  96 01 B0                               LOADSTRING                    dst=v[0x001], values=[0]
02D7  9F 00                                  INC                           var=v[0x000]
02D9  15 DE 02                               JMP                           target=0x02DE
02DC  9F 01                                  INC                           var=v[0x001]
02DE  A3 00 32 B0 E7 02                      STRCMP_EQ_JMP                 start=v[0x000], values=[2, 0], target=0x02E7
02E4  15 AD 02                               JMP                           target=0x02AD
02E7  A4 00 4A 00                            MOV                           dst=v[0x000], src=0x004A
02EB  A4 01 4B 00                            MOV                           dst=v[0x001], src=0x004B
02EF  A4 02 4C 00                            MOV                           dst=v[0x002], src=0x004C
02F3  A4 03 4D 00                            MOV                           dst=v[0x003], src=0x004D
02F7  17 00                                  RET                           value=0x00
02F9  96 4A 23 76 23 77 23 78 23 F9          LOADSTRING                    dst=v[0x04A], values=[v[0x015], v[0x016], v[0x017], v[0x018]]
0303  96 15 30 30 61 B1                      LOADSTRING                    dst=v[0x015], values=[0, 0, 49, 1]
0309  9A 00 23 78 23 F9 1E 03                STRCMP_NE_JMP                 start=v[0x000], values=[v[0x017], v[0x018]], target=0x031E
0311  96 50 F3                               LOADSTRING                    dst=v[0x050], values=[67]
0314  39 35 B5 23 76 23 F7                   GRID_SWAP                     row1=5, col1=5, row2=v[0x015], col2=v[0x016]
031B  15 45 03                               JMP                           target=0x0345
031E  9A 17 E5 2B 03                         STRCMP_NE_JMP                 start=v[0x017], values=[53], target=0x032B
0323  96 17 E1                               LOADSTRING                    dst=v[0x017], values=[49]
0326  9F 18                                  INC                           var=v[0x018]
0328  15 2D 03                               JMP                           target=0x032D
032B  9F 17                                  INC                           var=v[0x017]
032D  9A 16 B9 3A 03                         STRCMP_NE_JMP                 start=v[0x016], values=[9], target=0x033A
0332  96 16 B0                               LOADSTRING                    dst=v[0x016], values=[0]
0335  9F 15                                  INC                           var=v[0x015]
0337  15 3C 03                               JMP                           target=0x033C
033A  9F 16                                  INC                           var=v[0x016]
033C  A3 15 32 B0 45 03                      STRCMP_EQ_JMP                 start=v[0x015], values=[2, 0], target=0x0345
0342  15 09 03                               JMP                           target=0x0309
0345  A4 15 4A 00                            MOV                           dst=v[0x015], src=0x004A
0349  A4 16 4B 00                            MOV                           dst=v[0x016], src=0x004B
034D  A4 17 4C 00                            MOV                           dst=v[0x017], src=0x004C
0351  A4 18 4D 00                            MOV                           dst=v[0x018], src=0x004D
0355  17 00                                  RET                           value=0x00
0357  9F 0D                                  INC                           var=v[0x00D]
0359  96 4A 23 76 23 77 23 78 23 F9          LOADSTRING                    dst=v[0x04A], values=[v[0x015], v[0x016], v[0x017], v[0x018]]
0363  96 15 32 30 61 B1                      LOADSTRING                    dst=v[0x015], values=[2, 0, 49, 1]
0369  9A 0B 23 78 23 F9 7F 03                STRCMP_NE_JMP                 start=v[0x00B], values=[v[0x017], v[0x018]], target=0x037F
0371  A4 50 46 00                            MOV                           dst=v[0x050], src=0x0046
0375  39 35 B5 23 76 23 F7                   GRID_SWAP                     row1=5, col1=5, row2=v[0x015], col2=v[0x016]
037C  15 A6 03                               JMP                           target=0x03A6
037F  9A 17 E5 8C 03                         STRCMP_NE_JMP                 start=v[0x017], values=[53], target=0x038C
0384  96 17 E1                               LOADSTRING                    dst=v[0x017], values=[49]
0387  9F 18                                  INC                           var=v[0x018]
0389  15 8E 03                               JMP                           target=0x038E
038C  9F 17                                  INC                           var=v[0x017]
038E  9A 16 B9 9B 03                         STRCMP_NE_JMP                 start=v[0x016], values=[9], target=0x039B
0393  96 16 B0                               LOADSTRING                    dst=v[0x016], values=[0]
0396  9F 15                                  INC                           var=v[0x015]
0398  15 9D 03                               JMP                           target=0x039D
039B  9F 16                                  INC                           var=v[0x016]
039D  A3 15 34 B0 A6 03                      STRCMP_EQ_JMP                 start=v[0x015], values=[4, 0], target=0x03A6
03A3  15 69 03                               JMP                           target=0x0369
03A6  A4 15 4A 00                            MOV                           dst=v[0x015], src=0x004A
03AA  A4 16 4B 00                            MOV                           dst=v[0x016], src=0x004B
03AE  A4 17 4C 00                            MOV                           dst=v[0x017], src=0x004C
03B2  A4 18 4D 00                            MOV                           dst=v[0x018], src=0x004D
03B6  17 00                                  RET                           value=0x00
03B8  A4 03 17 00                            MOV                           dst=v[0x003], src=0x0017
03BC  A4 05 17 00                            MOV                           dst=v[0x005], src=0x0017
03C0  A4 07 17 00                            MOV                           dst=v[0x007], src=0x0017
03C4  A4 09 17 00                            MOV                           dst=v[0x009], src=0x0017
03C8  A4 04 18 00                            MOV                           dst=v[0x004], src=0x0018
03CC  A4 06 18 00                            MOV                           dst=v[0x006], src=0x0018
03D0  A4 08 18 00                            MOV                           dst=v[0x008], src=0x0018
03D4  A4 0A 18 00                            MOV                           dst=v[0x00A], src=0x0018
03D8  96 0B 23 78 23 F9                      LOADSTRING                    dst=v[0x00B], values=[v[0x017], v[0x018]]
03DE  96 45 B0                               LOADSTRING                    dst=v[0x045], values=[0]
03E1  A3 03 40 C0 FE 03                      STRCMP_EQ_JMP                 start=v[0x003], values=[16, 16], target=0x03FE
03E7  96 17 23 64 23 E5                      LOADSTRING                    dst=v[0x017], values=[v[0x003], v[0x004]]
03ED  18 9D 02                               CALL                          target=0x029D
03F0  A3 16 F3 FE 03                         STRCMP_EQ_JMP                 start=v[0x016], values=[67], target=0x03FE
03F5  A3 16 23 E3 FE 03                      STRCMP_EQ_JMP                 start=v[0x016], values=[v[0x002]], target=0x03FE
03FB  96 45 B1                               LOADSTRING                    dst=v[0x045], values=[1]
03FE  A3 05 40 C0 1B 04                      STRCMP_EQ_JMP                 start=v[0x005], values=[16, 16], target=0x041B
0404  96 17 23 66 23 E7                      LOADSTRING                    dst=v[0x017], values=[v[0x005], v[0x006]]
040A  18 9D 02                               CALL                          target=0x029D
040D  A3 16 F3 1B 04                         STRCMP_EQ_JMP                 start=v[0x016], values=[67], target=0x041B
0412  A3 16 23 E3 1B 04                      STRCMP_EQ_JMP                 start=v[0x016], values=[v[0x002]], target=0x041B
0418  96 45 B1                               LOADSTRING                    dst=v[0x045], values=[1]
041B  A3 07 40 C0 38 04                      STRCMP_EQ_JMP                 start=v[0x007], values=[16, 16], target=0x0438
0421  96 17 23 68 23 E9                      LOADSTRING                    dst=v[0x017], values=[v[0x007], v[0x008]]
0427  18 9D 02                               CALL                          target=0x029D
042A  A3 16 F3 38 04                         STRCMP_EQ_JMP                 start=v[0x016], values=[67], target=0x0438
042F  A3 16 23 E3 38 04                      STRCMP_EQ_JMP                 start=v[0x016], values=[v[0x002]], target=0x0438
0435  96 45 B1                               LOADSTRING                    dst=v[0x045], values=[1]
0438  A3 09 40 C0 55 04                      STRCMP_EQ_JMP                 start=v[0x009], values=[16, 16], target=0x0455
043E  96 17 23 6A 23 EB                      LOADSTRING                    dst=v[0x017], values=[v[0x009], v[0x00A]]
0444  18 9D 02                               CALL                          target=0x029D
0447  A3 16 F3 55 04                         STRCMP_EQ_JMP                 start=v[0x016], values=[67], target=0x0455
044C  A3 16 23 E3 55 04                      STRCMP_EQ_JMP                 start=v[0x016], values=[v[0x002]], target=0x0455
0452  96 45 B1                               LOADSTRING                    dst=v[0x045], values=[1]
0455  9A 03 E1 5E 04                         STRCMP_NE_JMP                 start=v[0x003], values=[49], target=0x045E
045A  96 03 40 C0                            LOADSTRING                    dst=v[0x003], values=[16, 16]
045E  9A 05 E1 67 04                         STRCMP_NE_JMP                 start=v[0x005], values=[49], target=0x0467
0463  96 05 40 C0                            LOADSTRING                    dst=v[0x005], values=[16, 16]
0467  9A 07 E5 70 04                         STRCMP_NE_JMP                 start=v[0x007], values=[53], target=0x0470
046C  96 07 40 C0                            LOADSTRING                    dst=v[0x007], values=[16, 16]
0470  9A 09 E5 79 04                         STRCMP_NE_JMP                 start=v[0x009], values=[53], target=0x0479
0475  96 09 40 C0                            LOADSTRING                    dst=v[0x009], values=[16, 16]
0479  9A 04 B1 82 04                         STRCMP_NE_JMP                 start=v[0x004], values=[1], target=0x0482
047E  96 03 40 C0                            LOADSTRING                    dst=v[0x003], values=[16, 16]
0482  9A 06 B4 8B 04                         STRCMP_NE_JMP                 start=v[0x006], values=[4], target=0x048B
0487  96 05 40 C0                            LOADSTRING                    dst=v[0x005], values=[16, 16]
048B  9A 08 B1 94 04                         STRCMP_NE_JMP                 start=v[0x008], values=[1], target=0x0494
0490  96 07 40 C0                            LOADSTRING                    dst=v[0x007], values=[16, 16]
0494  9A 0A B4 9D 04                         STRCMP_NE_JMP                 start=v[0x00A], values=[4], target=0x049D
0499  96 09 40 C0                            LOADSTRING                    dst=v[0x009], values=[16, 16]
049D  A3 03 C0 A4 04                         STRCMP_EQ_JMP                 start=v[0x003], values=[16], target=0x04A4
04A2  A0 03                                  DEC                           var=v[0x003]
04A4  A3 05 C0 AB 04                         STRCMP_EQ_JMP                 start=v[0x005], values=[16], target=0x04AB
04A9  A0 05                                  DEC                           var=v[0x005]
04AB  A3 07 C0 B2 04                         STRCMP_EQ_JMP                 start=v[0x007], values=[16], target=0x04B2
04B0  9F 07                                  INC                           var=v[0x007]
04B2  A3 09 C0 B9 04                         STRCMP_EQ_JMP                 start=v[0x009], values=[16], target=0x04B9
04B7  9F 09                                  INC                           var=v[0x009]
04B9  A3 04 C0 C0 04                         STRCMP_EQ_JMP                 start=v[0x004], values=[16], target=0x04C0
04BE  A0 04                                  DEC                           var=v[0x004]
04C0  A3 06 C0 C7 04                         STRCMP_EQ_JMP                 start=v[0x006], values=[16], target=0x04C7
04C5  9F 06                                  INC                           var=v[0x006]
04C7  A3 08 C0 CE 04                         STRCMP_EQ_JMP                 start=v[0x008], values=[16], target=0x04CE
04CC  A0 08                                  DEC                           var=v[0x008]
04CE  A3 0A C0 D5 04                         STRCMP_EQ_JMP                 start=v[0x00A], values=[16], target=0x04D5
04D3  9F 0A                                  INC                           var=v[0x00A]
04D5  A3 03 40 40 40 40 40 40 40 C0 E4 04    STRCMP_EQ_JMP                 start=v[0x003], values=[16, 16, 16, 16, 16, 16, 16, 16], target=0x04E4
04E1  15 E1 03                               JMP                           target=0x03E1
04E4  9A 45 B0 F2 04                         STRCMP_NE_JMP                 start=v[0x045], values=[0], target=0x04F2
04E9  18 57 03                               CALL                          target=0x0357
04EC  96 41 23 6C 23 ED                      LOADSTRING                    dst=v[0x041], values=[v[0x00B], v[0x00C]]
04F2  17 00                                  RET                           value=0x00
04F4  96 2D 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 B0 LOADSTRING                    dst=v[0x02D], values=[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
050A  A4 0E 00 00                            MOV                           dst=v[0x00E], src=0x0000
050E  A4 10 00 00                            MOV                           dst=v[0x010], src=0x0000
0512  A4 12 00 00                            MOV                           dst=v[0x012], src=0x0000
0516  A4 14 00 00                            MOV                           dst=v[0x014], src=0x0000
051A  A4 0F 01 00                            MOV                           dst=v[0x00F], src=0x0001
051E  A4 11 01 00                            MOV                           dst=v[0x011], src=0x0001
0522  A4 13 01 00                            MOV                           dst=v[0x013], src=0x0001
0526  A4 15 01 00                            MOV                           dst=v[0x015], src=0x0001
052A  96 46 B2                               LOADSTRING                    dst=v[0x046], values=[2]
052D  96 0B 23 61 23 E2                      LOADSTRING                    dst=v[0x00B], values=[v[0x000], v[0x001]]
0533  18 57 03                               CALL                          target=0x0357
0536  96 46 B1                               LOADSTRING                    dst=v[0x046], values=[1]
0539  96 0D B0                               LOADSTRING                    dst=v[0x00D], values=[0]
053C  9A 0E E1 45 05                         STRCMP_NE_JMP                 start=v[0x00E], values=[49], target=0x0545
0541  96 0E 40 C0                            LOADSTRING                    dst=v[0x00E], values=[16, 16]
0545  9A 10 E1 4E 05                         STRCMP_NE_JMP                 start=v[0x010], values=[49], target=0x054E
054A  96 10 40 C0                            LOADSTRING                    dst=v[0x010], values=[16, 16]
054E  9A 12 E5 57 05                         STRCMP_NE_JMP                 start=v[0x012], values=[53], target=0x0557
0553  96 12 40 C0                            LOADSTRING                    dst=v[0x012], values=[16, 16]
0557  9A 14 E5 60 05                         STRCMP_NE_JMP                 start=v[0x014], values=[53], target=0x0560
055C  96 14 40 C0                            LOADSTRING                    dst=v[0x014], values=[16, 16]
0560  9A 0F B1 69 05                         STRCMP_NE_JMP                 start=v[0x00F], values=[1], target=0x0569
0565  96 0E 40 C0                            LOADSTRING                    dst=v[0x00E], values=[16, 16]
0569  9A 11 B4 72 05                         STRCMP_NE_JMP                 start=v[0x011], values=[4], target=0x0572
056E  96 10 40 C0                            LOADSTRING                    dst=v[0x010], values=[16, 16]
0572  9A 13 B1 7B 05                         STRCMP_NE_JMP                 start=v[0x013], values=[1], target=0x057B
0577  96 12 40 C0                            LOADSTRING                    dst=v[0x012], values=[16, 16]
057B  9A 15 B4 84 05                         STRCMP_NE_JMP                 start=v[0x015], values=[4], target=0x0584
0580  96 14 40 C0                            LOADSTRING                    dst=v[0x014], values=[16, 16]
0584  A3 0E C0 8B 05                         STRCMP_EQ_JMP                 start=v[0x00E], values=[16], target=0x058B
0589  A0 0E                                  DEC                           var=v[0x00E]
058B  A3 10 C0 92 05                         STRCMP_EQ_JMP                 start=v[0x010], values=[16], target=0x0592
0590  A0 10                                  DEC                           var=v[0x010]
0592  A3 12 C0 99 05                         STRCMP_EQ_JMP                 start=v[0x012], values=[16], target=0x0599
0597  9F 12                                  INC                           var=v[0x012]
0599  A3 14 C0 A0 05                         STRCMP_EQ_JMP                 start=v[0x014], values=[16], target=0x05A0
059E  9F 14                                  INC                           var=v[0x014]
05A0  A3 0F C0 A7 05                         STRCMP_EQ_JMP                 start=v[0x00F], values=[16], target=0x05A7
05A5  A0 0F                                  DEC                           var=v[0x00F]
05A7  A3 11 C0 AE 05                         STRCMP_EQ_JMP                 start=v[0x011], values=[16], target=0x05AE
05AC  9F 11                                  INC                           var=v[0x011]
05AE  A3 13 C0 B5 05                         STRCMP_EQ_JMP                 start=v[0x013], values=[16], target=0x05B5
05B3  A0 13                                  DEC                           var=v[0x013]
05B5  A3 15 C0 BC 05                         STRCMP_EQ_JMP                 start=v[0x015], values=[16], target=0x05BC
05BA  9F 15                                  INC                           var=v[0x015]
05BC  A3 0E 40 C0 DA 05                      STRCMP_EQ_JMP                 start=v[0x00E], values=[16, 16], target=0x05DA
05C2  96 17 23 6F 23 F0                      LOADSTRING                    dst=v[0x017], values=[v[0x00E], v[0x00F]]
05C8  18 9D 02                               CALL                          target=0x029D
05CB  9A 16 F3 D6 05                         STRCMP_NE_JMP                 start=v[0x016], values=[67], target=0x05D6
05D0  18 B8 03                               CALL                          target=0x03B8
05D3  15 DA 05                               JMP                           target=0x05DA
05D6  96 0E 40 C0                            LOADSTRING                    dst=v[0x00E], values=[16, 16]
05DA  A3 10 40 C0 F8 05                      STRCMP_EQ_JMP                 start=v[0x010], values=[16, 16], target=0x05F8
05E0  96 17 23 71 23 F2                      LOADSTRING                    dst=v[0x017], values=[v[0x010], v[0x011]]
05E6  18 9D 02                               CALL                          target=0x029D
05E9  9A 16 F3 F4 05                         STRCMP_NE_JMP                 start=v[0x016], values=[67], target=0x05F4
05EE  18 B8 03                               CALL                          target=0x03B8
05F1  15 F8 05                               JMP                           target=0x05F8
05F4  96 10 40 C0                            LOADSTRING                    dst=v[0x010], values=[16, 16]
05F8  A3 12 40 C0 16 06                      STRCMP_EQ_JMP                 start=v[0x012], values=[16, 16], target=0x0616
05FE  96 17 23 73 23 F4                      LOADSTRING                    dst=v[0x017], values=[v[0x012], v[0x013]]
0604  18 9D 02                               CALL                          target=0x029D
0607  9A 16 F3 12 06                         STRCMP_NE_JMP                 start=v[0x016], values=[67], target=0x0612
060C  18 B8 03                               CALL                          target=0x03B8
060F  15 16 06                               JMP                           target=0x0616
0612  96 12 40 C0                            LOADSTRING                    dst=v[0x012], values=[16, 16]
0616  A3 14 40 C0 34 06                      STRCMP_EQ_JMP                 start=v[0x014], values=[16, 16], target=0x0634
061C  96 17 23 75 23 F6                      LOADSTRING                    dst=v[0x017], values=[v[0x014], v[0x015]]
0622  18 9D 02                               CALL                          target=0x029D
0625  9A 16 F3 30 06                         STRCMP_NE_JMP                 start=v[0x016], values=[67], target=0x0630
062A  18 B8 03                               CALL                          target=0x03B8
062D  15 34 06                               JMP                           target=0x0634
0630  96 14 40 C0                            LOADSTRING                    dst=v[0x014], values=[16, 16]
0634  A3 0E 40 40 40 40 40 40 40 C0 43 06    STRCMP_EQ_JMP                 start=v[0x00E], values=[16, 16, 16, 16, 16, 16, 16, 16], target=0x0643
0640  15 3C 05                               JMP                           target=0x053C
0643  9A 0D B0 4B 06                         STRCMP_NE_JMP                 start=v[0x00D], values=[0], target=0x064B
0648  15 50 00                               JMP                           target=0x0050
064B  9A 0D B1 5B 06                         STRCMP_NE_JMP                 start=v[0x00D], values=[1], target=0x065B
0650  A4 03 41 00                            MOV                           dst=v[0x003], src=0x0041
0654  A4 04 42 00                            MOV                           dst=v[0x004], src=0x0042
0658  15 73 0B                               JMP                           target=0x0B73
065B  0A                                     VIDEOFLAG5_ON
065C  07                                     VIDEOFLAG7_ON
065D  46                                     RESOURCE_CONTEXT_SAVE
065E  09 8E 50                               VIDEOREF                      ref=0x508E (GAMWAV[142]=gen_e_8.vdx)
0661  47                                     RESOURCE_CONTEXT_RESTORE
0662  0B                                     INPUTLOOPSTART
0663  A3 2D B0 74 06                         STRCMP_EQ_JMP                 start=v[0x02D], values=[0], target=0x0674
0668  0D 9F 00 3A 01 D8 00 83 01 B8 07 07    HOTSPOT_RECT                  left=0x009F, top=0x013A, right=0x00D8, bottom=0x0183, target=0x07B8, cursor=0x07
0674  A3 2E B0 85 06                         STRCMP_EQ_JMP                 start=v[0x02E], values=[0], target=0x0685
0679  0D DF 00 39 01 1C 01 84 01 C7 07 07    HOTSPOT_RECT                  left=0x00DF, top=0x0139, right=0x011C, bottom=0x0184, target=0x07C7, cursor=0x07
0685  A3 2F B0 96 06                         STRCMP_EQ_JMP                 start=v[0x02F], values=[0], target=0x0696
068A  0D 1F 01 3A 01 60 01 84 01 D6 07 07    HOTSPOT_RECT                  left=0x011F, top=0x013A, right=0x0160, bottom=0x0184, target=0x07D6, cursor=0x07
0696  A3 30 B0 A7 06                         STRCMP_EQ_JMP                 start=v[0x030], values=[0], target=0x06A7
069B  0D 62 01 3A 01 A0 01 84 01 E5 07 07    HOTSPOT_RECT                  left=0x0162, top=0x013A, right=0x01A0, bottom=0x0184, target=0x07E5, cursor=0x07
06A7  A3 31 B0 B8 06                         STRCMP_EQ_JMP                 start=v[0x031], values=[0], target=0x06B8
06AC  0D A8 01 3A 01 E2 01 84 01 F4 07 07    HOTSPOT_RECT                  left=0x01A8, top=0x013A, right=0x01E2, bottom=0x0184, target=0x07F4, cursor=0x07
06B8  A3 32 B0 C9 06                         STRCMP_EQ_JMP                 start=v[0x032], values=[0], target=0x06C9
06BD  0D A9 00 F8 00 DF 00 3A 01 03 08 07    HOTSPOT_RECT                  left=0x00A9, top=0x00F8, right=0x00DF, bottom=0x013A, target=0x0803, cursor=0x07
06C9  A3 33 B0 DA 06                         STRCMP_EQ_JMP                 start=v[0x033], values=[0], target=0x06DA
06CE  0D E6 00 F8 00 1E 01 39 01 12 08 07    HOTSPOT_RECT                  left=0x00E6, top=0x00F8, right=0x011E, bottom=0x0139, target=0x0812, cursor=0x07
06DA  A3 34 B0 EB 06                         STRCMP_EQ_JMP                 start=v[0x034], values=[0], target=0x06EB
06DF  0D 22 01 F8 00 5D 01 39 01 21 08 07    HOTSPOT_RECT                  left=0x0122, top=0x00F8, right=0x015D, bottom=0x0139, target=0x0821, cursor=0x07
06EB  A3 35 B0 FC 06                         STRCMP_EQ_JMP                 start=v[0x035], values=[0], target=0x06FC
06F0  0D 60 01 F8 00 9A 01 3A 01 30 08 07    HOTSPOT_RECT                  left=0x0160, top=0x00F8, right=0x019A, bottom=0x013A, target=0x0830, cursor=0x07
06FC  A3 36 B0 0D 07                         STRCMP_EQ_JMP                 start=v[0x036], values=[0], target=0x070D
0701  0D A0 01 F8 00 D8 01 39 01 3F 08 07    HOTSPOT_RECT                  left=0x01A0, top=0x00F8, right=0x01D8, bottom=0x0139, target=0x083F, cursor=0x07
070D  A3 37 B0 1E 07                         STRCMP_EQ_JMP                 start=v[0x037], values=[0], target=0x071E
0712  0D B2 00 BE 00 E6 00 F8 00 4E 08 07    HOTSPOT_RECT                  left=0x00B2, top=0x00BE, right=0x00E6, bottom=0x00F8, target=0x084E, cursor=0x07
071E  A3 38 B0 2F 07                         STRCMP_EQ_JMP                 start=v[0x038], values=[0], target=0x072F
0723  0D EC 00 BE 00 22 01 F8 00 5D 08 07    HOTSPOT_RECT                  left=0x00EC, top=0x00BE, right=0x0122, bottom=0x00F8, target=0x085D, cursor=0x07
072F  A3 39 B0 40 07                         STRCMP_EQ_JMP                 start=v[0x039], values=[0], target=0x0740
0734  0D 23 01 BE 00 5B 01 F8 00 6C 08 07    HOTSPOT_RECT                  left=0x0123, top=0x00BE, right=0x015B, bottom=0x00F8, target=0x086C, cursor=0x07
0740  A3 3A B0 51 07                         STRCMP_EQ_JMP                 start=v[0x03A], values=[0], target=0x0751
0745  0D 5D 01 BD 00 94 01 F7 00 7B 08 07    HOTSPOT_RECT                  left=0x015D, top=0x00BD, right=0x0194, bottom=0x00F7, target=0x087B, cursor=0x07
0751  A3 3B B0 62 07                         STRCMP_EQ_JMP                 start=v[0x03B], values=[0], target=0x0762
0756  0D 9C 01 BE 00 CE 01 F8 00 8A 08 07    HOTSPOT_RECT                  left=0x019C, top=0x00BE, right=0x01CE, bottom=0x00F8, target=0x088A, cursor=0x07
0762  A3 3C B0 73 07                         STRCMP_EQ_JMP                 start=v[0x03C], values=[0], target=0x0773
0767  0D BC 00 8D 00 EB 00 BE 00 99 08 07    HOTSPOT_RECT                  left=0x00BC, top=0x008D, right=0x00EB, bottom=0x00BE, target=0x0899, cursor=0x07
0773  A3 3D B0 84 07                         STRCMP_EQ_JMP                 start=v[0x03D], values=[0], target=0x0784
0778  0D F1 00 8D 00 23 01 BE 00 A8 08 07    HOTSPOT_RECT                  left=0x00F1, top=0x008D, right=0x0123, bottom=0x00BE, target=0x08A8, cursor=0x07
0784  A3 3E B0 95 07                         STRCMP_EQ_JMP                 start=v[0x03E], values=[0], target=0x0795
0789  0D 25 01 8D 00 59 01 BE 00 B7 08 07    HOTSPOT_RECT                  left=0x0125, top=0x008D, right=0x0159, bottom=0x00BE, target=0x08B7, cursor=0x07
0795  A3 3F B0 A6 07                         STRCMP_EQ_JMP                 start=v[0x03F], values=[0], target=0x07A6
079A  0D 5C 01 8D 00 90 01 BE 00 C6 08 07    HOTSPOT_RECT                  left=0x015C, top=0x008D, right=0x0190, bottom=0x00BE, target=0x08C6, cursor=0x07
07A6  A3 40 B0 B7 07                         STRCMP_EQ_JMP                 start=v[0x040], values=[0], target=0x07B7
07AB  0D 95 01 8D 00 C7 01 BE 00 D5 08 07    HOTSPOT_RECT                  left=0x0195, top=0x008D, right=0x01C7, bottom=0x00BE, target=0x08D5, cursor=0x07
07B7  13                                     INPUTLOOPEND
07B8  9A 2D B2 C0 07                         STRCMP_NE_JMP                 start=v[0x02D], values=[2], target=0x07C0
07BD  15 50 00                               JMP                           target=0x0050
07C0  96 03 61 B1                            LOADSTRING                    dst=v[0x003], values=[49, 1]
07C4  15 73 0B                               JMP                           target=0x0B73
07C7  9A 2E B2 CF 07                         STRCMP_NE_JMP                 start=v[0x02E], values=[2], target=0x07CF
07CC  15 50 00                               JMP                           target=0x0050
07CF  96 03 62 B1                            LOADSTRING                    dst=v[0x003], values=[50, 1]
07D3  15 73 0B                               JMP                           target=0x0B73
07D6  9A 2F B2 DE 07                         STRCMP_NE_JMP                 start=v[0x02F], values=[2], target=0x07DE
07DB  15 50 00                               JMP                           target=0x0050
07DE  96 03 63 B1                            LOADSTRING                    dst=v[0x003], values=[51, 1]
07E2  15 73 0B                               JMP                           target=0x0B73
07E5  9A 30 B2 ED 07                         STRCMP_NE_JMP                 start=v[0x030], values=[2], target=0x07ED
07EA  15 50 00                               JMP                           target=0x0050
07ED  96 03 64 B1                            LOADSTRING                    dst=v[0x003], values=[52, 1]
07F1  15 73 0B                               JMP                           target=0x0B73
07F4  9A 31 B2 FC 07                         STRCMP_NE_JMP                 start=v[0x031], values=[2], target=0x07FC
07F9  15 50 00                               JMP                           target=0x0050
07FC  96 03 65 B1                            LOADSTRING                    dst=v[0x003], values=[53, 1]
0800  15 73 0B                               JMP                           target=0x0B73
0803  9A 32 B2 0B 08                         STRCMP_NE_JMP                 start=v[0x032], values=[2], target=0x080B
0808  15 50 00                               JMP                           target=0x0050
080B  96 03 61 B2                            LOADSTRING                    dst=v[0x003], values=[49, 2]
080F  15 73 0B                               JMP                           target=0x0B73
0812  9A 33 B2 1A 08                         STRCMP_NE_JMP                 start=v[0x033], values=[2], target=0x081A
0817  15 50 00                               JMP                           target=0x0050
081A  96 03 62 B2                            LOADSTRING                    dst=v[0x003], values=[50, 2]
081E  15 73 0B                               JMP                           target=0x0B73
0821  9A 34 B2 29 08                         STRCMP_NE_JMP                 start=v[0x034], values=[2], target=0x0829
0826  15 50 00                               JMP                           target=0x0050
0829  96 03 63 B2                            LOADSTRING                    dst=v[0x003], values=[51, 2]
082D  15 73 0B                               JMP                           target=0x0B73
0830  9A 35 B2 38 08                         STRCMP_NE_JMP                 start=v[0x035], values=[2], target=0x0838
0835  15 50 00                               JMP                           target=0x0050
0838  96 03 64 B2                            LOADSTRING                    dst=v[0x003], values=[52, 2]
083C  15 73 0B                               JMP                           target=0x0B73
083F  9A 36 B2 47 08                         STRCMP_NE_JMP                 start=v[0x036], values=[2], target=0x0847
0844  15 50 00                               JMP                           target=0x0050
0847  96 03 65 B2                            LOADSTRING                    dst=v[0x003], values=[53, 2]
084B  15 73 0B                               JMP                           target=0x0B73
084E  9A 37 B2 56 08                         STRCMP_NE_JMP                 start=v[0x037], values=[2], target=0x0856
0853  15 50 00                               JMP                           target=0x0050
0856  96 03 61 B3                            LOADSTRING                    dst=v[0x003], values=[49, 3]
085A  15 73 0B                               JMP                           target=0x0B73
085D  9A 38 B2 65 08                         STRCMP_NE_JMP                 start=v[0x038], values=[2], target=0x0865
0862  15 50 00                               JMP                           target=0x0050
0865  96 03 62 B3                            LOADSTRING                    dst=v[0x003], values=[50, 3]
0869  15 73 0B                               JMP                           target=0x0B73
086C  9A 39 B2 74 08                         STRCMP_NE_JMP                 start=v[0x039], values=[2], target=0x0874
0871  15 50 00                               JMP                           target=0x0050
0874  96 03 63 B3                            LOADSTRING                    dst=v[0x003], values=[51, 3]
0878  15 73 0B                               JMP                           target=0x0B73
087B  9A 3A B2 83 08                         STRCMP_NE_JMP                 start=v[0x03A], values=[2], target=0x0883
0880  15 50 00                               JMP                           target=0x0050
0883  96 03 64 B3                            LOADSTRING                    dst=v[0x003], values=[52, 3]
0887  15 73 0B                               JMP                           target=0x0B73
088A  9A 3B B2 92 08                         STRCMP_NE_JMP                 start=v[0x03B], values=[2], target=0x0892
088F  15 50 00                               JMP                           target=0x0050
0892  96 03 65 B3                            LOADSTRING                    dst=v[0x003], values=[53, 3]
0896  15 73 0B                               JMP                           target=0x0B73
0899  9A 3C B2 A1 08                         STRCMP_NE_JMP                 start=v[0x03C], values=[2], target=0x08A1
089E  15 50 00                               JMP                           target=0x0050
08A1  96 03 61 B4                            LOADSTRING                    dst=v[0x003], values=[49, 4]
08A5  15 73 0B                               JMP                           target=0x0B73
08A8  9A 3D B2 B0 08                         STRCMP_NE_JMP                 start=v[0x03D], values=[2], target=0x08B0
08AD  15 50 00                               JMP                           target=0x0050
08B0  96 03 62 B4                            LOADSTRING                    dst=v[0x003], values=[50, 4]
08B4  15 73 0B                               JMP                           target=0x0B73
08B7  9A 3E B2 BF 08                         STRCMP_NE_JMP                 start=v[0x03E], values=[2], target=0x08BF
08BC  15 50 00                               JMP                           target=0x0050
08BF  96 03 63 B4                            LOADSTRING                    dst=v[0x003], values=[51, 4]
08C3  15 73 0B                               JMP                           target=0x0B73
08C6  9A 3F B2 CE 08                         STRCMP_NE_JMP                 start=v[0x03F], values=[2], target=0x08CE
08CB  15 50 00                               JMP                           target=0x0050
08CE  96 03 64 B4                            LOADSTRING                    dst=v[0x003], values=[52, 4]
08D2  15 73 0B                               JMP                           target=0x0B73
08D5  9A 40 B2 DD 08                         STRCMP_NE_JMP                 start=v[0x040], values=[2], target=0x08DD
08DA  15 50 00                               JMP                           target=0x0050
08DD  96 03 65 B4                            LOADSTRING                    dst=v[0x003], values=[53, 4]
08E1  15 73 0B                               JMP                           target=0x0B73
08E4  1C 86 28                               VIDEO_TRANSITION_REF          ref=0x2886 (JHEK[134]=ekbu.vdx)
08E7  A3 19 F3 EF 08                         STRCMP_EQ_JMP                 start=v[0x019], values=[67], target=0x08EF
08EC  9C 8E 28                               VIDEO_TRANSITION_REF          ref=0x288E (JHEK[142]=ba1_b2.vdx)
08EF  A3 1A F3 F7 08                         STRCMP_EQ_JMP                 start=v[0x01A], values=[67], target=0x08F7
08F4  9C 94 28                               VIDEO_TRANSITION_REF          ref=0x2894 (JHEK[148]=bb1_a2.vdx)
08F7  A3 1B F3 FF 08                         STRCMP_EQ_JMP                 start=v[0x01B], values=[67], target=0x08FF
08FC  9C A0 28                               VIDEO_TRANSITION_REF          ref=0x28A0 (JHEK[160]=bc1_b2.vdx)
08FF  A3 1C F3 07 09                         STRCMP_EQ_JMP                 start=v[0x01C], values=[67], target=0x0907
0904  9C AC 28                               VIDEO_TRANSITION_REF          ref=0x28AC (JHEK[172]=bd1_c2.vdx)
0907  A3 1D F3 0F 09                         STRCMP_EQ_JMP                 start=v[0x01D], values=[67], target=0x090F
090C  9C B8 28                               VIDEO_TRANSITION_REF          ref=0x28B8 (JHEK[184]=be1_d2.vdx)
090F  A3 1E F3 43 09                         STRCMP_EQ_JMP                 start=v[0x01E], values=[67], target=0x0943
0914  A4 07 1E 00                            MOV                           dst=v[0x007], src=0x001E
0918  9A 01 B1 29 09                         STRCMP_NE_JMP                 start=v[0x001], values=[1], target=0x0929
091D  27 23 68 61 32 5F 62 31 00             VIDEO_TRANSITION_NAME         name="{v007}a2_b1"
0926  15 43 09                               JMP                           target=0x0943
0929  9A 06 B1 3A 09                         STRCMP_NE_JMP                 start=v[0x006], values=[1], target=0x093A
092E  27 23 68 61 32 5F 62 31 00             VIDEO_TRANSITION_NAME         name="{v007}a2_b1"
0937  15 43 09                               JMP                           target=0x0943
093A  A7 23 68 61 32 5F 62 31 00             VIDEO_TRANSITION_NAME         name="{v007}a2_b1"
0943  A3 1F F3 77 09                         STRCMP_EQ_JMP                 start=v[0x01F], values=[67], target=0x0977
0948  A4 07 1F 00                            MOV                           dst=v[0x007], src=0x001F
094C  9A 01 B1 5D 09                         STRCMP_NE_JMP                 start=v[0x001], values=[1], target=0x095D
0951  27 23 68 62 32 5F 61 31 00             VIDEO_TRANSITION_NAME         name="{v007}b2_a1"
095A  15 77 09                               JMP                           target=0x0977
095D  9A 06 B1 6E 09                         STRCMP_NE_JMP                 start=v[0x006], values=[1], target=0x096E
0962  27 23 68 62 32 5F 61 31 00             VIDEO_TRANSITION_NAME         name="{v007}b2_a1"
096B  15 77 09                               JMP                           target=0x0977
096E  A7 23 68 62 32 5F 61 31 00             VIDEO_TRANSITION_NAME         name="{v007}b2_a1"
0977  A3 20 F3 AB 09                         STRCMP_EQ_JMP                 start=v[0x020], values=[67], target=0x09AB
097C  A4 07 20 00                            MOV                           dst=v[0x007], src=0x0020
0980  9A 01 B1 91 09                         STRCMP_NE_JMP                 start=v[0x001], values=[1], target=0x0991
0985  27 23 68 63 32 5F 62 31 00             VIDEO_TRANSITION_NAME         name="{v007}c2_b1"
098E  15 AB 09                               JMP                           target=0x09AB
0991  9A 06 B1 A2 09                         STRCMP_NE_JMP                 start=v[0x006], values=[1], target=0x09A2
0996  27 23 68 63 32 5F 62 31 00             VIDEO_TRANSITION_NAME         name="{v007}c2_b1"
099F  15 AB 09                               JMP                           target=0x09AB
09A2  A7 23 68 63 32 5F 62 31 00             VIDEO_TRANSITION_NAME         name="{v007}c2_b1"
09AB  A3 21 F3 DF 09                         STRCMP_EQ_JMP                 start=v[0x021], values=[67], target=0x09DF
09B0  A4 07 21 00                            MOV                           dst=v[0x007], src=0x0021
09B4  9A 01 B1 C5 09                         STRCMP_NE_JMP                 start=v[0x001], values=[1], target=0x09C5
09B9  27 23 68 64 32 5F 63 31 00             VIDEO_TRANSITION_NAME         name="{v007}d2_c1"
09C2  15 DF 09                               JMP                           target=0x09DF
09C5  9A 06 B1 D6 09                         STRCMP_NE_JMP                 start=v[0x006], values=[1], target=0x09D6
09CA  27 23 68 64 32 5F 63 31 00             VIDEO_TRANSITION_NAME         name="{v007}d2_c1"
09D3  15 DF 09                               JMP                           target=0x09DF
09D6  A7 23 68 64 32 5F 63 31 00             VIDEO_TRANSITION_NAME         name="{v007}d2_c1"
09DF  A3 22 F3 13 0A                         STRCMP_EQ_JMP                 start=v[0x022], values=[67], target=0x0A13
09E4  A4 07 22 00                            MOV                           dst=v[0x007], src=0x0022
09E8  9A 01 B1 F9 09                         STRCMP_NE_JMP                 start=v[0x001], values=[1], target=0x09F9
09ED  27 23 68 65 32 5F 64 31 00             VIDEO_TRANSITION_NAME         name="{v007}e2_d1"
09F6  15 13 0A                               JMP                           target=0x0A13
09F9  9A 06 B1 0A 0A                         STRCMP_NE_JMP                 start=v[0x006], values=[1], target=0x0A0A
09FE  27 23 68 65 32 5F 64 31 00             VIDEO_TRANSITION_NAME         name="{v007}e2_d1"
0A07  15 13 0A                               JMP                           target=0x0A13
0A0A  A7 23 68 65 32 5F 64 31 00             VIDEO_TRANSITION_NAME         name="{v007}e2_d1"
0A13  A3 23 F3 47 0A                         STRCMP_EQ_JMP                 start=v[0x023], values=[67], target=0x0A47
0A18  A4 07 23 00                            MOV                           dst=v[0x007], src=0x0023
0A1C  B4 01 B2 2D 0A                         CHAR_GREATER_JMP              start=v[0x001], values=[2], target=0x0A2D
0A21  27 23 68 61 33 5F 62 32 00             VIDEO_TRANSITION_NAME         name="{v007}a3_b2"
0A2A  15 47 0A                               JMP                           target=0x0A47
0A2D  B4 06 B2 3E 0A                         CHAR_GREATER_JMP              start=v[0x006], values=[2], target=0x0A3E
0A32  27 23 68 61 33 5F 62 32 00             VIDEO_TRANSITION_NAME         name="{v007}a3_b2"
0A3B  15 47 0A                               JMP                           target=0x0A47
0A3E  A7 23 68 61 33 5F 62 32 00             VIDEO_TRANSITION_NAME         name="{v007}a3_b2"
0A47  A3 24 F3 7B 0A                         STRCMP_EQ_JMP                 start=v[0x024], values=[67], target=0x0A7B
0A4C  A4 07 24 00                            MOV                           dst=v[0x007], src=0x0024
0A50  B4 01 B2 61 0A                         CHAR_GREATER_JMP              start=v[0x001], values=[2], target=0x0A61
0A55  27 23 68 62 33 5F 61 32 00             VIDEO_TRANSITION_NAME         name="{v007}b3_a2"
0A5E  15 7B 0A                               JMP                           target=0x0A7B
0A61  B4 06 B2 72 0A                         CHAR_GREATER_JMP              start=v[0x006], values=[2], target=0x0A72
0A66  27 23 68 62 33 5F 61 32 00             VIDEO_TRANSITION_NAME         name="{v007}b3_a2"
0A6F  15 7B 0A                               JMP                           target=0x0A7B
0A72  A7 23 68 62 33 5F 61 32 00             VIDEO_TRANSITION_NAME         name="{v007}b3_a2"
0A7B  A3 25 F3 AF 0A                         STRCMP_EQ_JMP                 start=v[0x025], values=[67], target=0x0AAF
0A80  A4 07 25 00                            MOV                           dst=v[0x007], src=0x0025
0A84  B4 01 B2 95 0A                         CHAR_GREATER_JMP              start=v[0x001], values=[2], target=0x0A95
0A89  27 23 68 63 33 5F 62 32 00             VIDEO_TRANSITION_NAME         name="{v007}c3_b2"
0A92  15 AF 0A                               JMP                           target=0x0AAF
0A95  B4 06 B2 A6 0A                         CHAR_GREATER_JMP              start=v[0x006], values=[2], target=0x0AA6
0A9A  27 23 68 63 33 5F 62 32 00             VIDEO_TRANSITION_NAME         name="{v007}c3_b2"
0AA3  15 AF 0A                               JMP                           target=0x0AAF
0AA6  A7 23 68 63 33 5F 62 32 00             VIDEO_TRANSITION_NAME         name="{v007}c3_b2"
0AAF  A3 26 F3 E3 0A                         STRCMP_EQ_JMP                 start=v[0x026], values=[67], target=0x0AE3
0AB4  A4 07 26 00                            MOV                           dst=v[0x007], src=0x0026
0AB8  B4 01 B2 C9 0A                         CHAR_GREATER_JMP              start=v[0x001], values=[2], target=0x0AC9
0ABD  27 23 68 64 33 5F 63 32 00             VIDEO_TRANSITION_NAME         name="{v007}d3_c2"
0AC6  15 E3 0A                               JMP                           target=0x0AE3
0AC9  B4 06 B2 DA 0A                         CHAR_GREATER_JMP              start=v[0x006], values=[2], target=0x0ADA
0ACE  27 23 68 64 33 5F 63 32 00             VIDEO_TRANSITION_NAME         name="{v007}d3_c2"
0AD7  15 E3 0A                               JMP                           target=0x0AE3
0ADA  A7 23 68 64 33 5F 63 32 00             VIDEO_TRANSITION_NAME         name="{v007}d3_c2"
0AE3  A3 27 F3 17 0B                         STRCMP_EQ_JMP                 start=v[0x027], values=[67], target=0x0B17
0AE8  A4 07 27 00                            MOV                           dst=v[0x007], src=0x0027
0AEC  B4 01 B2 FD 0A                         CHAR_GREATER_JMP              start=v[0x001], values=[2], target=0x0AFD
0AF1  27 23 68 65 33 5F 64 32 00             VIDEO_TRANSITION_NAME         name="{v007}e3_d2"
0AFA  15 17 0B                               JMP                           target=0x0B17
0AFD  B4 06 B2 0E 0B                         CHAR_GREATER_JMP              start=v[0x006], values=[2], target=0x0B0E
0B02  27 23 68 65 33 5F 64 32 00             VIDEO_TRANSITION_NAME         name="{v007}e3_d2"
0B0B  15 17 0B                               JMP                           target=0x0B17
0B0E  A7 23 68 65 33 5F 64 32 00             VIDEO_TRANSITION_NAME         name="{v007}e3_d2"
0B17  A3 28 F3 29 0B                         STRCMP_EQ_JMP                 start=v[0x028], values=[67], target=0x0B29
0B1C  A4 07 28 00                            MOV                           dst=v[0x007], src=0x0028
0B20  27 23 68 61 34 5F 62 33 00             VIDEO_TRANSITION_NAME         name="{v007}a4_b3"
0B29  A3 29 F3 3B 0B                         STRCMP_EQ_JMP                 start=v[0x029], values=[67], target=0x0B3B
0B2E  A4 07 29 00                            MOV                           dst=v[0x007], src=0x0029
0B32  27 23 68 62 34 5F 61 33 00             VIDEO_TRANSITION_NAME         name="{v007}b4_a3"
0B3B  A3 2A F3 4D 0B                         STRCMP_EQ_JMP                 start=v[0x02A], values=[67], target=0x0B4D
0B40  A4 07 2A 00                            MOV                           dst=v[0x007], src=0x002A
0B44  27 23 68 63 34 5F 62 33 00             VIDEO_TRANSITION_NAME         name="{v007}c4_b3"
0B4D  A3 2B F3 5F 0B                         STRCMP_EQ_JMP                 start=v[0x02B], values=[67], target=0x0B5F
0B52  A4 07 2B 00                            MOV                           dst=v[0x007], src=0x002B
0B56  27 23 68 64 34 5F 63 33 00             VIDEO_TRANSITION_NAME         name="{v007}d4_c3"
0B5F  A3 2C F3 71 0B                         STRCMP_EQ_JMP                 start=v[0x02C], values=[67], target=0x0B71
0B64  A4 07 2C 00                            MOV                           dst=v[0x007], src=0x002C
0B68  27 23 68 65 34 5F 64 33 00             VIDEO_TRANSITION_NAME         name="{v007}e4_d3"
0B71  17 00                                  RET                           value=0x00
0B73  18 F9 02                               CALL                          target=0x02F9
0B76  28 8D 28                               RESERVED_28                   value=0x288D
0B79  96 05 23 61 23 E2                      LOADSTRING                    dst=v[0x005], values=[v[0x000], v[0x001]]
0B7F  B6 05 23 E4 8A 0B                      CHAR_LESS_JMP                 start=v[0x005], values=[v[0x003]], target=0x0B8A
0B85  A0 05                                  DEC                           var=v[0x005]
0B87  15 8C 0B                               JMP                           target=0x0B8C
0B8A  9F 05                                  INC                           var=v[0x005]
0B8C  B6 06 23 E5 97 0B                      CHAR_LESS_JMP                 start=v[0x006], values=[v[0x004]], target=0x0B97
0B92  A0 06                                  DEC                           var=v[0x006]
0B94  15 99 0B                               JMP                           target=0x0B99
0B97  9F 06                                  INC                           var=v[0x006]
0B99  18 E4 08                               CALL                          target=0x08E4
0B9C  9A 00 65 33 F7 B1 0B                   STRCMP_NE_JMP                 start=v[0x000], values=[53, 3, 71], target=0x0BB1
0BA3  9A 05 64 B4 B1 0B                      STRCMP_NE_JMP                 start=v[0x005], values=[52, 4], target=0x0BB1
0BA9  46                                     RESOURCE_CONTEXT_SAVE
0BAA  09 06 1C                               VIDEOREF                      ref=0x1C06 (HDISK[6]=wo_s.vdx)
0BAD  47                                     RESOURCE_CONTEXT_RESTORE
0BAE  15 D3 0B                               JMP                           target=0x0BD3
0BB1  9A 00 64 34 F7 C6 0B                   STRCMP_NE_JMP                 start=v[0x000], values=[52, 4, 71], target=0x0BC6
0BB8  9A 05 65 B3 C6 0B                      STRCMP_NE_JMP                 start=v[0x005], values=[53, 3], target=0x0BC6
0BBE  46                                     RESOURCE_CONTEXT_SAVE
0BBF  09 07 1C                               VIDEOREF                      ref=0x1C07 (HDISK[7]=ws_o.vdx)
0BC2  47                                     RESOURCE_CONTEXT_RESTORE
0BC3  15 D3 0B                               JMP                           target=0x0BD3
0BC6  26 23 63 23 61 23 62 5F 23 66 23 67 00 VIDEO_NAME                    name="{v002}{v000}{v001}_{v005}{v006}"
0BD3  96 00 23 66 23 E7                      LOADSTRING                    dst=v[0x000], values=[v[0x005], v[0x006]]
0BD9  A3 00 23 64 23 E5 E4 0B                STRCMP_EQ_JMP                 start=v[0x000], values=[v[0x003], v[0x004]], target=0x0BE4
0BE1  15 79 0B                               JMP                           target=0x0B79
0BE4  96 15 30 30 61 B1                      LOADSTRING                    dst=v[0x015], values=[0, 0, 49, 1]
0BEA  9A 03 23 78 23 F9 FD 0B                STRCMP_NE_JMP                 start=v[0x003], values=[v[0x017], v[0x018]], target=0x0BFD
0BF2  A4 50 02 00                            MOV                           dst=v[0x050], src=0x0002
0BF6  39 35 B5 23 76 23 F7                   GRID_SWAP                     row1=5, col1=5, row2=v[0x015], col2=v[0x016]
0BFD  9A 17 E5 0A 0C                         STRCMP_NE_JMP                 start=v[0x017], values=[53], target=0x0C0A
0C02  96 17 E1                               LOADSTRING                    dst=v[0x017], values=[49]
0C05  9F 18                                  INC                           var=v[0x018]
0C07  15 0C 0C                               JMP                           target=0x0C0C
0C0A  9F 17                                  INC                           var=v[0x017]
0C0C  9A 16 B9 19 0C                         STRCMP_NE_JMP                 start=v[0x016], values=[9], target=0x0C19
0C11  96 16 B0                               LOADSTRING                    dst=v[0x016], values=[0]
0C14  9F 15                                  INC                           var=v[0x015]
0C16  15 1B 0C                               JMP                           target=0x0C1B
0C19  9F 16                                  INC                           var=v[0x016]
0C1B  A3 15 32 B0 24 0C                      STRCMP_EQ_JMP                 start=v[0x015], values=[2, 0], target=0x0C24
0C21  15 EA 0B                               JMP                           target=0x0BEA
0C24  15 50 00                               JMP                           target=0x0050
0C27  07                                     VIDEOFLAG7_ON
0C28  09 A0 50                               VIDEOREF                      ref=0x50A0 (GAMWAV[160]=gen_s_9.vdx)
0C2B  96 F1 E1                               LOADSTRING                    dst=v[0x0F1], values=[49]
0C2E  09 85 28                               VIDEOREF                      ref=0x2885 (JHEK[133]=ekbd.vdx)
0C31  43 00                                  RETURNSCRIPT                  value=0x00
0C33  43 01                                  RETURNSCRIPT                  value=0x01
0C35  07                                     VIDEOFLAG7_ON
0C36  46                                     RESOURCE_CONTEXT_SAVE
0C37  09 8B 50                               VIDEOREF                      ref=0x508B (GAMWAV[139]=gen_e_5.vdx)
0C3A  47                                     RESOURCE_CONTEXT_RESTORE
0C3B  1C 86 28                               VIDEO_TRANSITION_REF          ref=0x2886 (JHEK[134]=ekbu.vdx)
0C3E  18 4F 0C                               CALL                          target=0x0C4F
0C41  09 86 28                               VIDEOREF                      ref=0x2886 (JHEK[134]=ekbu.vdx)
0C44  15 06 00                               JMP                           target=0x0006
0C47  1C 86 28                               VIDEO_TRANSITION_REF          ref=0x2886 (JHEK[134]=ekbu.vdx)
0C4A  18 4F 0C                               CALL                          target=0x0C4F
0C4D  43 00                                  RETURNSCRIPT                  value=0x00
0C4F  0A                                     VIDEOFLAG5_ON
0C50  07                                     VIDEOFLAG7_ON
0C51  46                                     RESOURCE_CONTEXT_SAVE
0C52  09 01 24                               VIDEOREF                      ref=0x2401 (INTRO[1]=fade.vdx)
0C55  37 00 00 50 00 7F 02 8F 01             COPY_RECT_TO_BG               left=0x0000, top=0x0050, right=0x027F, bottom=0x018F
0C5E  47                                     RESOURCE_CONTEXT_RESTORE
0C5F  17 00                                  RET                           value=0x00
