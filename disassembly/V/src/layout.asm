; Complete load-image emission order. Every byte has exactly one owner.
load_image_start:
    ; 00000..0007B function
    emit_entry_part_00
    ; 0007C..0007D gap
    emit_gap_000_0007c
    ; 0007E..00088 function
    emit_entry_part_01
    ; 00089..000D0 function
    emit_func_00089_part_00
    ; 000D1..001E0 function
    emit_standalone_vdx_or_diagnostics_part_00
    ; 001E1..00209 function
    emit_func_001e1_part_00
    ; 0020A..0021A function
    emit_func_0020a_part_00
    ; 0021B..002BF function
    emit_func_0021b_part_00
    ; 002C0..0030D function
    emit_func_002c0_part_00
    ; 0030E..00382 function
    emit_func_0030e_part_00
    ; 00383..00384 gap
    emit_gap_001_00383
    ; 00385..0038D function
    emit_func_0030e_part_01
    ; 0038E..0038F gap
    emit_gap_002_0038e
    ; 00390..0039B function
    emit_func_0030e_part_02
    ; 0039C..0039D gap
    emit_gap_003_0039c
    ; 0039E..0040C function
    emit_func_0030e_part_03
    ; 0040D..00475 function
    emit_func_0040d_part_00
    ; 00476..00500 function
    emit_func_00476_part_00
    ; 00501..00586 function
    emit_func_00501_part_00
    ; 00587..005E6 function
    emit_decode_vdx_bitmap_still_part_00
    ; 005E7..005E8 gap
    emit_gap_004_005e7
    ; 005E9..00C49 function
    emit_decode_vdx_bitmap_still_part_01
    ; 00C4A..00C4B gap
    emit_gap_005_00c4a
    ; 00C4C..00F32 function
    emit_decode_vdx_bitmap_still_part_02
    ; 00F33..00FC5 function
    emit_func_00f33_part_00
    ; 00FC6..01059 function
    emit_func_00fc6_part_00
    ; 0105A..01216 function
    emit_decode_vdx_delta_frame_part_00
    ; 01217..01217 gap
    emit_gap_006_01217
    ; 01218..01234 function
    emit_decode_vdx_delta_frame_part_01
    ; 01235..01235 gap
    emit_gap_007_01235
    ; 01236..0127C function
    emit_decode_vdx_delta_frame_part_02
    ; 0127D..0127D gap
    emit_gap_008_0127d
    ; 0127E..012BC function
    emit_decode_vdx_delta_frame_part_03
    ; 012BD..012C0 gap
    emit_gap_009_012bd
    ; 012C1..01396 function
    emit_decode_vdx_delta_frame_part_04
    ; 01397..01397 gap
    emit_gap_010_01397
    ; 01398..0168E function
    emit_decode_vdx_delta_frame_part_05
    ; 0168F..01690 gap
    emit_gap_011_0168f
    ; 01691..0169A function
    emit_decode_vdx_delta_frame_part_06
    ; 0169B..0169B gap
    emit_gap_012_0169b
    ; 0169C..01ED2 function
    emit_decode_vdx_delta_frame_part_07
    ; 01ED3..01ED4 gap
    emit_gap_013_01ed3
    ; 01ED5..01FE6 function
    emit_decode_vdx_delta_frame_part_08
    ; 01FE7..01FE7 gap
    emit_gap_014_01fe7
    ; 01FE8..0205C function
    emit_decode_vdx_delta_frame_part_09
    ; 0205D..0205D gap
    emit_gap_015_0205d
    ; 0205E..0207A function
    emit_decode_vdx_delta_frame_part_10
    ; 0207B..0207B gap
    emit_gap_016_0207b
    ; 0207C..0210A function
    emit_decode_vdx_delta_frame_part_11
    ; 0210B..0210B gap
    emit_gap_017_0210b
    ; 0210C..02174 function
    emit_decode_vdx_delta_frame_part_12
    ; 02175..02177 gap
    emit_gap_018_02175
    ; 02178..02180 function
    emit_decode_vdx_delta_frame_part_13
    ; 02181..02181 gap
    emit_gap_019_02181
    ; 02182..02218 function
    emit_decode_vdx_delta_frame_part_14
    ; 02219..0225F gap
    emit_gap_020_02219
    ; 02260..02288 function
    emit_decode_vdx_delta_frame_part_15
    ; 02289..02289 gap
    emit_gap_021_02289
    ; 0228A..022A6 function
    emit_decode_vdx_delta_frame_part_16
    ; 022A7..022A7 gap
    emit_gap_022_022a7
    ; 022A8..022E0 function
    emit_decode_vdx_delta_frame_part_17
    ; 022E1..022E1 gap
    emit_gap_023_022e1
    ; 022E2..02303 function
    emit_decode_vdx_delta_frame_part_18
    ; 02304..02305 gap
    emit_gap_024_02304
    ; 02306..0230E function
    emit_decode_vdx_delta_frame_part_19
    ; 0230F..02369 function
    emit_func_0230f_part_00
    ; 0236A..023A4 function
    emit_func_0236a_part_00
    ; 023A5..02590 function
    emit_copy_rect_to_background_part_00
    ; 02591..026E4 function
    emit_copy_background_to_foreground_part_00
    ; 026E5..0276C function
    emit_func_026e5_part_00
    ; 0276D..02821 function
    emit_func_0276d_part_00
    ; 02822..0285C function
    emit_func_02822_part_00
    ; 0285D..02895 function
    emit_func_0285d_part_00
    ; 02896..028AC function
    emit_func_02896_part_00
    ; 028AD..028D8 function
    emit_func_028ad_part_00
    ; 028D9..028DA gap
    emit_gap_025_028d9
    ; 028DB..0292E function
    emit_func_028ad_part_01
    ; 0292F..02930 gap
    emit_gap_026_0292f
    ; 02931..0293A function
    emit_func_028ad_part_02
    ; 0293B..02992 function
    emit_func_0293b_part_00
    ; 02993..02994 gap
    emit_gap_027_02993
    ; 02995..02996 function
    emit_func_0293b_part_01
    ; 02997..02BE7 function
    emit_stream_media_buffer_part_00
    ; 02BE8..02C31 gap
    emit_gap_028_02be8
    ; 02C32..02CBF function
    emit_func_02c32_part_00
    ; 02CC0..02CE8 gap
    emit_gap_029_02cc0
    ; 02CE9..02CF4 function
    emit_func_02c32_part_01
    ; 02CF5..02D08 gap
    emit_gap_030_02cf5
    ; 02D09..02D4E function
    emit_func_02c32_part_02
    ; 02D4F..02D4F gap
    emit_gap_031_02d4f
    ; 02D50..02D58 function
    emit_func_02d50_part_00
    ; 02D59..02D59 gap
    emit_gap_032_02d59
    ; 02D5A..02D79 function
    emit_func_02d5a_part_00
    ; 02D7A..02F69 gap
    emit_gap_033_02d7a
    ; 02F6A..02F82 function
    emit_func_02f6a_part_00
    ; 02F83..02F83 gap
    emit_gap_034_02f83
    ; 02F84..033B6 function
    emit_detect_video_hardware_part_00
    ; 033B7..033FE function
    emit_func_033b7_part_00
    ; 033FF..03419 function
    emit_func_033ff_part_00
    ; 0341A..03452 function
    emit_func_0341a_part_00
    ; 03453..0345D gap
    emit_gap_035_03453
    ; 0345E..0348B function
    emit_func_0345e_part_00
    ; 0348C..034A4 function
    emit_func_0348c_part_00
    ; 034A5..03589 function
    emit_func_034a5_part_00
    ; 0358A..0358F function
    emit_func_0358a_part_00
    ; 03590..03670 function
    emit_func_03590_part_00
    ; 03671..03687 function
    emit_func_03671_part_00
    ; 03688..0368B gap
    emit_gap_036_03688
    ; 0368C..036D1 function
    emit_query_xms_part_00
    ; 036D2..03755 function
    emit_format_memory_diagnostic_part_00
    ; 03756..03769 function
    emit_func_03756_part_00
    ; 0376A..03773 function
    emit_func_0376a_part_00
    ; 03774..0377D function
    emit_func_03774_part_00
    ; 0377E..03784 function
    emit_func_0377e_part_00
    ; 03785..0378E gap
    emit_gap_037_03785
    ; 0378F..0382C function
    emit_func_0378f_part_00
    ; 0382D..03837 function
    emit_func_0382d_part_00
    ; 03838..03889 function
    emit_func_03838_part_00
    ; 0388A..03936 function
    emit_select_grv_video_resource_part_00
    ; 03937..03940 gap
    emit_gap_038_03937
    ; 03941..039ED function
    emit_select_grv_song_resource_part_00
    ; 039EE..039F7 function
    emit_read_selected_archive_part_00
    ; 039F8..03A30 function
    emit_build_resource_filename_part_00
    ; 03A31..03A46 function
    emit_open_resource_read_only_part_00
    ; 03A47..03A50 function
    emit_close_resource_file_part_00
    ; 03A51..03A5A function
    emit_func_03a51_part_00
    ; 03A5B..03A95 function
    emit_load_selected_resource_file_part_00
    ; 03A96..03AC3 gap
    emit_gap_039_03a96
    ; 03AC4..03B12 function
    emit_run_grv_vm_part_00
    ; 03B13..03B15 gap
    emit_gap_040_03b13
    ; 03B16..03CBE function
    emit_run_grv_vm_part_01
    ; 03CBF..03CC1 gap
    emit_gap_041_03cbf
    ; 03CC2..03E43 function
    emit_run_grv_vm_part_02
    ; 03E44..03E84 function
    emit_func_03e44_part_00
    ; 03E85..03EB7 function
    emit_func_03e85_part_00
    ; 03EB8..03EE9 function
    emit_func_03eb8_part_00
    ; 03EEA..03F22 function
    emit_grv_check_valid_saves_part_00
    ; 03F23..03F76 function
    emit_func_03f23_part_00
    ; 03F77..03FC3 function
    emit_func_03f77_part_00
    ; 03FC4..04000 function
    emit_func_03fc4_part_00
    ; 04001..04003 function
    emit_func_04001_part_00
    ; 04004..04009 function
    emit_func_04004_part_00
    ; 0400A..04015 function
    emit_func_0400a_part_00
    ; 04016..04086 function
    emit_func_04016_part_00
    ; 04087..0409A function
    emit_func_04087_part_00
    ; 0409B..040B1 function
    emit_func_0409b_part_00
    ; 040B2..040C6 function
    emit_func_040b2_part_00
    ; 040C7..040DE function
    emit_func_040c7_part_00
    ; 040DF..040F6 function
    emit_func_040df_part_00
    ; 040F7..04102 function
    emit_func_040f7_part_00
    ; 04103..0410E function
    emit_func_04103_part_00
    ; 0410F..041A3 function
    emit_func_0410f_part_00
    ; 041A4..041CA function
    emit_func_041a4_part_00
    ; 041CB..041DE function
    emit_func_041cb_part_00
    ; 041DF..041F7 function
    emit_func_041df_part_00
    ; 041F8..0421D function
    emit_func_041f8_part_00
    ; 0421E..04243 function
    emit_func_0421e_part_00
    ; 04244..04269 function
    emit_func_04244_part_00
    ; 0426A..04291 function
    emit_func_0426a_part_00
    ; 04292..042B0 function
    emit_func_04292_part_00
    ; 042B1..042CA function
    emit_func_042b1_part_00
    ; 042CB..042F0 function
    emit_func_042cb_part_00
    ; 042F1..04326 function
    emit_func_042f1_part_00
    ; 04327..0432A function
    emit_func_04327_part_00
    ; 0432B..04374 function
    emit_func_0432b_part_00
    ; 04375..043C8 function
    emit_func_04375_part_00
    ; 043C9..043D1 function
    emit_func_043c9_part_00
    ; 043D2..04405 function
    emit_func_043d2_part_00
    ; 04406..04439 function
    emit_func_04406_part_00
    ; 0443A..04449 function
    emit_func_0443a_part_00
    ; 0444A..04450 function
    emit_func_0444a_part_00
    ; 04451..04460 function
    emit_func_04451_part_00
    ; 04461..0447A function
    emit_func_04461_part_00
    ; 0447B..046F4 function
    emit_run_grv_input_loop_part_00
    ; 046F5..0470F function
    emit_func_046f5_part_00
    ; 04710..04728 function
    emit_func_04710_part_00
    ; 04729..04753 function
    emit_match_grv_key_action_part_00
    ; 04754..0475D function
    emit_func_04754_part_00
    ; 0475E..04767 function
    emit_func_0475e_part_00
    ; 04768..04771 function
    emit_func_04768_part_00
    ; 04772..0477B function
    emit_func_04772_part_00
    ; 0477C..0478B function
    emit_func_0477c_part_00
    ; 0478C..0479B function
    emit_func_0478c_part_00
    ; 0479C..047AB function
    emit_func_0479c_part_00
    ; 047AC..047BB function
    emit_func_047ac_part_00
    ; 047BC..047CB function
    emit_func_047bc_part_00
    ; 047CC..047DB function
    emit_func_047cc_part_00
    ; 047DC..0483D function
    emit_test_grv_hotspot_rect_part_00
    ; 0483E..0483F gap
    emit_gap_042_0483e
    ; 04840..04848 function
    emit_test_grv_hotspot_rect_part_01
    ; 04849..048C8 function
    emit_func_04849_part_00
    ; 048C9..04956 function
    emit_func_048c9_part_00
    ; 04957..0495C function
    emit_func_04957_part_00
    ; 0495D..04967 function
    emit_func_0495d_part_00
    ; 04968..0497F gap
    emit_gap_043_04968
    ; 04980..04A22 function
    emit_func_04980_part_00
    ; 04A23..04A54 function
    emit_func_04a23_part_00
    ; 04A55..04A7A function
    emit_func_04a55_part_00
    ; 04A7B..04B67 function
    emit_func_04a7b_part_00
    ; 04B68..04B6A gap
    emit_gap_044_04b68
    ; 04B6B..04BAB function
    emit_func_04a7b_part_01
    ; 04BAC..04BAD gap
    emit_gap_045_04bac
    ; 04BAE..04BF4 function
    emit_func_04a7b_part_02
    ; 04BF5..04C26 function
    emit_func_04bf5_part_00
    ; 04C27..04CD1 function
    emit_func_04c27_part_00
    ; 04CD2..04D8B function
    emit_func_04cd2_part_00
    ; 04D8C..04E1E function
    emit_func_04d8c_part_00
    ; 04E1F..04EAD function
    emit_func_04e1f_part_00
    ; 04EAE..04FC6 function
    emit_func_04eae_part_00
    ; 04FC7..04FEA function
    emit_func_04fc7_part_00
    ; 04FEB..04FF5 function
    emit_func_04feb_part_00
    ; 04FF6..0500F function
    emit_func_04ff6_part_00
    ; 05010..05017 function
    emit_func_05010_part_00
    ; 05018..05056 function
    emit_func_05018_part_00
    ; 05057..0518F function
    emit_func_05057_part_00
    ; 05190..05191 gap
    emit_gap_046_05190
    ; 05192..0519B function
    emit_func_05057_part_01
    ; 0519C..0519D gap
    emit_gap_047_0519c
    ; 0519E..051A3 function
    emit_func_05057_part_02
    ; 051A4..051A5 gap
    emit_gap_048_051a4
    ; 051A6..051AB function
    emit_func_05057_part_03
    ; 051AC..051AD gap
    emit_gap_049_051ac
    ; 051AE..051C4 function
    emit_func_05057_part_04
    ; 051C5..051CA function
    emit_func_051c5_part_00
    ; 051CB..051E4 function
    emit_func_051cb_part_00
    ; 051E5..051FE function
    emit_func_051e5_part_00
    ; 051FF..05216 function
    emit_func_051ff_part_00
    ; 05217..05225 function
    emit_func_05217_part_00
    ; 05226..05234 function
    emit_func_05226_part_00
    ; 05235..05350 function
    emit_func_05235_part_00
    ; 05351..05352 gap
    emit_gap_050_05351
    ; 05353..0535C function
    emit_func_05235_part_01
    ; 0535D..0535E gap
    emit_gap_051_0535d
    ; 0535F..05364 function
    emit_func_05235_part_02
    ; 05365..05366 gap
    emit_gap_052_05365
    ; 05367..0536C function
    emit_func_05235_part_03
    ; 0536D..0536E gap
    emit_gap_053_0536d
    ; 0536F..05378 function
    emit_func_05235_part_04
    ; 05379..05457 function
    emit_func_05379_part_00
    ; 05458..05459 gap
    emit_gap_054_05458
    ; 0545A..05463 function
    emit_func_05379_part_01
    ; 05464..05465 gap
    emit_gap_055_05464
    ; 05466..0546B function
    emit_func_05379_part_02
    ; 0546C..0546D gap
    emit_gap_056_0546c
    ; 0546E..05473 function
    emit_func_05379_part_03
    ; 05474..05475 gap
    emit_gap_057_05474
    ; 05476..0547F function
    emit_func_05379_part_04
    ; 05480..054AC function
    emit_func_05480_part_00
    ; 054AD..054F8 function
    emit_func_054ad_part_00
    ; 054F9..05522 function
    emit_func_054f9_part_00
    ; 05523..055FB function
    emit_func_05523_part_00
    ; 055FC..05718 function
    emit_func_055fc_part_00
    ; 05719..05727 function
    emit_func_05719_part_00
    ; 05728..05728 function
    emit_func_05728_part_00
    ; 05729..05729 function
    emit_func_05729_part_00
    ; 0572A..05732 function
    emit_func_0572a_part_00
    ; 05733..05733 gap
    emit_gap_058_05733
    ; 05734..05749 function
    emit_func_05734_part_00
    ; 0574A..05753 function
    emit_func_0574a_part_00
    ; 05754..0575D function
    emit_func_05754_part_00
    ; 0575E..0576D function
    emit_func_0575e_part_00
    ; 0576E..05A36 function
    emit_initialize_subsystems_xms_part_00
    ; 05A37..05A4E function
    emit_func_05a37_part_00
    ; 05A4F..05A6B gap
    emit_gap_059_05a4f
    ; 05A6C..05A8A function
    emit_func_05a6c_part_00
    ; 05A8B..05AAB function
    emit_func_05a8b_part_00
    ; 05AAC..05BD0 function
    emit_func_05aac_part_00
    ; 05BD1..05C05 function
    emit_load_and_play_selected_xmi_part_00
    ; 05C06..05CDD function
    emit_func_05c06_part_00
    ; 05CDE..05CEC gap
    emit_gap_060_05cde
    ; 05CED..05E8B function
    emit_shutdown_player_part_00
    ; 05E8C..05E8C gap
    emit_gap_061_05e8c
    ; 05E8D..05EA8 function
    emit_func_05e8d_part_00
    ; 05EA9..05EC7 function
    emit_func_05ea9_part_00
    ; 05EC8..05ED4 function
    emit_func_05ec8_part_00
    ; 05ED5..05ED5 gap
    emit_gap_062_05ed5
    ; 05ED6..05F1B function
    emit_func_05ed6_part_00
    ; 05F1C..05F21 gap
    emit_gap_063_05f1c
    ; 05F22..05F6B function
    emit_func_05f22_part_00
    ; 05F6C..05FB5 function
    emit_func_05f6c_part_00
    ; 05FB6..05FD7 function
    emit_func_05fb6_part_00
    ; 05FD8..05FE3 function
    emit_func_05fd8_part_00
    ; 05FE4..0605A function
    emit_func_05fe4_part_00
    ; 0605B..0605B gap
    emit_gap_064_0605b
    ; 0605C..06072 function
    emit_func_05fe4_part_01
    ; 06073..06073 gap
    emit_gap_065_06073
    ; 06074..060CF function
    emit_func_05fe4_part_02
    ; 060D0..06157 function
    emit_func_060d0_part_00
    ; 06158..06159 gap
    emit_gap_066_06158
    ; 0615A..061CE function
    emit_func_060d0_part_01
    ; 061CF..061CF gap
    emit_gap_067_061cf
    ; 061D0..0627A function
    emit_func_061d0_part_00
    ; 0627B..0627B gap
    emit_gap_068_0627b
    ; 0627C..0628E function
    emit_func_061d0_part_01
    ; 0628F..0628F gap
    emit_gap_069_0628f
    ; 06290..062E8 function
    emit_func_06290_part_00
    ; 062E9..062E9 gap
    emit_gap_070_062e9
    ; 062EA..063B3 function
    emit_func_062ea_part_00
    ; 063B4..063FA function
    emit_func_063b4_part_00
    ; 063FB..063FB gap
    emit_gap_071_063fb
    ; 063FC..0641B function
    emit_func_063b4_part_01
    ; 0641C..06434 function
    emit_func_0641c_part_00
    ; 06435..06435 gap
    emit_gap_072_06435
    ; 06436..06456 function
    emit_func_06436_part_00
    ; 06457..06457 gap
    emit_gap_073_06457
    ; 06458..0650E function
    emit_func_06458_part_00
    ; 0650F..0650F gap
    emit_gap_074_0650f
    ; 06510..06514 function
    emit_func_06458_part_01
    ; 06515..06515 gap
    emit_gap_075_06515
    ; 06516..0656A function
    emit_func_06458_part_02
    ; 0656B..0656B gap
    emit_gap_076_0656b
    ; 0656C..065FC function
    emit_func_0656c_part_00
    ; 065FD..065FD gap
    emit_gap_077_065fd
    ; 065FE..06618 function
    emit_func_0656c_part_01
    ; 06619..06619 gap
    emit_gap_078_06619
    ; 0661A..06642 function
    emit_func_0656c_part_02
    ; 06643..06643 gap
    emit_gap_079_06643
    ; 06644..066AE function
    emit_func_0656c_part_03
    ; 066AF..066AF gap
    emit_gap_080_066af
    ; 066B0..06798 function
    emit_func_0656c_part_04
    ; 06799..06799 gap
    emit_gap_081_06799
    ; 0679A..067FA function
    emit_func_0656c_part_05
    ; 067FB..067FB gap
    emit_gap_082_067fb
    ; 067FC..06845 function
    emit_func_0656c_part_06
    ; 06846..0690B function
    emit_func_06846_part_00
    ; 0690C..0690C gap
    emit_gap_083_0690c
    ; 0690D..06951 function
    emit_func_06846_part_01
    ; 06952..06952 gap
    emit_gap_084_06952
    ; 06953..06A6B function
    emit_func_06846_part_02
    ; 06A6C..06A6C gap
    emit_gap_085_06a6c
    ; 06A6D..06A80 function
    emit_func_06a6d_part_00
    ; 06A81..06AE3 function
    emit_func_06a81_part_00
    ; 06AE4..06AE4 gap
    emit_gap_086_06ae4
    ; 06AE5..06AEE function
    emit_func_06a81_part_01
    ; 06AEF..06BFE function
    emit_func_06aef_part_00
    ; 06BFF..06BFF gap
    emit_gap_087_06bff
    ; 06C00..06D0D function
    emit_func_06aef_part_01
    ; 06D0E..06DA4 function
    emit_func_06d0e_part_00
    ; 06DA5..06DA5 gap
    emit_gap_088_06da5
    ; 06DA6..06DE2 function
    emit_func_06d0e_part_01
    ; 06DE3..06DE3 gap
    emit_gap_089_06de3
    ; 06DE4..06E0A function
    emit_func_06de4_part_00
    ; 06E0B..06E0B gap
    emit_gap_090_06e0b
    ; 06E0C..06E67 function
    emit_func_06de4_part_01
    ; 06E68..06E71 function
    emit_func_06e68_part_00
    ; 06E72..06EB5 function
    emit_func_06e72_part_00
    ; 06EB6..06ED8 function
    emit_func_06eb6_part_00
    ; 06ED9..06FA8 function
    emit_func_06ed9_part_00
    ; 06FA9..07024 function
    emit_func_06fa9_part_00
    ; 07025..073DF gap
    emit_gap_091_07025
    ; 073E0..07417 function
    emit_func_073e0_part_00
    ; 07418..0742F function
    emit_func_07418_part_00
    ; 07430..07500 gap
    emit_gap_092_07430
    ; 07501..07532 function
    emit_func_07501_part_00
    ; 07533..07533 gap
    emit_gap_093_07533
    ; 07534..0753C function
    emit_func_07501_part_01
    ; 0753D..07543 gap
    emit_gap_094_0753d
    ; 07544..07585 function
    emit_func_07544_part_00
    ; 07586..07586 gap
    emit_gap_095_07586
    ; 07587..0758F function
    emit_func_07544_part_01
    ; 07590..075B5 function
    emit_func_07590_part_00
    ; 075B6..075B6 gap
    emit_gap_096_075b6
    ; 075B7..075BF function
    emit_func_07590_part_01
    ; 075C0..075DD function
    emit_func_075c0_part_00
    ; 075DE..075DE gap
    emit_gap_097_075de
    ; 075DF..075E8 function
    emit_func_075c0_part_01
    ; 075E9..07612 function
    emit_func_075e9_part_00
    ; 07613..0765D function
    emit_func_07613_part_00
    ; 0765E..076E8 function
    emit_func_0765e_part_00
    ; 076E9..076E9 gap
    emit_gap_098_076e9
    ; 076EA..076F2 function
    emit_func_0765e_part_01
    ; 076F3..07733 function
    emit_func_076f3_part_00
    ; 07734..07734 gap
    emit_gap_099_07734
    ; 07735..0773D function
    emit_func_076f3_part_01
    ; 0773E..07797 function
    emit_func_0773e_part_00
    ; 07798..07798 gap
    emit_gap_100_07798
    ; 07799..077A2 function
    emit_func_0773e_part_01
    ; 077A3..07862 function
    emit_func_077a3_part_00
    ; 07863..07863 gap
    emit_gap_101_07863
    ; 07864..0786D function
    emit_func_077a3_part_01
    ; 0786E..078AB function
    emit_func_0786e_part_00
    ; 078AC..078AC gap
    emit_gap_102_078ac
    ; 078AD..078B6 function
    emit_func_0786e_part_01
    ; 078B7..078CA function
    emit_func_078b7_part_00
    ; 078CB..078CB gap
    emit_gap_103_078cb
    ; 078CC..078D4 function
    emit_func_078b7_part_01
    ; 078D5..078F1 function
    emit_func_078d5_part_00
    ; 078F2..078F2 gap
    emit_gap_104_078f2
    ; 078F3..078FC function
    emit_func_078d5_part_01
    ; 078FD..0791A gap
    emit_gap_105_078fd
    ; 0791B..07937 function
    emit_func_0791b_part_00
    ; 07938..07938 gap
    emit_gap_106_07938
    ; 07939..07942 function
    emit_func_0791b_part_01
    ; 07943..07960 gap
    emit_gap_107_07943
    ; 07961..079AA function
    emit_func_07961_part_00
    ; 079AB..079AB gap
    emit_gap_108_079ab
    ; 079AC..079B5 function
    emit_func_07961_part_01
    ; 079B6..079EB function
    emit_func_079b6_part_00
    ; 079EC..079EC gap
    emit_gap_109_079ec
    ; 079ED..079F6 function
    emit_func_079b6_part_01
    ; 079F7..07A32 function
    emit_func_079f7_part_00
    ; 07A33..07A3C function
    emit_func_07a33_part_00
    ; 07A3D..07A3D gap
    emit_gap_110_07a3d
    ; 07A3E..07A46 function
    emit_func_07a33_part_01
    ; 07A47..07ADD function
    emit_func_07a47_part_00
    ; 07ADE..07ADE gap
    emit_gap_111_07ade
    ; 07ADF..07B29 function
    emit_func_07a47_part_01
    ; 07B2A..07B70 gap
    emit_gap_112_07b2a
    ; 07B71..07B96 function
    emit_func_07b71_part_00
    ; 07B97..07B9C function
    emit_func_07b97_part_00
    ; 07B9D..07C43 function
    emit_func_07b9d_part_00
    ; 07C44..07C44 gap
    emit_gap_113_07c44
    ; 07C45..07C4E function
    emit_func_07b9d_part_01
    ; 07C4F..07C81 function
    emit_func_07c4f_part_00
    ; 07C82..07C87 gap
    emit_gap_114_07c82
    ; 07C88..07C8D function
    emit_func_07c88_part_00
    ; 07C8E..07C93 function
    emit_func_07c8e_part_00
    ; 07C94..07C99 function
    emit_func_07c94_part_00
    ; 07C9A..07CAB gap
    emit_gap_115_07c9a
    ; 07CAC..07CB1 function
    emit_func_07cac_part_00
    ; 07CB2..07CB7 function
    emit_func_07cb2_part_00
    ; 07CB8..07CC3 gap
    emit_gap_116_07cb8
    ; 07CC4..07CC9 function
    emit_func_07cc4_part_00
    ; 07CCA..07CE1 gap
    emit_gap_117_07cca
    ; 07CE2..07CE7 function
    emit_func_07ce2_part_00
    ; 07CE8..07CED function
    emit_func_07ce8_part_00
    ; 07CEE..07CF3 function
    emit_func_07cee_part_00
    ; 07CF4..07CF9 function
    emit_func_07cf4_part_00
    ; 07CFA..07CFF function
    emit_func_07cfa_part_00
    ; 07D00..07D05 function
    emit_func_07d00_part_00
    ; 07D06..07D17 gap
    emit_gap_118_07d06
    ; 07D18..07D1D function
    emit_func_07d18_part_00
    ; 07D1E..07D23 function
    emit_func_07d1e_part_00
    ; 07D24..07D29 gap
    emit_gap_119_07d24
    ; 07D2A..07D2F function
    emit_func_07d2a_part_00
    ; 07D30..07D3B gap
    emit_gap_120_07d30
    ; 07D3C..07D41 function
    emit_func_07d3c_part_00
    ; 07D42..07D4D gap
    emit_gap_121_07d42
    ; 07D4E..07D53 function
    emit_func_07d4e_part_00
    ; 07D54..07E9F gap
    emit_gap_122_07d54
    ; 07EA0..07EC8 function
    emit_func_07ea0_part_00
    ; 07EC9..07ED2 gap
    emit_gap_123_07ec9
    ; 07ED3..07ED6 function
    emit_func_07ea0_part_01
    ; 07ED7..07F0D function
    emit_func_07ed7_part_00
    ; 07F0E..07F54 function
    emit_func_07f0e_part_00
    ; 07F55..07F63 function
    emit_func_07f55_part_00
    ; 07F64..07F7A function
    emit_func_07f64_part_00
    ; 07F7B..07FB5 function
    emit_func_07f7b_part_00
    ; 07FB6..08068 function
    emit_func_07fb6_part_00
    ; 08069..08082 function
    emit_func_08069_part_00
    ; 08083..080D5 gap
    emit_gap_124_08083
    ; 080D6..0812A function
    emit_func_080d6_part_00
    ; 0812B..08151 function
    emit_func_0812b_part_00
    ; 08152..082A8 function
    emit_func_08152_part_00
    ; 082A9..082FB function
    emit_func_082a9_part_00
    ; 082FC..08326 function
    emit_func_082fc_part_00
    ; 08327..083FD function
    emit_func_08327_part_00
    ; 083FE..0847D function
    emit_func_083fe_part_00
    ; 0847E..0848B function
    emit_func_0847e_part_00
    ; 0848C..084F0 function
    emit_func_0848c_part_00
    ; 084F1..08523 function
    emit_func_084f1_part_00
    ; 08524..08649 function
    emit_func_08524_part_00
    ; 0864A..086AA function
    emit_func_0864a_part_00
    ; 086AB..086BF function
    emit_func_086ab_part_00
    ; 086C0..08765 function
    emit_func_086c0_part_00
    ; 08766..08853 function
    emit_func_08766_part_00
    ; 08854..08890 function
    emit_func_08854_part_00
    ; 08891..088D8 function
    emit_func_08891_part_00
    ; 088D9..0891C function
    emit_func_088d9_part_00
    ; 0891D..0892B function
    emit_func_0891d_part_00
    ; 0892C..0992B data
    emit_data_0892c
    ; 0992C..0A92B data
    emit_data_0992c
    ; 0A92C..0B92B data
    emit_data_0a92c
    ; 0B92C..0C92B data
    emit_data_0b92c
    ; 0C92C..0D92B data
    emit_data_0c92c
    ; 0D92C..0E92B data
    emit_data_0d92c
    ; 0E92C..0F92B data
    emit_data_0e92c
    ; 0F92C..1092B data
    emit_data_0f92c
    ; 1092C..1192B data
    emit_data_1092c
    ; 1192C..1292B data
    emit_data_1192c
    ; 1292C..1392B data
    emit_data_1292c
    ; 1392C..1492B data
    emit_data_1392c
    ; 1492C..1592B data
    emit_data_1492c
    ; 1592C..1692B data
    emit_data_1592c
    ; 1692C..1792B data
    emit_data_1692c
    ; 1792C..1892B data
    emit_data_1792c
    ; 1892C..18CF7 data
    emit_data_1892c

    %if ($ - load_image_start) != 0x18CF8
        %error "LOAD_IMAGE_SIZE"
    %endif
