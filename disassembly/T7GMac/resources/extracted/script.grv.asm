; script.grv
; size=17191 instructions=4733 input_loops=124

0000  38                                     RESTORESTACK                  
0001  01                                     RESERVED_01                   
0002  18 F1 02                               CALL                          target=0x02F1
0005  31 63 00 00 00                         MIDI_CONTROL                  value=0x0063, time=0x0000
000A  4A 50 00                               MIDI_DRIVER_PARAM             value=0x0050
000D  16 07 01 E1                            LOADSTRING                    dst=v[0x107], values=[49]
0011  16 08 01 B0                            LOADSTRING                    dst=v[0x108], values=[0]
0015  3D                                     RESETVARS                     
0016  16 09 01 B0                            LOADSTRING                    dst=v[0x109], values=[0]
001A  02 39 4C                               PLAYSONG                      ref=0x4C39 (XMI[57]=?)
001D  1A 00 01 B0 29 00                      STRCMP_NE_JMP                 start=v[0x100], values=[0], target=0x0029
0023  08 0C 4C                               SETBACKGROUNDSONG             ref=0x4C0C (XMI[12]=?)
0026  15 2C 00                               JMP                           target=0x002C
0029  08 00 4C                               SETBACKGROUNDSONG             ref=0x4C00 (XMI[0]=?)
002C  23 05 01 B0 38 00                      STRCMP_EQ_JMP                 start=v[0x105], values=[0], target=0x0038
0032  4B 00                                  SET_VIDEO_MODE                value=0x00
0034  16 09 01 B1                            LOADSTRING                    dst=v[0x109], values=[1]
0038  18 67 03                               CALL                          target=0x0367
003B  09 18 24                               VIDEOREF                      ref=0x2418 (INTRO[24]=?)
003E  0A                                     VIDEOFLAG5_ON                 
003F  09 1F 24                               VIDEOREF                      ref=0x241F (INTRO[31]=?)
0042  0A                                     VIDEOFLAG5_ON                 
0043  09 25 24                               VIDEOREF                      ref=0x2425 (INTRO[37]=?)
0046  3C                                     CHECK_VALID_SAVES             
0047  07                                     VIDEOFLAG7_ON                 
0048  46                                     RESOURCE_CONTEXT_SAVE         
0049  1A 04 01 B0 55 00                      STRCMP_NE_JMP                 start=v[0x104], values=[0], target=0x0055
004F  09 A9 50                               VIDEOREF                      ref=0x50A9 (GAMWAV[169]=?)
0052  15 58 00                               JMP                           target=0x0058
0055  09 AA 50                               VIDEOREF                      ref=0x50AA (GAMWAV[170]=?)
0058  47                                     RESOURCE_CONTEXT_RESTORE      
0059  0B                                     INPUTLOOPSTART                
005A  1A 07 01 E1 64 00                      STRCMP_NE_JMP                 start=v[0x107], values=[49], target=0x0064
0060  0C 5A 65 01                            KEYACTION                     key=0x5A, target=0x0165
0064  1A 07 01 E2 6E 00                      STRCMP_NE_JMP                 start=v[0x107], values=[50], target=0x006E
006A  0C 61 65 01                            KEYACTION                     key=0x61, target=0x0165
006E  1A 07 01 E3 78 00                      STRCMP_NE_JMP                 start=v[0x107], values=[51], target=0x0078
0074  0C 70 65 01                            KEYACTION                     key=0x70, target=0x0165
0078  1A 07 01 E4 82 00                      STRCMP_NE_JMP                 start=v[0x107], values=[52], target=0x0082
007E  0C 68 65 01                            KEYACTION                     key=0x68, target=0x0165
0082  1A 07 01 E5 8C 00                      STRCMP_NE_JMP                 start=v[0x107], values=[53], target=0x008C
0088  0C 6F 65 01                            KEYACTION                     key=0x6F, target=0x0165
008C  1A 07 01 E6 96 00                      STRCMP_NE_JMP                 start=v[0x107], values=[54], target=0x0096
0092  0C 64 65 01                            KEYACTION                     key=0x64, target=0x0165
0096  1A 07 01 E7 A0 00                      STRCMP_NE_JMP                 start=v[0x107], values=[55], target=0x00A0
009C  0C 20 65 01                            KEYACTION                     key=0x20, target=0x0165
00A0  1A 07 01 E8 AA 00                      STRCMP_NE_JMP                 start=v[0x107], values=[56], target=0x00AA
00A6  0C 42 65 01                            KEYACTION                     key=0x42, target=0x0165
00AA  1A 07 01 E9 B4 00                      STRCMP_NE_JMP                 start=v[0x107], values=[57], target=0x00B4
00B0  0C 65 65 01                            KEYACTION                     key=0x65, target=0x0165
00B4  1A 07 01 EA BE 00                      STRCMP_NE_JMP                 start=v[0x107], values=[58], target=0x00BE
00BA  0C 65 65 01                            KEYACTION                     key=0x65, target=0x0165
00BE  1A 07 01 EB C8 00                      STRCMP_NE_JMP                 start=v[0x107], values=[59], target=0x00C8
00C4  0C 62 65 01                            KEYACTION                     key=0x62, target=0x0165
00C8  1A 07 01 EC D2 00                      STRCMP_NE_JMP                 start=v[0x107], values=[60], target=0x00D2
00CE  0C 6C 65 01                            KEYACTION                     key=0x6C, target=0x0165
00D2  1A 07 01 ED DC 00                      STRCMP_NE_JMP                 start=v[0x107], values=[61], target=0x00DC
00D8  0C 65 65 01                            KEYACTION                     key=0x65, target=0x0165
00DC  1A 07 01 EE E6 00                      STRCMP_NE_JMP                 start=v[0x107], values=[62], target=0x00E6
00E2  0C 62 65 01                            KEYACTION                     key=0x62, target=0x0165
00E6  1A 07 01 EF F0 00                      STRCMP_NE_JMP                 start=v[0x107], values=[63], target=0x00F0
00EC  0C 72 65 01                            KEYACTION                     key=0x72, target=0x0165
00F0  1A 07 01 F0 FA 00                      STRCMP_NE_JMP                 start=v[0x107], values=[64], target=0x00FA
00F6  0C 6F 65 01                            KEYACTION                     key=0x6F, target=0x0165
00FA  1A 07 01 F1 04 01                      STRCMP_NE_JMP                 start=v[0x107], values=[65], target=0x0104
0100  0C 78 6B 01                            KEYACTION                     key=0x78, target=0x016B
0104  1A 07 01 A0 3A 01                      STRCMP_NE_JMP                 start=v[0x107], values=[240], target=0x013A
010A  0D 64 00 9B 00 B8 00 CC 00 E6 1B 07    HOTSPOT_RECT                  left=0x0064, top=0x009B, right=0x00B8, bottom=0x00CC, target=0x1BE6, cursor=0x07
0116  0D C2 01 9D 00 1E 02 C9 00 E6 1B 07    HOTSPOT_RECT                  left=0x01C2, top=0x009D, right=0x021E, bottom=0x00C9, target=0x1BE6, cursor=0x07
0122  0D 2A 00 2B 01 B2 00 85 01 E6 1B 07    HOTSPOT_RECT                  left=0x002A, top=0x012B, right=0x00B2, bottom=0x0185, target=0x1BE6, cursor=0x07
012E  0D D6 01 2C 01 59 02 85 01 E6 1B 07    HOTSPOT_RECT                  left=0x01D6, top=0x012C, right=0x0259, bottom=0x0185, target=0x1BE6, cursor=0x07
013A  23 04 01 B0 4C 01                      STRCMP_EQ_JMP                 start=v[0x104], values=[0], target=0x014C
0140  0D 03 01 F5 00 7D 01 1C 01 79 01 08    HOTSPOT_RECT                  left=0x0103, top=0x00F5, right=0x017D, bottom=0x011C, target=0x0179, cursor=0x08
014C  0D CB 00 2A 01 B2 01 47 01 E8 03 08    HOTSPOT_RECT                  left=0x00CB, top=0x012A, right=0x01B2, bottom=0x0147, target=0x03E8, cursor=0x08
0158  0D D5 00 61 01 AA 01 76 01 AC 02 08    HOTSPOT_RECT                  left=0x00D5, top=0x0161, right=0x01AA, bottom=0x0176, target=0x02AC, cursor=0x08
0164  13                                     INPUTLOOPEND                  
0165  1F 07 01                               INC                           var=v[0x107]
0168  15 59 00                               JMP                           target=0x0059
016B  16 07 01 A0                            LOADSTRING                    dst=v[0x107], values=[240]
016F  0A                                     VIDEOFLAG5_ON                 
0170  07                                     VIDEOFLAG7_ON                 
0171  48 0F                                  SET_VDX_RATE_OVERRIDE         value=0x0F
0173  09 31 24                               VIDEOREF                      ref=0x2431 (INTRO[49]=?)
0176  15 59 00                               JMP                           target=0x0059
0179  0A                                     VIDEOFLAG5_ON                 
017A  09 20 24                               VIDEOREF                      ref=0x2420 (INTRO[32]=?)
017D  0A                                     VIDEOFLAG5_ON                 
017E  09 26 24                               VIDEOREF                      ref=0x2426 (INTRO[38]=?)
0181  0A                                     VIDEOFLAG5_ON                 
0182  09 23 24                               VIDEOREF                      ref=0x2423 (INTRO[35]=?)
0185  0A                                     VIDEOFLAG5_ON                 
0186  09 29 24                               VIDEOREF                      ref=0x2429 (INTRO[41]=?)
0189  0B                                     INPUTLOOPSTART                
018A  A3 01 B0 9C 01                         STRCMP_EQ_JMP                 start=v[0x001], values=[0], target=0x019C
018F  3B 01 B2 00 36 01 C1 00 4D 01 4B 02 08 HOTSPOT_SAVE_SLOT             slot=0x01, left=0x00B2, top=0x0136, right=0x00C1, bottom=0x014D, target=0x024B, cursor=0x08
019C  A3 02 B0 AE 01                         STRCMP_EQ_JMP                 start=v[0x002], values=[0], target=0x01AE
01A1  3B 02 C5 00 36 01 DE 00 4D 01 51 02 08 HOTSPOT_SAVE_SLOT             slot=0x02, left=0x00C5, top=0x0136, right=0x00DE, bottom=0x014D, target=0x0251, cursor=0x08
01AE  A3 03 B0 C0 01                         STRCMP_EQ_JMP                 start=v[0x003], values=[0], target=0x01C0
01B3  3B 03 E4 00 36 01 FE 00 4D 01 57 02 08 HOTSPOT_SAVE_SLOT             slot=0x03, left=0x00E4, top=0x0136, right=0x00FE, bottom=0x014D, target=0x0257, cursor=0x08
01C0  A3 04 B0 D2 01                         STRCMP_EQ_JMP                 start=v[0x004], values=[0], target=0x01D2
01C5  3B 04 04 01 36 01 1F 01 4D 01 5D 02 08 HOTSPOT_SAVE_SLOT             slot=0x04, left=0x0104, top=0x0136, right=0x011F, bottom=0x014D, target=0x025D, cursor=0x08
01D2  A3 05 B0 E4 01                         STRCMP_EQ_JMP                 start=v[0x005], values=[0], target=0x01E4
01D7  3B 05 24 01 36 01 3E 01 4D 01 63 02 08 HOTSPOT_SAVE_SLOT             slot=0x05, left=0x0124, top=0x0136, right=0x013E, bottom=0x014D, target=0x0263, cursor=0x08
01E4  A3 06 B0 F6 01                         STRCMP_EQ_JMP                 start=v[0x006], values=[0], target=0x01F6
01E9  3B 06 41 01 36 01 5A 01 4D 01 69 02 08 HOTSPOT_SAVE_SLOT             slot=0x06, left=0x0141, top=0x0136, right=0x015A, bottom=0x014D, target=0x0269, cursor=0x08
01F6  A3 07 B0 08 02                         STRCMP_EQ_JMP                 start=v[0x007], values=[0], target=0x0208
01FB  3B 07 5E 01 36 01 77 01 4D 01 6F 02 08 HOTSPOT_SAVE_SLOT             slot=0x07, left=0x015E, top=0x0136, right=0x0177, bottom=0x014D, target=0x026F, cursor=0x08
0208  A3 08 B0 1A 02                         STRCMP_EQ_JMP                 start=v[0x008], values=[0], target=0x021A
020D  3B 08 7C 01 36 01 96 01 4D 01 75 02 08 HOTSPOT_SAVE_SLOT             slot=0x08, left=0x017C, top=0x0136, right=0x0196, bottom=0x014D, target=0x0275, cursor=0x08
021A  A3 09 B0 2C 02                         STRCMP_EQ_JMP                 start=v[0x009], values=[0], target=0x022C
021F  3B 09 99 01 36 01 B3 01 4D 01 7B 02 08 HOTSPOT_SAVE_SLOT             slot=0x09, left=0x0199, top=0x0136, right=0x01B3, bottom=0x014D, target=0x027B, cursor=0x08
022C  A3 00 B0 3E 02                         STRCMP_EQ_JMP                 start=v[0x000], values=[0], target=0x023E
0231  3B 00 B5 01 36 01 D2 01 4D 01 81 02 08 HOTSPOT_SAVE_SLOT             slot=0x00, left=0x01B5, top=0x0136, right=0x01D2, bottom=0x014D, target=0x0281, cursor=0x08
023E  0D D5 00 61 01 AA 01 76 01 15 00 08    HOTSPOT_RECT                  left=0x00D5, top=0x0161, right=0x01AA, bottom=0x0176, target=0x0015, cursor=0x08
024A  13                                     INPUTLOOPEND                  
024B  96 19 B1                               LOADSTRING                    dst=v[0x019], values=[1]
024E  15 87 02                               JMP                           target=0x0287
0251  96 19 B2                               LOADSTRING                    dst=v[0x019], values=[2]
0254  15 87 02                               JMP                           target=0x0287
0257  96 19 B3                               LOADSTRING                    dst=v[0x019], values=[3]
025A  15 87 02                               JMP                           target=0x0287
025D  96 19 B4                               LOADSTRING                    dst=v[0x019], values=[4]
0260  15 87 02                               JMP                           target=0x0287
0263  96 19 B5                               LOADSTRING                    dst=v[0x019], values=[5]
0266  15 87 02                               JMP                           target=0x0287
0269  96 19 B6                               LOADSTRING                    dst=v[0x019], values=[6]
026C  15 87 02                               JMP                           target=0x0287
026F  96 19 B7                               LOADSTRING                    dst=v[0x019], values=[7]
0272  15 87 02                               JMP                           target=0x0287
0275  96 19 B8                               LOADSTRING                    dst=v[0x019], values=[8]
0278  15 87 02                               JMP                           target=0x0287
027B  96 19 B9                               LOADSTRING                    dst=v[0x019], values=[9]
027E  15 87 02                               JMP                           target=0x0287
0281  96 19 B0                               LOADSTRING                    dst=v[0x019], values=[0]
0284  15 87 02                               JMP                           target=0x0287
0287  1A 09 01 B0 9B 02                      STRCMP_NE_JMP                 start=v[0x109], values=[0], target=0x029B
028D  2E 19 00                               LOADGAME                      var=v[0x019]
0290  16 05 01 B0                            LOADSTRING                    dst=v[0x105], values=[0]
0294  16 09 01 B0                            LOADSTRING                    dst=v[0x109], values=[0]
0298  15 A6 02                               JMP                           target=0x02A6
029B  2E 19 00                               LOADGAME                      var=v[0x019]
029E  16 05 01 B1                            LOADSTRING                    dst=v[0x105], values=[1]
02A2  16 09 01 B1                            LOADSTRING                    dst=v[0x109], values=[1]
02A6  08 35 4C                               SETBACKGROUNDSONG             ref=0x4C35 (XMI[53]=?)
02A9  15 9B 1D                               JMP                           target=0x1D9B
02AC  0A                                     VIDEOFLAG5_ON                 
02AD  09 20 24                               VIDEOREF                      ref=0x2420 (INTRO[32]=?)
02B0  0A                                     VIDEOFLAG5_ON                 
02B1  09 26 24                               VIDEOREF                      ref=0x2426 (INTRO[38]=?)
02B4  0A                                     VIDEOFLAG5_ON                 
02B5  09 27 24                               VIDEOREF                      ref=0x2427 (INTRO[39]=?)
02B8  0B                                     INPUTLOOPSTART                
02B9  0D 54 00 B3 00 B2 00 F7 00 DE 02 08    HOTSPOT_RECT                  left=0x0054, top=0x00B3, right=0x00B2, bottom=0x00F7, target=0x02DE, cursor=0x08
02C5  0D CB 01 B6 00 2C 02 ED 00 EA 02 08    HOTSPOT_RECT                  left=0x01CB, top=0x00B6, right=0x022C, bottom=0x00ED, target=0x02EA, cursor=0x08
02D1  0D D5 00 61 01 AA 01 76 01 DE 02 08    HOTSPOT_RECT                  left=0x00D5, top=0x0161, right=0x01AA, bottom=0x0176, target=0x02DE, cursor=0x08
02DD  13                                     INPUTLOOPEND                  
02DE  0A                                     VIDEOFLAG5_ON                 
02DF  09 28 24                               VIDEOREF                      ref=0x2428 (INTRO[40]=?)
02E2  0A                                     VIDEOFLAG5_ON                 
02E3  46                                     RESOURCE_CONTEXT_SAVE         
02E4  09 A3 50                               VIDEOREF                      ref=0x50A3 (GAMWAV[163]=?)
02E7  47                                     RESOURCE_CONTEXT_RESTORE      
02E8  04                                     PALFADEOUT                    
02E9  2A                                     ENDSCRIPT                     
02EA  0A                                     VIDEOFLAG5_ON                 
02EB  09 28 24                               VIDEOREF                      ref=0x2428 (INTRO[40]=?)
02EE  15 15 00                               JMP                           target=0x0015
02F1  1A 00 01 B1 03 03                      STRCMP_NE_JMP                 start=v[0x100], values=[1], target=0x0303
02F7  02 46 4C                               PLAYSONG                      ref=0x4C46 (XMI[70]=?)
02FA  03                                     FADEIN_NEXT_VIDEO             
02FB  09 60 24                               VIDEOREF                      ref=0x2460 (INTRO[96]=?)
02FE  09 60 24                               VIDEOREF                      ref=0x2460 (INTRO[96]=?)
0301  04                                     PALFADEOUT                    
0302  29                                     STOP_OR_WAIT_MIDI             
0303  1A 00 01 B2 12 03                      STRCMP_NE_JMP                 start=v[0x100], values=[2], target=0x0312
0309  02 45 4C                               PLAYSONG                      ref=0x4C45 (XMI[69]=?)
030C  03                                     FADEIN_NEXT_VIDEO             
030D  09 61 24                               VIDEOREF                      ref=0x2461 (INTRO[97]=?)
0310  04                                     PALFADEOUT                    
0311  29                                     STOP_OR_WAIT_MIDI             
0312  17 00                                  RET                           value=0x00
0314  03                                     FADEIN_NEXT_VIDEO             
0315  4C                                     GETCD                         
0316  1A 06 01 B0 1F 03                      STRCMP_NE_JMP                 start=v[0x106], values=[0], target=0x031F
031C  15 58 03                               JMP                           target=0x0358
031F  1A 06 01 B2 28 03                      STRCMP_NE_JMP                 start=v[0x106], values=[2], target=0x0328
0325  15 58 03                               JMP                           target=0x0358
0328  23 05 01 B0 3A 03                      STRCMP_EQ_JMP                 start=v[0x105], values=[0], target=0x033A
032E  1A 09 01 B0 3A 03                      STRCMP_NE_JMP                 start=v[0x109], values=[0], target=0x033A
0334  4B 00                                  SET_VIDEO_MODE                value=0x00
0336  16 09 01 B2                            LOADSTRING                    dst=v[0x109], values=[2]
033A  09 01 1C                               VIDEOREF                      ref=0x1C01 (HDISK[1]=?)
033D  0B                                     INPUTLOOPSTART                
033E  12 42 03                               HOTSPOT_CURRENT               target=0x0342
0341  13                                     INPUTLOOPEND                  
0342  4C                                     GETCD                         
0343  1A 06 01 B0 4C 03                      STRCMP_NE_JMP                 start=v[0x106], values=[0], target=0x034C
0349  15 58 03                               JMP                           target=0x0358
034C  1A 06 01 B2 55 03                      STRCMP_NE_JMP                 start=v[0x106], values=[2], target=0x0355
0352  15 58 03                               JMP                           target=0x0358
0355  15 3D 03                               JMP                           target=0x033D
0358  04                                     PALFADEOUT                    
0359  1A 09 01 B2 65 03                      STRCMP_NE_JMP                 start=v[0x109], values=[2], target=0x0365
035F  4B 01                                  SET_VIDEO_MODE                value=0x01
0361  16 09 01 B0                            LOADSTRING                    dst=v[0x109], values=[0]
0365  17 00                                  RET                           value=0x00
0367  4C                                     GETCD                         
0368  1A 06 01 B0 71 03                      STRCMP_NE_JMP                 start=v[0x106], values=[0], target=0x0371
036E  15 AC 03                               JMP                           target=0x03AC
0371  1A 06 01 B1 7A 03                      STRCMP_NE_JMP                 start=v[0x106], values=[1], target=0x037A
0377  15 AC 03                               JMP                           target=0x03AC
037A  23 05 01 B0 8C 03                      STRCMP_EQ_JMP                 start=v[0x105], values=[0], target=0x038C
0380  1A 09 01 B0 8C 03                      STRCMP_NE_JMP                 start=v[0x109], values=[0], target=0x038C
0386  4B 00                                  SET_VIDEO_MODE                value=0x00
0388  16 09 01 B2                            LOADSTRING                    dst=v[0x109], values=[2]
038C  09 00 1C                               VIDEOREF                      ref=0x1C00 (HDISK[0]=?)
038F  0B                                     INPUTLOOPSTART                
0390  12 94 03                               HOTSPOT_CURRENT               target=0x0394
0393  13                                     INPUTLOOPEND                  
0394  4C                                     GETCD                         
0395  1A 06 01 B0 9F 03                      STRCMP_NE_JMP                 start=v[0x106], values=[0], target=0x039F
039B  04                                     PALFADEOUT                    
039C  15 AC 03                               JMP                           target=0x03AC
039F  1A 06 01 B1 A9 03                      STRCMP_NE_JMP                 start=v[0x106], values=[1], target=0x03A9
03A5  04                                     PALFADEOUT                    
03A6  15 AC 03                               JMP                           target=0x03AC
03A9  15 8F 03                               JMP                           target=0x038F
03AC  1A 09 01 B2 B8 03                      STRCMP_NE_JMP                 start=v[0x109], values=[2], target=0x03B8
03B2  4B 01                                  SET_VIDEO_MODE                value=0x01
03B4  16 09 01 B0                            LOADSTRING                    dst=v[0x109], values=[0]
03B8  17 00                                  RET                           value=0x00
03BA  0A                                     VIDEOFLAG5_ON                 
03BB  07                                     VIDEOFLAG7_ON                 
03BC  09 01 24                               VIDEOREF                      ref=0x2401 (INTRO[1]=?)
03BF  37 00 00 50 00 7F 02 8F 01             COPY_RECT_TO_BG               left=0x0000, top=0x0050, right=0x027F, bottom=0x018F
03C8  17 00                                  RET                           value=0x00
03CA  96 8C 30 B2                            LOADSTRING                    dst=v[0x08C], values=[0, 2]
03CE  02 39 4C                               PLAYSONG                      ref=0x4C39 (XMI[57]=?)
03D1  03                                     FADEIN_NEXT_VIDEO             
03D2  05                                     FIRSTFRAME_NEXT_VIDEO         
03D3  09 AB 14                               VIDEOREF                      ref=0x14AB (FH[171]=?)
03D6  15 0F 0F                               JMP                           target=0x0F0F
03D9  96 8C 30 B1                            LOADSTRING                    dst=v[0x08C], values=[0, 1]
03DD  02 35 4C                               PLAYSONG                      ref=0x4C35 (XMI[53]=?)
03E0  03                                     FADEIN_NEXT_VIDEO             
03E1  05                                     FIRSTFRAME_NEXT_VIDEO         
03E2  09 03 14                               VIDEOREF                      ref=0x1403 (FH[3]=?)
03E5  15 0D 05                               JMP                           target=0x050D
03E8  23 09 01 B0 F4 03                      STRCMP_EQ_JMP                 start=v[0x109], values=[0], target=0x03F4
03EE  4B 01                                  SET_VIDEO_MODE                value=0x01
03F0  16 09 01 B0                            LOADSTRING                    dst=v[0x109], values=[0]
03F4  2C F1 18 08                            SET_HOTSPOT_TOP               target=0x18F1, cursor=0x08
03F8  31 00 00 E8 03                         MIDI_CONTROL                  value=0x0000, time=0x03E8
03FD  04                                     PALFADEOUT                    
03FE  03                                     FADEIN_NEXT_VIDEO             
03FF  09 08 1C                               VIDEOREF                      ref=0x1C08 (HDISK[8]=?)
0402  19 C2 01                               SLEEP                         ticks=0x01C2
0405  04                                     PALFADEOUT                    
0406  03                                     FADEIN_NEXT_VIDEO             
0407  09 09 1C                               VIDEOREF                      ref=0x1C09 (HDISK[9]=?)
040A  19 C2 01                               SLEEP                         ticks=0x01C2
040D  04                                     PALFADEOUT                    
040E  19 01 00                               SLEEP                         ticks=0x0001
0411  4D 02                                  PLAYCD                        value=0x02
0413  19 BC 02                               SLEEP                         ticks=0x02BC
0416  03                                     FADEIN_NEXT_VIDEO             
0417  09 04 1C                               VIDEOREF                      ref=0x1C04 (HDISK[4]=?)
041A  19 8A 02                               SLEEP                         ticks=0x028A
041D  04                                     PALFADEOUT                    
041E  03                                     FADEIN_NEXT_VIDEO             
041F  09 03 1C                               VIDEOREF                      ref=0x1C03 (HDISK[3]=?)
0422  19 EE 02                               SLEEP                         ticks=0x02EE
0425  04                                     PALFADEOUT                    
0426  03                                     FADEIN_NEXT_VIDEO             
0427  09 02 1C                               VIDEOREF                      ref=0x1C02 (HDISK[2]=?)
042A  19 5E 01                               SLEEP                         ticks=0x015E
042D  4D 62                                  PLAYCD                        value=0x62
042F  31 00 00 00 00                         MIDI_CONTROL                  value=0x0000, time=0x0000
0434  02 42 4C                               PLAYSONG                      ref=0x4C42 (XMI[66]=?)
0437  31 63 00 2C 01                         MIDI_CONTROL                  value=0x0063, time=0x012C
043C  09 02 24                               VIDEOREF                      ref=0x2402 (INTRO[2]=?)
043F  06                                     VIDEOFLAG6_ON                 
0440  29                                     STOP_OR_WAIT_MIDI             
0441  02 42 4C                               PLAYSONG                      ref=0x4C42 (XMI[66]=?)
0444  31 63 00 32 00                         MIDI_CONTROL                  value=0x0063, time=0x0032
0449  09 03 24                               VIDEOREF                      ref=0x2403 (INTRO[3]=?)
044C  02 3F 4C                               PLAYSONG                      ref=0x4C3F (XMI[63]=?)
044F  31 63 00 32 00                         MIDI_CONTROL                  value=0x0063, time=0x0032
0454  19 C8 00                               SLEEP                         ticks=0x00C8
0457  09 04 24                               VIDEOREF                      ref=0x2404 (INTRO[4]=?)
045A  19 C8 00                               SLEEP                         ticks=0x00C8
045D  06                                     VIDEOFLAG6_ON                 
045E  09 05 24                               VIDEOREF                      ref=0x2405 (INTRO[5]=?)
0461  19 C8 00                               SLEEP                         ticks=0x00C8
0464  09 06 24                               VIDEOREF                      ref=0x2406 (INTRO[6]=?)
0467  19 C8 00                               SLEEP                         ticks=0x00C8
046A  06                                     VIDEOFLAG6_ON                 
046B  09 07 24                               VIDEOREF                      ref=0x2407 (INTRO[7]=?)
046E  19 C8 00                               SLEEP                         ticks=0x00C8
0471  09 08 24                               VIDEOREF                      ref=0x2408 (INTRO[8]=?)
0474  19 C8 00                               SLEEP                         ticks=0x00C8
0477  06                                     VIDEOFLAG6_ON                 
0478  31 00 00 C4 09                         MIDI_CONTROL                  value=0x0000, time=0x09C4
047D  02 40 4C                               PLAYSONG                      ref=0x4C40 (XMI[64]=?)
0480  31 63 00 32 00                         MIDI_CONTROL                  value=0x0063, time=0x0032
0485  09 09 24                               VIDEOREF                      ref=0x2409 (INTRO[9]=?)
0488  19 C8 00                               SLEEP                         ticks=0x00C8
048B  09 0A 24                               VIDEOREF                      ref=0x240A (INTRO[10]=?)
048E  19 2C 01                               SLEEP                         ticks=0x012C
0491  06                                     VIDEOFLAG6_ON                 
0492  09 0B 24                               VIDEOREF                      ref=0x240B (INTRO[11]=?)
0495  19 2C 01                               SLEEP                         ticks=0x012C
0498  09 0C 24                               VIDEOREF                      ref=0x240C (INTRO[12]=?)
049B  19 64 00                               SLEEP                         ticks=0x0064
049E  06                                     VIDEOFLAG6_ON                 
049F  09 0D 24                               VIDEOREF                      ref=0x240D (INTRO[13]=?)
04A2  19 64 00                               SLEEP                         ticks=0x0064
04A5  02 41 4C                               PLAYSONG                      ref=0x4C41 (XMI[65]=?)
04A8  31 63 00 32 00                         MIDI_CONTROL                  value=0x0063, time=0x0032
04AD  09 0E 24                               VIDEOREF                      ref=0x240E (INTRO[14]=?)
04B0  19 64 00                               SLEEP                         ticks=0x0064
04B3  06                                     VIDEOFLAG6_ON                 
04B4  09 0F 24                               VIDEOREF                      ref=0x240F (INTRO[15]=?)
04B7  19 64 00                               SLEEP                         ticks=0x0064
04BA  09 10 24                               VIDEOREF                      ref=0x2410 (INTRO[16]=?)
04BD  19 64 00                               SLEEP                         ticks=0x0064
04C0  06                                     VIDEOFLAG6_ON                 
04C1  09 11 24                               VIDEOREF                      ref=0x2411 (INTRO[17]=?)
04C4  19 64 00                               SLEEP                         ticks=0x0064
04C7  09 12 24                               VIDEOREF                      ref=0x2412 (INTRO[18]=?)
04CA  19 64 00                               SLEEP                         ticks=0x0064
04CD  06                                     VIDEOFLAG6_ON                 
04CE  09 13 24                               VIDEOREF                      ref=0x2413 (INTRO[19]=?)
04D1  19 C8 00                               SLEEP                         ticks=0x00C8
04D4  09 14 24                               VIDEOREF                      ref=0x2414 (INTRO[20]=?)
04D7  19 64 00                               SLEEP                         ticks=0x0064
04DA  06                                     VIDEOFLAG6_ON                 
04DB  09 36 34                               VIDEOREF                      ref=0x3436 (LI[54]=?)
04DE  03                                     FADEIN_NEXT_VIDEO             
04DF  09 41 14                               VIDEOREF                      ref=0x1441 (FH[65]=?)
04E2  09 15 14                               VIDEOREF                      ref=0x1415 (FH[21]=?)
04E5  29                                     STOP_OR_WAIT_MIDI             
04E6  19 58 02                               SLEEP                         ticks=0x0258
04E9  18 B0 38                               CALL                          target=0x38B0
04EC  96 E5 B1                               LOADSTRING                    dst=v[0x0E5], values=[1]
04EF  96 8E 30 B2                            LOADSTRING                    dst=v[0x08E], values=[0, 2]
04F3  09 25 14                               VIDEOREF                      ref=0x1425 (FH[37]=?)
04F6  02 35 4C                               PLAYSONG                      ref=0x4C35 (XMI[53]=?)
04F9  96 8C 30 B1                            LOADSTRING                    dst=v[0x08C], values=[0, 1]
04FD  09 26 14                               VIDEOREF                      ref=0x1426 (FH[38]=?)
0500  46                                     RESOURCE_CONTEXT_SAVE         
0501  07                                     VIDEOFLAG7_ON                 
0502  09 00 50                               VIDEOREF                      ref=0x5000 (GAMWAV[0]=?)
0505  19 64 00                               SLEEP                         ticks=0x0064
0508  07                                     VIDEOFLAG7_ON                 
0509  09 01 50                               VIDEOREF                      ref=0x5001 (GAMWAV[1]=?)
050C  47                                     RESOURCE_CONTEXT_RESTORE      
050D  0B                                     INPUTLOOPSTART                
050E  9A 8E 30 B2 17 05                      STRCMP_NE_JMP                 start=v[0x08E], values=[0, 2], target=0x0517
0514  30 03 3B                               HOTSPOT_BOTTOM_4              target=0x3B03
0517  0D 00 00 DE 00 68 00 54 01 61 05 00    HOTSPOT_RECT                  left=0x0000, top=0x00DE, right=0x0068, bottom=0x0154, target=0x0561, cursor=0x00
0523  0D CA 01 F2 00 33 02 52 01 67 05 00    HOTSPOT_RECT                  left=0x01CA, top=0x00F2, right=0x0233, bottom=0x0152, target=0x0567, cursor=0x00
052F  0D 23 01 50 00 A8 01 C0 00 70 05 00    HOTSPOT_RECT                  left=0x0123, top=0x0050, right=0x01A8, bottom=0x00C0, target=0x0570, cursor=0x00
053B  A3 99 B0 51 05                         STRCMP_EQ_JMP                 start=v[0x099], values=[0], target=0x0551
0540  9A F3 E1 51 05                         STRCMP_NE_JMP                 start=v[0x0F3], values=[49], target=0x0551
0545  0D C8 00 2C 01 B8 01 90 01 58 05 07    HOTSPOT_RECT                  left=0x00C8, top=0x012C, right=0x01B8, bottom=0x0190, target=0x0558, cursor=0x07
0551  0E BD 06                               HOTSPOT_LEFT                  target=0x06BD
0554  0F C3 06                               HOTSPOT_RIGHT                 target=0x06C3
0557  13                                     INPUTLOOPEND                  
0558  09 08 14                               VIDEOREF                      ref=0x1408 (FH[8]=?)
055B  09 07 14                               VIDEOREF                      ref=0x1407 (FH[7]=?)
055E  15 E0 16                               JMP                           target=0x16E0
0561  09 01 14                               VIDEOREF                      ref=0x1401 (FH[1]=?)
0564  15 07 07                               JMP                           target=0x0707
0567  09 02 14                               VIDEOREF                      ref=0x1402 (FH[2]=?)
056A  09 16 14                               VIDEOREF                      ref=0x1416 (FH[22]=?)
056D  15 0A 08                               JMP                           target=0x080A
0570  09 03 14                               VIDEOREF                      ref=0x1403 (FH[3]=?)
0573  15 0F 0F                               JMP                           target=0x0F0F
0576  0B                                     INPUTLOOPSTART                
0577  0D 13 02 D4 00 7F 02 54 01 8A 05 00    HOTSPOT_RECT                  left=0x0213, top=0x00D4, right=0x027F, bottom=0x0154, target=0x058A, cursor=0x00
0583  0E C9 06                               HOTSPOT_LEFT                  target=0x06C9
0586  0F CF 06                               HOTSPOT_RIGHT                 target=0x06CF
0589  13                                     INPUTLOOPEND                  
058A  09 26 14                               VIDEOREF                      ref=0x1426 (FH[38]=?)
058D  09 01 14                               VIDEOREF                      ref=0x1401 (FH[1]=?)
0590  15 07 07                               JMP                           target=0x0707
0593  0B                                     INPUTLOOPSTART                
0594  0E D5 06                               HOTSPOT_LEFT                  target=0x06D5
0597  0F DB 06                               HOTSPOT_RIGHT                 target=0x06DB
059A  A3 FA B0 B5 05                         STRCMP_EQ_JMP                 start=v[0x0FA], values=[0], target=0x05B5
059F  9A E4 B1 B5 05                         STRCMP_NE_JMP                 start=v[0x0E4], values=[1], target=0x05B5
05A4  A3 FB E1 B5 05                         STRCMP_EQ_JMP                 start=v[0x0FB], values=[49], target=0x05B5
05A9  0D AC 00 3A 00 8F 01 13 01 0F 06 06    HOTSPOT_RECT                  left=0x00AC, top=0x003A, right=0x018F, bottom=0x0113, target=0x060F, cursor=0x06
05B5  1A 08 01 B1 C7 05                      STRCMP_NE_JMP                 start=v[0x108], values=[1], target=0x05C7
05BB  0D AC 00 3A 00 8F 01 13 01 0F 06 06    HOTSPOT_RECT                  left=0x00AC, top=0x003A, right=0x018F, bottom=0x0113, target=0x060F, cursor=0x06
05C7  9A E4 B1 D5 05                         STRCMP_NE_JMP                 start=v[0x0E4], values=[1], target=0x05D5
05CC  9A 8E 30 B3 D5 05                      STRCMP_NE_JMP                 start=v[0x08E], values=[0, 3], target=0x05D5
05D2  30 03 3B                               HOTSPOT_BOTTOM_4              target=0x3B03
05D5  9A 8E 30 B4 DE 05                      STRCMP_NE_JMP                 start=v[0x08E], values=[0, 4], target=0x05DE
05DB  30 03 3B                               HOTSPOT_BOTTOM_4              target=0x3B03
05DE  9A E4 B0 EF 05                         STRCMP_NE_JMP                 start=v[0x0E4], values=[0], target=0x05EF
05E3  0D C8 00 50 00 B8 01 8F 01 F0 05 04    HOTSPOT_RECT                  left=0x00C8, top=0x0050, right=0x01B8, bottom=0x018F, target=0x05F0, cursor=0x04
05EF  13                                     INPUTLOOPEND                  
05F0  96 E4 B1                               LOADSTRING                    dst=v[0x0E4], values=[1]
05F3  96 8E 30 B3                            LOADSTRING                    dst=v[0x08E], values=[0, 3]
05F7  18 D0 38                               CALL                          target=0x38D0
05FA  19 64 00                               SLEEP                         ticks=0x0064
05FD  1A 00 01 B0 09 06                      STRCMP_NE_JMP                 start=v[0x100], values=[0], target=0x0609
0603  02 00 4C                               PLAYSONG                      ref=0x4C00 (XMI[0]=?)
0606  15 0C 06                               JMP                           target=0x060C
0609  02 0C 4C                               PLAYSONG                      ref=0x4C0C (XMI[12]=?)
060C  15 93 05                               JMP                           target=0x0593
060F  1A 09 01 B0 21 06                      STRCMP_NE_JMP                 start=v[0x109], values=[0], target=0x0621
0615  23 05 01 B0 21 06                      STRCMP_EQ_JMP                 start=v[0x105], values=[0], target=0x0621
061B  4B 00                                  SET_VIDEO_MODE                value=0x00
061D  16 09 01 B1                            LOADSTRING                    dst=v[0x109], values=[1]
0621  09 06 14                               VIDEOREF                      ref=0x1406 (FH[6]=?)
0624  15 2B 06                               JMP                           target=0x062B
0627  03                                     FADEIN_NEXT_VIDEO             
0628  09 06 14                               VIDEOREF                      ref=0x1406 (FH[6]=?)
062B  96 92 30 B2                            LOADSTRING                    dst=v[0x092], values=[0, 2]
062F  9A FB B4 37 06                         STRCMP_NE_JMP                 start=v[0x0FB], values=[4], target=0x0637
0634  96 FB B5                               LOADSTRING                    dst=v[0x0FB], values=[5]
0637  9A FB B2 3F 06                         STRCMP_NE_JMP                 start=v[0x0FB], values=[2], target=0x063F
063C  96 FB B3                               LOADSTRING                    dst=v[0x0FB], values=[3]
063F  9A FB B0 47 06                         STRCMP_NE_JMP                 start=v[0x0FB], values=[0], target=0x0647
0644  96 FB B1                               LOADSTRING                    dst=v[0x0FB], values=[1]
0647  18 10 41                               CALL                          target=0x4110
064A  1A 09 01 B1 56 06                      STRCMP_NE_JMP                 start=v[0x109], values=[1], target=0x0656
0650  4B 01                                  SET_VIDEO_MODE                value=0x01
0652  16 09 01 B0                            LOADSTRING                    dst=v[0x109], values=[0]
0656  9A FB E1 6D 06                         STRCMP_NE_JMP                 start=v[0x0FB], values=[49], target=0x066D
065B  9A E3 B0 6D 06                         STRCMP_NE_JMP                 start=v[0x0E3], values=[0], target=0x066D
0660  02 11 4C                               PLAYSONG                      ref=0x4C11 (XMI[17]=?)
0663  96 E3 B1                               LOADSTRING                    dst=v[0x0E3], values=[1]
0666  96 8E 30 B4                            LOADSTRING                    dst=v[0x08E], values=[0, 4]
066A  18 E5 38                               CALL                          target=0x38E5
066D  1A 00 01 B0 79 06                      STRCMP_NE_JMP                 start=v[0x100], values=[0], target=0x0679
0673  02 00 4C                               PLAYSONG                      ref=0x4C00 (XMI[0]=?)
0676  15 7C 06                               JMP                           target=0x067C
0679  02 0C 4C                               PLAYSONG                      ref=0x4C0C (XMI[12]=?)
067C  15 7F 06                               JMP                           target=0x067F
067F  09 05 14                               VIDEOREF                      ref=0x1405 (FH[5]=?)
0682  15 93 05                               JMP                           target=0x0593
0685  0B                                     INPUTLOOPSTART                
0686  0D 00 00 C9 00 50 00 47 01 A5 06 00    HOTSPOT_RECT                  left=0x0000, top=0x00C9, right=0x0050, bottom=0x0147, target=0x06A5, cursor=0x00
0692  0D AC 00 CC 00 E8 00 4F 01 B1 06 00    HOTSPOT_RECT                  left=0x00AC, top=0x00CC, right=0x00E8, bottom=0x014F, target=0x06B1, cursor=0x00
069E  0E E1 06                               HOTSPOT_LEFT                  target=0x06E1
06A1  0F E7 06                               HOTSPOT_RIGHT                 target=0x06E7
06A4  13                                     INPUTLOOPEND                  
06A5  09 23 14                               VIDEOREF                      ref=0x1423 (FH[35]=?)
06A8  09 02 14                               VIDEOREF                      ref=0x1402 (FH[2]=?)
06AB  09 16 14                               VIDEOREF                      ref=0x1416 (FH[22]=?)
06AE  15 0A 08                               JMP                           target=0x080A
06B1  09 23 14                               VIDEOREF                      ref=0x1423 (FH[35]=?)
06B4  09 02 14                               VIDEOREF                      ref=0x1402 (FH[2]=?)
06B7  09 47 14                               VIDEOREF                      ref=0x1447 (FH[71]=?)
06BA  15 DA 08                               JMP                           target=0x08DA
06BD  09 22 14                               VIDEOREF                      ref=0x1422 (FH[34]=?)
06C0  15 76 05                               JMP                           target=0x0576
06C3  09 27 14                               VIDEOREF                      ref=0x1427 (FH[39]=?)
06C6  15 85 06                               JMP                           target=0x0685
06C9  09 21 14                               VIDEOREF                      ref=0x1421 (FH[33]=?)
06CC  15 93 05                               JMP                           target=0x0593
06CF  09 26 14                               VIDEOREF                      ref=0x1426 (FH[38]=?)
06D2  15 0D 05                               JMP                           target=0x050D
06D5  09 24 14                               VIDEOREF                      ref=0x1424 (FH[36]=?)
06D8  15 85 06                               JMP                           target=0x0685
06DB  09 25 14                               VIDEOREF                      ref=0x1425 (FH[37]=?)
06DE  15 76 05                               JMP                           target=0x0576
06E1  09 23 14                               VIDEOREF                      ref=0x1423 (FH[35]=?)
06E4  15 0D 05                               JMP                           target=0x050D
06E7  09 28 14                               VIDEOREF                      ref=0x1428 (FH[40]=?)
06EA  15 93 05                               JMP                           target=0x0593
06ED  0B                                     INPUTLOOPSTART                
06EE  0D 1C 01 6D 00 88 01 35 01 01 07 00    HOTSPOT_RECT                  left=0x011C, top=0x006D, right=0x0188, bottom=0x0135, target=0x0701, cursor=0x00
06FA  0E 38 07                               HOTSPOT_LEFT                  target=0x0738
06FD  0F 3E 07                               HOTSPOT_RIGHT                 target=0x073E
0700  13                                     INPUTLOOPEND                  
0701  09 0B 14                               VIDEOREF                      ref=0x140B (FH[11]=?)
0704  15 68 07                               JMP                           target=0x0768
0707  0B                                     INPUTLOOPSTART                
0708  0E 44 07                               HOTSPOT_LEFT                  target=0x0744
070B  0F 4A 07                               HOTSPOT_RIGHT                 target=0x074A
070E  10 24 09                               HOTSPOT_CENTER                target=0x0924
0711  13                                     INPUTLOOPEND                  
0712  0B                                     INPUTLOOPSTART                
0713  0E 50 07                               HOTSPOT_LEFT                  target=0x0750
0716  0F 56 07                               HOTSPOT_RIGHT                 target=0x0756
0719  13                                     INPUTLOOPEND                  
071A  96 8C 30 B1                            LOADSTRING                    dst=v[0x08C], values=[0, 1]
071E  0B                                     INPUTLOOPSTART                
071F  0D BB 01 B3 00 1B 02 13 01 32 07 00    HOTSPOT_RECT                  left=0x01BB, top=0x00B3, right=0x021B, bottom=0x0113, target=0x0732, cursor=0x00
072B  0E 5C 07                               HOTSPOT_LEFT                  target=0x075C
072E  0F 62 07                               HOTSPOT_RIGHT                 target=0x0762
0731  13                                     INPUTLOOPEND                  
0732  09 0A 14                               VIDEOREF                      ref=0x140A (FH[10]=?)
0735  15 93 05                               JMP                           target=0x0593
0738  09 2A 14                               VIDEOREF                      ref=0x142A (FH[42]=?)
073B  15 07 07                               JMP                           target=0x0707
073E  09 2F 14                               VIDEOREF                      ref=0x142F (FH[47]=?)
0741  15 1A 07                               JMP                           target=0x071A
0744  09 29 14                               VIDEOREF                      ref=0x1429 (FH[41]=?)
0747  15 12 07                               JMP                           target=0x0712
074A  09 2E 14                               VIDEOREF                      ref=0x142E (FH[46]=?)
074D  15 ED 06                               JMP                           target=0x06ED
0750  09 2C 14                               VIDEOREF                      ref=0x142C (FH[44]=?)
0753  15 1A 07                               JMP                           target=0x071A
0756  09 2D 14                               VIDEOREF                      ref=0x142D (FH[45]=?)
0759  15 07 07                               JMP                           target=0x0707
075C  09 2B 14                               VIDEOREF                      ref=0x142B (FH[43]=?)
075F  15 ED 06                               JMP                           target=0x06ED
0762  09 30 14                               VIDEOREF                      ref=0x1430 (FH[48]=?)
0765  15 12 07                               JMP                           target=0x0712
0768  0B                                     INPUTLOOPSTART                
0769  0E DA 07                               HOTSPOT_LEFT                  target=0x07DA
076C  9A FA E1 74 07                         STRCMP_NE_JMP                 start=v[0x0FA], values=[49], target=0x0774
0771  10 78 07                               HOTSPOT_CENTER                target=0x0778
0774  0F E0 07                               HOTSPOT_RIGHT                 target=0x07E0
0777  13                                     INPUTLOOPEND                  
0778  09 12 14                               VIDEOREF                      ref=0x1412 (FH[18]=?)
077B  15 62 0A                               JMP                           target=0x0A62
077E  0B                                     INPUTLOOPSTART                
077F  0D 42 00 52 00 E6 00 6E 01 92 07 00    HOTSPOT_RECT                  left=0x0042, top=0x0052, right=0x00E6, bottom=0x016E, target=0x0792, cursor=0x00
078B  0E E6 07                               HOTSPOT_LEFT                  target=0x07E6
078E  0F EC 07                               HOTSPOT_RIGHT                 target=0x07EC
0791  13                                     INPUTLOOPEND                  
0792  09 31 14                               VIDEOREF                      ref=0x1431 (FH[49]=?)
0795  09 0E 14                               VIDEOREF                      ref=0x140E (FH[14]=?)
0798  09 2D 14                               VIDEOREF                      ref=0x142D (FH[45]=?)
079B  15 07 07                               JMP                           target=0x0707
079E  96 8C 30 B1                            LOADSTRING                    dst=v[0x08C], values=[0, 1]
07A2  0B                                     INPUTLOOPSTART                
07A3  0E F2 07                               HOTSPOT_LEFT                  target=0x07F2
07A6  0F F8 07                               HOTSPOT_RIGHT                 target=0x07F8
07A9  11 AD 07                               HOTSPOT_CENTER_2              target=0x07AD
07AC  13                                     INPUTLOOPEND                  
07AD  09 0E 14                               VIDEOREF                      ref=0x140E (FH[14]=?)
07B0  15 12 07                               JMP                           target=0x0712
07B3  0B                                     INPUTLOOPSTART                
07B4  0E FE 07                               HOTSPOT_LEFT                  target=0x07FE
07B7  0F 04 08                               HOTSPOT_RIGHT                 target=0x0804
07BA  0D EE 00 55 00 39 01 7C 01 C7 07 07    HOTSPOT_RECT                  left=0x00EE, top=0x0055, right=0x0139, bottom=0x017C, target=0x07C7, cursor=0x07
07C6  13                                     INPUTLOOPEND                  
07C7  02 25 4C                               PLAYSONG                      ref=0x4C25 (XMI[37]=?)
07CA  09 11 14                               VIDEOREF                      ref=0x1411 (FH[17]=?)
07CD  0A                                     VIDEOFLAG5_ON                 
07CE  09 0F 14                               VIDEOREF                      ref=0x140F (FH[15]=?)
07D1  09 10 14                               VIDEOREF                      ref=0x1410 (FH[16]=?)
07D4  02 0C 4C                               PLAYSONG                      ref=0x4C0C (XMI[12]=?)
07D7  15 B3 07                               JMP                           target=0x07B3
07DA  09 32 14                               VIDEOREF                      ref=0x1432 (FH[50]=?)
07DD  15 7E 07                               JMP                           target=0x077E
07E0  09 37 14                               VIDEOREF                      ref=0x1437 (FH[55]=?)
07E3  15 B3 07                               JMP                           target=0x07B3
07E6  09 31 14                               VIDEOREF                      ref=0x1431 (FH[49]=?)
07E9  15 9E 07                               JMP                           target=0x079E
07EC  09 36 14                               VIDEOREF                      ref=0x1436 (FH[54]=?)
07EF  15 68 07                               JMP                           target=0x0768
07F2  09 34 14                               VIDEOREF                      ref=0x1434 (FH[52]=?)
07F5  15 B3 07                               JMP                           target=0x07B3
07F8  09 35 14                               VIDEOREF                      ref=0x1435 (FH[53]=?)
07FB  15 7E 07                               JMP                           target=0x077E
07FE  09 33 14                               VIDEOREF                      ref=0x1433 (FH[51]=?)
0801  15 68 07                               JMP                           target=0x0768
0804  09 38 14                               VIDEOREF                      ref=0x1438 (FH[56]=?)
0807  15 9E 07                               JMP                           target=0x079E
080A  0B                                     INPUTLOOPSTART                
080B  0E 6A 08                               HOTSPOT_LEFT                  target=0x086A
080E  A3 99 B0 20 08                         STRCMP_EQ_JMP                 start=v[0x099], values=[0], target=0x0820
0813  9A F3 E1 20 08                         STRCMP_NE_JMP                 start=v[0x0F3], values=[49], target=0x0820
0818  9A E9 E1 20 08                         STRCMP_NE_JMP                 start=v[0x0E9], values=[49], target=0x0820
081D  10 2A 0C                               HOTSPOT_CENTER                target=0x0C2A
0820  0F 70 08                               HOTSPOT_RIGHT                 target=0x0870
0823  13                                     INPUTLOOPEND                  
0824  09 13 14                               VIDEOREF                      ref=0x1413 (FH[19]=?)
0827  15 C0 08                               JMP                           target=0x08C0
082A  0B                                     INPUTLOOPSTART                
082B  0E 76 08                               HOTSPOT_LEFT                  target=0x0876
082E  0F 7C 08                               HOTSPOT_RIGHT                 target=0x087C
0831  13                                     INPUTLOOPEND                  
0832  96 8C 30 B1                            LOADSTRING                    dst=v[0x08C], values=[0, 1]
0836  0B                                     INPUTLOOPSTART                
0837  0D 14 01 B2 00 5C 01 10 01 24 08 00    HOTSPOT_RECT                  left=0x0114, top=0x00B2, right=0x015C, bottom=0x0110, target=0x0824, cursor=0x00
0843  0E 82 08                               HOTSPOT_LEFT                  target=0x0882
0846  0F 88 08                               HOTSPOT_RIGHT                 target=0x0888
0849  13                                     INPUTLOOPEND                  
084A  0B                                     INPUTLOOPSTART                
084B  0D FC 01 50 00 4A 02 55 01 5E 08 00    HOTSPOT_RECT                  left=0x01FC, top=0x0050, right=0x024A, bottom=0x0155, target=0x085E, cursor=0x00
0857  0E 8E 08                               HOTSPOT_LEFT                  target=0x088E
085A  0F 94 08                               HOTSPOT_RIGHT                 target=0x0894
085D  13                                     INPUTLOOPEND                  
085E  09 40 14                               VIDEOREF                      ref=0x1440 (FH[64]=?)
0861  09 13 14                               VIDEOREF                      ref=0x1413 (FH[19]=?)
0864  09 44 14                               VIDEOREF                      ref=0x1444 (FH[68]=?)
0867  15 DA 08                               JMP                           target=0x08DA
086A  09 3A 14                               VIDEOREF                      ref=0x143A (FH[58]=?)
086D  15 2A 08                               JMP                           target=0x082A
0870  09 3F 14                               VIDEOREF                      ref=0x143F (FH[63]=?)
0873  15 4A 08                               JMP                           target=0x084A
0876  09 39 14                               VIDEOREF                      ref=0x1439 (FH[57]=?)
0879  15 32 08                               JMP                           target=0x0832
087C  09 3E 14                               VIDEOREF                      ref=0x143E (FH[62]=?)
087F  15 0A 08                               JMP                           target=0x080A
0882  09 3C 14                               VIDEOREF                      ref=0x143C (FH[60]=?)
0885  15 4A 08                               JMP                           target=0x084A
0888  09 3D 14                               VIDEOREF                      ref=0x143D (FH[61]=?)
088B  15 2A 08                               JMP                           target=0x082A
088E  09 3B 14                               VIDEOREF                      ref=0x143B (FH[59]=?)
0891  15 0A 08                               JMP                           target=0x080A
0894  09 40 14                               VIDEOREF                      ref=0x1440 (FH[64]=?)
0897  15 32 08                               JMP                           target=0x0832
089A  0B                                     INPUTLOOPSTART                
089B  0D 7C 00 51 00 51 01 57 01 AE 08 00    HOTSPOT_RECT                  left=0x007C, top=0x0051, right=0x0151, bottom=0x0157, target=0x08AE, cursor=0x00
08A7  0E F4 08                               HOTSPOT_LEFT                  target=0x08F4
08AA  0F FA 08                               HOTSPOT_RIGHT                 target=0x08FA
08AD  13                                     INPUTLOOPEND                  
08AE  09 16 14                               VIDEOREF                      ref=0x1416 (FH[22]=?)
08B1  15 0A 08                               JMP                           target=0x080A
08B4  96 8C 30 B1                            LOADSTRING                    dst=v[0x08C], values=[0, 1]
08B8  0B                                     INPUTLOOPSTART                
08B9  0E 00 09                               HOTSPOT_LEFT                  target=0x0900
08BC  0F 06 09                               HOTSPOT_RIGHT                 target=0x0906
08BF  13                                     INPUTLOOPEND                  
08C0  0B                                     INPUTLOOPSTART                
08C1  0D 05 01 9D 00 5D 01 17 01 D4 08 00    HOTSPOT_RECT                  left=0x0105, top=0x009D, right=0x015D, bottom=0x0117, target=0x08D4, cursor=0x00
08CD  0E 0C 09                               HOTSPOT_LEFT                  target=0x090C
08D0  0F 12 09                               HOTSPOT_RIGHT                 target=0x0912
08D3  13                                     INPUTLOOPEND                  
08D4  09 15 14                               VIDEOREF                      ref=0x1415 (FH[21]=?)
08D7  15 93 05                               JMP                           target=0x0593
08DA  0B                                     INPUTLOOPSTART                
08DB  0D D4 00 59 00 F0 01 8D 01 EE 08 00    HOTSPOT_RECT                  left=0x00D4, top=0x0059, right=0x01F0, bottom=0x018D, target=0x08EE, cursor=0x00
08E7  0E 18 09                               HOTSPOT_LEFT                  target=0x0918
08EA  0F 1E 09                               HOTSPOT_RIGHT                 target=0x091E
08ED  13                                     INPUTLOOPEND                  
08EE  09 17 14                               VIDEOREF                      ref=0x1417 (FH[23]=?)
08F1  15 B6 22                               JMP                           target=0x22B6
08F4  09 42 14                               VIDEOREF                      ref=0x1442 (FH[66]=?)
08F7  15 B4 08                               JMP                           target=0x08B4
08FA  09 47 14                               VIDEOREF                      ref=0x1447 (FH[71]=?)
08FD  15 DA 08                               JMP                           target=0x08DA
0900  09 41 14                               VIDEOREF                      ref=0x1441 (FH[65]=?)
0903  15 C0 08                               JMP                           target=0x08C0
0906  09 46 14                               VIDEOREF                      ref=0x1446 (FH[70]=?)
0909  15 9A 08                               JMP                           target=0x089A
090C  09 44 14                               VIDEOREF                      ref=0x1444 (FH[68]=?)
090F  15 DA 08                               JMP                           target=0x08DA
0912  09 45 14                               VIDEOREF                      ref=0x1445 (FH[69]=?)
0915  15 B4 08                               JMP                           target=0x08B4
0918  09 43 14                               VIDEOREF                      ref=0x1443 (FH[67]=?)
091B  15 9A 08                               JMP                           target=0x089A
091E  09 48 14                               VIDEOREF                      ref=0x1448 (FH[72]=?)
0921  15 C0 08                               JMP                           target=0x08C0
0924  96 8C 30 B3                            LOADSTRING                    dst=v[0x08C], values=[0, 3]
0928  09 0C 14                               VIDEOREF                      ref=0x140C (FH[12]=?)
092B  03                                     FADEIN_NEXT_VIDEO             
092C  05                                     FIRSTFRAME_NEXT_VIDEO         
092D  09 64 10                               VIDEOREF                      ref=0x1064 (DR[100]=?)
0930  A3 D7 B0 38 09                         STRCMP_EQ_JMP                 start=v[0x0D7], values=[0], target=0x0938
0935  02 0A 4C                               PLAYSONG                      ref=0x4C0A (XMI[10]=?)
0938  96 8C 30 B3                            LOADSTRING                    dst=v[0x08C], values=[0, 3]
093C  0B                                     INPUTLOOPSTART                
093D  0E 47 09                               HOTSPOT_LEFT                  target=0x0947
0940  0F 4D 09                               HOTSPOT_RIGHT                 target=0x094D
0943  11 85 09                               HOTSPOT_CENTER_2              target=0x0985
0946  13                                     INPUTLOOPEND                  
0947  09 64 10                               VIDEOREF                      ref=0x1064 (DR[100]=?)
094A  15 53 09                               JMP                           target=0x0953
094D  09 67 10                               VIDEOREF                      ref=0x1067 (DR[103]=?)
0950  15 53 09                               JMP                           target=0x0953
0953  0B                                     INPUTLOOPSTART                
0954  0F 6D 09                               HOTSPOT_RIGHT                 target=0x096D
0957  0E 67 09                               HOTSPOT_LEFT                  target=0x0967
095A  0D 24 00 73 00 5C 02 80 01 73 09 00    HOTSPOT_RECT                  left=0x0024, top=0x0073, right=0x025C, bottom=0x0180, target=0x0973, cursor=0x00
0966  13                                     INPUTLOOPEND                  
0967  09 65 10                               VIDEOREF                      ref=0x1065 (DR[101]=?)
096A  15 38 09                               JMP                           target=0x0938
096D  09 66 10                               VIDEOREF                      ref=0x1066 (DR[102]=?)
0970  15 38 09                               JMP                           target=0x0938
0973  09 5E 10                               VIDEOREF                      ref=0x105E (DR[94]=?)
0976  03                                     FADEIN_NEXT_VIDEO             
0977  05                                     FIRSTFRAME_NEXT_VIDEO         
0978  09 2B 14                               VIDEOREF                      ref=0x142B (FH[43]=?)
097B  96 8C 30 B1                            LOADSTRING                    dst=v[0x08C], values=[0, 1]
097F  02 39 4C                               PLAYSONG                      ref=0x4C39 (XMI[57]=?)
0982  15 1A 07                               JMP                           target=0x071A
0985  09 5F 10                               VIDEOREF                      ref=0x105F (DR[95]=?)
0988  9A FA E1 9F 09                         STRCMP_NE_JMP                 start=v[0x0FA], values=[49], target=0x099F
098D  9A D6 B0 9F 09                         STRCMP_NE_JMP                 start=v[0x0D6], values=[0], target=0x099F
0992  96 D6 B1                               LOADSTRING                    dst=v[0x0D6], values=[1]
0995  18 E6 37                               CALL                          target=0x37E6
0998  96 8E 31 B7                            LOADSTRING                    dst=v[0x08E], values=[1, 7]
099C  02 10 4C                               PLAYSONG                      ref=0x4C10 (XMI[16]=?)
099F  9A D7 B0 AE 09                         STRCMP_NE_JMP                 start=v[0x0D7], values=[0], target=0x09AE
09A4  96 D7 B1                               LOADSTRING                    dst=v[0x0D7], values=[1]
09A7  18 D4 37                               CALL                          target=0x37D4
09AA  96 8E 31 B6                            LOADSTRING                    dst=v[0x08E], values=[1, 6]
09AE  0B                                     INPUTLOOPSTART                
09AF  9A 8E 31 B6 B8 09                      STRCMP_NE_JMP                 start=v[0x08E], values=[1, 6], target=0x09B8
09B5  30 03 3B                               HOTSPOT_BOTTOM_4              target=0x3B03
09B8  A3 FA E1 C9 09                         STRCMP_EQ_JMP                 start=v[0x0FA], values=[49], target=0x09C9
09BD  0D 02 01 F8 00 73 01 3A 01 16 0A 06    HOTSPOT_RECT                  left=0x0102, top=0x00F8, right=0x0173, bottom=0x013A, target=0x0A16, cursor=0x06
09C9  1A 08 01 B1 DB 09                      STRCMP_NE_JMP                 start=v[0x108], values=[1], target=0x09DB
09CF  0D 02 01 F8 00 73 01 3A 01 16 0A 06    HOTSPOT_RECT                  left=0x0102, top=0x00F8, right=0x0173, bottom=0x013A, target=0x0A16, cursor=0x06
09DB  0F 59 0A                               HOTSPOT_RIGHT                 target=0x0A59
09DE  0D 6C 00 0B 01 48 02 31 01 4D 0A 07    HOTSPOT_RECT                  left=0x006C, top=0x010B, right=0x0248, bottom=0x0131, target=0x0A4D, cursor=0x07
09EA  9A D6 B1 FB 09                         STRCMP_NE_JMP                 start=v[0x0D6], values=[1], target=0x09FB
09EF  0D 37 00 95 00 4F 00 3F 01 0A 0A 04    HOTSPOT_RECT                  left=0x0037, top=0x0095, right=0x004F, bottom=0x013F, target=0x0A0A, cursor=0x04
09FB  9A 8E 31 B7 09 0A                      STRCMP_NE_JMP                 start=v[0x08E], values=[1, 7], target=0x0A09
0A01  9A D6 B1 09 0A                         STRCMP_NE_JMP                 start=v[0x0D6], values=[1], target=0x0A09
0A06  30 03 3B                               HOTSPOT_BOTTOM_4              target=0x3B03
0A09  13                                     INPUTLOOPEND                  
0A0A  02 07 4C                               PLAYSONG                      ref=0x4C07 (XMI[7]=?)
0A0D  09 00 10                               VIDEOREF                      ref=0x1000 (DR[0]=?)
0A10  02 10 4C                               PLAYSONG                      ref=0x4C10 (XMI[16]=?)
0A13  15 88 09                               JMP                           target=0x0988
0A16  02 0A 4C                               PLAYSONG                      ref=0x4C0A (XMI[10]=?)
0A19  1A 09 01 B0 2B 0A                      STRCMP_NE_JMP                 start=v[0x109], values=[0], target=0x0A2B
0A1F  23 05 01 B0 2B 0A                      STRCMP_EQ_JMP                 start=v[0x105], values=[0], target=0x0A2B
0A25  4B 00                                  SET_VIDEO_MODE                value=0x00
0A27  16 09 01 B1                            LOADSTRING                    dst=v[0x109], values=[1]
0A2B  09 69 10                               VIDEOREF                      ref=0x1069 (DR[105]=?)
0A2E  18 DA 42                               CALL                          target=0x42DA
0A31  1C 6A 10                               VIDEO_TRANSITION_REF          ref=0x106A (DR[106]=?)
0A34  18 BA 03                               CALL                          target=0x03BA
0A37  05                                     FIRSTFRAME_NEXT_VIDEO         
0A38  09 6A 10                               VIDEOREF                      ref=0x106A (DR[106]=?)
0A3B  1A 09 01 B1 47 0A                      STRCMP_NE_JMP                 start=v[0x109], values=[1], target=0x0A47
0A41  4B 01                                  SET_VIDEO_MODE                value=0x01
0A43  16 09 01 B0                            LOADSTRING                    dst=v[0x109], values=[0]
0A47  09 6A 10                               VIDEOREF                      ref=0x106A (DR[106]=?)
0A4A  15 88 09                               JMP                           target=0x0988
0A4D  02 04 4C                               PLAYSONG                      ref=0x4C04 (XMI[4]=?)
0A50  09 63 10                               VIDEOREF                      ref=0x1063 (DR[99]=?)
0A53  02 10 4C                               PLAYSONG                      ref=0x4C10 (XMI[16]=?)
0A56  15 88 09                               JMP                           target=0x0988
0A59  09 62 10                               VIDEOREF                      ref=0x1062 (DR[98]=?)
0A5C  09 60 10                               VIDEOREF                      ref=0x1060 (DR[96]=?)
0A5F  15 53 09                               JMP                           target=0x0953
0A62  96 8C 30 B4                            LOADSTRING                    dst=v[0x08C], values=[0, 4]
0A66  03                                     FADEIN_NEXT_VIDEO             
0A67  05                                     FIRSTFRAME_NEXT_VIDEO         
0A68  09 0C 2C                               VIDEOREF                      ref=0x2C0C (K[12]=?)
0A6B  02 22 4C                               PLAYSONG                      ref=0x4C22 (XMI[34]=?)
0A6E  9A C3 B1 88 0A                         STRCMP_NE_JMP                 start=v[0x0C3], values=[1], target=0x0A88
0A73  9A C0 B0 88 0A                         STRCMP_NE_JMP                 start=v[0x0C0], values=[0], target=0x0A88
0A78  09 0F 2C                               VIDEOREF                      ref=0x2C0F (K[15]=?)
0A7B  18 B5 39                               CALL                          target=0x39B5
0A7E  96 8E 33 B9                            LOADSTRING                    dst=v[0x08E], values=[3, 9]
0A82  96 C0 B1                               LOADSTRING                    dst=v[0x0C0], values=[1]
0A85  09 0E 2C                               VIDEOREF                      ref=0x2C0E (K[14]=?)
0A88  0B                                     INPUTLOOPSTART                
0A89  9A 8E 33 B9 92 0A                      STRCMP_NE_JMP                 start=v[0x08E], values=[3, 9], target=0x0A92
0A8F  30 03 3B                               HOTSPOT_BOTTOM_4              target=0x3B03
0A92  0E EC 0A                               HOTSPOT_LEFT                  target=0x0AEC
0A95  9A BF B0 A6 0A                         STRCMP_NE_JMP                 start=v[0x0BF], values=[0], target=0x0AA6
0A9A  0D E7 00 AA 00 8C 01 49 01 D2 0A 04    HOTSPOT_RECT                  left=0x00E7, top=0x00AA, right=0x018C, bottom=0x0149, target=0x0AD2, cursor=0x04
0AA6  9A BF B1 AE 0A                         STRCMP_NE_JMP                 start=v[0x0BF], values=[1], target=0x0AAE
0AAB  11 1D 0B                               HOTSPOT_CENTER_2              target=0x0B1D
0AAE  9A C1 B0 BF 0A                         STRCMP_NE_JMP                 start=v[0x0C1], values=[0], target=0x0ABF
0AB3  0D BE 01 E5 00 29 02 24 01 DF 0A 04    HOTSPOT_RECT                  left=0x01BE, top=0x00E5, right=0x0229, bottom=0x0124, target=0x0ADF, cursor=0x04
0ABF  9A 8E 34 B0 C8 0A                      STRCMP_NE_JMP                 start=v[0x08E], values=[4, 0], target=0x0AC8
0AC5  30 03 3B                               HOTSPOT_BOTTOM_4              target=0x3B03
0AC8  9A 8E 33 B8 D1 0A                      STRCMP_NE_JMP                 start=v[0x08E], values=[3, 8], target=0x0AD1
0ACE  30 03 3B                               HOTSPOT_BOTTOM_4              target=0x3B03
0AD1  13                                     INPUTLOOPEND                  
0AD2  96 BF B1                               LOADSTRING                    dst=v[0x0BF], values=[1]
0AD5  96 8E 34 B0                            LOADSTRING                    dst=v[0x08E], values=[4, 0]
0AD9  18 33 39                               CALL                          target=0x3933
0ADC  15 88 0A                               JMP                           target=0x0A88
0ADF  96 C1 B1                               LOADSTRING                    dst=v[0x0C1], values=[1]
0AE2  96 8E 33 B8                            LOADSTRING                    dst=v[0x08E], values=[3, 8]
0AE6  18 45 39                               CALL                          target=0x3945
0AE9  15 88 0A                               JMP                           target=0x0A88
0AEC  09 0C 2C                               VIDEOREF                      ref=0x2C0C (K[12]=?)
0AEF  15 F8 0A                               JMP                           target=0x0AF8
0AF2  09 0D 2C                               VIDEOREF                      ref=0x2C0D (K[13]=?)
0AF5  15 88 0A                               JMP                           target=0x0A88
0AF8  0B                                     INPUTLOOPSTART                
0AF9  0F F2 0A                               HOTSPOT_RIGHT                 target=0x0AF2
0AFC  10 00 0B                               HOTSPOT_CENTER                target=0x0B00
0AFF  13                                     INPUTLOOPEND                  
0B00  09 01 2C                               VIDEOREF                      ref=0x2C01 (K[1]=?)
0B03  03                                     FADEIN_NEXT_VIDEO             
0B04  05                                     FIRSTFRAME_NEXT_VIDEO         
0B05  09 35 14                               VIDEOREF                      ref=0x1435 (FH[53]=?)
0B08  96 8C 30 B1                            LOADSTRING                    dst=v[0x08C], values=[0, 1]
0B0C  02 39 4C                               PLAYSONG                      ref=0x4C39 (XMI[57]=?)
0B0F  15 9E 07                               JMP                           target=0x079E
0B12  09 04 2C                               VIDEOREF                      ref=0x2C04 (K[4]=?)
0B15  96 8C 30 B5                            LOADSTRING                    dst=v[0x08C], values=[0, 5]
0B19  03                                     FADEIN_NEXT_VIDEO             
0B1A  15 0A 18                               JMP                           target=0x180A
0B1D  09 00 2C                               VIDEOREF                      ref=0x2C00 (K[0]=?)
0B20  15 33 0B                               JMP                           target=0x0B33
0B23  03                                     FADEIN_NEXT_VIDEO             
0B24  09 18 2C                               VIDEOREF                      ref=0x2C18 (K[24]=?)
0B27  15 33 0B                               JMP                           target=0x0B33
0B2A  09 16 2C                               VIDEOREF                      ref=0x2C16 (K[22]=?)
0B2D  15 33 0B                               JMP                           target=0x0B33
0B30  09 13 2C                               VIDEOREF                      ref=0x2C13 (K[19]=?)
0B33  0B                                     INPUTLOOPSTART                
0B34  0E 9E 0B                               HOTSPOT_LEFT                  target=0x0B9E
0B37  0F AF 0B                               HOTSPOT_RIGHT                 target=0x0BAF
0B3A  9A FA E1 50 0B                         STRCMP_NE_JMP                 start=v[0x0FA], values=[49], target=0x0B50
0B3F  A3 F9 E1 50 0B                         STRCMP_EQ_JMP                 start=v[0x0F9], values=[49], target=0x0B50
0B44  0D 65 00 77 00 1F 02 69 01 63 0B 06    HOTSPOT_RECT                  left=0x0065, top=0x0077, right=0x021F, bottom=0x0169, target=0x0B63, cursor=0x06
0B50  1A 08 01 B1 62 0B                      STRCMP_NE_JMP                 start=v[0x108], values=[1], target=0x0B62
0B56  0D 65 00 77 00 1F 02 69 01 63 0B 06    HOTSPOT_RECT                  left=0x0065, top=0x0077, right=0x021F, bottom=0x0169, target=0x0B63, cursor=0x06
0B62  13                                     INPUTLOOPEND                  
0B63  09 03 2C                               VIDEOREF                      ref=0x2C03 (K[3]=?)
0B66  23 05 01 B0 72 0B                      STRCMP_EQ_JMP                 start=v[0x105], values=[0], target=0x0B72
0B6C  4B 00                                  SET_VIDEO_MODE                value=0x00
0B6E  16 09 01 B1                            LOADSTRING                    dst=v[0x109], values=[1]
0B72  03                                     FADEIN_NEXT_VIDEO             
0B73  09 19 2C                               VIDEOREF                      ref=0x2C19 (K[25]=?)
0B76  18 39 41                               CALL                          target=0x4139
0B79  9A F9 E1 89 0B                         STRCMP_NE_JMP                 start=v[0x0F9], values=[49], target=0x0B89
0B7E  9A BE B0 89 0B                         STRCMP_NE_JMP                 start=v[0x0BE], values=[0], target=0x0B89
0B83  96 BE B1                               LOADSTRING                    dst=v[0x0BE], values=[1]
0B86  18 57 39                               CALL                          target=0x3957
0B89  04                                     PALFADEOUT                    
0B8A  1A 09 01 B1 96 0B                      STRCMP_NE_JMP                 start=v[0x109], values=[1], target=0x0B96
0B90  4B 01                                  SET_VIDEO_MODE                value=0x01
0B92  16 09 01 B0                            LOADSTRING                    dst=v[0x109], values=[0]
0B96  03                                     FADEIN_NEXT_VIDEO             
0B97  05                                     FIRSTFRAME_NEXT_VIDEO         
0B98  09 17 2C                               VIDEOREF                      ref=0x2C17 (K[23]=?)
0B9B  15 33 0B                               JMP                           target=0x0B33
0B9E  09 12 2C                               VIDEOREF                      ref=0x2C12 (K[18]=?)
0BA1  15 A7 0B                               JMP                           target=0x0BA7
0BA4  09 15 2C                               VIDEOREF                      ref=0x2C15 (K[21]=?)
0BA7  0B                                     INPUTLOOPSTART                
0BA8  0E CE 0B                               HOTSPOT_LEFT                  target=0x0BCE
0BAB  0F 2A 0B                               HOTSPOT_RIGHT                 target=0x0B2A
0BAE  13                                     INPUTLOOPEND                  
0BAF  09 17 2C                               VIDEOREF                      ref=0x2C17 (K[23]=?)
0BB2  15 B8 0B                               JMP                           target=0x0BB8
0BB5  09 10 2C                               VIDEOREF                      ref=0x2C10 (K[16]=?)
0BB8  0B                                     INPUTLOOPSTART                
0BB9  0E 30 0B                               HOTSPOT_LEFT                  target=0x0B30
0BBC  9A F9 E1 C4 0B                         STRCMP_NE_JMP                 start=v[0x0F9], values=[49], target=0x0BC4
0BC1  10 12 0B                               HOTSPOT_CENTER                target=0x0B12
0BC4  0F C8 0B                               HOTSPOT_RIGHT                 target=0x0BC8
0BC7  13                                     INPUTLOOPEND                  
0BC8  09 14 2C                               VIDEOREF                      ref=0x2C14 (K[20]=?)
0BCB  15 FA 0B                               JMP                           target=0x0BFA
0BCE  09 11 2C                               VIDEOREF                      ref=0x2C11 (K[17]=?)
0BD1  15 FA 0B                               JMP                           target=0x0BFA
0BD4  1A 00 01 B0 E0 0B                      STRCMP_NE_JMP                 start=v[0x100], values=[0], target=0x0BE0
0BDA  02 02 4C                               PLAYSONG                      ref=0x4C02 (XMI[2]=?)
0BDD  15 E3 0B                               JMP                           target=0x0BE3
0BE0  02 23 4C                               PLAYSONG                      ref=0x4C23 (XMI[35]=?)
0BE3  09 06 2C                               VIDEOREF                      ref=0x2C06 (K[6]=?)
0BE6  96 BD B1                               LOADSTRING                    dst=v[0x0BD], values=[1]
0BE9  18 64 39                               CALL                          target=0x3964
0BEC  96 8E 34 B2                            LOADSTRING                    dst=v[0x08E], values=[4, 2]
0BF0  07                                     VIDEOFLAG7_ON                 
0BF1  09 14 50                               VIDEOREF                      ref=0x5014 (GAMWAV[20]=?)
0BF4  09 05 2C                               VIDEOREF                      ref=0x2C05 (K[5]=?)
0BF7  15 FA 0B                               JMP                           target=0x0BFA
0BFA  0B                                     INPUTLOOPSTART                
0BFB  9A 8E 34 B2 04 0C                      STRCMP_NE_JMP                 start=v[0x08E], values=[4, 2], target=0x0C04
0C01  30 03 3B                               HOTSPOT_BOTTOM_4              target=0x3B03
0C04  0E B5 0B                               HOTSPOT_LEFT                  target=0x0BB5
0C07  9A BD B0 1D 0C                         STRCMP_NE_JMP                 start=v[0x0BD], values=[0], target=0x0C1D
0C0C  9A F9 E1 1D 0C                         STRCMP_NE_JMP                 start=v[0x0F9], values=[49], target=0x0C1D
0C11  0D 90 00 DA 00 E0 00 1C 01 D4 0B 04    HOTSPOT_RECT                  left=0x0090, top=0x00DA, right=0x00E0, bottom=0x011C, target=0x0BD4, cursor=0x04
0C1D  11 24 0C                               HOTSPOT_CENTER_2              target=0x0C24
0C20  0F A4 0B                               HOTSPOT_RIGHT                 target=0x0BA4
0C23  13                                     INPUTLOOPEND                  
0C24  09 02 2C                               VIDEOREF                      ref=0x2C02 (K[2]=?)
0C27  15 F8 0A                               JMP                           target=0x0AF8
0C2A  09 14 14                               VIDEOREF                      ref=0x1414 (FH[20]=?)
0C2D  96 8C 30 B8                            LOADSTRING                    dst=v[0x08C], values=[0, 8]
0C31  03                                     FADEIN_NEXT_VIDEO             
0C32  05                                     FIRSTFRAME_NEXT_VIDEO         
0C33  09 01 40                               VIDEOREF                      ref=0x4001 (MU[1]=?)
0C36  96 8C 30 B8                            LOADSTRING                    dst=v[0x08C], values=[0, 8]
0C3A  9A CD B0 53 0C                         STRCMP_NE_JMP                 start=v[0x0CD], values=[0], target=0x0C53
0C3F  9A F3 E1 53 0C                         STRCMP_NE_JMP                 start=v[0x0F3], values=[49], target=0x0C53
0C44  9A F6 E1 53 0C                         STRCMP_NE_JMP                 start=v[0x0F6], values=[49], target=0x0C53
0C49  96 CD B1                               LOADSTRING                    dst=v[0x0CD], values=[1]
0C4C  96 8E 32 B6                            LOADSTRING                    dst=v[0x08E], values=[2, 6]
0C50  18 43 3A                               CALL                          target=0x3A43
0C53  0B                                     INPUTLOOPSTART                
0C54  9A 8E 32 B6 5D 0C                      STRCMP_NE_JMP                 start=v[0x08E], values=[2, 6], target=0x0C5D
0C5A  30 03 3B                               HOTSPOT_BOTTOM_4              target=0x3B03
0C5D  9A 8E 32 B7 66 0C                      STRCMP_NE_JMP                 start=v[0x08E], values=[2, 7], target=0x0C66
0C63  30 03 3B                               HOTSPOT_BOTTOM_4              target=0x3B03
0C66  9A 8E 32 B8 6F 0C                      STRCMP_NE_JMP                 start=v[0x08E], values=[2, 8], target=0x0C6F
0C6C  30 03 3B                               HOTSPOT_BOTTOM_4              target=0x3B03
0C6F  0E 3B 0D                               HOTSPOT_LEFT                  target=0x0D3B
0C72  9A CC B1 88 0C                         STRCMP_NE_JMP                 start=v[0x0CC], values=[1], target=0x0C88
0C77  A3 F6 E1 88 0C                         STRCMP_EQ_JMP                 start=v[0x0F6], values=[49], target=0x0C88
0C7C  0D C8 00 F0 00 27 01 1D 01 F8 0C 06    HOTSPOT_RECT                  left=0x00C8, top=0x00F0, right=0x0127, bottom=0x011D, target=0x0CF8, cursor=0x06
0C88  1A 08 01 B1 9A 0C                      STRCMP_NE_JMP                 start=v[0x108], values=[1], target=0x0C9A
0C8E  0D C8 00 F0 00 27 01 1D 01 F8 0C 06    HOTSPOT_RECT                  left=0x00C8, top=0x00F0, right=0x0127, bottom=0x011D, target=0x0CF8, cursor=0x06
0C9A  9A CC B0 AB 0C                         STRCMP_NE_JMP                 start=v[0x0CC], values=[0], target=0x0CAB
0C9F  0D C8 00 F0 00 27 01 1D 01 CC 0C 04    HOTSPOT_RECT                  left=0x00C8, top=0x00F0, right=0x0127, bottom=0x011D, target=0x0CCC, cursor=0x04
0CAB  9A CB B0 BC 0C                         STRCMP_NE_JMP                 start=v[0x0CB], values=[0], target=0x0CBC
0CB0  0D 68 00 83 00 B8 00 09 01 DC 0C 04    HOTSPOT_RECT                  left=0x0068, top=0x0083, right=0x00B8, bottom=0x0109, target=0x0CDC, cursor=0x04
0CBC  0D C6 01 82 00 22 02 30 01 26 0D 07    HOTSPOT_RECT                  left=0x01C6, top=0x0082, right=0x0222, bottom=0x0130, target=0x0D26, cursor=0x07
0CC8  0F 41 0D                               HOTSPOT_RIGHT                 target=0x0D41
0CCB  13                                     INPUTLOOPEND                  
0CCC  02 25 4C                               PLAYSONG                      ref=0x4C25 (XMI[37]=?)
0CCF  96 CC B1                               LOADSTRING                    dst=v[0x0CC], values=[1]
0CD2  96 8E 32 B7                            LOADSTRING                    dst=v[0x08E], values=[2, 7]
0CD6  18 67 3A                               CALL                          target=0x3A67
0CD9  15 36 0C                               JMP                           target=0x0C36
0CDC  96 CB B1                               LOADSTRING                    dst=v[0x0CB], values=[1]
0CDF  96 8E 32 B8                            LOADSTRING                    dst=v[0x08E], values=[2, 8]
0CE3  02 17 4C                               PLAYSONG                      ref=0x4C17 (XMI[23]=?)
0CE6  18 76 3A                               CALL                          target=0x3A76
0CE9  15 36 0C                               JMP                           target=0x0C36
0CEC  09 02 40                               VIDEOREF                      ref=0x4002 (MU[2]=?)
0CEF  15 36 0C                               JMP                           target=0x0C36
0CF2  09 03 40                               VIDEOREF                      ref=0x4003 (MU[3]=?)
0CF5  15 36 0C                               JMP                           target=0x0C36
0CF8  96 92 30 B7                            LOADSTRING                    dst=v[0x092], values=[0, 7]
0CFC  1A 09 01 B0 0E 0D                      STRCMP_NE_JMP                 start=v[0x109], values=[0], target=0x0D0E
0D02  23 05 01 B0 0E 0D                      STRCMP_EQ_JMP                 start=v[0x105], values=[0], target=0x0D0E
0D08  4B 00                                  SET_VIDEO_MODE                value=0x00
0D0A  16 09 01 B1                            LOADSTRING                    dst=v[0x109], values=[1]
0D0E  09 09 40                               VIDEOREF                      ref=0x4009 (MU[9]=?)
0D11  18 A8 3F                               CALL                          target=0x3FA8
0D14  1A 09 01 B1 20 0D                      STRCMP_NE_JMP                 start=v[0x109], values=[1], target=0x0D20
0D1A  4B 01                                  SET_VIDEO_MODE                value=0x01
0D1C  16 09 01 B0                            LOADSTRING                    dst=v[0x109], values=[0]
0D20  09 0A 40                               VIDEOREF                      ref=0x400A (MU[10]=?)
0D23  15 36 0C                               JMP                           target=0x0C36
0D26  0A                                     VIDEOFLAG5_ON                 
0D27  02 3E 4C                               PLAYSONG                      ref=0x4C3E (XMI[62]=?)
0D2A  09 06 40                               VIDEOREF                      ref=0x4006 (MU[6]=?)
0D2D  07                                     VIDEOFLAG7_ON                 
0D2E  09 64 50                               VIDEOREF                      ref=0x5064 (GAMWAV[100]=?)
0D31  09 0B 40                               VIDEOREF                      ref=0x400B (MU[11]=?)
0D34  96 8C 31 B5                            LOADSTRING                    dst=v[0x08C], values=[1, 5]
0D38  15 C2 0D                               JMP                           target=0x0DC2
0D3B  09 04 40                               VIDEOREF                      ref=0x4004 (MU[4]=?)
0D3E  15 47 0D                               JMP                           target=0x0D47
0D41  09 01 40                               VIDEOREF                      ref=0x4001 (MU[1]=?)
0D44  15 47 0D                               JMP                           target=0x0D47
0D47  0B                                     INPUTLOOPSTART                
0D48  9A CA B0 59 0D                         STRCMP_NE_JMP                 start=v[0x0CA], values=[0], target=0x0D59
0D4D  0D 12 00 9C 00 7E 00 F9 00 94 0D 07    HOTSPOT_RECT                  left=0x0012, top=0x009C, right=0x007E, bottom=0x00F9, target=0x0D94, cursor=0x07
0D59  9A C9 B0 6A 0D                         STRCMP_NE_JMP                 start=v[0x0C9], values=[0], target=0x0D6A
0D5E  0D 12 00 9C 00 7E 00 F9 00 9A 0D 07    HOTSPOT_RECT                  left=0x0012, top=0x009C, right=0x007E, bottom=0x00F9, target=0x0D9A, cursor=0x07
0D6A  9A C8 B0 7B 0D                         STRCMP_NE_JMP                 start=v[0x0C8], values=[0], target=0x0D7B
0D6F  0D 12 00 9C 00 7E 00 F9 00 A0 0D 07    HOTSPOT_RECT                  left=0x0012, top=0x009C, right=0x007E, bottom=0x00F9, target=0x0DA0, cursor=0x07
0D7B  0F F2 0C                               HOTSPOT_RIGHT                 target=0x0CF2
0D7E  0E EC 0C                               HOTSPOT_LEFT                  target=0x0CEC
0D81  10 85 0D                               HOTSPOT_CENTER                target=0x0D85
0D84  13                                     INPUTLOOPEND                  
0D85  09 05 40                               VIDEOREF                      ref=0x4005 (MU[5]=?)
0D88  03                                     FADEIN_NEXT_VIDEO             
0D89  05                                     FIRSTFRAME_NEXT_VIDEO         
0D8A  09 3D 14                               VIDEOREF                      ref=0x143D (FH[61]=?)
0D8D  96 8C 30 B1                            LOADSTRING                    dst=v[0x08C], values=[0, 1]
0D91  15 32 08                               JMP                           target=0x0832
0D94  18 85 3A                               CALL                          target=0x3A85
0D97  15 47 0D                               JMP                           target=0x0D47
0D9A  18 94 3A                               CALL                          target=0x3A94
0D9D  15 47 0D                               JMP                           target=0x0D47
0DA0  18 A3 3A                               CALL                          target=0x3AA3
0DA3  15 47 0D                               JMP                           target=0x0D47
0DA6  09 0C 40                               VIDEOREF                      ref=0x400C (MU[12]=?)
0DA9  09 07 40                               VIDEOREF                      ref=0x4007 (MU[7]=?)
0DAC  96 8C 30 B8                            LOADSTRING                    dst=v[0x08C], values=[0, 8]
0DB0  15 36 0C                               JMP                           target=0x0C36
0DB3  02 06 4C                               PLAYSONG                      ref=0x4C06 (XMI[6]=?)
0DB6  96 8C 31 B5                            LOADSTRING                    dst=v[0x08C], values=[1, 5]
0DBA  03                                     FADEIN_NEXT_VIDEO             
0DBB  05                                     FIRSTFRAME_NEXT_VIDEO         
0DBC  09 72 20                               VIDEOREF                      ref=0x2072 (HTBD[114]=?)
0DBF  15 CA 0D                               JMP                           target=0x0DCA
0DC2  03                                     FADEIN_NEXT_VIDEO             
0DC3  09 7A 20                               VIDEOREF                      ref=0x207A (HTBD[122]=?)
0DC6  96 8C 31 B5                            LOADSTRING                    dst=v[0x08C], values=[1, 5]
0DCA  9A E9 E1 DE 0D                         STRCMP_NE_JMP                 start=v[0x0E9], values=[49], target=0x0DDE
0DCF  9A D4 B0 DE 0D                         STRCMP_NE_JMP                 start=v[0x0D4], values=[0], target=0x0DDE
0DD4  96 D4 B1                               LOADSTRING                    dst=v[0x0D4], values=[1]
0DD7  96 8E 31 B9                            LOADSTRING                    dst=v[0x08E], values=[1, 9]
0DDB  18 C2 37                               CALL                          target=0x37C2
0DDE  0B                                     INPUTLOOPSTART                
0DDF  0F C3 0E                               HOTSPOT_RIGHT                 target=0x0EC3
0DE2  A3 E9 E1 F3 0D                         STRCMP_EQ_JMP                 start=v[0x0E9], values=[49], target=0x0DF3
0DE7  0D 17 01 E6 00 6C 01 19 01 8C 0E 06    HOTSPOT_RECT                  left=0x0117, top=0x00E6, right=0x016C, bottom=0x0119, target=0x0E8C, cursor=0x06
0DF3  1A 08 01 B1 05 0E                      STRCMP_NE_JMP                 start=v[0x108], values=[1], target=0x0E05
0DF9  0D 17 01 E6 00 6C 01 19 01 8C 0E 06    HOTSPOT_RECT                  left=0x0117, top=0x00E6, right=0x016C, bottom=0x0119, target=0x0E8C, cursor=0x06
0E05  9A E9 E1 2F 0E                         STRCMP_NE_JMP                 start=v[0x0E9], values=[49], target=0x0E2F
0E0A  A3 99 B0 2F 0E                         STRCMP_EQ_JMP                 start=v[0x099], values=[0], target=0x0E2F
0E0F  9A D3 B0 23 0E                         STRCMP_NE_JMP                 start=v[0x0D3], values=[0], target=0x0E23
0E14  0D 22 00 5F 00 5A 00 59 01 EC 0E 04    HOTSPOT_RECT                  left=0x0022, top=0x005F, right=0x005A, bottom=0x0159, target=0x0EEC, cursor=0x04
0E20  15 2F 0E                               JMP                           target=0x0E2F
0E23  0D 22 00 5F 00 5A 00 59 01 75 0E 00    HOTSPOT_RECT                  left=0x0022, top=0x005F, right=0x005A, bottom=0x0159, target=0x0E75, cursor=0x00
0E2F  9A 8E 32 B0 38 0E                      STRCMP_NE_JMP                 start=v[0x08E], values=[2, 0], target=0x0E38
0E35  30 03 3B                               HOTSPOT_BOTTOM_4              target=0x3B03
0E38  9A F3 E1 4E 0E                         STRCMP_NE_JMP                 start=v[0x0F3], values=[49], target=0x0E4E
0E3D  9A E9 E1 4E 0E                         STRCMP_NE_JMP                 start=v[0x0E9], values=[49], target=0x0E4E
0E42  0D 11 02 DC 00 53 02 5A 01 01 0F 07    HOTSPOT_RECT                  left=0x0211, top=0x00DC, right=0x0253, bottom=0x015A, target=0x0F01, cursor=0x07
0E4E  9A D2 B0 5F 0E                         STRCMP_NE_JMP                 start=v[0x0D2], values=[0], target=0x0E5F
0E53  0D E6 01 F4 00 09 02 29 01 7F 0E 04    HOTSPOT_RECT                  left=0x01E6, top=0x00F4, right=0x0209, bottom=0x0129, target=0x0E7F, cursor=0x04
0E5F  9A 8E 32 B1 68 0E                      STRCMP_NE_JMP                 start=v[0x08E], values=[2, 1], target=0x0E68
0E65  30 03 3B                               HOTSPOT_BOTTOM_4              target=0x3B03
0E68  9A 8E 31 B9 71 0E                      STRCMP_NE_JMP                 start=v[0x08E], values=[1, 9], target=0x0E71
0E6E  30 03 3B                               HOTSPOT_BOTTOM_4              target=0x3B03
0E71  0E BD 0E                               HOTSPOT_LEFT                  target=0x0EBD
0E74  13                                     INPUTLOOPEND                  
0E75  96 8C 31 B6                            LOADSTRING                    dst=v[0x08C], values=[1, 6]
0E79  09 76 20                               VIDEOREF                      ref=0x2076 (HTBD[118]=?)
0E7C  15 E1 2F                               JMP                           target=0x2FE1
0E7F  96 D2 B1                               LOADSTRING                    dst=v[0x0D2], values=[1]
0E82  18 28 38                               CALL                          target=0x3828
0E85  96 8E 32 B1                            LOADSTRING                    dst=v[0x08E], values=[2, 1]
0E89  15 CA 0D                               JMP                           target=0x0DCA
0E8C  1A 09 01 B0 9E 0E                      STRCMP_NE_JMP                 start=v[0x109], values=[0], target=0x0E9E
0E92  23 05 01 B0 9E 0E                      STRCMP_EQ_JMP                 start=v[0x105], values=[0], target=0x0E9E
0E98  4B 00                                  SET_VIDEO_MODE                value=0x00
0E9A  16 09 01 B1                            LOADSTRING                    dst=v[0x109], values=[1]
0E9E  09 6C 20                               VIDEOREF                      ref=0x206C (HTBD[108]=?)
0EA1  09 6F 20                               VIDEOREF                      ref=0x206F (HTBD[111]=?)
0EA4  96 17 B4                               LOADSTRING                    dst=v[0x017], values=[4]
0EA7  18 86 42                               CALL                          target=0x4286
0EAA  1A 09 01 B1 BA 0E                      STRCMP_NE_JMP                 start=v[0x109], values=[1], target=0x0EBA
0EB0  4B 01                                  SET_VIDEO_MODE                value=0x01
0EB2  16 09 01 B0                            LOADSTRING                    dst=v[0x109], values=[0]
0EB6  05                                     FIRSTFRAME_NEXT_VIDEO         
0EB7  09 6C 20                               VIDEOREF                      ref=0x206C (HTBD[108]=?)
0EBA  15 CA 0D                               JMP                           target=0x0DCA
0EBD  09 75 20                               VIDEOREF                      ref=0x2075 (HTBD[117]=?)
0EC0  15 C6 0E                               JMP                           target=0x0EC6
0EC3  09 72 20                               VIDEOREF                      ref=0x2072 (HTBD[114]=?)
0EC6  0B                                     INPUTLOOPSTART                
0EC7  0E D7 0E                               HOTSPOT_LEFT                  target=0x0ED7
0ECA  10 DD 0E                               HOTSPOT_CENTER                target=0x0EDD
0ECD  0F D1 0E                               HOTSPOT_RIGHT                 target=0x0ED1
0ED0  13                                     INPUTLOOPEND                  
0ED1  09 74 20                               VIDEOREF                      ref=0x2074 (HTBD[116]=?)
0ED4  15 CA 0D                               JMP                           target=0x0DCA
0ED7  09 73 20                               VIDEOREF                      ref=0x2073 (HTBD[115]=?)
0EDA  15 CA 0D                               JMP                           target=0x0DCA
0EDD  09 78 20                               VIDEOREF                      ref=0x2078 (HTBD[120]=?)
0EE0  03                                     FADEIN_NEXT_VIDEO             
0EE1  05                                     FIRSTFRAME_NEXT_VIDEO         
0EE2  09 8F 14                               VIDEOREF                      ref=0x148F (FH[143]=?)
0EE5  96 8C 30 B2                            LOADSTRING                    dst=v[0x08C], values=[0, 2]
0EE9  15 F4 11                               JMP                           target=0x11F4
0EEC  9A D3 B0 FB 0E                         STRCMP_NE_JMP                 start=v[0x0D3], values=[0], target=0x0EFB
0EF1  18 B0 37                               CALL                          target=0x37B0
0EF4  96 D3 B1                               LOADSTRING                    dst=v[0x0D3], values=[1]
0EF7  96 8E 32 B0                            LOADSTRING                    dst=v[0x08E], values=[2, 0]
0EFB  09 76 20                               VIDEOREF                      ref=0x2076 (HTBD[118]=?)
0EFE  15 E1 2F                               JMP                           target=0x2FE1
0F01  02 3D 4C                               PLAYSONG                      ref=0x4C3D (XMI[61]=?)
0F04  07                                     VIDEOFLAG7_ON                 
0F05  09 65 50                               VIDEOREF                      ref=0x5065 (GAMWAV[101]=?)
0F08  09 79 20                               VIDEOREF                      ref=0x2079 (HTBD[121]=?)
0F0B  04                                     PALFADEOUT                    
0F0C  15 A6 0D                               JMP                           target=0x0DA6
0F0F  96 8C 30 B2                            LOADSTRING                    dst=v[0x08C], values=[0, 2]
0F13  0B                                     INPUTLOOPSTART                
0F14  0D D4 00 88 00 18 02 6F 01 27 0F 07    HOTSPOT_RECT                  left=0x00D4, top=0x0088, right=0x0218, bottom=0x016F, target=0x0F27, cursor=0x07
0F20  0E 15 10                               HOTSPOT_LEFT                  target=0x1015
0F23  0F 28 10                               HOTSPOT_RIGHT                 target=0x1028
0F26  13                                     INPUTLOOPEND                  
0F27  0A                                     VIDEOFLAG5_ON                 
0F28  02 0F 4C                               PLAYSONG                      ref=0x4C0F (XMI[15]=?)
0F2B  09 AB 14                               VIDEOREF                      ref=0x14AB (FH[171]=?)
0F2E  31 00 00 F4 01                         MIDI_CONTROL                  value=0x0000, time=0x01F4
0F33  15 0F 0F                               JMP                           target=0x0F0F
0F36  9A 90 B2 48 0F                         STRCMP_NE_JMP                 start=v[0x090], values=[2], target=0x0F48
0F3B  96 90 B3                               LOADSTRING                    dst=v[0x090], values=[3]
0F3E  18 F9 36                               CALL                          target=0x36F9
0F41  96 DC B1                               LOADSTRING                    dst=v[0x0DC], values=[1]
0F44  96 8E 31 B1                            LOADSTRING                    dst=v[0x08E], values=[1, 1]
0F48  9A 90 B1 5A 0F                         STRCMP_NE_JMP                 start=v[0x090], values=[1], target=0x0F5A
0F4D  96 90 B2                               LOADSTRING                    dst=v[0x090], values=[2]
0F50  18 EA 36                               CALL                          target=0x36EA
0F53  96 DD B1                               LOADSTRING                    dst=v[0x0DD], values=[1]
0F56  96 8E 31 B0                            LOADSTRING                    dst=v[0x08E], values=[1, 0]
0F5A  9A 90 B0 6C 0F                         STRCMP_NE_JMP                 start=v[0x090], values=[0], target=0x0F6C
0F5F  96 90 B1                               LOADSTRING                    dst=v[0x090], values=[1]
0F62  18 CC 36                               CALL                          target=0x36CC
0F65  96 DF B1                               LOADSTRING                    dst=v[0x0DF], values=[1]
0F68  96 8E 30 B8                            LOADSTRING                    dst=v[0x08E], values=[0, 8]
0F6C  9A FA E1 80 0F                         STRCMP_NE_JMP                 start=v[0x0FA], values=[49], target=0x0F80
0F71  9A E0 B0 80 0F                         STRCMP_NE_JMP                 start=v[0x0E0], values=[0], target=0x0F80
0F76  18 AB 36                               CALL                          target=0x36AB
0F79  96 8E 30 B7                            LOADSTRING                    dst=v[0x08E], values=[0, 7]
0F7D  96 E0 B1                               LOADSTRING                    dst=v[0x0E0], values=[1]
0F80  9A C3 B1 99 0F                         STRCMP_NE_JMP                 start=v[0x0C3], values=[1], target=0x0F99
0F85  9A D7 B1 99 0F                         STRCMP_NE_JMP                 start=v[0x0D7], values=[1], target=0x0F99
0F8A  9A E2 B0 99 0F                         STRCMP_NE_JMP                 start=v[0x0E2], values=[0], target=0x0F99
0F8F  96 E2 B1                               LOADSTRING                    dst=v[0x0E2], values=[1]
0F92  18 BA 36                               CALL                          target=0x36BA
0F95  96 8E 30 B5                            LOADSTRING                    dst=v[0x08E], values=[0, 5]
0F99  0B                                     INPUTLOOPSTART                
0F9A  11 D1 0F                               HOTSPOT_CENTER_2              target=0x0FD1
0F9D  0E 3B 10                               HOTSPOT_LEFT                  target=0x103B
0FA0  0F 41 10                               HOTSPOT_RIGHT                 target=0x1041
0FA3  9A 8E 31 B1 AC 0F                      STRCMP_NE_JMP                 start=v[0x08E], values=[1, 1], target=0x0FAC
0FA9  30 03 3B                               HOTSPOT_BOTTOM_4              target=0x3B03
0FAC  9A 8E 31 B0 B5 0F                      STRCMP_NE_JMP                 start=v[0x08E], values=[1, 0], target=0x0FB5
0FB2  30 03 3B                               HOTSPOT_BOTTOM_4              target=0x3B03
0FB5  9A 8E 30 B8 BE 0F                      STRCMP_NE_JMP                 start=v[0x08E], values=[0, 8], target=0x0FBE
0FBB  30 03 3B                               HOTSPOT_BOTTOM_4              target=0x3B03
0FBE  9A 8E 30 B7 C7 0F                      STRCMP_NE_JMP                 start=v[0x08E], values=[0, 7], target=0x0FC7
0FC4  30 03 3B                               HOTSPOT_BOTTOM_4              target=0x3B03
0FC7  9A 8E 30 B5 D0 0F                      STRCMP_NE_JMP                 start=v[0x08E], values=[0, 5], target=0x0FD0
0FCD  30 03 3B                               HOTSPOT_BOTTOM_4              target=0x3B03
0FD0  13                                     INPUTLOOPEND                  
0FD1  09 59 14                               VIDEOREF                      ref=0x1459 (FH[89]=?)
0FD4  15 79 10                               JMP                           target=0x1079
0FD7  0B                                     INPUTLOOPSTART                
0FD8  11 E2 0F                               HOTSPOT_CENTER_2              target=0x0FE2
0FDB  0E 47 10                               HOTSPOT_LEFT                  target=0x1047
0FDE  0F 4D 10                               HOTSPOT_RIGHT                 target=0x104D
0FE1  13                                     INPUTLOOPEND                  
0FE2  09 18 14                               VIDEOREF                      ref=0x1418 (FH[24]=?)
0FE5  96 8C 30 B1                            LOADSTRING                    dst=v[0x08C], values=[0, 1]
0FE9  15 93 05                               JMP                           target=0x0593
0FEC  9A E1 B0 FB 0F                         STRCMP_NE_JMP                 start=v[0x0E1], values=[0], target=0x0FFB
0FF1  18 9C 36                               CALL                          target=0x369C
0FF4  96 E1 B1                               LOADSTRING                    dst=v[0x0E1], values=[1]
0FF7  96 8E 30 B6                            LOADSTRING                    dst=v[0x08E], values=[0, 6]
0FFB  0B                                     INPUTLOOPSTART                
0FFC  9A 8E 30 B6 05 10                      STRCMP_NE_JMP                 start=v[0x08E], values=[0, 6], target=0x1005
1002  30 03 3B                               HOTSPOT_BOTTOM_4              target=0x3B03
1005  11 0F 10                               HOTSPOT_CENTER_2              target=0x100F
1008  0E 53 10                               HOTSPOT_LEFT                  target=0x1053
100B  0F 59 10                               HOTSPOT_RIGHT                 target=0x1059
100E  13                                     INPUTLOOPEND                  
100F  09 5A 14                               VIDEOREF                      ref=0x145A (FH[90]=?)
1012  15 32 11                               JMP                           target=0x1132
1015  09 72 14                               VIDEOREF                      ref=0x1472 (FH[114]=?)
1018  31 00 00 00 00                         MIDI_CONTROL                  value=0x0000, time=0x0000
101D  02 39 4C                               PLAYSONG                      ref=0x4C39 (XMI[57]=?)
1020  31 5F 00 EE 02                         MIDI_CONTROL                  value=0x005F, time=0x02EE
1025  15 36 0F                               JMP                           target=0x0F36
1028  09 77 14                               VIDEOREF                      ref=0x1477 (FH[119]=?)
102B  31 00 00 00 00                         MIDI_CONTROL                  value=0x0000, time=0x0000
1030  02 35 4C                               PLAYSONG                      ref=0x4C35 (XMI[53]=?)
1033  31 5F 00 EE 02                         MIDI_CONTROL                  value=0x005F, time=0x02EE
1038  15 EC 0F                               JMP                           target=0x0FEC
103B  09 71 14                               VIDEOREF                      ref=0x1471 (FH[113]=?)
103E  15 D7 0F                               JMP                           target=0x0FD7
1041  09 76 14                               VIDEOREF                      ref=0x1476 (FH[118]=?)
1044  15 0F 0F                               JMP                           target=0x0F0F
1047  09 74 14                               VIDEOREF                      ref=0x1474 (FH[116]=?)
104A  15 EC 0F                               JMP                           target=0x0FEC
104D  09 75 14                               VIDEOREF                      ref=0x1475 (FH[117]=?)
1050  15 36 0F                               JMP                           target=0x0F36
1053  09 73 14                               VIDEOREF                      ref=0x1473 (FH[115]=?)
1056  15 0F 0F                               JMP                           target=0x0F0F
1059  09 78 14                               VIDEOREF                      ref=0x1478 (FH[120]=?)
105C  15 D7 0F                               JMP                           target=0x0FD7
105F  96 8C 30 B2                            LOADSTRING                    dst=v[0x08C], values=[0, 2]
1063  0B                                     INPUTLOOPSTART                
1064  9A FA E1 6C 10                         STRCMP_NE_JMP                 start=v[0x0FA], values=[49], target=0x106C
1069  10 9C 10                               HOTSPOT_CENTER                target=0x109C
106C  0E B9 10                               HOTSPOT_LEFT                  target=0x10B9
106F  0F BF 10                               HOTSPOT_RIGHT                 target=0x10BF
1072  13                                     INPUTLOOPEND                  
1073  09 5E 14                               VIDEOREF                      ref=0x145E (FH[94]=?)
1076  15 24 34                               JMP                           target=0x3424
1079  96 8C 30 B2                            LOADSTRING                    dst=v[0x08C], values=[0, 2]
107D  0B                                     INPUTLOOPSTART                
107E  11 AD 10                               HOTSPOT_CENTER_2              target=0x10AD
1081  0E C5 10                               HOTSPOT_LEFT                  target=0x10C5
1084  0F CB 10                               HOTSPOT_RIGHT                 target=0x10CB
1087  13                                     INPUTLOOPEND                  
1088  96 8C 30 B2                            LOADSTRING                    dst=v[0x08C], values=[0, 2]
108C  0B                                     INPUTLOOPSTART                
108D  9A FA E1 95 10                         STRCMP_NE_JMP                 start=v[0x0FA], values=[49], target=0x1095
1092  10 73 10                               HOTSPOT_CENTER                target=0x1073
1095  0E D1 10                               HOTSPOT_LEFT                  target=0x10D1
1098  0F D7 10                               HOTSPOT_RIGHT                 target=0x10D7
109B  13                                     INPUTLOOPEND                  
109C  09 5F 14                               VIDEOREF                      ref=0x145F (FH[95]=?)
109F  15 82 2E                               JMP                           target=0x2E82
10A2  0B                                     INPUTLOOPSTART                
10A3  11 B3 10                               HOTSPOT_CENTER_2              target=0x10B3
10A6  0E DD 10                               HOTSPOT_LEFT                  target=0x10DD
10A9  0F E3 10                               HOTSPOT_RIGHT                 target=0x10E3
10AC  13                                     INPUTLOOPEND                  
10AD  09 5D 14                               VIDEOREF                      ref=0x145D (FH[93]=?)
10B0  15 96 11                               JMP                           target=0x1196
10B3  09 5C 14                               VIDEOREF                      ref=0x145C (FH[92]=?)
10B6  15 EC 0F                               JMP                           target=0x0FEC
10B9  09 7A 14                               VIDEOREF                      ref=0x147A (FH[122]=?)
10BC  15 79 10                               JMP                           target=0x1079
10BF  09 7F 14                               VIDEOREF                      ref=0x147F (FH[127]=?)
10C2  15 A2 10                               JMP                           target=0x10A2
10C5  09 79 14                               VIDEOREF                      ref=0x1479 (FH[121]=?)
10C8  15 88 10                               JMP                           target=0x1088
10CB  09 7E 14                               VIDEOREF                      ref=0x147E (FH[126]=?)
10CE  15 5F 10                               JMP                           target=0x105F
10D1  09 7C 14                               VIDEOREF                      ref=0x147C (FH[124]=?)
10D4  15 A2 10                               JMP                           target=0x10A2
10D7  09 7D 14                               VIDEOREF                      ref=0x147D (FH[125]=?)
10DA  15 79 10                               JMP                           target=0x1079
10DD  09 7B 14                               VIDEOREF                      ref=0x147B (FH[123]=?)
10E0  15 5F 10                               JMP                           target=0x105F
10E3  09 80 14                               VIDEOREF                      ref=0x1480 (FH[128]=?)
10E6  15 88 10                               JMP                           target=0x1088
10E9  96 8C 30 B2                            LOADSTRING                    dst=v[0x08C], values=[0, 2]
10ED  0B                                     INPUTLOOPSTART                
10EE  0E 4C 11                               HOTSPOT_LEFT                  target=0x114C
10F1  0F 52 11                               HOTSPOT_RIGHT                 target=0x1152
10F4  9A FA E1 FC 10                         STRCMP_NE_JMP                 start=v[0x0FA], values=[49], target=0x10FC
10F9  10 FD 10                               HOTSPOT_CENTER                target=0x10FD
10FC  13                                     INPUTLOOPEND                  
10FD  09 6C 14                               VIDEOREF                      ref=0x146C (FH[108]=?)
1100  15 89 15                               JMP                           target=0x1589
1103  96 8C 30 B2                            LOADSTRING                    dst=v[0x08C], values=[0, 2]
1107  0B                                     INPUTLOOPSTART                
1108  11 12 11                               HOTSPOT_CENTER_2              target=0x1112
110B  0E 58 11                               HOTSPOT_LEFT                  target=0x1158
110E  0F 5E 11                               HOTSPOT_RIGHT                 target=0x115E
1111  13                                     INPUTLOOPEND                  
1112  09 6B 14                               VIDEOREF                      ref=0x146B (FH[107]=?)
1115  15 36 0F                               JMP                           target=0x0F36
1118  96 8C 30 B2                            LOADSTRING                    dst=v[0x08C], values=[0, 2]
111C  0B                                     INPUTLOOPSTART                
111D  A3 99 B0 25 11                         STRCMP_EQ_JMP                 start=v[0x099], values=[0], target=0x1125
1122  10 2C 11                               HOTSPOT_CENTER                target=0x112C
1125  0E 64 11                               HOTSPOT_LEFT                  target=0x1164
1128  0F 6A 11                               HOTSPOT_RIGHT                 target=0x116A
112B  13                                     INPUTLOOPEND                  
112C  09 6D 14                               VIDEOREF                      ref=0x146D (FH[109]=?)
112F  15 77 13                               JMP                           target=0x1377
1132  96 8C 30 B2                            LOADSTRING                    dst=v[0x08C], values=[0, 2]
1136  0B                                     INPUTLOOPSTART                
1137  9A FA E1 3F 11                         STRCMP_NE_JMP                 start=v[0x0FA], values=[49], target=0x113F
113C  10 46 11                               HOTSPOT_CENTER                target=0x1146
113F  0E 70 11                               HOTSPOT_LEFT                  target=0x1170
1142  0F 76 11                               HOTSPOT_RIGHT                 target=0x1176
1145  13                                     INPUTLOOPEND                  
1146  09 6E 14                               VIDEOREF                      ref=0x146E (FH[110]=?)
1149  15 63 14                               JMP                           target=0x1463
114C  09 96 14                               VIDEOREF                      ref=0x1496 (FH[150]=?)
114F  15 03 11                               JMP                           target=0x1103
1152  09 9B 14                               VIDEOREF                      ref=0x149B (FH[155]=?)
1155  15 32 11                               JMP                           target=0x1132
1158  09 95 14                               VIDEOREF                      ref=0x1495 (FH[149]=?)
115B  15 18 11                               JMP                           target=0x1118
115E  09 9A 14                               VIDEOREF                      ref=0x149A (FH[154]=?)
1161  15 E9 10                               JMP                           target=0x10E9
1164  09 98 14                               VIDEOREF                      ref=0x1498 (FH[152]=?)
1167  15 32 11                               JMP                           target=0x1132
116A  09 99 14                               VIDEOREF                      ref=0x1499 (FH[153]=?)
116D  15 03 11                               JMP                           target=0x1103
1170  09 97 14                               VIDEOREF                      ref=0x1497 (FH[151]=?)
1173  15 E9 10                               JMP                           target=0x10E9
1176  09 9C 14                               VIDEOREF                      ref=0x149C (FH[156]=?)
1179  15 18 11                               JMP                           target=0x1118
117C  96 8C 30 B2                            LOADSTRING                    dst=v[0x08C], values=[0, 2]
1180  0B                                     INPUTLOOPSTART                
1181  A3 99 B0 89 11                         STRCMP_EQ_JMP                 start=v[0x099], values=[0], target=0x1189
1186  10 90 11                               HOTSPOT_CENTER                target=0x1190
1189  0E C4 11                               HOTSPOT_LEFT                  target=0x11C4
118C  0F CA 11                               HOTSPOT_RIGHT                 target=0x11CA
118F  13                                     INPUTLOOPEND                  
1190  09 62 14                               VIDEOREF                      ref=0x1462 (FH[98]=?)
1193  15 D5 2C                               JMP                           target=0x2CD5
1196  0B                                     INPUTLOOPSTART                
1197  11 A1 11                               HOTSPOT_CENTER_2              target=0x11A1
119A  0E D0 11                               HOTSPOT_LEFT                  target=0x11D0
119D  0F D6 11                               HOTSPOT_RIGHT                 target=0x11D6
11A0  13                                     INPUTLOOPEND                  
11A1  09 61 14                               VIDEOREF                      ref=0x1461 (FH[97]=?)
11A4  15 44 12                               JMP                           target=0x1244
11A7  96 8C 30 B2                            LOADSTRING                    dst=v[0x08C], values=[0, 2]
11AB  0B                                     INPUTLOOPSTART                
11AC  0E DC 11                               HOTSPOT_LEFT                  target=0x11DC
11AF  0F E2 11                               HOTSPOT_RIGHT                 target=0x11E2
11B2  13                                     INPUTLOOPEND                  
11B3  0B                                     INPUTLOOPSTART                
11B4  11 BE 11                               HOTSPOT_CENTER_2              target=0x11BE
11B7  0E E8 11                               HOTSPOT_LEFT                  target=0x11E8
11BA  0F EE 11                               HOTSPOT_RIGHT                 target=0x11EE
11BD  13                                     INPUTLOOPEND                  
11BE  09 60 14                               VIDEOREF                      ref=0x1460 (FH[96]=?)
11C1  15 A2 10                               JMP                           target=0x10A2
11C4  09 82 14                               VIDEOREF                      ref=0x1482 (FH[130]=?)
11C7  15 96 11                               JMP                           target=0x1196
11CA  09 87 14                               VIDEOREF                      ref=0x1487 (FH[135]=?)
11CD  15 B3 11                               JMP                           target=0x11B3
11D0  09 81 14                               VIDEOREF                      ref=0x1481 (FH[129]=?)
11D3  15 A7 11                               JMP                           target=0x11A7
11D6  09 86 14                               VIDEOREF                      ref=0x1486 (FH[134]=?)
11D9  15 7C 11                               JMP                           target=0x117C
11DC  09 84 14                               VIDEOREF                      ref=0x1484 (FH[132]=?)
11DF  15 B3 11                               JMP                           target=0x11B3
11E2  09 85 14                               VIDEOREF                      ref=0x1485 (FH[133]=?)
11E5  15 96 11                               JMP                           target=0x1196
11E8  09 83 14                               VIDEOREF                      ref=0x1483 (FH[131]=?)
11EB  15 7C 11                               JMP                           target=0x117C
11EE  09 88 14                               VIDEOREF                      ref=0x1488 (FH[136]=?)
11F1  15 A7 11                               JMP                           target=0x11A7
11F4  96 8C 30 B2                            LOADSTRING                    dst=v[0x08C], values=[0, 2]
11F8  0B                                     INPUTLOOPSTART                
11F9  0E 97 12                               HOTSPOT_LEFT                  target=0x1297
11FC  0F 9D 12                               HOTSPOT_RIGHT                 target=0x129D
11FF  9A EB E1 34 12                         STRCMP_NE_JMP                 start=v[0x0EB], values=[49], target=0x1234
1204  9A F4 E1 34 12                         STRCMP_NE_JMP                 start=v[0x0F4], values=[49], target=0x1234
1209  9A F7 E1 34 12                         STRCMP_NE_JMP                 start=v[0x0F7], values=[49], target=0x1234
120E  9A F6 E1 34 12                         STRCMP_NE_JMP                 start=v[0x0F6], values=[49], target=0x1234
1213  9A F5 E1 34 12                         STRCMP_NE_JMP                 start=v[0x0F5], values=[49], target=0x1234
1218  9A F3 E1 34 12                         STRCMP_NE_JMP                 start=v[0x0F3], values=[49], target=0x1234
121D  9A EE E1 34 12                         STRCMP_NE_JMP                 start=v[0x0EE], values=[49], target=0x1234
1222  9A EC E1 34 12                         STRCMP_NE_JMP                 start=v[0x0EC], values=[49], target=0x1234
1227  9A F1 E1 34 12                         STRCMP_NE_JMP                 start=v[0x0F1], values=[49], target=0x1234
122C  9A ED E1 34 12                         STRCMP_NE_JMP                 start=v[0x0ED], values=[49], target=0x1234
1231  11 3E 12                               HOTSPOT_CENTER_2              target=0x123E
1234  1A 08 01 B1 3D 12                      STRCMP_NE_JMP                 start=v[0x108], values=[1], target=0x123D
123A  11 3E 12                               HOTSPOT_CENTER_2              target=0x123E
123D  13                                     INPUTLOOPEND                  
123E  09 65 14                               VIDEOREF                      ref=0x1465 (FH[101]=?)
1241  15 FE 12                               JMP                           target=0x12FE
1244  96 8C 30 B2                            LOADSTRING                    dst=v[0x08C], values=[0, 2]
1248  0B                                     INPUTLOOPSTART                
1249  11 53 12                               HOTSPOT_CENTER_2              target=0x1253
124C  0E A3 12                               HOTSPOT_LEFT                  target=0x12A3
124F  0F A9 12                               HOTSPOT_RIGHT                 target=0x12A9
1252  13                                     INPUTLOOPEND                  
1253  09 64 14                               VIDEOREF                      ref=0x1464 (FH[100]=?)
1256  15 C7 12                               JMP                           target=0x12C7
1259  96 8C 30 B2                            LOADSTRING                    dst=v[0x08C], values=[0, 2]
125D  0B                                     INPUTLOOPSTART                
125E  A3 99 B0 66 12                         STRCMP_EQ_JMP                 start=v[0x099], values=[0], target=0x1266
1263  10 6D 12                               HOTSPOT_CENTER                target=0x126D
1266  0E AF 12                               HOTSPOT_LEFT                  target=0x12AF
1269  0F B5 12                               HOTSPOT_RIGHT                 target=0x12B5
126C  13                                     INPUTLOOPEND                  
126D  09 66 14                               VIDEOREF                      ref=0x1466 (FH[102]=?)
1270  15 B3 0D                               JMP                           target=0x0DB3
1273  96 8C 30 B2                            LOADSTRING                    dst=v[0x08C], values=[0, 2]
1277  9A DE B0 86 12                         STRCMP_NE_JMP                 start=v[0x0DE], values=[0], target=0x1286
127C  96 DE B1                               LOADSTRING                    dst=v[0x0DE], values=[1]
127F  96 8E 30 B9                            LOADSTRING                    dst=v[0x08E], values=[0, 9]
1283  18 DB 36                               CALL                          target=0x36DB
1286  0B                                     INPUTLOOPSTART                
1287  11 91 12                               HOTSPOT_CENTER_2              target=0x1291
128A  0E BB 12                               HOTSPOT_LEFT                  target=0x12BB
128D  0F C1 12                               HOTSPOT_RIGHT                 target=0x12C1
1290  13                                     INPUTLOOPEND                  
1291  09 63 14                               VIDEOREF                      ref=0x1463 (FH[99]=?)
1294  15 B3 11                               JMP                           target=0x11B3
1297  09 8A 14                               VIDEOREF                      ref=0x148A (FH[138]=?)
129A  15 44 12                               JMP                           target=0x1244
129D  09 8F 14                               VIDEOREF                      ref=0x148F (FH[143]=?)
12A0  15 73 12                               JMP                           target=0x1273
12A3  09 89 14                               VIDEOREF                      ref=0x1489 (FH[137]=?)
12A6  15 59 12                               JMP                           target=0x1259
12A9  09 8E 14                               VIDEOREF                      ref=0x148E (FH[142]=?)
12AC  15 F4 11                               JMP                           target=0x11F4
12AF  09 8C 14                               VIDEOREF                      ref=0x148C (FH[140]=?)
12B2  15 73 12                               JMP                           target=0x1273
12B5  09 8D 14                               VIDEOREF                      ref=0x148D (FH[141]=?)
12B8  15 44 12                               JMP                           target=0x1244
12BB  09 8B 14                               VIDEOREF                      ref=0x148B (FH[139]=?)
12BE  15 F4 11                               JMP                           target=0x11F4
12C1  09 90 14                               VIDEOREF                      ref=0x1490 (FH[144]=?)
12C4  15 59 12                               JMP                           target=0x1259
12C7  96 8C 30 B2                            LOADSTRING                    dst=v[0x08C], values=[0, 2]
12CB  0B                                     INPUTLOOPSTART                
12CC  9A F0 E1 D9 12                         STRCMP_NE_JMP                 start=v[0x0F0], values=[49], target=0x12D9
12D1  A3 99 B0 D9 12                         STRCMP_EQ_JMP                 start=v[0x099], values=[0], target=0x12D9
12D6  10 DD 12                               HOTSPOT_CENTER                target=0x12DD
12D9  0E E3 12                               HOTSPOT_LEFT                  target=0x12E3
12DC  13                                     INPUTLOOPEND                  
12DD  09 68 14                               VIDEOREF                      ref=0x1468 (FH[104]=?)
12E0  15 15 35                               JMP                           target=0x3515
12E3  09 92 14                               VIDEOREF                      ref=0x1492 (FH[146]=?)
12E6  96 8C 30 B2                            LOADSTRING                    dst=v[0x08C], values=[0, 2]
12EA  0B                                     INPUTLOOPSTART                
12EB  0F F2 12                               HOTSPOT_RIGHT                 target=0x12F2
12EE  11 F8 12                               HOTSPOT_CENTER_2              target=0x12F8
12F1  13                                     INPUTLOOPEND                  
12F2  09 91 14                               VIDEOREF                      ref=0x1491 (FH[145]=?)
12F5  15 C7 12                               JMP                           target=0x12C7
12F8  09 67 14                               VIDEOREF                      ref=0x1467 (FH[103]=?)
12FB  15 73 12                               JMP                           target=0x1273
12FE  96 8C 30 B2                            LOADSTRING                    dst=v[0x08C], values=[0, 2]
1302  0B                                     INPUTLOOPSTART                
1303  0E 4E 13                               HOTSPOT_LEFT                  target=0x134E
1306  10 0A 13                               HOTSPOT_CENTER                target=0x130A
1309  13                                     INPUTLOOPEND                  
130A  9A F2 E1 22 13                         STRCMP_NE_JMP                 start=v[0x0F2], values=[49], target=0x1322
130F  09 6A 14                               VIDEOREF                      ref=0x146A (FH[106]=?)
1312  18 14 03                               CALL                          target=0x0314
1315  05                                     FIRSTFRAME_NEXT_VIDEO         
1316  03                                     FADEIN_NEXT_VIDEO             
1317  09 01 00                               VIDEOREF                      ref=0x0001 (AT[1]=?)
131A  0B                                     INPUTLOOPSTART                
131B  11 D3 16                               HOTSPOT_CENTER_2              target=0x16D3
131E  13                                     INPUTLOOPEND                  
131F  15 4E 13                               JMP                           target=0x134E
1322  1A 09 01 B0 38 13                      STRCMP_NE_JMP                 start=v[0x109], values=[0], target=0x1338
1328  23 05 01 B0 38 13                      STRCMP_EQ_JMP                 start=v[0x105], values=[0], target=0x1338
132E  4B 00                                  SET_VIDEO_MODE                value=0x00
1330  16 09 01 B1                            LOADSTRING                    dst=v[0x109], values=[1]
1334  05                                     FIRSTFRAME_NEXT_VIDEO         
1335  09 6A 14                               VIDEOREF                      ref=0x146A (FH[106]=?)
1338  18 33 42                               CALL                          target=0x4233
133B  1A 09 01 B1 4B 13                      STRCMP_NE_JMP                 start=v[0x109], values=[1], target=0x134B
1341  4B 01                                  SET_VIDEO_MODE                value=0x01
1343  16 09 01 B0                            LOADSTRING                    dst=v[0x109], values=[0]
1347  05                                     FIRSTFRAME_NEXT_VIDEO         
1348  09 6A 14                               VIDEOREF                      ref=0x146A (FH[106]=?)
134B  15 FE 12                               JMP                           target=0x12FE
134E  09 93 14                               VIDEOREF                      ref=0x1493 (FH[147]=?)
1351  96 8C 30 B2                            LOADSTRING                    dst=v[0x08C], values=[0, 2]
1355  0B                                     INPUTLOOPSTART                
1356  0F 6B 13                               HOTSPOT_RIGHT                 target=0x136B
1359  11 71 13                               HOTSPOT_CENTER_2              target=0x1371
135C  13                                     INPUTLOOPEND                  
135D  03                                     FADEIN_NEXT_VIDEO             
135E  05                                     FIRSTFRAME_NEXT_VIDEO         
135F  09 94 14                               VIDEOREF                      ref=0x1494 (FH[148]=?)
1362  96 8C 30 B2                            LOADSTRING                    dst=v[0x08C], values=[0, 2]
1366  0B                                     INPUTLOOPSTART                
1367  11 71 13                               HOTSPOT_CENTER_2              target=0x1371
136A  13                                     INPUTLOOPEND                  
136B  09 94 14                               VIDEOREF                      ref=0x1494 (FH[148]=?)
136E  15 FE 12                               JMP                           target=0x12FE
1371  09 69 14                               VIDEOREF                      ref=0x1469 (FH[105]=?)
1374  15 59 12                               JMP                           target=0x1259
1377  96 8C 31 B0                            LOADSTRING                    dst=v[0x08C], values=[1, 0]
137B  03                                     FADEIN_NEXT_VIDEO             
137C  05                                     FIRSTFRAME_NEXT_VIDEO         
137D  09 07 20                               VIDEOREF                      ref=0x2007 (HTBD[7]=?)
1380  9A EA E1 8D 13                         STRCMP_NE_JMP                 start=v[0x0EA], values=[49], target=0x138D
1385  9A 9A B0 8D 13                         STRCMP_NE_JMP                 start=v[0x09A], values=[0], target=0x138D
138A  15 C1 13                               JMP                           target=0x13C1
138D  0B                                     INPUTLOOPSTART                
138E  9A 8E 31 B8 97 13                      STRCMP_NE_JMP                 start=v[0x08E], values=[1, 8], target=0x1397
1394  30 03 3B                               HOTSPOT_BOTTOM_4              target=0x3B03
1397  A3 EA E1 A8 13                         STRCMP_EQ_JMP                 start=v[0x0EA], values=[49], target=0x13A8
139C  0D 1C 02 4A 01 7F 02 8F 01 CE 13 06    HOTSPOT_RECT                  left=0x021C, top=0x014A, right=0x027F, bottom=0x018F, target=0x13CE, cursor=0x06
13A8  1A 08 01 B1 BA 13                      STRCMP_NE_JMP                 start=v[0x108], values=[1], target=0x13BA
13AE  0D 1C 02 4A 01 7F 02 8F 01 CE 13 06    HOTSPOT_RECT                  left=0x021C, top=0x014A, right=0x027F, bottom=0x018F, target=0x13CE, cursor=0x06
13BA  0E 05 14                               HOTSPOT_LEFT                  target=0x1405
13BD  0F 11 14                               HOTSPOT_RIGHT                 target=0x1411
13C0  13                                     INPUTLOOPEND                  
13C1  96 9A B1                               LOADSTRING                    dst=v[0x09A], values=[1]
13C4  96 8E 31 B8                            LOADSTRING                    dst=v[0x08E], values=[1, 8]
13C8  18 9E 37                               CALL                          target=0x379E
13CB  15 80 13                               JMP                           target=0x1380
13CE  96 17 B1                               LOADSTRING                    dst=v[0x017], values=[1]
13D1  1A 09 01 B0 E3 13                      STRCMP_NE_JMP                 start=v[0x109], values=[0], target=0x13E3
13D7  23 05 01 B0 E3 13                      STRCMP_EQ_JMP                 start=v[0x105], values=[0], target=0x13E3
13DD  4B 00                                  SET_VIDEO_MODE                value=0x00
13DF  16 09 01 B1                            LOADSTRING                    dst=v[0x109], values=[1]
13E3  09 00 20                               VIDEOREF                      ref=0x2000 (HTBD[0]=?)
13E6  09 04 20                               VIDEOREF                      ref=0x2004 (HTBD[4]=?)
13E9  18 86 42                               CALL                          target=0x4286
13EC  1A 09 01 B1 FC 13                      STRCMP_NE_JMP                 start=v[0x109], values=[1], target=0x13FC
13F2  4B 01                                  SET_VIDEO_MODE                value=0x01
13F4  16 09 01 B0                            LOADSTRING                    dst=v[0x109], values=[0]
13F8  05                                     FIRSTFRAME_NEXT_VIDEO         
13F9  09 00 20                               VIDEOREF                      ref=0x2000 (HTBD[0]=?)
13FC  15 80 13                               JMP                           target=0x1380
13FF  09 08 20                               VIDEOREF                      ref=0x2008 (HTBD[8]=?)
1402  15 80 13                               JMP                           target=0x1380
1405  09 0A 20                               VIDEOREF                      ref=0x200A (HTBD[10]=?)
1408  15 14 14                               JMP                           target=0x1414
140B  09 09 20                               VIDEOREF                      ref=0x2009 (HTBD[9]=?)
140E  15 80 13                               JMP                           target=0x1380
1411  09 07 20                               VIDEOREF                      ref=0x2007 (HTBD[7]=?)
1414  0B                                     INPUTLOOPSTART                
1415  0D 2D 00 AA 00 88 00 58 01 40 14 03    HOTSPOT_RECT                  left=0x002D, top=0x00AA, right=0x0088, bottom=0x0158, target=0x1440, cursor=0x03
1421  0D BA 00 AA 00 15 01 58 01 4D 14 03    HOTSPOT_RECT                  left=0x00BA, top=0x00AA, right=0x0115, bottom=0x0158, target=0x144D, cursor=0x03
142D  0D F5 01 AA 00 4F 02 58 01 5C 14 03    HOTSPOT_RECT                  left=0x01F5, top=0x00AA, right=0x024F, bottom=0x0158, target=0x145C, cursor=0x03
1439  0F 0B 14                               HOTSPOT_RIGHT                 target=0x140B
143C  0E FF 13                               HOTSPOT_LEFT                  target=0x13FF
143F  13                                     INPUTLOOPEND                  
1440  02 3C 4C                               PLAYSONG                      ref=0x4C3C (XMI[60]=?)
1443  09 02 20                               VIDEOREF                      ref=0x2002 (HTBD[2]=?)
1446  96 8C 30 B4                            LOADSTRING                    dst=v[0x08C], values=[0, 4]
144A  15 23 0B                               JMP                           target=0x0B23
144D  09 06 20                               VIDEOREF                      ref=0x2006 (HTBD[6]=?)
1450  03                                     FADEIN_NEXT_VIDEO             
1451  05                                     FIRSTFRAME_NEXT_VIDEO         
1452  09 9B 14                               VIDEOREF                      ref=0x149B (FH[155]=?)
1455  96 8C 30 B2                            LOADSTRING                    dst=v[0x08C], values=[0, 2]
1459  15 E9 10                               JMP                           target=0x10E9
145C  09 0B 20                               VIDEOREF                      ref=0x200B (HTBD[11]=?)
145F  04                                     PALFADEOUT                    
1460  15 B6 22                               JMP                           target=0x22B6
1463  96 8C 30 B9                            LOADSTRING                    dst=v[0x08C], values=[0, 9]
1467  03                                     FADEIN_NEXT_VIDEO             
1468  05                                     FIRSTFRAME_NEXT_VIDEO         
1469  09 08 18                               VIDEOREF                      ref=0x1808 (GA[8]=?)
146C  9A D1 B0 7B 14                         STRCMP_NE_JMP                 start=v[0x0D1], values=[0], target=0x147B
1471  96 D1 B1                               LOADSTRING                    dst=v[0x0D1], values=[1]
1474  96 8E 32 B2                            LOADSTRING                    dst=v[0x08E], values=[2, 2]
1478  18 29 37                               CALL                          target=0x3729
147B  9A F0 E1 8F 14                         STRCMP_NE_JMP                 start=v[0x0F0], values=[49], target=0x148F
1480  9A CF B0 8F 14                         STRCMP_NE_JMP                 start=v[0x0CF], values=[0], target=0x148F
1485  18 3B 37                               CALL                          target=0x373B
1488  96 CF B1                               LOADSTRING                    dst=v[0x0CF], values=[1]
148B  96 8E 32 B4                            LOADSTRING                    dst=v[0x08E], values=[2, 4]
148F  0B                                     INPUTLOOPSTART                
1490  9A 8E 32 B2 99 14                      STRCMP_NE_JMP                 start=v[0x08E], values=[2, 2], target=0x1499
1496  30 03 3B                               HOTSPOT_BOTTOM_4              target=0x3B03
1499  0F 5A 15                               HOTSPOT_RIGHT                 target=0x155A
149C  A3 F9 B0 AD 14                         STRCMP_EQ_JMP                 start=v[0x0F9], values=[0], target=0x14AD
14A1  0D A3 01 F8 00 7F 02 44 01 05 15 07    HOTSPOT_RECT                  left=0x01A3, top=0x00F8, right=0x027F, bottom=0x0144, target=0x1505, cursor=0x07
14AD  9A FA E1 C3 14                         STRCMP_NE_JMP                 start=v[0x0FA], values=[49], target=0x14C3
14B2  A3 F0 E1 C3 14                         STRCMP_EQ_JMP                 start=v[0x0F0], values=[49], target=0x14C3
14B7  0D 00 00 0B 01 82 00 7E 01 0F 15 06    HOTSPOT_RECT                  left=0x0000, top=0x010B, right=0x0082, bottom=0x017E, target=0x150F, cursor=0x06
14C3  1A 08 01 B1 D5 14                      STRCMP_NE_JMP                 start=v[0x108], values=[1], target=0x14D5
14C9  0D 00 00 0B 01 82 00 7E 01 0F 15 06    HOTSPOT_RECT                  left=0x0000, top=0x010B, right=0x0082, bottom=0x017E, target=0x150F, cursor=0x06
14D5  9A CE B0 E6 14                         STRCMP_NE_JMP                 start=v[0x0CE], values=[0], target=0x14E6
14DA  0D DF 00 9E 00 01 01 D5 00 F3 14 04    HOTSPOT_RECT                  left=0x00DF, top=0x009E, right=0x0101, bottom=0x00D5, target=0x14F3, cursor=0x04
14E6  0E 60 15                               HOTSPOT_LEFT                  target=0x1560
14E9  9A 8E 32 B5 F2 14                      STRCMP_NE_JMP                 start=v[0x08E], values=[2, 5], target=0x14F2
14EF  30 03 3B                               HOTSPOT_BOTTOM_4              target=0x3B03
14F2  13                                     INPUTLOOPEND                  
14F3  9A CE B0 02 15                         STRCMP_NE_JMP                 start=v[0x0CE], values=[0], target=0x1502
14F8  96 CE B1                               LOADSTRING                    dst=v[0x0CE], values=[1]
14FB  18 4D 37                               CALL                          target=0x374D
14FE  96 8E 32 B5                            LOADSTRING                    dst=v[0x08E], values=[2, 5]
1502  15 7B 14                               JMP                           target=0x147B
1505  09 0E 18                               VIDEOREF                      ref=0x180E (GA[14]=?)
1508  96 8C 30 B4                            LOADSTRING                    dst=v[0x08C], values=[0, 4]
150C  15 23 0B                               JMP                           target=0x0B23
150F  1A 09 01 B0 21 15                      STRCMP_NE_JMP                 start=v[0x109], values=[0], target=0x1521
1515  23 05 01 B0 21 15                      STRCMP_EQ_JMP                 start=v[0x105], values=[0], target=0x1521
151B  4B 00                                  SET_VIDEO_MODE                value=0x00
151D  16 09 01 B1                            LOADSTRING                    dst=v[0x109], values=[1]
1521  09 00 18                               VIDEOREF                      ref=0x1800 (GA[0]=?)
1524  96 92 31 B4                            LOADSTRING                    dst=v[0x092], values=[1, 4]
1528  18 8B 41                               CALL                          target=0x418B
152B  1A 09 01 B1 37 15                      STRCMP_NE_JMP                 start=v[0x109], values=[1], target=0x1537
1531  4B 01                                  SET_VIDEO_MODE                value=0x01
1533  16 09 01 B0                            LOADSTRING                    dst=v[0x109], values=[0]
1537  9A F0 E1 4E 15                         STRCMP_NE_JMP                 start=v[0x0F0], values=[49], target=0x154E
153C  09 03 18                               VIDEOREF                      ref=0x1803 (GA[3]=?)
153F  18 5C 37                               CALL                          target=0x375C
1542  96 D0 B1                               LOADSTRING                    dst=v[0x0D0], values=[1]
1545  09 04 18                               VIDEOREF                      ref=0x1804 (GA[4]=?)
1548  09 01 18                               VIDEOREF                      ref=0x1801 (GA[1]=?)
154B  15 7B 14                               JMP                           target=0x147B
154E  09 01 18                               VIDEOREF                      ref=0x1801 (GA[1]=?)
1551  15 7B 14                               JMP                           target=0x147B
1554  09 01 18                               VIDEOREF                      ref=0x1801 (GA[1]=?)
1557  15 7B 14                               JMP                           target=0x147B
155A  09 08 18                               VIDEOREF                      ref=0x1808 (GA[8]=?)
155D  15 63 15                               JMP                           target=0x1563
1560  09 0C 18                               VIDEOREF                      ref=0x180C (GA[12]=?)
1563  0B                                     INPUTLOOPSTART                
1564  0F 83 15                               HOTSPOT_RIGHT                 target=0x1583
1567  10 6E 15                               HOTSPOT_CENTER                target=0x156E
156A  0E 7D 15                               HOTSPOT_LEFT                  target=0x157D
156D  13                                     INPUTLOOPEND                  
156E  09 0D 18                               VIDEOREF                      ref=0x180D (GA[13]=?)
1571  03                                     FADEIN_NEXT_VIDEO             
1572  05                                     FIRSTFRAME_NEXT_VIDEO         
1573  09 9A 14                               VIDEOREF                      ref=0x149A (FH[154]=?)
1576  96 8C 30 B2                            LOADSTRING                    dst=v[0x08C], values=[0, 2]
157A  15 03 11                               JMP                           target=0x1103
157D  09 09 18                               VIDEOREF                      ref=0x1809 (GA[9]=?)
1580  15 7B 14                               JMP                           target=0x147B
1583  09 0B 18                               VIDEOREF                      ref=0x180B (GA[11]=?)
1586  15 7B 14                               JMP                           target=0x147B
1589  96 8C 31 B1                            LOADSTRING                    dst=v[0x08C], values=[1, 1]
158D  03                                     FADEIN_NEXT_VIDEO             
158E  05                                     FIRSTFRAME_NEXT_VIDEO         
158F  09 69 28                               VIDEOREF                      ref=0x2869 (JHEK[105]=?)
1592  9A BC B0 A1 15                         STRCMP_NE_JMP                 start=v[0x0BC], values=[0], target=0x15A1
1597  96 BC B1                               LOADSTRING                    dst=v[0x0BC], values=[1]
159A  96 8E 34 B3                            LOADSTRING                    dst=v[0x08E], values=[4, 3]
159E  18 6B 38                               CALL                          target=0x386B
15A1  9A E8 E1 BE 15                         STRCMP_NE_JMP                 start=v[0x0E8], values=[49], target=0x15BE
15A6  9A BA B0 BE 15                         STRCMP_NE_JMP                 start=v[0x0BA], values=[0], target=0x15BE
15AB  96 BA B1                               LOADSTRING                    dst=v[0x0BA], values=[1]
15AE  96 BB B1                               LOADSTRING                    dst=v[0x0BB], values=[1]
15B1  02 1B 4C                               PLAYSONG                      ref=0x4C1B (XMI[27]=?)
15B4  18 7D 38                               CALL                          target=0x387D
15B7  18 8F 38                               CALL                          target=0x388F
15BA  96 8E 34 B4                            LOADSTRING                    dst=v[0x08E], values=[4, 4]
15BE  0B                                     INPUTLOOPSTART                
15BF  9A 8E 34 B6 C8 15                      STRCMP_NE_JMP                 start=v[0x08E], values=[4, 6], target=0x15C8
15C5  30 03 3B                               HOTSPOT_BOTTOM_4              target=0x3B03
15C8  9A 8E 34 B3 D1 15                      STRCMP_NE_JMP                 start=v[0x08E], values=[4, 3], target=0x15D1
15CE  30 03 3B                               HOTSPOT_BOTTOM_4              target=0x3B03
15D1  9A 8E 34 B4 DA 15                      STRCMP_NE_JMP                 start=v[0x08E], values=[4, 4], target=0x15DA
15D7  30 03 3B                               HOTSPOT_BOTTOM_4              target=0x3B03
15DA  9A B9 B0 EE 15                         STRCMP_NE_JMP                 start=v[0x0B9], values=[0], target=0x15EE
15DF  0D 32 00 50 00 C0 00 47 01 4E 16 04    HOTSPOT_RECT                  left=0x0032, top=0x0050, right=0x00C0, bottom=0x0147, target=0x164E, cursor=0x04
15EB  15 FA 15                               JMP                           target=0x15FA
15EE  0D 32 00 50 00 C0 00 47 01 4E 16 00    HOTSPOT_RECT                  left=0x0032, top=0x0050, right=0x00C0, bottom=0x0147, target=0x164E, cursor=0x00
15FA  A3 E8 E1 0B 16                         STRCMP_EQ_JMP                 start=v[0x0E8], values=[49], target=0x160B
15FF  0D 4A 01 5C 01 7F 02 8F 01 24 16 06    HOTSPOT_RECT                  left=0x014A, top=0x015C, right=0x027F, bottom=0x018F, target=0x1624, cursor=0x06
160B  1A 08 01 B1 1D 16                      STRCMP_NE_JMP                 start=v[0x108], values=[1], target=0x161D
1611  0D 4A 01 5C 01 7F 02 8F 01 24 16 06    HOTSPOT_RECT                  left=0x014A, top=0x015C, right=0x027F, bottom=0x018F, target=0x1624, cursor=0x06
161D  0E 97 16                               HOTSPOT_LEFT                  target=0x1697
1620  0F 9D 16                               HOTSPOT_RIGHT                 target=0x169D
1623  13                                     INPUTLOOPEND                  
1624  09 76 28                               VIDEOREF                      ref=0x2876 (JHEK[118]=?)
1627  23 05 01 B0 33 16                      STRCMP_EQ_JMP                 start=v[0x105], values=[0], target=0x1633
162D  4B 00                                  SET_VIDEO_MODE                value=0x00
162F  16 09 01 B1                            LOADSTRING                    dst=v[0x109], values=[1]
1633  09 73 28                               VIDEOREF                      ref=0x2873 (JHEK[115]=?)
1636  18 D2 3F                               CALL                          target=0x3FD2
1639  09 72 28                               VIDEOREF                      ref=0x2872 (JHEK[114]=?)
163C  1A 09 01 B1 48 16                      STRCMP_NE_JMP                 start=v[0x109], values=[1], target=0x1648
1642  4B 01                                  SET_VIDEO_MODE                value=0x01
1644  16 09 01 B0                            LOADSTRING                    dst=v[0x109], values=[0]
1648  09 77 28                               VIDEOREF                      ref=0x2877 (JHEK[119]=?)
164B  15 92 15                               JMP                           target=0x1592
164E  09 74 28                               VIDEOREF                      ref=0x2874 (JHEK[116]=?)
1651  9A B9 B0 89 16                         STRCMP_NE_JMP                 start=v[0x0B9], values=[0], target=0x1689
1656  02 34 4C                               PLAYSONG                      ref=0x4C34 (XMI[52]=?)
1659  96 8E 34 B6                            LOADSTRING                    dst=v[0x08E], values=[4, 6]
165D  96 B9 B1                               LOADSTRING                    dst=v[0x0B9], values=[1]
1660  96 B8 B1                               LOADSTRING                    dst=v[0x0B8], values=[1]
1663  96 B7 B1                               LOADSTRING                    dst=v[0x0B7], values=[1]
1666  96 B6 B1                               LOADSTRING                    dst=v[0x0B6], values=[1]
1669  18 37 38                               CALL                          target=0x3837
166C  18 46 38                               CALL                          target=0x3846
166F  02 0F 4C                               PLAYSONG                      ref=0x4C0F (XMI[15]=?)
1672  18 51 38                               CALL                          target=0x3851
1675  09 75 28                               VIDEOREF                      ref=0x2875 (JHEK[117]=?)
1678  18 5C 38                               CALL                          target=0x385C
167B  31 00 00 96 00                         MIDI_CONTROL                  value=0x0000, time=0x0096
1680  19 96 00                               SLEEP                         ticks=0x0096
1683  02 3A 4C                               PLAYSONG                      ref=0x4C3A (XMI[58]=?)
1686  15 92 15                               JMP                           target=0x1592
1689  0B                                     INPUTLOOPSTART                
168A  0E 91 16                               HOTSPOT_LEFT                  target=0x1691
168D  0F 91 16                               HOTSPOT_RIGHT                 target=0x1691
1690  13                                     INPUTLOOPEND                  
1691  09 75 28                               VIDEOREF                      ref=0x2875 (JHEK[117]=?)
1694  15 92 15                               JMP                           target=0x1592
1697  09 6E 28                               VIDEOREF                      ref=0x286E (JHEK[110]=?)
169A  15 A3 16                               JMP                           target=0x16A3
169D  09 69 28                               VIDEOREF                      ref=0x2869 (JHEK[105]=?)
16A0  15 A3 16                               JMP                           target=0x16A3
16A3  0B                                     INPUTLOOPSTART                
16A4  0D D2 01 65 00 57 02 76 01 C3 16 00    HOTSPOT_RECT                  left=0x01D2, top=0x0065, right=0x0257, bottom=0x0176, target=0x16C3, cursor=0x00
16B0  0F BD 16                               HOTSPOT_RIGHT                 target=0x16BD
16B3  0E B7 16                               HOTSPOT_LEFT                  target=0x16B7
16B6  13                                     INPUTLOOPEND                  
16B7  09 6A 28                               VIDEOREF                      ref=0x286A (JHEK[106]=?)
16BA  15 92 15                               JMP                           target=0x1592
16BD  09 6D 28                               VIDEOREF                      ref=0x286D (JHEK[109]=?)
16C0  15 92 15                               JMP                           target=0x1592
16C3  09 71 28                               VIDEOREF                      ref=0x2871 (JHEK[113]=?)
16C6  04                                     PALFADEOUT                    
16C7  03                                     FADEIN_NEXT_VIDEO             
16C8  05                                     FIRSTFRAME_NEXT_VIDEO         
16C9  09 99 14                               VIDEOREF                      ref=0x1499 (FH[153]=?)
16CC  96 8C 30 B2                            LOADSTRING                    dst=v[0x08C], values=[0, 2]
16D0  15 18 11                               JMP                           target=0x1118
16D3  96 8C 32 B0                            LOADSTRING                    dst=v[0x08C], values=[2, 0]
16D7  09 01 00                               VIDEOREF                      ref=0x0001 (AT[1]=?)
16DA  09 00 00                               VIDEOREF                      ref=0x0000 (AT[0]=?)
16DD  15 9C 2D                               JMP                           target=0x2D9C
16E0  96 8C 32 B3                            LOADSTRING                    dst=v[0x08C], values=[2, 3]
16E4  03                                     FADEIN_NEXT_VIDEO             
16E5  05                                     FIRSTFRAME_NEXT_VIDEO         
16E6  09 03 48                               VIDEOREF                      ref=0x4803 (P[3]=?)
16E9  9A DB B0 F8 16                         STRCMP_NE_JMP                 start=v[0x0DB], values=[0], target=0x16F8
16EE  96 DB B1                               LOADSTRING                    dst=v[0x0DB], values=[1]
16F1  18 6E 37                               CALL                          target=0x376E
16F4  96 8E 31 B2                            LOADSTRING                    dst=v[0x08E], values=[1, 2]
16F8  0B                                     INPUTLOOPSTART                
16F9  0D 27 00 55 00 F8 00 FF 00 F0 17 04    HOTSPOT_RECT                  left=0x0027, top=0x0055, right=0x00F8, bottom=0x00FF, target=0x17F0, cursor=0x04
1705  0D 06 02 BA 00 3E 02 04 01 FD 17 04    HOTSPOT_RECT                  left=0x0206, top=0x00BA, right=0x023E, bottom=0x0104, target=0x17FD, cursor=0x04
1711  0F 21 17                               HOTSPOT_RIGHT                 target=0x1721
1714  0E 27 17                               HOTSPOT_LEFT                  target=0x1727
1717  9A 8E 31 B2 20 17                      STRCMP_NE_JMP                 start=v[0x08E], values=[1, 2], target=0x1720
171D  30 03 3B                               HOTSPOT_BOTTOM_4              target=0x3B03
1720  13                                     INPUTLOOPEND                  
1721  09 03 48                               VIDEOREF                      ref=0x4803 (P[3]=?)
1724  15 7A 17                               JMP                           target=0x177A
1727  09 0A 48                               VIDEOREF                      ref=0x480A (P[10]=?)
172A  15 2D 17                               JMP                           target=0x172D
172D  9A D9 B0 3C 17                         STRCMP_NE_JMP                 start=v[0x0D9], values=[0], target=0x173C
1732  96 D9 B1                               LOADSTRING                    dst=v[0x0D9], values=[1]
1735  18 85 39                               CALL                          target=0x3985
1738  96 8E 31 B5                            LOADSTRING                    dst=v[0x08E], values=[1, 5]
173C  0B                                     INPUTLOOPSTART                
173D  0E 4D 17                               HOTSPOT_LEFT                  target=0x174D
1740  0F 53 17                               HOTSPOT_RIGHT                 target=0x1753
1743  9A 8E 31 B5 4C 17                      STRCMP_NE_JMP                 start=v[0x08E], values=[1, 5], target=0x174C
1749  30 03 3B                               HOTSPOT_BOTTOM_4              target=0x3B03
174C  13                                     INPUTLOOPEND                  
174D  09 08 48                               VIDEOREF                      ref=0x4808 (P[8]=?)
1750  15 59 17                               JMP                           target=0x1759
1753  09 09 48                               VIDEOREF                      ref=0x4809 (P[9]=?)
1756  15 F8 16                               JMP                           target=0x16F8
1759  0B                                     INPUTLOOPSTART                
175A  10 64 17                               HOTSPOT_CENTER                target=0x1764
175D  0E 6E 17                               HOTSPOT_LEFT                  target=0x176E
1760  0F 74 17                               HOTSPOT_RIGHT                 target=0x1774
1763  13                                     INPUTLOOPEND                  
1764  09 0C 48                               VIDEOREF                      ref=0x480C (P[12]=?)
1767  96 8C 30 B8                            LOADSTRING                    dst=v[0x08C], values=[0, 8]
176B  15 36 0C                               JMP                           target=0x0C36
176E  09 06 48                               VIDEOREF                      ref=0x4806 (P[6]=?)
1771  15 7A 17                               JMP                           target=0x177A
1774  09 07 48                               VIDEOREF                      ref=0x4807 (P[7]=?)
1777  15 2D 17                               JMP                           target=0x172D
177A  0B                                     INPUTLOOPSTART                
177B  0E A5 17                               HOTSPOT_LEFT                  target=0x17A5
177E  0F AB 17                               HOTSPOT_RIGHT                 target=0x17AB
1781  A3 ED E1 92 17                         STRCMP_EQ_JMP                 start=v[0x0ED], values=[49], target=0x1792
1786  0D CE 00 4E 00 C4 01 89 01 BE 17 06    HOTSPOT_RECT                  left=0x00CE, top=0x004E, right=0x01C4, bottom=0x0189, target=0x17BE, cursor=0x06
1792  1A 08 01 B1 A4 17                      STRCMP_NE_JMP                 start=v[0x108], values=[1], target=0x17A4
1798  0D CE 00 4E 00 C4 01 89 01 BE 17 06    HOTSPOT_RECT                  left=0x00CE, top=0x004E, right=0x01C4, bottom=0x0189, target=0x17BE, cursor=0x06
17A4  13                                     INPUTLOOPEND                  
17A5  09 04 48                               VIDEOREF                      ref=0x4804 (P[4]=?)
17A8  15 F8 16                               JMP                           target=0x16F8
17AB  09 05 48                               VIDEOREF                      ref=0x4805 (P[5]=?)
17AE  15 59 17                               JMP                           target=0x1759
17B1  0A                                     VIDEOFLAG5_ON                 
17B2  02 0B 4C                               PLAYSONG                      ref=0x4C0B (XMI[11]=?)
17B5  09 29 48                               VIDEOREF                      ref=0x4829 (P[41]=?)
17B8  0A                                     VIDEOFLAG5_ON                 
17B9  09 29 48                               VIDEOREF                      ref=0x4829 (P[41]=?)
17BC  17 00                                  RET                           value=0x00
17BE  1A 09 01 B0 D0 17                      STRCMP_NE_JMP                 start=v[0x109], values=[0], target=0x17D0
17C4  23 05 01 B0 D0 17                      STRCMP_EQ_JMP                 start=v[0x105], values=[0], target=0x17D0
17CA  4B 00                                  SET_VIDEO_MODE                value=0x00
17CC  16 09 01 B1                            LOADSTRING                    dst=v[0x109], values=[1]
17D0  09 01 48                               VIDEOREF                      ref=0x4801 (P[1]=?)
17D3  18 BD 40                               CALL                          target=0x40BD
17D6  1A 09 01 B1 E2 17                      STRCMP_NE_JMP                 start=v[0x109], values=[1], target=0x17E2
17DC  4B 01                                  SET_VIDEO_MODE                value=0x01
17DE  16 09 01 B0                            LOADSTRING                    dst=v[0x109], values=[0]
17E2  09 02 48                               VIDEOREF                      ref=0x4802 (P[2]=?)
17E5  9A ED E1 ED 17                         STRCMP_NE_JMP                 start=v[0x0ED], values=[49], target=0x17ED
17EA  18 B1 17                               CALL                          target=0x17B1
17ED  15 7A 17                               JMP                           target=0x177A
17F0  96 DA B1                               LOADSTRING                    dst=v[0x0DA], values=[1]
17F3  96 8E 31 B3                            LOADSTRING                    dst=v[0x08E], values=[1, 3]
17F7  18 80 37                               CALL                          target=0x3780
17FA  15 F8 16                               JMP                           target=0x16F8
17FD  96 D8 B1                               LOADSTRING                    dst=v[0x0D8], values=[1]
1800  96 8E 31 B4                            LOADSTRING                    dst=v[0x08E], values=[1, 4]
1804  18 8F 37                               CALL                          target=0x378F
1807  15 F8 16                               JMP                           target=0x16F8
180A  96 8C 30 B5                            LOADSTRING                    dst=v[0x08C], values=[0, 5]
180E  03                                     FADEIN_NEXT_VIDEO             
180F  02 12 4C                               PLAYSONG                      ref=0x4C12 (XMI[18]=?)
1812  1A 09 01 B0 24 18                      STRCMP_NE_JMP                 start=v[0x109], values=[0], target=0x1824
1818  23 05 01 B0 24 18                      STRCMP_EQ_JMP                 start=v[0x105], values=[0], target=0x1824
181E  4B 00                                  SET_VIDEO_MODE                value=0x00
1820  16 09 01 B1                            LOADSTRING                    dst=v[0x109], values=[1]
1824  09 32 3C                               VIDEOREF                      ref=0x3C32 (MC[50]=?)
1827  18 33 40                               CALL                          target=0x4033
182A  1A 09 01 B1 36 18                      STRCMP_NE_JMP                 start=v[0x109], values=[1], target=0x1836
1830  4B 01                                  SET_VIDEO_MODE                value=0x01
1832  16 09 01 B0                            LOADSTRING                    dst=v[0x109], values=[0]
1836  1A 02 01 B1 45 18                      STRCMP_NE_JMP                 start=v[0x102], values=[1], target=0x1845
183C  46                                     RESOURCE_CONTEXT_SAVE         
183D  07                                     VIDEOFLAG7_ON                 
183E  09 8C 50                               VIDEOREF                      ref=0x508C (GAMWAV[140]=?)
1841  47                                     RESOURCE_CONTEXT_RESTORE      
1842  15 57 18                               JMP                           target=0x1857
1845  09 34 3C                               VIDEOREF                      ref=0x3C34 (MC[52]=?)
1848  09 33 3C                               VIDEOREF                      ref=0x3C33 (MC[51]=?)
184B  03                                     FADEIN_NEXT_VIDEO             
184C  05                                     FIRSTFRAME_NEXT_VIDEO         
184D  09 11 2C                               VIDEOREF                      ref=0x2C11 (K[17]=?)
1850  96 8C 30 B4                            LOADSTRING                    dst=v[0x08C], values=[0, 4]
1854  15 A7 0B                               JMP                           target=0x0BA7
1857  96 8C 30 B5                            LOADSTRING                    dst=v[0x08C], values=[0, 5]
185B  18 FC 3F                               CALL                          target=0x3FFC
185E  1A 02 01 B1 67 18                      STRCMP_NE_JMP                 start=v[0x102], values=[1], target=0x1867
1864  15 48 18                               JMP                           target=0x1848
1867  1A 09 01 B0 79 18                      STRCMP_NE_JMP                 start=v[0x109], values=[0], target=0x1879
186D  23 05 01 B0 79 18                      STRCMP_EQ_JMP                 start=v[0x105], values=[0], target=0x1879
1873  4B 00                                  SET_VIDEO_MODE                value=0x00
1875  16 09 01 B1                            LOADSTRING                    dst=v[0x109], values=[1]
1879  96 8C 30 B6                            LOADSTRING                    dst=v[0x08C], values=[0, 6]
187D  02 13 4C                               PLAYSONG                      ref=0x4C13 (XMI[19]=?)
1880  03                                     FADEIN_NEXT_VIDEO             
1881  05                                     FIRSTFRAME_NEXT_VIDEO         
1882  09 6C 3C                               VIDEOREF                      ref=0x3C6C (MC[108]=?)
1885  96 92 30 B9                            LOADSTRING                    dst=v[0x092], values=[0, 9]
1889  A3 F4 E1 91 18                         STRCMP_EQ_JMP                 start=v[0x0F4], values=[49], target=0x1891
188E  18 7E 3F                               CALL                          target=0x3F7E
1891  1A 08 01 B1 9A 18                      STRCMP_NE_JMP                 start=v[0x108], values=[1], target=0x189A
1897  18 7E 3F                               CALL                          target=0x3F7E
189A  1A 09 01 B1 A6 18                      STRCMP_NE_JMP                 start=v[0x109], values=[1], target=0x18A6
18A0  4B 01                                  SET_VIDEO_MODE                value=0x01
18A2  16 09 01 B0                            LOADSTRING                    dst=v[0x109], values=[0]
18A6  A3 F4 E1 BE 18                         STRCMP_EQ_JMP                 start=v[0x0F4], values=[49], target=0x18BE
18AB  05                                     FIRSTFRAME_NEXT_VIDEO         
18AC  09 6C 3C                               VIDEOREF                      ref=0x3C6C (MC[108]=?)
18AF  09 6C 3C                               VIDEOREF                      ref=0x3C6C (MC[108]=?)
18B2  09 6D 3C                               VIDEOREF                      ref=0x3C6D (MC[109]=?)
18B5  09 6E 3C                               VIDEOREF                      ref=0x3C6E (MC[110]=?)
18B8  09 6F 3C                               VIDEOREF                      ref=0x3C6F (MC[111]=?)
18BB  15 B6 22                               JMP                           target=0x22B6
18BE  09 6C 3C                               VIDEOREF                      ref=0x3C6C (MC[108]=?)
18C1  9A AA B0 D0 18                         STRCMP_NE_JMP                 start=v[0x0AA], values=[0], target=0x18D0
18C6  96 AA B1                               LOADSTRING                    dst=v[0x0AA], values=[1]
18C9  96 8E 36 B0                            LOADSTRING                    dst=v[0x08E], values=[6, 0]
18CD  18 F1 3A                               CALL                          target=0x3AF1
18D0  09 6D 3C                               VIDEOREF                      ref=0x3C6D (MC[109]=?)
18D3  0B                                     INPUTLOOPSTART                
18D4  11 D8 18                               HOTSPOT_CENTER_2              target=0x18D8
18D7  13                                     INPUTLOOPEND                  
18D8  09 6E 3C                               VIDEOREF                      ref=0x3C6E (MC[110]=?)
18DB  02 15 4C                               PLAYSONG                      ref=0x4C15 (XMI[21]=?)
18DE  09 6F 3C                               VIDEOREF                      ref=0x3C6F (MC[111]=?)
18E1  03                                     FADEIN_NEXT_VIDEO             
18E2  09 31 3C                               VIDEOREF                      ref=0x3C31 (MC[49]=?)
18E5  03                                     FADEIN_NEXT_VIDEO             
18E6  05                                     FIRSTFRAME_NEXT_VIDEO         
18E7  09 11 2C                               VIDEOREF                      ref=0x2C11 (K[17]=?)
18EA  96 8C 30 B4                            LOADSTRING                    dst=v[0x08C], values=[0, 4]
18EE  15 A7 0B                               JMP                           target=0x0BA7
18F1  23 05 01 B0 FD 18                      STRCMP_EQ_JMP                 start=v[0x105], values=[0], target=0x18FD
18F7  4B 00                                  SET_VIDEO_MODE                value=0x00
18F9  16 09 01 B1                            LOADSTRING                    dst=v[0x109], values=[1]
18FD  96 00 24 A4                            LOADSTRING                    dst=v[0x000], values=[244, 244]
1901  3A 23 E1                               PRINTSTRING                   values=[v[0x000]]
1904  2C 00 00 00                            SET_HOTSPOT_TOP               target=0x0000, cursor=0x00
1908  31 00 00 E8 03                         MIDI_CONTROL                  value=0x0000, time=0x03E8
190D  04                                     PALFADEOUT                    
190E  35                                     VIDEOFLAG7_OFF                
190F  09 18 24                               VIDEOREF                      ref=0x2418 (INTRO[24]=?)
1912  0A                                     VIDEOFLAG5_ON                 
1913  09 21 24                               VIDEOREF                      ref=0x2421 (INTRO[33]=?)
1916  0A                                     VIDEOFLAG5_ON                 
1917  09 25 24                               VIDEOREF                      ref=0x2425 (INTRO[37]=?)
191A  0B                                     INPUTLOOPSTART                
191B  0D 0F 01 F0 00 71 01 08 01 04 1F 08    HOTSPOT_RECT                  left=0x010F, top=0x00F0, right=0x0171, bottom=0x0108, target=0x1F04, cursor=0x08
1927  0D 12 01 09 01 6F 01 24 01 8E 19 08    HOTSPOT_RECT                  left=0x0112, top=0x0109, right=0x016F, bottom=0x0124, target=0x198E, cursor=0x08
1933  0D FB 00 24 01 8E 01 3D 01 9B 1D 08    HOTSPOT_RECT                  left=0x00FB, top=0x0124, right=0x018E, bottom=0x013D, target=0x1D9B, cursor=0x08
193F  0D F4 00 40 01 95 01 5D 01 15 00 08    HOTSPOT_RECT                  left=0x00F4, top=0x0140, right=0x0195, bottom=0x015D, target=0x0015, cursor=0x08
194B  0D D5 00 61 01 AA 01 76 01 C1 1E 08    HOTSPOT_RECT                  left=0x00D5, top=0x0161, right=0x01AA, bottom=0x0176, target=0x1EC1, cursor=0x08
1957  1A 07 01 A0 8D 19                      STRCMP_NE_JMP                 start=v[0x107], values=[240], target=0x198D
195D  0D 64 00 9B 00 B8 00 CC 00 E6 1B 07    HOTSPOT_RECT                  left=0x0064, top=0x009B, right=0x00B8, bottom=0x00CC, target=0x1BE6, cursor=0x07
1969  0D C2 01 9D 00 1E 02 C9 00 E6 1B 07    HOTSPOT_RECT                  left=0x01C2, top=0x009D, right=0x021E, bottom=0x00C9, target=0x1BE6, cursor=0x07
1975  0D 2A 00 2B 01 B2 00 85 01 E6 1B 07    HOTSPOT_RECT                  left=0x002A, top=0x012B, right=0x00B2, bottom=0x0185, target=0x1BE6, cursor=0x07
1981  0D D6 01 2C 01 59 02 85 01 E6 1B 07    HOTSPOT_RECT                  left=0x01D6, top=0x012C, right=0x0259, bottom=0x0185, target=0x1BE6, cursor=0x07
198D  13                                     INPUTLOOPEND                  
198E  2C F1 18 08                            SET_HOTSPOT_TOP               target=0x18F1, cursor=0x08
1992  22                                     COPY_BG_TO_FG                 
1993  07                                     VIDEOFLAG7_ON                 
1994  09 1D 24                               VIDEOREF                      ref=0x241D (INTRO[29]=?)
1997  22                                     COPY_BG_TO_FG                 
1998  07                                     VIDEOFLAG7_ON                 
1999  9A FB E1 A4 19                         STRCMP_NE_JMP                 start=v[0x0FB], values=[49], target=0x19A4
199E  09 33 24                               VIDEOREF                      ref=0x2433 (INTRO[51]=?)
19A1  15 A7 19                               JMP                           target=0x19A7
19A4  09 32 24                               VIDEOREF                      ref=0x2432 (INTRO[50]=?)
19A7  22                                     COPY_BG_TO_FG                 
19A8  07                                     VIDEOFLAG7_ON                 
19A9  9A F5 E1 B1 19                         STRCMP_NE_JMP                 start=v[0x0F5], values=[49], target=0x19B1
19AE  09 35 24                               VIDEOREF                      ref=0x2435 (INTRO[53]=?)
19B1  22                                     COPY_BG_TO_FG                 
19B2  07                                     VIDEOFLAG7_ON                 
19B3  9A FA E1 BB 19                         STRCMP_NE_JMP                 start=v[0x0FA], values=[49], target=0x19BB
19B8  09 3F 24                               VIDEOREF                      ref=0x243F (INTRO[63]=?)
19BB  A3 99 B0 DA 19                         STRCMP_EQ_JMP                 start=v[0x099], values=[0], target=0x19DA
19C0  9A F3 E1 DA 19                         STRCMP_NE_JMP                 start=v[0x0F3], values=[49], target=0x19DA
19C5  9A E9 E1 DA 19                         STRCMP_NE_JMP                 start=v[0x0E9], values=[49], target=0x19DA
19CA  22                                     COPY_BG_TO_FG                 
19CB  07                                     VIDEOFLAG7_ON                 
19CC  9A F6 E1 D7 19                         STRCMP_NE_JMP                 start=v[0x0F6], values=[49], target=0x19D7
19D1  09 37 24                               VIDEOREF                      ref=0x2437 (INTRO[55]=?)
19D4  15 DA 19                               JMP                           target=0x19DA
19D7  09 36 24                               VIDEOREF                      ref=0x2436 (INTRO[54]=?)
19DA  9A FA E1 EF 19                         STRCMP_NE_JMP                 start=v[0x0FA], values=[49], target=0x19EF
19DF  22                                     COPY_BG_TO_FG                 
19E0  07                                     VIDEOFLAG7_ON                 
19E1  9A F9 E1 EC 19                         STRCMP_NE_JMP                 start=v[0x0F9], values=[49], target=0x19EC
19E6  09 39 24                               VIDEOREF                      ref=0x2439 (INTRO[57]=?)
19E9  15 EF 19                               JMP                           target=0x19EF
19EC  09 38 24                               VIDEOREF                      ref=0x2438 (INTRO[56]=?)
19EF  A3 99 B0 09 1A                         STRCMP_EQ_JMP                 start=v[0x099], values=[0], target=0x1A09
19F4  9A F3 E1 09 1A                         STRCMP_NE_JMP                 start=v[0x0F3], values=[49], target=0x1A09
19F9  22                                     COPY_BG_TO_FG                 
19FA  07                                     VIDEOFLAG7_ON                 
19FB  9A ED E1 06 1A                         STRCMP_NE_JMP                 start=v[0x0ED], values=[49], target=0x1A06
1A00  09 3D 24                               VIDEOREF                      ref=0x243D (INTRO[61]=?)
1A03  15 09 1A                               JMP                           target=0x1A09
1A06  09 3C 24                               VIDEOREF                      ref=0x243C (INTRO[60]=?)
1A09  9A F9 E1 1E 1A                         STRCMP_NE_JMP                 start=v[0x0F9], values=[49], target=0x1A1E
1A0E  22                                     COPY_BG_TO_FG                 
1A0F  07                                     VIDEOFLAG7_ON                 
1A10  9A F8 E1 1B 1A                         STRCMP_NE_JMP                 start=v[0x0F8], values=[49], target=0x1A1B
1A15  09 3B 24                               VIDEOREF                      ref=0x243B (INTRO[59]=?)
1A18  15 1E 1A                               JMP                           target=0x1A1E
1A1B  09 3A 24                               VIDEOREF                      ref=0x243A (INTRO[58]=?)
1A1E  22                                     COPY_BG_TO_FG                 
1A1F  0B                                     INPUTLOOPSTART                
1A20  0D 39 01 F6 00 7B 01 3C 01 99 1A 08    HOTSPOT_RECT                  left=0x0139, top=0x00F6, right=0x017B, bottom=0x013C, target=0x1A99, cursor=0x08
1A2C  9A F9 E1 3D 1A                         STRCMP_NE_JMP                 start=v[0x0F9], values=[49], target=0x1A3D
1A31  0D 34 01 C6 00 5E 01 E6 00 4A 1A 08    HOTSPOT_RECT                  left=0x0134, top=0x00C6, right=0x015E, bottom=0x00E6, target=0x1A4A, cursor=0x08
1A3D  0D D5 00 61 01 AA 01 76 01 F1 18 08    HOTSPOT_RECT                  left=0x00D5, top=0x0161, right=0x01AA, bottom=0x0176, target=0x18F1, cursor=0x08
1A49  13                                     INPUTLOOPEND                  
1A4A  22                                     COPY_BG_TO_FG                 
1A4B  07                                     VIDEOFLAG7_ON                 
1A4C  09 1C 24                               VIDEOREF                      ref=0x241C (INTRO[28]=?)
1A4F  22                                     COPY_BG_TO_FG                 
1A50  07                                     VIDEOFLAG7_ON                 
1A51  9A F8 E1 7C 1A                         STRCMP_NE_JMP                 start=v[0x0F8], values=[49], target=0x1A7C
1A56  09 5B 24                               VIDEOREF                      ref=0x245B (INTRO[91]=?)
1A59  22                                     COPY_BG_TO_FG                 
1A5A  07                                     VIDEOFLAG7_ON                 
1A5B  9A F4 B0 66 1A                         STRCMP_NE_JMP                 start=v[0x0F4], values=[0], target=0x1A66
1A60  09 5C 24                               VIDEOREF                      ref=0x245C (INTRO[92]=?)
1A63  15 79 1A                               JMP                           target=0x1A79
1A66  09 5D 24                               VIDEOREF                      ref=0x245D (INTRO[93]=?)
1A69  22                                     COPY_BG_TO_FG                 
1A6A  07                                     VIDEOFLAG7_ON                 
1A6B  9A F4 E1 76 1A                         STRCMP_NE_JMP                 start=v[0x0F4], values=[49], target=0x1A76
1A70  09 5F 24                               VIDEOREF                      ref=0x245F (INTRO[95]=?)
1A73  15 79 1A                               JMP                           target=0x1A79
1A76  09 5E 24                               VIDEOREF                      ref=0x245E (INTRO[94]=?)
1A79  15 7F 1A                               JMP                           target=0x1A7F
1A7C  09 5A 24                               VIDEOREF                      ref=0x245A (INTRO[90]=?)
1A7F  0B                                     INPUTLOOPSTART                
1A80  0D A1 00 C1 00 E8 01 48 01 92 19 08    HOTSPOT_RECT                  left=0x00A1, top=0x00C1, right=0x01E8, bottom=0x0148, target=0x1992, cursor=0x08
1A8C  0D D5 00 61 01 AA 01 76 01 F1 18 08    HOTSPOT_RECT                  left=0x00D5, top=0x0161, right=0x01AA, bottom=0x0176, target=0x18F1, cursor=0x08
1A98  13                                     INPUTLOOPEND                  
1A99  22                                     COPY_BG_TO_FG                 
1A9A  07                                     VIDEOFLAG7_ON                 
1A9B  09 1E 24                               VIDEOREF                      ref=0x241E (INTRO[30]=?)
1A9E  22                                     COPY_BG_TO_FG                 
1A9F  07                                     VIDEOFLAG7_ON                 
1AA0  09 40 24                               VIDEOREF                      ref=0x2440 (INTRO[64]=?)
1AA3  9A FA E1 B8 1A                         STRCMP_NE_JMP                 start=v[0x0FA], values=[49], target=0x1AB8
1AA8  22                                     COPY_BG_TO_FG                 
1AA9  07                                     VIDEOFLAG7_ON                 
1AAA  9A F0 E1 B5 1A                         STRCMP_NE_JMP                 start=v[0x0F0], values=[49], target=0x1AB5
1AAF  09 43 24                               VIDEOREF                      ref=0x2443 (INTRO[67]=?)
1AB2  15 B8 1A                               JMP                           target=0x1AB8
1AB5  09 42 24                               VIDEOREF                      ref=0x2442 (INTRO[66]=?)
1AB8  9A FA E1 CD 1A                         STRCMP_NE_JMP                 start=v[0x0FA], values=[49], target=0x1ACD
1ABD  22                                     COPY_BG_TO_FG                 
1ABE  07                                     VIDEOFLAG7_ON                 
1ABF  9A E8 E1 CA 1A                         STRCMP_NE_JMP                 start=v[0x0E8], values=[49], target=0x1ACA
1AC4  09 45 24                               VIDEOREF                      ref=0x2445 (INTRO[69]=?)
1AC7  15 CD 1A                               JMP                           target=0x1ACD
1ACA  09 44 24                               VIDEOREF                      ref=0x2444 (INTRO[68]=?)
1ACD  9A FA E1 E2 1A                         STRCMP_NE_JMP                 start=v[0x0FA], values=[49], target=0x1AE2
1AD2  22                                     COPY_BG_TO_FG                 
1AD3  07                                     VIDEOFLAG7_ON                 
1AD4  9A F1 E1 DF 1A                         STRCMP_NE_JMP                 start=v[0x0F1], values=[49], target=0x1ADF
1AD9  09 47 24                               VIDEOREF                      ref=0x2447 (INTRO[71]=?)
1ADC  15 E2 1A                               JMP                           target=0x1AE2
1ADF  09 46 24                               VIDEOREF                      ref=0x2446 (INTRO[70]=?)
1AE2  A3 99 B0 F7 1A                         STRCMP_EQ_JMP                 start=v[0x099], values=[0], target=0x1AF7
1AE7  22                                     COPY_BG_TO_FG                 
1AE8  07                                     VIDEOFLAG7_ON                 
1AE9  9A EC E1 F4 1A                         STRCMP_NE_JMP                 start=v[0x0EC], values=[49], target=0x1AF4
1AEE  09 49 24                               VIDEOREF                      ref=0x2449 (INTRO[73]=?)
1AF1  15 F7 1A                               JMP                           target=0x1AF7
1AF4  09 48 24                               VIDEOREF                      ref=0x2448 (INTRO[72]=?)
1AF7  9A EB E1 39 1B                         STRCMP_NE_JMP                 start=v[0x0EB], values=[49], target=0x1B39
1AFC  9A F4 E1 39 1B                         STRCMP_NE_JMP                 start=v[0x0F4], values=[49], target=0x1B39
1B01  9A F7 E1 39 1B                         STRCMP_NE_JMP                 start=v[0x0F7], values=[49], target=0x1B39
1B06  9A F6 E1 39 1B                         STRCMP_NE_JMP                 start=v[0x0F6], values=[49], target=0x1B39
1B0B  9A F5 E1 39 1B                         STRCMP_NE_JMP                 start=v[0x0F5], values=[49], target=0x1B39
1B10  9A F3 E1 39 1B                         STRCMP_NE_JMP                 start=v[0x0F3], values=[49], target=0x1B39
1B15  9A EE E1 39 1B                         STRCMP_NE_JMP                 start=v[0x0EE], values=[49], target=0x1B39
1B1A  9A EC E1 39 1B                         STRCMP_NE_JMP                 start=v[0x0EC], values=[49], target=0x1B39
1B1F  9A F1 E1 39 1B                         STRCMP_NE_JMP                 start=v[0x0F1], values=[49], target=0x1B39
1B24  9A ED E1 39 1B                         STRCMP_NE_JMP                 start=v[0x0ED], values=[49], target=0x1B39
1B29  22                                     COPY_BG_TO_FG                 
1B2A  07                                     VIDEOFLAG7_ON                 
1B2B  9A F2 E1 36 1B                         STRCMP_NE_JMP                 start=v[0x0F2], values=[49], target=0x1B36
1B30  09 4B 24                               VIDEOREF                      ref=0x244B (INTRO[75]=?)
1B33  15 39 1B                               JMP                           target=0x1B39
1B36  09 4A 24                               VIDEOREF                      ref=0x244A (INTRO[74]=?)
1B39  A3 99 B0 4E 1B                         STRCMP_EQ_JMP                 start=v[0x099], values=[0], target=0x1B4E
1B3E  22                                     COPY_BG_TO_FG                 
1B3F  07                                     VIDEOFLAG7_ON                 
1B40  9A EE E1 4B 1B                         STRCMP_NE_JMP                 start=v[0x0EE], values=[49], target=0x1B4B
1B45  09 4F 24                               VIDEOREF                      ref=0x244F (INTRO[79]=?)
1B48  15 4E 1B                               JMP                           target=0x1B4E
1B4B  09 4E 24                               VIDEOREF                      ref=0x244E (INTRO[78]=?)
1B4E  A3 99 B0 63 1B                         STRCMP_EQ_JMP                 start=v[0x099], values=[0], target=0x1B63
1B53  22                                     COPY_BG_TO_FG                 
1B54  07                                     VIDEOFLAG7_ON                 
1B55  9A F7 E1 60 1B                         STRCMP_NE_JMP                 start=v[0x0F7], values=[49], target=0x1B60
1B5A  09 4D 24                               VIDEOREF                      ref=0x244D (INTRO[77]=?)
1B5D  15 63 1B                               JMP                           target=0x1B63
1B60  09 4C 24                               VIDEOREF                      ref=0x244C (INTRO[76]=?)
1B63  A3 99 B0 78 1B                         STRCMP_EQ_JMP                 start=v[0x099], values=[0], target=0x1B78
1B68  22                                     COPY_BG_TO_FG                 
1B69  07                                     VIDEOFLAG7_ON                 
1B6A  9A E9 E1 75 1B                         STRCMP_NE_JMP                 start=v[0x0E9], values=[49], target=0x1B75
1B6F  09 55 24                               VIDEOREF                      ref=0x2455 (INTRO[85]=?)
1B72  15 78 1B                               JMP                           target=0x1B78
1B75  09 54 24                               VIDEOREF                      ref=0x2454 (INTRO[84]=?)
1B78  9A E9 E1 8D 1B                         STRCMP_NE_JMP                 start=v[0x0E9], values=[49], target=0x1B8D
1B7D  22                                     COPY_BG_TO_FG                 
1B7E  07                                     VIDEOFLAG7_ON                 
1B7F  9A F3 E1 8A 1B                         STRCMP_NE_JMP                 start=v[0x0F3], values=[49], target=0x1B8A
1B84  09 53 24                               VIDEOREF                      ref=0x2453 (INTRO[83]=?)
1B87  15 8D 1B                               JMP                           target=0x1B8D
1B8A  09 52 24                               VIDEOREF                      ref=0x2452 (INTRO[82]=?)
1B8D  9A F3 E1 A2 1B                         STRCMP_NE_JMP                 start=v[0x0F3], values=[49], target=0x1BA2
1B92  22                                     COPY_BG_TO_FG                 
1B93  07                                     VIDEOFLAG7_ON                 
1B94  9A EB E1 9F 1B                         STRCMP_NE_JMP                 start=v[0x0EB], values=[49], target=0x1B9F
1B99  09 51 24                               VIDEOREF                      ref=0x2451 (INTRO[81]=?)
1B9C  15 A2 1B                               JMP                           target=0x1BA2
1B9F  09 50 24                               VIDEOREF                      ref=0x2450 (INTRO[80]=?)
1BA2  9A FA E1 B7 1B                         STRCMP_NE_JMP                 start=v[0x0FA], values=[49], target=0x1BB7
1BA7  22                                     COPY_BG_TO_FG                 
1BA8  07                                     VIDEOFLAG7_ON                 
1BA9  9A EF E1 B4 1B                         STRCMP_NE_JMP                 start=v[0x0EF], values=[49], target=0x1BB4
1BAE  09 57 24                               VIDEOREF                      ref=0x2457 (INTRO[87]=?)
1BB1  15 B7 1B                               JMP                           target=0x1BB7
1BB4  09 56 24                               VIDEOREF                      ref=0x2456 (INTRO[86]=?)
1BB7  A3 99 B0 CC 1B                         STRCMP_EQ_JMP                 start=v[0x099], values=[0], target=0x1BCC
1BBC  22                                     COPY_BG_TO_FG                 
1BBD  07                                     VIDEOFLAG7_ON                 
1BBE  9A EA E1 C9 1B                         STRCMP_NE_JMP                 start=v[0x0EA], values=[49], target=0x1BC9
1BC3  09 59 24                               VIDEOREF                      ref=0x2459 (INTRO[89]=?)
1BC6  15 CC 1B                               JMP                           target=0x1BCC
1BC9  09 58 24                               VIDEOREF                      ref=0x2458 (INTRO[88]=?)
1BCC  0B                                     INPUTLOOPSTART                
1BCD  0D 64 01 09 01 A2 01 53 01 92 19 08    HOTSPOT_RECT                  left=0x0164, top=0x0109, right=0x01A2, bottom=0x0153, target=0x1992, cursor=0x08
1BD9  0D D5 00 61 01 AA 01 76 01 F1 18 08    HOTSPOT_RECT                  left=0x00D5, top=0x0161, right=0x01AA, bottom=0x0176, target=0x18F1, cursor=0x08
1BE5  13                                     INPUTLOOPEND                  
1BE6  23 09 01 B0 F2 1B                      STRCMP_EQ_JMP                 start=v[0x109], values=[0], target=0x1BF2
1BEC  4B 01                                  SET_VIDEO_MODE                value=0x01
1BEE  16 09 01 B0                            LOADSTRING                    dst=v[0x109], values=[0]
1BF2  2C F1 18 08                            SET_HOTSPOT_TOP               target=0x18F1, cursor=0x08
1BF6  38                                     RESTORESTACK                  
1BF7  04                                     PALFADEOUT                    
1BF8  09 00 24                               VIDEOREF                      ref=0x2400 (INTRO[0]=?)
1BFB  0B                                     INPUTLOOPSTART                
1BFC  0D 00 00 50 00 7F 00 90 00 8F 1D 07    HOTSPOT_RECT                  left=0x0000, top=0x0050, right=0x007F, bottom=0x0090, target=0x1D8F, cursor=0x07
1C08  0D 80 00 50 00 FF 00 90 00 11 1D 09    HOTSPOT_RECT                  left=0x0080, top=0x0050, right=0x00FF, bottom=0x0090, target=0x1D11, cursor=0x09
1C14  0D 00 01 50 00 7F 01 90 00 17 1D 0A    HOTSPOT_RECT                  left=0x0100, top=0x0050, right=0x017F, bottom=0x0090, target=0x1D17, cursor=0x0A
1C20  0D 80 01 50 00 FF 01 90 00 1D 1D 07    HOTSPOT_RECT                  left=0x0180, top=0x0050, right=0x01FF, bottom=0x0090, target=0x1D1D, cursor=0x07
1C2C  0D 00 02 50 00 7F 02 90 00 23 1D 09    HOTSPOT_RECT                  left=0x0200, top=0x0050, right=0x027F, bottom=0x0090, target=0x1D23, cursor=0x09
1C38  0D 00 00 91 00 7F 00 D1 00 29 1D 0A    HOTSPOT_RECT                  left=0x0000, top=0x0091, right=0x007F, bottom=0x00D1, target=0x1D29, cursor=0x0A
1C44  0D 80 00 91 00 FF 00 D1 00 2F 1D 07    HOTSPOT_RECT                  left=0x0080, top=0x0091, right=0x00FF, bottom=0x00D1, target=0x1D2F, cursor=0x07
1C50  0D 00 01 91 00 7F 01 D1 00 35 1D 09    HOTSPOT_RECT                  left=0x0100, top=0x0091, right=0x017F, bottom=0x00D1, target=0x1D35, cursor=0x09
1C5C  0D 80 01 91 00 00 02 D1 00 3B 1D 0A    HOTSPOT_RECT                  left=0x0180, top=0x0091, right=0x0200, bottom=0x00D1, target=0x1D3B, cursor=0x0A
1C68  0D 00 02 91 00 7F 02 D1 00 41 1D 07    HOTSPOT_RECT                  left=0x0200, top=0x0091, right=0x027F, bottom=0x00D1, target=0x1D41, cursor=0x07
1C74  0D 00 00 D2 00 7F 00 12 01 47 1D 09    HOTSPOT_RECT                  left=0x0000, top=0x00D2, right=0x007F, bottom=0x0112, target=0x1D47, cursor=0x09
1C80  0D 80 00 D2 00 FF 00 12 01 4D 1D 0A    HOTSPOT_RECT                  left=0x0080, top=0x00D2, right=0x00FF, bottom=0x0112, target=0x1D4D, cursor=0x0A
1C8C  0D 00 01 D2 00 7F 01 12 01 53 1D 07    HOTSPOT_RECT                  left=0x0100, top=0x00D2, right=0x017F, bottom=0x0112, target=0x1D53, cursor=0x07
1C98  0D 80 01 D2 00 FF 01 12 01 59 1D 09    HOTSPOT_RECT                  left=0x0180, top=0x00D2, right=0x01FF, bottom=0x0112, target=0x1D59, cursor=0x09
1CA4  0D 00 02 D2 00 7F 02 12 01 5F 1D 0A    HOTSPOT_RECT                  left=0x0200, top=0x00D2, right=0x027F, bottom=0x0112, target=0x1D5F, cursor=0x0A
1CB0  0D 00 00 13 01 7F 00 52 01 65 1D 07    HOTSPOT_RECT                  left=0x0000, top=0x0113, right=0x007F, bottom=0x0152, target=0x1D65, cursor=0x07
1CBC  0D 80 00 13 01 FF 00 52 01 6B 1D 09    HOTSPOT_RECT                  left=0x0080, top=0x0113, right=0x00FF, bottom=0x0152, target=0x1D6B, cursor=0x09
1CC8  0D 00 01 13 01 7F 01 52 01 71 1D 0A    HOTSPOT_RECT                  left=0x0100, top=0x0113, right=0x017F, bottom=0x0152, target=0x1D71, cursor=0x0A
1CD4  0D 80 01 13 01 FF 01 52 01 77 1D 07    HOTSPOT_RECT                  left=0x0180, top=0x0113, right=0x01FF, bottom=0x0152, target=0x1D77, cursor=0x07
1CE0  0D 00 02 13 01 7F 02 52 01 95 1D 09    HOTSPOT_RECT                  left=0x0200, top=0x0113, right=0x027F, bottom=0x0152, target=0x1D95, cursor=0x09
1CEC  0D 00 00 53 01 7F 00 90 01 7D 1D 0A    HOTSPOT_RECT                  left=0x0000, top=0x0153, right=0x007F, bottom=0x0190, target=0x1D7D, cursor=0x0A
1CF8  0D 80 00 53 01 FF 00 90 01 83 1D 07    HOTSPOT_RECT                  left=0x0080, top=0x0153, right=0x00FF, bottom=0x0190, target=0x1D83, cursor=0x07
1D04  0D 00 01 53 01 7F 01 90 01 89 1D 09    HOTSPOT_RECT                  left=0x0100, top=0x0153, right=0x017F, bottom=0x0190, target=0x1D89, cursor=0x09
1D10  13                                     INPUTLOOPEND                  
1D11  18 67 03                               CALL                          target=0x0367
1D14  15 B3 0D                               JMP                           target=0x0DB3
1D17  18 67 03                               CALL                          target=0x0367
1D1A  15 0A 18                               JMP                           target=0x180A
1D1D  18 67 03                               CALL                          target=0x0367
1D20  15 E1 2F                               JMP                           target=0x2FE1
1D23  18 67 03                               CALL                          target=0x0367
1D26  15 67 18                               JMP                           target=0x1867
1D29  18 67 03                               CALL                          target=0x0367
1D2C  15 15 35                               JMP                           target=0x3515
1D2F  18 67 03                               CALL                          target=0x0367
1D32  15 2B 09                               JMP                           target=0x092B
1D35  18 67 03                               CALL                          target=0x0367
1D38  15 82 2E                               JMP                           target=0x2E82
1D3B  18 67 03                               CALL                          target=0x0367
1D3E  15 D9 03                               JMP                           target=0x03D9
1D41  18 67 03                               CALL                          target=0x0367
1D44  15 63 14                               JMP                           target=0x1463
1D47  18 67 03                               CALL                          target=0x0367
1D4A  15 CA 03                               JMP                           target=0x03CA
1D4D  18 67 03                               CALL                          target=0x0367
1D50  15 77 13                               JMP                           target=0x1377
1D53  18 67 03                               CALL                          target=0x0367
1D56  15 89 15                               JMP                           target=0x1589
1D59  18 67 03                               CALL                          target=0x0367
1D5C  15 62 0A                               JMP                           target=0x0A62
1D5F  18 67 03                               CALL                          target=0x0367
1D62  15 66 32                               JMP                           target=0x3266
1D65  18 67 03                               CALL                          target=0x0367
1D68  15 B6 22                               JMP                           target=0x22B6
1D6B  18 67 03                               CALL                          target=0x0367
1D6E  15 24 34                               JMP                           target=0x3424
1D71  18 67 03                               CALL                          target=0x0367
1D74  15 2D 0C                               JMP                           target=0x0C2D
1D77  18 67 03                               CALL                          target=0x0367
1D7A  15 E0 16                               JMP                           target=0x16E0
1D7D  18 67 03                               CALL                          target=0x0367
1D80  15 FC 30                               JMP                           target=0x30FC
1D83  18 67 03                               CALL                          target=0x0367
1D86  15 D5 2C                               JMP                           target=0x2CD5
1D89  18 67 03                               CALL                          target=0x0367
1D8C  15 E8 03                               JMP                           target=0x03E8
1D8F  18 14 03                               CALL                          target=0x0314
1D92  15 9C 2D                               JMP                           target=0x2D9C
1D95  18 14 03                               CALL                          target=0x0314
1D98  15 F3 3D                               JMP                           target=0x3DF3
1D9B  23 09 01 B0 A7 1D                      STRCMP_EQ_JMP                 start=v[0x109], values=[0], target=0x1DA7
1DA1  4B 01                                  SET_VIDEO_MODE                value=0x01
1DA3  16 09 01 B0                            LOADSTRING                    dst=v[0x109], values=[0]
1DA7  38                                     RESTORESTACK                  
1DA8  2C F1 18 08                            SET_HOTSPOT_TOP               target=0x18F1, cursor=0x08
1DAC  35                                     VIDEOFLAG7_OFF                
1DAD  9A 8C 30 B1 B9 1D                      STRCMP_NE_JMP                 start=v[0x08C], values=[0, 1], target=0x1DB9
1DB3  15 3B 1D                               JMP                           target=0x1D3B
1DB6  15 BE 1E                               JMP                           target=0x1EBE
1DB9  9A 8C 30 B2 C5 1D                      STRCMP_NE_JMP                 start=v[0x08C], values=[0, 2], target=0x1DC5
1DBF  15 47 1D                               JMP                           target=0x1D47
1DC2  15 BE 1E                               JMP                           target=0x1EBE
1DC5  9A 8C 30 B3 D1 1D                      STRCMP_NE_JMP                 start=v[0x08C], values=[0, 3], target=0x1DD1
1DCB  15 2F 1D                               JMP                           target=0x1D2F
1DCE  15 BE 1E                               JMP                           target=0x1EBE
1DD1  9A 8C 30 B4 DD 1D                      STRCMP_NE_JMP                 start=v[0x08C], values=[0, 4], target=0x1DDD
1DD7  15 59 1D                               JMP                           target=0x1D59
1DDA  15 BE 1E                               JMP                           target=0x1EBE
1DDD  9A 8C 30 B5 E9 1D                      STRCMP_NE_JMP                 start=v[0x08C], values=[0, 5], target=0x1DE9
1DE3  15 17 1D                               JMP                           target=0x1D17
1DE6  15 BE 1E                               JMP                           target=0x1EBE
1DE9  9A 8C 30 B6 F5 1D                      STRCMP_NE_JMP                 start=v[0x08C], values=[0, 6], target=0x1DF5
1DEF  15 23 1D                               JMP                           target=0x1D23
1DF2  15 BE 1E                               JMP                           target=0x1EBE
1DF5  9A 8C 30 B7 01 1E                      STRCMP_NE_JMP                 start=v[0x08C], values=[0, 7], target=0x1E01
1DFB  15 65 1D                               JMP                           target=0x1D65
1DFE  15 BE 1E                               JMP                           target=0x1EBE
1E01  9A 8C 30 B8 0D 1E                      STRCMP_NE_JMP                 start=v[0x08C], values=[0, 8], target=0x1E0D
1E07  15 71 1D                               JMP                           target=0x1D71
1E0A  15 BE 1E                               JMP                           target=0x1EBE
1E0D  9A 8C 30 B9 19 1E                      STRCMP_NE_JMP                 start=v[0x08C], values=[0, 9], target=0x1E19
1E13  15 41 1D                               JMP                           target=0x1D41
1E16  15 BE 1E                               JMP                           target=0x1EBE
1E19  9A 8C 31 B0 25 1E                      STRCMP_NE_JMP                 start=v[0x08C], values=[1, 0], target=0x1E25
1E1F  15 4D 1D                               JMP                           target=0x1D4D
1E22  15 BE 1E                               JMP                           target=0x1EBE
1E25  9A 8C 31 B1 31 1E                      STRCMP_NE_JMP                 start=v[0x08C], values=[1, 1], target=0x1E31
1E2B  15 53 1D                               JMP                           target=0x1D53
1E2E  15 BE 1E                               JMP                           target=0x1EBE
1E31  9A 8C 31 B2 3D 1E                      STRCMP_NE_JMP                 start=v[0x08C], values=[1, 2], target=0x1E3D
1E37  15 6B 1D                               JMP                           target=0x1D6B
1E3A  15 BE 1E                               JMP                           target=0x1EBE
1E3D  9A 8C 31 B3 49 1E                      STRCMP_NE_JMP                 start=v[0x08C], values=[1, 3], target=0x1E49
1E43  15 35 1D                               JMP                           target=0x1D35
1E46  15 BE 1E                               JMP                           target=0x1EBE
1E49  9A 8C 31 B4 55 1E                      STRCMP_NE_JMP                 start=v[0x08C], values=[1, 4], target=0x1E55
1E4F  15 83 1D                               JMP                           target=0x1D83
1E52  15 BE 1E                               JMP                           target=0x1EBE
1E55  9A 8C 31 B5 61 1E                      STRCMP_NE_JMP                 start=v[0x08C], values=[1, 5], target=0x1E61
1E5B  15 11 1D                               JMP                           target=0x1D11
1E5E  15 BE 1E                               JMP                           target=0x1EBE
1E61  9A 8C 31 B6 6D 1E                      STRCMP_NE_JMP                 start=v[0x08C], values=[1, 6], target=0x1E6D
1E67  15 1D 1D                               JMP                           target=0x1D1D
1E6A  15 BE 1E                               JMP                           target=0x1EBE
1E6D  9A 8C 31 B7 79 1E                      STRCMP_NE_JMP                 start=v[0x08C], values=[1, 7], target=0x1E79
1E73  15 5F 1D                               JMP                           target=0x1D5F
1E76  15 BE 1E                               JMP                           target=0x1EBE
1E79  9A 8C 31 B8 85 1E                      STRCMP_NE_JMP                 start=v[0x08C], values=[1, 8], target=0x1E85
1E7F  15 29 1D                               JMP                           target=0x1D29
1E82  15 BE 1E                               JMP                           target=0x1EBE
1E85  9A 8C 31 B9 91 1E                      STRCMP_NE_JMP                 start=v[0x08C], values=[1, 9], target=0x1E91
1E8B  15 7D 1D                               JMP                           target=0x1D7D
1E8E  15 BE 1E                               JMP                           target=0x1EBE
1E91  9A 8C 32 B0 9D 1E                      STRCMP_NE_JMP                 start=v[0x08C], values=[2, 0], target=0x1E9D
1E97  15 8F 1D                               JMP                           target=0x1D8F
1E9A  15 BE 1E                               JMP                           target=0x1EBE
1E9D  9A 8C 32 B1 A9 1E                      STRCMP_NE_JMP                 start=v[0x08C], values=[2, 1], target=0x1EA9
1EA3  15 8F 1D                               JMP                           target=0x1D8F
1EA6  15 BE 1E                               JMP                           target=0x1EBE
1EA9  9A 8C 32 B2 B5 1E                      STRCMP_NE_JMP                 start=v[0x08C], values=[2, 2], target=0x1EB5
1EAF  15 95 1D                               JMP                           target=0x1D95
1EB2  15 BE 1E                               JMP                           target=0x1EBE
1EB5  9A 8C 32 B3 BE 1E                      STRCMP_NE_JMP                 start=v[0x08C], values=[2, 3], target=0x1EBE
1EBB  15 77 1D                               JMP                           target=0x1D77
1EBE  15 F9 04                               JMP                           target=0x04F9
1EC1  0A                                     VIDEOFLAG5_ON                 
1EC2  09 22 24                               VIDEOREF                      ref=0x2422 (INTRO[34]=?)
1EC5  0A                                     VIDEOFLAG5_ON                 
1EC6  09 26 24                               VIDEOREF                      ref=0x2426 (INTRO[38]=?)
1EC9  0A                                     VIDEOFLAG5_ON                 
1ECA  09 27 24                               VIDEOREF                      ref=0x2427 (INTRO[39]=?)
1ECD  0B                                     INPUTLOOPSTART                
1ECE  0D 54 00 B3 00 B2 00 F7 00 F3 1E 08    HOTSPOT_RECT                  left=0x0054, top=0x00B3, right=0x00B2, bottom=0x00F7, target=0x1EF3, cursor=0x08
1EDA  0D CB 01 B6 00 2C 02 ED 00 FD 1E 08    HOTSPOT_RECT                  left=0x01CB, top=0x00B6, right=0x022C, bottom=0x00ED, target=0x1EFD, cursor=0x08
1EE6  0D D5 00 61 01 AA 01 76 01 F3 1E 08    HOTSPOT_RECT                  left=0x00D5, top=0x0161, right=0x01AA, bottom=0x0176, target=0x1EF3, cursor=0x08
1EF2  13                                     INPUTLOOPEND                  
1EF3  0A                                     VIDEOFLAG5_ON                 
1EF4  09 28 24                               VIDEOREF                      ref=0x2428 (INTRO[40]=?)
1EF7  0A                                     VIDEOFLAG5_ON                 
1EF8  09 A3 50                               VIDEOREF                      ref=0x50A3 (GAMWAV[163]=?)
1EFB  04                                     PALFADEOUT                    
1EFC  2A                                     ENDSCRIPT                     
1EFD  0A                                     VIDEOFLAG5_ON                 
1EFE  09 28 24                               VIDEOREF                      ref=0x2428 (INTRO[40]=?)
1F01  15 12 19                               JMP                           target=0x1912
1F04  0A                                     VIDEOFLAG5_ON                 
1F05  09 22 24                               VIDEOREF                      ref=0x2422 (INTRO[34]=?)
1F08  0A                                     VIDEOFLAG5_ON                 
1F09  09 26 24                               VIDEOREF                      ref=0x2426 (INTRO[38]=?)
1F0C  0A                                     VIDEOFLAG5_ON                 
1F0D  09 23 24                               VIDEOREF                      ref=0x2423 (INTRO[35]=?)
1F10  0A                                     VIDEOFLAG5_ON                 
1F11  09 29 24                               VIDEOREF                      ref=0x2429 (INTRO[41]=?)
1F14  0B                                     INPUTLOOPSTART                
1F15  3B 01 B2 00 36 01 C1 00 4D 01 A4 1F 08 HOTSPOT_SAVE_SLOT             slot=0x01, left=0x00B2, top=0x0136, right=0x00C1, bottom=0x014D, target=0x1FA4, cursor=0x08
1F22  3B 02 C5 00 36 01 DE 00 4D 01 AA 1F 08 HOTSPOT_SAVE_SLOT             slot=0x02, left=0x00C5, top=0x0136, right=0x00DE, bottom=0x014D, target=0x1FAA, cursor=0x08
1F2F  3B 03 E4 00 36 01 FE 00 4D 01 B0 1F 08 HOTSPOT_SAVE_SLOT             slot=0x03, left=0x00E4, top=0x0136, right=0x00FE, bottom=0x014D, target=0x1FB0, cursor=0x08
1F3C  3B 04 04 01 36 01 1F 01 4D 01 B6 1F 08 HOTSPOT_SAVE_SLOT             slot=0x04, left=0x0104, top=0x0136, right=0x011F, bottom=0x014D, target=0x1FB6, cursor=0x08
1F49  3B 05 24 01 36 01 3E 01 4D 01 BC 1F 08 HOTSPOT_SAVE_SLOT             slot=0x05, left=0x0124, top=0x0136, right=0x013E, bottom=0x014D, target=0x1FBC, cursor=0x08
1F56  3B 06 41 01 36 01 5A 01 4D 01 C2 1F 08 HOTSPOT_SAVE_SLOT             slot=0x06, left=0x0141, top=0x0136, right=0x015A, bottom=0x014D, target=0x1FC2, cursor=0x08
1F63  3B 07 5E 01 36 01 77 01 4D 01 C8 1F 08 HOTSPOT_SAVE_SLOT             slot=0x07, left=0x015E, top=0x0136, right=0x0177, bottom=0x014D, target=0x1FC8, cursor=0x08
1F70  3B 08 7C 01 36 01 96 01 4D 01 CE 1F 08 HOTSPOT_SAVE_SLOT             slot=0x08, left=0x017C, top=0x0136, right=0x0196, bottom=0x014D, target=0x1FCE, cursor=0x08
1F7D  3B 09 99 01 36 01 B3 01 4D 01 D4 1F 08 HOTSPOT_SAVE_SLOT             slot=0x09, left=0x0199, top=0x0136, right=0x01B3, bottom=0x014D, target=0x1FD4, cursor=0x08
1F8A  3B 00 B5 01 36 01 D2 01 4D 01 DA 1F 08 HOTSPOT_SAVE_SLOT             slot=0x00, left=0x01B5, top=0x0136, right=0x01D2, bottom=0x014D, target=0x1FDA, cursor=0x08
1F97  0D D5 00 61 01 AA 01 76 01 F1 18 08    HOTSPOT_RECT                  left=0x00D5, top=0x0161, right=0x01AA, bottom=0x0176, target=0x18F1, cursor=0x08
1FA3  13                                     INPUTLOOPEND                  
1FA4  96 19 B1                               LOADSTRING                    dst=v[0x019], values=[1]
1FA7  15 E0 1F                               JMP                           target=0x1FE0
1FAA  96 19 B2                               LOADSTRING                    dst=v[0x019], values=[2]
1FAD  15 E0 1F                               JMP                           target=0x1FE0
1FB0  96 19 B3                               LOADSTRING                    dst=v[0x019], values=[3]
1FB3  15 E0 1F                               JMP                           target=0x1FE0
1FB6  96 19 B4                               LOADSTRING                    dst=v[0x019], values=[4]
1FB9  15 E0 1F                               JMP                           target=0x1FE0
1FBC  96 19 B5                               LOADSTRING                    dst=v[0x019], values=[5]
1FBF  15 E0 1F                               JMP                           target=0x1FE0
1FC2  96 19 B6                               LOADSTRING                    dst=v[0x019], values=[6]
1FC5  15 E0 1F                               JMP                           target=0x1FE0
1FC8  96 19 B7                               LOADSTRING                    dst=v[0x019], values=[7]
1FCB  15 E0 1F                               JMP                           target=0x1FE0
1FCE  96 19 B8                               LOADSTRING                    dst=v[0x019], values=[8]
1FD1  15 E0 1F                               JMP                           target=0x1FE0
1FD4  96 19 B9                               LOADSTRING                    dst=v[0x019], values=[9]
1FD7  15 E0 1F                               JMP                           target=0x1FE0
1FDA  96 19 B0                               LOADSTRING                    dst=v[0x019], values=[0]
1FDD  15 E0 1F                               JMP                           target=0x1FE0
1FE0  0A                                     VIDEOFLAG5_ON                 
1FE1  09 2A 24                               VIDEOREF                      ref=0x242A (INTRO[42]=?)
1FE4  0A                                     VIDEOFLAG5_ON                 
1FE5  09 2B 24                               VIDEOREF                      ref=0x242B (INTRO[43]=?)
1FE8  96 00 24 24 24 24 24 24 24 24 24 24 24 24 24 24 A4 LOADSTRING                    dst=v[0x000], values=[244, 244, 244, 244, 244, 244, 244, 244, 244, 244, 244, 244, 244, 244, 244]
1FF9  96 17 E1                               LOADSTRING                    dst=v[0x017], values=[49]
1FFC  3A 23 61 23 62 23 63 23 64 23 65 23 66 23 67 23 68 23 69 23 6A 23 6B 23 6C 23 6D 23 EE PRINTSTRING                   values=[v[0x000], v[0x001], v[0x002], v[0x003], v[0x004], v[0x005], v[0x006], v[0x007], v[0x008], v[0x009], v[0x00A], v[0x00B], v[0x00C], v[0x00D]]
2019  0B                                     INPUTLOOPSTART                
201A  0C 61 F2 21                            KEYACTION                     key=0x61, target=0x21F2
201E  0C 62 F8 21                            KEYACTION                     key=0x62, target=0x21F8
2022  0C 63 FE 21                            KEYACTION                     key=0x63, target=0x21FE
2026  0C 64 04 22                            KEYACTION                     key=0x64, target=0x2204
202A  0C 65 0A 22                            KEYACTION                     key=0x65, target=0x220A
202E  0C 66 10 22                            KEYACTION                     key=0x66, target=0x2210
2032  0C 67 16 22                            KEYACTION                     key=0x67, target=0x2216
2036  0C 68 1C 22                            KEYACTION                     key=0x68, target=0x221C
203A  0C 69 22 22                            KEYACTION                     key=0x69, target=0x2222
203E  0C 6A 28 22                            KEYACTION                     key=0x6A, target=0x2228
2042  0C 6B 2E 22                            KEYACTION                     key=0x6B, target=0x222E
2046  0C 6C 34 22                            KEYACTION                     key=0x6C, target=0x2234
204A  0C 6D 3A 22                            KEYACTION                     key=0x6D, target=0x223A
204E  0C 6E 40 22                            KEYACTION                     key=0x6E, target=0x2240
2052  0C 6F 46 22                            KEYACTION                     key=0x6F, target=0x2246
2056  0C 70 4C 22                            KEYACTION                     key=0x70, target=0x224C
205A  0C 71 52 22                            KEYACTION                     key=0x71, target=0x2252
205E  0C 72 58 22                            KEYACTION                     key=0x72, target=0x2258
2062  0C 73 5E 22                            KEYACTION                     key=0x73, target=0x225E
2066  0C 74 64 22                            KEYACTION                     key=0x74, target=0x2264
206A  0C 75 6A 22                            KEYACTION                     key=0x75, target=0x226A
206E  0C 76 70 22                            KEYACTION                     key=0x76, target=0x2270
2072  0C 77 76 22                            KEYACTION                     key=0x77, target=0x2276
2076  0C 78 7C 22                            KEYACTION                     key=0x78, target=0x227C
207A  0C 79 82 22                            KEYACTION                     key=0x79, target=0x2282
207E  0C 7A 88 22                            KEYACTION                     key=0x7A, target=0x2288
2082  0C 20 EC 21                            KEYACTION                     key=0x20, target=0x21EC
2086  0D 7C 00 F1 00 98 00 04 01 F2 21 08    HOTSPOT_RECT                  left=0x007C, top=0x00F1, right=0x0098, bottom=0x0104, target=0x21F2, cursor=0x08
2092  0D 9F 00 F1 00 B9 00 04 01 F8 21 08    HOTSPOT_RECT                  left=0x009F, top=0x00F1, right=0x00B9, bottom=0x0104, target=0x21F8, cursor=0x08
209E  0D BD 00 F2 00 D4 00 04 01 FE 21 08    HOTSPOT_RECT                  left=0x00BD, top=0x00F2, right=0x00D4, bottom=0x0104, target=0x21FE, cursor=0x08
20AA  0D DA 00 F1 00 F5 00 04 01 04 22 08    HOTSPOT_RECT                  left=0x00DA, top=0x00F1, right=0x00F5, bottom=0x0104, target=0x2204, cursor=0x08
20B6  0D FA 00 F1 00 12 01 04 01 0A 22 08    HOTSPOT_RECT                  left=0x00FA, top=0x00F1, right=0x0112, bottom=0x0104, target=0x220A, cursor=0x08
20C2  0D 16 01 F1 00 2C 01 04 01 10 22 08    HOTSPOT_RECT                  left=0x0116, top=0x00F1, right=0x012C, bottom=0x0104, target=0x2210, cursor=0x08
20CE  0D 30 01 F1 00 4A 01 04 01 16 22 08    HOTSPOT_RECT                  left=0x0130, top=0x00F1, right=0x014A, bottom=0x0104, target=0x2216, cursor=0x08
20DA  0D 50 01 F1 00 6B 01 04 01 1C 22 08    HOTSPOT_RECT                  left=0x0150, top=0x00F1, right=0x016B, bottom=0x0104, target=0x221C, cursor=0x08
20E6  0D 6E 01 F1 00 7F 01 04 01 22 22 08    HOTSPOT_RECT                  left=0x016E, top=0x00F1, right=0x017F, bottom=0x0104, target=0x2222, cursor=0x08
20F2  0D 81 01 F1 00 95 01 04 01 28 22 08    HOTSPOT_RECT                  left=0x0181, top=0x00F1, right=0x0195, bottom=0x0104, target=0x2228, cursor=0x08
20FE  0D 9A 01 F1 00 B7 01 04 01 2E 22 08    HOTSPOT_RECT                  left=0x019A, top=0x00F1, right=0x01B7, bottom=0x0104, target=0x222E, cursor=0x08
210A  0D BD 01 F1 00 D5 01 04 01 34 22 08    HOTSPOT_RECT                  left=0x01BD, top=0x00F1, right=0x01D5, bottom=0x0104, target=0x2234, cursor=0x08
2116  0D D8 01 F1 00 05 02 04 01 3A 22 08    HOTSPOT_RECT                  left=0x01D8, top=0x00F1, right=0x0205, bottom=0x0104, target=0x223A, cursor=0x08
2122  0D 65 00 11 01 85 00 25 01 40 22 08    HOTSPOT_RECT                  left=0x0065, top=0x0111, right=0x0085, bottom=0x0125, target=0x2240, cursor=0x08
212E  0D 88 00 11 01 A4 00 25 01 46 22 08    HOTSPOT_RECT                  left=0x0088, top=0x0111, right=0x00A4, bottom=0x0125, target=0x2246, cursor=0x08
213A  0D A7 00 11 01 C2 00 25 01 4C 22 08    HOTSPOT_RECT                  left=0x00A7, top=0x0111, right=0x00C2, bottom=0x0125, target=0x224C, cursor=0x08
2146  0D C5 00 11 01 E1 00 25 01 52 22 08    HOTSPOT_RECT                  left=0x00C5, top=0x0111, right=0x00E1, bottom=0x0125, target=0x2252, cursor=0x08
2152  0D E6 00 11 01 05 01 25 01 58 22 08    HOTSPOT_RECT                  left=0x00E6, top=0x0111, right=0x0105, bottom=0x0125, target=0x2258, cursor=0x08
215E  0D 0B 01 11 01 24 01 25 01 5E 22 08    HOTSPOT_RECT                  left=0x010B, top=0x0111, right=0x0124, bottom=0x0125, target=0x225E, cursor=0x08
216A  0D 29 01 11 01 46 01 25 01 64 22 08    HOTSPOT_RECT                  left=0x0129, top=0x0111, right=0x0146, bottom=0x0125, target=0x2264, cursor=0x08
2176  0D 49 01 11 01 66 01 25 01 6A 22 08    HOTSPOT_RECT                  left=0x0149, top=0x0111, right=0x0166, bottom=0x0125, target=0x226A, cursor=0x08
2182  0D 6A 01 11 01 88 01 25 01 70 22 08    HOTSPOT_RECT                  left=0x016A, top=0x0111, right=0x0188, bottom=0x0125, target=0x2270, cursor=0x08
218E  0D 8D 01 11 01 B3 01 25 01 76 22 08    HOTSPOT_RECT                  left=0x018D, top=0x0111, right=0x01B3, bottom=0x0125, target=0x2276, cursor=0x08
219A  0D BA 01 11 01 D8 01 25 01 7C 22 08    HOTSPOT_RECT                  left=0x01BA, top=0x0111, right=0x01D8, bottom=0x0125, target=0x227C, cursor=0x08
21A6  0D DC 01 11 01 FB 01 25 01 82 22 08    HOTSPOT_RECT                  left=0x01DC, top=0x0111, right=0x01FB, bottom=0x0125, target=0x2282, cursor=0x08
21B2  0D FE 01 11 01 1F 02 25 01 88 22 08    HOTSPOT_RECT                  left=0x01FE, top=0x0111, right=0x021F, bottom=0x0125, target=0x2288, cursor=0x08
21BE  0D D5 00 61 01 AA 01 76 01 F1 18 08    HOTSPOT_RECT                  left=0x00D5, top=0x0161, right=0x01AA, bottom=0x0176, target=0x18F1, cursor=0x08
21CA  0D E6 00 B7 00 9E 01 CF 00 9C 22 08    HOTSPOT_RECT                  left=0x00E6, top=0x00B7, right=0x019E, bottom=0x00CF, target=0x229C, cursor=0x08
21D6  0C 0D 9C 22                            KEYACTION                     key=0x0D, target=0x229C
21DA  0C 08 DF 21                            KEYACTION                     key=0x08, target=0x21DF
21DE  13                                     INPUTLOOPEND                  
21DF  A3 17 E1 E6 21                         STRCMP_EQ_JMP                 start=v[0x017], values=[49], target=0x21E6
21E4  A0 17                                  DEC                           var=v[0x017]
21E6  B3 17 A4                               LOADSTRING_INDIRECT           dst=v[0x017], values=[244]
21E9  15 FC 1F                               JMP                           target=0x1FFC
21EC  96 18 AE                               LOADSTRING                    dst=v[0x018], values=[254]
21EF  15 8E 22                               JMP                           target=0x228E
21F2  96 18 E1                               LOADSTRING                    dst=v[0x018], values=[49]
21F5  15 8E 22                               JMP                           target=0x228E
21F8  96 18 E2                               LOADSTRING                    dst=v[0x018], values=[50]
21FB  15 8E 22                               JMP                           target=0x228E
21FE  96 18 E3                               LOADSTRING                    dst=v[0x018], values=[51]
2201  15 8E 22                               JMP                           target=0x228E
2204  96 18 E4                               LOADSTRING                    dst=v[0x018], values=[52]
2207  15 8E 22                               JMP                           target=0x228E
220A  96 18 E5                               LOADSTRING                    dst=v[0x018], values=[53]
220D  15 8E 22                               JMP                           target=0x228E
2210  96 18 E6                               LOADSTRING                    dst=v[0x018], values=[54]
2213  15 8E 22                               JMP                           target=0x228E
2216  96 18 E7                               LOADSTRING                    dst=v[0x018], values=[55]
2219  15 8E 22                               JMP                           target=0x228E
221C  96 18 E8                               LOADSTRING                    dst=v[0x018], values=[56]
221F  15 8E 22                               JMP                           target=0x228E
2222  96 18 E9                               LOADSTRING                    dst=v[0x018], values=[57]
2225  15 8E 22                               JMP                           target=0x228E
2228  96 18 EA                               LOADSTRING                    dst=v[0x018], values=[58]
222B  15 8E 22                               JMP                           target=0x228E
222E  96 18 EB                               LOADSTRING                    dst=v[0x018], values=[59]
2231  15 8E 22                               JMP                           target=0x228E
2234  96 18 EC                               LOADSTRING                    dst=v[0x018], values=[60]
2237  15 8E 22                               JMP                           target=0x228E
223A  96 18 ED                               LOADSTRING                    dst=v[0x018], values=[61]
223D  15 8E 22                               JMP                           target=0x228E
2240  96 18 EE                               LOADSTRING                    dst=v[0x018], values=[62]
2243  15 8E 22                               JMP                           target=0x228E
2246  96 18 EF                               LOADSTRING                    dst=v[0x018], values=[63]
2249  15 8E 22                               JMP                           target=0x228E
224C  96 18 F0                               LOADSTRING                    dst=v[0x018], values=[64]
224F  15 8E 22                               JMP                           target=0x228E
2252  96 18 F1                               LOADSTRING                    dst=v[0x018], values=[65]
2255  15 8E 22                               JMP                           target=0x228E
2258  96 18 F2                               LOADSTRING                    dst=v[0x018], values=[66]
225B  15 8E 22                               JMP                           target=0x228E
225E  96 18 F3                               LOADSTRING                    dst=v[0x018], values=[67]
2261  15 8E 22                               JMP                           target=0x228E
2264  96 18 F4                               LOADSTRING                    dst=v[0x018], values=[68]
2267  15 8E 22                               JMP                           target=0x228E
226A  96 18 F5                               LOADSTRING                    dst=v[0x018], values=[69]
226D  15 8E 22                               JMP                           target=0x228E
2270  96 18 F6                               LOADSTRING                    dst=v[0x018], values=[70]
2273  15 8E 22                               JMP                           target=0x228E
2276  96 18 F7                               LOADSTRING                    dst=v[0x018], values=[71]
2279  15 8E 22                               JMP                           target=0x228E
227C  96 18 F8                               LOADSTRING                    dst=v[0x018], values=[72]
227F  15 8E 22                               JMP                           target=0x228E
2282  96 18 F9                               LOADSTRING                    dst=v[0x018], values=[73]
2285  15 8E 22                               JMP                           target=0x228E
2288  96 18 FA                               LOADSTRING                    dst=v[0x018], values=[74]
228B  15 8E 22                               JMP                           target=0x228E
228E  B3 17 23 F9                            LOADSTRING_INDIRECT           dst=v[0x017], values=[v[0x018]]
2292  9F 17                                  INC                           var=v[0x017]
2294  A3 17 EE 9C 22                         STRCMP_EQ_JMP                 start=v[0x017], values=[62], target=0x229C
2299  15 FC 1F                               JMP                           target=0x1FFC
229C  2F 19 00                               SAVEGAME                      var=v[0x019]
229F  96 00 24 A4                            LOADSTRING                    dst=v[0x000], values=[244, 244]
22A3  3A 23 E1                               PRINTSTRING                   values=[v[0x000]]
22A6  0A                                     VIDEOFLAG5_ON                 
22A7  07                                     VIDEOFLAG7_ON                 
22A8  09 17 24                               VIDEOREF                      ref=0x2417 (INTRO[23]=?)
22AB  0A                                     VIDEOFLAG5_ON                 
22AC  09 2C 24                               VIDEOREF                      ref=0x242C (INTRO[44]=?)
22AF  0A                                     VIDEOFLAG5_ON                 
22B0  09 24 24                               VIDEOREF                      ref=0x2424 (INTRO[36]=?)
22B3  15 12 19                               JMP                           target=0x1912
22B6  1A 00 01 B0 C2 22                      STRCMP_NE_JMP                 start=v[0x100], values=[0], target=0x22C2
22BC  08 0C 4C                               SETBACKGROUNDSONG             ref=0x4C0C (XMI[12]=?)
22BF  15 C5 22                               JMP                           target=0x22C5
22C2  08 00 4C                               SETBACKGROUNDSONG             ref=0x4C00 (XMI[0]=?)
22C5  96 8C 30 B7                            LOADSTRING                    dst=v[0x08C], values=[0, 7]
22C9  03                                     FADEIN_NEXT_VIDEO             
22CA  05                                     FIRSTFRAME_NEXT_VIDEO         
22CB  09 00 34                               VIDEOREF                      ref=0x3400 (LI[0]=?)
22CE  9A F5 E1 F4 22                         STRCMP_NE_JMP                 start=v[0x0F5], values=[49], target=0x22F4
22D3  9A F8 E1 F4 22                         STRCMP_NE_JMP                 start=v[0x0F8], values=[49], target=0x22F4
22D8  9A EF E1 F4 22                         STRCMP_NE_JMP                 start=v[0x0EF], values=[49], target=0x22F4
22DD  9A F0 E1 F4 22                         STRCMP_NE_JMP                 start=v[0x0F0], values=[49], target=0x22F4
22E2  9A C3 B0 F4 22                         STRCMP_NE_JMP                 start=v[0x0C3], values=[0], target=0x22F4
22E7  18 B2 3A                               CALL                          target=0x3AB2
22EA  96 C3 B1                               LOADSTRING                    dst=v[0x0C3], values=[1]
22ED  96 8E 33 B6                            LOADSTRING                    dst=v[0x08E], values=[3, 6]
22F1  96 99 B1                               LOADSTRING                    dst=v[0x099], values=[1]
22F4  0B                                     INPUTLOOPSTART                
22F5  9A 8E 33 B6 FE 22                      STRCMP_NE_JMP                 start=v[0x08E], values=[3, 6], target=0x22FE
22FB  30 03 3B                               HOTSPOT_BOTTOM_4              target=0x3B03
22FE  A3 92 30 B0 10 23                      STRCMP_EQ_JMP                 start=v[0x092], values=[0, 0], target=0x2310
2304  0D 74 00 11 01 13 01 7A 01 49 23 06    HOTSPOT_RECT                  left=0x0074, top=0x0111, right=0x0113, bottom=0x017A, target=0x2349, cursor=0x06
2310  0D DC 00 8C 00 18 01 DC 00 2F 23 00    HOTSPOT_RECT                  left=0x00DC, top=0x008C, right=0x0118, bottom=0x00DC, target=0x232F, cursor=0x00
231C  0D 5E 01 50 00 F4 01 8F 01 AB 2B 00    HOTSPOT_RECT                  left=0x015E, top=0x0050, right=0x01F4, bottom=0x018F, target=0x2BAB, cursor=0x00
2328  0E B1 2B                               HOTSPOT_LEFT                  target=0x2BB1
232B  0F B7 2B                               HOTSPOT_RIGHT                 target=0x2BB7
232E  13                                     INPUTLOOPEND                  
232F  09 01 34                               VIDEOREF                      ref=0x3401 (LI[1]=?)
2332  0B                                     INPUTLOOPSTART                
2333  10 3A 23                               HOTSPOT_CENTER                target=0x233A
2336  0F 43 23                               HOTSPOT_RIGHT                 target=0x2343
2339  13                                     INPUTLOOPEND                  
233A  09 0B 34                               VIDEOREF                      ref=0x340B (LI[11]=?)
233D  09 0A 34                               VIDEOREF                      ref=0x340A (LI[10]=?)
2340  15 32 23                               JMP                           target=0x2332
2343  09 09 34                               VIDEOREF                      ref=0x3409 (LI[9]=?)
2346  15 D4 2B                               JMP                           target=0x2BD4
2349  9A 92 30 B0 52 23                      STRCMP_NE_JMP                 start=v[0x092], values=[0, 0], target=0x2352
234F  15 CE 22                               JMP                           target=0x22CE
2352  02 35 4C                               PLAYSONG                      ref=0x4C35 (XMI[53]=?)
2355  09 03 34                               VIDEOREF                      ref=0x3403 (LI[3]=?)
2358  28 00 00                               RESERVED_28                   value=0x0000
235B  96 00 31 30 B0                         LOADSTRING                    dst=v[0x000], values=[1, 0, 0]
2360  16 0A 01 B0                            LOADSTRING                    dst=v[0x10A], values=[0]
2364  16 0B 01 B0                            LOADSTRING                    dst=v[0x10B], values=[0]
2368  9A 92 32 B2 BE 23                      STRCMP_NE_JMP                 start=v[0x092], values=[2, 2], target=0x23BE
236E  96 01 EA                               LOADSTRING                    dst=v[0x001], values=[58]
2371  96 02 E8                               LOADSTRING                    dst=v[0x002], values=[56]
2374  9A E8 E1 7C 23                         STRCMP_NE_JMP                 start=v[0x0E8], values=[49], target=0x237C
2379  15 60 2A                               JMP                           target=0x2A60
237C  9A E8 B5 87 23                         STRCMP_NE_JMP                 start=v[0x0E8], values=[5], target=0x2387
2381  96 E8 E1                               LOADSTRING                    dst=v[0x0E8], values=[49]
2384  15 60 2A                               JMP                           target=0x2A60
2387  9A E8 B4 8F 23                         STRCMP_NE_JMP                 start=v[0x0E8], values=[4], target=0x238F
238C  96 00 B2                               LOADSTRING                    dst=v[0x000], values=[2]
238F  9A E8 B3 9A 23                         STRCMP_NE_JMP                 start=v[0x0E8], values=[3], target=0x239A
2394  96 00 B2                               LOADSTRING                    dst=v[0x000], values=[2]
2397  96 E8 B4                               LOADSTRING                    dst=v[0x0E8], values=[4]
239A  9A E8 B2 A2 23                         STRCMP_NE_JMP                 start=v[0x0E8], values=[2], target=0x23A2
239F  96 00 B1                               LOADSTRING                    dst=v[0x000], values=[1]
23A2  9A E8 B1 AD 23                         STRCMP_NE_JMP                 start=v[0x0E8], values=[1], target=0x23AD
23A7  96 00 B1                               LOADSTRING                    dst=v[0x000], values=[1]
23AA  96 E8 B2                               LOADSTRING                    dst=v[0x0E8], values=[2]
23AD  05                                     FIRSTFRAME_NEXT_VIDEO         
23AE  26 63 6C 23 62 23 63 23 61 6F 75 74 00 VIDEO_NAME                    name="cl{v001}{v002}{v000}out"
23BB  15 81 2A                               JMP                           target=0x2A81
23BE  9A 92 30 B7 14 24                      STRCMP_NE_JMP                 start=v[0x092], values=[0, 7], target=0x2414
23C4  96 01 ED                               LOADSTRING                    dst=v[0x001], values=[61]
23C7  96 02 F5                               LOADSTRING                    dst=v[0x002], values=[69]
23CA  9A F6 E1 D2 23                         STRCMP_NE_JMP                 start=v[0x0F6], values=[49], target=0x23D2
23CF  15 60 2A                               JMP                           target=0x2A60
23D2  9A F6 B5 DD 23                         STRCMP_NE_JMP                 start=v[0x0F6], values=[5], target=0x23DD
23D7  96 F6 E1                               LOADSTRING                    dst=v[0x0F6], values=[49]
23DA  15 60 2A                               JMP                           target=0x2A60
23DD  9A F6 B4 E5 23                         STRCMP_NE_JMP                 start=v[0x0F6], values=[4], target=0x23E5
23E2  96 00 B2                               LOADSTRING                    dst=v[0x000], values=[2]
23E5  9A F6 B3 F0 23                         STRCMP_NE_JMP                 start=v[0x0F6], values=[3], target=0x23F0
23EA  96 00 B2                               LOADSTRING                    dst=v[0x000], values=[2]
23ED  96 F6 B4                               LOADSTRING                    dst=v[0x0F6], values=[4]
23F0  9A F6 B2 F8 23                         STRCMP_NE_JMP                 start=v[0x0F6], values=[2], target=0x23F8
23F5  96 00 B1                               LOADSTRING                    dst=v[0x000], values=[1]
23F8  9A F6 B1 03 24                         STRCMP_NE_JMP                 start=v[0x0F6], values=[1], target=0x2403
23FD  96 00 B1                               LOADSTRING                    dst=v[0x000], values=[1]
2400  96 F6 B2                               LOADSTRING                    dst=v[0x0F6], values=[2]
2403  05                                     FIRSTFRAME_NEXT_VIDEO         
2404  26 63 6C 23 62 23 63 23 61 6F 75 74 00 VIDEO_NAME                    name="cl{v001}{v002}{v000}out"
2411  15 81 2A                               JMP                           target=0x2A81
2414  9A 92 31 B0 69 24                      STRCMP_NE_JMP                 start=v[0x092], values=[1, 0], target=0x2469
241A  96 01 E3                               LOADSTRING                    dst=v[0x001], values=[51]
241D  96 02 E8                               LOADSTRING                    dst=v[0x002], values=[56]
2420  9A F3 E1 28 24                         STRCMP_NE_JMP                 start=v[0x0F3], values=[49], target=0x2428
2425  15 60 2A                               JMP                           target=0x2A60
2428  9A F3 B5 33 24                         STRCMP_NE_JMP                 start=v[0x0F3], values=[5], target=0x2433
242D  96 F3 E1                               LOADSTRING                    dst=v[0x0F3], values=[49]
2430  15 60 2A                               JMP                           target=0x2A60
2433  9A F3 B4 3B 24                         STRCMP_NE_JMP                 start=v[0x0F3], values=[4], target=0x243B
2438  96 00 B2                               LOADSTRING                    dst=v[0x000], values=[2]
243B  9A F3 B3 46 24                         STRCMP_NE_JMP                 start=v[0x0F3], values=[3], target=0x2446
2440  96 00 B2                               LOADSTRING                    dst=v[0x000], values=[2]
2443  96 F3 B4                               LOADSTRING                    dst=v[0x0F3], values=[4]
2446  9A F3 B2 4E 24                         STRCMP_NE_JMP                 start=v[0x0F3], values=[2], target=0x244E
244B  96 00 B1                               LOADSTRING                    dst=v[0x000], values=[1]
244E  9A F3 B1 59 24                         STRCMP_NE_JMP                 start=v[0x0F3], values=[1], target=0x2459
2453  96 00 B1                               LOADSTRING                    dst=v[0x000], values=[1]
2456  96 F3 B2                               LOADSTRING                    dst=v[0x0F3], values=[2]
2459  26 63 6C 23 62 23 63 23 61 6F 75 74 00 VIDEO_NAME                    name="cl{v001}{v002}{v000}out"
2466  15 81 2A                               JMP                           target=0x2A81
2469  9A 92 32 B0 BF 24                      STRCMP_NE_JMP                 start=v[0x092], values=[2, 0], target=0x24BF
246F  96 01 E8                               LOADSTRING                    dst=v[0x001], values=[56]
2472  96 02 F4                               LOADSTRING                    dst=v[0x002], values=[68]
2475  9A EA E1 7D 24                         STRCMP_NE_JMP                 start=v[0x0EA], values=[49], target=0x247D
247A  15 60 2A                               JMP                           target=0x2A60
247D  9A EA B5 88 24                         STRCMP_NE_JMP                 start=v[0x0EA], values=[5], target=0x2488
2482  96 EA E1                               LOADSTRING                    dst=v[0x0EA], values=[49]
2485  15 60 2A                               JMP                           target=0x2A60
2488  9A EA B4 90 24                         STRCMP_NE_JMP                 start=v[0x0EA], values=[4], target=0x2490
248D  96 00 B2                               LOADSTRING                    dst=v[0x000], values=[2]
2490  9A EA B3 9B 24                         STRCMP_NE_JMP                 start=v[0x0EA], values=[3], target=0x249B
2495  96 EA B4                               LOADSTRING                    dst=v[0x0EA], values=[4]
2498  96 00 B2                               LOADSTRING                    dst=v[0x000], values=[2]
249B  9A EA B2 A3 24                         STRCMP_NE_JMP                 start=v[0x0EA], values=[2], target=0x24A3
24A0  96 00 B1                               LOADSTRING                    dst=v[0x000], values=[1]
24A3  9A EA B1 AE 24                         STRCMP_NE_JMP                 start=v[0x0EA], values=[1], target=0x24AE
24A8  96 00 B1                               LOADSTRING                    dst=v[0x000], values=[1]
24AB  96 EA B2                               LOADSTRING                    dst=v[0x0EA], values=[2]
24AE  05                                     FIRSTFRAME_NEXT_VIDEO         
24AF  26 63 6C 23 62 23 63 23 61 6F 75 74 00 VIDEO_NAME                    name="cl{v001}{v002}{v000}out"
24BC  15 81 2A                               JMP                           target=0x2A81
24BF  9A 92 32 B1 15 25                      STRCMP_NE_JMP                 start=v[0x092], values=[2, 1], target=0x2515
24C5  96 01 E2                               LOADSTRING                    dst=v[0x001], values=[50]
24C8  96 02 E4                               LOADSTRING                    dst=v[0x002], values=[52]
24CB  9A E9 E1 D3 24                         STRCMP_NE_JMP                 start=v[0x0E9], values=[49], target=0x24D3
24D0  15 60 2A                               JMP                           target=0x2A60
24D3  9A E9 B5 DE 24                         STRCMP_NE_JMP                 start=v[0x0E9], values=[5], target=0x24DE
24D8  96 E9 E1                               LOADSTRING                    dst=v[0x0E9], values=[49]
24DB  15 60 2A                               JMP                           target=0x2A60
24DE  9A E9 B4 E6 24                         STRCMP_NE_JMP                 start=v[0x0E9], values=[4], target=0x24E6
24E3  96 00 B2                               LOADSTRING                    dst=v[0x000], values=[2]
24E6  9A E9 B3 F1 24                         STRCMP_NE_JMP                 start=v[0x0E9], values=[3], target=0x24F1
24EB  96 00 B2                               LOADSTRING                    dst=v[0x000], values=[2]
24EE  96 E9 B4                               LOADSTRING                    dst=v[0x0E9], values=[4]
24F1  9A E9 B2 F9 24                         STRCMP_NE_JMP                 start=v[0x0E9], values=[2], target=0x24F9
24F6  96 00 B1                               LOADSTRING                    dst=v[0x000], values=[1]
24F9  9A E9 B1 04 25                         STRCMP_NE_JMP                 start=v[0x0E9], values=[1], target=0x2504
24FE  96 00 B1                               LOADSTRING                    dst=v[0x000], values=[1]
2501  96 E9 B2                               LOADSTRING                    dst=v[0x0E9], values=[2]
2504  05                                     FIRSTFRAME_NEXT_VIDEO         
2505  26 63 6C 23 62 23 63 23 61 6F 75 74 00 VIDEO_NAME                    name="cl{v001}{v002}{v000}out"
2512  15 81 2A                               JMP                           target=0x2A81
2515  9A 92 31 B9 6A 25                      STRCMP_NE_JMP                 start=v[0x092], values=[1, 9], target=0x256A
251B  96 01 EC                               LOADSTRING                    dst=v[0x001], values=[60]
251E  96 02 E1                               LOADSTRING                    dst=v[0x002], values=[49]
2521  9A EB E1 29 25                         STRCMP_NE_JMP                 start=v[0x0EB], values=[49], target=0x2529
2526  15 60 2A                               JMP                           target=0x2A60
2529  9A EB B5 34 25                         STRCMP_NE_JMP                 start=v[0x0EB], values=[5], target=0x2534
252E  96 EB E1                               LOADSTRING                    dst=v[0x0EB], values=[49]
2531  15 60 2A                               JMP                           target=0x2A60
2534  9A EB B4 3C 25                         STRCMP_NE_JMP                 start=v[0x0EB], values=[4], target=0x253C
2539  96 00 B2                               LOADSTRING                    dst=v[0x000], values=[2]
253C  9A EB B3 47 25                         STRCMP_NE_JMP                 start=v[0x0EB], values=[3], target=0x2547
2541  96 00 B2                               LOADSTRING                    dst=v[0x000], values=[2]
2544  96 EB B4                               LOADSTRING                    dst=v[0x0EB], values=[4]
2547  9A EB B2 4F 25                         STRCMP_NE_JMP                 start=v[0x0EB], values=[2], target=0x254F
254C  96 00 B1                               LOADSTRING                    dst=v[0x000], values=[1]
254F  9A EB B1 5A 25                         STRCMP_NE_JMP                 start=v[0x0EB], values=[1], target=0x255A
2554  96 00 B1                               LOADSTRING                    dst=v[0x000], values=[1]
2557  96 EB B2                               LOADSTRING                    dst=v[0x0EB], values=[2]
255A  26 63 6C 23 62 23 63 23 61 6F 75 74 00 VIDEO_NAME                    name="cl{v001}{v002}{v000}out"
2567  15 81 2A                               JMP                           target=0x2A81
256A  9A 92 31 B1 BF 25                      STRCMP_NE_JMP                 start=v[0x092], values=[1, 1], target=0x25BF
2570  96 01 E8                               LOADSTRING                    dst=v[0x001], values=[56]
2573  16 0B 01 B1                            LOADSTRING                    dst=v[0x10B], values=[1]
2577  9A F2 E1 7F 25                         STRCMP_NE_JMP                 start=v[0x0F2], values=[49], target=0x257F
257C  15 60 2A                               JMP                           target=0x2A60
257F  9A F2 B5 8A 25                         STRCMP_NE_JMP                 start=v[0x0F2], values=[5], target=0x258A
2584  96 F2 E1                               LOADSTRING                    dst=v[0x0F2], values=[49]
2587  15 60 2A                               JMP                           target=0x2A60
258A  9A F2 B4 92 25                         STRCMP_NE_JMP                 start=v[0x0F2], values=[4], target=0x2592
258F  96 00 B2                               LOADSTRING                    dst=v[0x000], values=[2]
2592  9A F2 B3 9D 25                         STRCMP_NE_JMP                 start=v[0x0F2], values=[3], target=0x259D
2597  96 00 B2                               LOADSTRING                    dst=v[0x000], values=[2]
259A  96 F2 B4                               LOADSTRING                    dst=v[0x0F2], values=[4]
259D  9A F2 B2 A5 25                         STRCMP_NE_JMP                 start=v[0x0F2], values=[2], target=0x25A5
25A2  96 00 B1                               LOADSTRING                    dst=v[0x000], values=[1]
25A5  9A F2 B1 B0 25                         STRCMP_NE_JMP                 start=v[0x0F2], values=[1], target=0x25B0
25AA  96 00 B1                               LOADSTRING                    dst=v[0x000], values=[1]
25AD  96 F2 B2                               LOADSTRING                    dst=v[0x0F2], values=[2]
25B0  05                                     FIRSTFRAME_NEXT_VIDEO         
25B1  26 63 6C 23 62 23 61 6F 75 74 00       VIDEO_NAME                    name="cl{v001}{v000}out"
25BC  15 81 2A                               JMP                           target=0x2A81
25BF  9A 92 30 B4 14 26                      STRCMP_NE_JMP                 start=v[0x092], values=[0, 4], target=0x2614
25C5  96 01 EB                               LOADSTRING                    dst=v[0x001], values=[59]
25C8  16 0B 01 B1                            LOADSTRING                    dst=v[0x10B], values=[1]
25CC  9A F9 E1 D4 25                         STRCMP_NE_JMP                 start=v[0x0F9], values=[49], target=0x25D4
25D1  15 60 2A                               JMP                           target=0x2A60
25D4  9A F9 B5 DF 25                         STRCMP_NE_JMP                 start=v[0x0F9], values=[5], target=0x25DF
25D9  96 F9 E1                               LOADSTRING                    dst=v[0x0F9], values=[49]
25DC  15 60 2A                               JMP                           target=0x2A60
25DF  9A F9 B4 E7 25                         STRCMP_NE_JMP                 start=v[0x0F9], values=[4], target=0x25E7
25E4  96 00 B2                               LOADSTRING                    dst=v[0x000], values=[2]
25E7  9A F9 B3 F2 25                         STRCMP_NE_JMP                 start=v[0x0F9], values=[3], target=0x25F2
25EC  96 00 B2                               LOADSTRING                    dst=v[0x000], values=[2]
25EF  96 F9 B4                               LOADSTRING                    dst=v[0x0F9], values=[4]
25F2  9A F9 B2 FA 25                         STRCMP_NE_JMP                 start=v[0x0F9], values=[2], target=0x25FA
25F7  96 00 B1                               LOADSTRING                    dst=v[0x000], values=[1]
25FA  9A F9 B1 05 26                         STRCMP_NE_JMP                 start=v[0x0F9], values=[1], target=0x2605
25FF  96 00 B1                               LOADSTRING                    dst=v[0x000], values=[1]
2602  96 F9 B2                               LOADSTRING                    dst=v[0x0F9], values=[2]
2605  05                                     FIRSTFRAME_NEXT_VIDEO         
2606  26 63 6C 23 62 23 61 6F 75 74 00       VIDEO_NAME                    name="cl{v001}{v000}out"
2611  15 81 2A                               JMP                           target=0x2A81
2614  9A 92 31 B2 6A 26                      STRCMP_NE_JMP                 start=v[0x092], values=[1, 2], target=0x266A
261A  96 01 E5                               LOADSTRING                    dst=v[0x001], values=[53]
261D  96 02 EB                               LOADSTRING                    dst=v[0x002], values=[59]
2620  9A F1 E1 28 26                         STRCMP_NE_JMP                 start=v[0x0F1], values=[49], target=0x2628
2625  15 60 2A                               JMP                           target=0x2A60
2628  9A F1 B5 33 26                         STRCMP_NE_JMP                 start=v[0x0F1], values=[5], target=0x2633
262D  96 F1 E1                               LOADSTRING                    dst=v[0x0F1], values=[49]
2630  15 60 2A                               JMP                           target=0x2A60
2633  9A F1 B4 3B 26                         STRCMP_NE_JMP                 start=v[0x0F1], values=[4], target=0x263B
2638  96 00 B2                               LOADSTRING                    dst=v[0x000], values=[2]
263B  9A F1 B3 46 26                         STRCMP_NE_JMP                 start=v[0x0F1], values=[3], target=0x2646
2640  96 00 B2                               LOADSTRING                    dst=v[0x000], values=[2]
2643  96 F1 B4                               LOADSTRING                    dst=v[0x0F1], values=[4]
2646  9A F1 B2 4E 26                         STRCMP_NE_JMP                 start=v[0x0F1], values=[2], target=0x264E
264B  96 00 B1                               LOADSTRING                    dst=v[0x000], values=[1]
264E  9A F1 B1 59 26                         STRCMP_NE_JMP                 start=v[0x0F1], values=[1], target=0x2659
2653  96 00 B1                               LOADSTRING                    dst=v[0x000], values=[1]
2656  96 F1 B2                               LOADSTRING                    dst=v[0x0F1], values=[2]
2659  05                                     FIRSTFRAME_NEXT_VIDEO         
265A  26 63 6C 23 62 23 63 23 61 6F 75 74 00 VIDEO_NAME                    name="cl{v001}{v002}{v000}out"
2667  15 81 2A                               JMP                           target=0x2A81
266A  9A 92 30 B8 C0 26                      STRCMP_NE_JMP                 start=v[0x092], values=[0, 8], target=0x26C0
2670  96 01 EC                               LOADSTRING                    dst=v[0x001], values=[60]
2673  96 02 E9                               LOADSTRING                    dst=v[0x002], values=[57]
2676  9A F5 E1 7E 26                         STRCMP_NE_JMP                 start=v[0x0F5], values=[49], target=0x267E
267B  15 60 2A                               JMP                           target=0x2A60
267E  9A F5 B5 89 26                         STRCMP_NE_JMP                 start=v[0x0F5], values=[5], target=0x2689
2683  96 F5 E1                               LOADSTRING                    dst=v[0x0F5], values=[49]
2686  15 60 2A                               JMP                           target=0x2A60
2689  9A F5 B4 91 26                         STRCMP_NE_JMP                 start=v[0x0F5], values=[4], target=0x2691
268E  96 00 B2                               LOADSTRING                    dst=v[0x000], values=[2]
2691  9A F5 B3 9C 26                         STRCMP_NE_JMP                 start=v[0x0F5], values=[3], target=0x269C
2696  96 00 B2                               LOADSTRING                    dst=v[0x000], values=[2]
2699  96 F5 B4                               LOADSTRING                    dst=v[0x0F5], values=[4]
269C  9A F5 B2 A4 26                         STRCMP_NE_JMP                 start=v[0x0F5], values=[2], target=0x26A4
26A1  96 00 B1                               LOADSTRING                    dst=v[0x000], values=[1]
26A4  9A F5 B1 AF 26                         STRCMP_NE_JMP                 start=v[0x0F5], values=[1], target=0x26AF
26A9  96 00 B1                               LOADSTRING                    dst=v[0x000], values=[1]
26AC  96 F5 B2                               LOADSTRING                    dst=v[0x0F5], values=[2]
26AF  05                                     FIRSTFRAME_NEXT_VIDEO         
26B0  26 63 6C 23 62 23 63 23 61 6F 75 74 00 VIDEO_NAME                    name="cl{v001}{v002}{v000}out"
26BD  15 81 2A                               JMP                           target=0x2A81
26C0  9A 92 30 B9 16 27                      STRCMP_NE_JMP                 start=v[0x092], values=[0, 9], target=0x2716
26C6  96 01 E3                               LOADSTRING                    dst=v[0x001], values=[51]
26C9  96 02 F2                               LOADSTRING                    dst=v[0x002], values=[66]
26CC  9A F4 E1 D4 26                         STRCMP_NE_JMP                 start=v[0x0F4], values=[49], target=0x26D4
26D1  15 60 2A                               JMP                           target=0x2A60
26D4  9A F4 B5 DF 26                         STRCMP_NE_JMP                 start=v[0x0F4], values=[5], target=0x26DF
26D9  96 F4 E1                               LOADSTRING                    dst=v[0x0F4], values=[49]
26DC  15 60 2A                               JMP                           target=0x2A60
26DF  9A F4 B4 E7 26                         STRCMP_NE_JMP                 start=v[0x0F4], values=[4], target=0x26E7
26E4  96 00 B2                               LOADSTRING                    dst=v[0x000], values=[2]
26E7  9A F4 B3 F2 26                         STRCMP_NE_JMP                 start=v[0x0F4], values=[3], target=0x26F2
26EC  96 00 B2                               LOADSTRING                    dst=v[0x000], values=[2]
26EF  96 F4 B4                               LOADSTRING                    dst=v[0x0F4], values=[4]
26F2  9A F4 B2 FA 26                         STRCMP_NE_JMP                 start=v[0x0F4], values=[2], target=0x26FA
26F7  96 00 B1                               LOADSTRING                    dst=v[0x000], values=[1]
26FA  9A F4 B1 05 27                         STRCMP_NE_JMP                 start=v[0x0F4], values=[1], target=0x2705
26FF  96 00 B1                               LOADSTRING                    dst=v[0x000], values=[1]
2702  96 F4 B2                               LOADSTRING                    dst=v[0x0F4], values=[2]
2705  05                                     FIRSTFRAME_NEXT_VIDEO         
2706  26 63 6C 23 62 23 63 23 61 6F 75 74 00 VIDEO_NAME                    name="cl{v001}{v002}{v000}out"
2713  15 81 2A                               JMP                           target=0x2A81
2716  9A 92 30 B3 6C 27                      STRCMP_NE_JMP                 start=v[0x092], values=[0, 3], target=0x276C
271C  96 01 E4                               LOADSTRING                    dst=v[0x001], values=[52]
271F  96 02 F2                               LOADSTRING                    dst=v[0x002], values=[66]
2722  9A FA E1 2A 27                         STRCMP_NE_JMP                 start=v[0x0FA], values=[49], target=0x272A
2727  15 60 2A                               JMP                           target=0x2A60
272A  9A FA B5 35 27                         STRCMP_NE_JMP                 start=v[0x0FA], values=[5], target=0x2735
272F  96 FA E1                               LOADSTRING                    dst=v[0x0FA], values=[49]
2732  15 60 2A                               JMP                           target=0x2A60
2735  9A FA B4 3D 27                         STRCMP_NE_JMP                 start=v[0x0FA], values=[4], target=0x273D
273A  96 00 B2                               LOADSTRING                    dst=v[0x000], values=[2]
273D  9A FA B3 48 27                         STRCMP_NE_JMP                 start=v[0x0FA], values=[3], target=0x2748
2742  96 FA B4                               LOADSTRING                    dst=v[0x0FA], values=[4]
2745  96 00 B2                               LOADSTRING                    dst=v[0x000], values=[2]
2748  9A FA B2 50 27                         STRCMP_NE_JMP                 start=v[0x0FA], values=[2], target=0x2750
274D  96 00 B1                               LOADSTRING                    dst=v[0x000], values=[1]
2750  9A FA B1 5B 27                         STRCMP_NE_JMP                 start=v[0x0FA], values=[1], target=0x275B
2755  96 00 B1                               LOADSTRING                    dst=v[0x000], values=[1]
2758  96 FA B2                               LOADSTRING                    dst=v[0x0FA], values=[2]
275B  05                                     FIRSTFRAME_NEXT_VIDEO         
275C  26 63 6C 23 62 23 63 23 61 6F 75 74 00 VIDEO_NAME                    name="cl{v001}{v002}{v000}out"
2769  15 81 2A                               JMP                           target=0x2A81
276C  9A 92 31 B8 C1 27                      STRCMP_NE_JMP                 start=v[0x092], values=[1, 8], target=0x27C1
2772  96 01 E2                               LOADSTRING                    dst=v[0x001], values=[50]
2775  16 0B 01 B1                            LOADSTRING                    dst=v[0x10B], values=[1]
2779  9A EC E1 81 27                         STRCMP_NE_JMP                 start=v[0x0EC], values=[49], target=0x2781
277E  15 60 2A                               JMP                           target=0x2A60
2781  9A EC B5 8C 27                         STRCMP_NE_JMP                 start=v[0x0EC], values=[5], target=0x278C
2786  96 EC E1                               LOADSTRING                    dst=v[0x0EC], values=[49]
2789  15 60 2A                               JMP                           target=0x2A60
278C  9A EC B4 94 27                         STRCMP_NE_JMP                 start=v[0x0EC], values=[4], target=0x2794
2791  96 00 B2                               LOADSTRING                    dst=v[0x000], values=[2]
2794  9A EC B3 9F 27                         STRCMP_NE_JMP                 start=v[0x0EC], values=[3], target=0x279F
2799  96 00 B2                               LOADSTRING                    dst=v[0x000], values=[2]
279C  96 EC B4                               LOADSTRING                    dst=v[0x0EC], values=[4]
279F  9A EC B2 A7 27                         STRCMP_NE_JMP                 start=v[0x0EC], values=[2], target=0x27A7
27A4  96 00 B1                               LOADSTRING                    dst=v[0x000], values=[1]
27A7  9A EC B1 B2 27                         STRCMP_NE_JMP                 start=v[0x0EC], values=[1], target=0x27B2
27AC  96 00 B1                               LOADSTRING                    dst=v[0x000], values=[1]
27AF  96 EC B2                               LOADSTRING                    dst=v[0x0EC], values=[2]
27B2  05                                     FIRSTFRAME_NEXT_VIDEO         
27B3  26 63 6C 23 62 23 61 6F 75 74 00       VIDEO_NAME                    name="cl{v001}{v000}out"
27BE  15 81 2A                               JMP                           target=0x2A81
27C1  9A 92 31 B4 17 28                      STRCMP_NE_JMP                 start=v[0x092], values=[1, 4], target=0x2817
27C7  96 01 E7                               LOADSTRING                    dst=v[0x001], values=[55]
27CA  96 02 E1                               LOADSTRING                    dst=v[0x002], values=[49]
27CD  9A F0 E1 D5 27                         STRCMP_NE_JMP                 start=v[0x0F0], values=[49], target=0x27D5
27D2  15 60 2A                               JMP                           target=0x2A60
27D5  9A F0 B5 E0 27                         STRCMP_NE_JMP                 start=v[0x0F0], values=[5], target=0x27E0
27DA  96 F0 E1                               LOADSTRING                    dst=v[0x0F0], values=[49]
27DD  15 60 2A                               JMP                           target=0x2A60
27E0  9A F0 B4 E8 27                         STRCMP_NE_JMP                 start=v[0x0F0], values=[4], target=0x27E8
27E5  96 00 B2                               LOADSTRING                    dst=v[0x000], values=[2]
27E8  9A F0 B3 F3 27                         STRCMP_NE_JMP                 start=v[0x0F0], values=[3], target=0x27F3
27ED  96 00 B2                               LOADSTRING                    dst=v[0x000], values=[2]
27F0  96 F0 B4                               LOADSTRING                    dst=v[0x0F0], values=[4]
27F3  9A F0 B2 FB 27                         STRCMP_NE_JMP                 start=v[0x0F0], values=[2], target=0x27FB
27F8  96 00 B1                               LOADSTRING                    dst=v[0x000], values=[1]
27FB  9A F0 B1 06 28                         STRCMP_NE_JMP                 start=v[0x0F0], values=[1], target=0x2806
2800  96 00 B1                               LOADSTRING                    dst=v[0x000], values=[1]
2803  96 F0 B2                               LOADSTRING                    dst=v[0x0F0], values=[2]
2806  05                                     FIRSTFRAME_NEXT_VIDEO         
2807  26 63 6C 23 62 23 63 23 61 6F 75 74 00 VIDEO_NAME                    name="cl{v001}{v002}{v000}out"
2814  15 81 2A                               JMP                           target=0x2A81
2817  9A 92 31 B7 6C 28                      STRCMP_NE_JMP                 start=v[0x092], values=[1, 7], target=0x286C
281D  96 01 F0                               LOADSTRING                    dst=v[0x001], values=[64]
2820  16 0B 01 B1                            LOADSTRING                    dst=v[0x10B], values=[1]
2824  9A ED E1 2C 28                         STRCMP_NE_JMP                 start=v[0x0ED], values=[49], target=0x282C
2829  15 60 2A                               JMP                           target=0x2A60
282C  9A ED B5 37 28                         STRCMP_NE_JMP                 start=v[0x0ED], values=[5], target=0x2837
2831  96 ED E1                               LOADSTRING                    dst=v[0x0ED], values=[49]
2834  15 60 2A                               JMP                           target=0x2A60
2837  9A ED B4 3F 28                         STRCMP_NE_JMP                 start=v[0x0ED], values=[4], target=0x283F
283C  96 00 B2                               LOADSTRING                    dst=v[0x000], values=[2]
283F  9A ED B3 4A 28                         STRCMP_NE_JMP                 start=v[0x0ED], values=[3], target=0x284A
2844  96 00 B2                               LOADSTRING                    dst=v[0x000], values=[2]
2847  96 ED B4                               LOADSTRING                    dst=v[0x0ED], values=[4]
284A  9A ED B2 52 28                         STRCMP_NE_JMP                 start=v[0x0ED], values=[2], target=0x2852
284F  96 00 B1                               LOADSTRING                    dst=v[0x000], values=[1]
2852  9A ED B1 5D 28                         STRCMP_NE_JMP                 start=v[0x0ED], values=[1], target=0x285D
2857  96 00 B1                               LOADSTRING                    dst=v[0x000], values=[1]
285A  96 ED B2                               LOADSTRING                    dst=v[0x0ED], values=[2]
285D  05                                     FIRSTFRAME_NEXT_VIDEO         
285E  26 63 6C 23 62 23 61 6F 75 74 00       VIDEO_NAME                    name="cl{v001}{v000}out"
2869  15 81 2A                               JMP                           target=0x2A81
286C  9A 92 30 B6 FE 28                      STRCMP_NE_JMP                 start=v[0x092], values=[0, 6], target=0x28FE
2872  96 01 EE                               LOADSTRING                    dst=v[0x001], values=[62]
2875  9A F7 E1 7D 28                         STRCMP_NE_JMP                 start=v[0x0F7], values=[49], target=0x287D
287A  15 60 2A                               JMP                           target=0x2A60
287D  9A F7 B5 88 28                         STRCMP_NE_JMP                 start=v[0x0F7], values=[5], target=0x2888
2882  96 F7 E1                               LOADSTRING                    dst=v[0x0F7], values=[49]
2885  15 60 2A                               JMP                           target=0x2A60
2888  9A F7 B4 94 28                         STRCMP_NE_JMP                 start=v[0x0F7], values=[4], target=0x2894
288D  96 00 B2                               LOADSTRING                    dst=v[0x000], values=[2]
2890  16 0B 01 B1                            LOADSTRING                    dst=v[0x10B], values=[1]
2894  9A F7 B3 A3 28                         STRCMP_NE_JMP                 start=v[0x0F7], values=[3], target=0x28A3
2899  96 00 B2                               LOADSTRING                    dst=v[0x000], values=[2]
289C  16 0B 01 B1                            LOADSTRING                    dst=v[0x10B], values=[1]
28A0  96 F7 B4                               LOADSTRING                    dst=v[0x0F7], values=[4]
28A3  9A F7 B2 AB 28                         STRCMP_NE_JMP                 start=v[0x0F7], values=[2], target=0x28AB
28A8  96 00 B1                               LOADSTRING                    dst=v[0x000], values=[1]
28AB  9A F7 B1 B6 28                         STRCMP_NE_JMP                 start=v[0x0F7], values=[1], target=0x28B6
28B0  96 F7 B2                               LOADSTRING                    dst=v[0x0F7], values=[2]
28B3  96 00 B1                               LOADSTRING                    dst=v[0x000], values=[1]
28B6  9A 00 B1 EA 28                         STRCMP_NE_JMP                 start=v[0x000], values=[1], target=0x28EA
28BB  05                                     FIRSTFRAME_NEXT_VIDEO         
28BC  26 63 6C 23 62 23 61 61 6F 75 74 00    VIDEO_NAME                    name="cl{v001}{v000}aout"
28C8  19 E8 03                               SLEEP                         ticks=0x03E8
28CB  19 2C 01                               SLEEP                         ticks=0x012C
28CE  26 63 6C 23 62 23 61 61 6F 75 74 00    VIDEO_NAME                    name="cl{v001}{v000}aout"
28DA  19 32 00                               SLEEP                         ticks=0x0032
28DD  05                                     FIRSTFRAME_NEXT_VIDEO         
28DE  26 63 6C 23 62 23 61 62 6F 75 74 00    VIDEO_NAME                    name="cl{v001}{v000}bout"
28EA  A3 00 B1 FB 28                         STRCMP_EQ_JMP                 start=v[0x000], values=[1], target=0x28FB
28EF  05                                     FIRSTFRAME_NEXT_VIDEO         
28F0  26 63 6C 23 62 23 61 6F 75 74 00       VIDEO_NAME                    name="cl{v001}{v000}out"
28FB  15 81 2A                               JMP                           target=0x2A81
28FE  9A 92 31 B6 56 29                      STRCMP_NE_JMP                 start=v[0x092], values=[1, 6], target=0x2956
2904  96 01 E4                               LOADSTRING                    dst=v[0x001], values=[52]
2907  96 00 B2                               LOADSTRING                    dst=v[0x000], values=[2]
290A  16 0B 01 B1                            LOADSTRING                    dst=v[0x10B], values=[1]
290E  9A EE E1 16 29                         STRCMP_NE_JMP                 start=v[0x0EE], values=[49], target=0x2916
2913  15 60 2A                               JMP                           target=0x2A60
2916  9A EE B5 21 29                         STRCMP_NE_JMP                 start=v[0x0EE], values=[5], target=0x2921
291B  96 EE E1                               LOADSTRING                    dst=v[0x0EE], values=[49]
291E  15 60 2A                               JMP                           target=0x2A60
2921  9A EE B4 29 29                         STRCMP_NE_JMP                 start=v[0x0EE], values=[4], target=0x2929
2926  96 00 B2                               LOADSTRING                    dst=v[0x000], values=[2]
2929  9A EE B3 34 29                         STRCMP_NE_JMP                 start=v[0x0EE], values=[3], target=0x2934
292E  96 EE B4                               LOADSTRING                    dst=v[0x0EE], values=[4]
2931  96 00 B2                               LOADSTRING                    dst=v[0x000], values=[2]
2934  9A EE B2 3C 29                         STRCMP_NE_JMP                 start=v[0x0EE], values=[2], target=0x293C
2939  96 00 B1                               LOADSTRING                    dst=v[0x000], values=[1]
293C  9A EE B1 47 29                         STRCMP_NE_JMP                 start=v[0x0EE], values=[1], target=0x2947
2941  96 EE B2                               LOADSTRING                    dst=v[0x0EE], values=[2]
2944  96 00 B1                               LOADSTRING                    dst=v[0x000], values=[1]
2947  05                                     FIRSTFRAME_NEXT_VIDEO         
2948  26 63 6C 23 62 23 61 6F 75 74 00       VIDEO_NAME                    name="cl{v001}{v000}out"
2953  15 81 2A                               JMP                           target=0x2A81
2956  9A 92 31 B5 AC 29                      STRCMP_NE_JMP                 start=v[0x092], values=[1, 5], target=0x29AC
295C  96 01 ED                               LOADSTRING                    dst=v[0x001], values=[61]
295F  96 02 E2                               LOADSTRING                    dst=v[0x002], values=[50]
2962  9A EF E1 6A 29                         STRCMP_NE_JMP                 start=v[0x0EF], values=[49], target=0x296A
2967  15 60 2A                               JMP                           target=0x2A60
296A  9A EF B5 75 29                         STRCMP_NE_JMP                 start=v[0x0EF], values=[5], target=0x2975
296F  96 EF E1                               LOADSTRING                    dst=v[0x0EF], values=[49]
2972  15 60 2A                               JMP                           target=0x2A60
2975  9A EF B4 7D 29                         STRCMP_NE_JMP                 start=v[0x0EF], values=[4], target=0x297D
297A  96 00 B2                               LOADSTRING                    dst=v[0x000], values=[2]
297D  9A EF B3 88 29                         STRCMP_NE_JMP                 start=v[0x0EF], values=[3], target=0x2988
2982  96 EF B4                               LOADSTRING                    dst=v[0x0EF], values=[4]
2985  96 00 B2                               LOADSTRING                    dst=v[0x000], values=[2]
2988  9A EF B2 90 29                         STRCMP_NE_JMP                 start=v[0x0EF], values=[2], target=0x2990
298D  96 00 B1                               LOADSTRING                    dst=v[0x000], values=[1]
2990  9A EF B1 9B 29                         STRCMP_NE_JMP                 start=v[0x0EF], values=[1], target=0x299B
2995  96 EF B2                               LOADSTRING                    dst=v[0x0EF], values=[2]
2998  96 00 B1                               LOADSTRING                    dst=v[0x000], values=[1]
299B  05                                     FIRSTFRAME_NEXT_VIDEO         
299C  26 63 6C 23 62 23 63 23 61 6F 75 74 00 VIDEO_NAME                    name="cl{v001}{v002}{v000}out"
29A9  15 81 2A                               JMP                           target=0x2A81
29AC  9A 92 30 B2 01 2A                      STRCMP_NE_JMP                 start=v[0x092], values=[0, 2], target=0x2A01
29B2  16 0B 01 B1                            LOADSTRING                    dst=v[0x10B], values=[1]
29B6  96 01 E6                               LOADSTRING                    dst=v[0x001], values=[54]
29B9  9A FB E1 C1 29                         STRCMP_NE_JMP                 start=v[0x0FB], values=[49], target=0x29C1
29BE  15 60 2A                               JMP                           target=0x2A60
29C1  9A FB B5 CC 29                         STRCMP_NE_JMP                 start=v[0x0FB], values=[5], target=0x29CC
29C6  96 FB E1                               LOADSTRING                    dst=v[0x0FB], values=[49]
29C9  15 60 2A                               JMP                           target=0x2A60
29CC  9A FB B4 D4 29                         STRCMP_NE_JMP                 start=v[0x0FB], values=[4], target=0x29D4
29D1  96 00 B2                               LOADSTRING                    dst=v[0x000], values=[2]
29D4  9A FB B3 DF 29                         STRCMP_NE_JMP                 start=v[0x0FB], values=[3], target=0x29DF
29D9  96 FB B4                               LOADSTRING                    dst=v[0x0FB], values=[4]
29DC  96 00 B2                               LOADSTRING                    dst=v[0x000], values=[2]
29DF  9A FB B2 E7 29                         STRCMP_NE_JMP                 start=v[0x0FB], values=[2], target=0x29E7
29E4  96 00 B1                               LOADSTRING                    dst=v[0x000], values=[1]
29E7  9A FB B1 F2 29                         STRCMP_NE_JMP                 start=v[0x0FB], values=[1], target=0x29F2
29EC  96 FB B2                               LOADSTRING                    dst=v[0x0FB], values=[2]
29EF  96 00 B1                               LOADSTRING                    dst=v[0x000], values=[1]
29F2  05                                     FIRSTFRAME_NEXT_VIDEO         
29F3  26 63 6C 23 62 23 61 6F 75 74 00       VIDEO_NAME                    name="cl{v001}{v000}out"
29FE  15 81 2A                               JMP                           target=0x2A81
2A01  9A 92 30 B5 55 2A                      STRCMP_NE_JMP                 start=v[0x092], values=[0, 5], target=0x2A55
2A07  96 01 E2                               LOADSTRING                    dst=v[0x001], values=[50]
2A0A  96 02 ED                               LOADSTRING                    dst=v[0x002], values=[61]
2A0D  9A F8 E1 15 2A                         STRCMP_NE_JMP                 start=v[0x0F8], values=[49], target=0x2A15
2A12  96 00 B4                               LOADSTRING                    dst=v[0x000], values=[4]
2A15  9A F8 B5 20 2A                         STRCMP_NE_JMP                 start=v[0x0F8], values=[5], target=0x2A20
2A1A  96 F8 E1                               LOADSTRING                    dst=v[0x0F8], values=[49]
2A1D  96 00 B4                               LOADSTRING                    dst=v[0x000], values=[4]
2A20  9A F8 B4 28 2A                         STRCMP_NE_JMP                 start=v[0x0F8], values=[4], target=0x2A28
2A25  96 00 B4                               LOADSTRING                    dst=v[0x000], values=[4]
2A28  9A F8 B3 33 2A                         STRCMP_NE_JMP                 start=v[0x0F8], values=[3], target=0x2A33
2A2D  96 F8 B4                               LOADSTRING                    dst=v[0x0F8], values=[4]
2A30  96 00 B4                               LOADSTRING                    dst=v[0x000], values=[4]
2A33  9A F8 B2 3B 2A                         STRCMP_NE_JMP                 start=v[0x0F8], values=[2], target=0x2A3B
2A38  96 00 B3                               LOADSTRING                    dst=v[0x000], values=[3]
2A3B  9A F8 B1 46 2A                         STRCMP_NE_JMP                 start=v[0x0F8], values=[1], target=0x2A46
2A40  96 F8 B2                               LOADSTRING                    dst=v[0x0F8], values=[2]
2A43  96 00 B3                               LOADSTRING                    dst=v[0x000], values=[3]
2A46  05                                     FIRSTFRAME_NEXT_VIDEO         
2A47  26 63 6C 62 6D 23 61 6F 75 74 00       VIDEO_NAME                    name="clbm{v000}out"
2A52  15 81 2A                               JMP                           target=0x2A81
2A55  09 29 48                               VIDEOREF                      ref=0x4829 (P[41]=?)
2A58  03                                     FADEIN_NEXT_VIDEO             
2A59  05                                     FIRSTFRAME_NEXT_VIDEO         
2A5A  09 00 34                               VIDEOREF                      ref=0x3400 (LI[0]=?)
2A5D  15 B6 22                               JMP                           target=0x22B6
2A60  16 0A 01 B1                            LOADSTRING                    dst=v[0x10A], values=[1]
2A64  09 62 34                               VIDEOREF                      ref=0x3462 (LI[98]=?)
2A67  0B                                     INPUTLOOPSTART                
2A68  0D 60 00 76 00 79 02 74 01 92 2A 06    HOTSPOT_RECT                  left=0x0060, top=0x0076, right=0x0279, bottom=0x0174, target=0x2A92, cursor=0x06
2A74  0E 78 2A                               HOTSPOT_LEFT                  target=0x2A78
2A77  13                                     INPUTLOOPEND                  
2A78  18 65 2B                               CALL                          target=0x2B65
2A7B  09 02 34                               VIDEOREF                      ref=0x3402 (LI[2]=?)
2A7E  15 CE 22                               JMP                           target=0x22CE
2A81  0B                                     INPUTLOOPSTART                
2A82  0D 60 00 76 00 79 02 74 01 92 2A 06    HOTSPOT_RECT                  left=0x0060, top=0x0076, right=0x0279, bottom=0x0174, target=0x2A92, cursor=0x06
2A8E  0E 5C 2B                               HOTSPOT_LEFT                  target=0x2B5C
2A91  13                                     INPUTLOOPEND                  
2A92  18 65 2B                               CALL                          target=0x2B65
2A95  09 35 34                               VIDEOREF                      ref=0x3435 (LI[53]=?)
2A98  9A 92 32 B2 A1 2A                      STRCMP_NE_JMP                 start=v[0x092], values=[2, 2], target=0x2AA1
2A9E  15 89 15                               JMP                           target=0x1589
2AA1  9A 92 30 B7 AA 2A                      STRCMP_NE_JMP                 start=v[0x092], values=[0, 7], target=0x2AAA
2AA7  15 2D 0C                               JMP                           target=0x0C2D
2AAA  9A 92 31 B9 B3 2A                      STRCMP_NE_JMP                 start=v[0x092], values=[1, 9], target=0x2AB3
2AB0  15 66 32                               JMP                           target=0x3266
2AB3  9A 92 32 B0 BC 2A                      STRCMP_NE_JMP                 start=v[0x092], values=[2, 0], target=0x2ABC
2AB9  15 77 13                               JMP                           target=0x1377
2ABC  9A 92 32 B1 C5 2A                      STRCMP_NE_JMP                 start=v[0x092], values=[2, 1], target=0x2AC5
2AC2  15 B3 0D                               JMP                           target=0x0DB3
2AC5  9A 92 31 B0 CE 2A                      STRCMP_NE_JMP                 start=v[0x092], values=[1, 0], target=0x2ACE
2ACB  15 E1 2F                               JMP                           target=0x2FE1
2ACE  9A 92 31 B1 DC 2A                      STRCMP_NE_JMP                 start=v[0x092], values=[1, 1], target=0x2ADC
2AD4  03                                     FADEIN_NEXT_VIDEO             
2AD5  05                                     FIRSTFRAME_NEXT_VIDEO         
2AD6  09 93 14                               VIDEOREF                      ref=0x1493 (FH[147]=?)
2AD9  15 0A 13                               JMP                           target=0x130A
2ADC  9A 92 31 B8 E5 2A                      STRCMP_NE_JMP                 start=v[0x092], values=[1, 8], target=0x2AE5
2AE2  15 D5 2C                               JMP                           target=0x2CD5
2AE5  9A 92 30 B4 EE 2A                      STRCMP_NE_JMP                 start=v[0x092], values=[0, 4], target=0x2AEE
2AEB  15 62 0A                               JMP                           target=0x0A62
2AEE  9A 92 31 B2 F7 2A                      STRCMP_NE_JMP                 start=v[0x092], values=[1, 2], target=0x2AF7
2AF4  15 82 2E                               JMP                           target=0x2E82
2AF7  9A 92 30 B8 05 2B                      STRCMP_NE_JMP                 start=v[0x092], values=[0, 8], target=0x2B05
2AFD  03                                     FADEIN_NEXT_VIDEO             
2AFE  05                                     FIRSTFRAME_NEXT_VIDEO         
2AFF  09 07 34                               VIDEOREF                      ref=0x3407 (LI[7]=?)
2B02  15 DF 2B                               JMP                           target=0x2BDF
2B05  9A 92 30 B9 0E 2B                      STRCMP_NE_JMP                 start=v[0x092], values=[0, 9], target=0x2B0E
2B0B  15 67 18                               JMP                           target=0x1867
2B0E  9A 92 30 B3 17 2B                      STRCMP_NE_JMP                 start=v[0x092], values=[0, 3], target=0x2B17
2B14  15 2B 09                               JMP                           target=0x092B
2B17  9A 92 31 B4 20 2B                      STRCMP_NE_JMP                 start=v[0x092], values=[1, 4], target=0x2B20
2B1D  15 63 14                               JMP                           target=0x1463
2B20  9A 92 31 B7 29 2B                      STRCMP_NE_JMP                 start=v[0x092], values=[1, 7], target=0x2B29
2B26  15 E0 16                               JMP                           target=0x16E0
2B29  9A 92 30 B5 33 2B                      STRCMP_NE_JMP                 start=v[0x092], values=[0, 5], target=0x2B33
2B2F  03                                     FADEIN_NEXT_VIDEO             
2B30  15 0A 18                               JMP                           target=0x180A
2B33  9A 92 30 B2 41 2B                      STRCMP_NE_JMP                 start=v[0x092], values=[0, 2], target=0x2B41
2B39  03                                     FADEIN_NEXT_VIDEO             
2B3A  05                                     FIRSTFRAME_NEXT_VIDEO         
2B3B  09 22 14                               VIDEOREF                      ref=0x1422 (FH[34]=?)
2B3E  15 0D 05                               JMP                           target=0x050D
2B41  9A 92 31 B5 4A 2B                      STRCMP_NE_JMP                 start=v[0x092], values=[1, 5], target=0x2B4A
2B47  15 24 34                               JMP                           target=0x3424
2B4A  9A 92 31 B6 53 2B                      STRCMP_NE_JMP                 start=v[0x092], values=[1, 6], target=0x2B53
2B50  15 15 35                               JMP                           target=0x3515
2B53  9A 92 30 B6 5C 2B                      STRCMP_NE_JMP                 start=v[0x092], values=[0, 6], target=0x2B5C
2B59  15 FC 30                               JMP                           target=0x30FC
2B5C  18 65 2B                               CALL                          target=0x2B65
2B5F  09 02 34                               VIDEOREF                      ref=0x3402 (LI[2]=?)
2B62  15 CE 22                               JMP                           target=0x22CE
2B65  1A 05 01 B0 7F 2B                      STRCMP_NE_JMP                 start=v[0x105], values=[0], target=0x2B7F
2B6B  1C 35 34                               VIDEO_TRANSITION_REF          ref=0x3435 (LI[53]=?)
2B6E  0A                                     VIDEOFLAG5_ON                 
2B6F  07                                     VIDEOFLAG7_ON                 
2B70  09 01 24                               VIDEOREF                      ref=0x2401 (INTRO[1]=?)
2B73  37 00 00 50 00 7F 02 8F 01             COPY_RECT_TO_BG               left=0x0000, top=0x0050, right=0x027F, bottom=0x018F
2B7C  15 83 2B                               JMP                           target=0x2B83
2B7F  05                                     FIRSTFRAME_NEXT_VIDEO         
2B80  09 35 34                               VIDEOREF                      ref=0x3435 (LI[53]=?)
2B83  17 00                                  RET                           value=0x00
2B85  0B                                     INPUTLOOPSTART                
2B86  0E BD 2B                               HOTSPOT_LEFT                  target=0x2BBD
2B89  0F C3 2B                               HOTSPOT_RIGHT                 target=0x2BC3
2B8C  0D 36 00 56 00 3A 01 8D 01 99 2B 00    HOTSPOT_RECT                  left=0x0036, top=0x0056, right=0x013A, bottom=0x018D, target=0x2B99, cursor=0x00
2B98  13                                     INPUTLOOPEND                  
2B99  09 04 34                               VIDEOREF                      ref=0x3404 (LI[4]=?)
2B9C  03                                     FADEIN_NEXT_VIDEO             
2B9D  05                                     FIRSTFRAME_NEXT_VIDEO         
2B9E  09 46 14                               VIDEOREF                      ref=0x1446 (FH[70]=?)
2BA1  96 8C 30 B1                            LOADSTRING                    dst=v[0x08C], values=[0, 1]
2BA5  02 39 4C                               PLAYSONG                      ref=0x4C39 (XMI[57]=?)
2BA8  15 B4 08                               JMP                           target=0x08B4
2BAB  09 00 34                               VIDEOREF                      ref=0x3400 (LI[0]=?)
2BAE  15 DF 2B                               JMP                           target=0x2BDF
2BB1  09 29 34                               VIDEOREF                      ref=0x3429 (LI[41]=?)
2BB4  15 85 2B                               JMP                           target=0x2B85
2BB7  09 2A 34                               VIDEOREF                      ref=0x342A (LI[42]=?)
2BBA  15 85 2B                               JMP                           target=0x2B85
2BBD  09 28 34                               VIDEOREF                      ref=0x3428 (LI[40]=?)
2BC0  15 CE 22                               JMP                           target=0x22CE
2BC3  09 2B 34                               VIDEOREF                      ref=0x342B (LI[43]=?)
2BC6  15 CE 22                               JMP                           target=0x22CE
2BC9  0B                                     INPUTLOOPSTART                
2BCA  0E A5 2C                               HOTSPOT_LEFT                  target=0x2CA5
2BCD  11 9F 2C                               HOTSPOT_CENTER_2              target=0x2C9F
2BD0  0F AB 2C                               HOTSPOT_RIGHT                 target=0x2CAB
2BD3  13                                     INPUTLOOPEND                  
2BD4  0B                                     INPUTLOOPSTART                
2BD5  0E B1 2C                               HOTSPOT_LEFT                  target=0x2CB1
2BD8  11 98 2C                               HOTSPOT_CENTER_2              target=0x2C98
2BDB  0F B7 2C                               HOTSPOT_RIGHT                 target=0x2CB7
2BDE  13                                     INPUTLOOPEND                  
2BDF  9A 9B B0 EE 2B                         STRCMP_NE_JMP                 start=v[0x09B], values=[0], target=0x2BEE
2BE4  96 9B B1                               LOADSTRING                    dst=v[0x09B], values=[1]
2BE7  18 DA 3A                               CALL                          target=0x3ADA
2BEA  96 8E 37 B5                            LOADSTRING                    dst=v[0x08E], values=[7, 5]
2BEE  0B                                     INPUTLOOPSTART                
2BEF  0E BD 2C                               HOTSPOT_LEFT                  target=0x2CBD
2BF2  0F C3 2C                               HOTSPOT_RIGHT                 target=0x2CC3
2BF5  A3 F5 E1 06 2C                         STRCMP_EQ_JMP                 start=v[0x0F5], values=[49], target=0x2C06
2BFA  0D 05 01 A3 00 93 01 E9 00 19 2C 06    HOTSPOT_RECT                  left=0x0105, top=0x00A3, right=0x0193, bottom=0x00E9, target=0x2C19, cursor=0x06
2C06  1A 08 01 B1 18 2C                      STRCMP_NE_JMP                 start=v[0x108], values=[1], target=0x2C18
2C0C  0D 05 01 A3 00 93 01 E9 00 19 2C 06    HOTSPOT_RECT                  left=0x0105, top=0x00A3, right=0x0193, bottom=0x00E9, target=0x2C19, cursor=0x06
2C18  13                                     INPUTLOOPEND                  
2C19  02 27 4C                               PLAYSONG                      ref=0x4C27 (XMI[39]=?)
2C1C  09 07 34                               VIDEOREF                      ref=0x3407 (LI[7]=?)
2C1F  23 05 01 B0 2B 2C                      STRCMP_EQ_JMP                 start=v[0x105], values=[0], target=0x2C2B
2C25  4B 00                                  SET_VIDEO_MODE                value=0x00
2C27  16 09 01 B1                            LOADSTRING                    dst=v[0x109], values=[1]
2C2B  09 10 34                               VIDEOREF                      ref=0x3410 (LI[16]=?)
2C2E  08 0E 4C                               SETBACKGROUNDSONG             ref=0x4C0E (XMI[14]=?)
2C31  18 09 42                               CALL                          target=0x4209
2C34  1A 09 01 B1 40 2C                      STRCMP_NE_JMP                 start=v[0x109], values=[1], target=0x2C40
2C3A  4B 01                                  SET_VIDEO_MODE                value=0x01
2C3C  16 09 01 B0                            LOADSTRING                    dst=v[0x109], values=[0]
2C40  08 35 4C                               SETBACKGROUNDSONG             ref=0x4C35 (XMI[53]=?)
2C43  09 11 34                               VIDEOREF                      ref=0x3411 (LI[17]=?)
2C46  09 06 34                               VIDEOREF                      ref=0x3406 (LI[6]=?)
2C49  A3 F5 E1 54 2C                         STRCMP_EQ_JMP                 start=v[0x0F5], values=[49], target=0x2C54
2C4E  15 DF 2B                               JMP                           target=0x2BDF
2C51  15 69 2C                               JMP                           target=0x2C69
2C54  9A C2 B0 66 2C                         STRCMP_NE_JMP                 start=v[0x0C2], values=[0], target=0x2C66
2C59  09 2F 34                               VIDEOREF                      ref=0x342F (LI[47]=?)
2C5C  96 8E 33 B7                            LOADSTRING                    dst=v[0x08E], values=[3, 7]
2C60  96 C2 B1                               LOADSTRING                    dst=v[0x0C2], values=[1]
2C63  18 EC 3A                               CALL                          target=0x3AEC
2C66  15 69 2C                               JMP                           target=0x2C69
2C69  0B                                     INPUTLOOPSTART                
2C6A  A3 C2 B0 7B 2C                         STRCMP_EQ_JMP                 start=v[0x0C2], values=[0], target=0x2C7B
2C6F  0D 5C 00 AF 00 33 01 5C 01 8B 2C 04    HOTSPOT_RECT                  left=0x005C, top=0x00AF, right=0x0133, bottom=0x015C, target=0x2C8B, cursor=0x04
2C7B  9A 8E 33 B7 84 2C                      STRCMP_NE_JMP                 start=v[0x08E], values=[3, 7], target=0x2C84
2C81  30 03 3B                               HOTSPOT_BOTTOM_4              target=0x3B03
2C84  0E C9 2C                               HOTSPOT_LEFT                  target=0x2CC9
2C87  0F CF 2C                               HOTSPOT_RIGHT                 target=0x2CCF
2C8A  13                                     INPUTLOOPEND                  
2C8B  96 8E 33 B7                            LOADSTRING                    dst=v[0x08E], values=[3, 7]
2C8F  96 C2 B1                               LOADSTRING                    dst=v[0x0C2], values=[1]
2C92  18 EC 3A                               CALL                          target=0x3AEC
2C95  15 69 2C                               JMP                           target=0x2C69
2C98  09 08 34                               VIDEOREF                      ref=0x3408 (LI[8]=?)
2C9B  04                                     PALFADEOUT                    
2C9C  15 5D 13                               JMP                           target=0x135D
2C9F  09 05 34                               VIDEOREF                      ref=0x3405 (LI[5]=?)
2CA2  15 85 2B                               JMP                           target=0x2B85
2CA5  09 2D 34                               VIDEOREF                      ref=0x342D (LI[45]=?)
2CA8  15 D4 2B                               JMP                           target=0x2BD4
2CAB  09 32 34                               VIDEOREF                      ref=0x3432 (LI[50]=?)
2CAE  15 69 2C                               JMP                           target=0x2C69
2CB1  09 2C 34                               VIDEOREF                      ref=0x342C (LI[44]=?)
2CB4  15 DF 2B                               JMP                           target=0x2BDF
2CB7  09 31 34                               VIDEOREF                      ref=0x3431 (LI[49]=?)
2CBA  15 C9 2B                               JMP                           target=0x2BC9
2CBD  09 2F 34                               VIDEOREF                      ref=0x342F (LI[47]=?)
2CC0  15 69 2C                               JMP                           target=0x2C69
2CC3  09 30 34                               VIDEOREF                      ref=0x3430 (LI[48]=?)
2CC6  15 D4 2B                               JMP                           target=0x2BD4
2CC9  09 2E 34                               VIDEOREF                      ref=0x342E (LI[46]=?)
2CCC  15 C9 2B                               JMP                           target=0x2BC9
2CCF  09 33 34                               VIDEOREF                      ref=0x3433 (LI[51]=?)
2CD2  15 DF 2B                               JMP                           target=0x2BDF
2CD5  96 8C 31 B4                            LOADSTRING                    dst=v[0x08C], values=[1, 4]
2CD9  03                                     FADEIN_NEXT_VIDEO             
2CDA  05                                     FIRSTFRAME_NEXT_VIDEO         
2CDB  09 08 04                               VIDEOREF                      ref=0x0408 (B[8]=?)
2CDE  9A EC E1 F8 2C                         STRCMP_NE_JMP                 start=v[0x0EC], values=[49], target=0x2CF8
2CE3  9A C4 B0 F8 2C                         STRCMP_NE_JMP                 start=v[0x0C4], values=[0], target=0x2CF8
2CE8  09 0C 04                               VIDEOREF                      ref=0x040C (B[12]=?)
2CEB  18 16 38                               CALL                          target=0x3816
2CEE  96 C4 B1                               LOADSTRING                    dst=v[0x0C4], values=[1]
2CF1  96 8E 33 B5                            LOADSTRING                    dst=v[0x08E], values=[3, 5]
2CF5  09 0B 04                               VIDEOREF                      ref=0x040B (B[11]=?)
2CF8  0B                                     INPUTLOOPSTART                
2CF9  0F 73 2D                               HOTSPOT_RIGHT                 target=0x2D73
2CFC  0E 6D 2D                               HOTSPOT_LEFT                  target=0x2D6D
2CFF  0D 5F 00 E0 00 E2 00 15 01 5D 2D 07    HOTSPOT_RECT                  left=0x005F, top=0x00E0, right=0x00E2, bottom=0x0115, target=0x2D5D, cursor=0x07
2D0B  A3 EC E1 1C 2D                         STRCMP_EQ_JMP                 start=v[0x0EC], values=[49], target=0x2D1C
2D10  0D 4F 00 50 01 30 01 8F 01 2F 2D 06    HOTSPOT_RECT                  left=0x004F, top=0x0150, right=0x0130, bottom=0x018F, target=0x2D2F, cursor=0x06
2D1C  1A 08 01 B1 2E 2D                      STRCMP_NE_JMP                 start=v[0x108], values=[1], target=0x2D2E
2D22  0D 4F 00 50 01 30 01 8F 01 2F 2D 06    HOTSPOT_RECT                  left=0x004F, top=0x0150, right=0x0130, bottom=0x018F, target=0x2D2F, cursor=0x06
2D2E  13                                     INPUTLOOPEND                  
2D2F  1A 09 01 B0 41 2D                      STRCMP_NE_JMP                 start=v[0x109], values=[0], target=0x2D41
2D35  23 05 01 B0 41 2D                      STRCMP_EQ_JMP                 start=v[0x105], values=[0], target=0x2D41
2D3B  4B 00                                  SET_VIDEO_MODE                value=0x00
2D3D  16 09 01 B1                            LOADSTRING                    dst=v[0x109], values=[1]
2D41  09 02 04                               VIDEOREF                      ref=0x0402 (B[2]=?)
2D44  96 92 31 B8                            LOADSTRING                    dst=v[0x092], values=[1, 8]
2D48  18 62 41                               CALL                          target=0x4162
2D4B  1A 09 01 B1 57 2D                      STRCMP_NE_JMP                 start=v[0x109], values=[1], target=0x2D57
2D51  4B 01                                  SET_VIDEO_MODE                value=0x01
2D53  16 09 01 B0                            LOADSTRING                    dst=v[0x109], values=[0]
2D57  09 01 04                               VIDEOREF                      ref=0x0401 (B[1]=?)
2D5A  15 DE 2C                               JMP                           target=0x2CDE
2D5D  02 3B 4C                               PLAYSONG                      ref=0x4C3B (XMI[59]=?)
2D60  09 03 04                               VIDEOREF                      ref=0x0403 (B[3]=?)
2D63  09 0A 04                               VIDEOREF                      ref=0x040A (B[10]=?)
2D66  96 8C 30 B7                            LOADSTRING                    dst=v[0x08C], values=[0, 7]
2D6A  15 B6 22                               JMP                           target=0x22B6
2D6D  09 08 04                               VIDEOREF                      ref=0x0408 (B[8]=?)
2D70  15 76 2D                               JMP                           target=0x2D76
2D73  09 06 04                               VIDEOREF                      ref=0x0406 (B[6]=?)
2D76  0B                                     INPUTLOOPSTART                
2D77  0F 90 2D                               HOTSPOT_RIGHT                 target=0x2D90
2D7A  0E 96 2D                               HOTSPOT_LEFT                  target=0x2D96
2D7D  10 81 2D                               HOTSPOT_CENTER                target=0x2D81
2D80  13                                     INPUTLOOPEND                  
2D81  09 09 04                               VIDEOREF                      ref=0x0409 (B[9]=?)
2D84  03                                     FADEIN_NEXT_VIDEO             
2D85  05                                     FIRSTFRAME_NEXT_VIDEO         
2D86  09 85 14                               VIDEOREF                      ref=0x1485 (FH[133]=?)
2D89  96 8C 30 B2                            LOADSTRING                    dst=v[0x08C], values=[0, 2]
2D8D  15 A7 11                               JMP                           target=0x11A7
2D90  09 07 04                               VIDEOREF                      ref=0x0407 (B[7]=?)
2D93  15 DE 2C                               JMP                           target=0x2CDE
2D96  09 05 04                               VIDEOREF                      ref=0x0405 (B[5]=?)
2D99  15 DE 2C                               JMP                           target=0x2CDE
2D9C  96 8C 32 B1                            LOADSTRING                    dst=v[0x08C], values=[2, 1]
2DA0  02 38 4C                               PLAYSONG                      ref=0x4C38 (XMI[56]=?)
2DA3  03                                     FADEIN_NEXT_VIDEO             
2DA4  05                                     FIRSTFRAME_NEXT_VIDEO         
2DA5  09 11 00                               VIDEOREF                      ref=0x0011 (AT[17]=?)
2DA8  0B                                     INPUTLOOPSTART                
2DA9  9A E7 E1 CC 2D                         STRCMP_NE_JMP                 start=v[0x0E7], values=[49], target=0x2DCC
2DAE  0D FB 00 22 01 85 01 7B 01 2E 2E 07    HOTSPOT_RECT                  left=0x00FB, top=0x0122, right=0x0185, bottom=0x017B, target=0x2E2E, cursor=0x07
2DBA  1A 08 01 B0 CC 2D                      STRCMP_NE_JMP                 start=v[0x108], values=[0], target=0x2DCC
2DC0  0D 29 01 94 00 56 01 EB 00 48 2E 00    HOTSPOT_RECT                  left=0x0129, top=0x0094, right=0x0156, bottom=0x00EB, target=0x2E48, cursor=0x00
2DCC  A3 E7 E1 DD 2D                         STRCMP_EQ_JMP                 start=v[0x0E7], values=[49], target=0x2DDD
2DD1  0D 06 02 88 00 66 02 58 01 F6 2D 06    HOTSPOT_RECT                  left=0x0206, top=0x0088, right=0x0266, bottom=0x0158, target=0x2DF6, cursor=0x06
2DDD  1A 08 01 B1 EF 2D                      STRCMP_NE_JMP                 start=v[0x108], values=[1], target=0x2DEF
2DE3  0D 06 02 88 00 66 02 58 01 F6 2D 06    HOTSPOT_RECT                  left=0x0206, top=0x0088, right=0x0266, bottom=0x0158, target=0x2DF6, cursor=0x06
2DEF  0F 5F 2E                               HOTSPOT_RIGHT                 target=0x2E5F
2DF2  0E 59 2E                               HOTSPOT_LEFT                  target=0x2E59
2DF5  13                                     INPUTLOOPEND                  
2DF6  02 37 4C                               PLAYSONG                      ref=0x4C37 (XMI[55]=?)
2DF9  23 05 01 B0 05 2E                      STRCMP_EQ_JMP                 start=v[0x105], values=[0], target=0x2E05
2DFF  4B 00                                  SET_VIDEO_MODE                value=0x00
2E01  16 09 01 B1                            LOADSTRING                    dst=v[0x109], values=[1]
2E05  09 03 00                               VIDEOREF                      ref=0x0003 (AT[3]=?)
2E08  09 08 00                               VIDEOREF                      ref=0x0008 (AT[8]=?)
2E0B  09 0C 00                               VIDEOREF                      ref=0x000C (AT[12]=?)
2E0E  18 DF 41                               CALL                          target=0x41DF
2E11  1A 09 01 B1 1D 2E                      STRCMP_NE_JMP                 start=v[0x109], values=[1], target=0x2E1D
2E17  4B 01                                  SET_VIDEO_MODE                value=0x01
2E19  16 09 01 B0                            LOADSTRING                    dst=v[0x109], values=[0]
2E1D  09 04 00                               VIDEOREF                      ref=0x0004 (AT[4]=?)
2E20  9A E7 E1 2B 2E                         STRCMP_NE_JMP                 start=v[0x0E7], values=[49], target=0x2E2B
2E25  02 38 4C                               PLAYSONG                      ref=0x4C38 (XMI[56]=?)
2E28  18 A6 39                               CALL                          target=0x39A6
2E2B  15 A8 2D                               JMP                           target=0x2DA8
2E2E  09 05 00                               VIDEOREF                      ref=0x0005 (AT[5]=?)
2E31  0A                                     VIDEOFLAG5_ON                 
2E32  09 0E 00                               VIDEOREF                      ref=0x000E (AT[14]=?)
2E35  0A                                     VIDEOFLAG5_ON                 
2E36  09 0A 00                               VIDEOREF                      ref=0x000A (AT[10]=?)
2E39  0A                                     VIDEOFLAG5_ON                 
2E3A  09 0A 00                               VIDEOREF                      ref=0x000A (AT[10]=?)
2E3D  0A                                     VIDEOFLAG5_ON                 
2E3E  09 0F 00                               VIDEOREF                      ref=0x000F (AT[15]=?)
2E41  0A                                     VIDEOFLAG5_ON                 
2E42  09 06 00                               VIDEOREF                      ref=0x0006 (AT[6]=?)
2E45  15 A8 2D                               JMP                           target=0x2DA8
2E48  09 02 00                               VIDEOREF                      ref=0x0002 (AT[2]=?)
2E4B  18 C7 39                               CALL                          target=0x39C7
2E4E  0B                                     INPUTLOOPSTART                
2E4F  0E 53 2E                               HOTSPOT_LEFT                  target=0x2E53
2E52  13                                     INPUTLOOPEND                  
2E53  09 07 00                               VIDEOREF                      ref=0x0007 (AT[7]=?)
2E56  15 F3 3D                               JMP                           target=0x3DF3
2E59  09 14 00                               VIDEOREF                      ref=0x0014 (AT[20]=?)
2E5C  15 65 2E                               JMP                           target=0x2E65
2E5F  09 11 00                               VIDEOREF                      ref=0x0011 (AT[17]=?)
2E62  18 97 39                               CALL                          target=0x3997
2E65  0B                                     INPUTLOOPSTART                
2E66  11 70 2E                               HOTSPOT_CENTER_2              target=0x2E70
2E69  0F 76 2E                               HOTSPOT_RIGHT                 target=0x2E76
2E6C  0E 7C 2E                               HOTSPOT_LEFT                  target=0x2E7C
2E6F  13                                     INPUTLOOPEND                  
2E70  09 1A 00                               VIDEOREF                      ref=0x001A (AT[26]=?)
2E73  15 65 2E                               JMP                           target=0x2E65
2E76  09 13 00                               VIDEOREF                      ref=0x0013 (AT[19]=?)
2E79  15 A8 2D                               JMP                           target=0x2DA8
2E7C  09 12 00                               VIDEOREF                      ref=0x0012 (AT[18]=?)
2E7F  15 A8 2D                               JMP                           target=0x2DA8
2E82  96 8C 31 B3                            LOADSTRING                    dst=v[0x08C], values=[1, 3]
2E86  05                                     FIRSTFRAME_NEXT_VIDEO         
2E87  03                                     FADEIN_NEXT_VIDEO             
2E88  09 81 28                               VIDEOREF                      ref=0x2881 (JHEK[129]=?)
2E8B  9A B5 B0 9A 2E                         STRCMP_NE_JMP                 start=v[0x0B5], values=[0], target=0x2E9A
2E90  96 B5 B1                               LOADSTRING                    dst=v[0x0B5], values=[1]
2E93  96 8E 35 B0                            LOADSTRING                    dst=v[0x08E], values=[5, 0]
2E97  18 08 37                               CALL                          target=0x3708
2E9A  0B                                     INPUTLOOPSTART                
2E9B  0D 32 00 50 00 96 00 C8 00 3F 2F 00    HOTSPOT_RECT                  left=0x0032, top=0x0050, right=0x0096, bottom=0x00C8, target=0x2F3F, cursor=0x00
2EA7  0F 6E 2F                               HOTSPOT_RIGHT                 target=0x2F6E
2EAA  0E CD 2F                               HOTSPOT_LEFT                  target=0x2FCD
2EAD  A3 99 B0 BE 2E                         STRCMP_EQ_JMP                 start=v[0x099], values=[0], target=0x2EBE
2EB2  0D FA 00 B4 00 5E 01 18 01 D3 2F 03    HOTSPOT_RECT                  left=0x00FA, top=0x00B4, right=0x015E, bottom=0x0118, target=0x2FD3, cursor=0x03
2EBE  0D C8 00 2C 01 B7 01 8F 01 D4 2E 06    HOTSPOT_RECT                  left=0x00C8, top=0x012C, right=0x01B7, bottom=0x018F, target=0x2ED4, cursor=0x06
2ECA  9A 8E 35 B0 D3 2E                      STRCMP_NE_JMP                 start=v[0x08E], values=[5, 0], target=0x2ED3
2ED0  30 03 3B                               HOTSPOT_BOTTOM_4              target=0x3B03
2ED3  13                                     INPUTLOOPEND                  
2ED4  09 7A 28                               VIDEOREF                      ref=0x287A (JHEK[122]=?)
2ED7  0B                                     INPUTLOOPSTART                
2ED8  A3 F1 E1 E9 2E                         STRCMP_EQ_JMP                 start=v[0x0F1], values=[49], target=0x2EE9
2EDD  0D 00 00 50 00 7F 02 18 01 08 2F 06    HOTSPOT_RECT                  left=0x0000, top=0x0050, right=0x027F, bottom=0x0118, target=0x2F08, cursor=0x06
2EE9  1A 08 01 B1 FB 2E                      STRCMP_NE_JMP                 start=v[0x108], values=[1], target=0x2EFB
2EEF  0D 00 00 50 00 7F 02 18 01 08 2F 06    HOTSPOT_RECT                  left=0x0000, top=0x0050, right=0x027F, bottom=0x0118, target=0x2F08, cursor=0x06
2EFB  0D 00 00 2C 01 7F 02 8F 01 39 2F 00    HOTSPOT_RECT                  left=0x0000, top=0x012C, right=0x027F, bottom=0x018F, target=0x2F39, cursor=0x00
2F07  13                                     INPUTLOOPEND                  
2F08  1A 09 01 B0 1A 2F                      STRCMP_NE_JMP                 start=v[0x109], values=[0], target=0x2F1A
2F0E  23 05 01 B0 1A 2F                      STRCMP_EQ_JMP                 start=v[0x105], values=[0], target=0x2F1A
2F14  4B 00                                  SET_VIDEO_MODE                value=0x00
2F16  16 09 01 B1                            LOADSTRING                    dst=v[0x109], values=[1]
2F1A  09 7E 28                               VIDEOREF                      ref=0x287E (JHEK[126]=?)
2F1D  96 92 31 B2                            LOADSTRING                    dst=v[0x092], values=[1, 2]
2F21  18 B5 41                               CALL                          target=0x41B5
2F24  1A 09 01 B1 30 2F                      STRCMP_NE_JMP                 start=v[0x109], values=[1], target=0x2F30
2F2A  4B 01                                  SET_VIDEO_MODE                value=0x01
2F2C  16 09 01 B0                            LOADSTRING                    dst=v[0x109], values=[0]
2F30  09 7F 28                               VIDEOREF                      ref=0x287F (JHEK[127]=?)
2F33  09 7B 28                               VIDEOREF                      ref=0x287B (JHEK[123]=?)
2F36  15 9A 2E                               JMP                           target=0x2E9A
2F39  09 7B 28                               VIDEOREF                      ref=0x287B (JHEK[123]=?)
2F3C  15 9A 2E                               JMP                           target=0x2E9A
2F3F  09 8B 28                               VIDEOREF                      ref=0x288B (JHEK[139]=?)
2F42  15 57 2F                               JMP                           target=0x2F57
2F45  02 0A 4C                               PLAYSONG                      ref=0x4C0A (XMI[10]=?)
2F48  09 79 28                               VIDEOREF                      ref=0x2879 (JHEK[121]=?)
2F4B  09 7D 28                               VIDEOREF                      ref=0x287D (JHEK[125]=?)
2F4E  09 80 28                               VIDEOREF                      ref=0x2880 (JHEK[128]=?)
2F51  09 78 28                               VIDEOREF                      ref=0x2878 (JHEK[120]=?)
2F54  15 57 2F                               JMP                           target=0x2F57
2F57  0B                                     INPUTLOOPSTART                
2F58  0D C8 00 50 00 B7 01 8F 01 45 2F 07    HOTSPOT_RECT                  left=0x00C8, top=0x0050, right=0x01B7, bottom=0x018F, target=0x2F45, cursor=0x07
2F64  0E 68 2F                               HOTSPOT_LEFT                  target=0x2F68
2F67  13                                     INPUTLOOPEND                  
2F68  09 8C 28                               VIDEOREF                      ref=0x288C (JHEK[140]=?)
2F6B  15 9A 2E                               JMP                           target=0x2E9A
2F6E  09 81 28                               VIDEOREF                      ref=0x2881 (JHEK[129]=?)
2F71  09 83 28                               VIDEOREF                      ref=0x2883 (JHEK[131]=?)
2F74  0B                                     INPUTLOOPSTART                
2F75  9A B4 B0 86 2F                         STRCMP_NE_JMP                 start=v[0x0B4], values=[0], target=0x2F86
2F7A  0D 7A 01 6B 00 1C 02 8B 01 A2 2F 04    HOTSPOT_RECT                  left=0x017A, top=0x006B, right=0x021C, bottom=0x018B, target=0x2FA2, cursor=0x04
2F86  9A 8E 35 B1 8F 2F                      STRCMP_NE_JMP                 start=v[0x08E], values=[5, 1], target=0x2F8F
2F8C  30 03 3B                               HOTSPOT_BOTTOM_4              target=0x3B03
2F8F  0E C4 2F                               HOTSPOT_LEFT                  target=0x2FC4
2F92  0F BE 2F                               HOTSPOT_RIGHT                 target=0x2FBE
2F95  0D 1F 00 5C 00 F5 00 91 01 AF 2F 00    HOTSPOT_RECT                  left=0x001F, top=0x005C, right=0x00F5, bottom=0x0191, target=0x2FAF, cursor=0x00
2FA1  13                                     INPUTLOOPEND                  
2FA2  96 B4 B1                               LOADSTRING                    dst=v[0x0B4], values=[1]
2FA5  96 8E 35 B1                            LOADSTRING                    dst=v[0x08E], values=[5, 1]
2FA9  18 1A 37                               CALL                          target=0x371A
2FAC  15 74 2F                               JMP                           target=0x2F74
2FAF  09 8A 28                               VIDEOREF                      ref=0x288A (JHEK[138]=?)
2FB2  05                                     FIRSTFRAME_NEXT_VIDEO         
2FB3  03                                     FADEIN_NEXT_VIDEO             
2FB4  96 8C 30 B2                            LOADSTRING                    dst=v[0x08C], values=[0, 2]
2FB8  09 7D 14                               VIDEOREF                      ref=0x147D (FH[125]=?)
2FBB  15 88 10                               JMP                           target=0x1088
2FBE  09 87 28                               VIDEOREF                      ref=0x2887 (JHEK[135]=?)
2FC1  15 9A 2E                               JMP                           target=0x2E9A
2FC4  09 84 28                               VIDEOREF                      ref=0x2884 (JHEK[132]=?)
2FC7  09 82 28                               VIDEOREF                      ref=0x2882 (JHEK[130]=?)
2FCA  15 9A 2E                               JMP                           target=0x2E9A
2FCD  09 88 28                               VIDEOREF                      ref=0x2888 (JHEK[136]=?)
2FD0  15 74 2F                               JMP                           target=0x2F74
2FD3  09 89 28                               VIDEOREF                      ref=0x2889 (JHEK[137]=?)
2FD6  03                                     FADEIN_NEXT_VIDEO             
2FD7  09 04 04                               VIDEOREF                      ref=0x0404 (B[4]=?)
2FDA  96 8C 31 B4                            LOADSTRING                    dst=v[0x08C], values=[1, 4]
2FDE  15 76 2D                               JMP                           target=0x2D76
2FE1  96 8C 31 B6                            LOADSTRING                    dst=v[0x08C], values=[1, 6]
2FE5  02 2B 4C                               PLAYSONG                      ref=0x4C2B (XMI[43]=?)
2FE8  05                                     FIRSTFRAME_NEXT_VIDEO         
2FE9  03                                     FADEIN_NEXT_VIDEO             
2FEA  09 07 08                               VIDEOREF                      ref=0x0807 (CH[7]=?)
2FED  9A AE B0 FC 2F                         STRCMP_NE_JMP                 start=v[0x0AE], values=[0], target=0x2FFC
2FF2  96 AE B1                               LOADSTRING                    dst=v[0x0AE], values=[1]
2FF5  96 8E 35 B7                            LOADSTRING                    dst=v[0x08E], values=[5, 7]
2FF9  18 9E 38                               CALL                          target=0x389E
2FFC  0B                                     INPUTLOOPSTART                
2FFD  0F 3E 30                               HOTSPOT_RIGHT                 target=0x303E
3000  0E 38 30                               HOTSPOT_LEFT                  target=0x3038
3003  A3 F3 E1 14 30                         STRCMP_EQ_JMP                 start=v[0x0F3], values=[49], target=0x3014
3008  0D E2 00 5F 01 8B 01 A3 01 58 30 06    HOTSPOT_RECT                  left=0x00E2, top=0x015F, right=0x018B, bottom=0x01A3, target=0x3058, cursor=0x06
3014  1A 08 01 B1 26 30                      STRCMP_NE_JMP                 start=v[0x108], values=[1], target=0x3026
301A  0D E2 00 5F 01 8B 01 A3 01 58 30 06    HOTSPOT_RECT                  left=0x00E2, top=0x015F, right=0x018B, bottom=0x01A3, target=0x3058, cursor=0x06
3026  9A 8E 35 B7 2F 30                      STRCMP_NE_JMP                 start=v[0x08E], values=[5, 7], target=0x302F
302C  30 03 3B                               HOTSPOT_BOTTOM_4              target=0x3B03
302F  9A F3 E1 37 30                         STRCMP_NE_JMP                 start=v[0x0F3], values=[49], target=0x3037
3034  10 8A 30                               HOTSPOT_CENTER                target=0x308A
3037  13                                     INPUTLOOPEND                  
3038  09 0C 08                               VIDEOREF                      ref=0x080C (CH[12]=?)
303B  15 44 30                               JMP                           target=0x3044
303E  09 07 08                               VIDEOREF                      ref=0x0807 (CH[7]=?)
3041  15 44 30                               JMP                           target=0x3044
3044  0B                                     INPUTLOOPSTART                
3045  0F 4C 30                               HOTSPOT_RIGHT                 target=0x304C
3048  0E 52 30                               HOTSPOT_LEFT                  target=0x3052
304B  13                                     INPUTLOOPEND                  
304C  09 0A 08                               VIDEOREF                      ref=0x080A (CH[10]=?)
304F  15 FC 2F                               JMP                           target=0x2FFC
3052  09 08 08                               VIDEOREF                      ref=0x0808 (CH[8]=?)
3055  15 FC 2F                               JMP                           target=0x2FFC
3058  1A 09 01 B0 6A 30                      STRCMP_NE_JMP                 start=v[0x109], values=[0], target=0x306A
305E  23 05 01 B0 6A 30                      STRCMP_EQ_JMP                 start=v[0x105], values=[0], target=0x306A
3064  4B 00                                  SET_VIDEO_MODE                value=0x00
3066  16 09 01 B1                            LOADSTRING                    dst=v[0x109], values=[1]
306A  09 10 08                               VIDEOREF                      ref=0x0810 (CH[16]=?)
306D  18 5C 42                               CALL                          target=0x425C
3070  1A 09 01 B1 7C 30                      STRCMP_NE_JMP                 start=v[0x109], values=[1], target=0x307C
3076  4B 01                                  SET_VIDEO_MODE                value=0x01
3078  16 09 01 B0                            LOADSTRING                    dst=v[0x109], values=[0]
307C  A3 F3 E1 84 30                         STRCMP_EQ_JMP                 start=v[0x0F3], values=[49], target=0x3084
3081  15 B6 22                               JMP                           target=0x22B6
3084  09 11 08                               VIDEOREF                      ref=0x0811 (CH[17]=?)
3087  15 FC 2F                               JMP                           target=0x2FFC
308A  09 09 08                               VIDEOREF                      ref=0x0809 (CH[9]=?)
308D  9A AD B0 9C 30                         STRCMP_NE_JMP                 start=v[0x0AD], values=[0], target=0x309C
3092  96 AD B1                               LOADSTRING                    dst=v[0x0AD], values=[1]
3095  96 8E 35 B8                            LOADSTRING                    dst=v[0x08E], values=[5, 8]
3099  18 8A 36                               CALL                          target=0x368A
309C  15 9F 30                               JMP                           target=0x309F
309F  0B                                     INPUTLOOPSTART                
30A0  9A 8E 35 B8 A9 30                      STRCMP_NE_JMP                 start=v[0x08E], values=[5, 8], target=0x30A9
30A6  30 03 3B                               HOTSPOT_BOTTOM_4              target=0x3B03
30A9  0E B0 30                               HOTSPOT_LEFT                  target=0x30B0
30AC  0F F2 30                               HOTSPOT_RIGHT                 target=0x30F2
30AF  13                                     INPUTLOOPEND                  
30B0  09 0E 08                               VIDEOREF                      ref=0x080E (CH[14]=?)
30B3  15 B6 30                               JMP                           target=0x30B6
30B6  0B                                     INPUTLOOPSTART                
30B7  0D C8 00 50 00 B8 01 8F 01 C7 30 04    HOTSPOT_RECT                  left=0x00C8, top=0x0050, right=0x01B8, bottom=0x018F, target=0x30C7, cursor=0x04
30C3  0F EC 30                               HOTSPOT_RIGHT                 target=0x30EC
30C6  13                                     INPUTLOOPEND                  
30C7  02 2A 4C                               PLAYSONG                      ref=0x4C2A (XMI[42]=?)
30CA  0A                                     VIDEOFLAG5_ON                 
30CB  09 00 08                               VIDEOREF                      ref=0x0800 (CH[0]=?)
30CE  0A                                     VIDEOFLAG5_ON                 
30CF  09 01 08                               VIDEOREF                      ref=0x0801 (CH[1]=?)
30D2  0A                                     VIDEOFLAG5_ON                 
30D3  09 02 08                               VIDEOREF                      ref=0x0802 (CH[2]=?)
30D6  0A                                     VIDEOFLAG5_ON                 
30D7  09 01 08                               VIDEOREF                      ref=0x0801 (CH[1]=?)
30DA  0A                                     VIDEOFLAG5_ON                 
30DB  09 02 08                               VIDEOREF                      ref=0x0802 (CH[2]=?)
30DE  0A                                     VIDEOFLAG5_ON                 
30DF  09 03 08                               VIDEOREF                      ref=0x0803 (CH[3]=?)
30E2  0A                                     VIDEOFLAG5_ON                 
30E3  09 06 08                               VIDEOREF                      ref=0x0806 (CH[6]=?)
30E6  02 2B 4C                               PLAYSONG                      ref=0x4C2B (XMI[43]=?)
30E9  15 B6 30                               JMP                           target=0x30B6
30EC  09 0F 08                               VIDEOREF                      ref=0x080F (CH[15]=?)
30EF  15 9F 30                               JMP                           target=0x309F
30F2  09 0D 08                               VIDEOREF                      ref=0x080D (CH[13]=?)
30F5  96 8C 31 B7                            LOADSTRING                    dst=v[0x08C], values=[1, 7]
30F9  15 66 32                               JMP                           target=0x3266
30FC  96 8C 31 B9                            LOADSTRING                    dst=v[0x08C], values=[1, 9]
3100  03                                     FADEIN_NEXT_VIDEO             
3101  05                                     FIRSTFRAME_NEXT_VIDEO         
3102  09 06 44                               VIDEOREF                      ref=0x4406 (N[6]=?)
3105  9A F7 E1 19 31                         STRCMP_NE_JMP                 start=v[0x0F7], values=[49], target=0x3119
310A  9A AF B0 19 31                         STRCMP_NE_JMP                 start=v[0x0AF], values=[0], target=0x3119
310F  96 AF B1                               LOADSTRING                    dst=v[0x0AF], values=[1]
3112  18 7B 36                               CALL                          target=0x367B
3115  96 8E 35 B6                            LOADSTRING                    dst=v[0x08E], values=[5, 6]
3119  0B                                     INPUTLOOPSTART                
311A  9A 8E 35 B6 23 31                      STRCMP_NE_JMP                 start=v[0x08E], values=[5, 6], target=0x3123
3120  30 03 3B                               HOTSPOT_BOTTOM_4              target=0x3B03
3123  0F A8 31                               HOTSPOT_RIGHT                 target=0x31A8
3126  0E B6 31                               HOTSPOT_LEFT                  target=0x31B6
3129  9A F7 E1 3A 31                         STRCMP_NE_JMP                 start=v[0x0F7], values=[49], target=0x313A
312E  0D 02 01 F2 00 7E 01 1E 01 D3 31 04    HOTSPOT_RECT                  left=0x0102, top=0x00F2, right=0x017E, bottom=0x011E, target=0x31D3, cursor=0x04
313A  9A F7 E1 4B 31                         STRCMP_NE_JMP                 start=v[0x0F7], values=[49], target=0x314B
313F  0D 6C 01 56 01 93 01 82 01 14 32 00    HOTSPOT_RECT                  left=0x016C, top=0x0156, right=0x0193, bottom=0x0182, target=0x3214, cursor=0x00
314B  9A B0 B0 5F 31                         STRCMP_NE_JMP                 start=v[0x0B0], values=[0], target=0x315F
3150  0D 9E 00 1D 01 F8 00 6D 01 FA 31 04    HOTSPOT_RECT                  left=0x009E, top=0x011D, right=0x00F8, bottom=0x016D, target=0x31FA, cursor=0x04
315C  15 6B 31                               JMP                           target=0x316B
315F  0D 9E 00 1D 01 F8 00 6D 01 0D 32 00    HOTSPOT_RECT                  left=0x009E, top=0x011D, right=0x00F8, bottom=0x016D, target=0x320D, cursor=0x00
316B  9A 8E 35 B5 74 31                      STRCMP_NE_JMP                 start=v[0x08E], values=[5, 5], target=0x3174
3171  30 03 3B                               HOTSPOT_BOTTOM_4              target=0x3B03
3174  A3 F7 E1 85 31                         STRCMP_EQ_JMP                 start=v[0x0F7], values=[49], target=0x3185
3179  0D F9 01 04 01 7D 02 8F 01 32 32 06    HOTSPOT_RECT                  left=0x01F9, top=0x0104, right=0x027D, bottom=0x018F, target=0x3232, cursor=0x06
3185  1A 08 01 B1 97 31                      STRCMP_NE_JMP                 start=v[0x108], values=[1], target=0x3197
318B  0D F9 01 04 01 7D 02 8F 01 32 32 06    HOTSPOT_RECT                  left=0x01F9, top=0x0104, right=0x027D, bottom=0x018F, target=0x3232, cursor=0x06
3197  13                                     INPUTLOOPEND                  
3198  96 8C 31 B9                            LOADSTRING                    dst=v[0x08C], values=[1, 9]
319C  04                                     PALFADEOUT                    
319D  03                                     FADEIN_NEXT_VIDEO             
319E  05                                     FIRSTFRAME_NEXT_VIDEO         
319F  09 14 44                               VIDEOREF                      ref=0x4414 (N[20]=?)
31A2  09 14 44                               VIDEOREF                      ref=0x4414 (N[20]=?)
31A5  15 19 31                               JMP                           target=0x3119
31A8  09 06 44                               VIDEOREF                      ref=0x4406 (N[6]=?)
31AB  0B                                     INPUTLOOPSTART                
31AC  0F BC 31                               HOTSPOT_RIGHT                 target=0x31BC
31AF  10 C8 31                               HOTSPOT_CENTER                target=0x31C8
31B2  0E C2 31                               HOTSPOT_LEFT                  target=0x31C2
31B5  13                                     INPUTLOOPEND                  
31B6  09 09 44                               VIDEOREF                      ref=0x4409 (N[9]=?)
31B9  15 AB 31                               JMP                           target=0x31AB
31BC  09 08 44                               VIDEOREF                      ref=0x4408 (N[8]=?)
31BF  15 19 31                               JMP                           target=0x3119
31C2  09 07 44                               VIDEOREF                      ref=0x4407 (N[7]=?)
31C5  15 19 31                               JMP                           target=0x3119
31C8  09 0E 44                               VIDEOREF                      ref=0x440E (N[14]=?)
31CB  03                                     FADEIN_NEXT_VIDEO             
31CC  05                                     FIRSTFRAME_NEXT_VIDEO         
31CD  09 90 14                               VIDEOREF                      ref=0x1490 (FH[144]=?)
31D0  15 73 12                               JMP                           target=0x1273
31D3  09 0A 44                               VIDEOREF                      ref=0x440A (N[10]=?)
31D6  9A B1 B0 E6 31                         STRCMP_NE_JMP                 start=v[0x0B1], values=[0], target=0x31E6
31DB  96 B1 B1                               LOADSTRING                    dst=v[0x0B1], values=[1]
31DE  18 F8 37                               CALL                          target=0x37F8
31E1  16 0C 01 35 B4                         LOADSTRING                    dst=v[0x10C], values=[5, 4]
31E6  0B                                     INPUTLOOPSTART                
31E7  11 F4 31                               HOTSPOT_CENTER_2              target=0x31F4
31EA  9A 8E 35 B4 F3 31                      STRCMP_NE_JMP                 start=v[0x08E], values=[5, 4], target=0x31F3
31F0  30 03 3B                               HOTSPOT_BOTTOM_4              target=0x3B03
31F3  13                                     INPUTLOOPEND                  
31F4  09 0B 44                               VIDEOREF                      ref=0x440B (N[11]=?)
31F7  15 19 31                               JMP                           target=0x3119
31FA  9A B0 B0 0A 32                         STRCMP_NE_JMP                 start=v[0x0B0], values=[0], target=0x320A
31FF  96 B0 B1                               LOADSTRING                    dst=v[0x0B0], values=[1]
3202  18 07 38                               CALL                          target=0x3807
3205  16 0C 01 35 B5                         LOADSTRING                    dst=v[0x10C], values=[5, 5]
320A  15 19 31                               JMP                           target=0x3119
320D  09 13 44                               VIDEOREF                      ref=0x4413 (N[19]=?)
3210  04                                     PALFADEOUT                    
3211  15 B6 22                               JMP                           target=0x22B6
3214  09 0F 44                               VIDEOREF                      ref=0x440F (N[15]=?)
3217  0A                                     VIDEOFLAG5_ON                 
3218  09 00 44                               VIDEOREF                      ref=0x4400 (N[0]=?)
321B  0A                                     VIDEOFLAG5_ON                 
321C  09 01 44                               VIDEOREF                      ref=0x4401 (N[1]=?)
321F  0A                                     VIDEOFLAG5_ON                 
3220  09 03 44                               VIDEOREF                      ref=0x4403 (N[3]=?)
3223  0A                                     VIDEOFLAG5_ON                 
3224  09 04 44                               VIDEOREF                      ref=0x4404 (N[4]=?)
3227  0A                                     VIDEOFLAG5_ON                 
3228  09 02 44                               VIDEOREF                      ref=0x4402 (N[2]=?)
322B  0A                                     VIDEOFLAG5_ON                 
322C  09 10 44                               VIDEOREF                      ref=0x4410 (N[16]=?)
322F  15 19 31                               JMP                           target=0x3119
3232  1A 09 01 B0 44 32                      STRCMP_NE_JMP                 start=v[0x109], values=[0], target=0x3244
3238  23 05 01 B0 44 32                      STRCMP_EQ_JMP                 start=v[0x105], values=[0], target=0x3244
323E  4B 00                                  SET_VIDEO_MODE                value=0x00
3240  16 09 01 B1                            LOADSTRING                    dst=v[0x109], values=[1]
3244  09 11 44                               VIDEOREF                      ref=0x4411 (N[17]=?)
3247  96 92 30 B6                            LOADSTRING                    dst=v[0x092], values=[0, 6]
324B  18 94 40                               CALL                          target=0x4094
324E  1A 09 01 B1 5A 32                      STRCMP_NE_JMP                 start=v[0x109], values=[1], target=0x325A
3254  4B 01                                  SET_VIDEO_MODE                value=0x01
3256  16 09 01 B0                            LOADSTRING                    dst=v[0x109], values=[0]
325A  09 12 44                               VIDEOREF                      ref=0x4412 (N[18]=?)
325D  15 05 31                               JMP                           target=0x3105
3260  09 0C 44                               VIDEOREF                      ref=0x440C (N[12]=?)
3263  15 19 31                               JMP                           target=0x3119
3266  96 8C 31 B7                            LOADSTRING                    dst=v[0x08C], values=[1, 7]
326A  05                                     FIRSTFRAME_NEXT_VIDEO         
326B  03                                     FADEIN_NEXT_VIDEO             
326C  09 10 30                               VIDEOREF                      ref=0x3010 (LA[16]=?)
326F  15 9B 32                               JMP                           target=0x329B
3272  0B                                     INPUTLOOPSTART                
3273  0E 1D 33                               HOTSPOT_LEFT                  target=0x331D
3276  10 7D 32                               HOTSPOT_CENTER                target=0x327D
3279  0F 2C 33                               HOTSPOT_RIGHT                 target=0x332C
327C  13                                     INPUTLOOPEND                  
327D  0A                                     VIDEOFLAG5_ON                 
327E  9A 00 B0 8B 32                         STRCMP_NE_JMP                 start=v[0x000], values=[0], target=0x328B
3283  09 03 30                               VIDEOREF                      ref=0x3003 (LA[3]=?)
3286  9F 00                                  INC                           var=v[0x000]
3288  15 90 32                               JMP                           target=0x3290
328B  09 04 30                               VIDEOREF                      ref=0x3004 (LA[4]=?)
328E  A0 00                                  DEC                           var=v[0x000]
3290  15 72 32                               JMP                           target=0x3272
3293  0B                                     INPUTLOOPSTART                
3294  0E 3B 33                               HOTSPOT_LEFT                  target=0x333B
3297  0F 41 33                               HOTSPOT_RIGHT                 target=0x3341
329A  13                                     INPUTLOOPEND                  
329B  0B                                     INPUTLOOPSTART                
329C  0E 4A 33                               HOTSPOT_LEFT                  target=0x334A
329F  0D 96 00 AD 00 05 01 08 01 14 33 00    HOTSPOT_RECT                  left=0x0096, top=0x00AD, right=0x0105, bottom=0x0108, target=0x3314, cursor=0x00
32AB  9A B2 B0 BC 32                         STRCMP_NE_JMP                 start=v[0x0B2], values=[0], target=0x32BC
32B0  0D CB 00 0A 01 4A 01 27 01 F0 32 04    HOTSPOT_RECT                  left=0x00CB, top=0x010A, right=0x014A, bottom=0x0127, target=0x32F0, cursor=0x04
32BC  9A B3 B0 CD 32                         STRCMP_NE_JMP                 start=v[0x0B3], values=[0], target=0x32CD
32C1  0D 6D 00 28 01 C6 00 8B 01 E3 32 04    HOTSPOT_RECT                  left=0x006D, top=0x0128, right=0x00C6, bottom=0x018B, target=0x32E3, cursor=0x04
32CD  9A 8E 35 B2 D6 32                      STRCMP_NE_JMP                 start=v[0x08E], values=[5, 2], target=0x32D6
32D3  30 03 3B                               HOTSPOT_BOTTOM_4              target=0x3B03
32D6  9A 8E 35 B3 DF 32                      STRCMP_NE_JMP                 start=v[0x08E], values=[5, 3], target=0x32DF
32DC  30 03 3B                               HOTSPOT_BOTTOM_4              target=0x3B03
32DF  0F 53 33                               HOTSPOT_RIGHT                 target=0x3353
32E2  13                                     INPUTLOOPEND                  
32E3  96 B3 B1                               LOADSTRING                    dst=v[0x0B3], values=[1]
32E6  96 8E 35 B2                            LOADSTRING                    dst=v[0x08E], values=[5, 2]
32EA  18 22 3A                               CALL                          target=0x3A22
32ED  15 9B 32                               JMP                           target=0x329B
32F0  96 B2 B1                               LOADSTRING                    dst=v[0x0B2], values=[1]
32F3  96 8E 35 B3                            LOADSTRING                    dst=v[0x08E], values=[5, 3]
32F7  18 34 3A                               CALL                          target=0x3A34
32FA  15 9B 32                               JMP                           target=0x329B
32FD  0B                                     INPUTLOOPSTART                
32FE  0E 5C 33                               HOTSPOT_LEFT                  target=0x335C
3301  11 08 33                               HOTSPOT_CENTER_2              target=0x3308
3304  0F 65 33                               HOTSPOT_RIGHT                 target=0x3365
3307  13                                     INPUTLOOPEND                  
3308  09 13 30                               VIDEOREF                      ref=0x3013 (LA[19]=?)
330B  09 07 30                               VIDEOREF                      ref=0x3007 (LA[7]=?)
330E  09 17 30                               VIDEOREF                      ref=0x3017 (LA[23]=?)
3311  15 E1 33                               JMP                           target=0x33E1
3314  09 01 30                               VIDEOREF                      ref=0x3001 (LA[1]=?)
3317  09 07 30                               VIDEOREF                      ref=0x3007 (LA[7]=?)
331A  15 7E 33                               JMP                           target=0x337E
331D  9A 00 B1 26 33                         STRCMP_NE_JMP                 start=v[0x000], values=[1], target=0x3326
3322  0A                                     VIDEOFLAG5_ON                 
3323  09 04 30                               VIDEOREF                      ref=0x3004 (LA[4]=?)
3326  09 0D 30                               VIDEOREF                      ref=0x300D (LA[13]=?)
3329  15 93 32                               JMP                           target=0x3293
332C  9A 00 B1 35 33                         STRCMP_NE_JMP                 start=v[0x000], values=[1], target=0x3335
3331  0A                                     VIDEOFLAG5_ON                 
3332  09 04 30                               VIDEOREF                      ref=0x3004 (LA[4]=?)
3335  09 12 30                               VIDEOREF                      ref=0x3012 (LA[18]=?)
3338  15 FD 32                               JMP                           target=0x32FD
333B  09 0C 30                               VIDEOREF                      ref=0x300C (LA[12]=?)
333E  15 9B 32                               JMP                           target=0x329B
3341  96 00 B0                               LOADSTRING                    dst=v[0x000], values=[0]
3344  09 11 30                               VIDEOREF                      ref=0x3011 (LA[17]=?)
3347  15 72 32                               JMP                           target=0x3272
334A  09 01 30                               VIDEOREF                      ref=0x3001 (LA[1]=?)
334D  09 0F 30                               VIDEOREF                      ref=0x300F (LA[15]=?)
3350  15 FD 32                               JMP                           target=0x32FD
3353  09 01 30                               VIDEOREF                      ref=0x3001 (LA[1]=?)
3356  09 10 30                               VIDEOREF                      ref=0x3010 (LA[16]=?)
3359  15 93 32                               JMP                           target=0x3293
335C  96 00 B0                               LOADSTRING                    dst=v[0x000], values=[0]
335F  09 0E 30                               VIDEOREF                      ref=0x300E (LA[14]=?)
3362  15 72 32                               JMP                           target=0x3272
3365  09 13 30                               VIDEOREF                      ref=0x3013 (LA[19]=?)
3368  15 9B 32                               JMP                           target=0x329B
336B  0B                                     INPUTLOOPSTART                
336C  0E F4 33                               HOTSPOT_LEFT                  target=0x33F4
336F  11 EE 33                               HOTSPOT_CENTER_2              target=0x33EE
3372  0F FA 33                               HOTSPOT_RIGHT                 target=0x33FA
3375  13                                     INPUTLOOPEND                  
3376  0B                                     INPUTLOOPSTART                
3377  0E 00 34                               HOTSPOT_LEFT                  target=0x3400
337A  0F 06 34                               HOTSPOT_RIGHT                 target=0x3406
337D  13                                     INPUTLOOPEND                  
337E  02 35 4C                               PLAYSONG                      ref=0x4C35 (XMI[53]=?)
3381  0B                                     INPUTLOOPSTART                
3382  A3 EB E1 93 33                         STRCMP_EQ_JMP                 start=v[0x0EB], values=[49], target=0x3393
3387  0D 97 01 93 00 EB 01 55 01 AC 33 06    HOTSPOT_RECT                  left=0x0197, top=0x0093, right=0x01EB, bottom=0x0155, target=0x33AC, cursor=0x06
3393  1A 08 01 B1 A5 33                      STRCMP_NE_JMP                 start=v[0x108], values=[1], target=0x33A5
3399  0D 97 01 93 00 EB 01 55 01 AC 33 06    HOTSPOT_RECT                  left=0x0197, top=0x0093, right=0x01EB, bottom=0x0155, target=0x33AC, cursor=0x06
33A5  0E 0C 34                               HOTSPOT_LEFT                  target=0x340C
33A8  0F 12 34                               HOTSPOT_RIGHT                 target=0x3412
33AB  13                                     INPUTLOOPEND                  
33AC  09 05 30                               VIDEOREF                      ref=0x3005 (LA[5]=?)
33AF  23 05 01 B0 BB 33                      STRCMP_EQ_JMP                 start=v[0x105], values=[0], target=0x33BB
33B5  4B 00                                  SET_VIDEO_MODE                value=0x00
33B7  16 09 01 B1                            LOADSTRING                    dst=v[0x109], values=[1]
33BB  18 B0 42                               CALL                          target=0x42B0
33BE  1A 09 01 B1 CA 33                      STRCMP_NE_JMP                 start=v[0x109], values=[1], target=0x33CA
33C4  4B 01                                  SET_VIDEO_MODE                value=0x01
33C6  16 09 01 B0                            LOADSTRING                    dst=v[0x109], values=[0]
33CA  09 06 30                               VIDEOREF                      ref=0x3006 (LA[6]=?)
33CD  15 7E 33                               JMP                           target=0x337E
33D0  0B                                     INPUTLOOPSTART                
33D1  0D 62 00 B0 00 C3 00 66 01 E1 33 00    HOTSPOT_RECT                  left=0x0062, top=0x00B0, right=0x00C3, bottom=0x0166, target=0x33E1, cursor=0x00
33DD  0F 1E 34                               HOTSPOT_RIGHT                 target=0x341E
33E0  13                                     INPUTLOOPEND                  
33E1  09 0A 30                               VIDEOREF                      ref=0x300A (LA[10]=?)
33E4  09 0B 30                               VIDEOREF                      ref=0x300B (LA[11]=?)
33E7  96 8C 30 B7                            LOADSTRING                    dst=v[0x08C], values=[0, 7]
33EB  15 B6 22                               JMP                           target=0x22B6
33EE  09 09 30                               VIDEOREF                      ref=0x3009 (LA[9]=?)
33F1  15 72 32                               JMP                           target=0x3272
33F4  09 15 30                               VIDEOREF                      ref=0x3015 (LA[21]=?)
33F7  15 76 33                               JMP                           target=0x3376
33FA  09 1A 30                               VIDEOREF                      ref=0x301A (LA[26]=?)
33FD  15 D0 33                               JMP                           target=0x33D0
3400  09 14 30                               VIDEOREF                      ref=0x3014 (LA[20]=?)
3403  15 7E 33                               JMP                           target=0x337E
3406  09 19 30                               VIDEOREF                      ref=0x3019 (LA[25]=?)
3409  15 6B 33                               JMP                           target=0x336B
340C  09 17 30                               VIDEOREF                      ref=0x3017 (LA[23]=?)
340F  15 D0 33                               JMP                           target=0x33D0
3412  09 18 30                               VIDEOREF                      ref=0x3018 (LA[24]=?)
3415  15 76 33                               JMP                           target=0x3376
3418  09 16 30                               VIDEOREF                      ref=0x3016 (LA[22]=?)
341B  15 6B 33                               JMP                           target=0x336B
341E  09 1B 30                               VIDEOREF                      ref=0x301B (LA[27]=?)
3421  15 7E 33                               JMP                           target=0x337E
3424  96 8C 31 B2                            LOADSTRING                    dst=v[0x08C], values=[1, 2]
3428  03                                     FADEIN_NEXT_VIDEO             
3429  05                                     FIRSTFRAME_NEXT_VIDEO         
342A  09 03 38                               VIDEOREF                      ref=0x3803 (MB[3]=?)
342D  9A AB B0 3C 34                         STRCMP_NE_JMP                 start=v[0x0AB], values=[0], target=0x343C
3432  09 3D 38                               VIDEOREF                      ref=0x383D (MB[61]=?)
3435  96 AB B1                               LOADSTRING                    dst=v[0x0AB], values=[1]
3438  96 8E 39 B9                            LOADSTRING                    dst=v[0x08E], values=[9, 9]
343C  9A EF E1 49 34                         STRCMP_NE_JMP                 start=v[0x0EF], values=[49], target=0x3449
3441  9A AC B0 49 34                         STRCMP_NE_JMP                 start=v[0x0AC], values=[0], target=0x3449
3446  15 F9 34                               JMP                           target=0x34F9
3449  0B                                     INPUTLOOPSTART                
344A  0E 9A 34                               HOTSPOT_LEFT                  target=0x349A
344D  0F A0 34                               HOTSPOT_RIGHT                 target=0x34A0
3450  9A FA E1 66 34                         STRCMP_NE_JMP                 start=v[0x0FA], values=[49], target=0x3466
3455  A3 EF E1 66 34                         STRCMP_EQ_JMP                 start=v[0x0EF], values=[49], target=0x3466
345A  0D B6 00 11 01 36 01 2B 01 A6 34 06    HOTSPOT_RECT                  left=0x00B6, top=0x0111, right=0x0136, bottom=0x012B, target=0x34A6, cursor=0x06
3466  1A 08 01 B1 78 34                      STRCMP_NE_JMP                 start=v[0x108], values=[1], target=0x3478
346C  0D B6 00 11 01 36 01 2B 01 A6 34 06    HOTSPOT_RECT                  left=0x00B6, top=0x0111, right=0x0136, bottom=0x012B, target=0x34A6, cursor=0x06
3478  9A EF E1 89 34                         STRCMP_NE_JMP                 start=v[0x0EF], values=[49], target=0x3489
347D  0D B6 00 11 01 36 01 2B 01 93 34 07    HOTSPOT_RECT                  left=0x00B6, top=0x0111, right=0x0136, bottom=0x012B, target=0x3493, cursor=0x07
3489  9A 8E 35 B9 92 34                      STRCMP_NE_JMP                 start=v[0x08E], values=[5, 9], target=0x3492
348F  30 03 3B                               HOTSPOT_BOTTOM_4              target=0x3B03
3492  13                                     INPUTLOOPEND                  
3493  07                                     VIDEOFLAG7_ON                 
3494  09 3F 38                               VIDEOREF                      ref=0x383F (MB[63]=?)
3497  15 3C 34                               JMP                           target=0x343C
349A  09 06 38                               VIDEOREF                      ref=0x3806 (MB[6]=?)
349D  15 D0 34                               JMP                           target=0x34D0
34A0  09 03 38                               VIDEOREF                      ref=0x3803 (MB[3]=?)
34A3  15 D0 34                               JMP                           target=0x34D0
34A6  02 36 4C                               PLAYSONG                      ref=0x4C36 (XMI[54]=?)
34A9  09 08 38                               VIDEOREF                      ref=0x3808 (MB[8]=?)
34AC  23 05 01 B0 B8 34                      STRCMP_EQ_JMP                 start=v[0x105], values=[0], target=0x34B8
34B2  4B 00                                  SET_VIDEO_MODE                value=0x00
34B4  16 09 01 B1                            LOADSTRING                    dst=v[0x109], values=[1]
34B8  09 00 38                               VIDEOREF                      ref=0x3800 (MB[0]=?)
34BB  18 E6 40                               CALL                          target=0x40E6
34BE  1A 09 01 B1 CA 34                      STRCMP_NE_JMP                 start=v[0x109], values=[1], target=0x34CA
34C4  4B 01                                  SET_VIDEO_MODE                value=0x01
34C6  16 09 01 B0                            LOADSTRING                    dst=v[0x109], values=[0]
34CA  09 09 38                               VIDEOREF                      ref=0x3809 (MB[9]=?)
34CD  15 3C 34                               JMP                           target=0x343C
34D0  0B                                     INPUTLOOPSTART                
34D1  0E E4 34                               HOTSPOT_LEFT                  target=0x34E4
34D4  0F EA 34                               HOTSPOT_RIGHT                 target=0x34EA
34D7  0D 56 01 7A 00 AF 01 74 01 06 35 00    HOTSPOT_RECT                  left=0x0156, top=0x007A, right=0x01AF, bottom=0x0174, target=0x3506, cursor=0x00
34E3  13                                     INPUTLOOPEND                  
34E4  09 04 38                               VIDEOREF                      ref=0x3804 (MB[4]=?)
34E7  15 3C 34                               JMP                           target=0x343C
34EA  09 05 38                               VIDEOREF                      ref=0x3805 (MB[5]=?)
34ED  15 3C 34                               JMP                           target=0x343C
34F0  09 01 38                               VIDEOREF                      ref=0x3801 (MB[1]=?)
34F3  09 09 38                               VIDEOREF                      ref=0x3809 (MB[9]=?)
34F6  15 3C 34                               JMP                           target=0x343C
34F9  96 AC B1                               LOADSTRING                    dst=v[0x0AC], values=[1]
34FC  96 8E 35 B9                            LOADSTRING                    dst=v[0x08E], values=[5, 9]
3500  18 73 39                               CALL                          target=0x3973
3503  15 3C 34                               JMP                           target=0x343C
3506  09 07 38                               VIDEOREF                      ref=0x3807 (MB[7]=?)
3509  03                                     FADEIN_NEXT_VIDEO             
350A  05                                     FIRSTFRAME_NEXT_VIDEO         
350B  09 7F 14                               VIDEOREF                      ref=0x147F (FH[127]=?)
350E  96 8C 30 B2                            LOADSTRING                    dst=v[0x08C], values=[0, 2]
3512  15 5F 10                               JMP                           target=0x105F
3515  96 8C 31 B8                            LOADSTRING                    dst=v[0x08C], values=[1, 8]
3519  05                                     FIRSTFRAME_NEXT_VIDEO         
351A  03                                     FADEIN_NEXT_VIDEO             
351B  09 09 0C                               VIDEOREF                      ref=0x0C09 (D[9]=?)
351E  9A 9C B0 2D 35                         STRCMP_NE_JMP                 start=v[0x09C], values=[0], target=0x352D
3523  96 9C B1                               LOADSTRING                    dst=v[0x09C], values=[1]
3526  18 F7 38                               CALL                          target=0x38F7
3529  96 8E 37 B4                            LOADSTRING                    dst=v[0x08E], values=[7, 4]
352D  9A 9D B0 41 35                         STRCMP_NE_JMP                 start=v[0x09D], values=[0], target=0x3541
3532  9A EE E1 41 35                         STRCMP_NE_JMP                 start=v[0x0EE], values=[49], target=0x3541
3537  96 9D B1                               LOADSTRING                    dst=v[0x09D], values=[1]
353A  18 15 39                               CALL                          target=0x3915
353D  96 8E 37 B3                            LOADSTRING                    dst=v[0x08E], values=[7, 3]
3541  0B                                     INPUTLOOPSTART                
3542  9A 8E 37 B4 4B 35                      STRCMP_NE_JMP                 start=v[0x08E], values=[7, 4], target=0x354B
3548  30 03 3B                               HOTSPOT_BOTTOM_4              target=0x3B03
354B  0D 80 00 B3 00 C5 00 30 01 97 35 00    HOTSPOT_RECT                  left=0x0080, top=0x00B3, right=0x00C5, bottom=0x0130, target=0x3597, cursor=0x00
3557  A3 EE E1 68 35                         STRCMP_EQ_JMP                 start=v[0x0EE], values=[49], target=0x3568
355C  0D D5 01 F5 00 1D 02 2A 01 9D 35 06    HOTSPOT_RECT                  left=0x01D5, top=0x00F5, right=0x021D, bottom=0x012A, target=0x359D, cursor=0x06
3568  1A 08 01 B1 7A 35                      STRCMP_NE_JMP                 start=v[0x108], values=[1], target=0x357A
356E  0D D5 01 F5 00 1D 02 2A 01 9D 35 06    HOTSPOT_RECT                  left=0x01D5, top=0x00F5, right=0x021D, bottom=0x012A, target=0x359D, cursor=0x06
357A  9A 8E 37 B3 83 35                      STRCMP_NE_JMP                 start=v[0x08E], values=[7, 3], target=0x3583
3580  30 03 3B                               HOTSPOT_BOTTOM_4              target=0x3B03
3583  0E CD 35                               HOTSPOT_LEFT                  target=0x35CD
3586  0F D3 35                               HOTSPOT_RIGHT                 target=0x35D3
3589  13                                     INPUTLOOPEND                  
358A  96 9D B1                               LOADSTRING                    dst=v[0x09D], values=[1]
358D  18 15 39                               CALL                          target=0x3915
3590  96 8E 37 B3                            LOADSTRING                    dst=v[0x08E], values=[7, 3]
3594  15 2D 35                               JMP                           target=0x352D
3597  09 01 0C                               VIDEOREF                      ref=0x0C01 (D[1]=?)
359A  15 FF 35                               JMP                           target=0x35FF
359D  1A 09 01 B0 AF 35                      STRCMP_NE_JMP                 start=v[0x109], values=[0], target=0x35AF
35A3  23 05 01 B0 AF 35                      STRCMP_EQ_JMP                 start=v[0x105], values=[0], target=0x35AF
35A9  4B 00                                  SET_VIDEO_MODE                value=0x00
35AB  16 09 01 B1                            LOADSTRING                    dst=v[0x109], values=[1]
35AF  09 02 0C                               VIDEOREF                      ref=0x0C02 (D[2]=?)
35B2  18 6B 40                               CALL                          target=0x406B
35B5  1A 09 01 B1 C1 35                      STRCMP_NE_JMP                 start=v[0x109], values=[1], target=0x35C1
35BB  4B 01                                  SET_VIDEO_MODE                value=0x01
35BD  16 09 01 B0                            LOADSTRING                    dst=v[0x109], values=[0]
35C1  09 03 0C                               VIDEOREF                      ref=0x0C03 (D[3]=?)
35C4  15 2D 35                               JMP                           target=0x352D
35C7  09 03 0C                               VIDEOREF                      ref=0x0C03 (D[3]=?)
35CA  15 2D 35                               JMP                           target=0x352D
35CD  09 08 0C                               VIDEOREF                      ref=0x0C08 (D[8]=?)
35D0  15 D9 35                               JMP                           target=0x35D9
35D3  09 09 0C                               VIDEOREF                      ref=0x0C09 (D[9]=?)
35D6  15 D9 35                               JMP                           target=0x35D9
35D9  0B                                     INPUTLOOPSTART                
35DA  0E E4 35                               HOTSPOT_LEFT                  target=0x35E4
35DD  0F EA 35                               HOTSPOT_RIGHT                 target=0x35EA
35E0  10 F0 35                               HOTSPOT_CENTER                target=0x35F0
35E3  13                                     INPUTLOOPEND                  
35E4  09 07 0C                               VIDEOREF                      ref=0x0C07 (D[7]=?)
35E7  15 2D 35                               JMP                           target=0x352D
35EA  09 0A 0C                               VIDEOREF                      ref=0x0C0A (D[10]=?)
35ED  15 2D 35                               JMP                           target=0x352D
35F0  09 13 0C                               VIDEOREF                      ref=0x0C13 (D[19]=?)
35F3  03                                     FADEIN_NEXT_VIDEO             
35F4  05                                     FIRSTFRAME_NEXT_VIDEO         
35F5  09 91 14                               VIDEOREF                      ref=0x1491 (FH[145]=?)
35F8  96 8C 30 B2                            LOADSTRING                    dst=v[0x08C], values=[0, 2]
35FC  15 E6 12                               JMP                           target=0x12E6
35FF  0B                                     INPUTLOOPSTART                
3600  0E 1A 36                               HOTSPOT_LEFT                  target=0x361A
3603  0F 20 36                               HOTSPOT_RIGHT                 target=0x3620
3606  A3 99 B0 19 36                         STRCMP_EQ_JMP                 start=v[0x099], values=[0], target=0x3619
360B  0B                                     INPUTLOOPSTART                
360C  0D 39 01 A0 00 6F 01 1E 01 2C 36 00    HOTSPOT_RECT                  left=0x0139, top=0x00A0, right=0x016F, bottom=0x011E, target=0x362C, cursor=0x00
3618  13                                     INPUTLOOPEND                  
3619  13                                     INPUTLOOPEND                  
361A  09 0D 0C                               VIDEOREF                      ref=0x0C0D (D[13]=?)
361D  15 36 36                               JMP                           target=0x3636
3620  09 12 0C                               VIDEOREF                      ref=0x0C12 (D[18]=?)
3623  09 0F 0C                               VIDEOREF                      ref=0x0C0F (D[15]=?)
3626  09 10 0C                               VIDEOREF                      ref=0x0C10 (D[16]=?)
3629  15 36 36                               JMP                           target=0x3636
362C  09 1E 0C                               VIDEOREF                      ref=0x0C1E (D[30]=?)
362F  96 8C 31 B9                            LOADSTRING                    dst=v[0x08C], values=[1, 9]
3633  15 FC 30                               JMP                           target=0x30FC
3636  0B                                     INPUTLOOPSTART                
3637  0E 4A 36                               HOTSPOT_LEFT                  target=0x364A
363A  0F 56 36                               HOTSPOT_RIGHT                 target=0x3656
363D  0D 85 01 B0 00 E7 01 56 01 5C 36 00    HOTSPOT_RECT                  left=0x0185, top=0x00B0, right=0x01E7, bottom=0x0156, target=0x365C, cursor=0x00
3649  13                                     INPUTLOOPEND                  
364A  09 0C 0C                               VIDEOREF                      ref=0x0C0C (D[12]=?)
364D  09 0B 0C                               VIDEOREF                      ref=0x0C0B (D[11]=?)
3650  09 0E 0C                               VIDEOREF                      ref=0x0C0E (D[14]=?)
3653  15 FF 35                               JMP                           target=0x35FF
3656  09 11 0C                               VIDEOREF                      ref=0x0C11 (D[17]=?)
3659  15 FF 35                               JMP                           target=0x35FF
365C  09 05 0C                               VIDEOREF                      ref=0x0C05 (D[5]=?)
365F  15 D9 35                               JMP                           target=0x35D9
3662  31 4B 00 EE 02                         MIDI_CONTROL                  value=0x004B, time=0x02EE
3667  22                                     COPY_BG_TO_FG                 
3668  49                                     PALETTE_MERGE_ONCE            
3669  17 00                                  RET                           value=0x00
366B  37 00 00 50 00 7F 02 8F 01             COPY_RECT_TO_BG               left=0x0000, top=0x0050, right=0x027F, bottom=0x018F
3674  31 63 00 EE 02                         MIDI_CONTROL                  value=0x0063, time=0x02EE
3679  17 00                                  RET                           value=0x00
367B  05                                     FIRSTFRAME_NEXT_VIDEO         
367C  09 06 44                               VIDEOREF                      ref=0x4406 (N[6]=?)
367F  18 62 36                               CALL                          target=0x3662
3682  09 15 44                               VIDEOREF                      ref=0x4415 (N[21]=?)
3685  18 6B 36                               CALL                          target=0x366B
3688  17 00                                  RET                           value=0x00
368A  05                                     FIRSTFRAME_NEXT_VIDEO         
368B  09 0E 08                               VIDEOREF                      ref=0x080E (CH[14]=?)
368E  18 62 36                               CALL                          target=0x3662
3691  02 2A 4C                               PLAYSONG                      ref=0x4C2A (XMI[42]=?)
3694  09 05 08                               VIDEOREF                      ref=0x0805 (CH[5]=?)
3697  18 6B 36                               CALL                          target=0x366B
369A  17 00                                  RET                           value=0x00
369C  05                                     FIRSTFRAME_NEXT_VIDEO         
369D  09 5A 14                               VIDEOREF                      ref=0x145A (FH[90]=?)
36A0  18 62 36                               CALL                          target=0x3662
36A3  09 6F 14                               VIDEOREF                      ref=0x146F (FH[111]=?)
36A6  18 6B 36                               CALL                          target=0x366B
36A9  17 00                                  RET                           value=0x00
36AB  05                                     FIRSTFRAME_NEXT_VIDEO         
36AC  09 59 14                               VIDEOREF                      ref=0x1459 (FH[89]=?)
36AF  18 62 36                               CALL                          target=0x3662
36B2  09 70 14                               VIDEOREF                      ref=0x1470 (FH[112]=?)
36B5  18 6B 36                               CALL                          target=0x366B
36B8  17 00                                  RET                           value=0x00
36BA  05                                     FIRSTFRAME_NEXT_VIDEO         
36BB  09 59 14                               VIDEOREF                      ref=0x1459 (FH[89]=?)
36BE  18 62 36                               CALL                          target=0x3662
36C1  02 2C 4C                               PLAYSONG                      ref=0x4C2C (XMI[44]=?)
36C4  09 5B 14                               VIDEOREF                      ref=0x145B (FH[91]=?)
36C7  18 6B 36                               CALL                          target=0x366B
36CA  17 00                                  RET                           value=0x00
36CC  05                                     FIRSTFRAME_NEXT_VIDEO         
36CD  09 59 14                               VIDEOREF                      ref=0x1459 (FH[89]=?)
36D0  18 62 36                               CALL                          target=0x3662
36D3  09 9D 14                               VIDEOREF                      ref=0x149D (FH[157]=?)
36D6  18 6B 36                               CALL                          target=0x366B
36D9  17 00                                  RET                           value=0x00
36DB  05                                     FIRSTFRAME_NEXT_VIDEO         
36DC  09 63 14                               VIDEOREF                      ref=0x1463 (FH[99]=?)
36DF  18 62 36                               CALL                          target=0x3662
36E2  09 9E 14                               VIDEOREF                      ref=0x149E (FH[158]=?)
36E5  18 6B 36                               CALL                          target=0x366B
36E8  17 00                                  RET                           value=0x00
36EA  05                                     FIRSTFRAME_NEXT_VIDEO         
36EB  09 59 14                               VIDEOREF                      ref=0x1459 (FH[89]=?)
36EE  18 62 36                               CALL                          target=0x3662
36F1  09 9F 14                               VIDEOREF                      ref=0x149F (FH[159]=?)
36F4  18 6B 36                               CALL                          target=0x366B
36F7  17 00                                  RET                           value=0x00
36F9  05                                     FIRSTFRAME_NEXT_VIDEO         
36FA  09 59 14                               VIDEOREF                      ref=0x1459 (FH[89]=?)
36FD  18 62 36                               CALL                          target=0x3662
3700  09 A0 14                               VIDEOREF                      ref=0x14A0 (FH[160]=?)
3703  18 6B 36                               CALL                          target=0x366B
3706  17 00                                  RET                           value=0x00
3708  05                                     FIRSTFRAME_NEXT_VIDEO         
3709  09 7A 28                               VIDEOREF                      ref=0x287A (JHEK[122]=?)
370C  18 62 36                               CALL                          target=0x3662
370F  02 2D 4C                               PLAYSONG                      ref=0x4C2D (XMI[45]=?)
3712  09 7C 28                               VIDEOREF                      ref=0x287C (JHEK[124]=?)
3715  18 6B 36                               CALL                          target=0x366B
3718  17 00                                  RET                           value=0x00
371A  05                                     FIRSTFRAME_NEXT_VIDEO         
371B  09 87 28                               VIDEOREF                      ref=0x2887 (JHEK[135]=?)
371E  18 62 36                               CALL                          target=0x3662
3721  09 8D 28                               VIDEOREF                      ref=0x288D (JHEK[141]=?)
3724  18 6B 36                               CALL                          target=0x366B
3727  17 00                                  RET                           value=0x00
3729  02 19 4C                               PLAYSONG                      ref=0x4C19 (XMI[25]=?)
372C  05                                     FIRSTFRAME_NEXT_VIDEO         
372D  09 0E 18                               VIDEOREF                      ref=0x180E (GA[14]=?)
3730  18 62 36                               CALL                          target=0x3662
3733  09 02 18                               VIDEOREF                      ref=0x1802 (GA[2]=?)
3736  18 6B 36                               CALL                          target=0x366B
3739  17 00                                  RET                           value=0x00
373B  05                                     FIRSTFRAME_NEXT_VIDEO         
373C  09 0E 18                               VIDEOREF                      ref=0x180E (GA[14]=?)
373F  18 62 36                               CALL                          target=0x3662
3742  02 1B 4C                               PLAYSONG                      ref=0x4C1B (XMI[27]=?)
3745  09 07 18                               VIDEOREF                      ref=0x1807 (GA[7]=?)
3748  18 6B 36                               CALL                          target=0x366B
374B  17 00                                  RET                           value=0x00
374D  05                                     FIRSTFRAME_NEXT_VIDEO         
374E  09 0E 18                               VIDEOREF                      ref=0x180E (GA[14]=?)
3751  18 62 36                               CALL                          target=0x3662
3754  09 06 18                               VIDEOREF                      ref=0x1806 (GA[6]=?)
3757  18 6B 36                               CALL                          target=0x366B
375A  17 00                                  RET                           value=0x00
375C  05                                     FIRSTFRAME_NEXT_VIDEO         
375D  09 04 18                               VIDEOREF                      ref=0x1804 (GA[4]=?)
3760  18 62 36                               CALL                          target=0x3662
3763  02 1A 4C                               PLAYSONG                      ref=0x4C1A (XMI[26]=?)
3766  09 05 18                               VIDEOREF                      ref=0x1805 (GA[5]=?)
3769  18 6B 36                               CALL                          target=0x366B
376C  17 00                                  RET                           value=0x00
376E  05                                     FIRSTFRAME_NEXT_VIDEO         
376F  09 03 48                               VIDEOREF                      ref=0x4803 (P[3]=?)
3772  18 62 36                               CALL                          target=0x3662
3775  02 31 4C                               PLAYSONG                      ref=0x4C31 (XMI[49]=?)
3778  09 00 48                               VIDEOREF                      ref=0x4800 (P[0]=?)
377B  18 6B 36                               CALL                          target=0x366B
377E  17 00                                  RET                           value=0x00
3780  05                                     FIRSTFRAME_NEXT_VIDEO         
3781  09 03 48                               VIDEOREF                      ref=0x4803 (P[3]=?)
3784  18 62 36                               CALL                          target=0x3662
3787  09 0B 48                               VIDEOREF                      ref=0x480B (P[11]=?)
378A  18 6B 36                               CALL                          target=0x366B
378D  17 00                                  RET                           value=0x00
378F  05                                     FIRSTFRAME_NEXT_VIDEO         
3790  09 03 48                               VIDEOREF                      ref=0x4803 (P[3]=?)
3793  18 62 36                               CALL                          target=0x3662
3796  09 28 48                               VIDEOREF                      ref=0x4828 (P[40]=?)
3799  18 6B 36                               CALL                          target=0x366B
379C  17 00                                  RET                           value=0x00
379E  05                                     FIRSTFRAME_NEXT_VIDEO         
379F  09 00 20                               VIDEOREF                      ref=0x2000 (HTBD[0]=?)
37A2  18 62 36                               CALL                          target=0x3662
37A5  02 32 4C                               PLAYSONG                      ref=0x4C32 (XMI[50]=?)
37A8  09 03 20                               VIDEOREF                      ref=0x2003 (HTBD[3]=?)
37AB  18 6B 36                               CALL                          target=0x366B
37AE  17 00                                  RET                           value=0x00
37B0  05                                     FIRSTFRAME_NEXT_VIDEO         
37B1  09 76 20                               VIDEOREF                      ref=0x2076 (HTBD[118]=?)
37B4  18 62 36                               CALL                          target=0x3662
37B7  09 71 20                               VIDEOREF                      ref=0x2071 (HTBD[113]=?)
37BA  02 33 4C                               PLAYSONG                      ref=0x4C33 (XMI[51]=?)
37BD  18 6B 36                               CALL                          target=0x366B
37C0  17 00                                  RET                           value=0x00
37C2  05                                     FIRSTFRAME_NEXT_VIDEO         
37C3  09 76 20                               VIDEOREF                      ref=0x2076 (HTBD[118]=?)
37C6  18 62 36                               CALL                          target=0x3662
37C9  02 30 4C                               PLAYSONG                      ref=0x4C30 (XMI[48]=?)
37CC  09 6E 20                               VIDEOREF                      ref=0x206E (HTBD[110]=?)
37CF  18 6B 36                               CALL                          target=0x366B
37D2  17 00                                  RET                           value=0x00
37D4  05                                     FIRSTFRAME_NEXT_VIDEO         
37D5  09 69 10                               VIDEOREF                      ref=0x1069 (DR[105]=?)
37D8  18 62 36                               CALL                          target=0x3662
37DB  02 10 4C                               PLAYSONG                      ref=0x4C10 (XMI[16]=?)
37DE  09 07 10                               VIDEOREF                      ref=0x1007 (DR[7]=?)
37E1  18 6B 36                               CALL                          target=0x366B
37E4  17 00                                  RET                           value=0x00
37E6  05                                     FIRSTFRAME_NEXT_VIDEO         
37E7  09 69 10                               VIDEOREF                      ref=0x1069 (DR[105]=?)
37EA  18 62 36                               CALL                          target=0x3662
37ED  02 07 4C                               PLAYSONG                      ref=0x4C07 (XMI[7]=?)
37F0  09 0B 10                               VIDEOREF                      ref=0x100B (DR[11]=?)
37F3  18 6B 36                               CALL                          target=0x366B
37F6  17 00                                  RET                           value=0x00
37F8  05                                     FIRSTFRAME_NEXT_VIDEO         
37F9  09 0B 44                               VIDEOREF                      ref=0x440B (N[11]=?)
37FC  18 62 36                               CALL                          target=0x3662
37FF  09 05 44                               VIDEOREF                      ref=0x4405 (N[5]=?)
3802  18 6B 36                               CALL                          target=0x366B
3805  17 00                                  RET                           value=0x00
3807  05                                     FIRSTFRAME_NEXT_VIDEO         
3808  09 0A 44                               VIDEOREF                      ref=0x440A (N[10]=?)
380B  18 62 36                               CALL                          target=0x3662
380E  09 0D 44                               VIDEOREF                      ref=0x440D (N[13]=?)
3811  18 6B 36                               CALL                          target=0x366B
3814  17 00                                  RET                           value=0x00
3816  05                                     FIRSTFRAME_NEXT_VIDEO         
3817  09 0B 04                               VIDEOREF                      ref=0x040B (B[11]=?)
381A  18 62 36                               CALL                          target=0x3662
381D  02 07 4C                               PLAYSONG                      ref=0x4C07 (XMI[7]=?)
3820  09 00 04                               VIDEOREF                      ref=0x0400 (B[0]=?)
3823  18 6B 36                               CALL                          target=0x366B
3826  17 00                                  RET                           value=0x00
3828  05                                     FIRSTFRAME_NEXT_VIDEO         
3829  09 6C 20                               VIDEOREF                      ref=0x206C (HTBD[108]=?)
382C  18 62 36                               CALL                          target=0x3662
382F  09 7B 20                               VIDEOREF                      ref=0x207B (HTBD[123]=?)
3832  18 6B 36                               CALL                          target=0x366B
3835  17 00                                  RET                           value=0x00
3837  05                                     FIRSTFRAME_NEXT_VIDEO         
3838  09 75 28                               VIDEOREF                      ref=0x2875 (JHEK[117]=?)
383B  18 62 36                               CALL                          target=0x3662
383E  09 6B 28                               VIDEOREF                      ref=0x286B (JHEK[107]=?)
3841  18 6B 36                               CALL                          target=0x366B
3844  17 00                                  RET                           value=0x00
3846  18 62 36                               CALL                          target=0x3662
3849  09 6C 28                               VIDEOREF                      ref=0x286C (JHEK[108]=?)
384C  18 6B 36                               CALL                          target=0x366B
384F  17 00                                  RET                           value=0x00
3851  18 62 36                               CALL                          target=0x3662
3854  09 6F 28                               VIDEOREF                      ref=0x286F (JHEK[111]=?)
3857  18 6B 36                               CALL                          target=0x366B
385A  17 00                                  RET                           value=0x00
385C  05                                     FIRSTFRAME_NEXT_VIDEO         
385D  09 76 28                               VIDEOREF                      ref=0x2876 (JHEK[118]=?)
3860  18 62 36                               CALL                          target=0x3662
3863  09 70 28                               VIDEOREF                      ref=0x2870 (JHEK[112]=?)
3866  18 6B 36                               CALL                          target=0x366B
3869  17 00                                  RET                           value=0x00
386B  05                                     FIRSTFRAME_NEXT_VIDEO         
386C  09 76 28                               VIDEOREF                      ref=0x2876 (JHEK[118]=?)
386F  18 62 36                               CALL                          target=0x3662
3872  02 34 4C                               PLAYSONG                      ref=0x4C34 (XMI[52]=?)
3875  09 66 28                               VIDEOREF                      ref=0x2866 (JHEK[102]=?)
3878  18 6B 36                               CALL                          target=0x366B
387B  17 00                                  RET                           value=0x00
387D  05                                     FIRSTFRAME_NEXT_VIDEO         
387E  09 76 28                               VIDEOREF                      ref=0x2876 (JHEK[118]=?)
3881  18 62 36                               CALL                          target=0x3662
3884  02 34 4C                               PLAYSONG                      ref=0x4C34 (XMI[52]=?)
3887  09 68 28                               VIDEOREF                      ref=0x2868 (JHEK[104]=?)
388A  18 6B 36                               CALL                          target=0x366B
388D  17 00                                  RET                           value=0x00
388F  05                                     FIRSTFRAME_NEXT_VIDEO         
3890  09 76 28                               VIDEOREF                      ref=0x2876 (JHEK[118]=?)
3893  18 62 36                               CALL                          target=0x3662
3896  09 67 28                               VIDEOREF                      ref=0x2867 (JHEK[103]=?)
3899  18 6B 36                               CALL                          target=0x366B
389C  17 00                                  RET                           value=0x00
389E  05                                     FIRSTFRAME_NEXT_VIDEO         
389F  09 07 08                               VIDEOREF                      ref=0x0807 (CH[7]=?)
38A2  18 62 36                               CALL                          target=0x3662
38A5  02 2B 4C                               PLAYSONG                      ref=0x4C2B (XMI[43]=?)
38A8  09 04 08                               VIDEOREF                      ref=0x0804 (CH[4]=?)
38AB  18 6B 36                               CALL                          target=0x366B
38AE  17 00                                  RET                           value=0x00
38B0  05                                     FIRSTFRAME_NEXT_VIDEO         
38B1  09 25 14                               VIDEOREF                      ref=0x1425 (FH[37]=?)
38B4  18 62 36                               CALL                          target=0x3662
38B7  1A 00 01 B0 C3 38                      STRCMP_NE_JMP                 start=v[0x100], values=[0], target=0x38C3
38BD  02 01 4C                               PLAYSONG                      ref=0x4C01 (XMI[1]=?)
38C0  15 C6 38                               JMP                           target=0x38C6
38C3  02 1D 4C                               PLAYSONG                      ref=0x4C1D (XMI[29]=?)
38C6  09 00 14                               VIDEOREF                      ref=0x1400 (FH[0]=?)
38C9  31 63 00 EE 02                         MIDI_CONTROL                  value=0x0063, time=0x02EE
38CE  17 00                                  RET                           value=0x00
38D0  05                                     FIRSTFRAME_NEXT_VIDEO         
38D1  09 24 14                               VIDEOREF                      ref=0x1424 (FH[36]=?)
38D4  18 62 36                               CALL                          target=0x3662
38D7  02 06 4C                               PLAYSONG                      ref=0x4C06 (XMI[6]=?)
38DA  09 09 14                               VIDEOREF                      ref=0x1409 (FH[9]=?)
38DD  02 39 4C                               PLAYSONG                      ref=0x4C39 (XMI[57]=?)
38E0  18 6B 36                               CALL                          target=0x366B
38E3  17 00                                  RET                           value=0x00
38E5  05                                     FIRSTFRAME_NEXT_VIDEO         
38E6  09 05 14                               VIDEOREF                      ref=0x1405 (FH[5]=?)
38E9  18 62 36                               CALL                          target=0x3662
38EC  02 1F 4C                               PLAYSONG                      ref=0x4C1F (XMI[31]=?)
38EF  09 0D 14                               VIDEOREF                      ref=0x140D (FH[13]=?)
38F2  18 6B 36                               CALL                          target=0x366B
38F5  17 00                                  RET                           value=0x00
38F7  05                                     FIRSTFRAME_NEXT_VIDEO         
38F8  09 09 0C                               VIDEOREF                      ref=0x0C09 (D[9]=?)
38FB  18 62 36                               CALL                          target=0x3662
38FE  1A 00 01 B0 0A 39                      STRCMP_NE_JMP                 start=v[0x100], values=[0], target=0x390A
3904  02 03 4C                               PLAYSONG                      ref=0x4C03 (XMI[3]=?)
3907  15 0D 39                               JMP                           target=0x390D
390A  02 2F 4C                               PLAYSONG                      ref=0x4C2F (XMI[47]=?)
390D  09 1D 0C                               VIDEOREF                      ref=0x0C1D (D[29]=?)
3910  18 6B 36                               CALL                          target=0x366B
3913  17 00                                  RET                           value=0x00
3915  05                                     FIRSTFRAME_NEXT_VIDEO         
3916  09 09 0C                               VIDEOREF                      ref=0x0C09 (D[9]=?)
3919  18 62 36                               CALL                          target=0x3662
391C  1A 00 01 B0 28 39                      STRCMP_NE_JMP                 start=v[0x100], values=[0], target=0x3928
3922  02 03 4C                               PLAYSONG                      ref=0x4C03 (XMI[3]=?)
3925  15 2B 39                               JMP                           target=0x392B
3928  02 2F 4C                               PLAYSONG                      ref=0x4C2F (XMI[47]=?)
392B  09 00 0C                               VIDEOREF                      ref=0x0C00 (D[0]=?)
392E  18 6B 36                               CALL                          target=0x366B
3931  17 00                                  RET                           value=0x00
3933  05                                     FIRSTFRAME_NEXT_VIDEO         
3934  09 0C 2C                               VIDEOREF                      ref=0x2C0C (K[12]=?)
3937  18 62 36                               CALL                          target=0x3662
393A  02 21 4C                               PLAYSONG                      ref=0x4C21 (XMI[33]=?)
393D  09 09 2C                               VIDEOREF                      ref=0x2C09 (K[9]=?)
3940  18 6B 36                               CALL                          target=0x366B
3943  17 00                                  RET                           value=0x00
3945  05                                     FIRSTFRAME_NEXT_VIDEO         
3946  09 0C 2C                               VIDEOREF                      ref=0x2C0C (K[12]=?)
3949  18 62 36                               CALL                          target=0x3662
394C  02 06 4C                               PLAYSONG                      ref=0x4C06 (XMI[6]=?)
394F  09 07 2C                               VIDEOREF                      ref=0x2C07 (K[7]=?)
3952  18 6B 36                               CALL                          target=0x366B
3955  17 00                                  RET                           value=0x00
3957  05                                     FIRSTFRAME_NEXT_VIDEO         
3958  09 19 2C                               VIDEOREF                      ref=0x2C19 (K[25]=?)
395B  02 22 4C                               PLAYSONG                      ref=0x4C22 (XMI[34]=?)
395E  03                                     FADEIN_NEXT_VIDEO             
395F  09 0A 2C                               VIDEOREF                      ref=0x2C0A (K[10]=?)
3962  17 00                                  RET                           value=0x00
3964  05                                     FIRSTFRAME_NEXT_VIDEO         
3965  09 05 2C                               VIDEOREF                      ref=0x2C05 (K[5]=?)
3968  18 62 36                               CALL                          target=0x3662
396B  09 0B 2C                               VIDEOREF                      ref=0x2C0B (K[11]=?)
396E  18 6B 36                               CALL                          target=0x366B
3971  17 00                                  RET                           value=0x00
3973  05                                     FIRSTFRAME_NEXT_VIDEO         
3974  09 03 38                               VIDEOREF                      ref=0x3803 (MB[3]=?)
3977  18 62 36                               CALL                          target=0x3662
397A  02 36 4C                               PLAYSONG                      ref=0x4C36 (XMI[54]=?)
397D  09 02 38                               VIDEOREF                      ref=0x3802 (MB[2]=?)
3980  18 6B 36                               CALL                          target=0x366B
3983  17 00                                  RET                           value=0x00
3985  05                                     FIRSTFRAME_NEXT_VIDEO         
3986  09 08 48                               VIDEOREF                      ref=0x4808 (P[8]=?)
3989  18 62 36                               CALL                          target=0x3662
398C  02 31 4C                               PLAYSONG                      ref=0x4C31 (XMI[49]=?)
398F  09 2B 48                               VIDEOREF                      ref=0x482B (P[43]=?)
3992  18 6B 36                               CALL                          target=0x366B
3995  17 00                                  RET                           value=0x00
3997  05                                     FIRSTFRAME_NEXT_VIDEO         
3998  09 12 00                               VIDEOREF                      ref=0x0012 (AT[18]=?)
399B  18 62 36                               CALL                          target=0x3662
399E  09 18 00                               VIDEOREF                      ref=0x0018 (AT[24]=?)
39A1  18 6B 36                               CALL                          target=0x366B
39A4  17 00                                  RET                           value=0x00
39A6  05                                     FIRSTFRAME_NEXT_VIDEO         
39A7  09 03 00                               VIDEOREF                      ref=0x0003 (AT[3]=?)
39AA  18 62 36                               CALL                          target=0x3662
39AD  09 0B 00                               VIDEOREF                      ref=0x000B (AT[11]=?)
39B0  18 6B 36                               CALL                          target=0x366B
39B3  17 00                                  RET                           value=0x00
39B5  05                                     FIRSTFRAME_NEXT_VIDEO         
39B6  09 0E 2C                               VIDEOREF                      ref=0x2C0E (K[14]=?)
39B9  18 62 36                               CALL                          target=0x3662
39BC  02 1F 4C                               PLAYSONG                      ref=0x4C1F (XMI[31]=?)
39BF  09 08 2C                               VIDEOREF                      ref=0x2C08 (K[8]=?)
39C2  18 6B 36                               CALL                          target=0x366B
39C5  17 00                                  RET                           value=0x00
39C7  31 00 00 32 00                         MIDI_CONTROL                  value=0x0000, time=0x0032
39CC  05                                     FIRSTFRAME_NEXT_VIDEO         
39CD  09 07 00                               VIDEOREF                      ref=0x0007 (AT[7]=?)
39D0  09 10 00                               VIDEOREF                      ref=0x0010 (AT[16]=?)
39D3  17 00                                  RET                           value=0x00
39D5  18 62 36                               CALL                          target=0x3662
39D8  09 1B 00                               VIDEOREF                      ref=0x001B (AT[27]=?)
39DB  18 6B 36                               CALL                          target=0x366B
39DE  17 00                                  RET                           value=0x00
39E0  18 62 36                               CALL                          target=0x3662
39E3  09 1C 00                               VIDEOREF                      ref=0x001C (AT[28]=?)
39E6  18 6B 36                               CALL                          target=0x366B
39E9  17 00                                  RET                           value=0x00
39EB  18 62 36                               CALL                          target=0x3662
39EE  09 1D 00                               VIDEOREF                      ref=0x001D (AT[29]=?)
39F1  18 6B 36                               CALL                          target=0x366B
39F4  17 00                                  RET                           value=0x00
39F6  18 62 36                               CALL                          target=0x3662
39F9  09 1E 00                               VIDEOREF                      ref=0x001E (AT[30]=?)
39FC  18 6B 36                               CALL                          target=0x366B
39FF  17 00                                  RET                           value=0x00
3A01  18 62 36                               CALL                          target=0x3662
3A04  09 1F 00                               VIDEOREF                      ref=0x001F (AT[31]=?)
3A07  18 6B 36                               CALL                          target=0x366B
3A0A  17 00                                  RET                           value=0x00
3A0C  18 62 36                               CALL                          target=0x3662
3A0F  09 20 00                               VIDEOREF                      ref=0x0020 (AT[32]=?)
3A12  18 6B 36                               CALL                          target=0x366B
3A15  17 00                                  RET                           value=0x00
3A17  18 62 36                               CALL                          target=0x3662
3A1A  09 21 00                               VIDEOREF                      ref=0x0021 (AT[33]=?)
3A1D  18 6B 36                               CALL                          target=0x366B
3A20  17 00                                  RET                           value=0x00
3A22  05                                     FIRSTFRAME_NEXT_VIDEO         
3A23  09 07 30                               VIDEOREF                      ref=0x3007 (LA[7]=?)
3A26  18 62 36                               CALL                          target=0x3662
3A29  02 1B 4C                               PLAYSONG                      ref=0x4C1B (XMI[27]=?)
3A2C  09 08 30                               VIDEOREF                      ref=0x3008 (LA[8]=?)
3A2F  18 6B 36                               CALL                          target=0x366B
3A32  17 00                                  RET                           value=0x00
3A34  05                                     FIRSTFRAME_NEXT_VIDEO         
3A35  09 07 30                               VIDEOREF                      ref=0x3007 (LA[7]=?)
3A38  18 62 36                               CALL                          target=0x3662
3A3B  09 02 30                               VIDEOREF                      ref=0x3002 (LA[2]=?)
3A3E  18 6B 36                               CALL                          target=0x366B
3A41  17 00                                  RET                           value=0x00
3A43  08 26 4C                               SETBACKGROUNDSONG             ref=0x4C26 (XMI[38]=?)
3A46  4E 2D 00                               MUSICDELAY                    value=0x002D
3A49  05                                     FIRSTFRAME_NEXT_VIDEO         
3A4A  09 01 40                               VIDEOREF                      ref=0x4001 (MU[1]=?)
3A4D  18 62 36                               CALL                          target=0x3662
3A50  09 00 40                               VIDEOREF                      ref=0x4000 (MU[0]=?)
3A53  18 6B 36                               CALL                          target=0x366B
3A56  1A 00 01 B0 62 3A                      STRCMP_NE_JMP                 start=v[0x100], values=[0], target=0x3A62
3A5C  08 0C 4C                               SETBACKGROUNDSONG             ref=0x4C0C (XMI[12]=?)
3A5F  15 65 3A                               JMP                           target=0x3A65
3A62  08 00 4C                               SETBACKGROUNDSONG             ref=0x4C00 (XMI[0]=?)
3A65  17 00                                  RET                           value=0x00
3A67  05                                     FIRSTFRAME_NEXT_VIDEO         
3A68  09 01 40                               VIDEOREF                      ref=0x4001 (MU[1]=?)
3A6B  18 62 36                               CALL                          target=0x3662
3A6E  09 08 40                               VIDEOREF                      ref=0x4008 (MU[8]=?)
3A71  18 6B 36                               CALL                          target=0x366B
3A74  17 00                                  RET                           value=0x00
3A76  05                                     FIRSTFRAME_NEXT_VIDEO         
3A77  09 01 40                               VIDEOREF                      ref=0x4001 (MU[1]=?)
3A7A  18 62 36                               CALL                          target=0x3662
3A7D  09 0D 40                               VIDEOREF                      ref=0x400D (MU[13]=?)
3A80  18 6B 36                               CALL                          target=0x366B
3A83  17 00                                  RET                           value=0x00
3A85  05                                     FIRSTFRAME_NEXT_VIDEO         
3A86  09 02 40                               VIDEOREF                      ref=0x4002 (MU[2]=?)
3A89  18 62 36                               CALL                          target=0x3662
3A8C  09 0E 40                               VIDEOREF                      ref=0x400E (MU[14]=?)
3A8F  18 6B 36                               CALL                          target=0x366B
3A92  17 00                                  RET                           value=0x00
3A94  05                                     FIRSTFRAME_NEXT_VIDEO         
3A95  09 02 40                               VIDEOREF                      ref=0x4002 (MU[2]=?)
3A98  18 62 36                               CALL                          target=0x3662
3A9B  09 0F 40                               VIDEOREF                      ref=0x400F (MU[15]=?)
3A9E  18 6B 36                               CALL                          target=0x366B
3AA1  17 00                                  RET                           value=0x00
3AA3  05                                     FIRSTFRAME_NEXT_VIDEO         
3AA4  09 02 40                               VIDEOREF                      ref=0x4002 (MU[2]=?)
3AA7  18 62 36                               CALL                          target=0x3662
3AAA  09 10 40                               VIDEOREF                      ref=0x4010 (MU[16]=?)
3AAD  18 6B 36                               CALL                          target=0x366B
3AB0  17 00                                  RET                           value=0x00
3AB2  31 00 00 32 00                         MIDI_CONTROL                  value=0x0000, time=0x0032
3AB7  08 29 4C                               SETBACKGROUNDSONG             ref=0x4C29 (XMI[41]=?)
3ABA  4E BE 00                               MUSICDELAY                    value=0x00BE
3ABD  05                                     FIRSTFRAME_NEXT_VIDEO         
3ABE  09 00 34                               VIDEOREF                      ref=0x3400 (LI[0]=?)
3AC1  22                                     COPY_BG_TO_FG                 
3AC2  49                                     PALETTE_MERGE_ONCE            
3AC3  09 0C 34                               VIDEOREF                      ref=0x340C (LI[12]=?)
3AC6  18 6B 36                               CALL                          target=0x366B
3AC9  1A 00 01 B0 D5 3A                      STRCMP_NE_JMP                 start=v[0x100], values=[0], target=0x3AD5
3ACF  08 0C 4C                               SETBACKGROUNDSONG             ref=0x4C0C (XMI[12]=?)
3AD2  15 D8 3A                               JMP                           target=0x3AD8
3AD5  08 00 4C                               SETBACKGROUNDSONG             ref=0x4C00 (XMI[0]=?)
3AD8  17 00                                  RET                           value=0x00
3ADA  02 28 4C                               PLAYSONG                      ref=0x4C28 (XMI[40]=?)
3ADD  05                                     FIRSTFRAME_NEXT_VIDEO         
3ADE  09 07 34                               VIDEOREF                      ref=0x3407 (LI[7]=?)
3AE1  18 62 36                               CALL                          target=0x3662
3AE4  09 27 34                               VIDEOREF                      ref=0x3427 (LI[39]=?)
3AE7  18 6B 36                               CALL                          target=0x366B
3AEA  17 00                                  RET                           value=0x00
3AEC  09 0D 34                               VIDEOREF                      ref=0x340D (LI[13]=?)
3AEF  17 00                                  RET                           value=0x00
3AF1  02 16 4C                               PLAYSONG                      ref=0x4C16 (XMI[22]=?)
3AF4  05                                     FIRSTFRAME_NEXT_VIDEO         
3AF5  09 6D 3C                               VIDEOREF                      ref=0x3C6D (MC[109]=?)
3AF8  18 62 36                               CALL                          target=0x3662
3AFB  09 56 3C                               VIDEOREF                      ref=0x3C56 (MC[86]=?)
3AFE  18 6B 36                               CALL                          target=0x366B
3B01  17 00                                  RET                           value=0x00
3B03  9A 8E 31 B2 13 3B                      STRCMP_NE_JMP                 start=v[0x08E], values=[1, 2], target=0x3B13
3B09  18 6E 37                               CALL                          target=0x376E
3B0C  96 8E 30 B0                            LOADSTRING                    dst=v[0x08E], values=[0, 0]
3B10  15 F8 16                               JMP                           target=0x16F8
3B13  9A 8E 31 B5 23 3B                      STRCMP_NE_JMP                 start=v[0x08E], values=[1, 5], target=0x3B23
3B19  18 85 39                               CALL                          target=0x3985
3B1C  96 8E 30 B0                            LOADSTRING                    dst=v[0x08E], values=[0, 0]
3B20  15 2D 17                               JMP                           target=0x172D
3B23  9A 8E 34 B6 42 3B                      STRCMP_NE_JMP                 start=v[0x08E], values=[4, 6], target=0x3B42
3B29  09 74 28                               VIDEOREF                      ref=0x2874 (JHEK[116]=?)
3B2C  18 37 38                               CALL                          target=0x3837
3B2F  18 46 38                               CALL                          target=0x3846
3B32  18 51 38                               CALL                          target=0x3851
3B35  09 75 28                               VIDEOREF                      ref=0x2875 (JHEK[117]=?)
3B38  18 5C 38                               CALL                          target=0x385C
3B3B  96 8E 30 B0                            LOADSTRING                    dst=v[0x08E], values=[0, 0]
3B3F  15 92 15                               JMP                           target=0x1592
3B42  9A 8E 34 B4 55 3B                      STRCMP_NE_JMP                 start=v[0x08E], values=[4, 4], target=0x3B55
3B48  18 7D 38                               CALL                          target=0x387D
3B4B  18 8F 38                               CALL                          target=0x388F
3B4E  96 8E 30 B0                            LOADSTRING                    dst=v[0x08E], values=[0, 0]
3B52  15 92 15                               JMP                           target=0x1592
3B55  9A 8E 34 B3 65 3B                      STRCMP_NE_JMP                 start=v[0x08E], values=[4, 3], target=0x3B65
3B5B  18 6B 38                               CALL                          target=0x386B
3B5E  96 8E 30 B0                            LOADSTRING                    dst=v[0x08E], values=[0, 0]
3B62  15 92 15                               JMP                           target=0x1592
3B65  9A 8E 32 B5 75 3B                      STRCMP_NE_JMP                 start=v[0x08E], values=[2, 5], target=0x3B75
3B6B  18 4D 37                               CALL                          target=0x374D
3B6E  96 8E 30 B0                            LOADSTRING                    dst=v[0x08E], values=[0, 0]
3B72  15 7B 14                               JMP                           target=0x147B
3B75  9A 8E 32 B2 85 3B                      STRCMP_NE_JMP                 start=v[0x08E], values=[2, 2], target=0x3B85
3B7B  18 29 37                               CALL                          target=0x3729
3B7E  96 8E 30 B0                            LOADSTRING                    dst=v[0x08E], values=[0, 0]
3B82  15 7B 14                               JMP                           target=0x147B
3B85  9A 8E 31 B8 95 3B                      STRCMP_NE_JMP                 start=v[0x08E], values=[1, 8], target=0x3B95
3B8B  18 9E 37                               CALL                          target=0x379E
3B8E  96 8E 30 B0                            LOADSTRING                    dst=v[0x08E], values=[0, 0]
3B92  15 80 13                               JMP                           target=0x1380
3B95  9A 8E 35 B9 A5 3B                      STRCMP_NE_JMP                 start=v[0x08E], values=[5, 9], target=0x3BA5
3B9B  18 73 39                               CALL                          target=0x3973
3B9E  96 8E 30 B0                            LOADSTRING                    dst=v[0x08E], values=[0, 0]
3BA2  15 3C 34                               JMP                           target=0x343C
3BA5  9A 8E 39 B9 B5 3B                      STRCMP_NE_JMP                 start=v[0x08E], values=[9, 9], target=0x3BB5
3BAB  09 3D 38                               VIDEOREF                      ref=0x383D (MB[61]=?)
3BAE  96 8E 30 B0                            LOADSTRING                    dst=v[0x08E], values=[0, 0]
3BB2  15 3C 34                               JMP                           target=0x343C
3BB5  9A 8E 35 B1 C5 3B                      STRCMP_NE_JMP                 start=v[0x08E], values=[5, 1], target=0x3BC5
3BBB  18 1A 37                               CALL                          target=0x371A
3BBE  96 8E 30 B0                            LOADSTRING                    dst=v[0x08E], values=[0, 0]
3BC2  15 74 2F                               JMP                           target=0x2F74
3BC5  9A 8E 35 B0 D5 3B                      STRCMP_NE_JMP                 start=v[0x08E], values=[5, 0], target=0x3BD5
3BCB  18 08 37                               CALL                          target=0x3708
3BCE  96 8E 30 B0                            LOADSTRING                    dst=v[0x08E], values=[0, 0]
3BD2  15 9A 2E                               JMP                           target=0x2E9A
3BD5  9A 8E 35 B4 E5 3B                      STRCMP_NE_JMP                 start=v[0x08E], values=[5, 4], target=0x3BE5
3BDB  18 F8 37                               CALL                          target=0x37F8
3BDE  96 8E 30 B0                            LOADSTRING                    dst=v[0x08E], values=[0, 0]
3BE2  15 D3 31                               JMP                           target=0x31D3
3BE5  9A 8E 35 B5 F5 3B                      STRCMP_NE_JMP                 start=v[0x08E], values=[5, 5], target=0x3BF5
3BEB  18 07 38                               CALL                          target=0x3807
3BEE  96 8E 30 B0                            LOADSTRING                    dst=v[0x08E], values=[0, 0]
3BF2  15 19 31                               JMP                           target=0x3119
3BF5  9A 8E 35 B6 05 3C                      STRCMP_NE_JMP                 start=v[0x08E], values=[5, 6], target=0x3C05
3BFB  18 7B 36                               CALL                          target=0x367B
3BFE  96 8E 30 B0                            LOADSTRING                    dst=v[0x08E], values=[0, 0]
3C02  15 19 31                               JMP                           target=0x3119
3C05  9A 8E 37 B3 15 3C                      STRCMP_NE_JMP                 start=v[0x08E], values=[7, 3], target=0x3C15
3C0B  18 15 39                               CALL                          target=0x3915
3C0E  96 8E 30 B0                            LOADSTRING                    dst=v[0x08E], values=[0, 0]
3C12  15 2D 35                               JMP                           target=0x352D
3C15  9A 8E 37 B4 25 3C                      STRCMP_NE_JMP                 start=v[0x08E], values=[7, 4], target=0x3C25
3C1B  18 F7 38                               CALL                          target=0x38F7
3C1E  96 8E 30 B0                            LOADSTRING                    dst=v[0x08E], values=[0, 0]
3C22  15 2D 35                               JMP                           target=0x352D
3C25  9A 8E 35 B2 35 3C                      STRCMP_NE_JMP                 start=v[0x08E], values=[5, 2], target=0x3C35
3C2B  18 22 3A                               CALL                          target=0x3A22
3C2E  96 8E 30 B0                            LOADSTRING                    dst=v[0x08E], values=[0, 0]
3C32  15 9B 32                               JMP                           target=0x329B
3C35  9A 8E 35 B3 45 3C                      STRCMP_NE_JMP                 start=v[0x08E], values=[5, 3], target=0x3C45
3C3B  18 34 3A                               CALL                          target=0x3A34
3C3E  96 8E 30 B0                            LOADSTRING                    dst=v[0x08E], values=[0, 0]
3C42  15 9B 32                               JMP                           target=0x329B
3C45  9A 8E 35 B8 55 3C                      STRCMP_NE_JMP                 start=v[0x08E], values=[5, 8], target=0x3C55
3C4B  18 8A 36                               CALL                          target=0x368A
3C4E  96 8E 30 B0                            LOADSTRING                    dst=v[0x08E], values=[0, 0]
3C52  15 9F 30                               JMP                           target=0x309F
3C55  9A 8E 35 B7 65 3C                      STRCMP_NE_JMP                 start=v[0x08E], values=[5, 7], target=0x3C65
3C5B  18 9E 38                               CALL                          target=0x389E
3C5E  96 8E 30 B0                            LOADSTRING                    dst=v[0x08E], values=[0, 0]
3C62  15 FC 2F                               JMP                           target=0x2FFC
3C65  9A 8E 32 B0 75 3C                      STRCMP_NE_JMP                 start=v[0x08E], values=[2, 0], target=0x3C75
3C6B  18 B0 37                               CALL                          target=0x37B0
3C6E  96 8E 30 B0                            LOADSTRING                    dst=v[0x08E], values=[0, 0]
3C72  15 CA 0D                               JMP                           target=0x0DCA
3C75  9A 8E 31 B9 85 3C                      STRCMP_NE_JMP                 start=v[0x08E], values=[1, 9], target=0x3C85
3C7B  18 C2 37                               CALL                          target=0x37C2
3C7E  96 8E 30 B0                            LOADSTRING                    dst=v[0x08E], values=[0, 0]
3C82  15 CA 0D                               JMP                           target=0x0DCA
3C85  9A 8E 32 B1 95 3C                      STRCMP_NE_JMP                 start=v[0x08E], values=[2, 1], target=0x3C95
3C8B  18 28 38                               CALL                          target=0x3828
3C8E  96 8E 30 B0                            LOADSTRING                    dst=v[0x08E], values=[0, 0]
3C92  15 CA 0D                               JMP                           target=0x0DCA
3C95  9A 8E 30 B2 B1 3C                      STRCMP_NE_JMP                 start=v[0x08E], values=[0, 2], target=0x3CB1
3C9B  09 22 14                               VIDEOREF                      ref=0x1422 (FH[34]=?)
3C9E  09 21 14                               VIDEOREF                      ref=0x1421 (FH[33]=?)
3CA1  18 B0 38                               CALL                          target=0x38B0
3CA4  96 8E 30 B0                            LOADSTRING                    dst=v[0x08E], values=[0, 0]
3CA8  09 25 14                               VIDEOREF                      ref=0x1425 (FH[37]=?)
3CAB  09 26 14                               VIDEOREF                      ref=0x1426 (FH[38]=?)
3CAE  15 0D 05                               JMP                           target=0x050D
3CB1  9A 8E 32 B7 C1 3C                      STRCMP_NE_JMP                 start=v[0x08E], values=[2, 7], target=0x3CC1
3CB7  18 67 3A                               CALL                          target=0x3A67
3CBA  96 8E 30 B0                            LOADSTRING                    dst=v[0x08E], values=[0, 0]
3CBE  15 36 0C                               JMP                           target=0x0C36
3CC1  9A 8E 32 B8 D1 3C                      STRCMP_NE_JMP                 start=v[0x08E], values=[2, 8], target=0x3CD1
3CC7  18 76 3A                               CALL                          target=0x3A76
3CCA  96 8E 30 B0                            LOADSTRING                    dst=v[0x08E], values=[0, 0]
3CCE  15 36 0C                               JMP                           target=0x0C36
3CD1  9A 8E 34 B2 E7 3C                      STRCMP_NE_JMP                 start=v[0x08E], values=[4, 2], target=0x3CE7
3CD7  09 06 2C                               VIDEOREF                      ref=0x2C06 (K[6]=?)
3CDA  18 64 39                               CALL                          target=0x3964
3CDD  09 05 2C                               VIDEOREF                      ref=0x2C05 (K[5]=?)
3CE0  96 8E 30 B0                            LOADSTRING                    dst=v[0x08E], values=[0, 0]
3CE4  15 FA 0B                               JMP                           target=0x0BFA
3CE7  9A 8E 34 B0 F7 3C                      STRCMP_NE_JMP                 start=v[0x08E], values=[4, 0], target=0x3CF7
3CED  18 33 39                               CALL                          target=0x3933
3CF0  96 8E 30 B0                            LOADSTRING                    dst=v[0x08E], values=[0, 0]
3CF4  15 88 0A                               JMP                           target=0x0A88
3CF7  9A 8E 33 B8 07 3D                      STRCMP_NE_JMP                 start=v[0x08E], values=[3, 8], target=0x3D07
3CFD  18 45 39                               CALL                          target=0x3945
3D00  96 8E 30 B0                            LOADSTRING                    dst=v[0x08E], values=[0, 0]
3D04  15 88 0A                               JMP                           target=0x0A88
3D07  9A 8E 33 B9 1D 3D                      STRCMP_NE_JMP                 start=v[0x08E], values=[3, 9], target=0x3D1D
3D0D  09 0F 2C                               VIDEOREF                      ref=0x2C0F (K[15]=?)
3D10  18 B5 39                               CALL                          target=0x39B5
3D13  09 0E 2C                               VIDEOREF                      ref=0x2C0E (K[14]=?)
3D16  96 8E 30 B0                            LOADSTRING                    dst=v[0x08E], values=[0, 0]
3D1A  15 88 0A                               JMP                           target=0x0A88
3D1D  9A 8E 32 B6 2D 3D                      STRCMP_NE_JMP                 start=v[0x08E], values=[2, 6], target=0x3D2D
3D23  18 43 3A                               CALL                          target=0x3A43
3D26  96 8E 30 B0                            LOADSTRING                    dst=v[0x08E], values=[0, 0]
3D2A  15 36 0C                               JMP                           target=0x0C36
3D2D  9A 8E 33 B6 3D 3D                      STRCMP_NE_JMP                 start=v[0x08E], values=[3, 6], target=0x3D3D
3D33  18 B2 3A                               CALL                          target=0x3AB2
3D36  96 8E 30 B0                            LOADSTRING                    dst=v[0x08E], values=[0, 0]
3D3A  15 CE 22                               JMP                           target=0x22CE
3D3D  9A 8E 31 B6 4D 3D                      STRCMP_NE_JMP                 start=v[0x08E], values=[1, 6], target=0x3D4D
3D43  18 D4 37                               CALL                          target=0x37D4
3D46  96 8E 30 B0                            LOADSTRING                    dst=v[0x08E], values=[0, 0]
3D4A  15 88 09                               JMP                           target=0x0988
3D4D  9A 8E 31 B7 5D 3D                      STRCMP_NE_JMP                 start=v[0x08E], values=[1, 7], target=0x3D5D
3D53  18 E6 37                               CALL                          target=0x37E6
3D56  96 8E 30 B0                            LOADSTRING                    dst=v[0x08E], values=[0, 0]
3D5A  15 88 09                               JMP                           target=0x0988
3D5D  9A 8E 30 B3 6D 3D                      STRCMP_NE_JMP                 start=v[0x08E], values=[0, 3], target=0x3D6D
3D63  18 D0 38                               CALL                          target=0x38D0
3D66  96 8E 30 B0                            LOADSTRING                    dst=v[0x08E], values=[0, 0]
3D6A  15 93 05                               JMP                           target=0x0593
3D6D  9A 8E 30 B4 83 3D                      STRCMP_NE_JMP                 start=v[0x08E], values=[0, 4], target=0x3D83
3D73  09 06 14                               VIDEOREF                      ref=0x1406 (FH[6]=?)
3D76  18 E5 38                               CALL                          target=0x38E5
3D79  09 05 14                               VIDEOREF                      ref=0x1405 (FH[5]=?)
3D7C  96 8E 30 B0                            LOADSTRING                    dst=v[0x08E], values=[0, 0]
3D80  15 93 05                               JMP                           target=0x0593
3D83  9A 8E 30 B6 93 3D                      STRCMP_NE_JMP                 start=v[0x08E], values=[0, 6], target=0x3D93
3D89  18 9C 36                               CALL                          target=0x369C
3D8C  96 8E 30 B0                            LOADSTRING                    dst=v[0x08E], values=[0, 0]
3D90  15 EC 0F                               JMP                           target=0x0FEC
3D93  9A 8E 31 B1 A3 3D                      STRCMP_NE_JMP                 start=v[0x08E], values=[1, 1], target=0x3DA3
3D99  18 F9 36                               CALL                          target=0x36F9
3D9C  96 8E 30 B0                            LOADSTRING                    dst=v[0x08E], values=[0, 0]
3DA0  15 36 0F                               JMP                           target=0x0F36
3DA3  9A 8E 31 B0 B3 3D                      STRCMP_NE_JMP                 start=v[0x08E], values=[1, 0], target=0x3DB3
3DA9  18 EA 36                               CALL                          target=0x36EA
3DAC  96 8E 30 B0                            LOADSTRING                    dst=v[0x08E], values=[0, 0]
3DB0  15 36 0F                               JMP                           target=0x0F36
3DB3  9A 8E 30 B8 C3 3D                      STRCMP_NE_JMP                 start=v[0x08E], values=[0, 8], target=0x3DC3
3DB9  18 CC 36                               CALL                          target=0x36CC
3DBC  96 8E 30 B0                            LOADSTRING                    dst=v[0x08E], values=[0, 0]
3DC0  15 36 0F                               JMP                           target=0x0F36
3DC3  9A 8E 30 B7 D3 3D                      STRCMP_NE_JMP                 start=v[0x08E], values=[0, 7], target=0x3DD3
3DC9  18 AB 36                               CALL                          target=0x36AB
3DCC  96 8E 30 B0                            LOADSTRING                    dst=v[0x08E], values=[0, 0]
3DD0  15 36 0F                               JMP                           target=0x0F36
3DD3  9A 8E 30 B5 E3 3D                      STRCMP_NE_JMP                 start=v[0x08E], values=[0, 5], target=0x3DE3
3DD9  18 BA 36                               CALL                          target=0x36BA
3DDC  96 8E 30 B0                            LOADSTRING                    dst=v[0x08E], values=[0, 0]
3DE0  15 36 0F                               JMP                           target=0x0F36
3DE3  9A 8E 33 B7 F3 3D                      STRCMP_NE_JMP                 start=v[0x08E], values=[3, 7], target=0x3DF3
3DE9  18 EC 3A                               CALL                          target=0x3AEC
3DEC  96 8E 30 B0                            LOADSTRING                    dst=v[0x08E], values=[0, 0]
3DF0  15 69 2C                               JMP                           target=0x2C69
3DF3  03                                     FADEIN_NEXT_VIDEO             
3DF4  05                                     FIRSTFRAME_NEXT_VIDEO         
3DF5  09 23 00                               VIDEOREF                      ref=0x0023 (AT[35]=?)
3DF8  02 43 4C                               PLAYSONG                      ref=0x4C43 (XMI[67]=?)
3DFB  08 44 4C                               SETBACKGROUNDSONG             ref=0x4C44 (XMI[68]=?)
3DFE  4E B5 04                               MUSICDELAY                    value=0x04B5
3E01  09 23 00                               VIDEOREF                      ref=0x0023 (AT[35]=?)
3E04  08 00 00                               SETBACKGROUNDSONG             ref=0x0000 (AT[0]=?)
3E07  04                                     PALFADEOUT                    
3E08  03                                     FADEIN_NEXT_VIDEO             
3E09  09 16 24                               VIDEOREF                      ref=0x2416 (INTRO[22]=?)
3E0C  09 15 24                               VIDEOREF                      ref=0x2415 (INTRO[21]=?)
3E0F  4D 03                                  PLAYCD                        value=0x03
3E11  19 B0 04                               SLEEP                         ticks=0x04B0
3E14  04                                     PALFADEOUT                    
3E15  23 05 01 B0 21 3E                      STRCMP_EQ_JMP                 start=v[0x105], values=[0], target=0x3E21
3E1B  4B 00                                  SET_VIDEO_MODE                value=0x00
3E1D  16 09 01 B1                            LOADSTRING                    dst=v[0x109], values=[1]
3E21  03                                     FADEIN_NEXT_VIDEO             
3E22  09 05 1C                               VIDEOREF                      ref=0x1C05 (HDISK[5]=?)
3E25  19 B0 04                               SLEEP                         ticks=0x04B0
3E28  16 08 01 B1                            LOADSTRING                    dst=v[0x108], values=[1]
3E2C  96 FB E1                               LOADSTRING                    dst=v[0x0FB], values=[49]
3E2F  96 FA E1                               LOADSTRING                    dst=v[0x0FA], values=[49]
3E32  96 F9 E1                               LOADSTRING                    dst=v[0x0F9], values=[49]
3E35  96 F8 E1                               LOADSTRING                    dst=v[0x0F8], values=[49]
3E38  96 F7 E1                               LOADSTRING                    dst=v[0x0F7], values=[49]
3E3B  96 F6 E1                               LOADSTRING                    dst=v[0x0F6], values=[49]
3E3E  96 F5 E1                               LOADSTRING                    dst=v[0x0F5], values=[49]
3E41  96 F4 E1                               LOADSTRING                    dst=v[0x0F4], values=[49]
3E44  96 F3 E1                               LOADSTRING                    dst=v[0x0F3], values=[49]
3E47  96 F2 E1                               LOADSTRING                    dst=v[0x0F2], values=[49]
3E4A  96 F1 E1                               LOADSTRING                    dst=v[0x0F1], values=[49]
3E4D  96 F0 E1                               LOADSTRING                    dst=v[0x0F0], values=[49]
3E50  96 EF E1                               LOADSTRING                    dst=v[0x0EF], values=[49]
3E53  96 EE E1                               LOADSTRING                    dst=v[0x0EE], values=[49]
3E56  96 ED E1                               LOADSTRING                    dst=v[0x0ED], values=[49]
3E59  96 EC E1                               LOADSTRING                    dst=v[0x0EC], values=[49]
3E5C  96 EB E1                               LOADSTRING                    dst=v[0x0EB], values=[49]
3E5F  96 EA E1                               LOADSTRING                    dst=v[0x0EA], values=[49]
3E62  96 E9 E1                               LOADSTRING                    dst=v[0x0E9], values=[49]
3E65  96 E8 E1                               LOADSTRING                    dst=v[0x0E8], values=[49]
3E68  96 E7 E1                               LOADSTRING                    dst=v[0x0E7], values=[49]
3E6B  96 F9 E1                               LOADSTRING                    dst=v[0x0F9], values=[49]
3E6E  96 E5 B1                               LOADSTRING                    dst=v[0x0E5], values=[1]
3E71  96 E4 B1                               LOADSTRING                    dst=v[0x0E4], values=[1]
3E74  96 E3 B1                               LOADSTRING                    dst=v[0x0E3], values=[1]
3E77  96 E2 B1                               LOADSTRING                    dst=v[0x0E2], values=[1]
3E7A  96 E1 B1                               LOADSTRING                    dst=v[0x0E1], values=[1]
3E7D  96 E0 B1                               LOADSTRING                    dst=v[0x0E0], values=[1]
3E80  96 DF B1                               LOADSTRING                    dst=v[0x0DF], values=[1]
3E83  96 DE B1                               LOADSTRING                    dst=v[0x0DE], values=[1]
3E86  96 DD B1                               LOADSTRING                    dst=v[0x0DD], values=[1]
3E89  96 DC B1                               LOADSTRING                    dst=v[0x0DC], values=[1]
3E8C  96 DB B1                               LOADSTRING                    dst=v[0x0DB], values=[1]
3E8F  96 DA B1                               LOADSTRING                    dst=v[0x0DA], values=[1]
3E92  96 D9 B1                               LOADSTRING                    dst=v[0x0D9], values=[1]
3E95  96 D8 B1                               LOADSTRING                    dst=v[0x0D8], values=[1]
3E98  96 D7 B1                               LOADSTRING                    dst=v[0x0D7], values=[1]
3E9B  96 D6 B1                               LOADSTRING                    dst=v[0x0D6], values=[1]
3E9E  96 D5 B1                               LOADSTRING                    dst=v[0x0D5], values=[1]
3EA1  96 D4 B1                               LOADSTRING                    dst=v[0x0D4], values=[1]
3EA4  96 D3 B1                               LOADSTRING                    dst=v[0x0D3], values=[1]
3EA7  96 D2 B1                               LOADSTRING                    dst=v[0x0D2], values=[1]
3EAA  96 D1 B1                               LOADSTRING                    dst=v[0x0D1], values=[1]
3EAD  96 D0 B1                               LOADSTRING                    dst=v[0x0D0], values=[1]
3EB0  96 CF B1                               LOADSTRING                    dst=v[0x0CF], values=[1]
3EB3  96 CE B1                               LOADSTRING                    dst=v[0x0CE], values=[1]
3EB6  96 CD B1                               LOADSTRING                    dst=v[0x0CD], values=[1]
3EB9  96 CC B1                               LOADSTRING                    dst=v[0x0CC], values=[1]
3EBC  96 CB B1                               LOADSTRING                    dst=v[0x0CB], values=[1]
3EBF  96 CA B1                               LOADSTRING                    dst=v[0x0CA], values=[1]
3EC2  96 C9 B1                               LOADSTRING                    dst=v[0x0C9], values=[1]
3EC5  96 C8 B1                               LOADSTRING                    dst=v[0x0C8], values=[1]
3EC8  96 C7 B1                               LOADSTRING                    dst=v[0x0C7], values=[1]
3ECB  96 C6 B1                               LOADSTRING                    dst=v[0x0C6], values=[1]
3ECE  96 C5 B1                               LOADSTRING                    dst=v[0x0C5], values=[1]
3ED1  96 C4 B1                               LOADSTRING                    dst=v[0x0C4], values=[1]
3ED4  96 C3 B1                               LOADSTRING                    dst=v[0x0C3], values=[1]
3ED7  96 C2 B1                               LOADSTRING                    dst=v[0x0C2], values=[1]
3EDA  96 C1 B1                               LOADSTRING                    dst=v[0x0C1], values=[1]
3EDD  96 C0 B1                               LOADSTRING                    dst=v[0x0C0], values=[1]
3EE0  96 BF B1                               LOADSTRING                    dst=v[0x0BF], values=[1]
3EE3  96 BE B1                               LOADSTRING                    dst=v[0x0BE], values=[1]
3EE6  96 BD B1                               LOADSTRING                    dst=v[0x0BD], values=[1]
3EE9  96 BC B1                               LOADSTRING                    dst=v[0x0BC], values=[1]
3EEC  96 BB B1                               LOADSTRING                    dst=v[0x0BB], values=[1]
3EEF  96 BA B1                               LOADSTRING                    dst=v[0x0BA], values=[1]
3EF2  96 B9 B1                               LOADSTRING                    dst=v[0x0B9], values=[1]
3EF5  96 B8 B1                               LOADSTRING                    dst=v[0x0B8], values=[1]
3EF8  96 B7 B1                               LOADSTRING                    dst=v[0x0B7], values=[1]
3EFB  96 B6 B1                               LOADSTRING                    dst=v[0x0B6], values=[1]
3EFE  96 B5 B1                               LOADSTRING                    dst=v[0x0B5], values=[1]
3F01  96 B4 B1                               LOADSTRING                    dst=v[0x0B4], values=[1]
3F04  96 B3 B1                               LOADSTRING                    dst=v[0x0B3], values=[1]
3F07  96 B2 B1                               LOADSTRING                    dst=v[0x0B2], values=[1]
3F0A  96 B1 B1                               LOADSTRING                    dst=v[0x0B1], values=[1]
3F0D  96 B0 B1                               LOADSTRING                    dst=v[0x0B0], values=[1]
3F10  96 AF B1                               LOADSTRING                    dst=v[0x0AF], values=[1]
3F13  96 AE B1                               LOADSTRING                    dst=v[0x0AE], values=[1]
3F16  96 AD B1                               LOADSTRING                    dst=v[0x0AD], values=[1]
3F19  96 AC B1                               LOADSTRING                    dst=v[0x0AC], values=[1]
3F1C  96 AB B1                               LOADSTRING                    dst=v[0x0AB], values=[1]
3F1F  96 AA B1                               LOADSTRING                    dst=v[0x0AA], values=[1]
3F22  96 A9 B1                               LOADSTRING                    dst=v[0x0A9], values=[1]
3F25  96 A8 B1                               LOADSTRING                    dst=v[0x0A8], values=[1]
3F28  96 A7 B1                               LOADSTRING                    dst=v[0x0A7], values=[1]
3F2B  96 A6 B1                               LOADSTRING                    dst=v[0x0A6], values=[1]
3F2E  96 A5 B1                               LOADSTRING                    dst=v[0x0A5], values=[1]
3F31  96 A4 B1                               LOADSTRING                    dst=v[0x0A4], values=[1]
3F34  96 A3 B1                               LOADSTRING                    dst=v[0x0A3], values=[1]
3F37  96 A2 B1                               LOADSTRING                    dst=v[0x0A2], values=[1]
3F3A  96 A1 B1                               LOADSTRING                    dst=v[0x0A1], values=[1]
3F3D  96 A0 B1                               LOADSTRING                    dst=v[0x0A0], values=[1]
3F40  96 9F B1                               LOADSTRING                    dst=v[0x09F], values=[1]
3F43  96 9E B1                               LOADSTRING                    dst=v[0x09E], values=[1]
3F46  96 9D B1                               LOADSTRING                    dst=v[0x09D], values=[1]
3F49  96 9C B1                               LOADSTRING                    dst=v[0x09C], values=[1]
3F4C  96 9B B1                               LOADSTRING                    dst=v[0x09B], values=[1]
3F4F  96 9A B1                               LOADSTRING                    dst=v[0x09A], values=[1]
3F52  96 99 B1                               LOADSTRING                    dst=v[0x099], values=[1]
3F55  96 00 4F 50 45 4E 40 48 4F 55 53 45 A4 LOADSTRING                    dst=v[0x000], values=[31, 32, 21, 30, 16, 24, 31, 37, 35, 21, 244]
3F62  96 8C 30 B1                            LOADSTRING                    dst=v[0x08C], values=[0, 1]
3F66  16 07 01 A0                            LOADSTRING                    dst=v[0x107], values=[240]
3F6A  2F 19 00                               SAVEGAME                      var=v[0x019]
3F6D  1A 09 01 B1 79 3F                      STRCMP_NE_JMP                 start=v[0x109], values=[1], target=0x3F79
3F73  4B 01                                  SET_VIDEO_MODE                value=0x01
3F75  16 09 01 B0                            LOADSTRING                    dst=v[0x109], values=[0]
3F79  4D 62                                  PLAYCD                        value=0x62
3F7B  15 15 00                               JMP                           target=0x0015
3F7E  3F 63 72 2E 67 72 76 00                LOADSCRIPT                    filename="cr.grv"
3F86  2C F1 18 08                            SET_HOTSPOT_TOP               target=0x18F1, cursor=0x08
3F8A  2D 00 00 00                            SET_HOTSPOT_BOTTOM            target=0x0000, cursor=0x00
3F8E  44 00 00                               SET_HOTSPOT_RIGHT             target=0x0000
3F91  45 00 00                               SET_HOTSPOT_LEFT              target=0x0000
3F94  1A 02 01 B0 9F 3F                      STRCMP_NE_JMP                 start=v[0x102], values=[0], target=0x3F9F
3F9A  17 00                                  RET                           value=0x00
3F9C  15 A8 3F                               JMP                           target=0x3FA8
3F9F  1A 02 01 B1 A8 3F                      STRCMP_NE_JMP                 start=v[0x102], values=[1], target=0x3FA8
3FA5  15 F1 18                               JMP                           target=0x18F1
3FA8  3F 6D 75 2E 67 72 76 00                LOADSCRIPT                    filename="mu.grv"
3FB0  2C F1 18 08                            SET_HOTSPOT_TOP               target=0x18F1, cursor=0x08
3FB4  2D 00 00 00                            SET_HOTSPOT_BOTTOM            target=0x0000, cursor=0x00
3FB8  44 00 00                               SET_HOTSPOT_RIGHT             target=0x0000
3FBB  45 00 00                               SET_HOTSPOT_LEFT              target=0x0000
3FBE  1A 02 01 B0 C9 3F                      STRCMP_NE_JMP                 start=v[0x102], values=[0], target=0x3FC9
3FC4  17 00                                  RET                           value=0x00
3FC6  15 D2 3F                               JMP                           target=0x3FD2
3FC9  1A 02 01 B1 D2 3F                      STRCMP_NE_JMP                 start=v[0x102], values=[1], target=0x3FD2
3FCF  15 F1 18                               JMP                           target=0x18F1
3FD2  3F 6A 68 2E 67 72 76 00                LOADSCRIPT                    filename="jh.grv"
3FDA  2C F1 18 08                            SET_HOTSPOT_TOP               target=0x18F1, cursor=0x08
3FDE  2D 00 00 00                            SET_HOTSPOT_BOTTOM            target=0x0000, cursor=0x00
3FE2  44 00 00                               SET_HOTSPOT_RIGHT             target=0x0000
3FE5  45 00 00                               SET_HOTSPOT_LEFT              target=0x0000
3FE8  1A 02 01 B0 F3 3F                      STRCMP_NE_JMP                 start=v[0x102], values=[0], target=0x3FF3
3FEE  17 00                                  RET                           value=0x00
3FF0  15 FC 3F                               JMP                           target=0x3FFC
3FF3  1A 02 01 B1 FC 3F                      STRCMP_NE_JMP                 start=v[0x102], values=[1], target=0x3FFC
3FF9  15 F1 18                               JMP                           target=0x18F1
3FFC  3F 6D 61 7A 65 2E 67 72 76 00          LOADSCRIPT                    filename="maze.grv"
4006  2C F1 18 08                            SET_HOTSPOT_TOP               target=0x18F1, cursor=0x08
400A  2D 00 00 00                            SET_HOTSPOT_BOTTOM            target=0x0000, cursor=0x00
400E  44 00 00                               SET_HOTSPOT_RIGHT             target=0x0000
4011  45 00 00                               SET_HOTSPOT_LEFT              target=0x0000
4014  1A 02 01 B0 1F 40                      STRCMP_NE_JMP                 start=v[0x102], values=[0], target=0x401F
401A  17 00                                  RET                           value=0x00
401C  15 33 40                               JMP                           target=0x4033
401F  1A 02 01 B1 2B 40                      STRCMP_NE_JMP                 start=v[0x102], values=[1], target=0x402B
4025  15 F1 18                               JMP                           target=0x18F1
4028  15 33 40                               JMP                           target=0x4033
402B  1A 02 01 B2 33 40                      STRCMP_NE_JMP                 start=v[0x102], values=[2], target=0x4033
4031  17 01                                  RET                           value=0x01
4033  3F 67 72 61 74 65 2E 67 72 76 00       LOADSCRIPT                    filename="grate.grv"
403E  2C F1 18 08                            SET_HOTSPOT_TOP               target=0x18F1, cursor=0x08
4042  2D 00 00 00                            SET_HOTSPOT_BOTTOM            target=0x0000, cursor=0x00
4046  44 00 00                               SET_HOTSPOT_RIGHT             target=0x0000
4049  45 00 00                               SET_HOTSPOT_LEFT              target=0x0000
404C  1A 02 01 B0 57 40                      STRCMP_NE_JMP                 start=v[0x102], values=[0], target=0x4057
4052  17 00                                  RET                           value=0x00
4054  15 6B 40                               JMP                           target=0x406B
4057  1A 02 01 B1 63 40                      STRCMP_NE_JMP                 start=v[0x102], values=[1], target=0x4063
405D  15 F1 18                               JMP                           target=0x18F1
4060  15 6B 40                               JMP                           target=0x406B
4063  1A 02 01 B2 6B 40                      STRCMP_NE_JMP                 start=v[0x102], values=[2], target=0x406B
4069  17 01                                  RET                           value=0x01
406B  3F 64 2E 67 72 76 00                   LOADSCRIPT                    filename="d.grv"
4072  2C F1 18 08                            SET_HOTSPOT_TOP               target=0x18F1, cursor=0x08
4076  2D 00 00 00                            SET_HOTSPOT_BOTTOM            target=0x0000, cursor=0x00
407A  44 00 00                               SET_HOTSPOT_RIGHT             target=0x0000
407D  45 00 00                               SET_HOTSPOT_LEFT              target=0x0000
4080  1A 02 01 B0 8B 40                      STRCMP_NE_JMP                 start=v[0x102], values=[0], target=0x408B
4086  17 00                                  RET                           value=0x00
4088  15 94 40                               JMP                           target=0x4094
408B  1A 02 01 B1 94 40                      STRCMP_NE_JMP                 start=v[0x102], values=[1], target=0x4094
4091  15 F1 18                               JMP                           target=0x18F1
4094  3F 6E 2E 67 72 76 00                   LOADSCRIPT                    filename="n.grv"
409B  2C F1 18 08                            SET_HOTSPOT_TOP               target=0x18F1, cursor=0x08
409F  2D 00 00 00                            SET_HOTSPOT_BOTTOM            target=0x0000, cursor=0x00
40A3  44 00 00                               SET_HOTSPOT_RIGHT             target=0x0000
40A6  45 00 00                               SET_HOTSPOT_LEFT              target=0x0000
40A9  1A 02 01 B0 B4 40                      STRCMP_NE_JMP                 start=v[0x102], values=[0], target=0x40B4
40AF  17 00                                  RET                           value=0x00
40B1  15 BD 40                               JMP                           target=0x40BD
40B4  1A 02 01 B1 BD 40                      STRCMP_NE_JMP                 start=v[0x102], values=[1], target=0x40BD
40BA  15 F1 18                               JMP                           target=0x18F1
40BD  3F 70 2E 67 72 76 00                   LOADSCRIPT                    filename="p.grv"
40C4  2C F1 18 08                            SET_HOTSPOT_TOP               target=0x18F1, cursor=0x08
40C8  2D 00 00 00                            SET_HOTSPOT_BOTTOM            target=0x0000, cursor=0x00
40CC  44 00 00                               SET_HOTSPOT_RIGHT             target=0x0000
40CF  45 00 00                               SET_HOTSPOT_LEFT              target=0x0000
40D2  1A 02 01 B0 DD 40                      STRCMP_NE_JMP                 start=v[0x102], values=[0], target=0x40DD
40D8  17 00                                  RET                           value=0x00
40DA  15 E6 40                               JMP                           target=0x40E6
40DD  1A 02 01 B1 E6 40                      STRCMP_NE_JMP                 start=v[0x102], values=[1], target=0x40E6
40E3  15 F1 18                               JMP                           target=0x18F1
40E6  3F 6D 62 2E 67 72 76 00                LOADSCRIPT                    filename="mb.grv"
40EE  2C F1 18 08                            SET_HOTSPOT_TOP               target=0x18F1, cursor=0x08
40F2  2D 00 00 00                            SET_HOTSPOT_BOTTOM            target=0x0000, cursor=0x00
40F6  44 00 00                               SET_HOTSPOT_RIGHT             target=0x0000
40F9  45 00 00                               SET_HOTSPOT_LEFT              target=0x0000
40FC  1A 02 01 B0 07 41                      STRCMP_NE_JMP                 start=v[0x102], values=[0], target=0x4107
4102  17 00                                  RET                           value=0x00
4104  15 10 41                               JMP                           target=0x4110
4107  1A 02 01 B1 10 41                      STRCMP_NE_JMP                 start=v[0x102], values=[1], target=0x4110
410D  15 F1 18                               JMP                           target=0x18F1
4110  3F 66 2E 67 72 76 00                   LOADSCRIPT                    filename="f.grv"
4117  2C F1 18 08                            SET_HOTSPOT_TOP               target=0x18F1, cursor=0x08
411B  2D 00 00 00                            SET_HOTSPOT_BOTTOM            target=0x0000, cursor=0x00
411F  44 00 00                               SET_HOTSPOT_RIGHT             target=0x0000
4122  45 00 00                               SET_HOTSPOT_LEFT              target=0x0000
4125  1A 02 01 B0 30 41                      STRCMP_NE_JMP                 start=v[0x102], values=[0], target=0x4130
412B  17 00                                  RET                           value=0x00
412D  15 39 41                               JMP                           target=0x4139
4130  1A 02 01 B1 39 41                      STRCMP_NE_JMP                 start=v[0x102], values=[1], target=0x4139
4136  15 F1 18                               JMP                           target=0x18F1
4139  3F 6B 2E 67 72 76 00                   LOADSCRIPT                    filename="k.grv"
4140  2C F1 18 08                            SET_HOTSPOT_TOP               target=0x18F1, cursor=0x08
4144  2D 00 00 00                            SET_HOTSPOT_BOTTOM            target=0x0000, cursor=0x00
4148  44 00 00                               SET_HOTSPOT_RIGHT             target=0x0000
414B  45 00 00                               SET_HOTSPOT_LEFT              target=0x0000
414E  1A 02 01 B0 59 41                      STRCMP_NE_JMP                 start=v[0x102], values=[0], target=0x4159
4154  17 00                                  RET                           value=0x00
4156  15 62 41                               JMP                           target=0x4162
4159  1A 02 01 B1 62 41                      STRCMP_NE_JMP                 start=v[0x102], values=[1], target=0x4162
415F  15 F1 18                               JMP                           target=0x18F1
4162  3F 62 2E 67 72 76 00                   LOADSCRIPT                    filename="b.grv"
4169  2C F1 18 08                            SET_HOTSPOT_TOP               target=0x18F1, cursor=0x08
416D  2D 00 00 00                            SET_HOTSPOT_BOTTOM            target=0x0000, cursor=0x00
4171  44 00 00                               SET_HOTSPOT_RIGHT             target=0x0000
4174  45 00 00                               SET_HOTSPOT_LEFT              target=0x0000
4177  1A 02 01 B0 82 41                      STRCMP_NE_JMP                 start=v[0x102], values=[0], target=0x4182
417D  17 00                                  RET                           value=0x00
417F  15 8B 41                               JMP                           target=0x418B
4182  1A 02 01 B1 8B 41                      STRCMP_NE_JMP                 start=v[0x102], values=[1], target=0x418B
4188  15 F1 18                               JMP                           target=0x18F1
418B  3F 67 61 2E 67 72 76 00                LOADSCRIPT                    filename="ga.grv"
4193  2C F1 18 08                            SET_HOTSPOT_TOP               target=0x18F1, cursor=0x08
4197  2D 00 00 00                            SET_HOTSPOT_BOTTOM            target=0x0000, cursor=0x00
419B  44 00 00                               SET_HOTSPOT_RIGHT             target=0x0000
419E  45 00 00                               SET_HOTSPOT_LEFT              target=0x0000
41A1  1A 02 01 B0 AC 41                      STRCMP_NE_JMP                 start=v[0x102], values=[0], target=0x41AC
41A7  17 00                                  RET                           value=0x00
41A9  15 B5 41                               JMP                           target=0x41B5
41AC  1A 02 01 B1 B5 41                      STRCMP_NE_JMP                 start=v[0x102], values=[1], target=0x41B5
41B2  15 F1 18                               JMP                           target=0x18F1
41B5  3F 65 6B 2E 67 72 76 00                LOADSCRIPT                    filename="ek.grv"
41BD  2C F1 18 08                            SET_HOTSPOT_TOP               target=0x18F1, cursor=0x08
41C1  2D 00 00 00                            SET_HOTSPOT_BOTTOM            target=0x0000, cursor=0x00
41C5  44 00 00                               SET_HOTSPOT_RIGHT             target=0x0000
41C8  45 00 00                               SET_HOTSPOT_LEFT              target=0x0000
41CB  1A 02 01 B0 D6 41                      STRCMP_NE_JMP                 start=v[0x102], values=[0], target=0x41D6
41D1  17 00                                  RET                           value=0x00
41D3  15 DF 41                               JMP                           target=0x41DF
41D6  1A 02 01 B1 DF 41                      STRCMP_NE_JMP                 start=v[0x102], values=[1], target=0x41DF
41DC  15 F1 18                               JMP                           target=0x18F1
41DF  3F 61 74 2E 67 72 76 00                LOADSCRIPT                    filename="at.grv"
41E7  2C F1 18 08                            SET_HOTSPOT_TOP               target=0x18F1, cursor=0x08
41EB  2D 00 00 00                            SET_HOTSPOT_BOTTOM            target=0x0000, cursor=0x00
41EF  44 00 00                               SET_HOTSPOT_RIGHT             target=0x0000
41F2  45 00 00                               SET_HOTSPOT_LEFT              target=0x0000
41F5  1A 02 01 B0 00 42                      STRCMP_NE_JMP                 start=v[0x102], values=[0], target=0x4200
41FB  17 00                                  RET                           value=0x00
41FD  15 09 42                               JMP                           target=0x4209
4200  1A 02 01 B1 09 42                      STRCMP_NE_JMP                 start=v[0x102], values=[1], target=0x4209
4206  15 F1 18                               JMP                           target=0x18F1
4209  3F 6C 69 2E 67 72 76 00                LOADSCRIPT                    filename="li.grv"
4211  2C F1 18 08                            SET_HOTSPOT_TOP               target=0x18F1, cursor=0x08
4215  2D 00 00 00                            SET_HOTSPOT_BOTTOM            target=0x0000, cursor=0x00
4219  44 00 00                               SET_HOTSPOT_RIGHT             target=0x0000
421C  45 00 00                               SET_HOTSPOT_LEFT              target=0x0000
421F  1A 02 01 B0 2A 42                      STRCMP_NE_JMP                 start=v[0x102], values=[0], target=0x422A
4225  17 00                                  RET                           value=0x00
4227  15 33 42                               JMP                           target=0x4233
422A  1A 02 01 B1 33 42                      STRCMP_NE_JMP                 start=v[0x102], values=[1], target=0x4233
4230  15 F1 18                               JMP                           target=0x18F1
4233  3F 68 2E 67 72 76 00                   LOADSCRIPT                    filename="h.grv"
423A  2C F1 18 08                            SET_HOTSPOT_TOP               target=0x18F1, cursor=0x08
423E  2D 00 00 00                            SET_HOTSPOT_BOTTOM            target=0x0000, cursor=0x00
4242  44 00 00                               SET_HOTSPOT_RIGHT             target=0x0000
4245  45 00 00                               SET_HOTSPOT_LEFT              target=0x0000
4248  1A 02 01 B0 53 42                      STRCMP_NE_JMP                 start=v[0x102], values=[0], target=0x4253
424E  17 00                                  RET                           value=0x00
4250  15 5C 42                               JMP                           target=0x425C
4253  1A 02 01 B1 5C 42                      STRCMP_NE_JMP                 start=v[0x102], values=[1], target=0x425C
4259  15 F1 18                               JMP                           target=0x18F1
425C  3F 63 68 2E 67 72 76 00                LOADSCRIPT                    filename="ch.grv"
4264  2C F1 18 08                            SET_HOTSPOT_TOP               target=0x18F1, cursor=0x08
4268  2D 00 00 00                            SET_HOTSPOT_BOTTOM            target=0x0000, cursor=0x00
426C  44 00 00                               SET_HOTSPOT_RIGHT             target=0x0000
426F  45 00 00                               SET_HOTSPOT_LEFT              target=0x0000
4272  1A 02 01 B0 7D 42                      STRCMP_NE_JMP                 start=v[0x102], values=[0], target=0x427D
4278  17 00                                  RET                           value=0x00
427A  15 86 42                               JMP                           target=0x4286
427D  1A 02 01 B1 86 42                      STRCMP_NE_JMP                 start=v[0x102], values=[1], target=0x4286
4283  15 F1 18                               JMP                           target=0x18F1
4286  3F 68 6D 2E 67 72 76 00                LOADSCRIPT                    filename="hm.grv"
428E  2C F1 18 08                            SET_HOTSPOT_TOP               target=0x18F1, cursor=0x08
4292  2D 00 00 00                            SET_HOTSPOT_BOTTOM            target=0x0000, cursor=0x00
4296  44 00 00                               SET_HOTSPOT_RIGHT             target=0x0000
4299  45 00 00                               SET_HOTSPOT_LEFT              target=0x0000
429C  1A 02 01 B0 A7 42                      STRCMP_NE_JMP                 start=v[0x102], values=[0], target=0x42A7
42A2  17 00                                  RET                           value=0x00
42A4  15 B0 42                               JMP                           target=0x42B0
42A7  1A 02 01 B1 B0 42                      STRCMP_NE_JMP                 start=v[0x102], values=[1], target=0x42B0
42AD  15 F1 18                               JMP                           target=0x18F1
42B0  3F 6C 61 2E 67 72 76 00                LOADSCRIPT                    filename="la.grv"
42B8  2C F1 18 08                            SET_HOTSPOT_TOP               target=0x18F1, cursor=0x08
42BC  2D 00 00 00                            SET_HOTSPOT_BOTTOM            target=0x0000, cursor=0x00
42C0  44 00 00                               SET_HOTSPOT_RIGHT             target=0x0000
42C3  45 00 00                               SET_HOTSPOT_LEFT              target=0x0000
42C6  1A 02 01 B0 D1 42                      STRCMP_NE_JMP                 start=v[0x102], values=[0], target=0x42D1
42CC  17 00                                  RET                           value=0x00
42CE  15 DA 42                               JMP                           target=0x42DA
42D1  1A 02 01 B1 DA 42                      STRCMP_NE_JMP                 start=v[0x102], values=[1], target=0x42DA
42D7  15 F1 18                               JMP                           target=0x18F1
42DA  3F 64 72 2E 67 72 76 00                LOADSCRIPT                    filename="dr.grv"
42E2  2C F1 18 08                            SET_HOTSPOT_TOP               target=0x18F1, cursor=0x08
42E6  2D 00 00 00                            SET_HOTSPOT_BOTTOM            target=0x0000, cursor=0x00
42EA  44 00 00                               SET_HOTSPOT_RIGHT             target=0x0000
42ED  45 00 00                               SET_HOTSPOT_LEFT              target=0x0000
42F0  1A 02 01 B0 FB 42                      STRCMP_NE_JMP                 start=v[0x102], values=[0], target=0x42FB
42F6  17 00                                  RET                           value=0x00
42F8  15 04 43                               JMP                           target=0x4304
42FB  1A 02 01 B1 04 43                      STRCMP_NE_JMP                 start=v[0x102], values=[1], target=0x4304
4301  15 F1 18                               JMP                           target=0x18F1
4304  1A 09 01 B0 19 43                      STRCMP_NE_JMP                 start=v[0x109], values=[0], target=0x4319
430A  23 05 01 B0 16 43                      STRCMP_EQ_JMP                 start=v[0x105], values=[0], target=0x4316
4310  4B 00                                  SET_VIDEO_MODE                value=0x00
4312  16 09 01 B1                            LOADSTRING                    dst=v[0x109], values=[1]
4316  15 25 43                               JMP                           target=0x4325
4319  1A 09 01 B1 25 43                      STRCMP_NE_JMP                 start=v[0x109], values=[1], target=0x4325
431F  4B 01                                  SET_VIDEO_MODE                value=0x01
4321  16 09 01 B0                            LOADSTRING                    dst=v[0x109], values=[0]
4325  17 00                                  RET                           value=0x00
