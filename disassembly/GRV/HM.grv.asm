; T7G/HM.GRV
; size=5153 sha256=6608ed91a05c6749fb9a3293f8665f420bd8e89c793f8044fab5a5f05c6014e7
; instructions=1205 input_loops=4

0000  02 39 4C                               PLAYSONG                      ref=0x4C39 (XMI[57]=gu61.xmi)
0003  16 03 01 B0                            LOADSTRING                    dst=v[0x103], values=[0]
0007  16 07 01 B0                            LOADSTRING                    dst=v[0x107], values=[0]
000B  9A 17 B1 14 00                         STRCMP_NE_JMP                 start=v[0x017], values=[1], target=0x0014
0010  96 92 32 B0                            LOADSTRING                    dst=v[0x092], values=[2, 0]
0014  9A 17 B2 1D 00                         STRCMP_NE_JMP                 start=v[0x017], values=[2], target=0x001D
0019  96 92 32 B0                            LOADSTRING                    dst=v[0x092], values=[2, 0]
001D  9A 17 B3 26 00                         STRCMP_NE_JMP                 start=v[0x017], values=[3], target=0x0026
0022  96 92 32 B1                            LOADSTRING                    dst=v[0x092], values=[2, 1]
0026  9A 17 B4 2F 00                         STRCMP_NE_JMP                 start=v[0x017], values=[4], target=0x002F
002B  96 92 32 B1                            LOADSTRING                    dst=v[0x092], values=[2, 1]
002F  9A 17 B1 4C 00                         STRCMP_NE_JMP                 start=v[0x017], values=[1], target=0x004C
0034  9A EA B4 3C 00                         STRCMP_NE_JMP                 start=v[0x0EA], values=[4], target=0x003C
0039  96 EA B5                               LOADSTRING                    dst=v[0x0EA], values=[5]
003C  9A EA B2 44 00                         STRCMP_NE_JMP                 start=v[0x0EA], values=[2], target=0x0044
0041  96 EA B3                               LOADSTRING                    dst=v[0x0EA], values=[3]
0044  9A EA B0 4C 00                         STRCMP_NE_JMP                 start=v[0x0EA], values=[0], target=0x004C
0049  96 EA B1                               LOADSTRING                    dst=v[0x0EA], values=[1]
004C  9A 17 B2 69 00                         STRCMP_NE_JMP                 start=v[0x017], values=[2], target=0x0069
0051  9A EA B4 59 00                         STRCMP_NE_JMP                 start=v[0x0EA], values=[4], target=0x0059
0056  96 EA B5                               LOADSTRING                    dst=v[0x0EA], values=[5]
0059  9A EA B2 61 00                         STRCMP_NE_JMP                 start=v[0x0EA], values=[2], target=0x0061
005E  96 EA B3                               LOADSTRING                    dst=v[0x0EA], values=[3]
0061  9A EA B0 69 00                         STRCMP_NE_JMP                 start=v[0x0EA], values=[0], target=0x0069
0066  96 EA B1                               LOADSTRING                    dst=v[0x0EA], values=[1]
0069  9A 17 B3 86 00                         STRCMP_NE_JMP                 start=v[0x017], values=[3], target=0x0086
006E  9A E9 B4 76 00                         STRCMP_NE_JMP                 start=v[0x0E9], values=[4], target=0x0076
0073  96 E9 B5                               LOADSTRING                    dst=v[0x0E9], values=[5]
0076  9A E9 B2 7E 00                         STRCMP_NE_JMP                 start=v[0x0E9], values=[2], target=0x007E
007B  96 E9 B3                               LOADSTRING                    dst=v[0x0E9], values=[3]
007E  9A E9 B0 86 00                         STRCMP_NE_JMP                 start=v[0x0E9], values=[0], target=0x0086
0083  96 E9 B1                               LOADSTRING                    dst=v[0x0E9], values=[1]
0086  9A 17 B4 A3 00                         STRCMP_NE_JMP                 start=v[0x017], values=[4], target=0x00A3
008B  9A E9 B4 93 00                         STRCMP_NE_JMP                 start=v[0x0E9], values=[4], target=0x0093
0090  96 E9 B5                               LOADSTRING                    dst=v[0x0E9], values=[5]
0093  9A E9 B2 9B 00                         STRCMP_NE_JMP                 start=v[0x0E9], values=[2], target=0x009B
0098  96 E9 B3                               LOADSTRING                    dst=v[0x0E9], values=[3]
009B  9A E9 B0 A3 00                         STRCMP_NE_JMP                 start=v[0x0E9], values=[0], target=0x00A3
00A0  96 E9 B1                               LOADSTRING                    dst=v[0x0E9], values=[1]
00A3  22                                     COPY_BG_TO_FG
00A4  2C 0E 14 08                            SET_HOTSPOT_TOP               target=0x140E, cursor=0x08
00A8  2D E2 13 06                            SET_HOTSPOT_BOTTOM            target=0x13E2, cursor=0x06
00AC  44 B2 13                               SET_HOTSPOT_RIGHT             target=0x13B2
00AF  45 B2 13                               SET_HOTSPOT_LEFT              target=0x13B2
00B2  46                                     RESOURCE_CONTEXT_SAVE
00B3  07                                     VIDEOFLAG7_ON
00B4  09 9D 50                               VIDEOREF                      ref=0x509D (GAMWAV[157]=gen_s_6.vdx)
00B7  47                                     RESOURCE_CONTEXT_RESTORE
00B8  96 0C 39 B9                            LOADSTRING                    dst=v[0x00C], values=[9, 9]
00BC  96 11 39 B9                            LOADSTRING                    dst=v[0x011], values=[9, 9]
00C0  96 13 39 B9                            LOADSTRING                    dst=v[0x013], values=[9, 9]
00C4  96 15 39 B9                            LOADSTRING                    dst=v[0x015], values=[9, 9]
00C8  96 02 C0                               LOADSTRING                    dst=v[0x002], values=[16]
00CB  9A 17 B1 09 01                         STRCMP_NE_JMP                 start=v[0x017], values=[1], target=0x0109
00D0  96 19 30 30 31 30 30 30 30 30 31 31 31 30 30 30 31 31 31 31 31 30 30 30 31 31 31 30 30 30 31 30 30 30 31 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 B0 LOADSTRING                    dst=v[0x019], values=[0, 0, 1, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
0103  96 18 C0                               LOADSTRING                    dst=v[0x018], values=[16]
0106  1C 05 20                               VIDEO_TRANSITION_REF          ref=0x2005 (HTBD[5]=ht2pb.vdx)
0109  9A 17 B2 47 01                         STRCMP_NE_JMP                 start=v[0x017], values=[2], target=0x0147
010E  96 19 31 31 31 31 30 30 30 30 31 30 30 31 30 30 30 31 30 30 30 31 30 30 31 30 30 31 30 30 31 31 31 31 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 B0 LOADSTRING                    dst=v[0x019], values=[1, 1, 1, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
0141  96 18 C0                               LOADSTRING                    dst=v[0x018], values=[16]
0144  1C 01 20                               VIDEO_TRANSITION_REF          ref=0x2001 (HTBD[1]=ht1pb.vdx)
0147  9A 17 B3 85 01                         STRCMP_NE_JMP                 start=v[0x017], values=[3], target=0x0185
014C  96 19 30 30 31 31 30 30 30 30 31 30 31 30 31 30 30 30 30 31 30 30 31 31 31 31 31 31 31 31 31 30 30 31 30 30 30 30 31 30 31 30 31 30 30 30 30 31 31 30 B0 LOADSTRING                    dst=v[0x019], values=[0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 1, 1, 0, 0]
017F  96 18 C0                               LOADSTRING                    dst=v[0x018], values=[16]
0182  1C 6D 20                               VIDEO_TRANSITION_REF          ref=0x206D (HTBD[109]=bd1pb.vdx)
0185  9A 17 B4 C3 01                         STRCMP_NE_JMP                 start=v[0x017], values=[4], target=0x01C3
018A  96 19 31 30 30 30 30 30 30 31 31 30 30 30 30 30 31 31 31 30 30 30 30 31 31 31 31 30 30 30 30 31 31 31 30 30 30 30 30 31 31 30 30 30 30 30 30 30 30 30 B0 LOADSTRING                    dst=v[0x019], values=[1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
01BD  96 18 C0                               LOADSTRING                    dst=v[0x018], values=[16]
01C0  1C 70 20                               VIDEO_TRANSITION_REF          ref=0x2070 (HTBD[112]=bd2pb.vdx)
01C3  B6 18 C2 F4 01                         CHAR_LESS_JMP                 start=v[0x018], values=[18], target=0x01F4
01C8  9A 00 23 6D 23 EE D3 01                STRCMP_NE_JMP                 start=v[0x000], values=[v[0x00C], v[0x00D]], target=0x01D3
01D0  96 02 F5                               LOADSTRING                    dst=v[0x002], values=[69]
01D3  9A 00 23 72 23 F3 DE 01                STRCMP_NE_JMP                 start=v[0x000], values=[v[0x011], v[0x012]], target=0x01DE
01DB  96 02 E4                               LOADSTRING                    dst=v[0x002], values=[52]
01DE  9A 00 23 74 23 F5 E9 01                STRCMP_NE_JMP                 start=v[0x000], values=[v[0x013], v[0x014]], target=0x01E9
01E6  96 02 EC                               LOADSTRING                    dst=v[0x002], values=[60]
01E9  9A 00 23 76 23 F7 F4 01                STRCMP_NE_JMP                 start=v[0x000], values=[v[0x015], v[0x016]], target=0x01F4
01F1  96 02 F2                               LOADSTRING                    dst=v[0x002], values=[66]
01F4  A3 18 C0 10 04                         STRCMP_EQ_JMP                 start=v[0x018], values=[16], target=0x0410
01F9  9A 19 B1 01 02                         STRCMP_NE_JMP                 start=v[0x019], values=[1], target=0x0201
01FE  96 19 B2                               LOADSTRING                    dst=v[0x019], values=[2]
0201  9A 1A B1 09 02                         STRCMP_NE_JMP                 start=v[0x01A], values=[1], target=0x0209
0206  96 1A B2                               LOADSTRING                    dst=v[0x01A], values=[2]
0209  9A 1B B1 11 02                         STRCMP_NE_JMP                 start=v[0x01B], values=[1], target=0x0211
020E  96 1B B2                               LOADSTRING                    dst=v[0x01B], values=[2]
0211  9A 1C B1 19 02                         STRCMP_NE_JMP                 start=v[0x01C], values=[1], target=0x0219
0216  96 1C B2                               LOADSTRING                    dst=v[0x01C], values=[2]
0219  9A 1D B1 21 02                         STRCMP_NE_JMP                 start=v[0x01D], values=[1], target=0x0221
021E  96 1D B2                               LOADSTRING                    dst=v[0x01D], values=[2]
0221  9A 1E B1 29 02                         STRCMP_NE_JMP                 start=v[0x01E], values=[1], target=0x0229
0226  96 1E B2                               LOADSTRING                    dst=v[0x01E], values=[2]
0229  9A 1F B1 31 02                         STRCMP_NE_JMP                 start=v[0x01F], values=[1], target=0x0231
022E  96 1F B2                               LOADSTRING                    dst=v[0x01F], values=[2]
0231  9A 20 B1 39 02                         STRCMP_NE_JMP                 start=v[0x020], values=[1], target=0x0239
0236  96 20 B2                               LOADSTRING                    dst=v[0x020], values=[2]
0239  9A 21 B1 41 02                         STRCMP_NE_JMP                 start=v[0x021], values=[1], target=0x0241
023E  96 21 B2                               LOADSTRING                    dst=v[0x021], values=[2]
0241  9A 22 B1 49 02                         STRCMP_NE_JMP                 start=v[0x022], values=[1], target=0x0249
0246  96 22 B2                               LOADSTRING                    dst=v[0x022], values=[2]
0249  9A 23 B1 51 02                         STRCMP_NE_JMP                 start=v[0x023], values=[1], target=0x0251
024E  96 23 B2                               LOADSTRING                    dst=v[0x023], values=[2]
0251  9A 24 B1 59 02                         STRCMP_NE_JMP                 start=v[0x024], values=[1], target=0x0259
0256  96 24 B2                               LOADSTRING                    dst=v[0x024], values=[2]
0259  9A 25 B1 61 02                         STRCMP_NE_JMP                 start=v[0x025], values=[1], target=0x0261
025E  96 25 B2                               LOADSTRING                    dst=v[0x025], values=[2]
0261  9A 26 B1 69 02                         STRCMP_NE_JMP                 start=v[0x026], values=[1], target=0x0269
0266  96 26 B2                               LOADSTRING                    dst=v[0x026], values=[2]
0269  9A 27 B1 71 02                         STRCMP_NE_JMP                 start=v[0x027], values=[1], target=0x0271
026E  96 27 B2                               LOADSTRING                    dst=v[0x027], values=[2]
0271  9A 28 B1 79 02                         STRCMP_NE_JMP                 start=v[0x028], values=[1], target=0x0279
0276  96 28 B2                               LOADSTRING                    dst=v[0x028], values=[2]
0279  9A 29 B1 81 02                         STRCMP_NE_JMP                 start=v[0x029], values=[1], target=0x0281
027E  96 29 B2                               LOADSTRING                    dst=v[0x029], values=[2]
0281  9A 2A B1 89 02                         STRCMP_NE_JMP                 start=v[0x02A], values=[1], target=0x0289
0286  96 2A B2                               LOADSTRING                    dst=v[0x02A], values=[2]
0289  9A 2B B1 91 02                         STRCMP_NE_JMP                 start=v[0x02B], values=[1], target=0x0291
028E  96 2B B2                               LOADSTRING                    dst=v[0x02B], values=[2]
0291  9A 2C B1 99 02                         STRCMP_NE_JMP                 start=v[0x02C], values=[1], target=0x0299
0296  96 2C B2                               LOADSTRING                    dst=v[0x02C], values=[2]
0299  9A 2D B1 A1 02                         STRCMP_NE_JMP                 start=v[0x02D], values=[1], target=0x02A1
029E  96 2D B2                               LOADSTRING                    dst=v[0x02D], values=[2]
02A1  9A 2E B1 A9 02                         STRCMP_NE_JMP                 start=v[0x02E], values=[1], target=0x02A9
02A6  96 2E B2                               LOADSTRING                    dst=v[0x02E], values=[2]
02A9  9A 2F B1 B1 02                         STRCMP_NE_JMP                 start=v[0x02F], values=[1], target=0x02B1
02AE  96 2F B2                               LOADSTRING                    dst=v[0x02F], values=[2]
02B1  9A 30 B1 B9 02                         STRCMP_NE_JMP                 start=v[0x030], values=[1], target=0x02B9
02B6  96 30 B2                               LOADSTRING                    dst=v[0x030], values=[2]
02B9  9A 31 B1 C1 02                         STRCMP_NE_JMP                 start=v[0x031], values=[1], target=0x02C1
02BE  96 31 B2                               LOADSTRING                    dst=v[0x031], values=[2]
02C1  9A 32 B1 C9 02                         STRCMP_NE_JMP                 start=v[0x032], values=[1], target=0x02C9
02C6  96 32 B2                               LOADSTRING                    dst=v[0x032], values=[2]
02C9  9A 33 B1 D1 02                         STRCMP_NE_JMP                 start=v[0x033], values=[1], target=0x02D1
02CE  96 33 B2                               LOADSTRING                    dst=v[0x033], values=[2]
02D1  9A 34 B1 D9 02                         STRCMP_NE_JMP                 start=v[0x034], values=[1], target=0x02D9
02D6  96 34 B2                               LOADSTRING                    dst=v[0x034], values=[2]
02D9  9A 35 B1 E1 02                         STRCMP_NE_JMP                 start=v[0x035], values=[1], target=0x02E1
02DE  96 35 B2                               LOADSTRING                    dst=v[0x035], values=[2]
02E1  9A 36 B1 E9 02                         STRCMP_NE_JMP                 start=v[0x036], values=[1], target=0x02E9
02E6  96 36 B2                               LOADSTRING                    dst=v[0x036], values=[2]
02E9  9A 37 B1 F1 02                         STRCMP_NE_JMP                 start=v[0x037], values=[1], target=0x02F1
02EE  96 37 B2                               LOADSTRING                    dst=v[0x037], values=[2]
02F1  9A 38 B1 F9 02                         STRCMP_NE_JMP                 start=v[0x038], values=[1], target=0x02F9
02F6  96 38 B2                               LOADSTRING                    dst=v[0x038], values=[2]
02F9  9A 39 B1 01 03                         STRCMP_NE_JMP                 start=v[0x039], values=[1], target=0x0301
02FE  96 39 B2                               LOADSTRING                    dst=v[0x039], values=[2]
0301  9A 3A B1 09 03                         STRCMP_NE_JMP                 start=v[0x03A], values=[1], target=0x0309
0306  96 3A B2                               LOADSTRING                    dst=v[0x03A], values=[2]
0309  9A 3B B1 11 03                         STRCMP_NE_JMP                 start=v[0x03B], values=[1], target=0x0311
030E  96 3B B2                               LOADSTRING                    dst=v[0x03B], values=[2]
0311  9A 3C B1 19 03                         STRCMP_NE_JMP                 start=v[0x03C], values=[1], target=0x0319
0316  96 3C B2                               LOADSTRING                    dst=v[0x03C], values=[2]
0319  9A 3D B1 21 03                         STRCMP_NE_JMP                 start=v[0x03D], values=[1], target=0x0321
031E  96 3D B2                               LOADSTRING                    dst=v[0x03D], values=[2]
0321  9A 3E B1 29 03                         STRCMP_NE_JMP                 start=v[0x03E], values=[1], target=0x0329
0326  96 3E B2                               LOADSTRING                    dst=v[0x03E], values=[2]
0329  9A 3F B1 31 03                         STRCMP_NE_JMP                 start=v[0x03F], values=[1], target=0x0331
032E  96 3F B2                               LOADSTRING                    dst=v[0x03F], values=[2]
0331  9A 40 B1 39 03                         STRCMP_NE_JMP                 start=v[0x040], values=[1], target=0x0339
0336  96 40 B2                               LOADSTRING                    dst=v[0x040], values=[2]
0339  9A 41 B1 41 03                         STRCMP_NE_JMP                 start=v[0x041], values=[1], target=0x0341
033E  96 41 B2                               LOADSTRING                    dst=v[0x041], values=[2]
0341  9A 42 B1 49 03                         STRCMP_NE_JMP                 start=v[0x042], values=[1], target=0x0349
0346  96 42 B2                               LOADSTRING                    dst=v[0x042], values=[2]
0349  9A 43 B1 51 03                         STRCMP_NE_JMP                 start=v[0x043], values=[1], target=0x0351
034E  96 43 B2                               LOADSTRING                    dst=v[0x043], values=[2]
0351  9A 44 B1 59 03                         STRCMP_NE_JMP                 start=v[0x044], values=[1], target=0x0359
0356  96 44 B2                               LOADSTRING                    dst=v[0x044], values=[2]
0359  9A 45 B1 61 03                         STRCMP_NE_JMP                 start=v[0x045], values=[1], target=0x0361
035E  96 45 B2                               LOADSTRING                    dst=v[0x045], values=[2]
0361  9A 46 B1 69 03                         STRCMP_NE_JMP                 start=v[0x046], values=[1], target=0x0369
0366  96 46 B2                               LOADSTRING                    dst=v[0x046], values=[2]
0369  9A 47 B1 71 03                         STRCMP_NE_JMP                 start=v[0x047], values=[1], target=0x0371
036E  96 47 B2                               LOADSTRING                    dst=v[0x047], values=[2]
0371  9A 48 B1 79 03                         STRCMP_NE_JMP                 start=v[0x048], values=[1], target=0x0379
0376  96 48 B2                               LOADSTRING                    dst=v[0x048], values=[2]
0379  9A 49 B1 81 03                         STRCMP_NE_JMP                 start=v[0x049], values=[1], target=0x0381
037E  96 49 B2                               LOADSTRING                    dst=v[0x049], values=[2]
0381  9A 4A B1 89 03                         STRCMP_NE_JMP                 start=v[0x04A], values=[1], target=0x0389
0386  96 4A B2                               LOADSTRING                    dst=v[0x04A], values=[2]
0389  96 09 B0                               LOADSTRING                    dst=v[0x009], values=[0]
038C  96 04 30 B0                            LOADSTRING                    dst=v[0x004], values=[0, 0]
0390  96 08 B0                               LOADSTRING                    dst=v[0x008], values=[0]
0393  96 06 7C 23 65 23 E6                   LOADSTRING                    dst=v[0x006], values=[grid[v[0x004],v[0x005]]]
039A  9A 06 B2 A1 03                         STRCMP_NE_JMP                 start=v[0x006], values=[2], target=0x03A1
039F  9F 09                                  INC                           var=v[0x009]
03A1  9A 08 B0 AC 03                         STRCMP_NE_JMP                 start=v[0x008], values=[0], target=0x03AC
03A6  18 BF 05                               CALL                          target=0x05BF
03A9  15 93 03                               JMP                           target=0x0393
03AC  9A 09 B0 10 04                         STRCMP_NE_JMP                 start=v[0x009], values=[0], target=0x0410
03B1  9A 17 B2 C5 03                         STRCMP_NE_JMP                 start=v[0x017], values=[2], target=0x03C5
03B6  96 EA E1                               LOADSTRING                    dst=v[0x0EA], values=[49]
03B9  46                                     RESOURCE_CONTEXT_SAVE
03BA  07                                     VIDEOFLAG7_ON
03BB  09 A2 50                               VIDEOREF                      ref=0x50A2 (GAMWAV[162]=gen_s_11.vdx)
03BE  47                                     RESOURCE_CONTEXT_RESTORE
03BF  1C 01 20                               VIDEO_TRANSITION_REF          ref=0x2001 (HTBD[1]=ht1pb.vdx)
03C2  18 10 14                               CALL                          target=0x1410
03C5  9A 17 B1 DF 03                         STRCMP_NE_JMP                 start=v[0x017], values=[1], target=0x03DF
03CA  07                                     VIDEOFLAG7_ON
03CB  46                                     RESOURCE_CONTEXT_SAVE
03CC  09 93 50                               VIDEOREF                      ref=0x5093 (GAMWAV[147]=gen_e_13.vdx)
03CF  47                                     RESOURCE_CONTEXT_RESTORE
03D0  96 17 B2                               LOADSTRING                    dst=v[0x017], values=[2]
03D3  1C 05 20                               VIDEO_TRANSITION_REF          ref=0x2005 (HTBD[5]=ht2pb.vdx)
03D6  18 10 14                               CALL                          target=0x1410
03D9  09 05 20                               VIDEOREF                      ref=0x2005 (HTBD[5]=ht2pb.vdx)
03DC  15 B8 00                               JMP                           target=0x00B8
03DF  9A 17 B3 F3 03                         STRCMP_NE_JMP                 start=v[0x017], values=[3], target=0x03F3
03E4  96 E9 E1                               LOADSTRING                    dst=v[0x0E9], values=[49]
03E7  07                                     VIDEOFLAG7_ON
03E8  46                                     RESOURCE_CONTEXT_SAVE
03E9  09 A1 50                               VIDEOREF                      ref=0x50A1 (GAMWAV[161]=gen_s_10.vdx)
03EC  47                                     RESOURCE_CONTEXT_RESTORE
03ED  1C 6D 20                               VIDEO_TRANSITION_REF          ref=0x206D (HTBD[109]=bd1pb.vdx)
03F0  18 10 14                               CALL                          target=0x1410
03F3  9A 17 B4 0D 04                         STRCMP_NE_JMP                 start=v[0x017], values=[4], target=0x040D
03F8  07                                     VIDEOFLAG7_ON
03F9  46                                     RESOURCE_CONTEXT_SAVE
03FA  09 99 50                               VIDEOREF                      ref=0x5099 (GAMWAV[153]=gen_s_2.vdx)
03FD  47                                     RESOURCE_CONTEXT_RESTORE
03FE  1C 70 20                               VIDEO_TRANSITION_REF          ref=0x2070 (HTBD[112]=bd2pb.vdx)
0401  18 10 14                               CALL                          target=0x1410
0404  09 70 20                               VIDEOREF                      ref=0x2070 (HTBD[112]=bd2pb.vdx)
0407  96 17 B3                               LOADSTRING                    dst=v[0x017], values=[3]
040A  15 B8 00                               JMP                           target=0x00B8
040D  15 B2 13                               JMP                           target=0x13B2
0410  96 09 B1                               LOADSTRING                    dst=v[0x009], values=[1]
0413  9A 18 C0 1D 04                         STRCMP_NE_JMP                 start=v[0x018], values=[16], target=0x041D
0418  9F 18                                  INC                           var=v[0x018]
041A  15 CD 08                               JMP                           target=0x08CD
041D  96 09 B0                               LOADSTRING                    dst=v[0x009], values=[0]
0420  9F 18                                  INC                           var=v[0x018]
0422  A3 02 E4 35 04                         STRCMP_EQ_JMP                 start=v[0x002], values=[52], target=0x0435
0427  96 04 23 E1                            LOADSTRING                    dst=v[0x004], values=[v[0x000]]
042B  96 05 23 E2                            LOADSTRING                    dst=v[0x005], values=[v[0x001]]
042F  96 06 B7                               LOADSTRING                    dst=v[0x006], values=[7]
0432  18 71 04                               CALL                          target=0x0471
0435  A3 02 F5 48 04                         STRCMP_EQ_JMP                 start=v[0x002], values=[69], target=0x0448
043A  96 04 23 E1                            LOADSTRING                    dst=v[0x004], values=[v[0x000]]
043E  96 05 23 E2                            LOADSTRING                    dst=v[0x005], values=[v[0x001]]
0442  96 06 B0                               LOADSTRING                    dst=v[0x006], values=[0]
0445  18 C3 04                               CALL                          target=0x04C3
0448  A3 02 F2 5B 04                         STRCMP_EQ_JMP                 start=v[0x002], values=[66], target=0x045B
044D  96 04 23 E1                            LOADSTRING                    dst=v[0x004], values=[v[0x000]]
0451  96 05 23 E2                            LOADSTRING                    dst=v[0x005], values=[v[0x001]]
0455  96 08 B0                               LOADSTRING                    dst=v[0x008], values=[0]
0458  18 18 05                               CALL                          target=0x0518
045B  A3 02 EC 6E 04                         STRCMP_EQ_JMP                 start=v[0x002], values=[60], target=0x046E
0460  96 04 23 E1                            LOADSTRING                    dst=v[0x004], values=[v[0x000]]
0464  96 05 23 E2                            LOADSTRING                    dst=v[0x005], values=[v[0x001]]
0468  96 08 B0                               LOADSTRING                    dst=v[0x008], values=[0]
046B  18 62 05                               CALL                          target=0x0562
046E  15 CD 08                               JMP                           target=0x08CD
0471  A0 06                                  DEC                           var=v[0x006]
0473  18 A1 05                               CALL                          target=0x05A1
0476  A3 06 B0 8F 04                         STRCMP_EQ_JMP                 start=v[0x006], values=[0], target=0x048F
047B  9A 08 B1 86 04                         STRCMP_NE_JMP                 start=v[0x008], values=[1], target=0x0486
0480  96 13 E1                               LOADSTRING                    dst=v[0x013], values=[49]
0483  15 89 04                               JMP                           target=0x0489
0486  96 13 B0                               LOADSTRING                    dst=v[0x013], values=[0]
0489  15 71 04                               JMP                           target=0x0471
048C  15 9C 04                               JMP                           target=0x049C
048F  A3 13 E1 9A 04                         STRCMP_EQ_JMP                 start=v[0x013], values=[49], target=0x049A
0494  18 DD 05                               CALL                          target=0x05DD
0497  15 9C 04                               JMP                           target=0x049C
049A  17 00                                  RET                           value=0x00
049C  9A 03 B1 AF 04                         STRCMP_NE_JMP                 start=v[0x003], values=[1], target=0x04AF
04A1  96 0C 23 65 23 E6                      LOADSTRING                    dst=v[0x00C], values=[v[0x004], v[0x005]]
04A7  18 A5 06                               CALL                          target=0x06A5
04AA  17 00                                  RET                           value=0x00
04AC  15 C3 04                               JMP                           target=0x04C3
04AF  96 0C 39 B9                            LOADSTRING                    dst=v[0x00C], values=[9, 9]
04B3  9A 08 B0 C1 04                         STRCMP_NE_JMP                 start=v[0x008], values=[0], target=0x04C1
04B8  96 06 B7                               LOADSTRING                    dst=v[0x006], values=[7]
04BB  15 71 04                               JMP                           target=0x0471
04BE  15 C3 04                               JMP                           target=0x04C3
04C1  17 00                                  RET                           value=0x00
04C3  9F 06                                  INC                           var=v[0x006]
04C5  18 BF 05                               CALL                          target=0x05BF
04C8  A3 06 B7 E1 04                         STRCMP_EQ_JMP                 start=v[0x006], values=[7], target=0x04E1
04CD  9A 08 B1 D8 04                         STRCMP_NE_JMP                 start=v[0x008], values=[1], target=0x04D8
04D2  96 13 E1                               LOADSTRING                    dst=v[0x013], values=[49]
04D5  15 DB 04                               JMP                           target=0x04DB
04D8  96 13 B0                               LOADSTRING                    dst=v[0x013], values=[0]
04DB  15 C3 04                               JMP                           target=0x04C3
04DE  15 EE 04                               JMP                           target=0x04EE
04E1  9A 13 E1 EB 04                         STRCMP_NE_JMP                 start=v[0x013], values=[49], target=0x04EB
04E6  17 00                                  RET                           value=0x00
04E8  15 EE 04                               JMP                           target=0x04EE
04EB  18 DD 05                               CALL                          target=0x05DD
04EE  9A 03 B1 01 05                         STRCMP_NE_JMP                 start=v[0x003], values=[1], target=0x0501
04F3  96 11 23 65 23 E6                      LOADSTRING                    dst=v[0x011], values=[v[0x004], v[0x005]]
04F9  18 A5 06                               CALL                          target=0x06A5
04FC  17 00                                  RET                           value=0x00
04FE  15 16 05                               JMP                           target=0x0516
0501  96 11 39 B9                            LOADSTRING                    dst=v[0x011], values=[9, 9]
0505  A3 04 34 B9 14 05                      STRCMP_EQ_JMP                 start=v[0x004], values=[4, 9], target=0x0514
050B  96 06 B0                               LOADSTRING                    dst=v[0x006], values=[0]
050E  15 C3 04                               JMP                           target=0x04C3
0511  15 16 05                               JMP                           target=0x0516
0514  17 00                                  RET                           value=0x00
0516  17 00                                  RET                           value=0x00
0518  18 A1 05                               CALL                          target=0x05A1
051B  9A 08 B0 26 05                         STRCMP_NE_JMP                 start=v[0x008], values=[0], target=0x0526
0520  18 F6 05                               CALL                          target=0x05F6
0523  15 29 05                               JMP                           target=0x0529
0526  96 10 B0                               LOADSTRING                    dst=v[0x010], values=[0]
0529  9A 10 B1 34 05                         STRCMP_NE_JMP                 start=v[0x010], values=[1], target=0x0534
052E  18 DD 05                               CALL                          target=0x05DD
0531  15 37 05                               JMP                           target=0x0537
0534  96 03 B0                               LOADSTRING                    dst=v[0x003], values=[0]
0537  9A 03 B1 4A 05                         STRCMP_NE_JMP                 start=v[0x003], values=[1], target=0x054A
053C  96 13 23 65 23 E6                      LOADSTRING                    dst=v[0x013], values=[v[0x004], v[0x005]]
0542  18 A5 06                               CALL                          target=0x06A5
0545  17 00                                  RET                           value=0x00
0547  15 60 05                               JMP                           target=0x0560
054A  96 13 39 B9                            LOADSTRING                    dst=v[0x013], values=[9, 9]
054E  9A 10 B1 60 05                         STRCMP_NE_JMP                 start=v[0x010], values=[1], target=0x0560
0553  9A 08 B0 5E 05                         STRCMP_NE_JMP                 start=v[0x008], values=[0], target=0x055E
0558  15 18 05                               JMP                           target=0x0518
055B  15 60 05                               JMP                           target=0x0560
055E  17 00                                  RET                           value=0x00
0560  17 00                                  RET                           value=0x00
0562  96 10 B0                               LOADSTRING                    dst=v[0x010], values=[0]
0565  96 03 B0                               LOADSTRING                    dst=v[0x003], values=[0]
0568  18 BF 05                               CALL                          target=0x05BF
056B  18 F6 05                               CALL                          target=0x05F6
056E  9A 10 B1 76 05                         STRCMP_NE_JMP                 start=v[0x010], values=[1], target=0x0576
0573  18 DD 05                               CALL                          target=0x05DD
0576  9A 03 B1 89 05                         STRCMP_NE_JMP                 start=v[0x003], values=[1], target=0x0589
057B  96 15 23 65 23 E6                      LOADSTRING                    dst=v[0x015], values=[v[0x004], v[0x005]]
0581  18 A5 06                               CALL                          target=0x06A5
0584  17 00                                  RET                           value=0x00
0586  15 9F 05                               JMP                           target=0x059F
0589  96 15 39 B9                            LOADSTRING                    dst=v[0x015], values=[9, 9]
058D  9A 10 B1 9F 05                         STRCMP_NE_JMP                 start=v[0x010], values=[1], target=0x059F
0592  9A 08 B0 9D 05                         STRCMP_NE_JMP                 start=v[0x008], values=[0], target=0x059D
0597  15 62 05                               JMP                           target=0x0562
059A  15 9F 05                               JMP                           target=0x059F
059D  17 00                                  RET                           value=0x00
059F  17 00                                  RET                           value=0x00
05A1  96 08 B0                               LOADSTRING                    dst=v[0x008], values=[0]
05A4  A3 05 B0 AE 05                         STRCMP_EQ_JMP                 start=v[0x005], values=[0], target=0x05AE
05A9  A0 05                                  DEC                           var=v[0x005]
05AB  15 BD 05                               JMP                           target=0x05BD
05AE  9A 04 B0 B8 05                         STRCMP_NE_JMP                 start=v[0x004], values=[0], target=0x05B8
05B3  96 08 B1                               LOADSTRING                    dst=v[0x008], values=[1]
05B6  17 00                                  RET                           value=0x00
05B8  A0 04                                  DEC                           var=v[0x004]
05BA  96 05 B9                               LOADSTRING                    dst=v[0x005], values=[9]
05BD  17 00                                  RET                           value=0x00
05BF  96 08 B0                               LOADSTRING                    dst=v[0x008], values=[0]
05C2  A3 05 B9 CC 05                         STRCMP_EQ_JMP                 start=v[0x005], values=[9], target=0x05CC
05C7  9F 05                                  INC                           var=v[0x005]
05C9  15 DB 05                               JMP                           target=0x05DB
05CC  9A 04 B4 D6 05                         STRCMP_NE_JMP                 start=v[0x004], values=[4], target=0x05D6
05D1  96 08 B1                               LOADSTRING                    dst=v[0x008], values=[1]
05D4  17 00                                  RET                           value=0x00
05D6  9F 04                                  INC                           var=v[0x004]
05D8  96 05 B0                               LOADSTRING                    dst=v[0x005], values=[0]
05DB  17 00                                  RET                           value=0x00
05DD  96 07 7C 23 65 23 E6                   LOADSTRING                    dst=v[0x007], values=[grid[v[0x004],v[0x005]]]
05E4  9A 07 B2 F1 05                         STRCMP_NE_JMP                 start=v[0x007], values=[2], target=0x05F1
05E9  96 03 B1                               LOADSTRING                    dst=v[0x003], values=[1]
05EC  17 00                                  RET                           value=0x00
05EE  15 F6 05                               JMP                           target=0x05F6
05F1  96 03 B0                               LOADSTRING                    dst=v[0x003], values=[0]
05F4  17 00                                  RET                           value=0x00
05F6  96 0A 23 E5                            LOADSTRING                    dst=v[0x00A], values=[v[0x004]]
05FA  96 0B 23 E6                            LOADSTRING                    dst=v[0x00B], values=[v[0x005]]
05FE  96 04 30 B0                            LOADSTRING                    dst=v[0x004], values=[0, 0]
0602  96 10 B0                               LOADSTRING                    dst=v[0x010], values=[0]
0605  96 0E 23 E1                            LOADSTRING                    dst=v[0x00E], values=[v[0x000]]
0609  96 0F 23 E2                            LOADSTRING                    dst=v[0x00F], values=[v[0x001]]
060D  18 7D 06                               CALL                          target=0x067D
0610  9A 10 B1 42 06                         STRCMP_NE_JMP                 start=v[0x010], values=[1], target=0x0642
0615  96 0E 23 EB                            LOADSTRING                    dst=v[0x00E], values=[v[0x00A]]
0619  96 0F 23 EC                            LOADSTRING                    dst=v[0x00F], values=[v[0x00B]]
061D  18 7D 06                               CALL                          target=0x067D
0620  9A 10 B1 32 06                         STRCMP_NE_JMP                 start=v[0x010], values=[1], target=0x0632
0625  96 04 23 EB                            LOADSTRING                    dst=v[0x004], values=[v[0x00A]]
0629  96 05 23 EC                            LOADSTRING                    dst=v[0x005], values=[v[0x00B]]
062D  17 01                                  RET                           value=0x01
062F  15 3F 06                               JMP                           target=0x063F
0632  96 10 B0                               LOADSTRING                    dst=v[0x010], values=[0]
0635  96 04 23 EB                            LOADSTRING                    dst=v[0x004], values=[v[0x00A]]
0639  96 05 23 EC                            LOADSTRING                    dst=v[0x005], values=[v[0x00B]]
063D  17 00                                  RET                           value=0x00
063F  15 7D 06                               JMP                           target=0x067D
0642  96 0E 23 EB                            LOADSTRING                    dst=v[0x00E], values=[v[0x00A]]
0646  96 0F 23 EC                            LOADSTRING                    dst=v[0x00F], values=[v[0x00B]]
064A  18 7D 06                               CALL                          target=0x067D
064D  9A 10 B1 62 06                         STRCMP_NE_JMP                 start=v[0x010], values=[1], target=0x0662
0652  96 10 B0                               LOADSTRING                    dst=v[0x010], values=[0]
0655  96 04 23 EB                            LOADSTRING                    dst=v[0x004], values=[v[0x00A]]
0659  96 05 23 EC                            LOADSTRING                    dst=v[0x005], values=[v[0x00B]]
065D  17 00                                  RET                           value=0x00
065F  15 7D 06                               JMP                           target=0x067D
0662  96 10 B0                               LOADSTRING                    dst=v[0x010], values=[0]
0665  18 BF 05                               CALL                          target=0x05BF
0668  18 BF 05                               CALL                          target=0x05BF
066B  18 BF 05                               CALL                          target=0x05BF
066E  18 BF 05                               CALL                          target=0x05BF
0671  18 BF 05                               CALL                          target=0x05BF
0674  18 BF 05                               CALL                          target=0x05BF
0677  18 BF 05                               CALL                          target=0x05BF
067A  15 05 06                               JMP                           target=0x0605
067D  96 10 B0                               LOADSTRING                    dst=v[0x010], values=[0]
0680  9A 04 23 EF 9A 06                      STRCMP_NE_JMP                 start=v[0x004], values=[v[0x00E]], target=0x069A
0686  B6 05 23 F0 8F 06                      CHAR_LESS_JMP                 start=v[0x005], values=[v[0x00F]], target=0x068F
068C  96 10 B1                               LOADSTRING                    dst=v[0x010], values=[1]
068F  9A 05 23 F0 98 06                      STRCMP_NE_JMP                 start=v[0x005], values=[v[0x00F]], target=0x0698
0695  96 10 B0                               LOADSTRING                    dst=v[0x010], values=[0]
0698  17 00                                  RET                           value=0x00
069A  B6 04 23 EF A3 06                      CHAR_LESS_JMP                 start=v[0x004], values=[v[0x00E]], target=0x06A3
06A0  96 10 B1                               LOADSTRING                    dst=v[0x010], values=[1]
06A3  17 00                                  RET                           value=0x00
06A5  9A 04 30 B0 B0 06                      STRCMP_NE_JMP                 start=v[0x004], values=[0, 0], target=0x06B0
06AB  9F 09                                  INC                           var=v[0x009]
06AD  96 19 B1                               LOADSTRING                    dst=v[0x019], values=[1]
06B0  9A 04 30 B1 BB 06                      STRCMP_NE_JMP                 start=v[0x004], values=[0, 1], target=0x06BB
06B6  9F 09                                  INC                           var=v[0x009]
06B8  96 1A B1                               LOADSTRING                    dst=v[0x01A], values=[1]
06BB  9A 04 30 B2 C6 06                      STRCMP_NE_JMP                 start=v[0x004], values=[0, 2], target=0x06C6
06C1  9F 09                                  INC                           var=v[0x009]
06C3  96 1B B1                               LOADSTRING                    dst=v[0x01B], values=[1]
06C6  9A 04 30 B3 D1 06                      STRCMP_NE_JMP                 start=v[0x004], values=[0, 3], target=0x06D1
06CC  9F 09                                  INC                           var=v[0x009]
06CE  96 1C B1                               LOADSTRING                    dst=v[0x01C], values=[1]
06D1  9A 04 30 B4 DC 06                      STRCMP_NE_JMP                 start=v[0x004], values=[0, 4], target=0x06DC
06D7  9F 09                                  INC                           var=v[0x009]
06D9  96 1D B1                               LOADSTRING                    dst=v[0x01D], values=[1]
06DC  9A 04 30 B5 E7 06                      STRCMP_NE_JMP                 start=v[0x004], values=[0, 5], target=0x06E7
06E2  9F 09                                  INC                           var=v[0x009]
06E4  96 1E B1                               LOADSTRING                    dst=v[0x01E], values=[1]
06E7  9A 04 30 B6 F2 06                      STRCMP_NE_JMP                 start=v[0x004], values=[0, 6], target=0x06F2
06ED  9F 09                                  INC                           var=v[0x009]
06EF  96 1F B1                               LOADSTRING                    dst=v[0x01F], values=[1]
06F2  9A 04 30 B7 FD 06                      STRCMP_NE_JMP                 start=v[0x004], values=[0, 7], target=0x06FD
06F8  9F 09                                  INC                           var=v[0x009]
06FA  96 20 B1                               LOADSTRING                    dst=v[0x020], values=[1]
06FD  9A 04 30 B8 08 07                      STRCMP_NE_JMP                 start=v[0x004], values=[0, 8], target=0x0708
0703  9F 09                                  INC                           var=v[0x009]
0705  96 21 B1                               LOADSTRING                    dst=v[0x021], values=[1]
0708  9A 04 30 B9 13 07                      STRCMP_NE_JMP                 start=v[0x004], values=[0, 9], target=0x0713
070E  9F 09                                  INC                           var=v[0x009]
0710  96 22 B1                               LOADSTRING                    dst=v[0x022], values=[1]
0713  9A 04 31 B0 1E 07                      STRCMP_NE_JMP                 start=v[0x004], values=[1, 0], target=0x071E
0719  9F 09                                  INC                           var=v[0x009]
071B  96 23 B1                               LOADSTRING                    dst=v[0x023], values=[1]
071E  9A 04 31 B1 29 07                      STRCMP_NE_JMP                 start=v[0x004], values=[1, 1], target=0x0729
0724  9F 09                                  INC                           var=v[0x009]
0726  96 24 B1                               LOADSTRING                    dst=v[0x024], values=[1]
0729  9A 04 31 B2 34 07                      STRCMP_NE_JMP                 start=v[0x004], values=[1, 2], target=0x0734
072F  9F 09                                  INC                           var=v[0x009]
0731  96 25 B1                               LOADSTRING                    dst=v[0x025], values=[1]
0734  9A 04 31 B3 3F 07                      STRCMP_NE_JMP                 start=v[0x004], values=[1, 3], target=0x073F
073A  9F 09                                  INC                           var=v[0x009]
073C  96 26 B1                               LOADSTRING                    dst=v[0x026], values=[1]
073F  9A 04 31 B4 4A 07                      STRCMP_NE_JMP                 start=v[0x004], values=[1, 4], target=0x074A
0745  9F 09                                  INC                           var=v[0x009]
0747  96 27 B1                               LOADSTRING                    dst=v[0x027], values=[1]
074A  9A 04 31 B5 55 07                      STRCMP_NE_JMP                 start=v[0x004], values=[1, 5], target=0x0755
0750  9F 09                                  INC                           var=v[0x009]
0752  96 28 B1                               LOADSTRING                    dst=v[0x028], values=[1]
0755  9A 04 31 B6 60 07                      STRCMP_NE_JMP                 start=v[0x004], values=[1, 6], target=0x0760
075B  9F 09                                  INC                           var=v[0x009]
075D  96 29 B1                               LOADSTRING                    dst=v[0x029], values=[1]
0760  9A 04 31 B7 6B 07                      STRCMP_NE_JMP                 start=v[0x004], values=[1, 7], target=0x076B
0766  9F 09                                  INC                           var=v[0x009]
0768  96 2A B1                               LOADSTRING                    dst=v[0x02A], values=[1]
076B  9A 04 31 B8 76 07                      STRCMP_NE_JMP                 start=v[0x004], values=[1, 8], target=0x0776
0771  9F 09                                  INC                           var=v[0x009]
0773  96 2B B1                               LOADSTRING                    dst=v[0x02B], values=[1]
0776  9A 04 31 B9 81 07                      STRCMP_NE_JMP                 start=v[0x004], values=[1, 9], target=0x0781
077C  9F 09                                  INC                           var=v[0x009]
077E  96 2C B1                               LOADSTRING                    dst=v[0x02C], values=[1]
0781  9A 04 32 B0 8C 07                      STRCMP_NE_JMP                 start=v[0x004], values=[2, 0], target=0x078C
0787  9F 09                                  INC                           var=v[0x009]
0789  96 2D B1                               LOADSTRING                    dst=v[0x02D], values=[1]
078C  9A 04 32 B1 97 07                      STRCMP_NE_JMP                 start=v[0x004], values=[2, 1], target=0x0797
0792  9F 09                                  INC                           var=v[0x009]
0794  96 2E B1                               LOADSTRING                    dst=v[0x02E], values=[1]
0797  9A 04 32 B2 A2 07                      STRCMP_NE_JMP                 start=v[0x004], values=[2, 2], target=0x07A2
079D  9F 09                                  INC                           var=v[0x009]
079F  96 2F B1                               LOADSTRING                    dst=v[0x02F], values=[1]
07A2  9A 04 32 B3 AD 07                      STRCMP_NE_JMP                 start=v[0x004], values=[2, 3], target=0x07AD
07A8  9F 09                                  INC                           var=v[0x009]
07AA  96 30 B1                               LOADSTRING                    dst=v[0x030], values=[1]
07AD  9A 04 32 B4 B8 07                      STRCMP_NE_JMP                 start=v[0x004], values=[2, 4], target=0x07B8
07B3  9F 09                                  INC                           var=v[0x009]
07B5  96 31 B1                               LOADSTRING                    dst=v[0x031], values=[1]
07B8  9A 04 32 B5 C3 07                      STRCMP_NE_JMP                 start=v[0x004], values=[2, 5], target=0x07C3
07BE  9F 09                                  INC                           var=v[0x009]
07C0  96 32 B1                               LOADSTRING                    dst=v[0x032], values=[1]
07C3  9A 04 32 B6 CE 07                      STRCMP_NE_JMP                 start=v[0x004], values=[2, 6], target=0x07CE
07C9  9F 09                                  INC                           var=v[0x009]
07CB  96 33 B1                               LOADSTRING                    dst=v[0x033], values=[1]
07CE  9A 04 32 B7 D9 07                      STRCMP_NE_JMP                 start=v[0x004], values=[2, 7], target=0x07D9
07D4  9F 09                                  INC                           var=v[0x009]
07D6  96 34 B1                               LOADSTRING                    dst=v[0x034], values=[1]
07D9  9A 04 32 B8 E4 07                      STRCMP_NE_JMP                 start=v[0x004], values=[2, 8], target=0x07E4
07DF  9F 09                                  INC                           var=v[0x009]
07E1  96 35 B1                               LOADSTRING                    dst=v[0x035], values=[1]
07E4  9A 04 32 B9 EF 07                      STRCMP_NE_JMP                 start=v[0x004], values=[2, 9], target=0x07EF
07EA  9F 09                                  INC                           var=v[0x009]
07EC  96 36 B1                               LOADSTRING                    dst=v[0x036], values=[1]
07EF  9A 04 33 B0 FA 07                      STRCMP_NE_JMP                 start=v[0x004], values=[3, 0], target=0x07FA
07F5  9F 09                                  INC                           var=v[0x009]
07F7  96 37 B1                               LOADSTRING                    dst=v[0x037], values=[1]
07FA  9A 04 33 B1 05 08                      STRCMP_NE_JMP                 start=v[0x004], values=[3, 1], target=0x0805
0800  9F 09                                  INC                           var=v[0x009]
0802  96 38 B1                               LOADSTRING                    dst=v[0x038], values=[1]
0805  9A 04 33 B2 10 08                      STRCMP_NE_JMP                 start=v[0x004], values=[3, 2], target=0x0810
080B  9F 09                                  INC                           var=v[0x009]
080D  96 39 B1                               LOADSTRING                    dst=v[0x039], values=[1]
0810  9A 04 33 B3 1B 08                      STRCMP_NE_JMP                 start=v[0x004], values=[3, 3], target=0x081B
0816  9F 09                                  INC                           var=v[0x009]
0818  96 3A B1                               LOADSTRING                    dst=v[0x03A], values=[1]
081B  9A 04 33 B4 26 08                      STRCMP_NE_JMP                 start=v[0x004], values=[3, 4], target=0x0826
0821  9F 09                                  INC                           var=v[0x009]
0823  96 3B B1                               LOADSTRING                    dst=v[0x03B], values=[1]
0826  9A 04 33 B5 31 08                      STRCMP_NE_JMP                 start=v[0x004], values=[3, 5], target=0x0831
082C  9F 09                                  INC                           var=v[0x009]
082E  96 3C B1                               LOADSTRING                    dst=v[0x03C], values=[1]
0831  9A 04 33 B6 3C 08                      STRCMP_NE_JMP                 start=v[0x004], values=[3, 6], target=0x083C
0837  9F 09                                  INC                           var=v[0x009]
0839  96 3D B1                               LOADSTRING                    dst=v[0x03D], values=[1]
083C  9A 04 33 B7 47 08                      STRCMP_NE_JMP                 start=v[0x004], values=[3, 7], target=0x0847
0842  9F 09                                  INC                           var=v[0x009]
0844  96 3E B1                               LOADSTRING                    dst=v[0x03E], values=[1]
0847  9A 04 33 B8 52 08                      STRCMP_NE_JMP                 start=v[0x004], values=[3, 8], target=0x0852
084D  9F 09                                  INC                           var=v[0x009]
084F  96 3F B1                               LOADSTRING                    dst=v[0x03F], values=[1]
0852  9A 04 33 B9 5D 08                      STRCMP_NE_JMP                 start=v[0x004], values=[3, 9], target=0x085D
0858  9F 09                                  INC                           var=v[0x009]
085A  96 40 B1                               LOADSTRING                    dst=v[0x040], values=[1]
085D  9A 04 34 B0 68 08                      STRCMP_NE_JMP                 start=v[0x004], values=[4, 0], target=0x0868
0863  9F 09                                  INC                           var=v[0x009]
0865  96 41 B1                               LOADSTRING                    dst=v[0x041], values=[1]
0868  9A 04 34 B1 73 08                      STRCMP_NE_JMP                 start=v[0x004], values=[4, 1], target=0x0873
086E  9F 09                                  INC                           var=v[0x009]
0870  96 42 B1                               LOADSTRING                    dst=v[0x042], values=[1]
0873  9A 04 34 B2 7E 08                      STRCMP_NE_JMP                 start=v[0x004], values=[4, 2], target=0x087E
0879  9F 09                                  INC                           var=v[0x009]
087B  96 43 B1                               LOADSTRING                    dst=v[0x043], values=[1]
087E  9A 04 34 B3 89 08                      STRCMP_NE_JMP                 start=v[0x004], values=[4, 3], target=0x0889
0884  9F 09                                  INC                           var=v[0x009]
0886  96 44 B1                               LOADSTRING                    dst=v[0x044], values=[1]
0889  9A 04 34 B4 94 08                      STRCMP_NE_JMP                 start=v[0x004], values=[4, 4], target=0x0894
088F  9F 09                                  INC                           var=v[0x009]
0891  96 45 B1                               LOADSTRING                    dst=v[0x045], values=[1]
0894  9A 04 34 B5 9F 08                      STRCMP_NE_JMP                 start=v[0x004], values=[4, 5], target=0x089F
089A  9F 09                                  INC                           var=v[0x009]
089C  96 46 B1                               LOADSTRING                    dst=v[0x046], values=[1]
089F  9A 04 34 B6 AA 08                      STRCMP_NE_JMP                 start=v[0x004], values=[4, 6], target=0x08AA
08A5  9F 09                                  INC                           var=v[0x009]
08A7  96 47 B1                               LOADSTRING                    dst=v[0x047], values=[1]
08AA  9A 04 34 B7 B5 08                      STRCMP_NE_JMP                 start=v[0x004], values=[4, 7], target=0x08B5
08B0  9F 09                                  INC                           var=v[0x009]
08B2  96 48 B1                               LOADSTRING                    dst=v[0x048], values=[1]
08B5  9A 04 34 B8 C0 08                      STRCMP_NE_JMP                 start=v[0x004], values=[4, 8], target=0x08C0
08BB  9F 09                                  INC                           var=v[0x009]
08BD  96 49 B1                               LOADSTRING                    dst=v[0x049], values=[1]
08C0  9A 04 34 B9 CB 08                      STRCMP_NE_JMP                 start=v[0x004], values=[4, 9], target=0x08CB
08C6  9F 09                                  INC                           var=v[0x009]
08C8  96 4A B1                               LOADSTRING                    dst=v[0x04A], values=[1]
08CB  17 00                                  RET                           value=0x00
08CD  B6 09 B2 DA 08                         CHAR_LESS_JMP                 start=v[0x009], values=[2], target=0x08DA
08D2  A0 09                                  DEC                           var=v[0x009]
08D4  15 CD 08                               JMP                           target=0x08CD
08D7  15 EB 08                               JMP                           target=0x08EB
08DA  9A 09 B0 EB 08                         STRCMP_NE_JMP                 start=v[0x009], values=[0], target=0x08EB
08DF  07                                     VIDEOFLAG7_ON
08E0  46                                     RESOURCE_CONTEXT_SAVE
08E1  09 A4 50                               VIDEOREF                      ref=0x50A4 (GAMWAV[164]=gen_s_13.vdx)
08E4  47                                     RESOURCE_CONTEXT_RESTORE
08E5  19 C8 00                               SLEEP                         ticks=0x00C8
08E8  15 E2 13                               JMP                           target=0x13E2
08EB  9A 17 B1 0A 0A                         STRCMP_NE_JMP                 start=v[0x017], values=[1], target=0x0A0A
08F0  1A 07 01 B0 00 09                      STRCMP_NE_JMP                 start=v[0x107], values=[0], target=0x0900
08F6  46                                     RESOURCE_CONTEXT_SAVE
08F7  07                                     VIDEOFLAG7_ON
08F8  09 21 50                               VIDEOREF                      ref=0x5021 (GAMWAV[33]=6_s_4.vdx)
08FB  16 07 01 B1                            LOADSTRING                    dst=v[0x107], values=[1]
08FF  47                                     RESOURCE_CONTEXT_RESTORE
0900  36 03 01 E1 1A 09                      CHAR_LESS_JMP                 start=v[0x103], values=[49], target=0x091A
0906  1A 07 01 B1 1A 09                      STRCMP_NE_JMP                 start=v[0x107], values=[1], target=0x091A
090C  16 07 01 B2                            LOADSTRING                    dst=v[0x107], values=[2]
0910  46                                     RESOURCE_CONTEXT_SAVE
0911  16 03 01 B0                            LOADSTRING                    dst=v[0x103], values=[0]
0915  07                                     VIDEOFLAG7_ON
0916  09 5D 50                               VIDEOREF                      ref=0x505D (GAMWAV[93]=16_e_4.vdx)
0919  47                                     RESOURCE_CONTEXT_RESTORE
091A  0B                                     INPUTLOOPSTART
091B  9A 1B B1 2C 09                         STRCMP_NE_JMP                 start=v[0x01B], values=[1], target=0x092C
0920  0D 2A 01 56 00 54 01 89 00 F3 0D 09    HOTSPOT_RECT                  left=0x012A, top=0x0056, right=0x0154, bottom=0x0089, target=0x0DF3, cursor=0x09
092C  9A 21 B1 3D 09                         STRCMP_NE_JMP                 start=v[0x021], values=[1], target=0x093D
0931  0D F8 00 8B 00 25 01 C0 00 82 0E 0A    HOTSPOT_RECT                  left=0x00F8, top=0x008B, right=0x0125, bottom=0x00C0, target=0x0E82, cursor=0x0A
093D  9A 22 B1 4E 09                         STRCMP_NE_JMP                 start=v[0x022], values=[1], target=0x094E
0942  0D 29 01 8C 00 54 01 C0 00 D5 0E 09    HOTSPOT_RECT                  left=0x0129, top=0x008C, right=0x0154, bottom=0x00C0, target=0x0ED5, cursor=0x09
094E  9A 23 B1 5F 09                         STRCMP_NE_JMP                 start=v[0x023], values=[1], target=0x095F
0953  0D 59 01 8C 00 85 01 BF 00 F4 0E 0A    HOTSPOT_RECT                  left=0x0159, top=0x008C, right=0x0185, bottom=0x00BF, target=0x0EF4, cursor=0x0A
095F  9A 27 B1 70 09                         STRCMP_NE_JMP                 start=v[0x027], values=[1], target=0x0970
0964  0D C2 00 C4 00 F2 00 FC 00 60 0F 09    HOTSPOT_RECT                  left=0x00C2, top=0x00C4, right=0x00F2, bottom=0x00FC, target=0x0F60, cursor=0x09
0970  9A 28 B1 81 09                         STRCMP_NE_JMP                 start=v[0x028], values=[1], target=0x0981
0975  0D F7 00 C4 00 23 01 FC 00 8F 0F 0A    HOTSPOT_RECT                  left=0x00F7, top=0x00C4, right=0x0123, bottom=0x00FC, target=0x0F8F, cursor=0x0A
0981  9A 29 B1 92 09                         STRCMP_NE_JMP                 start=v[0x029], values=[1], target=0x0992
0986  0D 29 01 C5 00 54 01 FC 00 D1 0F 09    HOTSPOT_RECT                  left=0x0129, top=0x00C5, right=0x0154, bottom=0x00FC, target=0x0FD1, cursor=0x09
0992  9A 2A B1 A3 09                         STRCMP_NE_JMP                 start=v[0x02A], values=[1], target=0x09A3
0997  0D 5B 01 C5 00 87 01 FC 00 00 10 0A    HOTSPOT_RECT                  left=0x015B, top=0x00C5, right=0x0187, bottom=0x00FC, target=0x1000, cursor=0x0A
09A3  9A 2B B1 B4 09                         STRCMP_NE_JMP                 start=v[0x02B], values=[1], target=0x09B4
09A8  0D 8C 01 C5 00 BA 01 FC 00 30 10 09    HOTSPOT_RECT                  left=0x018C, top=0x00C5, right=0x01BA, bottom=0x00FC, target=0x1030, cursor=0x09
09B4  9A 2F B1 C5 09                         STRCMP_NE_JMP                 start=v[0x02F], values=[1], target=0x09C5
09B9  0D F2 00 02 01 21 01 3E 01 B8 10 0A    HOTSPOT_RECT                  left=0x00F2, top=0x0102, right=0x0121, bottom=0x013E, target=0x10B8, cursor=0x0A
09C5  9A 30 B1 D6 09                         STRCMP_NE_JMP                 start=v[0x030], values=[1], target=0x09D6
09CA  0D 27 01 02 01 55 01 3E 01 0B 11 09    HOTSPOT_RECT                  left=0x0127, top=0x0102, right=0x0155, bottom=0x013E, target=0x110B, cursor=0x09
09D6  9A 31 B1 E7 09                         STRCMP_NE_JMP                 start=v[0x031], values=[1], target=0x09E7
09DB  0D 5C 01 03 01 8B 01 3F 01 4B 11 0A    HOTSPOT_RECT                  left=0x015C, top=0x0103, right=0x018B, bottom=0x013F, target=0x114B, cursor=0x0A
09E7  9A 35 B1 F8 09                         STRCMP_NE_JMP                 start=v[0x035], values=[1], target=0x09F8
09EC  0D B7 00 46 01 EA 00 88 01 F5 11 09    HOTSPOT_RECT                  left=0x00B7, top=0x0146, right=0x00EA, bottom=0x0188, target=0x11F5, cursor=0x09
09F8  9A 39 B1 09 0A                         STRCMP_NE_JMP                 start=v[0x039], values=[1], target=0x0A09
09FD  0D 96 01 45 01 C6 01 88 01 D6 12 0A    HOTSPOT_RECT                  left=0x0196, top=0x0145, right=0x01C6, bottom=0x0188, target=0x12D6, cursor=0x0A
0A09  13                                     INPUTLOOPEND
0A0A  9A 17 B2 FF 0A                         STRCMP_NE_JMP                 start=v[0x017], values=[2], target=0x0AFF
0A0F  0B                                     INPUTLOOPSTART
0A10  9A 19 B1 21 0A                         STRCMP_NE_JMP                 start=v[0x019], values=[1], target=0x0A21
0A15  0D EA 00 58 00 13 01 87 00 A5 0D 09    HOTSPOT_RECT                  left=0x00EA, top=0x0058, right=0x0113, bottom=0x0087, target=0x0DA5, cursor=0x09
0A21  9A 1A B1 32 0A                         STRCMP_NE_JMP                 start=v[0x01A], values=[1], target=0x0A32
0A26  0D 18 01 58 00 41 01 87 00 D4 0D 0A    HOTSPOT_RECT                  left=0x0118, top=0x0058, right=0x0141, bottom=0x0087, target=0x0DD4, cursor=0x0A
0A32  9A 1B B1 43 0A                         STRCMP_NE_JMP                 start=v[0x01B], values=[1], target=0x0A43
0A37  0D 47 01 59 00 6E 01 86 00 F3 0D 09    HOTSPOT_RECT                  left=0x0147, top=0x0059, right=0x016E, bottom=0x0086, target=0x0DF3, cursor=0x09
0A43  9A 1C B1 54 0A                         STRCMP_NE_JMP                 start=v[0x01C], values=[1], target=0x0A54
0A48  0D 74 01 58 00 9D 01 87 00 36 0E 0A    HOTSPOT_RECT                  left=0x0174, top=0x0058, right=0x019D, bottom=0x0087, target=0x0E36, cursor=0x0A
0A54  9A 21 B1 65 0A                         STRCMP_NE_JMP                 start=v[0x021], values=[1], target=0x0A65
0A59  0D 16 01 8C 00 42 01 BF 00 82 0E 09    HOTSPOT_RECT                  left=0x0116, top=0x008C, right=0x0142, bottom=0x00BF, target=0x0E82, cursor=0x09
0A65  9A 24 B1 76 0A                         STRCMP_NE_JMP                 start=v[0x024], values=[1], target=0x0A76
0A6A  0D A5 01 8C 00 D3 01 BF 00 24 0F 0A    HOTSPOT_RECT                  left=0x01A5, top=0x008C, right=0x01D3, bottom=0x00BF, target=0x0F24, cursor=0x0A
0A76  9A 28 B1 87 0A                         STRCMP_NE_JMP                 start=v[0x028], values=[1], target=0x0A87
0A7B  0D 14 01 C5 00 42 01 FC 00 8F 0F 09    HOTSPOT_RECT                  left=0x0114, top=0x00C5, right=0x0142, bottom=0x00FC, target=0x0F8F, cursor=0x09
0A87  9A 2C B1 98 0A                         STRCMP_NE_JMP                 start=v[0x02C], values=[1], target=0x0A98
0A8C  0D D9 01 C5 00 0D 02 FC 00 4F 10 0A    HOTSPOT_RECT                  left=0x01D9, top=0x00C5, right=0x020D, bottom=0x00FC, target=0x104F, cursor=0x0A
0A98  9A 2F B1 A9 0A                         STRCMP_NE_JMP                 start=v[0x02F], values=[1], target=0x0AA9
0A9D  0D 12 01 02 01 41 01 3F 01 B8 10 09    HOTSPOT_RECT                  left=0x0112, top=0x0102, right=0x0141, bottom=0x013F, target=0x10B8, cursor=0x09
0AA9  9A 32 B1 BA 0A                         STRCMP_NE_JMP                 start=v[0x032], values=[1], target=0x0ABA
0AAE  0D AD 01 02 01 E1 01 3F 01 8B 11 0A    HOTSPOT_RECT                  left=0x01AD, top=0x0102, right=0x01E1, bottom=0x013F, target=0x118B, cursor=0x0A
0ABA  9A 35 B1 CB 0A                         STRCMP_NE_JMP                 start=v[0x035], values=[1], target=0x0ACB
0ABF  0D D8 00 46 01 0B 01 89 01 F5 11 09    HOTSPOT_RECT                  left=0x00D8, top=0x0146, right=0x010B, bottom=0x0189, target=0x11F5, cursor=0x09
0ACB  9A 36 B1 DC 0A                         STRCMP_NE_JMP                 start=v[0x036], values=[1], target=0x0ADC
0AD0  0D 10 01 46 01 40 01 88 01 38 12 0A    HOTSPOT_RECT                  left=0x0110, top=0x0146, right=0x0140, bottom=0x0188, target=0x1238, cursor=0x0A
0ADC  9A 37 B1 ED 0A                         STRCMP_NE_JMP                 start=v[0x037], values=[1], target=0x0AED
0AE1  0D 48 01 46 01 79 01 88 01 67 12 09    HOTSPOT_RECT                  left=0x0148, top=0x0146, right=0x0179, bottom=0x0188, target=0x1267, cursor=0x09
0AED  9A 38 B1 FE 0A                         STRCMP_NE_JMP                 start=v[0x038], values=[1], target=0x0AFE
0AF2  0D 7E 01 46 01 B0 01 88 01 96 12 0A    HOTSPOT_RECT                  left=0x017E, top=0x0146, right=0x01B0, bottom=0x0188, target=0x1296, cursor=0x0A
0AFE  13                                     INPUTLOOPEND
0AFF  9A 17 B3 9F 0C                         STRCMP_NE_JMP                 start=v[0x017], values=[3], target=0x0C9F
0B04  36 03 01 E2 1E 0B                      CHAR_LESS_JMP                 start=v[0x103], values=[50], target=0x0B1E
0B0A  1A 07 01 B1 1E 0B                      STRCMP_NE_JMP                 start=v[0x107], values=[1], target=0x0B1E
0B10  46                                     RESOURCE_CONTEXT_SAVE
0B11  16 07 01 B2                            LOADSTRING                    dst=v[0x107], values=[2]
0B15  16 03 01 B0                            LOADSTRING                    dst=v[0x103], values=[0]
0B19  07                                     VIDEOFLAG7_ON
0B1A  09 5E 50                               VIDEOREF                      ref=0x505E (GAMWAV[94]=16_e_5.vdx)
0B1D  47                                     RESOURCE_CONTEXT_RESTORE
0B1E  36 03 01 E3 38 0B                      CHAR_LESS_JMP                 start=v[0x103], values=[51], target=0x0B38
0B24  1A 07 01 B0 38 0B                      STRCMP_NE_JMP                 start=v[0x107], values=[0], target=0x0B38
0B2A  46                                     RESOURCE_CONTEXT_SAVE
0B2B  16 07 01 B1                            LOADSTRING                    dst=v[0x107], values=[1]
0B2F  16 03 01 B0                            LOADSTRING                    dst=v[0x103], values=[0]
0B33  07                                     VIDEOFLAG7_ON
0B34  09 5C 50                               VIDEOREF                      ref=0x505C (GAMWAV[92]=16_e_3.vdx)
0B37  47                                     RESOURCE_CONTEXT_RESTORE
0B38  0B                                     INPUTLOOPSTART
0B39  9A 1B B1 4A 0B                         STRCMP_NE_JMP                 start=v[0x01B], values=[1], target=0x0B4A
0B3E  0D 04 01 5E 00 27 01 82 00 F3 0D 09    HOTSPOT_RECT                  left=0x0104, top=0x005E, right=0x0127, bottom=0x0082, target=0x0DF3, cursor=0x09
0B4A  9A 1C B1 5B 0B                         STRCMP_NE_JMP                 start=v[0x01C], values=[1], target=0x0B5B
0B4F  0D 2E 01 5D 00 53 01 84 00 36 0E 0A    HOTSPOT_RECT                  left=0x012E, top=0x005D, right=0x0153, bottom=0x0084, target=0x0E36, cursor=0x0A
0B5B  9A 21 B1 6C 0B                         STRCMP_NE_JMP                 start=v[0x021], values=[1], target=0x0B6C
0B60  0D D9 00 88 00 FE 00 AD 00 82 0E 09    HOTSPOT_RECT                  left=0x00D9, top=0x0088, right=0x00FE, bottom=0x00AD, target=0x0E82, cursor=0x09
0B6C  9A 23 B1 7D 0B                         STRCMP_NE_JMP                 start=v[0x023], values=[1], target=0x0B7D
0B71  0D 2E 01 88 00 51 01 AC 00 F4 0E 0A    HOTSPOT_RECT                  left=0x012E, top=0x0088, right=0x0151, bottom=0x00AC, target=0x0EF4, cursor=0x0A
0B7D  9A 25 B1 8E 0B                         STRCMP_NE_JMP                 start=v[0x025], values=[1], target=0x0B8E
0B82  0D 83 01 88 00 A6 01 AC 00 43 0F 09    HOTSPOT_RECT                  left=0x0183, top=0x0088, right=0x01A6, bottom=0x00AC, target=0x0F43, cursor=0x09
0B8E  9A 2A B1 9F 0B                         STRCMP_NE_JMP                 start=v[0x02A], values=[1], target=0x0B9F
0B93  0D 2F 01 B2 00 52 01 D7 00 00 10 0A    HOTSPOT_RECT                  left=0x012F, top=0x00B2, right=0x0152, bottom=0x00D7, target=0x1000, cursor=0x0A
0B9F  9A 2D B1 B0 0B                         STRCMP_NE_JMP                 start=v[0x02D], values=[1], target=0x0BB0
0BA4  0D AD 01 B3 00 D2 01 D8 00 6E 10 09    HOTSPOT_RECT                  left=0x01AD, top=0x00B3, right=0x01D2, bottom=0x00D8, target=0x106E, cursor=0x09
0BB0  9A 2E B1 C1 0B                         STRCMP_NE_JMP                 start=v[0x02E], values=[1], target=0x0BC1
0BB5  0D AE 00 DC 00 D3 00 02 01 8B 10 0A    HOTSPOT_RECT                  left=0x00AE, top=0x00DC, right=0x00D3, bottom=0x0102, target=0x108B, cursor=0x0A
0BC1  9A 2F B1 D2 0B                         STRCMP_NE_JMP                 start=v[0x02F], values=[1], target=0x0BD2
0BC6  0D D9 00 DD 00 FC 00 01 01 B8 10 09    HOTSPOT_RECT                  left=0x00D9, top=0x00DD, right=0x00FC, bottom=0x0101, target=0x10B8, cursor=0x09
0BD2  9A 30 B1 E3 0B                         STRCMP_NE_JMP                 start=v[0x030], values=[1], target=0x0BE3
0BD7  0D 03 01 DD 00 27 01 01 01 0B 11 0A    HOTSPOT_RECT                  left=0x0103, top=0x00DD, right=0x0127, bottom=0x0101, target=0x110B, cursor=0x0A
0BE3  9A 31 B1 F4 0B                         STRCMP_NE_JMP                 start=v[0x031], values=[1], target=0x0BF4
0BE8  0D 2F 01 DE 00 52 01 00 01 4B 11 09    HOTSPOT_RECT                  left=0x012F, top=0x00DE, right=0x0152, bottom=0x0100, target=0x114B, cursor=0x09
0BF4  9A 32 B1 05 0C                         STRCMP_NE_JMP                 start=v[0x032], values=[1], target=0x0C05
0BF9  0D 58 01 DC 00 7B 01 01 01 8B 11 0A    HOTSPOT_RECT                  left=0x0158, top=0x00DC, right=0x017B, bottom=0x0101, target=0x118B, cursor=0x0A
0C05  9A 33 B1 16 0C                         STRCMP_NE_JMP                 start=v[0x033], values=[1], target=0x0C16
0C0A  0D 83 01 DC 00 A7 01 02 01 BB 11 09    HOTSPOT_RECT                  left=0x0183, top=0x00DC, right=0x01A7, bottom=0x0102, target=0x11BB, cursor=0x09
0C16  9A 34 B1 27 0C                         STRCMP_NE_JMP                 start=v[0x034], values=[1], target=0x0C27
0C1B  0D AC 01 DD 00 D2 01 02 01 D8 11 0A    HOTSPOT_RECT                  left=0x01AC, top=0x00DD, right=0x01D2, bottom=0x0102, target=0x11D8, cursor=0x0A
0C27  9A 35 B1 38 0C                         STRCMP_NE_JMP                 start=v[0x035], values=[1], target=0x0C38
0C2C  0D AE 00 07 01 D2 00 2C 01 F5 11 09    HOTSPOT_RECT                  left=0x00AE, top=0x0107, right=0x00D2, bottom=0x012C, target=0x11F5, cursor=0x09
0C38  9A 38 B1 49 0C                         STRCMP_NE_JMP                 start=v[0x038], values=[1], target=0x0C49
0C3D  0D 2E 01 07 01 51 01 2B 01 96 12 0A    HOTSPOT_RECT                  left=0x012E, top=0x0107, right=0x0151, bottom=0x012B, target=0x1296, cursor=0x0A
0C49  9A 3D B1 5A 0C                         STRCMP_NE_JMP                 start=v[0x03D], values=[1], target=0x0C5A
0C4E  0D D9 00 32 01 FD 00 57 01 F5 12 09    HOTSPOT_RECT                  left=0x00D9, top=0x0132, right=0x00FD, bottom=0x0157, target=0x12F5, cursor=0x09
0C5A  9A 3F B1 6B 0C                         STRCMP_NE_JMP                 start=v[0x03F], values=[1], target=0x0C6B
0C5F  0D 2D 01 32 01 51 01 57 01 2E 13 0A    HOTSPOT_RECT                  left=0x012D, top=0x0132, right=0x0151, bottom=0x0157, target=0x132E, cursor=0x0A
0C6B  9A 41 B1 7C 0C                         STRCMP_NE_JMP                 start=v[0x041], values=[1], target=0x0C7C
0C70  0D 83 01 32 01 A7 01 56 01 5B 13 09    HOTSPOT_RECT                  left=0x0183, top=0x0132, right=0x01A7, bottom=0x0156, target=0x135B, cursor=0x09
0C7C  9A 46 B1 8D 0C                         STRCMP_NE_JMP                 start=v[0x046], values=[1], target=0x0C8D
0C81  0D 2E 01 5C 01 52 01 82 01 78 13 0A    HOTSPOT_RECT                  left=0x012E, top=0x015C, right=0x0152, bottom=0x0182, target=0x1378, cursor=0x0A
0C8D  9A 47 B1 9E 0C                         STRCMP_NE_JMP                 start=v[0x047], values=[1], target=0x0C9E
0C92  0D 58 01 5D 01 7E 01 83 01 95 13 09    HOTSPOT_RECT                  left=0x0158, top=0x015D, right=0x017E, bottom=0x0183, target=0x1395, cursor=0x09
0C9E  13                                     INPUTLOOPEND
0C9F  9A 17 B4 A5 0D                         STRCMP_NE_JMP                 start=v[0x017], values=[4], target=0x0DA5
0CA4  0B                                     INPUTLOOPSTART
0CA5  9A 19 B1 B6 0C                         STRCMP_NE_JMP                 start=v[0x019], values=[1], target=0x0CB6
0CAA  0D EE 00 74 00 12 01 99 00 A5 0D 09    HOTSPOT_RECT                  left=0x00EE, top=0x0074, right=0x0112, bottom=0x0099, target=0x0DA5, cursor=0x09
0CB6  9A 20 B1 C7 0C                         STRCMP_NE_JMP                 start=v[0x020], values=[1], target=0x0CC7
0CBB  0D EC 00 9D 00 11 01 C2 00 66 0E 0A    HOTSPOT_RECT                  left=0x00EC, top=0x009D, right=0x0111, bottom=0x00C2, target=0x0E66, cursor=0x0A
0CC7  9A 21 B1 D8 0C                         STRCMP_NE_JMP                 start=v[0x021], values=[1], target=0x0CD8
0CCC  0D 18 01 9E 00 3C 01 C2 00 82 0E 09    HOTSPOT_RECT                  left=0x0118, top=0x009E, right=0x013C, bottom=0x00C2, target=0x0E82, cursor=0x09
0CD8  9A 27 B1 E9 0C                         STRCMP_NE_JMP                 start=v[0x027], values=[1], target=0x0CE9
0CDD  0D ED 00 C8 00 11 01 EC 00 60 0F 0A    HOTSPOT_RECT                  left=0x00ED, top=0x00C8, right=0x0111, bottom=0x00EC, target=0x0F60, cursor=0x0A
0CE9  9A 28 B1 FA 0C                         STRCMP_NE_JMP                 start=v[0x028], values=[1], target=0x0CFA
0CEE  0D 18 01 C8 00 3B 01 EB 00 8F 0F 09    HOTSPOT_RECT                  left=0x0118, top=0x00C8, right=0x013B, bottom=0x00EB, target=0x0F8F, cursor=0x09
0CFA  9A 29 B1 0B 0D                         STRCMP_NE_JMP                 start=v[0x029], values=[1], target=0x0D0B
0CFF  0D 42 01 C8 00 65 01 EB 00 D1 0F 0A    HOTSPOT_RECT                  left=0x0142, top=0x00C8, right=0x0165, bottom=0x00EB, target=0x0FD1, cursor=0x0A
0D0B  9A 2E B1 1C 0D                         STRCMP_NE_JMP                 start=v[0x02E], values=[1], target=0x0D1C
0D10  0D EE 00 F2 00 11 01 16 01 8B 10 09    HOTSPOT_RECT                  left=0x00EE, top=0x00F2, right=0x0111, bottom=0x0116, target=0x108B, cursor=0x09
0D1C  9A 2F B1 2D 0D                         STRCMP_NE_JMP                 start=v[0x02F], values=[1], target=0x0D2D
0D21  0D 17 01 F3 00 3C 01 15 01 B8 10 0A    HOTSPOT_RECT                  left=0x0117, top=0x00F3, right=0x013C, bottom=0x0115, target=0x10B8, cursor=0x0A
0D2D  9A 30 B1 3E 0D                         STRCMP_NE_JMP                 start=v[0x030], values=[1], target=0x0D3E
0D32  0D 42 01 F3 00 65 01 16 01 0B 11 09    HOTSPOT_RECT                  left=0x0142, top=0x00F3, right=0x0165, bottom=0x0116, target=0x110B, cursor=0x09
0D3E  9A 31 B1 4F 0D                         STRCMP_NE_JMP                 start=v[0x031], values=[1], target=0x0D4F
0D43  0D 6B 01 F3 00 90 01 15 01 4B 11 0A    HOTSPOT_RECT                  left=0x016B, top=0x00F3, right=0x0190, bottom=0x0115, target=0x114B, cursor=0x0A
0D4F  9A 36 B1 60 0D                         STRCMP_NE_JMP                 start=v[0x036], values=[1], target=0x0D60
0D54  0D 17 01 1C 01 3B 01 40 01 38 12 09    HOTSPOT_RECT                  left=0x0117, top=0x011C, right=0x013B, bottom=0x0140, target=0x1238, cursor=0x09
0D60  9A 37 B1 71 0D                         STRCMP_NE_JMP                 start=v[0x037], values=[1], target=0x0D71
0D65  0D 44 01 1D 01 65 01 40 01 67 12 0A    HOTSPOT_RECT                  left=0x0144, top=0x011D, right=0x0165, bottom=0x0140, target=0x1267, cursor=0x0A
0D71  9A 38 B1 82 0D                         STRCMP_NE_JMP                 start=v[0x038], values=[1], target=0x0D82
0D76  0D 6C 01 1E 01 8E 01 41 01 96 12 09    HOTSPOT_RECT                  left=0x016C, top=0x011E, right=0x018E, bottom=0x0141, target=0x1296, cursor=0x09
0D82  9A 3E B1 93 0D                         STRCMP_NE_JMP                 start=v[0x03E], values=[1], target=0x0D93
0D87  0D 42 01 47 01 66 01 6C 01 12 13 0A    HOTSPOT_RECT                  left=0x0142, top=0x0147, right=0x0166, bottom=0x016C, target=0x1312, cursor=0x0A
0D93  9A 3F B1 A4 0D                         STRCMP_NE_JMP                 start=v[0x03F], values=[1], target=0x0DA4
0D98  0D 6C 01 46 01 91 01 6C 01 2E 13 09    HOTSPOT_RECT                  left=0x016C, top=0x0146, right=0x0191, bottom=0x016C, target=0x132E, cursor=0x09
0DA4  13                                     INPUTLOOPEND
0DA5  9A 17 B2 B8 0D                         STRCMP_NE_JMP                 start=v[0x017], values=[2], target=0x0DB8
0DAA  1C 13 20                               VIDEO_TRANSITION_REF          ref=0x2013 (HTBD[19]=htsb00.vdx)
0DAD  9C 5E 20                               VIDEO_TRANSITION_REF          ref=0x205E (HTBD[94]=htbm00.vdx)
0DB0  26 68 74 62 61 23 79 00                VIDEO_NAME                    name="htba{v018}"
0DB8  9A 17 B4 C8 0D                         STRCMP_NE_JMP                 start=v[0x017], values=[4], target=0x0DC8
0DBD  9C B7 20                               VIDEO_TRANSITION_REF          ref=0x20B7 (HTBD[183]=bd2hm00.vdx)
0DC0  26 62 64 32 68 23 79 00                VIDEO_NAME                    name="bd2h{v018}"
0DC8  22                                     COPY_BG_TO_FG
0DC9  9F 19                                  INC                           var=v[0x019]
0DCB  9F 19                                  INC                           var=v[0x019]
0DCD  96 00 30 B0                            LOADSTRING                    dst=v[0x000], values=[0, 0]
0DD1  15 C3 01                               JMP                           target=0x01C3
0DD4  9A 17 B2 E7 0D                         STRCMP_NE_JMP                 start=v[0x017], values=[2], target=0x0DE7
0DD9  1C 13 20                               VIDEO_TRANSITION_REF          ref=0x2013 (HTBD[19]=htsb00.vdx)
0DDC  9C 5F 20                               VIDEO_TRANSITION_REF          ref=0x205F (HTBD[95]=htbm01.vdx)
0DDF  26 68 74 62 61 23 79 00                VIDEO_NAME                    name="htba{v018}"
0DE7  22                                     COPY_BG_TO_FG
0DE8  9F 1A                                  INC                           var=v[0x01A]
0DEA  9F 1A                                  INC                           var=v[0x01A]
0DEC  96 00 30 B1                            LOADSTRING                    dst=v[0x000], values=[0, 1]
0DF0  15 C3 01                               JMP                           target=0x01C3
0DF3  9A 17 B1 06 0E                         STRCMP_NE_JMP                 start=v[0x017], values=[1], target=0x0E06
0DF8  1C 0E 20                               VIDEO_TRANSITION_REF          ref=0x200E (HTBD[14]=htsa00.vdx)
0DFB  9C 34 20                               VIDEO_TRANSITION_REF          ref=0x2034 (HTBD[52]=htam00.vdx)
0DFE  26 68 74 61 61 23 79 00                VIDEO_NAME                    name="htaa{v018}"
0E06  9A 17 B2 19 0E                         STRCMP_NE_JMP                 start=v[0x017], values=[2], target=0x0E19
0E0B  1C 13 20                               VIDEO_TRANSITION_REF          ref=0x2013 (HTBD[19]=htsb00.vdx)
0E0E  9C 60 20                               VIDEO_TRANSITION_REF          ref=0x2060 (HTBD[96]=htbm02.vdx)
0E11  26 68 74 62 61 23 79 00                VIDEO_NAME                    name="htba{v018}"
0E19  9A 17 B3 2A 0E                         STRCMP_NE_JMP                 start=v[0x017], values=[3], target=0x0E2A
0E1E  9C 92 20                               VIDEO_TRANSITION_REF          ref=0x2092 (HTBD[146]=bd1hm00.vdx)
0E21  0A                                     VIDEOFLAG5_ON
0E22  26 62 64 31 68 23 79 00                VIDEO_NAME                    name="bd1h{v018}"
0E2A  22                                     COPY_BG_TO_FG
0E2B  9F 1B                                  INC                           var=v[0x01B]
0E2D  9F 1B                                  INC                           var=v[0x01B]
0E2F  96 00 30 B2                            LOADSTRING                    dst=v[0x000], values=[0, 2]
0E33  15 C3 01                               JMP                           target=0x01C3
0E36  9A 17 B2 49 0E                         STRCMP_NE_JMP                 start=v[0x017], values=[2], target=0x0E49
0E3B  1C 13 20                               VIDEO_TRANSITION_REF          ref=0x2013 (HTBD[19]=htsb00.vdx)
0E3E  9C 61 20                               VIDEO_TRANSITION_REF          ref=0x2061 (HTBD[97]=htbm03.vdx)
0E41  26 68 74 62 61 23 79 00                VIDEO_NAME                    name="htba{v018}"
0E49  9A 17 B3 5A 0E                         STRCMP_NE_JMP                 start=v[0x017], values=[3], target=0x0E5A
0E4E  9C 93 20                               VIDEO_TRANSITION_REF          ref=0x2093 (HTBD[147]=bd1hm01.vdx)
0E51  0A                                     VIDEOFLAG5_ON
0E52  26 62 64 31 68 23 79 00                VIDEO_NAME                    name="bd1h{v018}"
0E5A  22                                     COPY_BG_TO_FG
0E5B  9F 1C                                  INC                           var=v[0x01C]
0E5D  9F 1C                                  INC                           var=v[0x01C]
0E5F  96 00 30 B3                            LOADSTRING                    dst=v[0x000], values=[0, 3]
0E63  15 C3 01                               JMP                           target=0x01C3
0E66  9A 17 B4 76 0E                         STRCMP_NE_JMP                 start=v[0x017], values=[4], target=0x0E76
0E6B  9C B8 20                               VIDEO_TRANSITION_REF          ref=0x20B8 (HTBD[184]=bd2hm01.vdx)
0E6E  26 62 64 32 68 23 79 00                VIDEO_NAME                    name="bd2h{v018}"
0E76  22                                     COPY_BG_TO_FG
0E77  9F 20                                  INC                           var=v[0x020]
0E79  9F 20                                  INC                           var=v[0x020]
0E7B  96 00 30 B7                            LOADSTRING                    dst=v[0x000], values=[0, 7]
0E7F  15 C3 01                               JMP                           target=0x01C3
0E82  9A 17 B1 95 0E                         STRCMP_NE_JMP                 start=v[0x017], values=[1], target=0x0E95
0E87  1C 0F 20                               VIDEO_TRANSITION_REF          ref=0x200F (HTBD[15]=htsa01.vdx)
0E8A  9C 35 20                               VIDEO_TRANSITION_REF          ref=0x2035 (HTBD[53]=htam01.vdx)
0E8D  26 68 74 61 62 23 79 00                VIDEO_NAME                    name="htab{v018}"
0E95  9A 17 B2 A8 0E                         STRCMP_NE_JMP                 start=v[0x017], values=[2], target=0x0EA8
0E9A  1C 14 20                               VIDEO_TRANSITION_REF          ref=0x2014 (HTBD[20]=htsb01.vdx)
0E9D  9C 62 20                               VIDEO_TRANSITION_REF          ref=0x2062 (HTBD[98]=htbm04.vdx)
0EA0  26 68 74 62 62 23 79 00                VIDEO_NAME                    name="htbb{v018}"
0EA8  9A 17 B3 B9 0E                         STRCMP_NE_JMP                 start=v[0x017], values=[3], target=0x0EB9
0EAD  9C 94 20                               VIDEO_TRANSITION_REF          ref=0x2094 (HTBD[148]=bd1hm02.vdx)
0EB0  0A                                     VIDEOFLAG5_ON
0EB1  26 62 64 31 68 23 79 00                VIDEO_NAME                    name="bd1h{v018}"
0EB9  9A 17 B4 C9 0E                         STRCMP_NE_JMP                 start=v[0x017], values=[4], target=0x0EC9
0EBE  9C B9 20                               VIDEO_TRANSITION_REF          ref=0x20B9 (HTBD[185]=bd2hm02.vdx)
0EC1  26 62 64 32 68 23 79 00                VIDEO_NAME                    name="bd2h{v018}"
0EC9  22                                     COPY_BG_TO_FG
0ECA  9F 21                                  INC                           var=v[0x021]
0ECC  9F 21                                  INC                           var=v[0x021]
0ECE  96 00 30 B8                            LOADSTRING                    dst=v[0x000], values=[0, 8]
0ED2  15 C3 01                               JMP                           target=0x01C3
0ED5  9A 17 B1 E8 0E                         STRCMP_NE_JMP                 start=v[0x017], values=[1], target=0x0EE8
0EDA  1C 0F 20                               VIDEO_TRANSITION_REF          ref=0x200F (HTBD[15]=htsa01.vdx)
0EDD  9C 36 20                               VIDEO_TRANSITION_REF          ref=0x2036 (HTBD[54]=htam02.vdx)
0EE0  26 68 74 61 62 23 79 00                VIDEO_NAME                    name="htab{v018}"
0EE8  22                                     COPY_BG_TO_FG
0EE9  9F 22                                  INC                           var=v[0x022]
0EEB  9F 22                                  INC                           var=v[0x022]
0EED  96 00 30 B9                            LOADSTRING                    dst=v[0x000], values=[0, 9]
0EF1  15 C3 01                               JMP                           target=0x01C3
0EF4  9A 17 B1 07 0F                         STRCMP_NE_JMP                 start=v[0x017], values=[1], target=0x0F07
0EF9  1C 0F 20                               VIDEO_TRANSITION_REF          ref=0x200F (HTBD[15]=htsa01.vdx)
0EFC  9C 37 20                               VIDEO_TRANSITION_REF          ref=0x2037 (HTBD[55]=htam03.vdx)
0EFF  26 68 74 61 62 23 79 00                VIDEO_NAME                    name="htab{v018}"
0F07  9A 17 B3 18 0F                         STRCMP_NE_JMP                 start=v[0x017], values=[3], target=0x0F18
0F0C  9C 95 20                               VIDEO_TRANSITION_REF          ref=0x2095 (HTBD[149]=bd1hm03.vdx)
0F0F  0A                                     VIDEOFLAG5_ON
0F10  26 62 64 31 68 23 79 00                VIDEO_NAME                    name="bd1h{v018}"
0F18  22                                     COPY_BG_TO_FG
0F19  9F 23                                  INC                           var=v[0x023]
0F1B  9F 23                                  INC                           var=v[0x023]
0F1D  96 00 31 B0                            LOADSTRING                    dst=v[0x000], values=[1, 0]
0F21  15 C3 01                               JMP                           target=0x01C3
0F24  9A 17 B2 37 0F                         STRCMP_NE_JMP                 start=v[0x017], values=[2], target=0x0F37
0F29  1C 14 20                               VIDEO_TRANSITION_REF          ref=0x2014 (HTBD[20]=htsb01.vdx)
0F2C  9C 63 20                               VIDEO_TRANSITION_REF          ref=0x2063 (HTBD[99]=htbm05.vdx)
0F2F  26 68 74 62 62 23 79 00                VIDEO_NAME                    name="htbb{v018}"
0F37  22                                     COPY_BG_TO_FG
0F38  9F 24                                  INC                           var=v[0x024]
0F3A  9F 24                                  INC                           var=v[0x024]
0F3C  96 00 31 B1                            LOADSTRING                    dst=v[0x000], values=[1, 1]
0F40  15 C3 01                               JMP                           target=0x01C3
0F43  9A 17 B3 54 0F                         STRCMP_NE_JMP                 start=v[0x017], values=[3], target=0x0F54
0F48  9C 96 20                               VIDEO_TRANSITION_REF          ref=0x2096 (HTBD[150]=bd1hm04.vdx)
0F4B  0A                                     VIDEOFLAG5_ON
0F4C  26 62 64 31 68 23 79 00                VIDEO_NAME                    name="bd1h{v018}"
0F54  22                                     COPY_BG_TO_FG
0F55  9F 25                                  INC                           var=v[0x025]
0F57  9F 25                                  INC                           var=v[0x025]
0F59  96 00 31 B2                            LOADSTRING                    dst=v[0x000], values=[1, 2]
0F5D  15 C3 01                               JMP                           target=0x01C3
0F60  9A 17 B1 73 0F                         STRCMP_NE_JMP                 start=v[0x017], values=[1], target=0x0F73
0F65  1C 10 20                               VIDEO_TRANSITION_REF          ref=0x2010 (HTBD[16]=htsa02.vdx)
0F68  9C 38 20                               VIDEO_TRANSITION_REF          ref=0x2038 (HTBD[56]=htam04.vdx)
0F6B  26 68 74 61 61 23 79 00                VIDEO_NAME                    name="htaa{v018}"
0F73  9A 17 B4 83 0F                         STRCMP_NE_JMP                 start=v[0x017], values=[4], target=0x0F83
0F78  9C BA 20                               VIDEO_TRANSITION_REF          ref=0x20BA (HTBD[186]=bd2hm03.vdx)
0F7B  26 62 64 32 68 23 79 00                VIDEO_NAME                    name="bd2h{v018}"
0F83  22                                     COPY_BG_TO_FG
0F84  9F 27                                  INC                           var=v[0x027]
0F86  9F 27                                  INC                           var=v[0x027]
0F88  96 00 31 B4                            LOADSTRING                    dst=v[0x000], values=[1, 4]
0F8C  15 C3 01                               JMP                           target=0x01C3
0F8F  9A 17 B1 A2 0F                         STRCMP_NE_JMP                 start=v[0x017], values=[1], target=0x0FA2
0F94  1C 10 20                               VIDEO_TRANSITION_REF          ref=0x2010 (HTBD[16]=htsa02.vdx)
0F97  9C 39 20                               VIDEO_TRANSITION_REF          ref=0x2039 (HTBD[57]=htam05.vdx)
0F9A  26 68 74 61 61 23 79 00                VIDEO_NAME                    name="htaa{v018}"
0FA2  9A 17 B2 B5 0F                         STRCMP_NE_JMP                 start=v[0x017], values=[2], target=0x0FB5
0FA7  1C 15 20                               VIDEO_TRANSITION_REF          ref=0x2015 (HTBD[21]=htsb02.vdx)
0FAA  9C 64 20                               VIDEO_TRANSITION_REF          ref=0x2064 (HTBD[100]=htbm06.vdx)
0FAD  26 68 74 62 61 23 79 00                VIDEO_NAME                    name="htba{v018}"
0FB5  9A 17 B4 C5 0F                         STRCMP_NE_JMP                 start=v[0x017], values=[4], target=0x0FC5
0FBA  9C BB 20                               VIDEO_TRANSITION_REF          ref=0x20BB (HTBD[187]=bd2hm04.vdx)
0FBD  26 62 64 32 68 23 79 00                VIDEO_NAME                    name="bd2h{v018}"
0FC5  22                                     COPY_BG_TO_FG
0FC6  9F 28                                  INC                           var=v[0x028]
0FC8  9F 28                                  INC                           var=v[0x028]
0FCA  96 00 31 B5                            LOADSTRING                    dst=v[0x000], values=[1, 5]
0FCE  15 C3 01                               JMP                           target=0x01C3
0FD1  9A 17 B1 E4 0F                         STRCMP_NE_JMP                 start=v[0x017], values=[1], target=0x0FE4
0FD6  1C 10 20                               VIDEO_TRANSITION_REF          ref=0x2010 (HTBD[16]=htsa02.vdx)
0FD9  9C 3A 20                               VIDEO_TRANSITION_REF          ref=0x203A (HTBD[58]=htam06.vdx)
0FDC  26 68 74 61 61 23 79 00                VIDEO_NAME                    name="htaa{v018}"
0FE4  9A 17 B4 F4 0F                         STRCMP_NE_JMP                 start=v[0x017], values=[4], target=0x0FF4
0FE9  9C BC 20                               VIDEO_TRANSITION_REF          ref=0x20BC (HTBD[188]=bd2hm05.vdx)
0FEC  26 62 64 32 68 23 79 00                VIDEO_NAME                    name="bd2h{v018}"
0FF4  22                                     COPY_BG_TO_FG
0FF5  9F 29                                  INC                           var=v[0x029]
0FF7  9F 29                                  INC                           var=v[0x029]
0FF9  96 00 31 B6                            LOADSTRING                    dst=v[0x000], values=[1, 6]
0FFD  15 C3 01                               JMP                           target=0x01C3
1000  9A 17 B1 13 10                         STRCMP_NE_JMP                 start=v[0x017], values=[1], target=0x1013
1005  1C 10 20                               VIDEO_TRANSITION_REF          ref=0x2010 (HTBD[16]=htsa02.vdx)
1008  9C 3B 20                               VIDEO_TRANSITION_REF          ref=0x203B (HTBD[59]=htam07.vdx)
100B  26 68 74 61 61 23 79 00                VIDEO_NAME                    name="htaa{v018}"
1013  9A 17 B3 24 10                         STRCMP_NE_JMP                 start=v[0x017], values=[3], target=0x1024
1018  9C 97 20                               VIDEO_TRANSITION_REF          ref=0x2097 (HTBD[151]=bd1hm05.vdx)
101B  0A                                     VIDEOFLAG5_ON
101C  26 62 64 31 68 23 79 00                VIDEO_NAME                    name="bd1h{v018}"
1024  22                                     COPY_BG_TO_FG
1025  9F 2A                                  INC                           var=v[0x02A]
1027  9F 2A                                  INC                           var=v[0x02A]
1029  96 00 31 B7                            LOADSTRING                    dst=v[0x000], values=[1, 7]
102D  15 C3 01                               JMP                           target=0x01C3
1030  9A 17 B1 43 10                         STRCMP_NE_JMP                 start=v[0x017], values=[1], target=0x1043
1035  1C 10 20                               VIDEO_TRANSITION_REF          ref=0x2010 (HTBD[16]=htsa02.vdx)
1038  9C 3C 20                               VIDEO_TRANSITION_REF          ref=0x203C (HTBD[60]=htam08.vdx)
103B  26 68 74 61 61 23 79 00                VIDEO_NAME                    name="htaa{v018}"
1043  22                                     COPY_BG_TO_FG
1044  9F 2B                                  INC                           var=v[0x02B]
1046  9F 2B                                  INC                           var=v[0x02B]
1048  96 00 31 B8                            LOADSTRING                    dst=v[0x000], values=[1, 8]
104C  15 C3 01                               JMP                           target=0x01C3
104F  9A 17 B2 62 10                         STRCMP_NE_JMP                 start=v[0x017], values=[2], target=0x1062
1054  1C 15 20                               VIDEO_TRANSITION_REF          ref=0x2015 (HTBD[21]=htsb02.vdx)
1057  9C 65 20                               VIDEO_TRANSITION_REF          ref=0x2065 (HTBD[101]=htbm07.vdx)
105A  26 68 74 62 61 23 79 00                VIDEO_NAME                    name="htba{v018}"
1062  22                                     COPY_BG_TO_FG
1063  9F 2C                                  INC                           var=v[0x02C]
1065  9F 2C                                  INC                           var=v[0x02C]
1067  96 00 31 B9                            LOADSTRING                    dst=v[0x000], values=[1, 9]
106B  15 C3 01                               JMP                           target=0x01C3
106E  9A 17 B3 7F 10                         STRCMP_NE_JMP                 start=v[0x017], values=[3], target=0x107F
1073  9C 98 20                               VIDEO_TRANSITION_REF          ref=0x2098 (HTBD[152]=bd1hm06.vdx)
1076  0A                                     VIDEOFLAG5_ON
1077  26 62 64 31 68 23 79 00                VIDEO_NAME                    name="bd1h{v018}"
107F  22                                     COPY_BG_TO_FG
1080  9F 2D                                  INC                           var=v[0x02D]
1082  9F 2D                                  INC                           var=v[0x02D]
1084  96 00 32 B0                            LOADSTRING                    dst=v[0x000], values=[2, 0]
1088  15 C3 01                               JMP                           target=0x01C3
108B  9A 17 B3 9C 10                         STRCMP_NE_JMP                 start=v[0x017], values=[3], target=0x109C
1090  9C 99 20                               VIDEO_TRANSITION_REF          ref=0x2099 (HTBD[153]=bd1hm07.vdx)
1093  0A                                     VIDEOFLAG5_ON
1094  26 62 64 31 68 23 79 00                VIDEO_NAME                    name="bd1h{v018}"
109C  9A 17 B4 AC 10                         STRCMP_NE_JMP                 start=v[0x017], values=[4], target=0x10AC
10A1  9C BD 20                               VIDEO_TRANSITION_REF          ref=0x20BD (HTBD[189]=bd2hm06.vdx)
10A4  26 62 64 32 68 23 79 00                VIDEO_NAME                    name="bd2h{v018}"
10AC  22                                     COPY_BG_TO_FG
10AD  9F 2E                                  INC                           var=v[0x02E]
10AF  9F 2E                                  INC                           var=v[0x02E]
10B1  96 00 32 B1                            LOADSTRING                    dst=v[0x000], values=[2, 1]
10B5  15 C3 01                               JMP                           target=0x01C3
10B8  9A 17 B1 CB 10                         STRCMP_NE_JMP                 start=v[0x017], values=[1], target=0x10CB
10BD  1C 11 20                               VIDEO_TRANSITION_REF          ref=0x2011 (HTBD[17]=htsa03.vdx)
10C0  9C 3D 20                               VIDEO_TRANSITION_REF          ref=0x203D (HTBD[61]=htam09.vdx)
10C3  26 68 74 61 62 23 79 00                VIDEO_NAME                    name="htab{v018}"
10CB  9A 17 B2 DE 10                         STRCMP_NE_JMP                 start=v[0x017], values=[2], target=0x10DE
10D0  1C 16 20                               VIDEO_TRANSITION_REF          ref=0x2016 (HTBD[22]=htsb03.vdx)
10D3  9C 66 20                               VIDEO_TRANSITION_REF          ref=0x2066 (HTBD[102]=htbm08.vdx)
10D6  26 68 74 62 62 23 79 00                VIDEO_NAME                    name="htbb{v018}"
10DE  9A 17 B3 EF 10                         STRCMP_NE_JMP                 start=v[0x017], values=[3], target=0x10EF
10E3  9C 9A 20                               VIDEO_TRANSITION_REF          ref=0x209A (HTBD[154]=bd1hm08.vdx)
10E6  0A                                     VIDEOFLAG5_ON
10E7  26 62 64 31 68 23 79 00                VIDEO_NAME                    name="bd1h{v018}"
10EF  9A 17 B4 FF 10                         STRCMP_NE_JMP                 start=v[0x017], values=[4], target=0x10FF
10F4  9C BE 20                               VIDEO_TRANSITION_REF          ref=0x20BE (HTBD[190]=bd2hm07.vdx)
10F7  26 62 64 32 68 23 79 00                VIDEO_NAME                    name="bd2h{v018}"
10FF  22                                     COPY_BG_TO_FG
1100  9F 2F                                  INC                           var=v[0x02F]
1102  9F 2F                                  INC                           var=v[0x02F]
1104  96 00 32 B2                            LOADSTRING                    dst=v[0x000], values=[2, 2]
1108  15 C3 01                               JMP                           target=0x01C3
110B  9A 17 B1 1E 11                         STRCMP_NE_JMP                 start=v[0x017], values=[1], target=0x111E
1110  1C 11 20                               VIDEO_TRANSITION_REF          ref=0x2011 (HTBD[17]=htsa03.vdx)
1113  9C 3E 20                               VIDEO_TRANSITION_REF          ref=0x203E (HTBD[62]=htam10.vdx)
1116  26 68 74 61 62 23 79 00                VIDEO_NAME                    name="htab{v018}"
111E  9A 17 B3 2F 11                         STRCMP_NE_JMP                 start=v[0x017], values=[3], target=0x112F
1123  9C 9B 20                               VIDEO_TRANSITION_REF          ref=0x209B (HTBD[155]=bd1hm09.vdx)
1126  0A                                     VIDEOFLAG5_ON
1127  26 62 64 31 68 23 79 00                VIDEO_NAME                    name="bd1h{v018}"
112F  9A 17 B4 3F 11                         STRCMP_NE_JMP                 start=v[0x017], values=[4], target=0x113F
1134  9C BF 20                               VIDEO_TRANSITION_REF          ref=0x20BF (HTBD[191]=bd2hm08.vdx)
1137  26 62 64 32 68 23 79 00                VIDEO_NAME                    name="bd2h{v018}"
113F  22                                     COPY_BG_TO_FG
1140  9F 30                                  INC                           var=v[0x030]
1142  9F 30                                  INC                           var=v[0x030]
1144  96 00 32 B3                            LOADSTRING                    dst=v[0x000], values=[2, 3]
1148  15 C3 01                               JMP                           target=0x01C3
114B  9A 17 B1 5E 11                         STRCMP_NE_JMP                 start=v[0x017], values=[1], target=0x115E
1150  1C 11 20                               VIDEO_TRANSITION_REF          ref=0x2011 (HTBD[17]=htsa03.vdx)
1153  9C 3F 20                               VIDEO_TRANSITION_REF          ref=0x203F (HTBD[63]=htam11.vdx)
1156  26 68 74 61 62 23 79 00                VIDEO_NAME                    name="htab{v018}"
115E  9A 17 B3 6F 11                         STRCMP_NE_JMP                 start=v[0x017], values=[3], target=0x116F
1163  9C 9C 20                               VIDEO_TRANSITION_REF          ref=0x209C (HTBD[156]=bd1hm10.vdx)
1166  0A                                     VIDEOFLAG5_ON
1167  26 62 64 31 68 23 79 00                VIDEO_NAME                    name="bd1h{v018}"
116F  9A 17 B4 7F 11                         STRCMP_NE_JMP                 start=v[0x017], values=[4], target=0x117F
1174  9C C0 20                               VIDEO_TRANSITION_REF          ref=0x20C0 (HTBD[192]=bd2hm09.vdx)
1177  26 62 64 32 68 23 79 00                VIDEO_NAME                    name="bd2h{v018}"
117F  22                                     COPY_BG_TO_FG
1180  9F 31                                  INC                           var=v[0x031]
1182  9F 31                                  INC                           var=v[0x031]
1184  96 00 32 B4                            LOADSTRING                    dst=v[0x000], values=[2, 4]
1188  15 C3 01                               JMP                           target=0x01C3
118B  9A 17 B2 9E 11                         STRCMP_NE_JMP                 start=v[0x017], values=[2], target=0x119E
1190  1C 16 20                               VIDEO_TRANSITION_REF          ref=0x2016 (HTBD[22]=htsb03.vdx)
1193  9C 67 20                               VIDEO_TRANSITION_REF          ref=0x2067 (HTBD[103]=htbm09.vdx)
1196  26 68 74 62 62 23 79 00                VIDEO_NAME                    name="htbb{v018}"
119E  9A 17 B3 AF 11                         STRCMP_NE_JMP                 start=v[0x017], values=[3], target=0x11AF
11A3  9C 9D 20                               VIDEO_TRANSITION_REF          ref=0x209D (HTBD[157]=bd1hm11.vdx)
11A6  0A                                     VIDEOFLAG5_ON
11A7  26 62 64 31 68 23 79 00                VIDEO_NAME                    name="bd1h{v018}"
11AF  22                                     COPY_BG_TO_FG
11B0  9F 32                                  INC                           var=v[0x032]
11B2  9F 32                                  INC                           var=v[0x032]
11B4  96 00 32 B5                            LOADSTRING                    dst=v[0x000], values=[2, 5]
11B8  15 C3 01                               JMP                           target=0x01C3
11BB  9A 17 B3 CC 11                         STRCMP_NE_JMP                 start=v[0x017], values=[3], target=0x11CC
11C0  9C 9E 20                               VIDEO_TRANSITION_REF          ref=0x209E (HTBD[158]=bd1hm12.vdx)
11C3  0A                                     VIDEOFLAG5_ON
11C4  26 62 64 31 68 23 79 00                VIDEO_NAME                    name="bd1h{v018}"
11CC  22                                     COPY_BG_TO_FG
11CD  9F 33                                  INC                           var=v[0x033]
11CF  9F 33                                  INC                           var=v[0x033]
11D1  96 00 32 B6                            LOADSTRING                    dst=v[0x000], values=[2, 6]
11D5  15 C3 01                               JMP                           target=0x01C3
11D8  9A 17 B3 E9 11                         STRCMP_NE_JMP                 start=v[0x017], values=[3], target=0x11E9
11DD  9C 9F 20                               VIDEO_TRANSITION_REF          ref=0x209F (HTBD[159]=bd1hm13.vdx)
11E0  0A                                     VIDEOFLAG5_ON
11E1  26 62 64 31 68 23 79 00                VIDEO_NAME                    name="bd1h{v018}"
11E9  22                                     COPY_BG_TO_FG
11EA  9F 34                                  INC                           var=v[0x034]
11EC  9F 34                                  INC                           var=v[0x034]
11EE  96 00 32 B7                            LOADSTRING                    dst=v[0x000], values=[2, 7]
11F2  15 C3 01                               JMP                           target=0x01C3
11F5  9A 17 B1 08 12                         STRCMP_NE_JMP                 start=v[0x017], values=[1], target=0x1208
11FA  1C 12 20                               VIDEO_TRANSITION_REF          ref=0x2012 (HTBD[18]=htsa04.vdx)
11FD  9C 40 20                               VIDEO_TRANSITION_REF          ref=0x2040 (HTBD[64]=htam12.vdx)
1200  26 68 74 61 61 23 79 00                VIDEO_NAME                    name="htaa{v018}"
1208  9A 17 B2 1B 12                         STRCMP_NE_JMP                 start=v[0x017], values=[2], target=0x121B
120D  1C 17 20                               VIDEO_TRANSITION_REF          ref=0x2017 (HTBD[23]=htsb04.vdx)
1210  9C 68 20                               VIDEO_TRANSITION_REF          ref=0x2068 (HTBD[104]=htbm10.vdx)
1213  26 68 74 62 61 23 79 00                VIDEO_NAME                    name="htba{v018}"
121B  9A 17 B3 2C 12                         STRCMP_NE_JMP                 start=v[0x017], values=[3], target=0x122C
1220  9C A0 20                               VIDEO_TRANSITION_REF          ref=0x20A0 (HTBD[160]=bd1hm14.vdx)
1223  0A                                     VIDEOFLAG5_ON
1224  26 62 64 31 68 23 79 00                VIDEO_NAME                    name="bd1h{v018}"
122C  22                                     COPY_BG_TO_FG
122D  9F 35                                  INC                           var=v[0x035]
122F  9F 35                                  INC                           var=v[0x035]
1231  96 00 32 B8                            LOADSTRING                    dst=v[0x000], values=[2, 8]
1235  15 C3 01                               JMP                           target=0x01C3
1238  9A 17 B2 4B 12                         STRCMP_NE_JMP                 start=v[0x017], values=[2], target=0x124B
123D  1C 17 20                               VIDEO_TRANSITION_REF          ref=0x2017 (HTBD[23]=htsb04.vdx)
1240  9C 69 20                               VIDEO_TRANSITION_REF          ref=0x2069 (HTBD[105]=htbm11.vdx)
1243  26 68 74 62 61 23 79 00                VIDEO_NAME                    name="htba{v018}"
124B  9A 17 B4 5B 12                         STRCMP_NE_JMP                 start=v[0x017], values=[4], target=0x125B
1250  9C C1 20                               VIDEO_TRANSITION_REF          ref=0x20C1 (HTBD[193]=bd2hm10.vdx)
1253  26 62 64 32 68 23 79 00                VIDEO_NAME                    name="bd2h{v018}"
125B  22                                     COPY_BG_TO_FG
125C  9F 36                                  INC                           var=v[0x036]
125E  9F 36                                  INC                           var=v[0x036]
1260  96 00 32 B9                            LOADSTRING                    dst=v[0x000], values=[2, 9]
1264  15 C3 01                               JMP                           target=0x01C3
1267  9A 17 B2 7A 12                         STRCMP_NE_JMP                 start=v[0x017], values=[2], target=0x127A
126C  1C 17 20                               VIDEO_TRANSITION_REF          ref=0x2017 (HTBD[23]=htsb04.vdx)
126F  9C 6A 20                               VIDEO_TRANSITION_REF          ref=0x206A (HTBD[106]=htbm12.vdx)
1272  26 68 74 62 61 23 79 00                VIDEO_NAME                    name="htba{v018}"
127A  9A 17 B4 8A 12                         STRCMP_NE_JMP                 start=v[0x017], values=[4], target=0x128A
127F  9C C2 20                               VIDEO_TRANSITION_REF          ref=0x20C2 (HTBD[194]=bd2hm11.vdx)
1282  26 62 64 32 68 23 79 00                VIDEO_NAME                    name="bd2h{v018}"
128A  22                                     COPY_BG_TO_FG
128B  9F 37                                  INC                           var=v[0x037]
128D  9F 37                                  INC                           var=v[0x037]
128F  96 00 33 B0                            LOADSTRING                    dst=v[0x000], values=[3, 0]
1293  15 C3 01                               JMP                           target=0x01C3
1296  9A 17 B2 A9 12                         STRCMP_NE_JMP                 start=v[0x017], values=[2], target=0x12A9
129B  1C 17 20                               VIDEO_TRANSITION_REF          ref=0x2017 (HTBD[23]=htsb04.vdx)
129E  9C 6B 20                               VIDEO_TRANSITION_REF          ref=0x206B (HTBD[107]=htbm13.vdx)
12A1  26 68 74 62 61 23 79 00                VIDEO_NAME                    name="htba{v018}"
12A9  9A 17 B3 BA 12                         STRCMP_NE_JMP                 start=v[0x017], values=[3], target=0x12BA
12AE  9C A1 20                               VIDEO_TRANSITION_REF          ref=0x20A1 (HTBD[161]=bd1hm15.vdx)
12B1  0A                                     VIDEOFLAG5_ON
12B2  26 62 64 31 68 23 79 00                VIDEO_NAME                    name="bd1h{v018}"
12BA  9A 17 B4 CA 12                         STRCMP_NE_JMP                 start=v[0x017], values=[4], target=0x12CA
12BF  9C C3 20                               VIDEO_TRANSITION_REF          ref=0x20C3 (HTBD[195]=bd2hm12.vdx)
12C2  26 62 64 32 68 23 79 00                VIDEO_NAME                    name="bd2h{v018}"
12CA  22                                     COPY_BG_TO_FG
12CB  9F 38                                  INC                           var=v[0x038]
12CD  9F 38                                  INC                           var=v[0x038]
12CF  96 00 33 B1                            LOADSTRING                    dst=v[0x000], values=[3, 1]
12D3  15 C3 01                               JMP                           target=0x01C3
12D6  9A 17 B1 E9 12                         STRCMP_NE_JMP                 start=v[0x017], values=[1], target=0x12E9
12DB  1C 12 20                               VIDEO_TRANSITION_REF          ref=0x2012 (HTBD[18]=htsa04.vdx)
12DE  9C 41 20                               VIDEO_TRANSITION_REF          ref=0x2041 (HTBD[65]=htam13.vdx)
12E1  26 68 74 61 61 23 79 00                VIDEO_NAME                    name="htaa{v018}"
12E9  22                                     COPY_BG_TO_FG
12EA  9F 39                                  INC                           var=v[0x039]
12EC  9F 39                                  INC                           var=v[0x039]
12EE  96 00 33 B2                            LOADSTRING                    dst=v[0x000], values=[3, 2]
12F2  15 C3 01                               JMP                           target=0x01C3
12F5  9A 17 B3 06 13                         STRCMP_NE_JMP                 start=v[0x017], values=[3], target=0x1306
12FA  9C A2 20                               VIDEO_TRANSITION_REF          ref=0x20A2 (HTBD[162]=bd1hm16.vdx)
12FD  0A                                     VIDEOFLAG5_ON
12FE  26 62 64 31 68 23 79 00                VIDEO_NAME                    name="bd1h{v018}"
1306  22                                     COPY_BG_TO_FG
1307  9F 3D                                  INC                           var=v[0x03D]
1309  9F 3D                                  INC                           var=v[0x03D]
130B  96 00 33 B6                            LOADSTRING                    dst=v[0x000], values=[3, 6]
130F  15 C3 01                               JMP                           target=0x01C3
1312  9A 17 B4 22 13                         STRCMP_NE_JMP                 start=v[0x017], values=[4], target=0x1322
1317  9C C4 20                               VIDEO_TRANSITION_REF          ref=0x20C4 (HTBD[196]=bd2hm13.vdx)
131A  26 62 64 32 68 23 79 00                VIDEO_NAME                    name="bd2h{v018}"
1322  22                                     COPY_BG_TO_FG
1323  9F 3E                                  INC                           var=v[0x03E]
1325  9F 3E                                  INC                           var=v[0x03E]
1327  96 00 33 B7                            LOADSTRING                    dst=v[0x000], values=[3, 7]
132B  15 C3 01                               JMP                           target=0x01C3
132E  9A 17 B3 3F 13                         STRCMP_NE_JMP                 start=v[0x017], values=[3], target=0x133F
1333  9C A3 20                               VIDEO_TRANSITION_REF          ref=0x20A3 (HTBD[163]=bd1hm17.vdx)
1336  0A                                     VIDEOFLAG5_ON
1337  26 62 64 31 68 23 79 00                VIDEO_NAME                    name="bd1h{v018}"
133F  9A 17 B4 4F 13                         STRCMP_NE_JMP                 start=v[0x017], values=[4], target=0x134F
1344  9C C5 20                               VIDEO_TRANSITION_REF          ref=0x20C5 (HTBD[197]=bd2hm14.vdx)
1347  26 62 64 32 68 23 79 00                VIDEO_NAME                    name="bd2h{v018}"
134F  22                                     COPY_BG_TO_FG
1350  9F 3F                                  INC                           var=v[0x03F]
1352  9F 3F                                  INC                           var=v[0x03F]
1354  96 00 33 B8                            LOADSTRING                    dst=v[0x000], values=[3, 8]
1358  15 C3 01                               JMP                           target=0x01C3
135B  9A 17 B3 6C 13                         STRCMP_NE_JMP                 start=v[0x017], values=[3], target=0x136C
1360  9C A4 20                               VIDEO_TRANSITION_REF          ref=0x20A4 (HTBD[164]=bd1hm18.vdx)
1363  0A                                     VIDEOFLAG5_ON
1364  26 62 64 31 68 23 79 00                VIDEO_NAME                    name="bd1h{v018}"
136C  22                                     COPY_BG_TO_FG
136D  9F 41                                  INC                           var=v[0x041]
136F  9F 41                                  INC                           var=v[0x041]
1371  96 00 34 B0                            LOADSTRING                    dst=v[0x000], values=[4, 0]
1375  15 C3 01                               JMP                           target=0x01C3
1378  9A 17 B3 89 13                         STRCMP_NE_JMP                 start=v[0x017], values=[3], target=0x1389
137D  9C A5 20                               VIDEO_TRANSITION_REF          ref=0x20A5 (HTBD[165]=bd1hm19.vdx)
1380  0A                                     VIDEOFLAG5_ON
1381  26 62 64 31 68 23 79 00                VIDEO_NAME                    name="bd1h{v018}"
1389  22                                     COPY_BG_TO_FG
138A  9F 46                                  INC                           var=v[0x046]
138C  9F 46                                  INC                           var=v[0x046]
138E  96 00 34 B5                            LOADSTRING                    dst=v[0x000], values=[4, 5]
1392  15 C3 01                               JMP                           target=0x01C3
1395  9A 17 B3 A6 13                         STRCMP_NE_JMP                 start=v[0x017], values=[3], target=0x13A6
139A  9C A6 20                               VIDEO_TRANSITION_REF          ref=0x20A6 (HTBD[166]=bd1hm20.vdx)
139D  0A                                     VIDEOFLAG5_ON
139E  26 62 64 31 68 23 79 00                VIDEO_NAME                    name="bd1h{v018}"
13A6  22                                     COPY_BG_TO_FG
13A7  9F 47                                  INC                           var=v[0x047]
13A9  9F 47                                  INC                           var=v[0x047]
13AB  96 00 34 B6                            LOADSTRING                    dst=v[0x000], values=[4, 6]
13AF  15 C3 01                               JMP                           target=0x01C3
13B2  9A 17 B1 C0 13                         STRCMP_NE_JMP                 start=v[0x017], values=[1], target=0x13C0
13B7  09 05 20                               VIDEOREF                      ref=0x2005 (HTBD[5]=ht2pb.vdx)
13BA  22                                     COPY_BG_TO_FG
13BB  35                                     VIDEOFLAG7_OFF
13BC  09 01 20                               VIDEOREF                      ref=0x2001 (HTBD[1]=ht1pb.vdx)
13BF  22                                     COPY_BG_TO_FG
13C0  9A 17 B2 CA 13                         STRCMP_NE_JMP                 start=v[0x017], values=[2], target=0x13CA
13C5  35                                     VIDEOFLAG7_OFF
13C6  09 01 20                               VIDEOREF                      ref=0x2001 (HTBD[1]=ht1pb.vdx)
13C9  22                                     COPY_BG_TO_FG
13CA  9A 17 B3 D3 13                         STRCMP_NE_JMP                 start=v[0x017], values=[3], target=0x13D3
13CF  09 6D 20                               VIDEOREF                      ref=0x206D (HTBD[109]=bd1pb.vdx)
13D2  22                                     COPY_BG_TO_FG
13D3  9A 17 B4 E0 13                         STRCMP_NE_JMP                 start=v[0x017], values=[4], target=0x13E0
13D8  09 70 20                               VIDEOREF                      ref=0x2070 (HTBD[112]=bd2pb.vdx)
13DB  22                                     COPY_BG_TO_FG
13DC  09 6D 20                               VIDEOREF                      ref=0x206D (HTBD[109]=bd1pb.vdx)
13DF  22                                     COPY_BG_TO_FG
13E0  43 00                                  RETURNSCRIPT                  value=0x00
13E2  07                                     VIDEOFLAG7_ON
13E3  46                                     RESOURCE_CONTEXT_SAVE
13E4  09 8B 50                               VIDEOREF                      ref=0x508B (GAMWAV[139]=gen_e_5.vdx)
13E7  47                                     RESOURCE_CONTEXT_RESTORE
13E8  9A 17 B2 F0 13                         STRCMP_NE_JMP                 start=v[0x017], values=[2], target=0x13F0
13ED  1C 01 20                               VIDEO_TRANSITION_REF          ref=0x2001 (HTBD[1]=ht1pb.vdx)
13F0  9A 17 B1 F8 13                         STRCMP_NE_JMP                 start=v[0x017], values=[1], target=0x13F8
13F5  1C 05 20                               VIDEO_TRANSITION_REF          ref=0x2005 (HTBD[5]=ht2pb.vdx)
13F8  9A 17 B3 00 14                         STRCMP_NE_JMP                 start=v[0x017], values=[3], target=0x1400
13FD  1C 6D 20                               VIDEO_TRANSITION_REF          ref=0x206D (HTBD[109]=bd1pb.vdx)
1400  9A 17 B4 08 14                         STRCMP_NE_JMP                 start=v[0x017], values=[4], target=0x1408
1405  1C 70 20                               VIDEO_TRANSITION_REF          ref=0x2070 (HTBD[112]=bd2pb.vdx)
1408  18 10 14                               CALL                          target=0x1410
140B  15 B8 00                               JMP                           target=0x00B8
140E  43 01                                  RETURNSCRIPT                  value=0x01
1410  07                                     VIDEOFLAG7_ON
1411  46                                     RESOURCE_CONTEXT_SAVE
1412  09 01 24                               VIDEOREF                      ref=0x2401 (INTRO[1]=fade.vdx)
1415  37 00 00 50 00 7F 02 8F 01             COPY_RECT_TO_BG               left=0x0000, top=0x0050, right=0x027F, bottom=0x018F
141E  47                                     RESOURCE_CONTEXT_RESTORE
141F  17 00                                  RET                           value=0x00
