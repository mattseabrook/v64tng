; T7G/DEMO.GRV
; size=466 sha256=593591c78656084882ea688bb711cc0c4420ccef6c214482556f9545a5281444
; instructions=169 input_loops=0

0000  01                                     RESERVED_01
0001  1A 00 01 B1 0E 00                      STRCMP_NE_JMP                 start=v[0x100], values=[1], target=0x000E
0007  02 46 4C                               PLAYSONG                      ref=0x4C46 (XMI[70]=ini_sc.xmi)
000A  09 03 1C                               VIDEOREF                      ref=0x1C03 (HDISK[3]=tripro.vdx)
000D  29                                     STOP_OR_WAIT_MIDI
000E  1A 00 01 B2 18 00                      STRCMP_NE_JMP                 start=v[0x100], values=[2], target=0x0018
0014  02 45 4C                               PLAYSONG                      ref=0x4C45 (XMI[69]=ini_mt_o.xmi)
0017  29                                     STOP_OR_WAIT_MIDI
0018  1A 00 01 B0 24 00                      STRCMP_NE_JMP                 start=v[0x100], values=[0], target=0x0024
001E  08 0C 4C                               SETBACKGROUNDSONG             ref=0x4C0C (XMI[12]=gu16.xmi)
0021  15 27 00                               JMP                           target=0x0027
0024  08 00 4C                               SETBACKGROUNDSONG             ref=0x4C00 (XMI[0]=agu16.xmi)
0027  1A 00 01 B1 33 00                      STRCMP_NE_JMP                 start=v[0x100], values=[1], target=0x0033
002D  02 24 4C                               PLAYSONG                      ref=0x4C24 (XMI[36]=gu39.xmi)
0030  15 36 00                               JMP                           target=0x0036
0033  02 35 4C                               PLAYSONG                      ref=0x4C35 (XMI[53]=gu56.xmi)
0036  03                                     FADEIN_NEXT_VIDEO
0037  19 90 01                               SLEEP                         ticks=0x0190
003A  09 04 1C                               VIDEOREF                      ref=0x1C04 (HDISK[4]=vlogo.vdx)
003D  19 C8 00                               SLEEP                         ticks=0x00C8
0040  19 C8 00                               SLEEP                         ticks=0x00C8
0043  19 C8 00                               SLEEP                         ticks=0x00C8
0046  04                                     PALFADEOUT
0047  03                                     FADEIN_NEXT_VIDEO
0048  09 03 1C                               VIDEOREF                      ref=0x1C03 (HDISK[3]=tripro.vdx)
004B  19 2C 01                               SLEEP                         ticks=0x012C
004E  19 2C 01                               SLEEP                         ticks=0x012C
0051  04                                     PALFADEOUT
0052  03                                     FADEIN_NEXT_VIDEO
0053  09 02 1C                               VIDEOREF                      ref=0x1C02 (HDISK[2]=title.vdx)
0056  19 C8 00                               SLEEP                         ticks=0x00C8
0059  02 42 4C                               PLAYSONG                      ref=0x4C42 (XMI[66]=gu74.xmi)
005C  09 02 24                               VIDEOREF                      ref=0x2402 (INTRO[2]=o1pa.vdx)
005F  06                                     VIDEOFLAG6_ON
0060  09 03 24                               VIDEOREF                      ref=0x2403 (INTRO[3]=o1tu.vdx)
0063  02 3F 4C                               PLAYSONG                      ref=0x4C3F (XMI[63]=gu71.xmi)
0066  19 C8 00                               SLEEP                         ticks=0x00C8
0069  09 04 24                               VIDEOREF                      ref=0x2404 (INTRO[4]=o3pa.vdx)
006C  19 C8 00                               SLEEP                         ticks=0x00C8
006F  06                                     VIDEOFLAG6_ON
0070  09 05 24                               VIDEOREF                      ref=0x2405 (INTRO[5]=o3tu.vdx)
0073  19 C8 00                               SLEEP                         ticks=0x00C8
0076  09 06 24                               VIDEOREF                      ref=0x2406 (INTRO[6]=o4pa.vdx)
0079  19 C8 00                               SLEEP                         ticks=0x00C8
007C  06                                     VIDEOFLAG6_ON
007D  09 07 24                               VIDEOREF                      ref=0x2407 (INTRO[7]=o4tu.vdx)
0080  19 C8 00                               SLEEP                         ticks=0x00C8
0083  09 08 24                               VIDEOREF                      ref=0x2408 (INTRO[8]=o5pa.vdx)
0086  19 C8 00                               SLEEP                         ticks=0x00C8
0089  06                                     VIDEOFLAG6_ON
008A  31 00 00 C4 09                         MIDI_CONTROL                  value=0x0000, time=0x09C4
008F  02 40 4C                               PLAYSONG                      ref=0x4C40 (XMI[64]=gu72.xmi)
0092  09 09 24                               VIDEOREF                      ref=0x2409 (INTRO[9]=o5tu.vdx)
0095  19 C8 00                               SLEEP                         ticks=0x00C8
0098  09 0A 24                               VIDEOREF                      ref=0x240A (INTRO[10]=o6pa.vdx)
009B  19 2C 01                               SLEEP                         ticks=0x012C
009E  06                                     VIDEOFLAG6_ON
009F  09 0B 24                               VIDEOREF                      ref=0x240B (INTRO[11]=o6tu.vdx)
00A2  19 2C 01                               SLEEP                         ticks=0x012C
00A5  09 0C 24                               VIDEOREF                      ref=0x240C (INTRO[12]=o7pa.vdx)
00A8  19 64 00                               SLEEP                         ticks=0x0064
00AB  06                                     VIDEOFLAG6_ON
00AC  09 0D 24                               VIDEOREF                      ref=0x240D (INTRO[13]=o7tu.vdx)
00AF  19 64 00                               SLEEP                         ticks=0x0064
00B2  02 41 4C                               PLAYSONG                      ref=0x4C41 (XMI[65]=gu73.xmi)
00B5  09 0E 24                               VIDEOREF                      ref=0x240E (INTRO[14]=o8pa.vdx)
00B8  19 64 00                               SLEEP                         ticks=0x0064
00BB  06                                     VIDEOFLAG6_ON
00BC  09 0F 24                               VIDEOREF                      ref=0x240F (INTRO[15]=o8tu.vdx)
00BF  19 64 00                               SLEEP                         ticks=0x0064
00C2  09 10 24                               VIDEOREF                      ref=0x2410 (INTRO[16]=o9pa.vdx)
00C5  19 64 00                               SLEEP                         ticks=0x0064
00C8  06                                     VIDEOFLAG6_ON
00C9  09 11 24                               VIDEOREF                      ref=0x2411 (INTRO[17]=o9tu.vdx)
00CC  19 64 00                               SLEEP                         ticks=0x0064
00CF  09 12 24                               VIDEOREF                      ref=0x2412 (INTRO[18]=o10pa.vdx)
00D2  19 64 00                               SLEEP                         ticks=0x0064
00D5  06                                     VIDEOFLAG6_ON
00D6  09 13 24                               VIDEOREF                      ref=0x2413 (INTRO[19]=o10tu.vdx)
00D9  19 C8 00                               SLEEP                         ticks=0x00C8
00DC  09 14 24                               VIDEOREF                      ref=0x2414 (INTRO[20]=o12pa.vdx)
00DF  19 64 00                               SLEEP                         ticks=0x0064
00E2  06                                     VIDEOFLAG6_ON
00E3  09 36 34                               VIDEOREF                      ref=0x3436 (LI[54]=l_in.vdx)
00E6  03                                     FADEIN_NEXT_VIDEO
00E7  09 41 14                               VIDEOREF                      ref=0x1441 (FH[65]=f_5ba.vdx)
00EA  09 15 14                               VIDEOREF                      ref=0x1415 (FH[21]=f5_1.vdx)
00ED  19 FF 00                               SLEEP                         ticks=0x00FF
00F0  09 00 14                               VIDEOREF                      ref=0x1400 (FH[0]=f1_.vdx)
00F3  09 25 14                               VIDEOREF                      ref=0x1425 (FH[37]=f_1fa.vdx)
00F6  09 26 14                               VIDEOREF                      ref=0x1426 (FH[38]=f_1fb.vdx)
00F9  09 01 14                               VIDEOREF                      ref=0x1401 (FH[1]=f1_2.vdx)
00FC  09 0C 14                               VIDEOREF                      ref=0x140C (FH[12]=f2_d.vdx)
00FF  02 1F 4C                               PLAYSONG                      ref=0x4C1F (XMI[31]=gu34.xmi)
0102  09 5F 10                               VIDEOREF                      ref=0x105F (DR[95]=dr_mi.vdx)
0105  09 63 10                               VIDEOREF                      ref=0x1063 (DR[99]=dr_r.vdx)
0108  02 10 4C                               PLAYSONG                      ref=0x4C10 (XMI[16]=gu19.xmi)
010B  09 07 10                               VIDEOREF                      ref=0x1007 (DR[7]=dr1_0.vdx)
010E  02 0A 4C                               PLAYSONG                      ref=0x4C0A (XMI[10]=gu12.xmi)
0111  09 69 10                               VIDEOREF                      ref=0x1069 (DR[105]=dr_v.vdx)
0114  09 6A 10                               VIDEOREF                      ref=0x106A (DR[106]=dr_vb.vdx)
0117  02 07 4C                               PLAYSONG                      ref=0x4C07 (XMI[7]=gu9.xmi)
011A  09 0B 10                               VIDEOREF                      ref=0x100B (DR[11]=dr2_.vdx)
011D  02 3A 4C                               PLAYSONG                      ref=0x4C3A (XMI[58]=gu63.xmi)
0120  09 62 10                               VIDEOREF                      ref=0x1062 (DR[98]=dr_mtf.vdx)
0123  09 60 10                               VIDEOREF                      ref=0x1060 (DR[96]=dr_mo.vdx)
0126  09 5E 10                               VIDEOREF                      ref=0x105E (DR[94]=dr_d.vdx)
0129  02 35 4C                               PLAYSONG                      ref=0x4C35 (XMI[53]=gu56.xmi)
012C  03                                     FADEIN_NEXT_VIDEO
012D  09 2B 14                               VIDEOREF                      ref=0x142B (FH[43]=f_2bc.vdx)
0130  09 0B 14                               VIDEOREF                      ref=0x140B (FH[11]=f2_3.vdx)
0133  09 12 14                               VIDEOREF                      ref=0x1412 (FH[18]=f3_d.vdx)
0136  02 20 4C                               PLAYSONG                      ref=0x4C20 (XMI[32]=gu35.xmi)
0139  03                                     FADEIN_NEXT_VIDEO
013A  05                                     FIRSTFRAME_NEXT_VIDEO
013B  09 00 2C                               VIDEOREF                      ref=0x2C00 (K[0]=k1_2.vdx)
013E  02 06 4C                               PLAYSONG                      ref=0x4C06 (XMI[6]=gu8.xmi)
0141  09 07 2C                               VIDEOREF                      ref=0x2C07 (K[7]=k3_.vdx)
0144  09 00 2C                               VIDEOREF                      ref=0x2C00 (K[0]=k1_2.vdx)
0147  09 17 2C                               VIDEOREF                      ref=0x2C17 (K[23]=k_2fd.vdx)
014A  09 14 2C                               VIDEOREF                      ref=0x2C14 (K[20]=k_2fa.vdx)
014D  1A 00 01 B0 59 01                      STRCMP_NE_JMP                 start=v[0x100], values=[0], target=0x0159
0153  02 02 4C                               PLAYSONG                      ref=0x4C02 (XMI[2]=agu38.xmi)
0156  15 5C 01                               JMP                           target=0x015C
0159  02 23 4C                               PLAYSONG                      ref=0x4C23 (XMI[35]=gu38.xmi)
015C  09 06 2C                               VIDEOREF                      ref=0x2C06 (K[6]=k2_7f.vdx)
015F  09 0B 2C                               VIDEOREF                      ref=0x2C0B (K[11]=k7_.vdx)
0162  09 05 2C                               VIDEOREF                      ref=0x2C05 (K[5]=k2_7b.vdx)
0165  29                                     STOP_OR_WAIT_MIDI
0166  1A 00 01 B0 72 01                      STRCMP_NE_JMP                 start=v[0x100], values=[0], target=0x0172
016C  02 00 4C                               PLAYSONG                      ref=0x4C00 (XMI[0]=agu16.xmi)
016F  15 75 01                               JMP                           target=0x0175
0172  02 0C 4C                               PLAYSONG                      ref=0x4C0C (XMI[12]=gu16.xmi)
0175  09 10 2C                               VIDEOREF                      ref=0x2C10 (K[16]=k_2ba.vdx)
0178  09 04 2C                               VIDEOREF                      ref=0x2C04 (K[4]=k2_5.vdx)
017B  04                                     PALFADEOUT
017C  02 29 4C                               PLAYSONG                      ref=0x4C29 (XMI[41]=gu44.xmi)
017F  03                                     FADEIN_NEXT_VIDEO
0180  09 00 34                               VIDEOREF                      ref=0x3400 (LI[0]=l1_2.vdx)
0183  09 07 34                               VIDEOREF                      ref=0x3407 (LI[7]=l2_3f.vdx)
0186  09 06 34                               VIDEOREF                      ref=0x3406 (LI[6]=l2_3b.vdx)
0189  09 27 34                               VIDEOREF                      ref=0x3427 (LI[39]=li_suck.vdx)
018C  02 28 4C                               PLAYSONG                      ref=0x4C28 (XMI[40]=gu43.xmi)
018F  09 2F 34                               VIDEOREF                      ref=0x342F (LI[47]=l_2bd.vdx)
0192  02 27 4C                               PLAYSONG                      ref=0x4C27 (XMI[39]=gu42.xmi)
0195  09 0D 34                               VIDEOREF                      ref=0x340D (LI[13]=lipoem.vdx)
0198  02 3B 4C                               PLAYSONG                      ref=0x4C3B (XMI[59]=gu67.xmi)
019B  09 33 34                               VIDEOREF                      ref=0x3433 (LI[51]=l_2fd.vdx)
019E  09 30 34                               VIDEOREF                      ref=0x3430 (LI[48]=l_2fa.vdx)
01A1  09 08 34                               VIDEOREF                      ref=0x3408 (LI[8]=l2_f.vdx)
01A4  1A 00 01 B0 B0 01                      STRCMP_NE_JMP                 start=v[0x100], values=[0], target=0x01B0
01AA  02 00 4C                               PLAYSONG                      ref=0x4C00 (XMI[0]=agu16.xmi)
01AD  15 B3 01                               JMP                           target=0x01B3
01B0  02 0C 4C                               PLAYSONG                      ref=0x4C0C (XMI[12]=gu16.xmi)
01B3  03                                     FADEIN_NEXT_VIDEO
01B4  09 04 04                               VIDEOREF                      ref=0x0404 (B[4]=b4_1.vdx)
01B7  09 05 04                               VIDEOREF                      ref=0x0405 (B[5]=b_1ab.vdx)
01BA  09 03 04                               VIDEOREF                      ref=0x0403 (B[3]=b1_s.vdx)
01BD  09 0A 04                               VIDEOREF                      ref=0x040A (B[10]=b_drain.vdx)
01C0  29                                     STOP_OR_WAIT_MIDI
01C1  09 03 1C                               VIDEOREF                      ref=0x1C03 (HDISK[3]=tripro.vdx)
01C4  04                                     PALFADEOUT
01C5  03                                     FADEIN_NEXT_VIDEO
01C6  09 29 48                               VIDEOREF                      ref=0x4829 (P[41]=psta.vdx)
01C9  04                                     PALFADEOUT
01CA  03                                     FADEIN_NEXT_VIDEO
01CB  09 9D 14                               VIDEOREF                      ref=0x149D (FH[157]=h_ghost1.vdx)
01CE  04                                     PALFADEOUT
01CF  15 00 00                               JMP                           target=0x0000
