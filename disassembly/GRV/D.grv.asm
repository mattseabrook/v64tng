; T7G/D.GRV
; size=2100 sha256=44b076296eb7a4cc41e052d39571d63b3bf3354a04113b9f81506b5c9c6dc811
; instructions=482 input_loops=1

0000  45 23 01                               SET_HOTSPOT_LEFT              target=0x0123
0003  44 23 01                               SET_HOTSPOT_RIGHT             target=0x0123
0006  2C 20 08 08                            SET_HOTSPOT_TOP               target=0x0820, cursor=0x08
000A  2D 11 08 06                            SET_HOTSPOT_BOTTOM            target=0x0811, cursor=0x06
000E  96 92 31 B6                            LOADSTRING                    dst=v[0x092], values=[1, 6]
0012  9A EE E1 17 00                         STRCMP_NE_JMP                 start=v[0x0EE], values=[49], target=0x0017
0017  46                                     RESOURCE_CONTEXT_SAVE
0018  9A EE B4 25 00                         STRCMP_NE_JMP                 start=v[0x0EE], values=[4], target=0x0025
001D  96 EE B5                               LOADSTRING                    dst=v[0x0EE], values=[5]
0020  07                                     VIDEOFLAG7_ON
0021  0A                                     VIDEOFLAG5_ON
0022  09 9B 50                               VIDEOREF                      ref=0x509B (GAMWAV[155]=gen_s_4.vdx)
0025  9A EE B2 32 00                         STRCMP_NE_JMP                 start=v[0x0EE], values=[2], target=0x0032
002A  96 EE B3                               LOADSTRING                    dst=v[0x0EE], values=[3]
002D  07                                     VIDEOFLAG7_ON
002E  0A                                     VIDEOFLAG5_ON
002F  09 AA 50                               VIDEOREF                      ref=0x50AA (GAMWAV[170]=gen_s_19.vdx)
0032  9A EE B0 3F 00                         STRCMP_NE_JMP                 start=v[0x0EE], values=[0], target=0x003F
0037  96 EE B1                               LOADSTRING                    dst=v[0x0EE], values=[1]
003A  07                                     VIDEOFLAG7_ON
003B  0A                                     VIDEOFLAG5_ON
003C  09 31 50                               VIDEOREF                      ref=0x5031 (GAMWAV[49]=8_s_5.vdx)
003F  47                                     RESOURCE_CONTEXT_RESTORE
0040  28 06 0C                               RESERVED_28                   value=0x0C06
0043  96 00 31 32 33 34 35 36 37 38 B9       LOADSTRING                    dst=v[0x000], values=[1, 2, 3, 4, 5, 6, 7, 8, 9]
004E  96 12 B0                               LOADSTRING                    dst=v[0x012], values=[0]
0051  96 4A B1                               LOADSTRING                    dst=v[0x04A], values=[1]
0054  94 17 08                               RANDOM                        dst=v[0x017], max=0x08
0057  94 18 08                               RANDOM                        dst=v[0x018], max=0x08
005A  94 19 08                               RANDOM                        dst=v[0x019], max=0x08
005D  94 11 08                               RANDOM                        dst=v[0x011], max=0x08
0060  94 12 08                               RANDOM                        dst=v[0x012], max=0x08
0063  94 13 08                               RANDOM                        dst=v[0x013], max=0x08
0066  18 77 01                               CALL                          target=0x0177
0069  18 B0 02                               CALL                          target=0x02B0
006C  18 EA 03                               CALL                          target=0x03EA
006F  96 4A B0                               LOADSTRING                    dst=v[0x04A], values=[0]
0072  9A 00 31 32 33 34 35 36 37 38 B9 82 00 STRCMP_NE_JMP                 start=v[0x000], values=[1, 2, 3, 4, 5, 6, 7, 8, 9], target=0x0082
007F  15 14 01                               JMP                           target=0x0114
0082  0B                                     INPUTLOOPSTART
0083  0D D2 00 50 00 F1 00 6F 00 2F 01 09    HOTSPOT_RECT                  left=0x00D2, top=0x0050, right=0x00F1, bottom=0x006F, target=0x012F, cursor=0x09
008F  0D 30 01 50 00 51 01 6F 00 35 01 0A    HOTSPOT_RECT                  left=0x0130, top=0x0050, right=0x0151, bottom=0x006F, target=0x0135, cursor=0x0A
009B  0D 8B 01 50 00 B0 01 6F 00 3B 01 09    HOTSPOT_RECT                  left=0x018B, top=0x0050, right=0x01B0, bottom=0x006F, target=0x013B, cursor=0x09
00A7  0D 94 00 6E 00 BA 00 92 00 41 01 0A    HOTSPOT_RECT                  left=0x0094, top=0x006E, right=0x00BA, bottom=0x0092, target=0x0141, cursor=0x0A
00B3  0D C1 01 6E 00 F2 01 92 00 47 01 09    HOTSPOT_RECT                  left=0x01C1, top=0x006E, right=0x01F2, bottom=0x0092, target=0x0147, cursor=0x09
00BF  0D 73 00 B3 00 A4 00 DC 00 4D 01 0A    HOTSPOT_RECT                  left=0x0073, top=0x00B3, right=0x00A4, bottom=0x00DC, target=0x014D, cursor=0x0A
00CB  0D DB 01 B1 00 11 02 DC 00 53 01 09    HOTSPOT_RECT                  left=0x01DB, top=0x00B1, right=0x0211, bottom=0x00DC, target=0x0153, cursor=0x09
00D7  0D 48 00 1A 01 7E 00 4A 01 59 01 0A    HOTSPOT_RECT                  left=0x0048, top=0x011A, right=0x007E, bottom=0x014A, target=0x0159, cursor=0x0A
00E3  0D 05 02 1C 01 3D 02 4A 01 5F 01 09    HOTSPOT_RECT                  left=0x0205, top=0x011C, right=0x023D, bottom=0x014A, target=0x015F, cursor=0x09
00EF  0D 85 00 65 01 B2 00 90 01 65 01 0A    HOTSPOT_RECT                  left=0x0085, top=0x0165, right=0x00B2, bottom=0x0190, target=0x0165, cursor=0x0A
00FB  0D 28 01 65 01 59 01 90 01 6B 01 09    HOTSPOT_RECT                  left=0x0128, top=0x0165, right=0x0159, bottom=0x0190, target=0x016B, cursor=0x09
0107  0D CB 01 66 01 FD 01 90 01 71 01 0A    HOTSPOT_RECT                  left=0x01CB, top=0x0166, right=0x01FD, bottom=0x0190, target=0x0171, cursor=0x0A
0113  13                                     INPUTLOOPEND
0114  1C 03 0C                               VIDEO_TRANSITION_REF          ref=0x0C03 (D[3]=d1_3b.vdx)
0117  18 22 08                               CALL                          target=0x0822
011A  07                                     VIDEOFLAG7_ON
011B  09 A6 50                               VIDEOREF                      ref=0x50A6 (GAMWAV[166]=gen_s_15.vdx)
011E  96 EE E1                               LOADSTRING                    dst=v[0x0EE], values=[49]
0121  43 00                                  RETURNSCRIPT                  value=0x00
0123  1C 03 0C                               VIDEO_TRANSITION_REF          ref=0x0C03 (D[3]=d1_3b.vdx)
0126  18 22 08                               CALL                          target=0x0822
0129  07                                     VIDEOFLAG7_ON
012A  09 A1 50                               VIDEOREF                      ref=0x50A1 (GAMWAV[161]=gen_s_10.vdx)
012D  43 00                                  RETURNSCRIPT                  value=0x00
012F  18 77 01                               CALL                          target=0x0177
0132  15 72 00                               JMP                           target=0x0072
0135  18 B0 02                               CALL                          target=0x02B0
0138  15 72 00                               JMP                           target=0x0072
013B  18 EA 03                               CALL                          target=0x03EA
013E  15 72 00                               JMP                           target=0x0072
0141  18 23 05                               CALL                          target=0x0523
0144  15 72 00                               JMP                           target=0x0072
0147  18 8E 05                               CALL                          target=0x058E
014A  15 72 00                               JMP                           target=0x0072
014D  18 F9 05                               CALL                          target=0x05F9
0150  15 72 00                               JMP                           target=0x0072
0153  18 7F 06                               CALL                          target=0x067F
0156  15 72 00                               JMP                           target=0x0072
0159  18 05 07                               CALL                          target=0x0705
015C  15 72 00                               JMP                           target=0x0072
015F  18 8B 07                               CALL                          target=0x078B
0162  15 72 00                               JMP                           target=0x0072
0165  18 33 02                               CALL                          target=0x0233
0168  15 72 00                               JMP                           target=0x0072
016B  18 6D 03                               CALL                          target=0x036D
016E  15 72 00                               JMP                           target=0x0072
0171  18 A6 04                               CALL                          target=0x04A6
0174  15 72 00                               JMP                           target=0x0072
0177  1C 06 0C                               VIDEO_TRANSITION_REF          ref=0x0C06 (D[6]=dpuzback.vdx)
017A  9C 14 0C                               VIDEO_TRANSITION_REF          ref=0x0C14 (D[20]=d_mask0.vdx)
017D  26 70 5F 68 23 61 61 66 00             VIDEO_NAME                    name="p_h{v000}af"
0186  9A 4A B0 90 01                         STRCMP_NE_JMP                 start=v[0x04A], values=[0], target=0x0190
018B  9F 00                                  INC                           var=v[0x000]
018D  15 9D 01                               JMP                           target=0x019D
0190  A4 00 17 00                            MOV                           dst=v[0x000], src=0x0017
0194  A5 00 11 00                            ADD                           dst=v[0x000], src=0x0011
0198  BE 00 08                               MOD                           dst=v[0x000], divisor=0x08
019B  9F 00                                  INC                           var=v[0x000]
019D  9A 00 BA A5 01                         STRCMP_NE_JMP                 start=v[0x000], values=[10], target=0x01A5
01A2  96 00 B1                               LOADSTRING                    dst=v[0x000], values=[1]
01A5  07                                     VIDEOFLAG7_ON
01A6  26 70 5F 68 23 61 61 62 00             VIDEO_NAME                    name="p_h{v000}ab"
01AF  1C 06 0C                               VIDEO_TRANSITION_REF          ref=0x0C06 (D[6]=dpuzback.vdx)
01B2  9C 17 0C                               VIDEO_TRANSITION_REF          ref=0x0C17 (D[23]=d_mask3.vdx)
01B5  27 70 5F 76 23 61 61 66 00             VIDEO_TRANSITION_NAME         name="p_v{v000}af"
01BE  26 70 5F 68 23 64 64 66 00             VIDEO_NAME                    name="p_h{v003}df"
01C7  9A 4A B0 D1 01                         STRCMP_NE_JMP                 start=v[0x04A], values=[0], target=0x01D1
01CC  9F 03                                  INC                           var=v[0x003]
01CE  15 DE 01                               JMP                           target=0x01DE
01D1  A4 03 18 00                            MOV                           dst=v[0x003], src=0x0018
01D5  A5 03 11 00                            ADD                           dst=v[0x003], src=0x0011
01D9  BE 03 08                               MOD                           dst=v[0x003], divisor=0x08
01DC  9F 03                                  INC                           var=v[0x003]
01DE  9A 03 BA E6 01                         STRCMP_NE_JMP                 start=v[0x003], values=[10], target=0x01E6
01E3  96 03 B1                               LOADSTRING                    dst=v[0x003], values=[1]
01E6  07                                     VIDEOFLAG7_ON
01E7  26 70 5F 68 23 64 64 62 00             VIDEO_NAME                    name="p_h{v003}db"
01F0  1C 06 0C                               VIDEO_TRANSITION_REF          ref=0x0C06 (D[6]=dpuzback.vdx)
01F3  9C 1A 0C                               VIDEO_TRANSITION_REF          ref=0x0C1A (D[26]=d_mask6.vdx)
01F6  27 70 5F 76 23 64 64 66 00             VIDEO_TRANSITION_NAME         name="p_v{v003}df"
01FF  26 70 5F 68 23 67 67 66 00             VIDEO_NAME                    name="p_h{v006}gf"
0208  9A 4A B0 12 02                         STRCMP_NE_JMP                 start=v[0x04A], values=[0], target=0x0212
020D  9F 06                                  INC                           var=v[0x006]
020F  15 1F 02                               JMP                           target=0x021F
0212  A4 06 19 00                            MOV                           dst=v[0x006], src=0x0019
0216  A5 06 11 00                            ADD                           dst=v[0x006], src=0x0011
021A  BE 06 08                               MOD                           dst=v[0x006], divisor=0x08
021D  9F 06                                  INC                           var=v[0x006]
021F  9A 06 BA 27 02                         STRCMP_NE_JMP                 start=v[0x006], values=[10], target=0x0227
0224  96 06 B1                               LOADSTRING                    dst=v[0x006], values=[1]
0227  07                                     VIDEOFLAG7_ON
0228  26 70 5F 68 23 67 67 62 00             VIDEO_NAME                    name="p_h{v006}gb"
0231  17 00                                  RET                           value=0x00
0233  1C 06 0C                               VIDEO_TRANSITION_REF          ref=0x0C06 (D[6]=dpuzback.vdx)
0236  9C 1A 0C                               VIDEO_TRANSITION_REF          ref=0x0C1A (D[26]=d_mask6.vdx)
0239  27 70 5F 76 23 64 64 66 00             VIDEO_TRANSITION_NAME         name="p_v{v003}df"
0242  26 70 5F 68 23 67 67 66 00             VIDEO_NAME                    name="p_h{v006}gf"
024B  A0 06                                  DEC                           var=v[0x006]
024D  9A 06 B0 55 02                         STRCMP_NE_JMP                 start=v[0x006], values=[0], target=0x0255
0252  96 06 B9                               LOADSTRING                    dst=v[0x006], values=[9]
0255  07                                     VIDEOFLAG7_ON
0256  26 70 5F 68 23 67 67 62 00             VIDEO_NAME                    name="p_h{v006}gb"
025F  1C 06 0C                               VIDEO_TRANSITION_REF          ref=0x0C06 (D[6]=dpuzback.vdx)
0262  9C 17 0C                               VIDEO_TRANSITION_REF          ref=0x0C17 (D[23]=d_mask3.vdx)
0265  27 70 5F 76 23 61 61 66 00             VIDEO_TRANSITION_NAME         name="p_v{v000}af"
026E  26 70 5F 68 23 64 64 66 00             VIDEO_NAME                    name="p_h{v003}df"
0277  A0 03                                  DEC                           var=v[0x003]
0279  9A 03 B0 81 02                         STRCMP_NE_JMP                 start=v[0x003], values=[0], target=0x0281
027E  96 03 B9                               LOADSTRING                    dst=v[0x003], values=[9]
0281  07                                     VIDEOFLAG7_ON
0282  26 70 5F 68 23 64 64 62 00             VIDEO_NAME                    name="p_h{v003}db"
028B  1C 06 0C                               VIDEO_TRANSITION_REF          ref=0x0C06 (D[6]=dpuzback.vdx)
028E  9C 14 0C                               VIDEO_TRANSITION_REF          ref=0x0C14 (D[20]=d_mask0.vdx)
0291  26 70 5F 68 23 61 61 66 00             VIDEO_NAME                    name="p_h{v000}af"
029A  A0 00                                  DEC                           var=v[0x000]
029C  9A 00 B0 A4 02                         STRCMP_NE_JMP                 start=v[0x000], values=[0], target=0x02A4
02A1  96 00 B9                               LOADSTRING                    dst=v[0x000], values=[9]
02A4  07                                     VIDEOFLAG7_ON
02A5  26 70 5F 68 23 61 61 62 00             VIDEO_NAME                    name="p_h{v000}ab"
02AE  17 00                                  RET                           value=0x00
02B0  1C 06 0C                               VIDEO_TRANSITION_REF          ref=0x0C06 (D[6]=dpuzback.vdx)
02B3  9C 15 0C                               VIDEO_TRANSITION_REF          ref=0x0C15 (D[21]=d_mask1.vdx)
02B6  26 70 5F 68 23 62 62 66 00             VIDEO_NAME                    name="p_h{v001}bf"
02BF  9A 4A B0 C9 02                         STRCMP_NE_JMP                 start=v[0x04A], values=[0], target=0x02C9
02C4  9F 01                                  INC                           var=v[0x001]
02C6  15 D6 02                               JMP                           target=0x02D6
02C9  A4 01 17 00                            MOV                           dst=v[0x001], src=0x0017
02CD  A5 01 12 00                            ADD                           dst=v[0x001], src=0x0012
02D1  BE 01 08                               MOD                           dst=v[0x001], divisor=0x08
02D4  9F 01                                  INC                           var=v[0x001]
02D6  9A 01 BA DE 02                         STRCMP_NE_JMP                 start=v[0x001], values=[10], target=0x02DE
02DB  96 01 B1                               LOADSTRING                    dst=v[0x001], values=[1]
02DE  07                                     VIDEOFLAG7_ON
02DF  26 70 5F 68 23 62 62 62 00             VIDEO_NAME                    name="p_h{v001}bb"
02E8  1C 06 0C                               VIDEO_TRANSITION_REF          ref=0x0C06 (D[6]=dpuzback.vdx)
02EB  9C 18 0C                               VIDEO_TRANSITION_REF          ref=0x0C18 (D[24]=d_mask4.vdx)
02EE  27 70 5F 76 23 62 62 66 00             VIDEO_TRANSITION_NAME         name="p_v{v001}bf"
02F7  26 70 5F 68 23 65 65 66 00             VIDEO_NAME                    name="p_h{v004}ef"
0300  9A 4A B0 0A 03                         STRCMP_NE_JMP                 start=v[0x04A], values=[0], target=0x030A
0305  9F 04                                  INC                           var=v[0x004]
0307  15 17 03                               JMP                           target=0x0317
030A  A4 04 18 00                            MOV                           dst=v[0x004], src=0x0018
030E  A5 04 12 00                            ADD                           dst=v[0x004], src=0x0012
0312  BE 04 08                               MOD                           dst=v[0x004], divisor=0x08
0315  9F 04                                  INC                           var=v[0x004]
0317  9A 04 BA 1F 03                         STRCMP_NE_JMP                 start=v[0x004], values=[10], target=0x031F
031C  96 04 B1                               LOADSTRING                    dst=v[0x004], values=[1]
031F  07                                     VIDEOFLAG7_ON
0320  26 70 5F 68 23 65 65 62 00             VIDEO_NAME                    name="p_h{v004}eb"
0329  1C 06 0C                               VIDEO_TRANSITION_REF          ref=0x0C06 (D[6]=dpuzback.vdx)
032C  9C 1B 0C                               VIDEO_TRANSITION_REF          ref=0x0C1B (D[27]=d_mask7.vdx)
032F  27 70 5F 76 23 65 65 66 00             VIDEO_TRANSITION_NAME         name="p_v{v004}ef"
0338  07                                     VIDEOFLAG7_ON
0339  26 70 5F 68 23 68 68 66 00             VIDEO_NAME                    name="p_h{v007}hf"
0342  9A 4A B0 4C 03                         STRCMP_NE_JMP                 start=v[0x04A], values=[0], target=0x034C
0347  9F 07                                  INC                           var=v[0x007]
0349  15 59 03                               JMP                           target=0x0359
034C  A4 07 19 00                            MOV                           dst=v[0x007], src=0x0019
0350  A5 07 12 00                            ADD                           dst=v[0x007], src=0x0012
0354  BE 07 08                               MOD                           dst=v[0x007], divisor=0x08
0357  9F 07                                  INC                           var=v[0x007]
0359  9A 07 BA 61 03                         STRCMP_NE_JMP                 start=v[0x007], values=[10], target=0x0361
035E  96 07 B1                               LOADSTRING                    dst=v[0x007], values=[1]
0361  07                                     VIDEOFLAG7_ON
0362  26 70 5F 68 23 68 68 62 00             VIDEO_NAME                    name="p_h{v007}hb"
036B  17 00                                  RET                           value=0x00
036D  1C 06 0C                               VIDEO_TRANSITION_REF          ref=0x0C06 (D[6]=dpuzback.vdx)
0370  9C 1B 0C                               VIDEO_TRANSITION_REF          ref=0x0C1B (D[27]=d_mask7.vdx)
0373  27 70 5F 76 23 65 65 66 00             VIDEO_TRANSITION_NAME         name="p_v{v004}ef"
037C  26 70 5F 68 23 68 68 66 00             VIDEO_NAME                    name="p_h{v007}hf"
0385  A0 07                                  DEC                           var=v[0x007]
0387  9A 07 B0 8F 03                         STRCMP_NE_JMP                 start=v[0x007], values=[0], target=0x038F
038C  96 07 B9                               LOADSTRING                    dst=v[0x007], values=[9]
038F  07                                     VIDEOFLAG7_ON
0390  26 70 5F 68 23 68 68 62 00             VIDEO_NAME                    name="p_h{v007}hb"
0399  1C 06 0C                               VIDEO_TRANSITION_REF          ref=0x0C06 (D[6]=dpuzback.vdx)
039C  9C 18 0C                               VIDEO_TRANSITION_REF          ref=0x0C18 (D[24]=d_mask4.vdx)
039F  27 70 5F 76 23 62 62 66 00             VIDEO_TRANSITION_NAME         name="p_v{v001}bf"
03A8  26 70 5F 68 23 65 65 66 00             VIDEO_NAME                    name="p_h{v004}ef"
03B1  A0 04                                  DEC                           var=v[0x004]
03B3  9A 04 B0 BB 03                         STRCMP_NE_JMP                 start=v[0x004], values=[0], target=0x03BB
03B8  96 04 B9                               LOADSTRING                    dst=v[0x004], values=[9]
03BB  07                                     VIDEOFLAG7_ON
03BC  26 70 5F 68 23 65 65 62 00             VIDEO_NAME                    name="p_h{v004}eb"
03C5  1C 06 0C                               VIDEO_TRANSITION_REF          ref=0x0C06 (D[6]=dpuzback.vdx)
03C8  9C 15 0C                               VIDEO_TRANSITION_REF          ref=0x0C15 (D[21]=d_mask1.vdx)
03CB  26 70 5F 68 23 62 62 66 00             VIDEO_NAME                    name="p_h{v001}bf"
03D4  A0 01                                  DEC                           var=v[0x001]
03D6  9A 01 B0 DE 03                         STRCMP_NE_JMP                 start=v[0x001], values=[0], target=0x03DE
03DB  96 01 B9                               LOADSTRING                    dst=v[0x001], values=[9]
03DE  07                                     VIDEOFLAG7_ON
03DF  26 70 5F 68 23 62 62 62 00             VIDEO_NAME                    name="p_h{v001}bb"
03E8  17 00                                  RET                           value=0x00
03EA  1C 06 0C                               VIDEO_TRANSITION_REF          ref=0x0C06 (D[6]=dpuzback.vdx)
03ED  9C 16 0C                               VIDEO_TRANSITION_REF          ref=0x0C16 (D[22]=d_mask2.vdx)
03F0  26 70 5F 68 23 63 63 66 00             VIDEO_NAME                    name="p_h{v002}cf"
03F9  9A 4A B0 03 04                         STRCMP_NE_JMP                 start=v[0x04A], values=[0], target=0x0403
03FE  9F 02                                  INC                           var=v[0x002]
0400  15 10 04                               JMP                           target=0x0410
0403  A4 02 17 00                            MOV                           dst=v[0x002], src=0x0017
0407  A5 02 13 00                            ADD                           dst=v[0x002], src=0x0013
040B  BE 02 08                               MOD                           dst=v[0x002], divisor=0x08
040E  9F 02                                  INC                           var=v[0x002]
0410  9A 02 BA 18 04                         STRCMP_NE_JMP                 start=v[0x002], values=[10], target=0x0418
0415  96 02 B1                               LOADSTRING                    dst=v[0x002], values=[1]
0418  07                                     VIDEOFLAG7_ON
0419  26 70 5F 68 23 63 63 62 00             VIDEO_NAME                    name="p_h{v002}cb"
0422  1C 06 0C                               VIDEO_TRANSITION_REF          ref=0x0C06 (D[6]=dpuzback.vdx)
0425  9C 19 0C                               VIDEO_TRANSITION_REF          ref=0x0C19 (D[25]=d_mask5.vdx)
0428  27 70 5F 76 23 63 63 66 00             VIDEO_TRANSITION_NAME         name="p_v{v002}cf"
0431  26 70 5F 68 23 66 66 66 00             VIDEO_NAME                    name="p_h{v005}ff"
043A  9A 4A B0 44 04                         STRCMP_NE_JMP                 start=v[0x04A], values=[0], target=0x0444
043F  9F 05                                  INC                           var=v[0x005]
0441  15 51 04                               JMP                           target=0x0451
0444  A4 05 18 00                            MOV                           dst=v[0x005], src=0x0018
0448  A5 05 13 00                            ADD                           dst=v[0x005], src=0x0013
044C  BE 05 08                               MOD                           dst=v[0x005], divisor=0x08
044F  9F 05                                  INC                           var=v[0x005]
0451  9A 05 BA 59 04                         STRCMP_NE_JMP                 start=v[0x005], values=[10], target=0x0459
0456  96 05 B1                               LOADSTRING                    dst=v[0x005], values=[1]
0459  07                                     VIDEOFLAG7_ON
045A  26 70 5F 68 23 66 66 62 00             VIDEO_NAME                    name="p_h{v005}fb"
0463  1C 06 0C                               VIDEO_TRANSITION_REF          ref=0x0C06 (D[6]=dpuzback.vdx)
0466  9C 1C 0C                               VIDEO_TRANSITION_REF          ref=0x0C1C (D[28]=d_mask8.vdx)
0469  27 70 5F 76 23 66 66 66 00             VIDEO_TRANSITION_NAME         name="p_v{v005}ff"
0472  26 70 5F 68 23 69 69 66 00             VIDEO_NAME                    name="p_h{v008}if"
047B  9A 4A B0 85 04                         STRCMP_NE_JMP                 start=v[0x04A], values=[0], target=0x0485
0480  9F 08                                  INC                           var=v[0x008]
0482  15 92 04                               JMP                           target=0x0492
0485  A4 08 19 00                            MOV                           dst=v[0x008], src=0x0019
0489  A5 08 13 00                            ADD                           dst=v[0x008], src=0x0013
048D  BE 08 08                               MOD                           dst=v[0x008], divisor=0x08
0490  9F 08                                  INC                           var=v[0x008]
0492  9A 08 BA 9A 04                         STRCMP_NE_JMP                 start=v[0x008], values=[10], target=0x049A
0497  96 08 B1                               LOADSTRING                    dst=v[0x008], values=[1]
049A  07                                     VIDEOFLAG7_ON
049B  26 70 5F 68 23 69 69 62 00             VIDEO_NAME                    name="p_h{v008}ib"
04A4  17 00                                  RET                           value=0x00
04A6  1C 06 0C                               VIDEO_TRANSITION_REF          ref=0x0C06 (D[6]=dpuzback.vdx)
04A9  9C 1C 0C                               VIDEO_TRANSITION_REF          ref=0x0C1C (D[28]=d_mask8.vdx)
04AC  27 70 5F 76 23 66 66 66 00             VIDEO_TRANSITION_NAME         name="p_v{v005}ff"
04B5  26 70 5F 68 23 69 69 66 00             VIDEO_NAME                    name="p_h{v008}if"
04BE  A0 08                                  DEC                           var=v[0x008]
04C0  9A 08 B0 C8 04                         STRCMP_NE_JMP                 start=v[0x008], values=[0], target=0x04C8
04C5  96 08 B9                               LOADSTRING                    dst=v[0x008], values=[9]
04C8  07                                     VIDEOFLAG7_ON
04C9  26 70 5F 68 23 69 69 62 00             VIDEO_NAME                    name="p_h{v008}ib"
04D2  1C 06 0C                               VIDEO_TRANSITION_REF          ref=0x0C06 (D[6]=dpuzback.vdx)
04D5  9C 19 0C                               VIDEO_TRANSITION_REF          ref=0x0C19 (D[25]=d_mask5.vdx)
04D8  27 70 5F 76 23 63 63 66 00             VIDEO_TRANSITION_NAME         name="p_v{v002}cf"
04E1  26 70 5F 68 23 66 66 66 00             VIDEO_NAME                    name="p_h{v005}ff"
04EA  A0 05                                  DEC                           var=v[0x005]
04EC  9A 05 B0 F4 04                         STRCMP_NE_JMP                 start=v[0x005], values=[0], target=0x04F4
04F1  96 05 B9                               LOADSTRING                    dst=v[0x005], values=[9]
04F4  07                                     VIDEOFLAG7_ON
04F5  26 70 5F 68 23 66 66 62 00             VIDEO_NAME                    name="p_h{v005}fb"
04FE  1C 06 0C                               VIDEO_TRANSITION_REF          ref=0x0C06 (D[6]=dpuzback.vdx)
0501  9C 16 0C                               VIDEO_TRANSITION_REF          ref=0x0C16 (D[22]=d_mask2.vdx)
0504  26 70 5F 68 23 63 63 66 00             VIDEO_NAME                    name="p_h{v002}cf"
050D  A0 02                                  DEC                           var=v[0x002]
050F  9A 02 B0 17 05                         STRCMP_NE_JMP                 start=v[0x002], values=[0], target=0x0517
0514  96 02 B9                               LOADSTRING                    dst=v[0x002], values=[9]
0517  07                                     VIDEOFLAG7_ON
0518  26 70 5F 68 23 63 63 62 00             VIDEO_NAME                    name="p_h{v002}cb"
0521  17 00                                  RET                           value=0x00
0523  1C 06 0C                               VIDEO_TRANSITION_REF          ref=0x0C06 (D[6]=dpuzback.vdx)
0526  9C 14 0C                               VIDEO_TRANSITION_REF          ref=0x0C14 (D[20]=d_mask0.vdx)
0529  26 70 5F 76 23 61 61 66 00             VIDEO_NAME                    name="p_v{v000}af"
0532  9F 00                                  INC                           var=v[0x000]
0534  9A 00 BA 3C 05                         STRCMP_NE_JMP                 start=v[0x000], values=[10], target=0x053C
0539  96 00 B1                               LOADSTRING                    dst=v[0x000], values=[1]
053C  07                                     VIDEOFLAG7_ON
053D  26 70 5F 76 23 61 61 62 00             VIDEO_NAME                    name="p_v{v000}ab"
0546  1C 06 0C                               VIDEO_TRANSITION_REF          ref=0x0C06 (D[6]=dpuzback.vdx)
0549  9C 15 0C                               VIDEO_TRANSITION_REF          ref=0x0C15 (D[21]=d_mask1.vdx)
054C  26 70 5F 76 23 62 62 66 00             VIDEO_NAME                    name="p_v{v001}bf"
0555  9F 01                                  INC                           var=v[0x001]
0557  9A 01 BA 5F 05                         STRCMP_NE_JMP                 start=v[0x001], values=[10], target=0x055F
055C  96 01 B1                               LOADSTRING                    dst=v[0x001], values=[1]
055F  07                                     VIDEOFLAG7_ON
0560  26 70 5F 76 23 62 62 62 00             VIDEO_NAME                    name="p_v{v001}bb"
0569  1C 06 0C                               VIDEO_TRANSITION_REF          ref=0x0C06 (D[6]=dpuzback.vdx)
056C  9C 16 0C                               VIDEO_TRANSITION_REF          ref=0x0C16 (D[22]=d_mask2.vdx)
056F  26 70 5F 76 23 63 63 66 00             VIDEO_NAME                    name="p_v{v002}cf"
0578  9F 02                                  INC                           var=v[0x002]
057A  9A 02 BA 82 05                         STRCMP_NE_JMP                 start=v[0x002], values=[10], target=0x0582
057F  96 02 B1                               LOADSTRING                    dst=v[0x002], values=[1]
0582  07                                     VIDEOFLAG7_ON
0583  26 70 5F 76 23 63 63 62 00             VIDEO_NAME                    name="p_v{v002}cb"
058C  17 00                                  RET                           value=0x00
058E  1C 06 0C                               VIDEO_TRANSITION_REF          ref=0x0C06 (D[6]=dpuzback.vdx)
0591  9C 16 0C                               VIDEO_TRANSITION_REF          ref=0x0C16 (D[22]=d_mask2.vdx)
0594  26 70 5F 76 23 63 63 66 00             VIDEO_NAME                    name="p_v{v002}cf"
059D  A0 02                                  DEC                           var=v[0x002]
059F  9A 02 B0 A7 05                         STRCMP_NE_JMP                 start=v[0x002], values=[0], target=0x05A7
05A4  96 02 B9                               LOADSTRING                    dst=v[0x002], values=[9]
05A7  07                                     VIDEOFLAG7_ON
05A8  26 70 5F 76 23 63 63 62 00             VIDEO_NAME                    name="p_v{v002}cb"
05B1  1C 06 0C                               VIDEO_TRANSITION_REF          ref=0x0C06 (D[6]=dpuzback.vdx)
05B4  9C 15 0C                               VIDEO_TRANSITION_REF          ref=0x0C15 (D[21]=d_mask1.vdx)
05B7  26 70 5F 76 23 62 62 66 00             VIDEO_NAME                    name="p_v{v001}bf"
05C0  A0 01                                  DEC                           var=v[0x001]
05C2  9A 01 B0 CA 05                         STRCMP_NE_JMP                 start=v[0x001], values=[0], target=0x05CA
05C7  96 01 B9                               LOADSTRING                    dst=v[0x001], values=[9]
05CA  07                                     VIDEOFLAG7_ON
05CB  26 70 5F 76 23 62 62 62 00             VIDEO_NAME                    name="p_v{v001}bb"
05D4  1C 06 0C                               VIDEO_TRANSITION_REF          ref=0x0C06 (D[6]=dpuzback.vdx)
05D7  9C 14 0C                               VIDEO_TRANSITION_REF          ref=0x0C14 (D[20]=d_mask0.vdx)
05DA  26 70 5F 76 23 61 61 66 00             VIDEO_NAME                    name="p_v{v000}af"
05E3  A0 00                                  DEC                           var=v[0x000]
05E5  9A 00 B0 ED 05                         STRCMP_NE_JMP                 start=v[0x000], values=[0], target=0x05ED
05EA  96 00 B9                               LOADSTRING                    dst=v[0x000], values=[9]
05ED  07                                     VIDEOFLAG7_ON
05EE  26 70 5F 76 23 61 61 62 00             VIDEO_NAME                    name="p_v{v000}ab"
05F7  17 00                                  RET                           value=0x00
05F9  1C 06 0C                               VIDEO_TRANSITION_REF          ref=0x0C06 (D[6]=dpuzback.vdx)
05FC  9C 17 0C                               VIDEO_TRANSITION_REF          ref=0x0C17 (D[23]=d_mask3.vdx)
05FF  27 70 5F 76 23 61 61 66 00             VIDEO_TRANSITION_NAME         name="p_v{v000}af"
0608  26 70 5F 76 23 64 64 66 00             VIDEO_NAME                    name="p_v{v003}df"
0611  9F 03                                  INC                           var=v[0x003]
0613  9A 03 BA 1B 06                         STRCMP_NE_JMP                 start=v[0x003], values=[10], target=0x061B
0618  96 03 B1                               LOADSTRING                    dst=v[0x003], values=[1]
061B  07                                     VIDEOFLAG7_ON
061C  26 70 5F 76 23 64 64 62 00             VIDEO_NAME                    name="p_v{v003}db"
0625  1C 06 0C                               VIDEO_TRANSITION_REF          ref=0x0C06 (D[6]=dpuzback.vdx)
0628  9C 18 0C                               VIDEO_TRANSITION_REF          ref=0x0C18 (D[24]=d_mask4.vdx)
062B  27 70 5F 76 23 62 62 66 00             VIDEO_TRANSITION_NAME         name="p_v{v001}bf"
0634  26 70 5F 76 23 65 65 66 00             VIDEO_NAME                    name="p_v{v004}ef"
063D  9F 04                                  INC                           var=v[0x004]
063F  9A 04 BA 47 06                         STRCMP_NE_JMP                 start=v[0x004], values=[10], target=0x0647
0644  96 04 B1                               LOADSTRING                    dst=v[0x004], values=[1]
0647  07                                     VIDEOFLAG7_ON
0648  26 70 5F 76 23 65 65 62 00             VIDEO_NAME                    name="p_v{v004}eb"
0651  1C 06 0C                               VIDEO_TRANSITION_REF          ref=0x0C06 (D[6]=dpuzback.vdx)
0654  9C 19 0C                               VIDEO_TRANSITION_REF          ref=0x0C19 (D[25]=d_mask5.vdx)
0657  27 70 5F 76 23 63 63 66 00             VIDEO_TRANSITION_NAME         name="p_v{v002}cf"
0660  26 70 5F 76 23 66 66 66 00             VIDEO_NAME                    name="p_v{v005}ff"
0669  9F 05                                  INC                           var=v[0x005]
066B  9A 05 BA 73 06                         STRCMP_NE_JMP                 start=v[0x005], values=[10], target=0x0673
0670  96 05 B1                               LOADSTRING                    dst=v[0x005], values=[1]
0673  07                                     VIDEOFLAG7_ON
0674  26 70 5F 76 23 66 66 62 00             VIDEO_NAME                    name="p_v{v005}fb"
067D  17 00                                  RET                           value=0x00
067F  1C 06 0C                               VIDEO_TRANSITION_REF          ref=0x0C06 (D[6]=dpuzback.vdx)
0682  9C 19 0C                               VIDEO_TRANSITION_REF          ref=0x0C19 (D[25]=d_mask5.vdx)
0685  27 70 5F 76 23 63 63 66 00             VIDEO_TRANSITION_NAME         name="p_v{v002}cf"
068E  26 70 5F 76 23 66 66 66 00             VIDEO_NAME                    name="p_v{v005}ff"
0697  A0 05                                  DEC                           var=v[0x005]
0699  9A 05 B0 A1 06                         STRCMP_NE_JMP                 start=v[0x005], values=[0], target=0x06A1
069E  96 05 B9                               LOADSTRING                    dst=v[0x005], values=[9]
06A1  07                                     VIDEOFLAG7_ON
06A2  26 70 5F 76 23 66 66 62 00             VIDEO_NAME                    name="p_v{v005}fb"
06AB  1C 06 0C                               VIDEO_TRANSITION_REF          ref=0x0C06 (D[6]=dpuzback.vdx)
06AE  9C 18 0C                               VIDEO_TRANSITION_REF          ref=0x0C18 (D[24]=d_mask4.vdx)
06B1  27 70 5F 76 23 62 62 66 00             VIDEO_TRANSITION_NAME         name="p_v{v001}bf"
06BA  26 70 5F 76 23 65 65 66 00             VIDEO_NAME                    name="p_v{v004}ef"
06C3  A0 04                                  DEC                           var=v[0x004]
06C5  9A 04 B0 CD 06                         STRCMP_NE_JMP                 start=v[0x004], values=[0], target=0x06CD
06CA  96 04 B9                               LOADSTRING                    dst=v[0x004], values=[9]
06CD  07                                     VIDEOFLAG7_ON
06CE  26 70 5F 76 23 65 65 62 00             VIDEO_NAME                    name="p_v{v004}eb"
06D7  1C 06 0C                               VIDEO_TRANSITION_REF          ref=0x0C06 (D[6]=dpuzback.vdx)
06DA  9C 17 0C                               VIDEO_TRANSITION_REF          ref=0x0C17 (D[23]=d_mask3.vdx)
06DD  27 70 5F 76 23 61 61 66 00             VIDEO_TRANSITION_NAME         name="p_v{v000}af"
06E6  26 70 5F 76 23 64 64 66 00             VIDEO_NAME                    name="p_v{v003}df"
06EF  A0 03                                  DEC                           var=v[0x003]
06F1  9A 03 B0 F9 06                         STRCMP_NE_JMP                 start=v[0x003], values=[0], target=0x06F9
06F6  96 03 B9                               LOADSTRING                    dst=v[0x003], values=[9]
06F9  07                                     VIDEOFLAG7_ON
06FA  26 70 5F 76 23 64 64 62 00             VIDEO_NAME                    name="p_v{v003}db"
0703  17 00                                  RET                           value=0x00
0705  1C 06 0C                               VIDEO_TRANSITION_REF          ref=0x0C06 (D[6]=dpuzback.vdx)
0708  9C 1A 0C                               VIDEO_TRANSITION_REF          ref=0x0C1A (D[26]=d_mask6.vdx)
070B  27 70 5F 76 23 64 64 66 00             VIDEO_TRANSITION_NAME         name="p_v{v003}df"
0714  26 70 5F 76 23 67 67 66 00             VIDEO_NAME                    name="p_v{v006}gf"
071D  9F 06                                  INC                           var=v[0x006]
071F  9A 06 BA 27 07                         STRCMP_NE_JMP                 start=v[0x006], values=[10], target=0x0727
0724  96 06 B1                               LOADSTRING                    dst=v[0x006], values=[1]
0727  07                                     VIDEOFLAG7_ON
0728  26 70 5F 76 23 67 67 62 00             VIDEO_NAME                    name="p_v{v006}gb"
0731  1C 06 0C                               VIDEO_TRANSITION_REF          ref=0x0C06 (D[6]=dpuzback.vdx)
0734  9C 1B 0C                               VIDEO_TRANSITION_REF          ref=0x0C1B (D[27]=d_mask7.vdx)
0737  27 70 5F 76 23 65 65 66 00             VIDEO_TRANSITION_NAME         name="p_v{v004}ef"
0740  26 70 5F 76 23 68 68 66 00             VIDEO_NAME                    name="p_v{v007}hf"
0749  9F 07                                  INC                           var=v[0x007]
074B  9A 07 BA 53 07                         STRCMP_NE_JMP                 start=v[0x007], values=[10], target=0x0753
0750  96 07 B1                               LOADSTRING                    dst=v[0x007], values=[1]
0753  07                                     VIDEOFLAG7_ON
0754  26 70 5F 76 23 68 68 62 00             VIDEO_NAME                    name="p_v{v007}hb"
075D  1C 06 0C                               VIDEO_TRANSITION_REF          ref=0x0C06 (D[6]=dpuzback.vdx)
0760  9C 1C 0C                               VIDEO_TRANSITION_REF          ref=0x0C1C (D[28]=d_mask8.vdx)
0763  27 70 5F 76 23 66 66 66 00             VIDEO_TRANSITION_NAME         name="p_v{v005}ff"
076C  26 70 5F 76 23 69 69 66 00             VIDEO_NAME                    name="p_v{v008}if"
0775  9F 08                                  INC                           var=v[0x008]
0777  9A 08 BA 7F 07                         STRCMP_NE_JMP                 start=v[0x008], values=[10], target=0x077F
077C  96 08 B1                               LOADSTRING                    dst=v[0x008], values=[1]
077F  07                                     VIDEOFLAG7_ON
0780  26 70 5F 76 23 69 69 62 00             VIDEO_NAME                    name="p_v{v008}ib"
0789  17 00                                  RET                           value=0x00
078B  1C 06 0C                               VIDEO_TRANSITION_REF          ref=0x0C06 (D[6]=dpuzback.vdx)
078E  9C 1C 0C                               VIDEO_TRANSITION_REF          ref=0x0C1C (D[28]=d_mask8.vdx)
0791  27 70 5F 76 23 66 66 66 00             VIDEO_TRANSITION_NAME         name="p_v{v005}ff"
079A  26 70 5F 76 23 69 69 66 00             VIDEO_NAME                    name="p_v{v008}if"
07A3  A0 08                                  DEC                           var=v[0x008]
07A5  9A 08 B0 AD 07                         STRCMP_NE_JMP                 start=v[0x008], values=[0], target=0x07AD
07AA  96 08 B9                               LOADSTRING                    dst=v[0x008], values=[9]
07AD  07                                     VIDEOFLAG7_ON
07AE  26 70 5F 76 23 69 69 62 00             VIDEO_NAME                    name="p_v{v008}ib"
07B7  1C 06 0C                               VIDEO_TRANSITION_REF          ref=0x0C06 (D[6]=dpuzback.vdx)
07BA  9C 1B 0C                               VIDEO_TRANSITION_REF          ref=0x0C1B (D[27]=d_mask7.vdx)
07BD  27 70 5F 76 23 65 65 66 00             VIDEO_TRANSITION_NAME         name="p_v{v004}ef"
07C6  26 70 5F 76 23 68 68 66 00             VIDEO_NAME                    name="p_v{v007}hf"
07CF  A0 07                                  DEC                           var=v[0x007]
07D1  9A 07 B0 D9 07                         STRCMP_NE_JMP                 start=v[0x007], values=[0], target=0x07D9
07D6  96 07 B9                               LOADSTRING                    dst=v[0x007], values=[9]
07D9  07                                     VIDEOFLAG7_ON
07DA  26 70 5F 76 23 68 68 62 00             VIDEO_NAME                    name="p_v{v007}hb"
07E3  1C 06 0C                               VIDEO_TRANSITION_REF          ref=0x0C06 (D[6]=dpuzback.vdx)
07E6  9C 1A 0C                               VIDEO_TRANSITION_REF          ref=0x0C1A (D[26]=d_mask6.vdx)
07E9  27 70 5F 76 23 64 64 66 00             VIDEO_TRANSITION_NAME         name="p_v{v003}df"
07F2  26 70 5F 76 23 67 67 66 00             VIDEO_NAME                    name="p_v{v006}gf"
07FB  A0 06                                  DEC                           var=v[0x006]
07FD  9A 06 B0 05 08                         STRCMP_NE_JMP                 start=v[0x006], values=[0], target=0x0805
0802  96 06 B9                               LOADSTRING                    dst=v[0x006], values=[9]
0805  07                                     VIDEOFLAG7_ON
0806  26 70 5F 76 23 67 67 62 00             VIDEO_NAME                    name="p_v{v006}gb"
080F  17 00                                  RET                           value=0x00
0811  07                                     VIDEOFLAG7_ON
0812  46                                     RESOURCE_CONTEXT_SAVE
0813  09 8B 50                               VIDEOREF                      ref=0x508B (GAMWAV[139]=gen_e_5.vdx)
0816  47                                     RESOURCE_CONTEXT_RESTORE
0817  1C 03 0C                               VIDEO_TRANSITION_REF          ref=0x0C03 (D[3]=d1_3b.vdx)
081A  18 22 08                               CALL                          target=0x0822
081D  15 00 00                               JMP                           target=0x0000
0820  43 01                                  RETURNSCRIPT                  value=0x01
0822  0A                                     VIDEOFLAG5_ON
0823  07                                     VIDEOFLAG7_ON
0824  46                                     RESOURCE_CONTEXT_SAVE
0825  09 01 24                               VIDEOREF                      ref=0x2401 (INTRO[1]=fade.vdx)
0828  37 00 00 50 00 7F 02 8F 01             COPY_RECT_TO_BG               left=0x0000, top=0x0050, right=0x027F, bottom=0x018F
0831  47                                     RESOURCE_CONTEXT_RESTORE
0832  17 00                                  RET                           value=0x00
