; v32tng.exe 1.02b1 -- complete lossless PE source root.
;
; Function files use NASM instructions where NASM reproduces the historical
; encoding. Noncanonical encodings and non-code bytes use explicit db
; directives. There are no imported executable-byte ranges.

bits 32

; Functions
%include "src/functions/unknown/00401000_func_00401000.asm"
%include "src/functions/unknown/00401161_func_00401161.asm"
%include "src/functions/grv/load_grv_script_file.asm"
%include "src/functions/grv/initialize_grv_runtime_and_load_script.asm"
%include "src/functions/unknown/0040136e_func_0040136e.asm"
%include "src/functions/grv/grv_read_u8.asm"
%include "src/functions/grv/grv_read_u16_le.asm"
%include "src/functions/grv/grv_read_u32_le.asm"
%include "src/functions/unknown/00401572_func_00401572.asm"
%include "src/functions/unknown/004015bf_func_004015bf.asm"
%include "src/functions/unknown/004015e6_func_004015e6.asm"
%include "src/functions/unknown/0040179b_func_0040179b.asm"
%include "src/functions/unknown/004017ee_func_004017ee.asm"
%include "src/functions/unknown/00401833_func_00401833.asm"
%include "src/functions/unknown/00401bb3_func_00401bb3.asm"
%include "src/functions/unknown/00401bfd_func_00401bfd.asm"
%include "src/functions/unknown/00401c55_func_00401c55.asm"
%include "src/functions/unknown/00401c99_func_00401c99.asm"
%include "src/functions/unknown/00401cdd_func_00401cdd.asm"
%include "src/functions/resource_io/select_grv_video_resource.asm"
%include "src/functions/resource_io/select_grv_song_resource.asm"
%include "src/functions/unknown/00402067_func_00402067.asm"
%include "src/functions/unknown/004020e7_func_004020e7.asm"
%include "src/functions/unknown/00402172_func_00402172.asm"
%include "src/functions/grv/run_grv_vm.asm"
%include "src/functions/runtime/init_game_subsystems.asm"
%include "src/functions/unknown/0040441d_func_0040441d.asm"
%include "src/functions/unknown/00404469_func_00404469.asm"
%include "src/functions/unknown/00404983_func_00404983.asm"
%include "src/functions/unknown/00404ca2_func_00404ca2.asm"
%include "src/functions/unknown/00404e80_func_00404e80.asm"
%include "src/functions/unknown/00404ebb_func_00404ebb.asm"
%include "src/functions/unknown/00404ef6_func_00404ef6.asm"
%include "src/functions/unknown/00404f02_func_00404f02.asm"
%include "src/functions/unknown/00404f90_func_00404f90.asm"
%include "src/functions/unknown/00405045_func_00405045.asm"
%include "src/functions/unknown/00405095_func_00405095.asm"
%include "src/functions/unknown/004050af_func_004050af.asm"
%include "src/functions/unknown/00405291_func_00405291.asm"
%include "src/functions/unknown/004054b4_func_004054b4.asm"
%include "src/functions/unknown/0040563c_func_0040563c.asm"
%include "src/functions/unknown/004056b2_func_004056b2.asm"
%include "src/functions/unknown/004058af_func_004058af.asm"
%include "src/functions/unknown/004059a7_func_004059a7.asm"
%include "src/functions/unknown/004059d7_func_004059d7.asm"
%include "src/functions/unknown/00405a24_func_00405a24.asm"
%include "src/functions/unknown/00405b6f_func_00405b6f.asm"
%include "src/functions/unknown/00405bc2_func_00405bc2.asm"
%include "src/functions/unknown/00405c15_func_00405c15.asm"
%include "src/functions/unknown/00405c68_func_00405c68.asm"
%include "src/functions/unknown/00405cbb_func_00405cbb.asm"
%include "src/functions/unknown/0040604c_func_0040604c.asm"
%include "src/functions/unknown/004062fd_func_004062fd.asm"
%include "src/functions/unknown/00406324_func_00406324.asm"
%include "src/functions/unknown/00406427_func_00406427.asm"
%include "src/functions/unknown/004066a9_func_004066a9.asm"
%include "src/functions/unknown/00406809_func_00406809.asm"
%include "src/functions/unknown/004068b0_func_004068b0.asm"
%include "src/functions/unknown/004069a0_func_004069a0.asm"
%include "src/functions/unknown/004069c7_func_004069c7.asm"
%include "src/functions/input/dequeue_key_input.asm"
%include "src/functions/unknown/00406a48_func_00406a48.asm"
%include "src/functions/unknown/00406ab0_func_00406ab0.asm"
%include "src/functions/unknown/00406ae9_func_00406ae9.asm"
%include "src/functions/unknown/00406b14_func_00406b14.asm"
%include "src/functions/unknown/00406d16_func_00406d16.asm"
%include "src/functions/unknown/00406d40_func_00406d40.asm"
%include "src/functions/unknown/00406d8e_func_00406d8e.asm"
%include "src/functions/unknown/00406e28_func_00406e28.asm"
%include "src/functions/unknown/00406fae_func_00406fae.asm"
%include "src/functions/unknown/00407049_func_00407049.asm"
%include "src/functions/unknown/0040709f_func_0040709f.asm"
%include "src/functions/unknown/0040712c_func_0040712c.asm"
%include "src/functions/audio/is_midi_sequence_playing.asm"
%include "src/functions/unknown/0040716e_func_0040716e.asm"
%include "src/functions/unknown/00407188_func_00407188.asm"
%include "src/functions/unknown/004071d4_func_004071d4.asm"
%include "src/functions/unknown/004071f2_func_004071f2.asm"
%include "src/functions/unknown/00407290_func_00407290.asm"
%include "src/functions/unknown/004072a1_func_004072a1.asm"
%include "src/functions/unknown/00407302_func_00407302.asm"
%include "src/functions/unknown/004074c1_func_004074c1.asm"
%include "src/functions/unknown/00407507_func_00407507.asm"
%include "src/functions/unknown/004075ad_func_004075ad.asm"
%include "src/functions/unknown/00407638_func_00407638.asm"
%include "src/functions/unknown/00407670_func_00407670.asm"
%include "src/functions/unknown/0040768c_func_0040768c.asm"
%include "src/functions/unknown/00407748_func_00407748.asm"
%include "src/functions/unknown/004077e5_func_004077e5.asm"
%include "src/functions/unknown/00407842_func_00407842.asm"
%include "src/functions/unknown/004078b3_func_004078b3.asm"
%include "src/functions/unknown/00407931_func_00407931.asm"
%include "src/functions/unknown/00407a76_func_00407a76.asm"
%include "src/functions/unknown/00407ae7_func_00407ae7.asm"
%include "src/functions/unknown/00407b0d_func_00407b0d.asm"
%include "src/functions/unknown/00407b5e_func_00407b5e.asm"
%include "src/functions/unknown/00407bc2_func_00407bc2.asm"
%include "src/functions/unknown/00407c29_func_00407c29.asm"
%include "src/functions/unknown/00407f2d_func_00407f2d.asm"
%include "src/functions/unknown/0040800d_func_0040800d.asm"
%include "src/functions/unknown/00408050_func_00408050.asm"
%include "src/functions/unknown/004080ad_func_004080ad.asm"
%include "src/functions/unknown/004087fb_func_004087fb.asm"
%include "src/functions/unknown/0040881e_func_0040881e.asm"
%include "src/functions/unknown/00408846_func_00408846.asm"
%include "src/functions/unknown/00408920_func_00408920.asm"
%include "src/functions/vdx/decompress_vdx_lzss.asm"
%include "src/functions/unknown/00408bb4_func_00408bb4.asm"
%include "src/functions/unknown/00408d00_func_00408d00.asm"
%include "src/functions/unknown/00408d12_func_00408d12.asm"
%include "src/functions/unknown/00408d24_func_00408d24.asm"
%include "src/functions/vdx/open_loose_vdx.asm"
%include "src/functions/runtime/dispatch_game_or_loose_vdx.asm"
%include "src/functions/runtime/pump_media_and_game.asm"
%include "src/functions/unknown/00408f10_func_00408f10.asm"
%include "src/functions/unknown/00408f30_func_00408f30.asm"
%include "src/functions/unknown/00409396_func_00409396.asm"
%include "src/functions/unknown/00409503_func_00409503.asm"
%include "src/functions/unknown/00409512_func_00409512.asm"
%include "src/functions/runtime/enforce_single_instance.asm"
%include "src/functions/unknown/0040965b_func_0040965b.asm"
%include "src/functions/runtime/fatal_media_error.asm"
%include "src/functions/runtime/shutdown_player.asm"
%include "src/functions/unknown/00409760_func_00409760.asm"
%include "src/functions/runtime/winmain.asm"
%include "src/functions/runtime/setup_window_and_runtime.asm"
%include "src/functions/runtime/init_game_state.asm"
%include "src/functions/unknown/00409ab6_func_00409ab6.asm"
%include "src/functions/unknown/00409b1d_func_00409b1d.asm"
%include "src/functions/unknown/00409d1e_func_00409d1e.asm"
%include "src/functions/unknown/00409d55_func_00409d55.asm"
%include "src/functions/unknown/00409d64_func_00409d64.asm"
%include "src/functions/unknown/00409e85_func_00409e85.asm"
%include "src/functions/unknown/00409f0a_func_00409f0a.asm"
%include "src/functions/unknown/00409f1a_func_00409f1a.asm"
%include "src/functions/unknown/0040a29f_func_0040a29f.asm"
%include "src/functions/unknown/0040a39f_func_0040a39f.asm"
%include "src/functions/unknown/0040a3ee_func_0040a3ee.asm"
%include "src/functions/unknown/0040a430_func_0040a430.asm"
%include "src/functions/unknown/0040a73a_func_0040a73a.asm"
%include "src/functions/unknown/0040a786_func_0040a786.asm"
%include "src/functions/unknown/0040a7aa_func_0040a7aa.asm"
%include "src/functions/unknown/0040a84b_func_0040a84b.asm"
%include "src/functions/unknown/0040aa45_func_0040aa45.asm"
%include "src/functions/vdx/decode_vdx_bitmap_still.asm"
%include "src/functions/vdx/decode_vdx_delta_frame.asm"
%include "src/functions/unknown/0040bff4_func_0040bff4.asm"
%include "src/functions/vdx/decompress_vdx_chunk.asm"
%include "src/functions/grv/allocate_grv_runtime_buffers.asm"
%include "src/functions/unknown/0040c129_func_0040c129.asm"
%include "src/functions/resource_io/init_archive_tables.asm"
%include "src/functions/unknown/0040c197_func_0040c197.asm"
%include "src/functions/vdx/configure_vdx_stream.asm"
%include "src/functions/vdx/decode_vdx_stream.asm"
%include "src/functions/unknown/0040c6a5_func_0040c6a5.asm"
%include "src/functions/unknown/0040c780_func_0040c780.asm"
%include "src/functions/unknown/0040c79c_func_0040c79c.asm"
%include "src/functions/unknown/0040c7c3_func_0040c7c3.asm"
%include "src/functions/unknown/0040c996_func_0040c996.asm"
%include "src/functions/unknown/0040c9a0_func_0040c9a0.asm"
%include "src/functions/unknown/0040ca10_func_0040ca10.asm"
%include "src/functions/unknown/0040cd50_func_0040cd50.asm"
%include "src/functions/unknown/0040cdc0_func_0040cdc0.asm"
%include "src/functions/unknown/0040cde0_func_0040cde0.asm"
%include "src/functions/unknown/0040ce30_func_0040ce30.asm"
%include "src/functions/unknown/0040ce90_func_0040ce90.asm"
%include "src/functions/unknown/0040ced0_func_0040ced0.asm"
%include "src/functions/unknown/0040cf10_func_0040cf10.asm"
%include "src/functions/unknown/0040cf80_func_0040cf80.asm"
%include "src/functions/unknown/0040cfc0_func_0040cfc0.asm"
%include "src/functions/unknown/0040d110_func_0040d110.asm"
%include "src/functions/unknown/0040d150_func_0040d150.asm"
%include "src/functions/unknown/0040d170_func_0040d170.asm"
%include "src/functions/unknown/0040d1b0_func_0040d1b0.asm"
%include "src/functions/unknown/0040d2f0_func_0040d2f0.asm"
%include "src/functions/unknown/0040d3c0_func_0040d3c0.asm"
%include "src/functions/unknown/0040d470_func_0040d470.asm"
%include "src/functions/unknown/0040d4d0_func_0040d4d0.asm"
%include "src/functions/unknown/0040d550_func_0040d550.asm"
%include "src/functions/unknown/0040d5c0_func_0040d5c0.asm"
%include "src/functions/unknown/0040d5f0_func_0040d5f0.asm"
%include "src/functions/unknown/0040d610_func_0040d610.asm"
%include "src/functions/unknown/0040d650_func_0040d650.asm"
%include "src/functions/unknown/0040d710_func_0040d710.asm"
%include "src/functions/unknown/0040d720_func_0040d720.asm"
%include "src/functions/unknown/0040d730_func_0040d730.asm"
%include "src/functions/unknown/0040d750_func_0040d750.asm"
%include "src/functions/unknown/0040d780_func_0040d780.asm"
%include "src/functions/unknown/0040d790_func_0040d790.asm"
%include "src/functions/unknown/0040d7b0_func_0040d7b0.asm"
%include "src/functions/unknown/0040d7c0_func_0040d7c0.asm"
%include "src/functions/runtime/strcmp_runtime.asm"
%include "src/functions/unknown/0040d930_func_0040d930.asm"
%include "src/functions/unknown/0040d950_func_0040d950.asm"
%include "src/functions/unknown/0040d9f0_func_0040d9f0.asm"
%include "src/functions/unknown/0040da18_func_0040da18.asm"
%include "src/functions/unknown/0040da5a_func_0040da5a.asm"
%include "src/functions/unknown/0040daee_func_0040daee.asm"
%include "src/functions/unknown/0040dbcd_func_0040dbcd.asm"
%include "src/functions/runtime/pe_entry.asm"
%include "src/functions/unknown/0040dda0_func_0040dda0.asm"
%include "src/functions/unknown/0040ddd0_func_0040ddd0.asm"
%include "src/functions/unknown/0040de50_func_0040de50.asm"
%include "src/functions/unknown/0040df00_func_0040df00.asm"
%include "src/functions/unknown/0040df80_func_0040df80.asm"
%include "src/functions/unknown/0040dfa0_func_0040dfa0.asm"
%include "src/functions/unknown/0040dfe0_func_0040dfe0.asm"
%include "src/functions/unknown/0040e010_func_0040e010.asm"
%include "src/functions/unknown/0040e050_func_0040e050.asm"
%include "src/functions/unknown/0040e0d0_func_0040e0d0.asm"
%include "src/functions/unknown/0040e240_func_0040e240.asm"
%include "src/functions/unknown/0040e2a0_func_0040e2a0.asm"
%include "src/functions/unknown/0040e370_func_0040e370.asm"
%include "src/functions/unknown/0040e3d0_func_0040e3d0.asm"
%include "src/functions/unknown/0040e430_func_0040e430.asm"
%include "src/functions/unknown/0040e670_func_0040e670.asm"
%include "src/functions/unknown/0040e7f0_func_0040e7f0.asm"
%include "src/functions/unknown/0040ea90_func_0040ea90.asm"
%include "src/functions/unknown/0040ebc0_func_0040ebc0.asm"
%include "src/functions/unknown/0040f550_func_0040f550.asm"
%include "src/functions/unknown/0040f5a0_func_0040f5a0.asm"
%include "src/functions/unknown/0040f5e0_func_0040f5e0.asm"
%include "src/functions/unknown/0040f620_func_0040f620.asm"
%include "src/functions/unknown/0040f640_func_0040f640.asm"
%include "src/functions/unknown/0040f660_func_0040f660.asm"
%include "src/functions/unknown/0040f6c0_func_0040f6c0.asm"
%include "src/functions/unknown/0040f6e0_func_0040f6e0.asm"
%include "src/functions/unknown/0040f750_func_0040f750.asm"
%include "src/functions/unknown/0040f7e0_func_0040f7e0.asm"
%include "src/functions/unknown/0040f8a0_func_0040f8a0.asm"
%include "src/functions/unknown/0040f9e0_func_0040f9e0.asm"
%include "src/functions/unknown/0040fa60_func_0040fa60.asm"
%include "src/functions/unknown/0040fc70_func_0040fc70.asm"
%include "src/functions/unknown/0040fe40_func_0040fe40.asm"
%include "src/functions/unknown/0040ff20_func_0040ff20.asm"
%include "src/functions/unknown/00410010_func_00410010.asm"
%include "src/functions/unknown/00410090_func_00410090.asm"
%include "src/functions/unknown/00410c90_func_00410c90.asm"
%include "src/functions/unknown/00410d90_func_00410d90.asm"
%include "src/functions/unknown/00410e10_func_00410e10.asm"
%include "src/functions/unknown/00410e20_func_00410e20.asm"
%include "src/functions/unknown/00410e30_func_00410e30.asm"
%include "src/functions/unknown/00410fa0_func_00410fa0.asm"
%include "src/functions/unknown/00411050_func_00411050.asm"
%include "src/functions/unknown/004110f0_func_004110f0.asm"
%include "src/functions/unknown/004111f0_func_004111f0.asm"
%include "src/functions/unknown/00411260_func_00411260.asm"
%include "src/functions/unknown/00411290_func_00411290.asm"
%include "src/functions/unknown/00411310_func_00411310.asm"
%include "src/functions/unknown/00411390_func_00411390.asm"
%include "src/functions/unknown/00411600_func_00411600.asm"
%include "src/functions/unknown/00411800_func_00411800.asm"
%include "src/functions/unknown/00411870_func_00411870.asm"
%include "src/functions/unknown/00411c50_func_00411c50.asm"
%include "src/functions/unknown/00411cc0_func_00411cc0.asm"
%include "src/functions/unknown/00411d00_func_00411d00.asm"
%include "src/functions/unknown/00411df0_func_00411df0.asm"
%include "src/functions/unknown/00411e90_func_00411e90.asm"
%include "src/functions/unknown/004122a0_func_004122a0.asm"
%include "src/functions/unknown/00412400_func_00412400.asm"
%include "src/functions/unknown/00412620_func_00412620.asm"
%include "src/functions/unknown/00412670_func_00412670.asm"
%include "src/functions/unknown/004126d0_func_004126d0.asm"
%include "src/functions/unknown/00412710_func_00412710.asm"
%include "src/functions/unknown/00412720_func_00412720.asm"
%include "src/functions/unknown/004127b0_func_004127b0.asm"
%include "src/functions/unknown/004127d0_func_004127d0.asm"
%include "src/functions/unknown/00412910_func_00412910.asm"
%include "src/functions/unknown/00412950_func_00412950.asm"
%include "src/functions/unknown/00412c40_func_00412c40.asm"
%include "src/functions/unknown/00412ca0_func_00412ca0.asm"
%include "src/functions/unknown/00412cd0_func_00412cd0.asm"
%include "src/functions/unknown/00412d40_func_00412d40.asm"
%include "src/functions/unknown/00412dc0_func_00412dc0.asm"
%include "src/functions/unknown/00412e30_func_00412e30.asm"
%include "src/functions/unknown/00412f70_func_00412f70.asm"
%include "src/functions/unknown/004133c0_func_004133c0.asm"
%include "src/functions/unknown/00413740_func_00413740.asm"
%include "src/functions/unknown/00413980_func_00413980.asm"
%include "src/functions/unknown/00413c80_func_00413c80.asm"
%include "src/functions/unknown/00413db0_func_00413db0.asm"
%include "src/functions/unknown/00413f00_func_00413f00.asm"
%include "src/functions/unknown/00413f40_func_00413f40.asm"
%include "src/functions/unknown/00414280_func_00414280.asm"
%include "src/functions/unknown/00414380_func_00414380.asm"
%include "src/functions/unknown/004143c0_func_004143c0.asm"
%include "src/functions/unknown/00414900_func_00414900.asm"
%include "src/functions/unknown/00414b10_func_00414b10.asm"
%include "src/functions/unknown/00414b50_func_00414b50.asm"
%include "src/functions/unknown/00414d70_func_00414d70.asm"
%include "src/functions/unknown/00414da0_func_00414da0.asm"
%include "src/functions/unknown/00414e40_func_00414e40.asm"
%include "src/functions/unknown/00414e90_func_00414e90.asm"
%include "src/functions/unknown/00414f60_func_00414f60.asm"
%include "src/functions/unknown/00414ff0_func_00414ff0.asm"
%include "src/functions/unknown/00415280_func_00415280.asm"
%include "src/functions/unknown/00415530_func_00415530.asm"
%include "src/functions/unknown/00415550_func_00415550.asm"
%include "src/functions/unknown/00415600_func_00415600.asm"
%include "src/functions/unknown/00415730_func_00415730.asm"
%include "src/functions/unknown/004157b0_func_004157b0.asm"
%include "src/functions/unknown/00415fc0_func_00415fc0.asm"
%include "src/functions/unknown/00416560_func_00416560.asm"
%include "src/functions/unknown/00416590_func_00416590.asm"
%include "src/functions/unknown/00416630_func_00416630.asm"
%include "src/functions/unknown/004166a0_func_004166a0.asm"
%include "src/functions/unknown/004169f0_func_004169f0.asm"
%include "src/functions/unknown/00416bb0_func_00416bb0.asm"
%include "src/functions/unknown/00416d40_func_00416d40.asm"
%include "src/functions/unknown/00417090_func_00417090.asm"
%include "src/functions/unknown/004171c0_func_004171c0.asm"
%include "src/functions/unknown/00417320_func_00417320.asm"
%include "src/functions/unknown/00417520_func_00417520.asm"
%include "src/functions/unknown/004176b0_func_004176b0.asm"
%include "src/functions/unknown/004177e0_func_004177e0.asm"
%include "src/functions/unknown/00417850_func_00417850.asm"
%include "src/functions/unknown/00417880_func_00417880.asm"
%include "src/functions/unknown/004178e0_func_004178e0.asm"
%include "src/functions/unknown/00418000_func_00418000.asm"
%include "src/functions/unknown/00418340_func_00418340.asm"
%include "src/functions/unknown/004183d0_func_004183d0.asm"
%include "src/functions/unknown/00418450_func_00418450.asm"
%include "src/functions/unknown/00418520_func_00418520.asm"
%include "src/functions/unknown/004185a0_func_004185a0.asm"
%include "src/functions/unknown/00418790_func_00418790.asm"
%include "src/functions/unknown/00418800_func_00418800.asm"
%include "src/functions/unknown/00418890_func_00418890.asm"
%include "src/functions/unknown/004188d0_func_004188d0.asm"
%include "src/functions/unknown/00418ba0_func_00418ba0.asm"
%include "src/functions/unknown/00418e70_func_00418e70.asm"
%include "src/functions/unknown/00418ea0_func_00418ea0.asm"
%include "src/functions/unknown/004190b0_func_004190b0.asm"
%include "src/functions/unknown/00419130_func_00419130.asm"
%include "src/functions/unknown/004191a0_func_004191a0.asm"
%include "src/functions/unknown/00419350_func_00419350.asm"
%include "src/functions/unknown/004194a2_func_004194a2.asm"

; Data Segments
%include "src/data/data_0000_000000.asm"
%include "src/data/data_0001_0035e0.asm"
%include "src/data/data_0002_004278.asm"
%include "src/data/data_0003_005d93.asm"
%include "src/data/data_0004_005eaf.asm"
%include "src/data/data_0005_00613a.asm"
%include "src/data/data_0006_006a6d.asm"
%include "src/data/data_0007_00744b.asm"
%include "src/data/data_0008_007e7e.asm"
%include "src/data/data_0009_0080f5.asm"
%include "src/data/data_0010_00832e.asm"
%include "src/data/data_0011_00867b.asm"
%include "src/data/data_0012_008e89.asm"
%include "src/data/data_0013_00907b.asm"
%include "src/data/data_0014_009217.asm"
%include "src/data/data_0015_009632.asm"
%include "src/data/data_0016_009821.asm"
%include "src/data/data_0017_00b573.asm"
%include "src/data/data_0018_00ba10.asm"
%include "src/data/data_0019_00bb74.asm"
%include "src/data/data_0020_00bbec.asm"
%include "src/data/data_0021_00bd9c.asm"
%include "src/data/data_0022_00be08.asm"
%include "src/data/data_0023_00be6b.asm"
%include "src/data/data_0024_00be73.asm"
%include "src/data/data_0025_00bea9.asm"
%include "src/data/data_0026_00becf.asm"
%include "src/data/data_0027_00bee9.asm"
%include "src/data/data_0028_00bf56.asm"
%include "src/data/data_0029_00bf6f.asm"
%include "src/data/data_0030_00bf7b.asm"
%include "src/data/data_0031_00bf8d.asm"
%include "src/data/data_0032_00bfa7.asm"
%include "src/data/data_0033_00bfce.asm"
%include "src/data/data_0034_00bfd9.asm"
%include "src/data/data_0035_00bffb.asm"
%include "src/data/data_0036_00c025.asm"
%include "src/data/data_0037_00c04f.asm"
%include "src/data/data_0038_00c081.asm"
%include "src/data/data_0039_00c0ee.asm"
%include "src/data/data_0040_00c107.asm"
%include "src/data/data_0041_00c115.asm"
%include "src/data/data_0042_00c12b.asm"
%include "src/data/data_0043_00c145.asm"
%include "src/data/data_0044_00c1b8.asm"
%include "src/data/data_0045_00c1d4.asm"
%include "src/data/data_0046_00c224.asm"
%include "src/data/data_0047_00c285.asm"
%include "src/data/data_0048_00c2c8.asm"
%include "src/data/data_0049_00c30d.asm"
%include "src/data/data_0050_00c375.asm"
%include "src/data/data_0051_00c3b7.asm"
%include "src/data/data_0052_00c506.asm"
%include "src/data/data_0053_00c547.asm"
%include "src/data/data_0054_00c565.asm"
%include "src/data/data_0055_00c5a7.asm"
%include "src/data/data_0056_00c6ec.asm"
%include "src/data/data_0057_00c864.asm"
%include "src/data/data_0058_00c8c8.asm"
%include "src/data/data_0059_00c94b.asm"
%include "src/data/data_0060_00c9b8.asm"
%include "src/data/data_0061_00ca02.asm"
%include "src/data/data_0062_00ca22.asm"
%include "src/data/data_0063_00cafe.asm"
%include "src/data/data_0064_00cb1b.asm"
%include "src/data/data_0065_00cb2b.asm"
%include "src/data/data_0066_00cb7d.asm"
%include "src/data/data_0067_00cb8e.asm"
%include "src/data/data_0068_00cbaa.asm"
%include "src/data/data_0069_00cbb7.asm"
%include "src/data/data_0070_00cce3.asm"
%include "src/data/data_0071_00ccea.asm"
%include "src/data/data_0072_00cd24.asm"
%include "src/data/data_0073_00cd46.asm"
%include "src/data/data_0074_00cde9.asm"
%include "src/data/data_0075_00ce17.asm"
%include "src/data/data_0076_00ce38.asm"
%include "src/data/data_0077_00cec2.asm"
%include "src/data/data_0078_00cf06.asm"
%include "src/data/data_0079_00cfe8.asm"
%include "src/data/data_0080_00d14d.asm"
%include "src/data/data_0081_00d198.asm"
%include "src/data/data_0082_00d1c6.asm"
%include "src/data/data_0083_00d207.asm"
%include "src/data/data_0084_00d27b.asm"
%include "src/data/data_0085_00d376.asm"
%include "src/data/data_0086_00d396.asm"
%include "src/data/data_0087_00d3d6.asm"
%include "src/data/data_0088_00d408.asm"
%include "src/data/data_0089_00d446.asm"
%include "src/data/data_0090_00d478.asm"
%include "src/data/data_0091_00d632.asm"
%include "src/data/data_0092_00d69b.asm"
%include "src/data/data_0093_00d76d.asm"
%include "src/data/data_0094_00d7c9.asm"
%include "src/data/data_0095_00d823.asm"
%include "src/data/data_0096_00da63.asm"
%include "src/data/data_0097_00dbe2.asm"
%include "src/data/data_0098_00dcb4.asm"
%include "src/data/data_0099_00e83c.asm"
%include "src/data/data_0100_00e992.asm"
%include "src/data/data_0101_00e9d9.asm"
%include "src/data/data_0102_00ea1d.asm"
%include "src/data/data_0103_00ea31.asm"
%include "src/data/data_0104_00ea52.asm"
%include "src/data/data_0105_00ea72.asm"
%include "src/data/data_0106_00eb48.asm"
%include "src/data/data_0107_00ec13.asm"
%include "src/data/data_0108_00ed0e.asm"
%include "src/data/data_0109_00ee52.asm"
%include "src/data/data_0110_00f069.asm"
%include "src/data/data_0111_00f1cb.asm"
%include "src/data/data_0112_00f319.asm"
%include "src/data/data_0113_00f40f.asm"
%include "src/data/data_0114_00f482.asm"
%include "src/data/data_0115_00f6b5.asm"
%include "src/data/data_0116_01018c.asm"
%include "src/data/data_0117_010203.asm"
%include "src/data/data_0118_010219.asm"
%include "src/data/data_0119_010229.asm"
%include "src/data/data_0120_010398.asm"
%include "src/data/data_0121_010441.asm"
%include "src/data/data_0122_0104e3.asm"
%include "src/data/data_0123_010539.asm"
%include "src/data/data_0124_010655.asm"
%include "src/data/data_0125_010682.asm"
%include "src/data/data_0126_010702.asm"
%include "src/data/data_0127_01099c.asm"
%include "src/data/data_0128_010bf5.asm"
%include "src/data/data_0129_010c63.asm"
%include "src/data/data_0130_010cfe.asm"
%include "src/data/data_0131_011062.asm"
%include "src/data/data_0132_0110fa.asm"
%include "src/data/data_0133_0111ee.asm"
%include "src/data/data_0134_01128e.asm"
%include "src/data/data_0135_01149f.asm"
%include "src/data/data_0136_0117f6.asm"
%include "src/data/data_0137_011a1b.asm"
%include "src/data/data_0138_011a6d.asm"
%include "src/data/data_0139_011aa8.asm"
%include "src/data/data_0140_011afd.asm"
%include "src/data/data_0141_011b1b.asm"
%include "src/data/data_0142_011b7c.asm"
%include "src/data/data_0143_011bc3.asm"
%include "src/data/data_0144_011c4a.asm"
%include "src/data/data_0145_011d4d.asm"
%include "src/data/data_0146_011f26.asm"
%include "src/data/data_0147_01209d.asm"
%include "src/data/data_0148_0120cb.asm"
%include "src/data/data_0149_01213c.asm"
%include "src/data/data_0150_0121b2.asm"
%include "src/data/data_0151_012228.asm"
%include "src/data/data_0152_0122a5.asm"
%include "src/data/data_0153_0126c1.asm"
%include "src/data/data_0154_012b31.asm"
%include "src/data/data_0155_012d73.asm"
%include "src/data/data_0156_012e76.asm"
%include "src/data/data_0157_0130b3.asm"
%include "src/data/data_0158_0132fb.asm"
%include "src/data/data_0159_013333.asm"
%include "src/data/data_0160_0133a6.asm"
%include "src/data/data_0161_01377e.asm"
%include "src/data/data_0162_0137be.asm"
%include "src/data/data_0163_0137fa.asm"
%include "src/data/data_0164_013f07.asm"
%include "src/data/data_0165_013f45.asm"
%include "src/data/data_0166_01416c.asm"
%include "src/data/data_0167_01419f.asm"
%include "src/data/data_0168_014233.asm"
%include "src/data/data_0169_01428b.asm"
%include "src/data/data_0170_014352.asm"
%include "src/data/data_0171_0145ad.asm"
%include "src/data/data_0172_014661.asm"
%include "src/data/data_0173_014927.asm"
%include "src/data/data_0174_01494e.asm"
%include "src/data/data_0175_0149fb.asm"
%include "src/data/data_0176_014a8f.asm"
%include "src/data/data_0177_014b3b.asm"
%include "src/data/data_0178_014cfe.asm"
%include "src/data/data_0179_0158a6.asm"
%include "src/data/data_0180_01598d.asm"
%include "src/data/data_0181_015a23.asm"
%include "src/data/data_0182_015a95.asm"
%include "src/data/data_0183_015d4b.asm"
%include "src/data/data_0184_015f9c.asm"
%include "src/data/data_0185_016134.asm"
%include "src/data/data_0186_01626d.asm"
%include "src/data/data_0187_0166ff.asm"
%include "src/data/data_0188_016900.asm"
%include "src/data/data_0189_0169b9.asm"
%include "src/data/data_0190_016aa5.asm"
%include "src/data/data_0191_016b6c.asm"
%include "src/data/data_0192_016c44.asm"
%include "src/data/data_0193_016c7f.asm"
%include "src/data/data_0194_016cb2.asm"
%include "src/data/data_0195_016fb8.asm"
%include "src/data/data_0196_01745b.asm"
%include "src/data/data_0197_017463.asm"
%include "src/data/data_0198_017499.asm"
%include "src/data/data_0199_0174bf.asm"
%include "src/data/data_0200_0174d9.asm"
%include "src/data/data_0201_017546.asm"
%include "src/data/data_0202_01755f.asm"
%include "src/data/data_0203_01756b.asm"
%include "src/data/data_0204_01757d.asm"
%include "src/data/data_0205_017597.asm"
%include "src/data/data_0206_0175be.asm"
%include "src/data/data_0207_0175c9.asm"
%include "src/data/data_0208_0175eb.asm"
%include "src/data/data_0209_017615.asm"
%include "src/data/data_0210_01763f.asm"
%include "src/data/data_0211_017671.asm"
%include "src/data/data_0212_0176de.asm"
%include "src/data/data_0213_0176f7.asm"
%include "src/data/data_0214_017705.asm"
%include "src/data/data_0215_01771b.asm"
%include "src/data/data_0216_017735.asm"
%include "src/data/data_0217_0177c8.asm"
%include "src/data/data_0218_01784d.asm"
%include "src/data/data_0219_0178b4.asm"
%include "src/data/data_0220_017991.asm"
%include "src/data/data_0221_017b8a.asm"
%include "src/data/data_0222_017bc2.asm"
%include "src/data/data_0223_017c8e.asm"
%include "src/data/data_0224_017ccb.asm"
%include "src/data/data_0225_017d4a.asm"
%include "src/data/data_0226_018265.asm"
%include "src/data/data_0227_01829f.asm"
%include "src/data/data_0228_0184a3.asm"
%include "src/data/data_0229_018524.asm"
%include "src/data/data_0230_01859f.asm"
%include "src/data/data_0231_0187a0.asm"
%include "src/data/data_0232_0188a8.asm"
%include "src/data/data_0233_0198a8.asm"
%include "src/data/data_0234_01a8a8.asm"
%include "src/data/data_0235_01b8a8.asm"
%include "src/data/data_0236_01c8a8.asm"
%include "src/data/data_0237_01d8a8.asm"
%include "src/data/data_0238_01e8a8.asm"
%include "src/data/data_0239_01f8a8.asm"
%include "src/data/data_0240_0208a8.asm"
%include "src/data/data_0241_0218a8.asm"
%include "src/data/data_0242_0228a8.asm"


; File offset 0400h is .text VA 00401000h. This flat-file origin therefore
; gives analyzer-owned .text labels their original PE virtual addresses.
org 0x00400C00

; Exact raw-file emission order. Do not reorder.

; raw 000000..000400 (explicit-data)
%if ($ - $$) != 0x000000
    %error "layout drift at raw 000000"
%endif
emit_file_data_0000_000000

; raw 000400..000561 (function)
%if ($ - $$) != 0x000400
    %error "layout drift at raw 000400"
%endif
emit_func_00401000_part_00

; raw 000561..0005A3 (function)
%if ($ - $$) != 0x000561
    %error "layout drift at raw 000561"
%endif
emit_func_00401161_part_00

; raw 0005A3..000602 (function)
%if ($ - $$) != 0x0005A3
    %error "layout drift at raw 0005A3"
%endif
emit_load_grv_script_file_part_00

; raw 000602..00076E (function)
%if ($ - $$) != 0x000602
    %error "layout drift at raw 000602"
%endif
emit_initialize_grv_runtime_and_load_script_part_00

; raw 00076E..000849 (function)
%if ($ - $$) != 0x00076E
    %error "layout drift at raw 00076E"
%endif
emit_func_0040136e_part_00

; raw 000849..000873 (function)
%if ($ - $$) != 0x000849
    %error "layout drift at raw 000849"
%endif
emit_grv_read_u8_part_00

; raw 000873..0008CB (function)
%if ($ - $$) != 0x000873
    %error "layout drift at raw 000873"
%endif
emit_grv_read_u16_le_part_00

; raw 0008CB..000972 (function)
%if ($ - $$) != 0x0008CB
    %error "layout drift at raw 0008CB"
%endif
emit_grv_read_u32_le_part_00

; raw 000972..0009BF (function)
%if ($ - $$) != 0x000972
    %error "layout drift at raw 000972"
%endif
emit_func_00401572_part_00

; raw 0009BF..0009E6 (function)
%if ($ - $$) != 0x0009BF
    %error "layout drift at raw 0009BF"
%endif
emit_func_004015bf_part_00

; raw 0009E6..000B9B (function)
%if ($ - $$) != 0x0009E6
    %error "layout drift at raw 0009E6"
%endif
emit_func_004015e6_part_00

; raw 000B9B..000BEE (function)
%if ($ - $$) != 0x000B9B
    %error "layout drift at raw 000B9B"
%endif
emit_func_0040179b_part_00

; raw 000BEE..000C33 (function)
%if ($ - $$) != 0x000BEE
    %error "layout drift at raw 000BEE"
%endif
emit_func_004017ee_part_00

; raw 000C33..000FB3 (function)
%if ($ - $$) != 0x000C33
    %error "layout drift at raw 000C33"
%endif
emit_func_00401833_part_00

; raw 000FB3..000FFD (function)
%if ($ - $$) != 0x000FB3
    %error "layout drift at raw 000FB3"
%endif
emit_func_00401bb3_part_00

; raw 000FFD..001055 (function)
%if ($ - $$) != 0x000FFD
    %error "layout drift at raw 000FFD"
%endif
emit_func_00401bfd_part_00

; raw 001055..001099 (function)
%if ($ - $$) != 0x001055
    %error "layout drift at raw 001055"
%endif
emit_func_00401c55_part_00

; raw 001099..0010DD (function)
%if ($ - $$) != 0x001099
    %error "layout drift at raw 001099"
%endif
emit_func_00401c99_part_00

; raw 0010DD..00113A (function)
%if ($ - $$) != 0x0010DD
    %error "layout drift at raw 0010DD"
%endif
emit_func_00401cdd_part_00

; raw 00113A..00135F (function)
%if ($ - $$) != 0x00113A
    %error "layout drift at raw 00113A"
%endif
emit_select_grv_video_resource_part_00

; raw 00135F..001467 (function)
%if ($ - $$) != 0x00135F
    %error "layout drift at raw 00135F"
%endif
emit_select_grv_song_resource_part_00

; raw 001467..0014E7 (function)
%if ($ - $$) != 0x001467
    %error "layout drift at raw 001467"
%endif
emit_func_00402067_part_00

; raw 0014E7..001572 (function)
%if ($ - $$) != 0x0014E7
    %error "layout drift at raw 0014E7"
%endif
emit_func_004020e7_part_00

; raw 001572..0015D1 (function)
%if ($ - $$) != 0x001572
    %error "layout drift at raw 001572"
%endif
emit_func_00402172_part_00

; raw 0015D1..0035E0 (function)
%if ($ - $$) != 0x0015D1
    %error "layout drift at raw 0015D1"
%endif
emit_run_grv_vm_part_00

; raw 0035E0..003750 (explicit-data)
%if ($ - $$) != 0x0035E0
    %error "layout drift at raw 0035E0"
%endif
emit_file_data_0001_0035e0

; raw 003750..00381D (function)
%if ($ - $$) != 0x003750
    %error "layout drift at raw 003750"
%endif
emit_init_game_subsystems_part_00

; raw 00381D..003869 (function)
%if ($ - $$) != 0x00381D
    %error "layout drift at raw 00381D"
%endif
emit_func_0040441d_part_00

; raw 003869..003D83 (function)
%if ($ - $$) != 0x003869
    %error "layout drift at raw 003869"
%endif
emit_func_00404469_part_00

; raw 003D83..0040A2 (function)
%if ($ - $$) != 0x003D83
    %error "layout drift at raw 003D83"
%endif
emit_func_00404983_part_00

; raw 0040A2..004278 (function)
%if ($ - $$) != 0x0040A2
    %error "layout drift at raw 0040A2"
%endif
emit_func_00404ca2_part_00

; raw 004278..004280 (explicit-data)
%if ($ - $$) != 0x004278
    %error "layout drift at raw 004278"
%endif
emit_file_data_0002_004278

; raw 004280..0042BB (function)
%if ($ - $$) != 0x004280
    %error "layout drift at raw 004280"
%endif
emit_func_00404e80_part_00

; raw 0042BB..0042F6 (function)
%if ($ - $$) != 0x0042BB
    %error "layout drift at raw 0042BB"
%endif
emit_func_00404ebb_part_00

; raw 0042F6..004302 (function)
%if ($ - $$) != 0x0042F6
    %error "layout drift at raw 0042F6"
%endif
emit_func_00404ef6_part_00

; raw 004302..004390 (function)
%if ($ - $$) != 0x004302
    %error "layout drift at raw 004302"
%endif
emit_func_00404f02_part_00

; raw 004390..004445 (function)
%if ($ - $$) != 0x004390
    %error "layout drift at raw 004390"
%endif
emit_func_00404f90_part_00

; raw 004445..004495 (function)
%if ($ - $$) != 0x004445
    %error "layout drift at raw 004445"
%endif
emit_func_00405045_part_00

; raw 004495..0044AF (function)
%if ($ - $$) != 0x004495
    %error "layout drift at raw 004495"
%endif
emit_func_00405095_part_00

; raw 0044AF..004691 (function)
%if ($ - $$) != 0x0044AF
    %error "layout drift at raw 0044AF"
%endif
emit_func_004050af_part_00

; raw 004691..0048B4 (function)
%if ($ - $$) != 0x004691
    %error "layout drift at raw 004691"
%endif
emit_func_00405291_part_00

; raw 0048B4..004A3C (function)
%if ($ - $$) != 0x0048B4
    %error "layout drift at raw 0048B4"
%endif
emit_func_004054b4_part_00

; raw 004A3C..004AB2 (function)
%if ($ - $$) != 0x004A3C
    %error "layout drift at raw 004A3C"
%endif
emit_func_0040563c_part_00

; raw 004AB2..004CAF (function)
%if ($ - $$) != 0x004AB2
    %error "layout drift at raw 004AB2"
%endif
emit_func_004056b2_part_00

; raw 004CAF..004DA7 (function)
%if ($ - $$) != 0x004CAF
    %error "layout drift at raw 004CAF"
%endif
emit_func_004058af_part_00

; raw 004DA7..004DD7 (function)
%if ($ - $$) != 0x004DA7
    %error "layout drift at raw 004DA7"
%endif
emit_func_004059a7_part_00

; raw 004DD7..004E24 (function)
%if ($ - $$) != 0x004DD7
    %error "layout drift at raw 004DD7"
%endif
emit_func_004059d7_part_00

; raw 004E24..004F6F (function)
%if ($ - $$) != 0x004E24
    %error "layout drift at raw 004E24"
%endif
emit_func_00405a24_part_00

; raw 004F6F..004FC2 (function)
%if ($ - $$) != 0x004F6F
    %error "layout drift at raw 004F6F"
%endif
emit_func_00405b6f_part_00

; raw 004FC2..005015 (function)
%if ($ - $$) != 0x004FC2
    %error "layout drift at raw 004FC2"
%endif
emit_func_00405bc2_part_00

; raw 005015..005068 (function)
%if ($ - $$) != 0x005015
    %error "layout drift at raw 005015"
%endif
emit_func_00405c15_part_00

; raw 005068..0050BB (function)
%if ($ - $$) != 0x005068
    %error "layout drift at raw 005068"
%endif
emit_func_00405c68_part_00

; raw 0050BB..00544C (function)
%if ($ - $$) != 0x0050BB
    %error "layout drift at raw 0050BB"
%endif
emit_func_00405cbb_part_00

; raw 00544C..0056FD (function)
%if ($ - $$) != 0x00544C
    %error "layout drift at raw 00544C"
%endif
emit_func_0040604c_part_00

; raw 0056FD..005724 (function)
%if ($ - $$) != 0x0056FD
    %error "layout drift at raw 0056FD"
%endif
emit_func_004062fd_part_00

; raw 005724..005827 (function)
%if ($ - $$) != 0x005724
    %error "layout drift at raw 005724"
%endif
emit_func_00406324_part_00

; raw 005827..005AA9 (function)
%if ($ - $$) != 0x005827
    %error "layout drift at raw 005827"
%endif
emit_func_00406427_part_00

; raw 005AA9..005C09 (function)
%if ($ - $$) != 0x005AA9
    %error "layout drift at raw 005AA9"
%endif
emit_func_004066a9_part_00

; raw 005C09..005CB0 (function)
%if ($ - $$) != 0x005C09
    %error "layout drift at raw 005C09"
%endif
emit_func_00406809_part_00

; raw 005CB0..005D93 (function)
%if ($ - $$) != 0x005CB0
    %error "layout drift at raw 005CB0"
%endif
emit_func_004068b0_part_00

; raw 005D93..005DA0 (explicit-data)
%if ($ - $$) != 0x005D93
    %error "layout drift at raw 005D93"
%endif
emit_file_data_0003_005d93

; raw 005DA0..005DC7 (function)
%if ($ - $$) != 0x005DA0
    %error "layout drift at raw 005DA0"
%endif
emit_func_004069a0_part_00

; raw 005DC7..005DE5 (function)
%if ($ - $$) != 0x005DC7
    %error "layout drift at raw 005DC7"
%endif
emit_func_004069c7_part_00

; raw 005DE5..005E48 (function)
%if ($ - $$) != 0x005DE5
    %error "layout drift at raw 005DE5"
%endif
emit_dequeue_key_input_part_00

; raw 005E48..005EAF (function)
%if ($ - $$) != 0x005E48
    %error "layout drift at raw 005E48"
%endif
emit_func_00406a48_part_00

; raw 005EAF..005EB0 (explicit-data)
%if ($ - $$) != 0x005EAF
    %error "layout drift at raw 005EAF"
%endif
emit_file_data_0004_005eaf

; raw 005EB0..005EE9 (function)
%if ($ - $$) != 0x005EB0
    %error "layout drift at raw 005EB0"
%endif
emit_func_00406ab0_part_00

; raw 005EE9..005F14 (function)
%if ($ - $$) != 0x005EE9
    %error "layout drift at raw 005EE9"
%endif
emit_func_00406ae9_part_00

; raw 005F14..006116 (function)
%if ($ - $$) != 0x005F14
    %error "layout drift at raw 005F14"
%endif
emit_func_00406b14_part_00

; raw 006116..00613A (function)
%if ($ - $$) != 0x006116
    %error "layout drift at raw 006116"
%endif
emit_func_00406d16_part_00

; raw 00613A..006140 (explicit-data)
%if ($ - $$) != 0x00613A
    %error "layout drift at raw 00613A"
%endif
emit_file_data_0005_00613a

; raw 006140..00618E (function)
%if ($ - $$) != 0x006140
    %error "layout drift at raw 006140"
%endif
emit_func_00406d40_part_00

; raw 00618E..006228 (function)
%if ($ - $$) != 0x00618E
    %error "layout drift at raw 00618E"
%endif
emit_func_00406d8e_part_00

; raw 006228..0063AE (function)
%if ($ - $$) != 0x006228
    %error "layout drift at raw 006228"
%endif
emit_func_00406e28_part_00

; raw 0063AE..006449 (function)
%if ($ - $$) != 0x0063AE
    %error "layout drift at raw 0063AE"
%endif
emit_func_00406fae_part_00

; raw 006449..00649F (function)
%if ($ - $$) != 0x006449
    %error "layout drift at raw 006449"
%endif
emit_func_00407049_part_00

; raw 00649F..00652C (function)
%if ($ - $$) != 0x00649F
    %error "layout drift at raw 00649F"
%endif
emit_func_0040709f_part_00

; raw 00652C..006546 (function)
%if ($ - $$) != 0x00652C
    %error "layout drift at raw 00652C"
%endif
emit_func_0040712c_part_00

; raw 006546..00656E (function)
%if ($ - $$) != 0x006546
    %error "layout drift at raw 006546"
%endif
emit_is_midi_sequence_playing_part_00

; raw 00656E..006588 (function)
%if ($ - $$) != 0x00656E
    %error "layout drift at raw 00656E"
%endif
emit_func_0040716e_part_00

; raw 006588..0065D4 (function)
%if ($ - $$) != 0x006588
    %error "layout drift at raw 006588"
%endif
emit_func_00407188_part_00

; raw 0065D4..0065F2 (function)
%if ($ - $$) != 0x0065D4
    %error "layout drift at raw 0065D4"
%endif
emit_func_004071d4_part_00

; raw 0065F2..006690 (function)
%if ($ - $$) != 0x0065F2
    %error "layout drift at raw 0065F2"
%endif
emit_func_004071f2_part_00

; raw 006690..0066A1 (function)
%if ($ - $$) != 0x006690
    %error "layout drift at raw 006690"
%endif
emit_func_00407290_part_00

; raw 0066A1..006702 (function)
%if ($ - $$) != 0x0066A1
    %error "layout drift at raw 0066A1"
%endif
emit_func_004072a1_part_00

; raw 006702..0068C1 (function)
%if ($ - $$) != 0x006702
    %error "layout drift at raw 006702"
%endif
emit_func_00407302_part_00

; raw 0068C1..006907 (function)
%if ($ - $$) != 0x0068C1
    %error "layout drift at raw 0068C1"
%endif
emit_func_004074c1_part_00

; raw 006907..0069AD (function)
%if ($ - $$) != 0x006907
    %error "layout drift at raw 006907"
%endif
emit_func_00407507_part_00

; raw 0069AD..006A38 (function)
%if ($ - $$) != 0x0069AD
    %error "layout drift at raw 0069AD"
%endif
emit_func_004075ad_part_00

; raw 006A38..006A6D (function)
%if ($ - $$) != 0x006A38
    %error "layout drift at raw 006A38"
%endif
emit_func_00407638_part_00

; raw 006A6D..006A70 (explicit-data)
%if ($ - $$) != 0x006A6D
    %error "layout drift at raw 006A6D"
%endif
emit_file_data_0006_006a6d

; raw 006A70..006A8C (function)
%if ($ - $$) != 0x006A70
    %error "layout drift at raw 006A70"
%endif
emit_func_00407670_part_00

; raw 006A8C..006B48 (function)
%if ($ - $$) != 0x006A8C
    %error "layout drift at raw 006A8C"
%endif
emit_func_0040768c_part_00

; raw 006B48..006BE5 (function)
%if ($ - $$) != 0x006B48
    %error "layout drift at raw 006B48"
%endif
emit_func_00407748_part_00

; raw 006BE5..006C42 (function)
%if ($ - $$) != 0x006BE5
    %error "layout drift at raw 006BE5"
%endif
emit_func_004077e5_part_00

; raw 006C42..006CB3 (function)
%if ($ - $$) != 0x006C42
    %error "layout drift at raw 006C42"
%endif
emit_func_00407842_part_00

; raw 006CB3..006D31 (function)
%if ($ - $$) != 0x006CB3
    %error "layout drift at raw 006CB3"
%endif
emit_func_004078b3_part_00

; raw 006D31..006E76 (function)
%if ($ - $$) != 0x006D31
    %error "layout drift at raw 006D31"
%endif
emit_func_00407931_part_00

; raw 006E76..006EE7 (function)
%if ($ - $$) != 0x006E76
    %error "layout drift at raw 006E76"
%endif
emit_func_00407a76_part_00

; raw 006EE7..006F0D (function)
%if ($ - $$) != 0x006EE7
    %error "layout drift at raw 006EE7"
%endif
emit_func_00407ae7_part_00

; raw 006F0D..006F5E (function)
%if ($ - $$) != 0x006F0D
    %error "layout drift at raw 006F0D"
%endif
emit_func_00407b0d_part_00

; raw 006F5E..006FC2 (function)
%if ($ - $$) != 0x006F5E
    %error "layout drift at raw 006F5E"
%endif
emit_func_00407b5e_part_00

; raw 006FC2..007029 (function)
%if ($ - $$) != 0x006FC2
    %error "layout drift at raw 006FC2"
%endif
emit_func_00407bc2_part_00

; raw 007029..00732D (function)
%if ($ - $$) != 0x007029
    %error "layout drift at raw 007029"
%endif
emit_func_00407c29_part_00

; raw 00732D..00740D (function)
%if ($ - $$) != 0x00732D
    %error "layout drift at raw 00732D"
%endif
emit_func_00407f2d_part_00

; raw 00740D..00744B (function)
%if ($ - $$) != 0x00740D
    %error "layout drift at raw 00740D"
%endif
emit_func_0040800d_part_00

; raw 00744B..007450 (explicit-data)
%if ($ - $$) != 0x00744B
    %error "layout drift at raw 00744B"
%endif
emit_file_data_0007_00744b

; raw 007450..0074AD (function)
%if ($ - $$) != 0x007450
    %error "layout drift at raw 007450"
%endif
emit_func_00408050_part_00

; raw 0074AD..007BFB (function)
%if ($ - $$) != 0x0074AD
    %error "layout drift at raw 0074AD"
%endif
emit_func_004080ad_part_00

; raw 007BFB..007C1E (function)
%if ($ - $$) != 0x007BFB
    %error "layout drift at raw 007BFB"
%endif
emit_func_004087fb_part_00

; raw 007C1E..007C46 (function)
%if ($ - $$) != 0x007C1E
    %error "layout drift at raw 007C1E"
%endif
emit_func_0040881e_part_00

; raw 007C46..007D20 (function)
%if ($ - $$) != 0x007C46
    %error "layout drift at raw 007C46"
%endif
emit_func_00408846_part_00

; raw 007D20..007E7E (function)
%if ($ - $$) != 0x007D20
    %error "layout drift at raw 007D20"
%endif
emit_func_00408920_part_00

; raw 007E7E..007E80 (explicit-data)
%if ($ - $$) != 0x007E7E
    %error "layout drift at raw 007E7E"
%endif
emit_file_data_0008_007e7e

; raw 007E80..007FB4 (function)
%if ($ - $$) != 0x007E80
    %error "layout drift at raw 007E80"
%endif
emit_decompress_vdx_lzss_part_00

; raw 007FB4..0080F5 (function)
%if ($ - $$) != 0x007FB4
    %error "layout drift at raw 007FB4"
%endif
emit_func_00408bb4_part_00

; raw 0080F5..008100 (explicit-data)
%if ($ - $$) != 0x0080F5
    %error "layout drift at raw 0080F5"
%endif
emit_file_data_0009_0080f5

; raw 008100..008112 (function)
%if ($ - $$) != 0x008100
    %error "layout drift at raw 008100"
%endif
emit_func_00408d00_part_00

; raw 008112..008124 (function)
%if ($ - $$) != 0x008112
    %error "layout drift at raw 008112"
%endif
emit_func_00408d12_part_00

; raw 008124..0081F6 (function)
%if ($ - $$) != 0x008124
    %error "layout drift at raw 008124"
%endif
emit_func_00408d24_part_00

; raw 0081F6..008275 (function)
%if ($ - $$) != 0x0081F6
    %error "layout drift at raw 0081F6"
%endif
emit_open_loose_vdx_part_00

; raw 008275..0082B7 (function)
%if ($ - $$) != 0x008275
    %error "layout drift at raw 008275"
%endif
emit_dispatch_game_or_loose_vdx_part_00

; raw 0082B7..008310 (function)
%if ($ - $$) != 0x0082B7
    %error "layout drift at raw 0082B7"
%endif
emit_pump_media_and_game_part_00

; raw 008310..00832E (function)
%if ($ - $$) != 0x008310
    %error "layout drift at raw 008310"
%endif
emit_func_00408f10_part_00

; raw 00832E..008330 (explicit-data)
%if ($ - $$) != 0x00832E
    %error "layout drift at raw 00832E"
%endif
emit_file_data_0010_00832e

; raw 008330..00867B (function)
%if ($ - $$) != 0x008330
    %error "layout drift at raw 008330"
%endif
emit_func_00408f30_part_00

; raw 00867B..008796 (explicit-data)
%if ($ - $$) != 0x00867B
    %error "layout drift at raw 00867B"
%endif
emit_file_data_0011_00867b

; raw 008796..008903 (function)
%if ($ - $$) != 0x008796
    %error "layout drift at raw 008796"
%endif
emit_func_00409396_part_00

; raw 008903..008912 (function)
%if ($ - $$) != 0x008903
    %error "layout drift at raw 008903"
%endif
emit_func_00409503_part_00

; raw 008912..0089D7 (function)
%if ($ - $$) != 0x008912
    %error "layout drift at raw 008912"
%endif
emit_func_00409512_part_00

; raw 0089D7..008A5B (function)
%if ($ - $$) != 0x0089D7
    %error "layout drift at raw 0089D7"
%endif
emit_enforce_single_instance_part_00

; raw 008A5B..008A91 (function)
%if ($ - $$) != 0x008A5B
    %error "layout drift at raw 008A5B"
%endif
emit_func_0040965b_part_00

; raw 008A91..008AF0 (function)
%if ($ - $$) != 0x008A91
    %error "layout drift at raw 008A91"
%endif
emit_fatal_media_error_part_00

; raw 008AF0..008B60 (function)
%if ($ - $$) != 0x008AF0
    %error "layout drift at raw 008AF0"
%endif
emit_shutdown_player_part_00

; raw 008B60..008B7B (function)
%if ($ - $$) != 0x008B60
    %error "layout drift at raw 008B60"
%endif
emit_func_00409760_part_00

; raw 008B7B..008C50 (function)
%if ($ - $$) != 0x008B7B
    %error "layout drift at raw 008B7B"
%endif
emit_winmain_part_00

; raw 008C50..008E89 (function)
%if ($ - $$) != 0x008C50
    %error "layout drift at raw 008C50"
%endif
emit_setup_window_and_runtime_part_00

; raw 008E89..008E90 (explicit-data)
%if ($ - $$) != 0x008E89
    %error "layout drift at raw 008E89"
%endif
emit_file_data_0012_008e89

; raw 008E90..008EB6 (function)
%if ($ - $$) != 0x008E90
    %error "layout drift at raw 008E90"
%endif
emit_init_game_state_part_00

; raw 008EB6..008F1D (function)
%if ($ - $$) != 0x008EB6
    %error "layout drift at raw 008EB6"
%endif
emit_func_00409ab6_part_00

; raw 008F1D..00907B (function)
%if ($ - $$) != 0x008F1D
    %error "layout drift at raw 008F1D"
%endif
emit_func_00409b1d_part_00

; raw 00907B..009098 (explicit-data)
%if ($ - $$) != 0x00907B
    %error "layout drift at raw 00907B"
%endif
emit_file_data_0013_00907b

; raw 009098..00911E (function)
%if ($ - $$) != 0x009098
    %error "layout drift at raw 009098"
%endif
emit_func_00409b1d_part_01

; raw 00911E..009155 (function)
%if ($ - $$) != 0x00911E
    %error "layout drift at raw 00911E"
%endif
emit_func_00409d1e_part_00

; raw 009155..009164 (function)
%if ($ - $$) != 0x009155
    %error "layout drift at raw 009155"
%endif
emit_func_00409d55_part_00

; raw 009164..009217 (function)
%if ($ - $$) != 0x009164
    %error "layout drift at raw 009164"
%endif
emit_func_00409d64_part_00

; raw 009217..009234 (explicit-data)
%if ($ - $$) != 0x009217
    %error "layout drift at raw 009217"
%endif
emit_file_data_0014_009217

; raw 009234..009285 (function)
%if ($ - $$) != 0x009234
    %error "layout drift at raw 009234"
%endif
emit_func_00409d64_part_01

; raw 009285..00930A (function)
%if ($ - $$) != 0x009285
    %error "layout drift at raw 009285"
%endif
emit_func_00409e85_part_00

; raw 00930A..00931A (function)
%if ($ - $$) != 0x00930A
    %error "layout drift at raw 00930A"
%endif
emit_func_00409f0a_part_00

; raw 00931A..009632 (function)
%if ($ - $$) != 0x00931A
    %error "layout drift at raw 00931A"
%endif
emit_func_00409f1a_part_00

; raw 009632..00964F (explicit-data)
%if ($ - $$) != 0x009632
    %error "layout drift at raw 009632"
%endif
emit_file_data_0015_009632

; raw 00964F..00969F (function)
%if ($ - $$) != 0x00964F
    %error "layout drift at raw 00964F"
%endif
emit_func_00409f1a_part_01

; raw 00969F..00979F (function)
%if ($ - $$) != 0x00969F
    %error "layout drift at raw 00969F"
%endif
emit_func_0040a29f_part_00

; raw 00979F..0097EE (function)
%if ($ - $$) != 0x00979F
    %error "layout drift at raw 00979F"
%endif
emit_func_0040a39f_part_00

; raw 0097EE..009821 (function)
%if ($ - $$) != 0x0097EE
    %error "layout drift at raw 0097EE"
%endif
emit_func_0040a3ee_part_00

; raw 009821..009830 (explicit-data)
%if ($ - $$) != 0x009821
    %error "layout drift at raw 009821"
%endif
emit_file_data_0016_009821

; raw 009830..009B3A (function)
%if ($ - $$) != 0x009830
    %error "layout drift at raw 009830"
%endif
emit_func_0040a430_part_00

; raw 009B3A..009B86 (function)
%if ($ - $$) != 0x009B3A
    %error "layout drift at raw 009B3A"
%endif
emit_func_0040a73a_part_00

; raw 009B86..009BAA (function)
%if ($ - $$) != 0x009B86
    %error "layout drift at raw 009B86"
%endif
emit_func_0040a786_part_00

; raw 009BAA..009C4B (function)
%if ($ - $$) != 0x009BAA
    %error "layout drift at raw 009BAA"
%endif
emit_func_0040a7aa_part_00

; raw 009C4B..009E45 (function)
%if ($ - $$) != 0x009C4B
    %error "layout drift at raw 009C4B"
%endif
emit_func_0040a84b_part_00

; raw 009E45..009F84 (function)
%if ($ - $$) != 0x009E45
    %error "layout drift at raw 009E45"
%endif
emit_func_0040aa45_part_00

; raw 009F84..00A598 (function)
%if ($ - $$) != 0x009F84
    %error "layout drift at raw 009F84"
%endif
emit_decode_vdx_bitmap_still_part_00

; raw 00A598..00B3F4 (function)
%if ($ - $$) != 0x00A598
    %error "layout drift at raw 00A598"
%endif
emit_decode_vdx_delta_frame_part_00

; raw 00B3F4..00B4BB (function)
%if ($ - $$) != 0x00B3F4
    %error "layout drift at raw 00B3F4"
%endif
emit_func_0040bff4_part_00

; raw 00B4BB..00B4E7 (function)
%if ($ - $$) != 0x00B4BB
    %error "layout drift at raw 00B4BB"
%endif
emit_decompress_vdx_chunk_part_00

; raw 00B4E7..00B529 (function)
%if ($ - $$) != 0x00B4E7
    %error "layout drift at raw 00B4E7"
%endif
emit_allocate_grv_runtime_buffers_part_00

; raw 00B529..00B573 (function)
%if ($ - $$) != 0x00B529
    %error "layout drift at raw 00B529"
%endif
emit_func_0040c129_part_00

; raw 00B573..00B580 (explicit-data)
%if ($ - $$) != 0x00B573
    %error "layout drift at raw 00B573"
%endif
emit_file_data_0017_00b573

; raw 00B580..00B597 (function)
%if ($ - $$) != 0x00B580
    %error "layout drift at raw 00B580"
%endif
emit_init_archive_tables_part_00

; raw 00B597..00B5BD (function)
%if ($ - $$) != 0x00B597
    %error "layout drift at raw 00B597"
%endif
emit_func_0040c197_part_00

; raw 00B5BD..00B661 (function)
%if ($ - $$) != 0x00B5BD
    %error "layout drift at raw 00B5BD"
%endif
emit_configure_vdx_stream_part_00

; raw 00B661..00BA10 (function)
%if ($ - $$) != 0x00B661
    %error "layout drift at raw 00B661"
%endif
emit_decode_vdx_stream_part_00

; raw 00BA10..00BAA5 (explicit-data)
%if ($ - $$) != 0x00BA10
    %error "layout drift at raw 00BA10"
%endif
emit_file_data_0018_00ba10

; raw 00BAA5..00BB74 (function)
%if ($ - $$) != 0x00BAA5
    %error "layout drift at raw 00BAA5"
%endif
emit_func_0040c6a5_part_00

; raw 00BB74..00BB80 (explicit-data)
%if ($ - $$) != 0x00BB74
    %error "layout drift at raw 00BB74"
%endif
emit_file_data_0019_00bb74

; raw 00BB80..00BB9C (function)
%if ($ - $$) != 0x00BB80
    %error "layout drift at raw 00BB80"
%endif
emit_func_0040c780_part_00

; raw 00BB9C..00BBC3 (function)
%if ($ - $$) != 0x00BB9C
    %error "layout drift at raw 00BB9C"
%endif
emit_func_0040c79c_part_00

; raw 00BBC3..00BBEC (function)
%if ($ - $$) != 0x00BBC3
    %error "layout drift at raw 00BBC3"
%endif
emit_func_0040c7c3_part_00

; raw 00BBEC..00BD96 (explicit-data)
%if ($ - $$) != 0x00BBEC
    %error "layout drift at raw 00BBEC"
%endif
emit_file_data_0020_00bbec

; raw 00BD96..00BD9C (function)
%if ($ - $$) != 0x00BD96
    %error "layout drift at raw 00BD96"
%endif
emit_func_0040c996_part_00

; raw 00BD9C..00BDA0 (explicit-data)
%if ($ - $$) != 0x00BD9C
    %error "layout drift at raw 00BD9C"
%endif
emit_file_data_0021_00bd9c

; raw 00BDA0..00BE08 (function)
%if ($ - $$) != 0x00BDA0
    %error "layout drift at raw 00BDA0"
%endif
emit_func_0040c9a0_part_00

; raw 00BE08..00BE10 (explicit-data)
%if ($ - $$) != 0x00BE08
    %error "layout drift at raw 00BE08"
%endif
emit_file_data_0022_00be08

; raw 00BE10..00BE6B (function)
%if ($ - $$) != 0x00BE10
    %error "layout drift at raw 00BE10"
%endif
emit_func_0040ca10_part_00

; raw 00BE6B..00BE6C (explicit-data)
%if ($ - $$) != 0x00BE6B
    %error "layout drift at raw 00BE6B"
%endif
emit_file_data_0023_00be6b

; raw 00BE6C..00BE73 (function)
%if ($ - $$) != 0x00BE6C
    %error "layout drift at raw 00BE6C"
%endif
emit_func_0040ca10_part_01

; raw 00BE73..00BE80 (explicit-data)
%if ($ - $$) != 0x00BE73
    %error "layout drift at raw 00BE73"
%endif
emit_file_data_0024_00be73

; raw 00BE80..00BEA9 (function)
%if ($ - $$) != 0x00BE80
    %error "layout drift at raw 00BE80"
%endif
emit_func_0040ca10_part_02

; raw 00BEA9..00BEAC (explicit-data)
%if ($ - $$) != 0x00BEA9
    %error "layout drift at raw 00BEA9"
%endif
emit_file_data_0025_00bea9

; raw 00BEAC..00BECF (function)
%if ($ - $$) != 0x00BEAC
    %error "layout drift at raw 00BEAC"
%endif
emit_func_0040ca10_part_03

; raw 00BECF..00BED0 (explicit-data)
%if ($ - $$) != 0x00BECF
    %error "layout drift at raw 00BECF"
%endif
emit_file_data_0026_00becf

; raw 00BED0..00BEE9 (function)
%if ($ - $$) != 0x00BED0
    %error "layout drift at raw 00BED0"
%endif
emit_func_0040ca10_part_04

; raw 00BEE9..00BF0C (explicit-data)
%if ($ - $$) != 0x00BEE9
    %error "layout drift at raw 00BEE9"
%endif
emit_file_data_0027_00bee9

; raw 00BF0C..00BF56 (function)
%if ($ - $$) != 0x00BF0C
    %error "layout drift at raw 00BF0C"
%endif
emit_func_0040ca10_part_05

; raw 00BF56..00BF68 (explicit-data)
%if ($ - $$) != 0x00BF56
    %error "layout drift at raw 00BF56"
%endif
emit_file_data_0028_00bf56

; raw 00BF68..00BF6F (function)
%if ($ - $$) != 0x00BF68
    %error "layout drift at raw 00BF68"
%endif
emit_func_0040ca10_part_06

; raw 00BF6F..00BF70 (explicit-data)
%if ($ - $$) != 0x00BF6F
    %error "layout drift at raw 00BF6F"
%endif
emit_file_data_0029_00bf6f

; raw 00BF70..00BF7B (function)
%if ($ - $$) != 0x00BF70
    %error "layout drift at raw 00BF70"
%endif
emit_func_0040ca10_part_07

; raw 00BF7B..00BF7C (explicit-data)
%if ($ - $$) != 0x00BF7B
    %error "layout drift at raw 00BF7B"
%endif
emit_file_data_0030_00bf7b

; raw 00BF7C..00BF8D (function)
%if ($ - $$) != 0x00BF7C
    %error "layout drift at raw 00BF7C"
%endif
emit_func_0040ca10_part_08

; raw 00BF8D..00BF90 (explicit-data)
%if ($ - $$) != 0x00BF8D
    %error "layout drift at raw 00BF8D"
%endif
emit_file_data_0031_00bf8d

; raw 00BF90..00BFA7 (function)
%if ($ - $$) != 0x00BF90
    %error "layout drift at raw 00BF90"
%endif
emit_func_0040ca10_part_09

; raw 00BFA7..00BFA8 (explicit-data)
%if ($ - $$) != 0x00BFA7
    %error "layout drift at raw 00BFA7"
%endif
emit_file_data_0032_00bfa7

; raw 00BFA8..00BFCE (function)
%if ($ - $$) != 0x00BFA8
    %error "layout drift at raw 00BFA8"
%endif
emit_func_0040ca10_part_10

; raw 00BFCE..00BFD0 (explicit-data)
%if ($ - $$) != 0x00BFCE
    %error "layout drift at raw 00BFCE"
%endif
emit_file_data_0033_00bfce

; raw 00BFD0..00BFD9 (function)
%if ($ - $$) != 0x00BFD0
    %error "layout drift at raw 00BFD0"
%endif
emit_func_0040ca10_part_11

; raw 00BFD9..00BFDC (explicit-data)
%if ($ - $$) != 0x00BFD9
    %error "layout drift at raw 00BFD9"
%endif
emit_file_data_0034_00bfd9

; raw 00BFDC..00BFFB (function)
%if ($ - $$) != 0x00BFDC
    %error "layout drift at raw 00BFDC"
%endif
emit_func_0040ca10_part_12

; raw 00BFFB..00C008 (explicit-data)
%if ($ - $$) != 0x00BFFB
    %error "layout drift at raw 00BFFB"
%endif
emit_file_data_0035_00bffb

; raw 00C008..00C025 (function)
%if ($ - $$) != 0x00C008
    %error "layout drift at raw 00C008"
%endif
emit_func_0040ca10_part_13

; raw 00C025..00C028 (explicit-data)
%if ($ - $$) != 0x00C025
    %error "layout drift at raw 00C025"
%endif
emit_file_data_0036_00c025

; raw 00C028..00C04F (function)
%if ($ - $$) != 0x00C028
    %error "layout drift at raw 00C028"
%endif
emit_func_0040ca10_part_14

; raw 00C04F..00C050 (explicit-data)
%if ($ - $$) != 0x00C04F
    %error "layout drift at raw 00C04F"
%endif
emit_file_data_0037_00c04f

; raw 00C050..00C081 (function)
%if ($ - $$) != 0x00C050
    %error "layout drift at raw 00C050"
%endif
emit_func_0040ca10_part_15

; raw 00C081..00C0A4 (explicit-data)
%if ($ - $$) != 0x00C081
    %error "layout drift at raw 00C081"
%endif
emit_file_data_0038_00c081

; raw 00C0A4..00C0EE (function)
%if ($ - $$) != 0x00C0A4
    %error "layout drift at raw 00C0A4"
%endif
emit_func_0040ca10_part_16

; raw 00C0EE..00C100 (explicit-data)
%if ($ - $$) != 0x00C0EE
    %error "layout drift at raw 00C0EE"
%endif
emit_file_data_0039_00c0ee

; raw 00C100..00C107 (function)
%if ($ - $$) != 0x00C100
    %error "layout drift at raw 00C100"
%endif
emit_func_0040ca10_part_17

; raw 00C107..00C108 (explicit-data)
%if ($ - $$) != 0x00C107
    %error "layout drift at raw 00C107"
%endif
emit_file_data_0040_00c107

; raw 00C108..00C115 (function)
%if ($ - $$) != 0x00C108
    %error "layout drift at raw 00C108"
%endif
emit_func_0040ca10_part_18

; raw 00C115..00C118 (explicit-data)
%if ($ - $$) != 0x00C115
    %error "layout drift at raw 00C115"
%endif
emit_file_data_0041_00c115

; raw 00C118..00C12B (function)
%if ($ - $$) != 0x00C118
    %error "layout drift at raw 00C118"
%endif
emit_func_0040ca10_part_19

; raw 00C12B..00C12C (explicit-data)
%if ($ - $$) != 0x00C12B
    %error "layout drift at raw 00C12B"
%endif
emit_file_data_0042_00c12b

; raw 00C12C..00C145 (function)
%if ($ - $$) != 0x00C12C
    %error "layout drift at raw 00C12C"
%endif
emit_func_0040ca10_part_20

; raw 00C145..00C150 (explicit-data)
%if ($ - $$) != 0x00C145
    %error "layout drift at raw 00C145"
%endif
emit_file_data_0043_00c145

; raw 00C150..00C1B8 (function)
%if ($ - $$) != 0x00C150
    %error "layout drift at raw 00C150"
%endif
emit_func_0040cd50_part_00

; raw 00C1B8..00C1C0 (explicit-data)
%if ($ - $$) != 0x00C1B8
    %error "layout drift at raw 00C1B8"
%endif
emit_file_data_0044_00c1b8

; raw 00C1C0..00C1D4 (function)
%if ($ - $$) != 0x00C1C0
    %error "layout drift at raw 00C1C0"
%endif
emit_func_0040cdc0_part_00

; raw 00C1D4..00C1E0 (explicit-data)
%if ($ - $$) != 0x00C1D4
    %error "layout drift at raw 00C1D4"
%endif
emit_file_data_0045_00c1d4

; raw 00C1E0..00C224 (function)
%if ($ - $$) != 0x00C1E0
    %error "layout drift at raw 00C1E0"
%endif
emit_func_0040cde0_part_00

; raw 00C224..00C230 (explicit-data)
%if ($ - $$) != 0x00C224
    %error "layout drift at raw 00C224"
%endif
emit_file_data_0046_00c224

; raw 00C230..00C285 (function)
%if ($ - $$) != 0x00C230
    %error "layout drift at raw 00C230"
%endif
emit_func_0040ce30_part_00

; raw 00C285..00C290 (explicit-data)
%if ($ - $$) != 0x00C285
    %error "layout drift at raw 00C285"
%endif
emit_file_data_0047_00c285

; raw 00C290..00C2C8 (function)
%if ($ - $$) != 0x00C290
    %error "layout drift at raw 00C290"
%endif
emit_func_0040ce90_part_00

; raw 00C2C8..00C2D0 (explicit-data)
%if ($ - $$) != 0x00C2C8
    %error "layout drift at raw 00C2C8"
%endif
emit_file_data_0048_00c2c8

; raw 00C2D0..00C30D (function)
%if ($ - $$) != 0x00C2D0
    %error "layout drift at raw 00C2D0"
%endif
emit_func_0040ced0_part_00

; raw 00C30D..00C310 (explicit-data)
%if ($ - $$) != 0x00C30D
    %error "layout drift at raw 00C30D"
%endif
emit_file_data_0049_00c30d

; raw 00C310..00C375 (function)
%if ($ - $$) != 0x00C310
    %error "layout drift at raw 00C310"
%endif
emit_func_0040cf10_part_00

; raw 00C375..00C380 (explicit-data)
%if ($ - $$) != 0x00C375
    %error "layout drift at raw 00C375"
%endif
emit_file_data_0050_00c375

; raw 00C380..00C3B7 (function)
%if ($ - $$) != 0x00C380
    %error "layout drift at raw 00C380"
%endif
emit_func_0040cf80_part_00

; raw 00C3B7..00C3C0 (explicit-data)
%if ($ - $$) != 0x00C3B7
    %error "layout drift at raw 00C3B7"
%endif
emit_file_data_0051_00c3b7

; raw 00C3C0..00C506 (function)
%if ($ - $$) != 0x00C3C0
    %error "layout drift at raw 00C3C0"
%endif
emit_func_0040cfc0_part_00

; raw 00C506..00C510 (explicit-data)
%if ($ - $$) != 0x00C506
    %error "layout drift at raw 00C506"
%endif
emit_file_data_0052_00c506

; raw 00C510..00C547 (function)
%if ($ - $$) != 0x00C510
    %error "layout drift at raw 00C510"
%endif
emit_func_0040d110_part_00

; raw 00C547..00C550 (explicit-data)
%if ($ - $$) != 0x00C547
    %error "layout drift at raw 00C547"
%endif
emit_file_data_0053_00c547

; raw 00C550..00C565 (function)
%if ($ - $$) != 0x00C550
    %error "layout drift at raw 00C550"
%endif
emit_func_0040d150_part_00

; raw 00C565..00C570 (explicit-data)
%if ($ - $$) != 0x00C565
    %error "layout drift at raw 00C565"
%endif
emit_file_data_0054_00c565

; raw 00C570..00C5A7 (function)
%if ($ - $$) != 0x00C570
    %error "layout drift at raw 00C570"
%endif
emit_func_0040d170_part_00

; raw 00C5A7..00C5B0 (explicit-data)
%if ($ - $$) != 0x00C5A7
    %error "layout drift at raw 00C5A7"
%endif
emit_file_data_0055_00c5a7

; raw 00C5B0..00C6EC (function)
%if ($ - $$) != 0x00C5B0
    %error "layout drift at raw 00C5B0"
%endif
emit_func_0040d1b0_part_00

; raw 00C6EC..00C6F0 (explicit-data)
%if ($ - $$) != 0x00C6EC
    %error "layout drift at raw 00C6EC"
%endif
emit_file_data_0056_00c6ec

; raw 00C6F0..00C7C0 (function)
%if ($ - $$) != 0x00C6F0
    %error "layout drift at raw 00C6F0"
%endif
emit_func_0040d2f0_part_00

; raw 00C7C0..00C864 (function)
%if ($ - $$) != 0x00C7C0
    %error "layout drift at raw 00C7C0"
%endif
emit_func_0040d3c0_part_00

; raw 00C864..00C870 (explicit-data)
%if ($ - $$) != 0x00C864
    %error "layout drift at raw 00C864"
%endif
emit_file_data_0057_00c864

; raw 00C870..00C8C8 (function)
%if ($ - $$) != 0x00C870
    %error "layout drift at raw 00C870"
%endif
emit_func_0040d470_part_00

; raw 00C8C8..00C8D0 (explicit-data)
%if ($ - $$) != 0x00C8C8
    %error "layout drift at raw 00C8C8"
%endif
emit_file_data_0058_00c8c8

; raw 00C8D0..00C94B (function)
%if ($ - $$) != 0x00C8D0
    %error "layout drift at raw 00C8D0"
%endif
emit_func_0040d4d0_part_00

; raw 00C94B..00C950 (explicit-data)
%if ($ - $$) != 0x00C94B
    %error "layout drift at raw 00C94B"
%endif
emit_file_data_0059_00c94b

; raw 00C950..00C9B8 (function)
%if ($ - $$) != 0x00C950
    %error "layout drift at raw 00C950"
%endif
emit_func_0040d550_part_00

; raw 00C9B8..00C9C0 (explicit-data)
%if ($ - $$) != 0x00C9B8
    %error "layout drift at raw 00C9B8"
%endif
emit_file_data_0060_00c9b8

; raw 00C9C0..00C9F0 (function)
%if ($ - $$) != 0x00C9C0
    %error "layout drift at raw 00C9C0"
%endif
emit_func_0040d5c0_part_00

; raw 00C9F0..00CA02 (function)
%if ($ - $$) != 0x00C9F0
    %error "layout drift at raw 00C9F0"
%endif
emit_func_0040d5f0_part_00

; raw 00CA02..00CA10 (explicit-data)
%if ($ - $$) != 0x00CA02
    %error "layout drift at raw 00CA02"
%endif
emit_file_data_0061_00ca02

; raw 00CA10..00CA22 (function)
%if ($ - $$) != 0x00CA10
    %error "layout drift at raw 00CA10"
%endif
emit_func_0040d610_part_00

; raw 00CA22..00CA50 (explicit-data)
%if ($ - $$) != 0x00CA22
    %error "layout drift at raw 00CA22"
%endif
emit_file_data_0062_00ca22

; raw 00CA50..00CAFE (function)
%if ($ - $$) != 0x00CA50
    %error "layout drift at raw 00CA50"
%endif
emit_func_0040d650_part_00

; raw 00CAFE..00CB10 (explicit-data)
%if ($ - $$) != 0x00CAFE
    %error "layout drift at raw 00CAFE"
%endif
emit_file_data_0063_00cafe

; raw 00CB10..00CB1B (function)
%if ($ - $$) != 0x00CB10
    %error "layout drift at raw 00CB10"
%endif
emit_func_0040d710_part_00

; raw 00CB1B..00CB20 (explicit-data)
%if ($ - $$) != 0x00CB1B
    %error "layout drift at raw 00CB1B"
%endif
emit_file_data_0064_00cb1b

; raw 00CB20..00CB2B (function)
%if ($ - $$) != 0x00CB20
    %error "layout drift at raw 00CB20"
%endif
emit_func_0040d720_part_00

; raw 00CB2B..00CB30 (explicit-data)
%if ($ - $$) != 0x00CB2B
    %error "layout drift at raw 00CB2B"
%endif
emit_file_data_0065_00cb2b

; raw 00CB30..00CB50 (function)
%if ($ - $$) != 0x00CB30
    %error "layout drift at raw 00CB30"
%endif
emit_func_0040d730_part_00

; raw 00CB50..00CB7D (function)
%if ($ - $$) != 0x00CB50
    %error "layout drift at raw 00CB50"
%endif
emit_func_0040d750_part_00

; raw 00CB7D..00CB80 (explicit-data)
%if ($ - $$) != 0x00CB7D
    %error "layout drift at raw 00CB7D"
%endif
emit_file_data_0066_00cb7d

; raw 00CB80..00CB8E (function)
%if ($ - $$) != 0x00CB80
    %error "layout drift at raw 00CB80"
%endif
emit_func_0040d780_part_00

; raw 00CB8E..00CB90 (explicit-data)
%if ($ - $$) != 0x00CB8E
    %error "layout drift at raw 00CB8E"
%endif
emit_file_data_0067_00cb8e

; raw 00CB90..00CBAA (function)
%if ($ - $$) != 0x00CB90
    %error "layout drift at raw 00CB90"
%endif
emit_func_0040d790_part_00

; raw 00CBAA..00CBB0 (explicit-data)
%if ($ - $$) != 0x00CBAA
    %error "layout drift at raw 00CBAA"
%endif
emit_file_data_0068_00cbaa

; raw 00CBB0..00CBB7 (function)
%if ($ - $$) != 0x00CBB0
    %error "layout drift at raw 00CBB0"
%endif
emit_func_0040d7b0_part_00

; raw 00CBB7..00CBC0 (explicit-data)
%if ($ - $$) != 0x00CBB7
    %error "layout drift at raw 00CBB7"
%endif
emit_file_data_0069_00cbb7

; raw 00CBC0..00CCA0 (function)
%if ($ - $$) != 0x00CBC0
    %error "layout drift at raw 00CBC0"
%endif
emit_func_0040d7c0_part_00

; raw 00CCA0..00CCE3 (function)
%if ($ - $$) != 0x00CCA0
    %error "layout drift at raw 00CCA0"
%endif
emit_strcmp_runtime_part_00

; raw 00CCE3..00CCE4 (explicit-data)
%if ($ - $$) != 0x00CCE3
    %error "layout drift at raw 00CCE3"
%endif
emit_file_data_0070_00cce3

; raw 00CCE4..00CCEA (function)
%if ($ - $$) != 0x00CCE4
    %error "layout drift at raw 00CCE4"
%endif
emit_strcmp_runtime_part_01

; raw 00CCEA..00CCEC (explicit-data)
%if ($ - $$) != 0x00CCEA
    %error "layout drift at raw 00CCEA"
%endif
emit_file_data_0071_00ccea

; raw 00CCEC..00CD24 (function)
%if ($ - $$) != 0x00CCEC
    %error "layout drift at raw 00CCEC"
%endif
emit_strcmp_runtime_part_02

; raw 00CD24..00CD30 (explicit-data)
%if ($ - $$) != 0x00CD24
    %error "layout drift at raw 00CD24"
%endif
emit_file_data_0072_00cd24

; raw 00CD30..00CD46 (function)
%if ($ - $$) != 0x00CD30
    %error "layout drift at raw 00CD30"
%endif
emit_func_0040d930_part_00

; raw 00CD46..00CD50 (explicit-data)
%if ($ - $$) != 0x00CD46
    %error "layout drift at raw 00CD46"
%endif
emit_file_data_0073_00cd46

; raw 00CD50..00CDE9 (function)
%if ($ - $$) != 0x00CD50
    %error "layout drift at raw 00CD50"
%endif
emit_func_0040d950_part_00

; raw 00CDE9..00CDF0 (explicit-data)
%if ($ - $$) != 0x00CDE9
    %error "layout drift at raw 00CDE9"
%endif
emit_file_data_0074_00cde9

; raw 00CDF0..00CE17 (function)
%if ($ - $$) != 0x00CDF0
    %error "layout drift at raw 00CDF0"
%endif
emit_func_0040d9f0_part_00

; raw 00CE17..00CE18 (explicit-data)
%if ($ - $$) != 0x00CE17
    %error "layout drift at raw 00CE17"
%endif
emit_file_data_0075_00ce17

; raw 00CE18..00CE38 (function)
%if ($ - $$) != 0x00CE18
    %error "layout drift at raw 00CE18"
%endif
emit_func_0040da18_part_00

; raw 00CE38..00CE5A (explicit-data)
%if ($ - $$) != 0x00CE38
    %error "layout drift at raw 00CE38"
%endif
emit_file_data_0076_00ce38

; raw 00CE5A..00CEC2 (function)
%if ($ - $$) != 0x00CE5A
    %error "layout drift at raw 00CE5A"
%endif
emit_func_0040da5a_part_00

; raw 00CEC2..00CEEE (explicit-data)
%if ($ - $$) != 0x00CEC2
    %error "layout drift at raw 00CEC2"
%endif
emit_file_data_0077_00cec2

; raw 00CEEE..00CF06 (function)
%if ($ - $$) != 0x00CEEE
    %error "layout drift at raw 00CEEE"
%endif
emit_func_0040daee_part_00

; raw 00CF06..00CFCD (explicit-data)
%if ($ - $$) != 0x00CF06
    %error "layout drift at raw 00CF06"
%endif
emit_file_data_0078_00cf06

; raw 00CFCD..00CFE8 (function)
%if ($ - $$) != 0x00CFCD
    %error "layout drift at raw 00CFCD"
%endif
emit_func_0040dbcd_part_00

; raw 00CFE8..00CFF0 (explicit-data)
%if ($ - $$) != 0x00CFE8
    %error "layout drift at raw 00CFE8"
%endif
emit_file_data_0079_00cfe8

; raw 00CFF0..00D14D (function)
%if ($ - $$) != 0x00CFF0
    %error "layout drift at raw 00CFF0"
%endif
emit_pe_entry_part_00

; raw 00D14D..00D16E (explicit-data)
%if ($ - $$) != 0x00D14D
    %error "layout drift at raw 00D14D"
%endif
emit_file_data_0080_00d14d

; raw 00D16E..00D198 (function)
%if ($ - $$) != 0x00D16E
    %error "layout drift at raw 00D16E"
%endif
emit_pe_entry_part_01

; raw 00D198..00D1A0 (explicit-data)
%if ($ - $$) != 0x00D198
    %error "layout drift at raw 00D198"
%endif
emit_file_data_0081_00d198

; raw 00D1A0..00D1C6 (function)
%if ($ - $$) != 0x00D1A0
    %error "layout drift at raw 00D1A0"
%endif
emit_func_0040dda0_part_00

; raw 00D1C6..00D1D0 (explicit-data)
%if ($ - $$) != 0x00D1C6
    %error "layout drift at raw 00D1C6"
%endif
emit_file_data_0082_00d1c6

; raw 00D1D0..00D207 (function)
%if ($ - $$) != 0x00D1D0
    %error "layout drift at raw 00D1D0"
%endif
emit_func_0040ddd0_part_00

; raw 00D207..00D250 (explicit-data)
%if ($ - $$) != 0x00D207
    %error "layout drift at raw 00D207"
%endif
emit_file_data_0083_00d207

; raw 00D250..00D27B (function)
%if ($ - $$) != 0x00D250
    %error "layout drift at raw 00D250"
%endif
emit_func_0040de50_part_00

; raw 00D27B..00D300 (explicit-data)
%if ($ - $$) != 0x00D27B
    %error "layout drift at raw 00D27B"
%endif
emit_file_data_0084_00d27b

; raw 00D300..00D376 (function)
%if ($ - $$) != 0x00D300
    %error "layout drift at raw 00D300"
%endif
emit_func_0040df00_part_00

; raw 00D376..00D380 (explicit-data)
%if ($ - $$) != 0x00D376
    %error "layout drift at raw 00D376"
%endif
emit_file_data_0085_00d376

; raw 00D380..00D396 (function)
%if ($ - $$) != 0x00D380
    %error "layout drift at raw 00D380"
%endif
emit_func_0040df80_part_00

; raw 00D396..00D3A0 (explicit-data)
%if ($ - $$) != 0x00D396
    %error "layout drift at raw 00D396"
%endif
emit_file_data_0086_00d396

; raw 00D3A0..00D3D6 (function)
%if ($ - $$) != 0x00D3A0
    %error "layout drift at raw 00D3A0"
%endif
emit_func_0040dfa0_part_00

; raw 00D3D6..00D3E0 (explicit-data)
%if ($ - $$) != 0x00D3D6
    %error "layout drift at raw 00D3D6"
%endif
emit_file_data_0087_00d3d6

; raw 00D3E0..00D408 (function)
%if ($ - $$) != 0x00D3E0
    %error "layout drift at raw 00D3E0"
%endif
emit_func_0040dfe0_part_00

; raw 00D408..00D410 (explicit-data)
%if ($ - $$) != 0x00D408
    %error "layout drift at raw 00D408"
%endif
emit_file_data_0088_00d408

; raw 00D410..00D446 (function)
%if ($ - $$) != 0x00D410
    %error "layout drift at raw 00D410"
%endif
emit_func_0040e010_part_00

; raw 00D446..00D450 (explicit-data)
%if ($ - $$) != 0x00D446
    %error "layout drift at raw 00D446"
%endif
emit_file_data_0089_00d446

; raw 00D450..00D478 (function)
%if ($ - $$) != 0x00D450
    %error "layout drift at raw 00D450"
%endif
emit_func_0040e050_part_00

; raw 00D478..00D4D0 (explicit-data)
%if ($ - $$) != 0x00D478
    %error "layout drift at raw 00D478"
%endif
emit_file_data_0090_00d478

; raw 00D4D0..00D632 (function)
%if ($ - $$) != 0x00D4D0
    %error "layout drift at raw 00D4D0"
%endif
emit_func_0040e0d0_part_00

; raw 00D632..00D640 (explicit-data)
%if ($ - $$) != 0x00D632
    %error "layout drift at raw 00D632"
%endif
emit_file_data_0091_00d632

; raw 00D640..00D69B (function)
%if ($ - $$) != 0x00D640
    %error "layout drift at raw 00D640"
%endif
emit_func_0040e240_part_00

; raw 00D69B..00D6A0 (explicit-data)
%if ($ - $$) != 0x00D69B
    %error "layout drift at raw 00D69B"
%endif
emit_file_data_0092_00d69b

; raw 00D6A0..00D76D (function)
%if ($ - $$) != 0x00D6A0
    %error "layout drift at raw 00D6A0"
%endif
emit_func_0040e2a0_part_00

; raw 00D76D..00D770 (explicit-data)
%if ($ - $$) != 0x00D76D
    %error "layout drift at raw 00D76D"
%endif
emit_file_data_0093_00d76d

; raw 00D770..00D7C9 (function)
%if ($ - $$) != 0x00D770
    %error "layout drift at raw 00D770"
%endif
emit_func_0040e370_part_00

; raw 00D7C9..00D7D0 (explicit-data)
%if ($ - $$) != 0x00D7C9
    %error "layout drift at raw 00D7C9"
%endif
emit_file_data_0094_00d7c9

; raw 00D7D0..00D823 (function)
%if ($ - $$) != 0x00D7D0
    %error "layout drift at raw 00D7D0"
%endif
emit_func_0040e3d0_part_00

; raw 00D823..00D830 (explicit-data)
%if ($ - $$) != 0x00D823
    %error "layout drift at raw 00D823"
%endif
emit_file_data_0095_00d823

; raw 00D830..00DA63 (function)
%if ($ - $$) != 0x00D830
    %error "layout drift at raw 00D830"
%endif
emit_func_0040e430_part_00

; raw 00DA63..00DA70 (explicit-data)
%if ($ - $$) != 0x00DA63
    %error "layout drift at raw 00DA63"
%endif
emit_file_data_0096_00da63

; raw 00DA70..00DBE2 (function)
%if ($ - $$) != 0x00DA70
    %error "layout drift at raw 00DA70"
%endif
emit_func_0040e670_part_00

; raw 00DBE2..00DBF0 (explicit-data)
%if ($ - $$) != 0x00DBE2
    %error "layout drift at raw 00DBE2"
%endif
emit_file_data_0097_00dbe2

; raw 00DBF0..00DCB4 (function)
%if ($ - $$) != 0x00DBF0
    %error "layout drift at raw 00DBF0"
%endif
emit_func_0040e7f0_part_00

; raw 00DCB4..00DE90 (explicit-data)
%if ($ - $$) != 0x00DCB4
    %error "layout drift at raw 00DCB4"
%endif
emit_file_data_0098_00dcb4

; raw 00DE90..00DFC0 (function)
%if ($ - $$) != 0x00DE90
    %error "layout drift at raw 00DE90"
%endif
emit_func_0040ea90_part_00

; raw 00DFC0..00E83C (function)
%if ($ - $$) != 0x00DFC0
    %error "layout drift at raw 00DFC0"
%endif
emit_func_0040ebc0_part_00

; raw 00E83C..00E950 (explicit-data)
%if ($ - $$) != 0x00E83C
    %error "layout drift at raw 00E83C"
%endif
emit_file_data_0099_00e83c

; raw 00E950..00E992 (function)
%if ($ - $$) != 0x00E950
    %error "layout drift at raw 00E950"
%endif
emit_func_0040f550_part_00

; raw 00E992..00E9A0 (explicit-data)
%if ($ - $$) != 0x00E992
    %error "layout drift at raw 00E992"
%endif
emit_file_data_0100_00e992

; raw 00E9A0..00E9D9 (function)
%if ($ - $$) != 0x00E9A0
    %error "layout drift at raw 00E9A0"
%endif
emit_func_0040f5a0_part_00

; raw 00E9D9..00E9E0 (explicit-data)
%if ($ - $$) != 0x00E9D9
    %error "layout drift at raw 00E9D9"
%endif
emit_file_data_0101_00e9d9

; raw 00E9E0..00EA1D (function)
%if ($ - $$) != 0x00E9E0
    %error "layout drift at raw 00E9E0"
%endif
emit_func_0040f5e0_part_00

; raw 00EA1D..00EA20 (explicit-data)
%if ($ - $$) != 0x00EA1D
    %error "layout drift at raw 00EA1D"
%endif
emit_file_data_0102_00ea1d

; raw 00EA20..00EA31 (function)
%if ($ - $$) != 0x00EA20
    %error "layout drift at raw 00EA20"
%endif
emit_func_0040f620_part_00

; raw 00EA31..00EA40 (explicit-data)
%if ($ - $$) != 0x00EA31
    %error "layout drift at raw 00EA31"
%endif
emit_file_data_0103_00ea31

; raw 00EA40..00EA52 (function)
%if ($ - $$) != 0x00EA40
    %error "layout drift at raw 00EA40"
%endif
emit_func_0040f640_part_00

; raw 00EA52..00EA60 (explicit-data)
%if ($ - $$) != 0x00EA52
    %error "layout drift at raw 00EA52"
%endif
emit_file_data_0104_00ea52

; raw 00EA60..00EA72 (function)
%if ($ - $$) != 0x00EA60
    %error "layout drift at raw 00EA60"
%endif
emit_func_0040f660_part_00

; raw 00EA72..00EAC0 (explicit-data)
%if ($ - $$) != 0x00EA72
    %error "layout drift at raw 00EA72"
%endif
emit_file_data_0105_00ea72

; raw 00EAC0..00EAE0 (function)
%if ($ - $$) != 0x00EAC0
    %error "layout drift at raw 00EAC0"
%endif
emit_func_0040f6c0_part_00

; raw 00EAE0..00EB48 (function)
%if ($ - $$) != 0x00EAE0
    %error "layout drift at raw 00EAE0"
%endif
emit_func_0040f6e0_part_00

; raw 00EB48..00EB50 (explicit-data)
%if ($ - $$) != 0x00EB48
    %error "layout drift at raw 00EB48"
%endif
emit_file_data_0106_00eb48

; raw 00EB50..00EBE0 (function)
%if ($ - $$) != 0x00EB50
    %error "layout drift at raw 00EB50"
%endif
emit_func_0040f750_part_00

; raw 00EBE0..00EC13 (function)
%if ($ - $$) != 0x00EBE0
    %error "layout drift at raw 00EBE0"
%endif
emit_func_0040f7e0_part_00

; raw 00EC13..00ECA0 (explicit-data)
%if ($ - $$) != 0x00EC13
    %error "layout drift at raw 00EC13"
%endif
emit_file_data_0107_00ec13

; raw 00ECA0..00ED0E (function)
%if ($ - $$) != 0x00ECA0
    %error "layout drift at raw 00ECA0"
%endif
emit_func_0040f8a0_part_00

; raw 00ED0E..00EDE0 (explicit-data)
%if ($ - $$) != 0x00ED0E
    %error "layout drift at raw 00ED0E"
%endif
emit_file_data_0108_00ed0e

; raw 00EDE0..00EE52 (function)
%if ($ - $$) != 0x00EDE0
    %error "layout drift at raw 00EDE0"
%endif
emit_func_0040f9e0_part_00

; raw 00EE52..00EE60 (explicit-data)
%if ($ - $$) != 0x00EE52
    %error "layout drift at raw 00EE52"
%endif
emit_file_data_0109_00ee52

; raw 00EE60..00F069 (function)
%if ($ - $$) != 0x00EE60
    %error "layout drift at raw 00EE60"
%endif
emit_func_0040fa60_part_00

; raw 00F069..00F070 (explicit-data)
%if ($ - $$) != 0x00F069
    %error "layout drift at raw 00F069"
%endif
emit_file_data_0110_00f069

; raw 00F070..00F1CB (function)
%if ($ - $$) != 0x00F070
    %error "layout drift at raw 00F070"
%endif
emit_func_0040fc70_part_00

; raw 00F1CB..00F240 (explicit-data)
%if ($ - $$) != 0x00F1CB
    %error "layout drift at raw 00F1CB"
%endif
emit_file_data_0111_00f1cb

; raw 00F240..00F319 (function)
%if ($ - $$) != 0x00F240
    %error "layout drift at raw 00F240"
%endif
emit_func_0040fe40_part_00

; raw 00F319..00F320 (explicit-data)
%if ($ - $$) != 0x00F319
    %error "layout drift at raw 00F319"
%endif
emit_file_data_0112_00f319

; raw 00F320..00F40F (function)
%if ($ - $$) != 0x00F320
    %error "layout drift at raw 00F320"
%endif
emit_func_0040ff20_part_00

; raw 00F40F..00F410 (explicit-data)
%if ($ - $$) != 0x00F40F
    %error "layout drift at raw 00F40F"
%endif
emit_file_data_0113_00f40f

; raw 00F410..00F482 (function)
%if ($ - $$) != 0x00F410
    %error "layout drift at raw 00F410"
%endif
emit_func_00410010_part_00

; raw 00F482..00F490 (explicit-data)
%if ($ - $$) != 0x00F482
    %error "layout drift at raw 00F482"
%endif
emit_file_data_0114_00f482

; raw 00F490..00F6B5 (function)
%if ($ - $$) != 0x00F490
    %error "layout drift at raw 00F490"
%endif
emit_func_00410090_part_00

; raw 00F6B5..010090 (explicit-data)
%if ($ - $$) != 0x00F6B5
    %error "layout drift at raw 00F6B5"
%endif
emit_file_data_0115_00f6b5

; raw 010090..01018C (function)
%if ($ - $$) != 0x010090
    %error "layout drift at raw 010090"
%endif
emit_func_00410c90_part_00

; raw 01018C..010190 (explicit-data)
%if ($ - $$) != 0x01018C
    %error "layout drift at raw 01018C"
%endif
emit_file_data_0116_01018c

; raw 010190..010203 (function)
%if ($ - $$) != 0x010190
    %error "layout drift at raw 010190"
%endif
emit_func_00410d90_part_00

; raw 010203..010210 (explicit-data)
%if ($ - $$) != 0x010203
    %error "layout drift at raw 010203"
%endif
emit_file_data_0117_010203

; raw 010210..010219 (function)
%if ($ - $$) != 0x010210
    %error "layout drift at raw 010210"
%endif
emit_func_00410e10_part_00

; raw 010219..010220 (explicit-data)
%if ($ - $$) != 0x010219
    %error "layout drift at raw 010219"
%endif
emit_file_data_0118_010219

; raw 010220..010229 (function)
%if ($ - $$) != 0x010220
    %error "layout drift at raw 010220"
%endif
emit_func_00410e20_part_00

; raw 010229..010230 (explicit-data)
%if ($ - $$) != 0x010229
    %error "layout drift at raw 010229"
%endif
emit_file_data_0119_010229

; raw 010230..010398 (function)
%if ($ - $$) != 0x010230
    %error "layout drift at raw 010230"
%endif
emit_func_00410e30_part_00

; raw 010398..0103A0 (explicit-data)
%if ($ - $$) != 0x010398
    %error "layout drift at raw 010398"
%endif
emit_file_data_0120_010398

; raw 0103A0..010441 (function)
%if ($ - $$) != 0x0103A0
    %error "layout drift at raw 0103A0"
%endif
emit_func_00410fa0_part_00

; raw 010441..010450 (explicit-data)
%if ($ - $$) != 0x010441
    %error "layout drift at raw 010441"
%endif
emit_file_data_0121_010441

; raw 010450..0104E3 (function)
%if ($ - $$) != 0x010450
    %error "layout drift at raw 010450"
%endif
emit_func_00411050_part_00

; raw 0104E3..0104F0 (explicit-data)
%if ($ - $$) != 0x0104E3
    %error "layout drift at raw 0104E3"
%endif
emit_file_data_0122_0104e3

; raw 0104F0..010539 (function)
%if ($ - $$) != 0x0104F0
    %error "layout drift at raw 0104F0"
%endif
emit_func_004110f0_part_00

; raw 010539..0105F0 (explicit-data)
%if ($ - $$) != 0x010539
    %error "layout drift at raw 010539"
%endif
emit_file_data_0123_010539

; raw 0105F0..010655 (function)
%if ($ - $$) != 0x0105F0
    %error "layout drift at raw 0105F0"
%endif
emit_func_004111f0_part_00

; raw 010655..010660 (explicit-data)
%if ($ - $$) != 0x010655
    %error "layout drift at raw 010655"
%endif
emit_file_data_0124_010655

; raw 010660..010682 (function)
%if ($ - $$) != 0x010660
    %error "layout drift at raw 010660"
%endif
emit_func_00411260_part_00

; raw 010682..010690 (explicit-data)
%if ($ - $$) != 0x010682
    %error "layout drift at raw 010682"
%endif
emit_file_data_0125_010682

; raw 010690..010702 (function)
%if ($ - $$) != 0x010690
    %error "layout drift at raw 010690"
%endif
emit_func_00411290_part_00

; raw 010702..010710 (explicit-data)
%if ($ - $$) != 0x010702
    %error "layout drift at raw 010702"
%endif
emit_file_data_0126_010702

; raw 010710..010790 (function)
%if ($ - $$) != 0x010710
    %error "layout drift at raw 010710"
%endif
emit_func_00411310_part_00

; raw 010790..01099C (function)
%if ($ - $$) != 0x010790
    %error "layout drift at raw 010790"
%endif
emit_func_00411390_part_00

; raw 01099C..010A00 (explicit-data)
%if ($ - $$) != 0x01099C
    %error "layout drift at raw 01099C"
%endif
emit_file_data_0127_01099c

; raw 010A00..010BF5 (function)
%if ($ - $$) != 0x010A00
    %error "layout drift at raw 010A00"
%endif
emit_func_00411600_part_00

; raw 010BF5..010C00 (explicit-data)
%if ($ - $$) != 0x010BF5
    %error "layout drift at raw 010BF5"
%endif
emit_file_data_0128_010bf5

; raw 010C00..010C63 (function)
%if ($ - $$) != 0x010C00
    %error "layout drift at raw 010C00"
%endif
emit_func_00411800_part_00

; raw 010C63..010C70 (explicit-data)
%if ($ - $$) != 0x010C63
    %error "layout drift at raw 010C63"
%endif
emit_file_data_0129_010c63

; raw 010C70..010CFE (function)
%if ($ - $$) != 0x010C70
    %error "layout drift at raw 010C70"
%endif
emit_func_00411870_part_00

; raw 010CFE..011050 (explicit-data)
%if ($ - $$) != 0x010CFE
    %error "layout drift at raw 010CFE"
%endif
emit_file_data_0130_010cfe

; raw 011050..011062 (function)
%if ($ - $$) != 0x011050
    %error "layout drift at raw 011050"
%endif
emit_func_00411c50_part_00

; raw 011062..0110C0 (explicit-data)
%if ($ - $$) != 0x011062
    %error "layout drift at raw 011062"
%endif
emit_file_data_0131_011062

; raw 0110C0..0110FA (function)
%if ($ - $$) != 0x0110C0
    %error "layout drift at raw 0110C0"
%endif
emit_func_00411cc0_part_00

; raw 0110FA..011100 (explicit-data)
%if ($ - $$) != 0x0110FA
    %error "layout drift at raw 0110FA"
%endif
emit_file_data_0132_0110fa

; raw 011100..0111EE (function)
%if ($ - $$) != 0x011100
    %error "layout drift at raw 011100"
%endif
emit_func_00411d00_part_00

; raw 0111EE..0111F0 (explicit-data)
%if ($ - $$) != 0x0111EE
    %error "layout drift at raw 0111EE"
%endif
emit_file_data_0133_0111ee

; raw 0111F0..01128E (function)
%if ($ - $$) != 0x0111F0
    %error "layout drift at raw 0111F0"
%endif
emit_func_00411df0_part_00

; raw 01128E..011290 (explicit-data)
%if ($ - $$) != 0x01128E
    %error "layout drift at raw 01128E"
%endif
emit_file_data_0134_01128e

; raw 011290..01149F (function)
%if ($ - $$) != 0x011290
    %error "layout drift at raw 011290"
%endif
emit_func_00411e90_part_00

; raw 01149F..0116A0 (explicit-data)
%if ($ - $$) != 0x01149F
    %error "layout drift at raw 01149F"
%endif
emit_file_data_0135_01149f

; raw 0116A0..0117F6 (function)
%if ($ - $$) != 0x0116A0
    %error "layout drift at raw 0116A0"
%endif
emit_func_004122a0_part_00

; raw 0117F6..011800 (explicit-data)
%if ($ - $$) != 0x0117F6
    %error "layout drift at raw 0117F6"
%endif
emit_file_data_0136_0117f6

; raw 011800..011A1B (function)
%if ($ - $$) != 0x011800
    %error "layout drift at raw 011800"
%endif
emit_func_00412400_part_00

; raw 011A1B..011A20 (explicit-data)
%if ($ - $$) != 0x011A1B
    %error "layout drift at raw 011A1B"
%endif
emit_file_data_0137_011a1b

; raw 011A20..011A6D (function)
%if ($ - $$) != 0x011A20
    %error "layout drift at raw 011A20"
%endif
emit_func_00412620_part_00

; raw 011A6D..011A70 (explicit-data)
%if ($ - $$) != 0x011A6D
    %error "layout drift at raw 011A6D"
%endif
emit_file_data_0138_011a6d

; raw 011A70..011AA8 (function)
%if ($ - $$) != 0x011A70
    %error "layout drift at raw 011A70"
%endif
emit_func_00412670_part_00

; raw 011AA8..011AD0 (explicit-data)
%if ($ - $$) != 0x011AA8
    %error "layout drift at raw 011AA8"
%endif
emit_file_data_0139_011aa8

; raw 011AD0..011AFD (function)
%if ($ - $$) != 0x011AD0
    %error "layout drift at raw 011AD0"
%endif
emit_func_004126d0_part_00

; raw 011AFD..011B10 (explicit-data)
%if ($ - $$) != 0x011AFD
    %error "layout drift at raw 011AFD"
%endif
emit_file_data_0140_011afd

; raw 011B10..011B1B (function)
%if ($ - $$) != 0x011B10
    %error "layout drift at raw 011B10"
%endif
emit_func_00412710_part_00

; raw 011B1B..011B20 (explicit-data)
%if ($ - $$) != 0x011B1B
    %error "layout drift at raw 011B1B"
%endif
emit_file_data_0141_011b1b

; raw 011B20..011B7C (function)
%if ($ - $$) != 0x011B20
    %error "layout drift at raw 011B20"
%endif
emit_func_00412720_part_00

; raw 011B7C..011BB0 (explicit-data)
%if ($ - $$) != 0x011B7C
    %error "layout drift at raw 011B7C"
%endif
emit_file_data_0142_011b7c

; raw 011BB0..011BC3 (function)
%if ($ - $$) != 0x011BB0
    %error "layout drift at raw 011BB0"
%endif
emit_func_004127b0_part_00

; raw 011BC3..011BD0 (explicit-data)
%if ($ - $$) != 0x011BC3
    %error "layout drift at raw 011BC3"
%endif
emit_file_data_0143_011bc3

; raw 011BD0..011C4A (function)
%if ($ - $$) != 0x011BD0
    %error "layout drift at raw 011BD0"
%endif
emit_func_004127d0_part_00

; raw 011C4A..011D10 (explicit-data)
%if ($ - $$) != 0x011C4A
    %error "layout drift at raw 011C4A"
%endif
emit_file_data_0144_011c4a

; raw 011D10..011D4D (function)
%if ($ - $$) != 0x011D10
    %error "layout drift at raw 011D10"
%endif
emit_func_00412910_part_00

; raw 011D4D..011D50 (explicit-data)
%if ($ - $$) != 0x011D4D
    %error "layout drift at raw 011D4D"
%endif
emit_file_data_0145_011d4d

; raw 011D50..011F26 (function)
%if ($ - $$) != 0x011D50
    %error "layout drift at raw 011D50"
%endif
emit_func_00412950_part_00

; raw 011F26..012040 (explicit-data)
%if ($ - $$) != 0x011F26
    %error "layout drift at raw 011F26"
%endif
emit_file_data_0146_011f26

; raw 012040..01209D (function)
%if ($ - $$) != 0x012040
    %error "layout drift at raw 012040"
%endif
emit_func_00412c40_part_00

; raw 01209D..0120A0 (explicit-data)
%if ($ - $$) != 0x01209D
    %error "layout drift at raw 01209D"
%endif
emit_file_data_0147_01209d

; raw 0120A0..0120CB (function)
%if ($ - $$) != 0x0120A0
    %error "layout drift at raw 0120A0"
%endif
emit_func_00412ca0_part_00

; raw 0120CB..0120D0 (explicit-data)
%if ($ - $$) != 0x0120CB
    %error "layout drift at raw 0120CB"
%endif
emit_file_data_0148_0120cb

; raw 0120D0..01213C (function)
%if ($ - $$) != 0x0120D0
    %error "layout drift at raw 0120D0"
%endif
emit_func_00412cd0_part_00

; raw 01213C..012140 (explicit-data)
%if ($ - $$) != 0x01213C
    %error "layout drift at raw 01213C"
%endif
emit_file_data_0149_01213c

; raw 012140..0121B2 (function)
%if ($ - $$) != 0x012140
    %error "layout drift at raw 012140"
%endif
emit_func_00412d40_part_00

; raw 0121B2..0121C0 (explicit-data)
%if ($ - $$) != 0x0121B2
    %error "layout drift at raw 0121B2"
%endif
emit_file_data_0150_0121b2

; raw 0121C0..012228 (function)
%if ($ - $$) != 0x0121C0
    %error "layout drift at raw 0121C0"
%endif
emit_func_00412dc0_part_00

; raw 012228..012230 (explicit-data)
%if ($ - $$) != 0x012228
    %error "layout drift at raw 012228"
%endif
emit_file_data_0151_012228

; raw 012230..0122A5 (function)
%if ($ - $$) != 0x012230
    %error "layout drift at raw 012230"
%endif
emit_func_00412e30_part_00

; raw 0122A5..012370 (explicit-data)
%if ($ - $$) != 0x0122A5
    %error "layout drift at raw 0122A5"
%endif
emit_file_data_0152_0122a5

; raw 012370..0126C1 (function)
%if ($ - $$) != 0x012370
    %error "layout drift at raw 012370"
%endif
emit_func_00412f70_part_00

; raw 0126C1..0127C0 (explicit-data)
%if ($ - $$) != 0x0126C1
    %error "layout drift at raw 0126C1"
%endif
emit_file_data_0153_0126c1

; raw 0127C0..012B31 (function)
%if ($ - $$) != 0x0127C0
    %error "layout drift at raw 0127C0"
%endif
emit_func_004133c0_part_00

; raw 012B31..012B40 (explicit-data)
%if ($ - $$) != 0x012B31
    %error "layout drift at raw 012B31"
%endif
emit_file_data_0154_012b31

; raw 012B40..012D73 (function)
%if ($ - $$) != 0x012B40
    %error "layout drift at raw 012B40"
%endif
emit_func_00413740_part_00

; raw 012D73..012D80 (explicit-data)
%if ($ - $$) != 0x012D73
    %error "layout drift at raw 012D73"
%endif
emit_file_data_0155_012d73

; raw 012D80..012E76 (function)
%if ($ - $$) != 0x012D80
    %error "layout drift at raw 012D80"
%endif
emit_func_00413980_part_00

; raw 012E76..013080 (explicit-data)
%if ($ - $$) != 0x012E76
    %error "layout drift at raw 012E76"
%endif
emit_file_data_0156_012e76

; raw 013080..0130B3 (function)
%if ($ - $$) != 0x013080
    %error "layout drift at raw 013080"
%endif
emit_func_00413c80_part_00

; raw 0130B3..0131B0 (explicit-data)
%if ($ - $$) != 0x0130B3
    %error "layout drift at raw 0130B3"
%endif
emit_file_data_0157_0130b3

; raw 0131B0..0132FB (function)
%if ($ - $$) != 0x0131B0
    %error "layout drift at raw 0131B0"
%endif
emit_func_00413db0_part_00

; raw 0132FB..013300 (explicit-data)
%if ($ - $$) != 0x0132FB
    %error "layout drift at raw 0132FB"
%endif
emit_file_data_0158_0132fb

; raw 013300..013333 (function)
%if ($ - $$) != 0x013300
    %error "layout drift at raw 013300"
%endif
emit_func_00413f00_part_00

; raw 013333..013340 (explicit-data)
%if ($ - $$) != 0x013333
    %error "layout drift at raw 013333"
%endif
emit_file_data_0159_013333

; raw 013340..0133A6 (function)
%if ($ - $$) != 0x013340
    %error "layout drift at raw 013340"
%endif
emit_func_00413f40_part_00

; raw 0133A6..013680 (explicit-data)
%if ($ - $$) != 0x0133A6
    %error "layout drift at raw 0133A6"
%endif
emit_file_data_0160_0133a6

; raw 013680..01377E (function)
%if ($ - $$) != 0x013680
    %error "layout drift at raw 013680"
%endif
emit_func_00414280_part_00

; raw 01377E..013780 (explicit-data)
%if ($ - $$) != 0x01377E
    %error "layout drift at raw 01377E"
%endif
emit_file_data_0161_01377e

; raw 013780..0137BE (function)
%if ($ - $$) != 0x013780
    %error "layout drift at raw 013780"
%endif
emit_func_00414380_part_00

; raw 0137BE..0137C0 (explicit-data)
%if ($ - $$) != 0x0137BE
    %error "layout drift at raw 0137BE"
%endif
emit_file_data_0162_0137be

; raw 0137C0..0137FA (function)
%if ($ - $$) != 0x0137C0
    %error "layout drift at raw 0137C0"
%endif
emit_func_004143c0_part_00

; raw 0137FA..013D00 (explicit-data)
%if ($ - $$) != 0x0137FA
    %error "layout drift at raw 0137FA"
%endif
emit_file_data_0163_0137fa

; raw 013D00..013F07 (function)
%if ($ - $$) != 0x013D00
    %error "layout drift at raw 013D00"
%endif
emit_func_00414900_part_00

; raw 013F07..013F10 (explicit-data)
%if ($ - $$) != 0x013F07
    %error "layout drift at raw 013F07"
%endif
emit_file_data_0164_013f07

; raw 013F10..013F45 (function)
%if ($ - $$) != 0x013F10
    %error "layout drift at raw 013F10"
%endif
emit_func_00414b10_part_00

; raw 013F45..013F50 (explicit-data)
%if ($ - $$) != 0x013F45
    %error "layout drift at raw 013F45"
%endif
emit_file_data_0165_013f45

; raw 013F50..01416C (function)
%if ($ - $$) != 0x013F50
    %error "layout drift at raw 013F50"
%endif
emit_func_00414b50_part_00

; raw 01416C..014170 (explicit-data)
%if ($ - $$) != 0x01416C
    %error "layout drift at raw 01416C"
%endif
emit_file_data_0166_01416c

; raw 014170..01419F (function)
%if ($ - $$) != 0x014170
    %error "layout drift at raw 014170"
%endif
emit_func_00414d70_part_00

; raw 01419F..0141A0 (explicit-data)
%if ($ - $$) != 0x01419F
    %error "layout drift at raw 01419F"
%endif
emit_file_data_0167_01419f

; raw 0141A0..014233 (function)
%if ($ - $$) != 0x0141A0
    %error "layout drift at raw 0141A0"
%endif
emit_func_00414da0_part_00

; raw 014233..014240 (explicit-data)
%if ($ - $$) != 0x014233
    %error "layout drift at raw 014233"
%endif
emit_file_data_0168_014233

; raw 014240..01428B (function)
%if ($ - $$) != 0x014240
    %error "layout drift at raw 014240"
%endif
emit_func_00414e40_part_00

; raw 01428B..014290 (explicit-data)
%if ($ - $$) != 0x01428B
    %error "layout drift at raw 01428B"
%endif
emit_file_data_0169_01428b

; raw 014290..014352 (function)
%if ($ - $$) != 0x014290
    %error "layout drift at raw 014290"
%endif
emit_func_00414e90_part_00

; raw 014352..014360 (explicit-data)
%if ($ - $$) != 0x014352
    %error "layout drift at raw 014352"
%endif
emit_file_data_0170_014352

; raw 014360..0143F0 (function)
%if ($ - $$) != 0x014360
    %error "layout drift at raw 014360"
%endif
emit_func_00414f60_part_00

; raw 0143F0..0145AD (function)
%if ($ - $$) != 0x0143F0
    %error "layout drift at raw 0143F0"
%endif
emit_func_00414ff0_part_00

; raw 0145AD..0145C3 (explicit-data)
%if ($ - $$) != 0x0145AD
    %error "layout drift at raw 0145AD"
%endif
emit_file_data_0171_0145ad

; raw 0145C3..014661 (function)
%if ($ - $$) != 0x0145C3
    %error "layout drift at raw 0145C3"
%endif
emit_func_00414ff0_part_01

; raw 014661..014680 (explicit-data)
%if ($ - $$) != 0x014661
    %error "layout drift at raw 014661"
%endif
emit_file_data_0172_014661

; raw 014680..014927 (function)
%if ($ - $$) != 0x014680
    %error "layout drift at raw 014680"
%endif
emit_func_00415280_part_00

; raw 014927..014930 (explicit-data)
%if ($ - $$) != 0x014927
    %error "layout drift at raw 014927"
%endif
emit_file_data_0173_014927

; raw 014930..01494E (function)
%if ($ - $$) != 0x014930
    %error "layout drift at raw 014930"
%endif
emit_func_00415530_part_00

; raw 01494E..014950 (explicit-data)
%if ($ - $$) != 0x01494E
    %error "layout drift at raw 01494E"
%endif
emit_file_data_0174_01494e

; raw 014950..0149FB (function)
%if ($ - $$) != 0x014950
    %error "layout drift at raw 014950"
%endif
emit_func_00415550_part_00

; raw 0149FB..014A00 (explicit-data)
%if ($ - $$) != 0x0149FB
    %error "layout drift at raw 0149FB"
%endif
emit_file_data_0175_0149fb

; raw 014A00..014A8F (function)
%if ($ - $$) != 0x014A00
    %error "layout drift at raw 014A00"
%endif
emit_func_00415600_part_00

; raw 014A8F..014B30 (explicit-data)
%if ($ - $$) != 0x014A8F
    %error "layout drift at raw 014A8F"
%endif
emit_file_data_0176_014a8f

; raw 014B30..014B3B (function)
%if ($ - $$) != 0x014B30
    %error "layout drift at raw 014B30"
%endif
emit_func_00415730_part_00

; raw 014B3B..014BB0 (explicit-data)
%if ($ - $$) != 0x014B3B
    %error "layout drift at raw 014B3B"
%endif
emit_file_data_0177_014b3b

; raw 014BB0..014CFE (function)
%if ($ - $$) != 0x014BB0
    %error "layout drift at raw 014BB0"
%endif
emit_func_004157b0_part_00

; raw 014CFE..0153C0 (explicit-data)
%if ($ - $$) != 0x014CFE
    %error "layout drift at raw 014CFE"
%endif
emit_file_data_0178_014cfe

; raw 0153C0..0158A6 (function)
%if ($ - $$) != 0x0153C0
    %error "layout drift at raw 0153C0"
%endif
emit_func_00415fc0_part_00

; raw 0158A6..015960 (explicit-data)
%if ($ - $$) != 0x0158A6
    %error "layout drift at raw 0158A6"
%endif
emit_file_data_0179_0158a6

; raw 015960..01598D (function)
%if ($ - $$) != 0x015960
    %error "layout drift at raw 015960"
%endif
emit_func_00416560_part_00

; raw 01598D..015990 (explicit-data)
%if ($ - $$) != 0x01598D
    %error "layout drift at raw 01598D"
%endif
emit_file_data_0180_01598d

; raw 015990..015A23 (function)
%if ($ - $$) != 0x015990
    %error "layout drift at raw 015990"
%endif
emit_func_00416590_part_00

; raw 015A23..015A30 (explicit-data)
%if ($ - $$) != 0x015A23
    %error "layout drift at raw 015A23"
%endif
emit_file_data_0181_015a23

; raw 015A30..015A95 (function)
%if ($ - $$) != 0x015A30
    %error "layout drift at raw 015A30"
%endif
emit_func_00416630_part_00

; raw 015A95..015AA0 (explicit-data)
%if ($ - $$) != 0x015A95
    %error "layout drift at raw 015A95"
%endif
emit_file_data_0182_015a95

; raw 015AA0..015D4B (function)
%if ($ - $$) != 0x015AA0
    %error "layout drift at raw 015AA0"
%endif
emit_func_004166a0_part_00

; raw 015D4B..015DF0 (explicit-data)
%if ($ - $$) != 0x015D4B
    %error "layout drift at raw 015D4B"
%endif
emit_file_data_0183_015d4b

; raw 015DF0..015F9C (function)
%if ($ - $$) != 0x015DF0
    %error "layout drift at raw 015DF0"
%endif
emit_func_004169f0_part_00

; raw 015F9C..015FB0 (explicit-data)
%if ($ - $$) != 0x015F9C
    %error "layout drift at raw 015F9C"
%endif
emit_file_data_0184_015f9c

; raw 015FB0..016134 (function)
%if ($ - $$) != 0x015FB0
    %error "layout drift at raw 015FB0"
%endif
emit_func_00416bb0_part_00

; raw 016134..016140 (explicit-data)
%if ($ - $$) != 0x016134
    %error "layout drift at raw 016134"
%endif
emit_file_data_0185_016134

; raw 016140..01626D (function)
%if ($ - $$) != 0x016140
    %error "layout drift at raw 016140"
%endif
emit_func_00416d40_part_00

; raw 01626D..016490 (explicit-data)
%if ($ - $$) != 0x01626D
    %error "layout drift at raw 01626D"
%endif
emit_file_data_0186_01626d

; raw 016490..0165C0 (function)
%if ($ - $$) != 0x016490
    %error "layout drift at raw 016490"
%endif
emit_func_00417090_part_00

; raw 0165C0..0166FF (function)
%if ($ - $$) != 0x0165C0
    %error "layout drift at raw 0165C0"
%endif
emit_func_004171c0_part_00

; raw 0166FF..016720 (explicit-data)
%if ($ - $$) != 0x0166FF
    %error "layout drift at raw 0166FF"
%endif
emit_file_data_0187_0166ff

; raw 016720..016900 (function)
%if ($ - $$) != 0x016720
    %error "layout drift at raw 016720"
%endif
emit_func_00417320_part_00

; raw 016900..016920 (explicit-data)
%if ($ - $$) != 0x016900
    %error "layout drift at raw 016900"
%endif
emit_file_data_0188_016900

; raw 016920..0169B9 (function)
%if ($ - $$) != 0x016920
    %error "layout drift at raw 016920"
%endif
emit_func_00417520_part_00

; raw 0169B9..016AA0 (explicit-data)
%if ($ - $$) != 0x0169B9
    %error "layout drift at raw 0169B9"
%endif
emit_file_data_0189_0169b9

; raw 016AA0..016AA5 (function)
%if ($ - $$) != 0x016AA0
    %error "layout drift at raw 016AA0"
%endif
emit_func_004176b0_part_00

; raw 016AA5..016AB0 (explicit-data)
%if ($ - $$) != 0x016AA5
    %error "layout drift at raw 016AA5"
%endif
emit_file_data_0190_016aa5

; raw 016AB0..016B6C (function)
%if ($ - $$) != 0x016AB0
    %error "layout drift at raw 016AB0"
%endif
emit_func_004176b0_part_01

; raw 016B6C..016BE0 (explicit-data)
%if ($ - $$) != 0x016B6C
    %error "layout drift at raw 016B6C"
%endif
emit_file_data_0191_016b6c

; raw 016BE0..016C44 (function)
%if ($ - $$) != 0x016BE0
    %error "layout drift at raw 016BE0"
%endif
emit_func_004177e0_part_00

; raw 016C44..016C50 (explicit-data)
%if ($ - $$) != 0x016C44
    %error "layout drift at raw 016C44"
%endif
emit_file_data_0192_016c44

; raw 016C50..016C7F (function)
%if ($ - $$) != 0x016C50
    %error "layout drift at raw 016C50"
%endif
emit_func_00417850_part_00

; raw 016C7F..016C80 (explicit-data)
%if ($ - $$) != 0x016C7F
    %error "layout drift at raw 016C7F"
%endif
emit_file_data_0193_016c7f

; raw 016C80..016CB2 (function)
%if ($ - $$) != 0x016C80
    %error "layout drift at raw 016C80"
%endif
emit_func_00417880_part_00

; raw 016CB2..016CE0 (explicit-data)
%if ($ - $$) != 0x016CB2
    %error "layout drift at raw 016CB2"
%endif
emit_file_data_0194_016cb2

; raw 016CE0..016FB8 (function)
%if ($ - $$) != 0x016CE0
    %error "layout drift at raw 016CE0"
%endif
emit_func_004178e0_part_00

; raw 016FB8..017400 (explicit-data)
%if ($ - $$) != 0x016FB8
    %error "layout drift at raw 016FB8"
%endif
emit_file_data_0195_016fb8

; raw 017400..01745B (function)
%if ($ - $$) != 0x017400
    %error "layout drift at raw 017400"
%endif
emit_func_00418000_part_00

; raw 01745B..01745C (explicit-data)
%if ($ - $$) != 0x01745B
    %error "layout drift at raw 01745B"
%endif
emit_file_data_0196_01745b

; raw 01745C..017463 (function)
%if ($ - $$) != 0x01745C
    %error "layout drift at raw 01745C"
%endif
emit_func_00418000_part_01

; raw 017463..017470 (explicit-data)
%if ($ - $$) != 0x017463
    %error "layout drift at raw 017463"
%endif
emit_file_data_0197_017463

; raw 017470..017499 (function)
%if ($ - $$) != 0x017470
    %error "layout drift at raw 017470"
%endif
emit_func_00418000_part_02

; raw 017499..01749C (explicit-data)
%if ($ - $$) != 0x017499
    %error "layout drift at raw 017499"
%endif
emit_file_data_0198_017499

; raw 01749C..0174BF (function)
%if ($ - $$) != 0x01749C
    %error "layout drift at raw 01749C"
%endif
emit_func_00418000_part_03

; raw 0174BF..0174C0 (explicit-data)
%if ($ - $$) != 0x0174BF
    %error "layout drift at raw 0174BF"
%endif
emit_file_data_0199_0174bf

; raw 0174C0..0174D9 (function)
%if ($ - $$) != 0x0174C0
    %error "layout drift at raw 0174C0"
%endif
emit_func_00418000_part_04

; raw 0174D9..0174FC (explicit-data)
%if ($ - $$) != 0x0174D9
    %error "layout drift at raw 0174D9"
%endif
emit_file_data_0200_0174d9

; raw 0174FC..017546 (function)
%if ($ - $$) != 0x0174FC
    %error "layout drift at raw 0174FC"
%endif
emit_func_00418000_part_05

; raw 017546..017558 (explicit-data)
%if ($ - $$) != 0x017546
    %error "layout drift at raw 017546"
%endif
emit_file_data_0201_017546

; raw 017558..01755F (function)
%if ($ - $$) != 0x017558
    %error "layout drift at raw 017558"
%endif
emit_func_00418000_part_06

; raw 01755F..017560 (explicit-data)
%if ($ - $$) != 0x01755F
    %error "layout drift at raw 01755F"
%endif
emit_file_data_0202_01755f

; raw 017560..01756B (function)
%if ($ - $$) != 0x017560
    %error "layout drift at raw 017560"
%endif
emit_func_00418000_part_07

; raw 01756B..01756C (explicit-data)
%if ($ - $$) != 0x01756B
    %error "layout drift at raw 01756B"
%endif
emit_file_data_0203_01756b

; raw 01756C..01757D (function)
%if ($ - $$) != 0x01756C
    %error "layout drift at raw 01756C"
%endif
emit_func_00418000_part_08

; raw 01757D..017580 (explicit-data)
%if ($ - $$) != 0x01757D
    %error "layout drift at raw 01757D"
%endif
emit_file_data_0204_01757d

; raw 017580..017597 (function)
%if ($ - $$) != 0x017580
    %error "layout drift at raw 017580"
%endif
emit_func_00418000_part_09

; raw 017597..017598 (explicit-data)
%if ($ - $$) != 0x017597
    %error "layout drift at raw 017597"
%endif
emit_file_data_0205_017597

; raw 017598..0175BE (function)
%if ($ - $$) != 0x017598
    %error "layout drift at raw 017598"
%endif
emit_func_00418000_part_10

; raw 0175BE..0175C0 (explicit-data)
%if ($ - $$) != 0x0175BE
    %error "layout drift at raw 0175BE"
%endif
emit_file_data_0206_0175be

; raw 0175C0..0175C9 (function)
%if ($ - $$) != 0x0175C0
    %error "layout drift at raw 0175C0"
%endif
emit_func_00418000_part_11

; raw 0175C9..0175CC (explicit-data)
%if ($ - $$) != 0x0175C9
    %error "layout drift at raw 0175C9"
%endif
emit_file_data_0207_0175c9

; raw 0175CC..0175EB (function)
%if ($ - $$) != 0x0175CC
    %error "layout drift at raw 0175CC"
%endif
emit_func_00418000_part_12

; raw 0175EB..0175F8 (explicit-data)
%if ($ - $$) != 0x0175EB
    %error "layout drift at raw 0175EB"
%endif
emit_file_data_0208_0175eb

; raw 0175F8..017615 (function)
%if ($ - $$) != 0x0175F8
    %error "layout drift at raw 0175F8"
%endif
emit_func_00418000_part_13

; raw 017615..017618 (explicit-data)
%if ($ - $$) != 0x017615
    %error "layout drift at raw 017615"
%endif
emit_file_data_0209_017615

; raw 017618..01763F (function)
%if ($ - $$) != 0x017618
    %error "layout drift at raw 017618"
%endif
emit_func_00418000_part_14

; raw 01763F..017640 (explicit-data)
%if ($ - $$) != 0x01763F
    %error "layout drift at raw 01763F"
%endif
emit_file_data_0210_01763f

; raw 017640..017671 (function)
%if ($ - $$) != 0x017640
    %error "layout drift at raw 017640"
%endif
emit_func_00418000_part_15

; raw 017671..017694 (explicit-data)
%if ($ - $$) != 0x017671
    %error "layout drift at raw 017671"
%endif
emit_file_data_0211_017671

; raw 017694..0176DE (function)
%if ($ - $$) != 0x017694
    %error "layout drift at raw 017694"
%endif
emit_func_00418000_part_16

; raw 0176DE..0176F0 (explicit-data)
%if ($ - $$) != 0x0176DE
    %error "layout drift at raw 0176DE"
%endif
emit_file_data_0212_0176de

; raw 0176F0..0176F7 (function)
%if ($ - $$) != 0x0176F0
    %error "layout drift at raw 0176F0"
%endif
emit_func_00418000_part_17

; raw 0176F7..0176F8 (explicit-data)
%if ($ - $$) != 0x0176F7
    %error "layout drift at raw 0176F7"
%endif
emit_file_data_0213_0176f7

; raw 0176F8..017705 (function)
%if ($ - $$) != 0x0176F8
    %error "layout drift at raw 0176F8"
%endif
emit_func_00418000_part_18

; raw 017705..017708 (explicit-data)
%if ($ - $$) != 0x017705
    %error "layout drift at raw 017705"
%endif
emit_file_data_0214_017705

; raw 017708..01771B (function)
%if ($ - $$) != 0x017708
    %error "layout drift at raw 017708"
%endif
emit_func_00418000_part_19

; raw 01771B..01771C (explicit-data)
%if ($ - $$) != 0x01771B
    %error "layout drift at raw 01771B"
%endif
emit_file_data_0215_01771b

; raw 01771C..017735 (function)
%if ($ - $$) != 0x01771C
    %error "layout drift at raw 01771C"
%endif
emit_func_00418000_part_20

; raw 017735..017740 (explicit-data)
%if ($ - $$) != 0x017735
    %error "layout drift at raw 017735"
%endif
emit_file_data_0216_017735

; raw 017740..0177C8 (function)
%if ($ - $$) != 0x017740
    %error "layout drift at raw 017740"
%endif
emit_func_00418340_part_00

; raw 0177C8..0177D0 (explicit-data)
%if ($ - $$) != 0x0177C8
    %error "layout drift at raw 0177C8"
%endif
emit_file_data_0217_0177c8

; raw 0177D0..01784D (function)
%if ($ - $$) != 0x0177D0
    %error "layout drift at raw 0177D0"
%endif
emit_func_004183d0_part_00

; raw 01784D..017850 (explicit-data)
%if ($ - $$) != 0x01784D
    %error "layout drift at raw 01784D"
%endif
emit_file_data_0218_01784d

; raw 017850..0178B4 (function)
%if ($ - $$) != 0x017850
    %error "layout drift at raw 017850"
%endif
emit_func_00418450_part_00

; raw 0178B4..017920 (explicit-data)
%if ($ - $$) != 0x0178B4
    %error "layout drift at raw 0178B4"
%endif
emit_file_data_0219_0178b4

; raw 017920..017991 (function)
%if ($ - $$) != 0x017920
    %error "layout drift at raw 017920"
%endif
emit_func_00418520_part_00

; raw 017991..0179A0 (explicit-data)
%if ($ - $$) != 0x017991
    %error "layout drift at raw 017991"
%endif
emit_file_data_0220_017991

; raw 0179A0..017B8A (function)
%if ($ - $$) != 0x0179A0
    %error "layout drift at raw 0179A0"
%endif
emit_func_004185a0_part_00

; raw 017B8A..017B90 (explicit-data)
%if ($ - $$) != 0x017B8A
    %error "layout drift at raw 017B8A"
%endif
emit_file_data_0221_017b8a

; raw 017B90..017BC2 (function)
%if ($ - $$) != 0x017B90
    %error "layout drift at raw 017B90"
%endif
emit_func_00418790_part_00

; raw 017BC2..017C00 (explicit-data)
%if ($ - $$) != 0x017BC2
    %error "layout drift at raw 017BC2"
%endif
emit_file_data_0222_017bc2

; raw 017C00..017C8E (function)
%if ($ - $$) != 0x017C00
    %error "layout drift at raw 017C00"
%endif
emit_func_00418800_part_00

; raw 017C8E..017C90 (explicit-data)
%if ($ - $$) != 0x017C8E
    %error "layout drift at raw 017C8E"
%endif
emit_file_data_0223_017c8e

; raw 017C90..017CCB (function)
%if ($ - $$) != 0x017C90
    %error "layout drift at raw 017C90"
%endif
emit_func_00418890_part_00

; raw 017CCB..017CD0 (explicit-data)
%if ($ - $$) != 0x017CCB
    %error "layout drift at raw 017CCB"
%endif
emit_file_data_0224_017ccb

; raw 017CD0..017D4A (function)
%if ($ - $$) != 0x017CD0
    %error "layout drift at raw 017CD0"
%endif
emit_func_004188d0_part_00

; raw 017D4A..017FA0 (explicit-data)
%if ($ - $$) != 0x017D4A
    %error "layout drift at raw 017D4A"
%endif
emit_file_data_0225_017d4a

; raw 017FA0..018265 (function)
%if ($ - $$) != 0x017FA0
    %error "layout drift at raw 017FA0"
%endif
emit_func_00418ba0_part_00

; raw 018265..018270 (explicit-data)
%if ($ - $$) != 0x018265
    %error "layout drift at raw 018265"
%endif
emit_file_data_0226_018265

; raw 018270..01829F (function)
%if ($ - $$) != 0x018270
    %error "layout drift at raw 018270"
%endif
emit_func_00418e70_part_00

; raw 01829F..0182A0 (explicit-data)
%if ($ - $$) != 0x01829F
    %error "layout drift at raw 01829F"
%endif
emit_file_data_0227_01829f

; raw 0182A0..0184A3 (function)
%if ($ - $$) != 0x0182A0
    %error "layout drift at raw 0182A0"
%endif
emit_func_00418ea0_part_00

; raw 0184A3..0184B0 (explicit-data)
%if ($ - $$) != 0x0184A3
    %error "layout drift at raw 0184A3"
%endif
emit_file_data_0228_0184a3

; raw 0184B0..018524 (function)
%if ($ - $$) != 0x0184B0
    %error "layout drift at raw 0184B0"
%endif
emit_func_004190b0_part_00

; raw 018524..018530 (explicit-data)
%if ($ - $$) != 0x018524
    %error "layout drift at raw 018524"
%endif
emit_file_data_0229_018524

; raw 018530..01859F (function)
%if ($ - $$) != 0x018530
    %error "layout drift at raw 018530"
%endif
emit_func_00419130_part_00

; raw 01859F..0185A0 (explicit-data)
%if ($ - $$) != 0x01859F
    %error "layout drift at raw 01859F"
%endif
emit_file_data_0230_01859f

; raw 0185A0..018750 (function)
%if ($ - $$) != 0x0185A0
    %error "layout drift at raw 0185A0"
%endif
emit_func_004191a0_part_00

; raw 018750..0187A0 (function)
%if ($ - $$) != 0x018750
    %error "layout drift at raw 018750"
%endif
emit_func_00419350_part_00

; raw 0187A0..0188A2 (explicit-data)
%if ($ - $$) != 0x0187A0
    %error "layout drift at raw 0187A0"
%endif
emit_file_data_0231_0187a0

; raw 0188A2..0188A8 (function)
%if ($ - $$) != 0x0188A2
    %error "layout drift at raw 0188A2"
%endif
emit_func_004194a2_part_00

; raw 0188A8..0198A8 (explicit-data)
%if ($ - $$) != 0x0188A8
    %error "layout drift at raw 0188A8"
%endif
emit_file_data_0232_0188a8

; raw 0198A8..01A8A8 (explicit-data)
%if ($ - $$) != 0x0198A8
    %error "layout drift at raw 0198A8"
%endif
emit_file_data_0233_0198a8

; raw 01A8A8..01B8A8 (explicit-data)
%if ($ - $$) != 0x01A8A8
    %error "layout drift at raw 01A8A8"
%endif
emit_file_data_0234_01a8a8

; raw 01B8A8..01C8A8 (explicit-data)
%if ($ - $$) != 0x01B8A8
    %error "layout drift at raw 01B8A8"
%endif
emit_file_data_0235_01b8a8

; raw 01C8A8..01D8A8 (explicit-data)
%if ($ - $$) != 0x01C8A8
    %error "layout drift at raw 01C8A8"
%endif
emit_file_data_0236_01c8a8

; raw 01D8A8..01E8A8 (explicit-data)
%if ($ - $$) != 0x01D8A8
    %error "layout drift at raw 01D8A8"
%endif
emit_file_data_0237_01d8a8

; raw 01E8A8..01F8A8 (explicit-data)
%if ($ - $$) != 0x01E8A8
    %error "layout drift at raw 01E8A8"
%endif
emit_file_data_0238_01e8a8

; raw 01F8A8..0208A8 (explicit-data)
%if ($ - $$) != 0x01F8A8
    %error "layout drift at raw 01F8A8"
%endif
emit_file_data_0239_01f8a8

; raw 0208A8..0218A8 (explicit-data)
%if ($ - $$) != 0x0208A8
    %error "layout drift at raw 0208A8"
%endif
emit_file_data_0240_0208a8

; raw 0218A8..0228A8 (explicit-data)
%if ($ - $$) != 0x0218A8
    %error "layout drift at raw 0218A8"
%endif
emit_file_data_0241_0218a8

; raw 0228A8..023600 (explicit-data)
%if ($ - $$) != 0x0228A8
    %error "layout drift at raw 0228A8"
%endif
emit_file_data_0242_0228a8

%if ($ - $$) != 0x023600
    %error "final PE size drift"
%endif
