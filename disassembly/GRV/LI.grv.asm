; T7G/LI.GRV
; size=2168 sha256=85164d9159e1030ea284ec58a29789e2745f3567afbe299bd2ea77c10af2007f
; instructions=451 input_loops=20

0000  16 03 01 B0                            LOADSTRING                    dst=v[0x103], values=[0]
0004  16 07 01 B0                            LOADSTRING                    dst=v[0x107], values=[0]
0008  46                                     RESOURCE_CONTEXT_SAVE
0009  96 92 30 B8                            LOADSTRING                    dst=v[0x092], values=[0, 8]
000D  9A F5 B4 15 00                         STRCMP_NE_JMP                 start=v[0x0F5], values=[4], target=0x0015
0012  96 F5 B5                               LOADSTRING                    dst=v[0x0F5], values=[5]
0015  9A F5 B2 1D 00                         STRCMP_NE_JMP                 start=v[0x0F5], values=[2], target=0x001D
001A  96 F5 B3                               LOADSTRING                    dst=v[0x0F5], values=[3]
001D  9A F5 B0 2A 00                         STRCMP_NE_JMP                 start=v[0x0F5], values=[0], target=0x002A
0022  07                                     VIDEOFLAG7_ON
0023  0A                                     VIDEOFLAG5_ON
0024  09 26 50                               VIDEOREF                      ref=0x5026 (GAMWAV[38]=7_s_1.vdx)
0027  96 F5 B1                               LOADSTRING                    dst=v[0x0F5], values=[1]
002A  47                                     RESOURCE_CONTEXT_RESTORE
002B  22                                     COPY_BG_TO_FG
002C  2C 46 08 08                            SET_HOTSPOT_TOP               target=0x0846, cursor=0x08
0030  2D 57 08 06                            SET_HOTSPOT_BOTTOM            target=0x0857, cursor=0x06
0034  45 3E 08                               SET_HOTSPOT_LEFT              target=0x083E
0037  44 3E 08                               SET_HOTSPOT_RIGHT             target=0x083E
003A  96 1A 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 B0 LOADSTRING                    dst=v[0x01A], values=[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
0051  16 08 01 B0                            LOADSTRING                    dst=v[0x108], values=[0]
0055  16 08 01 B2                            LOADSTRING                    dst=v[0x108], values=[2]
0059  22                                     COPY_BG_TO_FG
005A  36 03 01 E3 74 00                      CHAR_LESS_JMP                 start=v[0x103], values=[51], target=0x0074
0060  1A 07 01 B3 74 00                      STRCMP_NE_JMP                 start=v[0x107], values=[3], target=0x0074
0066  46                                     RESOURCE_CONTEXT_SAVE
0067  16 03 01 B0                            LOADSTRING                    dst=v[0x103], values=[0]
006B  16 07 01 B4                            LOADSTRING                    dst=v[0x107], values=[4]
006F  07                                     VIDEOFLAG7_ON
0070  09 90 50                               VIDEOREF                      ref=0x5090 (GAMWAV[144]=gen_e_10.vdx)
0073  47                                     RESOURCE_CONTEXT_RESTORE
0074  36 03 01 E4 8E 00                      CHAR_LESS_JMP                 start=v[0x103], values=[52], target=0x008E
007A  1A 07 01 B2 8E 00                      STRCMP_NE_JMP                 start=v[0x107], values=[2], target=0x008E
0080  46                                     RESOURCE_CONTEXT_SAVE
0081  16 03 01 B0                            LOADSTRING                    dst=v[0x103], values=[0]
0085  16 07 01 B3                            LOADSTRING                    dst=v[0x107], values=[3]
0089  07                                     VIDEOFLAG7_ON
008A  09 9B 50                               VIDEOREF                      ref=0x509B (GAMWAV[155]=gen_s_4.vdx)
008D  47                                     RESOURCE_CONTEXT_RESTORE
008E  36 03 01 E3 A8 00                      CHAR_LESS_JMP                 start=v[0x103], values=[51], target=0x00A8
0094  1A 07 01 B1 A8 00                      STRCMP_NE_JMP                 start=v[0x107], values=[1], target=0x00A8
009A  46                                     RESOURCE_CONTEXT_SAVE
009B  16 03 01 B0                            LOADSTRING                    dst=v[0x103], values=[0]
009F  16 07 01 B2                            LOADSTRING                    dst=v[0x107], values=[2]
00A3  07                                     VIDEOFLAG7_ON
00A4  09 24 50                               VIDEOREF                      ref=0x5024 (GAMWAV[36]=7_e_2.vdx)
00A7  47                                     RESOURCE_CONTEXT_RESTORE
00A8  36 03 01 B8 C2 00                      CHAR_LESS_JMP                 start=v[0x103], values=[8], target=0x00C2
00AE  1A 07 01 B0 C2 00                      STRCMP_NE_JMP                 start=v[0x107], values=[0], target=0x00C2
00B4  46                                     RESOURCE_CONTEXT_SAVE
00B5  16 03 01 B0                            LOADSTRING                    dst=v[0x103], values=[0]
00B9  16 07 01 B1                            LOADSTRING                    dst=v[0x107], values=[1]
00BD  07                                     VIDEOFLAG7_ON
00BE  09 23 50                               VIDEOREF                      ref=0x5023 (GAMWAV[35]=7_e_1.vdx)
00C1  47                                     RESOURCE_CONTEXT_RESTORE
00C2  1A 08 01 B2 D6 00                      STRCMP_NE_JMP                 start=v[0x108], values=[2], target=0x00D6
00C8  0B                                     INPUTLOOPSTART
00C9  0D 44 01 51 01 5F 01 6B 01 34 06 09    HOTSPOT_RECT                  left=0x0144, top=0x0151, right=0x015F, bottom=0x016B, target=0x0634, cursor=0x09
00D5  13                                     INPUTLOOPEND
00D6  9A 1A B2 02 01                         STRCMP_NE_JMP                 start=v[0x01A], values=[2], target=0x0102
00DB  96 1A B3                               LOADSTRING                    dst=v[0x01A], values=[3]
00DE  0B                                     INPUTLOOPSTART
00DF  A3 1B B3 F0 00                         STRCMP_EQ_JMP                 start=v[0x01B], values=[3], target=0x00F0
00E4  0D 15 01 4A 01 2A 01 5E 01 51 06 09    HOTSPOT_RECT                  left=0x0115, top=0x014A, right=0x012A, bottom=0x015E, target=0x0651, cursor=0x09
00F0  A3 2D B3 01 01                         STRCMP_EQ_JMP                 start=v[0x02D], values=[3], target=0x0101
00F5  0D 89 01 40 01 9F 01 55 01 48 08 0A    HOTSPOT_RECT                  left=0x0189, top=0x0140, right=0x019F, bottom=0x0155, target=0x0848, cursor=0x0A
0101  13                                     INPUTLOOPEND
0102  9A 1B B2 61 01                         STRCMP_NE_JMP                 start=v[0x01B], values=[2], target=0x0161
0107  96 1B B3                               LOADSTRING                    dst=v[0x01B], values=[3]
010A  0B                                     INPUTLOOPSTART
010B  A3 1C B3 1C 01                         STRCMP_EQ_JMP                 start=v[0x01C], values=[3], target=0x011C
0110  0D 2F 01 EE 00 45 01 03 01 6A 06 0A    HOTSPOT_RECT                  left=0x012F, top=0x00EE, right=0x0145, bottom=0x0103, target=0x066A, cursor=0x0A
011C  A3 1A B3 2D 01                         STRCMP_EQ_JMP                 start=v[0x01A], values=[3], target=0x012D
0121  0D 46 01 54 01 5E 01 6A 01 48 08 09    HOTSPOT_RECT                  left=0x0146, top=0x0154, right=0x015E, bottom=0x016A, target=0x0848, cursor=0x09
012D  A3 1F B3 3E 01                         STRCMP_EQ_JMP                 start=v[0x01F], values=[3], target=0x013E
0132  0D 09 01 EF 00 1F 01 05 01 48 08 09    HOTSPOT_RECT                  left=0x0109, top=0x00EF, right=0x011F, bottom=0x0105, target=0x0848, cursor=0x09
013E  A3 21 B3 4F 01                         STRCMP_EQ_JMP                 start=v[0x021], values=[3], target=0x014F
0143  0D F5 00 18 01 08 01 2F 01 48 08 09    HOTSPOT_RECT                  left=0x00F5, top=0x0118, right=0x0108, bottom=0x012F, target=0x0848, cursor=0x09
014F  A3 22 B3 60 01                         STRCMP_EQ_JMP                 start=v[0x022], values=[3], target=0x0160
0154  0D D2 00 FA 00 E8 00 0F 01 48 08 09    HOTSPOT_RECT                  left=0x00D2, top=0x00FA, right=0x00E8, bottom=0x010F, target=0x0848, cursor=0x09
0160  13                                     INPUTLOOPEND
0161  9A 1C B2 9E 01                         STRCMP_NE_JMP                 start=v[0x01C], values=[2], target=0x019E
0166  96 1C B3                               LOADSTRING                    dst=v[0x01C], values=[3]
0169  0B                                     INPUTLOOPSTART
016A  A3 1B B3 7B 01                         STRCMP_EQ_JMP                 start=v[0x01B], values=[3], target=0x017B
016F  0D 15 01 4A 01 2A 01 5E 01 48 08 09    HOTSPOT_RECT                  left=0x0115, top=0x014A, right=0x012A, bottom=0x015E, target=0x0848, cursor=0x09
017B  A3 1D B3 8C 01                         STRCMP_EQ_JMP                 start=v[0x01D], values=[3], target=0x018C
0180  0D 28 01 2C 01 3E 01 3F 01 83 06 0A    HOTSPOT_RECT                  left=0x0128, top=0x012C, right=0x013E, bottom=0x013F, target=0x0683, cursor=0x0A
018C  A3 1F B3 9D 01                         STRCMP_EQ_JMP                 start=v[0x01F], values=[3], target=0x019D
0191  0D 09 01 EF 00 1F 01 05 01 48 08 09    HOTSPOT_RECT                  left=0x0109, top=0x00EF, right=0x011F, bottom=0x0105, target=0x0848, cursor=0x09
019D  13                                     INPUTLOOPEND
019E  9A 1D B2 DB 01                         STRCMP_NE_JMP                 start=v[0x01D], values=[2], target=0x01DB
01A3  96 1D B3                               LOADSTRING                    dst=v[0x01D], values=[3]
01A6  0B                                     INPUTLOOPSTART
01A7  A3 1E B3 B8 01                         STRCMP_EQ_JMP                 start=v[0x01E], values=[3], target=0x01B8
01AC  0D 53 01 AF 00 68 01 C3 00 9C 06 0A    HOTSPOT_RECT                  left=0x0153, top=0x00AF, right=0x0168, bottom=0x00C3, target=0x069C, cursor=0x0A
01B8  A3 1C B3 C9 01                         STRCMP_EQ_JMP                 start=v[0x01C], values=[3], target=0x01C9
01BD  0D 30 01 ED 00 45 01 03 01 48 08 09    HOTSPOT_RECT                  left=0x0130, top=0x00ED, right=0x0145, bottom=0x0103, target=0x0848, cursor=0x09
01C9  A3 1F B3 DA 01                         STRCMP_EQ_JMP                 start=v[0x01F], values=[3], target=0x01DA
01CE  0D 09 01 EF 00 1F 01 05 01 48 08 09    HOTSPOT_RECT                  left=0x0109, top=0x00EF, right=0x011F, bottom=0x0105, target=0x0848, cursor=0x09
01DA  13                                     INPUTLOOPEND
01DB  9A 1E B2 18 02                         STRCMP_NE_JMP                 start=v[0x01E], values=[2], target=0x0218
01E0  96 1E B3                               LOADSTRING                    dst=v[0x01E], values=[3]
01E3  0B                                     INPUTLOOPSTART
01E4  A3 1F B3 F5 01                         STRCMP_EQ_JMP                 start=v[0x01F], values=[3], target=0x01F5
01E9  0D 09 01 F0 00 1F 01 05 01 B5 06 09    HOTSPOT_RECT                  left=0x0109, top=0x00F0, right=0x011F, bottom=0x0105, target=0x06B5, cursor=0x09
01F5  A3 1D B3 06 02                         STRCMP_EQ_JMP                 start=v[0x01D], values=[3], target=0x0206
01FA  0D 28 01 29 01 3F 01 40 01 48 08 09    HOTSPOT_RECT                  left=0x0128, top=0x0129, right=0x013F, bottom=0x0140, target=0x0848, cursor=0x09
0206  A3 2B B3 17 02                         STRCMP_EQ_JMP                 start=v[0x02B], values=[3], target=0x0217
020B  0D 55 01 23 01 6C 01 3B 01 48 08 09    HOTSPOT_RECT                  left=0x0155, top=0x0123, right=0x016C, bottom=0x013B, target=0x0848, cursor=0x09
0217  13                                     INPUTLOOPEND
0218  9A 1F B2 88 02                         STRCMP_NE_JMP                 start=v[0x01F], values=[2], target=0x0288
021D  96 1F B3                               LOADSTRING                    dst=v[0x01F], values=[3]
0220  0B                                     INPUTLOOPSTART
0221  A3 20 B3 32 02                         STRCMP_EQ_JMP                 start=v[0x020], values=[3], target=0x0232
0226  0D 2A 01 90 00 40 01 A5 00 CE 06 0A    HOTSPOT_RECT                  left=0x012A, top=0x0090, right=0x0140, bottom=0x00A5, target=0x06CE, cursor=0x0A
0232  A3 1B B3 43 02                         STRCMP_EQ_JMP                 start=v[0x01B], values=[3], target=0x0243
0237  0D 14 01 49 01 2A 01 5E 01 48 08 09    HOTSPOT_RECT                  left=0x0114, top=0x0149, right=0x012A, bottom=0x015E, target=0x0848, cursor=0x09
0243  A3 1C B3 54 02                         STRCMP_EQ_JMP                 start=v[0x01C], values=[3], target=0x0254
0248  0D 30 01 ED 00 45 01 03 01 48 08 09    HOTSPOT_RECT                  left=0x0130, top=0x00ED, right=0x0145, bottom=0x0103, target=0x0848, cursor=0x09
0254  A3 1D B3 65 02                         STRCMP_EQ_JMP                 start=v[0x01D], values=[3], target=0x0265
0259  0D 28 01 29 01 3F 01 40 01 48 08 09    HOTSPOT_RECT                  left=0x0128, top=0x0129, right=0x013F, bottom=0x0140, target=0x0848, cursor=0x09
0265  A3 1E B3 76 02                         STRCMP_EQ_JMP                 start=v[0x01E], values=[3], target=0x0276
026A  0D 52 01 AF 00 6A 01 C3 00 48 08 09    HOTSPOT_RECT                  left=0x0152, top=0x00AF, right=0x016A, bottom=0x00C3, target=0x0848, cursor=0x09
0276  A3 2A B3 87 02                         STRCMP_EQ_JMP                 start=v[0x02A], values=[3], target=0x0287
027B  0D 74 01 08 01 8B 01 1F 01 48 08 09    HOTSPOT_RECT                  left=0x0174, top=0x0108, right=0x018B, bottom=0x011F, target=0x0848, cursor=0x09
0287  13                                     INPUTLOOPEND
0288  9A 20 B2 C5 02                         STRCMP_NE_JMP                 start=v[0x020], values=[2], target=0x02C5
028D  96 20 B3                               LOADSTRING                    dst=v[0x020], values=[3]
0290  0B                                     INPUTLOOPSTART
0291  A3 21 B3 A2 02                         STRCMP_EQ_JMP                 start=v[0x021], values=[3], target=0x02A2
0296  0D F4 00 19 01 08 01 2D 01 E7 06 09    HOTSPOT_RECT                  left=0x00F4, top=0x0119, right=0x0108, bottom=0x012D, target=0x06E7, cursor=0x09
02A2  A3 1F B3 B3 02                         STRCMP_EQ_JMP                 start=v[0x01F], values=[3], target=0x02B3
02A7  0D 09 01 EF 00 1F 01 05 01 48 08 09    HOTSPOT_RECT                  left=0x0109, top=0x00EF, right=0x011F, bottom=0x0105, target=0x0848, cursor=0x09
02B3  A3 28 B3 C4 02                         STRCMP_EQ_JMP                 start=v[0x028], values=[3], target=0x02C4
02B8  0D 7E 01 90 00 94 01 A4 00 48 08 09    HOTSPOT_RECT                  left=0x017E, top=0x0090, right=0x0194, bottom=0x00A4, target=0x0848, cursor=0x09
02C4  13                                     INPUTLOOPEND
02C5  9A 21 B2 35 03                         STRCMP_NE_JMP                 start=v[0x021], values=[2], target=0x0335
02CA  96 21 B3                               LOADSTRING                    dst=v[0x021], values=[3]
02CD  0B                                     INPUTLOOPSTART
02CE  A3 22 B3 DF 02                         STRCMP_EQ_JMP                 start=v[0x022], values=[3], target=0x02DF
02D3  0D D3 00 F9 00 E8 00 0E 01 00 07 09    HOTSPOT_RECT                  left=0x00D3, top=0x00F9, right=0x00E8, bottom=0x010E, target=0x0700, cursor=0x09
02DF  A3 23 B3 F0 02                         STRCMP_EQ_JMP                 start=v[0x023], values=[3], target=0x02F0
02E4  0D E0 00 A3 00 F6 00 B9 00 48 08 09    HOTSPOT_RECT                  left=0x00E0, top=0x00A3, right=0x00F6, bottom=0x00B9, target=0x0848, cursor=0x09
02F0  A3 24 B3 01 03                         STRCMP_EQ_JMP                 start=v[0x024], values=[3], target=0x0301
02F5  0D 18 01 6E 00 2E 01 84 00 48 08 09    HOTSPOT_RECT                  left=0x0118, top=0x006E, right=0x012E, bottom=0x0084, target=0x0848, cursor=0x09
0301  A3 25 B3 12 03                         STRCMP_EQ_JMP                 start=v[0x025], values=[3], target=0x0312
0306  0D 46 01 68 00 5C 01 7D 00 48 08 09    HOTSPOT_RECT                  left=0x0146, top=0x0068, right=0x015C, bottom=0x007D, target=0x0848, cursor=0x09
0312  A3 20 B3 23 03                         STRCMP_EQ_JMP                 start=v[0x020], values=[3], target=0x0323
0317  0D 2D 01 91 00 3F 01 A6 00 48 08 09    HOTSPOT_RECT                  left=0x012D, top=0x0091, right=0x013F, bottom=0x00A6, target=0x0848, cursor=0x09
0323  A3 1B B3 34 03                         STRCMP_EQ_JMP                 start=v[0x01B], values=[3], target=0x0334
0328  0D 14 01 49 01 2A 01 5E 01 48 08 09    HOTSPOT_RECT                  left=0x0114, top=0x0149, right=0x012A, bottom=0x015E, target=0x0848, cursor=0x09
0334  13                                     INPUTLOOPEND
0335  9A 22 B2 72 03                         STRCMP_NE_JMP                 start=v[0x022], values=[2], target=0x0372
033A  96 22 B3                               LOADSTRING                    dst=v[0x022], values=[3]
033D  0B                                     INPUTLOOPSTART
033E  A3 23 B3 4F 03                         STRCMP_EQ_JMP                 start=v[0x023], values=[3], target=0x034F
0343  0D E0 00 A5 00 F5 00 B8 00 19 07 09    HOTSPOT_RECT                  left=0x00E0, top=0x00A5, right=0x00F5, bottom=0x00B8, target=0x0719, cursor=0x09
034F  A3 1B B3 60 03                         STRCMP_EQ_JMP                 start=v[0x01B], values=[3], target=0x0360
0354  0D 14 01 49 01 2A 01 5E 01 48 08 09    HOTSPOT_RECT                  left=0x0114, top=0x0149, right=0x012A, bottom=0x015E, target=0x0848, cursor=0x09
0360  A3 21 B3 71 03                         STRCMP_EQ_JMP                 start=v[0x021], values=[3], target=0x0371
0365  0D F5 00 18 01 08 01 2F 01 48 08 09    HOTSPOT_RECT                  left=0x00F5, top=0x0118, right=0x0108, bottom=0x012F, target=0x0848, cursor=0x09
0371  13                                     INPUTLOOPEND
0372  9A 23 B2 AF 03                         STRCMP_NE_JMP                 start=v[0x023], values=[2], target=0x03AF
0377  96 23 B3                               LOADSTRING                    dst=v[0x023], values=[3]
037A  0B                                     INPUTLOOPSTART
037B  A3 24 B3 8C 03                         STRCMP_EQ_JMP                 start=v[0x024], values=[3], target=0x038C
0380  0D 19 01 6E 00 36 01 84 00 32 07 0A    HOTSPOT_RECT                  left=0x0119, top=0x006E, right=0x0136, bottom=0x0084, target=0x0732, cursor=0x0A
038C  A3 21 B3 9D 03                         STRCMP_EQ_JMP                 start=v[0x021], values=[3], target=0x039D
0391  0D F5 00 18 01 08 01 2F 01 48 08 09    HOTSPOT_RECT                  left=0x00F5, top=0x0118, right=0x0108, bottom=0x012F, target=0x0848, cursor=0x09
039D  A3 22 B3 AE 03                         STRCMP_EQ_JMP                 start=v[0x022], values=[3], target=0x03AE
03A2  0D D2 00 FA 00 E8 00 0F 01 48 08 09    HOTSPOT_RECT                  left=0x00D2, top=0x00FA, right=0x00E8, bottom=0x010F, target=0x0848, cursor=0x09
03AE  13                                     INPUTLOOPEND
03AF  9A 24 B2 EC 03                         STRCMP_NE_JMP                 start=v[0x024], values=[2], target=0x03EC
03B4  96 24 B3                               LOADSTRING                    dst=v[0x024], values=[3]
03B7  0B                                     INPUTLOOPSTART
03B8  A3 25 B3 C9 03                         STRCMP_EQ_JMP                 start=v[0x025], values=[3], target=0x03C9
03BD  0D 45 01 66 00 5B 01 7D 00 4B 07 09    HOTSPOT_RECT                  left=0x0145, top=0x0066, right=0x015B, bottom=0x007D, target=0x074B, cursor=0x09
03C9  A3 21 B3 DA 03                         STRCMP_EQ_JMP                 start=v[0x021], values=[3], target=0x03DA
03CE  0D F5 00 18 01 08 01 2F 01 48 08 09    HOTSPOT_RECT                  left=0x00F5, top=0x0118, right=0x0108, bottom=0x012F, target=0x0848, cursor=0x09
03DA  A3 23 B3 EB 03                         STRCMP_EQ_JMP                 start=v[0x023], values=[3], target=0x03EB
03DF  0D E0 00 A3 00 F6 00 B9 00 48 08 09    HOTSPOT_RECT                  left=0x00E0, top=0x00A3, right=0x00F6, bottom=0x00B9, target=0x0848, cursor=0x09
03EB  13                                     INPUTLOOPEND
03EC  9A 25 B2 3A 04                         STRCMP_NE_JMP                 start=v[0x025], values=[2], target=0x043A
03F1  96 25 B3                               LOADSTRING                    dst=v[0x025], values=[3]
03F4  0B                                     INPUTLOOPSTART
03F5  A3 26 B3 06 04                         STRCMP_EQ_JMP                 start=v[0x026], values=[3], target=0x0406
03FA  0D B6 01 B2 00 CC 01 C7 00 64 07 09    HOTSPOT_RECT                  left=0x01B6, top=0x00B2, right=0x01CC, bottom=0x00C7, target=0x0764, cursor=0x09
0406  A3 21 B3 17 04                         STRCMP_EQ_JMP                 start=v[0x021], values=[3], target=0x0417
040B  0D F5 00 18 01 08 01 2F 01 48 08 09    HOTSPOT_RECT                  left=0x00F5, top=0x0118, right=0x0108, bottom=0x012F, target=0x0848, cursor=0x09
0417  A3 24 B3 28 04                         STRCMP_EQ_JMP                 start=v[0x024], values=[3], target=0x0428
041C  0D 18 01 6E 00 2E 01 84 00 48 08 09    HOTSPOT_RECT                  left=0x0118, top=0x006E, right=0x012E, bottom=0x0084, target=0x0848, cursor=0x09
0428  A3 28 B3 39 04                         STRCMP_EQ_JMP                 start=v[0x028], values=[3], target=0x0439
042D  0D 7E 01 90 00 94 01 A4 00 48 08 09    HOTSPOT_RECT                  left=0x017E, top=0x0090, right=0x0194, bottom=0x00A4, target=0x0848, cursor=0x09
0439  13                                     INPUTLOOPEND
043A  9A 26 B2 77 04                         STRCMP_NE_JMP                 start=v[0x026], values=[2], target=0x0477
043F  96 26 B3                               LOADSTRING                    dst=v[0x026], values=[3]
0442  0B                                     INPUTLOOPSTART
0443  A3 27 B3 54 04                         STRCMP_EQ_JMP                 start=v[0x027], values=[3], target=0x0454
0448  0D B2 01 11 01 C8 01 27 01 7D 07 0A    HOTSPOT_RECT                  left=0x01B2, top=0x0111, right=0x01C8, bottom=0x0127, target=0x077D, cursor=0x0A
0454  A3 25 B3 65 04                         STRCMP_EQ_JMP                 start=v[0x025], values=[3], target=0x0465
0459  0D 46 01 68 00 5C 01 7D 00 48 08 09    HOTSPOT_RECT                  left=0x0146, top=0x0068, right=0x015C, bottom=0x007D, target=0x0848, cursor=0x09
0465  A3 28 B3 76 04                         STRCMP_EQ_JMP                 start=v[0x028], values=[3], target=0x0476
046A  0D 7E 01 90 00 94 01 A4 00 48 08 09    HOTSPOT_RECT                  left=0x017E, top=0x0090, right=0x0194, bottom=0x00A4, target=0x0848, cursor=0x09
0476  13                                     INPUTLOOPEND
0477  9A 27 B2 B4 04                         STRCMP_NE_JMP                 start=v[0x027], values=[2], target=0x04B4
047C  96 27 B3                               LOADSTRING                    dst=v[0x027], values=[3]
047F  0B                                     INPUTLOOPSTART
0480  A3 28 B3 91 04                         STRCMP_EQ_JMP                 start=v[0x028], values=[3], target=0x0491
0485  0D 7E 01 8F 00 94 01 A4 00 96 07 0A    HOTSPOT_RECT                  left=0x017E, top=0x008F, right=0x0194, bottom=0x00A4, target=0x0796, cursor=0x0A
0491  A3 26 B3 A2 04                         STRCMP_EQ_JMP                 start=v[0x026], values=[3], target=0x04A2
0496  0D B7 01 B0 00 CD 01 C7 00 48 08 09    HOTSPOT_RECT                  left=0x01B7, top=0x00B0, right=0x01CD, bottom=0x00C7, target=0x0848, cursor=0x09
04A2  A3 2D B3 B3 04                         STRCMP_EQ_JMP                 start=v[0x02D], values=[3], target=0x04B3
04A7  0D 89 01 3F 01 A0 01 56 01 48 08 09    HOTSPOT_RECT                  left=0x0189, top=0x013F, right=0x01A0, bottom=0x0156, target=0x0848, cursor=0x09
04B3  13                                     INPUTLOOPEND
04B4  9A 28 B2 24 05                         STRCMP_NE_JMP                 start=v[0x028], values=[2], target=0x0524
04B9  96 28 B3                               LOADSTRING                    dst=v[0x028], values=[3]
04BC  0B                                     INPUTLOOPSTART
04BD  A3 29 B3 CE 04                         STRCMP_EQ_JMP                 start=v[0x029], values=[3], target=0x04CE
04C2  0D 82 01 D2 00 98 01 E8 00 AF 07 0A    HOTSPOT_RECT                  left=0x0182, top=0x00D2, right=0x0198, bottom=0x00E8, target=0x07AF, cursor=0x0A
04CE  A3 25 B3 DF 04                         STRCMP_EQ_JMP                 start=v[0x025], values=[3], target=0x04DF
04D3  0D 46 01 68 00 5C 01 7D 00 48 08 09    HOTSPOT_RECT                  left=0x0146, top=0x0068, right=0x015C, bottom=0x007D, target=0x0848, cursor=0x09
04DF  A3 26 B3 F0 04                         STRCMP_EQ_JMP                 start=v[0x026], values=[3], target=0x04F0
04E4  0D B7 01 B0 00 CD 01 C7 00 48 08 09    HOTSPOT_RECT                  left=0x01B7, top=0x00B0, right=0x01CD, bottom=0x00C7, target=0x0848, cursor=0x09
04F0  A3 27 B3 01 05                         STRCMP_EQ_JMP                 start=v[0x027], values=[3], target=0x0501
04F5  0D B0 01 11 01 C9 01 27 01 48 08 09    HOTSPOT_RECT                  left=0x01B0, top=0x0111, right=0x01C9, bottom=0x0127, target=0x0848, cursor=0x09
0501  A3 2D B3 12 05                         STRCMP_EQ_JMP                 start=v[0x02D], values=[3], target=0x0512
0506  0D 89 01 3F 01 A0 01 56 01 48 08 09    HOTSPOT_RECT                  left=0x0189, top=0x013F, right=0x01A0, bottom=0x0156, target=0x0848, cursor=0x09
0512  A3 20 B3 23 05                         STRCMP_EQ_JMP                 start=v[0x020], values=[3], target=0x0523
0517  0D 2D 01 91 00 3F 01 A6 00 48 08 09    HOTSPOT_RECT                  left=0x012D, top=0x0091, right=0x013F, bottom=0x00A6, target=0x0848, cursor=0x09
0523  13                                     INPUTLOOPEND
0524  9A 29 B2 61 05                         STRCMP_NE_JMP                 start=v[0x029], values=[2], target=0x0561
0529  96 29 B3                               LOADSTRING                    dst=v[0x029], values=[3]
052C  0B                                     INPUTLOOPSTART
052D  A3 2A B3 3E 05                         STRCMP_EQ_JMP                 start=v[0x02A], values=[3], target=0x053E
0532  0D 74 01 08 01 8A 01 1F 01 C8 07 0A    HOTSPOT_RECT                  left=0x0174, top=0x0108, right=0x018A, bottom=0x011F, target=0x07C8, cursor=0x0A
053E  A3 28 B3 4F 05                         STRCMP_EQ_JMP                 start=v[0x028], values=[3], target=0x054F
0543  0D 7E 01 90 00 94 01 A4 00 48 08 09    HOTSPOT_RECT                  left=0x017E, top=0x0090, right=0x0194, bottom=0x00A4, target=0x0848, cursor=0x09
054F  A3 2B B3 60 05                         STRCMP_EQ_JMP                 start=v[0x02B], values=[3], target=0x0560
0554  0D 55 01 23 01 6C 01 3B 01 48 08 09    HOTSPOT_RECT                  left=0x0155, top=0x0123, right=0x016C, bottom=0x013B, target=0x0848, cursor=0x09
0560  13                                     INPUTLOOPEND
0561  9A 2A B2 9E 05                         STRCMP_NE_JMP                 start=v[0x02A], values=[2], target=0x059E
0566  96 2A B3                               LOADSTRING                    dst=v[0x02A], values=[3]
0569  0B                                     INPUTLOOPSTART
056A  A3 2B B3 7B 05                         STRCMP_EQ_JMP                 start=v[0x02B], values=[3], target=0x057B
056F  0D 56 01 25 01 6A 01 3B 01 E1 07 0A    HOTSPOT_RECT                  left=0x0156, top=0x0125, right=0x016A, bottom=0x013B, target=0x07E1, cursor=0x0A
057B  A3 29 B3 8C 05                         STRCMP_EQ_JMP                 start=v[0x029], values=[3], target=0x058C
0580  0D 81 01 D2 00 98 01 EA 00 48 08 09    HOTSPOT_RECT                  left=0x0181, top=0x00D2, right=0x0198, bottom=0x00EA, target=0x0848, cursor=0x09
058C  A3 1F B3 9D 05                         STRCMP_EQ_JMP                 start=v[0x01F], values=[3], target=0x059D
0591  0D 09 01 EF 00 1F 01 05 01 48 08 09    HOTSPOT_RECT                  left=0x0109, top=0x00EF, right=0x011F, bottom=0x0105, target=0x0848, cursor=0x09
059D  13                                     INPUTLOOPEND
059E  9A 2B B2 FD 05                         STRCMP_NE_JMP                 start=v[0x02B], values=[2], target=0x05FD
05A3  96 2B B3                               LOADSTRING                    dst=v[0x02B], values=[3]
05A6  0B                                     INPUTLOOPSTART
05A7  A3 2C B3 B8 05                         STRCMP_EQ_JMP                 start=v[0x02C], values=[3], target=0x05B8
05AC  0D 3E 01 3C 01 53 01 51 01 FA 07 09    HOTSPOT_RECT                  left=0x013E, top=0x013C, right=0x0153, bottom=0x0151, target=0x07FA, cursor=0x09
05B8  A3 1E B3 C9 05                         STRCMP_EQ_JMP                 start=v[0x01E], values=[3], target=0x05C9
05BD  0D 52 01 AF 00 6A 01 C3 00 48 08 09    HOTSPOT_RECT                  left=0x0152, top=0x00AF, right=0x016A, bottom=0x00C3, target=0x0848, cursor=0x09
05C9  A3 29 B3 DA 05                         STRCMP_EQ_JMP                 start=v[0x029], values=[3], target=0x05DA
05CE  0D 81 01 D2 00 98 01 EA 00 48 08 09    HOTSPOT_RECT                  left=0x0181, top=0x00D2, right=0x0198, bottom=0x00EA, target=0x0848, cursor=0x09
05DA  A3 2A B3 EB 05                         STRCMP_EQ_JMP                 start=v[0x02A], values=[3], target=0x05EB
05DF  0D 74 01 08 01 8B 01 1F 01 48 08 09    HOTSPOT_RECT                  left=0x0174, top=0x0108, right=0x018B, bottom=0x011F, target=0x0848, cursor=0x09
05EB  A3 2D B3 FC 05                         STRCMP_EQ_JMP                 start=v[0x02D], values=[3], target=0x05FC
05F0  0D 89 01 3F 01 A0 01 56 01 48 08 09    HOTSPOT_RECT                  left=0x0189, top=0x013F, right=0x01A0, bottom=0x0156, target=0x0848, cursor=0x09
05FC  13                                     INPUTLOOPEND
05FD  9A 2C B2 29 06                         STRCMP_NE_JMP                 start=v[0x02C], values=[2], target=0x0629
0602  96 2C B3                               LOADSTRING                    dst=v[0x02C], values=[3]
0605  0B                                     INPUTLOOPSTART
0606  A3 2D B3 17 06                         STRCMP_EQ_JMP                 start=v[0x02D], values=[3], target=0x0617
060B  0D 89 01 40 01 9F 01 55 01 13 08 0A    HOTSPOT_RECT                  left=0x0189, top=0x0140, right=0x019F, bottom=0x0155, target=0x0813, cursor=0x0A
0617  A3 2B B3 28 06                         STRCMP_EQ_JMP                 start=v[0x02B], values=[3], target=0x0628
061C  0D 55 01 23 01 6C 01 3B 01 48 08 09    HOTSPOT_RECT                  left=0x0155, top=0x0123, right=0x016C, bottom=0x013B, target=0x0848, cursor=0x09
0628  13                                     INPUTLOOPEND
0629  9A 2D B2 31 06                         STRCMP_NE_JMP                 start=v[0x02D], values=[2], target=0x0631
062E  15 2C 08                               JMP                           target=0x082C
0631  15 57 08                               JMP                           target=0x0857
0634  16 08 01 B3                            LOADSTRING                    dst=v[0x108], values=[3]
0638  9C 12 34                               VIDEO_TRANSITION_REF          ref=0x3412 (LI[18]=li_stn01.vdx)
063B  09 0E 34                               VIDEOREF                      ref=0x340E (LI[14]=li_let_i.vdx)
063E  96 1A B2                               LOADSTRING                    dst=v[0x01A], values=[2]
0641  22                                     COPY_BG_TO_FG
0642  1C 26 34                               VIDEO_TRANSITION_REF          ref=0x3426 (LI[38]=li_nolet.vdx)
0645  37 46 01 54 01 5E 01 6A 01             COPY_RECT_TO_BG               left=0x0146, top=0x0154, right=0x015E, bottom=0x016A
064E  15 59 00                               JMP                           target=0x0059
0651  96 1B B2                               LOADSTRING                    dst=v[0x01B], values=[2]
0654  9C 13 34                               VIDEO_TRANSITION_REF          ref=0x3413 (LI[19]=li_stn02.vdx)
0657  09 0E 34                               VIDEOREF                      ref=0x340E (LI[14]=li_let_i.vdx)
065A  22                                     COPY_BG_TO_FG
065B  1C 26 34                               VIDEO_TRANSITION_REF          ref=0x3426 (LI[38]=li_nolet.vdx)
065E  37 14 01 49 01 2A 01 5E 01             COPY_RECT_TO_BG               left=0x0114, top=0x0149, right=0x012A, bottom=0x015E
0667  15 59 00                               JMP                           target=0x0059
066A  96 1C B2                               LOADSTRING                    dst=v[0x01C], values=[2]
066D  9C 14 34                               VIDEO_TRANSITION_REF          ref=0x3414 (LI[20]=li_stn03.vdx)
0670  09 0E 34                               VIDEOREF                      ref=0x340E (LI[14]=li_let_i.vdx)
0673  22                                     COPY_BG_TO_FG
0674  1C 26 34                               VIDEO_TRANSITION_REF          ref=0x3426 (LI[38]=li_nolet.vdx)
0677  37 30 01 ED 00 45 01 03 01             COPY_RECT_TO_BG               left=0x0130, top=0x00ED, right=0x0145, bottom=0x0103
0680  15 59 00                               JMP                           target=0x0059
0683  96 1D B2                               LOADSTRING                    dst=v[0x01D], values=[2]
0686  9C 15 34                               VIDEO_TRANSITION_REF          ref=0x3415 (LI[21]=li_stn04.vdx)
0689  09 0E 34                               VIDEOREF                      ref=0x340E (LI[14]=li_let_i.vdx)
068C  22                                     COPY_BG_TO_FG
068D  1C 26 34                               VIDEO_TRANSITION_REF          ref=0x3426 (LI[38]=li_nolet.vdx)
0690  37 28 01 29 01 3F 01 40 01             COPY_RECT_TO_BG               left=0x0128, top=0x0129, right=0x013F, bottom=0x0140
0699  15 59 00                               JMP                           target=0x0059
069C  96 1E B2                               LOADSTRING                    dst=v[0x01E], values=[2]
069F  9C 16 34                               VIDEO_TRANSITION_REF          ref=0x3416 (LI[22]=li_stn05.vdx)
06A2  09 0E 34                               VIDEOREF                      ref=0x340E (LI[14]=li_let_i.vdx)
06A5  22                                     COPY_BG_TO_FG
06A6  1C 26 34                               VIDEO_TRANSITION_REF          ref=0x3426 (LI[38]=li_nolet.vdx)
06A9  37 52 01 AF 00 6A 01 C3 00             COPY_RECT_TO_BG               left=0x0152, top=0x00AF, right=0x016A, bottom=0x00C3
06B2  15 59 00                               JMP                           target=0x0059
06B5  96 1F B2                               LOADSTRING                    dst=v[0x01F], values=[2]
06B8  9C 17 34                               VIDEO_TRANSITION_REF          ref=0x3417 (LI[23]=li_stn06.vdx)
06BB  09 0E 34                               VIDEOREF                      ref=0x340E (LI[14]=li_let_i.vdx)
06BE  22                                     COPY_BG_TO_FG
06BF  1C 26 34                               VIDEO_TRANSITION_REF          ref=0x3426 (LI[38]=li_nolet.vdx)
06C2  37 09 01 EF 00 1F 01 05 01             COPY_RECT_TO_BG               left=0x0109, top=0x00EF, right=0x011F, bottom=0x0105
06CB  15 59 00                               JMP                           target=0x0059
06CE  96 20 B2                               LOADSTRING                    dst=v[0x020], values=[2]
06D1  9C 18 34                               VIDEO_TRANSITION_REF          ref=0x3418 (LI[24]=li_stn07.vdx)
06D4  09 0E 34                               VIDEOREF                      ref=0x340E (LI[14]=li_let_i.vdx)
06D7  22                                     COPY_BG_TO_FG
06D8  1C 26 34                               VIDEO_TRANSITION_REF          ref=0x3426 (LI[38]=li_nolet.vdx)
06DB  37 2D 01 91 00 3F 01 A6 00             COPY_RECT_TO_BG               left=0x012D, top=0x0091, right=0x013F, bottom=0x00A6
06E4  15 59 00                               JMP                           target=0x0059
06E7  96 21 B2                               LOADSTRING                    dst=v[0x021], values=[2]
06EA  9C 19 34                               VIDEO_TRANSITION_REF          ref=0x3419 (LI[25]=li_stn08.vdx)
06ED  09 0E 34                               VIDEOREF                      ref=0x340E (LI[14]=li_let_i.vdx)
06F0  22                                     COPY_BG_TO_FG
06F1  1C 26 34                               VIDEO_TRANSITION_REF          ref=0x3426 (LI[38]=li_nolet.vdx)
06F4  37 F5 00 18 01 08 01 2F 01             COPY_RECT_TO_BG               left=0x00F5, top=0x0118, right=0x0108, bottom=0x012F
06FD  15 59 00                               JMP                           target=0x0059
0700  96 22 B2                               LOADSTRING                    dst=v[0x022], values=[2]
0703  9C 1A 34                               VIDEO_TRANSITION_REF          ref=0x341A (LI[26]=li_stn09.vdx)
0706  09 0E 34                               VIDEOREF                      ref=0x340E (LI[14]=li_let_i.vdx)
0709  22                                     COPY_BG_TO_FG
070A  1C 26 34                               VIDEO_TRANSITION_REF          ref=0x3426 (LI[38]=li_nolet.vdx)
070D  37 D2 00 FA 00 E8 00 0F 01             COPY_RECT_TO_BG               left=0x00D2, top=0x00FA, right=0x00E8, bottom=0x010F
0716  15 59 00                               JMP                           target=0x0059
0719  96 23 B2                               LOADSTRING                    dst=v[0x023], values=[2]
071C  9C 1B 34                               VIDEO_TRANSITION_REF          ref=0x341B (LI[27]=li_stn10.vdx)
071F  09 0E 34                               VIDEOREF                      ref=0x340E (LI[14]=li_let_i.vdx)
0722  22                                     COPY_BG_TO_FG
0723  1C 26 34                               VIDEO_TRANSITION_REF          ref=0x3426 (LI[38]=li_nolet.vdx)
0726  37 E0 00 A3 00 F6 00 B9 00             COPY_RECT_TO_BG               left=0x00E0, top=0x00A3, right=0x00F6, bottom=0x00B9
072F  15 59 00                               JMP                           target=0x0059
0732  96 24 B2                               LOADSTRING                    dst=v[0x024], values=[2]
0735  9C 1C 34                               VIDEO_TRANSITION_REF          ref=0x341C (LI[28]=li_stn11.vdx)
0738  09 0E 34                               VIDEOREF                      ref=0x340E (LI[14]=li_let_i.vdx)
073B  22                                     COPY_BG_TO_FG
073C  1C 26 34                               VIDEO_TRANSITION_REF          ref=0x3426 (LI[38]=li_nolet.vdx)
073F  37 18 01 6E 00 2E 01 84 00             COPY_RECT_TO_BG               left=0x0118, top=0x006E, right=0x012E, bottom=0x0084
0748  15 59 00                               JMP                           target=0x0059
074B  96 25 B2                               LOADSTRING                    dst=v[0x025], values=[2]
074E  9C 1D 34                               VIDEO_TRANSITION_REF          ref=0x341D (LI[29]=li_stn12.vdx)
0751  09 0E 34                               VIDEOREF                      ref=0x340E (LI[14]=li_let_i.vdx)
0754  22                                     COPY_BG_TO_FG
0755  1C 26 34                               VIDEO_TRANSITION_REF          ref=0x3426 (LI[38]=li_nolet.vdx)
0758  37 46 01 68 00 5C 01 7D 00             COPY_RECT_TO_BG               left=0x0146, top=0x0068, right=0x015C, bottom=0x007D
0761  15 59 00                               JMP                           target=0x0059
0764  96 26 B2                               LOADSTRING                    dst=v[0x026], values=[2]
0767  9C 1E 34                               VIDEO_TRANSITION_REF          ref=0x341E (LI[30]=li_stn13.vdx)
076A  09 0E 34                               VIDEOREF                      ref=0x340E (LI[14]=li_let_i.vdx)
076D  22                                     COPY_BG_TO_FG
076E  1C 26 34                               VIDEO_TRANSITION_REF          ref=0x3426 (LI[38]=li_nolet.vdx)
0771  37 B7 01 B0 00 CD 01 C7 00             COPY_RECT_TO_BG               left=0x01B7, top=0x00B0, right=0x01CD, bottom=0x00C7
077A  15 59 00                               JMP                           target=0x0059
077D  96 27 B2                               LOADSTRING                    dst=v[0x027], values=[2]
0780  9C 1F 34                               VIDEO_TRANSITION_REF          ref=0x341F (LI[31]=li_stn14.vdx)
0783  09 0E 34                               VIDEOREF                      ref=0x340E (LI[14]=li_let_i.vdx)
0786  22                                     COPY_BG_TO_FG
0787  1C 26 34                               VIDEO_TRANSITION_REF          ref=0x3426 (LI[38]=li_nolet.vdx)
078A  37 B0 01 11 01 C9 01 27 01             COPY_RECT_TO_BG               left=0x01B0, top=0x0111, right=0x01C9, bottom=0x0127
0793  15 59 00                               JMP                           target=0x0059
0796  96 28 B2                               LOADSTRING                    dst=v[0x028], values=[2]
0799  9C 20 34                               VIDEO_TRANSITION_REF          ref=0x3420 (LI[32]=li_stn15.vdx)
079C  09 0E 34                               VIDEOREF                      ref=0x340E (LI[14]=li_let_i.vdx)
079F  22                                     COPY_BG_TO_FG
07A0  1C 26 34                               VIDEO_TRANSITION_REF          ref=0x3426 (LI[38]=li_nolet.vdx)
07A3  37 7E 01 90 00 94 01 A4 00             COPY_RECT_TO_BG               left=0x017E, top=0x0090, right=0x0194, bottom=0x00A4
07AC  15 59 00                               JMP                           target=0x0059
07AF  96 29 B2                               LOADSTRING                    dst=v[0x029], values=[2]
07B2  9C 21 34                               VIDEO_TRANSITION_REF          ref=0x3421 (LI[33]=li_stn16.vdx)
07B5  09 0E 34                               VIDEOREF                      ref=0x340E (LI[14]=li_let_i.vdx)
07B8  22                                     COPY_BG_TO_FG
07B9  1C 26 34                               VIDEO_TRANSITION_REF          ref=0x3426 (LI[38]=li_nolet.vdx)
07BC  37 81 01 D2 00 98 01 EA 00             COPY_RECT_TO_BG               left=0x0181, top=0x00D2, right=0x0198, bottom=0x00EA
07C5  15 59 00                               JMP                           target=0x0059
07C8  96 2A B2                               LOADSTRING                    dst=v[0x02A], values=[2]
07CB  9C 22 34                               VIDEO_TRANSITION_REF          ref=0x3422 (LI[34]=li_stn17.vdx)
07CE  09 0E 34                               VIDEOREF                      ref=0x340E (LI[14]=li_let_i.vdx)
07D1  22                                     COPY_BG_TO_FG
07D2  1C 26 34                               VIDEO_TRANSITION_REF          ref=0x3426 (LI[38]=li_nolet.vdx)
07D5  37 74 01 08 01 8B 01 1F 01             COPY_RECT_TO_BG               left=0x0174, top=0x0108, right=0x018B, bottom=0x011F
07DE  15 59 00                               JMP                           target=0x0059
07E1  96 2B B2                               LOADSTRING                    dst=v[0x02B], values=[2]
07E4  9C 23 34                               VIDEO_TRANSITION_REF          ref=0x3423 (LI[35]=li_stn18.vdx)
07E7  09 0E 34                               VIDEOREF                      ref=0x340E (LI[14]=li_let_i.vdx)
07EA  22                                     COPY_BG_TO_FG
07EB  1C 26 34                               VIDEO_TRANSITION_REF          ref=0x3426 (LI[38]=li_nolet.vdx)
07EE  37 55 01 23 01 6C 01 3B 01             COPY_RECT_TO_BG               left=0x0155, top=0x0123, right=0x016C, bottom=0x013B
07F7  15 59 00                               JMP                           target=0x0059
07FA  96 2C B2                               LOADSTRING                    dst=v[0x02C], values=[2]
07FD  9C 24 34                               VIDEO_TRANSITION_REF          ref=0x3424 (LI[36]=li_stn19.vdx)
0800  09 0E 34                               VIDEOREF                      ref=0x340E (LI[14]=li_let_i.vdx)
0803  22                                     COPY_BG_TO_FG
0804  1C 26 34                               VIDEO_TRANSITION_REF          ref=0x3426 (LI[38]=li_nolet.vdx)
0807  37 3D 01 3B 01 53 01 51 01             COPY_RECT_TO_BG               left=0x013D, top=0x013B, right=0x0153, bottom=0x0151
0810  15 59 00                               JMP                           target=0x0059
0813  96 2D B2                               LOADSTRING                    dst=v[0x02D], values=[2]
0816  9C 25 34                               VIDEO_TRANSITION_REF          ref=0x3425 (LI[37]=li_stn20.vdx)
0819  09 0E 34                               VIDEOREF                      ref=0x340E (LI[14]=li_let_i.vdx)
081C  22                                     COPY_BG_TO_FG
081D  1C 26 34                               VIDEO_TRANSITION_REF          ref=0x3426 (LI[38]=li_nolet.vdx)
0820  37 89 01 3F 01 A0 01 56 01             COPY_RECT_TO_BG               left=0x0189, top=0x013F, right=0x01A0, bottom=0x0156
0829  15 59 00                               JMP                           target=0x0059
082C  96 F5 E1                               LOADSTRING                    dst=v[0x0F5], values=[49]
082F  46                                     RESOURCE_CONTEXT_SAVE
0830  0A                                     VIDEOFLAG5_ON
0831  09 25 50                               VIDEOREF                      ref=0x5025 (GAMWAV[37]=7_e_3.vdx)
0834  47                                     RESOURCE_CONTEXT_RESTORE
0835  22                                     COPY_BG_TO_FG
0836  1C 11 34                               VIDEO_TRANSITION_REF          ref=0x3411 (LI[17]=li_pz_ot.vdx)
0839  18 66 08                               CALL                          target=0x0866
083C  43 00                                  RETURNSCRIPT                  value=0x00
083E  1C 11 34                               VIDEO_TRANSITION_REF          ref=0x3411 (LI[17]=li_pz_ot.vdx)
0841  18 66 08                               CALL                          target=0x0866
0844  43 00                                  RETURNSCRIPT                  value=0x00
0846  43 01                                  RETURNSCRIPT                  value=0x01
0848  07                                     VIDEOFLAG7_ON
0849  46                                     RESOURCE_CONTEXT_SAVE
084A  09 46 50                               VIDEOREF                      ref=0x5046 (GAMWAV[70]=11_s_2.vdx)
084D  47                                     RESOURCE_CONTEXT_RESTORE
084E  1C 11 34                               VIDEO_TRANSITION_REF          ref=0x3411 (LI[17]=li_pz_ot.vdx)
0851  18 66 08                               CALL                          target=0x0866
0854  15 00 00                               JMP                           target=0x0000
0857  07                                     VIDEOFLAG7_ON
0858  46                                     RESOURCE_CONTEXT_SAVE
0859  09 8B 50                               VIDEOREF                      ref=0x508B (GAMWAV[139]=gen_e_5.vdx)
085C  47                                     RESOURCE_CONTEXT_RESTORE
085D  1C 11 34                               VIDEO_TRANSITION_REF          ref=0x3411 (LI[17]=li_pz_ot.vdx)
0860  18 66 08                               CALL                          target=0x0866
0863  15 00 00                               JMP                           target=0x0000
0866  0A                                     VIDEOFLAG5_ON
0867  07                                     VIDEOFLAG7_ON
0868  46                                     RESOURCE_CONTEXT_SAVE
0869  09 01 24                               VIDEOREF                      ref=0x2401 (INTRO[1]=fade.vdx)
086C  37 00 00 50 00 7F 02 8F 01             COPY_RECT_TO_BG               left=0x0000, top=0x0050, right=0x027F, bottom=0x018F
0875  47                                     RESOURCE_CONTEXT_RESTORE
0876  17 00                                  RET                           value=0x00
