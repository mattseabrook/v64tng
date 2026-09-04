; T7G/GRATE.GRV
; size=1086 sha256=3c276cbb0a8b5a84a109a9db2a2958da8c0f117bf1c4ba5210119b918b725e8e
; instructions=277 input_loops=1
; Trace 20260903-225430: 0041 installs MC[46]=mgpuzbkd.vdx as the persistent
; foreground matte. Every accepted grate move reaches one of the BF7+BF6 pairs
; below and configures its movement VDX with flags 00C0h. Those VIDEOREFs write
; the background/display surface; their FF delta pixels recover the clean old
; grate position from mgpuzbkd rather than replacing that foreground matte.

0000  16 03 01 B0                            LOADSTRING                    dst=v[0x103], values=[0]
0004  16 07 01 B0                            LOADSTRING                    dst=v[0x107], values=[0]
0008  45 28 01                               SET_HOTSPOT_LEFT              target=0x0128
000B  44 28 01                               SET_HOTSPOT_RIGHT             target=0x0128
000E  2C 2A 04 08                            SET_HOTSPOT_TOP               target=0x042A, cursor=0x08
0012  2D 1B 04 06                            SET_HOTSPOT_BOTTOM            target=0x041B, cursor=0x06
0016  96 92 30 B5                            LOADSTRING                    dst=v[0x092], values=[0, 5]
001A  46                                     RESOURCE_CONTEXT_SAVE
001B  9A F8 B0 28 00                         STRCMP_NE_JMP                 start=v[0x0F8], values=[0], target=0x0028
0020  07                                     VIDEOFLAG7_ON
0021  0A                                     VIDEOFLAG5_ON
0022  09 9D 50                               VIDEOREF                      ref=0x509D (GAMWAV[157]=gen_s_6.vdx)
0025  96 F8 B1                               LOADSTRING                    dst=v[0x0F8], values=[1]
0028  9A F8 B2 30 00                         STRCMP_NE_JMP                 start=v[0x0F8], values=[2], target=0x0030
002D  96 F8 B3                               LOADSTRING                    dst=v[0x0F8], values=[3]
0030  9A F8 B4 38 00                         STRCMP_NE_JMP                 start=v[0x0F8], values=[4], target=0x0038
0035  96 F8 B5                               LOADSTRING                    dst=v[0x0F8], values=[5]
0038  47                                     RESOURCE_CONTEXT_RESTORE
0039  96 00 31 30 33 31 31 B2                LOADSTRING                    dst=v[0x000], values=[1, 0, 3, 1, 1, 2]
0041  1C 2E 3C                               VIDEO_TRANSITION_REF          ref=0x3C2E (MC[46]=mgpuzbkd.vdx)
0044  36 03 01 B8 5E 00                      CHAR_LESS_JMP                 start=v[0x103], values=[8], target=0x005E
004A  1A 07 01 B2 5E 00                      STRCMP_NE_JMP                 start=v[0x107], values=[2], target=0x005E
0050  46                                     RESOURCE_CONTEXT_SAVE
0051  16 03 01 B0                            LOADSTRING                    dst=v[0x103], values=[0]
0055  16 07 01 B3                            LOADSTRING                    dst=v[0x107], values=[3]
0059  07                                     VIDEOFLAG7_ON
005A  09 27 50                               VIDEOREF                      ref=0x5027 (GAMWAV[39]=8_e_1.vdx)
005D  47                                     RESOURCE_CONTEXT_RESTORE
005E  36 03 01 B7 78 00                      CHAR_LESS_JMP                 start=v[0x103], values=[7], target=0x0078
0064  1A 07 01 B1 78 00                      STRCMP_NE_JMP                 start=v[0x107], values=[1], target=0x0078
006A  46                                     RESOURCE_CONTEXT_SAVE
006B  16 03 01 B0                            LOADSTRING                    dst=v[0x103], values=[0]
006F  16 07 01 B2                            LOADSTRING                    dst=v[0x107], values=[2]
0073  07                                     VIDEOFLAG7_ON
0074  09 28 50                               VIDEOREF                      ref=0x5028 (GAMWAV[40]=8_e_2.vdx)
0077  47                                     RESOURCE_CONTEXT_RESTORE
0078  36 03 01 B8 92 00                      CHAR_LESS_JMP                 start=v[0x103], values=[8], target=0x0092
007E  1A 07 01 B0 92 00                      STRCMP_NE_JMP                 start=v[0x107], values=[0], target=0x0092
0084  46                                     RESOURCE_CONTEXT_SAVE
0085  16 03 01 B0                            LOADSTRING                    dst=v[0x103], values=[0]
0089  16 07 01 B1                            LOADSTRING                    dst=v[0x107], values=[1]
008D  07                                     VIDEOFLAG7_ON
008E  09 32 50                               VIDEOREF                      ref=0x5032 (GAMWAV[50]=8_s_6.vdx)
0091  47                                     RESOURCE_CONTEXT_RESTORE
0092  9A 00 31 30 32 31 31 B3 9F 00          STRCMP_NE_JMP                 start=v[0x000], values=[1, 0, 2, 1, 1, 3], target=0x009F
009C  15 14 01                               JMP                           target=0x0114
009F  9A 00 31 31 32 31 30 B3 AC 00          STRCMP_NE_JMP                 start=v[0x000], values=[1, 1, 2, 1, 0, 3], target=0x00AC
00A9  15 19 01                               JMP                           target=0x0119
00AC  0B                                     INPUTLOOPSTART
00AD  A3 00 B0 BE 00                         STRCMP_EQ_JMP                 start=v[0x000], values=[0], target=0x00BE
00B2  0D 36 00 9A 00 E8 00 F0 00 30 01 09    HOTSPOT_RECT                  left=0x0036, top=0x009A, right=0x00E8, bottom=0x00F0, target=0x0130, cursor=0x09
00BE  A3 01 B0 CF 00                         STRCMP_EQ_JMP                 start=v[0x001], values=[0], target=0x00CF
00C3  0D E8 00 9A 00 97 01 F0 00 95 01 0A    HOTSPOT_RECT                  left=0x00E8, top=0x009A, right=0x0197, bottom=0x00F0, target=0x0195, cursor=0x0A
00CF  A3 02 B0 E0 00                         STRCMP_EQ_JMP                 start=v[0x002], values=[0], target=0x00E0
00D4  0D 9C 01 9A 00 4B 02 F0 00 2A 02 09    HOTSPOT_RECT                  left=0x019C, top=0x009A, right=0x024B, bottom=0x00F0, target=0x022A, cursor=0x09
00E0  A3 03 B0 F1 00                         STRCMP_EQ_JMP                 start=v[0x003], values=[0], target=0x00F1
00E5  0D 36 00 F3 00 E8 00 47 01 9E 02 0A    HOTSPOT_RECT                  left=0x0036, top=0x00F3, right=0x00E8, bottom=0x0147, target=0x029E, cursor=0x0A
00F1  A3 04 B0 02 01                         STRCMP_EQ_JMP                 start=v[0x004], values=[0], target=0x0102
00F6  0D E8 00 F3 00 97 01 47 01 03 03 09    HOTSPOT_RECT                  left=0x00E8, top=0x00F3, right=0x0197, bottom=0x0147, target=0x0303, cursor=0x09
0102  A3 05 B0 13 01                         STRCMP_EQ_JMP                 start=v[0x005], values=[0], target=0x0113
0107  0D 9C 01 F3 00 4B 02 47 01 A7 03 0A    HOTSPOT_RECT                  left=0x019C, top=0x00F3, right=0x024B, bottom=0x0147, target=0x03A7, cursor=0x0A
0113  13                                     INPUTLOOPEND
0114  96 F8 E1                               LOADSTRING                    dst=v[0x0F8], values=[49]
0117  43 02                                  RETURNSCRIPT                  value=0x02
0119  07                                     VIDEOFLAG7_ON
011A  0A                                     VIDEOFLAG5_ON
011B  46                                     RESOURCE_CONTEXT_SAVE
011C  09 87 50                               VIDEOREF                      ref=0x5087 (GAMWAV[135]=gen_e_1.vdx)
011F  47                                     RESOURCE_CONTEXT_RESTORE
0120  96 F8 E1                               LOADSTRING                    dst=v[0x0F8], values=[49]
0123  18 95 01                               CALL                          target=0x0195
0126  43 02                                  RETURNSCRIPT                  value=0x02
0128  1C 34 3C                               VIDEO_TRANSITION_REF          ref=0x3C34 (MC[52]=mg_in_b.vdx)
012B  18 2C 04                               CALL                          target=0x042C
012E  43 00                                  RETURNSCRIPT                  value=0x00
0130  07                                     VIDEOFLAG7_ON
0131  06                                     VIDEOFLAG6_ON
0132  9A 01 B0 3F 01                         STRCMP_NE_JMP                 start=v[0x001], values=[0], target=0x013F
0137  9A 00 B1 3F 01                         STRCMP_NE_JMP                 start=v[0x000], values=[1], target=0x013F
013C  09 1C 3C                               VIDEOREF                      ref=0x3C1C (MC[28]=gx_1-2.vdx)
013F  9A 01 B0 4C 01                         STRCMP_NE_JMP                 start=v[0x001], values=[0], target=0x014C
0144  9A 00 B2 4C 01                         STRCMP_NE_JMP                 start=v[0x000], values=[2], target=0x014C
0149  09 00 3C                               VIDEOREF                      ref=0x3C00 (MC[0]=ga_1-2.vdx)
014C  9A 01 B0 59 01                         STRCMP_NE_JMP                 start=v[0x001], values=[0], target=0x0159
0151  9A 00 B3 59 01                         STRCMP_NE_JMP                 start=v[0x000], values=[3], target=0x0159
0156  09 0E 3C                               VIDEOREF                      ref=0x3C0E (MC[14]=gu_1-2.vdx)
0159  9A 03 B0 66 01                         STRCMP_NE_JMP                 start=v[0x003], values=[0], target=0x0166
015E  9A 00 B1 66 01                         STRCMP_NE_JMP                 start=v[0x000], values=[1], target=0x0166
0163  09 1D 3C                               VIDEOREF                      ref=0x3C1D (MC[29]=gx_1-4.vdx)
0166  9A 03 B0 73 01                         STRCMP_NE_JMP                 start=v[0x003], values=[0], target=0x0173
016B  9A 00 B2 73 01                         STRCMP_NE_JMP                 start=v[0x000], values=[2], target=0x0173
0170  09 01 3C                               VIDEOREF                      ref=0x3C01 (MC[1]=ga_1-4.vdx)
0173  9A 03 B0 80 01                         STRCMP_NE_JMP                 start=v[0x003], values=[0], target=0x0180
0178  9A 00 B3 80 01                         STRCMP_NE_JMP                 start=v[0x000], values=[3], target=0x0180
017D  09 0F 3C                               VIDEOREF                      ref=0x3C0F (MC[15]=gu_1-4.vdx)
0180  9A 01 B0 89 01                         STRCMP_NE_JMP                 start=v[0x001], values=[0], target=0x0189
0185  9D 00 01 00                            SWAP                          dst=v[0x000], src=0x0001
0189  9A 03 B0 92 01                         STRCMP_NE_JMP                 start=v[0x003], values=[0], target=0x0192
018E  9D 00 03 00                            SWAP                          dst=v[0x000], src=0x0003
0192  15 44 00                               JMP                           target=0x0044
0195  07                                     VIDEOFLAG7_ON
0196  06                                     VIDEOFLAG6_ON
0197  9A 00 B0 A4 01                         STRCMP_NE_JMP                 start=v[0x000], values=[0], target=0x01A4
019C  9A 01 B1 A4 01                         STRCMP_NE_JMP                 start=v[0x001], values=[1], target=0x01A4
01A1  09 1E 3C                               VIDEOREF                      ref=0x3C1E (MC[30]=gx_2-1.vdx)
01A4  9A 00 B0 B1 01                         STRCMP_NE_JMP                 start=v[0x000], values=[0], target=0x01B1
01A9  9A 01 B2 B1 01                         STRCMP_NE_JMP                 start=v[0x001], values=[2], target=0x01B1
01AE  09 02 3C                               VIDEOREF                      ref=0x3C02 (MC[2]=ga_2-1.vdx)
01B1  9A 00 B0 BE 01                         STRCMP_NE_JMP                 start=v[0x000], values=[0], target=0x01BE
01B6  9A 01 B3 BE 01                         STRCMP_NE_JMP                 start=v[0x001], values=[3], target=0x01BE
01BB  09 10 3C                               VIDEOREF                      ref=0x3C10 (MC[16]=gu_2-1.vdx)
01BE  9A 02 B0 CB 01                         STRCMP_NE_JMP                 start=v[0x002], values=[0], target=0x01CB
01C3  9A 01 B1 CB 01                         STRCMP_NE_JMP                 start=v[0x001], values=[1], target=0x01CB
01C8  09 1F 3C                               VIDEOREF                      ref=0x3C1F (MC[31]=gx_2-3.vdx)
01CB  9A 02 B0 D8 01                         STRCMP_NE_JMP                 start=v[0x002], values=[0], target=0x01D8
01D0  9A 01 B2 D8 01                         STRCMP_NE_JMP                 start=v[0x001], values=[2], target=0x01D8
01D5  09 03 3C                               VIDEOREF                      ref=0x3C03 (MC[3]=ga_2-3.vdx)
01D8  9A 02 B0 E5 01                         STRCMP_NE_JMP                 start=v[0x002], values=[0], target=0x01E5
01DD  9A 01 B3 E5 01                         STRCMP_NE_JMP                 start=v[0x001], values=[3], target=0x01E5
01E2  09 11 3C                               VIDEOREF                      ref=0x3C11 (MC[17]=gu_2-3.vdx)
01E5  9A 04 B0 F2 01                         STRCMP_NE_JMP                 start=v[0x004], values=[0], target=0x01F2
01EA  9A 01 B1 F2 01                         STRCMP_NE_JMP                 start=v[0x001], values=[1], target=0x01F2
01EF  09 20 3C                               VIDEOREF                      ref=0x3C20 (MC[32]=gx_2-5.vdx)
01F2  9A 04 B0 FF 01                         STRCMP_NE_JMP                 start=v[0x004], values=[0], target=0x01FF
01F7  9A 01 B2 FF 01                         STRCMP_NE_JMP                 start=v[0x001], values=[2], target=0x01FF
01FC  09 04 3C                               VIDEOREF                      ref=0x3C04 (MC[4]=ga_2-5.vdx)
01FF  9A 04 B0 0C 02                         STRCMP_NE_JMP                 start=v[0x004], values=[0], target=0x020C
0204  9A 01 B3 0C 02                         STRCMP_NE_JMP                 start=v[0x001], values=[3], target=0x020C
0209  09 12 3C                               VIDEOREF                      ref=0x3C12 (MC[18]=gu_2-5.vdx)
020C  9A 00 B0 15 02                         STRCMP_NE_JMP                 start=v[0x000], values=[0], target=0x0215
0211  9D 01 00 00                            SWAP                          dst=v[0x001], src=0x0000
0215  9A 02 B0 1E 02                         STRCMP_NE_JMP                 start=v[0x002], values=[0], target=0x021E
021A  9D 01 02 00                            SWAP                          dst=v[0x001], src=0x0002
021E  9A 04 B0 27 02                         STRCMP_NE_JMP                 start=v[0x004], values=[0], target=0x0227
0223  9D 01 04 00                            SWAP                          dst=v[0x001], src=0x0004
0227  15 44 00                               JMP                           target=0x0044
022A  07                                     VIDEOFLAG7_ON
022B  06                                     VIDEOFLAG6_ON
022C  9A 01 B0 39 02                         STRCMP_NE_JMP                 start=v[0x001], values=[0], target=0x0239
0231  9A 02 B1 39 02                         STRCMP_NE_JMP                 start=v[0x002], values=[1], target=0x0239
0236  09 21 3C                               VIDEOREF                      ref=0x3C21 (MC[33]=gx_3-2.vdx)
0239  9A 01 B0 46 02                         STRCMP_NE_JMP                 start=v[0x001], values=[0], target=0x0246
023E  9A 02 B2 46 02                         STRCMP_NE_JMP                 start=v[0x002], values=[2], target=0x0246
0243  09 05 3C                               VIDEOREF                      ref=0x3C05 (MC[5]=ga_3-2.vdx)
0246  9A 01 B0 53 02                         STRCMP_NE_JMP                 start=v[0x001], values=[0], target=0x0253
024B  9A 02 B3 53 02                         STRCMP_NE_JMP                 start=v[0x002], values=[3], target=0x0253
0250  09 13 3C                               VIDEOREF                      ref=0x3C13 (MC[19]=gu_3-2.vdx)
0253  9A 05 B0 60 02                         STRCMP_NE_JMP                 start=v[0x005], values=[0], target=0x0260
0258  9A 02 B2 60 02                         STRCMP_NE_JMP                 start=v[0x002], values=[2], target=0x0260
025D  09 54 3C                               VIDEOREF                      ref=0x3C54 (MC[84]=stkb.vdx)
0260  07                                     VIDEOFLAG7_ON
0261  06                                     VIDEOFLAG6_ON
0262  9A 05 B0 6F 02                         STRCMP_NE_JMP                 start=v[0x005], values=[0], target=0x026F
0267  9A 02 B1 6F 02                         STRCMP_NE_JMP                 start=v[0x002], values=[1], target=0x026F
026C  09 22 3C                               VIDEOREF                      ref=0x3C22 (MC[34]=gx_3-6.vdx)
026F  9A 05 B0 7C 02                         STRCMP_NE_JMP                 start=v[0x005], values=[0], target=0x027C
0274  9A 02 B2 7C 02                         STRCMP_NE_JMP                 start=v[0x002], values=[2], target=0x027C
0279  09 06 3C                               VIDEOREF                      ref=0x3C06 (MC[6]=ga_3-6.vdx)
027C  9A 05 B0 89 02                         STRCMP_NE_JMP                 start=v[0x005], values=[0], target=0x0289
0281  9A 02 B3 89 02                         STRCMP_NE_JMP                 start=v[0x002], values=[3], target=0x0289
0286  09 14 3C                               VIDEOREF                      ref=0x3C14 (MC[20]=gu_3-6.vdx)
0289  9A 01 B0 92 02                         STRCMP_NE_JMP                 start=v[0x001], values=[0], target=0x0292
028E  9D 02 01 00                            SWAP                          dst=v[0x002], src=0x0001
0292  9A 05 B0 9B 02                         STRCMP_NE_JMP                 start=v[0x005], values=[0], target=0x029B
0297  9D 02 05 00                            SWAP                          dst=v[0x002], src=0x0005
029B  15 44 00                               JMP                           target=0x0044
029E  07                                     VIDEOFLAG7_ON
029F  06                                     VIDEOFLAG6_ON
02A0  9A 00 B0 AD 02                         STRCMP_NE_JMP                 start=v[0x000], values=[0], target=0x02AD
02A5  9A 03 B1 AD 02                         STRCMP_NE_JMP                 start=v[0x003], values=[1], target=0x02AD
02AA  09 23 3C                               VIDEOREF                      ref=0x3C23 (MC[35]=gx_4-1.vdx)
02AD  9A 00 B0 BA 02                         STRCMP_NE_JMP                 start=v[0x000], values=[0], target=0x02BA
02B2  9A 03 B2 BA 02                         STRCMP_NE_JMP                 start=v[0x003], values=[2], target=0x02BA
02B7  09 07 3C                               VIDEOREF                      ref=0x3C07 (MC[7]=ga_4-1.vdx)
02BA  9A 00 B0 C7 02                         STRCMP_NE_JMP                 start=v[0x000], values=[0], target=0x02C7
02BF  9A 03 B3 C7 02                         STRCMP_NE_JMP                 start=v[0x003], values=[3], target=0x02C7
02C4  09 15 3C                               VIDEOREF                      ref=0x3C15 (MC[21]=gu_4-1.vdx)
02C7  9A 04 B0 D4 02                         STRCMP_NE_JMP                 start=v[0x004], values=[0], target=0x02D4
02CC  9A 03 B1 D4 02                         STRCMP_NE_JMP                 start=v[0x003], values=[1], target=0x02D4
02D1  09 24 3C                               VIDEOREF                      ref=0x3C24 (MC[36]=gx_4-5.vdx)
02D4  9A 04 B0 E1 02                         STRCMP_NE_JMP                 start=v[0x004], values=[0], target=0x02E1
02D9  9A 03 B2 E1 02                         STRCMP_NE_JMP                 start=v[0x003], values=[2], target=0x02E1
02DE  09 08 3C                               VIDEOREF                      ref=0x3C08 (MC[8]=ga_4-5.vdx)
02E1  9A 04 B0 EE 02                         STRCMP_NE_JMP                 start=v[0x004], values=[0], target=0x02EE
02E6  9A 03 B3 EE 02                         STRCMP_NE_JMP                 start=v[0x003], values=[3], target=0x02EE
02EB  09 16 3C                               VIDEOREF                      ref=0x3C16 (MC[22]=gu_4-5.vdx)
02EE  9A 00 B0 F7 02                         STRCMP_NE_JMP                 start=v[0x000], values=[0], target=0x02F7
02F3  9D 03 00 00                            SWAP                          dst=v[0x003], src=0x0000
02F7  9A 04 B0 00 03                         STRCMP_NE_JMP                 start=v[0x004], values=[0], target=0x0300
02FC  9D 03 04 00                            SWAP                          dst=v[0x003], src=0x0004
0300  15 44 00                               JMP                           target=0x0044
0303  07                                     VIDEOFLAG7_ON
0304  06                                     VIDEOFLAG6_ON
0305  9A 01 B0 12 03                         STRCMP_NE_JMP                 start=v[0x001], values=[0], target=0x0312
030A  9A 04 B1 12 03                         STRCMP_NE_JMP                 start=v[0x004], values=[1], target=0x0312
030F  09 25 3C                               VIDEOREF                      ref=0x3C25 (MC[37]=gx_5-2.vdx)
0312  9A 01 B0 1F 03                         STRCMP_NE_JMP                 start=v[0x001], values=[0], target=0x031F
0317  9A 04 B2 1F 03                         STRCMP_NE_JMP                 start=v[0x004], values=[2], target=0x031F
031C  09 09 3C                               VIDEOREF                      ref=0x3C09 (MC[9]=ga_5-2.vdx)
031F  9A 01 B0 2C 03                         STRCMP_NE_JMP                 start=v[0x001], values=[0], target=0x032C
0324  9A 04 B3 2C 03                         STRCMP_NE_JMP                 start=v[0x004], values=[3], target=0x032C
0329  09 17 3C                               VIDEOREF                      ref=0x3C17 (MC[23]=gu_5-2.vdx)
032C  9A 03 B0 39 03                         STRCMP_NE_JMP                 start=v[0x003], values=[0], target=0x0339
0331  9A 04 B1 39 03                         STRCMP_NE_JMP                 start=v[0x004], values=[1], target=0x0339
0336  09 26 3C                               VIDEOREF                      ref=0x3C26 (MC[38]=gx_5-4.vdx)
0339  9A 03 B0 46 03                         STRCMP_NE_JMP                 start=v[0x003], values=[0], target=0x0346
033E  9A 04 B2 46 03                         STRCMP_NE_JMP                 start=v[0x004], values=[2], target=0x0346
0343  09 0A 3C                               VIDEOREF                      ref=0x3C0A (MC[10]=ga_5-4.vdx)
0346  9A 03 B0 53 03                         STRCMP_NE_JMP                 start=v[0x003], values=[0], target=0x0353
034B  9A 04 B3 53 03                         STRCMP_NE_JMP                 start=v[0x004], values=[3], target=0x0353
0350  09 18 3C                               VIDEOREF                      ref=0x3C18 (MC[24]=gu_5-4.vdx)
0353  9A 05 B0 60 03                         STRCMP_NE_JMP                 start=v[0x005], values=[0], target=0x0360
0358  9A 02 B2 60 03                         STRCMP_NE_JMP                 start=v[0x002], values=[2], target=0x0360
035D  09 54 3C                               VIDEOREF                      ref=0x3C54 (MC[84]=stkb.vdx)
0360  07                                     VIDEOFLAG7_ON
0361  06                                     VIDEOFLAG6_ON
0362  9A 05 B0 6F 03                         STRCMP_NE_JMP                 start=v[0x005], values=[0], target=0x036F
0367  9A 04 B1 6F 03                         STRCMP_NE_JMP                 start=v[0x004], values=[1], target=0x036F
036C  09 27 3C                               VIDEOREF                      ref=0x3C27 (MC[39]=gx_5-6.vdx)
036F  9A 05 B0 7C 03                         STRCMP_NE_JMP                 start=v[0x005], values=[0], target=0x037C
0374  9A 04 B2 7C 03                         STRCMP_NE_JMP                 start=v[0x004], values=[2], target=0x037C
0379  09 0B 3C                               VIDEOREF                      ref=0x3C0B (MC[11]=ga_5-6.vdx)
037C  9A 05 B0 89 03                         STRCMP_NE_JMP                 start=v[0x005], values=[0], target=0x0389
0381  9A 04 B3 89 03                         STRCMP_NE_JMP                 start=v[0x004], values=[3], target=0x0389
0386  09 19 3C                               VIDEOREF                      ref=0x3C19 (MC[25]=gu_5-6.vdx)
0389  9A 01 B0 92 03                         STRCMP_NE_JMP                 start=v[0x001], values=[0], target=0x0392
038E  9D 04 01 00                            SWAP                          dst=v[0x004], src=0x0001
0392  9A 03 B0 9B 03                         STRCMP_NE_JMP                 start=v[0x003], values=[0], target=0x039B
0397  9D 04 03 00                            SWAP                          dst=v[0x004], src=0x0003
039B  9A 05 B0 A4 03                         STRCMP_NE_JMP                 start=v[0x005], values=[0], target=0x03A4
03A0  9D 04 05 00                            SWAP                          dst=v[0x004], src=0x0005
03A4  15 44 00                               JMP                           target=0x0044
03A7  07                                     VIDEOFLAG7_ON
03A8  06                                     VIDEOFLAG6_ON
03A9  9A 02 B0 B6 03                         STRCMP_NE_JMP                 start=v[0x002], values=[0], target=0x03B6
03AE  9A 05 B1 B6 03                         STRCMP_NE_JMP                 start=v[0x005], values=[1], target=0x03B6
03B3  09 28 3C                               VIDEOREF                      ref=0x3C28 (MC[40]=gx_6-3.vdx)
03B6  9A 02 B0 C3 03                         STRCMP_NE_JMP                 start=v[0x002], values=[0], target=0x03C3
03BB  9A 05 B2 C3 03                         STRCMP_NE_JMP                 start=v[0x005], values=[2], target=0x03C3
03C0  09 0C 3C                               VIDEOREF                      ref=0x3C0C (MC[12]=ga_6-3.vdx)
03C3  9A 02 B0 D0 03                         STRCMP_NE_JMP                 start=v[0x002], values=[0], target=0x03D0
03C8  9A 05 B3 D0 03                         STRCMP_NE_JMP                 start=v[0x005], values=[3], target=0x03D0
03CD  09 1A 3C                               VIDEOREF                      ref=0x3C1A (MC[26]=gu_6-3.vdx)
03D0  9A 04 B0 DD 03                         STRCMP_NE_JMP                 start=v[0x004], values=[0], target=0x03DD
03D5  9A 05 B1 DD 03                         STRCMP_NE_JMP                 start=v[0x005], values=[1], target=0x03DD
03DA  09 29 3C                               VIDEOREF                      ref=0x3C29 (MC[41]=gx_6-5.vdx)
03DD  9A 04 B0 EA 03                         STRCMP_NE_JMP                 start=v[0x004], values=[0], target=0x03EA
03E2  9A 05 B2 EA 03                         STRCMP_NE_JMP                 start=v[0x005], values=[2], target=0x03EA
03E7  09 0D 3C                               VIDEOREF                      ref=0x3C0D (MC[13]=ga_6-5.vdx)
03EA  9A 04 B0 F7 03                         STRCMP_NE_JMP                 start=v[0x004], values=[0], target=0x03F7
03EF  9A 05 B3 F7 03                         STRCMP_NE_JMP                 start=v[0x005], values=[3], target=0x03F7
03F4  09 1B 3C                               VIDEOREF                      ref=0x3C1B (MC[27]=gu_6-5.vdx)
03F7  9A 02 B0 00 04                         STRCMP_NE_JMP                 start=v[0x002], values=[0], target=0x0400
03FC  9D 05 02 00                            SWAP                          dst=v[0x005], src=0x0002
0400  9A 04 B0 09 04                         STRCMP_NE_JMP                 start=v[0x004], values=[0], target=0x0409
0405  9D 05 04 00                            SWAP                          dst=v[0x005], src=0x0004
0409  07                                     VIDEOFLAG7_ON
040A  06                                     VIDEOFLAG6_ON
040B  9A 02 B2 18 04                         STRCMP_NE_JMP                 start=v[0x002], values=[2], target=0x0418
0410  A3 05 B1 18 04                         STRCMP_EQ_JMP                 start=v[0x005], values=[1], target=0x0418
0415  09 55 3C                               VIDEOREF                      ref=0x3C55 (MC[85]=stkf.vdx)
0418  15 44 00                               JMP                           target=0x0044
041B  07                                     VIDEOFLAG7_ON
041C  46                                     RESOURCE_CONTEXT_SAVE
041D  09 8B 50                               VIDEOREF                      ref=0x508B (GAMWAV[139]=gen_e_5.vdx)
0420  47                                     RESOURCE_CONTEXT_RESTORE
0421  1C 34 3C                               VIDEO_TRANSITION_REF          ref=0x3C34 (MC[52]=mg_in_b.vdx)
0424  18 2C 04                               CALL                          target=0x042C
0427  15 39 00                               JMP                           target=0x0039
042A  43 01                                  RETURNSCRIPT                  value=0x01
042C  0A                                     VIDEOFLAG5_ON
042D  07                                     VIDEOFLAG7_ON
042E  46                                     RESOURCE_CONTEXT_SAVE
042F  09 01 24                               VIDEOREF                      ref=0x2401 (INTRO[1]=fade.vdx)
0432  37 00 00 50 00 7F 02 8F 01             COPY_RECT_TO_BG               left=0x0000, top=0x0050, right=0x027F, bottom=0x018F
043B  47                                     RESOURCE_CONTEXT_RESTORE
043C  17 00                                  RET                           value=0x00
