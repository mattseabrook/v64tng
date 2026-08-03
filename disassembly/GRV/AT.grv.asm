; T7G/AT.GRV
; size=6725 sha256=3d0fa6bcd40a832abb2ef6bf4ec9091f4c2e09ad0f74a7911488b9e5bc006a11
; instructions=1387 input_loops=6

0000  07                                     VIDEOFLAG7_ON
0001  0A                                     VIDEOFLAG5_ON
0002  46                                     RESOURCE_CONTEXT_SAVE
0003  09 76 50                               VIDEOREF                      ref=0x5076 (GAMWAV[118]=21_s_2.vdx)
0006  47                                     RESOURCE_CONTEXT_RESTORE
0007  2C 1A 07 08                            SET_HOTSPOT_TOP               target=0x071A, cursor=0x08
000B  2D F2 06 06                            SET_HOTSPOT_BOTTOM            target=0x06F2, cursor=0x06
000F  45 1C 07                               SET_HOTSPOT_LEFT              target=0x071C
0012  44 1C 07                               SET_HOTSPOT_RIGHT             target=0x071C
0015  02 0A 4C                               PLAYSONG                      ref=0x4C0A (XMI[10]=gu12.xmi)
0018  96 13 B0                               LOADSTRING                    dst=v[0x013], values=[0]
001B  96 16 B0                               LOADSTRING                    dst=v[0x016], values=[0]
001E  96 15 B0                               LOADSTRING                    dst=v[0x015], values=[0]
0021  96 14 B0                               LOADSTRING                    dst=v[0x014], values=[0]
0024  96 0F F4                               LOADSTRING                    dst=v[0x00F], values=[68]
0027  16 07 01 B0                            LOADSTRING                    dst=v[0x107], values=[0]
002B  16 08 01 B0                            LOADSTRING                    dst=v[0x108], values=[0]
002F  16 09 01 F2                            LOADSTRING                    dst=v[0x109], values=[66]
0033  16 0A 01 EC                            LOADSTRING                    dst=v[0x10A], values=[60]
0037  16 0B 01 F5                            LOADSTRING                    dst=v[0x10B], values=[69]
003B  16 0C 01 E4                            LOADSTRING                    dst=v[0x10C], values=[52]
003F  16 0D 01 B0                            LOADSTRING                    dst=v[0x10D], values=[0]
0043  1A 0D 01 B0 53 00                      STRCMP_NE_JMP                 start=v[0x10D], values=[0], target=0x0053
0049  46                                     RESOURCE_CONTEXT_SAVE
004A  07                                     VIDEOFLAG7_ON
004B  09 90 50                               VIDEOREF                      ref=0x5090 (GAMWAV[144]=gen_e_10.vdx)
004E  16 0D 01 B1                            LOADSTRING                    dst=v[0x10D], values=[1]
0052  47                                     RESOURCE_CONTEXT_RESTORE
0053  96 19 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 B0 LOADSTRING                    dst=v[0x019], values=[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
007D  1C 17 00                               VIDEO_TRANSITION_REF          ref=0x0017 (AT[23]=atpb81.vdx)
0080  0B                                     INPUTLOOPSTART
0081  0D A7 00 4A 01 C7 00 6C 01 94 08 0A    HOTSPOT_RECT                  left=0x00A7, top=0x014A, right=0x00C7, bottom=0x016C, target=0x0894, cursor=0x0A
008D  0D CF 00 46 01 E7 00 7E 01 21 09 09    HOTSPOT_RECT                  left=0x00CF, top=0x0146, right=0x00E7, bottom=0x017E, target=0x0921, cursor=0x09
0099  0D F6 00 4C 01 0D 01 84 01 AE 09 0A    HOTSPOT_RECT                  left=0x00F6, top=0x014C, right=0x010D, bottom=0x0184, target=0x09AE, cursor=0x0A
00A5  0D 1D 01 4E 01 38 01 88 01 3B 0A 09    HOTSPOT_RECT                  left=0x011D, top=0x014E, right=0x0138, bottom=0x0188, target=0x0A3B, cursor=0x09
00B1  0D 43 01 53 01 68 01 86 01 C8 0A 0A    HOTSPOT_RECT                  left=0x0143, top=0x0153, right=0x0168, bottom=0x0186, target=0x0AC8, cursor=0x0A
00BD  0D 6D 01 4F 01 91 01 83 01 40 0B 09    HOTSPOT_RECT                  left=0x016D, top=0x014F, right=0x0191, bottom=0x0183, target=0x0B40, cursor=0x09
00C9  0D 9B 01 49 01 B0 01 7E 01 AC 0B 0A    HOTSPOT_RECT                  left=0x019B, top=0x0149, right=0x01B0, bottom=0x017E, target=0x0BAC, cursor=0x0A
00D5  0D BA 01 4C 01 D8 01 6B 01 00 0C 09    HOTSPOT_RECT                  left=0x01BA, top=0x014C, right=0x01D8, bottom=0x016B, target=0x0C00, cursor=0x09
00E1  13                                     INPUTLOOPEND
00E2  96 19 30 30 30 30 30 30 39 39 30 30 30 30 30 30 39 39 30 30 30 30 30 30 39 39 30 30 30 30 30 30 39 39 39 39 39 39 39 39 39 B9 LOADSTRING                    dst=v[0x019], values=[0, 0, 0, 0, 0, 0, 9, 9, 0, 0, 0, 0, 0, 0, 9, 9, 0, 0, 0, 0, 0, 0, 9, 9, 0, 0, 0, 0, 0, 0, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9]
010C  1C 16 00                               VIDEO_TRANSITION_REF          ref=0x0016 (AT[22]=atpb61.vdx)
010F  0B                                     INPUTLOOPSTART
0110  0D B2 00 3B 01 D0 00 80 01 94 08 0A    HOTSPOT_RECT                  left=0x00B2, top=0x013B, right=0x00D0, bottom=0x0180, target=0x0894, cursor=0x0A
011C  0D E0 00 3F 01 FE 00 87 01 21 09 09    HOTSPOT_RECT                  left=0x00E0, top=0x013F, right=0x00FE, bottom=0x0187, target=0x0921, cursor=0x09
0128  0D 0C 01 47 01 3C 01 89 01 AE 09 0A    HOTSPOT_RECT                  left=0x010C, top=0x0147, right=0x013C, bottom=0x0189, target=0x09AE, cursor=0x0A
0134  0D 4D 01 42 01 6D 01 8E 01 3B 0A 09    HOTSPOT_RECT                  left=0x014D, top=0x0142, right=0x016D, bottom=0x018E, target=0x0A3B, cursor=0x09
0140  0D 83 01 3E 01 A1 01 87 01 C8 0A 0A    HOTSPOT_RECT                  left=0x0183, top=0x013E, right=0x01A1, bottom=0x0187, target=0x0AC8, cursor=0x0A
014C  0D AB 01 3D 01 D3 01 7A 01 40 0B 09    HOTSPOT_RECT                  left=0x01AB, top=0x013D, right=0x01D3, bottom=0x017A, target=0x0B40, cursor=0x09
0158  13                                     INPUTLOOPEND
0159  1A 0D 01 B1 69 01                      STRCMP_NE_JMP                 start=v[0x10D], values=[1], target=0x0169
015F  46                                     RESOURCE_CONTEXT_SAVE
0160  07                                     VIDEOFLAG7_ON
0161  09 75 50                               VIDEOREF                      ref=0x5075 (GAMWAV[117]=21_s_1.vdx)
0164  16 0D 01 B2                            LOADSTRING                    dst=v[0x10D], values=[2]
0168  47                                     RESOURCE_CONTEXT_RESTORE
0169  96 19 30 30 30 30 39 39 39 39 30 30 30 30 39 39 39 39 30 30 30 30 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 B9 LOADSTRING                    dst=v[0x019], values=[0, 0, 0, 0, 9, 9, 9, 9, 0, 0, 0, 0, 9, 9, 9, 9, 0, 0, 0, 0, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9]
0193  1C 15 00                               VIDEO_TRANSITION_REF          ref=0x0015 (AT[21]=atpb41.vdx)
0196  0B                                     INPUTLOOPSTART
0197  0D EE 00 46 01 0D 01 75 01 94 08 0A    HOTSPOT_RECT                  left=0x00EE, top=0x0146, right=0x010D, bottom=0x0175, target=0x0894, cursor=0x0A
01A3  0D 15 01 4C 01 3A 01 81 01 21 09 09    HOTSPOT_RECT                  left=0x0115, top=0x014C, right=0x013A, bottom=0x0181, target=0x0921, cursor=0x09
01AF  0D 45 01 53 01 6B 01 77 01 AE 09 0A    HOTSPOT_RECT                  left=0x0145, top=0x0153, right=0x016B, bottom=0x0177, target=0x09AE, cursor=0x0A
01BB  0D 77 01 43 01 90 01 7A 01 3B 0A 09    HOTSPOT_RECT                  left=0x0177, top=0x0143, right=0x0190, bottom=0x017A, target=0x0A3B, cursor=0x09
01C7  13                                     INPUTLOOPEND
01C8  1A 07 01 B0 7B 04                      STRCMP_NE_JMP                 start=v[0x107], values=[0], target=0x047B
01CE  0B                                     INPUTLOOPSTART
01CF  B6 19 E1 E0 01                         CHAR_LESS_JMP                 start=v[0x019], values=[49], target=0x01E0
01D4  0D A7 00 4A 01 C7 00 6C 01 94 08 09    HOTSPOT_RECT                  left=0x00A7, top=0x014A, right=0x00C7, bottom=0x016C, target=0x0894, cursor=0x09
01E0  B6 1A E1 F1 01                         CHAR_LESS_JMP                 start=v[0x01A], values=[49], target=0x01F1
01E5  0D CF 00 46 01 E7 00 7E 01 21 09 0A    HOTSPOT_RECT                  left=0x00CF, top=0x0146, right=0x00E7, bottom=0x017E, target=0x0921, cursor=0x0A
01F1  B6 1B E1 02 02                         CHAR_LESS_JMP                 start=v[0x01B], values=[49], target=0x0202
01F6  0D F6 00 4C 01 0D 01 84 01 AE 09 09    HOTSPOT_RECT                  left=0x00F6, top=0x014C, right=0x010D, bottom=0x0184, target=0x09AE, cursor=0x09
0202  B6 1C E1 13 02                         CHAR_LESS_JMP                 start=v[0x01C], values=[49], target=0x0213
0207  0D 1D 01 4E 01 38 01 88 01 3B 0A 0A    HOTSPOT_RECT                  left=0x011D, top=0x014E, right=0x0138, bottom=0x0188, target=0x0A3B, cursor=0x0A
0213  B6 1D E1 24 02                         CHAR_LESS_JMP                 start=v[0x01D], values=[49], target=0x0224
0218  0D 43 01 53 01 68 01 86 01 C8 0A 09    HOTSPOT_RECT                  left=0x0143, top=0x0153, right=0x0168, bottom=0x0186, target=0x0AC8, cursor=0x09
0224  B6 1E E1 35 02                         CHAR_LESS_JMP                 start=v[0x01E], values=[49], target=0x0235
0229  0D 6D 01 4F 01 91 01 83 01 40 0B 0A    HOTSPOT_RECT                  left=0x016D, top=0x014F, right=0x0191, bottom=0x0183, target=0x0B40, cursor=0x0A
0235  B6 1F E1 46 02                         CHAR_LESS_JMP                 start=v[0x01F], values=[49], target=0x0246
023A  0D 9B 01 49 01 B0 01 7E 01 AC 0B 09    HOTSPOT_RECT                  left=0x019B, top=0x0149, right=0x01B0, bottom=0x017E, target=0x0BAC, cursor=0x09
0246  B6 20 E1 57 02                         CHAR_LESS_JMP                 start=v[0x020], values=[49], target=0x0257
024B  0D BA 01 4C 01 D8 01 6B 01 00 0C 0A    HOTSPOT_RECT                  left=0x01BA, top=0x014C, right=0x01D8, bottom=0x016B, target=0x0C00, cursor=0x0A
0257  B6 21 E1 68 02                         CHAR_LESS_JMP                 start=v[0x021], values=[49], target=0x0268
025C  0D A9 00 10 01 C6 00 3D 01 54 0C 09    HOTSPOT_RECT                  left=0x00A9, top=0x0110, right=0x00C6, bottom=0x013D, target=0x0C54, cursor=0x09
0268  B6 22 E1 79 02                         CHAR_LESS_JMP                 start=v[0x022], values=[49], target=0x0279
026D  0D CE 00 0D 01 E8 00 44 01 E1 0C 0A    HOTSPOT_RECT                  left=0x00CE, top=0x010D, right=0x00E8, bottom=0x0144, target=0x0CE1, cursor=0x0A
0279  B6 23 E1 8A 02                         CHAR_LESS_JMP                 start=v[0x023], values=[49], target=0x028A
027E  0D F4 00 0F 01 0E 01 49 01 6E 0D 09    HOTSPOT_RECT                  left=0x00F4, top=0x010F, right=0x010E, bottom=0x0149, target=0x0D6E, cursor=0x09
028A  B6 24 E1 9B 02                         CHAR_LESS_JMP                 start=v[0x024], values=[49], target=0x029B
028F  0D 1D 01 10 01 39 01 4C 01 FB 0D 0A    HOTSPOT_RECT                  left=0x011D, top=0x0110, right=0x0139, bottom=0x014C, target=0x0DFB, cursor=0x0A
029B  B6 25 E1 AC 02                         CHAR_LESS_JMP                 start=v[0x025], values=[49], target=0x02AC
02A0  0D 4A 01 12 01 64 01 4C 01 88 0E 09    HOTSPOT_RECT                  left=0x014A, top=0x0112, right=0x0164, bottom=0x014C, target=0x0E88, cursor=0x09
02AC  B6 26 E1 BD 02                         CHAR_LESS_JMP                 start=v[0x026], values=[49], target=0x02BD
02B1  0D 6E 01 19 01 91 01 3A 01 00 0F 0A    HOTSPOT_RECT                  left=0x016E, top=0x0119, right=0x0191, bottom=0x013A, target=0x0F00, cursor=0x0A
02BD  B6 27 E1 CE 02                         CHAR_LESS_JMP                 start=v[0x027], values=[49], target=0x02CE
02C2  0D 96 01 18 01 B5 01 36 01 78 0F 09    HOTSPOT_RECT                  left=0x0196, top=0x0118, right=0x01B5, bottom=0x0136, target=0x0F78, cursor=0x09
02CE  B6 28 E1 DF 02                         CHAR_LESS_JMP                 start=v[0x028], values=[49], target=0x02DF
02D3  0D BA 01 10 01 D8 01 3B 01 CC 0F 0A    HOTSPOT_RECT                  left=0x01BA, top=0x0110, right=0x01D8, bottom=0x013B, target=0x0FCC, cursor=0x0A
02DF  B6 29 E1 F0 02                         CHAR_LESS_JMP                 start=v[0x029], values=[49], target=0x02F0
02E4  0D A9 00 DE 00 C7 00 FD 00 20 10 09    HOTSPOT_RECT                  left=0x00A9, top=0x00DE, right=0x00C7, bottom=0x00FD, target=0x1020, cursor=0x09
02F0  B6 2A E1 01 03                         CHAR_LESS_JMP                 start=v[0x02A], values=[49], target=0x0301
02F5  0D CB 00 D8 00 EB 00 06 01 B6 10 0A    HOTSPOT_RECT                  left=0x00CB, top=0x00D8, right=0x00EB, bottom=0x0106, target=0x10B6, cursor=0x0A
0301  B6 2B E1 12 03                         CHAR_LESS_JMP                 start=v[0x02B], values=[49], target=0x0312
0306  0D F0 00 DE 00 12 01 FC 00 4C 11 09    HOTSPOT_RECT                  left=0x00F0, top=0x00DE, right=0x0112, bottom=0x00FC, target=0x114C, cursor=0x09
0312  B6 2C E1 23 03                         CHAR_LESS_JMP                 start=v[0x02C], values=[49], target=0x0323
0317  0D 1E 01 D4 00 36 01 0C 01 D3 11 0A    HOTSPOT_RECT                  left=0x011E, top=0x00D4, right=0x0136, bottom=0x010C, target=0x11D3, cursor=0x0A
0323  B6 2D E1 34 03                         CHAR_LESS_JMP                 start=v[0x02D], values=[49], target=0x0334
0328  0D 49 01 D2 00 64 01 0D 01 69 12 09    HOTSPOT_RECT                  left=0x0149, top=0x00D2, right=0x0164, bottom=0x010D, target=0x1269, cursor=0x09
0334  B6 2E E1 45 03                         CHAR_LESS_JMP                 start=v[0x02E], values=[49], target=0x0345
0339  0D 72 01 D4 00 8D 01 0B 01 E1 12 0A    HOTSPOT_RECT                  left=0x0172, top=0x00D4, right=0x018D, bottom=0x010B, target=0x12E1, cursor=0x0A
0345  B6 2F E1 56 03                         CHAR_LESS_JMP                 start=v[0x02F], values=[49], target=0x0356
034A  0D 96 01 D8 00 B5 01 06 01 59 13 09    HOTSPOT_RECT                  left=0x0196, top=0x00D8, right=0x01B5, bottom=0x0106, target=0x1359, cursor=0x09
0356  B6 30 E1 67 03                         CHAR_LESS_JMP                 start=v[0x030], values=[49], target=0x0367
035B  0D BD 01 D5 00 D4 01 0A 01 AD 13 0A    HOTSPOT_RECT                  left=0x01BD, top=0x00D5, right=0x01D4, bottom=0x010A, target=0x13AD, cursor=0x0A
0367  B6 31 E1 78 03                         CHAR_LESS_JMP                 start=v[0x031], values=[49], target=0x0378
036C  0D AF 00 A0 00 C2 00 D3 00 01 14 09    HOTSPOT_RECT                  left=0x00AF, top=0x00A0, right=0x00C2, bottom=0x00D3, target=0x1401, cursor=0x09
0378  B6 32 E1 89 03                         CHAR_LESS_JMP                 start=v[0x032], values=[49], target=0x0389
037D  0D CB 00 A5 00 EA 00 C3 00 82 14 0A    HOTSPOT_RECT                  left=0x00CB, top=0x00A5, right=0x00EA, bottom=0x00C3, target=0x1482, cursor=0x0A
0389  B6 33 E1 9A 03                         CHAR_LESS_JMP                 start=v[0x033], values=[49], target=0x039A
038E  0D F0 00 9D 00 12 01 CB 00 F7 14 09    HOTSPOT_RECT                  left=0x00F0, top=0x009D, right=0x0112, bottom=0x00CB, target=0x14F7, cursor=0x09
039A  B6 34 E1 AB 03                         CHAR_LESS_JMP                 start=v[0x034], values=[49], target=0x03AB
039F  0D 17 01 97 00 3C 01 CA 00 78 15 0A    HOTSPOT_RECT                  left=0x0117, top=0x0097, right=0x013C, bottom=0x00CA, target=0x1578, cursor=0x0A
03AB  B6 35 E1 BC 03                         CHAR_LESS_JMP                 start=v[0x035], values=[49], target=0x03BC
03B0  0D 43 01 9E 00 6A 01 C1 00 F9 15 09    HOTSPOT_RECT                  left=0x0143, top=0x009E, right=0x016A, bottom=0x00C1, target=0x15F9, cursor=0x09
03BC  B6 36 E1 CD 03                         CHAR_LESS_JMP                 start=v[0x036], values=[49], target=0x03CD
03C1  0D 74 01 99 00 8B 01 D0 00 7A 16 0A    HOTSPOT_RECT                  left=0x0174, top=0x0099, right=0x018B, bottom=0x00D0, target=0x167A, cursor=0x0A
03CD  B6 37 E1 DE 03                         CHAR_LESS_JMP                 start=v[0x037], values=[49], target=0x03DE
03D2  0D 96 01 9E 00 B5 01 CD 00 FB 16 09    HOTSPOT_RECT                  left=0x0196, top=0x009E, right=0x01B5, bottom=0x00CD, target=0x16FB, cursor=0x09
03DE  B6 38 E1 EF 03                         CHAR_LESS_JMP                 start=v[0x038], values=[49], target=0x03EF
03E3  0D BE 01 A0 00 D4 01 D3 00 4F 17 0A    HOTSPOT_RECT                  left=0x01BE, top=0x00A0, right=0x01D4, bottom=0x00D3, target=0x174F, cursor=0x0A
03EF  B6 39 E1 00 04                         CHAR_LESS_JMP                 start=v[0x039], values=[49], target=0x0400
03F4  0D AE 00 6B 00 C2 00 9B 00 A3 17 09    HOTSPOT_RECT                  left=0x00AE, top=0x006B, right=0x00C2, bottom=0x009B, target=0x17A3, cursor=0x09
0400  B6 3A E1 11 04                         CHAR_LESS_JMP                 start=v[0x03A], values=[49], target=0x0411
0405  0D CB 00 67 00 EB 00 92 00 F7 17 0A    HOTSPOT_RECT                  left=0x00CB, top=0x0067, right=0x00EB, bottom=0x0092, target=0x17F7, cursor=0x0A
0411  B6 3B E1 22 04                         CHAR_LESS_JMP                 start=v[0x03B], values=[49], target=0x0422
0416  0D F5 00 61 00 0D 01 94 00 4B 18 09    HOTSPOT_RECT                  left=0x00F5, top=0x0061, right=0x010D, bottom=0x0094, target=0x184B, cursor=0x09
0422  B6 3C E1 33 04                         CHAR_LESS_JMP                 start=v[0x03C], values=[49], target=0x0433
0427  0D 1F 01 57 00 37 01 90 00 9F 18 0A    HOTSPOT_RECT                  left=0x011F, top=0x0057, right=0x0137, bottom=0x0090, target=0x189F, cursor=0x0A
0433  B6 3D E1 44 04                         CHAR_LESS_JMP                 start=v[0x03D], values=[49], target=0x0444
0438  0D 4B 01 58 00 64 01 92 00 F3 18 09    HOTSPOT_RECT                  left=0x014B, top=0x0058, right=0x0164, bottom=0x0092, target=0x18F3, cursor=0x09
0444  B6 3E E1 55 04                         CHAR_LESS_JMP                 start=v[0x03E], values=[49], target=0x0455
0449  0D 73 01 5F 00 8D 01 95 00 47 19 0A    HOTSPOT_RECT                  left=0x0173, top=0x005F, right=0x018D, bottom=0x0095, target=0x1947, cursor=0x0A
0455  B6 3F E1 66 04                         CHAR_LESS_JMP                 start=v[0x03F], values=[49], target=0x0466
045A  0D 9A 01 64 00 B2 01 9A 00 9B 19 09    HOTSPOT_RECT                  left=0x019A, top=0x0064, right=0x01B2, bottom=0x009A, target=0x199B, cursor=0x09
0466  B6 40 E1 77 04                         CHAR_LESS_JMP                 start=v[0x040], values=[49], target=0x0477
046B  0D BA 01 6A 00 D7 01 96 00 EF 19 0A    HOTSPOT_RECT                  left=0x01BA, top=0x006A, right=0x01D7, bottom=0x0096, target=0x19EF, cursor=0x0A
0477  13                                     INPUTLOOPEND
0478  15 F2 06                               JMP                           target=0x06F2
047B  1A 07 01 B1 1E 06                      STRCMP_NE_JMP                 start=v[0x107], values=[1], target=0x061E
0481  0B                                     INPUTLOOPSTART
0482  B6 19 E1 93 04                         CHAR_LESS_JMP                 start=v[0x019], values=[49], target=0x0493
0487  0D B2 00 3B 01 D0 00 80 01 94 08 09    HOTSPOT_RECT                  left=0x00B2, top=0x013B, right=0x00D0, bottom=0x0180, target=0x0894, cursor=0x09
0493  B6 1A E1 A4 04                         CHAR_LESS_JMP                 start=v[0x01A], values=[49], target=0x04A4
0498  0D E0 00 3F 01 FE 00 87 01 21 09 0A    HOTSPOT_RECT                  left=0x00E0, top=0x013F, right=0x00FE, bottom=0x0187, target=0x0921, cursor=0x0A
04A4  B6 1B E1 B5 04                         CHAR_LESS_JMP                 start=v[0x01B], values=[49], target=0x04B5
04A9  0D 0C 01 47 01 3C 01 89 01 AE 09 09    HOTSPOT_RECT                  left=0x010C, top=0x0147, right=0x013C, bottom=0x0189, target=0x09AE, cursor=0x09
04B5  B6 1C E1 C6 04                         CHAR_LESS_JMP                 start=v[0x01C], values=[49], target=0x04C6
04BA  0D 4D 01 42 01 6D 01 8E 01 3B 0A 0A    HOTSPOT_RECT                  left=0x014D, top=0x0142, right=0x016D, bottom=0x018E, target=0x0A3B, cursor=0x0A
04C6  B6 1D E1 D7 04                         CHAR_LESS_JMP                 start=v[0x01D], values=[49], target=0x04D7
04CB  0D 83 01 3E 01 A1 01 87 01 C8 0A 09    HOTSPOT_RECT                  left=0x0183, top=0x013E, right=0x01A1, bottom=0x0187, target=0x0AC8, cursor=0x09
04D7  B6 1E E1 E8 04                         CHAR_LESS_JMP                 start=v[0x01E], values=[49], target=0x04E8
04DC  0D AB 01 3D 01 D3 01 7A 01 40 0B 0A    HOTSPOT_RECT                  left=0x01AB, top=0x013D, right=0x01D3, bottom=0x017A, target=0x0B40, cursor=0x0A
04E8  B6 21 E1 F9 04                         CHAR_LESS_JMP                 start=v[0x021], values=[49], target=0x04F9
04ED  0D AD 00 F5 00 D5 00 32 01 54 0C 09    HOTSPOT_RECT                  left=0x00AD, top=0x00F5, right=0x00D5, bottom=0x0132, target=0x0C54, cursor=0x09
04F9  B6 22 E1 0A 05                         CHAR_LESS_JMP                 start=v[0x022], values=[49], target=0x050A
04FE  0D E0 00 F1 00 00 01 3A 01 E1 0C 0A    HOTSPOT_RECT                  left=0x00E0, top=0x00F1, right=0x0100, bottom=0x013A, target=0x0CE1, cursor=0x0A
050A  B6 23 E1 1B 05                         CHAR_LESS_JMP                 start=v[0x023], values=[49], target=0x051B
050F  0D 13 01 F1 00 35 01 3E 01 6E 0D 09    HOTSPOT_RECT                  left=0x0113, top=0x00F1, right=0x0135, bottom=0x013E, target=0x0D6E, cursor=0x09
051B  B6 24 E1 2C 05                         CHAR_LESS_JMP                 start=v[0x024], values=[49], target=0x052C
0520  0D 45 01 00 01 74 01 2B 01 FB 0D 0A    HOTSPOT_RECT                  left=0x0145, top=0x0100, right=0x0174, bottom=0x012B, target=0x0DFB, cursor=0x0A
052C  B6 25 E1 3D 05                         CHAR_LESS_JMP                 start=v[0x025], values=[49], target=0x053D
0531  0D 7B 01 F6 00 A5 01 34 01 88 0E 09    HOTSPOT_RECT                  left=0x017B, top=0x00F6, right=0x01A5, bottom=0x0134, target=0x0E88, cursor=0x09
053D  B6 26 E1 4E 05                         CHAR_LESS_JMP                 start=v[0x026], values=[49], target=0x054E
0542  0D AC 01 F6 00 D3 01 30 01 00 0F 0A    HOTSPOT_RECT                  left=0x01AC, top=0x00F6, right=0x01D3, bottom=0x0130, target=0x0F00, cursor=0x0A
054E  B6 29 E1 5F 05                         CHAR_LESS_JMP                 start=v[0x029], values=[49], target=0x055F
0553  0D AE 00 B6 00 D4 00 DC 00 20 10 09    HOTSPOT_RECT                  left=0x00AE, top=0x00B6, right=0x00D4, bottom=0x00DC, target=0x1020, cursor=0x09
055F  B6 2A E1 70 05                         CHAR_LESS_JMP                 start=v[0x02A], values=[49], target=0x0570
0564  0D DA 00 AA 00 05 01 E8 00 B6 10 0A    HOTSPOT_RECT                  left=0x00DA, top=0x00AA, right=0x0105, bottom=0x00E8, target=0x10B6, cursor=0x0A
0570  B6 2B E1 81 05                         CHAR_LESS_JMP                 start=v[0x02B], values=[49], target=0x0581
0575  0D 0D 01 AF 00 3C 01 DC 00 4C 11 09    HOTSPOT_RECT                  left=0x010D, top=0x00AF, right=0x013C, bottom=0x00DC, target=0x114C, cursor=0x09
0581  B6 2C E1 92 05                         CHAR_LESS_JMP                 start=v[0x02C], values=[49], target=0x0592
0586  0D 4D 01 A3 00 6D 01 EE 00 D3 11 0A    HOTSPOT_RECT                  left=0x014D, top=0x00A3, right=0x016D, bottom=0x00EE, target=0x11D3, cursor=0x0A
0592  B6 2D E1 A3 05                         CHAR_LESS_JMP                 start=v[0x02D], values=[49], target=0x05A3
0597  0D 7A 01 AA 00 A6 01 E8 00 69 12 09    HOTSPOT_RECT                  left=0x017A, top=0x00AA, right=0x01A6, bottom=0x00E8, target=0x1269, cursor=0x09
05A3  B6 2E E1 B4 05                         CHAR_LESS_JMP                 start=v[0x02E], values=[49], target=0x05B4
05A8  0D B2 01 AC 00 CD 01 ED 00 E1 12 0A    HOTSPOT_RECT                  left=0x01B2, top=0x00AC, right=0x01CD, bottom=0x00ED, target=0x12E1, cursor=0x0A
05B4  B6 31 E1 C5 05                         CHAR_LESS_JMP                 start=v[0x031], values=[49], target=0x05C5
05B9  0D B2 00 69 00 CF 00 A5 00 01 14 09    HOTSPOT_RECT                  left=0x00B2, top=0x0069, right=0x00CF, bottom=0x00A5, target=0x1401, cursor=0x09
05C5  B6 32 E1 D6 05                         CHAR_LESS_JMP                 start=v[0x032], values=[49], target=0x05D6
05CA  0D DB 00 67 00 06 01 8F 00 82 14 0A    HOTSPOT_RECT                  left=0x00DB, top=0x0067, right=0x0106, bottom=0x008F, target=0x1482, cursor=0x0A
05D6  B6 33 E1 E7 05                         CHAR_LESS_JMP                 start=v[0x033], values=[49], target=0x05E7
05DB  0D 15 01 5A 00 34 01 9C 00 F7 14 09    HOTSPOT_RECT                  left=0x0115, top=0x005A, right=0x0134, bottom=0x009C, target=0x14F7, cursor=0x09
05E7  B6 34 E1 F8 05                         CHAR_LESS_JMP                 start=v[0x034], values=[49], target=0x05F8
05EC  0D 4B 01 56 00 6F 01 9E 00 78 15 0A    HOTSPOT_RECT                  left=0x014B, top=0x0056, right=0x016F, bottom=0x009E, target=0x1578, cursor=0x0A
05F8  B6 35 E1 09 06                         CHAR_LESS_JMP                 start=v[0x035], values=[49], target=0x0609
05FD  0D 7C 01 5F 00 A5 01 9C 00 F9 15 09    HOTSPOT_RECT                  left=0x017C, top=0x005F, right=0x01A5, bottom=0x009C, target=0x15F9, cursor=0x09
0609  B6 36 E1 1A 06                         CHAR_LESS_JMP                 start=v[0x036], values=[49], target=0x061A
060E  0D B1 01 65 00 CF 01 A7 00 7A 16 0A    HOTSPOT_RECT                  left=0x01B1, top=0x0065, right=0x01CF, bottom=0x00A7, target=0x167A, cursor=0x0A
061A  13                                     INPUTLOOPEND
061B  15 F2 06                               JMP                           target=0x06F2
061E  1A 07 01 B2 F2 06                      STRCMP_NE_JMP                 start=v[0x107], values=[2], target=0x06F2
0624  0B                                     INPUTLOOPSTART
0625  B6 19 E1 36 06                         CHAR_LESS_JMP                 start=v[0x019], values=[49], target=0x0636
062A  0D EE 00 46 01 0D 01 75 01 94 08 09    HOTSPOT_RECT                  left=0x00EE, top=0x0146, right=0x010D, bottom=0x0175, target=0x0894, cursor=0x09
0636  B6 1A E1 47 06                         CHAR_LESS_JMP                 start=v[0x01A], values=[49], target=0x0647
063B  0D 15 01 4C 01 3A 01 81 01 21 09 0A    HOTSPOT_RECT                  left=0x0115, top=0x014C, right=0x013A, bottom=0x0181, target=0x0921, cursor=0x0A
0647  B6 1B E1 58 06                         CHAR_LESS_JMP                 start=v[0x01B], values=[49], target=0x0658
064C  0D 45 01 53 01 6B 01 77 01 AE 09 09    HOTSPOT_RECT                  left=0x0145, top=0x0153, right=0x016B, bottom=0x0177, target=0x09AE, cursor=0x09
0658  B6 1C E1 69 06                         CHAR_LESS_JMP                 start=v[0x01C], values=[49], target=0x0669
065D  0D 77 01 43 01 90 01 7A 01 3B 0A 0A    HOTSPOT_RECT                  left=0x0177, top=0x0143, right=0x0190, bottom=0x017A, target=0x0A3B, cursor=0x0A
0669  B6 21 E1 7A 06                         CHAR_LESS_JMP                 start=v[0x021], values=[49], target=0x067A
066E  0D F3 00 02 01 0A 01 3D 01 54 0C 09    HOTSPOT_RECT                  left=0x00F3, top=0x0102, right=0x010A, bottom=0x013D, target=0x0C54, cursor=0x09
067A  B6 22 E1 8B 06                         CHAR_LESS_JMP                 start=v[0x022], values=[49], target=0x068B
067F  0D 14 01 0D 01 3E 01 36 01 E1 0C 0A    HOTSPOT_RECT                  left=0x0114, top=0x010D, right=0x013E, bottom=0x0136, target=0x0CE1, cursor=0x0A
068B  B6 23 E1 9C 06                         CHAR_LESS_JMP                 start=v[0x023], values=[49], target=0x069C
0690  0D 42 01 06 01 6D 01 3D 01 6E 0D 09    HOTSPOT_RECT                  left=0x0142, top=0x0106, right=0x016D, bottom=0x013D, target=0x0D6E, cursor=0x09
069C  B6 24 E1 AD 06                         CHAR_LESS_JMP                 start=v[0x024], values=[49], target=0x06AD
06A1  0D 76 01 01 01 92 01 3D 01 FB 0D 0A    HOTSPOT_RECT                  left=0x0176, top=0x0101, right=0x0192, bottom=0x013D, target=0x0DFB, cursor=0x0A
06AD  B6 29 E1 BE 06                         CHAR_LESS_JMP                 start=v[0x029], values=[49], target=0x06BE
06B2  0D EE 00 CB 00 0D 01 F6 00 20 10 09    HOTSPOT_RECT                  left=0x00EE, top=0x00CB, right=0x010D, bottom=0x00F6, target=0x1020, cursor=0x09
06BE  B6 2A E1 CF 06                         CHAR_LESS_JMP                 start=v[0x02A], values=[49], target=0x06CF
06C3  0D 16 01 CB 00 3C 01 EE 00 B6 10 0A    HOTSPOT_RECT                  left=0x0116, top=0x00CB, right=0x013C, bottom=0x00EE, target=0x10B6, cursor=0x0A
06CF  B6 2B E1 E0 06                         CHAR_LESS_JMP                 start=v[0x02B], values=[49], target=0x06E0
06D4  0D 45 01 CB 00 6B 01 F0 00 4C 11 09    HOTSPOT_RECT                  left=0x0145, top=0x00CB, right=0x016B, bottom=0x00F0, target=0x114C, cursor=0x09
06E0  B6 2C E1 F1 06                         CHAR_LESS_JMP                 start=v[0x02C], values=[49], target=0x06F1
06E5  0D 73 01 CD 00 93 01 F5 00 D3 11 0A    HOTSPOT_RECT                  left=0x0173, top=0x00CD, right=0x0193, bottom=0x00F5, target=0x11D3, cursor=0x0A
06F1  13                                     INPUTLOOPEND
06F2  07                                     VIDEOFLAG7_ON
06F3  46                                     RESOURCE_CONTEXT_SAVE
06F4  09 8B 50                               VIDEOREF                      ref=0x508B (GAMWAV[139]=gen_e_5.vdx)
06F7  47                                     RESOURCE_CONTEXT_RESTORE
06F8  35                                     VIDEOFLAG7_OFF
06F9  1A 07 01 B2 06 07                      STRCMP_NE_JMP                 start=v[0x107], values=[2], target=0x0706
06FF  09 08 00                               VIDEOREF                      ref=0x0008 (AT[8]=at2p.vdx)
0702  16 07 01 B1                            LOADSTRING                    dst=v[0x107], values=[1]
0706  1A 07 01 B1 13 07                      STRCMP_NE_JMP                 start=v[0x107], values=[1], target=0x0713
070C  09 0C 00                               VIDEOREF                      ref=0x000C (AT[12]=at3p.vdx)
070F  16 07 01 B0                            LOADSTRING                    dst=v[0x107], values=[0]
0713  05                                     FIRSTFRAME_NEXT_VIDEO
0714  09 0D 00                               VIDEOREF                      ref=0x000D (AT[13]=at3pb.vdx)
0717  15 18 00                               JMP                           target=0x0018
071A  43 01                                  RETURNSCRIPT                  value=0x01
071C  1A 07 01 B0 2B 07                      STRCMP_NE_JMP                 start=v[0x107], values=[0], target=0x072B
0722  09 0D 00                               VIDEOREF                      ref=0x000D (AT[13]=at3pb.vdx)
0725  09 09 00                               VIDEOREF                      ref=0x0009 (AT[9]=at2pb.vdx)
0728  15 34 07                               JMP                           target=0x0734
072B  1A 07 01 B1 34 07                      STRCMP_NE_JMP                 start=v[0x107], values=[1], target=0x0734
0731  09 09 00                               VIDEOREF                      ref=0x0009 (AT[9]=at2pb.vdx)
0734  43 00                                  RETURNSCRIPT                  value=0x00
0736  35                                     VIDEOFLAG7_OFF
0737  1A 07 01 B0 4F 07                      STRCMP_NE_JMP                 start=v[0x107], values=[0], target=0x074F
073D  46                                     RESOURCE_CONTEXT_SAVE
073E  07                                     VIDEOFLAG7_ON
073F  09 93 50                               VIDEOREF                      ref=0x5093 (GAMWAV[147]=gen_e_13.vdx)
0742  47                                     RESOURCE_CONTEXT_RESTORE
0743  09 0D 00                               VIDEOREF                      ref=0x000D (AT[13]=at3pb.vdx)
0746  1F 07 01                               INC                           var=v[0x107]
0749  15 E2 00                               JMP                           target=0x00E2
074C  15 7C 07                               JMP                           target=0x077C
074F  1A 07 01 B1 61 07                      STRCMP_NE_JMP                 start=v[0x107], values=[1], target=0x0761
0755  09 09 00                               VIDEOREF                      ref=0x0009 (AT[9]=at2pb.vdx)
0758  1F 07 01                               INC                           var=v[0x107]
075B  15 59 01                               JMP                           target=0x0159
075E  15 7C 07                               JMP                           target=0x077C
0761  1A 07 01 B2 7C 07                      STRCMP_NE_JMP                 start=v[0x107], values=[2], target=0x077C
0767  46                                     RESOURCE_CONTEXT_SAVE
0768  07                                     VIDEOFLAG7_ON
0769  09 A0 50                               VIDEOREF                      ref=0x50A0 (GAMWAV[160]=gen_s_9.vdx)
076C  47                                     RESOURCE_CONTEXT_RESTORE
076D  37 05 01 5E 00 83 01 A2 00             COPY_RECT_TO_BG               left=0x0105, top=0x005E, right=0x0183, bottom=0x00A2
0776  35                                     VIDEOFLAG7_OFF
0777  96 E7 E1                               LOADSTRING                    dst=v[0x0E7], values=[49]
077A  43 00                                  RETURNSCRIPT                  value=0x00
077C  96 06 30 30 61 B1                      LOADSTRING                    dst=v[0x006], values=[0, 0, 49, 1]
0782  9A 02 23 69 23 EA A3 07                STRCMP_NE_JMP                 start=v[0x002], values=[v[0x008], v[0x009]], target=0x07A3
078A  96 4A B9                               LOADSTRING                    dst=v[0x04A], values=[9]
078D  A3 4A 7C 23 67 23 E8 A3 07             STRCMP_EQ_JMP                 start=v[0x04A], values=[grid[v[0x006],v[0x007]]], target=0x07A3
0796  96 4A 23 E5                            LOADSTRING                    dst=v[0x04A], values=[v[0x004]]
079A  39 34 B9 23 67 23 E8                   GRID_SWAP                     row1=4, col1=9, row2=v[0x006], col2=v[0x007]
07A1  9F 05                                  INC                           var=v[0x005]
07A3  9A 09 B8 B0 07                         STRCMP_NE_JMP                 start=v[0x009], values=[8], target=0x07B0
07A8  96 09 B1                               LOADSTRING                    dst=v[0x009], values=[1]
07AB  9F 08                                  INC                           var=v[0x008]
07AD  15 B2 07                               JMP                           target=0x07B2
07B0  9F 09                                  INC                           var=v[0x009]
07B2  9A 07 B9 BF 07                         STRCMP_NE_JMP                 start=v[0x007], values=[9], target=0x07BF
07B7  96 07 B0                               LOADSTRING                    dst=v[0x007], values=[0]
07BA  9F 06                                  INC                           var=v[0x006]
07BC  15 C1 07                               JMP                           target=0x07C1
07BF  9F 07                                  INC                           var=v[0x007]
07C1  A3 06 34 B0 CA 07                      STRCMP_EQ_JMP                 start=v[0x006], values=[4, 0], target=0x07CA
07C7  15 82 07                               JMP                           target=0x0782
07CA  17 00                                  RET                           value=0x00
07CC  96 05 30 B0                            LOADSTRING                    dst=v[0x005], values=[0, 0]
07D0  96 4A B9                               LOADSTRING                    dst=v[0x04A], values=[9]
07D3  A3 4A 7C 23 66 23 E7 E6 07             STRCMP_EQ_JMP                 start=v[0x04A], values=[grid[v[0x005],v[0x006]]], target=0x07E6
07DC  96 4A B0                               LOADSTRING                    dst=v[0x04A], values=[0]
07DF  39 34 B9 23 66 23 E7                   GRID_SWAP                     row1=4, col1=9, row2=v[0x005], col2=v[0x006]
07E6  9A 06 B9 F3 07                         STRCMP_NE_JMP                 start=v[0x006], values=[9], target=0x07F3
07EB  9F 05                                  INC                           var=v[0x005]
07ED  96 06 B0                               LOADSTRING                    dst=v[0x006], values=[0]
07F0  15 F5 07                               JMP                           target=0x07F5
07F3  9F 06                                  INC                           var=v[0x006]
07F5  A3 05 34 B0 FE 07                      STRCMP_EQ_JMP                 start=v[0x005], values=[4, 0], target=0x07FE
07FB  15 D0 07                               JMP                           target=0x07D0
07FE  96 05 B0                               LOADSTRING                    dst=v[0x005], values=[0]
0801  A3 13 E4 23 08                         STRCMP_EQ_JMP                 start=v[0x013], values=[52], target=0x0823
0806  A3 14 E4 23 08                         STRCMP_EQ_JMP                 start=v[0x014], values=[52], target=0x0823
080B  A3 15 E4 23 08                         STRCMP_EQ_JMP                 start=v[0x015], values=[52], target=0x0823
0810  A3 16 E4 23 08                         STRCMP_EQ_JMP                 start=v[0x016], values=[52], target=0x0823
0815  96 02 23 61 23 E2                      LOADSTRING                    dst=v[0x002], values=[v[0x000], v[0x001]]
081B  A0 02                                  DEC                           var=v[0x002]
081D  96 04 E4                               LOADSTRING                    dst=v[0x004], values=[52]
0820  18 7C 07                               CALL                          target=0x077C
0823  A3 13 F5 45 08                         STRCMP_EQ_JMP                 start=v[0x013], values=[69], target=0x0845
0828  A3 14 F5 45 08                         STRCMP_EQ_JMP                 start=v[0x014], values=[69], target=0x0845
082D  A3 15 F5 45 08                         STRCMP_EQ_JMP                 start=v[0x015], values=[69], target=0x0845
0832  A3 16 F5 45 08                         STRCMP_EQ_JMP                 start=v[0x016], values=[69], target=0x0845
0837  96 02 23 61 23 E2                      LOADSTRING                    dst=v[0x002], values=[v[0x000], v[0x001]]
083D  9F 02                                  INC                           var=v[0x002]
083F  96 04 F5                               LOADSTRING                    dst=v[0x004], values=[69]
0842  18 7C 07                               CALL                          target=0x077C
0845  A3 13 EC 67 08                         STRCMP_EQ_JMP                 start=v[0x013], values=[60], target=0x0867
084A  A3 14 EC 67 08                         STRCMP_EQ_JMP                 start=v[0x014], values=[60], target=0x0867
084F  A3 15 EC 67 08                         STRCMP_EQ_JMP                 start=v[0x015], values=[60], target=0x0867
0854  A3 16 EC 67 08                         STRCMP_EQ_JMP                 start=v[0x016], values=[60], target=0x0867
0859  96 02 23 61 23 E2                      LOADSTRING                    dst=v[0x002], values=[v[0x000], v[0x001]]
085F  A0 03                                  DEC                           var=v[0x003]
0861  96 04 EC                               LOADSTRING                    dst=v[0x004], values=[60]
0864  18 7C 07                               CALL                          target=0x077C
0867  A3 13 F2 89 08                         STRCMP_EQ_JMP                 start=v[0x013], values=[66], target=0x0889
086C  A3 14 F2 89 08                         STRCMP_EQ_JMP                 start=v[0x014], values=[66], target=0x0889
0871  A3 15 F2 89 08                         STRCMP_EQ_JMP                 start=v[0x015], values=[66], target=0x0889
0876  A3 16 F2 89 08                         STRCMP_EQ_JMP                 start=v[0x016], values=[66], target=0x0889
087B  96 02 23 61 23 E2                      LOADSTRING                    dst=v[0x002], values=[v[0x000], v[0x001]]
0881  9F 03                                  INC                           var=v[0x003]
0883  96 04 F2                               LOADSTRING                    dst=v[0x004], values=[66]
0886  18 7C 07                               CALL                          target=0x077C
0889  9A 05 B0 91 08                         STRCMP_NE_JMP                 start=v[0x005], values=[0], target=0x0891
088E  15 F8 06                               JMP                           target=0x06F8
0891  15 C8 01                               JMP                           target=0x01C8
0894  9A 19 B9 9C 08                         STRCMP_NE_JMP                 start=v[0x019], values=[9], target=0x089C
0899  15 F8 06                               JMP                           target=0x06F8
089C  1A 07 01 B0 B1 08                      STRCMP_NE_JMP                 start=v[0x107], values=[0], target=0x08B1
08A2  37 A7 00 4A 01 C7 00 6C 01             COPY_RECT_TO_BG               left=0x00A7, top=0x014A, right=0x00C7, bottom=0x016C
08AB  96 12 F4                               LOADSTRING                    dst=v[0x012], values=[68]
08AE  15 D8 08                               JMP                           target=0x08D8
08B1  1A 07 01 B1 C6 08                      STRCMP_NE_JMP                 start=v[0x107], values=[1], target=0x08C6
08B7  37 B2 00 3B 01 D0 00 80 01             COPY_RECT_TO_BG               left=0x00B2, top=0x013B, right=0x00D0, bottom=0x0180
08C0  96 12 F5                               LOADSTRING                    dst=v[0x012], values=[69]
08C3  15 D8 08                               JMP                           target=0x08D8
08C6  1A 07 01 B2 D8 08                      STRCMP_NE_JMP                 start=v[0x107], values=[2], target=0x08D8
08CC  37 EE 00 46 01 0D 01 75 01             COPY_RECT_TO_BG               left=0x00EE, top=0x0146, right=0x010D, bottom=0x0175
08D5  96 12 F6                               LOADSTRING                    dst=v[0x012], values=[70]
08D8  A4 00 19 00                            MOV                           dst=v[0x000], src=0x0019
08DC  B3 0F 23 E1                            LOADSTRING_INDIRECT           dst=v[0x00F], values=[v[0x000]]
08E0  96 19 B9                               LOADSTRING                    dst=v[0x019], values=[9]
08E3  B2 12 08 01 F7 08                      JNE_INDIRECT                  selector=v[0x012], rhs=0x0108, target=0x08F7
08E9  96 0F 23 F3                            LOADSTRING                    dst=v[0x00F], values=[v[0x012]]
08ED  96 00 61 B1                            LOADSTRING                    dst=v[0x000], values=[49, 1]
08F1  15 CC 07                               JMP                           target=0x07CC
08F4  15 21 09                               JMP                           target=0x0921
08F7  96 0F EE                               LOADSTRING                    dst=v[0x00F], values=[62]
08FA  19 96 00                               SLEEP                         ticks=0x0096
08FD  B2 12 0C 01 06 09                      JNE_INDIRECT                  selector=v[0x012], rhs=0x010C, target=0x0906
0903  15 F8 06                               JMP                           target=0x06F8
0906  B2 12 0A 01 0F 09                      JNE_INDIRECT                  selector=v[0x012], rhs=0x010A, target=0x090F
090C  15 F8 06                               JMP                           target=0x06F8
090F  B2 12 09 01 18 09                      JNE_INDIRECT                  selector=v[0x012], rhs=0x0109, target=0x0918
0915  15 21 09                               JMP                           target=0x0921
0918  B2 12 0B 01 21 09                      JNE_INDIRECT                  selector=v[0x012], rhs=0x010B, target=0x0921
091E  15 54 0C                               JMP                           target=0x0C54
0921  9A 1A B9 29 09                         STRCMP_NE_JMP                 start=v[0x01A], values=[9], target=0x0929
0926  15 F8 06                               JMP                           target=0x06F8
0929  1A 07 01 B0 3E 09                      STRCMP_NE_JMP                 start=v[0x107], values=[0], target=0x093E
092F  37 CF 00 46 01 E7 00 7E 01             COPY_RECT_TO_BG               left=0x00CF, top=0x0146, right=0x00E7, bottom=0x017E
0938  96 12 F7                               LOADSTRING                    dst=v[0x012], values=[71]
093B  15 65 09                               JMP                           target=0x0965
093E  1A 07 01 B1 53 09                      STRCMP_NE_JMP                 start=v[0x107], values=[1], target=0x0953
0944  37 E0 00 3F 01 FE 00 87 01             COPY_RECT_TO_BG               left=0x00E0, top=0x013F, right=0x00FE, bottom=0x0187
094D  96 12 F5                               LOADSTRING                    dst=v[0x012], values=[69]
0950  15 65 09                               JMP                           target=0x0965
0953  1A 07 01 B2 65 09                      STRCMP_NE_JMP                 start=v[0x107], values=[2], target=0x0965
0959  37 15 01 4C 01 3A 01 81 01             COPY_RECT_TO_BG               left=0x0115, top=0x014C, right=0x013A, bottom=0x0181
0962  96 12 F6                               LOADSTRING                    dst=v[0x012], values=[70]
0965  A4 00 1A 00                            MOV                           dst=v[0x000], src=0x001A
0969  B3 0F 23 E1                            LOADSTRING_INDIRECT           dst=v[0x00F], values=[v[0x000]]
096D  96 1A B9                               LOADSTRING                    dst=v[0x01A], values=[9]
0970  B2 12 08 01 84 09                      JNE_INDIRECT                  selector=v[0x012], rhs=0x0108, target=0x0984
0976  96 0F 23 F3                            LOADSTRING                    dst=v[0x00F], values=[v[0x012]]
097A  96 00 61 B2                            LOADSTRING                    dst=v[0x000], values=[49, 2]
097E  15 CC 07                               JMP                           target=0x07CC
0981  15 AE 09                               JMP                           target=0x09AE
0984  96 0F EE                               LOADSTRING                    dst=v[0x00F], values=[62]
0987  19 96 00                               SLEEP                         ticks=0x0096
098A  B2 12 0C 01 93 09                      JNE_INDIRECT                  selector=v[0x012], rhs=0x010C, target=0x0993
0990  15 F8 06                               JMP                           target=0x06F8
0993  B2 12 0A 01 9C 09                      JNE_INDIRECT                  selector=v[0x012], rhs=0x010A, target=0x099C
0999  15 94 08                               JMP                           target=0x0894
099C  B2 12 09 01 A5 09                      JNE_INDIRECT                  selector=v[0x012], rhs=0x0109, target=0x09A5
09A2  15 AE 09                               JMP                           target=0x09AE
09A5  B2 12 0B 01 AE 09                      JNE_INDIRECT                  selector=v[0x012], rhs=0x010B, target=0x09AE
09AB  15 E1 0C                               JMP                           target=0x0CE1
09AE  9A 1B B9 B6 09                         STRCMP_NE_JMP                 start=v[0x01B], values=[9], target=0x09B6
09B3  15 F8 06                               JMP                           target=0x06F8
09B6  1A 07 01 B0 CB 09                      STRCMP_NE_JMP                 start=v[0x107], values=[0], target=0x09CB
09BC  37 F6 00 4C 01 0D 01 84 01             COPY_RECT_TO_BG               left=0x00F6, top=0x014C, right=0x010D, bottom=0x0184
09C5  96 12 F5                               LOADSTRING                    dst=v[0x012], values=[69]
09C8  15 F2 09                               JMP                           target=0x09F2
09CB  1A 07 01 B1 E0 09                      STRCMP_NE_JMP                 start=v[0x107], values=[1], target=0x09E0
09D1  37 0C 01 47 01 3C 01 89 01             COPY_RECT_TO_BG               left=0x010C, top=0x0147, right=0x013C, bottom=0x0189
09DA  96 12 F6                               LOADSTRING                    dst=v[0x012], values=[70]
09DD  15 F2 09                               JMP                           target=0x09F2
09E0  1A 07 01 B2 F2 09                      STRCMP_NE_JMP                 start=v[0x107], values=[2], target=0x09F2
09E6  37 45 01 53 01 6B 01 77 01             COPY_RECT_TO_BG               left=0x0145, top=0x0153, right=0x016B, bottom=0x0177
09EF  96 12 F4                               LOADSTRING                    dst=v[0x012], values=[68]
09F2  A4 00 1B 00                            MOV                           dst=v[0x000], src=0x001B
09F6  B3 0F 23 E1                            LOADSTRING_INDIRECT           dst=v[0x00F], values=[v[0x000]]
09FA  96 1B B9                               LOADSTRING                    dst=v[0x01B], values=[9]
09FD  B2 12 08 01 11 0A                      JNE_INDIRECT                  selector=v[0x012], rhs=0x0108, target=0x0A11
0A03  96 0F 23 F3                            LOADSTRING                    dst=v[0x00F], values=[v[0x012]]
0A07  96 00 61 B3                            LOADSTRING                    dst=v[0x000], values=[49, 3]
0A0B  15 CC 07                               JMP                           target=0x07CC
0A0E  15 3B 0A                               JMP                           target=0x0A3B
0A11  96 0F EE                               LOADSTRING                    dst=v[0x00F], values=[62]
0A14  19 96 00                               SLEEP                         ticks=0x0096
0A17  B2 12 0C 01 20 0A                      JNE_INDIRECT                  selector=v[0x012], rhs=0x010C, target=0x0A20
0A1D  15 F8 06                               JMP                           target=0x06F8
0A20  B2 12 0A 01 29 0A                      JNE_INDIRECT                  selector=v[0x012], rhs=0x010A, target=0x0A29
0A26  15 21 09                               JMP                           target=0x0921
0A29  B2 12 09 01 32 0A                      JNE_INDIRECT                  selector=v[0x012], rhs=0x0109, target=0x0A32
0A2F  15 3B 0A                               JMP                           target=0x0A3B
0A32  B2 12 0B 01 3B 0A                      JNE_INDIRECT                  selector=v[0x012], rhs=0x010B, target=0x0A3B
0A38  15 6E 0D                               JMP                           target=0x0D6E
0A3B  9A 1C B9 43 0A                         STRCMP_NE_JMP                 start=v[0x01C], values=[9], target=0x0A43
0A40  15 F8 06                               JMP                           target=0x06F8
0A43  1A 07 01 B0 58 0A                      STRCMP_NE_JMP                 start=v[0x107], values=[0], target=0x0A58
0A49  37 1D 01 4E 01 38 01 88 01             COPY_RECT_TO_BG               left=0x011D, top=0x014E, right=0x0138, bottom=0x0188
0A52  96 12 F7                               LOADSTRING                    dst=v[0x012], values=[71]
0A55  15 7F 0A                               JMP                           target=0x0A7F
0A58  1A 07 01 B1 6D 0A                      STRCMP_NE_JMP                 start=v[0x107], values=[1], target=0x0A6D
0A5E  37 4D 01 42 01 6D 01 8E 01             COPY_RECT_TO_BG               left=0x014D, top=0x0142, right=0x016D, bottom=0x018E
0A67  96 12 F5                               LOADSTRING                    dst=v[0x012], values=[69]
0A6A  15 7F 0A                               JMP                           target=0x0A7F
0A6D  1A 07 01 B2 7F 0A                      STRCMP_NE_JMP                 start=v[0x107], values=[2], target=0x0A7F
0A73  37 77 01 43 01 90 01 7A 01             COPY_RECT_TO_BG               left=0x0177, top=0x0143, right=0x0190, bottom=0x017A
0A7C  96 12 F5                               LOADSTRING                    dst=v[0x012], values=[69]
0A7F  A4 00 1C 00                            MOV                           dst=v[0x000], src=0x001C
0A83  B3 0F 23 E1                            LOADSTRING_INDIRECT           dst=v[0x00F], values=[v[0x000]]
0A87  96 1C B9                               LOADSTRING                    dst=v[0x01C], values=[9]
0A8A  B2 12 08 01 9E 0A                      JNE_INDIRECT                  selector=v[0x012], rhs=0x0108, target=0x0A9E
0A90  96 0F 23 F3                            LOADSTRING                    dst=v[0x00F], values=[v[0x012]]
0A94  96 00 61 B4                            LOADSTRING                    dst=v[0x000], values=[49, 4]
0A98  15 CC 07                               JMP                           target=0x07CC
0A9B  15 C8 0A                               JMP                           target=0x0AC8
0A9E  96 0F EE                               LOADSTRING                    dst=v[0x00F], values=[62]
0AA1  19 96 00                               SLEEP                         ticks=0x0096
0AA4  B2 12 0C 01 AD 0A                      JNE_INDIRECT                  selector=v[0x012], rhs=0x010C, target=0x0AAD
0AAA  15 F8 06                               JMP                           target=0x06F8
0AAD  B2 12 0A 01 B6 0A                      JNE_INDIRECT                  selector=v[0x012], rhs=0x010A, target=0x0AB6
0AB3  15 AE 09                               JMP                           target=0x09AE
0AB6  B2 12 09 01 BF 0A                      JNE_INDIRECT                  selector=v[0x012], rhs=0x0109, target=0x0ABF
0ABC  15 C8 0A                               JMP                           target=0x0AC8
0ABF  B2 12 0B 01 C8 0A                      JNE_INDIRECT                  selector=v[0x012], rhs=0x010B, target=0x0AC8
0AC5  15 FB 0D                               JMP                           target=0x0DFB
0AC8  9A 1D B9 D0 0A                         STRCMP_NE_JMP                 start=v[0x01D], values=[9], target=0x0AD0
0ACD  15 F8 06                               JMP                           target=0x06F8
0AD0  1A 07 01 B0 E5 0A                      STRCMP_NE_JMP                 start=v[0x107], values=[0], target=0x0AE5
0AD6  37 43 01 53 01 68 01 86 01             COPY_RECT_TO_BG               left=0x0143, top=0x0153, right=0x0168, bottom=0x0186
0ADF  96 12 F6                               LOADSTRING                    dst=v[0x012], values=[70]
0AE2  15 F7 0A                               JMP                           target=0x0AF7
0AE5  1A 07 01 B1 F7 0A                      STRCMP_NE_JMP                 start=v[0x107], values=[1], target=0x0AF7
0AEB  37 83 01 3E 01 A1 01 87 01             COPY_RECT_TO_BG               left=0x0183, top=0x013E, right=0x01A1, bottom=0x0187
0AF4  96 12 F5                               LOADSTRING                    dst=v[0x012], values=[69]
0AF7  A4 00 1D 00                            MOV                           dst=v[0x000], src=0x001D
0AFB  B3 0F 23 E1                            LOADSTRING_INDIRECT           dst=v[0x00F], values=[v[0x000]]
0AFF  96 1D B9                               LOADSTRING                    dst=v[0x01D], values=[9]
0B02  B2 12 08 01 16 0B                      JNE_INDIRECT                  selector=v[0x012], rhs=0x0108, target=0x0B16
0B08  96 0F 23 F3                            LOADSTRING                    dst=v[0x00F], values=[v[0x012]]
0B0C  96 00 61 B5                            LOADSTRING                    dst=v[0x000], values=[49, 5]
0B10  15 CC 07                               JMP                           target=0x07CC
0B13  15 40 0B                               JMP                           target=0x0B40
0B16  96 0F EE                               LOADSTRING                    dst=v[0x00F], values=[62]
0B19  19 96 00                               SLEEP                         ticks=0x0096
0B1C  B2 12 0C 01 25 0B                      JNE_INDIRECT                  selector=v[0x012], rhs=0x010C, target=0x0B25
0B22  15 F8 06                               JMP                           target=0x06F8
0B25  B2 12 0A 01 2E 0B                      JNE_INDIRECT                  selector=v[0x012], rhs=0x010A, target=0x0B2E
0B2B  15 3B 0A                               JMP                           target=0x0A3B
0B2E  B2 12 09 01 37 0B                      JNE_INDIRECT                  selector=v[0x012], rhs=0x0109, target=0x0B37
0B34  15 40 0B                               JMP                           target=0x0B40
0B37  B2 12 0B 01 40 0B                      JNE_INDIRECT                  selector=v[0x012], rhs=0x010B, target=0x0B40
0B3D  15 88 0E                               JMP                           target=0x0E88
0B40  9A 1E B9 48 0B                         STRCMP_NE_JMP                 start=v[0x01E], values=[9], target=0x0B48
0B45  15 F8 06                               JMP                           target=0x06F8
0B48  1A 07 01 B0 5A 0B                      STRCMP_NE_JMP                 start=v[0x107], values=[0], target=0x0B5A
0B4E  37 6D 01 4F 01 91 01 83 01             COPY_RECT_TO_BG               left=0x016D, top=0x014F, right=0x0191, bottom=0x0183
0B57  15 69 0B                               JMP                           target=0x0B69
0B5A  1A 07 01 B1 69 0B                      STRCMP_NE_JMP                 start=v[0x107], values=[1], target=0x0B69
0B60  37 AB 01 3D 01 D3 01 7A 01             COPY_RECT_TO_BG               left=0x01AB, top=0x013D, right=0x01D3, bottom=0x017A
0B69  A4 00 1E 00                            MOV                           dst=v[0x000], src=0x001E
0B6D  B3 0F 23 E1                            LOADSTRING_INDIRECT           dst=v[0x00F], values=[v[0x000]]
0B71  96 1E B9                               LOADSTRING                    dst=v[0x01E], values=[9]
0B74  9A 15 B0 86 0B                         STRCMP_NE_JMP                 start=v[0x015], values=[0], target=0x0B86
0B79  96 0F F6                               LOADSTRING                    dst=v[0x00F], values=[70]
0B7C  96 00 61 B6                            LOADSTRING                    dst=v[0x000], values=[49, 6]
0B80  15 CC 07                               JMP                           target=0x07CC
0B83  15 AC 0B                               JMP                           target=0x0BAC
0B86  96 0F EE                               LOADSTRING                    dst=v[0x00F], values=[62]
0B89  19 96 00                               SLEEP                         ticks=0x0096
0B8C  9A 15 E4 94 0B                         STRCMP_NE_JMP                 start=v[0x015], values=[52], target=0x0B94
0B91  15 F8 06                               JMP                           target=0x06F8
0B94  9A 15 EC 9C 0B                         STRCMP_NE_JMP                 start=v[0x015], values=[60], target=0x0B9C
0B99  15 C8 0A                               JMP                           target=0x0AC8
0B9C  9A 15 F2 A4 0B                         STRCMP_NE_JMP                 start=v[0x015], values=[66], target=0x0BA4
0BA1  15 AC 0B                               JMP                           target=0x0BAC
0BA4  9A 15 F5 AC 0B                         STRCMP_NE_JMP                 start=v[0x015], values=[69], target=0x0BAC
0BA9  15 00 0F                               JMP                           target=0x0F00
0BAC  9A 1F B9 B4 0B                         STRCMP_NE_JMP                 start=v[0x01F], values=[9], target=0x0BB4
0BB1  15 F8 06                               JMP                           target=0x06F8
0BB4  37 9B 01 49 01 B0 01 7E 01             COPY_RECT_TO_BG               left=0x019B, top=0x0149, right=0x01B0, bottom=0x017E
0BBD  A4 00 1F 00                            MOV                           dst=v[0x000], src=0x001F
0BC1  B3 0F 23 E1                            LOADSTRING_INDIRECT           dst=v[0x00F], values=[v[0x000]]
0BC5  96 1F B9                               LOADSTRING                    dst=v[0x01F], values=[9]
0BC8  9A 14 B0 DA 0B                         STRCMP_NE_JMP                 start=v[0x014], values=[0], target=0x0BDA
0BCD  96 0F F5                               LOADSTRING                    dst=v[0x00F], values=[69]
0BD0  96 00 61 B7                            LOADSTRING                    dst=v[0x000], values=[49, 7]
0BD4  15 CC 07                               JMP                           target=0x07CC
0BD7  15 00 0C                               JMP                           target=0x0C00
0BDA  96 0F EE                               LOADSTRING                    dst=v[0x00F], values=[62]
0BDD  19 96 00                               SLEEP                         ticks=0x0096
0BE0  9A 14 E4 E8 0B                         STRCMP_NE_JMP                 start=v[0x014], values=[52], target=0x0BE8
0BE5  15 F8 06                               JMP                           target=0x06F8
0BE8  9A 14 EC F0 0B                         STRCMP_NE_JMP                 start=v[0x014], values=[60], target=0x0BF0
0BED  15 40 0B                               JMP                           target=0x0B40
0BF0  9A 14 F2 F8 0B                         STRCMP_NE_JMP                 start=v[0x014], values=[66], target=0x0BF8
0BF5  15 00 0C                               JMP                           target=0x0C00
0BF8  9A 14 F5 00 0C                         STRCMP_NE_JMP                 start=v[0x014], values=[69], target=0x0C00
0BFD  15 78 0F                               JMP                           target=0x0F78
0C00  9A 20 B9 08 0C                         STRCMP_NE_JMP                 start=v[0x020], values=[9], target=0x0C08
0C05  15 F8 06                               JMP                           target=0x06F8
0C08  37 BA 01 4C 01 D8 01 6B 01             COPY_RECT_TO_BG               left=0x01BA, top=0x014C, right=0x01D8, bottom=0x016B
0C11  A4 00 20 00                            MOV                           dst=v[0x000], src=0x0020
0C15  B3 0F 23 E1                            LOADSTRING_INDIRECT           dst=v[0x00F], values=[v[0x000]]
0C19  96 20 B9                               LOADSTRING                    dst=v[0x020], values=[9]
0C1C  9A 13 B0 2E 0C                         STRCMP_NE_JMP                 start=v[0x013], values=[0], target=0x0C2E
0C21  96 0F F4                               LOADSTRING                    dst=v[0x00F], values=[68]
0C24  96 00 61 B8                            LOADSTRING                    dst=v[0x000], values=[49, 8]
0C28  15 CC 07                               JMP                           target=0x07CC
0C2B  15 54 0C                               JMP                           target=0x0C54
0C2E  96 0F EE                               LOADSTRING                    dst=v[0x00F], values=[62]
0C31  19 96 00                               SLEEP                         ticks=0x0096
0C34  9A 13 E4 3C 0C                         STRCMP_NE_JMP                 start=v[0x013], values=[52], target=0x0C3C
0C39  15 F8 06                               JMP                           target=0x06F8
0C3C  9A 13 EC 44 0C                         STRCMP_NE_JMP                 start=v[0x013], values=[60], target=0x0C44
0C41  15 AC 0B                               JMP                           target=0x0BAC
0C44  9A 13 F2 4C 0C                         STRCMP_NE_JMP                 start=v[0x013], values=[66], target=0x0C4C
0C49  15 F8 06                               JMP                           target=0x06F8
0C4C  9A 13 F5 54 0C                         STRCMP_NE_JMP                 start=v[0x013], values=[69], target=0x0C54
0C51  15 CC 0F                               JMP                           target=0x0FCC
0C54  9A 21 B9 5C 0C                         STRCMP_NE_JMP                 start=v[0x021], values=[9], target=0x0C5C
0C59  15 F8 06                               JMP                           target=0x06F8
0C5C  1A 07 01 B0 71 0C                      STRCMP_NE_JMP                 start=v[0x107], values=[0], target=0x0C71
0C62  37 A9 00 10 01 C6 00 3D 01             COPY_RECT_TO_BG               left=0x00A9, top=0x0110, right=0x00C6, bottom=0x013D
0C6B  96 12 F6                               LOADSTRING                    dst=v[0x012], values=[70]
0C6E  15 98 0C                               JMP                           target=0x0C98
0C71  1A 07 01 B1 86 0C                      STRCMP_NE_JMP                 start=v[0x107], values=[1], target=0x0C86
0C77  37 AD 00 F5 00 D5 00 32 01             COPY_RECT_TO_BG               left=0x00AD, top=0x00F5, right=0x00D5, bottom=0x0132
0C80  96 12 F6                               LOADSTRING                    dst=v[0x012], values=[70]
0C83  15 98 0C                               JMP                           target=0x0C98
0C86  1A 07 01 B2 98 0C                      STRCMP_NE_JMP                 start=v[0x107], values=[2], target=0x0C98
0C8C  37 F3 00 02 01 0A 01 3D 01             COPY_RECT_TO_BG               left=0x00F3, top=0x0102, right=0x010A, bottom=0x013D
0C95  96 12 F5                               LOADSTRING                    dst=v[0x012], values=[69]
0C98  A4 00 21 00                            MOV                           dst=v[0x000], src=0x0021
0C9C  B3 0F 23 E1                            LOADSTRING_INDIRECT           dst=v[0x00F], values=[v[0x000]]
0CA0  96 21 B9                               LOADSTRING                    dst=v[0x021], values=[9]
0CA3  B2 12 08 01 B7 0C                      JNE_INDIRECT                  selector=v[0x012], rhs=0x0108, target=0x0CB7
0CA9  96 0F 23 F3                            LOADSTRING                    dst=v[0x00F], values=[v[0x012]]
0CAD  96 00 62 B1                            LOADSTRING                    dst=v[0x000], values=[50, 1]
0CB1  15 CC 07                               JMP                           target=0x07CC
0CB4  15 E1 0C                               JMP                           target=0x0CE1
0CB7  96 0F EE                               LOADSTRING                    dst=v[0x00F], values=[62]
0CBA  19 96 00                               SLEEP                         ticks=0x0096
0CBD  B2 12 0C 01 C6 0C                      JNE_INDIRECT                  selector=v[0x012], rhs=0x010C, target=0x0CC6
0CC3  15 94 08                               JMP                           target=0x0894
0CC6  B2 12 0A 01 CF 0C                      JNE_INDIRECT                  selector=v[0x012], rhs=0x010A, target=0x0CCF
0CCC  15 F8 06                               JMP                           target=0x06F8
0CCF  B2 12 09 01 D8 0C                      JNE_INDIRECT                  selector=v[0x012], rhs=0x0109, target=0x0CD8
0CD5  15 E1 0C                               JMP                           target=0x0CE1
0CD8  B2 12 0B 01 E1 0C                      JNE_INDIRECT                  selector=v[0x012], rhs=0x010B, target=0x0CE1
0CDE  15 20 10                               JMP                           target=0x1020
0CE1  9A 22 B9 E9 0C                         STRCMP_NE_JMP                 start=v[0x022], values=[9], target=0x0CE9
0CE6  15 F8 06                               JMP                           target=0x06F8
0CE9  1A 07 01 B0 FE 0C                      STRCMP_NE_JMP                 start=v[0x107], values=[0], target=0x0CFE
0CEF  37 CE 00 0D 01 E8 00 44 01             COPY_RECT_TO_BG               left=0x00CE, top=0x010D, right=0x00E8, bottom=0x0144
0CF8  96 12 F7                               LOADSTRING                    dst=v[0x012], values=[71]
0CFB  15 25 0D                               JMP                           target=0x0D25
0CFE  1A 07 01 B1 13 0D                      STRCMP_NE_JMP                 start=v[0x107], values=[1], target=0x0D13
0D04  37 E0 00 F1 00 00 01 3A 01             COPY_RECT_TO_BG               left=0x00E0, top=0x00F1, right=0x0100, bottom=0x013A
0D0D  96 12 F7                               LOADSTRING                    dst=v[0x012], values=[71]
0D10  15 25 0D                               JMP                           target=0x0D25
0D13  1A 07 01 B2 25 0D                      STRCMP_NE_JMP                 start=v[0x107], values=[2], target=0x0D25
0D19  37 14 01 0D 01 3E 01 36 01             COPY_RECT_TO_BG               left=0x0114, top=0x010D, right=0x013E, bottom=0x0136
0D22  96 12 F4                               LOADSTRING                    dst=v[0x012], values=[68]
0D25  A4 00 22 00                            MOV                           dst=v[0x000], src=0x0022
0D29  B3 0F 23 E1                            LOADSTRING_INDIRECT           dst=v[0x00F], values=[v[0x000]]
0D2D  96 22 B9                               LOADSTRING                    dst=v[0x022], values=[9]
0D30  B2 12 08 01 44 0D                      JNE_INDIRECT                  selector=v[0x012], rhs=0x0108, target=0x0D44
0D36  96 0F 23 F3                            LOADSTRING                    dst=v[0x00F], values=[v[0x012]]
0D3A  96 00 62 B2                            LOADSTRING                    dst=v[0x000], values=[50, 2]
0D3E  15 CC 07                               JMP                           target=0x07CC
0D41  15 6E 0D                               JMP                           target=0x0D6E
0D44  96 0F EE                               LOADSTRING                    dst=v[0x00F], values=[62]
0D47  19 96 00                               SLEEP                         ticks=0x0096
0D4A  B2 12 0C 01 53 0D                      JNE_INDIRECT                  selector=v[0x012], rhs=0x010C, target=0x0D53
0D50  15 21 09                               JMP                           target=0x0921
0D53  B2 12 0A 01 5C 0D                      JNE_INDIRECT                  selector=v[0x012], rhs=0x010A, target=0x0D5C
0D59  15 54 0C                               JMP                           target=0x0C54
0D5C  B2 12 09 01 65 0D                      JNE_INDIRECT                  selector=v[0x012], rhs=0x0109, target=0x0D65
0D62  15 6E 0D                               JMP                           target=0x0D6E
0D65  B2 12 0B 01 6E 0D                      JNE_INDIRECT                  selector=v[0x012], rhs=0x010B, target=0x0D6E
0D6B  15 B6 10                               JMP                           target=0x10B6
0D6E  9A 23 B9 76 0D                         STRCMP_NE_JMP                 start=v[0x023], values=[9], target=0x0D76
0D73  15 F8 06                               JMP                           target=0x06F8
0D76  1A 07 01 B0 8B 0D                      STRCMP_NE_JMP                 start=v[0x107], values=[0], target=0x0D8B
0D7C  37 F4 00 0F 01 0E 01 49 01             COPY_RECT_TO_BG               left=0x00F4, top=0x010F, right=0x010E, bottom=0x0149
0D85  96 12 F7                               LOADSTRING                    dst=v[0x012], values=[71]
0D88  15 B2 0D                               JMP                           target=0x0DB2
0D8B  1A 07 01 B1 A0 0D                      STRCMP_NE_JMP                 start=v[0x107], values=[1], target=0x0DA0
0D91  37 13 01 F1 00 35 01 3E 01             COPY_RECT_TO_BG               left=0x0113, top=0x00F1, right=0x0135, bottom=0x013E
0D9A  96 12 F7                               LOADSTRING                    dst=v[0x012], values=[71]
0D9D  15 B2 0D                               JMP                           target=0x0DB2
0DA0  1A 07 01 B2 B2 0D                      STRCMP_NE_JMP                 start=v[0x107], values=[2], target=0x0DB2
0DA6  37 42 01 06 01 6D 01 3D 01             COPY_RECT_TO_BG               left=0x0142, top=0x0106, right=0x016D, bottom=0x013D
0DAF  96 12 F6                               LOADSTRING                    dst=v[0x012], values=[70]
0DB2  A4 00 23 00                            MOV                           dst=v[0x000], src=0x0023
0DB6  B3 0F 23 E1                            LOADSTRING_INDIRECT           dst=v[0x00F], values=[v[0x000]]
0DBA  96 23 B9                               LOADSTRING                    dst=v[0x023], values=[9]
0DBD  B2 12 08 01 D1 0D                      JNE_INDIRECT                  selector=v[0x012], rhs=0x0108, target=0x0DD1
0DC3  96 0F 23 F3                            LOADSTRING                    dst=v[0x00F], values=[v[0x012]]
0DC7  96 00 62 B3                            LOADSTRING                    dst=v[0x000], values=[50, 3]
0DCB  15 CC 07                               JMP                           target=0x07CC
0DCE  15 FB 0D                               JMP                           target=0x0DFB
0DD1  96 0F EE                               LOADSTRING                    dst=v[0x00F], values=[62]
0DD4  19 96 00                               SLEEP                         ticks=0x0096
0DD7  B2 12 0C 01 E0 0D                      JNE_INDIRECT                  selector=v[0x012], rhs=0x010C, target=0x0DE0
0DDD  15 AE 09                               JMP                           target=0x09AE
0DE0  B2 12 0A 01 E9 0D                      JNE_INDIRECT                  selector=v[0x012], rhs=0x010A, target=0x0DE9
0DE6  15 E1 0C                               JMP                           target=0x0CE1
0DE9  B2 12 09 01 F2 0D                      JNE_INDIRECT                  selector=v[0x012], rhs=0x0109, target=0x0DF2
0DEF  15 FB 0D                               JMP                           target=0x0DFB
0DF2  B2 12 0B 01 FB 0D                      JNE_INDIRECT                  selector=v[0x012], rhs=0x010B, target=0x0DFB
0DF8  15 4C 11                               JMP                           target=0x114C
0DFB  9A 24 B9 03 0E                         STRCMP_NE_JMP                 start=v[0x024], values=[9], target=0x0E03
0E00  15 F8 06                               JMP                           target=0x06F8
0E03  1A 07 01 B0 18 0E                      STRCMP_NE_JMP                 start=v[0x107], values=[0], target=0x0E18
0E09  37 1D 01 10 01 39 01 4C 01             COPY_RECT_TO_BG               left=0x011D, top=0x0110, right=0x0139, bottom=0x014C
0E12  96 12 F7                               LOADSTRING                    dst=v[0x012], values=[71]
0E15  15 3F 0E                               JMP                           target=0x0E3F
0E18  1A 07 01 B1 2D 0E                      STRCMP_NE_JMP                 start=v[0x107], values=[1], target=0x0E2D
0E1E  37 45 01 00 01 74 01 2B 01             COPY_RECT_TO_BG               left=0x0145, top=0x0100, right=0x0174, bottom=0x012B
0E27  96 12 F4                               LOADSTRING                    dst=v[0x012], values=[68]
0E2A  15 3F 0E                               JMP                           target=0x0E3F
0E2D  1A 07 01 B2 3F 0E                      STRCMP_NE_JMP                 start=v[0x107], values=[2], target=0x0E3F
0E33  37 76 01 01 01 92 01 3D 01             COPY_RECT_TO_BG               left=0x0176, top=0x0101, right=0x0192, bottom=0x013D
0E3C  96 12 F7                               LOADSTRING                    dst=v[0x012], values=[71]
0E3F  A4 00 24 00                            MOV                           dst=v[0x000], src=0x0024
0E43  B3 0F 23 E1                            LOADSTRING_INDIRECT           dst=v[0x00F], values=[v[0x000]]
0E47  96 24 B9                               LOADSTRING                    dst=v[0x024], values=[9]
0E4A  B2 12 08 01 5E 0E                      JNE_INDIRECT                  selector=v[0x012], rhs=0x0108, target=0x0E5E
0E50  96 0F 23 F3                            LOADSTRING                    dst=v[0x00F], values=[v[0x012]]
0E54  96 00 62 B4                            LOADSTRING                    dst=v[0x000], values=[50, 4]
0E58  15 CC 07                               JMP                           target=0x07CC
0E5B  15 88 0E                               JMP                           target=0x0E88
0E5E  96 0F EE                               LOADSTRING                    dst=v[0x00F], values=[62]
0E61  19 96 00                               SLEEP                         ticks=0x0096
0E64  B2 12 0C 01 6D 0E                      JNE_INDIRECT                  selector=v[0x012], rhs=0x010C, target=0x0E6D
0E6A  15 3B 0A                               JMP                           target=0x0A3B
0E6D  B2 12 0A 01 76 0E                      JNE_INDIRECT                  selector=v[0x012], rhs=0x010A, target=0x0E76
0E73  15 6E 0D                               JMP                           target=0x0D6E
0E76  B2 12 09 01 7F 0E                      JNE_INDIRECT                  selector=v[0x012], rhs=0x0109, target=0x0E7F
0E7C  15 88 0E                               JMP                           target=0x0E88
0E7F  B2 12 0B 01 88 0E                      JNE_INDIRECT                  selector=v[0x012], rhs=0x010B, target=0x0E88
0E85  15 D3 11                               JMP                           target=0x11D3
0E88  9A 25 B9 90 0E                         STRCMP_NE_JMP                 start=v[0x025], values=[9], target=0x0E90
0E8D  15 F8 06                               JMP                           target=0x06F8
0E90  1A 07 01 B0 A5 0E                      STRCMP_NE_JMP                 start=v[0x107], values=[0], target=0x0EA5
0E96  37 4A 01 12 01 64 01 4C 01             COPY_RECT_TO_BG               left=0x014A, top=0x0112, right=0x0164, bottom=0x014C
0E9F  96 12 F5                               LOADSTRING                    dst=v[0x012], values=[69]
0EA2  15 B7 0E                               JMP                           target=0x0EB7
0EA5  1A 07 01 B1 B7 0E                      STRCMP_NE_JMP                 start=v[0x107], values=[1], target=0x0EB7
0EAB  37 7B 01 F6 00 A5 01 34 01             COPY_RECT_TO_BG               left=0x017B, top=0x00F6, right=0x01A5, bottom=0x0134
0EB4  96 12 F6                               LOADSTRING                    dst=v[0x012], values=[70]
0EB7  A4 00 25 00                            MOV                           dst=v[0x000], src=0x0025
0EBB  B3 0F 23 E1                            LOADSTRING_INDIRECT           dst=v[0x00F], values=[v[0x000]]
0EBF  96 25 B9                               LOADSTRING                    dst=v[0x025], values=[9]
0EC2  B2 12 08 01 D6 0E                      JNE_INDIRECT                  selector=v[0x012], rhs=0x0108, target=0x0ED6
0EC8  96 0F 23 F3                            LOADSTRING                    dst=v[0x00F], values=[v[0x012]]
0ECC  96 00 62 B5                            LOADSTRING                    dst=v[0x000], values=[50, 5]
0ED0  15 CC 07                               JMP                           target=0x07CC
0ED3  15 00 0F                               JMP                           target=0x0F00
0ED6  96 0F EE                               LOADSTRING                    dst=v[0x00F], values=[62]
0ED9  19 96 00                               SLEEP                         ticks=0x0096
0EDC  B2 12 0C 01 E5 0E                      JNE_INDIRECT                  selector=v[0x012], rhs=0x010C, target=0x0EE5
0EE2  15 C8 0A                               JMP                           target=0x0AC8
0EE5  B2 12 0A 01 EE 0E                      JNE_INDIRECT                  selector=v[0x012], rhs=0x010A, target=0x0EEE
0EEB  15 FB 0D                               JMP                           target=0x0DFB
0EEE  B2 12 09 01 F7 0E                      JNE_INDIRECT                  selector=v[0x012], rhs=0x0109, target=0x0EF7
0EF4  15 00 0F                               JMP                           target=0x0F00
0EF7  B2 12 0B 01 00 0F                      JNE_INDIRECT                  selector=v[0x012], rhs=0x010B, target=0x0F00
0EFD  15 69 12                               JMP                           target=0x1269
0F00  9A 26 B9 08 0F                         STRCMP_NE_JMP                 start=v[0x026], values=[9], target=0x0F08
0F05  15 F8 06                               JMP                           target=0x06F8
0F08  1A 07 01 B0 1D 0F                      STRCMP_NE_JMP                 start=v[0x107], values=[0], target=0x0F1D
0F0E  37 6E 01 19 01 91 01 3A 01             COPY_RECT_TO_BG               left=0x016E, top=0x0119, right=0x0191, bottom=0x013A
0F17  96 12 F4                               LOADSTRING                    dst=v[0x012], values=[68]
0F1A  15 2F 0F                               JMP                           target=0x0F2F
0F1D  1A 07 01 B1 2F 0F                      STRCMP_NE_JMP                 start=v[0x107], values=[1], target=0x0F2F
0F23  37 AC 01 F6 00 D3 01 30 01             COPY_RECT_TO_BG               left=0x01AC, top=0x00F6, right=0x01D3, bottom=0x0130
0F2C  96 12 F6                               LOADSTRING                    dst=v[0x012], values=[70]
0F2F  A4 00 26 00                            MOV                           dst=v[0x000], src=0x0026
0F33  B3 0F 23 E1                            LOADSTRING_INDIRECT           dst=v[0x00F], values=[v[0x000]]
0F37  96 26 B9                               LOADSTRING                    dst=v[0x026], values=[9]
0F3A  B2 12 08 01 4E 0F                      JNE_INDIRECT                  selector=v[0x012], rhs=0x0108, target=0x0F4E
0F40  96 0F 23 F3                            LOADSTRING                    dst=v[0x00F], values=[v[0x012]]
0F44  96 00 62 B6                            LOADSTRING                    dst=v[0x000], values=[50, 6]
0F48  15 CC 07                               JMP                           target=0x07CC
0F4B  15 78 0F                               JMP                           target=0x0F78
0F4E  96 0F EE                               LOADSTRING                    dst=v[0x00F], values=[62]
0F51  19 96 00                               SLEEP                         ticks=0x0096
0F54  B2 12 0C 01 5D 0F                      JNE_INDIRECT                  selector=v[0x012], rhs=0x010C, target=0x0F5D
0F5A  15 40 0B                               JMP                           target=0x0B40
0F5D  B2 12 0A 01 66 0F                      JNE_INDIRECT                  selector=v[0x012], rhs=0x010A, target=0x0F66
0F63  15 88 0E                               JMP                           target=0x0E88
0F66  B2 12 09 01 6F 0F                      JNE_INDIRECT                  selector=v[0x012], rhs=0x0109, target=0x0F6F
0F6C  15 78 0F                               JMP                           target=0x0F78
0F6F  B2 12 0B 01 78 0F                      JNE_INDIRECT                  selector=v[0x012], rhs=0x010B, target=0x0F78
0F75  15 E1 12                               JMP                           target=0x12E1
0F78  9A 27 B9 80 0F                         STRCMP_NE_JMP                 start=v[0x027], values=[9], target=0x0F80
0F7D  15 F8 06                               JMP                           target=0x06F8
0F80  37 96 01 18 01 B5 01 36 01             COPY_RECT_TO_BG               left=0x0196, top=0x0118, right=0x01B5, bottom=0x0136
0F89  A4 00 27 00                            MOV                           dst=v[0x000], src=0x0027
0F8D  B3 0F 23 E1                            LOADSTRING_INDIRECT           dst=v[0x00F], values=[v[0x000]]
0F91  96 27 B9                               LOADSTRING                    dst=v[0x027], values=[9]
0F94  9A 13 B0 A6 0F                         STRCMP_NE_JMP                 start=v[0x013], values=[0], target=0x0FA6
0F99  96 0F F4                               LOADSTRING                    dst=v[0x00F], values=[68]
0F9C  96 00 62 B7                            LOADSTRING                    dst=v[0x000], values=[50, 7]
0FA0  15 CC 07                               JMP                           target=0x07CC
0FA3  15 CC 0F                               JMP                           target=0x0FCC
0FA6  96 0F EE                               LOADSTRING                    dst=v[0x00F], values=[62]
0FA9  19 96 00                               SLEEP                         ticks=0x0096
0FAC  9A 13 E4 B4 0F                         STRCMP_NE_JMP                 start=v[0x013], values=[52], target=0x0FB4
0FB1  15 AC 0B                               JMP                           target=0x0BAC
0FB4  9A 13 EC BC 0F                         STRCMP_NE_JMP                 start=v[0x013], values=[60], target=0x0FBC
0FB9  15 00 0F                               JMP                           target=0x0F00
0FBC  9A 13 F2 C4 0F                         STRCMP_NE_JMP                 start=v[0x013], values=[66], target=0x0FC4
0FC1  15 CC 0F                               JMP                           target=0x0FCC
0FC4  9A 13 F5 CC 0F                         STRCMP_NE_JMP                 start=v[0x013], values=[69], target=0x0FCC
0FC9  15 59 13                               JMP                           target=0x1359
0FCC  9A 28 B9 D4 0F                         STRCMP_NE_JMP                 start=v[0x028], values=[9], target=0x0FD4
0FD1  15 F8 06                               JMP                           target=0x06F8
0FD4  37 BA 01 10 01 D8 01 3B 01             COPY_RECT_TO_BG               left=0x01BA, top=0x0110, right=0x01D8, bottom=0x013B
0FDD  A4 00 28 00                            MOV                           dst=v[0x000], src=0x0028
0FE1  B3 0F 23 E1                            LOADSTRING_INDIRECT           dst=v[0x00F], values=[v[0x000]]
0FE5  96 28 B9                               LOADSTRING                    dst=v[0x028], values=[9]
0FE8  9A 15 B0 FA 0F                         STRCMP_NE_JMP                 start=v[0x015], values=[0], target=0x0FFA
0FED  96 0F F6                               LOADSTRING                    dst=v[0x00F], values=[70]
0FF0  96 00 62 B8                            LOADSTRING                    dst=v[0x000], values=[50, 8]
0FF4  15 CC 07                               JMP                           target=0x07CC
0FF7  15 20 10                               JMP                           target=0x1020
0FFA  96 0F EE                               LOADSTRING                    dst=v[0x00F], values=[62]
0FFD  19 96 00                               SLEEP                         ticks=0x0096
1000  9A 15 E4 08 10                         STRCMP_NE_JMP                 start=v[0x015], values=[52], target=0x1008
1005  15 00 0C                               JMP                           target=0x0C00
1008  9A 15 EC 10 10                         STRCMP_NE_JMP                 start=v[0x015], values=[60], target=0x1010
100D  15 78 0F                               JMP                           target=0x0F78
1010  9A 15 F2 18 10                         STRCMP_NE_JMP                 start=v[0x015], values=[66], target=0x1018
1015  15 F8 06                               JMP                           target=0x06F8
1018  9A 15 F5 20 10                         STRCMP_NE_JMP                 start=v[0x015], values=[69], target=0x1020
101D  15 AD 13                               JMP                           target=0x13AD
1020  9A 29 B9 28 10                         STRCMP_NE_JMP                 start=v[0x029], values=[9], target=0x1028
1025  15 F8 06                               JMP                           target=0x06F8
1028  1A 07 01 B0 3D 10                      STRCMP_NE_JMP                 start=v[0x107], values=[0], target=0x103D
102E  37 A9 00 DE 00 C7 00 FD 00             COPY_RECT_TO_BG               left=0x00A9, top=0x00DE, right=0x00C7, bottom=0x00FD
1037  96 12 F4                               LOADSTRING                    dst=v[0x012], values=[68]
103A  15 64 10                               JMP                           target=0x1064
103D  1A 07 01 B1 52 10                      STRCMP_NE_JMP                 start=v[0x107], values=[1], target=0x1052
1043  37 AE 00 B6 00 D4 00 DC 00             COPY_RECT_TO_BG               left=0x00AE, top=0x00B6, right=0x00D4, bottom=0x00DC
104C  96 12 F4                               LOADSTRING                    dst=v[0x012], values=[68]
104F  15 64 10                               JMP                           target=0x1064
1052  1A 07 01 B2 64 10                      STRCMP_NE_JMP                 start=v[0x107], values=[2], target=0x1064
1058  37 EE 00 CB 00 0D 01 F6 00             COPY_RECT_TO_BG               left=0x00EE, top=0x00CB, right=0x010D, bottom=0x00F6
1061  96 12 F6                               LOADSTRING                    dst=v[0x012], values=[70]
1064  A4 00 29 00                            MOV                           dst=v[0x000], src=0x0029
1068  B3 0F 23 E1                            LOADSTRING_INDIRECT           dst=v[0x00F], values=[v[0x000]]
106C  96 29 B9                               LOADSTRING                    dst=v[0x029], values=[9]
106F  B2 12 08 01 83 10                      JNE_INDIRECT                  selector=v[0x012], rhs=0x0108, target=0x1083
1075  96 0F 23 F3                            LOADSTRING                    dst=v[0x00F], values=[v[0x012]]
1079  96 00 63 B1                            LOADSTRING                    dst=v[0x000], values=[51, 1]
107D  15 CC 07                               JMP                           target=0x07CC
1080  15 B6 10                               JMP                           target=0x10B6
1083  96 0F EE                               LOADSTRING                    dst=v[0x00F], values=[62]
1086  19 96 00                               SLEEP                         ticks=0x0096
1089  B2 12 0C 01 92 10                      JNE_INDIRECT                  selector=v[0x012], rhs=0x010C, target=0x1092
108F  15 54 0C                               JMP                           target=0x0C54
1092  B2 12 0A 01 9B 10                      JNE_INDIRECT                  selector=v[0x012], rhs=0x010A, target=0x109B
1098  15 F8 06                               JMP                           target=0x06F8
109B  B2 12 09 01 A4 10                      JNE_INDIRECT                  selector=v[0x012], rhs=0x0109, target=0x10A4
10A1  15 B6 10                               JMP                           target=0x10B6
10A4  B2 12 0B 01 B6 10                      JNE_INDIRECT                  selector=v[0x012], rhs=0x010B, target=0x10B6
10AA  1A 07 01 B2 B3 10                      STRCMP_NE_JMP                 start=v[0x107], values=[2], target=0x10B3
10B0  15 36 07                               JMP                           target=0x0736
10B3  15 01 14                               JMP                           target=0x1401
10B6  9A 2A B9 BE 10                         STRCMP_NE_JMP                 start=v[0x02A], values=[9], target=0x10BE
10BB  15 F8 06                               JMP                           target=0x06F8
10BE  1A 07 01 B0 D3 10                      STRCMP_NE_JMP                 start=v[0x107], values=[0], target=0x10D3
10C4  37 CB 00 D8 00 EB 00 06 01             COPY_RECT_TO_BG               left=0x00CB, top=0x00D8, right=0x00EB, bottom=0x0106
10CD  96 12 F6                               LOADSTRING                    dst=v[0x012], values=[70]
10D0  15 FA 10                               JMP                           target=0x10FA
10D3  1A 07 01 B1 E8 10                      STRCMP_NE_JMP                 start=v[0x107], values=[1], target=0x10E8
10D9  37 DA 00 AA 00 05 01 E8 00             COPY_RECT_TO_BG               left=0x00DA, top=0x00AA, right=0x0105, bottom=0x00E8
10E2  96 12 F6                               LOADSTRING                    dst=v[0x012], values=[70]
10E5  15 FA 10                               JMP                           target=0x10FA
10E8  1A 07 01 B2 FA 10                      STRCMP_NE_JMP                 start=v[0x107], values=[2], target=0x10FA
10EE  37 16 01 CB 00 3C 01 EE 00             COPY_RECT_TO_BG               left=0x0116, top=0x00CB, right=0x013C, bottom=0x00EE
10F7  96 12 F4                               LOADSTRING                    dst=v[0x012], values=[68]
10FA  A4 00 2A 00                            MOV                           dst=v[0x000], src=0x002A
10FE  B3 0F 23 E1                            LOADSTRING_INDIRECT           dst=v[0x00F], values=[v[0x000]]
1102  96 2A B9                               LOADSTRING                    dst=v[0x02A], values=[9]
1105  B2 12 08 01 19 11                      JNE_INDIRECT                  selector=v[0x012], rhs=0x0108, target=0x1119
110B  96 0F 23 F3                            LOADSTRING                    dst=v[0x00F], values=[v[0x012]]
110F  96 00 63 B2                            LOADSTRING                    dst=v[0x000], values=[51, 2]
1113  15 CC 07                               JMP                           target=0x07CC
1116  15 4C 11                               JMP                           target=0x114C
1119  96 0F EE                               LOADSTRING                    dst=v[0x00F], values=[62]
111C  19 96 00                               SLEEP                         ticks=0x0096
111F  B2 12 0C 01 28 11                      JNE_INDIRECT                  selector=v[0x012], rhs=0x010C, target=0x1128
1125  15 E1 0C                               JMP                           target=0x0CE1
1128  B2 12 0A 01 31 11                      JNE_INDIRECT                  selector=v[0x012], rhs=0x010A, target=0x1131
112E  15 20 10                               JMP                           target=0x1020
1131  B2 12 09 01 3A 11                      JNE_INDIRECT                  selector=v[0x012], rhs=0x0109, target=0x113A
1137  15 4C 11                               JMP                           target=0x114C
113A  B2 12 0B 01 4C 11                      JNE_INDIRECT                  selector=v[0x012], rhs=0x010B, target=0x114C
1140  1A 07 01 B2 49 11                      STRCMP_NE_JMP                 start=v[0x107], values=[2], target=0x1149
1146  15 36 07                               JMP                           target=0x0736
1149  15 82 14                               JMP                           target=0x1482
114C  9A 2B B9 54 11                         STRCMP_NE_JMP                 start=v[0x02B], values=[9], target=0x1154
1151  15 F8 06                               JMP                           target=0x06F8
1154  1A 07 01 B0 66 11                      STRCMP_NE_JMP                 start=v[0x107], values=[0], target=0x1166
115A  37 F0 00 DE 00 12 01 FC 00             COPY_RECT_TO_BG               left=0x00F0, top=0x00DE, right=0x0112, bottom=0x00FC
1163  15 87 11                               JMP                           target=0x1187
1166  1A 07 01 B1 78 11                      STRCMP_NE_JMP                 start=v[0x107], values=[1], target=0x1178
116C  37 0D 01 AF 00 3C 01 DC 00             COPY_RECT_TO_BG               left=0x010D, top=0x00AF, right=0x013C, bottom=0x00DC
1175  15 87 11                               JMP                           target=0x1187
1178  1A 07 01 B2 87 11                      STRCMP_NE_JMP                 start=v[0x107], values=[2], target=0x1187
117E  37 45 01 CB 00 6B 01 F0 00             COPY_RECT_TO_BG               left=0x0145, top=0x00CB, right=0x016B, bottom=0x00F0
1187  A4 00 2B 00                            MOV                           dst=v[0x000], src=0x002B
118B  B3 0F 23 E1                            LOADSTRING_INDIRECT           dst=v[0x00F], values=[v[0x000]]
118F  96 2B B9                               LOADSTRING                    dst=v[0x02B], values=[9]
1192  9A 13 B0 A4 11                         STRCMP_NE_JMP                 start=v[0x013], values=[0], target=0x11A4
1197  96 0F F4                               LOADSTRING                    dst=v[0x00F], values=[68]
119A  96 00 63 B3                            LOADSTRING                    dst=v[0x000], values=[51, 3]
119E  15 CC 07                               JMP                           target=0x07CC
11A1  15 D3 11                               JMP                           target=0x11D3
11A4  96 0F EE                               LOADSTRING                    dst=v[0x00F], values=[62]
11A7  19 96 00                               SLEEP                         ticks=0x0096
11AA  9A 13 E4 B2 11                         STRCMP_NE_JMP                 start=v[0x013], values=[52], target=0x11B2
11AF  15 6E 0D                               JMP                           target=0x0D6E
11B2  9A 13 EC BA 11                         STRCMP_NE_JMP                 start=v[0x013], values=[60], target=0x11BA
11B7  15 B6 10                               JMP                           target=0x10B6
11BA  9A 13 F2 C2 11                         STRCMP_NE_JMP                 start=v[0x013], values=[66], target=0x11C2
11BF  15 D3 11                               JMP                           target=0x11D3
11C2  9A 13 F5 D3 11                         STRCMP_NE_JMP                 start=v[0x013], values=[69], target=0x11D3
11C7  1A 07 01 B2 D0 11                      STRCMP_NE_JMP                 start=v[0x107], values=[2], target=0x11D0
11CD  15 36 07                               JMP                           target=0x0736
11D0  15 F7 14                               JMP                           target=0x14F7
11D3  9A 2C B9 DB 11                         STRCMP_NE_JMP                 start=v[0x02C], values=[9], target=0x11DB
11D8  15 F8 06                               JMP                           target=0x06F8
11DB  1A 07 01 B0 F0 11                      STRCMP_NE_JMP                 start=v[0x107], values=[0], target=0x11F0
11E1  37 1E 01 D4 00 36 01 0C 01             COPY_RECT_TO_BG               left=0x011E, top=0x00D4, right=0x0136, bottom=0x010C
11EA  96 12 F5                               LOADSTRING                    dst=v[0x012], values=[69]
11ED  15 17 12                               JMP                           target=0x1217
11F0  1A 07 01 B1 05 12                      STRCMP_NE_JMP                 start=v[0x107], values=[1], target=0x1205
11F6  37 4D 01 A3 00 6D 01 EE 00             COPY_RECT_TO_BG               left=0x014D, top=0x00A3, right=0x016D, bottom=0x00EE
11FF  96 12 F5                               LOADSTRING                    dst=v[0x012], values=[69]
1202  15 17 12                               JMP                           target=0x1217
1205  1A 07 01 B2 17 12                      STRCMP_NE_JMP                 start=v[0x107], values=[2], target=0x1217
120B  37 73 01 CD 00 93 01 F5 00             COPY_RECT_TO_BG               left=0x0173, top=0x00CD, right=0x0193, bottom=0x00F5
1214  96 12 F6                               LOADSTRING                    dst=v[0x012], values=[70]
1217  A4 00 2C 00                            MOV                           dst=v[0x000], src=0x002C
121B  B3 0F 23 E1                            LOADSTRING_INDIRECT           dst=v[0x00F], values=[v[0x000]]
121F  96 2C B9                               LOADSTRING                    dst=v[0x02C], values=[9]
1222  B2 12 08 01 36 12                      JNE_INDIRECT                  selector=v[0x012], rhs=0x0108, target=0x1236
1228  96 0F 23 F3                            LOADSTRING                    dst=v[0x00F], values=[v[0x012]]
122C  96 00 63 B4                            LOADSTRING                    dst=v[0x000], values=[51, 4]
1230  15 CC 07                               JMP                           target=0x07CC
1233  15 69 12                               JMP                           target=0x1269
1236  96 0F EE                               LOADSTRING                    dst=v[0x00F], values=[62]
1239  19 96 00                               SLEEP                         ticks=0x0096
123C  B2 12 0C 01 45 12                      JNE_INDIRECT                  selector=v[0x012], rhs=0x010C, target=0x1245
1242  15 FB 0D                               JMP                           target=0x0DFB
1245  B2 12 0A 01 4E 12                      JNE_INDIRECT                  selector=v[0x012], rhs=0x010A, target=0x124E
124B  15 4C 11                               JMP                           target=0x114C
124E  B2 12 09 01 57 12                      JNE_INDIRECT                  selector=v[0x012], rhs=0x0109, target=0x1257
1254  15 69 12                               JMP                           target=0x1269
1257  B2 12 0B 01 69 12                      JNE_INDIRECT                  selector=v[0x012], rhs=0x010B, target=0x1269
125D  1A 07 01 B2 66 12                      STRCMP_NE_JMP                 start=v[0x107], values=[2], target=0x1266
1263  15 36 07                               JMP                           target=0x0736
1266  15 78 15                               JMP                           target=0x1578
1269  9A 2D B9 71 12                         STRCMP_NE_JMP                 start=v[0x02D], values=[9], target=0x1271
126E  15 F8 06                               JMP                           target=0x06F8
1271  1A 07 01 B0 86 12                      STRCMP_NE_JMP                 start=v[0x107], values=[0], target=0x1286
1277  37 49 01 D2 00 64 01 0D 01             COPY_RECT_TO_BG               left=0x0149, top=0x00D2, right=0x0164, bottom=0x010D
1280  96 12 F7                               LOADSTRING                    dst=v[0x012], values=[71]
1283  15 98 12                               JMP                           target=0x1298
1286  1A 07 01 B1 98 12                      STRCMP_NE_JMP                 start=v[0x107], values=[1], target=0x1298
128C  37 7A 01 AA 00 A6 01 E8 00             COPY_RECT_TO_BG               left=0x017A, top=0x00AA, right=0x01A6, bottom=0x00E8
1295  96 12 F6                               LOADSTRING                    dst=v[0x012], values=[70]
1298  A4 00 2D 00                            MOV                           dst=v[0x000], src=0x002D
129C  B3 0F 23 E1                            LOADSTRING_INDIRECT           dst=v[0x00F], values=[v[0x000]]
12A0  96 2D B9                               LOADSTRING                    dst=v[0x02D], values=[9]
12A3  B2 12 08 01 B7 12                      JNE_INDIRECT                  selector=v[0x012], rhs=0x0108, target=0x12B7
12A9  96 0F 23 F3                            LOADSTRING                    dst=v[0x00F], values=[v[0x012]]
12AD  96 00 63 B5                            LOADSTRING                    dst=v[0x000], values=[51, 5]
12B1  15 CC 07                               JMP                           target=0x07CC
12B4  15 E1 12                               JMP                           target=0x12E1
12B7  96 0F EE                               LOADSTRING                    dst=v[0x00F], values=[62]
12BA  19 96 00                               SLEEP                         ticks=0x0096
12BD  B2 12 0C 01 C6 12                      JNE_INDIRECT                  selector=v[0x012], rhs=0x010C, target=0x12C6
12C3  15 88 0E                               JMP                           target=0x0E88
12C6  B2 12 0A 01 CF 12                      JNE_INDIRECT                  selector=v[0x012], rhs=0x010A, target=0x12CF
12CC  15 D3 11                               JMP                           target=0x11D3
12CF  B2 12 09 01 D8 12                      JNE_INDIRECT                  selector=v[0x012], rhs=0x0109, target=0x12D8
12D5  15 E1 12                               JMP                           target=0x12E1
12D8  B2 12 0B 01 E1 12                      JNE_INDIRECT                  selector=v[0x012], rhs=0x010B, target=0x12E1
12DE  15 F9 15                               JMP                           target=0x15F9
12E1  9A 2E B9 E9 12                         STRCMP_NE_JMP                 start=v[0x02E], values=[9], target=0x12E9
12E6  15 F8 06                               JMP                           target=0x06F8
12E9  1A 07 01 B0 FE 12                      STRCMP_NE_JMP                 start=v[0x107], values=[0], target=0x12FE
12EF  37 72 01 D4 00 8D 01 0B 01             COPY_RECT_TO_BG               left=0x0172, top=0x00D4, right=0x018D, bottom=0x010B
12F8  96 12 F7                               LOADSTRING                    dst=v[0x012], values=[71]
12FB  15 10 13                               JMP                           target=0x1310
12FE  1A 07 01 B1 10 13                      STRCMP_NE_JMP                 start=v[0x107], values=[1], target=0x1310
1304  37 B2 01 AC 00 CD 01 ED 00             COPY_RECT_TO_BG               left=0x01B2, top=0x00AC, right=0x01CD, bottom=0x00ED
130D  96 12 F5                               LOADSTRING                    dst=v[0x012], values=[69]
1310  A4 00 2E 00                            MOV                           dst=v[0x000], src=0x002E
1314  B3 0F 23 E1                            LOADSTRING_INDIRECT           dst=v[0x00F], values=[v[0x000]]
1318  96 2E B9                               LOADSTRING                    dst=v[0x02E], values=[9]
131B  B2 12 08 01 2F 13                      JNE_INDIRECT                  selector=v[0x012], rhs=0x0108, target=0x132F
1321  96 0F 23 F3                            LOADSTRING                    dst=v[0x00F], values=[v[0x012]]
1325  96 00 63 B6                            LOADSTRING                    dst=v[0x000], values=[51, 6]
1329  15 CC 07                               JMP                           target=0x07CC
132C  15 59 13                               JMP                           target=0x1359
132F  96 0F EE                               LOADSTRING                    dst=v[0x00F], values=[62]
1332  19 96 00                               SLEEP                         ticks=0x0096
1335  B2 12 0C 01 3E 13                      JNE_INDIRECT                  selector=v[0x012], rhs=0x010C, target=0x133E
133B  15 00 0F                               JMP                           target=0x0F00
133E  B2 12 0A 01 47 13                      JNE_INDIRECT                  selector=v[0x012], rhs=0x010A, target=0x1347
1344  15 69 12                               JMP                           target=0x1269
1347  B2 12 09 01 50 13                      JNE_INDIRECT                  selector=v[0x012], rhs=0x0109, target=0x1350
134D  15 59 13                               JMP                           target=0x1359
1350  B2 12 0B 01 59 13                      JNE_INDIRECT                  selector=v[0x012], rhs=0x010B, target=0x1359
1356  15 7A 16                               JMP                           target=0x167A
1359  9A 2F B9 61 13                         STRCMP_NE_JMP                 start=v[0x02F], values=[9], target=0x1361
135E  15 F8 06                               JMP                           target=0x06F8
1361  37 96 01 D8 00 B5 01 06 01             COPY_RECT_TO_BG               left=0x0196, top=0x00D8, right=0x01B5, bottom=0x0106
136A  A4 00 2F 00                            MOV                           dst=v[0x000], src=0x002F
136E  B3 0F 23 E1                            LOADSTRING_INDIRECT           dst=v[0x00F], values=[v[0x000]]
1372  96 2F B9                               LOADSTRING                    dst=v[0x02F], values=[9]
1375  9A 15 B0 87 13                         STRCMP_NE_JMP                 start=v[0x015], values=[0], target=0x1387
137A  96 0F F6                               LOADSTRING                    dst=v[0x00F], values=[70]
137D  96 00 63 B7                            LOADSTRING                    dst=v[0x000], values=[51, 7]
1381  15 CC 07                               JMP                           target=0x07CC
1384  15 AD 13                               JMP                           target=0x13AD
1387  96 0F EE                               LOADSTRING                    dst=v[0x00F], values=[62]
138A  19 96 00                               SLEEP                         ticks=0x0096
138D  9A 15 E4 95 13                         STRCMP_NE_JMP                 start=v[0x015], values=[52], target=0x1395
1392  15 78 0F                               JMP                           target=0x0F78
1395  9A 15 EC 9D 13                         STRCMP_NE_JMP                 start=v[0x015], values=[60], target=0x139D
139A  15 E1 12                               JMP                           target=0x12E1
139D  9A 15 F2 A5 13                         STRCMP_NE_JMP                 start=v[0x015], values=[66], target=0x13A5
13A2  15 AD 13                               JMP                           target=0x13AD
13A5  9A 15 F5 AD 13                         STRCMP_NE_JMP                 start=v[0x015], values=[69], target=0x13AD
13AA  15 FB 16                               JMP                           target=0x16FB
13AD  9A 30 B9 B5 13                         STRCMP_NE_JMP                 start=v[0x030], values=[9], target=0x13B5
13B2  15 F8 06                               JMP                           target=0x06F8
13B5  37 BD 01 D5 00 D4 01 0A 01             COPY_RECT_TO_BG               left=0x01BD, top=0x00D5, right=0x01D4, bottom=0x010A
13BE  A4 00 30 00                            MOV                           dst=v[0x000], src=0x0030
13C2  B3 0F 23 E1                            LOADSTRING_INDIRECT           dst=v[0x00F], values=[v[0x000]]
13C6  96 30 B9                               LOADSTRING                    dst=v[0x030], values=[9]
13C9  9A 16 B0 DB 13                         STRCMP_NE_JMP                 start=v[0x016], values=[0], target=0x13DB
13CE  96 0F F7                               LOADSTRING                    dst=v[0x00F], values=[71]
13D1  96 00 63 B8                            LOADSTRING                    dst=v[0x000], values=[51, 8]
13D5  15 CC 07                               JMP                           target=0x07CC
13D8  15 01 14                               JMP                           target=0x1401
13DB  96 0F EE                               LOADSTRING                    dst=v[0x00F], values=[62]
13DE  19 96 00                               SLEEP                         ticks=0x0096
13E1  9A 16 E4 E9 13                         STRCMP_NE_JMP                 start=v[0x016], values=[52], target=0x13E9
13E6  15 CC 0F                               JMP                           target=0x0FCC
13E9  9A 16 EC F1 13                         STRCMP_NE_JMP                 start=v[0x016], values=[60], target=0x13F1
13EE  15 59 13                               JMP                           target=0x1359
13F1  9A 16 F2 F9 13                         STRCMP_NE_JMP                 start=v[0x016], values=[66], target=0x13F9
13F6  15 F8 06                               JMP                           target=0x06F8
13F9  9A 16 F5 01 14                         STRCMP_NE_JMP                 start=v[0x016], values=[69], target=0x1401
13FE  15 4F 17                               JMP                           target=0x174F
1401  9A 31 B9 09 14                         STRCMP_NE_JMP                 start=v[0x031], values=[9], target=0x1409
1406  15 F8 06                               JMP                           target=0x06F8
1409  1A 07 01 B0 1E 14                      STRCMP_NE_JMP                 start=v[0x107], values=[0], target=0x141E
140F  37 AF 00 A0 00 C2 00 D3 00             COPY_RECT_TO_BG               left=0x00AF, top=0x00A0, right=0x00C2, bottom=0x00D3
1418  96 12 F5                               LOADSTRING                    dst=v[0x012], values=[69]
141B  15 30 14                               JMP                           target=0x1430
141E  1A 07 01 B1 30 14                      STRCMP_NE_JMP                 start=v[0x107], values=[1], target=0x1430
1424  37 B2 00 69 00 CF 00 A5 00             COPY_RECT_TO_BG               left=0x00B2, top=0x0069, right=0x00CF, bottom=0x00A5
142D  96 12 F7                               LOADSTRING                    dst=v[0x012], values=[71]
1430  A4 00 31 00                            MOV                           dst=v[0x000], src=0x0031
1434  B3 0F 23 E1                            LOADSTRING_INDIRECT           dst=v[0x00F], values=[v[0x000]]
1438  96 31 B9                               LOADSTRING                    dst=v[0x031], values=[9]
143B  B2 12 08 01 4F 14                      JNE_INDIRECT                  selector=v[0x012], rhs=0x0108, target=0x144F
1441  96 0F 23 F3                            LOADSTRING                    dst=v[0x00F], values=[v[0x012]]
1445  96 00 64 B1                            LOADSTRING                    dst=v[0x000], values=[52, 1]
1449  15 CC 07                               JMP                           target=0x07CC
144C  15 82 14                               JMP                           target=0x1482
144F  96 0F EE                               LOADSTRING                    dst=v[0x00F], values=[62]
1452  19 96 00                               SLEEP                         ticks=0x0096
1455  B2 12 0C 01 5E 14                      JNE_INDIRECT                  selector=v[0x012], rhs=0x010C, target=0x145E
145B  15 20 10                               JMP                           target=0x1020
145E  B2 12 0A 01 67 14                      JNE_INDIRECT                  selector=v[0x012], rhs=0x010A, target=0x1467
1464  15 F8 06                               JMP                           target=0x06F8
1467  B2 12 09 01 70 14                      JNE_INDIRECT                  selector=v[0x012], rhs=0x0109, target=0x1470
146D  15 82 14                               JMP                           target=0x1482
1470  B2 12 0B 01 82 14                      JNE_INDIRECT                  selector=v[0x012], rhs=0x010B, target=0x1482
1476  1A 07 01 B1 7F 14                      STRCMP_NE_JMP                 start=v[0x107], values=[1], target=0x147F
147C  15 36 07                               JMP                           target=0x0736
147F  15 A3 17                               JMP                           target=0x17A3
1482  9A 32 B9 8A 14                         STRCMP_NE_JMP                 start=v[0x032], values=[9], target=0x148A
1487  15 F8 06                               JMP                           target=0x06F8
148A  1A 07 01 B0 9C 14                      STRCMP_NE_JMP                 start=v[0x107], values=[0], target=0x149C
1490  37 CB 00 A5 00 EA 00 C3 00             COPY_RECT_TO_BG               left=0x00CB, top=0x00A5, right=0x00EA, bottom=0x00C3
1499  15 AB 14                               JMP                           target=0x14AB
149C  1A 07 01 B1 AB 14                      STRCMP_NE_JMP                 start=v[0x107], values=[1], target=0x14AB
14A2  37 DB 00 67 00 06 01 8F 00             COPY_RECT_TO_BG               left=0x00DB, top=0x0067, right=0x0106, bottom=0x008F
14AB  A4 00 32 00                            MOV                           dst=v[0x000], src=0x0032
14AF  B3 0F 23 E1                            LOADSTRING_INDIRECT           dst=v[0x00F], values=[v[0x000]]
14B3  96 32 B9                               LOADSTRING                    dst=v[0x032], values=[9]
14B6  9A 13 B0 C8 14                         STRCMP_NE_JMP                 start=v[0x013], values=[0], target=0x14C8
14BB  96 0F F4                               LOADSTRING                    dst=v[0x00F], values=[68]
14BE  96 00 64 B2                            LOADSTRING                    dst=v[0x000], values=[52, 2]
14C2  15 CC 07                               JMP                           target=0x07CC
14C5  15 F7 14                               JMP                           target=0x14F7
14C8  96 0F EE                               LOADSTRING                    dst=v[0x00F], values=[62]
14CB  19 96 00                               SLEEP                         ticks=0x0096
14CE  9A 13 E4 D6 14                         STRCMP_NE_JMP                 start=v[0x013], values=[52], target=0x14D6
14D3  15 B6 10                               JMP                           target=0x10B6
14D6  9A 13 EC DE 14                         STRCMP_NE_JMP                 start=v[0x013], values=[60], target=0x14DE
14DB  15 01 14                               JMP                           target=0x1401
14DE  9A 13 F2 E6 14                         STRCMP_NE_JMP                 start=v[0x013], values=[66], target=0x14E6
14E3  15 F7 14                               JMP                           target=0x14F7
14E6  9A 13 F5 F7 14                         STRCMP_NE_JMP                 start=v[0x013], values=[69], target=0x14F7
14EB  1A 07 01 B1 F4 14                      STRCMP_NE_JMP                 start=v[0x107], values=[1], target=0x14F4
14F1  15 36 07                               JMP                           target=0x0736
14F4  15 F7 17                               JMP                           target=0x17F7
14F7  9A 33 B9 FF 14                         STRCMP_NE_JMP                 start=v[0x033], values=[9], target=0x14FF
14FC  15 F8 06                               JMP                           target=0x06F8
14FF  1A 07 01 B0 14 15                      STRCMP_NE_JMP                 start=v[0x107], values=[0], target=0x1514
1505  37 F0 00 9D 00 12 01 CB 00             COPY_RECT_TO_BG               left=0x00F0, top=0x009D, right=0x0112, bottom=0x00CB
150E  96 12 F6                               LOADSTRING                    dst=v[0x012], values=[70]
1511  15 26 15                               JMP                           target=0x1526
1514  1A 07 01 B1 26 15                      STRCMP_NE_JMP                 start=v[0x107], values=[1], target=0x1526
151A  37 15 01 5A 00 34 01 9C 00             COPY_RECT_TO_BG               left=0x0115, top=0x005A, right=0x0134, bottom=0x009C
1523  96 12 F5                               LOADSTRING                    dst=v[0x012], values=[69]
1526  A4 00 33 00                            MOV                           dst=v[0x000], src=0x0033
152A  B3 0F 23 E1                            LOADSTRING_INDIRECT           dst=v[0x00F], values=[v[0x000]]
152E  96 33 B9                               LOADSTRING                    dst=v[0x033], values=[9]
1531  B2 12 08 01 45 15                      JNE_INDIRECT                  selector=v[0x012], rhs=0x0108, target=0x1545
1537  96 0F 23 F3                            LOADSTRING                    dst=v[0x00F], values=[v[0x012]]
153B  96 00 64 B3                            LOADSTRING                    dst=v[0x000], values=[52, 3]
153F  15 CC 07                               JMP                           target=0x07CC
1542  15 78 15                               JMP                           target=0x1578
1545  96 0F EE                               LOADSTRING                    dst=v[0x00F], values=[62]
1548  19 96 00                               SLEEP                         ticks=0x0096
154B  B2 12 0C 01 54 15                      JNE_INDIRECT                  selector=v[0x012], rhs=0x010C, target=0x1554
1551  15 4C 11                               JMP                           target=0x114C
1554  B2 12 0A 01 5D 15                      JNE_INDIRECT                  selector=v[0x012], rhs=0x010A, target=0x155D
155A  15 82 14                               JMP                           target=0x1482
155D  B2 12 09 01 66 15                      JNE_INDIRECT                  selector=v[0x012], rhs=0x0109, target=0x1566
1563  15 78 15                               JMP                           target=0x1578
1566  B2 12 0B 01 78 15                      JNE_INDIRECT                  selector=v[0x012], rhs=0x010B, target=0x1578
156C  1A 07 01 B2 75 15                      STRCMP_NE_JMP                 start=v[0x107], values=[2], target=0x1575
1572  15 36 07                               JMP                           target=0x0736
1575  15 4B 18                               JMP                           target=0x184B
1578  9A 34 B9 80 15                         STRCMP_NE_JMP                 start=v[0x034], values=[9], target=0x1580
157D  15 F8 06                               JMP                           target=0x06F8
1580  1A 07 01 B0 95 15                      STRCMP_NE_JMP                 start=v[0x107], values=[0], target=0x1595
1586  37 17 01 97 00 3C 01 CA 00             COPY_RECT_TO_BG               left=0x0117, top=0x0097, right=0x013C, bottom=0x00CA
158F  96 12 F6                               LOADSTRING                    dst=v[0x012], values=[70]
1592  15 A7 15                               JMP                           target=0x15A7
1595  1A 07 01 B1 A7 15                      STRCMP_NE_JMP                 start=v[0x107], values=[1], target=0x15A7
159B  37 4B 01 56 00 6F 01 9E 00             COPY_RECT_TO_BG               left=0x014B, top=0x0056, right=0x016F, bottom=0x009E
15A4  96 12 F7                               LOADSTRING                    dst=v[0x012], values=[71]
15A7  A4 00 34 00                            MOV                           dst=v[0x000], src=0x0034
15AB  B3 0F 23 E1                            LOADSTRING_INDIRECT           dst=v[0x00F], values=[v[0x000]]
15AF  96 34 B9                               LOADSTRING                    dst=v[0x034], values=[9]
15B2  B2 12 08 01 C6 15                      JNE_INDIRECT                  selector=v[0x012], rhs=0x0108, target=0x15C6
15B8  96 0F 23 F3                            LOADSTRING                    dst=v[0x00F], values=[v[0x012]]
15BC  96 00 64 B4                            LOADSTRING                    dst=v[0x000], values=[52, 4]
15C0  15 CC 07                               JMP                           target=0x07CC
15C3  15 F9 15                               JMP                           target=0x15F9
15C6  96 0F EE                               LOADSTRING                    dst=v[0x00F], values=[62]
15C9  19 96 00                               SLEEP                         ticks=0x0096
15CC  B2 12 0C 01 D5 15                      JNE_INDIRECT                  selector=v[0x012], rhs=0x010C, target=0x15D5
15D2  15 D3 11                               JMP                           target=0x11D3
15D5  B2 12 0A 01 DE 15                      JNE_INDIRECT                  selector=v[0x012], rhs=0x010A, target=0x15DE
15DB  15 F7 14                               JMP                           target=0x14F7
15DE  B2 12 09 01 E7 15                      JNE_INDIRECT                  selector=v[0x012], rhs=0x0109, target=0x15E7
15E4  15 F9 15                               JMP                           target=0x15F9
15E7  B2 12 0B 01 F9 15                      JNE_INDIRECT                  selector=v[0x012], rhs=0x010B, target=0x15F9
15ED  1A 07 01 B1 F6 15                      STRCMP_NE_JMP                 start=v[0x107], values=[1], target=0x15F6
15F3  15 36 07                               JMP                           target=0x0736
15F6  15 9F 18                               JMP                           target=0x189F
15F9  9A 35 B9 01 16                         STRCMP_NE_JMP                 start=v[0x035], values=[9], target=0x1601
15FE  15 F8 06                               JMP                           target=0x06F8
1601  1A 07 01 B0 16 16                      STRCMP_NE_JMP                 start=v[0x107], values=[0], target=0x1616
1607  37 43 01 9E 00 6A 01 C1 00             COPY_RECT_TO_BG               left=0x0143, top=0x009E, right=0x016A, bottom=0x00C1
1610  96 12 F4                               LOADSTRING                    dst=v[0x012], values=[68]
1613  15 28 16                               JMP                           target=0x1628
1616  1A 07 01 B1 28 16                      STRCMP_NE_JMP                 start=v[0x107], values=[1], target=0x1628
161C  37 7C 01 5F 00 A5 01 9C 00             COPY_RECT_TO_BG               left=0x017C, top=0x005F, right=0x01A5, bottom=0x009C
1625  96 12 F6                               LOADSTRING                    dst=v[0x012], values=[70]
1628  A4 00 35 00                            MOV                           dst=v[0x000], src=0x0035
162C  B3 0F 23 E1                            LOADSTRING_INDIRECT           dst=v[0x00F], values=[v[0x000]]
1630  96 35 B9                               LOADSTRING                    dst=v[0x035], values=[9]
1633  B2 12 08 01 47 16                      JNE_INDIRECT                  selector=v[0x012], rhs=0x0108, target=0x1647
1639  96 0F 23 F3                            LOADSTRING                    dst=v[0x00F], values=[v[0x012]]
163D  96 00 64 B5                            LOADSTRING                    dst=v[0x000], values=[52, 5]
1641  15 CC 07                               JMP                           target=0x07CC
1644  15 7A 16                               JMP                           target=0x167A
1647  96 0F EE                               LOADSTRING                    dst=v[0x00F], values=[62]
164A  19 96 00                               SLEEP                         ticks=0x0096
164D  B2 12 0C 01 56 16                      JNE_INDIRECT                  selector=v[0x012], rhs=0x010C, target=0x1656
1653  15 69 12                               JMP                           target=0x1269
1656  B2 12 0A 01 5F 16                      JNE_INDIRECT                  selector=v[0x012], rhs=0x010A, target=0x165F
165C  15 78 15                               JMP                           target=0x1578
165F  B2 12 09 01 68 16                      JNE_INDIRECT                  selector=v[0x012], rhs=0x0109, target=0x1668
1665  15 7A 16                               JMP                           target=0x167A
1668  B2 12 0B 01 7A 16                      JNE_INDIRECT                  selector=v[0x012], rhs=0x010B, target=0x167A
166E  1A 07 01 B1 77 16                      STRCMP_NE_JMP                 start=v[0x107], values=[1], target=0x1677
1674  15 36 07                               JMP                           target=0x0736
1677  15 F3 18                               JMP                           target=0x18F3
167A  9A 36 B9 82 16                         STRCMP_NE_JMP                 start=v[0x036], values=[9], target=0x1682
167F  15 F8 06                               JMP                           target=0x06F8
1682  1A 07 01 B0 97 16                      STRCMP_NE_JMP                 start=v[0x107], values=[0], target=0x1697
1688  37 74 01 99 00 8B 01 D0 00             COPY_RECT_TO_BG               left=0x0174, top=0x0099, right=0x018B, bottom=0x00D0
1691  96 12 F5                               LOADSTRING                    dst=v[0x012], values=[69]
1694  15 A9 16                               JMP                           target=0x16A9
1697  1A 07 01 B1 A9 16                      STRCMP_NE_JMP                 start=v[0x107], values=[1], target=0x16A9
169D  37 B1 01 65 00 CF 01 A7 00             COPY_RECT_TO_BG               left=0x01B1, top=0x0065, right=0x01CF, bottom=0x00A7
16A6  96 12 F7                               LOADSTRING                    dst=v[0x012], values=[71]
16A9  A4 00 36 00                            MOV                           dst=v[0x000], src=0x0036
16AD  B3 0F 23 E1                            LOADSTRING_INDIRECT           dst=v[0x00F], values=[v[0x000]]
16B1  96 36 B9                               LOADSTRING                    dst=v[0x036], values=[9]
16B4  B2 12 08 01 C8 16                      JNE_INDIRECT                  selector=v[0x012], rhs=0x0108, target=0x16C8
16BA  96 0F 23 F3                            LOADSTRING                    dst=v[0x00F], values=[v[0x012]]
16BE  96 00 64 B6                            LOADSTRING                    dst=v[0x000], values=[52, 6]
16C2  15 CC 07                               JMP                           target=0x07CC
16C5  15 FB 16                               JMP                           target=0x16FB
16C8  96 0F EE                               LOADSTRING                    dst=v[0x00F], values=[62]
16CB  19 96 00                               SLEEP                         ticks=0x0096
16CE  B2 12 0C 01 D7 16                      JNE_INDIRECT                  selector=v[0x012], rhs=0x010C, target=0x16D7
16D4  15 E1 12                               JMP                           target=0x12E1
16D7  B2 12 0A 01 E0 16                      JNE_INDIRECT                  selector=v[0x012], rhs=0x010A, target=0x16E0
16DD  15 F9 15                               JMP                           target=0x15F9
16E0  B2 12 09 01 E9 16                      JNE_INDIRECT                  selector=v[0x012], rhs=0x0109, target=0x16E9
16E6  15 FB 16                               JMP                           target=0x16FB
16E9  B2 12 0B 01 FB 16                      JNE_INDIRECT                  selector=v[0x012], rhs=0x010B, target=0x16FB
16EF  1A 07 01 B1 F8 16                      STRCMP_NE_JMP                 start=v[0x107], values=[1], target=0x16F8
16F5  15 36 07                               JMP                           target=0x0736
16F8  15 47 19                               JMP                           target=0x1947
16FB  9A 37 B9 03 17                         STRCMP_NE_JMP                 start=v[0x037], values=[9], target=0x1703
1700  15 F8 06                               JMP                           target=0x06F8
1703  37 96 01 9E 00 B5 01 CD 00             COPY_RECT_TO_BG               left=0x0196, top=0x009E, right=0x01B5, bottom=0x00CD
170C  A4 00 37 00                            MOV                           dst=v[0x000], src=0x0037
1710  B3 0F 23 E1                            LOADSTRING_INDIRECT           dst=v[0x00F], values=[v[0x000]]
1714  96 37 B9                               LOADSTRING                    dst=v[0x037], values=[9]
1717  9A 15 B0 29 17                         STRCMP_NE_JMP                 start=v[0x015], values=[0], target=0x1729
171C  96 0F F6                               LOADSTRING                    dst=v[0x00F], values=[70]
171F  96 00 64 B7                            LOADSTRING                    dst=v[0x000], values=[52, 7]
1723  15 CC 07                               JMP                           target=0x07CC
1726  15 4F 17                               JMP                           target=0x174F
1729  96 0F EE                               LOADSTRING                    dst=v[0x00F], values=[62]
172C  19 96 00                               SLEEP                         ticks=0x0096
172F  9A 15 E4 37 17                         STRCMP_NE_JMP                 start=v[0x015], values=[52], target=0x1737
1734  15 59 13                               JMP                           target=0x1359
1737  9A 15 EC 3F 17                         STRCMP_NE_JMP                 start=v[0x015], values=[60], target=0x173F
173C  15 7A 16                               JMP                           target=0x167A
173F  9A 15 F2 47 17                         STRCMP_NE_JMP                 start=v[0x015], values=[66], target=0x1747
1744  15 4F 17                               JMP                           target=0x174F
1747  9A 15 F5 4F 17                         STRCMP_NE_JMP                 start=v[0x015], values=[69], target=0x174F
174C  15 9B 19                               JMP                           target=0x199B
174F  9A 38 B9 57 17                         STRCMP_NE_JMP                 start=v[0x038], values=[9], target=0x1757
1754  15 F8 06                               JMP                           target=0x06F8
1757  37 BE 01 A0 00 D4 01 D3 00             COPY_RECT_TO_BG               left=0x01BE, top=0x00A0, right=0x01D4, bottom=0x00D3
1760  A4 00 38 00                            MOV                           dst=v[0x000], src=0x0038
1764  B3 0F 23 E1                            LOADSTRING_INDIRECT           dst=v[0x00F], values=[v[0x000]]
1768  96 38 B9                               LOADSTRING                    dst=v[0x038], values=[9]
176B  9A 14 B0 7D 17                         STRCMP_NE_JMP                 start=v[0x014], values=[0], target=0x177D
1770  96 0F F5                               LOADSTRING                    dst=v[0x00F], values=[69]
1773  96 00 64 B8                            LOADSTRING                    dst=v[0x000], values=[52, 8]
1777  15 CC 07                               JMP                           target=0x07CC
177A  15 A3 17                               JMP                           target=0x17A3
177D  96 0F EE                               LOADSTRING                    dst=v[0x00F], values=[62]
1780  19 96 00                               SLEEP                         ticks=0x0096
1783  9A 14 E4 8B 17                         STRCMP_NE_JMP                 start=v[0x014], values=[52], target=0x178B
1788  15 AD 13                               JMP                           target=0x13AD
178B  9A 14 EC 93 17                         STRCMP_NE_JMP                 start=v[0x014], values=[60], target=0x1793
1790  15 FB 16                               JMP                           target=0x16FB
1793  9A 14 F2 9B 17                         STRCMP_NE_JMP                 start=v[0x014], values=[66], target=0x179B
1798  15 F8 06                               JMP                           target=0x06F8
179B  9A 14 F5 A3 17                         STRCMP_NE_JMP                 start=v[0x014], values=[69], target=0x17A3
17A0  15 EF 19                               JMP                           target=0x19EF
17A3  9A 39 B9 AB 17                         STRCMP_NE_JMP                 start=v[0x039], values=[9], target=0x17AB
17A8  15 F8 06                               JMP                           target=0x06F8
17AB  37 AE 00 6B 00 C2 00 9B 00             COPY_RECT_TO_BG               left=0x00AE, top=0x006B, right=0x00C2, bottom=0x009B
17B4  A4 00 39 00                            MOV                           dst=v[0x000], src=0x0039
17B8  B3 0F 23 E1                            LOADSTRING_INDIRECT           dst=v[0x00F], values=[v[0x000]]
17BC  96 39 B9                               LOADSTRING                    dst=v[0x039], values=[9]
17BF  9A 14 B0 D1 17                         STRCMP_NE_JMP                 start=v[0x014], values=[0], target=0x17D1
17C4  96 0F F5                               LOADSTRING                    dst=v[0x00F], values=[69]
17C7  96 00 65 B1                            LOADSTRING                    dst=v[0x000], values=[53, 1]
17CB  15 CC 07                               JMP                           target=0x07CC
17CE  15 F7 17                               JMP                           target=0x17F7
17D1  96 0F EE                               LOADSTRING                    dst=v[0x00F], values=[62]
17D4  19 96 00                               SLEEP                         ticks=0x0096
17D7  9A 14 E4 DF 17                         STRCMP_NE_JMP                 start=v[0x014], values=[52], target=0x17DF
17DC  15 01 14                               JMP                           target=0x1401
17DF  9A 14 EC E7 17                         STRCMP_NE_JMP                 start=v[0x014], values=[60], target=0x17E7
17E4  15 F8 06                               JMP                           target=0x06F8
17E7  9A 14 F2 EF 17                         STRCMP_NE_JMP                 start=v[0x014], values=[66], target=0x17EF
17EC  15 F7 17                               JMP                           target=0x17F7
17EF  9A 14 F5 F7 17                         STRCMP_NE_JMP                 start=v[0x014], values=[69], target=0x17F7
17F4  15 36 07                               JMP                           target=0x0736
17F7  9A 3A B9 FF 17                         STRCMP_NE_JMP                 start=v[0x03A], values=[9], target=0x17FF
17FC  15 F8 06                               JMP                           target=0x06F8
17FF  37 CB 00 67 00 EB 00 92 00             COPY_RECT_TO_BG               left=0x00CB, top=0x0067, right=0x00EB, bottom=0x0092
1808  A4 00 3A 00                            MOV                           dst=v[0x000], src=0x003A
180C  B3 0F 23 E1                            LOADSTRING_INDIRECT           dst=v[0x00F], values=[v[0x000]]
1810  96 3A B9                               LOADSTRING                    dst=v[0x03A], values=[9]
1813  9A 15 B0 25 18                         STRCMP_NE_JMP                 start=v[0x015], values=[0], target=0x1825
1818  96 0F F6                               LOADSTRING                    dst=v[0x00F], values=[70]
181B  96 00 65 B2                            LOADSTRING                    dst=v[0x000], values=[53, 2]
181F  15 CC 07                               JMP                           target=0x07CC
1822  15 4B 18                               JMP                           target=0x184B
1825  96 0F EE                               LOADSTRING                    dst=v[0x00F], values=[62]
1828  19 96 00                               SLEEP                         ticks=0x0096
182B  9A 15 E4 33 18                         STRCMP_NE_JMP                 start=v[0x015], values=[52], target=0x1833
1830  15 82 14                               JMP                           target=0x1482
1833  9A 15 EC 3B 18                         STRCMP_NE_JMP                 start=v[0x015], values=[60], target=0x183B
1838  15 A3 17                               JMP                           target=0x17A3
183B  9A 15 F2 43 18                         STRCMP_NE_JMP                 start=v[0x015], values=[66], target=0x1843
1840  15 4B 18                               JMP                           target=0x184B
1843  9A 15 F5 4B 18                         STRCMP_NE_JMP                 start=v[0x015], values=[69], target=0x184B
1848  15 36 07                               JMP                           target=0x0736
184B  9A 3B B9 53 18                         STRCMP_NE_JMP                 start=v[0x03B], values=[9], target=0x1853
1850  15 F8 06                               JMP                           target=0x06F8
1853  37 F5 00 61 00 0D 01 94 00             COPY_RECT_TO_BG               left=0x00F5, top=0x0061, right=0x010D, bottom=0x0094
185C  A4 00 3B 00                            MOV                           dst=v[0x000], src=0x003B
1860  B3 0F 23 E1                            LOADSTRING_INDIRECT           dst=v[0x00F], values=[v[0x000]]
1864  96 3B B9                               LOADSTRING                    dst=v[0x03B], values=[9]
1867  9A 16 B0 79 18                         STRCMP_NE_JMP                 start=v[0x016], values=[0], target=0x1879
186C  96 0F F7                               LOADSTRING                    dst=v[0x00F], values=[71]
186F  96 00 65 B3                            LOADSTRING                    dst=v[0x000], values=[53, 3]
1873  15 CC 07                               JMP                           target=0x07CC
1876  15 9F 18                               JMP                           target=0x189F
1879  96 0F EE                               LOADSTRING                    dst=v[0x00F], values=[62]
187C  19 96 00                               SLEEP                         ticks=0x0096
187F  9A 16 E4 87 18                         STRCMP_NE_JMP                 start=v[0x016], values=[52], target=0x1887
1884  15 F7 14                               JMP                           target=0x14F7
1887  9A 16 EC 8F 18                         STRCMP_NE_JMP                 start=v[0x016], values=[60], target=0x188F
188C  15 F7 17                               JMP                           target=0x17F7
188F  9A 16 F2 97 18                         STRCMP_NE_JMP                 start=v[0x016], values=[66], target=0x1897
1894  15 9F 18                               JMP                           target=0x189F
1897  9A 16 F5 9F 18                         STRCMP_NE_JMP                 start=v[0x016], values=[69], target=0x189F
189C  15 36 07                               JMP                           target=0x0736
189F  9A 3C B9 A7 18                         STRCMP_NE_JMP                 start=v[0x03C], values=[9], target=0x18A7
18A4  15 F8 06                               JMP                           target=0x06F8
18A7  37 1F 01 57 00 37 01 90 00             COPY_RECT_TO_BG               left=0x011F, top=0x0057, right=0x0137, bottom=0x0090
18B0  A4 00 3C 00                            MOV                           dst=v[0x000], src=0x003C
18B4  B3 0F 23 E1                            LOADSTRING_INDIRECT           dst=v[0x00F], values=[v[0x000]]
18B8  96 3C B9                               LOADSTRING                    dst=v[0x03C], values=[9]
18BB  9A 14 B0 CD 18                         STRCMP_NE_JMP                 start=v[0x014], values=[0], target=0x18CD
18C0  96 0F F5                               LOADSTRING                    dst=v[0x00F], values=[69]
18C3  96 00 65 B4                            LOADSTRING                    dst=v[0x000], values=[53, 4]
18C7  15 CC 07                               JMP                           target=0x07CC
18CA  15 F3 18                               JMP                           target=0x18F3
18CD  96 0F EE                               LOADSTRING                    dst=v[0x00F], values=[62]
18D0  19 96 00                               SLEEP                         ticks=0x0096
18D3  9A 14 E4 DB 18                         STRCMP_NE_JMP                 start=v[0x014], values=[52], target=0x18DB
18D8  15 78 15                               JMP                           target=0x1578
18DB  9A 14 EC E3 18                         STRCMP_NE_JMP                 start=v[0x014], values=[60], target=0x18E3
18E0  15 4B 18                               JMP                           target=0x184B
18E3  9A 14 F2 EB 18                         STRCMP_NE_JMP                 start=v[0x014], values=[66], target=0x18EB
18E8  15 F3 18                               JMP                           target=0x18F3
18EB  9A 14 F5 F3 18                         STRCMP_NE_JMP                 start=v[0x014], values=[69], target=0x18F3
18F0  15 36 07                               JMP                           target=0x0736
18F3  9A 3D B9 FB 18                         STRCMP_NE_JMP                 start=v[0x03D], values=[9], target=0x18FB
18F8  15 F8 06                               JMP                           target=0x06F8
18FB  37 4B 01 58 00 64 01 92 00             COPY_RECT_TO_BG               left=0x014B, top=0x0058, right=0x0164, bottom=0x0092
1904  A4 00 3D 00                            MOV                           dst=v[0x000], src=0x003D
1908  B3 0F 23 E1                            LOADSTRING_INDIRECT           dst=v[0x00F], values=[v[0x000]]
190C  96 3D B9                               LOADSTRING                    dst=v[0x03D], values=[9]
190F  9A 14 B0 21 19                         STRCMP_NE_JMP                 start=v[0x014], values=[0], target=0x1921
1914  96 0F F5                               LOADSTRING                    dst=v[0x00F], values=[69]
1917  96 00 65 B5                            LOADSTRING                    dst=v[0x000], values=[53, 5]
191B  15 CC 07                               JMP                           target=0x07CC
191E  15 47 19                               JMP                           target=0x1947
1921  96 0F EE                               LOADSTRING                    dst=v[0x00F], values=[62]
1924  19 96 00                               SLEEP                         ticks=0x0096
1927  9A 14 E4 2F 19                         STRCMP_NE_JMP                 start=v[0x014], values=[52], target=0x192F
192C  15 F9 15                               JMP                           target=0x15F9
192F  9A 14 EC 37 19                         STRCMP_NE_JMP                 start=v[0x014], values=[60], target=0x1937
1934  15 9F 18                               JMP                           target=0x189F
1937  9A 14 F2 3F 19                         STRCMP_NE_JMP                 start=v[0x014], values=[66], target=0x193F
193C  15 47 19                               JMP                           target=0x1947
193F  9A 14 F5 47 19                         STRCMP_NE_JMP                 start=v[0x014], values=[69], target=0x1947
1944  15 36 07                               JMP                           target=0x0736
1947  9A 3E B9 4F 19                         STRCMP_NE_JMP                 start=v[0x03E], values=[9], target=0x194F
194C  15 F8 06                               JMP                           target=0x06F8
194F  37 73 01 5F 00 8D 01 95 00             COPY_RECT_TO_BG               left=0x0173, top=0x005F, right=0x018D, bottom=0x0095
1958  A4 00 3E 00                            MOV                           dst=v[0x000], src=0x003E
195C  B3 0F 23 E1                            LOADSTRING_INDIRECT           dst=v[0x00F], values=[v[0x000]]
1960  96 3E B9                               LOADSTRING                    dst=v[0x03E], values=[9]
1963  9A 16 B0 75 19                         STRCMP_NE_JMP                 start=v[0x016], values=[0], target=0x1975
1968  96 0F F7                               LOADSTRING                    dst=v[0x00F], values=[71]
196B  96 00 65 B6                            LOADSTRING                    dst=v[0x000], values=[53, 6]
196F  15 CC 07                               JMP                           target=0x07CC
1972  15 9B 19                               JMP                           target=0x199B
1975  96 0F EE                               LOADSTRING                    dst=v[0x00F], values=[62]
1978  19 96 00                               SLEEP                         ticks=0x0096
197B  9A 16 E4 83 19                         STRCMP_NE_JMP                 start=v[0x016], values=[52], target=0x1983
1980  15 7A 16                               JMP                           target=0x167A
1983  9A 16 EC 8B 19                         STRCMP_NE_JMP                 start=v[0x016], values=[60], target=0x198B
1988  15 F3 18                               JMP                           target=0x18F3
198B  9A 16 F2 93 19                         STRCMP_NE_JMP                 start=v[0x016], values=[66], target=0x1993
1990  15 9B 19                               JMP                           target=0x199B
1993  9A 16 F5 9B 19                         STRCMP_NE_JMP                 start=v[0x016], values=[69], target=0x199B
1998  15 36 07                               JMP                           target=0x0736
199B  9A 3F B9 A3 19                         STRCMP_NE_JMP                 start=v[0x03F], values=[9], target=0x19A3
19A0  15 F8 06                               JMP                           target=0x06F8
19A3  37 9A 01 64 00 B2 01 9A 00             COPY_RECT_TO_BG               left=0x019A, top=0x0064, right=0x01B2, bottom=0x009A
19AC  A4 00 3F 00                            MOV                           dst=v[0x000], src=0x003F
19B0  B3 0F 23 E1                            LOADSTRING_INDIRECT           dst=v[0x00F], values=[v[0x000]]
19B4  96 3F B9                               LOADSTRING                    dst=v[0x03F], values=[9]
19B7  9A 16 B0 C9 19                         STRCMP_NE_JMP                 start=v[0x016], values=[0], target=0x19C9
19BC  96 0F F7                               LOADSTRING                    dst=v[0x00F], values=[71]
19BF  96 00 65 B7                            LOADSTRING                    dst=v[0x000], values=[53, 7]
19C3  15 CC 07                               JMP                           target=0x07CC
19C6  15 EF 19                               JMP                           target=0x19EF
19C9  96 0F EE                               LOADSTRING                    dst=v[0x00F], values=[62]
19CC  19 96 00                               SLEEP                         ticks=0x0096
19CF  9A 16 E4 D7 19                         STRCMP_NE_JMP                 start=v[0x016], values=[52], target=0x19D7
19D4  15 FB 16                               JMP                           target=0x16FB
19D7  9A 16 EC DF 19                         STRCMP_NE_JMP                 start=v[0x016], values=[60], target=0x19DF
19DC  15 47 19                               JMP                           target=0x1947
19DF  9A 16 F2 E7 19                         STRCMP_NE_JMP                 start=v[0x016], values=[66], target=0x19E7
19E4  15 EF 19                               JMP                           target=0x19EF
19E7  9A 16 F5 EF 19                         STRCMP_NE_JMP                 start=v[0x016], values=[69], target=0x19EF
19EC  15 36 07                               JMP                           target=0x0736
19EF  9A 40 B9 F7 19                         STRCMP_NE_JMP                 start=v[0x040], values=[9], target=0x19F7
19F4  15 F8 06                               JMP                           target=0x06F8
19F7  37 BA 01 6A 00 D7 01 96 00             COPY_RECT_TO_BG               left=0x01BA, top=0x006A, right=0x01D7, bottom=0x0096
1A00  A4 00 40 00                            MOV                           dst=v[0x000], src=0x0040
1A04  B3 0F 23 E1                            LOADSTRING_INDIRECT           dst=v[0x00F], values=[v[0x000]]
1A08  96 40 B9                               LOADSTRING                    dst=v[0x040], values=[9]
1A0B  9A 15 B0 1D 1A                         STRCMP_NE_JMP                 start=v[0x015], values=[0], target=0x1A1D
1A10  96 0F F6                               LOADSTRING                    dst=v[0x00F], values=[70]
1A13  96 00 65 B8                            LOADSTRING                    dst=v[0x000], values=[53, 8]
1A17  15 CC 07                               JMP                           target=0x07CC
1A1A  15 43 1A                               JMP                           target=0x1A43
1A1D  96 0F EE                               LOADSTRING                    dst=v[0x00F], values=[62]
1A20  19 96 00                               SLEEP                         ticks=0x0096
1A23  9A 15 E4 2B 1A                         STRCMP_NE_JMP                 start=v[0x015], values=[52], target=0x1A2B
1A28  15 4F 17                               JMP                           target=0x174F
1A2B  9A 15 EC 33 1A                         STRCMP_NE_JMP                 start=v[0x015], values=[60], target=0x1A33
1A30  15 9B 19                               JMP                           target=0x199B
1A33  9A 15 F2 3B 1A                         STRCMP_NE_JMP                 start=v[0x015], values=[66], target=0x1A3B
1A38  15 F8 06                               JMP                           target=0x06F8
1A3B  9A 15 F5 43 1A                         STRCMP_NE_JMP                 start=v[0x015], values=[69], target=0x1A43
1A40  15 36 07                               JMP                           target=0x0736
1A43  17 00                                  RET                           value=0x00
