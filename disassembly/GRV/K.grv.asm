; T7G/K.GRV
; size=1873 sha256=27bfa59eac1adfe06f1e3c809451ede9f2700d3772d20b2f1d3f8c4103b73d61
; instructions=318 input_loops=2

0000  16 03 01 B0                            LOADSTRING                    dst=v[0x103], values=[0]
0004  16 07 01 B0                            LOADSTRING                    dst=v[0x107], values=[0]
0008  96 92 30 B4                            LOADSTRING                    dst=v[0x092], values=[0, 4]
000C  9A F9 B4 14 00                         STRCMP_NE_JMP                 start=v[0x0F9], values=[4], target=0x0014
0011  96 F9 B5                               LOADSTRING                    dst=v[0x0F9], values=[5]
0014  9A F9 B2 1C 00                         STRCMP_NE_JMP                 start=v[0x0F9], values=[2], target=0x001C
0019  96 F9 B3                               LOADSTRING                    dst=v[0x0F9], values=[3]
001C  9A F9 B0 2A 00                         STRCMP_NE_JMP                 start=v[0x0F9], values=[0], target=0x002A
0021  07                                     VIDEOFLAG7_ON
0022  46                                     RESOURCE_CONTEXT_SAVE
0023  09 18 50                               VIDEOREF                      ref=0x5018 (GAMWAV[24]=5_s_1.vdx)
0026  47                                     RESOURCE_CONTEXT_RESTORE
0027  96 F9 B1                               LOADSTRING                    dst=v[0x0F9], values=[1]
002A  2C DF 04 08                            SET_HOTSPOT_TOP               target=0x04DF, cursor=0x08
002E  2D E1 04 06                            SET_HOTSPOT_BOTTOM            target=0x04E1, cursor=0x06
0032  44 D7 04                               SET_HOTSPOT_RIGHT             target=0x04D7
0035  45 D7 04                               SET_HOTSPOT_LEFT              target=0x04D7
0038  02 0E 4C                               PLAYSONG                      ref=0x4C0E (XMI[14]=gu17.xmi)
003B  28 00 00                               RESERVED_28                   value=0x0000
003E  22                                     COPY_BG_TO_FG
003F  96 19 79 79 79 63 62 79 79 79 79 79 79 79 79 72 72 70 70 70 6D 6C 6C 6C 68 67 74 74 74 73 73 73 73 73 F2 LOADSTRING                    dst=v[0x019], values=[73, 73, 73, 51, 50, 73, 73, 73, 73, 73, 73, 73, 73, 66, 66, 64, 64, 64, 61, 60, 60, 60, 56, 55, 68, 68, 68, 67, 67, 67, 67, 67, 66]
0062  9A 19 79 68 73 79 6C 79 6C 73 79 73 70 79 67 74 73 79 72 74 79 6C 79 72 70 73 74 70 79 72 63 79 6D 79 E2 93 00 STRCMP_NE_JMP                 start=v[0x019], values=[73, 56, 67, 73, 60, 73, 60, 67, 73, 67, 64, 73, 55, 68, 67, 73, 66, 68, 73, 60, 73, 66, 64, 67, 68, 64, 73, 66, 51, 73, 61, 73, 50], target=0x0093
0087  46                                     RESOURCE_CONTEXT_SAVE
0088  07                                     VIDEOFLAG7_ON
0089  09 93 50                               VIDEOREF                      ref=0x5093 (GAMWAV[147]=gen_e_13.vdx)
008C  47                                     RESOURCE_CONTEXT_RESTORE
008D  96 F9 E1                               LOADSTRING                    dst=v[0x0F9], values=[49]
0090  15 D7 04                               JMP                           target=0x04D7
0093  22                                     COPY_BG_TO_FG
0094  36 03 01 FA AE 00                      CHAR_LESS_JMP                 start=v[0x103], values=[74], target=0x00AE
009A  1A 07 01 B1 AE 00                      STRCMP_NE_JMP                 start=v[0x107], values=[1], target=0x00AE
00A0  46                                     RESOURCE_CONTEXT_SAVE
00A1  16 07 01 B2                            LOADSTRING                    dst=v[0x107], values=[2]
00A5  16 03 01 B0                            LOADSTRING                    dst=v[0x103], values=[0]
00A9  07                                     VIDEOFLAG7_ON
00AA  09 19 50                               VIDEOREF                      ref=0x5019 (GAMWAV[25]=5_s_2.vdx)
00AD  47                                     RESOURCE_CONTEXT_RESTORE
00AE  36 03 01 E6 C8 00                      CHAR_LESS_JMP                 start=v[0x103], values=[54], target=0x00C8
00B4  1A 07 01 B0 C8 00                      STRCMP_NE_JMP                 start=v[0x107], values=[0], target=0x00C8
00BA  46                                     RESOURCE_CONTEXT_SAVE
00BB  16 07 01 B1                            LOADSTRING                    dst=v[0x107], values=[1]
00BF  16 03 01 B0                            LOADSTRING                    dst=v[0x103], values=[0]
00C3  07                                     VIDEOFLAG7_ON
00C4  09 16 50                               VIDEOREF                      ref=0x5016 (GAMWAV[22]=5_e_3.vdx)
00C7  47                                     RESOURCE_CONTEXT_RESTORE
00C8  0B                                     INPUTLOOPSTART
00C9  0D 50 01 58 00 6E 01 85 00 71 05 09    HOTSPOT_RECT                  left=0x0150, top=0x0058, right=0x016E, bottom=0x0085, target=0x0571, cursor=0x09
00D5  0D 2B 01 58 00 47 01 85 00 7F 05 0A    HOTSPOT_RECT                  left=0x012B, top=0x0058, right=0x0147, bottom=0x0085, target=0x057F, cursor=0x0A
00E1  0D 05 01 58 00 23 01 85 00 8D 05 09    HOTSPOT_RECT                  left=0x0105, top=0x0058, right=0x0123, bottom=0x0085, target=0x058D, cursor=0x09
00ED  0D EB 01 99 00 10 02 C9 00 9B 05 0A    HOTSPOT_RECT                  left=0x01EB, top=0x0099, right=0x0210, bottom=0x00C9, target=0x059B, cursor=0x0A
00F9  0D C7 01 99 00 EA 01 C9 00 A9 05 09    HOTSPOT_RECT                  left=0x01C7, top=0x0099, right=0x01EA, bottom=0x00C9, target=0x05A9, cursor=0x09
0105  0D A2 01 99 00 C3 01 C9 00 B7 05 0A    HOTSPOT_RECT                  left=0x01A2, top=0x0099, right=0x01C3, bottom=0x00C9, target=0x05B7, cursor=0x0A
0111  0D 7E 01 99 00 9F 01 C9 00 C5 05 09    HOTSPOT_RECT                  left=0x017E, top=0x0099, right=0x019F, bottom=0x00C9, target=0x05C5, cursor=0x09
011D  0D 58 01 99 00 76 01 C9 00 D3 05 0A    HOTSPOT_RECT                  left=0x0158, top=0x0099, right=0x0176, bottom=0x00C9, target=0x05D3, cursor=0x0A
0129  0D 10 01 99 00 2E 01 C9 00 E1 05 09    HOTSPOT_RECT                  left=0x0110, top=0x0099, right=0x012E, bottom=0x00C9, target=0x05E1, cursor=0x09
0135  0D EB 00 99 00 0A 01 C9 00 EF 05 0A    HOTSPOT_RECT                  left=0x00EB, top=0x0099, right=0x010A, bottom=0x00C9, target=0x05EF, cursor=0x0A
0141  0D C3 00 99 00 E2 00 C9 00 FD 05 09    HOTSPOT_RECT                  left=0x00C3, top=0x0099, right=0x00E2, bottom=0x00C9, target=0x05FD, cursor=0x09
014D  0D 9D 00 99 00 BF 00 C9 00 0B 06 0A    HOTSPOT_RECT                  left=0x009D, top=0x0099, right=0x00BF, bottom=0x00C9, target=0x060B, cursor=0x0A
0159  0D 75 00 99 00 98 00 C9 00 19 06 09    HOTSPOT_RECT                  left=0x0075, top=0x0099, right=0x0098, bottom=0x00C9, target=0x0619, cursor=0x09
0165  0D FD 01 DD 00 20 02 10 01 27 06 0A    HOTSPOT_RECT                  left=0x01FD, top=0x00DD, right=0x0220, bottom=0x0110, target=0x0627, cursor=0x0A
0171  0D D5 01 DD 00 F9 01 10 01 35 06 09    HOTSPOT_RECT                  left=0x01D5, top=0x00DD, right=0x01F9, bottom=0x0110, target=0x0635, cursor=0x09
017D  0D AE 01 DD 00 D2 01 10 01 43 06 0A    HOTSPOT_RECT                  left=0x01AE, top=0x00DD, right=0x01D2, bottom=0x0110, target=0x0643, cursor=0x0A
0189  0D 87 01 DD 00 AA 01 10 01 51 06 09    HOTSPOT_RECT                  left=0x0187, top=0x00DD, right=0x01AA, bottom=0x0110, target=0x0651, cursor=0x09
0195  0D 60 01 DD 00 81 01 10 01 5F 06 0A    HOTSPOT_RECT                  left=0x0160, top=0x00DD, right=0x0181, bottom=0x0110, target=0x065F, cursor=0x0A
01A1  0D 1B 01 DD 00 3B 01 10 01 6D 06 09    HOTSPOT_RECT                  left=0x011B, top=0x00DD, right=0x013B, bottom=0x0110, target=0x066D, cursor=0x09
01AD  0D F5 00 DD 00 15 01 10 01 7B 06 0A    HOTSPOT_RECT                  left=0x00F5, top=0x00DD, right=0x0115, bottom=0x0110, target=0x067B, cursor=0x0A
01B9  0D CE 00 DD 00 EE 00 10 01 89 06 09    HOTSPOT_RECT                  left=0x00CE, top=0x00DD, right=0x00EE, bottom=0x0110, target=0x0689, cursor=0x09
01C5  0D A8 00 DD 00 C9 00 10 01 97 06 0A    HOTSPOT_RECT                  left=0x00A8, top=0x00DD, right=0x00C9, bottom=0x0110, target=0x0697, cursor=0x0A
01D1  0D 7C 00 DD 00 9F 00 10 01 A5 06 09    HOTSPOT_RECT                  left=0x007C, top=0x00DD, right=0x009F, bottom=0x0110, target=0x06A5, cursor=0x09
01DD  0D 52 00 DD 00 77 00 10 01 B3 06 0A    HOTSPOT_RECT                  left=0x0052, top=0x00DD, right=0x0077, bottom=0x0110, target=0x06B3, cursor=0x0A
01E9  0D F5 01 22 01 1D 02 58 01 C1 06 09    HOTSPOT_RECT                  left=0x01F5, top=0x0122, right=0x021D, bottom=0x0158, target=0x06C1, cursor=0x09
01F5  0D CD 01 22 01 F3 01 58 01 CF 06 0A    HOTSPOT_RECT                  left=0x01CD, top=0x0122, right=0x01F3, bottom=0x0158, target=0x06CF, cursor=0x0A
0201  0D A2 01 22 01 C9 01 58 01 DD 06 09    HOTSPOT_RECT                  left=0x01A2, top=0x0122, right=0x01C9, bottom=0x0158, target=0x06DD, cursor=0x09
020D  0D 7C 01 22 01 A0 01 58 01 EB 06 0A    HOTSPOT_RECT                  left=0x017C, top=0x0122, right=0x01A0, bottom=0x0158, target=0x06EB, cursor=0x0A
0219  0D 55 01 22 01 78 01 58 01 F9 06 09    HOTSPOT_RECT                  left=0x0155, top=0x0122, right=0x0178, bottom=0x0158, target=0x06F9, cursor=0x09
0225  0D FE 00 22 01 21 01 58 01 07 07 0A    HOTSPOT_RECT                  left=0x00FE, top=0x0122, right=0x0121, bottom=0x0158, target=0x0707, cursor=0x0A
0231  0D D2 00 22 01 F4 00 58 01 15 07 09    HOTSPOT_RECT                  left=0x00D2, top=0x0122, right=0x00F4, bottom=0x0158, target=0x0715, cursor=0x09
023D  0D 8B 00 22 01 AD 00 58 01 23 07 0A    HOTSPOT_RECT                  left=0x008B, top=0x0122, right=0x00AD, bottom=0x0158, target=0x0723, cursor=0x0A
0249  0D 61 00 22 01 87 00 58 01 31 07 09    HOTSPOT_RECT                  left=0x0061, top=0x0122, right=0x0087, bottom=0x0158, target=0x0731, cursor=0x09
0255  13                                     INPUTLOOPEND
0256  96 02 7C 23 61 23 E2                   LOADSTRING                    dst=v[0x002], values=[grid[v[0x000],v[0x001]]]
025D  0B                                     INPUTLOOPSTART
025E  A3 02 7C 30 B0 71 02                   STRCMP_EQ_JMP                 start=v[0x002], values=[grid[0,0]], target=0x0271
0265  0D 50 01 58 00 6E 01 85 00 78 05 0A    HOTSPOT_RECT                  left=0x0150, top=0x0058, right=0x016E, bottom=0x0085, target=0x0578, cursor=0x0A
0271  A3 02 7C 30 B1 84 02                   STRCMP_EQ_JMP                 start=v[0x002], values=[grid[0,1]], target=0x0284
0278  0D 2B 01 58 00 47 01 85 00 86 05 09    HOTSPOT_RECT                  left=0x012B, top=0x0058, right=0x0147, bottom=0x0085, target=0x0586, cursor=0x09
0284  A3 02 7C 30 B2 97 02                   STRCMP_EQ_JMP                 start=v[0x002], values=[grid[0,2]], target=0x0297
028B  0D 05 01 58 00 23 01 85 00 94 05 0A    HOTSPOT_RECT                  left=0x0105, top=0x0058, right=0x0123, bottom=0x0085, target=0x0594, cursor=0x0A
0297  A3 02 7C 30 B3 AA 02                   STRCMP_EQ_JMP                 start=v[0x002], values=[grid[0,3]], target=0x02AA
029E  0D EB 01 99 00 10 02 C9 00 A2 05 09    HOTSPOT_RECT                  left=0x01EB, top=0x0099, right=0x0210, bottom=0x00C9, target=0x05A2, cursor=0x09
02AA  A3 02 7C 30 B4 BD 02                   STRCMP_EQ_JMP                 start=v[0x002], values=[grid[0,4]], target=0x02BD
02B1  0D C7 01 99 00 EA 01 C9 00 B0 05 0A    HOTSPOT_RECT                  left=0x01C7, top=0x0099, right=0x01EA, bottom=0x00C9, target=0x05B0, cursor=0x0A
02BD  A3 02 7C 30 B5 D0 02                   STRCMP_EQ_JMP                 start=v[0x002], values=[grid[0,5]], target=0x02D0
02C4  0D A2 01 99 00 C3 01 C9 00 BE 05 09    HOTSPOT_RECT                  left=0x01A2, top=0x0099, right=0x01C3, bottom=0x00C9, target=0x05BE, cursor=0x09
02D0  A3 02 7C 30 B6 E3 02                   STRCMP_EQ_JMP                 start=v[0x002], values=[grid[0,6]], target=0x02E3
02D7  0D 7E 01 99 00 9F 01 C9 00 CC 05 0A    HOTSPOT_RECT                  left=0x017E, top=0x0099, right=0x019F, bottom=0x00C9, target=0x05CC, cursor=0x0A
02E3  A3 02 7C 30 B7 F6 02                   STRCMP_EQ_JMP                 start=v[0x002], values=[grid[0,7]], target=0x02F6
02EA  0D 58 01 99 00 76 01 C9 00 DA 05 09    HOTSPOT_RECT                  left=0x0158, top=0x0099, right=0x0176, bottom=0x00C9, target=0x05DA, cursor=0x09
02F6  A3 02 7C 30 B8 09 03                   STRCMP_EQ_JMP                 start=v[0x002], values=[grid[0,8]], target=0x0309
02FD  0D 10 01 99 00 2E 01 C9 00 E8 05 0A    HOTSPOT_RECT                  left=0x0110, top=0x0099, right=0x012E, bottom=0x00C9, target=0x05E8, cursor=0x0A
0309  A3 02 7C 30 B9 1C 03                   STRCMP_EQ_JMP                 start=v[0x002], values=[grid[0,9]], target=0x031C
0310  0D EB 00 99 00 0A 01 C9 00 F6 05 09    HOTSPOT_RECT                  left=0x00EB, top=0x0099, right=0x010A, bottom=0x00C9, target=0x05F6, cursor=0x09
031C  A3 02 7C 31 B0 2F 03                   STRCMP_EQ_JMP                 start=v[0x002], values=[grid[1,0]], target=0x032F
0323  0D C3 00 99 00 E2 00 C9 00 04 06 0A    HOTSPOT_RECT                  left=0x00C3, top=0x0099, right=0x00E2, bottom=0x00C9, target=0x0604, cursor=0x0A
032F  A3 02 7C 31 B1 42 03                   STRCMP_EQ_JMP                 start=v[0x002], values=[grid[1,1]], target=0x0342
0336  0D 9D 00 99 00 BF 00 C9 00 12 06 09    HOTSPOT_RECT                  left=0x009D, top=0x0099, right=0x00BF, bottom=0x00C9, target=0x0612, cursor=0x09
0342  A3 02 7C 31 B2 5A 03                   STRCMP_EQ_JMP                 start=v[0x002], values=[grid[1,2]], target=0x035A
0349  A3 02 E8 5A 03                         STRCMP_EQ_JMP                 start=v[0x002], values=[56], target=0x035A
034E  0D 75 00 99 00 98 00 C9 00 20 06 0A    HOTSPOT_RECT                  left=0x0075, top=0x0099, right=0x0098, bottom=0x00C9, target=0x0620, cursor=0x0A
035A  A3 02 7C 31 B3 6D 03                   STRCMP_EQ_JMP                 start=v[0x002], values=[grid[1,3]], target=0x036D
0361  0D FD 01 DD 00 20 02 10 01 2E 06 09    HOTSPOT_RECT                  left=0x01FD, top=0x00DD, right=0x0220, bottom=0x0110, target=0x062E, cursor=0x09
036D  A3 02 7C 31 B4 80 03                   STRCMP_EQ_JMP                 start=v[0x002], values=[grid[1,4]], target=0x0380
0374  0D D5 01 DD 00 F9 01 10 01 3C 06 0A    HOTSPOT_RECT                  left=0x01D5, top=0x00DD, right=0x01F9, bottom=0x0110, target=0x063C, cursor=0x0A
0380  A3 02 7C 31 B5 93 03                   STRCMP_EQ_JMP                 start=v[0x002], values=[grid[1,5]], target=0x0393
0387  0D AE 01 DD 00 D2 01 10 01 4A 06 09    HOTSPOT_RECT                  left=0x01AE, top=0x00DD, right=0x01D2, bottom=0x0110, target=0x064A, cursor=0x09
0393  A3 02 7C 31 B6 A6 03                   STRCMP_EQ_JMP                 start=v[0x002], values=[grid[1,6]], target=0x03A6
039A  0D 87 01 DD 00 AA 01 10 01 58 06 0A    HOTSPOT_RECT                  left=0x0187, top=0x00DD, right=0x01AA, bottom=0x0110, target=0x0658, cursor=0x0A
03A6  A3 02 7C 31 B7 B9 03                   STRCMP_EQ_JMP                 start=v[0x002], values=[grid[1,7]], target=0x03B9
03AD  0D 60 01 DD 00 81 01 10 01 66 06 09    HOTSPOT_RECT                  left=0x0160, top=0x00DD, right=0x0181, bottom=0x0110, target=0x0666, cursor=0x09
03B9  A3 02 7C 31 B8 CC 03                   STRCMP_EQ_JMP                 start=v[0x002], values=[grid[1,8]], target=0x03CC
03C0  0D 1B 01 DD 00 3B 01 10 01 74 06 0A    HOTSPOT_RECT                  left=0x011B, top=0x00DD, right=0x013B, bottom=0x0110, target=0x0674, cursor=0x0A
03CC  A3 02 7C 31 B9 DF 03                   STRCMP_EQ_JMP                 start=v[0x002], values=[grid[1,9]], target=0x03DF
03D3  0D F5 00 DD 00 15 01 10 01 82 06 09    HOTSPOT_RECT                  left=0x00F5, top=0x00DD, right=0x0115, bottom=0x0110, target=0x0682, cursor=0x09
03DF  A3 02 7C 32 B0 F2 03                   STRCMP_EQ_JMP                 start=v[0x002], values=[grid[2,0]], target=0x03F2
03E6  0D CE 00 DD 00 EE 00 10 01 90 06 0A    HOTSPOT_RECT                  left=0x00CE, top=0x00DD, right=0x00EE, bottom=0x0110, target=0x0690, cursor=0x0A
03F2  A3 02 7C 32 B1 05 04                   STRCMP_EQ_JMP                 start=v[0x002], values=[grid[2,1]], target=0x0405
03F9  0D A8 00 DD 00 C9 00 10 01 9E 06 09    HOTSPOT_RECT                  left=0x00A8, top=0x00DD, right=0x00C9, bottom=0x0110, target=0x069E, cursor=0x09
0405  A3 02 7C 32 B2 18 04                   STRCMP_EQ_JMP                 start=v[0x002], values=[grid[2,2]], target=0x0418
040C  0D 7C 00 DD 00 9F 00 10 01 AC 06 0A    HOTSPOT_RECT                  left=0x007C, top=0x00DD, right=0x009F, bottom=0x0110, target=0x06AC, cursor=0x0A
0418  A3 02 7C 32 B3 2B 04                   STRCMP_EQ_JMP                 start=v[0x002], values=[grid[2,3]], target=0x042B
041F  0D 52 00 DD 00 77 00 10 01 BA 06 09    HOTSPOT_RECT                  left=0x0052, top=0x00DD, right=0x0077, bottom=0x0110, target=0x06BA, cursor=0x09
042B  A3 02 7C 32 B4 3E 04                   STRCMP_EQ_JMP                 start=v[0x002], values=[grid[2,4]], target=0x043E
0432  0D F5 01 22 01 1D 02 58 01 C8 06 0A    HOTSPOT_RECT                  left=0x01F5, top=0x0122, right=0x021D, bottom=0x0158, target=0x06C8, cursor=0x0A
043E  A3 02 7C 32 B5 51 04                   STRCMP_EQ_JMP                 start=v[0x002], values=[grid[2,5]], target=0x0451
0445  0D CD 01 22 01 F3 01 58 01 D6 06 09    HOTSPOT_RECT                  left=0x01CD, top=0x0122, right=0x01F3, bottom=0x0158, target=0x06D6, cursor=0x09
0451  A3 02 7C 32 B6 64 04                   STRCMP_EQ_JMP                 start=v[0x002], values=[grid[2,6]], target=0x0464
0458  0D A2 01 22 01 C9 01 58 01 E4 06 0A    HOTSPOT_RECT                  left=0x01A2, top=0x0122, right=0x01C9, bottom=0x0158, target=0x06E4, cursor=0x0A
0464  A3 02 7C 32 B7 77 04                   STRCMP_EQ_JMP                 start=v[0x002], values=[grid[2,7]], target=0x0477
046B  0D 7C 01 22 01 A0 01 58 01 F2 06 09    HOTSPOT_RECT                  left=0x017C, top=0x0122, right=0x01A0, bottom=0x0158, target=0x06F2, cursor=0x09
0477  A3 02 7C 32 B8 8A 04                   STRCMP_EQ_JMP                 start=v[0x002], values=[grid[2,8]], target=0x048A
047E  0D 55 01 22 01 78 01 58 01 00 07 0A    HOTSPOT_RECT                  left=0x0155, top=0x0122, right=0x0178, bottom=0x0158, target=0x0700, cursor=0x0A
048A  A3 02 7C 32 B9 9D 04                   STRCMP_EQ_JMP                 start=v[0x002], values=[grid[2,9]], target=0x049D
0491  0D FE 00 22 01 21 01 58 01 0E 07 09    HOTSPOT_RECT                  left=0x00FE, top=0x0122, right=0x0121, bottom=0x0158, target=0x070E, cursor=0x09
049D  A3 02 7C 33 B0 B0 04                   STRCMP_EQ_JMP                 start=v[0x002], values=[grid[3,0]], target=0x04B0
04A4  0D D2 00 22 01 F4 00 58 01 1C 07 0A    HOTSPOT_RECT                  left=0x00D2, top=0x0122, right=0x00F4, bottom=0x0158, target=0x071C, cursor=0x0A
04B0  A3 02 7C 33 B1 C3 04                   STRCMP_EQ_JMP                 start=v[0x002], values=[grid[3,1]], target=0x04C3
04B7  0D 8B 00 22 01 AD 00 58 01 2A 07 09    HOTSPOT_RECT                  left=0x008B, top=0x0122, right=0x00AD, bottom=0x0158, target=0x072A, cursor=0x09
04C3  A3 02 7C 33 B2 D6 04                   STRCMP_EQ_JMP                 start=v[0x002], values=[grid[3,2]], target=0x04D6
04CA  0D 61 00 22 01 87 00 58 01 38 07 0A    HOTSPOT_RECT                  left=0x0061, top=0x0122, right=0x0087, bottom=0x0158, target=0x0738, cursor=0x0A
04D6  13                                     INPUTLOOPEND
04D7  1C 19 2C                               VIDEO_TRANSITION_REF          ref=0x2C19 (K[25]=shelf.vdx)
04DA  18 3F 07                               CALL                          target=0x073F
04DD  43 00                                  RETURNSCRIPT                  value=0x00
04DF  43 01                                  RETURNSCRIPT                  value=0x01
04E1  07                                     VIDEOFLAG7_ON
04E2  46                                     RESOURCE_CONTEXT_SAVE
04E3  09 8B 50                               VIDEOREF                      ref=0x508B (GAMWAV[139]=gen_e_5.vdx)
04E6  47                                     RESOURCE_CONTEXT_RESTORE
04E7  1C 19 2C                               VIDEO_TRANSITION_REF          ref=0x2C19 (K[25]=shelf.vdx)
04EA  18 3F 07                               CALL                          target=0x073F
04ED  28 00 00                               RESERVED_28                   value=0x0000
04F0  05                                     FIRSTFRAME_NEXT_VIDEO
04F1  09 19 2C                               VIDEOREF                      ref=0x2C19 (K[25]=shelf.vdx)
04F4  15 3F 00                               JMP                           target=0x003F
04F7  27 7A 23 61 23 62 00                   VIDEO_TRANSITION_NAME         name="z{v000}{v001}"
04FE  26 7C 23 61 23 62 23 61 23 62 66 00    VIDEO_NAME                    name="{grid:v[0x000],v[0x001]}{v000}{v001}f"
050A  A7 7A 7C 23 61 23 62 00                VIDEO_TRANSITION_NAME         name="z{grid:v[0x000],v[0x001]}"
0512  15 56 02                               JMP                           target=0x0256
0515  27 7A 23 63 23 64 00                   VIDEO_TRANSITION_NAME         name="z{v002}{v003}"
051C  26 7C 23 63 23 64 23 63 23 64 66 00    VIDEO_NAME                    name="{grid:v[0x002],v[0x003]}{v002}{v003}f"
0528  A7 7A 7C 23 63 23 64 00                VIDEO_TRANSITION_NAME         name="z{grid:v[0x002],v[0x003]}"
0530  27 79 7C 23 61 23 62 00                VIDEO_TRANSITION_NAME         name="y{grid:v[0x000],v[0x001]}"
0538  07                                     VIDEOFLAG7_ON
0539  26 7C 23 61 23 62 23 63 23 64 62 00    VIDEO_NAME                    name="{grid:v[0x000],v[0x001]}{v002}{v003}b"
0545  27 7C 23 61 23 62 23 63 23 64 66 00    VIDEO_TRANSITION_NAME         name="{grid:v[0x000],v[0x001]}{v002}{v003}f"
0551  27 79 7C 23 63 23 64 00                VIDEO_TRANSITION_NAME         name="y{grid:v[0x002],v[0x003]}"
0559  26 7C 23 63 23 64 23 61 23 62 62 00    VIDEO_NAME                    name="{grid:v[0x002],v[0x003]}{v000}{v001}b"
0565  39 23 63 23 E4 23 61 23 E2             GRID_SWAP                     row1=v[0x002], col1=v[0x003], row2=v[0x000], col2=v[0x001]
056E  15 62 00                               JMP                           target=0x0062
0571  96 00 30 B0                            LOADSTRING                    dst=v[0x000], values=[0, 0]
0575  15 F7 04                               JMP                           target=0x04F7
0578  96 02 30 B0                            LOADSTRING                    dst=v[0x002], values=[0, 0]
057C  15 15 05                               JMP                           target=0x0515
057F  96 00 30 B1                            LOADSTRING                    dst=v[0x000], values=[0, 1]
0583  15 F7 04                               JMP                           target=0x04F7
0586  96 02 30 B1                            LOADSTRING                    dst=v[0x002], values=[0, 1]
058A  15 15 05                               JMP                           target=0x0515
058D  96 00 30 B2                            LOADSTRING                    dst=v[0x000], values=[0, 2]
0591  15 F7 04                               JMP                           target=0x04F7
0594  96 02 30 B2                            LOADSTRING                    dst=v[0x002], values=[0, 2]
0598  15 15 05                               JMP                           target=0x0515
059B  96 00 30 B3                            LOADSTRING                    dst=v[0x000], values=[0, 3]
059F  15 F7 04                               JMP                           target=0x04F7
05A2  96 02 30 B3                            LOADSTRING                    dst=v[0x002], values=[0, 3]
05A6  15 15 05                               JMP                           target=0x0515
05A9  96 00 30 B4                            LOADSTRING                    dst=v[0x000], values=[0, 4]
05AD  15 F7 04                               JMP                           target=0x04F7
05B0  96 02 30 B4                            LOADSTRING                    dst=v[0x002], values=[0, 4]
05B4  15 15 05                               JMP                           target=0x0515
05B7  96 00 30 B5                            LOADSTRING                    dst=v[0x000], values=[0, 5]
05BB  15 F7 04                               JMP                           target=0x04F7
05BE  96 02 30 B5                            LOADSTRING                    dst=v[0x002], values=[0, 5]
05C2  15 15 05                               JMP                           target=0x0515
05C5  96 00 30 B6                            LOADSTRING                    dst=v[0x000], values=[0, 6]
05C9  15 F7 04                               JMP                           target=0x04F7
05CC  96 02 30 B6                            LOADSTRING                    dst=v[0x002], values=[0, 6]
05D0  15 15 05                               JMP                           target=0x0515
05D3  96 00 30 B7                            LOADSTRING                    dst=v[0x000], values=[0, 7]
05D7  15 F7 04                               JMP                           target=0x04F7
05DA  96 02 30 B7                            LOADSTRING                    dst=v[0x002], values=[0, 7]
05DE  15 15 05                               JMP                           target=0x0515
05E1  96 00 30 B8                            LOADSTRING                    dst=v[0x000], values=[0, 8]
05E5  15 F7 04                               JMP                           target=0x04F7
05E8  96 02 30 B8                            LOADSTRING                    dst=v[0x002], values=[0, 8]
05EC  15 15 05                               JMP                           target=0x0515
05EF  96 00 30 B9                            LOADSTRING                    dst=v[0x000], values=[0, 9]
05F3  15 F7 04                               JMP                           target=0x04F7
05F6  96 02 30 B9                            LOADSTRING                    dst=v[0x002], values=[0, 9]
05FA  15 15 05                               JMP                           target=0x0515
05FD  96 00 31 B0                            LOADSTRING                    dst=v[0x000], values=[1, 0]
0601  15 F7 04                               JMP                           target=0x04F7
0604  96 02 31 B0                            LOADSTRING                    dst=v[0x002], values=[1, 0]
0608  15 15 05                               JMP                           target=0x0515
060B  96 00 31 B1                            LOADSTRING                    dst=v[0x000], values=[1, 1]
060F  15 F7 04                               JMP                           target=0x04F7
0612  96 02 31 B1                            LOADSTRING                    dst=v[0x002], values=[1, 1]
0616  15 15 05                               JMP                           target=0x0515
0619  96 00 31 B2                            LOADSTRING                    dst=v[0x000], values=[1, 2]
061D  15 F7 04                               JMP                           target=0x04F7
0620  96 02 31 B2                            LOADSTRING                    dst=v[0x002], values=[1, 2]
0624  15 15 05                               JMP                           target=0x0515
0627  96 00 31 B3                            LOADSTRING                    dst=v[0x000], values=[1, 3]
062B  15 F7 04                               JMP                           target=0x04F7
062E  96 02 31 B3                            LOADSTRING                    dst=v[0x002], values=[1, 3]
0632  15 15 05                               JMP                           target=0x0515
0635  96 00 31 B4                            LOADSTRING                    dst=v[0x000], values=[1, 4]
0639  15 F7 04                               JMP                           target=0x04F7
063C  96 02 31 B4                            LOADSTRING                    dst=v[0x002], values=[1, 4]
0640  15 15 05                               JMP                           target=0x0515
0643  96 00 31 B5                            LOADSTRING                    dst=v[0x000], values=[1, 5]
0647  15 F7 04                               JMP                           target=0x04F7
064A  96 02 31 B5                            LOADSTRING                    dst=v[0x002], values=[1, 5]
064E  15 15 05                               JMP                           target=0x0515
0651  96 00 31 B6                            LOADSTRING                    dst=v[0x000], values=[1, 6]
0655  15 F7 04                               JMP                           target=0x04F7
0658  96 02 31 B6                            LOADSTRING                    dst=v[0x002], values=[1, 6]
065C  15 15 05                               JMP                           target=0x0515
065F  96 00 31 B7                            LOADSTRING                    dst=v[0x000], values=[1, 7]
0663  15 F7 04                               JMP                           target=0x04F7
0666  96 02 31 B7                            LOADSTRING                    dst=v[0x002], values=[1, 7]
066A  15 15 05                               JMP                           target=0x0515
066D  96 00 31 B8                            LOADSTRING                    dst=v[0x000], values=[1, 8]
0671  15 F7 04                               JMP                           target=0x04F7
0674  96 02 31 B8                            LOADSTRING                    dst=v[0x002], values=[1, 8]
0678  15 15 05                               JMP                           target=0x0515
067B  96 00 31 B9                            LOADSTRING                    dst=v[0x000], values=[1, 9]
067F  15 F7 04                               JMP                           target=0x04F7
0682  96 02 31 B9                            LOADSTRING                    dst=v[0x002], values=[1, 9]
0686  15 15 05                               JMP                           target=0x0515
0689  96 00 32 B0                            LOADSTRING                    dst=v[0x000], values=[2, 0]
068D  15 F7 04                               JMP                           target=0x04F7
0690  96 02 32 B0                            LOADSTRING                    dst=v[0x002], values=[2, 0]
0694  15 15 05                               JMP                           target=0x0515
0697  96 00 32 B1                            LOADSTRING                    dst=v[0x000], values=[2, 1]
069B  15 F7 04                               JMP                           target=0x04F7
069E  96 02 32 B1                            LOADSTRING                    dst=v[0x002], values=[2, 1]
06A2  15 15 05                               JMP                           target=0x0515
06A5  96 00 32 B2                            LOADSTRING                    dst=v[0x000], values=[2, 2]
06A9  15 F7 04                               JMP                           target=0x04F7
06AC  96 02 32 B2                            LOADSTRING                    dst=v[0x002], values=[2, 2]
06B0  15 15 05                               JMP                           target=0x0515
06B3  96 00 32 B3                            LOADSTRING                    dst=v[0x000], values=[2, 3]
06B7  15 F7 04                               JMP                           target=0x04F7
06BA  96 02 32 B3                            LOADSTRING                    dst=v[0x002], values=[2, 3]
06BE  15 15 05                               JMP                           target=0x0515
06C1  96 00 32 B4                            LOADSTRING                    dst=v[0x000], values=[2, 4]
06C5  15 F7 04                               JMP                           target=0x04F7
06C8  96 02 32 B4                            LOADSTRING                    dst=v[0x002], values=[2, 4]
06CC  15 15 05                               JMP                           target=0x0515
06CF  96 00 32 B5                            LOADSTRING                    dst=v[0x000], values=[2, 5]
06D3  15 F7 04                               JMP                           target=0x04F7
06D6  96 02 32 B5                            LOADSTRING                    dst=v[0x002], values=[2, 5]
06DA  15 15 05                               JMP                           target=0x0515
06DD  96 00 32 B6                            LOADSTRING                    dst=v[0x000], values=[2, 6]
06E1  15 F7 04                               JMP                           target=0x04F7
06E4  96 02 32 B6                            LOADSTRING                    dst=v[0x002], values=[2, 6]
06E8  15 15 05                               JMP                           target=0x0515
06EB  96 00 32 B7                            LOADSTRING                    dst=v[0x000], values=[2, 7]
06EF  15 F7 04                               JMP                           target=0x04F7
06F2  96 02 32 B7                            LOADSTRING                    dst=v[0x002], values=[2, 7]
06F6  15 15 05                               JMP                           target=0x0515
06F9  96 00 32 B8                            LOADSTRING                    dst=v[0x000], values=[2, 8]
06FD  15 F7 04                               JMP                           target=0x04F7
0700  96 02 32 B8                            LOADSTRING                    dst=v[0x002], values=[2, 8]
0704  15 15 05                               JMP                           target=0x0515
0707  96 00 32 B9                            LOADSTRING                    dst=v[0x000], values=[2, 9]
070B  15 F7 04                               JMP                           target=0x04F7
070E  96 02 32 B9                            LOADSTRING                    dst=v[0x002], values=[2, 9]
0712  15 15 05                               JMP                           target=0x0515
0715  96 00 33 B0                            LOADSTRING                    dst=v[0x000], values=[3, 0]
0719  15 F7 04                               JMP                           target=0x04F7
071C  96 02 33 B0                            LOADSTRING                    dst=v[0x002], values=[3, 0]
0720  15 15 05                               JMP                           target=0x0515
0723  96 00 33 B1                            LOADSTRING                    dst=v[0x000], values=[3, 1]
0727  15 F7 04                               JMP                           target=0x04F7
072A  96 02 33 B1                            LOADSTRING                    dst=v[0x002], values=[3, 1]
072E  15 15 05                               JMP                           target=0x0515
0731  96 00 33 B2                            LOADSTRING                    dst=v[0x000], values=[3, 2]
0735  15 F7 04                               JMP                           target=0x04F7
0738  96 02 33 B2                            LOADSTRING                    dst=v[0x002], values=[3, 2]
073C  15 15 05                               JMP                           target=0x0515
073F  0A                                     VIDEOFLAG5_ON
0740  07                                     VIDEOFLAG7_ON
0741  46                                     RESOURCE_CONTEXT_SAVE
0742  09 01 24                               VIDEOREF                      ref=0x2401 (INTRO[1]=fade.vdx)
0745  37 00 00 50 00 7F 02 8F 01             COPY_RECT_TO_BG               left=0x0000, top=0x0050, right=0x027F, bottom=0x018F
074E  47                                     RESOURCE_CONTEXT_RESTORE
074F  17 00                                  RET                           value=0x00
