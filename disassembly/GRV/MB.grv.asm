; T7G/MB.GRV
; size=3981 sha256=c4317661c94d21191c6071a7774c13823515221657cd0c27273dcc28afa21d52
; instructions=833 input_loops=37

0000  16 03 01 B0                            LOADSTRING                    dst=v[0x103], values=[0]
0004  2C 79 0F 08                            SET_HOTSPOT_TOP               target=0x0F79, cursor=0x08
0008  2D 5F 0F 06                            SET_HOTSPOT_BOTTOM            target=0x0F5F, cursor=0x06
000C  44 6E 0F                               SET_HOTSPOT_RIGHT             target=0x0F6E
000F  45 6E 0F                               SET_HOTSPOT_LEFT              target=0x0F6E
0012  28 00 38                               RESERVED_28                   value=0x3800
0015  22                                     COPY_BG_TO_FG
0016  96 92 31 B5                            LOADSTRING                    dst=v[0x092], values=[1, 5]
001A  9A EF B4 22 00                         STRCMP_NE_JMP                 start=v[0x0EF], values=[4], target=0x0022
001F  96 EF B5                               LOADSTRING                    dst=v[0x0EF], values=[5]
0022  9A EF B2 2A 00                         STRCMP_NE_JMP                 start=v[0x0EF], values=[2], target=0x002A
0027  96 EF B3                               LOADSTRING                    dst=v[0x0EF], values=[3]
002A  9A EF B0 32 00                         STRCMP_NE_JMP                 start=v[0x0EF], values=[0], target=0x0032
002F  96 EF B1                               LOADSTRING                    dst=v[0x0EF], values=[1]
0032  46                                     RESOURCE_CONTEXT_SAVE
0033  07                                     VIDEOFLAG7_ON
0034  0A                                     VIDEOFLAG5_ON
0035  09 55 50                               VIDEOREF                      ref=0x5055 (GAMWAV[85]=13_s_1.vdx)
0038  47                                     RESOURCE_CONTEXT_RESTORE
0039  16 07 01 B0                            LOADSTRING                    dst=v[0x107], values=[0]
003D  96 19 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 B0 LOADSTRING                    dst=v[0x019], values=[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
006D  16 08 01 B0                            LOADSTRING                    dst=v[0x108], values=[0]
0071  36 03 01 B4 88 00                      CHAR_LESS_JMP                 start=v[0x103], values=[4], target=0x0088
0077  1A 07 01 B2 88 00                      STRCMP_NE_JMP                 start=v[0x107], values=[2], target=0x0088
007D  46                                     RESOURCE_CONTEXT_SAVE
007E  07                                     VIDEOFLAG7_ON
007F  0A                                     VIDEOFLAG5_ON
0080  09 52 50                               VIDEOREF                      ref=0x5052 (GAMWAV[82]=13_e_3.vdx)
0083  16 07 01 B3                            LOADSTRING                    dst=v[0x107], values=[3]
0087  47                                     RESOURCE_CONTEXT_RESTORE
0088  36 03 01 B1 A3 00                      CHAR_LESS_JMP                 start=v[0x103], values=[1], target=0x00A3
008E  1A 07 01 B1 A3 00                      STRCMP_NE_JMP                 start=v[0x107], values=[1], target=0x00A3
0094  46                                     RESOURCE_CONTEXT_SAVE
0095  07                                     VIDEOFLAG7_ON
0096  0A                                     VIDEOFLAG5_ON
0097  09 53 50                               VIDEOREF                      ref=0x5053 (GAMWAV[83]=13_e_4.vdx)
009A  16 07 01 B2                            LOADSTRING                    dst=v[0x107], values=[2]
009E  16 03 01 B0                            LOADSTRING                    dst=v[0x103], values=[0]
00A2  47                                     RESOURCE_CONTEXT_RESTORE
00A3  36 03 01 B1 BE 00                      CHAR_LESS_JMP                 start=v[0x103], values=[1], target=0x00BE
00A9  1A 07 01 B0 BE 00                      STRCMP_NE_JMP                 start=v[0x107], values=[0], target=0x00BE
00AF  16 03 01 B0                            LOADSTRING                    dst=v[0x103], values=[0]
00B3  46                                     RESOURCE_CONTEXT_SAVE
00B4  07                                     VIDEOFLAG7_ON
00B5  0A                                     VIDEOFLAG5_ON
00B6  09 54 50                               VIDEOREF                      ref=0x5054 (GAMWAV[84]=13_e_5.vdx)
00B9  16 07 01 B1                            LOADSTRING                    dst=v[0x107], values=[1]
00BD  47                                     RESOURCE_CONTEXT_RESTORE
00BE  22                                     COPY_BG_TO_FG
00BF  1A 08 01 B0 F0 00                      STRCMP_NE_JMP                 start=v[0x108], values=[0], target=0x00F0
00C5  16 08 01 B1                            LOADSTRING                    dst=v[0x108], values=[1]
00C9  96 1C B2                               LOADSTRING                    dst=v[0x01C], values=[2]
00CC  0B                                     INPUTLOOPSTART
00CD  A3 1C B3 DE 00                         STRCMP_EQ_JMP                 start=v[0x01C], values=[3], target=0x00DE
00D2  0D 21 01 7E 00 36 01 92 00 B8 0A 09    HOTSPOT_RECT                  left=0x0121, top=0x007E, right=0x0136, bottom=0x0092, target=0x0AB8, cursor=0x09
00DE  A3 1E B3 EF 00                         STRCMP_EQ_JMP                 start=v[0x01E], values=[3], target=0x00EF
00E3  0D 50 01 82 00 66 01 96 00 FA 0A 09    HOTSPOT_RECT                  left=0x0150, top=0x0082, right=0x0166, bottom=0x0096, target=0x0AFA, cursor=0x09
00EF  13                                     INPUTLOOPEND
00F0  9A 1B B1 1F 01                         STRCMP_NE_JMP                 start=v[0x01B], values=[1], target=0x011F
00F5  96 1B B3                               LOADSTRING                    dst=v[0x01B], values=[3]
00F8  96 20 B2                               LOADSTRING                    dst=v[0x020], values=[2]
00FB  0B                                     INPUTLOOPSTART
00FC  A3 1E B3 0D 01                         STRCMP_EQ_JMP                 start=v[0x01E], values=[3], target=0x010D
0101  0D 50 01 82 00 66 01 96 00 FA 0A 09    HOTSPOT_RECT                  left=0x0150, top=0x0082, right=0x0166, bottom=0x0096, target=0x0AFA, cursor=0x09
010D  A3 20 B3 1E 01                         STRCMP_EQ_JMP                 start=v[0x020], values=[3], target=0x011E
0112  0D 75 01 97 00 8D 01 AC 00 1B 0B 09    HOTSPOT_RECT                  left=0x0175, top=0x0097, right=0x018D, bottom=0x00AC, target=0x0B1B, cursor=0x09
011E  13                                     INPUTLOOPEND
011F  9A 1C B1 3D 01                         STRCMP_NE_JMP                 start=v[0x01C], values=[1], target=0x013D
0124  96 1C B3                               LOADSTRING                    dst=v[0x01C], values=[3]
0127  96 21 B2                               LOADSTRING                    dst=v[0x021], values=[2]
012A  0B                                     INPUTLOOPSTART
012B  A3 21 B3 3C 01                         STRCMP_EQ_JMP                 start=v[0x021], values=[3], target=0x013C
0130  0D 8D 01 9C 00 A4 01 AF 00 3C 0B 09    HOTSPOT_RECT                  left=0x018D, top=0x009C, right=0x01A4, bottom=0x00AF, target=0x0B3C, cursor=0x09
013C  13                                     INPUTLOOPEND
013D  9A 1D B1 6C 01                         STRCMP_NE_JMP                 start=v[0x01D], values=[1], target=0x016C
0142  96 1D B3                               LOADSTRING                    dst=v[0x01D], values=[3]
0145  96 22 B2                               LOADSTRING                    dst=v[0x022], values=[2]
0148  0B                                     INPUTLOOPSTART
0149  A3 20 B3 5A 01                         STRCMP_EQ_JMP                 start=v[0x020], values=[3], target=0x015A
014E  0D 75 01 97 00 8D 01 AC 00 1B 0B 09    HOTSPOT_RECT                  left=0x0175, top=0x0097, right=0x018D, bottom=0x00AC, target=0x0B1B, cursor=0x09
015A  A3 22 B3 6B 01                         STRCMP_EQ_JMP                 start=v[0x022], values=[3], target=0x016B
015F  0D 95 01 B2 00 AA 01 C6 00 5D 0B 09    HOTSPOT_RECT                  left=0x0195, top=0x00B2, right=0x01AA, bottom=0x00C6, target=0x0B5D, cursor=0x09
016B  13                                     INPUTLOOPEND
016C  9A 1E B1 9B 01                         STRCMP_NE_JMP                 start=v[0x01E], values=[1], target=0x019B
0171  96 1E B3                               LOADSTRING                    dst=v[0x01E], values=[3]
0174  96 1B B2                               LOADSTRING                    dst=v[0x01B], values=[2]
0177  0B                                     INPUTLOOPSTART
0178  A3 21 B3 89 01                         STRCMP_EQ_JMP                 start=v[0x021], values=[3], target=0x0189
017D  0D 8D 01 9C 00 A4 01 AF 00 3C 0B 09    HOTSPOT_RECT                  left=0x018D, top=0x009C, right=0x01A4, bottom=0x00AF, target=0x0B3C, cursor=0x09
0189  A3 1B B3 9A 01                         STRCMP_EQ_JMP                 start=v[0x01B], values=[3], target=0x019A
018E  0D 0A 01 77 00 20 01 8B 00 97 0A 09    HOTSPOT_RECT                  left=0x010A, top=0x0077, right=0x0120, bottom=0x008B, target=0x0A97, cursor=0x09
019A  13                                     INPUTLOOPEND
019B  9A 20 B1 DB 01                         STRCMP_NE_JMP                 start=v[0x020], values=[1], target=0x01DB
01A0  96 20 B3                               LOADSTRING                    dst=v[0x020], values=[3]
01A3  96 1D B2                               LOADSTRING                    dst=v[0x01D], values=[2]
01A6  0B                                     INPUTLOOPSTART
01A7  A3 1B B3 B8 01                         STRCMP_EQ_JMP                 start=v[0x01B], values=[3], target=0x01B8
01AC  0D 0A 01 77 00 20 01 8B 00 97 0A 09    HOTSPOT_RECT                  left=0x010A, top=0x0077, right=0x0120, bottom=0x008B, target=0x0A97, cursor=0x09
01B8  A3 1D B3 C9 01                         STRCMP_EQ_JMP                 start=v[0x01D], values=[3], target=0x01C9
01BD  0D 36 01 83 00 4C 01 98 00 D9 0A 09    HOTSPOT_RECT                  left=0x0136, top=0x0083, right=0x014C, bottom=0x0098, target=0x0AD9, cursor=0x09
01C9  A3 25 B3 DA 01                         STRCMP_EQ_JMP                 start=v[0x025], values=[3], target=0x01DA
01CE  0D A6 01 F4 00 BF 01 0B 01 9F 0B 09    HOTSPOT_RECT                  left=0x01A6, top=0x00F4, right=0x01BF, bottom=0x010B, target=0x0B9F, cursor=0x09
01DA  13                                     INPUTLOOPEND
01DB  9A 21 B1 2C 02                         STRCMP_NE_JMP                 start=v[0x021], values=[1], target=0x022C
01E0  96 21 B3                               LOADSTRING                    dst=v[0x021], values=[3]
01E3  96 1E B2                               LOADSTRING                    dst=v[0x01E], values=[2]
01E6  0B                                     INPUTLOOPSTART
01E7  A3 1C B3 F8 01                         STRCMP_EQ_JMP                 start=v[0x01C], values=[3], target=0x01F8
01EC  0D 21 01 7E 00 36 01 92 00 B8 0A 09    HOTSPOT_RECT                  left=0x0121, top=0x007E, right=0x0136, bottom=0x0092, target=0x0AB8, cursor=0x09
01F8  A3 1E B3 09 02                         STRCMP_EQ_JMP                 start=v[0x01E], values=[3], target=0x0209
01FD  0D 50 01 82 00 66 01 96 00 FA 0A 09    HOTSPOT_RECT                  left=0x0150, top=0x0082, right=0x0166, bottom=0x0096, target=0x0AFA, cursor=0x09
0209  A3 24 B3 1A 02                         STRCMP_EQ_JMP                 start=v[0x024], values=[3], target=0x021A
020E  0D 9C 01 DA 00 B4 01 F0 00 7E 0B 09    HOTSPOT_RECT                  left=0x019C, top=0x00DA, right=0x01B4, bottom=0x00F0, target=0x0B7E, cursor=0x09
021A  A3 26 B3 2B 02                         STRCMP_EQ_JMP                 start=v[0x026], values=[3], target=0x022B
021F  0D 9C 01 09 01 B4 01 22 01 C0 0B 09    HOTSPOT_RECT                  left=0x019C, top=0x0109, right=0x01B4, bottom=0x0122, target=0x0BC0, cursor=0x09
022B  13                                     INPUTLOOPEND
022C  9A 22 B1 6C 02                         STRCMP_NE_JMP                 start=v[0x022], values=[1], target=0x026C
0231  96 22 B3                               LOADSTRING                    dst=v[0x022], values=[3]
0234  96 25 B2                               LOADSTRING                    dst=v[0x025], values=[2]
0237  0B                                     INPUTLOOPSTART
0238  A3 1D B3 49 02                         STRCMP_EQ_JMP                 start=v[0x01D], values=[3], target=0x0249
023D  0D 36 01 83 00 4C 01 98 00 D9 0A 09    HOTSPOT_RECT                  left=0x0136, top=0x0083, right=0x014C, bottom=0x0098, target=0x0AD9, cursor=0x09
0249  A3 25 B3 5A 02                         STRCMP_EQ_JMP                 start=v[0x025], values=[3], target=0x025A
024E  0D A6 01 F4 00 BF 01 0B 01 9F 0B 09    HOTSPOT_RECT                  left=0x01A6, top=0x00F4, right=0x01BF, bottom=0x010B, target=0x0B9F, cursor=0x09
025A  A3 27 B3 6B 02                         STRCMP_EQ_JMP                 start=v[0x027], values=[3], target=0x026B
025F  0D 9D 01 23 01 B7 01 3C 01 E1 0B 09    HOTSPOT_RECT                  left=0x019D, top=0x0123, right=0x01B7, bottom=0x013C, target=0x0BE1, cursor=0x09
026B  13                                     INPUTLOOPEND
026C  9A 24 B1 AC 02                         STRCMP_NE_JMP                 start=v[0x024], values=[1], target=0x02AC
0271  96 24 B3                               LOADSTRING                    dst=v[0x024], values=[3]
0274  96 27 B2                               LOADSTRING                    dst=v[0x027], values=[2]
0277  0B                                     INPUTLOOPSTART
0278  A3 21 B3 89 02                         STRCMP_EQ_JMP                 start=v[0x021], values=[3], target=0x0289
027D  0D 8D 01 9C 00 A4 01 AF 00 3C 0B 09    HOTSPOT_RECT                  left=0x018D, top=0x009C, right=0x01A4, bottom=0x00AF, target=0x0B3C, cursor=0x09
0289  A3 27 B3 9A 02                         STRCMP_EQ_JMP                 start=v[0x027], values=[3], target=0x029A
028E  0D 9D 01 23 01 B7 01 3C 01 E1 0B 09    HOTSPOT_RECT                  left=0x019D, top=0x0123, right=0x01B7, bottom=0x013C, target=0x0BE1, cursor=0x09
029A  A3 29 B3 AB 02                         STRCMP_EQ_JMP                 start=v[0x029], values=[3], target=0x02AB
029F  0D 6F 01 35 01 87 01 4E 01 23 0C 09    HOTSPOT_RECT                  left=0x016F, top=0x0135, right=0x0187, bottom=0x014E, target=0x0C23, cursor=0x09
02AB  13                                     INPUTLOOPEND
02AC  9A 25 B1 FD 02                         STRCMP_NE_JMP                 start=v[0x025], values=[1], target=0x02FD
02B1  96 25 B3                               LOADSTRING                    dst=v[0x025], values=[3]
02B4  96 28 B2                               LOADSTRING                    dst=v[0x028], values=[2]
02B7  0B                                     INPUTLOOPSTART
02B8  A3 20 B3 C9 02                         STRCMP_EQ_JMP                 start=v[0x020], values=[3], target=0x02C9
02BD  0D 75 01 97 00 8D 01 AC 00 1B 0B 09    HOTSPOT_RECT                  left=0x0175, top=0x0097, right=0x018D, bottom=0x00AC, target=0x0B1B, cursor=0x09
02C9  A3 22 B3 DA 02                         STRCMP_EQ_JMP                 start=v[0x022], values=[3], target=0x02DA
02CE  0D 95 01 B2 00 AA 01 C6 00 5D 0B 09    HOTSPOT_RECT                  left=0x0195, top=0x00B2, right=0x01AA, bottom=0x00C6, target=0x0B5D, cursor=0x09
02DA  A3 28 B3 EB 02                         STRCMP_EQ_JMP                 start=v[0x028], values=[3], target=0x02EB
02DF  0D 8C 01 35 01 A2 01 4C 01 02 0C 09    HOTSPOT_RECT                  left=0x018C, top=0x0135, right=0x01A2, bottom=0x014C, target=0x0C02, cursor=0x09
02EB  A3 2A B3 FC 02                         STRCMP_EQ_JMP                 start=v[0x02A], values=[3], target=0x02FC
02F0  0D 55 01 38 01 6C 01 51 01 44 0C 09    HOTSPOT_RECT                  left=0x0155, top=0x0138, right=0x016C, bottom=0x0151, target=0x0C44, cursor=0x09
02FC  13                                     INPUTLOOPEND
02FD  9A 26 B1 3D 03                         STRCMP_NE_JMP                 start=v[0x026], values=[1], target=0x033D
0302  96 26 B3                               LOADSTRING                    dst=v[0x026], values=[3]
0305  96 29 B2                               LOADSTRING                    dst=v[0x029], values=[2]
0308  0B                                     INPUTLOOPSTART
0309  A3 21 B3 1A 03                         STRCMP_EQ_JMP                 start=v[0x021], values=[3], target=0x031A
030E  0D 8D 01 9C 00 A4 01 AF 00 3C 0B 09    HOTSPOT_RECT                  left=0x018D, top=0x009C, right=0x01A4, bottom=0x00AF, target=0x0B3C, cursor=0x09
031A  A3 29 B3 2B 03                         STRCMP_EQ_JMP                 start=v[0x029], values=[3], target=0x032B
031F  0D 6F 01 35 01 87 01 4E 01 23 0C 09    HOTSPOT_RECT                  left=0x016F, top=0x0135, right=0x0187, bottom=0x014E, target=0x0C23, cursor=0x09
032B  A3 2B B3 3C 03                         STRCMP_EQ_JMP                 start=v[0x02B], values=[3], target=0x033C
0330  0D 3D 01 44 01 54 01 5A 01 65 0C 09    HOTSPOT_RECT                  left=0x013D, top=0x0144, right=0x0154, bottom=0x015A, target=0x0C65, cursor=0x09
033C  13                                     INPUTLOOPEND
033D  9A 27 B1 8E 03                         STRCMP_NE_JMP                 start=v[0x027], values=[1], target=0x038E
0342  96 27 B3                               LOADSTRING                    dst=v[0x027], values=[3]
0345  96 2A B2                               LOADSTRING                    dst=v[0x02A], values=[2]
0348  0B                                     INPUTLOOPSTART
0349  A3 22 B3 5A 03                         STRCMP_EQ_JMP                 start=v[0x022], values=[3], target=0x035A
034E  0D 95 01 B2 00 AA 01 C6 00 5D 0B 09    HOTSPOT_RECT                  left=0x0195, top=0x00B2, right=0x01AA, bottom=0x00C6, target=0x0B5D, cursor=0x09
035A  A3 24 B3 6B 03                         STRCMP_EQ_JMP                 start=v[0x024], values=[3], target=0x036B
035F  0D 9C 01 DA 00 B4 01 F0 00 7E 0B 09    HOTSPOT_RECT                  left=0x019C, top=0x00DA, right=0x01B4, bottom=0x00F0, target=0x0B7E, cursor=0x09
036B  A3 2A B3 7C 03                         STRCMP_EQ_JMP                 start=v[0x02A], values=[3], target=0x037C
0370  0D 55 01 38 01 6C 01 51 01 44 0C 09    HOTSPOT_RECT                  left=0x0155, top=0x0138, right=0x016C, bottom=0x0151, target=0x0C44, cursor=0x09
037C  A3 2C B3 8D 03                         STRCMP_EQ_JMP                 start=v[0x02C], values=[3], target=0x038D
0381  0D 23 01 36 01 3B 01 4F 01 86 0C 09    HOTSPOT_RECT                  left=0x0123, top=0x0136, right=0x013B, bottom=0x014F, target=0x0C86, cursor=0x09
038D  13                                     INPUTLOOPEND
038E  9A 28 B1 CE 03                         STRCMP_NE_JMP                 start=v[0x028], values=[1], target=0x03CE
0393  96 28 B3                               LOADSTRING                    dst=v[0x028], values=[3]
0396  96 2B B2                               LOADSTRING                    dst=v[0x02B], values=[2]
0399  0B                                     INPUTLOOPSTART
039A  A3 25 B3 AB 03                         STRCMP_EQ_JMP                 start=v[0x025], values=[3], target=0x03AB
039F  0D A6 01 F4 00 BF 01 0B 01 9F 0B 09    HOTSPOT_RECT                  left=0x01A6, top=0x00F4, right=0x01BF, bottom=0x010B, target=0x0B9F, cursor=0x09
03AB  A3 2B B3 BC 03                         STRCMP_EQ_JMP                 start=v[0x02B], values=[3], target=0x03BC
03B0  0D 3D 01 44 01 54 01 5A 01 65 0C 09    HOTSPOT_RECT                  left=0x013D, top=0x0144, right=0x0154, bottom=0x015A, target=0x0C65, cursor=0x09
03BC  A3 2D B3 CD 03                         STRCMP_EQ_JMP                 start=v[0x02D], values=[3], target=0x03CD
03C1  0D 0A 01 2E 01 22 01 48 01 A7 0C 09    HOTSPOT_RECT                  left=0x010A, top=0x012E, right=0x0122, bottom=0x0148, target=0x0CA7, cursor=0x09
03CD  13                                     INPUTLOOPEND
03CE  9A 29 B1 0E 04                         STRCMP_NE_JMP                 start=v[0x029], values=[1], target=0x040E
03D3  96 29 B3                               LOADSTRING                    dst=v[0x029], values=[3]
03D6  96 24 B2                               LOADSTRING                    dst=v[0x024], values=[2]
03D9  0B                                     INPUTLOOPSTART
03DA  A3 24 B3 EB 03                         STRCMP_EQ_JMP                 start=v[0x024], values=[3], target=0x03EB
03DF  0D 9C 01 DA 00 B4 01 F0 00 7E 0B 09    HOTSPOT_RECT                  left=0x019C, top=0x00DA, right=0x01B4, bottom=0x00F0, target=0x0B7E, cursor=0x09
03EB  A3 26 B3 FC 03                         STRCMP_EQ_JMP                 start=v[0x026], values=[3], target=0x03FC
03F0  0D 9C 01 09 01 B4 01 22 01 C0 0B 09    HOTSPOT_RECT                  left=0x019C, top=0x0109, right=0x01B4, bottom=0x0122, target=0x0BC0, cursor=0x09
03FC  A3 2C B3 0D 04                         STRCMP_EQ_JMP                 start=v[0x02C], values=[3], target=0x040D
0401  0D 23 01 36 01 3B 01 4F 01 86 0C 09    HOTSPOT_RECT                  left=0x0123, top=0x0136, right=0x013B, bottom=0x014F, target=0x0C86, cursor=0x09
040D  13                                     INPUTLOOPEND
040E  9A 2A B1 5F 04                         STRCMP_NE_JMP                 start=v[0x02A], values=[1], target=0x045F
0413  96 2A B3                               LOADSTRING                    dst=v[0x02A], values=[3]
0416  96 2D B2                               LOADSTRING                    dst=v[0x02D], values=[2]
0419  0B                                     INPUTLOOPSTART
041A  A3 25 B3 2B 04                         STRCMP_EQ_JMP                 start=v[0x025], values=[3], target=0x042B
041F  0D A6 01 F4 00 BF 01 0B 01 9F 0B 09    HOTSPOT_RECT                  left=0x01A6, top=0x00F4, right=0x01BF, bottom=0x010B, target=0x0B9F, cursor=0x09
042B  A3 27 B3 3C 04                         STRCMP_EQ_JMP                 start=v[0x027], values=[3], target=0x043C
0430  0D 9D 01 23 01 B7 01 3C 01 E1 0B 09    HOTSPOT_RECT                  left=0x019D, top=0x0123, right=0x01B7, bottom=0x013C, target=0x0BE1, cursor=0x09
043C  A3 2D B3 4D 04                         STRCMP_EQ_JMP                 start=v[0x02D], values=[3], target=0x044D
0441  0D 0A 01 2E 01 22 01 48 01 A7 0C 09    HOTSPOT_RECT                  left=0x010A, top=0x012E, right=0x0122, bottom=0x0148, target=0x0CA7, cursor=0x09
044D  A3 2F B3 5E 04                         STRCMP_EQ_JMP                 start=v[0x02F], values=[3], target=0x045E
0452  0D DA 00 2B 01 F1 00 47 01 C8 0C 09    HOTSPOT_RECT                  left=0x00DA, top=0x012B, right=0x00F1, bottom=0x0147, target=0x0CC8, cursor=0x09
045E  13                                     INPUTLOOPEND
045F  9A 2B B1 9F 04                         STRCMP_NE_JMP                 start=v[0x02B], values=[1], target=0x049F
0464  96 2B B3                               LOADSTRING                    dst=v[0x02B], values=[3]
0467  96 26 B2                               LOADSTRING                    dst=v[0x026], values=[2]
046A  0B                                     INPUTLOOPSTART
046B  A3 26 B3 7C 04                         STRCMP_EQ_JMP                 start=v[0x026], values=[3], target=0x047C
0470  0D 9C 01 09 01 B4 01 22 01 C0 0B 09    HOTSPOT_RECT                  left=0x019C, top=0x0109, right=0x01B4, bottom=0x0122, target=0x0BC0, cursor=0x09
047C  A3 28 B3 8D 04                         STRCMP_EQ_JMP                 start=v[0x028], values=[3], target=0x048D
0481  0D 8C 01 35 01 A2 01 4C 01 02 0C 09    HOTSPOT_RECT                  left=0x018C, top=0x0135, right=0x01A2, bottom=0x014C, target=0x0C02, cursor=0x09
048D  A3 30 B3 9E 04                         STRCMP_EQ_JMP                 start=v[0x030], values=[3], target=0x049E
0492  0D CA 00 17 01 E3 00 30 01 E9 0C 09    HOTSPOT_RECT                  left=0x00CA, top=0x0117, right=0x00E3, bottom=0x0130, target=0x0CE9, cursor=0x09
049E  13                                     INPUTLOOPEND
049F  9A 2C B1 F0 04                         STRCMP_NE_JMP                 start=v[0x02C], values=[1], target=0x04F0
04A4  96 2C B3                               LOADSTRING                    dst=v[0x02C], values=[3]
04A7  96 31 B2                               LOADSTRING                    dst=v[0x031], values=[2]
04AA  0B                                     INPUTLOOPSTART
04AB  A3 27 B3 BC 04                         STRCMP_EQ_JMP                 start=v[0x027], values=[3], target=0x04BC
04B0  0D 9D 01 23 01 B7 01 3C 01 E1 0B 09    HOTSPOT_RECT                  left=0x019D, top=0x0123, right=0x01B7, bottom=0x013C, target=0x0BE1, cursor=0x09
04BC  A3 29 B3 CD 04                         STRCMP_EQ_JMP                 start=v[0x029], values=[3], target=0x04CD
04C1  0D 6F 01 35 01 87 01 4E 01 23 0C 09    HOTSPOT_RECT                  left=0x016F, top=0x0135, right=0x0187, bottom=0x014E, target=0x0C23, cursor=0x09
04CD  A3 2F B3 DE 04                         STRCMP_EQ_JMP                 start=v[0x02F], values=[3], target=0x04DE
04D2  0D DA 00 2B 01 F1 00 47 01 C8 0C 09    HOTSPOT_RECT                  left=0x00DA, top=0x012B, right=0x00F1, bottom=0x0147, target=0x0CC8, cursor=0x09
04DE  A3 31 B3 EF 04                         STRCMP_EQ_JMP                 start=v[0x031], values=[3], target=0x04EF
04E3  0D CE 00 FE 00 E6 00 16 01 0A 0D 09    HOTSPOT_RECT                  left=0x00CE, top=0x00FE, right=0x00E6, bottom=0x0116, target=0x0D0A, cursor=0x09
04EF  13                                     INPUTLOOPEND
04F0  9A 2D B1 41 05                         STRCMP_NE_JMP                 start=v[0x02D], values=[1], target=0x0541
04F5  96 2D B3                               LOADSTRING                    dst=v[0x02D], values=[3]
04F8  96 30 B2                               LOADSTRING                    dst=v[0x030], values=[2]
04FB  0B                                     INPUTLOOPSTART
04FC  A3 28 B3 0D 05                         STRCMP_EQ_JMP                 start=v[0x028], values=[3], target=0x050D
0501  0D 8C 01 35 01 A2 01 4C 01 02 0C 09    HOTSPOT_RECT                  left=0x018C, top=0x0135, right=0x01A2, bottom=0x014C, target=0x0C02, cursor=0x09
050D  A3 2A B3 1E 05                         STRCMP_EQ_JMP                 start=v[0x02A], values=[3], target=0x051E
0512  0D 55 01 38 01 6C 01 51 01 44 0C 09    HOTSPOT_RECT                  left=0x0155, top=0x0138, right=0x016C, bottom=0x0151, target=0x0C44, cursor=0x09
051E  A3 30 B3 2F 05                         STRCMP_EQ_JMP                 start=v[0x030], values=[3], target=0x052F
0523  0D CA 00 17 01 E3 00 30 01 E9 0C 09    HOTSPOT_RECT                  left=0x00CA, top=0x0117, right=0x00E3, bottom=0x0130, target=0x0CE9, cursor=0x09
052F  A3 32 B3 40 05                         STRCMP_EQ_JMP                 start=v[0x032], values=[3], target=0x0540
0534  0D D1 00 E7 00 E9 00 FD 00 2B 0D 09    HOTSPOT_RECT                  left=0x00D1, top=0x00E7, right=0x00E9, bottom=0x00FD, target=0x0D2B, cursor=0x09
0540  13                                     INPUTLOOPEND
0541  9A 2F B1 92 05                         STRCMP_NE_JMP                 start=v[0x02F], values=[1], target=0x0592
0546  96 2F B3                               LOADSTRING                    dst=v[0x02F], values=[3]
0549  96 2C B2                               LOADSTRING                    dst=v[0x02C], values=[2]
054C  0B                                     INPUTLOOPSTART
054D  A3 2A B3 5E 05                         STRCMP_EQ_JMP                 start=v[0x02A], values=[3], target=0x055E
0552  0D 55 01 38 01 6C 01 51 01 44 0C 09    HOTSPOT_RECT                  left=0x0155, top=0x0138, right=0x016C, bottom=0x0151, target=0x0C44, cursor=0x09
055E  A3 2C B3 6F 05                         STRCMP_EQ_JMP                 start=v[0x02C], values=[3], target=0x056F
0563  0D 23 01 36 01 3B 01 4F 01 86 0C 09    HOTSPOT_RECT                  left=0x0123, top=0x0136, right=0x013B, bottom=0x014F, target=0x0C86, cursor=0x09
056F  A3 32 B3 80 05                         STRCMP_EQ_JMP                 start=v[0x032], values=[3], target=0x0580
0574  0D D1 00 E7 00 E9 00 FD 00 2B 0D 09    HOTSPOT_RECT                  left=0x00D1, top=0x00E7, right=0x00E9, bottom=0x00FD, target=0x0D2B, cursor=0x09
0580  A3 34 B3 91 05                         STRCMP_EQ_JMP                 start=v[0x034], values=[3], target=0x0591
0585  0D DE 00 B9 00 F4 00 D0 00 6D 0D 09    HOTSPOT_RECT                  left=0x00DE, top=0x00B9, right=0x00F4, bottom=0x00D0, target=0x0D6D, cursor=0x09
0591  13                                     INPUTLOOPEND
0592  9A 30 B1 E3 05                         STRCMP_NE_JMP                 start=v[0x030], values=[1], target=0x05E3
0597  96 30 B3                               LOADSTRING                    dst=v[0x030], values=[3]
059A  96 35 B2                               LOADSTRING                    dst=v[0x035], values=[2]
059D  0B                                     INPUTLOOPSTART
059E  A3 2B B3 AF 05                         STRCMP_EQ_JMP                 start=v[0x02B], values=[3], target=0x05AF
05A3  0D 3D 01 44 01 54 01 5A 01 65 0C 09    HOTSPOT_RECT                  left=0x013D, top=0x0144, right=0x0154, bottom=0x015A, target=0x0C65, cursor=0x09
05AF  A3 2D B3 C0 05                         STRCMP_EQ_JMP                 start=v[0x02D], values=[3], target=0x05C0
05B4  0D 0A 01 2E 01 22 01 48 01 A7 0C 09    HOTSPOT_RECT                  left=0x010A, top=0x012E, right=0x0122, bottom=0x0148, target=0x0CA7, cursor=0x09
05C0  A3 33 B3 D1 05                         STRCMP_EQ_JMP                 start=v[0x033], values=[3], target=0x05D1
05C5  0D D7 00 CF 00 EE 00 E6 00 4C 0D 09    HOTSPOT_RECT                  left=0x00D7, top=0x00CF, right=0x00EE, bottom=0x00E6, target=0x0D4C, cursor=0x09
05D1  A3 35 B3 E2 05                         STRCMP_EQ_JMP                 start=v[0x035], values=[3], target=0x05E2
05D6  0D F1 00 AC 00 08 01 C2 00 8E 0D 09    HOTSPOT_RECT                  left=0x00F1, top=0x00AC, right=0x0108, bottom=0x00C2, target=0x0D8E, cursor=0x09
05E2  13                                     INPUTLOOPEND
05E3  9A 31 B1 23 06                         STRCMP_NE_JMP                 start=v[0x031], values=[1], target=0x0623
05E8  96 31 B3                               LOADSTRING                    dst=v[0x031], values=[3]
05EB  96 34 B2                               LOADSTRING                    dst=v[0x034], values=[2]
05EE  0B                                     INPUTLOOPSTART
05EF  A3 2C B3 00 06                         STRCMP_EQ_JMP                 start=v[0x02C], values=[3], target=0x0600
05F4  0D 23 01 36 01 3B 01 4F 01 86 0C 09    HOTSPOT_RECT                  left=0x0123, top=0x0136, right=0x013B, bottom=0x014F, target=0x0C86, cursor=0x09
0600  A3 34 B3 11 06                         STRCMP_EQ_JMP                 start=v[0x034], values=[3], target=0x0611
0605  0D DE 00 B9 00 F4 00 D0 00 6D 0D 09    HOTSPOT_RECT                  left=0x00DE, top=0x00B9, right=0x00F4, bottom=0x00D0, target=0x0D6D, cursor=0x09
0611  A3 36 B3 22 06                         STRCMP_EQ_JMP                 start=v[0x036], values=[3], target=0x0622
0616  0D 08 01 9C 00 1C 01 B2 00 AF 0D 09    HOTSPOT_RECT                  left=0x0108, top=0x009C, right=0x011C, bottom=0x00B2, target=0x0DAF, cursor=0x09
0622  13                                     INPUTLOOPEND
0623  9A 32 B1 74 06                         STRCMP_NE_JMP                 start=v[0x032], values=[1], target=0x0674
0628  96 32 B3                               LOADSTRING                    dst=v[0x032], values=[3]
062B  96 2F B2                               LOADSTRING                    dst=v[0x02F], values=[2]
062E  0B                                     INPUTLOOPSTART
062F  A3 2D B3 40 06                         STRCMP_EQ_JMP                 start=v[0x02D], values=[3], target=0x0640
0634  0D 0A 01 2E 01 22 01 48 01 A7 0C 09    HOTSPOT_RECT                  left=0x010A, top=0x012E, right=0x0122, bottom=0x0148, target=0x0CA7, cursor=0x09
0640  A3 2F B3 51 06                         STRCMP_EQ_JMP                 start=v[0x02F], values=[3], target=0x0651
0645  0D DA 00 2B 01 F1 00 47 01 C8 0C 09    HOTSPOT_RECT                  left=0x00DA, top=0x012B, right=0x00F1, bottom=0x0147, target=0x0CC8, cursor=0x09
0651  A3 35 B3 62 06                         STRCMP_EQ_JMP                 start=v[0x035], values=[3], target=0x0662
0656  0D F1 00 AC 00 08 01 C2 00 8E 0D 09    HOTSPOT_RECT                  left=0x00F1, top=0x00AC, right=0x0108, bottom=0x00C2, target=0x0D8E, cursor=0x09
0662  A3 37 B3 73 06                         STRCMP_EQ_JMP                 start=v[0x037], values=[3], target=0x0673
0667  0D 1C 01 A8 00 31 01 BF 00 D0 0D 09    HOTSPOT_RECT                  left=0x011C, top=0x00A8, right=0x0131, bottom=0x00BF, target=0x0DD0, cursor=0x09
0673  13                                     INPUTLOOPEND
0674  9A 33 B1 B4 06                         STRCMP_NE_JMP                 start=v[0x033], values=[1], target=0x06B4
0679  96 33 B3                               LOADSTRING                    dst=v[0x033], values=[3]
067C  96 36 B2                               LOADSTRING                    dst=v[0x036], values=[2]
067F  0B                                     INPUTLOOPSTART
0680  A3 30 B3 91 06                         STRCMP_EQ_JMP                 start=v[0x030], values=[3], target=0x0691
0685  0D CA 00 17 01 E3 00 30 01 E9 0C 09    HOTSPOT_RECT                  left=0x00CA, top=0x0117, right=0x00E3, bottom=0x0130, target=0x0CE9, cursor=0x09
0691  A3 36 B3 A2 06                         STRCMP_EQ_JMP                 start=v[0x036], values=[3], target=0x06A2
0696  0D 08 01 9C 00 1C 01 B2 00 AF 0D 09    HOTSPOT_RECT                  left=0x0108, top=0x009C, right=0x011C, bottom=0x00B2, target=0x0DAF, cursor=0x09
06A2  A3 38 B3 B3 06                         STRCMP_EQ_JMP                 start=v[0x038], values=[3], target=0x06B3
06A7  0D 31 01 AE 00 48 01 C4 00 F1 0D 09    HOTSPOT_RECT                  left=0x0131, top=0x00AE, right=0x0148, bottom=0x00C4, target=0x0DF1, cursor=0x09
06B3  13                                     INPUTLOOPEND
06B4  9A 34 B1 05 07                         STRCMP_NE_JMP                 start=v[0x034], values=[1], target=0x0705
06B9  96 34 B3                               LOADSTRING                    dst=v[0x034], values=[3]
06BC  96 37 B2                               LOADSTRING                    dst=v[0x037], values=[2]
06BF  0B                                     INPUTLOOPSTART
06C0  A3 2F B3 D1 06                         STRCMP_EQ_JMP                 start=v[0x02F], values=[3], target=0x06D1
06C5  0D DA 00 2B 01 F1 00 47 01 C8 0C 09    HOTSPOT_RECT                  left=0x00DA, top=0x012B, right=0x00F1, bottom=0x0147, target=0x0CC8, cursor=0x09
06D1  A3 31 B3 E2 06                         STRCMP_EQ_JMP                 start=v[0x031], values=[3], target=0x06E2
06D6  0D CE 00 FE 00 E6 00 16 01 0A 0D 09    HOTSPOT_RECT                  left=0x00CE, top=0x00FE, right=0x00E6, bottom=0x0116, target=0x0D0A, cursor=0x09
06E2  A3 37 B3 F3 06                         STRCMP_EQ_JMP                 start=v[0x037], values=[3], target=0x06F3
06E7  0D 1C 01 A8 00 31 01 BF 00 D0 0D 09    HOTSPOT_RECT                  left=0x011C, top=0x00A8, right=0x0131, bottom=0x00BF, target=0x0DD0, cursor=0x09
06F3  A3 39 B3 04 07                         STRCMP_EQ_JMP                 start=v[0x039], values=[3], target=0x0704
06F8  0D 48 01 B5 00 5F 01 CC 00 12 0E 09    HOTSPOT_RECT                  left=0x0148, top=0x00B5, right=0x015F, bottom=0x00CC, target=0x0E12, cursor=0x09
0704  13                                     INPUTLOOPEND
0705  9A 35 B1 56 07                         STRCMP_NE_JMP                 start=v[0x035], values=[1], target=0x0756
070A  96 35 B3                               LOADSTRING                    dst=v[0x035], values=[3]
070D  96 32 B2                               LOADSTRING                    dst=v[0x032], values=[2]
0710  0B                                     INPUTLOOPSTART
0711  A3 30 B3 22 07                         STRCMP_EQ_JMP                 start=v[0x030], values=[3], target=0x0722
0716  0D CA 00 17 01 E3 00 30 01 E9 0C 09    HOTSPOT_RECT                  left=0x00CA, top=0x0117, right=0x00E3, bottom=0x0130, target=0x0CE9, cursor=0x09
0722  A3 32 B3 33 07                         STRCMP_EQ_JMP                 start=v[0x032], values=[3], target=0x0733
0727  0D D1 00 E7 00 E9 00 FD 00 2B 0D 09    HOTSPOT_RECT                  left=0x00D1, top=0x00E7, right=0x00E9, bottom=0x00FD, target=0x0D2B, cursor=0x09
0733  A3 38 B3 44 07                         STRCMP_EQ_JMP                 start=v[0x038], values=[3], target=0x0744
0738  0D 31 01 AE 00 48 01 C4 00 F1 0D 09    HOTSPOT_RECT                  left=0x0131, top=0x00AE, right=0x0148, bottom=0x00C4, target=0x0DF1, cursor=0x09
0744  A3 3A B3 55 07                         STRCMP_EQ_JMP                 start=v[0x03A], values=[3], target=0x0755
0749  0D 65 01 B4 00 7A 01 C8 00 33 0E 09    HOTSPOT_RECT                  left=0x0165, top=0x00B4, right=0x017A, bottom=0x00C8, target=0x0E33, cursor=0x09
0755  13                                     INPUTLOOPEND
0756  9A 36 B1 A7 07                         STRCMP_NE_JMP                 start=v[0x036], values=[1], target=0x07A7
075B  96 36 B3                               LOADSTRING                    dst=v[0x036], values=[3]
075E  96 39 B2                               LOADSTRING                    dst=v[0x039], values=[2]
0761  0B                                     INPUTLOOPSTART
0762  A3 31 B3 73 07                         STRCMP_EQ_JMP                 start=v[0x031], values=[3], target=0x0773
0767  0D CE 00 FE 00 E6 00 16 01 0A 0D 09    HOTSPOT_RECT                  left=0x00CE, top=0x00FE, right=0x00E6, bottom=0x0116, target=0x0D0A, cursor=0x09
0773  A3 33 B3 84 07                         STRCMP_EQ_JMP                 start=v[0x033], values=[3], target=0x0784
0778  0D D7 00 CF 00 EE 00 E6 00 4C 0D 09    HOTSPOT_RECT                  left=0x00D7, top=0x00CF, right=0x00EE, bottom=0x00E6, target=0x0D4C, cursor=0x09
0784  A3 39 B3 95 07                         STRCMP_EQ_JMP                 start=v[0x039], values=[3], target=0x0795
0789  0D 48 01 B5 00 5F 01 CC 00 12 0E 09    HOTSPOT_RECT                  left=0x0148, top=0x00B5, right=0x015F, bottom=0x00CC, target=0x0E12, cursor=0x09
0795  A3 3B B3 A6 07                         STRCMP_EQ_JMP                 start=v[0x03B], values=[3], target=0x07A6
079A  0D 71 01 C7 00 88 01 DB 00 54 0E 09    HOTSPOT_RECT                  left=0x0171, top=0x00C7, right=0x0188, bottom=0x00DB, target=0x0E54, cursor=0x09
07A6  13                                     INPUTLOOPEND
07A7  9A 37 B1 F8 07                         STRCMP_NE_JMP                 start=v[0x037], values=[1], target=0x07F8
07AC  96 37 B3                               LOADSTRING                    dst=v[0x037], values=[3]
07AF  96 3C B2                               LOADSTRING                    dst=v[0x03C], values=[2]
07B2  0B                                     INPUTLOOPSTART
07B3  A3 32 B3 C4 07                         STRCMP_EQ_JMP                 start=v[0x032], values=[3], target=0x07C4
07B8  0D D1 00 E7 00 E9 00 FD 00 2B 0D 09    HOTSPOT_RECT                  left=0x00D1, top=0x00E7, right=0x00E9, bottom=0x00FD, target=0x0D2B, cursor=0x09
07C4  A3 3A B3 D5 07                         STRCMP_EQ_JMP                 start=v[0x03A], values=[3], target=0x07D5
07C9  0D 65 01 B4 00 7A 01 C8 00 33 0E 09    HOTSPOT_RECT                  left=0x0165, top=0x00B4, right=0x017A, bottom=0x00C8, target=0x0E33, cursor=0x09
07D5  A3 3C B3 E6 07                         STRCMP_EQ_JMP                 start=v[0x03C], values=[3], target=0x07E6
07DA  0D 78 01 DC 00 90 01 F2 00 75 0E 09    HOTSPOT_RECT                  left=0x0178, top=0x00DC, right=0x0190, bottom=0x00F2, target=0x0E75, cursor=0x09
07E6  A3 34 B3 F7 07                         STRCMP_EQ_JMP                 start=v[0x034], values=[3], target=0x07F7
07EB  0D DE 00 B9 00 F4 00 D0 00 6D 0D 09    HOTSPOT_RECT                  left=0x00DE, top=0x00B9, right=0x00F4, bottom=0x00D0, target=0x0D6D, cursor=0x09
07F7  13                                     INPUTLOOPEND
07F8  9A 38 B1 49 08                         STRCMP_NE_JMP                 start=v[0x038], values=[1], target=0x0849
07FD  96 38 B3                               LOADSTRING                    dst=v[0x038], values=[3]
0800  96 33 B2                               LOADSTRING                    dst=v[0x033], values=[2]
0803  0B                                     INPUTLOOPSTART
0804  A3 33 B3 15 08                         STRCMP_EQ_JMP                 start=v[0x033], values=[3], target=0x0815
0809  0D D7 00 CF 00 EE 00 E6 00 4C 0D 09    HOTSPOT_RECT                  left=0x00D7, top=0x00CF, right=0x00EE, bottom=0x00E6, target=0x0D4C, cursor=0x09
0815  A3 35 B3 26 08                         STRCMP_EQ_JMP                 start=v[0x035], values=[3], target=0x0826
081A  0D F1 00 AC 00 08 01 C2 00 8E 0D 09    HOTSPOT_RECT                  left=0x00F1, top=0x00AC, right=0x0108, bottom=0x00C2, target=0x0D8E, cursor=0x09
0826  A3 3B B3 37 08                         STRCMP_EQ_JMP                 start=v[0x03B], values=[3], target=0x0837
082B  0D 71 01 C7 00 88 01 DB 00 54 0E 09    HOTSPOT_RECT                  left=0x0171, top=0x00C7, right=0x0188, bottom=0x00DB, target=0x0E54, cursor=0x09
0837  A3 3D B3 48 08                         STRCMP_EQ_JMP                 start=v[0x03D], values=[3], target=0x0848
083C  0D 70 01 F6 00 88 01 0F 01 96 0E 09    HOTSPOT_RECT                  left=0x0170, top=0x00F6, right=0x0188, bottom=0x010F, target=0x0E96, cursor=0x09
0848  13                                     INPUTLOOPEND
0849  9A 39 B1 9A 08                         STRCMP_NE_JMP                 start=v[0x039], values=[1], target=0x089A
084E  96 39 B3                               LOADSTRING                    dst=v[0x039], values=[3]
0851  96 3E B2                               LOADSTRING                    dst=v[0x03E], values=[2]
0854  0B                                     INPUTLOOPSTART
0855  A3 36 B3 66 08                         STRCMP_EQ_JMP                 start=v[0x036], values=[3], target=0x0866
085A  0D 08 01 9C 00 1C 01 B2 00 AF 0D 09    HOTSPOT_RECT                  left=0x0108, top=0x009C, right=0x011C, bottom=0x00B2, target=0x0DAF, cursor=0x09
0866  A3 3C B3 77 08                         STRCMP_EQ_JMP                 start=v[0x03C], values=[3], target=0x0877
086B  0D 78 01 DC 00 90 01 F2 00 75 0E 09    HOTSPOT_RECT                  left=0x0178, top=0x00DC, right=0x0190, bottom=0x00F2, target=0x0E75, cursor=0x09
0877  A3 34 B3 88 08                         STRCMP_EQ_JMP                 start=v[0x034], values=[3], target=0x0888
087C  0D DE 00 B9 00 F4 00 D0 00 6D 0D 09    HOTSPOT_RECT                  left=0x00DE, top=0x00B9, right=0x00F4, bottom=0x00D0, target=0x0D6D, cursor=0x09
0888  A3 3E B3 99 08                         STRCMP_EQ_JMP                 start=v[0x03E], values=[3], target=0x0899
088D  0D 59 01 0E 01 73 01 29 01 B7 0E 09    HOTSPOT_RECT                  left=0x0159, top=0x010E, right=0x0173, bottom=0x0129, target=0x0EB7, cursor=0x09
0899  13                                     INPUTLOOPEND
089A  9A 3A B1 EB 08                         STRCMP_NE_JMP                 start=v[0x03A], values=[1], target=0x08EB
089F  96 3A B3                               LOADSTRING                    dst=v[0x03A], values=[3]
08A2  96 3D B2                               LOADSTRING                    dst=v[0x03D], values=[2]
08A5  0B                                     INPUTLOOPSTART
08A6  A3 35 B3 B7 08                         STRCMP_EQ_JMP                 start=v[0x035], values=[3], target=0x08B7
08AB  0D F1 00 AC 00 08 01 C2 00 8E 0D 09    HOTSPOT_RECT                  left=0x00F1, top=0x00AC, right=0x0108, bottom=0x00C2, target=0x0D8E, cursor=0x09
08B7  A3 37 B3 C8 08                         STRCMP_EQ_JMP                 start=v[0x037], values=[3], target=0x08C8
08BC  0D 1C 01 A8 00 31 01 BF 00 D0 0D 09    HOTSPOT_RECT                  left=0x011C, top=0x00A8, right=0x0131, bottom=0x00BF, target=0x0DD0, cursor=0x09
08C8  A3 3D B3 D9 08                         STRCMP_EQ_JMP                 start=v[0x03D], values=[3], target=0x08D9
08CD  0D 70 01 F6 00 88 01 0F 01 96 0E 09    HOTSPOT_RECT                  left=0x0170, top=0x00F6, right=0x0188, bottom=0x010F, target=0x0E96, cursor=0x09
08D9  A3 3F B3 EA 08                         STRCMP_EQ_JMP                 start=v[0x03F], values=[3], target=0x08EA
08DE  0D 40 01 0A 01 59 01 22 01 D8 0E 09    HOTSPOT_RECT                  left=0x0140, top=0x010A, right=0x0159, bottom=0x0122, target=0x0ED8, cursor=0x09
08EA  13                                     INPUTLOOPEND
08EB  9A 3B B1 3C 09                         STRCMP_NE_JMP                 start=v[0x03B], values=[1], target=0x093C
08F0  96 3B B3                               LOADSTRING                    dst=v[0x03B], values=[3]
08F3  96 40 B2                               LOADSTRING                    dst=v[0x040], values=[2]
08F6  0B                                     INPUTLOOPSTART
08F7  A3 36 B3 08 09                         STRCMP_EQ_JMP                 start=v[0x036], values=[3], target=0x0908
08FC  0D 08 01 9C 00 1C 01 B2 00 AF 0D 09    HOTSPOT_RECT                  left=0x0108, top=0x009C, right=0x011C, bottom=0x00B2, target=0x0DAF, cursor=0x09
0908  A3 38 B3 19 09                         STRCMP_EQ_JMP                 start=v[0x038], values=[3], target=0x0919
090D  0D 31 01 AE 00 48 01 C4 00 F1 0D 09    HOTSPOT_RECT                  left=0x0131, top=0x00AE, right=0x0148, bottom=0x00C4, target=0x0DF1, cursor=0x09
0919  A3 3E B3 2A 09                         STRCMP_EQ_JMP                 start=v[0x03E], values=[3], target=0x092A
091E  0D 59 01 0E 01 73 01 29 01 B7 0E 09    HOTSPOT_RECT                  left=0x0159, top=0x010E, right=0x0173, bottom=0x0129, target=0x0EB7, cursor=0x09
092A  A3 40 B3 3B 09                         STRCMP_EQ_JMP                 start=v[0x040], values=[3], target=0x093B
092F  0D 25 01 10 01 3D 01 2C 01 F9 0E 09    HOTSPOT_RECT                  left=0x0125, top=0x0110, right=0x013D, bottom=0x012C, target=0x0EF9, cursor=0x09
093B  13                                     INPUTLOOPEND
093C  9A 3C B1 7C 09                         STRCMP_NE_JMP                 start=v[0x03C], values=[1], target=0x097C
0941  96 3C B3                               LOADSTRING                    dst=v[0x03C], values=[3]
0944  96 3F B2                               LOADSTRING                    dst=v[0x03F], values=[2]
0947  0B                                     INPUTLOOPSTART
0948  A3 37 B3 59 09                         STRCMP_EQ_JMP                 start=v[0x037], values=[3], target=0x0959
094D  0D 1C 01 A8 00 31 01 BF 00 D0 0D 09    HOTSPOT_RECT                  left=0x011C, top=0x00A8, right=0x0131, bottom=0x00BF, target=0x0DD0, cursor=0x09
0959  A3 39 B3 6A 09                         STRCMP_EQ_JMP                 start=v[0x039], values=[3], target=0x096A
095E  0D 48 01 B5 00 5F 01 CC 00 12 0E 09    HOTSPOT_RECT                  left=0x0148, top=0x00B5, right=0x015F, bottom=0x00CC, target=0x0E12, cursor=0x09
096A  A3 3F B3 7B 09                         STRCMP_EQ_JMP                 start=v[0x03F], values=[3], target=0x097B
096F  0D 40 01 0A 01 59 01 22 01 D8 0E 09    HOTSPOT_RECT                  left=0x0140, top=0x010A, right=0x0159, bottom=0x0122, target=0x0ED8, cursor=0x09
097B  13                                     INPUTLOOPEND
097C  9A 3D B1 BC 09                         STRCMP_NE_JMP                 start=v[0x03D], values=[1], target=0x09BC
0981  96 3D B3                               LOADSTRING                    dst=v[0x03D], values=[3]
0984  96 38 B2                               LOADSTRING                    dst=v[0x038], values=[2]
0987  0B                                     INPUTLOOPSTART
0988  A3 38 B3 99 09                         STRCMP_EQ_JMP                 start=v[0x038], values=[3], target=0x0999
098D  0D 31 01 AE 00 48 01 C4 00 F1 0D 09    HOTSPOT_RECT                  left=0x0131, top=0x00AE, right=0x0148, bottom=0x00C4, target=0x0DF1, cursor=0x09
0999  A3 3A B3 AA 09                         STRCMP_EQ_JMP                 start=v[0x03A], values=[3], target=0x09AA
099E  0D 65 01 B4 00 7A 01 C8 00 33 0E 09    HOTSPOT_RECT                  left=0x0165, top=0x00B4, right=0x017A, bottom=0x00C8, target=0x0E33, cursor=0x09
09AA  A3 40 B3 BB 09                         STRCMP_EQ_JMP                 start=v[0x040], values=[3], target=0x09BB
09AF  0D 25 01 10 01 3D 01 2C 01 F9 0E 09    HOTSPOT_RECT                  left=0x0125, top=0x0110, right=0x013D, bottom=0x012C, target=0x0EF9, cursor=0x09
09BB  13                                     INPUTLOOPEND
09BC  9A 3E B1 FC 09                         STRCMP_NE_JMP                 start=v[0x03E], values=[1], target=0x09FC
09C1  96 3E B3                               LOADSTRING                    dst=v[0x03E], values=[3]
09C4  96 3B B2                               LOADSTRING                    dst=v[0x03B], values=[2]
09C7  0B                                     INPUTLOOPSTART
09C8  A3 39 B3 D9 09                         STRCMP_EQ_JMP                 start=v[0x039], values=[3], target=0x09D9
09CD  0D 48 01 B5 00 5F 01 CC 00 12 0E 09    HOTSPOT_RECT                  left=0x0148, top=0x00B5, right=0x015F, bottom=0x00CC, target=0x0E12, cursor=0x09
09D9  A3 3B B3 EA 09                         STRCMP_EQ_JMP                 start=v[0x03B], values=[3], target=0x09EA
09DE  0D 71 01 C7 00 88 01 DB 00 54 0E 09    HOTSPOT_RECT                  left=0x0171, top=0x00C7, right=0x0188, bottom=0x00DB, target=0x0E54, cursor=0x09
09EA  A3 43 B3 FB 09                         STRCMP_EQ_JMP                 start=v[0x043], values=[3], target=0x09FB
09EF  0D 03 01 D3 00 1C 01 EB 00 1A 0F 09    HOTSPOT_RECT                  left=0x0103, top=0x00D3, right=0x011C, bottom=0x00EB, target=0x0F1A, cursor=0x09
09FB  13                                     INPUTLOOPEND
09FC  9A 3F B1 2B 0A                         STRCMP_NE_JMP                 start=v[0x03F], values=[1], target=0x0A2B
0A01  96 3F B3                               LOADSTRING                    dst=v[0x03F], values=[3]
0A04  96 3A B2                               LOADSTRING                    dst=v[0x03A], values=[2]
0A07  0B                                     INPUTLOOPSTART
0A08  A3 3A B3 19 0A                         STRCMP_EQ_JMP                 start=v[0x03A], values=[3], target=0x0A19
0A0D  0D 65 01 B4 00 7A 01 C8 00 33 0E 09    HOTSPOT_RECT                  left=0x0165, top=0x00B4, right=0x017A, bottom=0x00C8, target=0x0E33, cursor=0x09
0A19  A3 3C B3 2A 0A                         STRCMP_EQ_JMP                 start=v[0x03C], values=[3], target=0x0A2A
0A1E  0D 78 01 DC 00 90 01 F2 00 75 0E 09    HOTSPOT_RECT                  left=0x0178, top=0x00DC, right=0x0190, bottom=0x00F2, target=0x0E75, cursor=0x09
0A2A  13                                     INPUTLOOPEND
0A2B  9A 40 B1 6B 0A                         STRCMP_NE_JMP                 start=v[0x040], values=[1], target=0x0A6B
0A30  96 40 B3                               LOADSTRING                    dst=v[0x040], values=[3]
0A33  96 43 B2                               LOADSTRING                    dst=v[0x043], values=[2]
0A36  0B                                     INPUTLOOPSTART
0A37  A3 3B B3 48 0A                         STRCMP_EQ_JMP                 start=v[0x03B], values=[3], target=0x0A48
0A3C  0D 71 01 C7 00 88 01 DB 00 54 0E 09    HOTSPOT_RECT                  left=0x0171, top=0x00C7, right=0x0188, bottom=0x00DB, target=0x0E54, cursor=0x09
0A48  A3 3D B3 59 0A                         STRCMP_EQ_JMP                 start=v[0x03D], values=[3], target=0x0A59
0A4D  0D 70 01 F6 00 88 01 0F 01 96 0E 09    HOTSPOT_RECT                  left=0x0170, top=0x00F6, right=0x0188, bottom=0x010F, target=0x0E96, cursor=0x09
0A59  A3 43 B3 6A 0A                         STRCMP_EQ_JMP                 start=v[0x043], values=[3], target=0x0A6A
0A5E  0D 03 01 D3 00 1C 01 EB 00 1A 0F 09    HOTSPOT_RECT                  left=0x0103, top=0x00D3, right=0x011C, bottom=0x00EB, target=0x0F1A, cursor=0x09
0A6A  13                                     INPUTLOOPEND
0A6B  9A 43 B1 97 0A                         STRCMP_NE_JMP                 start=v[0x043], values=[1], target=0x0A97
0A70  96 43 B3                               LOADSTRING                    dst=v[0x043], values=[3]
0A73  0B                                     INPUTLOOPSTART
0A74  A3 3E B3 85 0A                         STRCMP_EQ_JMP                 start=v[0x03E], values=[3], target=0x0A85
0A79  0D 59 01 0E 01 73 01 29 01 B7 0E 09    HOTSPOT_RECT                  left=0x0159, top=0x010E, right=0x0173, bottom=0x0129, target=0x0EB7, cursor=0x09
0A85  A3 40 B3 96 0A                         STRCMP_EQ_JMP                 start=v[0x040], values=[3], target=0x0A96
0A8A  0D 25 01 10 01 3D 01 2C 01 F9 0E 09    HOTSPOT_RECT                  left=0x0125, top=0x0110, right=0x013D, bottom=0x012C, target=0x0EF9, cursor=0x09
0A96  13                                     INPUTLOOPEND
0A97  9A 1B B2 B5 0A                         STRCMP_NE_JMP                 start=v[0x01B], values=[2], target=0x0AB5
0A9C  96 1B B1                               LOADSTRING                    dst=v[0x01B], values=[1]
0A9F  9C 1A 38                               VIDEO_TRANSITION_REF          ref=0x381A (MB[26]=mb_stn04.vdx)
0AA2  09 0A 38                               VIDEOREF                      ref=0x380A (MB[10]=mb_@.vdx)
0AA5  22                                     COPY_BG_TO_FG
0AA6  1C 00 38                               VIDEO_TRANSITION_REF          ref=0x3800 (MB[0]=mb1p.vdx)
0AA9  37 0B 01 77 00 20 01 8B 00             COPY_RECT_TO_BG               left=0x010B, top=0x0077, right=0x0120, bottom=0x008B
0AB2  15 71 00                               JMP                           target=0x0071
0AB5  15 3B 0F                               JMP                           target=0x0F3B
0AB8  9A 1C B2 D6 0A                         STRCMP_NE_JMP                 start=v[0x01C], values=[2], target=0x0AD6
0ABD  96 1C B1                               LOADSTRING                    dst=v[0x01C], values=[1]
0AC0  9C 17 38                               VIDEO_TRANSITION_REF          ref=0x3817 (MB[23]=mb_stn01.vdx)
0AC3  09 3B 38                               VIDEOREF                      ref=0x383B (MB[59]=mb_t.vdx)
0AC6  22                                     COPY_BG_TO_FG
0AC7  1C 00 38                               VIDEO_TRANSITION_REF          ref=0x3800 (MB[0]=mb1p.vdx)
0ACA  37 21 01 7D 00 36 01 92 00             COPY_RECT_TO_BG               left=0x0121, top=0x007D, right=0x0136, bottom=0x0092
0AD3  15 71 00                               JMP                           target=0x0071
0AD6  15 3B 0F                               JMP                           target=0x0F3B
0AD9  9A 1D B2 F7 0A                         STRCMP_NE_JMP                 start=v[0x01D], values=[2], target=0x0AF7
0ADE  96 1D B1                               LOADSTRING                    dst=v[0x01D], values=[1]
0AE1  9C 1C 38                               VIDEO_TRANSITION_REF          ref=0x381C (MB[28]=mb_stn06.vdx)
0AE4  09 12 38                               VIDEOREF                      ref=0x3812 (MB[18]=mb_k.vdx)
0AE7  22                                     COPY_BG_TO_FG
0AE8  1C 00 38                               VIDEO_TRANSITION_REF          ref=0x3800 (MB[0]=mb1p.vdx)
0AEB  37 35 01 81 00 4D 01 98 00             COPY_RECT_TO_BG               left=0x0135, top=0x0081, right=0x014D, bottom=0x0098
0AF4  15 71 00                               JMP                           target=0x0071
0AF7  15 3B 0F                               JMP                           target=0x0F3B
0AFA  9A 1E B2 18 0B                         STRCMP_NE_JMP                 start=v[0x01E], values=[2], target=0x0B18
0AFF  96 1E B1                               LOADSTRING                    dst=v[0x01E], values=[1]
0B02  9C 19 38                               VIDEO_TRANSITION_REF          ref=0x3819 (MB[25]=mb_stn03.vdx)
0B05  09 0E 38                               VIDEOREF                      ref=0x380E (MB[14]=mb_e.vdx)
0B08  22                                     COPY_BG_TO_FG
0B09  1C 00 38                               VIDEO_TRANSITION_REF          ref=0x3800 (MB[0]=mb1p.vdx)
0B0C  37 52 01 80 00 66 01 97 00             COPY_RECT_TO_BG               left=0x0152, top=0x0080, right=0x0166, bottom=0x0097
0B15  15 71 00                               JMP                           target=0x0071
0B18  15 3B 0F                               JMP                           target=0x0F3B
0B1B  9A 20 B2 39 0B                         STRCMP_NE_JMP                 start=v[0x020], values=[2], target=0x0B39
0B20  96 20 B1                               LOADSTRING                    dst=v[0x020], values=[1]
0B23  9C 1B 38                               VIDEO_TRANSITION_REF          ref=0x381B (MB[27]=mb_stn05.vdx)
0B26  09 16 38                               VIDEOREF                      ref=0x3816 (MB[22]=mb_s.vdx)
0B29  22                                     COPY_BG_TO_FG
0B2A  1C 00 38                               VIDEO_TRANSITION_REF          ref=0x3800 (MB[0]=mb1p.vdx)
0B2D  37 76 01 98 00 8C 01 AB 00             COPY_RECT_TO_BG               left=0x0176, top=0x0098, right=0x018C, bottom=0x00AB
0B36  15 71 00                               JMP                           target=0x0071
0B39  15 3B 0F                               JMP                           target=0x0F3B
0B3C  9A 21 B2 5A 0B                         STRCMP_NE_JMP                 start=v[0x021], values=[2], target=0x0B5A
0B41  96 21 B1                               LOADSTRING                    dst=v[0x021], values=[1]
0B44  9C 18 38                               VIDEO_TRANSITION_REF          ref=0x3818 (MB[24]=mb_stn02.vdx)
0B47  09 10 38                               VIDEOREF                      ref=0x3810 (MB[16]=mb_h.vdx)
0B4A  22                                     COPY_BG_TO_FG
0B4B  1C 00 38                               VIDEO_TRANSITION_REF          ref=0x3800 (MB[0]=mb1p.vdx)
0B4E  37 8D 01 9B 00 A6 01 AF 00             COPY_RECT_TO_BG               left=0x018D, top=0x009B, right=0x01A6, bottom=0x00AF
0B57  15 71 00                               JMP                           target=0x0071
0B5A  15 3B 0F                               JMP                           target=0x0F3B
0B5D  9A 22 B2 7B 0B                         STRCMP_NE_JMP                 start=v[0x022], values=[2], target=0x0B7B
0B62  96 22 B1                               LOADSTRING                    dst=v[0x022], values=[1]
0B65  9C 1D 38                               VIDEO_TRANSITION_REF          ref=0x381D (MB[29]=mb_stn07.vdx)
0B68  09 3E 38                               VIDEOREF                      ref=0x383E (MB[62]=mb_y.vdx)
0B6B  22                                     COPY_BG_TO_FG
0B6C  1C 00 38                               VIDEO_TRANSITION_REF          ref=0x3800 (MB[0]=mb1p.vdx)
0B6F  37 94 01 B0 00 AA 01 C5 00             COPY_RECT_TO_BG               left=0x0194, top=0x00B0, right=0x01AA, bottom=0x00C5
0B78  15 71 00                               JMP                           target=0x0071
0B7B  15 3B 0F                               JMP                           target=0x0F3B
0B7E  9A 24 B2 9C 0B                         STRCMP_NE_JMP                 start=v[0x024], values=[2], target=0x0B9C
0B83  96 24 B1                               LOADSTRING                    dst=v[0x024], values=[1]
0B86  9C 23 38                               VIDEO_TRANSITION_REF          ref=0x3823 (MB[35]=mb_stn13.vdx)
0B89  09 3C 38                               VIDEOREF                      ref=0x383C (MB[60]=mb_u.vdx)
0B8C  22                                     COPY_BG_TO_FG
0B8D  1C 00 38                               VIDEO_TRANSITION_REF          ref=0x3800 (MB[0]=mb1p.vdx)
0B90  37 9C 01 D9 00 B3 01 EF 00             COPY_RECT_TO_BG               left=0x019C, top=0x00D9, right=0x01B3, bottom=0x00EF
0B99  15 71 00                               JMP                           target=0x0071
0B9C  15 3B 0F                               JMP                           target=0x0F3B
0B9F  9A 25 B2 BD 0B                         STRCMP_NE_JMP                 start=v[0x025], values=[2], target=0x0BBD
0BA4  96 25 B1                               LOADSTRING                    dst=v[0x025], values=[1]
0BA7  9C 1E 38                               VIDEO_TRANSITION_REF          ref=0x381E (MB[30]=mb_stn08.vdx)
0BAA  09 0A 38                               VIDEOREF                      ref=0x380A (MB[10]=mb_@.vdx)
0BAD  22                                     COPY_BG_TO_FG
0BAE  1C 00 38                               VIDEO_TRANSITION_REF          ref=0x3800 (MB[0]=mb1p.vdx)
0BB1  37 A8 01 F6 00 BF 01 0A 01             COPY_RECT_TO_BG               left=0x01A8, top=0x00F6, right=0x01BF, bottom=0x010A
0BBA  15 71 00                               JMP                           target=0x0071
0BBD  15 3B 0F                               JMP                           target=0x0F3B
0BC0  9A 26 B2 DE 0B                         STRCMP_NE_JMP                 start=v[0x026], values=[2], target=0x0BDE
0BC5  96 26 B1                               LOADSTRING                    dst=v[0x026], values=[1]
0BC8  9C 21 38                               VIDEO_TRANSITION_REF          ref=0x3821 (MB[33]=mb_stn11.vdx)
0BCB  09 0A 38                               VIDEOREF                      ref=0x380A (MB[10]=mb_@.vdx)
0BCE  22                                     COPY_BG_TO_FG
0BCF  1C 00 38                               VIDEO_TRANSITION_REF          ref=0x3800 (MB[0]=mb1p.vdx)
0BD2  37 9C 01 0A 01 B4 01 20 01             COPY_RECT_TO_BG               left=0x019C, top=0x010A, right=0x01B4, bottom=0x0120
0BDB  15 71 00                               JMP                           target=0x0071
0BDE  15 3B 0F                               JMP                           target=0x0F3B
0BE1  9A 27 B2 FF 0B                         STRCMP_NE_JMP                 start=v[0x027], values=[2], target=0x0BFF
0BE6  96 27 B1                               LOADSTRING                    dst=v[0x027], values=[1]
0BE9  9C 24 38                               VIDEO_TRANSITION_REF          ref=0x3824 (MB[36]=mb_stn14.vdx)
0BEC  09 0D 38                               VIDEOREF                      ref=0x380D (MB[13]=mb_d.vdx)
0BEF  22                                     COPY_BG_TO_FG
0BF0  1C 00 38                               VIDEO_TRANSITION_REF          ref=0x3800 (MB[0]=mb1p.vdx)
0BF3  37 9E 01 24 01 B6 01 3B 01             COPY_RECT_TO_BG               left=0x019E, top=0x0124, right=0x01B6, bottom=0x013B
0BFC  15 71 00                               JMP                           target=0x0071
0BFF  15 3B 0F                               JMP                           target=0x0F3B
0C02  9A 28 B2 20 0C                         STRCMP_NE_JMP                 start=v[0x028], values=[2], target=0x0C20
0C07  96 28 B1                               LOADSTRING                    dst=v[0x028], values=[1]
0C0A  9C 1F 38                               VIDEO_TRANSITION_REF          ref=0x381F (MB[31]=mb_stn09.vdx)
0C0D  09 11 38                               VIDEOREF                      ref=0x3811 (MB[17]=mb_i.vdx)
0C10  22                                     COPY_BG_TO_FG
0C11  1C 00 38                               VIDEO_TRANSITION_REF          ref=0x3800 (MB[0]=mb1p.vdx)
0C14  37 8D 01 34 01 A2 01 4C 01             COPY_RECT_TO_BG               left=0x018D, top=0x0134, right=0x01A2, bottom=0x014C
0C1D  15 71 00                               JMP                           target=0x0071
0C20  15 3B 0F                               JMP                           target=0x0F3B
0C23  9A 29 B2 41 0C                         STRCMP_NE_JMP                 start=v[0x029], values=[2], target=0x0C41
0C28  96 29 B1                               LOADSTRING                    dst=v[0x029], values=[1]
0C2B  9C 22 38                               VIDEO_TRANSITION_REF          ref=0x3822 (MB[34]=mb_stn12.vdx)
0C2E  09 15 38                               VIDEOREF                      ref=0x3815 (MB[21]=mb_r.vdx)
0C31  22                                     COPY_BG_TO_FG
0C32  1C 00 38                               VIDEO_TRANSITION_REF          ref=0x3800 (MB[0]=mb1p.vdx)
0C35  37 70 01 35 01 87 01 4D 01             COPY_RECT_TO_BG               left=0x0170, top=0x0135, right=0x0187, bottom=0x014D
0C3E  15 71 00                               JMP                           target=0x0071
0C41  15 3B 0F                               JMP                           target=0x0F3B
0C44  9A 2A B2 62 0C                         STRCMP_NE_JMP                 start=v[0x02A], values=[2], target=0x0C62
0C49  96 2A B1                               LOADSTRING                    dst=v[0x02A], values=[1]
0C4C  9C 25 38                               VIDEO_TRANSITION_REF          ref=0x3825 (MB[37]=mb_stn15.vdx)
0C4F  09 0D 38                               VIDEOREF                      ref=0x380D (MB[13]=mb_d.vdx)
0C52  22                                     COPY_BG_TO_FG
0C53  1C 00 38                               VIDEO_TRANSITION_REF          ref=0x3800 (MB[0]=mb1p.vdx)
0C56  37 55 01 37 01 6C 01 50 01             COPY_RECT_TO_BG               left=0x0155, top=0x0137, right=0x016C, bottom=0x0150
0C5F  15 71 00                               JMP                           target=0x0071
0C62  15 3B 0F                               JMP                           target=0x0F3B
0C65  9A 2B B2 83 0C                         STRCMP_NE_JMP                 start=v[0x02B], values=[2], target=0x0C83
0C6A  96 2B B1                               LOADSTRING                    dst=v[0x02B], values=[1]
0C6D  9C 20 38                               VIDEO_TRANSITION_REF          ref=0x3820 (MB[32]=mb_stn10.vdx)
0C70  09 16 38                               VIDEOREF                      ref=0x3816 (MB[22]=mb_s.vdx)
0C73  22                                     COPY_BG_TO_FG
0C74  1C 00 38                               VIDEO_TRANSITION_REF          ref=0x3800 (MB[0]=mb1p.vdx)
0C77  37 3D 01 42 01 54 01 5A 01             COPY_RECT_TO_BG               left=0x013D, top=0x0142, right=0x0154, bottom=0x015A
0C80  15 71 00                               JMP                           target=0x0071
0C83  15 3B 0F                               JMP                           target=0x0F3B
0C86  9A 2C B2 A4 0C                         STRCMP_NE_JMP                 start=v[0x02C], values=[2], target=0x0CA4
0C8B  96 2C B1                               LOADSTRING                    dst=v[0x02C], values=[1]
0C8E  9C 2B 38                               VIDEO_TRANSITION_REF          ref=0x382B (MB[43]=mb_stn21.vdx)
0C91  09 15 38                               VIDEOREF                      ref=0x3815 (MB[21]=mb_r.vdx)
0C94  22                                     COPY_BG_TO_FG
0C95  1C 00 38                               VIDEO_TRANSITION_REF          ref=0x3800 (MB[0]=mb1p.vdx)
0C98  37 24 01 36 01 3A 01 4E 01             COPY_RECT_TO_BG               left=0x0124, top=0x0136, right=0x013A, bottom=0x014E
0CA1  15 71 00                               JMP                           target=0x0071
0CA4  15 3B 0F                               JMP                           target=0x0F3B
0CA7  9A 2D B2 C5 0C                         STRCMP_NE_JMP                 start=v[0x02D], values=[2], target=0x0CC5
0CAC  96 2D B1                               LOADSTRING                    dst=v[0x02D], values=[1]
0CAF  9C 26 38                               VIDEO_TRANSITION_REF          ref=0x3826 (MB[38]=mb_stn16.vdx)
0CB2  09 3E 38                               VIDEOREF                      ref=0x383E (MB[62]=mb_y.vdx)
0CB5  22                                     COPY_BG_TO_FG
0CB6  1C 00 38                               VIDEO_TRANSITION_REF          ref=0x3800 (MB[0]=mb1p.vdx)
0CB9  37 0B 01 2E 01 22 01 4A 01             COPY_RECT_TO_BG               left=0x010B, top=0x012E, right=0x0122, bottom=0x014A
0CC2  15 71 00                               JMP                           target=0x0071
0CC5  15 3B 0F                               JMP                           target=0x0F3B
0CC8  9A 2F B2 E6 0C                         STRCMP_NE_JMP                 start=v[0x02F], values=[2], target=0x0CE6
0CCD  96 2F B1                               LOADSTRING                    dst=v[0x02F], values=[1]
0CD0  9C 2A 38                               VIDEO_TRANSITION_REF          ref=0x382A (MB[42]=mb_stn20.vdx)
0CD3  09 3C 38                               VIDEOREF                      ref=0x383C (MB[60]=mb_u.vdx)
0CD6  22                                     COPY_BG_TO_FG
0CD7  1C 00 38                               VIDEO_TRANSITION_REF          ref=0x3800 (MB[0]=mb1p.vdx)
0CDA  37 DA 00 2D 01 F0 00 44 01             COPY_RECT_TO_BG               left=0x00DA, top=0x012D, right=0x00F0, bottom=0x0144
0CE3  15 71 00                               JMP                           target=0x0071
0CE6  15 3B 0F                               JMP                           target=0x0F3B
0CE9  9A 30 B2 07 0D                         STRCMP_NE_JMP                 start=v[0x030], values=[2], target=0x0D07
0CEE  96 30 B1                               LOADSTRING                    dst=v[0x030], values=[1]
0CF1  9C 27 38                               VIDEO_TRANSITION_REF          ref=0x3827 (MB[39]=mb_stn17.vdx)
0CF4  09 0A 38                               VIDEOREF                      ref=0x380A (MB[10]=mb_@.vdx)
0CF7  22                                     COPY_BG_TO_FG
0CF8  1C 00 38                               VIDEO_TRANSITION_REF          ref=0x3800 (MB[0]=mb1p.vdx)
0CFB  37 CA 00 17 01 E3 00 2F 01             COPY_RECT_TO_BG               left=0x00CA, top=0x0117, right=0x00E3, bottom=0x012F
0D04  15 71 00                               JMP                           target=0x0071
0D07  15 3B 0F                               JMP                           target=0x0F3B
0D0A  9A 31 B2 28 0D                         STRCMP_NE_JMP                 start=v[0x031], values=[2], target=0x0D28
0D0F  96 31 B1                               LOADSTRING                    dst=v[0x031], values=[1]
0D12  9C 2C 38                               VIDEO_TRANSITION_REF          ref=0x382C (MB[44]=mb_stn22.vdx)
0D15  09 0A 38                               VIDEOREF                      ref=0x380A (MB[10]=mb_@.vdx)
0D18  22                                     COPY_BG_TO_FG
0D19  1C 00 38                               VIDEO_TRANSITION_REF          ref=0x3800 (MB[0]=mb1p.vdx)
0D1C  37 CD 00 FF 00 E8 00 16 01             COPY_RECT_TO_BG               left=0x00CD, top=0x00FF, right=0x00E8, bottom=0x0116
0D25  15 71 00                               JMP                           target=0x0071
0D28  15 3B 0F                               JMP                           target=0x0F3B
0D2B  9A 32 B2 49 0D                         STRCMP_NE_JMP                 start=v[0x032], values=[2], target=0x0D49
0D30  96 32 B1                               LOADSTRING                    dst=v[0x032], values=[1]
0D33  9C 29 38                               VIDEO_TRANSITION_REF          ref=0x3829 (MB[41]=mb_stn19.vdx)
0D36  09 14 38                               VIDEOREF                      ref=0x3814 (MB[20]=mb_o.vdx)
0D39  22                                     COPY_BG_TO_FG
0D3A  1C 00 38                               VIDEO_TRANSITION_REF          ref=0x3800 (MB[0]=mb1p.vdx)
0D3D  37 D1 00 E8 00 EA 00 FD 00             COPY_RECT_TO_BG               left=0x00D1, top=0x00E8, right=0x00EA, bottom=0x00FD
0D46  15 71 00                               JMP                           target=0x0071
0D49  15 3B 0F                               JMP                           target=0x0F3B
0D4C  9A 33 B2 6A 0D                         STRCMP_NE_JMP                 start=v[0x033], values=[2], target=0x0D6A
0D51  96 33 B1                               LOADSTRING                    dst=v[0x033], values=[1]
0D54  9C 34 38                               VIDEO_TRANSITION_REF          ref=0x3834 (MB[52]=mb_stn30.vdx)
0D57  09 0A 38                               VIDEOREF                      ref=0x380A (MB[10]=mb_@.vdx)
0D5A  22                                     COPY_BG_TO_FG
0D5B  1C 00 38                               VIDEO_TRANSITION_REF          ref=0x3800 (MB[0]=mb1p.vdx)
0D5E  37 D7 00 CF 00 EF 00 E6 00             COPY_RECT_TO_BG               left=0x00D7, top=0x00CF, right=0x00EF, bottom=0x00E6
0D67  15 71 00                               JMP                           target=0x0071
0D6A  15 3B 0F                               JMP                           target=0x0F3B
0D6D  9A 34 B2 8B 0D                         STRCMP_NE_JMP                 start=v[0x034], values=[2], target=0x0D8B
0D72  96 34 B1                               LOADSTRING                    dst=v[0x034], values=[1]
0D75  9C 2D 38                               VIDEO_TRANSITION_REF          ref=0x382D (MB[45]=mb_stn23.vdx)
0D78  09 0F 38                               VIDEOREF                      ref=0x380F (MB[15]=mb_f.vdx)
0D7B  22                                     COPY_BG_TO_FG
0D7C  1C 00 38                               VIDEO_TRANSITION_REF          ref=0x3800 (MB[0]=mb1p.vdx)
0D7F  37 DF 00 BA 00 F3 00 CF 00             COPY_RECT_TO_BG               left=0x00DF, top=0x00BA, right=0x00F3, bottom=0x00CF
0D88  15 71 00                               JMP                           target=0x0071
0D8B  15 3B 0F                               JMP                           target=0x0F3B
0D8E  9A 35 B2 AC 0D                         STRCMP_NE_JMP                 start=v[0x035], values=[2], target=0x0DAC
0D93  96 35 B1                               LOADSTRING                    dst=v[0x035], values=[1]
0D96  9C 28 38                               VIDEO_TRANSITION_REF          ref=0x3828 (MB[40]=mb_stn18.vdx)
0D99  09 3E 38                               VIDEOREF                      ref=0x383E (MB[62]=mb_y.vdx)
0D9C  22                                     COPY_BG_TO_FG
0D9D  1C 00 38                               VIDEO_TRANSITION_REF          ref=0x3800 (MB[0]=mb1p.vdx)
0DA0  37 F2 00 AC 00 08 01 C3 00             COPY_RECT_TO_BG               left=0x00F2, top=0x00AC, right=0x0108, bottom=0x00C3
0DA9  15 71 00                               JMP                           target=0x0071
0DAC  15 3B 0F                               JMP                           target=0x0F3B
0DAF  9A 36 B2 CD 0D                         STRCMP_NE_JMP                 start=v[0x036], values=[2], target=0x0DCD
0DB4  96 36 B1                               LOADSTRING                    dst=v[0x036], values=[1]
0DB7  9C 35 38                               VIDEO_TRANSITION_REF          ref=0x3835 (MB[53]=mb_stn31.vdx)
0DBA  09 0C 38                               VIDEOREF                      ref=0x380C (MB[12]=mb_b.vdx)
0DBD  22                                     COPY_BG_TO_FG
0DBE  1C 00 38                               VIDEO_TRANSITION_REF          ref=0x3800 (MB[0]=mb1p.vdx)
0DC1  37 09 01 9C 00 1C 01 B2 00             COPY_RECT_TO_BG               left=0x0109, top=0x009C, right=0x011C, bottom=0x00B2
0DCA  15 71 00                               JMP                           target=0x0071
0DCD  15 3B 0F                               JMP                           target=0x0F3B
0DD0  9A 37 B2 EE 0D                         STRCMP_NE_JMP                 start=v[0x037], values=[2], target=0x0DEE
0DD5  96 37 B1                               LOADSTRING                    dst=v[0x037], values=[1]
0DD8  9C 2E 38                               VIDEO_TRANSITION_REF          ref=0x382E (MB[46]=mb_stn24.vdx)
0DDB  09 0B 38                               VIDEOREF                      ref=0x380B (MB[11]=mb_a.vdx)
0DDE  22                                     COPY_BG_TO_FG
0DDF  1C 00 38                               VIDEO_TRANSITION_REF          ref=0x3800 (MB[0]=mb1p.vdx)
0DE2  37 1B 01 A8 00 30 01 BC 00             COPY_RECT_TO_BG               left=0x011B, top=0x00A8, right=0x0130, bottom=0x00BC
0DEB  15 71 00                               JMP                           target=0x0071
0DEE  15 3B 0F                               JMP                           target=0x0F3B
0DF1  9A 38 B2 0F 0E                         STRCMP_NE_JMP                 start=v[0x038], values=[2], target=0x0E0F
0DF6  96 38 B1                               LOADSTRING                    dst=v[0x038], values=[1]
0DF9  9C 33 38                               VIDEO_TRANSITION_REF          ref=0x3833 (MB[51]=mb_stn29.vdx)
0DFC  09 16 38                               VIDEOREF                      ref=0x3816 (MB[22]=mb_s.vdx)
0DFF  22                                     COPY_BG_TO_FG
0E00  1C 00 38                               VIDEO_TRANSITION_REF          ref=0x3800 (MB[0]=mb1p.vdx)
0E03  37 34 01 AD 00 47 01 C3 00             COPY_RECT_TO_BG               left=0x0134, top=0x00AD, right=0x0147, bottom=0x00C3
0E0C  15 71 00                               JMP                           target=0x0071
0E0F  15 3B 0F                               JMP                           target=0x0F3B
0E12  9A 39 B2 30 0E                         STRCMP_NE_JMP                 start=v[0x039], values=[2], target=0x0E30
0E17  96 39 B1                               LOADSTRING                    dst=v[0x039], values=[1]
0E1A  9C 36 38                               VIDEO_TRANSITION_REF          ref=0x3836 (MB[54]=mb_stn32.vdx)
0E1D  09 13 38                               VIDEOREF                      ref=0x3813 (MB[19]=mb_l.vdx)
0E20  22                                     COPY_BG_TO_FG
0E21  1C 00 38                               VIDEO_TRANSITION_REF          ref=0x3800 (MB[0]=mb1p.vdx)
0E24  37 4A 01 B3 00 5E 01 CB 00             COPY_RECT_TO_BG               left=0x014A, top=0x00B3, right=0x015E, bottom=0x00CB
0E2D  15 71 00                               JMP                           target=0x0071
0E30  15 3B 0F                               JMP                           target=0x0F3B
0E33  9A 3A B2 51 0E                         STRCMP_NE_JMP                 start=v[0x03A], values=[2], target=0x0E51
0E38  96 3A B1                               LOADSTRING                    dst=v[0x03A], values=[1]
0E3B  9C 31 38                               VIDEO_TRANSITION_REF          ref=0x3831 (MB[49]=mb_stn27.vdx)
0E3E  09 0A 38                               VIDEOREF                      ref=0x380A (MB[10]=mb_@.vdx)
0E41  22                                     COPY_BG_TO_FG
0E42  1C 00 38                               VIDEO_TRANSITION_REF          ref=0x3800 (MB[0]=mb1p.vdx)
0E45  37 64 01 B2 00 79 01 C8 00             COPY_RECT_TO_BG               left=0x0164, top=0x00B2, right=0x0179, bottom=0x00C8
0E4E  15 71 00                               JMP                           target=0x0071
0E51  15 3B 0F                               JMP                           target=0x0F3B
0E54  9A 3B B2 72 0E                         STRCMP_NE_JMP                 start=v[0x03B], values=[2], target=0x0E72
0E59  96 3B B1                               LOADSTRING                    dst=v[0x03B], values=[1]
0E5C  9C 38 38                               VIDEO_TRANSITION_REF          ref=0x3838 (MB[56]=mb_stn34.vdx)
0E5F  09 14 38                               VIDEOREF                      ref=0x3814 (MB[20]=mb_o.vdx)
0E62  22                                     COPY_BG_TO_FG
0E63  1C 00 38                               VIDEO_TRANSITION_REF          ref=0x3800 (MB[0]=mb1p.vdx)
0E66  37 70 01 C8 00 85 01 DA 00             COPY_RECT_TO_BG               left=0x0170, top=0x00C8, right=0x0185, bottom=0x00DA
0E6F  15 71 00                               JMP                           target=0x0071
0E72  15 3B 0F                               JMP                           target=0x0F3B
0E75  9A 3C B2 93 0E                         STRCMP_NE_JMP                 start=v[0x03C], values=[2], target=0x0E93
0E7A  96 3C B1                               LOADSTRING                    dst=v[0x03C], values=[1]
0E7D  9C 2F 38                               VIDEO_TRANSITION_REF          ref=0x382F (MB[47]=mb_stn25.vdx)
0E80  09 3B 38                               VIDEOREF                      ref=0x383B (MB[59]=mb_t.vdx)
0E83  22                                     COPY_BG_TO_FG
0E84  1C 00 38                               VIDEO_TRANSITION_REF          ref=0x3800 (MB[0]=mb1p.vdx)
0E87  37 7C 01 DE 00 8F 01 F2 00             COPY_RECT_TO_BG               left=0x017C, top=0x00DE, right=0x018F, bottom=0x00F2
0E90  15 71 00                               JMP                           target=0x0071
0E93  15 3B 0F                               JMP                           target=0x0F3B
0E96  9A 3D B2 B4 0E                         STRCMP_NE_JMP                 start=v[0x03D], values=[2], target=0x0EB4
0E9B  96 3D B1                               LOADSTRING                    dst=v[0x03D], values=[1]
0E9E  9C 32 38                               VIDEO_TRANSITION_REF          ref=0x3832 (MB[50]=mb_stn28.vdx)
0EA1  09 11 38                               VIDEOREF                      ref=0x3811 (MB[17]=mb_i.vdx)
0EA4  22                                     COPY_BG_TO_FG
0EA5  1C 00 38                               VIDEO_TRANSITION_REF          ref=0x3800 (MB[0]=mb1p.vdx)
0EA8  37 70 01 F5 00 87 01 0E 01             COPY_RECT_TO_BG               left=0x0170, top=0x00F5, right=0x0187, bottom=0x010E
0EB1  15 71 00                               JMP                           target=0x0071
0EB4  15 3B 0F                               JMP                           target=0x0F3B
0EB7  9A 3E B2 D5 0E                         STRCMP_NE_JMP                 start=v[0x03E], values=[2], target=0x0ED5
0EBC  96 3E B1                               LOADSTRING                    dst=v[0x03E], values=[1]
0EBF  9C 37 38                               VIDEO_TRANSITION_REF          ref=0x3837 (MB[55]=mb_stn33.vdx)
0EC2  09 14 38                               VIDEOREF                      ref=0x3814 (MB[20]=mb_o.vdx)
0EC5  22                                     COPY_BG_TO_FG
0EC6  1C 00 38                               VIDEO_TRANSITION_REF          ref=0x3800 (MB[0]=mb1p.vdx)
0EC9  37 5A 01 10 01 71 01 28 01             COPY_RECT_TO_BG               left=0x015A, top=0x0110, right=0x0171, bottom=0x0128
0ED2  15 71 00                               JMP                           target=0x0071
0ED5  15 3B 0F                               JMP                           target=0x0F3B
0ED8  9A 3F B2 F6 0E                         STRCMP_NE_JMP                 start=v[0x03F], values=[2], target=0x0EF6
0EDD  96 3F B1                               LOADSTRING                    dst=v[0x03F], values=[1]
0EE0  9C 30 38                               VIDEO_TRANSITION_REF          ref=0x3830 (MB[48]=mb_stn26.vdx)
0EE3  09 0E 38                               VIDEOREF                      ref=0x380E (MB[14]=mb_e.vdx)
0EE6  22                                     COPY_BG_TO_FG
0EE7  1C 00 38                               VIDEO_TRANSITION_REF          ref=0x3800 (MB[0]=mb1p.vdx)
0EEA  37 43 01 0A 01 59 01 21 01             COPY_RECT_TO_BG               left=0x0143, top=0x010A, right=0x0159, bottom=0x0121
0EF3  15 71 00                               JMP                           target=0x0071
0EF6  15 3B 0F                               JMP                           target=0x0F3B
0EF9  9A 40 B2 17 0F                         STRCMP_NE_JMP                 start=v[0x040], values=[2], target=0x0F17
0EFE  96 40 B1                               LOADSTRING                    dst=v[0x040], values=[1]
0F01  9C 39 38                               VIDEO_TRANSITION_REF          ref=0x3839 (MB[57]=mb_stn35.vdx)
0F04  09 0D 38                               VIDEOREF                      ref=0x380D (MB[13]=mb_d.vdx)
0F07  22                                     COPY_BG_TO_FG
0F08  1C 00 38                               VIDEO_TRANSITION_REF          ref=0x3800 (MB[0]=mb1p.vdx)
0F0B  37 26 01 10 01 3B 01 2A 01             COPY_RECT_TO_BG               left=0x0126, top=0x0110, right=0x013B, bottom=0x012A
0F14  15 71 00                               JMP                           target=0x0071
0F17  15 3B 0F                               JMP                           target=0x0F3B
0F1A  9A 43 B2 38 0F                         STRCMP_NE_JMP                 start=v[0x043], values=[2], target=0x0F38
0F1F  96 43 B1                               LOADSTRING                    dst=v[0x043], values=[1]
0F22  9C 3A 38                               VIDEO_TRANSITION_REF          ref=0x383A (MB[58]=mb_stn36.vdx)
0F25  09 3E 38                               VIDEOREF                      ref=0x383E (MB[62]=mb_y.vdx)
0F28  22                                     COPY_BG_TO_FG
0F29  1C 00 38                               VIDEO_TRANSITION_REF          ref=0x3800 (MB[0]=mb1p.vdx)
0F2C  37 02 01 D1 00 1A 01 E9 00             COPY_RECT_TO_BG               left=0x0102, top=0x00D1, right=0x011A, bottom=0x00E9
0F35  15 4B 0F                               JMP                           target=0x0F4B
0F38  15 3B 0F                               JMP                           target=0x0F3B
0F3B  1C 01 38                               VIDEO_TRANSITION_REF          ref=0x3801 (MB[1]=mb1pb.vdx)
0F3E  18 7B 0F                               CALL                          target=0x0F7B
0F41  07                                     VIDEOFLAG7_ON
0F42  0A                                     VIDEOFLAG5_ON
0F43  46                                     RESOURCE_CONTEXT_SAVE
0F44  09 46 50                               VIDEOREF                      ref=0x5046 (GAMWAV[70]=11_s_2.vdx)
0F47  47                                     RESOURCE_CONTEXT_RESTORE
0F48  15 00 00                               JMP                           target=0x0000
0F4B  07                                     VIDEOFLAG7_ON
0F4C  46                                     RESOURCE_CONTEXT_SAVE
0F4D  09 3B 50                               VIDEOREF                      ref=0x503B (GAMWAV[59]=8_s_15.vdx)
0F50  47                                     RESOURCE_CONTEXT_RESTORE
0F51  96 EF E1                               LOADSTRING                    dst=v[0x0EF], values=[49]
0F54  1C 01 38                               VIDEO_TRANSITION_REF          ref=0x3801 (MB[1]=mb1pb.vdx)
0F57  18 7B 0F                               CALL                          target=0x0F7B
0F5A  09 01 38                               VIDEOREF                      ref=0x3801 (MB[1]=mb1pb.vdx)
0F5D  43 00                                  RETURNSCRIPT                  value=0x00
0F5F  07                                     VIDEOFLAG7_ON
0F60  46                                     RESOURCE_CONTEXT_SAVE
0F61  09 8B 50                               VIDEOREF                      ref=0x508B (GAMWAV[139]=gen_e_5.vdx)
0F64  47                                     RESOURCE_CONTEXT_RESTORE
0F65  1C 01 38                               VIDEO_TRANSITION_REF          ref=0x3801 (MB[1]=mb1pb.vdx)
0F68  18 7B 0F                               CALL                          target=0x0F7B
0F6B  15 00 00                               JMP                           target=0x0000
0F6E  1C 01 38                               VIDEO_TRANSITION_REF          ref=0x3801 (MB[1]=mb1pb.vdx)
0F71  18 7B 0F                               CALL                          target=0x0F7B
0F74  09 01 38                               VIDEOREF                      ref=0x3801 (MB[1]=mb1pb.vdx)
0F77  43 00                                  RETURNSCRIPT                  value=0x00
0F79  43 01                                  RETURNSCRIPT                  value=0x01
0F7B  0A                                     VIDEOFLAG5_ON
0F7C  07                                     VIDEOFLAG7_ON
0F7D  46                                     RESOURCE_CONTEXT_SAVE
0F7E  09 01 24                               VIDEOREF                      ref=0x2401 (INTRO[1]=fade.vdx)
0F81  37 00 00 50 00 7F 02 8F 01             COPY_RECT_TO_BG               left=0x0000, top=0x0050, right=0x027F, bottom=0x018F
0F8A  47                                     RESOURCE_CONTEXT_RESTORE
0F8B  17 00                                  RET                           value=0x00
