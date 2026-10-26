; DOS GROOVIE Player V.EXE 1.30 -- complete lossless source root.
;
; Function files use real NASM instructions where NASM reproduces the
; historical encoding. Noncanonical encodings and non-code bytes use explicit
; db directives. There are no imported executable-byte ranges.

bits 16

; Functions
; Generated function macro inventory.
%include "src/functions/runtime/entry.asm"
%include "src/functions/vdx/initialize_vdx_stream_buffers.asm"
%include "src/functions/runtime/standalone_vdx_or_diagnostics.asm"
%include "src/functions/resource_io/open_vdx_file_or_borrow_archive_handle.asm"
%include "src/functions/resource_io/close_vdx_file_unless_archive_borrowed.asm"
%include "src/functions/vdx/read_vdx_stream_bytes.asm"
%include "src/functions/vdx/read_and_validate_vdx_header.asm"
%include "src/functions/vdx/decode_vdx_stream.asm"
%include "src/functions/vdx/apply_vdx_delta_palette.asm"
%include "src/functions/vdx/load_vdx_still_palette.asm"
%include "src/functions/vdx/upload_vdx_palette_or_black.asm"
%include "src/functions/vdx/decode_vdx_bitmap_still.asm"
%include "src/functions/vdx/fade_in_vdx_palette_rgb.asm"
%include "src/functions/vdx/fade_out_vdx_palette_rgb_and_clear.asm"
%include "src/functions/vdx/decode_vdx_delta_frame.asm"
%include "src/functions/cursor/decompress_cursor_lzss_12bit.asm"
%include "src/functions/vdx/decompress_vdx_lzss.asm"
%include "src/functions/vdx/copy_background_rectangle_to_foreground.asm"
%include "src/functions/vdx/snapshot_display_to_xms_background.asm"
%include "src/functions/vdx/merge_32_color_palette_into_unused_entries.asm"
%include "src/functions/vdx/mark_used_background_palette_entries.asm"
%include "src/functions/vdx/restore_saved_vga_palette_at_retrace.asm"
%include "src/functions/platform/clear_indexed_display_memory.asm"
%include "src/functions/audio/pump_pending_pcm_buffers.asm"
%include "src/functions/audio/drain_pcm_stream_with_timeout.asm"
%include "src/functions/audio/wait_for_miles_pcm_buffers_complete.asm"
%include "src/functions/vdx/stream_media_buffer.asm"
%include "src/functions/audio/bios_pcm_completion_interrupt.asm"
%include "src/data/audio/bios_pcm_interrupt_vectors.asm"
%include "src/functions/runtime/probe_cpu_and_x87_capabilities.asm"
%include "src/functions/platform/dispatch_video_bank_switch.asm"
%include "src/functions/platform/synchronize_video_bank_state.asm"
%include "src/functions/platform/call_scaled_video_bank_handler.asm"
%include "src/functions/platform/detect_video_hardware.asm"
%include "src/functions/platform/probe_sequencer_register_six_bank_handler.asm"
%include "src/functions/platform/probe_video_memory_bank_separation.asm"
%include "src/functions/platform/test_video_bank_pattern_pair.asm"
%include "src/functions/platform/probe_indexed_register_writable_bits.asm"
%include "src/functions/platform/probe_direct_register_writable_bits.asm"
%include "src/functions/platform/set_detected_graphics_mode.asm"
%include "src/functions/platform/restore_bios_text_mode.asm"
%include "src/functions/runtime/print_hardware_and_memory_diagnostics.asm"
%include "src/functions/platform/detect_and_reset_mouse_driver.asm"
%include "src/functions/platform/query_xms.asm"
%include "src/functions/platform/format_memory_diagnostic.asm"
%include "src/functions/resource_io/open_named_archive_file.asm"
%include "src/functions/resource_io/close_song_archive.asm"
%include "src/functions/resource_io/close_video_archive.asm"
%include "src/functions/resource_io/close_video_and_song_archives.asm"
%include "src/functions/resource_io/resolve_named_resource_reference.asm"
%include "src/functions/resource_io/save_selected_archive_context.asm"
%include "src/functions/resource_io/restore_selected_archive_context.asm"
%include "src/functions/resource_io/select_grv_video_resource.asm"
%include "src/functions/resource_io/select_grv_song_resource.asm"
%include "src/functions/resource_io/read_selected_archive.asm"
%include "src/functions/resource_io/build_resource_filename.asm"
%include "src/functions/resource_io/open_resource_read_only.asm"
%include "src/functions/resource_io/close_resource_file.asm"
%include "src/functions/resource_io/read_open_resource_file.asm"
%include "src/functions/resource_io/load_selected_resource_file.asm"
%include "src/functions/grv/run_grv_vm.asm"
%include "src/functions/resource_io/probe_game_disc_archive_availability.asm"
%include "src/functions/grv/grv_load_child_script.asm"
%include "src/functions/grv/grv_return_from_child_script.asm"
%include "src/functions/savegame/grv_check_valid_saves.asm"
%include "src/functions/savegame/grv_save_game.asm"
%include "src/functions/savegame/write_aborted_game_snapshot_to_save_z.asm"
%include "src/functions/savegame/grv_load_game.asm"
%include "src/functions/grv/grv_jump_absolute.asm"
%include "src/functions/grv/grv_store_word_operand_d9fd.asm"
%include "src/functions/grv/grv_read_variable_operand.asm"
%include "src/functions/grv/grv_decode_sequence_element.asm"
%include "src/functions/grv/grv_load_sequence.asm"
%include "src/functions/grv/grv_swap_variables.asm"
%include "src/functions/grv/grv_move_variable.asm"
%include "src/functions/grv/grv_add_variable.asm"
%include "src/functions/grv/grv_subtract_variable.asm"
%include "src/functions/grv/grv_increment_variable.asm"
%include "src/functions/grv/grv_decrement_variable.asm"
%include "src/functions/grv/grv_grid_swap.asm"
%include "src/functions/grv/grv_random.asm"
%include "src/functions/grv/grv_reduce_variable_above_divisor.asm"
%include "src/functions/grv/grv_xor_obfuscate_variables.asm"
%include "src/functions/grv/grv_branch_sequence_not_equal.asm"
%include "src/functions/grv/grv_branch_sequence_any_greater.asm"
%include "src/functions/grv/grv_char_less_jump.asm"
%include "src/functions/grv/grv_jump_if_indirect_not_equal.asm"
%include "src/functions/grv/grv_load_string_indirect.asm"
%include "src/functions/grv/grv_compare_indirect_and_jump.asm"
%include "src/functions/grv/grv_branch_sequence_equal.asm"
%include "src/functions/grv/advance_grv_random_state.asm"
%include "src/functions/grv/advance_grv_random_state_far.asm"
%include "src/functions/grv/grv_play_transition_video_ref.asm"
%include "src/functions/vdx/play_named_vdx_resource.asm"
%include "src/functions/grv/grv_set_reserved_flag_d9ce.asm"
%include "src/functions/grv/grv_play_video_name.asm"
%include "src/functions/grv/grv_play_video_reference.asm"
%include "src/functions/grv/grv_play_song_reference.asm"
%include "src/functions/grv/grv_set_background_song.asm"
%include "src/functions/grv/grv_sleep.asm"
%include "src/functions/grv/grv_call_absolute.asm"
%include "src/functions/grv/run_grv_input_loop.asm"
%include "src/functions/grv/replay_grv_background_song.asm"
%include "src/functions/cursor/select_cursor_shape_and_palette.asm"
%include "src/functions/grv/match_grv_key_action.asm"
%include "src/functions/grv/test_persistent_top_bar_hotspot.asm"
%include "src/functions/grv/test_persistent_right_hotspot.asm"
%include "src/functions/grv/test_persistent_left_hotspot.asm"
%include "src/functions/grv/test_persistent_bottom_bar_hotspot.asm"
%include "src/functions/grv/grv_test_bottom_bar_hotspot.asm"
%include "src/functions/grv/grv_test_right_hotspot.asm"
%include "src/functions/grv/grv_test_left_hotspot.asm"
%include "src/functions/grv/grv_test_center_hotspot_cursor_zero.asm"
%include "src/functions/grv/grv_test_center_hotspot_cursor_three.asm"
%include "src/functions/grv/grv_test_full_width_hotspot.asm"
%include "src/functions/grv/test_grv_hotspot_rect.asm"
%include "src/functions/grv/expand_grv_video_filename.asm"
%include "src/functions/runtime/tokenize_configuration_line.asm"
%include "src/functions/runtime/skip_nul_terminated_string.asm"
%include "src/functions/runtime/skip_configuration_whitespace.asm"
%include "src/functions/vdx/build_32_color_palette_translation.asm"
%include "src/functions/runtime/parse_configuration_decimal_word.asm"
%include "src/functions/runtime/parse_configuration_hex_word.asm"
%include "src/functions/cursor/update_animated_software_cursor.asm"
%include "src/functions/cursor/erase_software_cursor.asm"
%include "src/functions/cursor/draw_cursor_and_save_background_banked.asm"
%include "src/functions/cursor/redraw_cursor_frame_banked.asm"
%include "src/functions/cursor/draw_cursor_and_save_background_half_resolution.asm"
%include "src/functions/cursor/redraw_cursor_frame_half_resolution.asm"
%include "src/functions/cursor/restore_cursor_background.asm"
%include "src/functions/runtime/skip_configuration_crlf_line.asm"
%include "src/functions/runtime/ascii_lowercase_al.asm"
%include "src/functions/runtime/compare_ascii_strings_case_insensitive.asm"
%include "src/functions/runtime/copy_config_string_leaving_terminator.asm"
%include "src/functions/runtime/find_configuration_section.asm"
%include "src/functions/runtime/load_groovie_configuration.asm"
%include "src/functions/runtime/mark_videocard_configuration_seen.asm"
%include "src/functions/runtime/configure_dma_buffer_size.asm"
%include "src/functions/runtime/configure_ticks_per_second.asm"
%include "src/functions/runtime/configure_svga_mode.asm"
%include "src/functions/runtime/configure_program_directory.asm"
%include "src/functions/runtime/configure_data_directory.asm"
%include "src/functions/runtime/configure_midi_driver.asm"
%include "src/functions/runtime/configure_pcm_driver.asm"
%include "src/functions/grv/decode_and_draw_grv_string.asm"
%include "src/functions/savegame/load_and_draw_save_slot_caption.asm"
%include "src/functions/grv/clear_grv_caption_video_region.asm"
%include "src/functions/grv/draw_centered_sphinx_font_string.asm"
%include "src/functions/audio/play_mscdex_audio_selection.asm"
%include "src/functions/audio/stop_mscdex_audio.asm"
%include "src/functions/audio/mscdex_post_play_no_op.asm"
%include "src/functions/audio/mscdex_pre_stop_no_op.asm"
%include "src/functions/audio/get_mscdex_drive_letters.asm"
%include "src/functions/resource_io/open_driver_or_timbre_file.asm"
%include "src/functions/resource_io/close_driver_or_timbre_file.asm"
%include "src/functions/resource_io/read_driver_or_timbre_file.asm"
%include "src/functions/resource_io/rewind_driver_or_timbre_file.asm"
%include "src/functions/platform/initialize_subsystems_xms.asm"
%include "src/functions/audio/wait_for_midi_sequence_completion.asm"
%include "src/functions/audio/set_midi_sequence_volume_ramp.asm"
%include "src/functions/audio/set_pcm_driver_parameter_81.asm"
%include "src/functions/audio/load_xmidi_timbre_patches.asm"
%include "src/functions/audio/load_and_play_selected_xmi.asm"
%include "src/functions/audio/replace_active_midi_sequence.asm"
%include "src/functions/runtime/shutdown_player.asm"
%include "src/functions/runtime/free_dos_memory_segment.asm"
%include "src/functions/runtime/allocate_dos_memory_for_byte_count.asm"
%include "src/functions/runtime/allocate_dos_memory_paragraphs.asm"
%include "src/functions/puzzle/cell_run_grv_puzzle_search.asm"
%include "src/functions/puzzle/cell_convert_adjacent_pieces.asm"
%include "src/functions/puzzle/cell_count_board_pieces.asm"
%include "src/functions/puzzle/cell_begin_forward_move_iteration.asm"
%include "src/functions/puzzle/cell_begin_reverse_move_iteration.asm"
%include "src/functions/puzzle/cell_next_forward_move.asm"
%include "src/functions/puzzle/cell_next_forward_move_with_jump_deduplication.asm"
%include "src/functions/puzzle/cell_next_reverse_move.asm"
%include "src/functions/puzzle/cell_apply_move_to_scratch_board.asm"
%include "src/functions/puzzle/cell_score_candidate_move.asm"
%include "src/functions/puzzle/cell_count_adjacent_clone_opportunities.asm"
%include "src/functions/puzzle/cell_reset_best_move_list.asm"
%include "src/functions/puzzle/cell_append_tied_best_move.asm"
%include "src/functions/puzzle/cell_choose_best_move.asm"
%include "src/functions/puzzle/cell_search_recursive.asm"
%include "src/functions/puzzle/cell_search_best_move.asm"
%include "src/functions/puzzle/cell_reset_ranked_move_list.asm"
%include "src/functions/puzzle/cell_insert_ranked_move.asm"
%include "src/functions/puzzle/cell_build_ranked_move_list.asm"
%include "src/functions/puzzle/cell_search_ranked_moves.asm"
%include "src/functions/puzzle/cell_dispatch_search_strategy.asm"
%include "src/functions/puzzle/cell_random_byte.asm"
%include "src/functions/platform/allocate_xms_still_cache.asm"
%include "src/functions/platform/release_xms_still_cache.asm"
%include "src/functions/vdx/transfer_selected_xms_still_cache_block.asm"
%include "src/functions/vdx/select_xms_still_cache_entry.asm"
%include "src/functions/audio/miles_find_driver_command.asm"
%include "src/functions/audio/miles_tail_dispatch_driver_command.asm"
%include "src/functions/audio/miles_timer_interrupt.asm"
%include "src/functions/audio/miles_chain_previous_timer_interrupt.asm"
%include "src/functions/audio/miles_initialize_timer_state.asm"
%include "src/functions/audio/miles_install_timer_interrupt.asm"
%include "src/functions/audio/miles_restore_timer_interrupt.asm"
%include "src/functions/audio/miles_program_pit_channel_zero.asm"
%include "src/functions/audio/miles_program_pit_from_period.asm"
%include "src/functions/audio/miles_divide_unsigned_dword.asm"
%include "src/functions/audio/miles_recompute_minimum_timer_period.asm"
%include "src/functions/audio/miles_initialize_driver_tables.asm"
%include "src/functions/audio/miles_shutdown_drivers_and_timers.asm"
%include "src/functions/audio/miles_register_timer_callback.asm"
%include "src/functions/audio/miles_release_timer_callback.asm"
%include "src/functions/audio/miles_release_all_timer_callbacks.asm"
%include "src/functions/audio/miles_start_timer_callback.asm"
%include "src/functions/audio/miles_stop_timer_callback.asm"
%include "src/functions/audio/miles_set_timer_period.asm"
%include "src/functions/audio/miles_set_timer_frequency.asm"
%include "src/functions/audio/miles_set_timer_period_from_pit_count.asm"
%include "src/functions/audio/miles_get_programmed_pit_count.asm"
%include "src/functions/audio/miles_register_driver_image.asm"
%include "src/functions/audio/miles_query_driver_descriptor.asm"
%include "src/functions/audio/miles_dispatch_driver_command_65.asm"
%include "src/functions/audio/miles_initialize_registered_driver.asm"
%include "src/functions/audio/miles_shutdown_registered_driver.asm"
%include "src/functions/audio/miles_dispatch_pcm_command_79.asm"
%include "src/functions/audio/miles_dispatch_pcm_descriptor_command_86.asm"
%include "src/functions/audio/miles_query_pcm_buffer_status.asm"
%include "src/functions/audio/miles_dispatch_pcm_command_7d.asm"
%include "src/functions/audio/miles_dispatch_pcm_stop_command_7e.asm"
%include "src/functions/audio/miles_dispatch_driver_command_81.asm"
%include "src/functions/audio/miles_dispatch_driver_command_97.asm"
%include "src/functions/audio/miles_dispatch_driver_command_98.asm"
%include "src/functions/audio/miles_dispatch_driver_command_99.asm"
%include "src/functions/audio/miles_dispatch_driver_command_9a.asm"
%include "src/functions/audio/miles_dispatch_driver_command_9b.asm"
%include "src/functions/audio/miles_dispatch_driver_command_9c.asm"
%include "src/functions/audio/miles_dispatch_driver_command_aa.asm"
%include "src/functions/audio/miles_dispatch_driver_command_ab.asm"
%include "src/functions/audio/miles_dispatch_driver_command_ae.asm"
%include "src/functions/audio/miles_dispatch_driver_command_b1.asm"
%include "src/functions/audio/miles_dispatch_driver_command_b4.asm"
%include "src/functions/audio/digpak_suspend_miles_timer_if_required.asm"
%include "src/functions/audio/digpak_resume_miles_timer_if_required.asm"
%include "src/functions/audio/digpak_subtract_far_pointer_addresses.asm"
%include "src/functions/audio/digpak_read_voc_block_type.asm"
%include "src/functions/audio/digpak_read_voc_marker.asm"
%include "src/functions/audio/digpak_rate_from_voc_time_constant.asm"
%include "src/functions/audio/digpak_submit_pcm_in_32k_chunks.asm"
%include "src/functions/audio/digpak_set_completion_callback.asm"
%include "src/functions/audio/digpak_voc_completion_callback.asm"
%include "src/functions/audio/digpak_buffer_completion_callback.asm"
%include "src/functions/audio/digpak_advance_voc_block.asm"
%include "src/functions/audio/digpak_select_ready_pcm_buffer.asm"
%include "src/functions/audio/digpak_schedule_next_voc_block.asm"
%include "src/functions/audio/digpak_schedule_pcm_buffer_slot.asm"
%include "src/functions/audio/digpak_begin_pcm_transfer.asm"
%include "src/functions/audio/digpak_submit_next_pcm_chunk.asm"
%include "src/functions/audio/digpak_materialize_driver_descriptor.asm"
%include "src/functions/audio/digpak_return_driver_probe_success.asm"
%include "src/functions/audio/digpak_initialize_pcm_driver.asm"
%include "src/functions/audio/digpak_shutdown_pcm_driver.asm"
%include "src/functions/audio/digpak_find_voc_sound_block.asm"
%include "src/functions/audio/digpak_queue_pcm_buffer_descriptor.asm"
%include "src/functions/audio/digpak_get_pcm_buffer_status.asm"
%include "src/functions/audio/digpak_select_voc_stream.asm"
%include "src/functions/audio/digpak_submit_voc_pcm_blocks.asm"
%include "src/functions/audio/digpak_submit_pcm_descriptor.asm"
%include "src/functions/audio/digpak_service_pcm_playback.asm"
%include "src/functions/audio/digpak_stop_pcm_playback.asm"
%include "src/functions/audio/digpak_get_pcm_playback_state.asm"

%include "src/functions/platform/write_video_bank_port_3cd_packed_3bit.asm"
%include "src/functions/platform/unlock_video_and_write_bank_port_3cd_4bit.asm"
%include "src/functions/platform/select_video_bank_sequencer_0e_xor_02.asm"
%include "src/functions/platform/select_video_bank_sequencer_f9_f6_misc.asm"
%include "src/functions/platform/select_video_bank_graphics_09.asm"
%include "src/functions/platform/select_video_bank_port_3d6_register_10.asm"
%include "src/functions/platform/select_video_bank_port_1ce_register_b2.asm"
%include "src/functions/platform/select_video_bank_sequencer_08_misc.asm"
%include "src/functions/platform/select_video_bank_graphics_00_misc.asm"
%include "src/functions/platform/select_video_bank_graphics_0d.asm"
%include "src/functions/platform/select_video_bank_port_3de_register_11.asm"
%include "src/functions/platform/select_video_bank_sequencer_06.asm"
%include "src/functions/platform/select_video_bank_sequencer_18_19.asm"
%include "src/functions/platform/select_video_bank_graphics_45.asm"
%include "src/functions/platform/call_scaled_video_bank_window_zero.asm"
%include "src/functions/platform/ignore_video_bank_switch.asm"
%include "src/functions/platform/probe_write_video_bank_graphics_09.asm"
%include "src/data/platform/xms_control_entry_pointer.asm"
%include "src/data/audio/embedded_digpak_table_and_state.asm"
%include "src/data/layout/gaps.asm"
%include "src/data/audio/miles_timer_and_driver_state.asm"
; Data Segments
; Semantically extracted ranges and the initialized ranges still under study.
%include "src/data/layout/post_code_alignment.asm"
%include "src/data/runtime/zero_initialized_static_workspace_08930_1584f.asm"
%include "src/data/vdx/pending_palette_upload.asm"
%include "src/data/unresolved/unresolved_initialized_runtime_data.asm"
%include "src/data/vdx/background_xms_move_and_stream_state.asm"
%include "src/data/vdx/vdx_delta_tile_map.asm"
%include "src/data/unresolved/unresolved_initialized_tables_and_templates.asm"
%include "src/data/unresolved/unresolved_pre_configuration_runtime_data.asm"
%include "src/data/cursor/cursor_shape_and_palette_pointers.asm"
%include "src/data/grv/grv_builtin_hotspot_rectangles.asm"
%include "src/data/audio/configured_audio_backend_flags.asm"
%include "src/data/runtime/groovie_configuration_strings.asm"
%include "src/data/savegame/empty_slot_caption.asm"
%include "src/data/unresolved/unresolved_pre_cell_neighbor_tables.asm"
%include "src/data/puzzle/cell_adjacent_neighbor_lists.asm"
%include "src/data/puzzle/cell_distance_two_neighbor_lists.asm"
%include "src/data/puzzle/cell_adjacent_neighbor_pointers.asm"
%include "src/data/puzzle/cell_distance_two_neighbor_pointers.asm"
%include "src/data/puzzle/cell_search_state_and_strategies.asm"
%include "src/data/puzzle/cell_search_workspace.asm"
%include "src/data/vdx/xms_still_cache_state.asm"
%include "src/data/runtime/runtime_diagnostic_and_configuration_strings.asm"


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
    emit_initialize_vdx_stream_buffers_part_00
    ; 000D1..001E0 function
    emit_standalone_vdx_or_diagnostics_part_00
    ; 001E1..00209 function
    emit_open_vdx_file_or_borrow_archive_handle_part_00
    ; 0020A..0021A function
    emit_close_vdx_file_unless_archive_borrowed_part_00
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
    emit_upload_vdx_palette_or_black_part_00
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
    emit_fade_in_vdx_palette_rgb_part_00
    ; 00FC6..01059 function
    emit_fade_out_vdx_palette_rgb_and_clear_part_00
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
    emit_decompress_cursor_lzss_12bit_part_00
    ; 0236A..023A4 function
    emit_decompress_vdx_lzss_part_00
    ; 023A5..02590 function
    emit_copy_background_rectangle_to_foreground_part_00
    ; 02591..026E4 function
    emit_snapshot_display_to_xms_background_part_00
    ; 026E5..0276C function
    emit_merge_32_color_palette_into_unused_entries_part_00
    ; 0276D..02821 function
    emit_mark_used_background_palette_entries_part_00
    ; 02822..0285C function
    emit_restore_saved_vga_palette_at_retrace_part_00
    ; 0285D..02895 function
    emit_clear_indexed_display_memory_part_00
    ; 02896..028AC function
    emit_pump_pending_pcm_buffers_part_00
    ; 028AD..028D8 function
    emit_drain_pcm_stream_with_timeout_part_00
    ; 028D9..028DA gap
    emit_gap_025_028d9
    ; 028DB..0292E function
    emit_drain_pcm_stream_with_timeout_part_01
    ; 0292F..02930 gap
    emit_gap_026_0292f
    ; 02931..0293A function
    emit_drain_pcm_stream_with_timeout_part_02
    ; 0293B..02992 function
    emit_wait_for_miles_pcm_buffers_complete_part_00
    ; 02993..02994 gap
    emit_gap_027_02993
    ; 02995..02996 function
    emit_wait_for_miles_pcm_buffers_complete_part_01
    ; 02997..02BE7 function
    emit_stream_media_buffer_part_00
    ; 02BE8..02BEF mutable INT 15h chain/saved vectors
    emit_bios_pcm_interrupt_vectors
    ; 02BF0..02C29 recovered BIOS PCM interrupt body
    emit_bios_pcm_completion_interrupt_part_00
    ; 02C2A..02C2B unresolved intervening bytes
    emit_gap_bios_pcm_02c2a
    ; 02C2C..02C30 recovered far chain
    emit_bios_pcm_completion_interrupt_part_01
    ; 02C31 unresolved trailing byte
    emit_gap_bios_pcm_02c31
    ; 02C32..02CBF function
    emit_probe_cpu_and_x87_capabilities_part_00
    ; 02CC0..02CE8 gap
    emit_gap_029_02cc0
    ; 02CE9..02CF4 function
    emit_probe_cpu_and_x87_capabilities_part_01
    ; 02CF5..02D08 gap
    emit_gap_030_02cf5
    ; 02D09..02D4E function
    emit_probe_cpu_and_x87_capabilities_part_02
    ; 02D4F..02D4F gap
    emit_gap_031_02d4f
    ; 02D50..02D58 function
    emit_dispatch_video_bank_switch_part_00
    ; 02D59..02D59 gap
    emit_gap_032_02d59
    ; 02D5A..02D79 function
    emit_synchronize_video_bank_state_part_00
    ; 02D7A..02D8D recovered selected bank handler
    emit_write_video_bank_port_3cd_packed_3bit_part_00
    ; 02D8E..02DAC recovered selected bank handler
    emit_unlock_video_and_write_bank_port_3cd_4bit_part_00
    ; 02DAD..02DAD unowned bank-handler padding/stub bytes
    emit_video_bank_gap_02dad
    ; 02DAE..02DDC recovered selected bank handler
    emit_select_video_bank_sequencer_0e_xor_02_part_00
    ; 02DDD..02DDD unowned bank-handler padding/stub bytes
    emit_video_bank_gap_02ddd
    ; 02DDE..02E23 recovered selected bank handler
    emit_select_video_bank_sequencer_f9_f6_misc_part_00
    ; 02E24..02E3A recovered selected bank handler
    emit_select_video_bank_graphics_09_part_00
    ; 02E3B..02E3B unowned bank-handler padding/stub bytes
    emit_video_bank_gap_02e3b
    ; 02E3C..02E63 recovered selected bank handler
    emit_select_video_bank_port_3d6_register_10_part_00
    ; 02E64..02E7E recovered selected bank handler
    emit_select_video_bank_port_1ce_register_b2_part_00
    ; 02E7F..02E7F unowned bank-handler padding/stub bytes
    emit_video_bank_gap_02e7f
    ; 02E80..02EAC recovered selected bank handler
    emit_select_video_bank_sequencer_08_misc_part_00
    ; 02EAD..02EAD unowned bank-handler padding/stub bytes
    emit_video_bank_gap_02ead
    ; 02EAE..02EDC recovered selected bank handler
    emit_select_video_bank_graphics_00_misc_part_00
    ; 02EDD..02EDD unowned bank-handler padding/stub bytes
    emit_video_bank_gap_02edd
    ; 02EDE..02EF8 recovered selected bank handler
    emit_select_video_bank_graphics_0d_part_00
    ; 02EF9..02EF9 unowned bank-handler padding/stub bytes
    emit_video_bank_gap_02ef9
    ; 02EFA..02F0D recovered selected bank handler
    emit_select_video_bank_port_3de_register_11_part_00
    ; 02F0E..02F22 recovered selected bank handler
    emit_select_video_bank_sequencer_06_part_00
    ; 02F23..02F23 unowned bank-handler padding/stub bytes
    emit_video_bank_gap_02f23
    ; 02F24..02F37 recovered selected bank handler
    emit_select_video_bank_sequencer_18_19_part_00
    ; 02F38..02F4E recovered selected bank handler
    emit_select_video_bank_graphics_45_part_00
    ; 02F4F..02F4F unowned bank-handler padding/stub bytes
    emit_video_bank_gap_02f4f
    ; 02F50..02F68 recovered selected bank handler
    emit_call_scaled_video_bank_window_zero_part_00
    ; 02F69..02F69 unowned bank-handler padding/stub bytes
    emit_video_bank_gap_02f69
    ; 02F6A..02F82 function
    emit_call_scaled_video_bank_handler_part_00
    ; 02F83..02F83 recovered default bank-switch stub
    emit_ignore_video_bank_switch_part_00
    ; 02F84..033B6 function
    emit_detect_video_hardware_part_00
    ; 033B7..033FE function
    emit_probe_sequencer_register_six_bank_handler_part_00
    ; 033FF..03419 function
    emit_probe_video_memory_bank_separation_part_00
    ; 0341A..03452 function
    emit_test_video_bank_pattern_pair_part_00
    ; 03453..0345D recovered indirect graphics-register probe callback
    emit_probe_write_video_bank_graphics_09_part_00
    ; 0345E..0348B function
    emit_probe_indexed_register_writable_bits_part_00
    ; 0348C..034A4 function
    emit_probe_direct_register_writable_bits_part_00
    ; 034A5..03589 function
    emit_set_detected_graphics_mode_part_00
    ; 0358A..0358F function
    emit_restore_bios_text_mode_part_00
    ; 03590..03670 function
    emit_print_hardware_and_memory_diagnostics_part_00
    ; 03671..03687 function
    emit_detect_and_reset_mouse_driver_part_00
    ; 03688..0368B XMS control far-pointer storage
    emit_xms_control_entry_pointer
    ; 0368C..036D1 function
    emit_query_xms_part_00
    ; 036D2..03755 function
    emit_format_memory_diagnostic_part_00
    ; 03756..03769 function
    emit_open_named_archive_file_part_00
    ; 0376A..03773 function
    emit_close_song_archive_part_00
    ; 03774..0377D function
    emit_close_video_archive_part_00
    ; 0377E..03784 function
    emit_close_video_and_song_archives_part_00
    ; 03785..0378E gap
    emit_gap_037_03785
    ; 0378F..0382C function
    emit_resolve_named_resource_reference_part_00
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
    emit_read_open_resource_file_part_00
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
    emit_probe_game_disc_archive_availability_part_00
    ; 03E85..03EB7 function
    emit_grv_load_child_script_part_00
    ; 03EB8..03EE9 function
    emit_grv_return_from_child_script_part_00
    ; 03EEA..03F22 function
    emit_grv_check_valid_saves_part_00
    ; 03F23..03F76 function
    emit_grv_save_game_part_00
    ; 03F77..03FC3 function
    emit_write_aborted_game_snapshot_to_save_z_part_00
    ; 03FC4..04000 function
    emit_grv_load_game_part_00
    ; 04001..04003 function
    emit_grv_jump_absolute_part_00
    ; 04004..04009 function
    emit_grv_store_word_operand_d9fd_part_00
    ; 0400A..04015 function
    emit_grv_read_variable_operand_part_00
    ; 04016..04086 function
    emit_grv_decode_sequence_element_part_00
    ; 04087..0409A function
    emit_grv_load_sequence_part_00
    ; 0409B..040B1 function
    emit_grv_swap_variables_part_00
    ; 040B2..040C6 function
    emit_grv_move_variable_part_00
    ; 040C7..040DE function
    emit_grv_add_variable_part_00
    ; 040DF..040F6 function
    emit_grv_subtract_variable_part_00
    ; 040F7..04102 function
    emit_grv_increment_variable_part_00
    ; 04103..0410E function
    emit_grv_decrement_variable_part_00
    ; 0410F..041A3 function
    emit_grv_grid_swap_part_00
    ; 041A4..041CA function
    emit_grv_random_part_00
    ; 041CB..041DE function
    emit_grv_reduce_variable_above_divisor_part_00
    ; 041DF..041F7 function
    emit_grv_xor_obfuscate_variables_part_00
    ; 041F8..0421D function
    emit_grv_branch_sequence_not_equal_part_00
    ; 0421E..04243 function
    emit_grv_branch_sequence_any_greater_part_00
    ; 04244..04269 function
    emit_grv_char_less_jump_part_00
    ; 0426A..04291 function
    emit_grv_jump_if_indirect_not_equal_part_00
    ; 04292..042B0 function
    emit_grv_load_string_indirect_part_00
    ; 042B1..042CA function
    emit_grv_compare_indirect_and_jump_part_00
    ; 042CB..042F0 function
    emit_grv_branch_sequence_equal_part_00
    ; 042F1..04326 function
    emit_advance_grv_random_state_part_00
    ; 04327..0432A function
    emit_advance_grv_random_state_far_part_00
    ; 0432B..04374 function
    emit_grv_play_transition_video_ref_part_00
    ; 04375..043C8 function
    emit_play_named_vdx_resource_part_00
    ; 043C9..043D1 function
    emit_grv_set_reserved_flag_d9ce_part_00
    ; 043D2..04405 function
    emit_grv_play_video_name_part_00
    ; 04406..04439 function
    emit_grv_play_video_reference_part_00
    ; 0443A..04449 function
    emit_grv_play_song_reference_part_00
    ; 0444A..04450 function
    emit_grv_set_background_song_part_00
    ; 04451..04460 function
    emit_grv_sleep_part_00
    ; 04461..0447A function
    emit_grv_call_absolute_part_00
    ; 0447B..046F4 function
    emit_run_grv_input_loop_part_00
    ; 046F5..0470F function
    emit_replay_grv_background_song_part_00
    ; 04710..04728 function
    emit_select_cursor_shape_and_palette_part_00
    ; 04729..04753 function
    emit_match_grv_key_action_part_00
    ; 04754..0475D function
    emit_test_persistent_top_bar_hotspot_part_00
    ; 0475E..04767 function
    emit_test_persistent_right_hotspot_part_00
    ; 04768..04771 function
    emit_test_persistent_left_hotspot_part_00
    ; 04772..0477B function
    emit_test_persistent_bottom_bar_hotspot_part_00
    ; 0477C..0478B function
    emit_grv_test_bottom_bar_hotspot_part_00
    ; 0478C..0479B function
    emit_grv_test_right_hotspot_part_00
    ; 0479C..047AB function
    emit_grv_test_left_hotspot_part_00
    ; 047AC..047BB function
    emit_grv_test_center_hotspot_cursor_zero_part_00
    ; 047BC..047CB function
    emit_grv_test_center_hotspot_cursor_three_part_00
    ; 047CC..047DB function
    emit_grv_test_full_width_hotspot_part_00
    ; 047DC..0483D function
    emit_test_grv_hotspot_rect_part_00
    ; 0483E..0483F gap
    emit_gap_042_0483e
    ; 04840..04848 function
    emit_test_grv_hotspot_rect_part_01
    ; 04849..048C8 function
    emit_expand_grv_video_filename_part_00
    ; 048C9..04956 function
    emit_tokenize_configuration_line_part_00
    ; 04957..0495C function
    emit_skip_nul_terminated_string_part_00
    ; 0495D..04967 function
    emit_skip_configuration_whitespace_part_00
    ; 04968..0497F gap
    emit_gap_043_04968
    ; 04980..04A22 function
    emit_build_32_color_palette_translation_part_00
    ; 04A23..04A54 function
    emit_parse_configuration_decimal_word_part_00
    ; 04A55..04A7A function
    emit_parse_configuration_hex_word_part_00
    ; 04A7B..04B67 function
    emit_update_animated_software_cursor_part_00
    ; 04B68..04B6A gap
    emit_gap_044_04b68
    ; 04B6B..04BAB function
    emit_update_animated_software_cursor_part_01
    ; 04BAC..04BAD gap
    emit_gap_045_04bac
    ; 04BAE..04BF4 function
    emit_update_animated_software_cursor_part_02
    ; 04BF5..04C26 function
    emit_erase_software_cursor_part_00
    ; 04C27..04CD1 function
    emit_draw_cursor_and_save_background_banked_part_00
    ; 04CD2..04D8B function
    emit_redraw_cursor_frame_banked_part_00
    ; 04D8C..04E1E function
    emit_draw_cursor_and_save_background_half_resolution_part_00
    ; 04E1F..04EAD function
    emit_redraw_cursor_frame_half_resolution_part_00
    ; 04EAE..04FC6 function
    emit_restore_cursor_background_part_00
    ; 04FC7..04FEA function
    emit_skip_configuration_crlf_line_part_00
    ; 04FEB..04FF5 function
    emit_ascii_lowercase_al_part_00
    ; 04FF6..0500F function
    emit_compare_ascii_strings_case_insensitive_part_00
    ; 05010..05017 function
    emit_copy_config_string_leaving_terminator_part_00
    ; 05018..05056 function
    emit_find_configuration_section_part_00
    ; 05057..0518F function
    emit_load_groovie_configuration_part_00
    ; 05190..05191 gap
    emit_gap_046_05190
    ; 05192..0519B function
    emit_load_groovie_configuration_part_01
    ; 0519C..0519D gap
    emit_gap_047_0519c
    ; 0519E..051A3 function
    emit_load_groovie_configuration_part_02
    ; 051A4..051A5 gap
    emit_gap_048_051a4
    ; 051A6..051AB function
    emit_load_groovie_configuration_part_03
    ; 051AC..051AD gap
    emit_gap_049_051ac
    ; 051AE..051C4 function
    emit_load_groovie_configuration_part_04
    ; 051C5..051CA function
    emit_mark_videocard_configuration_seen_part_00
    ; 051CB..051E4 function
    emit_configure_dma_buffer_size_part_00
    ; 051E5..051FE function
    emit_configure_ticks_per_second_part_00
    ; 051FF..05216 function
    emit_configure_svga_mode_part_00
    ; 05217..05225 function
    emit_configure_program_directory_part_00
    ; 05226..05234 function
    emit_configure_data_directory_part_00
    ; 05235..05350 function
    emit_configure_midi_driver_part_00
    ; 05351..05352 gap
    emit_gap_050_05351
    ; 05353..0535C function
    emit_configure_midi_driver_part_01
    ; 0535D..0535E gap
    emit_gap_051_0535d
    ; 0535F..05364 function
    emit_configure_midi_driver_part_02
    ; 05365..05366 gap
    emit_gap_052_05365
    ; 05367..0536C function
    emit_configure_midi_driver_part_03
    ; 0536D..0536E gap
    emit_gap_053_0536d
    ; 0536F..05378 function
    emit_configure_midi_driver_part_04
    ; 05379..05457 function
    emit_configure_pcm_driver_part_00
    ; 05458..05459 gap
    emit_gap_054_05458
    ; 0545A..05463 function
    emit_configure_pcm_driver_part_01
    ; 05464..05465 gap
    emit_gap_055_05464
    ; 05466..0546B function
    emit_configure_pcm_driver_part_02
    ; 0546C..0546D gap
    emit_gap_056_0546c
    ; 0546E..05473 function
    emit_configure_pcm_driver_part_03
    ; 05474..05475 gap
    emit_gap_057_05474
    ; 05476..0547F function
    emit_configure_pcm_driver_part_04
    ; 05480..054AC function
    emit_decode_and_draw_grv_string_part_00
    ; 054AD..054F8 function
    emit_load_and_draw_save_slot_caption_part_00
    ; 054F9..05522 function
    emit_clear_grv_caption_video_region_part_00
    ; 05523..055FB function
    emit_draw_centered_sphinx_font_string_part_00
    ; 055FC..05718 function
    emit_play_mscdex_audio_selection_part_00
    ; 05719..05727 function
    emit_stop_mscdex_audio_part_00
    ; 05728..05728 function
    emit_mscdex_post_play_no_op_part_00
    ; 05729..05729 function
    emit_mscdex_pre_stop_no_op_part_00
    ; 0572A..05732 function
    emit_get_mscdex_drive_letters_part_00
    ; 05733..05733 gap
    emit_gap_058_05733
    ; 05734..05749 function
    emit_open_driver_or_timbre_file_part_00
    ; 0574A..05753 function
    emit_close_driver_or_timbre_file_part_00
    ; 05754..0575D function
    emit_read_driver_or_timbre_file_part_00
    ; 0575E..0576D function
    emit_rewind_driver_or_timbre_file_part_00
    ; 0576E..05A36 function
    emit_initialize_subsystems_xms_part_00
    ; 05A37..05A4E function
    emit_wait_for_midi_sequence_completion_part_00
    ; 05A4F..05A6B gap
    emit_gap_059_05a4f
    ; 05A6C..05A8A function
    emit_set_midi_sequence_volume_ramp_part_00
    ; 05A8B..05AAB function
    emit_set_pcm_driver_parameter_81_part_00
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
    emit_free_dos_memory_segment_part_00
    ; 05EA9..05EC7 function
    emit_allocate_dos_memory_for_byte_count_part_00
    ; 05EC8..05ED4 function
    emit_allocate_dos_memory_paragraphs_part_00
    ; 05ED5..05ED5 gap
    emit_gap_062_05ed5
    ; 05ED6..05F1B function
    emit_cell_run_grv_puzzle_search_part_00
    ; 05F1C..05F21 gap
    emit_gap_063_05f1c
    ; 05F22..05F6B function
    emit_cell_convert_adjacent_pieces_part_00
    ; 05F6C..05FB5 function
    emit_cell_count_board_pieces_part_00
    ; 05FB6..05FD7 function
    emit_cell_begin_forward_move_iteration_part_00
    ; 05FD8..05FE3 function
    emit_cell_begin_reverse_move_iteration_part_00
    ; 05FE4..0605A function
    emit_cell_next_forward_move_part_00
    ; 0605B..0605B gap
    emit_gap_064_0605b
    ; 0605C..06072 function
    emit_cell_next_forward_move_part_01
    ; 06073..06073 gap
    emit_gap_065_06073
    ; 06074..060CF function
    emit_cell_next_forward_move_part_02
    ; 060D0..06157 function
    emit_cell_next_forward_move_with_jump_deduplication_part_00
    ; 06158..06159 gap
    emit_gap_066_06158
    ; 0615A..061CE function
    emit_cell_next_forward_move_with_jump_deduplication_part_01
    ; 061CF..061CF gap
    emit_gap_067_061cf
    ; 061D0..0627A function
    emit_cell_next_reverse_move_part_00
    ; 0627B..0627B gap
    emit_gap_068_0627b
    ; 0627C..0628E function
    emit_cell_next_reverse_move_part_01
    ; 0628F..0628F gap
    emit_gap_069_0628f
    ; 06290..062E8 function
    emit_cell_apply_move_to_scratch_board_part_00
    ; 062E9..062E9 gap
    emit_gap_070_062e9
    ; 062EA..063B3 function
    emit_cell_score_candidate_move_part_00
    ; 063B4..063FA function
    emit_cell_count_adjacent_clone_opportunities_part_00
    ; 063FB..063FB gap
    emit_gap_071_063fb
    ; 063FC..0641B function
    emit_cell_count_adjacent_clone_opportunities_part_01
    ; 0641C..06434 function
    emit_cell_reset_best_move_list_part_00
    ; 06435..06435 gap
    emit_gap_072_06435
    ; 06436..06456 function
    emit_cell_append_tied_best_move_part_00
    ; 06457..06457 gap
    emit_gap_073_06457
    ; 06458..0650E function
    emit_cell_choose_best_move_part_00
    ; 0650F..0650F gap
    emit_gap_074_0650f
    ; 06510..06514 function
    emit_cell_choose_best_move_part_01
    ; 06515..06515 gap
    emit_gap_075_06515
    ; 06516..0656A function
    emit_cell_choose_best_move_part_02
    ; 0656B..0656B gap
    emit_gap_076_0656b
    ; 0656C..065FC function
    emit_cell_search_recursive_part_00
    ; 065FD..065FD gap
    emit_gap_077_065fd
    ; 065FE..06618 function
    emit_cell_search_recursive_part_01
    ; 06619..06619 gap
    emit_gap_078_06619
    ; 0661A..06642 function
    emit_cell_search_recursive_part_02
    ; 06643..06643 gap
    emit_gap_079_06643
    ; 06644..066AE function
    emit_cell_search_recursive_part_03
    ; 066AF..066AF gap
    emit_gap_080_066af
    ; 066B0..06798 function
    emit_cell_search_recursive_part_04
    ; 06799..06799 gap
    emit_gap_081_06799
    ; 0679A..067FA function
    emit_cell_search_recursive_part_05
    ; 067FB..067FB gap
    emit_gap_082_067fb
    ; 067FC..06845 function
    emit_cell_search_recursive_part_06
    ; 06846..0690B function
    emit_cell_search_best_move_part_00
    ; 0690C..0690C gap
    emit_gap_083_0690c
    ; 0690D..06951 function
    emit_cell_search_best_move_part_01
    ; 06952..06952 gap
    emit_gap_084_06952
    ; 06953..06A6B function
    emit_cell_search_best_move_part_02
    ; 06A6C..06A6C gap
    emit_gap_085_06a6c
    ; 06A6D..06A80 function
    emit_cell_reset_ranked_move_list_part_00
    ; 06A81..06AE3 function
    emit_cell_insert_ranked_move_part_00
    ; 06AE4..06AE4 gap
    emit_gap_086_06ae4
    ; 06AE5..06AEE function
    emit_cell_insert_ranked_move_part_01
    ; 06AEF..06BFE function
    emit_cell_build_ranked_move_list_part_00
    ; 06BFF..06BFF gap
    emit_gap_087_06bff
    ; 06C00..06D0D function
    emit_cell_build_ranked_move_list_part_01
    ; 06D0E..06DA4 function
    emit_cell_search_ranked_moves_part_00
    ; 06DA5..06DA5 gap
    emit_gap_088_06da5
    ; 06DA6..06DE2 function
    emit_cell_search_ranked_moves_part_01
    ; 06DE3..06DE3 gap
    emit_gap_089_06de3
    ; 06DE4..06E0A function
    emit_cell_dispatch_search_strategy_part_00
    ; 06E0B..06E0B gap
    emit_gap_090_06e0b
    ; 06E0C..06E67 function
    emit_cell_dispatch_search_strategy_part_01
    ; 06E68..06E71 function
    emit_cell_random_byte_part_00
    ; 06E72..06EB5 function
    emit_allocate_xms_still_cache_part_00
    ; 06EB6..06ED8 function
    emit_release_xms_still_cache_part_00
    ; 06ED9..06FA8 function
    emit_transfer_selected_xms_still_cache_block_part_00
    ; 06FA9..07024 function
    emit_select_xms_still_cache_entry_part_00
    ; 07025 unresolved byte
    emit_gap_091_07025
    ; 07026..071C9 Miles timer and driver runtime state
    emit_miles_timer_and_driver_state
    ; 071CA..071D5 unresolved scratch fields
    emit_gap_miles_071ca
    ; 071D6..073DD timer guard/private stack/saved SS:SP
    emit_miles_timer_interrupt_stack
    ; 073DE..073DF unresolved runtime word
    emit_gap_miles_073de
    ; 073E0..07417 function
    emit_miles_find_driver_command_part_00
    ; 07418..0742F function
    emit_miles_tail_dispatch_driver_command_part_00
    ; 07430..07500 recovered code entry
    emit_miles_timer_interrupt_part_00
    ; 07501..0753C function (overlapping IRET included)
    emit_miles_initialize_timer_state_part_00
    ; 0753D..07543 recovered code entry
    emit_miles_chain_previous_timer_interrupt_part_00
    ; 07544..0758F function (overlapping IRET included)
    emit_miles_install_timer_interrupt_part_00
    ; 07590..075BF function (overlapping IRET included)
    emit_miles_restore_timer_interrupt_part_00
    ; 075C0..075E8 function (overlapping IRET included)
    emit_miles_program_pit_channel_zero_part_00
    ; 075E9..07612 function
    emit_miles_program_pit_from_period_part_00
    ; 07613..0765D function
    emit_miles_divide_unsigned_dword_part_00
    ; 0765E..076F2 function (overlapping IRET included)
    emit_miles_recompute_minimum_timer_period_part_00
    ; 076F3..0773D function (overlapping IRET included)
    emit_miles_initialize_driver_tables_part_00
    ; 0773E..077A2 function (overlapping IRET included)
    emit_miles_shutdown_drivers_and_timers_part_00
    ; 077A3..0786D function (overlapping IRET included)
    emit_miles_register_timer_callback_part_00
    ; 0786E..078B6 function (overlapping IRET included)
    emit_miles_release_timer_callback_part_00
    ; 078B7..078D4 function (overlapping IRET included)
    emit_miles_release_all_timer_callbacks_part_00
    ; 078D5..078FC function (overlapping IRET included)
    emit_miles_start_timer_callback_part_00
    ; 078FD..0791A gap
    emit_gap_105_078fd
    ; 0791B..07942 function (overlapping IRET included)
    emit_miles_stop_timer_callback_part_00
    ; 07943..07960 gap
    emit_gap_107_07943
    ; 07961..079B5 function (overlapping IRET included)
    emit_miles_set_timer_period_part_00
    ; 079B6..079F6 function (overlapping IRET included)
    emit_miles_set_timer_frequency_part_00
    ; 079F7..07A32 function
    emit_miles_set_timer_period_from_pit_count_part_00
    ; 07A33..07A46 function (overlapping IRET included)
    emit_miles_get_programmed_pit_count_part_00
    ; 07A47..07B29 function (overlapping IRET included)
    emit_miles_register_driver_image_part_00
    ; 07B2A..07B70 gap
    emit_gap_112_07b2a
    ; 07B71..07B96 function
    emit_miles_query_driver_descriptor_part_00
    ; 07B97..07B9C function
    emit_miles_dispatch_driver_command_65_part_00
    ; 07B9D..07C4E function (overlapping IRET included)
    emit_miles_initialize_registered_driver_part_00
    ; 07C4F..07C81 function
    emit_miles_shutdown_registered_driver_part_00
    ; 07C82..07C87 gap
    emit_gap_114_07c82
    ; 07C88..07C8D function
    emit_miles_dispatch_pcm_command_79_part_00
    ; 07C8E..07C93 function
    emit_miles_dispatch_pcm_descriptor_command_86_part_00
    ; 07C94..07C99 function
    emit_miles_query_pcm_buffer_status_part_00
    ; 07C9A..07CAB gap
    emit_gap_115_07c9a
    ; 07CAC..07CB1 function
    emit_miles_dispatch_pcm_command_7d_part_00
    ; 07CB2..07CB7 function
    emit_miles_dispatch_pcm_stop_command_7e_part_00
    ; 07CB8..07CC3 gap
    emit_gap_116_07cb8
    ; 07CC4..07CC9 function
    emit_miles_dispatch_driver_command_81_part_00
    ; 07CCA..07CE1 gap
    emit_gap_117_07cca
    ; 07CE2..07CE7 function
    emit_miles_dispatch_driver_command_97_part_00
    ; 07CE8..07CED function
    emit_miles_dispatch_driver_command_98_part_00
    ; 07CEE..07CF3 function
    emit_miles_dispatch_driver_command_99_part_00
    ; 07CF4..07CF9 function
    emit_miles_dispatch_driver_command_9a_part_00
    ; 07CFA..07CFF function
    emit_miles_dispatch_driver_command_9b_part_00
    ; 07D00..07D05 function
    emit_miles_dispatch_driver_command_9c_part_00
    ; 07D06..07D17 gap
    emit_gap_118_07d06
    ; 07D18..07D1D function
    emit_miles_dispatch_driver_command_aa_part_00
    ; 07D1E..07D23 function
    emit_miles_dispatch_driver_command_ab_part_00
    ; 07D24..07D29 gap
    emit_gap_119_07d24
    ; 07D2A..07D2F function
    emit_miles_dispatch_driver_command_ae_part_00
    ; 07D30..07D3B gap
    emit_gap_120_07d30
    ; 07D3C..07D41 function
    emit_miles_dispatch_driver_command_b1_part_00
    ; 07D42..07D4D gap
    emit_gap_121_07d42
    ; 07D4E..07D53 function
    emit_miles_dispatch_driver_command_b4_part_00
    ; 07D54..07DA1 unowned command thunks; 07DA2..07E9F embedded DIGPAK data
    emit_gap_122_07d54
    emit_embedded_digpak_command_table
    emit_embedded_digpak_descriptor_state
    ; 07EA0..07EC8 function
    emit_digpak_suspend_miles_timer_if_required_part_00
    ; 07EC9..07ED2 gap
    emit_gap_123_07ec9
    ; 07ED3..07ED6 function
    emit_digpak_suspend_miles_timer_if_required_part_01
    ; 07ED7..07F0D function
    emit_digpak_resume_miles_timer_if_required_part_00
    ; 07F0E..07F54 function
    emit_digpak_subtract_far_pointer_addresses_part_00
    ; 07F55..07F63 function
    emit_digpak_read_voc_block_type_part_00
    ; 07F64..07F7A function
    emit_digpak_read_voc_marker_part_00
    ; 07F7B..07FB5 function
    emit_digpak_rate_from_voc_time_constant_part_00
    ; 07FB6..08068 function
    emit_digpak_submit_pcm_in_32k_chunks_part_00
    ; 08069..08082 function
    emit_digpak_set_completion_callback_part_00
    ; 08083..080D5 recovered VOC/buffer completion callbacks
    emit_digpak_voc_completion_callback_part_00
    emit_digpak_buffer_completion_callback_part_00
    ; 080D6..0812A function
    emit_digpak_advance_voc_block_part_00
    ; 0812B..08151 function
    emit_digpak_select_ready_pcm_buffer_part_00
    ; 08152..082A8 function
    emit_digpak_schedule_next_voc_block_part_00
    ; 082A9..082FB function
    emit_digpak_schedule_pcm_buffer_slot_part_00
    ; 082FC..08326 function
    emit_digpak_begin_pcm_transfer_part_00
    ; 08327..083FD function
    emit_digpak_submit_next_pcm_chunk_part_00
    ; 083FE..0847D function
    emit_digpak_materialize_driver_descriptor_part_00
    ; 0847E..0848B function
    emit_digpak_return_driver_probe_success_part_00
    ; 0848C..084F0 function
    emit_digpak_initialize_pcm_driver_part_00
    ; 084F1..08523 function
    emit_digpak_shutdown_pcm_driver_part_00
    ; 08524..08649 function
    emit_digpak_find_voc_sound_block_part_00
    ; 0864A..086AA function
    emit_digpak_queue_pcm_buffer_descriptor_part_00
    ; 086AB..086BF function
    emit_digpak_get_pcm_buffer_status_part_00
    ; 086C0..08765 function
    emit_digpak_select_voc_stream_part_00
    ; 08766..08853 function
    emit_digpak_submit_voc_pcm_blocks_part_00
    ; 08854..08890 function
    emit_digpak_submit_pcm_descriptor_part_00
    ; 08891..088D8 function
    emit_digpak_service_pcm_playback_part_00
    ; 088D9..0891C function
    emit_digpak_stop_pcm_playback_part_00
    ; 0891D..0892B function
    emit_digpak_get_pcm_playback_state_part_00
    ; 0892C..0892F verified alignment
    emit_post_code_alignment
    ; 08930..1584F verified startup DS zero-initialized workspace
    emit_zero_initialized_static_workspace_08930_1584f
    ; 15850..15DBD unresolved initialized runtime data
    emit_pending_palette_upload
    emit_unresolved_initialized_runtime_data
    emit_background_xms_move_and_stream_state
    ; 15DBE..15E7D verified VDX delta tile-map table
    emit_vdx_delta_tile_map
    ; 15E7E..1692B unresolved initialized tables and templates
    emit_unresolved_initialized_tables_and_templates
    ; 1692C..16986 unresolved initialized runtime data
    emit_unresolved_pre_configuration_runtime_data
    emit_cursor_shape_and_palette_pointers
    ; 16987..169F4 mutable built-in hotspot rectangles
    emit_grv_builtin_hotspot_rectangles
    ; 169F5..169F7 unresolved initialized bytes
    emit_configured_audio_backend_flags
    ; 169F8..16A89 verified Groovie configuration strings
    emit_groovie_configuration_strings_169f8_16a89
    ; 16A8A..16DEC mixed unresolved runtime data; followed by verified puzzle tables
emit_empty_slot_caption
emit_unresolved_pre_cell_neighbor_tables
emit_cell_adjacent_neighbor_lists
emit_cell_distance_two_neighbor_lists
emit_cell_adjacent_neighbor_pointers
emit_cell_distance_two_neighbor_pointers
emit_cell_search_state_and_strategies
    ; 1724C..17C2D verified zero-initialized static workspace
    emit_cell_search_workspace
    ; 17C2E..18151 XMS still-cache descriptor, controls, entries, and unresolved tail
    emit_xms_still_cache_state
    ; 18152..18CF7 verified diagnostic/configuration string corpus
    emit_runtime_diagnostic_and_configuration_strings

    %if ($ - load_image_start) != 0x18CF8
        %error "LOAD_IMAGE_SIZE"
    %endif
