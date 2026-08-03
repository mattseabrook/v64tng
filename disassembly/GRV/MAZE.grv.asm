; T7G/MAZE.GRV
; size=3652 sha256=c6de4be84360b4d14e39a4babe17c49713224e36a76248533eb689dbd3f721f6
; instructions=1432 input_loops=128

0000  01                                     RESERVED_01
0001  2C 2F 0E 08                            SET_HOTSPOT_TOP               target=0x0E2F, cursor=0x08
0005  96 8C 30 B5                            LOADSTRING                    dst=v[0x08C], values=[0, 5]
0009  02 0B 4C                               PLAYSONG                      ref=0x4C0B (XMI[11]=gu15.xmi)
000C  08 0B 4C                               SETBACKGROUNDSONG             ref=0x4C0B (XMI[11]=gu15.xmi)
000F  09 35 3C                               VIDEOREF                      ref=0x3C35 (MC[53]=mg_thru.vdx)
0012  07                                     VIDEOFLAG7_ON
0013  09 37 50                               VIDEOREF                      ref=0x5037 (GAMWAV[55]=8_s_11.vdx)
0016  15 3B 00                               JMP                           target=0x003B
0019  02 0F 4C                               PLAYSONG                      ref=0x4C0F (XMI[15]=gu18.xmi)
001C  09 2C 3C                               VIDEOREF                      ref=0x3C2C (MC[44]=md_in.vdx)
001F  07                                     VIDEOFLAG7_ON
0020  31 00 00 F4 01                         MIDI_CONTROL                  value=0x0000, time=0x01F4
0025  09 35 50                               VIDEOREF                      ref=0x5035 (GAMWAV[53]=8_s_9.vdx)
0028  0B                                     INPUTLOOPSTART
0029  0E 2D 00                               HOTSPOT_LEFT                  target=0x002D
002C  13                                     INPUTLOOPEND
002D  02 0B 4C                               PLAYSONG                      ref=0x4C0B (XMI[11]=gu15.xmi)
0030  09 2D 3C                               VIDEOREF                      ref=0x3C2D (MC[45]=md_out.vdx)
0033  17 00                                  RET                           value=0x00
0035  08 35 4C                               SETBACKGROUNDSONG             ref=0x4C35 (XMI[53]=gu56.xmi)
0038  04                                     PALFADEOUT
0039  43 00                                  RETURNSCRIPT                  value=0x00
003B  09 57 3C                               VIDEOREF                      ref=0x3C57 (MC[87]=m_ghostb.vdx)
003E  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0041  09 4A 3C                               VIDEOREF                      ref=0x3C4A (MC[74]=mt_l_st.vdx)
0044  0B                                     INPUTLOOPSTART
0045  11 56 00                               HOTSPOT_CENTER_2              target=0x0056
0048  0E 4C 00                               HOTSPOT_LEFT                  target=0x004C
004B  13                                     INPUTLOOPEND
004C  09 4B 3C                               VIDEOREF                      ref=0x3C4B (MC[75]=mt_l_tu.vdx)
004F  07                                     VIDEOFLAG7_ON
0050  09 34 50                               VIDEOREF                      ref=0x5034 (GAMWAV[52]=8_s_8.vdx)
0053  15 5A 0C                               JMP                           target=0x0C5A
0056  09 49 3C                               VIDEOREF                      ref=0x3C49 (MC[73]=mt_l_go.vdx)
0059  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
005C  09 4E 3C                               VIDEOREF                      ref=0x3C4E (MC[78]=mt_r_st.vdx)
005F  0B                                     INPUTLOOPSTART
0060  0F 6D 00                               HOTSPOT_RIGHT                 target=0x006D
0063  11 67 00                               HOTSPOT_CENTER_2              target=0x0067
0066  13                                     INPUTLOOPEND
0067  09 4D 3C                               VIDEOREF                      ref=0x3C4D (MC[77]=mt_r_go.vdx)
006A  15 19 01                               JMP                           target=0x0119
006D  09 4F 3C                               VIDEOREF                      ref=0x3C4F (MC[79]=mt_r_tu.vdx)
0070  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0073  09 38 3C                               VIDEOREF                      ref=0x3C38 (MC[56]=mh_l_st.vdx)
0076  0B                                     INPUTLOOPSTART
0077  0E 7E 00                               HOTSPOT_LEFT                  target=0x007E
007A  11 88 00                               HOTSPOT_CENTER_2              target=0x0088
007D  13                                     INPUTLOOPEND
007E  09 39 3C                               VIDEOREF                      ref=0x3C39 (MC[57]=mh_l_tu.vdx)
0081  07                                     VIDEOFLAG7_ON
0082  09 38 50                               VIDEOREF                      ref=0x5038 (GAMWAV[56]=8_s_12.vdx)
0085  15 AE 00                               JMP                           target=0x00AE
0088  09 37 3C                               VIDEOREF                      ref=0x3C37 (MC[55]=mh_l_go.vdx)
008B  09 52 3C                               VIDEOREF                      ref=0x3C52 (MC[82]=mu_rite.vdx)
008E  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0091  18 19 00                               CALL                          target=0x0019
0094  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0097  09 51 3C                               VIDEOREF                      ref=0x3C51 (MC[81]=mu_left.vdx)
009A  09 3C 3C                               VIDEOREF                      ref=0x3C3C (MC[60]=mh_r_st.vdx)
009D  0B                                     INPUTLOOPSTART
009E  0F AB 00                               HOTSPOT_RIGHT                 target=0x00AB
00A1  11 A5 00                               HOTSPOT_CENTER_2              target=0x00A5
00A4  13                                     INPUTLOOPEND
00A5  09 3B 3C                               VIDEOREF                      ref=0x3C3B (MC[59]=mh_r_go.vdx)
00A8  15 02 01                               JMP                           target=0x0102
00AB  09 3D 3C                               VIDEOREF                      ref=0x3C3D (MC[61]=mh_r_tu.vdx)
00AE  0B                                     INPUTLOOPSTART
00AF  0F BC 00                               HOTSPOT_RIGHT                 target=0x00BC
00B2  0E B6 00                               HOTSPOT_LEFT                  target=0x00B6
00B5  13                                     INPUTLOOPEND
00B6  09 36 3C                               VIDEOREF                      ref=0x3C36 (MC[54]=mh_left.vdx)
00B9  15 DA 00                               JMP                           target=0x00DA
00BC  09 3A 3C                               VIDEOREF                      ref=0x3C3A (MC[58]=mh_rite.vdx)
00BF  18 19 00                               CALL                          target=0x0019
00C2  09 38 3C                               VIDEOREF                      ref=0x3C38 (MC[56]=mh_l_st.vdx)
00C5  0B                                     INPUTLOOPSTART
00C6  0E CD 00                               HOTSPOT_LEFT                  target=0x00CD
00C9  11 D7 00                               HOTSPOT_CENTER_2              target=0x00D7
00CC  13                                     INPUTLOOPEND
00CD  07                                     VIDEOFLAG7_ON
00CE  09 3A 50                               VIDEOREF                      ref=0x503A (GAMWAV[58]=8_s_14.vdx)
00D1  09 39 3C                               VIDEOREF                      ref=0x3C39 (MC[57]=mh_l_tu.vdx)
00D4  15 F1 00                               JMP                           target=0x00F1
00D7  09 37 3C                               VIDEOREF                      ref=0x3C37 (MC[55]=mh_l_go.vdx)
00DA  18 19 00                               CALL                          target=0x0019
00DD  09 3C 3C                               VIDEOREF                      ref=0x3C3C (MC[60]=mh_r_st.vdx)
00E0  0B                                     INPUTLOOPSTART
00E1  0F EE 00                               HOTSPOT_RIGHT                 target=0x00EE
00E4  11 E8 00                               HOTSPOT_CENTER_2              target=0x00E8
00E7  13                                     INPUTLOOPEND
00E8  09 3B 3C                               VIDEOREF                      ref=0x3C3B (MC[59]=mh_r_go.vdx)
00EB  15 BF 00                               JMP                           target=0x00BF
00EE  09 3D 3C                               VIDEOREF                      ref=0x3C3D (MC[61]=mh_r_tu.vdx)
00F1  0B                                     INPUTLOOPSTART
00F2  0E F9 00                               HOTSPOT_LEFT                  target=0x00F9
00F5  0F FF 00                               HOTSPOT_RIGHT                 target=0x00FF
00F8  13                                     INPUTLOOPEND
00F9  09 36 3C                               VIDEOREF                      ref=0x3C36 (MC[54]=mh_left.vdx)
00FC  15 8B 00                               JMP                           target=0x008B
00FF  09 3A 3C                               VIDEOREF                      ref=0x3C3A (MC[58]=mh_rite.vdx)
0102  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0105  09 50 3C                               VIDEOREF                      ref=0x3C50 (MC[80]=mt_stop.vdx)
0108  0B                                     INPUTLOOPSTART
0109  0E 10 01                               HOTSPOT_LEFT                  target=0x0110
010C  0F 16 01                               HOTSPOT_RIGHT                 target=0x0116
010F  13                                     INPUTLOOPEND
0110  09 48 3C                               VIDEOREF                      ref=0x3C48 (MC[72]=mt_left.vdx)
0113  15 43 0C                               JMP                           target=0x0C43
0116  09 4C 3C                               VIDEOREF                      ref=0x3C4C (MC[76]=mt_rite.vdx)
0119  09 4A 3C                               VIDEOREF                      ref=0x3C4A (MC[74]=mt_l_st.vdx)
011C  0B                                     INPUTLOOPSTART
011D  11 2E 01                               HOTSPOT_CENTER_2              target=0x012E
0120  0E 24 01                               HOTSPOT_LEFT                  target=0x0124
0123  13                                     INPUTLOOPEND
0124  07                                     VIDEOFLAG7_ON
0125  09 36 50                               VIDEOREF                      ref=0x5036 (GAMWAV[54]=8_s_10.vdx)
0128  09 4B 3C                               VIDEOREF                      ref=0x3C4B (MC[75]=mt_l_tu.vdx)
012B  15 F3 0B                               JMP                           target=0x0BF3
012E  09 49 3C                               VIDEOREF                      ref=0x3C49 (MC[73]=mt_l_go.vdx)
0131  09 4E 3C                               VIDEOREF                      ref=0x3C4E (MC[78]=mt_r_st.vdx)
0134  0B                                     INPUTLOOPSTART
0135  0F 42 01                               HOTSPOT_RIGHT                 target=0x0142
0138  11 3C 01                               HOTSPOT_CENTER_2              target=0x013C
013B  13                                     INPUTLOOPEND
013C  09 4D 3C                               VIDEOREF                      ref=0x3C4D (MC[77]=mt_r_go.vdx)
013F  15 EE 01                               JMP                           target=0x01EE
0142  09 4F 3C                               VIDEOREF                      ref=0x3C4F (MC[79]=mt_r_tu.vdx)
0145  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0148  09 3C 3C                               VIDEOREF                      ref=0x3C3C (MC[60]=mh_r_st.vdx)
014B  0B                                     INPUTLOOPSTART
014C  0F 59 01                               HOTSPOT_RIGHT                 target=0x0159
014F  11 53 01                               HOTSPOT_CENTER_2              target=0x0153
0152  13                                     INPUTLOOPEND
0153  09 3B 3C                               VIDEOREF                      ref=0x3C3B (MC[59]=mh_r_go.vdx)
0156  15 B0 01                               JMP                           target=0x01B0
0159  09 3D 3C                               VIDEOREF                      ref=0x3C3D (MC[61]=mh_r_tu.vdx)
015C  0B                                     INPUTLOOPSTART
015D  0F 6A 01                               HOTSPOT_RIGHT                 target=0x016A
0160  0E 64 01                               HOTSPOT_LEFT                  target=0x0164
0163  13                                     INPUTLOOPEND
0164  09 36 3C                               VIDEOREF                      ref=0x3C36 (MC[54]=mh_left.vdx)
0167  15 88 01                               JMP                           target=0x0188
016A  09 3A 3C                               VIDEOREF                      ref=0x3C3A (MC[58]=mh_rite.vdx)
016D  18 19 00                               CALL                          target=0x0019
0170  09 38 3C                               VIDEOREF                      ref=0x3C38 (MC[56]=mh_l_st.vdx)
0173  0B                                     INPUTLOOPSTART
0174  0E 7B 01                               HOTSPOT_LEFT                  target=0x017B
0177  11 85 01                               HOTSPOT_CENTER_2              target=0x0185
017A  13                                     INPUTLOOPEND
017B  07                                     VIDEOFLAG7_ON
017C  09 3A 50                               VIDEOREF                      ref=0x503A (GAMWAV[58]=8_s_14.vdx)
017F  09 39 3C                               VIDEOREF                      ref=0x3C39 (MC[57]=mh_l_tu.vdx)
0182  15 9F 01                               JMP                           target=0x019F
0185  09 37 3C                               VIDEOREF                      ref=0x3C37 (MC[55]=mh_l_go.vdx)
0188  18 19 00                               CALL                          target=0x0019
018B  09 3C 3C                               VIDEOREF                      ref=0x3C3C (MC[60]=mh_r_st.vdx)
018E  0B                                     INPUTLOOPSTART
018F  11 96 01                               HOTSPOT_CENTER_2              target=0x0196
0192  0F 9C 01                               HOTSPOT_RIGHT                 target=0x019C
0195  13                                     INPUTLOOPEND
0196  09 3B 3C                               VIDEOREF                      ref=0x3C3B (MC[59]=mh_r_go.vdx)
0199  15 6D 01                               JMP                           target=0x016D
019C  09 3D 3C                               VIDEOREF                      ref=0x3C3D (MC[61]=mh_r_tu.vdx)
019F  0B                                     INPUTLOOPSTART
01A0  0F AD 01                               HOTSPOT_RIGHT                 target=0x01AD
01A3  0E A7 01                               HOTSPOT_LEFT                  target=0x01A7
01A6  13                                     INPUTLOOPEND
01A7  09 36 3C                               VIDEOREF                      ref=0x3C36 (MC[54]=mh_left.vdx)
01AA  15 D7 01                               JMP                           target=0x01D7
01AD  09 3A 3C                               VIDEOREF                      ref=0x3C3A (MC[58]=mh_rite.vdx)
01B0  09 51 3C                               VIDEOREF                      ref=0x3C51 (MC[81]=mu_left.vdx)
01B3  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
01B6  18 19 00                               CALL                          target=0x0019
01B9  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
01BC  09 52 3C                               VIDEOREF                      ref=0x3C52 (MC[82]=mu_rite.vdx)
01BF  09 38 3C                               VIDEOREF                      ref=0x3C38 (MC[56]=mh_l_st.vdx)
01C2  0B                                     INPUTLOOPSTART
01C3  0E CA 01                               HOTSPOT_LEFT                  target=0x01CA
01C6  11 D0 01                               HOTSPOT_CENTER_2              target=0x01D0
01C9  13                                     INPUTLOOPEND
01CA  09 39 3C                               VIDEOREF                      ref=0x3C39 (MC[57]=mh_l_tu.vdx)
01CD  15 5C 01                               JMP                           target=0x015C
01D0  07                                     VIDEOFLAG7_ON
01D1  09 34 50                               VIDEOREF                      ref=0x5034 (GAMWAV[52]=8_s_8.vdx)
01D4  09 37 3C                               VIDEOREF                      ref=0x3C37 (MC[55]=mh_l_go.vdx)
01D7  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
01DA  09 50 3C                               VIDEOREF                      ref=0x3C50 (MC[80]=mt_stop.vdx)
01DD  0B                                     INPUTLOOPSTART
01DE  0E E5 01                               HOTSPOT_LEFT                  target=0x01E5
01E1  0F EB 01                               HOTSPOT_RIGHT                 target=0x01EB
01E4  13                                     INPUTLOOPEND
01E5  09 48 3C                               VIDEOREF                      ref=0x3C48 (MC[72]=mt_left.vdx)
01E8  15 DF 0B                               JMP                           target=0x0BDF
01EB  09 4C 3C                               VIDEOREF                      ref=0x3C4C (MC[76]=mt_rite.vdx)
01EE  1E 02                                  RESERVED_1E                   reserved=0x02
01F0  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
01F3  09 4A 3C                               VIDEOREF                      ref=0x3C4A (MC[74]=mt_l_st.vdx)
01F6  0B                                     INPUTLOOPSTART
01F7  11 04 02                               HOTSPOT_CENTER_2              target=0x0204
01FA  0E FE 01                               HOTSPOT_LEFT                  target=0x01FE
01FD  13                                     INPUTLOOPEND
01FE  09 4B 3C                               VIDEOREF                      ref=0x3C4B (MC[75]=mt_l_tu.vdx)
0201  15 75 0B                               JMP                           target=0x0B75
0204  09 49 3C                               VIDEOREF                      ref=0x3C49 (MC[73]=mt_l_go.vdx)
0207  1E 04                                  RESERVED_1E                   reserved=0x04
0209  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
020C  09 4A 3C                               VIDEOREF                      ref=0x3C4A (MC[74]=mt_l_st.vdx)
020F  0B                                     INPUTLOOPSTART
0210  11 1D 02                               HOTSPOT_CENTER_2              target=0x021D
0213  0E 17 02                               HOTSPOT_LEFT                  target=0x0217
0216  13                                     INPUTLOOPEND
0217  09 4B 3C                               VIDEOREF                      ref=0x3C4B (MC[75]=mt_l_tu.vdx)
021A  15 81 0A                               JMP                           target=0x0A81
021D  09 49 3C                               VIDEOREF                      ref=0x3C49 (MC[73]=mt_l_go.vdx)
0220  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0223  09 4E 3C                               VIDEOREF                      ref=0x3C4E (MC[78]=mt_r_st.vdx)
0226  0B                                     INPUTLOOPSTART
0227  0F 34 02                               HOTSPOT_RIGHT                 target=0x0234
022A  11 2E 02                               HOTSPOT_CENTER_2              target=0x022E
022D  13                                     INPUTLOOPEND
022E  09 4D 3C                               VIDEOREF                      ref=0x3C4D (MC[77]=mt_r_go.vdx)
0231  15 78 02                               JMP                           target=0x0278
0234  09 4F 3C                               VIDEOREF                      ref=0x3C4F (MC[79]=mt_r_tu.vdx)
0237  1E 04                                  RESERVED_1E                   reserved=0x04
0239  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
023C  09 52 3C                               VIDEOREF                      ref=0x3C52 (MC[82]=mu_rite.vdx)
023F  1E 03                                  RESERVED_1E                   reserved=0x03
0241  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0244  09 51 3C                               VIDEOREF                      ref=0x3C51 (MC[81]=mu_left.vdx)
0247  1E 03                                  RESERVED_1E                   reserved=0x03
0249  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
024C  18 19 00                               CALL                          target=0x0019
024F  1E 03                                  RESERVED_1E                   reserved=0x03
0251  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0254  09 52 3C                               VIDEOREF                      ref=0x3C52 (MC[82]=mu_rite.vdx)
0257  1E 03                                  RESERVED_1E                   reserved=0x03
0259  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
025C  09 51 3C                               VIDEOREF                      ref=0x3C51 (MC[81]=mu_left.vdx)
025F  1E 04                                  RESERVED_1E                   reserved=0x04
0261  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0264  09 50 3C                               VIDEOREF                      ref=0x3C50 (MC[80]=mt_stop.vdx)
0267  0B                                     INPUTLOOPSTART
0268  0F 75 02                               HOTSPOT_RIGHT                 target=0x0275
026B  0E 6F 02                               HOTSPOT_LEFT                  target=0x026F
026E  13                                     INPUTLOOPEND
026F  09 48 3C                               VIDEOREF                      ref=0x3C48 (MC[72]=mt_left.vdx)
0272  15 6A 0A                               JMP                           target=0x0A6A
0275  09 4C 3C                               VIDEOREF                      ref=0x3C4C (MC[76]=mt_rite.vdx)
0278  1E 02                                  RESERVED_1E                   reserved=0x02
027A  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
027D  09 4A 3C                               VIDEOREF                      ref=0x3C4A (MC[74]=mt_l_st.vdx)
0280  0B                                     INPUTLOOPSTART
0281  11 8E 02                               HOTSPOT_CENTER_2              target=0x028E
0284  0E 88 02                               HOTSPOT_LEFT                  target=0x0288
0287  13                                     INPUTLOOPEND
0288  09 4B 3C                               VIDEOREF                      ref=0x3C4B (MC[75]=mt_l_tu.vdx)
028B  15 2F 09                               JMP                           target=0x092F
028E  09 49 3C                               VIDEOREF                      ref=0x3C49 (MC[73]=mt_l_go.vdx)
0291  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0294  09 4E 3C                               VIDEOREF                      ref=0x3C4E (MC[78]=mt_r_st.vdx)
0297  0B                                     INPUTLOOPSTART
0298  0F A5 02                               HOTSPOT_RIGHT                 target=0x02A5
029B  11 9F 02                               HOTSPOT_CENTER_2              target=0x029F
029E  13                                     INPUTLOOPEND
029F  09 4D 3C                               VIDEOREF                      ref=0x3C4D (MC[77]=mt_r_go.vdx)
02A2  15 6B 03                               JMP                           target=0x036B
02A5  09 4F 3C                               VIDEOREF                      ref=0x3C4F (MC[79]=mt_r_tu.vdx)
02A8  1E 02                                  RESERVED_1E                   reserved=0x02
02AA  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
02AD  09 3C 3C                               VIDEOREF                      ref=0x3C3C (MC[60]=mh_r_st.vdx)
02B0  0B                                     INPUTLOOPSTART
02B1  11 B8 02                               HOTSPOT_CENTER_2              target=0x02B8
02B4  0F BE 02                               HOTSPOT_RIGHT                 target=0x02BE
02B7  13                                     INPUTLOOPEND
02B8  09 3B 3C                               VIDEOREF                      ref=0x3C3B (MC[59]=mh_r_go.vdx)
02BB  15 21 03                               JMP                           target=0x0321
02BE  09 3D 3C                               VIDEOREF                      ref=0x3C3D (MC[61]=mh_r_tu.vdx)
02C1  0B                                     INPUTLOOPSTART
02C2  0E C9 02                               HOTSPOT_LEFT                  target=0x02C9
02C5  0F CF 02                               HOTSPOT_RIGHT                 target=0x02CF
02C8  13                                     INPUTLOOPEND
02C9  09 36 3C                               VIDEOREF                      ref=0x3C36 (MC[54]=mh_left.vdx)
02CC  15 EF 02                               JMP                           target=0x02EF
02CF  09 3A 3C                               VIDEOREF                      ref=0x3C3A (MC[58]=mh_rite.vdx)
02D2  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
02D5  18 19 00                               CALL                          target=0x0019
02D8  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
02DB  09 38 3C                               VIDEOREF                      ref=0x3C38 (MC[56]=mh_l_st.vdx)
02DE  0B                                     INPUTLOOPSTART
02DF  0E E6 02                               HOTSPOT_LEFT                  target=0x02E6
02E2  11 EC 02                               HOTSPOT_CENTER_2              target=0x02EC
02E5  13                                     INPUTLOOPEND
02E6  09 39 3C                               VIDEOREF                      ref=0x3C39 (MC[57]=mh_l_tu.vdx)
02E9  15 10 03                               JMP                           target=0x0310
02EC  09 37 3C                               VIDEOREF                      ref=0x3C37 (MC[55]=mh_l_go.vdx)
02EF  1E 02                                  RESERVED_1E                   reserved=0x02
02F1  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
02F4  18 19 00                               CALL                          target=0x0019
02F7  1E 02                                  RESERVED_1E                   reserved=0x02
02F9  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
02FC  09 3C 3C                               VIDEOREF                      ref=0x3C3C (MC[60]=mh_r_st.vdx)
02FF  0B                                     INPUTLOOPSTART
0300  0F 0D 03                               HOTSPOT_RIGHT                 target=0x030D
0303  11 07 03                               HOTSPOT_CENTER_2              target=0x0307
0306  13                                     INPUTLOOPEND
0307  09 3B 3C                               VIDEOREF                      ref=0x3C3B (MC[59]=mh_r_go.vdx)
030A  15 D2 02                               JMP                           target=0x02D2
030D  09 3D 3C                               VIDEOREF                      ref=0x3C3D (MC[61]=mh_r_tu.vdx)
0310  0B                                     INPUTLOOPSTART
0311  0F 1E 03                               HOTSPOT_RIGHT                 target=0x031E
0314  0E 18 03                               HOTSPOT_LEFT                  target=0x0318
0317  13                                     INPUTLOOPEND
0318  09 36 3C                               VIDEOREF                      ref=0x3C36 (MC[54]=mh_left.vdx)
031B  15 52 03                               JMP                           target=0x0352
031E  09 3A 3C                               VIDEOREF                      ref=0x3C3A (MC[58]=mh_rite.vdx)
0321  1E 02                                  RESERVED_1E                   reserved=0x02
0323  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0326  09 51 3C                               VIDEOREF                      ref=0x3C51 (MC[81]=mu_left.vdx)
0329  1E 04                                  RESERVED_1E                   reserved=0x04
032B  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
032E  18 19 00                               CALL                          target=0x0019
0331  1E 04                                  RESERVED_1E                   reserved=0x04
0333  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0336  09 52 3C                               VIDEOREF                      ref=0x3C52 (MC[82]=mu_rite.vdx)
0339  1E 02                                  RESERVED_1E                   reserved=0x02
033B  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
033E  09 38 3C                               VIDEOREF                      ref=0x3C38 (MC[56]=mh_l_st.vdx)
0341  0B                                     INPUTLOOPSTART
0342  0E 49 03                               HOTSPOT_LEFT                  target=0x0349
0345  11 4F 03                               HOTSPOT_CENTER_2              target=0x034F
0348  13                                     INPUTLOOPEND
0349  09 39 3C                               VIDEOREF                      ref=0x3C39 (MC[57]=mh_l_tu.vdx)
034C  15 C1 02                               JMP                           target=0x02C1
034F  09 37 3C                               VIDEOREF                      ref=0x3C37 (MC[55]=mh_l_go.vdx)
0352  1E 02                                  RESERVED_1E                   reserved=0x02
0354  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0357  09 50 3C                               VIDEOREF                      ref=0x3C50 (MC[80]=mt_stop.vdx)
035A  0B                                     INPUTLOOPSTART
035B  0F 68 03                               HOTSPOT_RIGHT                 target=0x0368
035E  0E 62 03                               HOTSPOT_LEFT                  target=0x0362
0361  13                                     INPUTLOOPEND
0362  09 48 3C                               VIDEOREF                      ref=0x3C48 (MC[72]=mt_left.vdx)
0365  15 18 09                               JMP                           target=0x0918
0368  09 4C 3C                               VIDEOREF                      ref=0x3C4C (MC[76]=mt_rite.vdx)
036B  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
036E  09 4E 3C                               VIDEOREF                      ref=0x3C4E (MC[78]=mt_r_st.vdx)
0371  0B                                     INPUTLOOPSTART
0372  0F 7F 03                               HOTSPOT_RIGHT                 target=0x037F
0375  11 79 03                               HOTSPOT_CENTER_2              target=0x0379
0378  13                                     INPUTLOOPEND
0379  09 4D 3C                               VIDEOREF                      ref=0x3C4D (MC[77]=mt_r_go.vdx)
037C  15 65 07                               JMP                           target=0x0765
037F  09 4F 3C                               VIDEOREF                      ref=0x3C4F (MC[79]=mt_r_tu.vdx)
0382  1E 02                                  RESERVED_1E                   reserved=0x02
0384  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0387  09 38 3C                               VIDEOREF                      ref=0x3C38 (MC[56]=mh_l_st.vdx)
038A  0B                                     INPUTLOOPSTART
038B  0E 92 03                               HOTSPOT_LEFT                  target=0x0392
038E  11 98 03                               HOTSPOT_CENTER_2              target=0x0398
0391  13                                     INPUTLOOPEND
0392  09 39 3C                               VIDEOREF                      ref=0x3C39 (MC[57]=mh_l_tu.vdx)
0395  15 EC 06                               JMP                           target=0x06EC
0398  09 37 3C                               VIDEOREF                      ref=0x3C37 (MC[55]=mh_l_go.vdx)
039B  1E 03                                  RESERVED_1E                   reserved=0x03
039D  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
03A0  09 50 3C                               VIDEOREF                      ref=0x3C50 (MC[80]=mt_stop.vdx)
03A3  0B                                     INPUTLOOPSTART
03A4  0E AB 03                               HOTSPOT_LEFT                  target=0x03AB
03A7  0F B1 03                               HOTSPOT_RIGHT                 target=0x03B1
03AA  13                                     INPUTLOOPEND
03AB  09 48 3C                               VIDEOREF                      ref=0x3C48 (MC[72]=mt_left.vdx)
03AE  15 B2 06                               JMP                           target=0x06B2
03B1  09 4C 3C                               VIDEOREF                      ref=0x3C4C (MC[76]=mt_rite.vdx)
03B4  1E 03                                  RESERVED_1E                   reserved=0x03
03B6  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
03B9  09 4E 3C                               VIDEOREF                      ref=0x3C4E (MC[78]=mt_r_st.vdx)
03BC  0B                                     INPUTLOOPSTART
03BD  0F CA 03                               HOTSPOT_RIGHT                 target=0x03CA
03C0  11 C4 03                               HOTSPOT_CENTER_2              target=0x03C4
03C3  13                                     INPUTLOOPEND
03C4  09 4D 3C                               VIDEOREF                      ref=0x3C4D (MC[77]=mt_r_go.vdx)
03C7  15 78 06                               JMP                           target=0x0678
03CA  09 4F 3C                               VIDEOREF                      ref=0x3C4F (MC[79]=mt_r_tu.vdx)
03CD  1E 05                                  RESERVED_1E                   reserved=0x05
03CF  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
03D2  09 51 3C                               VIDEOREF                      ref=0x3C51 (MC[81]=mu_left.vdx)
03D5  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
03D8  09 3C 3C                               VIDEOREF                      ref=0x3C3C (MC[60]=mh_r_st.vdx)
03DB  0B                                     INPUTLOOPSTART
03DC  0F E9 03                               HOTSPOT_RIGHT                 target=0x03E9
03DF  11 E3 03                               HOTSPOT_CENTER_2              target=0x03E3
03E2  13                                     INPUTLOOPEND
03E3  09 3B 3C                               VIDEOREF                      ref=0x3C3B (MC[59]=mh_r_go.vdx)
03E6  15 38 06                               JMP                           target=0x0638
03E9  09 3D 3C                               VIDEOREF                      ref=0x3C3D (MC[61]=mh_r_tu.vdx)
03EC  0B                                     INPUTLOOPSTART
03ED  0E F4 03                               HOTSPOT_LEFT                  target=0x03F4
03F0  0F FA 03                               HOTSPOT_RIGHT                 target=0x03FA
03F3  13                                     INPUTLOOPEND
03F4  09 36 3C                               VIDEOREF                      ref=0x3C36 (MC[54]=mh_left.vdx)
03F7  15 1A 04                               JMP                           target=0x041A
03FA  09 3A 3C                               VIDEOREF                      ref=0x3C3A (MC[58]=mh_rite.vdx)
03FD  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0400  18 19 00                               CALL                          target=0x0019
0403  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0406  09 38 3C                               VIDEOREF                      ref=0x3C38 (MC[56]=mh_l_st.vdx)
0409  0B                                     INPUTLOOPSTART
040A  0E 11 04                               HOTSPOT_LEFT                  target=0x0411
040D  11 17 04                               HOTSPOT_CENTER_2              target=0x0417
0410  13                                     INPUTLOOPEND
0411  09 39 3C                               VIDEOREF                      ref=0x3C39 (MC[57]=mh_l_tu.vdx)
0414  15 27 06                               JMP                           target=0x0627
0417  09 37 3C                               VIDEOREF                      ref=0x3C37 (MC[55]=mh_l_go.vdx)
041A  1E 02                                  RESERVED_1E                   reserved=0x02
041C  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
041F  09 2B 3C                               VIDEOREF                      ref=0x3C2B (MC[43]=mc_rite.vdx)
0422  1E 03                                  RESERVED_1E                   reserved=0x03
0424  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0427  09 4E 3C                               VIDEOREF                      ref=0x3C4E (MC[78]=mt_r_st.vdx)
042A  0B                                     INPUTLOOPSTART
042B  11 32 04                               HOTSPOT_CENTER_2              target=0x0432
042E  0F 38 04                               HOTSPOT_RIGHT                 target=0x0438
0431  13                                     INPUTLOOPEND
0432  09 4D 3C                               VIDEOREF                      ref=0x3C4D (MC[77]=mt_r_go.vdx)
0435  15 D5 05                               JMP                           target=0x05D5
0438  09 4F 3C                               VIDEOREF                      ref=0x3C4F (MC[79]=mt_r_tu.vdx)
043B  1E 04                                  RESERVED_1E                   reserved=0x04
043D  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0440  09 2A 3C                               VIDEOREF                      ref=0x3C2A (MC[42]=mc_left.vdx)
0443  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0446  09 2A 3C                               VIDEOREF                      ref=0x3C2A (MC[42]=mc_left.vdx)
0449  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
044C  09 38 3C                               VIDEOREF                      ref=0x3C38 (MC[56]=mh_l_st.vdx)
044F  0B                                     INPUTLOOPSTART
0450  0E 57 04                               HOTSPOT_LEFT                  target=0x0457
0453  11 5D 04                               HOTSPOT_CENTER_2              target=0x045D
0456  13                                     INPUTLOOPEND
0457  09 39 3C                               VIDEOREF                      ref=0x3C39 (MC[57]=mh_l_tu.vdx)
045A  15 5A 05                               JMP                           target=0x055A
045D  09 37 3C                               VIDEOREF                      ref=0x3C37 (MC[55]=mh_l_go.vdx)
0460  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0463  09 52 3C                               VIDEOREF                      ref=0x3C52 (MC[82]=mu_rite.vdx)
0466  1E 03                                  RESERVED_1E                   reserved=0x03
0468  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
046B  09 51 3C                               VIDEOREF                      ref=0x3C51 (MC[81]=mu_left.vdx)
046E  09 3C 3C                               VIDEOREF                      ref=0x3C3C (MC[60]=mh_r_st.vdx)
0471  0B                                     INPUTLOOPSTART
0472  11 79 04                               HOTSPOT_CENTER_2              target=0x0479
0475  0F 7F 04                               HOTSPOT_RIGHT                 target=0x047F
0478  13                                     INPUTLOOPEND
0479  09 3B 3C                               VIDEOREF                      ref=0x3C3B (MC[59]=mh_r_go.vdx)
047C  15 17 05                               JMP                           target=0x0517
047F  09 3D 3C                               VIDEOREF                      ref=0x3C3D (MC[61]=mh_r_tu.vdx)
0482  0B                                     INPUTLOOPSTART
0483  0E 8A 04                               HOTSPOT_LEFT                  target=0x048A
0486  0F 94 04                               HOTSPOT_RIGHT                 target=0x0494
0489  13                                     INPUTLOOPEND
048A  07                                     VIDEOFLAG7_ON
048B  09 39 50                               VIDEOREF                      ref=0x5039 (GAMWAV[57]=8_s_13.vdx)
048E  09 36 3C                               VIDEOREF                      ref=0x3C36 (MC[54]=mh_left.vdx)
0491  15 B6 04                               JMP                           target=0x04B6
0494  07                                     VIDEOFLAG7_ON
0495  09 33 50                               VIDEOREF                      ref=0x5033 (GAMWAV[51]=8_s_7.vdx)
0498  09 3A 3C                               VIDEOREF                      ref=0x3C3A (MC[58]=mh_rite.vdx)
049B  18 19 00                               CALL                          target=0x0019
049E  09 38 3C                               VIDEOREF                      ref=0x3C38 (MC[56]=mh_l_st.vdx)
04A1  0B                                     INPUTLOOPSTART
04A2  0E A9 04                               HOTSPOT_LEFT                  target=0x04A9
04A5  11 B3 04                               HOTSPOT_CENTER_2              target=0x04B3
04A8  13                                     INPUTLOOPEND
04A9  07                                     VIDEOFLAG7_ON
04AA  09 34 50                               VIDEOREF                      ref=0x5034 (GAMWAV[52]=8_s_8.vdx)
04AD  09 39 3C                               VIDEOREF                      ref=0x3C39 (MC[57]=mh_l_tu.vdx)
04B0  15 06 05                               JMP                           target=0x0506
04B3  09 37 3C                               VIDEOREF                      ref=0x3C37 (MC[55]=mh_l_go.vdx)
04B6  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
04B9  09 2B 3C                               VIDEOREF                      ref=0x3C2B (MC[43]=mc_rite.vdx)
04BC  1E 06                                  RESERVED_1E                   reserved=0x06
04BE  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
04C1  09 2B 3C                               VIDEOREF                      ref=0x3C2B (MC[43]=mc_rite.vdx)
04C4  1E 02                                  RESERVED_1E                   reserved=0x02
04C6  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
04C9  09 2A 3C                               VIDEOREF                      ref=0x3C2A (MC[42]=mc_left.vdx)
04CC  09 53 3C                               VIDEOREF                      ref=0x3C53 (MC[83]=my.vdx)
04CF  07                                     VIDEOFLAG7_ON
04D0  09 3B 50                               VIDEOREF                      ref=0x503B (GAMWAV[59]=8_s_15.vdx)
04D3  96 8C 30 B6                            LOADSTRING                    dst=v[0x08C], values=[0, 6]
04D7  08 35 4C                               SETBACKGROUNDSONG             ref=0x4C35 (XMI[53]=gu56.xmi)
04DA  43 00                                  RETURNSCRIPT                  value=0x00
04DC  09 2B 3C                               VIDEOREF                      ref=0x3C2B (MC[43]=mc_rite.vdx)
04DF  1E 02                                  RESERVED_1E                   reserved=0x02
04E1  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
04E4  09 2A 3C                               VIDEOREF                      ref=0x3C2A (MC[42]=mc_left.vdx)
04E7  1E 06                                  RESERVED_1E                   reserved=0x06
04E9  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
04EC  09 2A 3C                               VIDEOREF                      ref=0x3C2A (MC[42]=mc_left.vdx)
04EF  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
04F2  09 3C 3C                               VIDEOREF                      ref=0x3C3C (MC[60]=mh_r_st.vdx)
04F5  0B                                     INPUTLOOPSTART
04F6  11 FD 04                               HOTSPOT_CENTER_2              target=0x04FD
04F9  0F 03 05                               HOTSPOT_RIGHT                 target=0x0503
04FC  13                                     INPUTLOOPEND
04FD  09 3B 3C                               VIDEOREF                      ref=0x3C3B (MC[59]=mh_r_go.vdx)
0500  15 9B 04                               JMP                           target=0x049B
0503  09 3D 3C                               VIDEOREF                      ref=0x3C3D (MC[61]=mh_r_tu.vdx)
0506  0B                                     INPUTLOOPSTART
0507  0F 14 05                               HOTSPOT_RIGHT                 target=0x0514
050A  0E 0E 05                               HOTSPOT_LEFT                  target=0x050E
050D  13                                     INPUTLOOPEND
050E  09 36 3C                               VIDEOREF                      ref=0x3C36 (MC[54]=mh_left.vdx)
0511  15 38 05                               JMP                           target=0x0538
0514  09 3A 3C                               VIDEOREF                      ref=0x3C3A (MC[58]=mh_rite.vdx)
0517  1E 02                                  RESERVED_1E                   reserved=0x02
0519  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
051C  18 19 00                               CALL                          target=0x0019
051F  1E 02                                  RESERVED_1E                   reserved=0x02
0521  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0524  09 38 3C                               VIDEOREF                      ref=0x3C38 (MC[56]=mh_l_st.vdx)
0527  0B                                     INPUTLOOPSTART
0528  0E 2F 05                               HOTSPOT_LEFT                  target=0x052F
052B  11 35 05                               HOTSPOT_CENTER_2              target=0x0535
052E  13                                     INPUTLOOPEND
052F  09 39 3C                               VIDEOREF                      ref=0x3C39 (MC[57]=mh_l_tu.vdx)
0532  15 82 04                               JMP                           target=0x0482
0535  09 37 3C                               VIDEOREF                      ref=0x3C37 (MC[55]=mh_l_go.vdx)
0538  09 52 3C                               VIDEOREF                      ref=0x3C52 (MC[82]=mu_rite.vdx)
053B  1E 03                                  RESERVED_1E                   reserved=0x03
053D  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0540  09 51 3C                               VIDEOREF                      ref=0x3C51 (MC[81]=mu_left.vdx)
0543  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0546  09 3C 3C                               VIDEOREF                      ref=0x3C3C (MC[60]=mh_r_st.vdx)
0549  0B                                     INPUTLOOPSTART
054A  0F 57 05                               HOTSPOT_RIGHT                 target=0x0557
054D  11 51 05                               HOTSPOT_CENTER_2              target=0x0551
0550  13                                     INPUTLOOPEND
0551  09 3B 3C                               VIDEOREF                      ref=0x3C3B (MC[59]=mh_r_go.vdx)
0554  15 B0 05                               JMP                           target=0x05B0
0557  09 3D 3C                               VIDEOREF                      ref=0x3C3D (MC[61]=mh_r_tu.vdx)
055A  0B                                     INPUTLOOPSTART
055B  0F 68 05                               HOTSPOT_RIGHT                 target=0x0568
055E  0E 62 05                               HOTSPOT_LEFT                  target=0x0562
0561  13                                     INPUTLOOPEND
0562  09 36 3C                               VIDEOREF                      ref=0x3C36 (MC[54]=mh_left.vdx)
0565  15 88 05                               JMP                           target=0x0588
0568  09 3A 3C                               VIDEOREF                      ref=0x3C3A (MC[58]=mh_rite.vdx)
056B  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
056E  18 19 00                               CALL                          target=0x0019
0571  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0574  09 38 3C                               VIDEOREF                      ref=0x3C38 (MC[56]=mh_l_st.vdx)
0577  0B                                     INPUTLOOPSTART
0578  0E 7F 05                               HOTSPOT_LEFT                  target=0x057F
057B  11 85 05                               HOTSPOT_CENTER_2              target=0x0585
057E  13                                     INPUTLOOPEND
057F  09 39 3C                               VIDEOREF                      ref=0x3C39 (MC[57]=mh_l_tu.vdx)
0582  15 9F 05                               JMP                           target=0x059F
0585  09 37 3C                               VIDEOREF                      ref=0x3C37 (MC[55]=mh_l_go.vdx)
0588  18 19 00                               CALL                          target=0x0019
058B  09 3C 3C                               VIDEOREF                      ref=0x3C3C (MC[60]=mh_r_st.vdx)
058E  0B                                     INPUTLOOPSTART
058F  0F 9C 05                               HOTSPOT_RIGHT                 target=0x059C
0592  11 96 05                               HOTSPOT_CENTER_2              target=0x0596
0595  13                                     INPUTLOOPEND
0596  09 3B 3C                               VIDEOREF                      ref=0x3C3B (MC[59]=mh_r_go.vdx)
0599  15 6B 05                               JMP                           target=0x056B
059C  09 3D 3C                               VIDEOREF                      ref=0x3C3D (MC[61]=mh_r_tu.vdx)
059F  0B                                     INPUTLOOPSTART
05A0  0E A7 05                               HOTSPOT_LEFT                  target=0x05A7
05A3  0F AD 05                               HOTSPOT_RIGHT                 target=0x05AD
05A6  13                                     INPUTLOOPEND
05A7  09 36 3C                               VIDEOREF                      ref=0x3C36 (MC[54]=mh_left.vdx)
05AA  15 60 04                               JMP                           target=0x0460
05AD  09 3A 3C                               VIDEOREF                      ref=0x3C3A (MC[58]=mh_rite.vdx)
05B0  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
05B3  09 2B 3C                               VIDEOREF                      ref=0x3C2B (MC[43]=mc_rite.vdx)
05B6  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
05B9  09 2B 3C                               VIDEOREF                      ref=0x3C2B (MC[43]=mc_rite.vdx)
05BC  1E 04                                  RESERVED_1E                   reserved=0x04
05BE  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
05C1  09 50 3C                               VIDEOREF                      ref=0x3C50 (MC[80]=mt_stop.vdx)
05C4  0B                                     INPUTLOOPSTART
05C5  0F D2 05                               HOTSPOT_RIGHT                 target=0x05D2
05C8  0E CC 05                               HOTSPOT_LEFT                  target=0x05CC
05CB  13                                     INPUTLOOPEND
05CC  09 48 3C                               VIDEOREF                      ref=0x3C48 (MC[72]=mt_left.vdx)
05CF  15 06 06                               JMP                           target=0x0606
05D2  09 4C 3C                               VIDEOREF                      ref=0x3C4C (MC[76]=mt_rite.vdx)
05D5  1E 0B                                  RESERVED_1E                   reserved=0x0B
05D7  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
05DA  09 52 3C                               VIDEOREF                      ref=0x3C52 (MC[82]=mu_rite.vdx)
05DD  1E 06                                  RESERVED_1E                   reserved=0x06
05DF  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
05E2  18 19 00                               CALL                          target=0x0019
05E5  1E 06                                  RESERVED_1E                   reserved=0x06
05E7  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
05EA  09 51 3C                               VIDEOREF                      ref=0x3C51 (MC[81]=mu_left.vdx)
05ED  1E 0B                                  RESERVED_1E                   reserved=0x0B
05EF  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
05F2  09 4A 3C                               VIDEOREF                      ref=0x3C4A (MC[74]=mt_l_st.vdx)
05F5  0B                                     INPUTLOOPSTART
05F6  0E FD 05                               HOTSPOT_LEFT                  target=0x05FD
05F9  11 03 06                               HOTSPOT_CENTER_2              target=0x0603
05FC  13                                     INPUTLOOPEND
05FD  09 4B 3C                               VIDEOREF                      ref=0x3C4B (MC[75]=mt_l_tu.vdx)
0600  15 3B 04                               JMP                           target=0x043B
0603  09 49 3C                               VIDEOREF                      ref=0x3C49 (MC[73]=mt_l_go.vdx)
0606  1E 03                                  RESERVED_1E                   reserved=0x03
0608  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
060B  09 2A 3C                               VIDEOREF                      ref=0x3C2A (MC[42]=mc_left.vdx)
060E  1E 02                                  RESERVED_1E                   reserved=0x02
0610  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0613  09 3C 3C                               VIDEOREF                      ref=0x3C3C (MC[60]=mh_r_st.vdx)
0616  0B                                     INPUTLOOPSTART
0617  0F 24 06                               HOTSPOT_RIGHT                 target=0x0624
061A  11 1E 06                               HOTSPOT_CENTER_2              target=0x061E
061D  13                                     INPUTLOOPEND
061E  09 3B 3C                               VIDEOREF                      ref=0x3C3B (MC[59]=mh_r_go.vdx)
0621  15 FD 03                               JMP                           target=0x03FD
0624  09 3D 3C                               VIDEOREF                      ref=0x3C3D (MC[61]=mh_r_tu.vdx)
0627  0B                                     INPUTLOOPSTART
0628  0F 35 06                               HOTSPOT_RIGHT                 target=0x0635
062B  0E 2F 06                               HOTSPOT_LEFT                  target=0x062F
062E  13                                     INPUTLOOPEND
062F  09 36 3C                               VIDEOREF                      ref=0x3C36 (MC[54]=mh_left.vdx)
0632  15 59 06                               JMP                           target=0x0659
0635  09 3A 3C                               VIDEOREF                      ref=0x3C3A (MC[58]=mh_rite.vdx)
0638  1E 02                                  RESERVED_1E                   reserved=0x02
063A  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
063D  18 19 00                               CALL                          target=0x0019
0640  1E 02                                  RESERVED_1E                   reserved=0x02
0642  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0645  09 38 3C                               VIDEOREF                      ref=0x3C38 (MC[56]=mh_l_st.vdx)
0648  0B                                     INPUTLOOPSTART
0649  0E 50 06                               HOTSPOT_LEFT                  target=0x0650
064C  11 56 06                               HOTSPOT_CENTER_2              target=0x0656
064F  13                                     INPUTLOOPEND
0650  09 39 3C                               VIDEOREF                      ref=0x3C39 (MC[57]=mh_l_tu.vdx)
0653  15 EC 03                               JMP                           target=0x03EC
0656  09 37 3C                               VIDEOREF                      ref=0x3C37 (MC[55]=mh_l_go.vdx)
0659  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
065C  09 52 3C                               VIDEOREF                      ref=0x3C52 (MC[82]=mu_rite.vdx)
065F  1E 05                                  RESERVED_1E                   reserved=0x05
0661  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0664  09 50 3C                               VIDEOREF                      ref=0x3C50 (MC[80]=mt_stop.vdx)
0667  0B                                     INPUTLOOPSTART
0668  0F 75 06                               HOTSPOT_RIGHT                 target=0x0675
066B  0E 6F 06                               HOTSPOT_LEFT                  target=0x066F
066E  13                                     INPUTLOOPEND
066F  09 48 3C                               VIDEOREF                      ref=0x3C48 (MC[72]=mt_left.vdx)
0672  15 99 06                               JMP                           target=0x0699
0675  09 4C 3C                               VIDEOREF                      ref=0x3C4C (MC[76]=mt_rite.vdx)
0678  1E 11                                  RESERVED_1E                   reserved=0x11
067A  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
067D  18 19 00                               CALL                          target=0x0019
0680  1E 11                                  RESERVED_1E                   reserved=0x11
0682  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0685  09 4A 3C                               VIDEOREF                      ref=0x3C4A (MC[74]=mt_l_st.vdx)
0688  0B                                     INPUTLOOPSTART
0689  11 96 06                               HOTSPOT_CENTER_2              target=0x0696
068C  0E 90 06                               HOTSPOT_LEFT                  target=0x0690
068F  13                                     INPUTLOOPEND
0690  09 4B 3C                               VIDEOREF                      ref=0x3C4B (MC[75]=mt_l_tu.vdx)
0693  15 CD 03                               JMP                           target=0x03CD
0696  09 49 3C                               VIDEOREF                      ref=0x3C49 (MC[73]=mt_l_go.vdx)
0699  1E 03                                  RESERVED_1E                   reserved=0x03
069B  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
069E  09 4A 3C                               VIDEOREF                      ref=0x3C4A (MC[74]=mt_l_st.vdx)
06A1  0B                                     INPUTLOOPSTART
06A2  11 AF 06                               HOTSPOT_CENTER_2              target=0x06AF
06A5  0E A9 06                               HOTSPOT_LEFT                  target=0x06A9
06A8  13                                     INPUTLOOPEND
06A9  09 4B 3C                               VIDEOREF                      ref=0x3C4B (MC[75]=mt_l_tu.vdx)
06AC  15 D3 06                               JMP                           target=0x06D3
06AF  09 49 3C                               VIDEOREF                      ref=0x3C49 (MC[73]=mt_l_go.vdx)
06B2  1E 03                                  RESERVED_1E                   reserved=0x03
06B4  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
06B7  18 19 00                               CALL                          target=0x0019
06BA  1E 03                                  RESERVED_1E                   reserved=0x03
06BC  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
06BF  09 4E 3C                               VIDEOREF                      ref=0x3C4E (MC[78]=mt_r_st.vdx)
06C2  0B                                     INPUTLOOPSTART
06C3  11 CA 06                               HOTSPOT_CENTER_2              target=0x06CA
06C6  0F D0 06                               HOTSPOT_RIGHT                 target=0x06D0
06C9  13                                     INPUTLOOPEND
06CA  09 4D 3C                               VIDEOREF                      ref=0x3C4D (MC[77]=mt_r_go.vdx)
06CD  15 B4 03                               JMP                           target=0x03B4
06D0  09 4F 3C                               VIDEOREF                      ref=0x3C4F (MC[79]=mt_r_tu.vdx)
06D3  1E 03                                  RESERVED_1E                   reserved=0x03
06D5  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
06D8  09 3C 3C                               VIDEOREF                      ref=0x3C3C (MC[60]=mh_r_st.vdx)
06DB  0B                                     INPUTLOOPSTART
06DC  11 E3 06                               HOTSPOT_CENTER_2              target=0x06E3
06DF  0F E9 06                               HOTSPOT_RIGHT                 target=0x06E9
06E2  13                                     INPUTLOOPEND
06E3  09 3B 3C                               VIDEOREF                      ref=0x3C3B (MC[59]=mh_r_go.vdx)
06E6  15 4C 07                               JMP                           target=0x074C
06E9  09 3D 3C                               VIDEOREF                      ref=0x3C3D (MC[61]=mh_r_tu.vdx)
06EC  0B                                     INPUTLOOPSTART
06ED  0F FA 06                               HOTSPOT_RIGHT                 target=0x06FA
06F0  0E F4 06                               HOTSPOT_LEFT                  target=0x06F4
06F3  13                                     INPUTLOOPEND
06F4  09 36 3C                               VIDEOREF                      ref=0x3C36 (MC[54]=mh_left.vdx)
06F7  15 1E 07                               JMP                           target=0x071E
06FA  09 3A 3C                               VIDEOREF                      ref=0x3C3A (MC[58]=mh_rite.vdx)
06FD  1E 02                                  RESERVED_1E                   reserved=0x02
06FF  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0702  18 19 00                               CALL                          target=0x0019
0705  1E 02                                  RESERVED_1E                   reserved=0x02
0707  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
070A  09 38 3C                               VIDEOREF                      ref=0x3C38 (MC[56]=mh_l_st.vdx)
070D  0B                                     INPUTLOOPSTART
070E  0E 15 07                               HOTSPOT_LEFT                  target=0x0715
0711  11 1B 07                               HOTSPOT_CENTER_2              target=0x071B
0714  13                                     INPUTLOOPEND
0715  09 39 3C                               VIDEOREF                      ref=0x3C39 (MC[57]=mh_l_tu.vdx)
0718  15 3B 07                               JMP                           target=0x073B
071B  09 37 3C                               VIDEOREF                      ref=0x3C37 (MC[55]=mh_l_go.vdx)
071E  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0721  18 19 00                               CALL                          target=0x0019
0724  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0727  09 3C 3C                               VIDEOREF                      ref=0x3C3C (MC[60]=mh_r_st.vdx)
072A  0B                                     INPUTLOOPSTART
072B  11 32 07                               HOTSPOT_CENTER_2              target=0x0732
072E  0F 38 07                               HOTSPOT_RIGHT                 target=0x0738
0731  13                                     INPUTLOOPEND
0732  09 3B 3C                               VIDEOREF                      ref=0x3C3B (MC[59]=mh_r_go.vdx)
0735  15 FD 06                               JMP                           target=0x06FD
0738  09 3D 3C                               VIDEOREF                      ref=0x3C3D (MC[61]=mh_r_tu.vdx)
073B  0B                                     INPUTLOOPSTART
073C  0E 43 07                               HOTSPOT_LEFT                  target=0x0743
073F  0F 49 07                               HOTSPOT_RIGHT                 target=0x0749
0742  13                                     INPUTLOOPEND
0743  09 36 3C                               VIDEOREF                      ref=0x3C36 (MC[54]=mh_left.vdx)
0746  15 9B 03                               JMP                           target=0x039B
0749  09 3A 3C                               VIDEOREF                      ref=0x3C3A (MC[58]=mh_rite.vdx)
074C  1E 02                                  RESERVED_1E                   reserved=0x02
074E  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0751  09 50 3C                               VIDEOREF                      ref=0x3C50 (MC[80]=mt_stop.vdx)
0754  0B                                     INPUTLOOPSTART
0755  0F 62 07                               HOTSPOT_RIGHT                 target=0x0762
0758  0E 5C 07                               HOTSPOT_LEFT                  target=0x075C
075B  13                                     INPUTLOOPEND
075C  09 48 3C                               VIDEOREF                      ref=0x3C48 (MC[72]=mt_left.vdx)
075F  15 01 09                               JMP                           target=0x0901
0762  09 4C 3C                               VIDEOREF                      ref=0x3C4C (MC[76]=mt_rite.vdx)
0765  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0768  09 50 3C                               VIDEOREF                      ref=0x3C50 (MC[80]=mt_stop.vdx)
076B  0B                                     INPUTLOOPSTART
076C  0F 79 07                               HOTSPOT_RIGHT                 target=0x0779
076F  0E 73 07                               HOTSPOT_LEFT                  target=0x0773
0772  13                                     INPUTLOOPEND
0773  09 48 3C                               VIDEOREF                      ref=0x3C48 (MC[72]=mt_left.vdx)
0776  15 9D 07                               JMP                           target=0x079D
0779  09 4C 3C                               VIDEOREF                      ref=0x3C4C (MC[76]=mt_rite.vdx)
077C  1E 05                                  RESERVED_1E                   reserved=0x05
077E  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0781  18 19 00                               CALL                          target=0x0019
0784  1E 05                                  RESERVED_1E                   reserved=0x05
0786  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0789  09 4A 3C                               VIDEOREF                      ref=0x3C4A (MC[74]=mt_l_st.vdx)
078C  0B                                     INPUTLOOPSTART
078D  0E 94 07                               HOTSPOT_LEFT                  target=0x0794
0790  11 9A 07                               HOTSPOT_CENTER_2              target=0x079A
0793  13                                     INPUTLOOPEND
0794  09 4B 3C                               VIDEOREF                      ref=0x3C4B (MC[75]=mt_l_tu.vdx)
0797  15 EA 08                               JMP                           target=0x08EA
079A  09 49 3C                               VIDEOREF                      ref=0x3C49 (MC[73]=mt_l_go.vdx)
079D  1E 03                                  RESERVED_1E                   reserved=0x03
079F  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
07A2  09 38 3C                               VIDEOREF                      ref=0x3C38 (MC[56]=mh_l_st.vdx)
07A5  0B                                     INPUTLOOPSTART
07A6  0E AD 07                               HOTSPOT_LEFT                  target=0x07AD
07A9  11 B3 07                               HOTSPOT_CENTER_2              target=0x07B3
07AC  13                                     INPUTLOOPEND
07AD  09 39 3C                               VIDEOREF                      ref=0x3C39 (MC[57]=mh_l_tu.vdx)
07B0  15 F3 07                               JMP                           target=0x07F3
07B3  09 37 3C                               VIDEOREF                      ref=0x3C37 (MC[55]=mh_l_go.vdx)
07B6  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
07B9  09 52 3C                               VIDEOREF                      ref=0x3C52 (MC[82]=mu_rite.vdx)
07BC  1E 0B                                  RESERVED_1E                   reserved=0x0B
07BE  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
07C1  09 51 3C                               VIDEOREF                      ref=0x3C51 (MC[81]=mu_left.vdx)
07C4  1E 0B                                  RESERVED_1E                   reserved=0x0B
07C6  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
07C9  18 19 00                               CALL                          target=0x0019
07CC  1E 0B                                  RESERVED_1E                   reserved=0x0B
07CE  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
07D1  09 52 3C                               VIDEOREF                      ref=0x3C52 (MC[82]=mu_rite.vdx)
07D4  1E 0B                                  RESERVED_1E                   reserved=0x0B
07D6  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
07D9  09 51 3C                               VIDEOREF                      ref=0x3C51 (MC[81]=mu_left.vdx)
07DC  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
07DF  09 3C 3C                               VIDEOREF                      ref=0x3C3C (MC[60]=mh_r_st.vdx)
07E2  0B                                     INPUTLOOPSTART
07E3  0F F0 07                               HOTSPOT_RIGHT                 target=0x07F0
07E6  11 EA 07                               HOTSPOT_CENTER_2              target=0x07EA
07E9  13                                     INPUTLOOPEND
07EA  09 3B 3C                               VIDEOREF                      ref=0x3C3B (MC[59]=mh_r_go.vdx)
07ED  15 D1 08                               JMP                           target=0x08D1
07F0  09 3D 3C                               VIDEOREF                      ref=0x3C3D (MC[61]=mh_r_tu.vdx)
07F3  0B                                     INPUTLOOPSTART
07F4  0E FB 07                               HOTSPOT_LEFT                  target=0x07FB
07F7  0F 01 08                               HOTSPOT_RIGHT                 target=0x0801
07FA  13                                     INPUTLOOPEND
07FB  09 36 3C                               VIDEOREF                      ref=0x3C36 (MC[54]=mh_left.vdx)
07FE  15 21 08                               JMP                           target=0x0821
0801  09 3A 3C                               VIDEOREF                      ref=0x3C3A (MC[58]=mh_rite.vdx)
0804  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0807  18 19 00                               CALL                          target=0x0019
080A  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
080D  09 38 3C                               VIDEOREF                      ref=0x3C38 (MC[56]=mh_l_st.vdx)
0810  0B                                     INPUTLOOPSTART
0811  0E 18 08                               HOTSPOT_LEFT                  target=0x0818
0814  11 1E 08                               HOTSPOT_CENTER_2              target=0x081E
0817  13                                     INPUTLOOPEND
0818  09 39 3C                               VIDEOREF                      ref=0x3C39 (MC[57]=mh_l_tu.vdx)
081B  15 C0 08                               JMP                           target=0x08C0
081E  09 37 3C                               VIDEOREF                      ref=0x3C37 (MC[55]=mh_l_go.vdx)
0821  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0824  09 3C 3C                               VIDEOREF                      ref=0x3C3C (MC[60]=mh_r_st.vdx)
0827  0B                                     INPUTLOOPSTART
0828  0F 35 08                               HOTSPOT_RIGHT                 target=0x0835
082B  11 2F 08                               HOTSPOT_CENTER_2              target=0x082F
082E  13                                     INPUTLOOPEND
082F  09 3B 3C                               VIDEOREF                      ref=0x3C3B (MC[59]=mh_r_go.vdx)
0832  15 92 08                               JMP                           target=0x0892
0835  09 3D 3C                               VIDEOREF                      ref=0x3C3D (MC[61]=mh_r_tu.vdx)
0838  0B                                     INPUTLOOPSTART
0839  0E 40 08                               HOTSPOT_LEFT                  target=0x0840
083C  0F 46 08                               HOTSPOT_RIGHT                 target=0x0846
083F  13                                     INPUTLOOPEND
0840  09 36 3C                               VIDEOREF                      ref=0x3C36 (MC[54]=mh_left.vdx)
0843  15 6A 08                               JMP                           target=0x086A
0846  09 3A 3C                               VIDEOREF                      ref=0x3C3A (MC[58]=mh_rite.vdx)
0849  1E 03                                  RESERVED_1E                   reserved=0x03
084B  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
084E  18 19 00                               CALL                          target=0x0019
0851  1E 03                                  RESERVED_1E                   reserved=0x03
0853  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0856  09 38 3C                               VIDEOREF                      ref=0x3C38 (MC[56]=mh_l_st.vdx)
0859  0B                                     INPUTLOOPSTART
085A  11 67 08                               HOTSPOT_CENTER_2              target=0x0867
085D  0E 61 08                               HOTSPOT_LEFT                  target=0x0861
0860  13                                     INPUTLOOPEND
0861  09 39 3C                               VIDEOREF                      ref=0x3C39 (MC[57]=mh_l_tu.vdx)
0864  15 81 08                               JMP                           target=0x0881
0867  09 37 3C                               VIDEOREF                      ref=0x3C37 (MC[55]=mh_l_go.vdx)
086A  18 19 00                               CALL                          target=0x0019
086D  09 3C 3C                               VIDEOREF                      ref=0x3C3C (MC[60]=mh_r_st.vdx)
0870  0B                                     INPUTLOOPSTART
0871  0F 7E 08                               HOTSPOT_RIGHT                 target=0x087E
0874  11 78 08                               HOTSPOT_CENTER_2              target=0x0878
0877  13                                     INPUTLOOPEND
0878  09 3B 3C                               VIDEOREF                      ref=0x3C3B (MC[59]=mh_r_go.vdx)
087B  15 49 08                               JMP                           target=0x0849
087E  09 3D 3C                               VIDEOREF                      ref=0x3C3D (MC[61]=mh_r_tu.vdx)
0881  0B                                     INPUTLOOPSTART
0882  0F 8F 08                               HOTSPOT_RIGHT                 target=0x088F
0885  0E 89 08                               HOTSPOT_LEFT                  target=0x0889
0888  13                                     INPUTLOOPEND
0889  09 36 3C                               VIDEOREF                      ref=0x3C36 (MC[54]=mh_left.vdx)
088C  15 A9 08                               JMP                           target=0x08A9
088F  09 3A 3C                               VIDEOREF                      ref=0x3C3A (MC[58]=mh_rite.vdx)
0892  18 19 00                               CALL                          target=0x0019
0895  09 38 3C                               VIDEOREF                      ref=0x3C38 (MC[56]=mh_l_st.vdx)
0898  0B                                     INPUTLOOPSTART
0899  0E A0 08                               HOTSPOT_LEFT                  target=0x08A0
089C  11 A6 08                               HOTSPOT_CENTER_2              target=0x08A6
089F  13                                     INPUTLOOPEND
08A0  09 39 3C                               VIDEOREF                      ref=0x3C39 (MC[57]=mh_l_tu.vdx)
08A3  15 38 08                               JMP                           target=0x0838
08A6  09 37 3C                               VIDEOREF                      ref=0x3C37 (MC[55]=mh_l_go.vdx)
08A9  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
08AC  09 3C 3C                               VIDEOREF                      ref=0x3C3C (MC[60]=mh_r_st.vdx)
08AF  0B                                     INPUTLOOPSTART
08B0  0F BD 08                               HOTSPOT_RIGHT                 target=0x08BD
08B3  11 B7 08                               HOTSPOT_CENTER_2              target=0x08B7
08B6  13                                     INPUTLOOPEND
08B7  09 3B 3C                               VIDEOREF                      ref=0x3C3B (MC[59]=mh_r_go.vdx)
08BA  15 04 08                               JMP                           target=0x0804
08BD  09 3D 3C                               VIDEOREF                      ref=0x3C3D (MC[61]=mh_r_tu.vdx)
08C0  0B                                     INPUTLOOPSTART
08C1  0F CE 08                               HOTSPOT_RIGHT                 target=0x08CE
08C4  0E C8 08                               HOTSPOT_LEFT                  target=0x08C8
08C7  13                                     INPUTLOOPEND
08C8  09 36 3C                               VIDEOREF                      ref=0x3C36 (MC[54]=mh_left.vdx)
08CB  15 B6 07                               JMP                           target=0x07B6
08CE  09 3A 3C                               VIDEOREF                      ref=0x3C3A (MC[58]=mh_rite.vdx)
08D1  1E 03                                  RESERVED_1E                   reserved=0x03
08D3  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
08D6  09 4E 3C                               VIDEOREF                      ref=0x3C4E (MC[78]=mt_r_st.vdx)
08D9  0B                                     INPUTLOOPSTART
08DA  0F E7 08                               HOTSPOT_RIGHT                 target=0x08E7
08DD  11 E1 08                               HOTSPOT_CENTER_2              target=0x08E1
08E0  13                                     INPUTLOOPEND
08E1  09 4D 3C                               VIDEOREF                      ref=0x3C4D (MC[77]=mt_r_go.vdx)
08E4  15 7C 07                               JMP                           target=0x077C
08E7  09 4F 3C                               VIDEOREF                      ref=0x3C4F (MC[79]=mt_r_tu.vdx)
08EA  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
08ED  09 4A 3C                               VIDEOREF                      ref=0x3C4A (MC[74]=mt_l_st.vdx)
08F0  0B                                     INPUTLOOPSTART
08F1  0E F8 08                               HOTSPOT_LEFT                  target=0x08F8
08F4  11 FE 08                               HOTSPOT_CENTER_2              target=0x08FE
08F7  13                                     INPUTLOOPEND
08F8  09 4B 3C                               VIDEOREF                      ref=0x3C4B (MC[75]=mt_l_tu.vdx)
08FB  15 82 03                               JMP                           target=0x0382
08FE  09 49 3C                               VIDEOREF                      ref=0x3C49 (MC[73]=mt_l_go.vdx)
0901  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0904  09 4A 3C                               VIDEOREF                      ref=0x3C4A (MC[74]=mt_l_st.vdx)
0907  0B                                     INPUTLOOPSTART
0908  0E 0F 09                               HOTSPOT_LEFT                  target=0x090F
090B  11 15 09                               HOTSPOT_CENTER_2              target=0x0915
090E  13                                     INPUTLOOPEND
090F  09 4B 3C                               VIDEOREF                      ref=0x3C4B (MC[75]=mt_l_tu.vdx)
0912  15 A8 02                               JMP                           target=0x02A8
0915  09 49 3C                               VIDEOREF                      ref=0x3C49 (MC[73]=mt_l_go.vdx)
0918  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
091B  09 4E 3C                               VIDEOREF                      ref=0x3C4E (MC[78]=mt_r_st.vdx)
091E  0B                                     INPUTLOOPSTART
091F  11 26 09                               HOTSPOT_CENTER_2              target=0x0926
0922  0F 2C 09                               HOTSPOT_RIGHT                 target=0x092C
0925  13                                     INPUTLOOPEND
0926  09 4D 3C                               VIDEOREF                      ref=0x3C4D (MC[77]=mt_r_go.vdx)
0929  15 51 0A                               JMP                           target=0x0A51
092C  09 4F 3C                               VIDEOREF                      ref=0x3C4F (MC[79]=mt_r_tu.vdx)
092F  1E 05                                  RESERVED_1E                   reserved=0x05
0931  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0934  09 52 3C                               VIDEOREF                      ref=0x3C52 (MC[82]=mu_rite.vdx)
0937  1E 04                                  RESERVED_1E                   reserved=0x04
0939  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
093C  09 51 3C                               VIDEOREF                      ref=0x3C51 (MC[81]=mu_left.vdx)
093F  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0942  09 3C 3C                               VIDEOREF                      ref=0x3C3C (MC[60]=mh_r_st.vdx)
0945  0B                                     INPUTLOOPSTART
0946  11 4D 09                               HOTSPOT_CENTER_2              target=0x094D
0949  0F 53 09                               HOTSPOT_RIGHT                 target=0x0953
094C  13                                     INPUTLOOPEND
094D  09 3B 3C                               VIDEOREF                      ref=0x3C3B (MC[59]=mh_r_go.vdx)
0950  15 09 0A                               JMP                           target=0x0A09
0953  09 3D 3C                               VIDEOREF                      ref=0x3C3D (MC[61]=mh_r_tu.vdx)
0956  0B                                     INPUTLOOPSTART
0957  0F 64 09                               HOTSPOT_RIGHT                 target=0x0964
095A  0E 5E 09                               HOTSPOT_LEFT                  target=0x095E
095D  13                                     INPUTLOOPEND
095E  09 36 3C                               VIDEOREF                      ref=0x3C36 (MC[54]=mh_left.vdx)
0961  15 84 09                               JMP                           target=0x0984
0964  09 3A 3C                               VIDEOREF                      ref=0x3C3A (MC[58]=mh_rite.vdx)
0967  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
096A  18 19 00                               CALL                          target=0x0019
096D  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0970  09 38 3C                               VIDEOREF                      ref=0x3C38 (MC[56]=mh_l_st.vdx)
0973  0B                                     INPUTLOOPSTART
0974  0E 7B 09                               HOTSPOT_LEFT                  target=0x097B
0977  11 81 09                               HOTSPOT_CENTER_2              target=0x0981
097A  13                                     INPUTLOOPEND
097B  09 39 3C                               VIDEOREF                      ref=0x3C39 (MC[57]=mh_l_tu.vdx)
097E  15 F8 09                               JMP                           target=0x09F8
0981  09 37 3C                               VIDEOREF                      ref=0x3C37 (MC[55]=mh_l_go.vdx)
0984  1E 03                                  RESERVED_1E                   reserved=0x03
0986  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0989  09 50 3C                               VIDEOREF                      ref=0x3C50 (MC[80]=mt_stop.vdx)
098C  0B                                     INPUTLOOPSTART
098D  0F 9A 09                               HOTSPOT_RIGHT                 target=0x099A
0990  0E 94 09                               HOTSPOT_LEFT                  target=0x0994
0993  13                                     INPUTLOOPEND
0994  09 48 3C                               VIDEOREF                      ref=0x3C48 (MC[72]=mt_left.vdx)
0997  15 BE 09                               JMP                           target=0x09BE
099A  09 4C 3C                               VIDEOREF                      ref=0x3C4C (MC[76]=mt_rite.vdx)
099D  1E 04                                  RESERVED_1E                   reserved=0x04
099F  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
09A2  18 19 00                               CALL                          target=0x0019
09A5  1E 04                                  RESERVED_1E                   reserved=0x04
09A7  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
09AA  09 4A 3C                               VIDEOREF                      ref=0x3C4A (MC[74]=mt_l_st.vdx)
09AD  0B                                     INPUTLOOPSTART
09AE  0E B5 09                               HOTSPOT_LEFT                  target=0x09B5
09B1  11 BB 09                               HOTSPOT_CENTER_2              target=0x09BB
09B4  13                                     INPUTLOOPEND
09B5  09 4B 3C                               VIDEOREF                      ref=0x3C4B (MC[75]=mt_l_tu.vdx)
09B8  15 DF 09                               JMP                           target=0x09DF
09BB  09 49 3C                               VIDEOREF                      ref=0x3C49 (MC[73]=mt_l_go.vdx)
09BE  1E 14                                  RESERVED_1E                   reserved=0x14
09C0  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
09C3  18 19 00                               CALL                          target=0x0019
09C6  1E 14                                  RESERVED_1E                   reserved=0x14
09C8  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
09CB  09 4E 3C                               VIDEOREF                      ref=0x3C4E (MC[78]=mt_r_st.vdx)
09CE  0B                                     INPUTLOOPSTART
09CF  11 D6 09                               HOTSPOT_CENTER_2              target=0x09D6
09D2  0F DC 09                               HOTSPOT_RIGHT                 target=0x09DC
09D5  13                                     INPUTLOOPEND
09D6  09 4D 3C                               VIDEOREF                      ref=0x3C4D (MC[77]=mt_r_go.vdx)
09D9  15 9D 09                               JMP                           target=0x099D
09DC  09 4F 3C                               VIDEOREF                      ref=0x3C4F (MC[79]=mt_r_tu.vdx)
09DF  1E 03                                  RESERVED_1E                   reserved=0x03
09E1  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
09E4  09 3C 3C                               VIDEOREF                      ref=0x3C3C (MC[60]=mh_r_st.vdx)
09E7  0B                                     INPUTLOOPSTART
09E8  11 EF 09                               HOTSPOT_CENTER_2              target=0x09EF
09EB  0F F5 09                               HOTSPOT_RIGHT                 target=0x09F5
09EE  13                                     INPUTLOOPEND
09EF  09 3B 3C                               VIDEOREF                      ref=0x3C3B (MC[59]=mh_r_go.vdx)
09F2  15 67 09                               JMP                           target=0x0967
09F5  09 3D 3C                               VIDEOREF                      ref=0x3C3D (MC[61]=mh_r_tu.vdx)
09F8  0B                                     INPUTLOOPSTART
09F9  0E 00 0A                               HOTSPOT_LEFT                  target=0x0A00
09FC  0F 06 0A                               HOTSPOT_RIGHT                 target=0x0A06
09FF  13                                     INPUTLOOPEND
0A00  09 36 3C                               VIDEOREF                      ref=0x3C36 (MC[54]=mh_left.vdx)
0A03  15 2A 0A                               JMP                           target=0x0A2A
0A06  09 3A 3C                               VIDEOREF                      ref=0x3C3A (MC[58]=mh_rite.vdx)
0A09  1E 02                                  RESERVED_1E                   reserved=0x02
0A0B  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0A0E  18 19 00                               CALL                          target=0x0019
0A11  1E 02                                  RESERVED_1E                   reserved=0x02
0A13  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0A16  09 38 3C                               VIDEOREF                      ref=0x3C38 (MC[56]=mh_l_st.vdx)
0A19  0B                                     INPUTLOOPSTART
0A1A  11 27 0A                               HOTSPOT_CENTER_2              target=0x0A27
0A1D  0E 21 0A                               HOTSPOT_LEFT                  target=0x0A21
0A20  13                                     INPUTLOOPEND
0A21  09 39 3C                               VIDEOREF                      ref=0x3C39 (MC[57]=mh_l_tu.vdx)
0A24  15 56 09                               JMP                           target=0x0956
0A27  09 37 3C                               VIDEOREF                      ref=0x3C37 (MC[55]=mh_l_go.vdx)
0A2A  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0A2D  09 52 3C                               VIDEOREF                      ref=0x3C52 (MC[82]=mu_rite.vdx)
0A30  1E 04                                  RESERVED_1E                   reserved=0x04
0A32  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0A35  09 51 3C                               VIDEOREF                      ref=0x3C51 (MC[81]=mu_left.vdx)
0A38  1E 05                                  RESERVED_1E                   reserved=0x05
0A3A  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0A3D  09 50 3C                               VIDEOREF                      ref=0x3C50 (MC[80]=mt_stop.vdx)
0A40  0B                                     INPUTLOOPSTART
0A41  0F 4E 0A                               HOTSPOT_RIGHT                 target=0x0A4E
0A44  0E 48 0A                               HOTSPOT_LEFT                  target=0x0A48
0A47  13                                     INPUTLOOPEND
0A48  09 48 3C                               VIDEOREF                      ref=0x3C48 (MC[72]=mt_left.vdx)
0A4B  15 91 02                               JMP                           target=0x0291
0A4E  09 4C 3C                               VIDEOREF                      ref=0x3C4C (MC[76]=mt_rite.vdx)
0A51  1E 02                                  RESERVED_1E                   reserved=0x02
0A53  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0A56  09 4A 3C                               VIDEOREF                      ref=0x3C4A (MC[74]=mt_l_st.vdx)
0A59  0B                                     INPUTLOOPSTART
0A5A  0E 61 0A                               HOTSPOT_LEFT                  target=0x0A61
0A5D  11 67 0A                               HOTSPOT_CENTER_2              target=0x0A67
0A60  13                                     INPUTLOOPEND
0A61  09 4B 3C                               VIDEOREF                      ref=0x3C4B (MC[75]=mt_l_tu.vdx)
0A64  15 37 02                               JMP                           target=0x0237
0A67  09 49 3C                               VIDEOREF                      ref=0x3C49 (MC[73]=mt_l_go.vdx)
0A6A  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0A6D  09 4E 3C                               VIDEOREF                      ref=0x3C4E (MC[78]=mt_r_st.vdx)
0A70  0B                                     INPUTLOOPSTART
0A71  11 78 0A                               HOTSPOT_CENTER_2              target=0x0A78
0A74  0F 7E 0A                               HOTSPOT_RIGHT                 target=0x0A7E
0A77  13                                     INPUTLOOPEND
0A78  09 4D 3C                               VIDEOREF                      ref=0x3C4D (MC[77]=mt_r_go.vdx)
0A7B  15 5C 0B                               JMP                           target=0x0B5C
0A7E  09 4F 3C                               VIDEOREF                      ref=0x3C4F (MC[79]=mt_r_tu.vdx)
0A81  1E 02                                  RESERVED_1E                   reserved=0x02
0A83  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0A86  09 38 3C                               VIDEOREF                      ref=0x3C38 (MC[56]=mh_l_st.vdx)
0A89  0B                                     INPUTLOOPSTART
0A8A  0E 91 0A                               HOTSPOT_LEFT                  target=0x0A91
0A8D  11 97 0A                               HOTSPOT_CENTER_2              target=0x0A97
0A90  13                                     INPUTLOOPEND
0A91  09 39 3C                               VIDEOREF                      ref=0x3C39 (MC[57]=mh_l_tu.vdx)
0A94  15 E7 0A                               JMP                           target=0x0AE7
0A97  09 37 3C                               VIDEOREF                      ref=0x3C37 (MC[55]=mh_l_go.vdx)
0A9A  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0A9D  09 52 3C                               VIDEOREF                      ref=0x3C52 (MC[82]=mu_rite.vdx)
0AA0  1E 03                                  RESERVED_1E                   reserved=0x03
0AA2  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0AA5  09 51 3C                               VIDEOREF                      ref=0x3C51 (MC[81]=mu_left.vdx)
0AA8  1E 02                                  RESERVED_1E                   reserved=0x02
0AAA  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0AAD  09 52 3C                               VIDEOREF                      ref=0x3C52 (MC[82]=mu_rite.vdx)
0AB0  1E 02                                  RESERVED_1E                   reserved=0x02
0AB2  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0AB5  18 19 00                               CALL                          target=0x0019
0AB8  1E 02                                  RESERVED_1E                   reserved=0x02
0ABA  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0ABD  09 51 3C                               VIDEOREF                      ref=0x3C51 (MC[81]=mu_left.vdx)
0AC0  1E 02                                  RESERVED_1E                   reserved=0x02
0AC2  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0AC5  09 52 3C                               VIDEOREF                      ref=0x3C52 (MC[82]=mu_rite.vdx)
0AC8  1E 03                                  RESERVED_1E                   reserved=0x03
0ACA  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0ACD  09 51 3C                               VIDEOREF                      ref=0x3C51 (MC[81]=mu_left.vdx)
0AD0  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0AD3  09 3C 3C                               VIDEOREF                      ref=0x3C3C (MC[60]=mh_r_st.vdx)
0AD6  0B                                     INPUTLOOPSTART
0AD7  0F E4 0A                               HOTSPOT_RIGHT                 target=0x0AE4
0ADA  11 DE 0A                               HOTSPOT_CENTER_2              target=0x0ADE
0ADD  13                                     INPUTLOOPEND
0ADE  09 3B 3C                               VIDEOREF                      ref=0x3C3B (MC[59]=mh_r_go.vdx)
0AE1  15 43 0B                               JMP                           target=0x0B43
0AE4  09 3D 3C                               VIDEOREF                      ref=0x3C3D (MC[61]=mh_r_tu.vdx)
0AE7  0B                                     INPUTLOOPSTART
0AE8  0E EF 0A                               HOTSPOT_LEFT                  target=0x0AEF
0AEB  0F F5 0A                               HOTSPOT_RIGHT                 target=0x0AF5
0AEE  13                                     INPUTLOOPEND
0AEF  09 36 3C                               VIDEOREF                      ref=0x3C36 (MC[54]=mh_left.vdx)
0AF2  15 15 0B                               JMP                           target=0x0B15
0AF5  09 3A 3C                               VIDEOREF                      ref=0x3C3A (MC[58]=mh_rite.vdx)
0AF8  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0AFB  18 19 00                               CALL                          target=0x0019
0AFE  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0B01  09 38 3C                               VIDEOREF                      ref=0x3C38 (MC[56]=mh_l_st.vdx)
0B04  0B                                     INPUTLOOPSTART
0B05  0E 0C 0B                               HOTSPOT_LEFT                  target=0x0B0C
0B08  11 12 0B                               HOTSPOT_CENTER_2              target=0x0B12
0B0B  13                                     INPUTLOOPEND
0B0C  09 39 3C                               VIDEOREF                      ref=0x3C39 (MC[57]=mh_l_tu.vdx)
0B0F  15 32 0B                               JMP                           target=0x0B32
0B12  09 37 3C                               VIDEOREF                      ref=0x3C37 (MC[55]=mh_l_go.vdx)
0B15  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0B18  18 19 00                               CALL                          target=0x0019
0B1B  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0B1E  09 3C 3C                               VIDEOREF                      ref=0x3C3C (MC[60]=mh_r_st.vdx)
0B21  0B                                     INPUTLOOPSTART
0B22  11 29 0B                               HOTSPOT_CENTER_2              target=0x0B29
0B25  0F 2F 0B                               HOTSPOT_RIGHT                 target=0x0B2F
0B28  13                                     INPUTLOOPEND
0B29  09 3B 3C                               VIDEOREF                      ref=0x3C3B (MC[59]=mh_r_go.vdx)
0B2C  15 F8 0A                               JMP                           target=0x0AF8
0B2F  09 3D 3C                               VIDEOREF                      ref=0x3C3D (MC[61]=mh_r_tu.vdx)
0B32  0B                                     INPUTLOOPSTART
0B33  0F 40 0B                               HOTSPOT_RIGHT                 target=0x0B40
0B36  0E 3A 0B                               HOTSPOT_LEFT                  target=0x0B3A
0B39  13                                     INPUTLOOPEND
0B3A  09 36 3C                               VIDEOREF                      ref=0x3C36 (MC[54]=mh_left.vdx)
0B3D  15 9A 0A                               JMP                           target=0x0A9A
0B40  09 3A 3C                               VIDEOREF                      ref=0x3C3A (MC[58]=mh_rite.vdx)
0B43  1E 02                                  RESERVED_1E                   reserved=0x02
0B45  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0B48  09 50 3C                               VIDEOREF                      ref=0x3C50 (MC[80]=mt_stop.vdx)
0B4B  0B                                     INPUTLOOPSTART
0B4C  0F 59 0B                               HOTSPOT_RIGHT                 target=0x0B59
0B4F  0E 53 0B                               HOTSPOT_LEFT                  target=0x0B53
0B52  13                                     INPUTLOOPEND
0B53  09 48 3C                               VIDEOREF                      ref=0x3C48 (MC[72]=mt_left.vdx)
0B56  15 20 02                               JMP                           target=0x0220
0B59  09 4C 3C                               VIDEOREF                      ref=0x3C4C (MC[76]=mt_rite.vdx)
0B5C  1E 04                                  RESERVED_1E                   reserved=0x04
0B5E  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0B61  09 4E 3C                               VIDEOREF                      ref=0x3C4E (MC[78]=mt_r_st.vdx)
0B64  0B                                     INPUTLOOPSTART
0B65  11 6C 0B                               HOTSPOT_CENTER_2              target=0x0B6C
0B68  0F 72 0B                               HOTSPOT_RIGHT                 target=0x0B72
0B6B  13                                     INPUTLOOPEND
0B6C  09 4D 3C                               VIDEOREF                      ref=0x3C4D (MC[77]=mt_r_go.vdx)
0B6F  15 C6 0B                               JMP                           target=0x0BC6
0B72  09 4F 3C                               VIDEOREF                      ref=0x3C4F (MC[79]=mt_r_tu.vdx)
0B75  1E 03                                  RESERVED_1E                   reserved=0x03
0B77  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0B7A  09 52 3C                               VIDEOREF                      ref=0x3C52 (MC[82]=mu_rite.vdx)
0B7D  1E 02                                  RESERVED_1E                   reserved=0x02
0B7F  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0B82  09 51 3C                               VIDEOREF                      ref=0x3C51 (MC[81]=mu_left.vdx)
0B85  1E 03                                  RESERVED_1E                   reserved=0x03
0B87  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0B8A  09 52 3C                               VIDEOREF                      ref=0x3C52 (MC[82]=mu_rite.vdx)
0B8D  1E 03                                  RESERVED_1E                   reserved=0x03
0B8F  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0B92  18 19 00                               CALL                          target=0x0019
0B95  1E 03                                  RESERVED_1E                   reserved=0x03
0B97  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0B9A  09 51 3C                               VIDEOREF                      ref=0x3C51 (MC[81]=mu_left.vdx)
0B9D  1E 03                                  RESERVED_1E                   reserved=0x03
0B9F  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0BA2  09 52 3C                               VIDEOREF                      ref=0x3C52 (MC[82]=mu_rite.vdx)
0BA5  1E 02                                  RESERVED_1E                   reserved=0x02
0BA7  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0BAA  09 51 3C                               VIDEOREF                      ref=0x3C51 (MC[81]=mu_left.vdx)
0BAD  1E 03                                  RESERVED_1E                   reserved=0x03
0BAF  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0BB2  09 50 3C                               VIDEOREF                      ref=0x3C50 (MC[80]=mt_stop.vdx)
0BB5  0B                                     INPUTLOOPSTART
0BB6  0F C3 0B                               HOTSPOT_RIGHT                 target=0x0BC3
0BB9  0E BD 0B                               HOTSPOT_LEFT                  target=0x0BBD
0BBC  13                                     INPUTLOOPEND
0BBD  09 48 3C                               VIDEOREF                      ref=0x3C48 (MC[72]=mt_left.vdx)
0BC0  15 07 02                               JMP                           target=0x0207
0BC3  09 4C 3C                               VIDEOREF                      ref=0x3C4C (MC[76]=mt_rite.vdx)
0BC6  1E 02                                  RESERVED_1E                   reserved=0x02
0BC8  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0BCB  09 4A 3C                               VIDEOREF                      ref=0x3C4A (MC[74]=mt_l_st.vdx)
0BCE  0B                                     INPUTLOOPSTART
0BCF  11 DC 0B                               HOTSPOT_CENTER_2              target=0x0BDC
0BD2  0E D6 0B                               HOTSPOT_LEFT                  target=0x0BD6
0BD5  13                                     INPUTLOOPEND
0BD6  09 4B 3C                               VIDEOREF                      ref=0x3C4B (MC[75]=mt_l_tu.vdx)
0BD9  15 45 01                               JMP                           target=0x0145
0BDC  09 49 3C                               VIDEOREF                      ref=0x3C49 (MC[73]=mt_l_go.vdx)
0BDF  09 4E 3C                               VIDEOREF                      ref=0x3C4E (MC[78]=mt_r_st.vdx)
0BE2  0B                                     INPUTLOOPSTART
0BE3  11 EA 0B                               HOTSPOT_CENTER_2              target=0x0BEA
0BE6  0F F0 0B                               HOTSPOT_RIGHT                 target=0x0BF0
0BE9  13                                     INPUTLOOPEND
0BEA  09 4D 3C                               VIDEOREF                      ref=0x3C4D (MC[77]=mt_r_go.vdx)
0BED  15 2C 0C                               JMP                           target=0x0C2C
0BF0  09 4F 3C                               VIDEOREF                      ref=0x3C4F (MC[79]=mt_r_tu.vdx)
0BF3  1E 02                                  RESERVED_1E                   reserved=0x02
0BF5  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0BF8  09 52 3C                               VIDEOREF                      ref=0x3C52 (MC[82]=mu_rite.vdx)
0BFB  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0BFE  09 51 3C                               VIDEOREF                      ref=0x3C51 (MC[81]=mu_left.vdx)
0C01  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0C04  18 19 00                               CALL                          target=0x0019
0C07  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0C0A  09 52 3C                               VIDEOREF                      ref=0x3C52 (MC[82]=mu_rite.vdx)
0C0D  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0C10  09 51 3C                               VIDEOREF                      ref=0x3C51 (MC[81]=mu_left.vdx)
0C13  1E 02                                  RESERVED_1E                   reserved=0x02
0C15  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0C18  09 50 3C                               VIDEOREF                      ref=0x3C50 (MC[80]=mt_stop.vdx)
0C1B  0B                                     INPUTLOOPSTART
0C1C  0E 23 0C                               HOTSPOT_LEFT                  target=0x0C23
0C1F  0F 29 0C                               HOTSPOT_RIGHT                 target=0x0C29
0C22  13                                     INPUTLOOPEND
0C23  09 48 3C                               VIDEOREF                      ref=0x3C48 (MC[72]=mt_left.vdx)
0C26  15 31 01                               JMP                           target=0x0131
0C29  09 4C 3C                               VIDEOREF                      ref=0x3C4C (MC[76]=mt_rite.vdx)
0C2C  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0C2F  09 4A 3C                               VIDEOREF                      ref=0x3C4A (MC[74]=mt_l_st.vdx)
0C32  0B                                     INPUTLOOPSTART
0C33  11 40 0C                               HOTSPOT_CENTER_2              target=0x0C40
0C36  0E 3A 0C                               HOTSPOT_LEFT                  target=0x0C3A
0C39  13                                     INPUTLOOPEND
0C3A  09 4B 3C                               VIDEOREF                      ref=0x3C4B (MC[75]=mt_l_tu.vdx)
0C3D  15 70 00                               JMP                           target=0x0070
0C40  09 49 3C                               VIDEOREF                      ref=0x3C49 (MC[73]=mt_l_go.vdx)
0C43  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0C46  09 4E 3C                               VIDEOREF                      ref=0x3C4E (MC[78]=mt_r_st.vdx)
0C49  0B                                     INPUTLOOPSTART
0C4A  0F 57 0C                               HOTSPOT_RIGHT                 target=0x0C57
0C4D  11 51 0C                               HOTSPOT_CENTER_2              target=0x0C51
0C50  13                                     INPUTLOOPEND
0C51  09 4D 3C                               VIDEOREF                      ref=0x3C4D (MC[77]=mt_r_go.vdx)
0C54  15 12 0E                               JMP                           target=0x0E12
0C57  09 4F 3C                               VIDEOREF                      ref=0x3C4F (MC[79]=mt_r_tu.vdx)
0C5A  1E 02                                  RESERVED_1E                   reserved=0x02
0C5C  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0C5F  09 52 3C                               VIDEOREF                      ref=0x3C52 (MC[82]=mu_rite.vdx)
0C62  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0C65  09 51 3C                               VIDEOREF                      ref=0x3C51 (MC[81]=mu_left.vdx)
0C68  09 3C 3C                               VIDEOREF                      ref=0x3C3C (MC[60]=mh_r_st.vdx)
0C6B  0B                                     INPUTLOOPSTART
0C6C  0F 79 0C                               HOTSPOT_RIGHT                 target=0x0C79
0C6F  11 73 0C                               HOTSPOT_CENTER_2              target=0x0C73
0C72  13                                     INPUTLOOPEND
0C73  09 3B 3C                               VIDEOREF                      ref=0x3C3B (MC[59]=mh_r_go.vdx)
0C76  15 D9 0D                               JMP                           target=0x0DD9
0C79  09 3D 3C                               VIDEOREF                      ref=0x3C3D (MC[61]=mh_r_tu.vdx)
0C7C  0B                                     INPUTLOOPSTART
0C7D  0F 8A 0C                               HOTSPOT_RIGHT                 target=0x0C8A
0C80  0E 84 0C                               HOTSPOT_LEFT                  target=0x0C84
0C83  13                                     INPUTLOOPEND
0C84  09 36 3C                               VIDEOREF                      ref=0x3C36 (MC[54]=mh_left.vdx)
0C87  15 A4 0C                               JMP                           target=0x0CA4
0C8A  09 3A 3C                               VIDEOREF                      ref=0x3C3A (MC[58]=mh_rite.vdx)
0C8D  18 19 00                               CALL                          target=0x0019
0C90  09 38 3C                               VIDEOREF                      ref=0x3C38 (MC[56]=mh_l_st.vdx)
0C93  0B                                     INPUTLOOPSTART
0C94  0E 9B 0C                               HOTSPOT_LEFT                  target=0x0C9B
0C97  11 A1 0C                               HOTSPOT_CENTER_2              target=0x0CA1
0C9A  13                                     INPUTLOOPEND
0C9B  09 39 3C                               VIDEOREF                      ref=0x3C39 (MC[57]=mh_l_tu.vdx)
0C9E  15 C8 0D                               JMP                           target=0x0DC8
0CA1  09 37 3C                               VIDEOREF                      ref=0x3C37 (MC[55]=mh_l_go.vdx)
0CA4  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0CA7  09 50 3C                               VIDEOREF                      ref=0x3C50 (MC[80]=mt_stop.vdx)
0CAA  0B                                     INPUTLOOPSTART
0CAB  0F B8 0C                               HOTSPOT_RIGHT                 target=0x0CB8
0CAE  0E B2 0C                               HOTSPOT_LEFT                  target=0x0CB2
0CB1  13                                     INPUTLOOPEND
0CB2  09 48 3C                               VIDEOREF                      ref=0x3C48 (MC[72]=mt_left.vdx)
0CB5  15 90 0D                               JMP                           target=0x0D90
0CB8  09 4C 3C                               VIDEOREF                      ref=0x3C4C (MC[76]=mt_rite.vdx)
0CBB  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0CBE  09 38 3C                               VIDEOREF                      ref=0x3C38 (MC[56]=mh_l_st.vdx)
0CC1  0B                                     INPUTLOOPSTART
0CC2  11 CF 0C                               HOTSPOT_CENTER_2              target=0x0CCF
0CC5  0E C9 0C                               HOTSPOT_LEFT                  target=0x0CC9
0CC8  13                                     INPUTLOOPEND
0CC9  09 39 3C                               VIDEOREF                      ref=0x3C39 (MC[57]=mh_l_tu.vdx)
0CCC  15 E9 0C                               JMP                           target=0x0CE9
0CCF  09 37 3C                               VIDEOREF                      ref=0x3C37 (MC[55]=mh_l_go.vdx)
0CD2  18 19 00                               CALL                          target=0x0019
0CD5  09 3C 3C                               VIDEOREF                      ref=0x3C3C (MC[60]=mh_r_st.vdx)
0CD8  0B                                     INPUTLOOPSTART
0CD9  0F E6 0C                               HOTSPOT_RIGHT                 target=0x0CE6
0CDC  11 E0 0C                               HOTSPOT_CENTER_2              target=0x0CE0
0CDF  13                                     INPUTLOOPEND
0CE0  09 3B 3C                               VIDEOREF                      ref=0x3C3B (MC[59]=mh_r_go.vdx)
0CE3  15 79 0D                               JMP                           target=0x0D79
0CE6  09 3D 3C                               VIDEOREF                      ref=0x3C3D (MC[61]=mh_r_tu.vdx)
0CE9  0B                                     INPUTLOOPSTART
0CEA  0F F7 0C                               HOTSPOT_RIGHT                 target=0x0CF7
0CED  0E F1 0C                               HOTSPOT_LEFT                  target=0x0CF1
0CF0  13                                     INPUTLOOPEND
0CF1  09 36 3C                               VIDEOREF                      ref=0x3C36 (MC[54]=mh_left.vdx)
0CF4  15 27 0D                               JMP                           target=0x0D27
0CF7  09 3A 3C                               VIDEOREF                      ref=0x3C3A (MC[58]=mh_rite.vdx)
0CFA  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0CFD  09 2B 3C                               VIDEOREF                      ref=0x3C2B (MC[43]=mc_rite.vdx)
0D00  1E 03                                  RESERVED_1E                   reserved=0x03
0D02  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0D05  18 19 00                               CALL                          target=0x0019
0D08  1E 03                                  RESERVED_1E                   reserved=0x03
0D0A  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0D0D  09 2A 3C                               VIDEOREF                      ref=0x3C2A (MC[42]=mc_left.vdx)
0D10  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0D13  09 38 3C                               VIDEOREF                      ref=0x3C38 (MC[56]=mh_l_st.vdx)
0D16  0B                                     INPUTLOOPSTART
0D17  0E 1E 0D                               HOTSPOT_LEFT                  target=0x0D1E
0D1A  11 24 0D                               HOTSPOT_CENTER_2              target=0x0D24
0D1D  13                                     INPUTLOOPEND
0D1E  09 39 3C                               VIDEOREF                      ref=0x3C39 (MC[57]=mh_l_tu.vdx)
0D21  15 68 0D                               JMP                           target=0x0D68
0D24  09 37 3C                               VIDEOREF                      ref=0x3C37 (MC[55]=mh_l_go.vdx)
0D27  1E 04                                  RESERVED_1E                   reserved=0x04
0D29  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0D2C  09 52 3C                               VIDEOREF                      ref=0x3C52 (MC[82]=mu_rite.vdx)
0D2F  1E 10                                  RESERVED_1E                   reserved=0x10
0D31  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0D34  09 2B 3C                               VIDEOREF                      ref=0x3C2B (MC[43]=mc_rite.vdx)
0D37  1E 04                                  RESERVED_1E                   reserved=0x04
0D39  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0D3C  18 19 00                               CALL                          target=0x0019
0D3F  1E 04                                  RESERVED_1E                   reserved=0x04
0D41  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0D44  09 2A 3C                               VIDEOREF                      ref=0x3C2A (MC[42]=mc_left.vdx)
0D47  1E 10                                  RESERVED_1E                   reserved=0x10
0D49  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0D4C  09 51 3C                               VIDEOREF                      ref=0x3C51 (MC[81]=mu_left.vdx)
0D4F  1E 04                                  RESERVED_1E                   reserved=0x04
0D51  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0D54  09 3C 3C                               VIDEOREF                      ref=0x3C3C (MC[60]=mh_r_st.vdx)
0D57  0B                                     INPUTLOOPSTART
0D58  11 5F 0D                               HOTSPOT_CENTER_2              target=0x0D5F
0D5B  0F 65 0D                               HOTSPOT_RIGHT                 target=0x0D65
0D5E  13                                     INPUTLOOPEND
0D5F  09 3B 3C                               VIDEOREF                      ref=0x3C3B (MC[59]=mh_r_go.vdx)
0D62  15 FA 0C                               JMP                           target=0x0CFA
0D65  09 3D 3C                               VIDEOREF                      ref=0x3C3D (MC[61]=mh_r_tu.vdx)
0D68  0B                                     INPUTLOOPSTART
0D69  0E 70 0D                               HOTSPOT_LEFT                  target=0x0D70
0D6C  0F 76 0D                               HOTSPOT_RIGHT                 target=0x0D76
0D6F  13                                     INPUTLOOPEND
0D70  09 36 3C                               VIDEOREF                      ref=0x3C36 (MC[54]=mh_left.vdx)
0D73  15 D2 0C                               JMP                           target=0x0CD2
0D76  09 3A 3C                               VIDEOREF                      ref=0x3C3A (MC[58]=mh_rite.vdx)
0D79  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0D7C  09 4A 3C                               VIDEOREF                      ref=0x3C4A (MC[74]=mt_l_st.vdx)
0D7F  0B                                     INPUTLOOPSTART
0D80  11 8D 0D                               HOTSPOT_CENTER_2              target=0x0D8D
0D83  0E 87 0D                               HOTSPOT_LEFT                  target=0x0D87
0D86  13                                     INPUTLOOPEND
0D87  09 4B 3C                               VIDEOREF                      ref=0x3C4B (MC[75]=mt_l_tu.vdx)
0D8A  15 B1 0D                               JMP                           target=0x0DB1
0D8D  09 49 3C                               VIDEOREF                      ref=0x3C49 (MC[73]=mt_l_go.vdx)
0D90  1E 02                                  RESERVED_1E                   reserved=0x02
0D92  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0D95  18 19 00                               CALL                          target=0x0019
0D98  1E 02                                  RESERVED_1E                   reserved=0x02
0D9A  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0D9D  09 4E 3C                               VIDEOREF                      ref=0x3C4E (MC[78]=mt_r_st.vdx)
0DA0  0B                                     INPUTLOOPSTART
0DA1  0F AE 0D                               HOTSPOT_RIGHT                 target=0x0DAE
0DA4  11 A8 0D                               HOTSPOT_CENTER_2              target=0x0DA8
0DA7  13                                     INPUTLOOPEND
0DA8  09 4D 3C                               VIDEOREF                      ref=0x3C4D (MC[77]=mt_r_go.vdx)
0DAB  15 BB 0C                               JMP                           target=0x0CBB
0DAE  09 4F 3C                               VIDEOREF                      ref=0x3C4F (MC[79]=mt_r_tu.vdx)
0DB1  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0DB4  09 3C 3C                               VIDEOREF                      ref=0x3C3C (MC[60]=mh_r_st.vdx)
0DB7  0B                                     INPUTLOOPSTART
0DB8  11 BF 0D                               HOTSPOT_CENTER_2              target=0x0DBF
0DBB  0F C5 0D                               HOTSPOT_RIGHT                 target=0x0DC5
0DBE  13                                     INPUTLOOPEND
0DBF  09 3B 3C                               VIDEOREF                      ref=0x3C3B (MC[59]=mh_r_go.vdx)
0DC2  15 8D 0C                               JMP                           target=0x0C8D
0DC5  09 3D 3C                               VIDEOREF                      ref=0x3C3D (MC[61]=mh_r_tu.vdx)
0DC8  0B                                     INPUTLOOPSTART
0DC9  0E D0 0D                               HOTSPOT_LEFT                  target=0x0DD0
0DCC  0F D6 0D                               HOTSPOT_RIGHT                 target=0x0DD6
0DCF  13                                     INPUTLOOPEND
0DD0  09 36 3C                               VIDEOREF                      ref=0x3C36 (MC[54]=mh_left.vdx)
0DD3  15 F0 0D                               JMP                           target=0x0DF0
0DD6  09 3A 3C                               VIDEOREF                      ref=0x3C3A (MC[58]=mh_rite.vdx)
0DD9  18 19 00                               CALL                          target=0x0019
0DDC  09 38 3C                               VIDEOREF                      ref=0x3C38 (MC[56]=mh_l_st.vdx)
0DDF  0B                                     INPUTLOOPSTART
0DE0  0E E7 0D                               HOTSPOT_LEFT                  target=0x0DE7
0DE3  11 ED 0D                               HOTSPOT_CENTER_2              target=0x0DED
0DE6  13                                     INPUTLOOPEND
0DE7  09 39 3C                               VIDEOREF                      ref=0x3C39 (MC[57]=mh_l_tu.vdx)
0DEA  15 7C 0C                               JMP                           target=0x0C7C
0DED  09 37 3C                               VIDEOREF                      ref=0x3C37 (MC[55]=mh_l_go.vdx)
0DF0  09 52 3C                               VIDEOREF                      ref=0x3C52 (MC[82]=mu_rite.vdx)
0DF3  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0DF6  09 51 3C                               VIDEOREF                      ref=0x3C51 (MC[81]=mu_left.vdx)
0DF9  1E 02                                  RESERVED_1E                   reserved=0x02
0DFB  09 47 3C                               VIDEOREF                      ref=0x3C47 (MC[71]=ms.vdx)
0DFE  09 50 3C                               VIDEOREF                      ref=0x3C50 (MC[80]=mt_stop.vdx)
0E01  0B                                     INPUTLOOPSTART
0E02  0F 0F 0E                               HOTSPOT_RIGHT                 target=0x0E0F
0E05  0E 09 0E                               HOTSPOT_LEFT                  target=0x0E09
0E08  13                                     INPUTLOOPEND
0E09  09 48 3C                               VIDEOREF                      ref=0x3C48 (MC[72]=mt_left.vdx)
0E0C  15 59 00                               JMP                           target=0x0059
0E0F  09 4C 3C                               VIDEOREF                      ref=0x3C4C (MC[76]=mt_rite.vdx)
0E12  09 30 3C                               VIDEOREF                      ref=0x3C30 (MC[48]=mg_exit.vdx)
0E15  0B                                     INPUTLOOPSTART
0E16  0E 1D 0E                               HOTSPOT_LEFT                  target=0x0E1D
0E19  11 23 0E                               HOTSPOT_CENTER_2              target=0x0E23
0E1C  13                                     INPUTLOOPEND
0E1D  09 2F 3C                               VIDEOREF                      ref=0x3C2F (MC[47]=mg_exin.vdx)
0E20  15 3B 00                               JMP                           target=0x003B
0E23  09 31 3C                               VIDEOREF                      ref=0x3C31 (MC[49]=mg_exout.vdx)
0E26  96 8C 30 B4                            LOADSTRING                    dst=v[0x08C], values=[0, 4]
0E2A  08 35 4C                               SETBACKGROUNDSONG             ref=0x4C35 (XMI[53]=gu56.xmi)
0E2D  43 02                                  RETURNSCRIPT                  value=0x02
0E2F  08 35 4C                               SETBACKGROUNDSONG             ref=0x4C35 (XMI[53]=gu56.xmi)
0E32  43 01                                  RETURNSCRIPT                  value=0x01
0E34  0A                                     VIDEOFLAG5_ON
0E35  07                                     VIDEOFLAG7_ON
0E36  09 01 24                               VIDEOREF                      ref=0x2401 (INTRO[1]=fade.vdx)
0E39  37 00 00 50 00 7F 02 8F 01             COPY_RECT_TO_BG               left=0x0000, top=0x0050, right=0x027F, bottom=0x018F
0E42  17 00                                  RET                           value=0x00
