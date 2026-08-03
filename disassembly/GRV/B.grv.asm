; T7G/B.GRV
; size=2388 sha256=bfdc325c89747dac50f109699956c45e003944f5bab2092d4d204c3d386343e6
; instructions=551 input_loops=1

0000  96 92 31 B8                            LOADSTRING                    dst=v[0x092], values=[1, 8]
0004  9A EC B4 0C 00                         STRCMP_NE_JMP                 start=v[0x0EC], values=[4], target=0x000C
0009  96 EC B5                               LOADSTRING                    dst=v[0x0EC], values=[5]
000C  9A EC B2 1A 00                         STRCMP_NE_JMP                 start=v[0x0EC], values=[2], target=0x001A
0011  46                                     RESOURCE_CONTEXT_SAVE
0012  07                                     VIDEOFLAG7_ON
0013  09 A5 50                               VIDEOREF                      ref=0x50A5 (GAMWAV[165]=gen_s_14.vdx)
0016  96 EC B3                               LOADSTRING                    dst=v[0x0EC], values=[3]
0019  47                                     RESOURCE_CONTEXT_RESTORE
001A  9A EC B0 28 00                         STRCMP_NE_JMP                 start=v[0x0EC], values=[0], target=0x0028
001F  46                                     RESOURCE_CONTEXT_SAVE
0020  07                                     VIDEOFLAG7_ON
0021  09 5F 50                               VIDEOREF                      ref=0x505F (GAMWAV[95]=16_s_1.vdx)
0024  96 EC B1                               LOADSTRING                    dst=v[0x0EC], values=[1]
0027  47                                     RESOURCE_CONTEXT_RESTORE
0028  28 00 00                               RESERVED_28                   value=0x0000
002B  2C D8 04 08                            SET_HOTSPOT_TOP               target=0x04D8, cursor=0x08
002F  2D DA 04 06                            SET_HOTSPOT_BOTTOM            target=0x04DA, cursor=0x06
0033  44 D0 04                               SET_HOTSPOT_RIGHT             target=0x04D0
0036  45 D0 04                               SET_HOTSPOT_LEFT              target=0x04D0
0039  16 03 01 B0                            LOADSTRING                    dst=v[0x103], values=[0]
003D  16 07 01 B0                            LOADSTRING                    dst=v[0x107], values=[0]
0041  09 0E 04                               VIDEOREF                      ref=0x040E (B[14]=b_pf.vdx)
0044  96 19 6D 62 77 77 77 77 62 62 77 77 77 62 62 73 77 77 62 62 62 77 77 62 62 62 62 F7 LOADSTRING                    dst=v[0x019], values=[61, 50, 71, 71, 71, 71, 50, 50, 71, 71, 71, 50, 50, 67, 71, 71, 50, 50, 50, 71, 71, 50, 50, 50, 50, 71]
0060  36 03 01 EA 70 00                      CHAR_LESS_JMP                 start=v[0x103], values=[58], target=0x0070
0066  16 03 01 B0                            LOADSTRING                    dst=v[0x103], values=[0]
006A  46                                     RESOURCE_CONTEXT_SAVE
006B  07                                     VIDEOFLAG7_ON
006C  09 60 50                               VIDEOREF                      ref=0x5060 (GAMWAV[96]=16_s_2.vdx)
006F  47                                     RESOURCE_CONTEXT_RESTORE
0070  36 03 01 B9 8A 00                      CHAR_LESS_JMP                 start=v[0x103], values=[9], target=0x008A
0076  1A 07 01 B1 8A 00                      STRCMP_NE_JMP                 start=v[0x107], values=[1], target=0x008A
007C  46                                     RESOURCE_CONTEXT_SAVE
007D  16 03 01 B0                            LOADSTRING                    dst=v[0x103], values=[0]
0081  16 07 01 B2                            LOADSTRING                    dst=v[0x107], values=[2]
0085  07                                     VIDEOFLAG7_ON
0086  09 5B 50                               VIDEOREF                      ref=0x505B (GAMWAV[91]=16_e_2.vdx)
0089  47                                     RESOURCE_CONTEXT_RESTORE
008A  36 03 01 B9 A4 00                      CHAR_LESS_JMP                 start=v[0x103], values=[9], target=0x00A4
0090  1A 07 01 B0 A4 00                      STRCMP_NE_JMP                 start=v[0x107], values=[0], target=0x00A4
0096  46                                     RESOURCE_CONTEXT_SAVE
0097  16 03 01 B0                            LOADSTRING                    dst=v[0x103], values=[0]
009B  16 07 01 B1                            LOADSTRING                    dst=v[0x107], values=[1]
009F  07                                     VIDEOFLAG7_ON
00A0  09 5A 50                               VIDEOREF                      ref=0x505A (GAMWAV[90]=16_e_1.vdx)
00A3  47                                     RESOURCE_CONTEXT_RESTORE
00A4  9A 1A 77 77 77 77 62 77 77 77 62 62 77 77 73 62 62 77 77 62 62 62 77 62 62 62 E2 C4 00 STRCMP_NE_JMP                 start=v[0x01A], values=[71, 71, 71, 71, 50, 71, 71, 71, 50, 50, 71, 71, 67, 50, 50, 71, 71, 50, 50, 50, 71, 50, 50, 50, 50], target=0x00C4
00C1  15 E9 04                               JMP                           target=0x04E9
00C4  9A 1A 77 77 77 77 77 77 77 77 77 62 77 77 73 62 62 77 62 62 62 62 62 62 62 62 E2 E4 00 STRCMP_NE_JMP                 start=v[0x01A], values=[71, 71, 71, 71, 71, 71, 71, 71, 71, 50, 71, 71, 67, 50, 50, 71, 50, 50, 50, 50, 50, 50, 50, 50, 50], target=0x00E4
00E1  15 E9 04                               JMP                           target=0x04E9
00E4  9A 1A 77 62 62 62 62 77 77 62 62 62 77 77 73 62 62 77 77 77 62 62 77 77 77 77 E2 04 01 STRCMP_NE_JMP                 start=v[0x01A], values=[71, 50, 50, 50, 50, 71, 71, 50, 50, 50, 71, 71, 67, 50, 50, 71, 71, 71, 50, 50, 71, 71, 71, 71, 50], target=0x0104
0101  15 E9 04                               JMP                           target=0x04E9
0104  9A 1A 62 62 62 62 62 62 62 62 62 77 62 62 73 77 77 62 77 77 77 77 77 77 77 77 F7 24 01 STRCMP_NE_JMP                 start=v[0x01A], values=[50, 50, 50, 50, 50, 50, 50, 50, 50, 71, 50, 50, 67, 71, 71, 50, 71, 71, 71, 71, 71, 71, 71, 71, 71], target=0x0124
0121  15 E9 04                               JMP                           target=0x04E9
0124  96 00 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 B0 LOADSTRING                    dst=v[0x000], values=[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
013F  9A 19 E1 4D 01                         STRCMP_NE_JMP                 start=v[0x019], values=[49], target=0x014D
0144  96 0B B1                               LOADSTRING                    dst=v[0x00B], values=[1]
0147  96 07 B1                               LOADSTRING                    dst=v[0x007], values=[1]
014A  15 24 03                               JMP                           target=0x0324
014D  9A 19 E2 5E 01                         STRCMP_NE_JMP                 start=v[0x019], values=[50], target=0x015E
0152  96 0A B1                               LOADSTRING                    dst=v[0x00A], values=[1]
0155  96 0C B1                               LOADSTRING                    dst=v[0x00C], values=[1]
0158  96 08 B1                               LOADSTRING                    dst=v[0x008], values=[1]
015B  15 24 03                               JMP                           target=0x0324
015E  9A 19 E3 72 01                         STRCMP_NE_JMP                 start=v[0x019], values=[51], target=0x0172
0163  96 05 B1                               LOADSTRING                    dst=v[0x005], values=[1]
0166  96 0B B1                               LOADSTRING                    dst=v[0x00B], values=[1]
0169  96 0D B1                               LOADSTRING                    dst=v[0x00D], values=[1]
016C  96 09 B1                               LOADSTRING                    dst=v[0x009], values=[1]
016F  15 24 03                               JMP                           target=0x0324
0172  9A 19 E4 83 01                         STRCMP_NE_JMP                 start=v[0x019], values=[52], target=0x0183
0177  96 06 B1                               LOADSTRING                    dst=v[0x006], values=[1]
017A  96 0C B1                               LOADSTRING                    dst=v[0x00C], values=[1]
017D  96 0E B1                               LOADSTRING                    dst=v[0x00E], values=[1]
0180  15 24 03                               JMP                           target=0x0324
0183  9A 19 E5 91 01                         STRCMP_NE_JMP                 start=v[0x019], values=[53], target=0x0191
0188  96 07 B1                               LOADSTRING                    dst=v[0x007], values=[1]
018B  96 0D B1                               LOADSTRING                    dst=v[0x00D], values=[1]
018E  15 24 03                               JMP                           target=0x0324
0191  9A 19 E6 A2 01                         STRCMP_NE_JMP                 start=v[0x019], values=[54], target=0x01A2
0196  96 02 B1                               LOADSTRING                    dst=v[0x002], values=[1]
0199  96 0C B1                               LOADSTRING                    dst=v[0x00C], values=[1]
019C  96 10 B1                               LOADSTRING                    dst=v[0x010], values=[1]
019F  15 24 03                               JMP                           target=0x0324
01A2  9A 19 E7 B6 01                         STRCMP_NE_JMP                 start=v[0x019], values=[55], target=0x01B6
01A7  96 03 B1                               LOADSTRING                    dst=v[0x003], values=[1]
01AA  96 0D B1                               LOADSTRING                    dst=v[0x00D], values=[1]
01AD  96 0F B1                               LOADSTRING                    dst=v[0x00F], values=[1]
01B0  96 11 B1                               LOADSTRING                    dst=v[0x011], values=[1]
01B3  15 24 03                               JMP                           target=0x0324
01B6  9A 19 E8 D0 01                         STRCMP_NE_JMP                 start=v[0x019], values=[56], target=0x01D0
01BB  96 00 B1                               LOADSTRING                    dst=v[0x000], values=[1]
01BE  96 04 B1                               LOADSTRING                    dst=v[0x004], values=[1]
01C1  96 0A B1                               LOADSTRING                    dst=v[0x00A], values=[1]
01C4  96 0E B1                               LOADSTRING                    dst=v[0x00E], values=[1]
01C7  96 10 B1                               LOADSTRING                    dst=v[0x010], values=[1]
01CA  96 12 B1                               LOADSTRING                    dst=v[0x012], values=[1]
01CD  15 24 03                               JMP                           target=0x0324
01D0  9A 19 E9 E4 01                         STRCMP_NE_JMP                 start=v[0x019], values=[57], target=0x01E4
01D5  96 01 B1                               LOADSTRING                    dst=v[0x001], values=[1]
01D8  96 0B B1                               LOADSTRING                    dst=v[0x00B], values=[1]
01DB  96 11 B1                               LOADSTRING                    dst=v[0x011], values=[1]
01DE  96 13 B1                               LOADSTRING                    dst=v[0x013], values=[1]
01E1  15 24 03                               JMP                           target=0x0324
01E4  9A 19 EA F5 01                         STRCMP_NE_JMP                 start=v[0x019], values=[58], target=0x01F5
01E9  96 02 B1                               LOADSTRING                    dst=v[0x002], values=[1]
01EC  96 0C B1                               LOADSTRING                    dst=v[0x00C], values=[1]
01EF  96 12 B1                               LOADSTRING                    dst=v[0x012], values=[1]
01F2  15 24 03                               JMP                           target=0x0324
01F5  9A 19 EB 09 02                         STRCMP_NE_JMP                 start=v[0x019], values=[59], target=0x0209
01FA  96 01 B1                               LOADSTRING                    dst=v[0x001], values=[1]
01FD  96 07 B1                               LOADSTRING                    dst=v[0x007], values=[1]
0200  96 11 B1                               LOADSTRING                    dst=v[0x011], values=[1]
0203  96 15 B1                               LOADSTRING                    dst=v[0x015], values=[1]
0206  15 24 03                               JMP                           target=0x0324
0209  9A 19 EC 23 02                         STRCMP_NE_JMP                 start=v[0x019], values=[60], target=0x0223
020E  96 00 B1                               LOADSTRING                    dst=v[0x000], values=[1]
0211  96 02 B1                               LOADSTRING                    dst=v[0x002], values=[1]
0214  96 08 B1                               LOADSTRING                    dst=v[0x008], values=[1]
0217  96 12 B1                               LOADSTRING                    dst=v[0x012], values=[1]
021A  96 14 B1                               LOADSTRING                    dst=v[0x014], values=[1]
021D  96 16 B1                               LOADSTRING                    dst=v[0x016], values=[1]
0220  15 24 03                               JMP                           target=0x0324
0223  9A 19 ED 43 02                         STRCMP_NE_JMP                 start=v[0x019], values=[61], target=0x0243
0228  96 01 B1                               LOADSTRING                    dst=v[0x001], values=[1]
022B  96 03 B1                               LOADSTRING                    dst=v[0x003], values=[1]
022E  96 05 B1                               LOADSTRING                    dst=v[0x005], values=[1]
0231  96 09 B1                               LOADSTRING                    dst=v[0x009], values=[1]
0234  96 0F B1                               LOADSTRING                    dst=v[0x00F], values=[1]
0237  96 13 B1                               LOADSTRING                    dst=v[0x013], values=[1]
023A  96 15 B1                               LOADSTRING                    dst=v[0x015], values=[1]
023D  96 17 B1                               LOADSTRING                    dst=v[0x017], values=[1]
0240  15 24 03                               JMP                           target=0x0324
0243  9A 19 EE 5D 02                         STRCMP_NE_JMP                 start=v[0x019], values=[62], target=0x025D
0248  96 02 B1                               LOADSTRING                    dst=v[0x002], values=[1]
024B  96 04 B1                               LOADSTRING                    dst=v[0x004], values=[1]
024E  96 06 B1                               LOADSTRING                    dst=v[0x006], values=[1]
0251  96 10 B1                               LOADSTRING                    dst=v[0x010], values=[1]
0254  96 16 B1                               LOADSTRING                    dst=v[0x016], values=[1]
0257  96 18 B1                               LOADSTRING                    dst=v[0x018], values=[1]
025A  15 24 03                               JMP                           target=0x0324
025D  9A 19 EF 71 02                         STRCMP_NE_JMP                 start=v[0x019], values=[63], target=0x0271
0262  96 03 B1                               LOADSTRING                    dst=v[0x003], values=[1]
0265  96 07 B1                               LOADSTRING                    dst=v[0x007], values=[1]
0268  96 11 B1                               LOADSTRING                    dst=v[0x011], values=[1]
026B  96 17 B1                               LOADSTRING                    dst=v[0x017], values=[1]
026E  15 24 03                               JMP                           target=0x0324
0271  9A 19 F0 82 02                         STRCMP_NE_JMP                 start=v[0x019], values=[64], target=0x0282
0276  96 06 B1                               LOADSTRING                    dst=v[0x006], values=[1]
0279  96 0C B1                               LOADSTRING                    dst=v[0x00C], values=[1]
027C  96 16 B1                               LOADSTRING                    dst=v[0x016], values=[1]
027F  15 24 03                               JMP                           target=0x0324
0282  9A 19 F1 96 02                         STRCMP_NE_JMP                 start=v[0x019], values=[65], target=0x0296
0287  96 05 B1                               LOADSTRING                    dst=v[0x005], values=[1]
028A  96 07 B1                               LOADSTRING                    dst=v[0x007], values=[1]
028D  96 0D B1                               LOADSTRING                    dst=v[0x00D], values=[1]
0290  96 17 B1                               LOADSTRING                    dst=v[0x017], values=[1]
0293  15 24 03                               JMP                           target=0x0324
0296  9A 19 F2 B0 02                         STRCMP_NE_JMP                 start=v[0x019], values=[66], target=0x02B0
029B  96 06 B1                               LOADSTRING                    dst=v[0x006], values=[1]
029E  96 08 B1                               LOADSTRING                    dst=v[0x008], values=[1]
02A1  96 0A B1                               LOADSTRING                    dst=v[0x00A], values=[1]
02A4  96 0E B1                               LOADSTRING                    dst=v[0x00E], values=[1]
02A7  96 14 B1                               LOADSTRING                    dst=v[0x014], values=[1]
02AA  96 18 B1                               LOADSTRING                    dst=v[0x018], values=[1]
02AD  15 24 03                               JMP                           target=0x0324
02B0  9A 19 F3 C4 02                         STRCMP_NE_JMP                 start=v[0x019], values=[67], target=0x02C4
02B5  96 07 B1                               LOADSTRING                    dst=v[0x007], values=[1]
02B8  96 09 B1                               LOADSTRING                    dst=v[0x009], values=[1]
02BB  96 0B B1                               LOADSTRING                    dst=v[0x00B], values=[1]
02BE  96 15 B1                               LOADSTRING                    dst=v[0x015], values=[1]
02C1  15 24 03                               JMP                           target=0x0324
02C4  9A 19 F4 D5 02                         STRCMP_NE_JMP                 start=v[0x019], values=[68], target=0x02D5
02C9  96 08 B1                               LOADSTRING                    dst=v[0x008], values=[1]
02CC  96 0C B1                               LOADSTRING                    dst=v[0x00C], values=[1]
02CF  96 16 B1                               LOADSTRING                    dst=v[0x016], values=[1]
02D2  15 24 03                               JMP                           target=0x0324
02D5  9A 19 F5 E3 02                         STRCMP_NE_JMP                 start=v[0x019], values=[69], target=0x02E3
02DA  96 0B B1                               LOADSTRING                    dst=v[0x00B], values=[1]
02DD  96 11 B1                               LOADSTRING                    dst=v[0x011], values=[1]
02E0  15 24 03                               JMP                           target=0x0324
02E3  9A 19 F6 F4 02                         STRCMP_NE_JMP                 start=v[0x019], values=[70], target=0x02F4
02E8  96 0A B1                               LOADSTRING                    dst=v[0x00A], values=[1]
02EB  96 0C B1                               LOADSTRING                    dst=v[0x00C], values=[1]
02EE  96 12 B1                               LOADSTRING                    dst=v[0x012], values=[1]
02F1  15 24 03                               JMP                           target=0x0324
02F4  9A 19 F7 08 03                         STRCMP_NE_JMP                 start=v[0x019], values=[71], target=0x0308
02F9  96 0B B1                               LOADSTRING                    dst=v[0x00B], values=[1]
02FC  96 0D B1                               LOADSTRING                    dst=v[0x00D], values=[1]
02FF  96 0F B1                               LOADSTRING                    dst=v[0x00F], values=[1]
0302  96 13 B1                               LOADSTRING                    dst=v[0x013], values=[1]
0305  15 24 03                               JMP                           target=0x0324
0308  9A 19 F8 19 03                         STRCMP_NE_JMP                 start=v[0x019], values=[72], target=0x0319
030D  96 0C B1                               LOADSTRING                    dst=v[0x00C], values=[1]
0310  96 0E B1                               LOADSTRING                    dst=v[0x00E], values=[1]
0313  96 10 B1                               LOADSTRING                    dst=v[0x010], values=[1]
0316  15 24 03                               JMP                           target=0x0324
0319  9A 19 F9 24 03                         STRCMP_NE_JMP                 start=v[0x019], values=[73], target=0x0324
031E  96 11 B1                               LOADSTRING                    dst=v[0x011], values=[1]
0321  96 0D B1                               LOADSTRING                    dst=v[0x00D], values=[1]
0324  22                                     COPY_BG_TO_FG
0325  0B                                     INPUTLOOPSTART
0326  9A 00 B1 37 03                         STRCMP_NE_JMP                 start=v[0x000], values=[1], target=0x0337
032B  0D AA 00 29 01 DD 00 62 01 D7 05 09    HOTSPOT_RECT                  left=0x00AA, top=0x0129, right=0x00DD, bottom=0x0162, target=0x05D7, cursor=0x09
0337  9A 01 B1 48 03                         STRCMP_NE_JMP                 start=v[0x001], values=[1], target=0x0348
033C  0D EA 00 29 01 25 01 63 01 FA 05 0A    HOTSPOT_RECT                  left=0x00EA, top=0x0129, right=0x0125, bottom=0x0163, target=0x05FA, cursor=0x0A
0348  9A 02 B1 59 03                         STRCMP_NE_JMP                 start=v[0x002], values=[1], target=0x0359
034D  0D 2A 01 29 01 66 01 62 01 1D 06 09    HOTSPOT_RECT                  left=0x012A, top=0x0129, right=0x0166, bottom=0x0162, target=0x061D, cursor=0x09
0359  9A 03 B1 6A 03                         STRCMP_NE_JMP                 start=v[0x003], values=[1], target=0x036A
035E  0D 6E 01 2A 01 A6 01 63 01 40 06 0A    HOTSPOT_RECT                  left=0x016E, top=0x012A, right=0x01A6, bottom=0x0163, target=0x0640, cursor=0x0A
036A  9A 04 B1 7B 03                         STRCMP_NE_JMP                 start=v[0x004], values=[1], target=0x037B
036F  0D B3 01 2A 01 EC 01 62 01 63 06 09    HOTSPOT_RECT                  left=0x01B3, top=0x012A, right=0x01EC, bottom=0x0162, target=0x0663, cursor=0x09
037B  9A 05 B1 8C 03                         STRCMP_NE_JMP                 start=v[0x005], values=[1], target=0x038C
0380  0D AF 00 F8 00 E8 00 26 01 86 06 09    HOTSPOT_RECT                  left=0x00AF, top=0x00F8, right=0x00E8, bottom=0x0126, target=0x0686, cursor=0x09
038C  9A 06 B1 9D 03                         STRCMP_NE_JMP                 start=v[0x006], values=[1], target=0x039D
0391  0D F3 00 F8 00 25 01 26 01 A9 06 0A    HOTSPOT_RECT                  left=0x00F3, top=0x00F8, right=0x0125, bottom=0x0126, target=0x06A9, cursor=0x0A
039D  9A 07 B1 AE 03                         STRCMP_NE_JMP                 start=v[0x007], values=[1], target=0x03AE
03A2  0D 2C 01 F8 00 63 01 26 01 CC 06 09    HOTSPOT_RECT                  left=0x012C, top=0x00F8, right=0x0163, bottom=0x0126, target=0x06CC, cursor=0x09
03AE  9A 08 B1 BF 03                         STRCMP_NE_JMP                 start=v[0x008], values=[1], target=0x03BF
03B3  0D 69 01 F7 00 9C 01 26 01 EF 06 09    HOTSPOT_RECT                  left=0x0169, top=0x00F7, right=0x019C, bottom=0x0126, target=0x06EF, cursor=0x09
03BF  9A 09 B1 D0 03                         STRCMP_NE_JMP                 start=v[0x009], values=[1], target=0x03D0
03C4  0D A7 01 F8 00 DA 01 27 01 12 07 0A    HOTSPOT_RECT                  left=0x01A7, top=0x00F8, right=0x01DA, bottom=0x0127, target=0x0712, cursor=0x0A
03D0  9A 0A B1 E1 03                         STRCMP_NE_JMP                 start=v[0x00A], values=[1], target=0x03E1
03D5  0D C3 00 CE 00 F0 00 F5 00 35 07 09    HOTSPOT_RECT                  left=0x00C3, top=0x00CE, right=0x00F0, bottom=0x00F5, target=0x0735, cursor=0x09
03E1  9A 0B B1 F2 03                         STRCMP_NE_JMP                 start=v[0x00B], values=[1], target=0x03F2
03E6  0D FA 00 CE 00 29 01 F5 00 58 07 09    HOTSPOT_RECT                  left=0x00FA, top=0x00CE, right=0x0129, bottom=0x00F5, target=0x0758, cursor=0x09
03F2  9A 0C B1 03 04                         STRCMP_NE_JMP                 start=v[0x00C], values=[1], target=0x0403
03F7  0D 2E 01 CD 00 60 01 F4 00 7B 07 0A    HOTSPOT_RECT                  left=0x012E, top=0x00CD, right=0x0160, bottom=0x00F4, target=0x077B, cursor=0x0A
0403  9A 0D B1 14 04                         STRCMP_NE_JMP                 start=v[0x00D], values=[1], target=0x0414
0408  0D 65 01 CD 00 96 01 F6 00 9E 07 09    HOTSPOT_RECT                  left=0x0165, top=0x00CD, right=0x0196, bottom=0x00F6, target=0x079E, cursor=0x09
0414  9A 0E B1 25 04                         STRCMP_NE_JMP                 start=v[0x00E], values=[1], target=0x0425
0419  0D 9E 01 CD 00 CE 01 F5 00 C1 07 09    HOTSPOT_RECT                  left=0x019E, top=0x00CD, right=0x01CE, bottom=0x00F5, target=0x07C1, cursor=0x09
0425  9A 0F B1 36 04                         STRCMP_NE_JMP                 start=v[0x00F], values=[1], target=0x0436
042A  0D CE 00 AB 00 F7 00 CC 00 E4 07 0A    HOTSPOT_RECT                  left=0x00CE, top=0x00AB, right=0x00F7, bottom=0x00CC, target=0x07E4, cursor=0x0A
0436  9A 10 B1 47 04                         STRCMP_NE_JMP                 start=v[0x010], values=[1], target=0x0447
043B  0D FF 00 AB 00 29 01 CC 00 07 08 09    HOTSPOT_RECT                  left=0x00FF, top=0x00AB, right=0x0129, bottom=0x00CC, target=0x0807, cursor=0x09
0447  9A 11 B1 58 04                         STRCMP_NE_JMP                 start=v[0x011], values=[1], target=0x0458
044C  0D 31 01 AC 00 5D 01 CC 00 2A 08 09    HOTSPOT_RECT                  left=0x0131, top=0x00AC, right=0x015D, bottom=0x00CC, target=0x082A, cursor=0x09
0458  9A 12 B1 69 04                         STRCMP_NE_JMP                 start=v[0x012], values=[1], target=0x0469
045D  0D 62 01 AA 00 8E 01 CB 00 4D 08 0A    HOTSPOT_RECT                  left=0x0162, top=0x00AA, right=0x018E, bottom=0x00CB, target=0x084D, cursor=0x0A
0469  9A 13 B1 7A 04                         STRCMP_NE_JMP                 start=v[0x013], values=[1], target=0x047A
046E  0D 95 01 AA 00 BF 01 CB 00 70 08 09    HOTSPOT_RECT                  left=0x0195, top=0x00AA, right=0x01BF, bottom=0x00CB, target=0x0870, cursor=0x09
047A  9A 14 B1 8B 04                         STRCMP_NE_JMP                 start=v[0x014], values=[1], target=0x048B
047F  0D D6 00 8D 00 FE 00 AA 00 93 08 09    HOTSPOT_RECT                  left=0x00D6, top=0x008D, right=0x00FE, bottom=0x00AA, target=0x0893, cursor=0x09
048B  9A 15 B1 9C 04                         STRCMP_NE_JMP                 start=v[0x015], values=[1], target=0x049C
0490  0D 05 01 8D 00 2C 01 A8 00 B6 08 0A    HOTSPOT_RECT                  left=0x0105, top=0x008D, right=0x012C, bottom=0x00A8, target=0x08B6, cursor=0x0A
049C  9A 16 B1 AD 04                         STRCMP_NE_JMP                 start=v[0x016], values=[1], target=0x04AD
04A1  0D 32 01 8E 00 5B 01 A9 00 D9 08 09    HOTSPOT_RECT                  left=0x0132, top=0x008E, right=0x015B, bottom=0x00A9, target=0x08D9, cursor=0x09
04AD  9A 17 B1 BE 04                         STRCMP_NE_JMP                 start=v[0x017], values=[1], target=0x04BE
04B2  0D 5F 01 8D 00 8A 01 A9 00 FC 08 0A    HOTSPOT_RECT                  left=0x015F, top=0x008D, right=0x018A, bottom=0x00A9, target=0x08FC, cursor=0x0A
04BE  9A 18 B1 CF 04                         STRCMP_NE_JMP                 start=v[0x018], values=[1], target=0x04CF
04C3  0D 8E 01 8D 00 B9 01 AA 00 1F 09 09    HOTSPOT_RECT                  left=0x018E, top=0x008D, right=0x01B9, bottom=0x00AA, target=0x091F, cursor=0x09
04CF  13                                     INPUTLOOPEND
04D0  1C 01 04                               VIDEO_TRANSITION_REF          ref=0x0401 (B[1]=b1_2b.vdx)
04D3  18 42 09                               CALL                          target=0x0942
04D6  43 00                                  RETURNSCRIPT                  value=0x00
04D8  43 01                                  RETURNSCRIPT                  value=0x01
04DA  07                                     VIDEOFLAG7_ON
04DB  46                                     RESOURCE_CONTEXT_SAVE
04DC  09 8B 50                               VIDEOREF                      ref=0x508B (GAMWAV[139]=gen_e_5.vdx)
04DF  47                                     RESOURCE_CONTEXT_RESTORE
04E0  1C 01 04                               VIDEO_TRANSITION_REF          ref=0x0401 (B[1]=b1_2b.vdx)
04E3  18 42 09                               CALL                          target=0x0942
04E6  15 00 00                               JMP                           target=0x0000
04E9  96 EC E1                               LOADSTRING                    dst=v[0x0EC], values=[49]
04EC  1C 01 04                               VIDEO_TRANSITION_REF          ref=0x0401 (B[1]=b1_2b.vdx)
04EF  18 42 09                               CALL                          target=0x0942
04F2  43 00                                  RETURNSCRIPT                  value=0x00
04F4  9A 1A F3 FD 04                         STRCMP_NE_JMP                 start=v[0x01A], values=[67], target=0x04FD
04F9  A4 1A 19 00                            MOV                           dst=v[0x01A], src=0x0019
04FD  9A 1B F3 06 05                         STRCMP_NE_JMP                 start=v[0x01B], values=[67], target=0x0506
0502  A4 1B 19 00                            MOV                           dst=v[0x01B], src=0x0019
0506  9A 1C F3 0F 05                         STRCMP_NE_JMP                 start=v[0x01C], values=[67], target=0x050F
050B  A4 1C 19 00                            MOV                           dst=v[0x01C], src=0x0019
050F  9A 1D F3 18 05                         STRCMP_NE_JMP                 start=v[0x01D], values=[67], target=0x0518
0514  A4 1D 19 00                            MOV                           dst=v[0x01D], src=0x0019
0518  9A 1E F3 21 05                         STRCMP_NE_JMP                 start=v[0x01E], values=[67], target=0x0521
051D  A4 1E 19 00                            MOV                           dst=v[0x01E], src=0x0019
0521  9A 1F F3 2A 05                         STRCMP_NE_JMP                 start=v[0x01F], values=[67], target=0x052A
0526  A4 1F 19 00                            MOV                           dst=v[0x01F], src=0x0019
052A  9A 20 F3 33 05                         STRCMP_NE_JMP                 start=v[0x020], values=[67], target=0x0533
052F  A4 20 19 00                            MOV                           dst=v[0x020], src=0x0019
0533  9A 21 F3 3C 05                         STRCMP_NE_JMP                 start=v[0x021], values=[67], target=0x053C
0538  A4 21 19 00                            MOV                           dst=v[0x021], src=0x0019
053C  9A 22 F3 45 05                         STRCMP_NE_JMP                 start=v[0x022], values=[67], target=0x0545
0541  A4 22 19 00                            MOV                           dst=v[0x022], src=0x0019
0545  9A 23 F3 4E 05                         STRCMP_NE_JMP                 start=v[0x023], values=[67], target=0x054E
054A  A4 23 19 00                            MOV                           dst=v[0x023], src=0x0019
054E  9A 24 F3 57 05                         STRCMP_NE_JMP                 start=v[0x024], values=[67], target=0x0557
0553  A4 24 19 00                            MOV                           dst=v[0x024], src=0x0019
0557  9A 25 F3 60 05                         STRCMP_NE_JMP                 start=v[0x025], values=[67], target=0x0560
055C  A4 25 19 00                            MOV                           dst=v[0x025], src=0x0019
0560  9A 26 F3 69 05                         STRCMP_NE_JMP                 start=v[0x026], values=[67], target=0x0569
0565  A4 26 19 00                            MOV                           dst=v[0x026], src=0x0019
0569  9A 27 F3 72 05                         STRCMP_NE_JMP                 start=v[0x027], values=[67], target=0x0572
056E  A4 27 19 00                            MOV                           dst=v[0x027], src=0x0019
0572  9A 28 F3 7B 05                         STRCMP_NE_JMP                 start=v[0x028], values=[67], target=0x057B
0577  A4 28 19 00                            MOV                           dst=v[0x028], src=0x0019
057B  9A 29 F3 84 05                         STRCMP_NE_JMP                 start=v[0x029], values=[67], target=0x0584
0580  A4 29 19 00                            MOV                           dst=v[0x029], src=0x0019
0584  9A 2A F3 8D 05                         STRCMP_NE_JMP                 start=v[0x02A], values=[67], target=0x058D
0589  A4 2A 19 00                            MOV                           dst=v[0x02A], src=0x0019
058D  9A 2B F3 96 05                         STRCMP_NE_JMP                 start=v[0x02B], values=[67], target=0x0596
0592  A4 2B 19 00                            MOV                           dst=v[0x02B], src=0x0019
0596  9A 2C F3 9F 05                         STRCMP_NE_JMP                 start=v[0x02C], values=[67], target=0x059F
059B  A4 2C 19 00                            MOV                           dst=v[0x02C], src=0x0019
059F  9A 2D F3 A8 05                         STRCMP_NE_JMP                 start=v[0x02D], values=[67], target=0x05A8
05A4  A4 2D 19 00                            MOV                           dst=v[0x02D], src=0x0019
05A8  9A 2E F3 B1 05                         STRCMP_NE_JMP                 start=v[0x02E], values=[67], target=0x05B1
05AD  A4 2E 19 00                            MOV                           dst=v[0x02E], src=0x0019
05B1  9A 2F F3 BA 05                         STRCMP_NE_JMP                 start=v[0x02F], values=[67], target=0x05BA
05B6  A4 2F 19 00                            MOV                           dst=v[0x02F], src=0x0019
05BA  9A 30 F3 C3 05                         STRCMP_NE_JMP                 start=v[0x030], values=[67], target=0x05C3
05BF  A4 30 19 00                            MOV                           dst=v[0x030], src=0x0019
05C3  9A 31 F3 CC 05                         STRCMP_NE_JMP                 start=v[0x031], values=[67], target=0x05CC
05C8  A4 31 19 00                            MOV                           dst=v[0x031], src=0x0019
05CC  9A 32 F3 D5 05                         STRCMP_NE_JMP                 start=v[0x032], values=[67], target=0x05D5
05D1  A4 32 19 00                            MOV                           dst=v[0x032], src=0x0019
05D5  17 00                                  RET                           value=0x00
05D7  1C 0F 04                               VIDEO_TRANSITION_REF          ref=0x040F (B[15]=bsten_01.vdx)
05DA  26 7C 30 31 61 66 00                   VIDEO_NAME                    name="{grid:0,1}af"
05E1  07                                     VIDEOFLAG7_ON
05E2  26 7C 30 31 23 7A 62 00                VIDEO_NAME                    name="{grid:0,1}{v019}b"
05EA  A4 19 1A 00                            MOV                           dst=v[0x019], src=0x001A
05EE  18 F4 04                               CALL                          target=0x04F4
05F1  96 1A F3                               LOADSTRING                    dst=v[0x01A], values=[67]
05F4  96 19 E1                               LOADSTRING                    dst=v[0x019], values=[49]
05F7  15 60 00                               JMP                           target=0x0060
05FA  1C 10 04                               VIDEO_TRANSITION_REF          ref=0x0410 (B[16]=bsten_02.vdx)
05FD  26 7C 30 32 62 66 00                   VIDEO_NAME                    name="{grid:0,2}bf"
0604  07                                     VIDEOFLAG7_ON
0605  26 7C 30 32 23 7A 62 00                VIDEO_NAME                    name="{grid:0,2}{v019}b"
060D  A4 19 1B 00                            MOV                           dst=v[0x019], src=0x001B
0611  18 F4 04                               CALL                          target=0x04F4
0614  96 1B F3                               LOADSTRING                    dst=v[0x01B], values=[67]
0617  96 19 E2                               LOADSTRING                    dst=v[0x019], values=[50]
061A  15 60 00                               JMP                           target=0x0060
061D  1C 11 04                               VIDEO_TRANSITION_REF          ref=0x0411 (B[17]=bsten_03.vdx)
0620  26 7C 30 33 63 66 00                   VIDEO_NAME                    name="{grid:0,3}cf"
0627  07                                     VIDEOFLAG7_ON
0628  26 7C 30 33 23 7A 62 00                VIDEO_NAME                    name="{grid:0,3}{v019}b"
0630  A4 19 1C 00                            MOV                           dst=v[0x019], src=0x001C
0634  18 F4 04                               CALL                          target=0x04F4
0637  96 1C F3                               LOADSTRING                    dst=v[0x01C], values=[67]
063A  96 19 E3                               LOADSTRING                    dst=v[0x019], values=[51]
063D  15 60 00                               JMP                           target=0x0060
0640  1C 12 04                               VIDEO_TRANSITION_REF          ref=0x0412 (B[18]=bsten_04.vdx)
0643  26 7C 30 34 64 66 00                   VIDEO_NAME                    name="{grid:0,4}df"
064A  07                                     VIDEOFLAG7_ON
064B  26 7C 30 34 23 7A 62 00                VIDEO_NAME                    name="{grid:0,4}{v019}b"
0653  A4 19 1D 00                            MOV                           dst=v[0x019], src=0x001D
0657  18 F4 04                               CALL                          target=0x04F4
065A  96 1D F3                               LOADSTRING                    dst=v[0x01D], values=[67]
065D  96 19 E4                               LOADSTRING                    dst=v[0x019], values=[52]
0660  15 60 00                               JMP                           target=0x0060
0663  1C 13 04                               VIDEO_TRANSITION_REF          ref=0x0413 (B[19]=bsten_05.vdx)
0666  26 7C 30 35 65 66 00                   VIDEO_NAME                    name="{grid:0,5}ef"
066D  07                                     VIDEOFLAG7_ON
066E  26 7C 30 35 23 7A 62 00                VIDEO_NAME                    name="{grid:0,5}{v019}b"
0676  A4 19 1E 00                            MOV                           dst=v[0x019], src=0x001E
067A  18 F4 04                               CALL                          target=0x04F4
067D  96 1E F3                               LOADSTRING                    dst=v[0x01E], values=[67]
0680  96 19 E5                               LOADSTRING                    dst=v[0x019], values=[53]
0683  15 60 00                               JMP                           target=0x0060
0686  1C 14 04                               VIDEO_TRANSITION_REF          ref=0x0414 (B[20]=bsten_06.vdx)
0689  26 7C 30 36 66 66 00                   VIDEO_NAME                    name="{grid:0,6}ff"
0690  07                                     VIDEOFLAG7_ON
0691  26 7C 30 36 23 7A 62 00                VIDEO_NAME                    name="{grid:0,6}{v019}b"
0699  A4 19 1F 00                            MOV                           dst=v[0x019], src=0x001F
069D  18 F4 04                               CALL                          target=0x04F4
06A0  96 1F F3                               LOADSTRING                    dst=v[0x01F], values=[67]
06A3  96 19 E6                               LOADSTRING                    dst=v[0x019], values=[54]
06A6  15 60 00                               JMP                           target=0x0060
06A9  1C 15 04                               VIDEO_TRANSITION_REF          ref=0x0415 (B[21]=bsten_07.vdx)
06AC  26 7C 30 37 67 66 00                   VIDEO_NAME                    name="{grid:0,7}gf"
06B3  07                                     VIDEOFLAG7_ON
06B4  26 7C 30 37 23 7A 62 00                VIDEO_NAME                    name="{grid:0,7}{v019}b"
06BC  A4 19 20 00                            MOV                           dst=v[0x019], src=0x0020
06C0  18 F4 04                               CALL                          target=0x04F4
06C3  96 20 F3                               LOADSTRING                    dst=v[0x020], values=[67]
06C6  96 19 E7                               LOADSTRING                    dst=v[0x019], values=[55]
06C9  15 60 00                               JMP                           target=0x0060
06CC  1C 16 04                               VIDEO_TRANSITION_REF          ref=0x0416 (B[22]=bsten_08.vdx)
06CF  26 7C 30 38 68 66 00                   VIDEO_NAME                    name="{grid:0,8}hf"
06D6  07                                     VIDEOFLAG7_ON
06D7  26 7C 30 38 23 7A 62 00                VIDEO_NAME                    name="{grid:0,8}{v019}b"
06DF  A4 19 21 00                            MOV                           dst=v[0x019], src=0x0021
06E3  18 F4 04                               CALL                          target=0x04F4
06E6  96 21 F3                               LOADSTRING                    dst=v[0x021], values=[67]
06E9  96 19 E8                               LOADSTRING                    dst=v[0x019], values=[56]
06EC  15 60 00                               JMP                           target=0x0060
06EF  1C 17 04                               VIDEO_TRANSITION_REF          ref=0x0417 (B[23]=bsten_09.vdx)
06F2  26 7C 30 39 69 66 00                   VIDEO_NAME                    name="{grid:0,9}if"
06F9  07                                     VIDEOFLAG7_ON
06FA  26 7C 30 39 23 7A 62 00                VIDEO_NAME                    name="{grid:0,9}{v019}b"
0702  A4 19 22 00                            MOV                           dst=v[0x019], src=0x0022
0706  18 F4 04                               CALL                          target=0x04F4
0709  96 22 F3                               LOADSTRING                    dst=v[0x022], values=[67]
070C  96 19 E9                               LOADSTRING                    dst=v[0x019], values=[57]
070F  15 60 00                               JMP                           target=0x0060
0712  1C 18 04                               VIDEO_TRANSITION_REF          ref=0x0418 (B[24]=bsten_10.vdx)
0715  26 7C 31 30 6A 66 00                   VIDEO_NAME                    name="{grid:1,0}jf"
071C  07                                     VIDEOFLAG7_ON
071D  26 7C 31 30 23 7A 62 00                VIDEO_NAME                    name="{grid:1,0}{v019}b"
0725  A4 19 23 00                            MOV                           dst=v[0x019], src=0x0023
0729  18 F4 04                               CALL                          target=0x04F4
072C  96 23 F3                               LOADSTRING                    dst=v[0x023], values=[67]
072F  96 19 EA                               LOADSTRING                    dst=v[0x019], values=[58]
0732  15 60 00                               JMP                           target=0x0060
0735  1C 19 04                               VIDEO_TRANSITION_REF          ref=0x0419 (B[25]=bsten_11.vdx)
0738  26 7C 31 31 6B 66 00                   VIDEO_NAME                    name="{grid:1,1}kf"
073F  07                                     VIDEOFLAG7_ON
0740  26 7C 31 31 23 7A 62 00                VIDEO_NAME                    name="{grid:1,1}{v019}b"
0748  A4 19 24 00                            MOV                           dst=v[0x019], src=0x0024
074C  18 F4 04                               CALL                          target=0x04F4
074F  96 24 F3                               LOADSTRING                    dst=v[0x024], values=[67]
0752  96 19 EB                               LOADSTRING                    dst=v[0x019], values=[59]
0755  15 60 00                               JMP                           target=0x0060
0758  1C 1A 04                               VIDEO_TRANSITION_REF          ref=0x041A (B[26]=bsten_12.vdx)
075B  26 7C 31 32 6C 66 00                   VIDEO_NAME                    name="{grid:1,2}lf"
0762  07                                     VIDEOFLAG7_ON
0763  26 7C 31 32 23 7A 62 00                VIDEO_NAME                    name="{grid:1,2}{v019}b"
076B  A4 19 25 00                            MOV                           dst=v[0x019], src=0x0025
076F  18 F4 04                               CALL                          target=0x04F4
0772  96 25 F3                               LOADSTRING                    dst=v[0x025], values=[67]
0775  96 19 EC                               LOADSTRING                    dst=v[0x019], values=[60]
0778  15 60 00                               JMP                           target=0x0060
077B  1C 1B 04                               VIDEO_TRANSITION_REF          ref=0x041B (B[27]=bsten_13.vdx)
077E  26 7C 31 33 6D 66 00                   VIDEO_NAME                    name="{grid:1,3}mf"
0785  07                                     VIDEOFLAG7_ON
0786  26 7C 31 33 23 7A 62 00                VIDEO_NAME                    name="{grid:1,3}{v019}b"
078E  A4 19 26 00                            MOV                           dst=v[0x019], src=0x0026
0792  18 F4 04                               CALL                          target=0x04F4
0795  96 26 F3                               LOADSTRING                    dst=v[0x026], values=[67]
0798  96 19 ED                               LOADSTRING                    dst=v[0x019], values=[61]
079B  15 60 00                               JMP                           target=0x0060
079E  1C 1C 04                               VIDEO_TRANSITION_REF          ref=0x041C (B[28]=bsten_14.vdx)
07A1  26 7C 31 34 6E 66 00                   VIDEO_NAME                    name="{grid:1,4}nf"
07A8  07                                     VIDEOFLAG7_ON
07A9  26 7C 31 34 23 7A 62 00                VIDEO_NAME                    name="{grid:1,4}{v019}b"
07B1  A4 19 27 00                            MOV                           dst=v[0x019], src=0x0027
07B5  18 F4 04                               CALL                          target=0x04F4
07B8  96 27 F3                               LOADSTRING                    dst=v[0x027], values=[67]
07BB  96 19 EE                               LOADSTRING                    dst=v[0x019], values=[62]
07BE  15 60 00                               JMP                           target=0x0060
07C1  1C 1D 04                               VIDEO_TRANSITION_REF          ref=0x041D (B[29]=bsten_15.vdx)
07C4  26 7C 31 35 6F 66 00                   VIDEO_NAME                    name="{grid:1,5}of"
07CB  07                                     VIDEOFLAG7_ON
07CC  26 7C 31 35 23 7A 62 00                VIDEO_NAME                    name="{grid:1,5}{v019}b"
07D4  A4 19 28 00                            MOV                           dst=v[0x019], src=0x0028
07D8  18 F4 04                               CALL                          target=0x04F4
07DB  96 28 F3                               LOADSTRING                    dst=v[0x028], values=[67]
07DE  96 19 EF                               LOADSTRING                    dst=v[0x019], values=[63]
07E1  15 60 00                               JMP                           target=0x0060
07E4  1C 1E 04                               VIDEO_TRANSITION_REF          ref=0x041E (B[30]=bsten_16.vdx)
07E7  26 7C 31 36 70 66 00                   VIDEO_NAME                    name="{grid:1,6}pf"
07EE  07                                     VIDEOFLAG7_ON
07EF  26 7C 31 36 23 7A 62 00                VIDEO_NAME                    name="{grid:1,6}{v019}b"
07F7  A4 19 29 00                            MOV                           dst=v[0x019], src=0x0029
07FB  18 F4 04                               CALL                          target=0x04F4
07FE  96 29 F3                               LOADSTRING                    dst=v[0x029], values=[67]
0801  96 19 F0                               LOADSTRING                    dst=v[0x019], values=[64]
0804  15 60 00                               JMP                           target=0x0060
0807  1C 1F 04                               VIDEO_TRANSITION_REF          ref=0x041F (B[31]=bsten_17.vdx)
080A  26 7C 31 37 71 66 00                   VIDEO_NAME                    name="{grid:1,7}qf"
0811  07                                     VIDEOFLAG7_ON
0812  26 7C 31 37 23 7A 62 00                VIDEO_NAME                    name="{grid:1,7}{v019}b"
081A  A4 19 2A 00                            MOV                           dst=v[0x019], src=0x002A
081E  18 F4 04                               CALL                          target=0x04F4
0821  96 2A F3                               LOADSTRING                    dst=v[0x02A], values=[67]
0824  96 19 F1                               LOADSTRING                    dst=v[0x019], values=[65]
0827  15 60 00                               JMP                           target=0x0060
082A  1C 20 04                               VIDEO_TRANSITION_REF          ref=0x0420 (B[32]=bsten_18.vdx)
082D  26 7C 31 38 72 66 00                   VIDEO_NAME                    name="{grid:1,8}rf"
0834  07                                     VIDEOFLAG7_ON
0835  26 7C 31 38 23 7A 62 00                VIDEO_NAME                    name="{grid:1,8}{v019}b"
083D  A4 19 2B 00                            MOV                           dst=v[0x019], src=0x002B
0841  18 F4 04                               CALL                          target=0x04F4
0844  96 2B F3                               LOADSTRING                    dst=v[0x02B], values=[67]
0847  96 19 F2                               LOADSTRING                    dst=v[0x019], values=[66]
084A  15 60 00                               JMP                           target=0x0060
084D  1C 21 04                               VIDEO_TRANSITION_REF          ref=0x0421 (B[33]=bsten_19.vdx)
0850  26 7C 31 39 73 66 00                   VIDEO_NAME                    name="{grid:1,9}sf"
0857  07                                     VIDEOFLAG7_ON
0858  26 7C 31 39 23 7A 62 00                VIDEO_NAME                    name="{grid:1,9}{v019}b"
0860  A4 19 2C 00                            MOV                           dst=v[0x019], src=0x002C
0864  18 F4 04                               CALL                          target=0x04F4
0867  96 2C F3                               LOADSTRING                    dst=v[0x02C], values=[67]
086A  96 19 F3                               LOADSTRING                    dst=v[0x019], values=[67]
086D  15 60 00                               JMP                           target=0x0060
0870  1C 22 04                               VIDEO_TRANSITION_REF          ref=0x0422 (B[34]=bsten_20.vdx)
0873  26 7C 32 30 74 66 00                   VIDEO_NAME                    name="{grid:2,0}tf"
087A  07                                     VIDEOFLAG7_ON
087B  26 7C 32 30 23 7A 62 00                VIDEO_NAME                    name="{grid:2,0}{v019}b"
0883  A4 19 2D 00                            MOV                           dst=v[0x019], src=0x002D
0887  18 F4 04                               CALL                          target=0x04F4
088A  96 2D F3                               LOADSTRING                    dst=v[0x02D], values=[67]
088D  96 19 F4                               LOADSTRING                    dst=v[0x019], values=[68]
0890  15 60 00                               JMP                           target=0x0060
0893  1C 23 04                               VIDEO_TRANSITION_REF          ref=0x0423 (B[35]=bsten_21.vdx)
0896  26 7C 32 31 75 66 00                   VIDEO_NAME                    name="{grid:2,1}uf"
089D  07                                     VIDEOFLAG7_ON
089E  26 7C 32 31 23 7A 62 00                VIDEO_NAME                    name="{grid:2,1}{v019}b"
08A6  A4 19 2E 00                            MOV                           dst=v[0x019], src=0x002E
08AA  18 F4 04                               CALL                          target=0x04F4
08AD  96 2E F3                               LOADSTRING                    dst=v[0x02E], values=[67]
08B0  96 19 F5                               LOADSTRING                    dst=v[0x019], values=[69]
08B3  15 60 00                               JMP                           target=0x0060
08B6  1C 24 04                               VIDEO_TRANSITION_REF          ref=0x0424 (B[36]=bsten_22.vdx)
08B9  26 7C 32 32 76 66 00                   VIDEO_NAME                    name="{grid:2,2}vf"
08C0  07                                     VIDEOFLAG7_ON
08C1  26 7C 32 32 23 7A 62 00                VIDEO_NAME                    name="{grid:2,2}{v019}b"
08C9  A4 19 2F 00                            MOV                           dst=v[0x019], src=0x002F
08CD  18 F4 04                               CALL                          target=0x04F4
08D0  96 2F F3                               LOADSTRING                    dst=v[0x02F], values=[67]
08D3  96 19 F6                               LOADSTRING                    dst=v[0x019], values=[70]
08D6  15 60 00                               JMP                           target=0x0060
08D9  1C 25 04                               VIDEO_TRANSITION_REF          ref=0x0425 (B[37]=bsten_23.vdx)
08DC  26 7C 32 33 77 66 00                   VIDEO_NAME                    name="{grid:2,3}wf"
08E3  07                                     VIDEOFLAG7_ON
08E4  26 7C 32 33 23 7A 62 00                VIDEO_NAME                    name="{grid:2,3}{v019}b"
08EC  A4 19 30 00                            MOV                           dst=v[0x019], src=0x0030
08F0  18 F4 04                               CALL                          target=0x04F4
08F3  96 30 F3                               LOADSTRING                    dst=v[0x030], values=[67]
08F6  96 19 F7                               LOADSTRING                    dst=v[0x019], values=[71]
08F9  15 60 00                               JMP                           target=0x0060
08FC  1C 26 04                               VIDEO_TRANSITION_REF          ref=0x0426 (B[38]=bsten_24.vdx)
08FF  26 7C 32 34 78 66 00                   VIDEO_NAME                    name="{grid:2,4}xf"
0906  07                                     VIDEOFLAG7_ON
0907  26 7C 32 34 23 7A 62 00                VIDEO_NAME                    name="{grid:2,4}{v019}b"
090F  A4 19 31 00                            MOV                           dst=v[0x019], src=0x0031
0913  18 F4 04                               CALL                          target=0x04F4
0916  96 31 F3                               LOADSTRING                    dst=v[0x031], values=[67]
0919  96 19 F8                               LOADSTRING                    dst=v[0x019], values=[72]
091C  15 60 00                               JMP                           target=0x0060
091F  1C 27 04                               VIDEO_TRANSITION_REF          ref=0x0427 (B[39]=bsten_25.vdx)
0922  26 7C 32 35 79 66 00                   VIDEO_NAME                    name="{grid:2,5}yf"
0929  07                                     VIDEOFLAG7_ON
092A  26 7C 32 35 23 7A 62 00                VIDEO_NAME                    name="{grid:2,5}{v019}b"
0932  A4 19 32 00                            MOV                           dst=v[0x019], src=0x0032
0936  18 F4 04                               CALL                          target=0x04F4
0939  96 32 F3                               LOADSTRING                    dst=v[0x032], values=[67]
093C  96 19 F9                               LOADSTRING                    dst=v[0x019], values=[73]
093F  15 60 00                               JMP                           target=0x0060
0942  0A                                     VIDEOFLAG5_ON
0943  07                                     VIDEOFLAG7_ON
0944  46                                     RESOURCE_CONTEXT_SAVE
0945  09 01 24                               VIDEOREF                      ref=0x2401 (INTRO[1]=fade.vdx)
0948  37 00 00 50 00 7F 02 8F 01             COPY_RECT_TO_BG               left=0x0000, top=0x0050, right=0x027F, bottom=0x018F
0951  47                                     RESOURCE_CONTEXT_RESTORE
0952  17 00                                  RET                           value=0x00
