; T7G/DR.GRV
; size=5546 sha256=9e3bb8735c30275b40ee6b3451b9abd472aa72fb50ab86ed3b9aeff165df2898
; instructions=1515 input_loops=1
;
; VERIFIED CAKE-PUZZLE STATE (v32 trace 20260809-212141 + static flow):
;   v[000..002]  current-piece category counts; [2,2,1] is a valid piece
;   v[004]       number of committed five-cell pieces; 6 completes the board
;   v[017..018]  board column and row used by the cell-mapping subroutines
;   v[019..036]  parallel 30-cell availability/identity table
;   v[037..054]  6x5 cell state at 037h + 5*column + row:
;                 0=unselected, 1=selected in current piece, 9=committed
;   v[0FA]       parent-visible result/progression code; 49 on completion
;   v[102]       native LOADSCRIPT return byte; this child returns 0 on win
;
; The runtime capture selected every cell exactly once in six groups of five.
; Each group satisfied [2,2,1], was changed from state 1 to sentinel 9, and
; incremented v[004].  Completion played gen_e_2.vdx, stored v[0FA]=49, then
; returned to SCRIPT.GRV.

; SEMANTIC ENTRY: dining_room_cake_puzzle_entry
0000  96 92 30 B3                            LOADSTRING                    dst=v[0x092], values=[0, 3]
0004  46                                     RESOURCE_CONTEXT_SAVE
0005  9A FA B4 10 00                         STRCMP_NE_JMP                 start=v[0x0FA], values=[4], target=0x0010
000A  96 FA B5                               LOADSTRING                    dst=v[0x0FA], values=[5]
000D  15 2B 00                               JMP                           target=0x002B
0010  9A FA B2 1F 00                         STRCMP_NE_JMP                 start=v[0x0FA], values=[2], target=0x001F
0015  96 FA B3                               LOADSTRING                    dst=v[0x0FA], values=[3]
0018  07                                     VIDEOFLAG7_ON
0019  09 0D 50                               VIDEOREF                      ref=0x500D (GAMWAV[13]=3_s_2.vdx)
001C  15 2B 00                               JMP                           target=0x002B
001F  9A FA B0 2B 00                         STRCMP_NE_JMP                 start=v[0x0FA], values=[0], target=0x002B
0024  96 FA B1                               LOADSTRING                    dst=v[0x0FA], values=[1]
0027  07                                     VIDEOFLAG7_ON
0028  09 0C 50                               VIDEOREF                      ref=0x500C (GAMWAV[12]=3_s_1.vdx)
002B  47                                     RESOURCE_CONTEXT_RESTORE
002C  96 37 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 B0 LOADSTRING                    dst=v[0x037], values=[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
004C  96 00 30 30 30 30 B0                   LOADSTRING                    dst=v[0x000], values=[0, 0, 0, 0, 0]
0053  16 03 01 B0                            LOADSTRING                    dst=v[0x103], values=[0]
0057  16 07 01 B0                            LOADSTRING                    dst=v[0x107], values=[0]
005B  2C 73 03 08                            SET_HOTSPOT_TOP               target=0x0373, cursor=0x08
005F  2D 75 03 06                            SET_HOTSPOT_BOTTOM            target=0x0375, cursor=0x06
0063  44 84 03                               SET_HOTSPOT_RIGHT             target=0x0384
0066  45 84 03                               SET_HOTSPOT_LEFT              target=0x0384
; SEMANTIC BLOCK: cake_selection_feedback_and_validation
0069  36 03 01 B8 A6 00                      CHAR_LESS_JMP                 start=v[0x103], values=[8], target=0x00A6
006F  1A 07 01 B0 81 00                      STRCMP_NE_JMP                 start=v[0x107], values=[0], target=0x0081
0075  46                                     RESOURCE_CONTEXT_SAVE
0076  07                                     VIDEOFLAG7_ON
0077  09 0C 10                               VIDEOREF                      ref=0x100C (DR[12]=dr2.vdx)
007A  1F 07 01                               INC                           var=v[0x107]
007D  47                                     RESOURCE_CONTEXT_RESTORE
007E  15 A6 00                               JMP                           target=0x00A6
0081  1A 07 01 B1 93 00                      STRCMP_NE_JMP                 start=v[0x107], values=[1], target=0x0093
0087  46                                     RESOURCE_CONTEXT_SAVE
0088  07                                     VIDEOFLAG7_ON
0089  09 91 50                               VIDEOREF                      ref=0x5091 (GAMWAV[145]=gen_e_11.vdx)
008C  1F 07 01                               INC                           var=v[0x107]
008F  47                                     RESOURCE_CONTEXT_RESTORE
0090  15 A6 00                               JMP                           target=0x00A6
0093  1A 07 01 B2 A6 00                      STRCMP_NE_JMP                 start=v[0x107], values=[2], target=0x00A6
0099  46                                     RESOURCE_CONTEXT_SAVE
009A  07                                     VIDEOFLAG7_ON
009B  09 0A 50                               VIDEOREF                      ref=0x500A (GAMWAV[10]=3_e_2.vdx)
009E  1F 07 01                               INC                           var=v[0x107]
00A1  16 03 01 B0                            LOADSTRING                    dst=v[0x103], values=[0]
00A5  47                                     RESOURCE_CONTEXT_RESTORE
; A five-cell selection is accepted only when its three category totals are
; exactly [2,2,1].  The 20260809-212141 run exercised this branch six times.
; SEMANTIC BLOCK: validate_cake_piece_category_counts
00A6  9A 00 32 32 B1 B0 00                   STRCMP_NE_JMP                 start=v[0x000], values=[2, 2, 1], target=0x00B0
00AD  15 5B 10                               JMP                           target=0x105B
00B0  9A 00 30 30 B0 DA 00                   STRCMP_NE_JMP                 start=v[0x000], values=[0, 0, 0], target=0x00DA
00B7  96 19 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 30 B0 LOADSTRING                    dst=v[0x019], values=[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
00D7  15 DD 00                               JMP                           target=0x00DD
00DA  18 18 12                               CALL                          target=0x1218
; SEMANTIC BLOCK: cake_board_cell_input_loop
00DD  0B                                     INPUTLOOPSTART
00DE  A3 19 B9 F4 00                         STRCMP_EQ_JMP                 start=v[0x019], values=[9], target=0x00F4
00E3  A3 37 B9 F4 00                         STRCMP_EQ_JMP                 start=v[0x037], values=[9], target=0x00F4
00E8  0D 91 00 7B 00 BE 00 95 00 86 03 09    HOTSPOT_RECT                  left=0x0091, top=0x007B, right=0x00BE, bottom=0x0095, target=0x0386, cursor=0x09
00F4  A3 1E B9 0A 01                         STRCMP_EQ_JMP                 start=v[0x01E], values=[9], target=0x010A
00F9  A3 3C B9 0A 01                         STRCMP_EQ_JMP                 start=v[0x03C], values=[9], target=0x010A
00FE  0D C6 00 79 00 EC 00 92 00 2B 04 0A    HOTSPOT_RECT                  left=0x00C6, top=0x0079, right=0x00EC, bottom=0x0092, target=0x042B, cursor=0x0A
010A  A3 23 B9 20 01                         STRCMP_EQ_JMP                 start=v[0x023], values=[9], target=0x0120
010F  A3 41 B9 20 01                         STRCMP_EQ_JMP                 start=v[0x041], values=[9], target=0x0120
0114  0D EF 00 78 00 18 01 90 00 D0 04 09    HOTSPOT_RECT                  left=0x00EF, top=0x0078, right=0x0118, bottom=0x0090, target=0x04D0, cursor=0x09
0120  A3 28 B9 36 01                         STRCMP_EQ_JMP                 start=v[0x028], values=[9], target=0x0136
0125  A3 46 B9 36 01                         STRCMP_EQ_JMP                 start=v[0x046], values=[9], target=0x0136
012A  0D 1B 01 77 00 43 01 8F 00 75 05 0A    HOTSPOT_RECT                  left=0x011B, top=0x0077, right=0x0143, bottom=0x008F, target=0x0575, cursor=0x0A
0136  A3 2D B9 4C 01                         STRCMP_EQ_JMP                 start=v[0x02D], values=[9], target=0x014C
013B  A3 4B B9 4C 01                         STRCMP_EQ_JMP                 start=v[0x04B], values=[9], target=0x014C
0140  0D 47 01 74 00 6D 01 8C 00 1A 06 09    HOTSPOT_RECT                  left=0x0147, top=0x0074, right=0x016D, bottom=0x008C, target=0x061A, cursor=0x09
014C  A3 32 B9 62 01                         STRCMP_EQ_JMP                 start=v[0x032], values=[9], target=0x0162
0151  A3 50 B9 62 01                         STRCMP_EQ_JMP                 start=v[0x050], values=[9], target=0x0162
0156  0D 72 01 72 00 9A 01 8A 00 BF 06 0A    HOTSPOT_RECT                  left=0x0172, top=0x0072, right=0x019A, bottom=0x008A, target=0x06BF, cursor=0x0A
0162  A3 1A B9 78 01                         STRCMP_EQ_JMP                 start=v[0x01A], values=[9], target=0x0178
0167  A3 38 B9 78 01                         STRCMP_EQ_JMP                 start=v[0x038], values=[9], target=0x0178
016C  0D 8B 00 96 00 B0 00 B2 00 A7 03 0A    HOTSPOT_RECT                  left=0x008B, top=0x0096, right=0x00B0, bottom=0x00B2, target=0x03A7, cursor=0x0A
0178  A3 1F B9 8E 01                         STRCMP_EQ_JMP                 start=v[0x01F], values=[9], target=0x018E
017D  A3 3D B9 8E 01                         STRCMP_EQ_JMP                 start=v[0x03D], values=[9], target=0x018E
0182  0D BD 00 94 00 E5 00 AF 00 4C 04 09    HOTSPOT_RECT                  left=0x00BD, top=0x0094, right=0x00E5, bottom=0x00AF, target=0x044C, cursor=0x09
018E  A3 24 B9 A4 01                         STRCMP_EQ_JMP                 start=v[0x024], values=[9], target=0x01A4
0193  A3 42 B9 A4 01                         STRCMP_EQ_JMP                 start=v[0x042], values=[9], target=0x01A4
0198  0D EB 00 91 00 19 01 AC 00 F1 04 0A    HOTSPOT_RECT                  left=0x00EB, top=0x0091, right=0x0119, bottom=0x00AC, target=0x04F1, cursor=0x0A
01A4  A3 29 B9 BA 01                         STRCMP_EQ_JMP                 start=v[0x029], values=[9], target=0x01BA
01A9  A3 47 B9 BA 01                         STRCMP_EQ_JMP                 start=v[0x047], values=[9], target=0x01BA
01AE  0D 19 01 8F 00 47 01 AA 00 96 05 09    HOTSPOT_RECT                  left=0x0119, top=0x008F, right=0x0147, bottom=0x00AA, target=0x0596, cursor=0x09
01BA  A3 2E B9 D0 01                         STRCMP_EQ_JMP                 start=v[0x02E], values=[9], target=0x01D0
01BF  A3 4C B9 D0 01                         STRCMP_EQ_JMP                 start=v[0x04C], values=[9], target=0x01D0
01C4  0D 4B 01 8D 00 77 01 A7 00 3B 06 0A    HOTSPOT_RECT                  left=0x014B, top=0x008D, right=0x0177, bottom=0x00A7, target=0x063B, cursor=0x0A
01D0  A3 33 B9 E6 01                         STRCMP_EQ_JMP                 start=v[0x033], values=[9], target=0x01E6
01D5  A3 51 B9 E6 01                         STRCMP_EQ_JMP                 start=v[0x051], values=[9], target=0x01E6
01DA  0D 7B 01 8B 00 A9 01 A4 00 E0 06 09    HOTSPOT_RECT                  left=0x017B, top=0x008B, right=0x01A9, bottom=0x00A4, target=0x06E0, cursor=0x09
01E6  A3 1B B9 FC 01                         STRCMP_EQ_JMP                 start=v[0x01B], values=[9], target=0x01FC
01EB  A3 39 B9 FC 01                         STRCMP_EQ_JMP                 start=v[0x039], values=[9], target=0x01FC
01F0  0D 6B 00 B4 00 A2 00 D7 00 C8 03 09    HOTSPOT_RECT                  left=0x006B, top=0x00B4, right=0x00A2, bottom=0x00D7, target=0x03C8, cursor=0x09
01FC  A3 20 B9 12 02                         STRCMP_EQ_JMP                 start=v[0x020], values=[9], target=0x0212
0201  A3 3E B9 12 02                         STRCMP_EQ_JMP                 start=v[0x03E], values=[9], target=0x0212
0206  0D AE 00 B1 00 DD 00 D4 00 6D 04 0A    HOTSPOT_RECT                  left=0x00AE, top=0x00B1, right=0x00DD, bottom=0x00D4, target=0x046D, cursor=0x0A
0212  A3 25 B9 28 02                         STRCMP_EQ_JMP                 start=v[0x025], values=[9], target=0x0228
0217  A3 43 B9 28 02                         STRCMP_EQ_JMP                 start=v[0x043], values=[9], target=0x0228
021C  0D E5 00 AE 00 18 01 D0 00 12 05 09    HOTSPOT_RECT                  left=0x00E5, top=0x00AE, right=0x0118, bottom=0x00D0, target=0x0512, cursor=0x09
0228  A3 2A B9 3E 02                         STRCMP_EQ_JMP                 start=v[0x02A], values=[9], target=0x023E
022D  A3 48 B9 3E 02                         STRCMP_EQ_JMP                 start=v[0x048], values=[9], target=0x023E
0232  0D 18 01 AC 00 4E 01 CC 00 B7 05 0A    HOTSPOT_RECT                  left=0x0118, top=0x00AC, right=0x014E, bottom=0x00CC, target=0x05B7, cursor=0x0A
023E  A3 2F B9 54 02                         STRCMP_EQ_JMP                 start=v[0x02F], values=[9], target=0x0254
0243  A3 4D B9 54 02                         STRCMP_EQ_JMP                 start=v[0x04D], values=[9], target=0x0254
0248  0D 4F 01 A9 00 81 01 CA 00 5C 06 09    HOTSPOT_RECT                  left=0x014F, top=0x00A9, right=0x0181, bottom=0x00CA, target=0x065C, cursor=0x09
0254  A3 34 B9 6A 02                         STRCMP_EQ_JMP                 start=v[0x034], values=[9], target=0x026A
0259  A3 52 B9 6A 02                         STRCMP_EQ_JMP                 start=v[0x052], values=[9], target=0x026A
025E  0D 80 01 A6 00 BA 01 C6 00 01 07 0A    HOTSPOT_RECT                  left=0x0180, top=0x00A6, right=0x01BA, bottom=0x00C6, target=0x0701, cursor=0x0A
026A  A3 1C B9 80 02                         STRCMP_EQ_JMP                 start=v[0x01C], values=[9], target=0x0280
026F  A3 3A B9 80 02                         STRCMP_EQ_JMP                 start=v[0x03A], values=[9], target=0x0280
0274  0D 4D 00 D9 00 90 00 07 01 E9 03 0A    HOTSPOT_RECT                  left=0x004D, top=0x00D9, right=0x0090, bottom=0x0107, target=0x03E9, cursor=0x0A
0280  A3 21 B9 96 02                         STRCMP_EQ_JMP                 start=v[0x021], values=[9], target=0x0296
0285  A3 3F B9 96 02                         STRCMP_EQ_JMP                 start=v[0x03F], values=[9], target=0x0296
028A  0D A2 00 D6 00 D4 00 02 01 8E 04 09    HOTSPOT_RECT                  left=0x00A2, top=0x00D6, right=0x00D4, bottom=0x0102, target=0x048E, cursor=0x09
0296  A3 26 B9 AC 02                         STRCMP_EQ_JMP                 start=v[0x026], values=[9], target=0x02AC
029B  A3 44 B9 AC 02                         STRCMP_EQ_JMP                 start=v[0x044], values=[9], target=0x02AC
02A0  0D DD 00 D3 00 16 01 FE 00 33 05 0A    HOTSPOT_RECT                  left=0x00DD, top=0x00D3, right=0x0116, bottom=0x00FE, target=0x0533, cursor=0x0A
02AC  A3 2B B9 C2 02                         STRCMP_EQ_JMP                 start=v[0x02B], values=[9], target=0x02C2
02B1  A3 49 B9 C2 02                         STRCMP_EQ_JMP                 start=v[0x049], values=[9], target=0x02C2
02B6  0D 17 01 D0 00 55 01 FA 00 D8 05 09    HOTSPOT_RECT                  left=0x0117, top=0x00D0, right=0x0155, bottom=0x00FA, target=0x05D8, cursor=0x09
02C2  A3 30 B9 D8 02                         STRCMP_EQ_JMP                 start=v[0x030], values=[9], target=0x02D8
02C7  A3 4E B9 D8 02                         STRCMP_EQ_JMP                 start=v[0x04E], values=[9], target=0x02D8
02CC  0D 56 01 CB 00 8E 01 F6 00 7D 06 0A    HOTSPOT_RECT                  left=0x0156, top=0x00CB, right=0x018E, bottom=0x00F6, target=0x067D, cursor=0x0A
02D8  A3 35 B9 EE 02                         STRCMP_EQ_JMP                 start=v[0x035], values=[9], target=0x02EE
02DD  A3 53 B9 EE 02                         STRCMP_EQ_JMP                 start=v[0x053], values=[9], target=0x02EE
02E2  0D 97 01 C8 00 D4 01 F1 00 22 07 09    HOTSPOT_RECT                  left=0x0197, top=0x00C8, right=0x01D4, bottom=0x00F1, target=0x0722, cursor=0x09
02EE  A3 1D B9 04 03                         STRCMP_EQ_JMP                 start=v[0x01D], values=[9], target=0x0304
02F3  A3 3B B9 04 03                         STRCMP_EQ_JMP                 start=v[0x03B], values=[9], target=0x0304
02F8  0D 25 00 0B 01 7A 00 49 01 0A 04 09    HOTSPOT_RECT                  left=0x0025, top=0x010B, right=0x007A, bottom=0x0149, target=0x040A, cursor=0x09
0304  A3 22 B9 1A 03                         STRCMP_EQ_JMP                 start=v[0x022], values=[9], target=0x031A
0309  A3 40 B9 1A 03                         STRCMP_EQ_JMP                 start=v[0x040], values=[9], target=0x031A
030E  0D 8F 00 07 01 C7 00 42 01 AF 04 0A    HOTSPOT_RECT                  left=0x008F, top=0x0107, right=0x00C7, bottom=0x0142, target=0x04AF, cursor=0x0A
031A  A3 27 B9 30 03                         STRCMP_EQ_JMP                 start=v[0x027], values=[9], target=0x0330
031F  A3 45 B9 30 03                         STRCMP_EQ_JMP                 start=v[0x045], values=[9], target=0x0330
0324  0D D3 00 01 01 15 01 3D 01 54 05 09    HOTSPOT_RECT                  left=0x00D3, top=0x0101, right=0x0115, bottom=0x013D, target=0x0554, cursor=0x09
0330  A3 2C B9 46 03                         STRCMP_EQ_JMP                 start=v[0x02C], values=[9], target=0x0346
0335  A3 4A B9 46 03                         STRCMP_EQ_JMP                 start=v[0x04A], values=[9], target=0x0346
033A  0D 16 01 FE 00 5E 01 36 01 F9 05 0A    HOTSPOT_RECT                  left=0x0116, top=0x00FE, right=0x015E, bottom=0x0136, target=0x05F9, cursor=0x0A
0346  A3 31 B9 5C 03                         STRCMP_EQ_JMP                 start=v[0x031], values=[9], target=0x035C
034B  A3 4F B9 5C 03                         STRCMP_EQ_JMP                 start=v[0x04F], values=[9], target=0x035C
0350  0D 62 01 F9 00 9E 01 33 01 9E 06 09    HOTSPOT_RECT                  left=0x0162, top=0x00F9, right=0x019E, bottom=0x0133, target=0x069E, cursor=0x09
035C  A3 36 B9 72 03                         STRCMP_EQ_JMP                 start=v[0x036], values=[9], target=0x0372
0361  A3 54 B9 72 03                         STRCMP_EQ_JMP                 start=v[0x054], values=[9], target=0x0372
0366  0D AA 01 F2 00 F3 01 2F 01 43 07 0A    HOTSPOT_RECT                  left=0x01AA, top=0x00F2, right=0x01F3, bottom=0x012F, target=0x0743, cursor=0x0A
0372  13                                     INPUTLOOPEND
0373  43 01                                  RETURNSCRIPT                  value=0x01
0375  07                                     VIDEOFLAG7_ON
0376  46                                     RESOURCE_CONTEXT_SAVE
0377  09 8B 50                               VIDEOREF                      ref=0x508B (GAMWAV[139]=gen_e_5.vdx)
037A  47                                     RESOURCE_CONTEXT_RESTORE
037B  1C 6A 10                               VIDEO_TRANSITION_REF          ref=0x106A (DR[106]=dr_vb.vdx)
037E  18 98 15                               CALL                          target=0x1598
0381  15 00 00                               JMP                           target=0x0000
0384  43 00                                  RETURNSCRIPT                  value=0x00
0386  18 DA 09                               CALL                          target=0x09DA
0389  9A 37 B0 98 03                         STRCMP_NE_JMP                 start=v[0x037], values=[0], target=0x0398
038E  09 03 10                               VIDEOREF                      ref=0x1003 (DR[3]=dr00df.vdx)
0391  9F 37                                  INC                           var=v[0x037]
0393  9F 00                                  INC                           var=v[0x000]
0395  15 A4 03                               JMP                           target=0x03A4
0398  9A 37 B1 A4 03                         STRCMP_NE_JMP                 start=v[0x037], values=[1], target=0x03A4
039D  09 02 10                               VIDEOREF                      ref=0x1002 (DR[2]=dr00db.vdx)
03A0  A0 37                                  DEC                           var=v[0x037]
03A2  A0 00                                  DEC                           var=v[0x000]
03A4  15 69 00                               JMP                           target=0x0069
03A7  18 F1 09                               CALL                          target=0x09F1
03AA  9A 38 B0 B9 03                         STRCMP_NE_JMP                 start=v[0x038], values=[0], target=0x03B9
03AF  09 06 10                               VIDEOREF                      ref=0x1006 (DR[6]=dr01df.vdx)
03B2  9F 38                                  INC                           var=v[0x038]
03B4  9F 02                                  INC                           var=v[0x002]
03B6  15 C5 03                               JMP                           target=0x03C5
03B9  9A 38 B1 C5 03                         STRCMP_NE_JMP                 start=v[0x038], values=[1], target=0x03C5
03BE  09 05 10                               VIDEOREF                      ref=0x1005 (DR[5]=dr01db.vdx)
03C1  A0 1A                                  DEC                           var=v[0x01A]
03C3  A0 02                                  DEC                           var=v[0x002]
03C5  15 69 00                               JMP                           target=0x0069
03C8  18 26 0A                               CALL                          target=0x0A26
03CB  9A 39 B0 DA 03                         STRCMP_NE_JMP                 start=v[0x039], values=[0], target=0x03DA
03D0  09 0A 10                               VIDEOREF                      ref=0x100A (DR[10]=dr02df.vdx)
03D3  9F 39                                  INC                           var=v[0x039]
03D5  9F 02                                  INC                           var=v[0x002]
03D7  15 E6 03                               JMP                           target=0x03E6
03DA  9A 39 B1 E6 03                         STRCMP_NE_JMP                 start=v[0x039], values=[1], target=0x03E6
03DF  09 09 10                               VIDEOREF                      ref=0x1009 (DR[9]=dr02db.vdx)
03E2  A0 39                                  DEC                           var=v[0x039]
03E4  A0 02                                  DEC                           var=v[0x002]
03E6  15 69 00                               JMP                           target=0x0069
03E9  18 3B 0A                               CALL                          target=0x0A3B
03EC  9A 3A B0 FB 03                         STRCMP_NE_JMP                 start=v[0x03A], values=[0], target=0x03FB
03F1  09 0F 10                               VIDEOREF                      ref=0x100F (DR[15]=dr03df.vdx)
03F4  9F 3A                                  INC                           var=v[0x03A]
03F6  9F 00                                  INC                           var=v[0x000]
03F8  15 07 04                               JMP                           target=0x0407
03FB  9A 3A B1 07 04                         STRCMP_NE_JMP                 start=v[0x03A], values=[1], target=0x0407
0400  09 0E 10                               VIDEOREF                      ref=0x100E (DR[14]=dr03db.vdx)
0403  A0 3A                                  DEC                           var=v[0x03A]
0405  A0 00                                  DEC                           var=v[0x000]
0407  15 69 00                               JMP                           target=0x0069
040A  18 53 0A                               CALL                          target=0x0A53
040D  9A 3B B0 1C 04                         STRCMP_NE_JMP                 start=v[0x03B], values=[0], target=0x041C
0412  09 12 10                               VIDEOREF                      ref=0x1012 (DR[18]=dr04df.vdx)
0415  9F 3B                                  INC                           var=v[0x03B]
0417  9F 01                                  INC                           var=v[0x001]
0419  15 28 04                               JMP                           target=0x0428
041C  9A 3B B1 28 04                         STRCMP_NE_JMP                 start=v[0x03B], values=[1], target=0x0428
0421  09 11 10                               VIDEOREF                      ref=0x1011 (DR[17]=dr04db.vdx)
0424  A0 3B                                  DEC                           var=v[0x03B]
0426  A0 01                                  DEC                           var=v[0x001]
0428  15 69 00                               JMP                           target=0x0069
042B  18 65 0A                               CALL                          target=0x0A65
042E  9A 3C B0 3D 04                         STRCMP_NE_JMP                 start=v[0x03C], values=[0], target=0x043D
0433  09 15 10                               VIDEOREF                      ref=0x1015 (DR[21]=dr05df.vdx)
0436  9F 3C                                  INC                           var=v[0x03C]
0438  9F 01                                  INC                           var=v[0x001]
043A  15 49 04                               JMP                           target=0x0449
043D  9A 3C B1 49 04                         STRCMP_NE_JMP                 start=v[0x03C], values=[1], target=0x0449
0442  09 14 10                               VIDEOREF                      ref=0x1014 (DR[20]=dr05db.vdx)
0445  A0 3C                                  DEC                           var=v[0x03C]
0447  A0 01                                  DEC                           var=v[0x001]
0449  15 69 00                               JMP                           target=0x0069
044C  18 62 0C                               CALL                          target=0x0C62
044F  9A 3D B0 5E 04                         STRCMP_NE_JMP                 start=v[0x03D], values=[0], target=0x045E
0454  09 18 10                               VIDEOREF                      ref=0x1018 (DR[24]=dr06df.vdx)
0457  9F 3D                                  INC                           var=v[0x03D]
0459  9F 01                                  INC                           var=v[0x001]
045B  15 6A 04                               JMP                           target=0x046A
045E  9A 3D B1 6A 04                         STRCMP_NE_JMP                 start=v[0x03D], values=[1], target=0x046A
0463  09 17 10                               VIDEOREF                      ref=0x1017 (DR[23]=dr06db.vdx)
0466  A0 3D                                  DEC                           var=v[0x03D]
0468  A0 01                                  DEC                           var=v[0x001]
046A  15 69 00                               JMP                           target=0x0069
046D  18 8A 0C                               CALL                          target=0x0C8A
0470  9A 3E B0 7F 04                         STRCMP_NE_JMP                 start=v[0x03E], values=[0], target=0x047F
0475  09 1B 10                               VIDEOREF                      ref=0x101B (DR[27]=dr07df.vdx)
0478  9F 3E                                  INC                           var=v[0x03E]
047A  9F 01                                  INC                           var=v[0x001]
047C  15 8B 04                               JMP                           target=0x048B
047F  9A 3E B1 8B 04                         STRCMP_NE_JMP                 start=v[0x03E], values=[1], target=0x048B
0484  09 1A 10                               VIDEOREF                      ref=0x101A (DR[26]=dr07db.vdx)
0487  A0 3E                                  DEC                           var=v[0x03E]
0489  A0 01                                  DEC                           var=v[0x001]
048B  15 69 00                               JMP                           target=0x0069
048E  18 B5 0C                               CALL                          target=0x0CB5
0491  9A 3F B0 A0 04                         STRCMP_NE_JMP                 start=v[0x03F], values=[0], target=0x04A0
0496  09 1E 10                               VIDEOREF                      ref=0x101E (DR[30]=dr08df.vdx)
0499  9F 3F                                  INC                           var=v[0x03F]
049B  9F 00                                  INC                           var=v[0x000]
049D  15 AC 04                               JMP                           target=0x04AC
04A0  9A 3F B1 AC 04                         STRCMP_NE_JMP                 start=v[0x03F], values=[1], target=0x04AC
04A5  09 1D 10                               VIDEOREF                      ref=0x101D (DR[29]=dr08db.vdx)
04A8  A0 3F                                  DEC                           var=v[0x03F]
04AA  A0 00                                  DEC                           var=v[0x000]
04AC  15 69 00                               JMP                           target=0x0069
04AF  18 E3 0C                               CALL                          target=0x0CE3
04B2  9A 40 B0 C1 04                         STRCMP_NE_JMP                 start=v[0x040], values=[0], target=0x04C1
04B7  09 21 10                               VIDEOREF                      ref=0x1021 (DR[33]=dr09df.vdx)
04BA  9F 40                                  INC                           var=v[0x040]
04BC  9F 01                                  INC                           var=v[0x001]
04BE  15 CD 04                               JMP                           target=0x04CD
04C1  9A 40 B1 CD 04                         STRCMP_NE_JMP                 start=v[0x040], values=[1], target=0x04CD
04C6  09 20 10                               VIDEOREF                      ref=0x1020 (DR[32]=dr09db.vdx)
04C9  A0 40                                  DEC                           var=v[0x040]
04CB  A0 01                                  DEC                           var=v[0x001]
04CD  15 69 00                               JMP                           target=0x0069
04D0  18 0B 0D                               CALL                          target=0x0D0B
04D3  9A 41 B0 E2 04                         STRCMP_NE_JMP                 start=v[0x041], values=[0], target=0x04E2
04D8  09 24 10                               VIDEOREF                      ref=0x1024 (DR[36]=dr10df.vdx)
04DB  9F 41                                  INC                           var=v[0x041]
04DD  9F 01                                  INC                           var=v[0x001]
04DF  15 EE 04                               JMP                           target=0x04EE
04E2  9A 41 B1 EE 04                         STRCMP_NE_JMP                 start=v[0x041], values=[1], target=0x04EE
04E7  09 23 10                               VIDEOREF                      ref=0x1023 (DR[35]=dr10db.vdx)
04EA  A0 41                                  DEC                           var=v[0x041]
04EC  A0 01                                  DEC                           var=v[0x001]
04EE  15 69 00                               JMP                           target=0x0069
04F1  18 38 0D                               CALL                          target=0x0D38
04F4  9A 42 B0 03 05                         STRCMP_NE_JMP                 start=v[0x042], values=[0], target=0x0503
04F9  09 27 10                               VIDEOREF                      ref=0x1027 (DR[39]=dr11df.vdx)
04FC  9F 42                                  INC                           var=v[0x042]
04FE  9F 00                                  INC                           var=v[0x000]
0500  15 0F 05                               JMP                           target=0x050F
0503  9A 42 B1 0F 05                         STRCMP_NE_JMP                 start=v[0x042], values=[1], target=0x050F
0508  09 26 10                               VIDEOREF                      ref=0x1026 (DR[38]=dr11db.vdx)
050B  A0 42                                  DEC                           var=v[0x042]
050D  A0 00                                  DEC                           var=v[0x000]
050F  15 69 00                               JMP                           target=0x0069
0512  18 60 0D                               CALL                          target=0x0D60
0515  9A 43 B0 24 05                         STRCMP_NE_JMP                 start=v[0x043], values=[0], target=0x0524
051A  09 2A 10                               VIDEOREF                      ref=0x102A (DR[42]=dr12df.vdx)
051D  9F 43                                  INC                           var=v[0x043]
051F  9F 01                                  INC                           var=v[0x001]
0521  15 30 05                               JMP                           target=0x0530
0524  9A 43 B1 30 05                         STRCMP_NE_JMP                 start=v[0x043], values=[1], target=0x0530
0529  09 29 10                               VIDEOREF                      ref=0x1029 (DR[41]=dr12db.vdx)
052C  A0 43                                  DEC                           var=v[0x043]
052E  A0 01                                  DEC                           var=v[0x001]
0530  15 69 00                               JMP                           target=0x0069
0533  18 8B 0D                               CALL                          target=0x0D8B
0536  9A 44 B0 45 05                         STRCMP_NE_JMP                 start=v[0x044], values=[0], target=0x0545
053B  09 2D 10                               VIDEOREF                      ref=0x102D (DR[45]=dr13df.vdx)
053E  9F 44                                  INC                           var=v[0x044]
0540  9F 01                                  INC                           var=v[0x001]
0542  15 51 05                               JMP                           target=0x0551
0545  9A 44 B1 51 05                         STRCMP_NE_JMP                 start=v[0x044], values=[1], target=0x0551
054A  09 2C 10                               VIDEOREF                      ref=0x102C (DR[44]=dr13db.vdx)
054D  A0 44                                  DEC                           var=v[0x044]
054F  A0 01                                  DEC                           var=v[0x001]
0551  15 69 00                               JMP                           target=0x0069
0554  18 B9 0D                               CALL                          target=0x0DB9
0557  9A 45 B0 66 05                         STRCMP_NE_JMP                 start=v[0x045], values=[0], target=0x0566
055C  09 30 10                               VIDEOREF                      ref=0x1030 (DR[48]=dr14df.vdx)
055F  9F 45                                  INC                           var=v[0x045]
0561  9F 00                                  INC                           var=v[0x000]
0563  15 72 05                               JMP                           target=0x0572
0566  9A 45 B1 72 05                         STRCMP_NE_JMP                 start=v[0x045], values=[1], target=0x0572
056B  09 2F 10                               VIDEOREF                      ref=0x102F (DR[47]=dr14db.vdx)
056E  A0 45                                  DEC                           var=v[0x045]
0570  A0 00                                  DEC                           var=v[0x000]
0572  15 69 00                               JMP                           target=0x0069
0575  18 F4 0D                               CALL                          target=0x0DF4
0578  9A 46 B0 87 05                         STRCMP_NE_JMP                 start=v[0x046], values=[0], target=0x0587
057D  09 33 10                               VIDEOREF                      ref=0x1033 (DR[51]=dr15df.vdx)
0580  9F 46                                  INC                           var=v[0x046]
0582  9F 00                                  INC                           var=v[0x000]
0584  15 93 05                               JMP                           target=0x0593
0587  9A 46 B1 93 05                         STRCMP_NE_JMP                 start=v[0x046], values=[1], target=0x0593
058C  09 32 10                               VIDEOREF                      ref=0x1032 (DR[50]=dr15db.vdx)
058F  A0 46                                  DEC                           var=v[0x046]
0591  A0 00                                  DEC                           var=v[0x000]
0593  15 69 00                               JMP                           target=0x0069
0596  18 31 0E                               CALL                          target=0x0E31
0599  9A 47 B0 A8 05                         STRCMP_NE_JMP                 start=v[0x047], values=[0], target=0x05A8
059E  09 36 10                               VIDEOREF                      ref=0x1036 (DR[54]=dr16df.vdx)
05A1  9F 47                                  INC                           var=v[0x047]
05A3  9F 00                                  INC                           var=v[0x000]
05A5  15 B4 05                               JMP                           target=0x05B4
05A8  9A 47 B1 B4 05                         STRCMP_NE_JMP                 start=v[0x047], values=[1], target=0x05B4
05AD  09 35 10                               VIDEOREF                      ref=0x1035 (DR[53]=dr16db.vdx)
05B0  A0 47                                  DEC                           var=v[0x047]
05B2  A0 00                                  DEC                           var=v[0x000]
05B4  15 69 00                               JMP                           target=0x0069
05B7  18 6C 0E                               CALL                          target=0x0E6C
05BA  9A 48 B0 C9 05                         STRCMP_NE_JMP                 start=v[0x048], values=[0], target=0x05C9
05BF  09 39 10                               VIDEOREF                      ref=0x1039 (DR[57]=dr17df.vdx)
05C2  9F 48                                  INC                           var=v[0x048]
05C4  9F 02                                  INC                           var=v[0x002]
05C6  15 D5 05                               JMP                           target=0x05D5
05C9  9A 48 B1 D5 05                         STRCMP_NE_JMP                 start=v[0x048], values=[1], target=0x05D5
05CE  09 38 10                               VIDEOREF                      ref=0x1038 (DR[56]=dr17db.vdx)
05D1  A0 48                                  DEC                           var=v[0x048]
05D3  A0 02                                  DEC                           var=v[0x002]
05D5  15 69 00                               JMP                           target=0x0069
05D8  18 A7 0E                               CALL                          target=0x0EA7
05DB  9A 49 B0 EA 05                         STRCMP_NE_JMP                 start=v[0x049], values=[0], target=0x05EA
05E0  09 3C 10                               VIDEOREF                      ref=0x103C (DR[60]=dr18df.vdx)
05E3  9F 49                                  INC                           var=v[0x049]
05E5  9F 02                                  INC                           var=v[0x002]
05E7  15 F6 05                               JMP                           target=0x05F6
05EA  9A 49 B1 F6 05                         STRCMP_NE_JMP                 start=v[0x049], values=[1], target=0x05F6
05EF  09 3B 10                               VIDEOREF                      ref=0x103B (DR[59]=dr18db.vdx)
05F2  A0 49                                  DEC                           var=v[0x049]
05F4  A0 02                                  DEC                           var=v[0x002]
05F6  15 69 00                               JMP                           target=0x0069
05F9  18 E5 0E                               CALL                          target=0x0EE5
05FC  9A 4A B0 0B 06                         STRCMP_NE_JMP                 start=v[0x04A], values=[0], target=0x060B
0601  09 3F 10                               VIDEOREF                      ref=0x103F (DR[63]=dr19df.vdx)
0604  9F 4A                                  INC                           var=v[0x04A]
0606  9F 02                                  INC                           var=v[0x002]
0608  15 17 06                               JMP                           target=0x0617
060B  9A 4A B1 17 06                         STRCMP_NE_JMP                 start=v[0x04A], values=[1], target=0x0617
0610  09 3E 10                               VIDEOREF                      ref=0x103E (DR[62]=dr19db.vdx)
0613  A0 4A                                  DEC                           var=v[0x04A]
0615  A0 02                                  DEC                           var=v[0x002]
0617  15 69 00                               JMP                           target=0x0069
061A  18 1D 0F                               CALL                          target=0x0F1D
061D  9A 4B B0 2C 06                         STRCMP_NE_JMP                 start=v[0x04B], values=[0], target=0x062C
0622  09 42 10                               VIDEOREF                      ref=0x1042 (DR[66]=dr20df.vdx)
0625  9F 4B                                  INC                           var=v[0x04B]
0627  9F 01                                  INC                           var=v[0x001]
0629  15 38 06                               JMP                           target=0x0638
062C  9A 4B B1 38 06                         STRCMP_NE_JMP                 start=v[0x04B], values=[1], target=0x0638
0631  09 41 10                               VIDEOREF                      ref=0x1041 (DR[65]=dr20db.vdx)
0634  A0 4B                                  DEC                           var=v[0x04B]
0636  A0 01                                  DEC                           var=v[0x001]
0638  15 69 00                               JMP                           target=0x0069
063B  18 4A 0F                               CALL                          target=0x0F4A
063E  9A 4C B0 4D 06                         STRCMP_NE_JMP                 start=v[0x04C], values=[0], target=0x064D
0643  09 45 10                               VIDEOREF                      ref=0x1045 (DR[69]=dr21df.vdx)
0646  9F 4C                                  INC                           var=v[0x04C]
0648  9F 01                                  INC                           var=v[0x001]
064A  15 59 06                               JMP                           target=0x0659
064D  9A 4C B1 59 06                         STRCMP_NE_JMP                 start=v[0x04C], values=[1], target=0x0659
0652  09 44 10                               VIDEOREF                      ref=0x1044 (DR[68]=dr21db.vdx)
0655  A0 4C                                  DEC                           var=v[0x04C]
0657  A0 01                                  DEC                           var=v[0x001]
0659  15 69 00                               JMP                           target=0x0069
065C  18 72 0F                               CALL                          target=0x0F72
065F  9A 4D B0 6E 06                         STRCMP_NE_JMP                 start=v[0x04D], values=[0], target=0x066E
0664  09 48 10                               VIDEOREF                      ref=0x1048 (DR[72]=dr22df.vdx)
0667  9F 4D                                  INC                           var=v[0x04D]
0669  9F 00                                  INC                           var=v[0x000]
066B  15 7A 06                               JMP                           target=0x067A
066E  9A 4D B1 7A 06                         STRCMP_NE_JMP                 start=v[0x04D], values=[1], target=0x067A
0673  09 47 10                               VIDEOREF                      ref=0x1047 (DR[71]=dr22db.vdx)
0676  A0 4D                                  DEC                           var=v[0x04D]
0678  A0 00                                  DEC                           var=v[0x000]
067A  15 69 00                               JMP                           target=0x0069
067D  18 9D 0F                               CALL                          target=0x0F9D
0680  9A 4E B0 8F 06                         STRCMP_NE_JMP                 start=v[0x04E], values=[0], target=0x068F
0685  09 4B 10                               VIDEOREF                      ref=0x104B (DR[75]=dr23df.vdx)
0688  9F 4E                                  INC                           var=v[0x04E]
068A  9F 00                                  INC                           var=v[0x000]
068C  15 9B 06                               JMP                           target=0x069B
068F  9A 4E B1 9B 06                         STRCMP_NE_JMP                 start=v[0x04E], values=[1], target=0x069B
0694  09 4A 10                               VIDEOREF                      ref=0x104A (DR[74]=dr23db.vdx)
0697  A0 4E                                  DEC                           var=v[0x04E]
0699  A0 00                                  DEC                           var=v[0x000]
069B  15 69 00                               JMP                           target=0x0069
069E  18 CB 0F                               CALL                          target=0x0FCB
06A1  9A 4F B0 B0 06                         STRCMP_NE_JMP                 start=v[0x04F], values=[0], target=0x06B0
06A6  09 4E 10                               VIDEOREF                      ref=0x104E (DR[78]=dr24df.vdx)
06A9  9F 4F                                  INC                           var=v[0x04F]
06AB  9F 00                                  INC                           var=v[0x000]
06AD  15 BC 06                               JMP                           target=0x06BC
06B0  9A 4F B1 BC 06                         STRCMP_NE_JMP                 start=v[0x04F], values=[1], target=0x06BC
06B5  09 4D 10                               VIDEOREF                      ref=0x104D (DR[77]=dr24db.vdx)
06B8  A0 4F                                  DEC                           var=v[0x04F]
06BA  A0 00                                  DEC                           var=v[0x000]
06BC  15 69 00                               JMP                           target=0x0069
06BF  18 F3 0F                               CALL                          target=0x0FF3
06C2  9A 50 B0 D1 06                         STRCMP_NE_JMP                 start=v[0x050], values=[0], target=0x06D1
06C7  09 51 10                               VIDEOREF                      ref=0x1051 (DR[81]=dr25df.vdx)
06CA  9F 50                                  INC                           var=v[0x050]
06CC  9F 00                                  INC                           var=v[0x000]
06CE  15 DD 06                               JMP                           target=0x06DD
06D1  9A 50 B1 DD 06                         STRCMP_NE_JMP                 start=v[0x050], values=[1], target=0x06DD
06D6  09 50 10                               VIDEOREF                      ref=0x1050 (DR[80]=dr25db.vdx)
06D9  A0 50                                  DEC                           var=v[0x050]
06DB  A0 00                                  DEC                           var=v[0x000]
06DD  15 69 00                               JMP                           target=0x0069
06E0  18 0A 10                               CALL                          target=0x100A
06E3  9A 51 B0 F2 06                         STRCMP_NE_JMP                 start=v[0x051], values=[0], target=0x06F2
06E8  09 54 10                               VIDEOREF                      ref=0x1054 (DR[84]=dr26df.vdx)
06EB  9F 51                                  INC                           var=v[0x051]
06ED  9F 00                                  INC                           var=v[0x000]
06EF  15 FE 06                               JMP                           target=0x06FE
06F2  9A 51 B1 FE 06                         STRCMP_NE_JMP                 start=v[0x051], values=[1], target=0x06FE
06F7  09 53 10                               VIDEOREF                      ref=0x1053 (DR[83]=dr26db.vdx)
06FA  A0 51                                  DEC                           var=v[0x051]
06FC  A0 00                                  DEC                           var=v[0x000]
06FE  15 69 00                               JMP                           target=0x0069
0701  18 1C 10                               CALL                          target=0x101C
0704  9A 52 B0 13 07                         STRCMP_NE_JMP                 start=v[0x052], values=[0], target=0x0713
0709  09 57 10                               VIDEOREF                      ref=0x1057 (DR[87]=dr27df.vdx)
070C  9F 52                                  INC                           var=v[0x052]
070E  9F 02                                  INC                           var=v[0x002]
0710  15 1F 07                               JMP                           target=0x071F
0713  9A 52 B1 1F 07                         STRCMP_NE_JMP                 start=v[0x052], values=[1], target=0x071F
0718  09 56 10                               VIDEOREF                      ref=0x1056 (DR[86]=dr27db.vdx)
071B  A0 52                                  DEC                           var=v[0x052]
071D  A0 02                                  DEC                           var=v[0x002]
071F  15 69 00                               JMP                           target=0x0069
0722  18 31 10                               CALL                          target=0x1031
0725  9A 53 B0 34 07                         STRCMP_NE_JMP                 start=v[0x053], values=[0], target=0x0734
072A  09 5A 10                               VIDEOREF                      ref=0x105A (DR[90]=dr28df.vdx)
072D  9F 53                                  INC                           var=v[0x053]
072F  9F 01                                  INC                           var=v[0x001]
0731  15 40 07                               JMP                           target=0x0740
0734  9A 53 B1 40 07                         STRCMP_NE_JMP                 start=v[0x053], values=[1], target=0x0740
0739  09 59 10                               VIDEOREF                      ref=0x1059 (DR[89]=dr28db.vdx)
073C  A0 53                                  DEC                           var=v[0x053]
073E  A0 01                                  DEC                           var=v[0x001]
0740  15 69 00                               JMP                           target=0x0069
0743  18 49 10                               CALL                          target=0x1049
0746  9A 54 B0 55 07                         STRCMP_NE_JMP                 start=v[0x054], values=[0], target=0x0755
074B  09 5D 10                               VIDEOREF                      ref=0x105D (DR[93]=dr29df.vdx)
074E  9F 54                                  INC                           var=v[0x054]
0750  9F 01                                  INC                           var=v[0x001]
0752  15 61 07                               JMP                           target=0x0761
0755  9A 54 B1 61 07                         STRCMP_NE_JMP                 start=v[0x054], values=[1], target=0x0761
075A  09 5C 10                               VIDEOREF                      ref=0x105C (DR[92]=dr29db.vdx)
075D  A0 54                                  DEC                           var=v[0x054]
075F  A0 01                                  DEC                           var=v[0x001]
0761  15 69 00                               JMP                           target=0x0069
0764  9A 37 B0 6F 07                         STRCMP_NE_JMP                 start=v[0x037], values=[0], target=0x076F
0769  9C 03 10                               VIDEO_TRANSITION_REF          ref=0x1003 (DR[3]=dr00df.vdx)
076C  15 77 07                               JMP                           target=0x0777
076F  9A 37 B1 77 07                         STRCMP_NE_JMP                 start=v[0x037], values=[1], target=0x0777
0774  9C 02 10                               VIDEO_TRANSITION_REF          ref=0x1002 (DR[2]=dr00db.vdx)
0777  17 00                                  RET                           value=0x00
0779  9A 38 B0 84 07                         STRCMP_NE_JMP                 start=v[0x038], values=[0], target=0x0784
077E  9C 06 10                               VIDEO_TRANSITION_REF          ref=0x1006 (DR[6]=dr01df.vdx)
0781  15 8C 07                               JMP                           target=0x078C
0784  9A 38 B1 8C 07                         STRCMP_NE_JMP                 start=v[0x038], values=[1], target=0x078C
0789  9C 05 10                               VIDEO_TRANSITION_REF          ref=0x1005 (DR[5]=dr01db.vdx)
078C  17 00                                  RET                           value=0x00
078E  9A 39 B0 99 07                         STRCMP_NE_JMP                 start=v[0x039], values=[0], target=0x0799
0793  9C 0A 10                               VIDEO_TRANSITION_REF          ref=0x100A (DR[10]=dr02df.vdx)
0796  15 A1 07                               JMP                           target=0x07A1
0799  9A 39 B1 A1 07                         STRCMP_NE_JMP                 start=v[0x039], values=[1], target=0x07A1
079E  9C 09 10                               VIDEO_TRANSITION_REF          ref=0x1009 (DR[9]=dr02db.vdx)
07A1  17 00                                  RET                           value=0x00
07A3  9A 3A B0 AE 07                         STRCMP_NE_JMP                 start=v[0x03A], values=[0], target=0x07AE
07A8  9C 0F 10                               VIDEO_TRANSITION_REF          ref=0x100F (DR[15]=dr03df.vdx)
07AB  15 B6 07                               JMP                           target=0x07B6
07AE  9A 3A B1 B6 07                         STRCMP_NE_JMP                 start=v[0x03A], values=[1], target=0x07B6
07B3  9C 0E 10                               VIDEO_TRANSITION_REF          ref=0x100E (DR[14]=dr03db.vdx)
07B6  17 00                                  RET                           value=0x00
07B8  9A 3B B0 C3 07                         STRCMP_NE_JMP                 start=v[0x03B], values=[0], target=0x07C3
07BD  9C 12 10                               VIDEO_TRANSITION_REF          ref=0x1012 (DR[18]=dr04df.vdx)
07C0  15 CB 07                               JMP                           target=0x07CB
07C3  9A 3B B1 CB 07                         STRCMP_NE_JMP                 start=v[0x03B], values=[1], target=0x07CB
07C8  9C 11 10                               VIDEO_TRANSITION_REF          ref=0x1011 (DR[17]=dr04db.vdx)
07CB  17 00                                  RET                           value=0x00
07CD  9A 3C B0 D8 07                         STRCMP_NE_JMP                 start=v[0x03C], values=[0], target=0x07D8
07D2  9C 15 10                               VIDEO_TRANSITION_REF          ref=0x1015 (DR[21]=dr05df.vdx)
07D5  15 E0 07                               JMP                           target=0x07E0
07D8  9A 3C B1 E0 07                         STRCMP_NE_JMP                 start=v[0x03C], values=[1], target=0x07E0
07DD  9C 14 10                               VIDEO_TRANSITION_REF          ref=0x1014 (DR[20]=dr05db.vdx)
07E0  17 00                                  RET                           value=0x00
07E2  9A 3D B0 ED 07                         STRCMP_NE_JMP                 start=v[0x03D], values=[0], target=0x07ED
07E7  9C 18 10                               VIDEO_TRANSITION_REF          ref=0x1018 (DR[24]=dr06df.vdx)
07EA  15 F5 07                               JMP                           target=0x07F5
07ED  9A 3D B1 F5 07                         STRCMP_NE_JMP                 start=v[0x03D], values=[1], target=0x07F5
07F2  9C 17 10                               VIDEO_TRANSITION_REF          ref=0x1017 (DR[23]=dr06db.vdx)
07F5  17 00                                  RET                           value=0x00
07F7  9A 3E B0 02 08                         STRCMP_NE_JMP                 start=v[0x03E], values=[0], target=0x0802
07FC  9C 1B 10                               VIDEO_TRANSITION_REF          ref=0x101B (DR[27]=dr07df.vdx)
07FF  15 0A 08                               JMP                           target=0x080A
0802  9A 3E B1 0A 08                         STRCMP_NE_JMP                 start=v[0x03E], values=[1], target=0x080A
0807  9C 1A 10                               VIDEO_TRANSITION_REF          ref=0x101A (DR[26]=dr07db.vdx)
080A  17 00                                  RET                           value=0x00
080C  9A 3F B0 17 08                         STRCMP_NE_JMP                 start=v[0x03F], values=[0], target=0x0817
0811  9C 1E 10                               VIDEO_TRANSITION_REF          ref=0x101E (DR[30]=dr08df.vdx)
0814  15 1F 08                               JMP                           target=0x081F
0817  9A 3F B1 1F 08                         STRCMP_NE_JMP                 start=v[0x03F], values=[1], target=0x081F
081C  9C 1D 10                               VIDEO_TRANSITION_REF          ref=0x101D (DR[29]=dr08db.vdx)
081F  17 00                                  RET                           value=0x00
0821  9A 40 B0 2C 08                         STRCMP_NE_JMP                 start=v[0x040], values=[0], target=0x082C
0826  9C 21 10                               VIDEO_TRANSITION_REF          ref=0x1021 (DR[33]=dr09df.vdx)
0829  15 34 08                               JMP                           target=0x0834
082C  9A 40 B1 34 08                         STRCMP_NE_JMP                 start=v[0x040], values=[1], target=0x0834
0831  9C 20 10                               VIDEO_TRANSITION_REF          ref=0x1020 (DR[32]=dr09db.vdx)
0834  17 00                                  RET                           value=0x00
0836  9A 41 B0 41 08                         STRCMP_NE_JMP                 start=v[0x041], values=[0], target=0x0841
083B  9C 24 10                               VIDEO_TRANSITION_REF          ref=0x1024 (DR[36]=dr10df.vdx)
083E  15 49 08                               JMP                           target=0x0849
0841  9A 41 B1 49 08                         STRCMP_NE_JMP                 start=v[0x041], values=[1], target=0x0849
0846  9C 23 10                               VIDEO_TRANSITION_REF          ref=0x1023 (DR[35]=dr10db.vdx)
0849  17 00                                  RET                           value=0x00
084B  9A 42 B0 56 08                         STRCMP_NE_JMP                 start=v[0x042], values=[0], target=0x0856
0850  9C 27 10                               VIDEO_TRANSITION_REF          ref=0x1027 (DR[39]=dr11df.vdx)
0853  15 5E 08                               JMP                           target=0x085E
0856  9A 42 B1 5E 08                         STRCMP_NE_JMP                 start=v[0x042], values=[1], target=0x085E
085B  9C 26 10                               VIDEO_TRANSITION_REF          ref=0x1026 (DR[38]=dr11db.vdx)
085E  17 00                                  RET                           value=0x00
0860  9A 43 B0 6B 08                         STRCMP_NE_JMP                 start=v[0x043], values=[0], target=0x086B
0865  9C 2A 10                               VIDEO_TRANSITION_REF          ref=0x102A (DR[42]=dr12df.vdx)
0868  15 73 08                               JMP                           target=0x0873
086B  9A 43 B1 73 08                         STRCMP_NE_JMP                 start=v[0x043], values=[1], target=0x0873
0870  9C 29 10                               VIDEO_TRANSITION_REF          ref=0x1029 (DR[41]=dr12db.vdx)
0873  17 00                                  RET                           value=0x00
0875  9A 44 B0 80 08                         STRCMP_NE_JMP                 start=v[0x044], values=[0], target=0x0880
087A  9C 2D 10                               VIDEO_TRANSITION_REF          ref=0x102D (DR[45]=dr13df.vdx)
087D  15 88 08                               JMP                           target=0x0888
0880  9A 44 B1 88 08                         STRCMP_NE_JMP                 start=v[0x044], values=[1], target=0x0888
0885  9C 2C 10                               VIDEO_TRANSITION_REF          ref=0x102C (DR[44]=dr13db.vdx)
0888  17 00                                  RET                           value=0x00
088A  9A 45 B0 95 08                         STRCMP_NE_JMP                 start=v[0x045], values=[0], target=0x0895
088F  9C 30 10                               VIDEO_TRANSITION_REF          ref=0x1030 (DR[48]=dr14df.vdx)
0892  15 9D 08                               JMP                           target=0x089D
0895  9A 45 B1 9D 08                         STRCMP_NE_JMP                 start=v[0x045], values=[1], target=0x089D
089A  9C 2F 10                               VIDEO_TRANSITION_REF          ref=0x102F (DR[47]=dr14db.vdx)
089D  17 00                                  RET                           value=0x00
089F  9A 46 B0 AA 08                         STRCMP_NE_JMP                 start=v[0x046], values=[0], target=0x08AA
08A4  9C 33 10                               VIDEO_TRANSITION_REF          ref=0x1033 (DR[51]=dr15df.vdx)
08A7  15 B2 08                               JMP                           target=0x08B2
08AA  9A 46 B1 B2 08                         STRCMP_NE_JMP                 start=v[0x046], values=[1], target=0x08B2
08AF  9C 32 10                               VIDEO_TRANSITION_REF          ref=0x1032 (DR[50]=dr15db.vdx)
08B2  17 00                                  RET                           value=0x00
08B4  9A 47 B0 BF 08                         STRCMP_NE_JMP                 start=v[0x047], values=[0], target=0x08BF
08B9  9C 36 10                               VIDEO_TRANSITION_REF          ref=0x1036 (DR[54]=dr16df.vdx)
08BC  15 C7 08                               JMP                           target=0x08C7
08BF  9A 47 B1 C7 08                         STRCMP_NE_JMP                 start=v[0x047], values=[1], target=0x08C7
08C4  9C 35 10                               VIDEO_TRANSITION_REF          ref=0x1035 (DR[53]=dr16db.vdx)
08C7  17 00                                  RET                           value=0x00
08C9  9A 48 B0 D4 08                         STRCMP_NE_JMP                 start=v[0x048], values=[0], target=0x08D4
08CE  9C 39 10                               VIDEO_TRANSITION_REF          ref=0x1039 (DR[57]=dr17df.vdx)
08D1  15 DC 08                               JMP                           target=0x08DC
08D4  9A 48 B1 DC 08                         STRCMP_NE_JMP                 start=v[0x048], values=[1], target=0x08DC
08D9  9C 38 10                               VIDEO_TRANSITION_REF          ref=0x1038 (DR[56]=dr17db.vdx)
08DC  17 00                                  RET                           value=0x00
08DE  9A 49 B0 E9 08                         STRCMP_NE_JMP                 start=v[0x049], values=[0], target=0x08E9
08E3  9C 3C 10                               VIDEO_TRANSITION_REF          ref=0x103C (DR[60]=dr18df.vdx)
08E6  15 F1 08                               JMP                           target=0x08F1
08E9  9A 49 B1 F1 08                         STRCMP_NE_JMP                 start=v[0x049], values=[1], target=0x08F1
08EE  9C 3B 10                               VIDEO_TRANSITION_REF          ref=0x103B (DR[59]=dr18db.vdx)
08F1  17 00                                  RET                           value=0x00
08F3  9A 4A B0 FE 08                         STRCMP_NE_JMP                 start=v[0x04A], values=[0], target=0x08FE
08F8  9C 3F 10                               VIDEO_TRANSITION_REF          ref=0x103F (DR[63]=dr19df.vdx)
08FB  15 06 09                               JMP                           target=0x0906
08FE  9A 4A B1 06 09                         STRCMP_NE_JMP                 start=v[0x04A], values=[1], target=0x0906
0903  9C 3E 10                               VIDEO_TRANSITION_REF          ref=0x103E (DR[62]=dr19db.vdx)
0906  17 00                                  RET                           value=0x00
0908  9A 4B B0 13 09                         STRCMP_NE_JMP                 start=v[0x04B], values=[0], target=0x0913
090D  9C 42 10                               VIDEO_TRANSITION_REF          ref=0x1042 (DR[66]=dr20df.vdx)
0910  15 1B 09                               JMP                           target=0x091B
0913  9A 4B B1 1B 09                         STRCMP_NE_JMP                 start=v[0x04B], values=[1], target=0x091B
0918  9C 41 10                               VIDEO_TRANSITION_REF          ref=0x1041 (DR[65]=dr20db.vdx)
091B  17 00                                  RET                           value=0x00
091D  9A 4C B0 28 09                         STRCMP_NE_JMP                 start=v[0x04C], values=[0], target=0x0928
0922  9C 45 10                               VIDEO_TRANSITION_REF          ref=0x1045 (DR[69]=dr21df.vdx)
0925  15 30 09                               JMP                           target=0x0930
0928  9A 4C B1 30 09                         STRCMP_NE_JMP                 start=v[0x04C], values=[1], target=0x0930
092D  9C 44 10                               VIDEO_TRANSITION_REF          ref=0x1044 (DR[68]=dr21db.vdx)
0930  17 00                                  RET                           value=0x00
0932  9A 4D B0 3D 09                         STRCMP_NE_JMP                 start=v[0x04D], values=[0], target=0x093D
0937  9C 48 10                               VIDEO_TRANSITION_REF          ref=0x1048 (DR[72]=dr22df.vdx)
093A  15 45 09                               JMP                           target=0x0945
093D  9A 4D B1 45 09                         STRCMP_NE_JMP                 start=v[0x04D], values=[1], target=0x0945
0942  9C 47 10                               VIDEO_TRANSITION_REF          ref=0x1047 (DR[71]=dr22db.vdx)
0945  17 00                                  RET                           value=0x00
0947  9A 4E B0 52 09                         STRCMP_NE_JMP                 start=v[0x04E], values=[0], target=0x0952
094C  9C 4B 10                               VIDEO_TRANSITION_REF          ref=0x104B (DR[75]=dr23df.vdx)
094F  15 5A 09                               JMP                           target=0x095A
0952  9A 4E B1 5A 09                         STRCMP_NE_JMP                 start=v[0x04E], values=[1], target=0x095A
0957  9C 4A 10                               VIDEO_TRANSITION_REF          ref=0x104A (DR[74]=dr23db.vdx)
095A  17 00                                  RET                           value=0x00
095C  9A 4F B0 67 09                         STRCMP_NE_JMP                 start=v[0x04F], values=[0], target=0x0967
0961  9C 4E 10                               VIDEO_TRANSITION_REF          ref=0x104E (DR[78]=dr24df.vdx)
0964  15 6F 09                               JMP                           target=0x096F
0967  9A 4F B1 6F 09                         STRCMP_NE_JMP                 start=v[0x04F], values=[1], target=0x096F
096C  9C 4D 10                               VIDEO_TRANSITION_REF          ref=0x104D (DR[77]=dr24db.vdx)
096F  17 00                                  RET                           value=0x00
0971  9A 50 B0 7C 09                         STRCMP_NE_JMP                 start=v[0x050], values=[0], target=0x097C
0976  9C 51 10                               VIDEO_TRANSITION_REF          ref=0x1051 (DR[81]=dr25df.vdx)
0979  15 84 09                               JMP                           target=0x0984
097C  9A 50 B1 84 09                         STRCMP_NE_JMP                 start=v[0x050], values=[1], target=0x0984
0981  9C 50 10                               VIDEO_TRANSITION_REF          ref=0x1050 (DR[80]=dr25db.vdx)
0984  17 00                                  RET                           value=0x00
0986  9A 51 B0 91 09                         STRCMP_NE_JMP                 start=v[0x051], values=[0], target=0x0991
098B  9C 54 10                               VIDEO_TRANSITION_REF          ref=0x1054 (DR[84]=dr26df.vdx)
098E  15 99 09                               JMP                           target=0x0999
0991  9A 51 B1 99 09                         STRCMP_NE_JMP                 start=v[0x051], values=[1], target=0x0999
0996  9C 53 10                               VIDEO_TRANSITION_REF          ref=0x1053 (DR[83]=dr26db.vdx)
0999  17 00                                  RET                           value=0x00
099B  9A 52 B0 A6 09                         STRCMP_NE_JMP                 start=v[0x052], values=[0], target=0x09A6
09A0  9C 57 10                               VIDEO_TRANSITION_REF          ref=0x1057 (DR[87]=dr27df.vdx)
09A3  15 AE 09                               JMP                           target=0x09AE
09A6  9A 52 B1 AE 09                         STRCMP_NE_JMP                 start=v[0x052], values=[1], target=0x09AE
09AB  9C 56 10                               VIDEO_TRANSITION_REF          ref=0x1056 (DR[86]=dr27db.vdx)
09AE  17 00                                  RET                           value=0x00
09B0  9A 53 B0 BB 09                         STRCMP_NE_JMP                 start=v[0x053], values=[0], target=0x09BB
09B5  9C 5A 10                               VIDEO_TRANSITION_REF          ref=0x105A (DR[90]=dr28df.vdx)
09B8  15 C3 09                               JMP                           target=0x09C3
09BB  9A 53 B1 C3 09                         STRCMP_NE_JMP                 start=v[0x053], values=[1], target=0x09C3
09C0  9C 59 10                               VIDEO_TRANSITION_REF          ref=0x1059 (DR[89]=dr28db.vdx)
09C3  17 00                                  RET                           value=0x00
09C5  9A 54 B0 D0 09                         STRCMP_NE_JMP                 start=v[0x054], values=[0], target=0x09D0
09CA  9C 5D 10                               VIDEO_TRANSITION_REF          ref=0x105D (DR[93]=dr29df.vdx)
09CD  15 D8 09                               JMP                           target=0x09D8
09D0  9A 54 B1 D8 09                         STRCMP_NE_JMP                 start=v[0x054], values=[1], target=0x09D8
09D5  9C 5C 10                               VIDEO_TRANSITION_REF          ref=0x105C (DR[92]=dr29db.vdx)
09D8  17 00                                  RET                           value=0x00
09DA  1C 68 10                               VIDEO_TRANSITION_REF          ref=0x1068 (DR[104]=dr_tray.vdx)
09DD  18 CD 07                               CALL                          target=0x07CD
09E0  18 79 07                               CALL                          target=0x0779
09E3  18 E2 07                               CALL                          target=0x07E2
09E6  9A 38 B9 EE 09                         STRCMP_NE_JMP                 start=v[0x038], values=[9], target=0x09EE
09EB  18 8E 07                               CALL                          target=0x078E
09EE  07                                     VIDEOFLAG7_ON
09EF  17 00                                  RET                           value=0x00
09F1  1C 68 10                               VIDEO_TRANSITION_REF          ref=0x1068 (DR[104]=dr_tray.vdx)
09F4  9A 37 B0 FF 09                         STRCMP_NE_JMP                 start=v[0x037], values=[0], target=0x09FF
09F9  1C 03 10                               VIDEO_TRANSITION_REF          ref=0x1003 (DR[3]=dr00df.vdx)
09FC  15 07 0A                               JMP                           target=0x0A07
09FF  9A 37 B1 07 0A                         STRCMP_NE_JMP                 start=v[0x037], values=[1], target=0x0A07
0A04  1C 02 10                               VIDEO_TRANSITION_REF          ref=0x1002 (DR[2]=dr00db.vdx)
0A07  9A 3C B0 12 0A                         STRCMP_NE_JMP                 start=v[0x03C], values=[0], target=0x0A12
0A0C  1C 15 10                               VIDEO_TRANSITION_REF          ref=0x1015 (DR[21]=dr05df.vdx)
0A0F  15 1A 0A                               JMP                           target=0x0A1A
0A12  9A 3C B1 1A 0A                         STRCMP_NE_JMP                 start=v[0x03C], values=[1], target=0x0A1A
0A17  1C 14 10                               VIDEO_TRANSITION_REF          ref=0x1014 (DR[20]=dr05db.vdx)
0A1A  18 E2 07                               CALL                          target=0x07E2
0A1D  18 8E 07                               CALL                          target=0x078E
0A20  18 F7 07                               CALL                          target=0x07F7
0A23  07                                     VIDEOFLAG7_ON
0A24  17 00                                  RET                           value=0x00
0A26  1C 68 10                               VIDEO_TRANSITION_REF          ref=0x1068 (DR[104]=dr_tray.vdx)
0A29  18 92 0A                               CALL                          target=0x0A92
0A2C  18 06 0B                               CALL                          target=0x0B06
0A2F  18 F7 07                               CALL                          target=0x07F7
0A32  18 A3 07                               CALL                          target=0x07A3
0A35  18 0C 08                               CALL                          target=0x080C
0A38  07                                     VIDEOFLAG7_ON
0A39  17 00                                  RET                           value=0x00
0A3B  1C 68 10                               VIDEO_TRANSITION_REF          ref=0x1068 (DR[104]=dr_tray.vdx)
0A3E  18 92 0A                               CALL                          target=0x0A92
0A41  18 06 0B                               CALL                          target=0x0B06
0A44  18 7A 0B                               CALL                          target=0x0B7A
0A47  18 0C 08                               CALL                          target=0x080C
0A4A  18 B8 07                               CALL                          target=0x07B8
0A4D  18 21 08                               CALL                          target=0x0821
0A50  07                                     VIDEOFLAG7_ON
0A51  17 00                                  RET                           value=0x00
0A53  1C 68 10                               VIDEO_TRANSITION_REF          ref=0x1068 (DR[104]=dr_tray.vdx)
0A56  18 06 0B                               CALL                          target=0x0B06
0A59  18 7A 0B                               CALL                          target=0x0B7A
0A5C  18 EE 0B                               CALL                          target=0x0BEE
0A5F  18 21 08                               CALL                          target=0x0821
0A62  07                                     VIDEOFLAG7_ON
0A63  17 00                                  RET                           value=0x00
0A65  1C 68 10                               VIDEO_TRANSITION_REF          ref=0x1068 (DR[104]=dr_tray.vdx)
0A68  9A 37 B0 73 0A                         STRCMP_NE_JMP                 start=v[0x037], values=[0], target=0x0A73
0A6D  1C 03 10                               VIDEO_TRANSITION_REF          ref=0x1003 (DR[3]=dr00df.vdx)
0A70  15 7B 0A                               JMP                           target=0x0A7B
0A73  9A 37 B1 7B 0A                         STRCMP_NE_JMP                 start=v[0x037], values=[1], target=0x0A7B
0A78  1C 02 10                               VIDEO_TRANSITION_REF          ref=0x1002 (DR[2]=dr00db.vdx)
0A7B  18 36 08                               CALL                          target=0x0836
0A7E  18 79 07                               CALL                          target=0x0779
0A81  18 E2 07                               CALL                          target=0x07E2
0A84  18 4B 08                               CALL                          target=0x084B
0A87  9A 3D B9 8F 0A                         STRCMP_NE_JMP                 start=v[0x03D], values=[9], target=0x0A8F
0A8C  18 F7 07                               CALL                          target=0x07F7
0A8F  07                                     VIDEOFLAG7_ON
0A90  17 00                                  RET                           value=0x00
0A92  9A 37 B0 9D 0A                         STRCMP_NE_JMP                 start=v[0x037], values=[0], target=0x0A9D
0A97  1C 03 10                               VIDEO_TRANSITION_REF          ref=0x1003 (DR[3]=dr00df.vdx)
0A9A  15 A5 0A                               JMP                           target=0x0AA5
0A9D  9A 37 B1 A5 0A                         STRCMP_NE_JMP                 start=v[0x037], values=[1], target=0x0AA5
0AA2  1C 02 10                               VIDEO_TRANSITION_REF          ref=0x1002 (DR[2]=dr00db.vdx)
0AA5  9A 3C B0 B0 0A                         STRCMP_NE_JMP                 start=v[0x03C], values=[0], target=0x0AB0
0AAA  1C 15 10                               VIDEO_TRANSITION_REF          ref=0x1015 (DR[21]=dr05df.vdx)
0AAD  15 B8 0A                               JMP                           target=0x0AB8
0AB0  9A 3C B1 B8 0A                         STRCMP_NE_JMP                 start=v[0x03C], values=[1], target=0x0AB8
0AB5  1C 14 10                               VIDEO_TRANSITION_REF          ref=0x1014 (DR[20]=dr05db.vdx)
0AB8  9A 41 B0 C3 0A                         STRCMP_NE_JMP                 start=v[0x041], values=[0], target=0x0AC3
0ABD  1C 24 10                               VIDEO_TRANSITION_REF          ref=0x1024 (DR[36]=dr10df.vdx)
0AC0  15 CB 0A                               JMP                           target=0x0ACB
0AC3  9A 41 B1 CB 0A                         STRCMP_NE_JMP                 start=v[0x041], values=[1], target=0x0ACB
0AC8  1C 23 10                               VIDEO_TRANSITION_REF          ref=0x1023 (DR[35]=dr10db.vdx)
0ACB  9A 50 B0 D6 0A                         STRCMP_NE_JMP                 start=v[0x050], values=[0], target=0x0AD6
0AD0  1C 51 10                               VIDEO_TRANSITION_REF          ref=0x1051 (DR[81]=dr25df.vdx)
0AD3  15 DE 0A                               JMP                           target=0x0ADE
0AD6  9A 50 B1 DE 0A                         STRCMP_NE_JMP                 start=v[0x050], values=[1], target=0x0ADE
0ADB  1C 50 10                               VIDEO_TRANSITION_REF          ref=0x1050 (DR[80]=dr25db.vdx)
0ADE  9A 4B B0 E9 0A                         STRCMP_NE_JMP                 start=v[0x04B], values=[0], target=0x0AE9
0AE3  1C 42 10                               VIDEO_TRANSITION_REF          ref=0x1042 (DR[66]=dr20df.vdx)
0AE6  15 F1 0A                               JMP                           target=0x0AF1
0AE9  9A 4B B1 F1 0A                         STRCMP_NE_JMP                 start=v[0x04B], values=[1], target=0x0AF1
0AEE  1C 41 10                               VIDEO_TRANSITION_REF          ref=0x1041 (DR[65]=dr20db.vdx)
0AF1  9A 46 B0 FC 0A                         STRCMP_NE_JMP                 start=v[0x046], values=[0], target=0x0AFC
0AF6  1C 33 10                               VIDEO_TRANSITION_REF          ref=0x1033 (DR[51]=dr15df.vdx)
0AF9  15 04 0B                               JMP                           target=0x0B04
0AFC  9A 46 B1 04 0B                         STRCMP_NE_JMP                 start=v[0x046], values=[1], target=0x0B04
0B01  1C 32 10                               VIDEO_TRANSITION_REF          ref=0x1032 (DR[50]=dr15db.vdx)
0B04  17 00                                  RET                           value=0x00
0B06  9A 38 B0 11 0B                         STRCMP_NE_JMP                 start=v[0x038], values=[0], target=0x0B11
0B0B  1C 06 10                               VIDEO_TRANSITION_REF          ref=0x1006 (DR[6]=dr01df.vdx)
0B0E  15 19 0B                               JMP                           target=0x0B19
0B11  9A 38 B1 19 0B                         STRCMP_NE_JMP                 start=v[0x038], values=[1], target=0x0B19
0B16  1C 05 10                               VIDEO_TRANSITION_REF          ref=0x1005 (DR[5]=dr01db.vdx)
0B19  9A 3D B0 24 0B                         STRCMP_NE_JMP                 start=v[0x03D], values=[0], target=0x0B24
0B1E  1C 18 10                               VIDEO_TRANSITION_REF          ref=0x1018 (DR[24]=dr06df.vdx)
0B21  15 2C 0B                               JMP                           target=0x0B2C
0B24  9A 3D B1 2C 0B                         STRCMP_NE_JMP                 start=v[0x03D], values=[1], target=0x0B2C
0B29  1C 17 10                               VIDEO_TRANSITION_REF          ref=0x1017 (DR[23]=dr06db.vdx)
0B2C  9A 42 B0 37 0B                         STRCMP_NE_JMP                 start=v[0x042], values=[0], target=0x0B37
0B31  1C 27 10                               VIDEO_TRANSITION_REF          ref=0x1027 (DR[39]=dr11df.vdx)
0B34  15 3F 0B                               JMP                           target=0x0B3F
0B37  9A 42 B1 3F 0B                         STRCMP_NE_JMP                 start=v[0x042], values=[1], target=0x0B3F
0B3C  1C 26 10                               VIDEO_TRANSITION_REF          ref=0x1026 (DR[38]=dr11db.vdx)
0B3F  9A 51 B0 4A 0B                         STRCMP_NE_JMP                 start=v[0x051], values=[0], target=0x0B4A
0B44  1C 54 10                               VIDEO_TRANSITION_REF          ref=0x1054 (DR[84]=dr26df.vdx)
0B47  15 52 0B                               JMP                           target=0x0B52
0B4A  9A 51 B1 52 0B                         STRCMP_NE_JMP                 start=v[0x051], values=[1], target=0x0B52
0B4F  1C 53 10                               VIDEO_TRANSITION_REF          ref=0x1053 (DR[83]=dr26db.vdx)
0B52  9A 4C B0 5D 0B                         STRCMP_NE_JMP                 start=v[0x04C], values=[0], target=0x0B5D
0B57  1C 45 10                               VIDEO_TRANSITION_REF          ref=0x1045 (DR[69]=dr21df.vdx)
0B5A  15 65 0B                               JMP                           target=0x0B65
0B5D  9A 4C B1 65 0B                         STRCMP_NE_JMP                 start=v[0x04C], values=[1], target=0x0B65
0B62  1C 44 10                               VIDEO_TRANSITION_REF          ref=0x1044 (DR[68]=dr21db.vdx)
0B65  9A 47 B0 70 0B                         STRCMP_NE_JMP                 start=v[0x047], values=[0], target=0x0B70
0B6A  1C 36 10                               VIDEO_TRANSITION_REF          ref=0x1036 (DR[54]=dr16df.vdx)
0B6D  15 78 0B                               JMP                           target=0x0B78
0B70  9A 47 B1 78 0B                         STRCMP_NE_JMP                 start=v[0x047], values=[1], target=0x0B78
0B75  1C 35 10                               VIDEO_TRANSITION_REF          ref=0x1035 (DR[53]=dr16db.vdx)
0B78  17 00                                  RET                           value=0x00
0B7A  9A 39 B0 85 0B                         STRCMP_NE_JMP                 start=v[0x039], values=[0], target=0x0B85
0B7F  1C 0A 10                               VIDEO_TRANSITION_REF          ref=0x100A (DR[10]=dr02df.vdx)
0B82  15 8D 0B                               JMP                           target=0x0B8D
0B85  9A 39 B1 8D 0B                         STRCMP_NE_JMP                 start=v[0x039], values=[1], target=0x0B8D
0B8A  1C 09 10                               VIDEO_TRANSITION_REF          ref=0x1009 (DR[9]=dr02db.vdx)
0B8D  9A 3E B0 98 0B                         STRCMP_NE_JMP                 start=v[0x03E], values=[0], target=0x0B98
0B92  1C 1B 10                               VIDEO_TRANSITION_REF          ref=0x101B (DR[27]=dr07df.vdx)
0B95  15 A0 0B                               JMP                           target=0x0BA0
0B98  9A 3E B1 A0 0B                         STRCMP_NE_JMP                 start=v[0x03E], values=[1], target=0x0BA0
0B9D  1C 1A 10                               VIDEO_TRANSITION_REF          ref=0x101A (DR[26]=dr07db.vdx)
0BA0  9A 43 B0 AB 0B                         STRCMP_NE_JMP                 start=v[0x043], values=[0], target=0x0BAB
0BA5  1C 2A 10                               VIDEO_TRANSITION_REF          ref=0x102A (DR[42]=dr12df.vdx)
0BA8  15 B3 0B                               JMP                           target=0x0BB3
0BAB  9A 43 B1 B3 0B                         STRCMP_NE_JMP                 start=v[0x043], values=[1], target=0x0BB3
0BB0  1C 29 10                               VIDEO_TRANSITION_REF          ref=0x1029 (DR[41]=dr12db.vdx)
0BB3  9A 52 B0 BE 0B                         STRCMP_NE_JMP                 start=v[0x052], values=[0], target=0x0BBE
0BB8  1C 57 10                               VIDEO_TRANSITION_REF          ref=0x1057 (DR[87]=dr27df.vdx)
0BBB  15 C6 0B                               JMP                           target=0x0BC6
0BBE  9A 52 B1 C6 0B                         STRCMP_NE_JMP                 start=v[0x052], values=[1], target=0x0BC6
0BC3  1C 56 10                               VIDEO_TRANSITION_REF          ref=0x1056 (DR[86]=dr27db.vdx)
0BC6  9A 4D B0 D1 0B                         STRCMP_NE_JMP                 start=v[0x04D], values=[0], target=0x0BD1
0BCB  1C 48 10                               VIDEO_TRANSITION_REF          ref=0x1048 (DR[72]=dr22df.vdx)
0BCE  15 D9 0B                               JMP                           target=0x0BD9
0BD1  9A 4D B1 D9 0B                         STRCMP_NE_JMP                 start=v[0x04D], values=[1], target=0x0BD9
0BD6  1C 47 10                               VIDEO_TRANSITION_REF          ref=0x1047 (DR[71]=dr22db.vdx)
0BD9  9A 48 B0 E4 0B                         STRCMP_NE_JMP                 start=v[0x048], values=[0], target=0x0BE4
0BDE  1C 39 10                               VIDEO_TRANSITION_REF          ref=0x1039 (DR[57]=dr17df.vdx)
0BE1  15 EC 0B                               JMP                           target=0x0BEC
0BE4  9A 48 B1 EC 0B                         STRCMP_NE_JMP                 start=v[0x048], values=[1], target=0x0BEC
0BE9  1C 38 10                               VIDEO_TRANSITION_REF          ref=0x1038 (DR[56]=dr17db.vdx)
0BEC  17 00                                  RET                           value=0x00
0BEE  9A 3A B0 F9 0B                         STRCMP_NE_JMP                 start=v[0x03A], values=[0], target=0x0BF9
0BF3  1C 0F 10                               VIDEO_TRANSITION_REF          ref=0x100F (DR[15]=dr03df.vdx)
0BF6  15 01 0C                               JMP                           target=0x0C01
0BF9  9A 3A B1 01 0C                         STRCMP_NE_JMP                 start=v[0x03A], values=[1], target=0x0C01
0BFE  1C 0E 10                               VIDEO_TRANSITION_REF          ref=0x100E (DR[14]=dr03db.vdx)
0C01  9A 3F B0 0C 0C                         STRCMP_NE_JMP                 start=v[0x03F], values=[0], target=0x0C0C
0C06  1C 1E 10                               VIDEO_TRANSITION_REF          ref=0x101E (DR[30]=dr08df.vdx)
0C09  15 14 0C                               JMP                           target=0x0C14
0C0C  9A 3F B1 14 0C                         STRCMP_NE_JMP                 start=v[0x03F], values=[1], target=0x0C14
0C11  1C 1D 10                               VIDEO_TRANSITION_REF          ref=0x101D (DR[29]=dr08db.vdx)
0C14  9A 44 B0 1F 0C                         STRCMP_NE_JMP                 start=v[0x044], values=[0], target=0x0C1F
0C19  1C 2D 10                               VIDEO_TRANSITION_REF          ref=0x102D (DR[45]=dr13df.vdx)
0C1C  15 27 0C                               JMP                           target=0x0C27
0C1F  9A 44 B1 27 0C                         STRCMP_NE_JMP                 start=v[0x044], values=[1], target=0x0C27
0C24  1C 2C 10                               VIDEO_TRANSITION_REF          ref=0x102C (DR[44]=dr13db.vdx)
0C27  9A 53 B0 32 0C                         STRCMP_NE_JMP                 start=v[0x053], values=[0], target=0x0C32
0C2C  1C 5A 10                               VIDEO_TRANSITION_REF          ref=0x105A (DR[90]=dr28df.vdx)
0C2F  15 3A 0C                               JMP                           target=0x0C3A
0C32  9A 53 B1 3A 0C                         STRCMP_NE_JMP                 start=v[0x053], values=[1], target=0x0C3A
0C37  1C 59 10                               VIDEO_TRANSITION_REF          ref=0x1059 (DR[89]=dr28db.vdx)
0C3A  9A 4E B0 45 0C                         STRCMP_NE_JMP                 start=v[0x04E], values=[0], target=0x0C45
0C3F  1C 4B 10                               VIDEO_TRANSITION_REF          ref=0x104B (DR[75]=dr23df.vdx)
0C42  15 4D 0C                               JMP                           target=0x0C4D
0C45  9A 4E B1 4D 0C                         STRCMP_NE_JMP                 start=v[0x04E], values=[1], target=0x0C4D
0C4A  1C 4A 10                               VIDEO_TRANSITION_REF          ref=0x104A (DR[74]=dr23db.vdx)
0C4D  9A 49 B0 58 0C                         STRCMP_NE_JMP                 start=v[0x049], values=[0], target=0x0C58
0C52  1C 3C 10                               VIDEO_TRANSITION_REF          ref=0x103C (DR[60]=dr18df.vdx)
0C55  15 60 0C                               JMP                           target=0x0C60
0C58  9A 49 B1 60 0C                         STRCMP_NE_JMP                 start=v[0x049], values=[1], target=0x0C60
0C5D  1C 3B 10                               VIDEO_TRANSITION_REF          ref=0x103B (DR[59]=dr18db.vdx)
0C60  17 00                                  RET                           value=0x00
0C62  1C 68 10                               VIDEO_TRANSITION_REF          ref=0x1068 (DR[104]=dr_tray.vdx)
0C65  18 92 0A                               CALL                          target=0x0A92
0C68  9A 38 B0 73 0C                         STRCMP_NE_JMP                 start=v[0x038], values=[0], target=0x0C73
0C6D  1C 06 10                               VIDEO_TRANSITION_REF          ref=0x1006 (DR[6]=dr01df.vdx)
0C70  15 7B 0C                               JMP                           target=0x0C7B
0C73  9A 38 B1 7B 0C                         STRCMP_NE_JMP                 start=v[0x038], values=[1], target=0x0C7B
0C78  1C 05 10                               VIDEO_TRANSITION_REF          ref=0x1005 (DR[5]=dr01db.vdx)
0C7B  18 4B 08                               CALL                          target=0x084B
0C7E  18 8E 07                               CALL                          target=0x078E
0C81  18 F7 07                               CALL                          target=0x07F7
0C84  18 60 08                               CALL                          target=0x0860
0C87  07                                     VIDEOFLAG7_ON
0C88  17 00                                  RET                           value=0x00
0C8A  1C 68 10                               VIDEO_TRANSITION_REF          ref=0x1068 (DR[104]=dr_tray.vdx)
0C8D  18 92 0A                               CALL                          target=0x0A92
0C90  18 06 0B                               CALL                          target=0x0B06
0C93  9A 39 B0 9E 0C                         STRCMP_NE_JMP                 start=v[0x039], values=[0], target=0x0C9E
0C98  1C 0A 10                               VIDEO_TRANSITION_REF          ref=0x100A (DR[10]=dr02df.vdx)
0C9B  15 A6 0C                               JMP                           target=0x0CA6
0C9E  9A 39 B1 A6 0C                         STRCMP_NE_JMP                 start=v[0x039], values=[1], target=0x0CA6
0CA3  1C 09 10                               VIDEO_TRANSITION_REF          ref=0x1009 (DR[9]=dr02db.vdx)
0CA6  18 60 08                               CALL                          target=0x0860
0CA9  18 A3 07                               CALL                          target=0x07A3
0CAC  18 0C 08                               CALL                          target=0x080C
0CAF  18 75 08                               CALL                          target=0x0875
0CB2  07                                     VIDEOFLAG7_ON
0CB3  17 00                                  RET                           value=0x00
0CB5  1C 68 10                               VIDEO_TRANSITION_REF          ref=0x1068 (DR[104]=dr_tray.vdx)
0CB8  18 92 0A                               CALL                          target=0x0A92
0CBB  18 06 0B                               CALL                          target=0x0B06
0CBE  18 7A 0B                               CALL                          target=0x0B7A
0CC1  9A 3A B0 CC 0C                         STRCMP_NE_JMP                 start=v[0x03A], values=[0], target=0x0CCC
0CC6  1C 0F 10                               VIDEO_TRANSITION_REF          ref=0x100F (DR[15]=dr03df.vdx)
0CC9  15 D4 0C                               JMP                           target=0x0CD4
0CCC  9A 3A B1 D4 0C                         STRCMP_NE_JMP                 start=v[0x03A], values=[1], target=0x0CD4
0CD1  1C 0E 10                               VIDEO_TRANSITION_REF          ref=0x100E (DR[14]=dr03db.vdx)
0CD4  18 75 08                               CALL                          target=0x0875
0CD7  18 B8 07                               CALL                          target=0x07B8
0CDA  18 21 08                               CALL                          target=0x0821
0CDD  18 8A 08                               CALL                          target=0x088A
0CE0  07                                     VIDEOFLAG7_ON
0CE1  17 00                                  RET                           value=0x00
0CE3  1C 68 10                               VIDEO_TRANSITION_REF          ref=0x1068 (DR[104]=dr_tray.vdx)
0CE6  18 92 0A                               CALL                          target=0x0A92
0CE9  18 06 0B                               CALL                          target=0x0B06
0CEC  18 7A 0B                               CALL                          target=0x0B7A
0CEF  18 EE 0B                               CALL                          target=0x0BEE
0CF2  9A 3B B0 FD 0C                         STRCMP_NE_JMP                 start=v[0x03B], values=[0], target=0x0CFD
0CF7  1C 12 10                               VIDEO_TRANSITION_REF          ref=0x1012 (DR[18]=dr04df.vdx)
0CFA  15 05 0D                               JMP                           target=0x0D05
0CFD  9A 3B B1 05 0D                         STRCMP_NE_JMP                 start=v[0x03B], values=[1], target=0x0D05
0D02  1C 11 10                               VIDEO_TRANSITION_REF          ref=0x1011 (DR[17]=dr04db.vdx)
0D05  18 8A 08                               CALL                          target=0x088A
0D08  07                                     VIDEOFLAG7_ON
0D09  17 00                                  RET                           value=0x00
0D0B  1C 68 10                               VIDEO_TRANSITION_REF          ref=0x1068 (DR[104]=dr_tray.vdx)
0D0E  9A 3C B0 19 0D                         STRCMP_NE_JMP                 start=v[0x03C], values=[0], target=0x0D19
0D13  1C 15 10                               VIDEO_TRANSITION_REF          ref=0x1015 (DR[21]=dr05df.vdx)
0D16  15 21 0D                               JMP                           target=0x0D21
0D19  9A 3C B1 21 0D                         STRCMP_NE_JMP                 start=v[0x03C], values=[1], target=0x0D21
0D1E  1C 14 10                               VIDEO_TRANSITION_REF          ref=0x1014 (DR[20]=dr05db.vdx)
0D21  18 9F 08                               CALL                          target=0x089F
0D24  18 E2 07                               CALL                          target=0x07E2
0D27  18 4B 08                               CALL                          target=0x084B
0D2A  18 B4 08                               CALL                          target=0x08B4
0D2D  9A 42 B9 35 0D                         STRCMP_NE_JMP                 start=v[0x042], values=[9], target=0x0D35
0D32  18 60 08                               CALL                          target=0x0860
0D35  07                                     VIDEOFLAG7_ON
0D36  17 00                                  RET                           value=0x00
0D38  1C 68 10                               VIDEO_TRANSITION_REF          ref=0x1068 (DR[104]=dr_tray.vdx)
0D3B  18 92 0A                               CALL                          target=0x0A92
0D3E  9A 3D B0 49 0D                         STRCMP_NE_JMP                 start=v[0x03D], values=[0], target=0x0D49
0D43  1C 18 10                               VIDEO_TRANSITION_REF          ref=0x1018 (DR[24]=dr06df.vdx)
0D46  15 51 0D                               JMP                           target=0x0D51
0D49  9A 3D B1 51 0D                         STRCMP_NE_JMP                 start=v[0x03D], values=[1], target=0x0D51
0D4E  1C 17 10                               VIDEO_TRANSITION_REF          ref=0x1017 (DR[23]=dr06db.vdx)
0D51  18 B4 08                               CALL                          target=0x08B4
0D54  18 F7 07                               CALL                          target=0x07F7
0D57  18 60 08                               CALL                          target=0x0860
0D5A  18 C9 08                               CALL                          target=0x08C9
0D5D  07                                     VIDEOFLAG7_ON
0D5E  17 00                                  RET                           value=0x00
0D60  1C 68 10                               VIDEO_TRANSITION_REF          ref=0x1068 (DR[104]=dr_tray.vdx)
0D63  18 92 0A                               CALL                          target=0x0A92
0D66  18 06 0B                               CALL                          target=0x0B06
0D69  9A 3E B0 74 0D                         STRCMP_NE_JMP                 start=v[0x03E], values=[0], target=0x0D74
0D6E  1C 1B 10                               VIDEO_TRANSITION_REF          ref=0x101B (DR[27]=dr07df.vdx)
0D71  15 7C 0D                               JMP                           target=0x0D7C
0D74  9A 3E B1 7C 0D                         STRCMP_NE_JMP                 start=v[0x03E], values=[1], target=0x0D7C
0D79  1C 1A 10                               VIDEO_TRANSITION_REF          ref=0x101A (DR[26]=dr07db.vdx)
0D7C  18 C9 08                               CALL                          target=0x08C9
0D7F  18 0C 08                               CALL                          target=0x080C
0D82  18 75 08                               CALL                          target=0x0875
0D85  18 DE 08                               CALL                          target=0x08DE
0D88  07                                     VIDEOFLAG7_ON
0D89  17 00                                  RET                           value=0x00
0D8B  1C 68 10                               VIDEO_TRANSITION_REF          ref=0x1068 (DR[104]=dr_tray.vdx)
0D8E  18 92 0A                               CALL                          target=0x0A92
0D91  18 06 0B                               CALL                          target=0x0B06
0D94  18 7A 0B                               CALL                          target=0x0B7A
0D97  9A 3F B0 A2 0D                         STRCMP_NE_JMP                 start=v[0x03F], values=[0], target=0x0DA2
0D9C  1C 1E 10                               VIDEO_TRANSITION_REF          ref=0x101E (DR[30]=dr08df.vdx)
0D9F  15 AA 0D                               JMP                           target=0x0DAA
0DA2  9A 3F B1 AA 0D                         STRCMP_NE_JMP                 start=v[0x03F], values=[1], target=0x0DAA
0DA7  1C 1D 10                               VIDEO_TRANSITION_REF          ref=0x101D (DR[29]=dr08db.vdx)
0DAA  18 DE 08                               CALL                          target=0x08DE
0DAD  18 21 08                               CALL                          target=0x0821
0DB0  18 8A 08                               CALL                          target=0x088A
0DB3  18 F3 08                               CALL                          target=0x08F3
0DB6  07                                     VIDEOFLAG7_ON
0DB7  17 00                                  RET                           value=0x00
0DB9  1C 68 10                               VIDEO_TRANSITION_REF          ref=0x1068 (DR[104]=dr_tray.vdx)
0DBC  18 92 0A                               CALL                          target=0x0A92
0DBF  18 06 0B                               CALL                          target=0x0B06
0DC2  18 7A 0B                               CALL                          target=0x0B7A
0DC5  18 EE 0B                               CALL                          target=0x0BEE
0DC8  9A 3B B0 D3 0D                         STRCMP_NE_JMP                 start=v[0x03B], values=[0], target=0x0DD3
0DCD  1C 12 10                               VIDEO_TRANSITION_REF          ref=0x1012 (DR[18]=dr04df.vdx)
0DD0  15 DB 0D                               JMP                           target=0x0DDB
0DD3  9A 3B B1 DB 0D                         STRCMP_NE_JMP                 start=v[0x03B], values=[1], target=0x0DDB
0DD8  1C 11 10                               VIDEO_TRANSITION_REF          ref=0x1011 (DR[17]=dr04db.vdx)
0DDB  9A 40 B0 E6 0D                         STRCMP_NE_JMP                 start=v[0x040], values=[0], target=0x0DE6
0DE0  1C 21 10                               VIDEO_TRANSITION_REF          ref=0x1021 (DR[33]=dr09df.vdx)
0DE3  15 EE 0D                               JMP                           target=0x0DEE
0DE6  9A 40 B1 EE 0D                         STRCMP_NE_JMP                 start=v[0x040], values=[1], target=0x0DEE
0DEB  1C 20 10                               VIDEO_TRANSITION_REF          ref=0x1020 (DR[32]=dr09db.vdx)
0DEE  18 F3 08                               CALL                          target=0x08F3
0DF1  07                                     VIDEOFLAG7_ON
0DF2  17 00                                  RET                           value=0x00
0DF4  1C 68 10                               VIDEO_TRANSITION_REF          ref=0x1068 (DR[104]=dr_tray.vdx)
0DF7  9A 41 B0 02 0E                         STRCMP_NE_JMP                 start=v[0x041], values=[0], target=0x0E02
0DFC  1C 24 10                               VIDEO_TRANSITION_REF          ref=0x1024 (DR[36]=dr10df.vdx)
0DFF  15 0A 0E                               JMP                           target=0x0E0A
0E02  9A 41 B1 0A 0E                         STRCMP_NE_JMP                 start=v[0x041], values=[1], target=0x0E0A
0E07  1C 23 10                               VIDEO_TRANSITION_REF          ref=0x1023 (DR[35]=dr10db.vdx)
0E0A  9A 4B B0 15 0E                         STRCMP_NE_JMP                 start=v[0x04B], values=[0], target=0x0E15
0E0F  1C 42 10                               VIDEO_TRANSITION_REF          ref=0x1042 (DR[66]=dr20df.vdx)
0E12  15 1D 0E                               JMP                           target=0x0E1D
0E15  9A 4B B1 1D 0E                         STRCMP_NE_JMP                 start=v[0x04B], values=[1], target=0x0E1D
0E1A  1C 41 10                               VIDEO_TRANSITION_REF          ref=0x1041 (DR[65]=dr20db.vdx)
0E1D  18 4B 08                               CALL                          target=0x084B
0E20  18 B4 08                               CALL                          target=0x08B4
0E23  18 1D 09                               CALL                          target=0x091D
0E26  9A 47 B9 2E 0E                         STRCMP_NE_JMP                 start=v[0x047], values=[9], target=0x0E2E
0E2B  18 C9 08                               CALL                          target=0x08C9
0E2E  07                                     VIDEOFLAG7_ON
0E2F  17 00                                  RET                           value=0x00
0E31  1C 68 10                               VIDEO_TRANSITION_REF          ref=0x1068 (DR[104]=dr_tray.vdx)
0E34  18 92 0A                               CALL                          target=0x0A92
0E37  9A 42 B0 42 0E                         STRCMP_NE_JMP                 start=v[0x042], values=[0], target=0x0E42
0E3C  1C 27 10                               VIDEO_TRANSITION_REF          ref=0x1027 (DR[39]=dr11df.vdx)
0E3F  15 4A 0E                               JMP                           target=0x0E4A
0E42  9A 42 B1 4A 0E                         STRCMP_NE_JMP                 start=v[0x042], values=[1], target=0x0E4A
0E47  1C 26 10                               VIDEO_TRANSITION_REF          ref=0x1026 (DR[38]=dr11db.vdx)
0E4A  9A 4C B0 55 0E                         STRCMP_NE_JMP                 start=v[0x04C], values=[0], target=0x0E55
0E4F  1C 45 10                               VIDEO_TRANSITION_REF          ref=0x1045 (DR[69]=dr21df.vdx)
0E52  15 5D 0E                               JMP                           target=0x0E5D
0E55  9A 4C B1 5D 0E                         STRCMP_NE_JMP                 start=v[0x04C], values=[1], target=0x0E5D
0E5A  1C 44 10                               VIDEO_TRANSITION_REF          ref=0x1044 (DR[68]=dr21db.vdx)
0E5D  18 60 08                               CALL                          target=0x0860
0E60  18 C9 08                               CALL                          target=0x08C9
0E63  18 DE 08                               CALL                          target=0x08DE
0E66  18 32 09                               CALL                          target=0x0932
0E69  07                                     VIDEOFLAG7_ON
0E6A  17 00                                  RET                           value=0x00
0E6C  1C 68 10                               VIDEO_TRANSITION_REF          ref=0x1068 (DR[104]=dr_tray.vdx)
0E6F  18 92 0A                               CALL                          target=0x0A92
0E72  18 06 0B                               CALL                          target=0x0B06
0E75  9A 43 B0 80 0E                         STRCMP_NE_JMP                 start=v[0x043], values=[0], target=0x0E80
0E7A  1C 2A 10                               VIDEO_TRANSITION_REF          ref=0x102A (DR[42]=dr12df.vdx)
0E7D  15 88 0E                               JMP                           target=0x0E88
0E80  9A 43 B1 88 0E                         STRCMP_NE_JMP                 start=v[0x043], values=[1], target=0x0E88
0E85  1C 29 10                               VIDEO_TRANSITION_REF          ref=0x1029 (DR[41]=dr12db.vdx)
0E88  9A 4D B0 93 0E                         STRCMP_NE_JMP                 start=v[0x04D], values=[0], target=0x0E93
0E8D  1C 48 10                               VIDEO_TRANSITION_REF          ref=0x1048 (DR[72]=dr22df.vdx)
0E90  15 9B 0E                               JMP                           target=0x0E9B
0E93  9A 4D B1 9B 0E                         STRCMP_NE_JMP                 start=v[0x04D], values=[1], target=0x0E9B
0E98  1C 47 10                               VIDEO_TRANSITION_REF          ref=0x1047 (DR[71]=dr22db.vdx)
0E9B  18 75 08                               CALL                          target=0x0875
0E9E  18 DE 08                               CALL                          target=0x08DE
0EA1  18 47 09                               CALL                          target=0x0947
0EA4  07                                     VIDEOFLAG7_ON
0EA5  17 00                                  RET                           value=0x00
0EA7  1C 68 10                               VIDEO_TRANSITION_REF          ref=0x1068 (DR[104]=dr_tray.vdx)
0EAA  18 92 0A                               CALL                          target=0x0A92
0EAD  18 06 0B                               CALL                          target=0x0B06
0EB0  18 7A 0B                               CALL                          target=0x0B7A
0EB3  9A 44 B0 BE 0E                         STRCMP_NE_JMP                 start=v[0x044], values=[0], target=0x0EBE
0EB8  1C 2D 10                               VIDEO_TRANSITION_REF          ref=0x102D (DR[45]=dr13df.vdx)
0EBB  15 C6 0E                               JMP                           target=0x0EC6
0EBE  9A 44 B1 C6 0E                         STRCMP_NE_JMP                 start=v[0x044], values=[1], target=0x0EC6
0EC3  1C 2C 10                               VIDEO_TRANSITION_REF          ref=0x102C (DR[44]=dr13db.vdx)
0EC6  9A 4E B0 D1 0E                         STRCMP_NE_JMP                 start=v[0x04E], values=[0], target=0x0ED1
0ECB  1C 4B 10                               VIDEO_TRANSITION_REF          ref=0x104B (DR[75]=dr23df.vdx)
0ECE  15 D9 0E                               JMP                           target=0x0ED9
0ED1  9A 4E B1 D9 0E                         STRCMP_NE_JMP                 start=v[0x04E], values=[1], target=0x0ED9
0ED6  1C 4A 10                               VIDEO_TRANSITION_REF          ref=0x104A (DR[74]=dr23db.vdx)
0ED9  18 8A 08                               CALL                          target=0x088A
0EDC  18 F3 08                               CALL                          target=0x08F3
0EDF  18 5C 09                               CALL                          target=0x095C
0EE2  07                                     VIDEOFLAG7_ON
0EE3  17 00                                  RET                           value=0x00
0EE5  1C 68 10                               VIDEO_TRANSITION_REF          ref=0x1068 (DR[104]=dr_tray.vdx)
0EE8  18 92 0A                               CALL                          target=0x0A92
0EEB  18 06 0B                               CALL                          target=0x0B06
0EEE  18 7A 0B                               CALL                          target=0x0B7A
0EF1  18 EE 0B                               CALL                          target=0x0BEE
0EF4  9A 45 B0 FF 0E                         STRCMP_NE_JMP                 start=v[0x045], values=[0], target=0x0EFF
0EF9  1C 30 10                               VIDEO_TRANSITION_REF          ref=0x1030 (DR[48]=dr14df.vdx)
0EFC  15 07 0F                               JMP                           target=0x0F07
0EFF  9A 45 B1 07 0F                         STRCMP_NE_JMP                 start=v[0x045], values=[1], target=0x0F07
0F04  1C 2F 10                               VIDEO_TRANSITION_REF          ref=0x102F (DR[47]=dr14db.vdx)
0F07  9A 4F B0 12 0F                         STRCMP_NE_JMP                 start=v[0x04F], values=[0], target=0x0F12
0F0C  1C 4E 10                               VIDEO_TRANSITION_REF          ref=0x104E (DR[78]=dr24df.vdx)
0F0F  15 1A 0F                               JMP                           target=0x0F1A
0F12  9A 4F B1 1A 0F                         STRCMP_NE_JMP                 start=v[0x04F], values=[1], target=0x0F1A
0F17  1C 4D 10                               VIDEO_TRANSITION_REF          ref=0x104D (DR[77]=dr24db.vdx)
0F1A  07                                     VIDEOFLAG7_ON
0F1B  17 00                                  RET                           value=0x00
0F1D  1C 68 10                               VIDEO_TRANSITION_REF          ref=0x1068 (DR[104]=dr_tray.vdx)
0F20  18 9F 08                               CALL                          target=0x089F
0F23  9A 50 B0 2E 0F                         STRCMP_NE_JMP                 start=v[0x050], values=[0], target=0x0F2E
0F28  1C 51 10                               VIDEO_TRANSITION_REF          ref=0x1051 (DR[81]=dr25df.vdx)
0F2B  15 36 0F                               JMP                           target=0x0F36
0F2E  9A 50 B1 36 0F                         STRCMP_NE_JMP                 start=v[0x050], values=[1], target=0x0F36
0F33  1C 50 10                               VIDEO_TRANSITION_REF          ref=0x1050 (DR[80]=dr25db.vdx)
0F36  18 B4 08                               CALL                          target=0x08B4
0F39  18 1D 09                               CALL                          target=0x091D
0F3C  18 86 09                               CALL                          target=0x0986
0F3F  9A 4C B9 47 0F                         STRCMP_NE_JMP                 start=v[0x04C], values=[9], target=0x0F47
0F44  18 32 09                               CALL                          target=0x0932
0F47  07                                     VIDEOFLAG7_ON
0F48  17 00                                  RET                           value=0x00
0F4A  1C 68 10                               VIDEO_TRANSITION_REF          ref=0x1068 (DR[104]=dr_tray.vdx)
0F4D  18 92 0A                               CALL                          target=0x0A92
0F50  18 B4 08                               CALL                          target=0x08B4
0F53  9A 51 B0 5E 0F                         STRCMP_NE_JMP                 start=v[0x051], values=[0], target=0x0F5E
0F58  1C 54 10                               VIDEO_TRANSITION_REF          ref=0x1054 (DR[84]=dr26df.vdx)
0F5B  15 66 0F                               JMP                           target=0x0F66
0F5E  9A 51 B1 66 0F                         STRCMP_NE_JMP                 start=v[0x051], values=[1], target=0x0F66
0F63  1C 53 10                               VIDEO_TRANSITION_REF          ref=0x1053 (DR[83]=dr26db.vdx)
0F66  18 C9 08                               CALL                          target=0x08C9
0F69  18 32 09                               CALL                          target=0x0932
0F6C  18 9B 09                               CALL                          target=0x099B
0F6F  07                                     VIDEOFLAG7_ON
0F70  17 00                                  RET                           value=0x00
0F72  1C 68 10                               VIDEO_TRANSITION_REF          ref=0x1068 (DR[104]=dr_tray.vdx)
0F75  18 92 0A                               CALL                          target=0x0A92
0F78  18 06 0B                               CALL                          target=0x0B06
0F7B  18 C9 08                               CALL                          target=0x08C9
0F7E  9A 52 B0 89 0F                         STRCMP_NE_JMP                 start=v[0x052], values=[0], target=0x0F89
0F83  1C 57 10                               VIDEO_TRANSITION_REF          ref=0x1057 (DR[87]=dr27df.vdx)
0F86  15 91 0F                               JMP                           target=0x0F91
0F89  9A 52 B1 91 0F                         STRCMP_NE_JMP                 start=v[0x052], values=[1], target=0x0F91
0F8E  1C 56 10                               VIDEO_TRANSITION_REF          ref=0x1056 (DR[86]=dr27db.vdx)
0F91  18 DE 08                               CALL                          target=0x08DE
0F94  18 47 09                               CALL                          target=0x0947
0F97  18 B0 09                               CALL                          target=0x09B0
0F9A  07                                     VIDEOFLAG7_ON
0F9B  17 00                                  RET                           value=0x00
0F9D  1C 68 10                               VIDEO_TRANSITION_REF          ref=0x1068 (DR[104]=dr_tray.vdx)
0FA0  18 92 0A                               CALL                          target=0x0A92
0FA3  18 06 0B                               CALL                          target=0x0B06
0FA6  18 7A 0B                               CALL                          target=0x0B7A
0FA9  18 DE 08                               CALL                          target=0x08DE
0FAC  9A 53 B0 B7 0F                         STRCMP_NE_JMP                 start=v[0x053], values=[0], target=0x0FB7
0FB1  1C 5A 10                               VIDEO_TRANSITION_REF          ref=0x105A (DR[90]=dr28df.vdx)
0FB4  15 BF 0F                               JMP                           target=0x0FBF
0FB7  9A 53 B1 BF 0F                         STRCMP_NE_JMP                 start=v[0x053], values=[1], target=0x0FBF
0FBC  1C 59 10                               VIDEO_TRANSITION_REF          ref=0x1059 (DR[89]=dr28db.vdx)
0FBF  18 F3 08                               CALL                          target=0x08F3
0FC2  18 5C 09                               CALL                          target=0x095C
0FC5  18 C5 09                               CALL                          target=0x09C5
0FC8  07                                     VIDEOFLAG7_ON
0FC9  17 00                                  RET                           value=0x00
0FCB  1C 68 10                               VIDEO_TRANSITION_REF          ref=0x1068 (DR[104]=dr_tray.vdx)
0FCE  18 92 0A                               CALL                          target=0x0A92
0FD1  18 06 0B                               CALL                          target=0x0B06
0FD4  18 7A 0B                               CALL                          target=0x0B7A
0FD7  18 EE 0B                               CALL                          target=0x0BEE
0FDA  18 F3 08                               CALL                          target=0x08F3
0FDD  9A 54 B0 E8 0F                         STRCMP_NE_JMP                 start=v[0x054], values=[0], target=0x0FE8
0FE2  1C 5D 10                               VIDEO_TRANSITION_REF          ref=0x105D (DR[93]=dr29df.vdx)
0FE5  15 F0 0F                               JMP                           target=0x0FF0
0FE8  9A 54 B1 F0 0F                         STRCMP_NE_JMP                 start=v[0x054], values=[1], target=0x0FF0
0FED  1C 5C 10                               VIDEO_TRANSITION_REF          ref=0x105C (DR[92]=dr29db.vdx)
0FF0  07                                     VIDEOFLAG7_ON
0FF1  17 00                                  RET                           value=0x00
0FF3  1C 68 10                               VIDEO_TRANSITION_REF          ref=0x1068 (DR[104]=dr_tray.vdx)
0FF6  18 08 09                               CALL                          target=0x0908
0FF9  18 1D 09                               CALL                          target=0x091D
0FFC  18 86 09                               CALL                          target=0x0986
0FFF  9A 51 B9 07 10                         STRCMP_NE_JMP                 start=v[0x051], values=[9], target=0x1007
1004  18 9B 09                               CALL                          target=0x099B
1007  07                                     VIDEOFLAG7_ON
1008  17 00                                  RET                           value=0x00
100A  1C 68 10                               VIDEO_TRANSITION_REF          ref=0x1068 (DR[104]=dr_tray.vdx)
100D  18 92 0A                               CALL                          target=0x0A92
1010  18 1D 09                               CALL                          target=0x091D
1013  18 32 09                               CALL                          target=0x0932
1016  18 9B 09                               CALL                          target=0x099B
1019  07                                     VIDEOFLAG7_ON
101A  17 00                                  RET                           value=0x00
101C  1C 68 10                               VIDEO_TRANSITION_REF          ref=0x1068 (DR[104]=dr_tray.vdx)
101F  18 92 0A                               CALL                          target=0x0A92
1022  18 06 0B                               CALL                          target=0x0B06
1025  18 32 09                               CALL                          target=0x0932
1028  18 47 09                               CALL                          target=0x0947
102B  18 B0 09                               CALL                          target=0x09B0
102E  07                                     VIDEOFLAG7_ON
102F  17 00                                  RET                           value=0x00
1031  1C 68 10                               VIDEO_TRANSITION_REF          ref=0x1068 (DR[104]=dr_tray.vdx)
1034  18 92 0A                               CALL                          target=0x0A92
1037  18 06 0B                               CALL                          target=0x0B06
103A  18 7A 0B                               CALL                          target=0x0B7A
103D  18 47 09                               CALL                          target=0x0947
1040  18 5C 09                               CALL                          target=0x095C
1043  18 C5 09                               CALL                          target=0x09C5
1046  07                                     VIDEOFLAG7_ON
1047  17 00                                  RET                           value=0x00
1049  1C 68 10                               VIDEO_TRANSITION_REF          ref=0x1068 (DR[104]=dr_tray.vdx)
104C  18 06 0B                               CALL                          target=0x0B06
104F  18 7A 0B                               CALL                          target=0x0B7A
1052  18 EE 0B                               CALL                          target=0x0BEE
1055  18 5C 09                               CALL                          target=0x095C
1058  07                                     VIDEOFLAG7_ON
1059  17 00                                  RET                           value=0x00
; Commit sweep: every currently selected cell (state 1) plays its cf visual
; and becomes state 9.  It then clears the category counts and increments
; v[004].  Trace 20260809-212141 reached this sweep after each of six pieces.
; SEMANTIC SUBROUTINE: commit_valid_cake_piece
105B  9A 37 B1 69 10                         STRCMP_NE_JMP                 start=v[0x037], values=[1], target=0x1069
1060  96 37 B9                               LOADSTRING                    dst=v[0x037], values=[9]
1063  18 DA 09                               CALL                          target=0x09DA
1066  09 01 10                               VIDEOREF                      ref=0x1001 (DR[1]=dr00cf.vdx)
1069  9A 38 B1 77 10                         STRCMP_NE_JMP                 start=v[0x038], values=[1], target=0x1077
106E  96 38 B9                               LOADSTRING                    dst=v[0x038], values=[9]
1071  18 F1 09                               CALL                          target=0x09F1
1074  09 04 10                               VIDEOREF                      ref=0x1004 (DR[4]=dr01cf.vdx)
1077  9A 39 B1 85 10                         STRCMP_NE_JMP                 start=v[0x039], values=[1], target=0x1085
107C  96 39 B9                               LOADSTRING                    dst=v[0x039], values=[9]
107F  18 26 0A                               CALL                          target=0x0A26
1082  09 08 10                               VIDEOREF                      ref=0x1008 (DR[8]=dr02cf.vdx)
1085  9A 3A B1 93 10                         STRCMP_NE_JMP                 start=v[0x03A], values=[1], target=0x1093
108A  96 3A B9                               LOADSTRING                    dst=v[0x03A], values=[9]
108D  18 3B 0A                               CALL                          target=0x0A3B
1090  09 0D 10                               VIDEOREF                      ref=0x100D (DR[13]=dr03cf.vdx)
1093  9A 3B B1 A1 10                         STRCMP_NE_JMP                 start=v[0x03B], values=[1], target=0x10A1
1098  96 3B B9                               LOADSTRING                    dst=v[0x03B], values=[9]
109B  18 53 0A                               CALL                          target=0x0A53
109E  09 10 10                               VIDEOREF                      ref=0x1010 (DR[16]=dr04cf.vdx)
10A1  9A 3C B1 AF 10                         STRCMP_NE_JMP                 start=v[0x03C], values=[1], target=0x10AF
10A6  96 3C B9                               LOADSTRING                    dst=v[0x03C], values=[9]
10A9  18 65 0A                               CALL                          target=0x0A65
10AC  09 13 10                               VIDEOREF                      ref=0x1013 (DR[19]=dr05cf.vdx)
10AF  9A 3D B1 BD 10                         STRCMP_NE_JMP                 start=v[0x03D], values=[1], target=0x10BD
10B4  96 3D B9                               LOADSTRING                    dst=v[0x03D], values=[9]
10B7  18 62 0C                               CALL                          target=0x0C62
10BA  09 16 10                               VIDEOREF                      ref=0x1016 (DR[22]=dr06cf.vdx)
10BD  9A 3E B1 CB 10                         STRCMP_NE_JMP                 start=v[0x03E], values=[1], target=0x10CB
10C2  96 3E B9                               LOADSTRING                    dst=v[0x03E], values=[9]
10C5  18 8A 0C                               CALL                          target=0x0C8A
10C8  09 19 10                               VIDEOREF                      ref=0x1019 (DR[25]=dr07cf.vdx)
10CB  9A 3F B1 D9 10                         STRCMP_NE_JMP                 start=v[0x03F], values=[1], target=0x10D9
10D0  96 3F B9                               LOADSTRING                    dst=v[0x03F], values=[9]
10D3  18 B5 0C                               CALL                          target=0x0CB5
10D6  09 1C 10                               VIDEOREF                      ref=0x101C (DR[28]=dr08cf.vdx)
10D9  9A 40 B1 E7 10                         STRCMP_NE_JMP                 start=v[0x040], values=[1], target=0x10E7
10DE  96 40 B9                               LOADSTRING                    dst=v[0x040], values=[9]
10E1  18 E3 0C                               CALL                          target=0x0CE3
10E4  09 1F 10                               VIDEOREF                      ref=0x101F (DR[31]=dr09cf.vdx)
10E7  9A 41 B1 F5 10                         STRCMP_NE_JMP                 start=v[0x041], values=[1], target=0x10F5
10EC  96 41 B9                               LOADSTRING                    dst=v[0x041], values=[9]
10EF  18 0B 0D                               CALL                          target=0x0D0B
10F2  09 22 10                               VIDEOREF                      ref=0x1022 (DR[34]=dr10cf.vdx)
10F5  9A 42 B1 03 11                         STRCMP_NE_JMP                 start=v[0x042], values=[1], target=0x1103
10FA  96 42 B9                               LOADSTRING                    dst=v[0x042], values=[9]
10FD  18 38 0D                               CALL                          target=0x0D38
1100  09 25 10                               VIDEOREF                      ref=0x1025 (DR[37]=dr11cf.vdx)
1103  9A 43 B1 11 11                         STRCMP_NE_JMP                 start=v[0x043], values=[1], target=0x1111
1108  96 43 B9                               LOADSTRING                    dst=v[0x043], values=[9]
110B  18 60 0D                               CALL                          target=0x0D60
110E  09 28 10                               VIDEOREF                      ref=0x1028 (DR[40]=dr12cf.vdx)
1111  9A 44 B1 1F 11                         STRCMP_NE_JMP                 start=v[0x044], values=[1], target=0x111F
1116  96 44 B9                               LOADSTRING                    dst=v[0x044], values=[9]
1119  18 8B 0D                               CALL                          target=0x0D8B
111C  09 2B 10                               VIDEOREF                      ref=0x102B (DR[43]=dr13cf.vdx)
111F  9A 45 B1 2D 11                         STRCMP_NE_JMP                 start=v[0x045], values=[1], target=0x112D
1124  96 45 B9                               LOADSTRING                    dst=v[0x045], values=[9]
1127  18 B9 0D                               CALL                          target=0x0DB9
112A  09 2E 10                               VIDEOREF                      ref=0x102E (DR[46]=dr14cf.vdx)
112D  9A 46 B1 3B 11                         STRCMP_NE_JMP                 start=v[0x046], values=[1], target=0x113B
1132  96 46 B9                               LOADSTRING                    dst=v[0x046], values=[9]
1135  18 F4 0D                               CALL                          target=0x0DF4
1138  09 31 10                               VIDEOREF                      ref=0x1031 (DR[49]=dr15cf.vdx)
113B  9A 47 B1 49 11                         STRCMP_NE_JMP                 start=v[0x047], values=[1], target=0x1149
1140  96 47 B9                               LOADSTRING                    dst=v[0x047], values=[9]
1143  18 31 0E                               CALL                          target=0x0E31
1146  09 34 10                               VIDEOREF                      ref=0x1034 (DR[52]=dr16cf.vdx)
1149  9A 48 B1 57 11                         STRCMP_NE_JMP                 start=v[0x048], values=[1], target=0x1157
114E  96 48 B9                               LOADSTRING                    dst=v[0x048], values=[9]
1151  18 6C 0E                               CALL                          target=0x0E6C
1154  09 37 10                               VIDEOREF                      ref=0x1037 (DR[55]=dr17cf.vdx)
1157  9A 49 B1 65 11                         STRCMP_NE_JMP                 start=v[0x049], values=[1], target=0x1165
115C  96 49 B9                               LOADSTRING                    dst=v[0x049], values=[9]
115F  18 A7 0E                               CALL                          target=0x0EA7
1162  09 3A 10                               VIDEOREF                      ref=0x103A (DR[58]=dr18cf.vdx)
1165  9A 4A B1 73 11                         STRCMP_NE_JMP                 start=v[0x04A], values=[1], target=0x1173
116A  96 4A B9                               LOADSTRING                    dst=v[0x04A], values=[9]
116D  18 E5 0E                               CALL                          target=0x0EE5
1170  09 3D 10                               VIDEOREF                      ref=0x103D (DR[61]=dr19cf.vdx)
1173  9A 4B B1 81 11                         STRCMP_NE_JMP                 start=v[0x04B], values=[1], target=0x1181
1178  96 4B B9                               LOADSTRING                    dst=v[0x04B], values=[9]
117B  18 1D 0F                               CALL                          target=0x0F1D
117E  09 40 10                               VIDEOREF                      ref=0x1040 (DR[64]=dr20cf.vdx)
1181  9A 4C B1 8F 11                         STRCMP_NE_JMP                 start=v[0x04C], values=[1], target=0x118F
1186  96 4C B9                               LOADSTRING                    dst=v[0x04C], values=[9]
1189  18 4A 0F                               CALL                          target=0x0F4A
118C  09 43 10                               VIDEOREF                      ref=0x1043 (DR[67]=dr21cf.vdx)
118F  9A 4D B1 9D 11                         STRCMP_NE_JMP                 start=v[0x04D], values=[1], target=0x119D
1194  96 4D B9                               LOADSTRING                    dst=v[0x04D], values=[9]
1197  18 72 0F                               CALL                          target=0x0F72
119A  09 46 10                               VIDEOREF                      ref=0x1046 (DR[70]=dr22cf.vdx)
119D  9A 4E B1 AB 11                         STRCMP_NE_JMP                 start=v[0x04E], values=[1], target=0x11AB
11A2  96 4E B9                               LOADSTRING                    dst=v[0x04E], values=[9]
11A5  18 9D 0F                               CALL                          target=0x0F9D
11A8  09 49 10                               VIDEOREF                      ref=0x1049 (DR[73]=dr23cf.vdx)
11AB  9A 4F B1 B9 11                         STRCMP_NE_JMP                 start=v[0x04F], values=[1], target=0x11B9
11B0  96 4F B9                               LOADSTRING                    dst=v[0x04F], values=[9]
11B3  18 CB 0F                               CALL                          target=0x0FCB
11B6  09 4C 10                               VIDEOREF                      ref=0x104C (DR[76]=dr24cf.vdx)
11B9  9A 50 B1 C7 11                         STRCMP_NE_JMP                 start=v[0x050], values=[1], target=0x11C7
11BE  96 50 B9                               LOADSTRING                    dst=v[0x050], values=[9]
11C1  18 F3 0F                               CALL                          target=0x0FF3
11C4  09 4F 10                               VIDEOREF                      ref=0x104F (DR[79]=dr25cf.vdx)
11C7  9A 51 B1 D5 11                         STRCMP_NE_JMP                 start=v[0x051], values=[1], target=0x11D5
11CC  96 51 B9                               LOADSTRING                    dst=v[0x051], values=[9]
11CF  18 0A 10                               CALL                          target=0x100A
11D2  09 52 10                               VIDEOREF                      ref=0x1052 (DR[82]=dr26cf.vdx)
11D5  9A 52 B1 E3 11                         STRCMP_NE_JMP                 start=v[0x052], values=[1], target=0x11E3
11DA  96 52 B9                               LOADSTRING                    dst=v[0x052], values=[9]
11DD  18 1C 10                               CALL                          target=0x101C
11E0  09 55 10                               VIDEOREF                      ref=0x1055 (DR[85]=dr27cf.vdx)
11E3  9A 53 B1 F1 11                         STRCMP_NE_JMP                 start=v[0x053], values=[1], target=0x11F1
11E8  96 53 B9                               LOADSTRING                    dst=v[0x053], values=[9]
11EB  18 31 10                               CALL                          target=0x1031
11EE  09 58 10                               VIDEOREF                      ref=0x1058 (DR[88]=dr28cf.vdx)
11F1  9A 54 B1 FF 11                         STRCMP_NE_JMP                 start=v[0x054], values=[1], target=0x11FF
11F6  96 54 B9                               LOADSTRING                    dst=v[0x054], values=[9]
11F9  18 49 10                               CALL                          target=0x1049
11FC  09 5B 10                               VIDEOREF                      ref=0x105B (DR[91]=dr29cf.vdx)
11FF  96 00 30 30 30 B0                      LOADSTRING                    dst=v[0x000], values=[0, 0, 0, 0]
1205  9F 04                                  INC                           var=v[0x004]
1207  9A 04 B6 15 12                         STRCMP_NE_JMP                 start=v[0x004], values=[6], target=0x1215
120C  07                                     VIDEOFLAG7_ON
120D  09 88 50                               VIDEOREF                      ref=0x5088 (GAMWAV[136]=gen_e_2.vdx)
; Six committed pieces publish decimal 49 to the shared parent state and
; return child result 0; SCRIPT.GRV:095A consumes 49 as puzzle completion.
; SEMANTIC BLOCK: complete_cake_puzzle_and_return_success
1210  96 FA E1                               LOADSTRING                    dst=v[0x0FA], values=[49]
1213  43 00                                  RETURNSCRIPT                  value=0x00
1215  15 69 00                               JMP                           target=0x0069
1218  96 19 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 B9 LOADSTRING                    dst=v[0x019], values=[9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9]
1238  96 17 30 B0                            LOADSTRING                    dst=v[0x017], values=[0, 0]
123C  18 59 12                               CALL                          target=0x1259
123F  9A 17 B5 4C 12                         STRCMP_NE_JMP                 start=v[0x017], values=[5], target=0x124C
1244  9F 18                                  INC                           var=v[0x018]
1246  96 17 B0                               LOADSTRING                    dst=v[0x017], values=[0]
1249  15 4E 12                               JMP                           target=0x124E
124C  9F 17                                  INC                           var=v[0x017]
124E  A3 17 30 B5 57 12                      STRCMP_EQ_JMP                 start=v[0x017], values=[0, 5], target=0x1257
1254  15 3C 12                               JMP                           target=0x123C
1257  17 00                                  RET                           value=0x00
1259  96 14 B0                               LOADSTRING                    dst=v[0x014], values=[0]
125C  18 DC 12                               CALL                          target=0x12DC
125F  9A 16 B1 96 12                         STRCMP_NE_JMP                 start=v[0x016], values=[1], target=0x1296
1264  A0 17                                  DEC                           var=v[0x017]
1266  18 98 12                               CALL                          target=0x1298
1269  A0 18                                  DEC                           var=v[0x018]
126B  9F 17                                  INC                           var=v[0x017]
126D  18 98 12                               CALL                          target=0x1298
1270  9F 17                                  INC                           var=v[0x017]
1272  9F 18                                  INC                           var=v[0x018]
1274  18 98 12                               CALL                          target=0x1298
1277  9F 18                                  INC                           var=v[0x018]
1279  A0 17                                  DEC                           var=v[0x017]
127B  18 98 12                               CALL                          target=0x1298
127E  A0 18                                  DEC                           var=v[0x018]
1280  9A 14 B0 8B 12                         STRCMP_NE_JMP                 start=v[0x014], values=[0], target=0x128B
1285  96 15 B0                               LOADSTRING                    dst=v[0x015], values=[0]
1288  18 6A 14                               CALL                          target=0x146A
128B  9A 14 B1 96 12                         STRCMP_NE_JMP                 start=v[0x014], values=[1], target=0x1296
1290  96 15 B0                               LOADSTRING                    dst=v[0x015], values=[0]
1293  18 6A 14                               CALL                          target=0x146A
1296  17 00                                  RET                           value=0x00
1298  18 DC 12                               CALL                          target=0x12DC
129B  9A 16 B0 D3 12                         STRCMP_NE_JMP                 start=v[0x016], values=[0], target=0x12D3
12A0  9A 0F E6 B0 12                         STRCMP_NE_JMP                 start=v[0x00F], values=[54], target=0x12B0
12A5  A3 00 B2 B0 12                         STRCMP_EQ_JMP                 start=v[0x000], values=[2], target=0x12B0
12AA  96 15 B0                               LOADSTRING                    dst=v[0x015], values=[0]
12AD  18 6A 14                               CALL                          target=0x146A
12B0  9A 0F E7 C0 12                         STRCMP_NE_JMP                 start=v[0x00F], values=[55], target=0x12C0
12B5  A3 01 B2 C0 12                         STRCMP_EQ_JMP                 start=v[0x001], values=[2], target=0x12C0
12BA  96 15 B0                               LOADSTRING                    dst=v[0x015], values=[0]
12BD  18 6A 14                               CALL                          target=0x146A
12C0  9A 0F F3 D0 12                         STRCMP_NE_JMP                 start=v[0x00F], values=[67], target=0x12D0
12C5  A3 02 B1 D0 12                         STRCMP_EQ_JMP                 start=v[0x002], values=[1], target=0x12D0
12CA  96 15 B0                               LOADSTRING                    dst=v[0x015], values=[0]
12CD  18 6A 14                               CALL                          target=0x146A
12D0  15 DA 12                               JMP                           target=0x12DA
12D3  9A 16 B1 DA 12                         STRCMP_NE_JMP                 start=v[0x016], values=[1], target=0x12DA
12D8  9F 14                                  INC                           var=v[0x014]
12DA  17 00                                  RET                           value=0x00
; Map the coordinate pair v[017]=column, v[018]=row to the parallel board
; tables.  The state-table mapping is v[037 + 5*column + row].
; SEMANTIC SUBROUTINE: map_cake_cell_coordinates_to_state
12DC  96 16 B0                               LOADSTRING                    dst=v[0x016], values=[0]
12DF  96 0F F8                               LOADSTRING                    dst=v[0x00F], values=[72]
12E2  9A 17 30 B0 EF 12                      STRCMP_NE_JMP                 start=v[0x017], values=[0, 0], target=0x12EF
12E8  A4 16 37 00                            MOV                           dst=v[0x016], src=0x0037
12EC  96 0F E6                               LOADSTRING                    dst=v[0x00F], values=[54]
12EF  9A 17 31 B0 FC 12                      STRCMP_NE_JMP                 start=v[0x017], values=[1, 0], target=0x12FC
12F5  A4 16 3C 00                            MOV                           dst=v[0x016], src=0x003C
12F9  96 0F E7                               LOADSTRING                    dst=v[0x00F], values=[55]
12FC  9A 17 32 B0 09 13                      STRCMP_NE_JMP                 start=v[0x017], values=[2, 0], target=0x1309
1302  A4 16 41 00                            MOV                           dst=v[0x016], src=0x0041
1306  96 0F E7                               LOADSTRING                    dst=v[0x00F], values=[55]
1309  9A 17 33 B0 16 13                      STRCMP_NE_JMP                 start=v[0x017], values=[3, 0], target=0x1316
130F  A4 16 46 00                            MOV                           dst=v[0x016], src=0x0046
1313  96 0F E6                               LOADSTRING                    dst=v[0x00F], values=[54]
1316  9A 17 34 B0 23 13                      STRCMP_NE_JMP                 start=v[0x017], values=[4, 0], target=0x1323
131C  A4 16 4B 00                            MOV                           dst=v[0x016], src=0x004B
1320  96 0F E7                               LOADSTRING                    dst=v[0x00F], values=[55]
1323  9A 17 35 B0 30 13                      STRCMP_NE_JMP                 start=v[0x017], values=[5, 0], target=0x1330
1329  A4 16 50 00                            MOV                           dst=v[0x016], src=0x0050
132D  96 0F E6                               LOADSTRING                    dst=v[0x00F], values=[54]
1330  9A 17 30 B1 3D 13                      STRCMP_NE_JMP                 start=v[0x017], values=[0, 1], target=0x133D
1336  A4 16 38 00                            MOV                           dst=v[0x016], src=0x0038
133A  96 0F F3                               LOADSTRING                    dst=v[0x00F], values=[67]
133D  9A 17 31 B1 4A 13                      STRCMP_NE_JMP                 start=v[0x017], values=[1, 1], target=0x134A
1343  A4 16 3D 00                            MOV                           dst=v[0x016], src=0x003D
1347  96 0F E7                               LOADSTRING                    dst=v[0x00F], values=[55]
134A  9A 17 32 B1 57 13                      STRCMP_NE_JMP                 start=v[0x017], values=[2, 1], target=0x1357
1350  A4 16 42 00                            MOV                           dst=v[0x016], src=0x0042
1354  96 0F E6                               LOADSTRING                    dst=v[0x00F], values=[54]
1357  9A 17 33 B1 64 13                      STRCMP_NE_JMP                 start=v[0x017], values=[3, 1], target=0x1364
135D  A4 16 47 00                            MOV                           dst=v[0x016], src=0x0047
1361  96 0F E6                               LOADSTRING                    dst=v[0x00F], values=[54]
1364  9A 17 34 B1 71 13                      STRCMP_NE_JMP                 start=v[0x017], values=[4, 1], target=0x1371
136A  A4 16 4C 00                            MOV                           dst=v[0x016], src=0x004C
136E  96 0F E7                               LOADSTRING                    dst=v[0x00F], values=[55]
1371  9A 17 35 B1 7E 13                      STRCMP_NE_JMP                 start=v[0x017], values=[5, 1], target=0x137E
1377  A4 16 51 00                            MOV                           dst=v[0x016], src=0x0051
137B  96 0F E6                               LOADSTRING                    dst=v[0x00F], values=[54]
137E  9A 17 30 B2 8B 13                      STRCMP_NE_JMP                 start=v[0x017], values=[0, 2], target=0x138B
1384  A4 16 39 00                            MOV                           dst=v[0x016], src=0x0039
1388  96 0F F3                               LOADSTRING                    dst=v[0x00F], values=[67]
138B  9A 17 31 B2 98 13                      STRCMP_NE_JMP                 start=v[0x017], values=[1, 2], target=0x1398
1391  A4 16 3E 00                            MOV                           dst=v[0x016], src=0x003E
1395  96 0F E7                               LOADSTRING                    dst=v[0x00F], values=[55]
1398  9A 17 32 B2 A5 13                      STRCMP_NE_JMP                 start=v[0x017], values=[2, 2], target=0x13A5
139E  A4 16 43 00                            MOV                           dst=v[0x016], src=0x0043
13A2  96 0F E7                               LOADSTRING                    dst=v[0x00F], values=[55]
13A5  9A 17 33 B2 B2 13                      STRCMP_NE_JMP                 start=v[0x017], values=[3, 2], target=0x13B2
13AB  A4 16 48 00                            MOV                           dst=v[0x016], src=0x0048
13AF  96 0F F3                               LOADSTRING                    dst=v[0x00F], values=[67]
13B2  9A 17 34 B2 BF 13                      STRCMP_NE_JMP                 start=v[0x017], values=[4, 2], target=0x13BF
13B8  A4 16 4D 00                            MOV                           dst=v[0x016], src=0x004D
13BC  96 0F E6                               LOADSTRING                    dst=v[0x00F], values=[54]
13BF  9A 17 35 B2 CC 13                      STRCMP_NE_JMP                 start=v[0x017], values=[5, 2], target=0x13CC
13C5  A4 16 52 00                            MOV                           dst=v[0x016], src=0x0052
13C9  96 0F F3                               LOADSTRING                    dst=v[0x00F], values=[67]
13CC  9A 17 30 B3 D9 13                      STRCMP_NE_JMP                 start=v[0x017], values=[0, 3], target=0x13D9
13D2  A4 16 3A 00                            MOV                           dst=v[0x016], src=0x003A
13D6  96 0F E6                               LOADSTRING                    dst=v[0x00F], values=[54]
13D9  9A 17 31 B3 E6 13                      STRCMP_NE_JMP                 start=v[0x017], values=[1, 3], target=0x13E6
13DF  A4 16 3F 00                            MOV                           dst=v[0x016], src=0x003F
13E3  96 0F E6                               LOADSTRING                    dst=v[0x00F], values=[54]
13E6  9A 17 32 B3 F3 13                      STRCMP_NE_JMP                 start=v[0x017], values=[2, 3], target=0x13F3
13EC  A4 16 44 00                            MOV                           dst=v[0x016], src=0x0044
13F0  96 0F E7                               LOADSTRING                    dst=v[0x00F], values=[55]
13F3  9A 17 33 B3 00 14                      STRCMP_NE_JMP                 start=v[0x017], values=[3, 3], target=0x1400
13F9  A4 16 49 00                            MOV                           dst=v[0x016], src=0x0049
13FD  96 0F F3                               LOADSTRING                    dst=v[0x00F], values=[67]
1400  9A 17 34 B3 0D 14                      STRCMP_NE_JMP                 start=v[0x017], values=[4, 3], target=0x140D
1406  A4 16 4E 00                            MOV                           dst=v[0x016], src=0x004E
140A  96 0F E6                               LOADSTRING                    dst=v[0x00F], values=[54]
140D  9A 17 35 B3 1A 14                      STRCMP_NE_JMP                 start=v[0x017], values=[5, 3], target=0x141A
1413  A4 16 53 00                            MOV                           dst=v[0x016], src=0x0053
1417  96 0F E7                               LOADSTRING                    dst=v[0x00F], values=[55]
141A  9A 17 30 B4 27 14                      STRCMP_NE_JMP                 start=v[0x017], values=[0, 4], target=0x1427
1420  A4 16 3B 00                            MOV                           dst=v[0x016], src=0x003B
1424  96 0F E7                               LOADSTRING                    dst=v[0x00F], values=[55]
1427  9A 17 31 B4 34 14                      STRCMP_NE_JMP                 start=v[0x017], values=[1, 4], target=0x1434
142D  A4 16 40 00                            MOV                           dst=v[0x016], src=0x0040
1431  96 0F E7                               LOADSTRING                    dst=v[0x00F], values=[55]
1434  9A 17 32 B4 41 14                      STRCMP_NE_JMP                 start=v[0x017], values=[2, 4], target=0x1441
143A  A4 16 45 00                            MOV                           dst=v[0x016], src=0x0045
143E  96 0F E6                               LOADSTRING                    dst=v[0x00F], values=[54]
1441  9A 17 33 B4 4E 14                      STRCMP_NE_JMP                 start=v[0x017], values=[3, 4], target=0x144E
1447  A4 16 4A 00                            MOV                           dst=v[0x016], src=0x004A
144B  96 0F F3                               LOADSTRING                    dst=v[0x00F], values=[67]
144E  9A 17 34 B4 5B 14                      STRCMP_NE_JMP                 start=v[0x017], values=[4, 4], target=0x145B
1454  A4 16 4F 00                            MOV                           dst=v[0x016], src=0x004F
1458  96 0F E6                               LOADSTRING                    dst=v[0x00F], values=[54]
145B  9A 17 35 B4 68 14                      STRCMP_NE_JMP                 start=v[0x017], values=[5, 4], target=0x1468
1461  A4 16 54 00                            MOV                           dst=v[0x016], src=0x0054
1465  96 0F E7                               LOADSTRING                    dst=v[0x00F], values=[55]
1468  17 00                                  RET                           value=0x00
146A  9A 17 30 B0 74 14                      STRCMP_NE_JMP                 start=v[0x017], values=[0, 0], target=0x1474
1470  A4 19 15 00                            MOV                           dst=v[0x019], src=0x0015
1474  9A 17 31 B0 7E 14                      STRCMP_NE_JMP                 start=v[0x017], values=[1, 0], target=0x147E
147A  A4 1E 15 00                            MOV                           dst=v[0x01E], src=0x0015
147E  9A 17 32 B0 88 14                      STRCMP_NE_JMP                 start=v[0x017], values=[2, 0], target=0x1488
1484  A4 23 15 00                            MOV                           dst=v[0x023], src=0x0015
1488  9A 17 33 B0 92 14                      STRCMP_NE_JMP                 start=v[0x017], values=[3, 0], target=0x1492
148E  A4 28 15 00                            MOV                           dst=v[0x028], src=0x0015
1492  9A 17 34 B0 9C 14                      STRCMP_NE_JMP                 start=v[0x017], values=[4, 0], target=0x149C
1498  A4 2D 15 00                            MOV                           dst=v[0x02D], src=0x0015
149C  9A 17 35 B0 A6 14                      STRCMP_NE_JMP                 start=v[0x017], values=[5, 0], target=0x14A6
14A2  A4 32 15 00                            MOV                           dst=v[0x032], src=0x0015
14A6  9A 17 30 B1 B0 14                      STRCMP_NE_JMP                 start=v[0x017], values=[0, 1], target=0x14B0
14AC  A4 1A 15 00                            MOV                           dst=v[0x01A], src=0x0015
14B0  9A 17 31 B1 BA 14                      STRCMP_NE_JMP                 start=v[0x017], values=[1, 1], target=0x14BA
14B6  A4 1F 15 00                            MOV                           dst=v[0x01F], src=0x0015
14BA  9A 17 32 B1 C4 14                      STRCMP_NE_JMP                 start=v[0x017], values=[2, 1], target=0x14C4
14C0  A4 24 15 00                            MOV                           dst=v[0x024], src=0x0015
14C4  9A 17 33 B1 CE 14                      STRCMP_NE_JMP                 start=v[0x017], values=[3, 1], target=0x14CE
14CA  A4 29 15 00                            MOV                           dst=v[0x029], src=0x0015
14CE  9A 17 34 B1 D8 14                      STRCMP_NE_JMP                 start=v[0x017], values=[4, 1], target=0x14D8
14D4  A4 2E 15 00                            MOV                           dst=v[0x02E], src=0x0015
14D8  9A 17 35 B1 E2 14                      STRCMP_NE_JMP                 start=v[0x017], values=[5, 1], target=0x14E2
14DE  A4 33 15 00                            MOV                           dst=v[0x033], src=0x0015
14E2  9A 17 30 B2 EC 14                      STRCMP_NE_JMP                 start=v[0x017], values=[0, 2], target=0x14EC
14E8  A4 1B 15 00                            MOV                           dst=v[0x01B], src=0x0015
14EC  9A 17 31 B2 F6 14                      STRCMP_NE_JMP                 start=v[0x017], values=[1, 2], target=0x14F6
14F2  A4 20 15 00                            MOV                           dst=v[0x020], src=0x0015
14F6  9A 17 32 B2 00 15                      STRCMP_NE_JMP                 start=v[0x017], values=[2, 2], target=0x1500
14FC  A4 25 15 00                            MOV                           dst=v[0x025], src=0x0015
1500  9A 17 33 B2 0A 15                      STRCMP_NE_JMP                 start=v[0x017], values=[3, 2], target=0x150A
1506  A4 2A 15 00                            MOV                           dst=v[0x02A], src=0x0015
150A  9A 17 34 B2 14 15                      STRCMP_NE_JMP                 start=v[0x017], values=[4, 2], target=0x1514
1510  A4 2F 15 00                            MOV                           dst=v[0x02F], src=0x0015
1514  9A 17 35 B2 1E 15                      STRCMP_NE_JMP                 start=v[0x017], values=[5, 2], target=0x151E
151A  A4 34 15 00                            MOV                           dst=v[0x034], src=0x0015
151E  9A 17 30 B3 28 15                      STRCMP_NE_JMP                 start=v[0x017], values=[0, 3], target=0x1528
1524  A4 1C 15 00                            MOV                           dst=v[0x01C], src=0x0015
1528  9A 17 31 B3 32 15                      STRCMP_NE_JMP                 start=v[0x017], values=[1, 3], target=0x1532
152E  A4 21 15 00                            MOV                           dst=v[0x021], src=0x0015
1532  9A 17 32 B3 3C 15                      STRCMP_NE_JMP                 start=v[0x017], values=[2, 3], target=0x153C
1538  A4 26 15 00                            MOV                           dst=v[0x026], src=0x0015
153C  9A 17 33 B3 46 15                      STRCMP_NE_JMP                 start=v[0x017], values=[3, 3], target=0x1546
1542  A4 2B 15 00                            MOV                           dst=v[0x02B], src=0x0015
1546  9A 17 34 B3 50 15                      STRCMP_NE_JMP                 start=v[0x017], values=[4, 3], target=0x1550
154C  A4 30 15 00                            MOV                           dst=v[0x030], src=0x0015
1550  9A 17 35 B3 5A 15                      STRCMP_NE_JMP                 start=v[0x017], values=[5, 3], target=0x155A
1556  A4 35 15 00                            MOV                           dst=v[0x035], src=0x0015
155A  9A 17 30 B4 64 15                      STRCMP_NE_JMP                 start=v[0x017], values=[0, 4], target=0x1564
1560  A4 1D 15 00                            MOV                           dst=v[0x01D], src=0x0015
1564  9A 17 31 B4 6E 15                      STRCMP_NE_JMP                 start=v[0x017], values=[1, 4], target=0x156E
156A  A4 22 15 00                            MOV                           dst=v[0x022], src=0x0015
156E  9A 17 32 B4 78 15                      STRCMP_NE_JMP                 start=v[0x017], values=[2, 4], target=0x1578
1574  A4 27 15 00                            MOV                           dst=v[0x027], src=0x0015
1578  9A 17 33 B4 82 15                      STRCMP_NE_JMP                 start=v[0x017], values=[3, 4], target=0x1582
157E  A4 2C 15 00                            MOV                           dst=v[0x02C], src=0x0015
1582  9A 17 34 B4 8C 15                      STRCMP_NE_JMP                 start=v[0x017], values=[4, 4], target=0x158C
1588  A4 31 15 00                            MOV                           dst=v[0x031], src=0x0015
158C  9A 17 35 B4 96 15                      STRCMP_NE_JMP                 start=v[0x017], values=[5, 4], target=0x1596
1592  A4 36 15 00                            MOV                           dst=v[0x036], src=0x0015
1596  17 00                                  RET                           value=0x00
1598  0A                                     VIDEOFLAG5_ON
1599  07                                     VIDEOFLAG7_ON
159A  46                                     RESOURCE_CONTEXT_SAVE
159B  09 01 24                               VIDEOREF                      ref=0x2401 (INTRO[1]=fade.vdx)
159E  37 00 00 50 00 7F 02 8F 01             COPY_RECT_TO_BG               left=0x0000, top=0x0050, right=0x027F, bottom=0x018F
15A7  47                                     RESOURCE_CONTEXT_RESTORE
15A8  17 00                                  RET                           value=0x00
