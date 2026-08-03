; T7G/JH.GRV
; size=3224 sha256=329381248ed56db1e052ab53ad4a1ae6c29601b9afe567e696df068c615c0b23
; instructions=793 input_loops=1

0000  01                                     RESERVED_01
0001  28 00 00                               RESERVED_28                   value=0x0000
0004  02 14 4C                               PLAYSONG                      ref=0x4C14 (XMI[20]=gu23.xmi)
0007  96 92 32 B2                            LOADSTRING                    dst=v[0x092], values=[2, 2]
000B  9A E8 B4 13 00                         STRCMP_NE_JMP                 start=v[0x0E8], values=[4], target=0x0013
0010  96 E8 B5                               LOADSTRING                    dst=v[0x0E8], values=[5]
0013  9A E8 B2 1B 00                         STRCMP_NE_JMP                 start=v[0x0E8], values=[2], target=0x001B
0018  96 E8 B3                               LOADSTRING                    dst=v[0x0E8], values=[3]
001B  9A E8 B0 23 00                         STRCMP_NE_JMP                 start=v[0x0E8], values=[0], target=0x0023
0020  96 E8 B1                               LOADSTRING                    dst=v[0x0E8], values=[1]
0023  07                                     VIDEOFLAG7_ON
0024  46                                     RESOURCE_CONTEXT_SAVE
0025  09 69 50                               VIDEOREF                      ref=0x5069 (GAMWAV[105]=20_s_1.vdx)
0028  47                                     RESOURCE_CONTEXT_RESTORE
0029  2C 0B 05 08                            SET_HOTSPOT_TOP               target=0x050B, cursor=0x08
002D  2D 6E 0C 06                            SET_HOTSPOT_BOTTOM            target=0x0C6E, cursor=0x06
0031  44 61 0C                               SET_HOTSPOT_RIGHT             target=0x0C61
0034  45 61 0C                               SET_HOTSPOT_LEFT              target=0x0C61
0037  16 07 01 B0                            LOADSTRING                    dst=v[0x107], values=[0]
003B  16 08 01 B0                            LOADSTRING                    dst=v[0x108], values=[0]
003F  16 09 01 B0                            LOADSTRING                    dst=v[0x109], values=[0]
0043  16 0A 01 B0                            LOADSTRING                    dst=v[0x10A], values=[0]
0047  16 0B 01 B0                            LOADSTRING                    dst=v[0x10B], values=[0]
004B  16 0C 01 B0                            LOADSTRING                    dst=v[0x10C], values=[0]
004F  16 03 01 B0                            LOADSTRING                    dst=v[0x103], values=[0]
0053  96 19 78 32 31 32 31 32 31 31 F8       LOADSTRING                    dst=v[0x019], values=[72, 2, 1, 2, 1, 2, 1, 1, 72]
005E  96 22 78 30 30 34 30 34 33 34 F8       LOADSTRING                    dst=v[0x022], values=[72, 0, 0, 4, 0, 4, 3, 4, 72]
0069  96 2B 78 32 34 33 33 31 33 34 F8       LOADSTRING                    dst=v[0x02B], values=[72, 2, 4, 3, 3, 1, 3, 4, 72]
0074  96 34 33 34 33 34 32 37 31 33 B1       LOADSTRING                    dst=v[0x034], values=[3, 4, 3, 4, 2, 7, 1, 3, 1]
007F  96 3D 78 30 35 31 36 36 34 31 F8       LOADSTRING                    dst=v[0x03D], values=[72, 0, 5, 1, 6, 6, 4, 1, 72]
008A  96 46 78 30 37 31 32 36 31 34 F8       LOADSTRING                    dst=v[0x046], values=[72, 0, 7, 1, 2, 6, 1, 4, 72]
0095  96 4F 78 33 33 35 34 33 34 34 F8       LOADSTRING                    dst=v[0x04F], values=[72, 3, 3, 5, 4, 3, 4, 4, 72]
00A0  36 03 01 B8 E1 00                      CHAR_LESS_JMP                 start=v[0x103], values=[8], target=0x00E1
00A6  1A 0C 01 B0 BC 00                      STRCMP_NE_JMP                 start=v[0x10C], values=[0], target=0x00BC
00AC  07                                     VIDEOFLAG7_ON
00AD  46                                     RESOURCE_CONTEXT_SAVE
00AE  09 68 50                               VIDEOREF                      ref=0x5068 (GAMWAV[104]=20_e_3.vdx)
00B1  47                                     RESOURCE_CONTEXT_RESTORE
00B2  1F 0C 01                               INC                           var=v[0x10C]
00B5  16 03 01 B0                            LOADSTRING                    dst=v[0x103], values=[0]
00B9  15 E1 00                               JMP                           target=0x00E1
00BC  1A 0C 01 B1 D2 00                      STRCMP_NE_JMP                 start=v[0x10C], values=[1], target=0x00D2
00C2  07                                     VIDEOFLAG7_ON
00C3  46                                     RESOURCE_CONTEXT_SAVE
00C4  09 39 50                               VIDEOREF                      ref=0x5039 (GAMWAV[57]=8_s_13.vdx)
00C7  47                                     RESOURCE_CONTEXT_RESTORE
00C8  1F 0C 01                               INC                           var=v[0x10C]
00CB  16 03 01 B0                            LOADSTRING                    dst=v[0x103], values=[0]
00CF  15 E1 00                               JMP                           target=0x00E1
00D2  1A 0C 01 B2 E1 00                      STRCMP_NE_JMP                 start=v[0x10C], values=[2], target=0x00E1
00D8  07                                     VIDEOFLAG7_ON
00D9  46                                     RESOURCE_CONTEXT_SAVE
00DA  09 9C 50                               VIDEOREF                      ref=0x509C (GAMWAV[156]=gen_s_5.vdx)
00DD  47                                     RESOURCE_CONTEXT_RESTORE
00DE  1F 0C 01                               INC                           var=v[0x10C]
00E1  22                                     COPY_BG_TO_FG
00E2  07                                     VIDEOFLAG7_ON
00E3  0B                                     INPUTLOOPSTART
00E4  0D 6A 00 A5 00 93 00 E7 00 7E 0A 07    HOTSPOT_RECT                  left=0x006A, top=0x00A5, right=0x0093, bottom=0x00E7, target=0x0A7E, cursor=0x07
00F0  0D 33 01 7F 00 47 01 90 00 59 02 09    HOTSPOT_RECT                  left=0x0133, top=0x007F, right=0x0147, bottom=0x0090, target=0x0259, cursor=0x09
00FC  0D 55 01 7D 00 69 01 91 00 70 02 0A    HOTSPOT_RECT                  left=0x0155, top=0x007D, right=0x0169, bottom=0x0091, target=0x0270, cursor=0x0A
0108  0D 77 01 7D 00 8E 01 90 00 87 02 09    HOTSPOT_RECT                  left=0x0177, top=0x007D, right=0x018E, bottom=0x0090, target=0x0287, cursor=0x09
0114  0D EC 00 A0 00 04 01 B2 00 9E 02 0A    HOTSPOT_RECT                  left=0x00EC, top=0x00A0, right=0x0104, bottom=0x00B2, target=0x029E, cursor=0x0A
0120  0D 0D 01 9F 00 23 01 B2 00 B5 02 09    HOTSPOT_RECT                  left=0x010D, top=0x009F, right=0x0123, bottom=0x00B2, target=0x02B5, cursor=0x09
012C  0D 32 01 A0 00 4A 01 B3 00 CC 02 0A    HOTSPOT_RECT                  left=0x0132, top=0x00A0, right=0x014A, bottom=0x00B3, target=0x02CC, cursor=0x0A
0138  0D 55 01 A1 00 67 01 B2 00 E3 02 09    HOTSPOT_RECT                  left=0x0155, top=0x00A1, right=0x0167, bottom=0x00B2, target=0x02E3, cursor=0x09
0144  0D 78 01 9F 00 8D 01 B2 00 FA 02 0A    HOTSPOT_RECT                  left=0x0178, top=0x009F, right=0x018D, bottom=0x00B2, target=0x02FA, cursor=0x0A
0150  0D 99 01 9E 00 AD 01 B0 00 11 03 09    HOTSPOT_RECT                  left=0x0199, top=0x009E, right=0x01AD, bottom=0x00B0, target=0x0311, cursor=0x09
015C  0D C9 00 C1 00 E0 00 D9 00 28 03 0A    HOTSPOT_RECT                  left=0x00C9, top=0x00C1, right=0x00E0, bottom=0x00D9, target=0x0328, cursor=0x0A
0168  0D EC 00 C1 00 00 01 D6 00 3F 03 09    HOTSPOT_RECT                  left=0x00EC, top=0x00C1, right=0x0100, bottom=0x00D6, target=0x033F, cursor=0x09
0174  0D 0F 01 C1 00 24 01 D5 00 56 03 0A    HOTSPOT_RECT                  left=0x010F, top=0x00C1, right=0x0124, bottom=0x00D5, target=0x0356, cursor=0x0A
0180  0D 2E 01 C1 00 46 01 D3 00 6D 03 09    HOTSPOT_RECT                  left=0x012E, top=0x00C1, right=0x0146, bottom=0x00D3, target=0x036D, cursor=0x09
018C  0D 55 01 C1 00 6A 01 D5 00 84 03 0A    HOTSPOT_RECT                  left=0x0155, top=0x00C1, right=0x016A, bottom=0x00D5, target=0x0384, cursor=0x0A
0198  0D 78 01 C2 00 8E 01 D5 00 9B 03 09    HOTSPOT_RECT                  left=0x0178, top=0x00C2, right=0x018E, bottom=0x00D5, target=0x039B, cursor=0x09
01A4  0D 9A 01 C1 00 AE 01 D6 00 B2 03 0A    HOTSPOT_RECT                  left=0x019A, top=0x00C1, right=0x01AE, bottom=0x00D6, target=0x03B2, cursor=0x0A
01B0  0D C8 00 E2 00 DD 00 F7 00 C9 03 09    HOTSPOT_RECT                  left=0x00C8, top=0x00E2, right=0x00DD, bottom=0x00F7, target=0x03C9, cursor=0x09
01BC  0D 77 01 E4 00 8B 01 F9 00 E0 03 0A    HOTSPOT_RECT                  left=0x0177, top=0x00E4, right=0x018B, bottom=0x00F9, target=0x03E0, cursor=0x0A
01C8  0D C9 00 08 01 DE 00 1C 01 F7 03 09    HOTSPOT_RECT                  left=0x00C9, top=0x0108, right=0x00DE, bottom=0x011C, target=0x03F7, cursor=0x09
01D4  0D EC 00 09 01 01 01 1C 01 0E 04 0A    HOTSPOT_RECT                  left=0x00EC, top=0x0109, right=0x0101, bottom=0x011C, target=0x040E, cursor=0x0A
01E0  0D 0F 01 0A 01 24 01 1C 01 25 04 09    HOTSPOT_RECT                  left=0x010F, top=0x010A, right=0x0124, bottom=0x011C, target=0x0425, cursor=0x09
01EC  0D 76 01 09 01 8D 01 1D 01 3C 04 0A    HOTSPOT_RECT                  left=0x0176, top=0x0109, right=0x018D, bottom=0x011D, target=0x043C, cursor=0x0A
01F8  0D CA 00 28 01 DF 00 3E 01 53 04 09    HOTSPOT_RECT                  left=0x00CA, top=0x0128, right=0x00DF, bottom=0x013E, target=0x0453, cursor=0x09
0204  0D 0E 01 2A 01 24 01 3F 01 6A 04 0A    HOTSPOT_RECT                  left=0x010E, top=0x012A, right=0x0124, bottom=0x013F, target=0x046A, cursor=0x0A
0210  0D 31 01 2A 01 46 01 3F 01 81 04 09    HOTSPOT_RECT                  left=0x0131, top=0x012A, right=0x0146, bottom=0x013F, target=0x0481, cursor=0x09
021C  0D 78 01 2C 01 8A 01 3E 01 98 04 0A    HOTSPOT_RECT                  left=0x0178, top=0x012C, right=0x018A, bottom=0x013E, target=0x0498, cursor=0x0A
0228  0D 9A 01 2C 01 AD 01 40 01 AF 04 09    HOTSPOT_RECT                  left=0x019A, top=0x012C, right=0x01AD, bottom=0x0140, target=0x04AF, cursor=0x09
0234  0D EB 00 4E 01 02 01 63 01 C6 04 0A    HOTSPOT_RECT                  left=0x00EB, top=0x014E, right=0x0102, bottom=0x0163, target=0x04C6, cursor=0x0A
0240  0D 0F 01 4C 01 25 01 61 01 DD 04 09    HOTSPOT_RECT                  left=0x010F, top=0x014C, right=0x0125, bottom=0x0161, target=0x04DD, cursor=0x09
024C  0D 78 01 4C 01 8E 01 64 01 F4 04 0A    HOTSPOT_RECT                  left=0x0178, top=0x014C, right=0x018E, bottom=0x0164, target=0x04F4, cursor=0x0A
0258  13                                     INPUTLOOPEND
0259  9A 1D B1 67 02                         STRCMP_NE_JMP                 start=v[0x01D], values=[1], target=0x0267
025E  09 1E 28                               VIDEOREF                      ref=0x281E (JHEK[30]=jh1a.vdx)
0261  96 1D B5                               LOADSTRING                    dst=v[0x01D], values=[5]
0264  15 6D 02                               JMP                           target=0x026D
0267  09 00 28                               VIDEOREF                      ref=0x2800 (JHEK[0]=jh0a.vdx)
026A  96 1D B1                               LOADSTRING                    dst=v[0x01D], values=[1]
026D  15 A0 00                               JMP                           target=0x00A0
0270  9A 1E B2 7E 02                         STRCMP_NE_JMP                 start=v[0x01E], values=[2], target=0x027E
0275  09 20 28                               VIDEOREF                      ref=0x2820 (JHEK[32]=jh1b.vdx)
0278  96 1E B5                               LOADSTRING                    dst=v[0x01E], values=[5]
027B  15 84 02                               JMP                           target=0x0284
027E  09 02 28                               VIDEOREF                      ref=0x2802 (JHEK[2]=jh0b.vdx)
0281  96 1E B2                               LOADSTRING                    dst=v[0x01E], values=[2]
0284  15 A0 00                               JMP                           target=0x00A0
0287  9A 1F B1 95 02                         STRCMP_NE_JMP                 start=v[0x01F], values=[1], target=0x0295
028C  09 22 28                               VIDEOREF                      ref=0x2822 (JHEK[34]=jh1c.vdx)
028F  96 1F B5                               LOADSTRING                    dst=v[0x01F], values=[5]
0292  15 9B 02                               JMP                           target=0x029B
0295  09 04 28                               VIDEOREF                      ref=0x2804 (JHEK[4]=jh0c.vdx)
0298  96 1F B1                               LOADSTRING                    dst=v[0x01F], values=[1]
029B  15 A0 00                               JMP                           target=0x00A0
029E  9A 24 B0 AC 02                         STRCMP_NE_JMP                 start=v[0x024], values=[0], target=0x02AC
02A3  09 24 28                               VIDEOREF                      ref=0x2824 (JHEK[36]=jh1d.vdx)
02A6  96 24 B3                               LOADSTRING                    dst=v[0x024], values=[3]
02A9  15 B2 02                               JMP                           target=0x02B2
02AC  09 06 28                               VIDEOREF                      ref=0x2806 (JHEK[6]=jh0d.vdx)
02AF  96 24 B0                               LOADSTRING                    dst=v[0x024], values=[0]
02B2  15 A0 00                               JMP                           target=0x00A0
02B5  9A 25 B4 C3 02                         STRCMP_NE_JMP                 start=v[0x025], values=[4], target=0x02C3
02BA  09 26 28                               VIDEOREF                      ref=0x2826 (JHEK[38]=jh1e.vdx)
02BD  96 25 B1                               LOADSTRING                    dst=v[0x025], values=[1]
02C0  15 C9 02                               JMP                           target=0x02C9
02C3  09 08 28                               VIDEOREF                      ref=0x2808 (JHEK[8]=jh0e.vdx)
02C6  96 25 B4                               LOADSTRING                    dst=v[0x025], values=[4]
02C9  15 A0 00                               JMP                           target=0x00A0
02CC  9A 26 B0 DA 02                         STRCMP_NE_JMP                 start=v[0x026], values=[0], target=0x02DA
02D1  09 27 28                               VIDEOREF                      ref=0x2827 (JHEK[39]=jh1f.vdx)
02D4  96 26 B3                               LOADSTRING                    dst=v[0x026], values=[3]
02D7  15 E0 02                               JMP                           target=0x02E0
02DA  09 09 28                               VIDEOREF                      ref=0x2809 (JHEK[9]=jh0f.vdx)
02DD  96 26 B0                               LOADSTRING                    dst=v[0x026], values=[0]
02E0  15 A0 00                               JMP                           target=0x00A0
02E3  9A 27 B4 F1 02                         STRCMP_NE_JMP                 start=v[0x027], values=[4], target=0x02F1
02E8  09 28 28                               VIDEOREF                      ref=0x2828 (JHEK[40]=jh1g.vdx)
02EB  96 27 B1                               LOADSTRING                    dst=v[0x027], values=[1]
02EE  15 F7 02                               JMP                           target=0x02F7
02F1  09 0A 28                               VIDEOREF                      ref=0x280A (JHEK[10]=jh0g.vdx)
02F4  96 27 B4                               LOADSTRING                    dst=v[0x027], values=[4]
02F7  15 A0 00                               JMP                           target=0x00A0
02FA  9A 28 B3 08 03                         STRCMP_NE_JMP                 start=v[0x028], values=[3], target=0x0308
02FF  09 29 28                               VIDEOREF                      ref=0x2829 (JHEK[41]=jh1h.vdx)
0302  96 28 B2                               LOADSTRING                    dst=v[0x028], values=[2]
0305  15 0E 03                               JMP                           target=0x030E
0308  09 0B 28                               VIDEOREF                      ref=0x280B (JHEK[11]=jh0h.vdx)
030B  96 28 B3                               LOADSTRING                    dst=v[0x028], values=[3]
030E  15 A0 00                               JMP                           target=0x00A0
0311  9A 29 B4 1F 03                         STRCMP_NE_JMP                 start=v[0x029], values=[4], target=0x031F
0316  09 2A 28                               VIDEOREF                      ref=0x282A (JHEK[42]=jh1i.vdx)
0319  96 29 B1                               LOADSTRING                    dst=v[0x029], values=[1]
031C  15 25 03                               JMP                           target=0x0325
031F  09 0C 28                               VIDEOREF                      ref=0x280C (JHEK[12]=jh0i.vdx)
0322  96 29 B4                               LOADSTRING                    dst=v[0x029], values=[4]
0325  15 A0 00                               JMP                           target=0x00A0
0328  9A 2C B2 36 03                         STRCMP_NE_JMP                 start=v[0x02C], values=[2], target=0x0336
032D  09 2B 28                               VIDEOREF                      ref=0x282B (JHEK[43]=jh1j.vdx)
0330  96 2C B3                               LOADSTRING                    dst=v[0x02C], values=[3]
0333  15 3C 03                               JMP                           target=0x033C
0336  09 0D 28                               VIDEOREF                      ref=0x280D (JHEK[13]=jh0j.vdx)
0339  96 2C B2                               LOADSTRING                    dst=v[0x02C], values=[2]
033C  15 A0 00                               JMP                           target=0x00A0
033F  9A 2D B4 4D 03                         STRCMP_NE_JMP                 start=v[0x02D], values=[4], target=0x034D
0344  09 2C 28                               VIDEOREF                      ref=0x282C (JHEK[44]=jh1k.vdx)
0347  96 2D B1                               LOADSTRING                    dst=v[0x02D], values=[1]
034A  15 53 03                               JMP                           target=0x0353
034D  09 0E 28                               VIDEOREF                      ref=0x280E (JHEK[14]=jh0k.vdx)
0350  96 2D B4                               LOADSTRING                    dst=v[0x02D], values=[4]
0353  15 A0 00                               JMP                           target=0x00A0
0356  9A 2E B3 64 03                         STRCMP_NE_JMP                 start=v[0x02E], values=[3], target=0x0364
035B  09 2D 28                               VIDEOREF                      ref=0x282D (JHEK[45]=jh1l.vdx)
035E  96 2E B2                               LOADSTRING                    dst=v[0x02E], values=[2]
0361  15 6A 03                               JMP                           target=0x036A
0364  09 0F 28                               VIDEOREF                      ref=0x280F (JHEK[15]=jh0l.vdx)
0367  96 2E B3                               LOADSTRING                    dst=v[0x02E], values=[3]
036A  15 A0 00                               JMP                           target=0x00A0
036D  9A 2F B3 7B 03                         STRCMP_NE_JMP                 start=v[0x02F], values=[3], target=0x037B
0372  09 2E 28                               VIDEOREF                      ref=0x282E (JHEK[46]=jh1m.vdx)
0375  96 2F B5                               LOADSTRING                    dst=v[0x02F], values=[5]
0378  15 81 03                               JMP                           target=0x0381
037B  09 10 28                               VIDEOREF                      ref=0x2810 (JHEK[16]=jh0m.vdx)
037E  96 2F B3                               LOADSTRING                    dst=v[0x02F], values=[3]
0381  15 A0 00                               JMP                           target=0x00A0
0384  9A 30 B1 92 03                         STRCMP_NE_JMP                 start=v[0x030], values=[1], target=0x0392
0389  09 2F 28                               VIDEOREF                      ref=0x282F (JHEK[47]=jh1n.vdx)
038C  96 30 B4                               LOADSTRING                    dst=v[0x030], values=[4]
038F  15 98 03                               JMP                           target=0x0398
0392  09 11 28                               VIDEOREF                      ref=0x2811 (JHEK[17]=jh0n.vdx)
0395  96 30 B1                               LOADSTRING                    dst=v[0x030], values=[1]
0398  15 A0 00                               JMP                           target=0x00A0
039B  9A 31 B3 A9 03                         STRCMP_NE_JMP                 start=v[0x031], values=[3], target=0x03A9
03A0  09 30 28                               VIDEOREF                      ref=0x2830 (JHEK[48]=jh1o.vdx)
03A3  96 31 B0                               LOADSTRING                    dst=v[0x031], values=[0]
03A6  15 AF 03                               JMP                           target=0x03AF
03A9  09 12 28                               VIDEOREF                      ref=0x2812 (JHEK[18]=jh0o.vdx)
03AC  96 31 B3                               LOADSTRING                    dst=v[0x031], values=[3]
03AF  15 A0 00                               JMP                           target=0x00A0
03B2  9A 32 B4 C0 03                         STRCMP_NE_JMP                 start=v[0x032], values=[4], target=0x03C0
03B7  09 31 28                               VIDEOREF                      ref=0x2831 (JHEK[49]=jh1p.vdx)
03BA  96 32 B1                               LOADSTRING                    dst=v[0x032], values=[1]
03BD  15 C6 03                               JMP                           target=0x03C6
03C0  09 13 28                               VIDEOREF                      ref=0x2813 (JHEK[19]=jh0p.vdx)
03C3  96 32 B4                               LOADSTRING                    dst=v[0x032], values=[4]
03C6  15 A0 00                               JMP                           target=0x00A0
03C9  9A 35 B4 D7 03                         STRCMP_NE_JMP                 start=v[0x035], values=[4], target=0x03D7
03CE  09 32 28                               VIDEOREF                      ref=0x2832 (JHEK[50]=jh1q.vdx)
03D1  96 35 B1                               LOADSTRING                    dst=v[0x035], values=[1]
03D4  15 DD 03                               JMP                           target=0x03DD
03D7  09 14 28                               VIDEOREF                      ref=0x2814 (JHEK[20]=jh0q.vdx)
03DA  96 35 B4                               LOADSTRING                    dst=v[0x035], values=[4]
03DD  15 A0 00                               JMP                           target=0x00A0
03E0  9A 3A B1 EE 03                         STRCMP_NE_JMP                 start=v[0x03A], values=[1], target=0x03EE
03E5  09 33 28                               VIDEOREF                      ref=0x2833 (JHEK[51]=jh1r.vdx)
03E8  96 3A B4                               LOADSTRING                    dst=v[0x03A], values=[4]
03EB  15 F4 03                               JMP                           target=0x03F4
03EE  09 15 28                               VIDEOREF                      ref=0x2815 (JHEK[21]=jh0r.vdx)
03F1  96 3A B1                               LOADSTRING                    dst=v[0x03A], values=[1]
03F4  15 A0 00                               JMP                           target=0x00A0
03F7  9A 3E B0 05 04                         STRCMP_NE_JMP                 start=v[0x03E], values=[0], target=0x0405
03FC  09 34 28                               VIDEOREF                      ref=0x2834 (JHEK[52]=jh1s.vdx)
03FF  96 3E B3                               LOADSTRING                    dst=v[0x03E], values=[3]
0402  15 0B 04                               JMP                           target=0x040B
0405  09 16 28                               VIDEOREF                      ref=0x2816 (JHEK[22]=jh0s.vdx)
0408  96 3E B0                               LOADSTRING                    dst=v[0x03E], values=[0]
040B  15 A0 00                               JMP                           target=0x00A0
040E  9A 3F B5 1C 04                         STRCMP_NE_JMP                 start=v[0x03F], values=[5], target=0x041C
0413  09 35 28                               VIDEOREF                      ref=0x2835 (JHEK[53]=jh1t.vdx)
0416  96 3F B1                               LOADSTRING                    dst=v[0x03F], values=[1]
0419  15 22 04                               JMP                           target=0x0422
041C  09 17 28                               VIDEOREF                      ref=0x2817 (JHEK[23]=jh0t.vdx)
041F  96 3F B5                               LOADSTRING                    dst=v[0x03F], values=[5]
0422  15 A0 00                               JMP                           target=0x00A0
0425  9A 40 B1 33 04                         STRCMP_NE_JMP                 start=v[0x040], values=[1], target=0x0433
042A  09 36 28                               VIDEOREF                      ref=0x2836 (JHEK[54]=jh1u.vdx)
042D  96 40 B2                               LOADSTRING                    dst=v[0x040], values=[2]
0430  15 39 04                               JMP                           target=0x0439
0433  09 18 28                               VIDEOREF                      ref=0x2818 (JHEK[24]=jh0u.vdx)
0436  96 40 B1                               LOADSTRING                    dst=v[0x040], values=[1]
0439  15 A0 00                               JMP                           target=0x00A0
043C  9A 43 B4 4A 04                         STRCMP_NE_JMP                 start=v[0x043], values=[4], target=0x044A
0441  09 37 28                               VIDEOREF                      ref=0x2837 (JHEK[55]=jh1v.vdx)
0444  96 43 B3                               LOADSTRING                    dst=v[0x043], values=[3]
0447  15 50 04                               JMP                           target=0x0450
044A  09 19 28                               VIDEOREF                      ref=0x2819 (JHEK[25]=jh0v.vdx)
044D  96 43 B4                               LOADSTRING                    dst=v[0x043], values=[4]
0450  15 A0 00                               JMP                           target=0x00A0
0453  9A 47 B0 61 04                         STRCMP_NE_JMP                 start=v[0x047], values=[0], target=0x0461
0458  09 38 28                               VIDEOREF                      ref=0x2838 (JHEK[56]=jh1w.vdx)
045B  96 47 B2                               LOADSTRING                    dst=v[0x047], values=[2]
045E  15 67 04                               JMP                           target=0x0467
0461  09 1A 28                               VIDEOREF                      ref=0x281A (JHEK[26]=jh0w.vdx)
0464  96 47 B0                               LOADSTRING                    dst=v[0x047], values=[0]
0467  15 A0 00                               JMP                           target=0x00A0
046A  9A 49 B1 78 04                         STRCMP_NE_JMP                 start=v[0x049], values=[1], target=0x0478
046F  09 39 28                               VIDEOREF                      ref=0x2839 (JHEK[57]=jh1x.vdx)
0472  96 49 B4                               LOADSTRING                    dst=v[0x049], values=[4]
0475  15 7E 04                               JMP                           target=0x047E
0478  09 1B 28                               VIDEOREF                      ref=0x281B (JHEK[27]=jh0x.vdx)
047B  96 49 B1                               LOADSTRING                    dst=v[0x049], values=[1]
047E  15 A0 00                               JMP                           target=0x00A0
0481  9A 4A B2 8F 04                         STRCMP_NE_JMP                 start=v[0x04A], values=[2], target=0x048F
0486  09 3A 28                               VIDEOREF                      ref=0x283A (JHEK[58]=jh1y.vdx)
0489  96 4A B0                               LOADSTRING                    dst=v[0x04A], values=[0]
048C  15 95 04                               JMP                           target=0x0495
048F  09 1C 28                               VIDEOREF                      ref=0x281C (JHEK[28]=jh0y.vdx)
0492  96 4A B2                               LOADSTRING                    dst=v[0x04A], values=[2]
0495  15 A0 00                               JMP                           target=0x00A0
0498  9A 4C B1 A6 04                         STRCMP_NE_JMP                 start=v[0x04C], values=[1], target=0x04A6
049D  09 3B 28                               VIDEOREF                      ref=0x283B (JHEK[59]=jh1z.vdx)
04A0  96 4C B2                               LOADSTRING                    dst=v[0x04C], values=[2]
04A3  15 AC 04                               JMP                           target=0x04AC
04A6  09 1D 28                               VIDEOREF                      ref=0x281D (JHEK[29]=jh0z.vdx)
04A9  96 4C B1                               LOADSTRING                    dst=v[0x04C], values=[1]
04AC  15 A0 00                               JMP                           target=0x00A0
04AF  9A 4D B4 BD 04                         STRCMP_NE_JMP                 start=v[0x04D], values=[4], target=0x04BD
04B4  09 1F 28                               VIDEOREF                      ref=0x281F (JHEK[31]=jh1aa.vdx)
04B7  96 4D B0                               LOADSTRING                    dst=v[0x04D], values=[0]
04BA  15 C3 04                               JMP                           target=0x04C3
04BD  09 01 28                               VIDEOREF                      ref=0x2801 (JHEK[1]=jh0aa.vdx)
04C0  96 4D B4                               LOADSTRING                    dst=v[0x04D], values=[4]
04C3  15 A0 00                               JMP                           target=0x00A0
04C6  9A 51 B3 D4 04                         STRCMP_NE_JMP                 start=v[0x051], values=[3], target=0x04D4
04CB  09 21 28                               VIDEOREF                      ref=0x2821 (JHEK[33]=jh1bb.vdx)
04CE  96 51 B4                               LOADSTRING                    dst=v[0x051], values=[4]
04D1  15 DA 04                               JMP                           target=0x04DA
04D4  09 03 28                               VIDEOREF                      ref=0x2803 (JHEK[3]=jh0bb.vdx)
04D7  96 51 B3                               LOADSTRING                    dst=v[0x051], values=[3]
04DA  15 A0 00                               JMP                           target=0x00A0
04DD  9A 52 B5 EB 04                         STRCMP_NE_JMP                 start=v[0x052], values=[5], target=0x04EB
04E2  09 23 28                               VIDEOREF                      ref=0x2823 (JHEK[35]=jh1cc.vdx)
04E5  96 52 B3                               LOADSTRING                    dst=v[0x052], values=[3]
04E8  15 F1 04                               JMP                           target=0x04F1
04EB  09 05 28                               VIDEOREF                      ref=0x2805 (JHEK[5]=jh0cc.vdx)
04EE  96 52 B5                               LOADSTRING                    dst=v[0x052], values=[5]
04F1  15 A0 00                               JMP                           target=0x00A0
04F4  9A 55 B4 02 05                         STRCMP_NE_JMP                 start=v[0x055], values=[4], target=0x0502
04F9  09 25 28                               VIDEOREF                      ref=0x2825 (JHEK[37]=jh1dd.vdx)
04FC  96 55 B5                               LOADSTRING                    dst=v[0x055], values=[5]
04FF  15 08 05                               JMP                           target=0x0508
0502  09 07 28                               VIDEOREF                      ref=0x2807 (JHEK[7]=jh0dd.vdx)
0505  96 55 B4                               LOADSTRING                    dst=v[0x055], values=[4]
0508  15 A0 00                               JMP                           target=0x00A0
050B  43 01                                  RETURNSCRIPT                  value=0x01
050D  96 16 F8                               LOADSTRING                    dst=v[0x016], values=[72]
0510  9A 17 30 B0 25 05                      STRCMP_NE_JMP                 start=v[0x017], values=[0, 0], target=0x0525
0516  A4 16 19 00                            MOV                           dst=v[0x016], src=0x0019
051A  96 19 F8                               LOADSTRING                    dst=v[0x019], values=[72]
051D  40 DD FF 00 00                         SET_VIDEO_ORIGIN              x=-35, y=0
0522  96 14 F8                               LOADSTRING                    dst=v[0x014], values=[72]
0525  9A 17 31 B0 3A 05                      STRCMP_NE_JMP                 start=v[0x017], values=[1, 0], target=0x053A
052B  A4 16 1A 00                            MOV                           dst=v[0x016], src=0x001A
052F  96 1A F8                               LOADSTRING                    dst=v[0x01A], values=[72]
0532  40 DD FF 00 00                         SET_VIDEO_ORIGIN              x=-35, y=0
0537  96 14 F9                               LOADSTRING                    dst=v[0x014], values=[73]
053A  9A 17 32 B0 4F 05                      STRCMP_NE_JMP                 start=v[0x017], values=[2, 0], target=0x054F
0540  A4 16 1B 00                            MOV                           dst=v[0x016], src=0x001B
0544  96 1B F8                               LOADSTRING                    dst=v[0x01B], values=[72]
0547  40 23 00 00 00                         SET_VIDEO_ORIGIN              x=35, y=0
054C  96 14 F8                               LOADSTRING                    dst=v[0x014], values=[72]
054F  9A 17 33 B0 64 05                      STRCMP_NE_JMP                 start=v[0x017], values=[3, 0], target=0x0564
0555  A4 16 1C 00                            MOV                           dst=v[0x016], src=0x001C
0559  96 1C F8                               LOADSTRING                    dst=v[0x01C], values=[72]
055C  40 23 00 00 00                         SET_VIDEO_ORIGIN              x=35, y=0
0561  96 14 F9                               LOADSTRING                    dst=v[0x014], values=[73]
0564  9A 17 34 B0 79 05                      STRCMP_NE_JMP                 start=v[0x017], values=[4, 0], target=0x0579
056A  A4 16 1D 00                            MOV                           dst=v[0x016], src=0x001D
056E  96 1D F8                               LOADSTRING                    dst=v[0x01D], values=[72]
0571  40 69 00 00 00                         SET_VIDEO_ORIGIN              x=105, y=0
0576  96 14 F8                               LOADSTRING                    dst=v[0x014], values=[72]
0579  9A 17 35 B0 8E 05                      STRCMP_NE_JMP                 start=v[0x017], values=[5, 0], target=0x058E
057F  A4 16 1E 00                            MOV                           dst=v[0x016], src=0x001E
0583  96 1E F8                               LOADSTRING                    dst=v[0x01E], values=[72]
0586  40 69 00 00 00                         SET_VIDEO_ORIGIN              x=105, y=0
058B  96 14 F9                               LOADSTRING                    dst=v[0x014], values=[73]
058E  9A 17 36 B0 A3 05                      STRCMP_NE_JMP                 start=v[0x017], values=[6, 0], target=0x05A3
0594  A4 16 1F 00                            MOV                           dst=v[0x016], src=0x001F
0598  96 1F F8                               LOADSTRING                    dst=v[0x01F], values=[72]
059B  40 AF 00 00 00                         SET_VIDEO_ORIGIN              x=175, y=0
05A0  96 14 F8                               LOADSTRING                    dst=v[0x014], values=[72]
05A3  9A 17 37 B0 B8 05                      STRCMP_NE_JMP                 start=v[0x017], values=[7, 0], target=0x05B8
05A9  A4 16 20 00                            MOV                           dst=v[0x016], src=0x0020
05AD  96 20 F8                               LOADSTRING                    dst=v[0x020], values=[72]
05B0  40 AF 00 00 00                         SET_VIDEO_ORIGIN              x=175, y=0
05B5  96 14 F9                               LOADSTRING                    dst=v[0x014], values=[73]
05B8  9A 17 38 B0 CD 05                      STRCMP_NE_JMP                 start=v[0x017], values=[8, 0], target=0x05CD
05BE  A4 16 21 00                            MOV                           dst=v[0x016], src=0x0021
05C2  96 21 F8                               LOADSTRING                    dst=v[0x021], values=[72]
05C5  40 F5 00 00 00                         SET_VIDEO_ORIGIN              x=245, y=0
05CA  96 14 F8                               LOADSTRING                    dst=v[0x014], values=[72]
05CD  9A 17 30 B1 E2 05                      STRCMP_NE_JMP                 start=v[0x017], values=[0, 1], target=0x05E2
05D3  A4 16 22 00                            MOV                           dst=v[0x016], src=0x0022
05D7  96 22 F8                               LOADSTRING                    dst=v[0x022], values=[72]
05DA  40 DD FF 23 00                         SET_VIDEO_ORIGIN              x=-35, y=35
05DF  96 14 F8                               LOADSTRING                    dst=v[0x014], values=[72]
05E2  9A 17 31 B1 F7 05                      STRCMP_NE_JMP                 start=v[0x017], values=[1, 1], target=0x05F7
05E8  A4 16 23 00                            MOV                           dst=v[0x016], src=0x0023
05EC  96 23 F8                               LOADSTRING                    dst=v[0x023], values=[72]
05EF  40 DD FF 23 00                         SET_VIDEO_ORIGIN              x=-35, y=35
05F4  96 14 F9                               LOADSTRING                    dst=v[0x014], values=[73]
05F7  9A 17 32 B1 0C 06                      STRCMP_NE_JMP                 start=v[0x017], values=[2, 1], target=0x060C
05FD  A4 16 24 00                            MOV                           dst=v[0x016], src=0x0024
0601  96 24 F8                               LOADSTRING                    dst=v[0x024], values=[72]
0604  40 23 00 23 00                         SET_VIDEO_ORIGIN              x=35, y=35
0609  96 14 F8                               LOADSTRING                    dst=v[0x014], values=[72]
060C  9A 17 33 B1 21 06                      STRCMP_NE_JMP                 start=v[0x017], values=[3, 1], target=0x0621
0612  A4 16 25 00                            MOV                           dst=v[0x016], src=0x0025
0616  96 25 F8                               LOADSTRING                    dst=v[0x025], values=[72]
0619  40 23 00 23 00                         SET_VIDEO_ORIGIN              x=35, y=35
061E  96 14 F9                               LOADSTRING                    dst=v[0x014], values=[73]
0621  9A 17 34 B1 36 06                      STRCMP_NE_JMP                 start=v[0x017], values=[4, 1], target=0x0636
0627  A4 16 26 00                            MOV                           dst=v[0x016], src=0x0026
062B  96 26 F8                               LOADSTRING                    dst=v[0x026], values=[72]
062E  40 69 00 23 00                         SET_VIDEO_ORIGIN              x=105, y=35
0633  96 14 F8                               LOADSTRING                    dst=v[0x014], values=[72]
0636  9A 17 35 B1 4B 06                      STRCMP_NE_JMP                 start=v[0x017], values=[5, 1], target=0x064B
063C  A4 16 27 00                            MOV                           dst=v[0x016], src=0x0027
0640  96 27 F8                               LOADSTRING                    dst=v[0x027], values=[72]
0643  40 69 00 23 00                         SET_VIDEO_ORIGIN              x=105, y=35
0648  96 14 F9                               LOADSTRING                    dst=v[0x014], values=[73]
064B  9A 17 36 B1 60 06                      STRCMP_NE_JMP                 start=v[0x017], values=[6, 1], target=0x0660
0651  A4 16 28 00                            MOV                           dst=v[0x016], src=0x0028
0655  96 28 F8                               LOADSTRING                    dst=v[0x028], values=[72]
0658  40 AF 00 23 00                         SET_VIDEO_ORIGIN              x=175, y=35
065D  96 14 F8                               LOADSTRING                    dst=v[0x014], values=[72]
0660  9A 17 37 B1 75 06                      STRCMP_NE_JMP                 start=v[0x017], values=[7, 1], target=0x0675
0666  A4 16 29 00                            MOV                           dst=v[0x016], src=0x0029
066A  96 29 F8                               LOADSTRING                    dst=v[0x029], values=[72]
066D  40 AF 00 23 00                         SET_VIDEO_ORIGIN              x=175, y=35
0672  96 14 F9                               LOADSTRING                    dst=v[0x014], values=[73]
0675  9A 17 38 B1 8A 06                      STRCMP_NE_JMP                 start=v[0x017], values=[8, 1], target=0x068A
067B  A4 16 2A 00                            MOV                           dst=v[0x016], src=0x002A
067F  96 2A F8                               LOADSTRING                    dst=v[0x02A], values=[72]
0682  40 F5 00 23 00                         SET_VIDEO_ORIGIN              x=245, y=35
0687  96 14 F8                               LOADSTRING                    dst=v[0x014], values=[72]
068A  9A 17 30 B2 9F 06                      STRCMP_NE_JMP                 start=v[0x017], values=[0, 2], target=0x069F
0690  A4 16 2B 00                            MOV                           dst=v[0x016], src=0x002B
0694  96 2B F8                               LOADSTRING                    dst=v[0x02B], values=[72]
0697  40 DD FF 46 00                         SET_VIDEO_ORIGIN              x=-35, y=70
069C  96 14 F8                               LOADSTRING                    dst=v[0x014], values=[72]
069F  9A 17 31 B2 B4 06                      STRCMP_NE_JMP                 start=v[0x017], values=[1, 2], target=0x06B4
06A5  A4 16 2C 00                            MOV                           dst=v[0x016], src=0x002C
06A9  96 2C F8                               LOADSTRING                    dst=v[0x02C], values=[72]
06AC  40 DD FF 46 00                         SET_VIDEO_ORIGIN              x=-35, y=70
06B1  96 14 F9                               LOADSTRING                    dst=v[0x014], values=[73]
06B4  9A 17 32 B2 C9 06                      STRCMP_NE_JMP                 start=v[0x017], values=[2, 2], target=0x06C9
06BA  A4 16 2D 00                            MOV                           dst=v[0x016], src=0x002D
06BE  96 2D F8                               LOADSTRING                    dst=v[0x02D], values=[72]
06C1  40 23 00 46 00                         SET_VIDEO_ORIGIN              x=35, y=70
06C6  96 14 F8                               LOADSTRING                    dst=v[0x014], values=[72]
06C9  9A 17 33 B2 DE 06                      STRCMP_NE_JMP                 start=v[0x017], values=[3, 2], target=0x06DE
06CF  A4 16 2E 00                            MOV                           dst=v[0x016], src=0x002E
06D3  96 2E F8                               LOADSTRING                    dst=v[0x02E], values=[72]
06D6  40 23 00 46 00                         SET_VIDEO_ORIGIN              x=35, y=70
06DB  96 14 F9                               LOADSTRING                    dst=v[0x014], values=[73]
06DE  9A 17 34 B2 F3 06                      STRCMP_NE_JMP                 start=v[0x017], values=[4, 2], target=0x06F3
06E4  A4 16 2F 00                            MOV                           dst=v[0x016], src=0x002F
06E8  96 2F F8                               LOADSTRING                    dst=v[0x02F], values=[72]
06EB  40 69 00 46 00                         SET_VIDEO_ORIGIN              x=105, y=70
06F0  96 14 F8                               LOADSTRING                    dst=v[0x014], values=[72]
06F3  9A 17 35 B2 08 07                      STRCMP_NE_JMP                 start=v[0x017], values=[5, 2], target=0x0708
06F9  A4 16 30 00                            MOV                           dst=v[0x016], src=0x0030
06FD  96 30 F8                               LOADSTRING                    dst=v[0x030], values=[72]
0700  40 69 00 46 00                         SET_VIDEO_ORIGIN              x=105, y=70
0705  96 14 F9                               LOADSTRING                    dst=v[0x014], values=[73]
0708  9A 17 36 B2 1D 07                      STRCMP_NE_JMP                 start=v[0x017], values=[6, 2], target=0x071D
070E  A4 16 31 00                            MOV                           dst=v[0x016], src=0x0031
0712  96 31 F8                               LOADSTRING                    dst=v[0x031], values=[72]
0715  40 AF 00 46 00                         SET_VIDEO_ORIGIN              x=175, y=70
071A  96 14 F8                               LOADSTRING                    dst=v[0x014], values=[72]
071D  9A 17 37 B2 32 07                      STRCMP_NE_JMP                 start=v[0x017], values=[7, 2], target=0x0732
0723  A4 16 32 00                            MOV                           dst=v[0x016], src=0x0032
0727  96 32 F8                               LOADSTRING                    dst=v[0x032], values=[72]
072A  40 AF 00 46 00                         SET_VIDEO_ORIGIN              x=175, y=70
072F  96 14 F9                               LOADSTRING                    dst=v[0x014], values=[73]
0732  9A 17 38 B2 47 07                      STRCMP_NE_JMP                 start=v[0x017], values=[8, 2], target=0x0747
0738  A4 16 33 00                            MOV                           dst=v[0x016], src=0x0033
073C  96 33 F8                               LOADSTRING                    dst=v[0x033], values=[72]
073F  40 F5 00 46 00                         SET_VIDEO_ORIGIN              x=245, y=70
0744  96 14 F8                               LOADSTRING                    dst=v[0x014], values=[72]
0747  9A 17 30 B3 5C 07                      STRCMP_NE_JMP                 start=v[0x017], values=[0, 3], target=0x075C
074D  A4 16 34 00                            MOV                           dst=v[0x016], src=0x0034
0751  96 34 F8                               LOADSTRING                    dst=v[0x034], values=[72]
0754  40 DD FF 69 00                         SET_VIDEO_ORIGIN              x=-35, y=105
0759  96 14 F8                               LOADSTRING                    dst=v[0x014], values=[72]
075C  9A 17 31 B3 71 07                      STRCMP_NE_JMP                 start=v[0x017], values=[1, 3], target=0x0771
0762  A4 16 35 00                            MOV                           dst=v[0x016], src=0x0035
0766  96 35 F8                               LOADSTRING                    dst=v[0x035], values=[72]
0769  40 DD FF 69 00                         SET_VIDEO_ORIGIN              x=-35, y=105
076E  96 14 F9                               LOADSTRING                    dst=v[0x014], values=[73]
0771  9A 17 32 B3 86 07                      STRCMP_NE_JMP                 start=v[0x017], values=[2, 3], target=0x0786
0777  A4 16 36 00                            MOV                           dst=v[0x016], src=0x0036
077B  96 36 F8                               LOADSTRING                    dst=v[0x036], values=[72]
077E  40 23 00 69 00                         SET_VIDEO_ORIGIN              x=35, y=105
0783  96 14 F8                               LOADSTRING                    dst=v[0x014], values=[72]
0786  9A 17 33 B3 9B 07                      STRCMP_NE_JMP                 start=v[0x017], values=[3, 3], target=0x079B
078C  A4 16 37 00                            MOV                           dst=v[0x016], src=0x0037
0790  96 37 F8                               LOADSTRING                    dst=v[0x037], values=[72]
0793  40 23 00 69 00                         SET_VIDEO_ORIGIN              x=35, y=105
0798  96 14 F9                               LOADSTRING                    dst=v[0x014], values=[73]
079B  9A 17 34 B3 B0 07                      STRCMP_NE_JMP                 start=v[0x017], values=[4, 3], target=0x07B0
07A1  A4 16 38 00                            MOV                           dst=v[0x016], src=0x0038
07A5  96 38 F8                               LOADSTRING                    dst=v[0x038], values=[72]
07A8  40 69 00 69 00                         SET_VIDEO_ORIGIN              x=105, y=105
07AD  96 14 F8                               LOADSTRING                    dst=v[0x014], values=[72]
07B0  9A 17 35 B3 D2 07                      STRCMP_NE_JMP                 start=v[0x017], values=[5, 3], target=0x07D2
07B6  A4 16 39 00                            MOV                           dst=v[0x016], src=0x0039
07BA  1A 07 01 B1 C6 07                      STRCMP_NE_JMP                 start=v[0x107], values=[1], target=0x07C6
07C0  96 39 F8                               LOADSTRING                    dst=v[0x039], values=[72]
07C3  15 CA 07                               JMP                           target=0x07CA
07C6  16 07 01 B1                            LOADSTRING                    dst=v[0x107], values=[1]
07CA  40 69 00 69 00                         SET_VIDEO_ORIGIN              x=105, y=105
07CF  96 14 F9                               LOADSTRING                    dst=v[0x014], values=[73]
07D2  9A 17 36 B3 E7 07                      STRCMP_NE_JMP                 start=v[0x017], values=[6, 3], target=0x07E7
07D8  A4 16 3A 00                            MOV                           dst=v[0x016], src=0x003A
07DC  96 3A F8                               LOADSTRING                    dst=v[0x03A], values=[72]
07DF  40 AF 00 69 00                         SET_VIDEO_ORIGIN              x=175, y=105
07E4  96 14 F8                               LOADSTRING                    dst=v[0x014], values=[72]
07E7  9A 17 37 B3 FC 07                      STRCMP_NE_JMP                 start=v[0x017], values=[7, 3], target=0x07FC
07ED  A4 16 3B 00                            MOV                           dst=v[0x016], src=0x003B
07F1  96 3B F8                               LOADSTRING                    dst=v[0x03B], values=[72]
07F4  40 AF 00 69 00                         SET_VIDEO_ORIGIN              x=175, y=105
07F9  96 14 F9                               LOADSTRING                    dst=v[0x014], values=[73]
07FC  9A 17 38 B3 11 08                      STRCMP_NE_JMP                 start=v[0x017], values=[8, 3], target=0x0811
0802  A4 16 3C 00                            MOV                           dst=v[0x016], src=0x003C
0806  96 3C F8                               LOADSTRING                    dst=v[0x03C], values=[72]
0809  40 F5 00 69 00                         SET_VIDEO_ORIGIN              x=245, y=105
080E  96 14 F8                               LOADSTRING                    dst=v[0x014], values=[72]
0811  9A 17 30 B4 26 08                      STRCMP_NE_JMP                 start=v[0x017], values=[0, 4], target=0x0826
0817  A4 16 3D 00                            MOV                           dst=v[0x016], src=0x003D
081B  96 3D F8                               LOADSTRING                    dst=v[0x03D], values=[72]
081E  40 DD FF 8C 00                         SET_VIDEO_ORIGIN              x=-35, y=140
0823  96 14 F8                               LOADSTRING                    dst=v[0x014], values=[72]
0826  9A 17 31 B4 3B 08                      STRCMP_NE_JMP                 start=v[0x017], values=[1, 4], target=0x083B
082C  A4 16 3E 00                            MOV                           dst=v[0x016], src=0x003E
0830  96 3E F8                               LOADSTRING                    dst=v[0x03E], values=[72]
0833  40 DD FF 8C 00                         SET_VIDEO_ORIGIN              x=-35, y=140
0838  96 14 F9                               LOADSTRING                    dst=v[0x014], values=[73]
083B  9A 17 32 B4 50 08                      STRCMP_NE_JMP                 start=v[0x017], values=[2, 4], target=0x0850
0841  A4 16 3F 00                            MOV                           dst=v[0x016], src=0x003F
0845  96 3F F8                               LOADSTRING                    dst=v[0x03F], values=[72]
0848  40 23 00 8C 00                         SET_VIDEO_ORIGIN              x=35, y=140
084D  96 14 F8                               LOADSTRING                    dst=v[0x014], values=[72]
0850  9A 17 33 B4 65 08                      STRCMP_NE_JMP                 start=v[0x017], values=[3, 4], target=0x0865
0856  A4 16 40 00                            MOV                           dst=v[0x016], src=0x0040
085A  96 40 F8                               LOADSTRING                    dst=v[0x040], values=[72]
085D  40 23 00 8C 00                         SET_VIDEO_ORIGIN              x=35, y=140
0862  96 14 F9                               LOADSTRING                    dst=v[0x014], values=[73]
0865  9A 17 34 B4 87 08                      STRCMP_NE_JMP                 start=v[0x017], values=[4, 4], target=0x0887
086B  A4 16 41 00                            MOV                           dst=v[0x016], src=0x0041
086F  1A 08 01 B1 7B 08                      STRCMP_NE_JMP                 start=v[0x108], values=[1], target=0x087B
0875  96 41 F8                               LOADSTRING                    dst=v[0x041], values=[72]
0878  15 7F 08                               JMP                           target=0x087F
087B  16 08 01 B1                            LOADSTRING                    dst=v[0x108], values=[1]
087F  40 69 00 8C 00                         SET_VIDEO_ORIGIN              x=105, y=140
0884  96 14 F8                               LOADSTRING                    dst=v[0x014], values=[72]
0887  9A 17 35 B4 A9 08                      STRCMP_NE_JMP                 start=v[0x017], values=[5, 4], target=0x08A9
088D  A4 16 42 00                            MOV                           dst=v[0x016], src=0x0042
0891  1A 09 01 B1 9D 08                      STRCMP_NE_JMP                 start=v[0x109], values=[1], target=0x089D
0897  96 42 F8                               LOADSTRING                    dst=v[0x042], values=[72]
089A  15 A1 08                               JMP                           target=0x08A1
089D  16 09 01 B1                            LOADSTRING                    dst=v[0x109], values=[1]
08A1  40 69 00 8C 00                         SET_VIDEO_ORIGIN              x=105, y=140
08A6  96 14 F9                               LOADSTRING                    dst=v[0x014], values=[73]
08A9  9A 17 36 B4 BE 08                      STRCMP_NE_JMP                 start=v[0x017], values=[6, 4], target=0x08BE
08AF  A4 16 43 00                            MOV                           dst=v[0x016], src=0x0043
08B3  96 43 F8                               LOADSTRING                    dst=v[0x043], values=[72]
08B6  40 AF 00 8C 00                         SET_VIDEO_ORIGIN              x=175, y=140
08BB  96 14 F8                               LOADSTRING                    dst=v[0x014], values=[72]
08BE  9A 17 37 B4 D3 08                      STRCMP_NE_JMP                 start=v[0x017], values=[7, 4], target=0x08D3
08C4  A4 16 44 00                            MOV                           dst=v[0x016], src=0x0044
08C8  96 44 F8                               LOADSTRING                    dst=v[0x044], values=[72]
08CB  40 AF 00 8C 00                         SET_VIDEO_ORIGIN              x=175, y=140
08D0  96 14 F9                               LOADSTRING                    dst=v[0x014], values=[73]
08D3  9A 17 38 B4 E8 08                      STRCMP_NE_JMP                 start=v[0x017], values=[8, 4], target=0x08E8
08D9  A4 16 45 00                            MOV                           dst=v[0x016], src=0x0045
08DD  96 45 F8                               LOADSTRING                    dst=v[0x045], values=[72]
08E0  40 F5 00 8C 00                         SET_VIDEO_ORIGIN              x=245, y=140
08E5  96 14 F8                               LOADSTRING                    dst=v[0x014], values=[72]
08E8  9A 17 30 B5 FD 08                      STRCMP_NE_JMP                 start=v[0x017], values=[0, 5], target=0x08FD
08EE  A4 16 46 00                            MOV                           dst=v[0x016], src=0x0046
08F2  96 46 F8                               LOADSTRING                    dst=v[0x046], values=[72]
08F5  40 DD FF AF 00                         SET_VIDEO_ORIGIN              x=-35, y=175
08FA  96 14 F8                               LOADSTRING                    dst=v[0x014], values=[72]
08FD  9A 17 31 B5 12 09                      STRCMP_NE_JMP                 start=v[0x017], values=[1, 5], target=0x0912
0903  A4 16 47 00                            MOV                           dst=v[0x016], src=0x0047
0907  96 47 F8                               LOADSTRING                    dst=v[0x047], values=[72]
090A  40 DD FF AF 00                         SET_VIDEO_ORIGIN              x=-35, y=175
090F  96 14 F9                               LOADSTRING                    dst=v[0x014], values=[73]
0912  9A 17 32 B5 34 09                      STRCMP_NE_JMP                 start=v[0x017], values=[2, 5], target=0x0934
0918  A4 16 48 00                            MOV                           dst=v[0x016], src=0x0048
091C  1A 0A 01 B1 28 09                      STRCMP_NE_JMP                 start=v[0x10A], values=[1], target=0x0928
0922  96 48 F8                               LOADSTRING                    dst=v[0x048], values=[72]
0925  15 2C 09                               JMP                           target=0x092C
0928  16 0A 01 B1                            LOADSTRING                    dst=v[0x10A], values=[1]
092C  40 23 00 AF 00                         SET_VIDEO_ORIGIN              x=35, y=175
0931  96 14 F8                               LOADSTRING                    dst=v[0x014], values=[72]
0934  9A 17 33 B5 49 09                      STRCMP_NE_JMP                 start=v[0x017], values=[3, 5], target=0x0949
093A  A4 16 49 00                            MOV                           dst=v[0x016], src=0x0049
093E  96 49 F8                               LOADSTRING                    dst=v[0x049], values=[72]
0941  40 23 00 AF 00                         SET_VIDEO_ORIGIN              x=35, y=175
0946  96 14 F9                               LOADSTRING                    dst=v[0x014], values=[73]
0949  9A 17 34 B5 5E 09                      STRCMP_NE_JMP                 start=v[0x017], values=[4, 5], target=0x095E
094F  A4 16 4A 00                            MOV                           dst=v[0x016], src=0x004A
0953  96 4A F8                               LOADSTRING                    dst=v[0x04A], values=[72]
0956  40 69 00 AF 00                         SET_VIDEO_ORIGIN              x=105, y=175
095B  96 14 F8                               LOADSTRING                    dst=v[0x014], values=[72]
095E  9A 17 35 B5 80 09                      STRCMP_NE_JMP                 start=v[0x017], values=[5, 5], target=0x0980
0964  A4 16 4B 00                            MOV                           dst=v[0x016], src=0x004B
0968  1A 0B 01 B1 74 09                      STRCMP_NE_JMP                 start=v[0x10B], values=[1], target=0x0974
096E  96 4B F8                               LOADSTRING                    dst=v[0x04B], values=[72]
0971  15 78 09                               JMP                           target=0x0978
0974  16 0B 01 B1                            LOADSTRING                    dst=v[0x10B], values=[1]
0978  40 69 00 AF 00                         SET_VIDEO_ORIGIN              x=105, y=175
097D  96 14 F9                               LOADSTRING                    dst=v[0x014], values=[73]
0980  9A 17 36 B5 95 09                      STRCMP_NE_JMP                 start=v[0x017], values=[6, 5], target=0x0995
0986  A4 16 4C 00                            MOV                           dst=v[0x016], src=0x004C
098A  96 4C F8                               LOADSTRING                    dst=v[0x04C], values=[72]
098D  40 AF 00 AF 00                         SET_VIDEO_ORIGIN              x=175, y=175
0992  96 14 F8                               LOADSTRING                    dst=v[0x014], values=[72]
0995  9A 17 37 B5 AA 09                      STRCMP_NE_JMP                 start=v[0x017], values=[7, 5], target=0x09AA
099B  A4 16 4D 00                            MOV                           dst=v[0x016], src=0x004D
099F  96 4D F8                               LOADSTRING                    dst=v[0x04D], values=[72]
09A2  40 AF 00 AF 00                         SET_VIDEO_ORIGIN              x=175, y=175
09A7  96 14 F9                               LOADSTRING                    dst=v[0x014], values=[73]
09AA  9A 17 38 B5 BF 09                      STRCMP_NE_JMP                 start=v[0x017], values=[8, 5], target=0x09BF
09B0  A4 16 4E 00                            MOV                           dst=v[0x016], src=0x004E
09B4  96 4E F8                               LOADSTRING                    dst=v[0x04E], values=[72]
09B7  40 F5 00 AF 00                         SET_VIDEO_ORIGIN              x=245, y=175
09BC  96 14 F8                               LOADSTRING                    dst=v[0x014], values=[72]
09BF  9A 17 30 B6 D4 09                      STRCMP_NE_JMP                 start=v[0x017], values=[0, 6], target=0x09D4
09C5  A4 16 4F 00                            MOV                           dst=v[0x016], src=0x004F
09C9  96 4F F8                               LOADSTRING                    dst=v[0x04F], values=[72]
09CC  40 DD FF D2 00                         SET_VIDEO_ORIGIN              x=-35, y=210
09D1  96 14 F8                               LOADSTRING                    dst=v[0x014], values=[72]
09D4  9A 17 31 B6 E9 09                      STRCMP_NE_JMP                 start=v[0x017], values=[1, 6], target=0x09E9
09DA  A4 16 50 00                            MOV                           dst=v[0x016], src=0x0050
09DE  96 50 F8                               LOADSTRING                    dst=v[0x050], values=[72]
09E1  40 DD FF D2 00                         SET_VIDEO_ORIGIN              x=-35, y=210
09E6  96 14 F9                               LOADSTRING                    dst=v[0x014], values=[73]
09E9  9A 17 32 B6 FE 09                      STRCMP_NE_JMP                 start=v[0x017], values=[2, 6], target=0x09FE
09EF  A4 16 51 00                            MOV                           dst=v[0x016], src=0x0051
09F3  96 51 F8                               LOADSTRING                    dst=v[0x051], values=[72]
09F6  40 23 00 D2 00                         SET_VIDEO_ORIGIN              x=35, y=210
09FB  96 14 F8                               LOADSTRING                    dst=v[0x014], values=[72]
09FE  9A 17 33 B6 13 0A                      STRCMP_NE_JMP                 start=v[0x017], values=[3, 6], target=0x0A13
0A04  A4 16 52 00                            MOV                           dst=v[0x016], src=0x0052
0A08  96 52 F8                               LOADSTRING                    dst=v[0x052], values=[72]
0A0B  40 23 00 D2 00                         SET_VIDEO_ORIGIN              x=35, y=210
0A10  96 14 F9                               LOADSTRING                    dst=v[0x014], values=[73]
0A13  9A 17 34 B6 28 0A                      STRCMP_NE_JMP                 start=v[0x017], values=[4, 6], target=0x0A28
0A19  A4 16 53 00                            MOV                           dst=v[0x016], src=0x0053
0A1D  96 53 F8                               LOADSTRING                    dst=v[0x053], values=[72]
0A20  40 69 00 D2 00                         SET_VIDEO_ORIGIN              x=105, y=210
0A25  96 14 F8                               LOADSTRING                    dst=v[0x014], values=[72]
0A28  9A 17 35 B6 3D 0A                      STRCMP_NE_JMP                 start=v[0x017], values=[5, 6], target=0x0A3D
0A2E  A4 16 54 00                            MOV                           dst=v[0x016], src=0x0054
0A32  96 54 F8                               LOADSTRING                    dst=v[0x054], values=[72]
0A35  40 69 00 D2 00                         SET_VIDEO_ORIGIN              x=105, y=210
0A3A  96 14 F9                               LOADSTRING                    dst=v[0x014], values=[73]
0A3D  9A 17 36 B6 52 0A                      STRCMP_NE_JMP                 start=v[0x017], values=[6, 6], target=0x0A52
0A43  A4 16 55 00                            MOV                           dst=v[0x016], src=0x0055
0A47  96 55 F8                               LOADSTRING                    dst=v[0x055], values=[72]
0A4A  40 AF 00 D2 00                         SET_VIDEO_ORIGIN              x=175, y=210
0A4F  96 14 F8                               LOADSTRING                    dst=v[0x014], values=[72]
0A52  9A 17 37 B6 67 0A                      STRCMP_NE_JMP                 start=v[0x017], values=[7, 6], target=0x0A67
0A58  A4 16 56 00                            MOV                           dst=v[0x016], src=0x0056
0A5C  96 56 F8                               LOADSTRING                    dst=v[0x056], values=[72]
0A5F  40 AF 00 D2 00                         SET_VIDEO_ORIGIN              x=175, y=210
0A64  96 14 F9                               LOADSTRING                    dst=v[0x014], values=[73]
0A67  9A 17 38 B6 7C 0A                      STRCMP_NE_JMP                 start=v[0x017], values=[8, 6], target=0x0A7C
0A6D  A4 16 57 00                            MOV                           dst=v[0x016], src=0x0057
0A71  96 57 F8                               LOADSTRING                    dst=v[0x057], values=[72]
0A74  40 F5 00 D2 00                         SET_VIDEO_ORIGIN              x=245, y=210
0A79  96 14 F8                               LOADSTRING                    dst=v[0x014], values=[72]
0A7C  17 00                                  RET                           value=0x00
0A7E  96 17 30 B3                            LOADSTRING                    dst=v[0x017], values=[0, 3]
0A82  96 15 B0                               LOADSTRING                    dst=v[0x015], values=[0]
0A85  9C 65 28                               VIDEO_TRANSITION_REF          ref=0x2865 (JHEK[101]=jhmask.vdx)
0A88  18 0D 05                               CALL                          target=0x050D
0A8B  9A 16 B0 B7 0A                         STRCMP_NE_JMP                 start=v[0x016], values=[0], target=0x0AB7
0A90  9A 15 B1 98 0A                         STRCMP_NE_JMP                 start=v[0x015], values=[1], target=0x0A98
0A95  15 2E 0C                               JMP                           target=0x0C2E
0A98  9A 15 B3 A0 0A                         STRCMP_NE_JMP                 start=v[0x015], values=[3], target=0x0AA0
0A9D  15 2E 0C                               JMP                           target=0x0C2E
0AA0  9A 15 B0 AA 0A                         STRCMP_NE_JMP                 start=v[0x015], values=[0], target=0x0AAA
0AA5  96 13 E1                               LOADSTRING                    dst=v[0x013], values=[49]
0AA8  9F 18                                  INC                           var=v[0x018]
0AAA  9A 15 B2 B4 0A                         STRCMP_NE_JMP                 start=v[0x015], values=[2], target=0x0AB4
0AAF  96 13 E2                               LOADSTRING                    dst=v[0x013], values=[50]
0AB2  A0 18                                  DEC                           var=v[0x018]
0AB4  15 13 0C                               JMP                           target=0x0C13
0AB7  9A 16 B1 E9 0A                         STRCMP_NE_JMP                 start=v[0x016], values=[1], target=0x0AE9
0ABC  9A 15 B0 C4 0A                         STRCMP_NE_JMP                 start=v[0x015], values=[0], target=0x0AC4
0AC1  15 2E 0C                               JMP                           target=0x0C2E
0AC4  9A 15 B1 CC 0A                         STRCMP_NE_JMP                 start=v[0x015], values=[1], target=0x0ACC
0AC9  15 2E 0C                               JMP                           target=0x0C2E
0ACC  9A 15 B3 D9 0A                         STRCMP_NE_JMP                 start=v[0x015], values=[3], target=0x0AD9
0AD1  96 13 E1                               LOADSTRING                    dst=v[0x013], values=[49]
0AD4  9F 18                                  INC                           var=v[0x018]
0AD6  96 15 B0                               LOADSTRING                    dst=v[0x015], values=[0]
0AD9  9A 15 B2 E6 0A                         STRCMP_NE_JMP                 start=v[0x015], values=[2], target=0x0AE6
0ADE  96 13 E2                               LOADSTRING                    dst=v[0x013], values=[50]
0AE1  A0 17                                  DEC                           var=v[0x017]
0AE3  96 15 B1                               LOADSTRING                    dst=v[0x015], values=[1]
0AE6  15 13 0C                               JMP                           target=0x0C13
0AE9  9A 16 B2 1B 0B                         STRCMP_NE_JMP                 start=v[0x016], values=[2], target=0x0B1B
0AEE  9A 15 B0 F6 0A                         STRCMP_NE_JMP                 start=v[0x015], values=[0], target=0x0AF6
0AF3  15 2E 0C                               JMP                           target=0x0C2E
0AF6  9A 15 B3 FE 0A                         STRCMP_NE_JMP                 start=v[0x015], values=[3], target=0x0AFE
0AFB  15 2E 0C                               JMP                           target=0x0C2E
0AFE  9A 15 B2 0B 0B                         STRCMP_NE_JMP                 start=v[0x015], values=[2], target=0x0B0B
0B03  96 13 E2                               LOADSTRING                    dst=v[0x013], values=[50]
0B06  9F 17                                  INC                           var=v[0x017]
0B08  96 15 B3                               LOADSTRING                    dst=v[0x015], values=[3]
0B0B  9A 15 B1 18 0B                         STRCMP_NE_JMP                 start=v[0x015], values=[1], target=0x0B18
0B10  96 13 E1                               LOADSTRING                    dst=v[0x013], values=[49]
0B13  9F 18                                  INC                           var=v[0x018]
0B15  96 15 B0                               LOADSTRING                    dst=v[0x015], values=[0]
0B18  15 13 0C                               JMP                           target=0x0C13
0B1B  9A 16 B3 4D 0B                         STRCMP_NE_JMP                 start=v[0x016], values=[3], target=0x0B4D
0B20  9A 15 B2 28 0B                         STRCMP_NE_JMP                 start=v[0x015], values=[2], target=0x0B28
0B25  15 2E 0C                               JMP                           target=0x0C2E
0B28  9A 15 B3 30 0B                         STRCMP_NE_JMP                 start=v[0x015], values=[3], target=0x0B30
0B2D  15 2E 0C                               JMP                           target=0x0C2E
0B30  9A 15 B0 3D 0B                         STRCMP_NE_JMP                 start=v[0x015], values=[0], target=0x0B3D
0B35  96 13 E1                               LOADSTRING                    dst=v[0x013], values=[49]
0B38  9F 17                                  INC                           var=v[0x017]
0B3A  96 15 B3                               LOADSTRING                    dst=v[0x015], values=[3]
0B3D  9A 15 B1 4A 0B                         STRCMP_NE_JMP                 start=v[0x015], values=[1], target=0x0B4A
0B42  96 13 E2                               LOADSTRING                    dst=v[0x013], values=[50]
0B45  A0 18                                  DEC                           var=v[0x018]
0B47  96 15 B2                               LOADSTRING                    dst=v[0x015], values=[2]
0B4A  15 13 0C                               JMP                           target=0x0C13
0B4D  9A 16 B4 7F 0B                         STRCMP_NE_JMP                 start=v[0x016], values=[4], target=0x0B7F
0B52  9A 15 B1 5A 0B                         STRCMP_NE_JMP                 start=v[0x015], values=[1], target=0x0B5A
0B57  15 2E 0C                               JMP                           target=0x0C2E
0B5A  9A 15 B2 62 0B                         STRCMP_NE_JMP                 start=v[0x015], values=[2], target=0x0B62
0B5F  15 2E 0C                               JMP                           target=0x0C2E
0B62  9A 15 B3 6F 0B                         STRCMP_NE_JMP                 start=v[0x015], values=[3], target=0x0B6F
0B67  96 13 E1                               LOADSTRING                    dst=v[0x013], values=[49]
0B6A  A0 18                                  DEC                           var=v[0x018]
0B6C  96 15 B2                               LOADSTRING                    dst=v[0x015], values=[2]
0B6F  9A 15 B0 7C 0B                         STRCMP_NE_JMP                 start=v[0x015], values=[0], target=0x0B7C
0B74  96 13 E2                               LOADSTRING                    dst=v[0x013], values=[50]
0B77  A0 17                                  DEC                           var=v[0x017]
0B79  96 15 B1                               LOADSTRING                    dst=v[0x015], values=[1]
0B7C  15 13 0C                               JMP                           target=0x0C13
0B7F  9A 16 B5 AB 0B                         STRCMP_NE_JMP                 start=v[0x016], values=[5], target=0x0BAB
0B84  9A 15 B0 8C 0B                         STRCMP_NE_JMP                 start=v[0x015], values=[0], target=0x0B8C
0B89  15 2E 0C                               JMP                           target=0x0C2E
0B8C  9A 15 B2 94 0B                         STRCMP_NE_JMP                 start=v[0x015], values=[2], target=0x0B94
0B91  15 2E 0C                               JMP                           target=0x0C2E
0B94  9A 15 B3 9E 0B                         STRCMP_NE_JMP                 start=v[0x015], values=[3], target=0x0B9E
0B99  96 13 E1                               LOADSTRING                    dst=v[0x013], values=[49]
0B9C  9F 17                                  INC                           var=v[0x017]
0B9E  9A 15 B1 A8 0B                         STRCMP_NE_JMP                 start=v[0x015], values=[1], target=0x0BA8
0BA3  96 13 E2                               LOADSTRING                    dst=v[0x013], values=[50]
0BA6  A0 17                                  DEC                           var=v[0x017]
0BA8  15 13 0C                               JMP                           target=0x0C13
0BAB  9A 16 B6 DB 0B                         STRCMP_NE_JMP                 start=v[0x016], values=[6], target=0x0BDB
0BB0  9A 15 B0 BA 0B                         STRCMP_NE_JMP                 start=v[0x015], values=[0], target=0x0BBA
0BB5  96 13 E1                               LOADSTRING                    dst=v[0x013], values=[49]
0BB8  9F 18                                  INC                           var=v[0x018]
0BBA  9A 15 B2 C4 0B                         STRCMP_NE_JMP                 start=v[0x015], values=[2], target=0x0BC4
0BBF  96 13 E2                               LOADSTRING                    dst=v[0x013], values=[50]
0BC2  A0 18                                  DEC                           var=v[0x018]
0BC4  9A 15 B3 CE 0B                         STRCMP_NE_JMP                 start=v[0x015], values=[3], target=0x0BCE
0BC9  96 13 E3                               LOADSTRING                    dst=v[0x013], values=[51]
0BCC  9F 17                                  INC                           var=v[0x017]
0BCE  9A 15 B1 D8 0B                         STRCMP_NE_JMP                 start=v[0x015], values=[1], target=0x0BD8
0BD3  96 13 E4                               LOADSTRING                    dst=v[0x013], values=[52]
0BD6  A0 17                                  DEC                           var=v[0x017]
0BD8  15 13 0C                               JMP                           target=0x0C13
0BDB  9A 16 B7 0B 0C                         STRCMP_NE_JMP                 start=v[0x016], values=[7], target=0x0C0B
0BE0  9A 15 B0 EA 0B                         STRCMP_NE_JMP                 start=v[0x015], values=[0], target=0x0BEA
0BE5  96 13 E1                               LOADSTRING                    dst=v[0x013], values=[49]
0BE8  9F 18                                  INC                           var=v[0x018]
0BEA  9A 15 B2 F4 0B                         STRCMP_NE_JMP                 start=v[0x015], values=[2], target=0x0BF4
0BEF  96 13 E2                               LOADSTRING                    dst=v[0x013], values=[50]
0BF2  A0 18                                  DEC                           var=v[0x018]
0BF4  9A 15 B3 FE 0B                         STRCMP_NE_JMP                 start=v[0x015], values=[3], target=0x0BFE
0BF9  96 13 E3                               LOADSTRING                    dst=v[0x013], values=[51]
0BFC  9F 17                                  INC                           var=v[0x017]
0BFE  9A 15 B1 08 0C                         STRCMP_NE_JMP                 start=v[0x015], values=[1], target=0x0C08
0C03  96 13 E4                               LOADSTRING                    dst=v[0x013], values=[52]
0C06  A0 17                                  DEC                           var=v[0x017]
0C08  15 13 0C                               JMP                           target=0x0C13
0C0B  9A 16 F8 13 0C                         STRCMP_NE_JMP                 start=v[0x016], values=[72], target=0x0C13
0C10  15 2E 0C                               JMP                           target=0x0C2E
0C13  07                                     VIDEOFLAG7_ON
0C14  26 23 75 23 75 23 77 23 74 00          VIDEO_NAME                    name="{v014}{v014}{v016}{v013}"
0C1E  22                                     COPY_BG_TO_FG
0C1F  9A 17 38 B4 28 0C                      STRCMP_NE_JMP                 start=v[0x017], values=[8, 4], target=0x0C28
0C25  15 42 0C                               JMP                           target=0x0C42
0C28  9C 65 28                               VIDEO_TRANSITION_REF          ref=0x2865 (JHEK[101]=jhmask.vdx)
0C2B  15 88 0A                               JMP                           target=0x0A88
0C2E  40 00 00 00 00                         SET_VIDEO_ORIGIN              x=0, y=0
0C33  07                                     VIDEOFLAG7_ON
0C34  46                                     RESOURCE_CONTEXT_SAVE
0C35  09 90 50                               VIDEOREF                      ref=0x5090 (GAMWAV[144]=gen_e_10.vdx)
0C38  47                                     RESOURCE_CONTEXT_RESTORE
0C39  1C 72 28                               VIDEO_TRANSITION_REF          ref=0x2872 (JHEK[114]=jhfout.vdx)
0C3C  18 82 0C                               CALL                          target=0x0C82
0C3F  15 29 00                               JMP                           target=0x0029
0C42  40 DE FF 46 00                         SET_VIDEO_ORIGIN              x=-34, y=70
0C47  07                                     VIDEOFLAG7_ON
0C48  09 64 28                               VIDEOREF                      ref=0x2864 (JHEK[100]=yw.vdx)
0C4B  40 00 00 00 00                         SET_VIDEO_ORIGIN              x=0, y=0
0C50  07                                     VIDEOFLAG7_ON
0C51  46                                     RESOURCE_CONTEXT_SAVE
0C52  09 93 50                               VIDEOREF                      ref=0x5093 (GAMWAV[147]=gen_e_13.vdx)
0C55  47                                     RESOURCE_CONTEXT_RESTORE
0C56  1C 72 28                               VIDEO_TRANSITION_REF          ref=0x2872 (JHEK[114]=jhfout.vdx)
0C59  18 82 0C                               CALL                          target=0x0C82
0C5C  96 E8 E1                               LOADSTRING                    dst=v[0x0E8], values=[49]
0C5F  43 00                                  RETURNSCRIPT                  value=0x00
0C61  40 00 00 00 00                         SET_VIDEO_ORIGIN              x=0, y=0
0C66  1C 72 28                               VIDEO_TRANSITION_REF          ref=0x2872 (JHEK[114]=jhfout.vdx)
0C69  18 82 0C                               CALL                          target=0x0C82
0C6C  43 00                                  RETURNSCRIPT                  value=0x00
0C6E  40 00 00 00 00                         SET_VIDEO_ORIGIN              x=0, y=0
0C73  07                                     VIDEOFLAG7_ON
0C74  46                                     RESOURCE_CONTEXT_SAVE
0C75  09 8B 50                               VIDEOREF                      ref=0x508B (GAMWAV[139]=gen_e_5.vdx)
0C78  47                                     RESOURCE_CONTEXT_RESTORE
0C79  1C 72 28                               VIDEO_TRANSITION_REF          ref=0x2872 (JHEK[114]=jhfout.vdx)
0C7C  18 82 0C                               CALL                          target=0x0C82
0C7F  15 29 00                               JMP                           target=0x0029
0C82  40 00 00 00 00                         SET_VIDEO_ORIGIN              x=0, y=0
0C87  07                                     VIDEOFLAG7_ON
0C88  46                                     RESOURCE_CONTEXT_SAVE
0C89  09 01 24                               VIDEOREF                      ref=0x2401 (INTRO[1]=fade.vdx)
0C8C  37 00 00 50 00 7F 02 8F 01             COPY_RECT_TO_BG               left=0x0000, top=0x0050, right=0x027F, bottom=0x018F
0C95  47                                     RESOURCE_CONTEXT_RESTORE
0C96  17 00                                  RET                           value=0x00
