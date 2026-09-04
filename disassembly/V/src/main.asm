; DOS GROOVIE Player V.EXE 1.30 -- complete lossless source root.
;
; Function files use real NASM instructions where NASM reproduces the
; historical encoding. Noncanonical encodings and non-code bytes use explicit
; db directives. There are no imported executable-byte ranges.

bits 16

; Functions
; Generated function macro inventory.
%include "src/functions/runtime/entry.asm"
%include "src/functions/unknown/00089_func_00089.asm"
%include "src/functions/runtime/standalone_vdx_or_diagnostics.asm"
%include "src/functions/unknown/001e1_func_001e1.asm"
%include "src/functions/unknown/0020a_func_0020a.asm"
%include "src/functions/vdx/read_vdx_stream_bytes.asm"
%include "src/functions/vdx/read_and_validate_vdx_header.asm"
%include "src/functions/vdx/decode_vdx_stream.asm"
%include "src/functions/vdx/apply_vdx_delta_palette.asm"
%include "src/functions/vdx/load_vdx_still_palette.asm"
%include "src/functions/unknown/00501_func_00501.asm"
%include "src/functions/vdx/decode_vdx_bitmap_still.asm"
%include "src/functions/unknown/00f33_func_00f33.asm"
%include "src/functions/unknown/00fc6_func_00fc6.asm"
%include "src/functions/vdx/decode_vdx_delta_frame.asm"
%include "src/functions/unknown/0230f_func_0230f.asm"
%include "src/functions/vdx/decompress_vdx_lzss.asm"
%include "src/functions/vdx/copy_background_rectangle_to_foreground.asm"
%include "src/functions/vdx/copy_background_to_foreground.asm"
%include "src/functions/unknown/026e5_func_026e5.asm"
%include "src/functions/vdx/mark_used_background_palette_entries.asm"
%include "src/functions/unknown/02822_func_02822.asm"
%include "src/functions/unknown/0285d_func_0285d.asm"
%include "src/functions/unknown/02896_func_02896.asm"
%include "src/functions/unknown/028ad_func_028ad.asm"
%include "src/functions/unknown/0293b_func_0293b.asm"
%include "src/functions/vdx/stream_media_buffer.asm"
%include "src/functions/unknown/02c32_func_02c32.asm"
%include "src/functions/unknown/02d50_func_02d50.asm"
%include "src/functions/unknown/02d5a_func_02d5a.asm"
%include "src/functions/unknown/02f6a_func_02f6a.asm"
%include "src/functions/platform/detect_video_hardware.asm"
%include "src/functions/unknown/033b7_func_033b7.asm"
%include "src/functions/unknown/033ff_func_033ff.asm"
%include "src/functions/unknown/0341a_func_0341a.asm"
%include "src/functions/unknown/0345e_func_0345e.asm"
%include "src/functions/unknown/0348c_func_0348c.asm"
%include "src/functions/unknown/034a5_func_034a5.asm"
%include "src/functions/unknown/0358a_func_0358a.asm"
%include "src/functions/unknown/03590_func_03590.asm"
%include "src/functions/unknown/03671_func_03671.asm"
%include "src/functions/platform/query_xms.asm"
%include "src/functions/platform/format_memory_diagnostic.asm"
%include "src/functions/unknown/03756_func_03756.asm"
%include "src/functions/unknown/0376a_func_0376a.asm"
%include "src/functions/unknown/03774_func_03774.asm"
%include "src/functions/unknown/0377e_func_0377e.asm"
%include "src/functions/unknown/0378f_func_0378f.asm"
%include "src/functions/resource_io/save_selected_archive_context.asm"
%include "src/functions/resource_io/restore_selected_archive_context.asm"
%include "src/functions/resource_io/select_grv_video_resource.asm"
%include "src/functions/resource_io/select_grv_song_resource.asm"
%include "src/functions/resource_io/read_selected_archive.asm"
%include "src/functions/resource_io/build_resource_filename.asm"
%include "src/functions/resource_io/open_resource_read_only.asm"
%include "src/functions/resource_io/close_resource_file.asm"
%include "src/functions/unknown/03a51_func_03a51.asm"
%include "src/functions/resource_io/load_selected_resource_file.asm"
%include "src/functions/grv/run_grv_vm.asm"
%include "src/functions/unknown/03e44_func_03e44.asm"
%include "src/functions/grv/grv_load_child_script.asm"
%include "src/functions/grv/grv_return_from_child_script.asm"
%include "src/functions/savegame/grv_check_valid_saves.asm"
%include "src/functions/savegame/grv_save_game.asm"
%include "src/functions/unknown/03f77_func_03f77.asm"
%include "src/functions/savegame/grv_load_game.asm"
%include "src/functions/unknown/04001_func_04001.asm"
%include "src/functions/unknown/04004_func_04004.asm"
%include "src/functions/unknown/0400a_func_0400a.asm"
%include "src/functions/unknown/04016_func_04016.asm"
%include "src/functions/unknown/04087_func_04087.asm"
%include "src/functions/grv/grv_swap_variables.asm"
%include "src/functions/grv/grv_move_variable.asm"
%include "src/functions/unknown/040c7_func_040c7.asm"
%include "src/functions/unknown/040df_func_040df.asm"
%include "src/functions/unknown/040f7_func_040f7.asm"
%include "src/functions/grv/grv_decrement_variable.asm"
%include "src/functions/grv/grv_grid_swap.asm"
%include "src/functions/grv/grv_random.asm"
%include "src/functions/unknown/041cb_func_041cb.asm"
%include "src/functions/grv/grv_xor_obfuscate_variables.asm"
%include "src/functions/unknown/041f8_func_041f8.asm"
%include "src/functions/unknown/0421e_func_0421e.asm"
%include "src/functions/grv/grv_char_less_jump.asm"
%include "src/functions/grv/grv_jump_if_indirect_not_equal.asm"
%include "src/functions/grv/grv_load_string_indirect.asm"
%include "src/functions/grv/grv_compare_indirect_and_jump.asm"
%include "src/functions/unknown/042cb_func_042cb.asm"
%include "src/functions/unknown/042f1_func_042f1.asm"
%include "src/functions/unknown/04327_func_04327.asm"
%include "src/functions/grv/grv_play_transition_video_ref.asm"
%include "src/functions/unknown/04375_func_04375.asm"
%include "src/functions/unknown/043c9_func_043c9.asm"
%include "src/functions/grv/grv_play_video_name.asm"
%include "src/functions/unknown/04406_func_04406.asm"
%include "src/functions/unknown/0443a_func_0443a.asm"
%include "src/functions/unknown/0444a_func_0444a.asm"
%include "src/functions/grv/grv_sleep.asm"
%include "src/functions/unknown/04461_func_04461.asm"
%include "src/functions/grv/run_grv_input_loop.asm"
%include "src/functions/unknown/046f5_func_046f5.asm"
%include "src/functions/unknown/04710_func_04710.asm"
%include "src/functions/grv/match_grv_key_action.asm"
%include "src/functions/unknown/04754_func_04754.asm"
%include "src/functions/unknown/0475e_func_0475e.asm"
%include "src/functions/unknown/04768_func_04768.asm"
%include "src/functions/unknown/04772_func_04772.asm"
%include "src/functions/unknown/0477c_func_0477c.asm"
%include "src/functions/unknown/0478c_func_0478c.asm"
%include "src/functions/unknown/0479c_func_0479c.asm"
%include "src/functions/unknown/047ac_func_047ac.asm"
%include "src/functions/unknown/047bc_func_047bc.asm"
%include "src/functions/unknown/047cc_func_047cc.asm"
%include "src/functions/grv/test_grv_hotspot_rect.asm"
%include "src/functions/unknown/04849_func_04849.asm"
%include "src/functions/unknown/048c9_func_048c9.asm"
%include "src/functions/unknown/04957_func_04957.asm"
%include "src/functions/unknown/0495d_func_0495d.asm"
%include "src/functions/unknown/04980_func_04980.asm"
%include "src/functions/unknown/04a23_func_04a23.asm"
%include "src/functions/unknown/04a55_func_04a55.asm"
%include "src/functions/unknown/04a7b_func_04a7b.asm"
%include "src/functions/unknown/04bf5_func_04bf5.asm"
%include "src/functions/unknown/04c27_func_04c27.asm"
%include "src/functions/unknown/04cd2_func_04cd2.asm"
%include "src/functions/unknown/04d8c_func_04d8c.asm"
%include "src/functions/unknown/04e1f_func_04e1f.asm"
%include "src/functions/unknown/04eae_func_04eae.asm"
%include "src/functions/unknown/04fc7_func_04fc7.asm"
%include "src/functions/unknown/04feb_func_04feb.asm"
%include "src/functions/unknown/04ff6_func_04ff6.asm"
%include "src/functions/unknown/05010_func_05010.asm"
%include "src/functions/unknown/05018_func_05018.asm"
%include "src/functions/unknown/05057_func_05057.asm"
%include "src/functions/unknown/051c5_func_051c5.asm"
%include "src/functions/unknown/051cb_func_051cb.asm"
%include "src/functions/unknown/051e5_func_051e5.asm"
%include "src/functions/unknown/051ff_func_051ff.asm"
%include "src/functions/unknown/05217_func_05217.asm"
%include "src/functions/unknown/05226_func_05226.asm"
%include "src/functions/unknown/05235_func_05235.asm"
%include "src/functions/unknown/05379_func_05379.asm"
%include "src/functions/grv/decode_and_draw_grv_string.asm"
%include "src/functions/unknown/054ad_func_054ad.asm"
%include "src/functions/unknown/054f9_func_054f9.asm"
%include "src/functions/grv/draw_centered_sphinx_font_string.asm"
%include "src/functions/unknown/055fc_func_055fc.asm"
%include "src/functions/unknown/05719_func_05719.asm"
%include "src/functions/unknown/05728_func_05728.asm"
%include "src/functions/unknown/05729_func_05729.asm"
%include "src/functions/unknown/0572a_func_0572a.asm"
%include "src/functions/unknown/05734_func_05734.asm"
%include "src/functions/unknown/0574a_func_0574a.asm"
%include "src/functions/unknown/05754_func_05754.asm"
%include "src/functions/unknown/0575e_func_0575e.asm"
%include "src/functions/platform/initialize_subsystems_xms.asm"
%include "src/functions/audio/wait_for_midi_sequence_completion.asm"
%include "src/functions/audio/set_midi_sequence_volume_ramp.asm"
%include "src/functions/audio/set_midi_driver_master_volume.asm"
%include "src/functions/audio/load_xmidi_timbre_patches.asm"
%include "src/functions/audio/load_and_play_selected_xmi.asm"
%include "src/functions/audio/replace_active_midi_sequence.asm"
%include "src/functions/runtime/shutdown_player.asm"
%include "src/functions/unknown/05e8d_func_05e8d.asm"
%include "src/functions/unknown/05ea9_func_05ea9.asm"
%include "src/functions/unknown/05ec8_func_05ec8.asm"
%include "src/functions/unknown/05ed6_func_05ed6.asm"
%include "src/functions/unknown/05f22_func_05f22.asm"
%include "src/functions/unknown/05f6c_func_05f6c.asm"
%include "src/functions/unknown/05fb6_func_05fb6.asm"
%include "src/functions/unknown/05fd8_func_05fd8.asm"
%include "src/functions/unknown/05fe4_func_05fe4.asm"
%include "src/functions/unknown/060d0_func_060d0.asm"
%include "src/functions/unknown/061d0_func_061d0.asm"
%include "src/functions/unknown/06290_func_06290.asm"
%include "src/functions/unknown/062ea_func_062ea.asm"
%include "src/functions/unknown/063b4_func_063b4.asm"
%include "src/functions/unknown/0641c_func_0641c.asm"
%include "src/functions/unknown/06436_func_06436.asm"
%include "src/functions/unknown/06458_func_06458.asm"
%include "src/functions/unknown/0656c_func_0656c.asm"
%include "src/functions/unknown/06846_func_06846.asm"
%include "src/functions/unknown/06a6d_func_06a6d.asm"
%include "src/functions/unknown/06a81_func_06a81.asm"
%include "src/functions/unknown/06aef_func_06aef.asm"
%include "src/functions/unknown/06d0e_func_06d0e.asm"
%include "src/functions/unknown/06de4_func_06de4.asm"
%include "src/functions/unknown/06e68_func_06e68.asm"
%include "src/functions/unknown/06e72_func_06e72.asm"
%include "src/functions/unknown/06eb6_func_06eb6.asm"
%include "src/functions/unknown/06ed9_func_06ed9.asm"
%include "src/functions/unknown/06fa9_func_06fa9.asm"
%include "src/functions/unknown/073e0_func_073e0.asm"
%include "src/functions/unknown/07418_func_07418.asm"
%include "src/functions/unknown/07501_func_07501.asm"
%include "src/functions/unknown/07544_func_07544.asm"
%include "src/functions/unknown/07590_func_07590.asm"
%include "src/functions/unknown/075c0_func_075c0.asm"
%include "src/functions/unknown/075e9_func_075e9.asm"
%include "src/functions/unknown/07613_func_07613.asm"
%include "src/functions/unknown/0765e_func_0765e.asm"
%include "src/functions/unknown/076f3_func_076f3.asm"
%include "src/functions/unknown/0773e_func_0773e.asm"
%include "src/functions/unknown/077a3_func_077a3.asm"
%include "src/functions/unknown/0786e_func_0786e.asm"
%include "src/functions/unknown/078b7_func_078b7.asm"
%include "src/functions/unknown/078d5_func_078d5.asm"
%include "src/functions/unknown/0791b_func_0791b.asm"
%include "src/functions/unknown/07961_func_07961.asm"
%include "src/functions/unknown/079b6_func_079b6.asm"
%include "src/functions/unknown/079f7_func_079f7.asm"
%include "src/functions/unknown/07a33_func_07a33.asm"
%include "src/functions/unknown/07a47_func_07a47.asm"
%include "src/functions/unknown/07b71_func_07b71.asm"
%include "src/functions/unknown/07b97_func_07b97.asm"
%include "src/functions/unknown/07b9d_func_07b9d.asm"
%include "src/functions/unknown/07c4f_func_07c4f.asm"
%include "src/functions/unknown/07c88_func_07c88.asm"
%include "src/functions/unknown/07c8e_func_07c8e.asm"
%include "src/functions/unknown/07c94_func_07c94.asm"
%include "src/functions/unknown/07cac_func_07cac.asm"
%include "src/functions/unknown/07cb2_func_07cb2.asm"
%include "src/functions/unknown/07cc4_func_07cc4.asm"
%include "src/functions/unknown/07ce2_func_07ce2.asm"
%include "src/functions/unknown/07ce8_func_07ce8.asm"
%include "src/functions/unknown/07cee_func_07cee.asm"
%include "src/functions/unknown/07cf4_func_07cf4.asm"
%include "src/functions/unknown/07cfa_func_07cfa.asm"
%include "src/functions/unknown/07d00_func_07d00.asm"
%include "src/functions/unknown/07d18_func_07d18.asm"
%include "src/functions/unknown/07d1e_func_07d1e.asm"
%include "src/functions/unknown/07d2a_func_07d2a.asm"
%include "src/functions/unknown/07d3c_func_07d3c.asm"
%include "src/functions/unknown/07d4e_func_07d4e.asm"
%include "src/functions/unknown/07ea0_func_07ea0.asm"
%include "src/functions/unknown/07ed7_func_07ed7.asm"
%include "src/functions/unknown/07f0e_func_07f0e.asm"
%include "src/functions/unknown/07f55_func_07f55.asm"
%include "src/functions/unknown/07f64_func_07f64.asm"
%include "src/functions/unknown/07f7b_func_07f7b.asm"
%include "src/functions/unknown/07fb6_func_07fb6.asm"
%include "src/functions/unknown/08069_func_08069.asm"
%include "src/functions/unknown/080d6_func_080d6.asm"
%include "src/functions/unknown/0812b_func_0812b.asm"
%include "src/functions/unknown/08152_func_08152.asm"
%include "src/functions/unknown/082a9_func_082a9.asm"
%include "src/functions/unknown/082fc_func_082fc.asm"
%include "src/functions/unknown/08327_func_08327.asm"
%include "src/functions/unknown/083fe_func_083fe.asm"
%include "src/functions/unknown/0847e_func_0847e.asm"
%include "src/functions/unknown/0848c_func_0848c.asm"
%include "src/functions/unknown/084f1_func_084f1.asm"
%include "src/functions/unknown/08524_func_08524.asm"
%include "src/functions/unknown/0864a_func_0864a.asm"
%include "src/functions/unknown/086ab_func_086ab.asm"
%include "src/functions/unknown/086c0_func_086c0.asm"
%include "src/functions/unknown/08766_func_08766.asm"
%include "src/functions/unknown/08854_func_08854.asm"
%include "src/functions/unknown/08891_func_08891.asm"
%include "src/functions/unknown/088d9_func_088d9.asm"
%include "src/functions/unknown/0891d_func_0891d.asm"

%include "src/data/gaps.asm"
; Data Segments
; Semantically extracted ranges and the initialized ranges still under study.
%include "src/data/post_code_alignment.asm"
%include "src/data/zero_initialized_static_workspace_08930_1584f.asm"
%include "src/data/unresolved_initialized_runtime_data.asm"
%include "src/data/vdx_delta_tile_map.asm"
%include "src/data/unresolved_initialized_tables_and_templates.asm"
%include "src/data/unresolved_pre_configuration_runtime_data.asm"
%include "src/data/groovie_configuration_strings.asm"
%include "src/data/unresolved_lookup_structures.asm"
%include "src/data/zero_initialized_static_workspace_1724c_17c2d.asm"
%include "src/data/unresolved_initialized_word.asm"
%include "src/data/zero_initialized_static_workspace_17c30_18151.asm"
%include "src/data/runtime_diagnostic_and_configuration_strings.asm"


section .header start=0 vstart=0 align=1

; Reconstructed DOS MZ header for the deterministic V1.30 unpacked image.
mz_header_start:
    dw 0x5A4D ; 0000 e_magic
    dw 0x00F8 ; 0002 e_cblp
    dw 0x00C8 ; 0004 e_cp
    dw 0x0066 ; 0006 e_crlc
    dw 0x0020 ; 0008 e_cparhdr
    dw 0x0001 ; 000A e_minalloc
    dw 0xFFFF ; 000C e_maxalloc
    dw 0x1811 ; 000E e_ss
    dw 0x0040 ; 0010 e_sp
    dw 0x0000 ; 0012 e_csum
    dw 0x0000 ; 0014 e_ip
    dw 0x0000 ; 0016 e_cs
    dw 0x001C ; 0018 e_lfarlc
    dw 0x0000 ; 001A e_ovno

    ; 102 relocation entries (offset, segment)
    dw 0x0002, 0x0000 ; relocation 000, load-image 00002
    dw 0x000F, 0x0000 ; relocation 001, load-image 0000F
    dw 0x0002, 0x028E ; relocation 002, load-image 028E2
    dw 0x000A, 0x028F ; relocation 003, load-image 028FA
    dw 0x000D, 0x0295 ; relocation 004, load-image 0295D
    dw 0x000F, 0x0297 ; relocation 005, load-image 0297F
    dw 0x0007, 0x02A2 ; relocation 006, load-image 02A27
    dw 0x000A, 0x02A6 ; relocation 007, load-image 02A6A
    dw 0x0004, 0x02A7 ; relocation 008, load-image 02A74
    dw 0x000E, 0x02A7 ; relocation 009, load-image 02A7E
    dw 0x0009, 0x02A8 ; relocation 010, load-image 02A89
    dw 0x000E, 0x02A9 ; relocation 011, load-image 02A9E
    dw 0x0001, 0x02AE ; relocation 012, load-image 02AE1
    dw 0x000B, 0x02AE ; relocation 013, load-image 02AEB
    dw 0x0006, 0x02AF ; relocation 014, load-image 02AF6
    dw 0x0001, 0x02B0 ; relocation 015, load-image 02B01
    dw 0x0001, 0x02B1 ; relocation 016, load-image 02B11
    dw 0x000E, 0x02B4 ; relocation 017, load-image 02B4E
    dw 0x0009, 0x02BF ; relocation 018, load-image 02BF9
    dw 0x000D, 0x02D5 ; relocation 019, load-image 02D5D
    dw 0x0004, 0x02FE ; relocation 020, load-image 02FE4
    dw 0x0006, 0x02FF ; relocation 021, load-image 02FF6
    dw 0x0006, 0x034A ; relocation 022, load-image 034A6
    dw 0x0002, 0x0359 ; relocation 023, load-image 03592
    dw 0x0005, 0x0379 ; relocation 024, load-image 03795
    dw 0x0008, 0x037E ; relocation 025, load-image 037E8
    dw 0x000E, 0x0388 ; relocation 026, load-image 0388E
    dw 0x0005, 0x0394 ; relocation 027, load-image 03945
    dw 0x000A, 0x03AC ; relocation 028, load-image 03ACA
    dw 0x0004, 0x03F3 ; relocation 029, load-image 03F34
    dw 0x0005, 0x03FD ; relocation 030, load-image 03FD5
    dw 0x0006, 0x0448 ; relocation 031, load-image 04486
    dw 0x0009, 0x045C ; relocation 032, load-image 045C9
    dw 0x0004, 0x046C ; relocation 033, load-image 046C4
    dw 0x000A, 0x046D ; relocation 034, load-image 046DA
    dw 0x0008, 0x046F ; relocation 035, load-image 046F8
    dw 0x000E, 0x0473 ; relocation 036, load-image 0473E
    dw 0x0008, 0x0475 ; relocation 037, load-image 04758
    dw 0x0002, 0x0476 ; relocation 038, load-image 04762
    dw 0x000C, 0x0476 ; relocation 039, load-image 0476C
    dw 0x0006, 0x0477 ; relocation 040, load-image 04776
    dw 0x0006, 0x0478 ; relocation 041, load-image 04786
    dw 0x0006, 0x0479 ; relocation 042, load-image 04796
    dw 0x0006, 0x047A ; relocation 043, load-image 047A6
    dw 0x0006, 0x047B ; relocation 044, load-image 047B6
    dw 0x0006, 0x047C ; relocation 045, load-image 047C6
    dw 0x0006, 0x047D ; relocation 046, load-image 047D6
    dw 0x0002, 0x0482 ; relocation 047, load-image 04822
    dw 0x0000, 0x0485 ; relocation 048, load-image 04850
    dw 0x000D, 0x048C ; relocation 049, load-image 048CD
    dw 0x0003, 0x0498 ; relocation 050, load-image 04983
    dw 0x0009, 0x04A8 ; relocation 051, load-image 04A89
    dw 0x0009, 0x0506 ; relocation 052, load-image 05069
    dw 0x000C, 0x050C ; relocation 053, load-image 050CC
    dw 0x000B, 0x0524 ; relocation 054, load-image 0524B
    dw 0x0007, 0x052B ; relocation 055, load-image 052B7
    dw 0x000B, 0x0539 ; relocation 056, load-image 0539B
    dw 0x0003, 0x0561 ; relocation 057, load-image 05613
    dw 0x0000, 0x0564 ; relocation 058, load-image 05640
    dw 0x0001, 0x0568 ; relocation 059, load-image 05681
    dw 0x0004, 0x0577 ; relocation 060, load-image 05774
    dw 0x0007, 0x0578 ; relocation 061, load-image 05787
    dw 0x0005, 0x0582 ; relocation 062, load-image 05825
    dw 0x000E, 0x0585 ; relocation 063, load-image 0585E
    dw 0x0002, 0x058C ; relocation 064, load-image 058C2
    dw 0x0001, 0x058F ; relocation 065, load-image 058F1
    dw 0x0001, 0x0590 ; relocation 066, load-image 05901
    dw 0x000C, 0x0591 ; relocation 067, load-image 0591C
    dw 0x0001, 0x0597 ; relocation 068, load-image 05971
    dw 0x0002, 0x059B ; relocation 069, load-image 059B2
    dw 0x000E, 0x059B ; relocation 070, load-image 059BE
    dw 0x0007, 0x059D ; relocation 071, load-image 059D7
    dw 0x0000, 0x059E ; relocation 072, load-image 059E0
    dw 0x0007, 0x059E ; relocation 073, load-image 059E7
    dw 0x0008, 0x05A0 ; relocation 074, load-image 05A08
    dw 0x0004, 0x05A1 ; relocation 075, load-image 05A14
    dw 0x0007, 0x05A2 ; relocation 076, load-image 05A27
    dw 0x0003, 0x05A4 ; relocation 077, load-image 05A43
    dw 0x0002, 0x05A6 ; relocation 078, load-image 05A62
    dw 0x0004, 0x05A8 ; relocation 079, load-image 05A84
    dw 0x0005, 0x05AA ; relocation 080, load-image 05AA5
    dw 0x0008, 0x05AD ; relocation 081, load-image 05AD8
    dw 0x0002, 0x05B1 ; relocation 082, load-image 05B12
    dw 0x000F, 0x05B3 ; relocation 083, load-image 05B3F
    dw 0x0005, 0x05BB ; relocation 084, load-image 05BB5
    dw 0x0009, 0x05C3 ; relocation 085, load-image 05C39
    dw 0x000E, 0x05C4 ; relocation 086, load-image 05C4E
    dw 0x000D, 0x05C6 ; relocation 087, load-image 05C6D
    dw 0x000E, 0x05C8 ; relocation 088, load-image 05C8E
    dw 0x000E, 0x05C9 ; relocation 089, load-image 05C9E
    dw 0x0006, 0x05CB ; relocation 090, load-image 05CB6
    dw 0x0002, 0x05CD ; relocation 091, load-image 05CD2
    dw 0x0003, 0x05D0 ; relocation 092, load-image 05D03
    dw 0x000F, 0x05D0 ; relocation 093, load-image 05D0F
    dw 0x000F, 0x05D1 ; relocation 094, load-image 05D1F
    dw 0x0006, 0x05D3 ; relocation 095, load-image 05D36
    dw 0x0002, 0x05D4 ; relocation 096, load-image 05D42
    dw 0x0001, 0x05E5 ; relocation 097, load-image 05E51
    dw 0x000D, 0x05ED ; relocation 098, load-image 05EDD
    dw 0x000C, 0x05EF ; relocation 099, load-image 05EFC
    dw 0x000B, 0x07B7 ; relocation 100, load-image 07B7B
    dw 0x0002, 0x15E8 ; relocation 101, load-image 15E82

    ; Header padding
    db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 ; 001B4 |................|
    db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 ; 001C4 |................|
    db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 ; 001D4 |................|
    db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 ; 001E4 |................|
    db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 ; 001F4 |............|

    %if ($ - mz_header_start) != 0x200
        %error "MZ_HEADER_SIZE"
    %endif

; The MZ loader maps this section at runtime offset 0000h even though it follows
; the 512-byte header in the file. vstart keeps numeric near branches identical.
section .image follows=.header vstart=0 align=1

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
    emit_read_vdx_stream_bytes_part_00
    ; 002C0..0030D function
    emit_read_and_validate_vdx_header_part_00
    ; 0030E..00382 function
    emit_decode_vdx_stream_part_00
    ; 00383..00384 gap
    emit_gap_001_00383
    ; 00385..0038D function
    emit_decode_vdx_stream_part_01
    ; 0038E..0038F gap
    emit_gap_002_0038e
    ; 00390..0039B function
    emit_decode_vdx_stream_part_02
    ; 0039C..0039D gap
    emit_gap_003_0039c
    ; 0039E..0040C function
    emit_decode_vdx_stream_part_03
    ; 0040D..00475 function
    emit_apply_vdx_delta_palette_part_00
    ; 00476..00500 function
    emit_load_vdx_still_palette_part_00
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
    emit_decompress_vdx_lzss_part_00
    ; 023A5..02590 function
    emit_copy_background_rectangle_to_foreground_part_00
    ; 02591..026E4 function
    emit_copy_background_to_foreground_part_00
    ; 026E5..0276C function
    emit_func_026e5_part_00
    ; 0276D..02821 function
    emit_mark_used_background_palette_entries_part_00
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
    emit_save_selected_archive_context_part_00
    ; 03838..03889 function
    emit_restore_selected_archive_context_part_00
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
    emit_grv_load_child_script_part_00
    ; 03EB8..03EE9 function
    emit_grv_return_from_child_script_part_00
    ; 03EEA..03F22 function
    emit_grv_check_valid_saves_part_00
    ; 03F23..03F76 function
    emit_grv_save_game_part_00
    ; 03F77..03FC3 function
    emit_func_03f77_part_00
    ; 03FC4..04000 function
    emit_grv_load_game_part_00
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
    emit_grv_swap_variables_part_00
    ; 040B2..040C6 function
    emit_grv_move_variable_part_00
    ; 040C7..040DE function
    emit_func_040c7_part_00
    ; 040DF..040F6 function
    emit_func_040df_part_00
    ; 040F7..04102 function
    emit_func_040f7_part_00
    ; 04103..0410E function
    emit_grv_decrement_variable_part_00
    ; 0410F..041A3 function
    emit_grv_grid_swap_part_00
    ; 041A4..041CA function
    emit_grv_random_part_00
    ; 041CB..041DE function
    emit_func_041cb_part_00
    ; 041DF..041F7 function
    emit_grv_xor_obfuscate_variables_part_00
    ; 041F8..0421D function
    emit_func_041f8_part_00
    ; 0421E..04243 function
    emit_func_0421e_part_00
    ; 04244..04269 function
    emit_grv_char_less_jump_part_00
    ; 0426A..04291 function
    emit_grv_jump_if_indirect_not_equal_part_00
    ; 04292..042B0 function
    emit_grv_load_string_indirect_part_00
    ; 042B1..042CA function
    emit_grv_compare_indirect_and_jump_part_00
    ; 042CB..042F0 function
    emit_func_042cb_part_00
    ; 042F1..04326 function
    emit_func_042f1_part_00
    ; 04327..0432A function
    emit_func_04327_part_00
    ; 0432B..04374 function
    emit_grv_play_transition_video_ref_part_00
    ; 04375..043C8 function
    emit_func_04375_part_00
    ; 043C9..043D1 function
    emit_func_043c9_part_00
    ; 043D2..04405 function
    emit_grv_play_video_name_part_00
    ; 04406..04439 function
    emit_func_04406_part_00
    ; 0443A..04449 function
    emit_func_0443a_part_00
    ; 0444A..04450 function
    emit_func_0444a_part_00
    ; 04451..04460 function
    emit_grv_sleep_part_00
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
    emit_decode_and_draw_grv_string_part_00
    ; 054AD..054F8 function
    emit_func_054ad_part_00
    ; 054F9..05522 function
    emit_func_054f9_part_00
    ; 05523..055FB function
    emit_draw_centered_sphinx_font_string_part_00
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
    emit_wait_for_midi_sequence_completion_part_00
    ; 05A4F..05A6B gap
    emit_gap_059_05a4f
    ; 05A6C..05A8A function
    emit_set_midi_sequence_volume_ramp_part_00
    ; 05A8B..05AAB function
    emit_set_midi_driver_master_volume_part_00
    ; 05AAC..05BD0 function
    emit_load_xmidi_timbre_patches_part_00
    ; 05BD1..05C05 function
    emit_load_and_play_selected_xmi_part_00
    ; 05C06..05CDD function
    emit_replace_active_midi_sequence_part_00
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
    ; 0892C..0892F verified alignment
    emit_post_code_alignment
    ; 08930..1584F verified startup DS zero-initialized workspace
    emit_zero_initialized_static_workspace_08930_1584f
    ; 15850..15DBD unresolved initialized runtime data
    emit_unresolved_initialized_runtime_data
    ; 15DBE..15E7D verified VDX delta tile-map table
    emit_vdx_delta_tile_map
    ; 15E7E..1692B unresolved initialized tables and templates
    emit_unresolved_initialized_tables_and_templates
    ; 1692C..169F7 unresolved initialized runtime data
    emit_unresolved_pre_configuration_runtime_data
    ; 169F8..16A89 verified Groovie configuration strings
    emit_groovie_configuration_strings_169f8_16a89
    ; 16A8A..1724B unresolved initialized lookup structures
    emit_unresolved_lookup_structures
    ; 1724C..17C2D verified zero-initialized static workspace
    emit_zero_initialized_static_workspace_1724c_17c2d
    ; 17C2E..17C2F unresolved initialized word (C8 C8)
    emit_unresolved_initialized_word
    ; 17C30..18151 verified zero-initialized static workspace
    emit_zero_initialized_static_workspace_17c30_18151
    ; 18152..18CF7 verified diagnostic/configuration string corpus
    emit_runtime_diagnostic_and_configuration_strings

    %if ($ - load_image_start) != 0x18CF8
        %error "LOAD_IMAGE_SIZE"
    %endif
