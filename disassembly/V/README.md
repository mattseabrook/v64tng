# DOS `V.EXE` 1.30 permanent disassembly

This is the canonical lossless NASM source project for the DOS GROOVIE Player
1.30. It represents every byte of the unpacked MZ executable in source and
rebuilds that executable byte-for-byte.

| Artifact | Size | SHA-256 |
|---|---:|---|
| Original LZEXE 0.91-packed `V.EXE` | 23,425 bytes | `e01c3a49cede63ad409e67ce10fdb9f98c6f42600cdfd67124b0d03f1c001585` |
| Canonical unpacked/rebuilt target | 102,136 bytes | `f2f7febb70b5008ee94e535b0224e918eeec4c71404c899c0d6b50f10c0816c4` |

Run:

```sh
./build.sh
```

The build assembles [`src/main.asm`](src/main.asm), rejects executable-byte
`incbin` directives, and verifies the canonical unpacked SHA-256. Only after
that check passes does it deploy the rebuilt executable as the repository-local
`../../T7G/V.EXE`. On the first deployment it preserves the packed retail
player as `../../T7G/V.EXE.BAK`. The build does not access `/mnt/T7G`.

Set `V_DISASSEMBLY_NO_DEPLOY=1` to perform the complete build and verification
without deploying.

NASM, ripgrep, and standard SHA-256 utilities are the only build requirements.
The project does not need Python, Ghidra, an unpacker, the packed original, or
any reverse-engineering tool.

## What “complete” means today

The project has complete mechanical source coverage:

- all 512 MZ header bytes, including all 102 relocation records, are explicit
  NASM source;
- all 101,624 bytes in the DOS load image are explicit source;
- 283 known function entries are represented individually (261 analyzer entries
  and 22 recovered indirect/interrupt/callback entries);
- all 12,936 current owned instruction representations are decoded, including
  separately recovered interrupts/callbacks and corrected overlapping IRET sequences;
- data, padding, tables, inline constants, and unowned gaps remain explicit
  `db` data rather than disappearing into a binary include;
- there are zero `incbin` directives.

This is not yet complete semantic recovery. Ghidra's 261 function boundaries
are analyzer findings, not original object-module boundaries. Some bytes now
classified as data may prove to be code, and some functions may later be
split, joined, or grouped. All 283 known entries now have verified
descriptive roles: **283/283 (100.0% entry-role coverage)**, including 22
indirect/interrupt/callback entries recovered beyond the analyzer inventory.

This closes the tracked function-entry role inventory, not every semantic
question about the program. Some roles describe verified command transport;
the external driver implementations, all unowned code/data boundaries, exact
original symbols, and full gameplay behavior are not thereby recovered.

Exact coverage and the complete function address map are maintained later in
this README. This file is the public, monolithic research record for the DOS
reconstruction.

## Addresses, opcodes, and function identity

A filename such as the former
`002c0_read_and_validate_vdx_header.asm` contained two different kinds of
information:

- `002C0` is the function's zero-based linear entry offset in the unpacked DOS
  load image;
- `read_and_validate_vdx_header` is the verified semantic working name.

The address is not an opcode. At linear offset `002C0`, for example, the x86
instruction bytes begin with `83 BE 16 F3 02`. GRV opcodes such as `17h`,
`20h`, or `33h` are data bytes interpreted by `run_grv_vm`, not native
function addresses.

The assembler does not derive placement from filenames. Exact placement comes
from the emission order embedded in `src/main.asm`, emission macros, labels,
instruction-size guards, and padding. Verified function files can therefore
use semantic filenames without changing a byte. Their original addresses
remain in source preambles and in the function address map below. Unidentified
functions retain address-bearing filenames because the entry offset is still
their only trustworthy identity.

Repository symbols use a zero-based offset into the MZ load image. For DOS
load segment `L`, a runtime `CS:IP` maps to:

```text
repository_offset = ((CS - L) * 16) + IP
```

The startup data segment is at load-image offset `08930h`. A near data offset
therefore maps to `08930h + DS_offset`. The Miles/DIGPAK code segment begins
at `07020h`; its CS-relative pointers use that base. These are address spaces,
not interchangeable file offsets. The MZ header adds 512 bytes to load-image
positions in the canonical unpacked executable.

## Source organization

| Directory | Ownership |
|---|---|
| `src/functions/grv` | Interpreter and opcode handlers |
| `src/functions/vdx` | Video, palette, compression and stream helpers |
| `src/functions/audio` | BIOS/Miles/DIGPAK/VOC routines |
| `src/functions/platform` | Hardware probes, bank switching, DOS/XMS helpers |
| `src/functions/cursor` | Cursor selection, animation and background handling |
| `src/functions/resource_io` | Archives, resource references and file operations |
| `src/functions/savegame` | Native save/load and captions |
| `src/functions/puzzle` | Microscope board, moves, scoring and search |
| `src/functions/runtime` | Startup, configuration and shutdown |
| `src/data/puzzle`, `src/data/vdx`, `src/data/audio` | Named subsystem tables/state |
| `src/data/cursor`, `src/data/grv`, `src/data/savegame` | Pointer tables, hotspot records and captions |
| `src/data/platform`, `src/data/runtime` | XMS pointer, strings and remaining static workspace |
| `src/data/layout` | Alignment and unowned code-span fragments |
| `src/data/unresolved` | Mixed data whose field ownership remains partial |

Subsystem directories express recovered behavior, not original object modules.
The emission order in `src/main.asm` controls placement. Original bugs and
noncanonical encodings remain intact; behavior-changing mods belong separately.

## Current coverage

| Measure | Count |
|---|---:|
| Known function entries with identified descriptive roles | **283 / 283 (100%)** |
| Historical analyzer seed entries | 261 |
| Recovered entries included in the current denominator | 22 |
| Unpacked load-image bytes represented explicitly | 101,624 / 101,624 |
| Owned function bytes | 33,169 |
| Decoded owned instruction representations | 12,936 |
| Exact instruction encoding fallback records | 1,657 |
| Bytes in instruction encoding fallbacks | 3,563 |
| Non-function load-image bytes | 68,455 |
| Remaining code-span gap fragments | 112 |
| Bytes still emitted as unowned code-span gaps | 727 |
| `incbin` directives | 0 |

Entry-role coverage is an inventory measure, not complete semantic ownership
or gameplay proof. New supported function entries increase the denominator.
A `db` instruction fallback retains its decoded mnemonic and original opcode
bytes where NASM would choose another encoding. Some non-function bytes now
have precise data roles; others remain explicitly unresolved.

## Function address map

Entries and owned ranges below are load-image offsets. Discontinuous ranges
retain their exact instruction ownership. `Recovered` indicates a supported
entry beyond the historical analyzer seed, not an original symbol.

| Entry | Role | Provenance | Owned ranges | Source |
|---:|---|---|---|---|
| `00000` | `entry` | Analyzer seed | `00000–0007B`<br>`0007E–00088` | [src/functions/runtime/entry.asm](src/functions/runtime/entry.asm) |
| `00089` | `initialize_vdx_stream_buffers` | Analyzer seed | `00089–000D0` | [src/functions/vdx/initialize_vdx_stream_buffers.asm](src/functions/vdx/initialize_vdx_stream_buffers.asm) |
| `000D1` | `standalone_vdx_or_diagnostics` | Analyzer seed | `000D1–001E0` | [src/functions/runtime/standalone_vdx_or_diagnostics.asm](src/functions/runtime/standalone_vdx_or_diagnostics.asm) |
| `001E1` | `open_vdx_file_or_borrow_archive_handle` | Analyzer seed | `001E1–00209` | [src/functions/resource_io/open_vdx_file_or_borrow_archive_handle.asm](src/functions/resource_io/open_vdx_file_or_borrow_archive_handle.asm) |
| `0020A` | `close_vdx_file_unless_archive_borrowed` | Analyzer seed | `0020A–0021A` | [src/functions/resource_io/close_vdx_file_unless_archive_borrowed.asm](src/functions/resource_io/close_vdx_file_unless_archive_borrowed.asm) |
| `0021B` | `read_vdx_stream_bytes` | Analyzer seed | `0021B–002BF` | [src/functions/vdx/read_vdx_stream_bytes.asm](src/functions/vdx/read_vdx_stream_bytes.asm) |
| `002C0` | `read_and_validate_vdx_header` | Analyzer seed | `002C0–0030D` | [src/functions/vdx/read_and_validate_vdx_header.asm](src/functions/vdx/read_and_validate_vdx_header.asm) |
| `0030E` | `decode_vdx_stream` | Analyzer seed | `0030E–00382`<br>`00385–0038D`<br>`00390–0039B`<br>`0039E–0040C` | [src/functions/vdx/decode_vdx_stream.asm](src/functions/vdx/decode_vdx_stream.asm) |
| `0040D` | `apply_vdx_delta_palette` | Analyzer seed | `0040D–00475` | [src/functions/vdx/apply_vdx_delta_palette.asm](src/functions/vdx/apply_vdx_delta_palette.asm) |
| `00476` | `load_vdx_still_palette` | Analyzer seed | `00476–00500` | [src/functions/vdx/load_vdx_still_palette.asm](src/functions/vdx/load_vdx_still_palette.asm) |
| `00501` | `upload_vdx_palette_or_black` | Analyzer seed | `00501–00586` | [src/functions/vdx/upload_vdx_palette_or_black.asm](src/functions/vdx/upload_vdx_palette_or_black.asm) |
| `00587` | `decode_vdx_bitmap_still` | Analyzer seed | `00587–005E6`<br>`005E9–00C49`<br>`00C4C–00F32` | [src/functions/vdx/decode_vdx_bitmap_still.asm](src/functions/vdx/decode_vdx_bitmap_still.asm) |
| `00F33` | `fade_in_vdx_palette_rgb` | Analyzer seed | `00F33–00FC5` | [src/functions/vdx/fade_in_vdx_palette_rgb.asm](src/functions/vdx/fade_in_vdx_palette_rgb.asm) |
| `00FC6` | `fade_out_vdx_palette_rgb_and_clear` | Analyzer seed | `00FC6–01059` | [src/functions/vdx/fade_out_vdx_palette_rgb_and_clear.asm](src/functions/vdx/fade_out_vdx_palette_rgb_and_clear.asm) |
| `0105A` | `decode_vdx_delta_frame` | Analyzer seed | `0105A–01216`<br>`01218–01234`<br>`01236–0127C`<br>`0127E–012BC`<br>`012C1–01396`<br>`01398–0168E`<br>`01691–0169A`<br>`0169C–01ED2`<br>`01ED5–01FE6`<br>`01FE8–0205C`<br>`0205E–0207A`<br>`0207C–0210A`<br>`0210C–02174`<br>`02178–02180`<br>`02182–02218`<br>`02260–02288`<br>`0228A–022A6`<br>`022A8–022E0`<br>`022E2–02303`<br>`02306–0230E` | [src/functions/vdx/decode_vdx_delta_frame.asm](src/functions/vdx/decode_vdx_delta_frame.asm) |
| `0230F` | `decompress_cursor_lzss_12bit` | Analyzer seed | `0230F–02369` | [src/functions/cursor/decompress_cursor_lzss_12bit.asm](src/functions/cursor/decompress_cursor_lzss_12bit.asm) |
| `0236A` | `decompress_vdx_lzss` | Analyzer seed | `0236A–023A4` | [src/functions/vdx/decompress_vdx_lzss.asm](src/functions/vdx/decompress_vdx_lzss.asm) |
| `023A5` | `copy_background_rectangle_to_foreground` | Analyzer seed | `023A5–02590` | [src/functions/vdx/copy_background_rectangle_to_foreground.asm](src/functions/vdx/copy_background_rectangle_to_foreground.asm) |
| `02591` | `snapshot_display_to_xms_background` | Analyzer seed | `02591–026E4` | [src/functions/vdx/snapshot_display_to_xms_background.asm](src/functions/vdx/snapshot_display_to_xms_background.asm) |
| `026E5` | `merge_32_color_palette_into_unused_entries` | Analyzer seed | `026E5–0276C` | [src/functions/vdx/merge_32_color_palette_into_unused_entries.asm](src/functions/vdx/merge_32_color_palette_into_unused_entries.asm) |
| `0276D` | `mark_used_background_palette_entries` | Analyzer seed | `0276D–02821` | [src/functions/vdx/mark_used_background_palette_entries.asm](src/functions/vdx/mark_used_background_palette_entries.asm) |
| `02822` | `restore_saved_vga_palette_at_retrace` | Analyzer seed | `02822–0285C` | [src/functions/vdx/restore_saved_vga_palette_at_retrace.asm](src/functions/vdx/restore_saved_vga_palette_at_retrace.asm) |
| `0285D` | `clear_indexed_display_memory` | Analyzer seed | `0285D–02895` | [src/functions/platform/clear_indexed_display_memory.asm](src/functions/platform/clear_indexed_display_memory.asm) |
| `02896` | `pump_pending_pcm_buffers` | Analyzer seed | `02896–028AC` | [src/functions/audio/pump_pending_pcm_buffers.asm](src/functions/audio/pump_pending_pcm_buffers.asm) |
| `028AD` | `drain_pcm_stream_with_timeout` | Analyzer seed | `028AD–028D8`<br>`028DB–0292E`<br>`02931–0293A` | [src/functions/audio/drain_pcm_stream_with_timeout.asm](src/functions/audio/drain_pcm_stream_with_timeout.asm) |
| `0293B` | `wait_for_miles_pcm_buffers_complete` | Analyzer seed | `0293B–02992`<br>`02995–02996` | [src/functions/audio/wait_for_miles_pcm_buffers_complete.asm](src/functions/audio/wait_for_miles_pcm_buffers_complete.asm) |
| `02997` | `stream_media_buffer` | Analyzer seed | `02997–02BE7` | [src/functions/vdx/stream_media_buffer.asm](src/functions/vdx/stream_media_buffer.asm) |
| `02BF0` | `bios_pcm_completion_interrupt` | Recovered | `02BF0–02C29`<br>`02C2C–02C30` | [src/functions/audio/bios_pcm_completion_interrupt.asm](src/functions/audio/bios_pcm_completion_interrupt.asm) |
| `02C32` | `probe_cpu_and_x87_capabilities` | Analyzer seed | `02C32–02CBF`<br>`02CE9–02CF4`<br>`02D09–02D4E` | [src/functions/runtime/probe_cpu_and_x87_capabilities.asm](src/functions/runtime/probe_cpu_and_x87_capabilities.asm) |
| `02D50` | `dispatch_video_bank_switch` | Analyzer seed | `02D50–02D58` | [src/functions/platform/dispatch_video_bank_switch.asm](src/functions/platform/dispatch_video_bank_switch.asm) |
| `02D5A` | `synchronize_video_bank_state` | Analyzer seed | `02D5A–02D79` | [src/functions/platform/synchronize_video_bank_state.asm](src/functions/platform/synchronize_video_bank_state.asm) |
| `02D7A` | `write_video_bank_port_3cd_packed_3bit` | Recovered | `02D7A–02D8D` | [src/functions/platform/write_video_bank_port_3cd_packed_3bit.asm](src/functions/platform/write_video_bank_port_3cd_packed_3bit.asm) |
| `02D8E` | `unlock_video_and_write_bank_port_3cd_4bit` | Recovered | `02D8E–02DAC` | [src/functions/platform/unlock_video_and_write_bank_port_3cd_4bit.asm](src/functions/platform/unlock_video_and_write_bank_port_3cd_4bit.asm) |
| `02DAE` | `select_video_bank_sequencer_0e_xor_02` | Recovered | `02DAE–02DDC` | [src/functions/platform/select_video_bank_sequencer_0e_xor_02.asm](src/functions/platform/select_video_bank_sequencer_0e_xor_02.asm) |
| `02DDE` | `select_video_bank_sequencer_f9_f6_misc` | Recovered | `02DDE–02E23` | [src/functions/platform/select_video_bank_sequencer_f9_f6_misc.asm](src/functions/platform/select_video_bank_sequencer_f9_f6_misc.asm) |
| `02E24` | `select_video_bank_graphics_09` | Recovered | `02E24–02E3A` | [src/functions/platform/select_video_bank_graphics_09.asm](src/functions/platform/select_video_bank_graphics_09.asm) |
| `02E3C` | `select_video_bank_port_3d6_register_10` | Recovered | `02E3C–02E63` | [src/functions/platform/select_video_bank_port_3d6_register_10.asm](src/functions/platform/select_video_bank_port_3d6_register_10.asm) |
| `02E64` | `select_video_bank_port_1ce_register_b2` | Recovered | `02E64–02E7E` | [src/functions/platform/select_video_bank_port_1ce_register_b2.asm](src/functions/platform/select_video_bank_port_1ce_register_b2.asm) |
| `02E80` | `select_video_bank_sequencer_08_misc` | Recovered | `02E80–02EAC` | [src/functions/platform/select_video_bank_sequencer_08_misc.asm](src/functions/platform/select_video_bank_sequencer_08_misc.asm) |
| `02EAE` | `select_video_bank_graphics_00_misc` | Recovered | `02EAE–02EDC` | [src/functions/platform/select_video_bank_graphics_00_misc.asm](src/functions/platform/select_video_bank_graphics_00_misc.asm) |
| `02EDE` | `select_video_bank_graphics_0d` | Recovered | `02EDE–02EF8` | [src/functions/platform/select_video_bank_graphics_0d.asm](src/functions/platform/select_video_bank_graphics_0d.asm) |
| `02EFA` | `select_video_bank_port_3de_register_11` | Recovered | `02EFA–02F0D` | [src/functions/platform/select_video_bank_port_3de_register_11.asm](src/functions/platform/select_video_bank_port_3de_register_11.asm) |
| `02F0E` | `select_video_bank_sequencer_06` | Recovered | `02F0E–02F22` | [src/functions/platform/select_video_bank_sequencer_06.asm](src/functions/platform/select_video_bank_sequencer_06.asm) |
| `02F24` | `select_video_bank_sequencer_18_19` | Recovered | `02F24–02F37` | [src/functions/platform/select_video_bank_sequencer_18_19.asm](src/functions/platform/select_video_bank_sequencer_18_19.asm) |
| `02F38` | `select_video_bank_graphics_45` | Recovered | `02F38–02F4E` | [src/functions/platform/select_video_bank_graphics_45.asm](src/functions/platform/select_video_bank_graphics_45.asm) |
| `02F50` | `call_scaled_video_bank_window_zero` | Recovered | `02F50–02F68` | [src/functions/platform/call_scaled_video_bank_window_zero.asm](src/functions/platform/call_scaled_video_bank_window_zero.asm) |
| `02F6A` | `call_scaled_video_bank_handler` | Analyzer seed | `02F6A–02F82` | [src/functions/platform/call_scaled_video_bank_handler.asm](src/functions/platform/call_scaled_video_bank_handler.asm) |
| `02F83` | `ignore_video_bank_switch` | Recovered | `02F83–02F83` | [src/functions/platform/ignore_video_bank_switch.asm](src/functions/platform/ignore_video_bank_switch.asm) |
| `02F84` | `detect_video_hardware` | Analyzer seed | `02F84–033B6` | [src/functions/platform/detect_video_hardware.asm](src/functions/platform/detect_video_hardware.asm) |
| `033B7` | `probe_sequencer_register_six_bank_handler` | Analyzer seed | `033B7–033FE` | [src/functions/platform/probe_sequencer_register_six_bank_handler.asm](src/functions/platform/probe_sequencer_register_six_bank_handler.asm) |
| `033FF` | `probe_video_memory_bank_separation` | Analyzer seed | `033FF–03419` | [src/functions/platform/probe_video_memory_bank_separation.asm](src/functions/platform/probe_video_memory_bank_separation.asm) |
| `0341A` | `test_video_bank_pattern_pair` | Analyzer seed | `0341A–03452` | [src/functions/platform/test_video_bank_pattern_pair.asm](src/functions/platform/test_video_bank_pattern_pair.asm) |
| `03453` | `probe_write_video_bank_graphics_09` | Recovered | `03453–0345D` | [src/functions/platform/probe_write_video_bank_graphics_09.asm](src/functions/platform/probe_write_video_bank_graphics_09.asm) |
| `0345E` | `probe_indexed_register_writable_bits` | Analyzer seed | `0345E–0348B` | [src/functions/platform/probe_indexed_register_writable_bits.asm](src/functions/platform/probe_indexed_register_writable_bits.asm) |
| `0348C` | `probe_direct_register_writable_bits` | Analyzer seed | `0348C–034A4` | [src/functions/platform/probe_direct_register_writable_bits.asm](src/functions/platform/probe_direct_register_writable_bits.asm) |
| `034A5` | `set_detected_graphics_mode` | Analyzer seed | `034A5–03589` | [src/functions/platform/set_detected_graphics_mode.asm](src/functions/platform/set_detected_graphics_mode.asm) |
| `0358A` | `restore_bios_text_mode` | Analyzer seed | `0358A–0358F` | [src/functions/platform/restore_bios_text_mode.asm](src/functions/platform/restore_bios_text_mode.asm) |
| `03590` | `print_hardware_and_memory_diagnostics` | Analyzer seed | `03590–03670` | [src/functions/runtime/print_hardware_and_memory_diagnostics.asm](src/functions/runtime/print_hardware_and_memory_diagnostics.asm) |
| `03671` | `detect_and_reset_mouse_driver` | Analyzer seed | `03671–03687` | [src/functions/platform/detect_and_reset_mouse_driver.asm](src/functions/platform/detect_and_reset_mouse_driver.asm) |
| `0368C` | `query_xms` | Analyzer seed | `0368C–036D1` | [src/functions/platform/query_xms.asm](src/functions/platform/query_xms.asm) |
| `036D2` | `format_memory_diagnostic` | Analyzer seed | `036D2–03755` | [src/functions/platform/format_memory_diagnostic.asm](src/functions/platform/format_memory_diagnostic.asm) |
| `03756` | `open_named_archive_file` | Analyzer seed | `03756–03769` | [src/functions/resource_io/open_named_archive_file.asm](src/functions/resource_io/open_named_archive_file.asm) |
| `0376A` | `close_song_archive` | Analyzer seed | `0376A–03773` | [src/functions/resource_io/close_song_archive.asm](src/functions/resource_io/close_song_archive.asm) |
| `03774` | `close_video_archive` | Analyzer seed | `03774–0377D` | [src/functions/resource_io/close_video_archive.asm](src/functions/resource_io/close_video_archive.asm) |
| `0377E` | `close_video_and_song_archives` | Analyzer seed | `0377E–03784` | [src/functions/resource_io/close_video_and_song_archives.asm](src/functions/resource_io/close_video_and_song_archives.asm) |
| `0378F` | `resolve_named_resource_reference` | Analyzer seed | `0378F–0382C` | [src/functions/resource_io/resolve_named_resource_reference.asm](src/functions/resource_io/resolve_named_resource_reference.asm) |
| `0382D` | `save_selected_archive_context` | Analyzer seed | `0382D–03837` | [src/functions/resource_io/save_selected_archive_context.asm](src/functions/resource_io/save_selected_archive_context.asm) |
| `03838` | `restore_selected_archive_context` | Analyzer seed | `03838–03889` | [src/functions/resource_io/restore_selected_archive_context.asm](src/functions/resource_io/restore_selected_archive_context.asm) |
| `0388A` | `select_grv_video_resource` | Analyzer seed | `0388A–03936` | [src/functions/resource_io/select_grv_video_resource.asm](src/functions/resource_io/select_grv_video_resource.asm) |
| `03941` | `select_grv_song_resource` | Analyzer seed | `03941–039ED` | [src/functions/resource_io/select_grv_song_resource.asm](src/functions/resource_io/select_grv_song_resource.asm) |
| `039EE` | `read_selected_archive` | Analyzer seed | `039EE–039F7` | [src/functions/resource_io/read_selected_archive.asm](src/functions/resource_io/read_selected_archive.asm) |
| `039F8` | `build_resource_filename` | Analyzer seed | `039F8–03A30` | [src/functions/resource_io/build_resource_filename.asm](src/functions/resource_io/build_resource_filename.asm) |
| `03A31` | `open_resource_read_only` | Analyzer seed | `03A31–03A46` | [src/functions/resource_io/open_resource_read_only.asm](src/functions/resource_io/open_resource_read_only.asm) |
| `03A47` | `close_resource_file` | Analyzer seed | `03A47–03A50` | [src/functions/resource_io/close_resource_file.asm](src/functions/resource_io/close_resource_file.asm) |
| `03A51` | `read_open_resource_file` | Analyzer seed | `03A51–03A5A` | [src/functions/resource_io/read_open_resource_file.asm](src/functions/resource_io/read_open_resource_file.asm) |
| `03A5B` | `load_selected_resource_file` | Analyzer seed | `03A5B–03A95` | [src/functions/resource_io/load_selected_resource_file.asm](src/functions/resource_io/load_selected_resource_file.asm) |
| `03AC4` | `run_grv_vm` | Analyzer seed | `03AC4–03B12`<br>`03B16–03CBE`<br>`03CC2–03E43` | [src/functions/grv/run_grv_vm.asm](src/functions/grv/run_grv_vm.asm) |
| `03E44` | `probe_game_disc_archive_availability` | Analyzer seed | `03E44–03E84` | [src/functions/resource_io/probe_game_disc_archive_availability.asm](src/functions/resource_io/probe_game_disc_archive_availability.asm) |
| `03E85` | `grv_load_child_script` | Analyzer seed | `03E85–03EB7` | [src/functions/grv/grv_load_child_script.asm](src/functions/grv/grv_load_child_script.asm) |
| `03EB8` | `grv_return_from_child_script` | Analyzer seed | `03EB8–03EE9` | [src/functions/grv/grv_return_from_child_script.asm](src/functions/grv/grv_return_from_child_script.asm) |
| `03EEA` | `grv_check_valid_saves` | Analyzer seed | `03EEA–03F22` | [src/functions/savegame/grv_check_valid_saves.asm](src/functions/savegame/grv_check_valid_saves.asm) |
| `03F23` | `grv_save_game` | Analyzer seed | `03F23–03F76` | [src/functions/savegame/grv_save_game.asm](src/functions/savegame/grv_save_game.asm) |
| `03F77` | `write_aborted_game_snapshot_to_save_z` | Analyzer seed | `03F77–03FC3` | [src/functions/savegame/write_aborted_game_snapshot_to_save_z.asm](src/functions/savegame/write_aborted_game_snapshot_to_save_z.asm) |
| `03FC4` | `grv_load_game` | Analyzer seed | `03FC4–04000` | [src/functions/savegame/grv_load_game.asm](src/functions/savegame/grv_load_game.asm) |
| `04001` | `grv_jump_absolute` | Analyzer seed | `04001–04003` | [src/functions/grv/grv_jump_absolute.asm](src/functions/grv/grv_jump_absolute.asm) |
| `04004` | `grv_store_word_operand_d9fd` | Analyzer seed | `04004–04009` | [src/functions/grv/grv_store_word_operand_d9fd.asm](src/functions/grv/grv_store_word_operand_d9fd.asm) |
| `0400A` | `grv_read_variable_operand` | Analyzer seed | `0400A–04015` | [src/functions/grv/grv_read_variable_operand.asm](src/functions/grv/grv_read_variable_operand.asm) |
| `04016` | `grv_decode_sequence_element` | Analyzer seed | `04016–04086` | [src/functions/grv/grv_decode_sequence_element.asm](src/functions/grv/grv_decode_sequence_element.asm) |
| `04087` | `grv_load_sequence` | Analyzer seed | `04087–0409A` | [src/functions/grv/grv_load_sequence.asm](src/functions/grv/grv_load_sequence.asm) |
| `0409B` | `grv_swap_variables` | Analyzer seed | `0409B–040B1` | [src/functions/grv/grv_swap_variables.asm](src/functions/grv/grv_swap_variables.asm) |
| `040B2` | `grv_move_variable` | Analyzer seed | `040B2–040C6` | [src/functions/grv/grv_move_variable.asm](src/functions/grv/grv_move_variable.asm) |
| `040C7` | `grv_add_variable` | Analyzer seed | `040C7–040DE` | [src/functions/grv/grv_add_variable.asm](src/functions/grv/grv_add_variable.asm) |
| `040DF` | `grv_subtract_variable` | Analyzer seed | `040DF–040F6` | [src/functions/grv/grv_subtract_variable.asm](src/functions/grv/grv_subtract_variable.asm) |
| `040F7` | `grv_increment_variable` | Analyzer seed | `040F7–04102` | [src/functions/grv/grv_increment_variable.asm](src/functions/grv/grv_increment_variable.asm) |
| `04103` | `grv_decrement_variable` | Analyzer seed | `04103–0410E` | [src/functions/grv/grv_decrement_variable.asm](src/functions/grv/grv_decrement_variable.asm) |
| `0410F` | `grv_grid_swap` | Analyzer seed | `0410F–041A3` | [src/functions/grv/grv_grid_swap.asm](src/functions/grv/grv_grid_swap.asm) |
| `041A4` | `grv_random` | Analyzer seed | `041A4–041CA` | [src/functions/grv/grv_random.asm](src/functions/grv/grv_random.asm) |
| `041CB` | `grv_reduce_variable_above_divisor` | Analyzer seed | `041CB–041DE` | [src/functions/grv/grv_reduce_variable_above_divisor.asm](src/functions/grv/grv_reduce_variable_above_divisor.asm) |
| `041DF` | `grv_xor_obfuscate_variables` | Analyzer seed | `041DF–041F7` | [src/functions/grv/grv_xor_obfuscate_variables.asm](src/functions/grv/grv_xor_obfuscate_variables.asm) |
| `041F8` | `grv_branch_sequence_not_equal` | Analyzer seed | `041F8–0421D` | [src/functions/grv/grv_branch_sequence_not_equal.asm](src/functions/grv/grv_branch_sequence_not_equal.asm) |
| `0421E` | `grv_branch_sequence_any_greater` | Analyzer seed | `0421E–04243` | [src/functions/grv/grv_branch_sequence_any_greater.asm](src/functions/grv/grv_branch_sequence_any_greater.asm) |
| `04244` | `grv_char_less_jump` | Analyzer seed | `04244–04269` | [src/functions/grv/grv_char_less_jump.asm](src/functions/grv/grv_char_less_jump.asm) |
| `0426A` | `grv_jump_if_indirect_not_equal` | Analyzer seed | `0426A–04291` | [src/functions/grv/grv_jump_if_indirect_not_equal.asm](src/functions/grv/grv_jump_if_indirect_not_equal.asm) |
| `04292` | `grv_load_string_indirect` | Analyzer seed | `04292–042B0` | [src/functions/grv/grv_load_string_indirect.asm](src/functions/grv/grv_load_string_indirect.asm) |
| `042B1` | `grv_compare_indirect_and_jump` | Analyzer seed | `042B1–042CA` | [src/functions/grv/grv_compare_indirect_and_jump.asm](src/functions/grv/grv_compare_indirect_and_jump.asm) |
| `042CB` | `grv_branch_sequence_equal` | Analyzer seed | `042CB–042F0` | [src/functions/grv/grv_branch_sequence_equal.asm](src/functions/grv/grv_branch_sequence_equal.asm) |
| `042F1` | `advance_grv_random_state` | Analyzer seed | `042F1–04326` | [src/functions/grv/advance_grv_random_state.asm](src/functions/grv/advance_grv_random_state.asm) |
| `04327` | `advance_grv_random_state_far` | Analyzer seed | `04327–0432A` | [src/functions/grv/advance_grv_random_state_far.asm](src/functions/grv/advance_grv_random_state_far.asm) |
| `0432B` | `grv_play_transition_video_ref` | Analyzer seed | `0432B–04374` | [src/functions/grv/grv_play_transition_video_ref.asm](src/functions/grv/grv_play_transition_video_ref.asm) |
| `04375` | `play_named_vdx_resource` | Analyzer seed | `04375–043C8` | [src/functions/vdx/play_named_vdx_resource.asm](src/functions/vdx/play_named_vdx_resource.asm) |
| `043C9` | `grv_set_reserved_flag_d9ce` | Analyzer seed | `043C9–043D1` | [src/functions/grv/grv_set_reserved_flag_d9ce.asm](src/functions/grv/grv_set_reserved_flag_d9ce.asm) |
| `043D2` | `grv_play_video_name` | Analyzer seed | `043D2–04405` | [src/functions/grv/grv_play_video_name.asm](src/functions/grv/grv_play_video_name.asm) |
| `04406` | `grv_play_video_reference` | Analyzer seed | `04406–04439` | [src/functions/grv/grv_play_video_reference.asm](src/functions/grv/grv_play_video_reference.asm) |
| `0443A` | `grv_play_song_reference` | Analyzer seed | `0443A–04449` | [src/functions/grv/grv_play_song_reference.asm](src/functions/grv/grv_play_song_reference.asm) |
| `0444A` | `grv_set_background_song` | Analyzer seed | `0444A–04450` | [src/functions/grv/grv_set_background_song.asm](src/functions/grv/grv_set_background_song.asm) |
| `04451` | `grv_sleep` | Analyzer seed | `04451–04460` | [src/functions/grv/grv_sleep.asm](src/functions/grv/grv_sleep.asm) |
| `04461` | `grv_call_absolute` | Analyzer seed | `04461–0447A` | [src/functions/grv/grv_call_absolute.asm](src/functions/grv/grv_call_absolute.asm) |
| `0447B` | `run_grv_input_loop` | Analyzer seed | `0447B–046F4` | [src/functions/grv/run_grv_input_loop.asm](src/functions/grv/run_grv_input_loop.asm) |
| `046F5` | `replay_grv_background_song` | Analyzer seed | `046F5–0470F` | [src/functions/grv/replay_grv_background_song.asm](src/functions/grv/replay_grv_background_song.asm) |
| `04710` | `select_cursor_shape_and_palette` | Analyzer seed | `04710–04728` | [src/functions/cursor/select_cursor_shape_and_palette.asm](src/functions/cursor/select_cursor_shape_and_palette.asm) |
| `04729` | `match_grv_key_action` | Analyzer seed | `04729–04753` | [src/functions/grv/match_grv_key_action.asm](src/functions/grv/match_grv_key_action.asm) |
| `04754` | `test_persistent_top_bar_hotspot` | Analyzer seed | `04754–0475D` | [src/functions/grv/test_persistent_top_bar_hotspot.asm](src/functions/grv/test_persistent_top_bar_hotspot.asm) |
| `0475E` | `test_persistent_right_hotspot` | Analyzer seed | `0475E–04767` | [src/functions/grv/test_persistent_right_hotspot.asm](src/functions/grv/test_persistent_right_hotspot.asm) |
| `04768` | `test_persistent_left_hotspot` | Analyzer seed | `04768–04771` | [src/functions/grv/test_persistent_left_hotspot.asm](src/functions/grv/test_persistent_left_hotspot.asm) |
| `04772` | `test_persistent_bottom_bar_hotspot` | Analyzer seed | `04772–0477B` | [src/functions/grv/test_persistent_bottom_bar_hotspot.asm](src/functions/grv/test_persistent_bottom_bar_hotspot.asm) |
| `0477C` | `grv_test_bottom_bar_hotspot` | Analyzer seed | `0477C–0478B` | [src/functions/grv/grv_test_bottom_bar_hotspot.asm](src/functions/grv/grv_test_bottom_bar_hotspot.asm) |
| `0478C` | `grv_test_right_hotspot` | Analyzer seed | `0478C–0479B` | [src/functions/grv/grv_test_right_hotspot.asm](src/functions/grv/grv_test_right_hotspot.asm) |
| `0479C` | `grv_test_left_hotspot` | Analyzer seed | `0479C–047AB` | [src/functions/grv/grv_test_left_hotspot.asm](src/functions/grv/grv_test_left_hotspot.asm) |
| `047AC` | `grv_test_center_hotspot_cursor_zero` | Analyzer seed | `047AC–047BB` | [src/functions/grv/grv_test_center_hotspot_cursor_zero.asm](src/functions/grv/grv_test_center_hotspot_cursor_zero.asm) |
| `047BC` | `grv_test_center_hotspot_cursor_three` | Analyzer seed | `047BC–047CB` | [src/functions/grv/grv_test_center_hotspot_cursor_three.asm](src/functions/grv/grv_test_center_hotspot_cursor_three.asm) |
| `047CC` | `grv_test_full_width_hotspot` | Analyzer seed | `047CC–047DB` | [src/functions/grv/grv_test_full_width_hotspot.asm](src/functions/grv/grv_test_full_width_hotspot.asm) |
| `047DC` | `test_grv_hotspot_rect` | Analyzer seed | `047DC–0483D`<br>`04840–04848` | [src/functions/grv/test_grv_hotspot_rect.asm](src/functions/grv/test_grv_hotspot_rect.asm) |
| `04849` | `expand_grv_video_filename` | Analyzer seed | `04849–048C8` | [src/functions/grv/expand_grv_video_filename.asm](src/functions/grv/expand_grv_video_filename.asm) |
| `048C9` | `tokenize_configuration_line` | Analyzer seed | `048C9–04956` | [src/functions/runtime/tokenize_configuration_line.asm](src/functions/runtime/tokenize_configuration_line.asm) |
| `04957` | `skip_nul_terminated_string` | Analyzer seed | `04957–0495C` | [src/functions/runtime/skip_nul_terminated_string.asm](src/functions/runtime/skip_nul_terminated_string.asm) |
| `0495D` | `skip_configuration_whitespace` | Analyzer seed | `0495D–04967` | [src/functions/runtime/skip_configuration_whitespace.asm](src/functions/runtime/skip_configuration_whitespace.asm) |
| `04980` | `build_32_color_palette_translation` | Analyzer seed | `04980–04A22` | [src/functions/vdx/build_32_color_palette_translation.asm](src/functions/vdx/build_32_color_palette_translation.asm) |
| `04A23` | `parse_configuration_decimal_word` | Analyzer seed | `04A23–04A54` | [src/functions/runtime/parse_configuration_decimal_word.asm](src/functions/runtime/parse_configuration_decimal_word.asm) |
| `04A55` | `parse_configuration_hex_word` | Analyzer seed | `04A55–04A7A` | [src/functions/runtime/parse_configuration_hex_word.asm](src/functions/runtime/parse_configuration_hex_word.asm) |
| `04A7B` | `update_animated_software_cursor` | Analyzer seed | `04A7B–04B67`<br>`04B6B–04BAB`<br>`04BAE–04BF4` | [src/functions/cursor/update_animated_software_cursor.asm](src/functions/cursor/update_animated_software_cursor.asm) |
| `04BF5` | `erase_software_cursor` | Analyzer seed | `04BF5–04C26` | [src/functions/cursor/erase_software_cursor.asm](src/functions/cursor/erase_software_cursor.asm) |
| `04C27` | `draw_cursor_and_save_background_banked` | Analyzer seed | `04C27–04CD1` | [src/functions/cursor/draw_cursor_and_save_background_banked.asm](src/functions/cursor/draw_cursor_and_save_background_banked.asm) |
| `04CD2` | `redraw_cursor_frame_banked` | Analyzer seed | `04CD2–04D8B` | [src/functions/cursor/redraw_cursor_frame_banked.asm](src/functions/cursor/redraw_cursor_frame_banked.asm) |
| `04D8C` | `draw_cursor_and_save_background_half_resolution` | Analyzer seed | `04D8C–04E1E` | [src/functions/cursor/draw_cursor_and_save_background_half_resolution.asm](src/functions/cursor/draw_cursor_and_save_background_half_resolution.asm) |
| `04E1F` | `redraw_cursor_frame_half_resolution` | Analyzer seed | `04E1F–04EAD` | [src/functions/cursor/redraw_cursor_frame_half_resolution.asm](src/functions/cursor/redraw_cursor_frame_half_resolution.asm) |
| `04EAE` | `restore_cursor_background` | Analyzer seed | `04EAE–04FC6` | [src/functions/cursor/restore_cursor_background.asm](src/functions/cursor/restore_cursor_background.asm) |
| `04FC7` | `skip_configuration_crlf_line` | Analyzer seed | `04FC7–04FEA` | [src/functions/runtime/skip_configuration_crlf_line.asm](src/functions/runtime/skip_configuration_crlf_line.asm) |
| `04FEB` | `ascii_lowercase_al` | Analyzer seed | `04FEB–04FF5` | [src/functions/runtime/ascii_lowercase_al.asm](src/functions/runtime/ascii_lowercase_al.asm) |
| `04FF6` | `compare_ascii_strings_case_insensitive` | Analyzer seed | `04FF6–0500F` | [src/functions/runtime/compare_ascii_strings_case_insensitive.asm](src/functions/runtime/compare_ascii_strings_case_insensitive.asm) |
| `05010` | `copy_config_string_leaving_terminator` | Analyzer seed | `05010–05017` | [src/functions/runtime/copy_config_string_leaving_terminator.asm](src/functions/runtime/copy_config_string_leaving_terminator.asm) |
| `05018` | `find_configuration_section` | Analyzer seed | `05018–05056` | [src/functions/runtime/find_configuration_section.asm](src/functions/runtime/find_configuration_section.asm) |
| `05057` | `load_groovie_configuration` | Analyzer seed | `05057–0518F`<br>`05192–0519B`<br>`0519E–051A3`<br>`051A6–051AB`<br>`051AE–051C4` | [src/functions/runtime/load_groovie_configuration.asm](src/functions/runtime/load_groovie_configuration.asm) |
| `051C5` | `mark_videocard_configuration_seen` | Analyzer seed | `051C5–051CA` | [src/functions/runtime/mark_videocard_configuration_seen.asm](src/functions/runtime/mark_videocard_configuration_seen.asm) |
| `051CB` | `configure_dma_buffer_size` | Analyzer seed | `051CB–051E4` | [src/functions/runtime/configure_dma_buffer_size.asm](src/functions/runtime/configure_dma_buffer_size.asm) |
| `051E5` | `configure_ticks_per_second` | Analyzer seed | `051E5–051FE` | [src/functions/runtime/configure_ticks_per_second.asm](src/functions/runtime/configure_ticks_per_second.asm) |
| `051FF` | `configure_svga_mode` | Analyzer seed | `051FF–05216` | [src/functions/runtime/configure_svga_mode.asm](src/functions/runtime/configure_svga_mode.asm) |
| `05217` | `configure_program_directory` | Analyzer seed | `05217–05225` | [src/functions/runtime/configure_program_directory.asm](src/functions/runtime/configure_program_directory.asm) |
| `05226` | `configure_data_directory` | Analyzer seed | `05226–05234` | [src/functions/runtime/configure_data_directory.asm](src/functions/runtime/configure_data_directory.asm) |
| `05235` | `configure_midi_driver` | Analyzer seed | `05235–05350`<br>`05353–0535C`<br>`0535F–05364`<br>`05367–0536C`<br>`0536F–05378` | [src/functions/runtime/configure_midi_driver.asm](src/functions/runtime/configure_midi_driver.asm) |
| `05379` | `configure_pcm_driver` | Analyzer seed | `05379–05457`<br>`0545A–05463`<br>`05466–0546B`<br>`0546E–05473`<br>`05476–0547F` | [src/functions/runtime/configure_pcm_driver.asm](src/functions/runtime/configure_pcm_driver.asm) |
| `05480` | `decode_and_draw_grv_string` | Analyzer seed | `05480–054AC` | [src/functions/grv/decode_and_draw_grv_string.asm](src/functions/grv/decode_and_draw_grv_string.asm) |
| `054AD` | `load_and_draw_save_slot_caption` | Analyzer seed | `054AD–054F8` | [src/functions/savegame/load_and_draw_save_slot_caption.asm](src/functions/savegame/load_and_draw_save_slot_caption.asm) |
| `054F9` | `clear_grv_caption_video_region` | Analyzer seed | `054F9–05522` | [src/functions/grv/clear_grv_caption_video_region.asm](src/functions/grv/clear_grv_caption_video_region.asm) |
| `05523` | `draw_centered_sphinx_font_string` | Analyzer seed | `05523–055FB` | [src/functions/grv/draw_centered_sphinx_font_string.asm](src/functions/grv/draw_centered_sphinx_font_string.asm) |
| `055FC` | `play_mscdex_audio_selection` | Analyzer seed | `055FC–05718` | [src/functions/audio/play_mscdex_audio_selection.asm](src/functions/audio/play_mscdex_audio_selection.asm) |
| `05719` | `stop_mscdex_audio` | Analyzer seed | `05719–05727` | [src/functions/audio/stop_mscdex_audio.asm](src/functions/audio/stop_mscdex_audio.asm) |
| `05728` | `mscdex_post_play_no_op` | Analyzer seed | `05728–05728` | [src/functions/audio/mscdex_post_play_no_op.asm](src/functions/audio/mscdex_post_play_no_op.asm) |
| `05729` | `mscdex_pre_stop_no_op` | Analyzer seed | `05729–05729` | [src/functions/audio/mscdex_pre_stop_no_op.asm](src/functions/audio/mscdex_pre_stop_no_op.asm) |
| `0572A` | `get_mscdex_drive_letters` | Analyzer seed | `0572A–05732` | [src/functions/audio/get_mscdex_drive_letters.asm](src/functions/audio/get_mscdex_drive_letters.asm) |
| `05734` | `open_driver_or_timbre_file` | Analyzer seed | `05734–05749` | [src/functions/resource_io/open_driver_or_timbre_file.asm](src/functions/resource_io/open_driver_or_timbre_file.asm) |
| `0574A` | `close_driver_or_timbre_file` | Analyzer seed | `0574A–05753` | [src/functions/resource_io/close_driver_or_timbre_file.asm](src/functions/resource_io/close_driver_or_timbre_file.asm) |
| `05754` | `read_driver_or_timbre_file` | Analyzer seed | `05754–0575D` | [src/functions/resource_io/read_driver_or_timbre_file.asm](src/functions/resource_io/read_driver_or_timbre_file.asm) |
| `0575E` | `rewind_driver_or_timbre_file` | Analyzer seed | `0575E–0576D` | [src/functions/resource_io/rewind_driver_or_timbre_file.asm](src/functions/resource_io/rewind_driver_or_timbre_file.asm) |
| `0576E` | `initialize_subsystems_xms` | Analyzer seed | `0576E–05A36` | [src/functions/platform/initialize_subsystems_xms.asm](src/functions/platform/initialize_subsystems_xms.asm) |
| `05A37` | `wait_for_midi_sequence_completion` | Analyzer seed | `05A37–05A4E` | [src/functions/audio/wait_for_midi_sequence_completion.asm](src/functions/audio/wait_for_midi_sequence_completion.asm) |
| `05A6C` | `set_midi_sequence_volume_ramp` | Analyzer seed | `05A6C–05A8A` | [src/functions/audio/set_midi_sequence_volume_ramp.asm](src/functions/audio/set_midi_sequence_volume_ramp.asm) |
| `05A8B` | `set_pcm_driver_parameter_81` | Analyzer seed | `05A8B–05AAB` | [src/functions/audio/set_pcm_driver_parameter_81.asm](src/functions/audio/set_pcm_driver_parameter_81.asm) |
| `05AAC` | `load_xmidi_timbre_patches` | Analyzer seed | `05AAC–05BD0` | [src/functions/audio/load_xmidi_timbre_patches.asm](src/functions/audio/load_xmidi_timbre_patches.asm) |
| `05BD1` | `load_and_play_selected_xmi` | Analyzer seed | `05BD1–05C05` | [src/functions/audio/load_and_play_selected_xmi.asm](src/functions/audio/load_and_play_selected_xmi.asm) |
| `05C06` | `replace_active_midi_sequence` | Analyzer seed | `05C06–05CDD` | [src/functions/audio/replace_active_midi_sequence.asm](src/functions/audio/replace_active_midi_sequence.asm) |
| `05CED` | `shutdown_player` | Analyzer seed | `05CED–05E8B` | [src/functions/runtime/shutdown_player.asm](src/functions/runtime/shutdown_player.asm) |
| `05E8D` | `free_dos_memory_segment` | Analyzer seed | `05E8D–05EA8` | [src/functions/runtime/free_dos_memory_segment.asm](src/functions/runtime/free_dos_memory_segment.asm) |
| `05EA9` | `allocate_dos_memory_for_byte_count` | Analyzer seed | `05EA9–05EC7` | [src/functions/runtime/allocate_dos_memory_for_byte_count.asm](src/functions/runtime/allocate_dos_memory_for_byte_count.asm) |
| `05EC8` | `allocate_dos_memory_paragraphs` | Analyzer seed | `05EC8–05ED4` | [src/functions/runtime/allocate_dos_memory_paragraphs.asm](src/functions/runtime/allocate_dos_memory_paragraphs.asm) |
| `05ED6` | `cell_run_grv_puzzle_search` | Analyzer seed | `05ED6–05F1B` | [src/functions/puzzle/cell_run_grv_puzzle_search.asm](src/functions/puzzle/cell_run_grv_puzzle_search.asm) |
| `05F22` | `cell_convert_adjacent_pieces` | Analyzer seed | `05F22–05F6B` | [src/functions/puzzle/cell_convert_adjacent_pieces.asm](src/functions/puzzle/cell_convert_adjacent_pieces.asm) |
| `05F6C` | `cell_count_board_pieces` | Analyzer seed | `05F6C–05FB5` | [src/functions/puzzle/cell_count_board_pieces.asm](src/functions/puzzle/cell_count_board_pieces.asm) |
| `05FB6` | `cell_begin_forward_move_iteration` | Analyzer seed | `05FB6–05FD7` | [src/functions/puzzle/cell_begin_forward_move_iteration.asm](src/functions/puzzle/cell_begin_forward_move_iteration.asm) |
| `05FD8` | `cell_begin_reverse_move_iteration` | Analyzer seed | `05FD8–05FE3` | [src/functions/puzzle/cell_begin_reverse_move_iteration.asm](src/functions/puzzle/cell_begin_reverse_move_iteration.asm) |
| `05FE4` | `cell_next_forward_move` | Analyzer seed | `05FE4–0605A`<br>`0605C–06072`<br>`06074–060CF` | [src/functions/puzzle/cell_next_forward_move.asm](src/functions/puzzle/cell_next_forward_move.asm) |
| `060D0` | `cell_next_forward_move_with_jump_deduplication` | Analyzer seed | `060D0–06157`<br>`0615A–061CE` | [src/functions/puzzle/cell_next_forward_move_with_jump_deduplication.asm](src/functions/puzzle/cell_next_forward_move_with_jump_deduplication.asm) |
| `061D0` | `cell_next_reverse_move` | Analyzer seed | `061D0–0627A`<br>`0627C–0628E` | [src/functions/puzzle/cell_next_reverse_move.asm](src/functions/puzzle/cell_next_reverse_move.asm) |
| `06290` | `cell_apply_move_to_scratch_board` | Analyzer seed | `06290–062E8` | [src/functions/puzzle/cell_apply_move_to_scratch_board.asm](src/functions/puzzle/cell_apply_move_to_scratch_board.asm) |
| `062EA` | `cell_score_candidate_move` | Analyzer seed | `062EA–063B3` | [src/functions/puzzle/cell_score_candidate_move.asm](src/functions/puzzle/cell_score_candidate_move.asm) |
| `063B4` | `cell_count_adjacent_clone_opportunities` | Analyzer seed | `063B4–063FA`<br>`063FC–0641B` | [src/functions/puzzle/cell_count_adjacent_clone_opportunities.asm](src/functions/puzzle/cell_count_adjacent_clone_opportunities.asm) |
| `0641C` | `cell_reset_best_move_list` | Analyzer seed | `0641C–06434` | [src/functions/puzzle/cell_reset_best_move_list.asm](src/functions/puzzle/cell_reset_best_move_list.asm) |
| `06436` | `cell_append_tied_best_move` | Analyzer seed | `06436–06456` | [src/functions/puzzle/cell_append_tied_best_move.asm](src/functions/puzzle/cell_append_tied_best_move.asm) |
| `06458` | `cell_choose_best_move` | Analyzer seed | `06458–0650E`<br>`06510–06514`<br>`06516–0656A` | [src/functions/puzzle/cell_choose_best_move.asm](src/functions/puzzle/cell_choose_best_move.asm) |
| `0656C` | `cell_search_recursive` | Analyzer seed | `0656C–065FC`<br>`065FE–06618`<br>`0661A–06642`<br>`06644–066AE`<br>`066B0–06798`<br>`0679A–067FA`<br>`067FC–06845` | [src/functions/puzzle/cell_search_recursive.asm](src/functions/puzzle/cell_search_recursive.asm) |
| `06846` | `cell_search_best_move` | Analyzer seed | `06846–0690B`<br>`0690D–06951`<br>`06953–06A6B` | [src/functions/puzzle/cell_search_best_move.asm](src/functions/puzzle/cell_search_best_move.asm) |
| `06A6D` | `cell_reset_ranked_move_list` | Analyzer seed | `06A6D–06A80` | [src/functions/puzzle/cell_reset_ranked_move_list.asm](src/functions/puzzle/cell_reset_ranked_move_list.asm) |
| `06A81` | `cell_insert_ranked_move` | Analyzer seed | `06A81–06AE3`<br>`06AE5–06AEE` | [src/functions/puzzle/cell_insert_ranked_move.asm](src/functions/puzzle/cell_insert_ranked_move.asm) |
| `06AEF` | `cell_build_ranked_move_list` | Analyzer seed | `06AEF–06BFE`<br>`06C00–06D0D` | [src/functions/puzzle/cell_build_ranked_move_list.asm](src/functions/puzzle/cell_build_ranked_move_list.asm) |
| `06D0E` | `cell_search_ranked_moves` | Analyzer seed | `06D0E–06DA4`<br>`06DA6–06DE2` | [src/functions/puzzle/cell_search_ranked_moves.asm](src/functions/puzzle/cell_search_ranked_moves.asm) |
| `06DE4` | `cell_dispatch_search_strategy` | Analyzer seed | `06DE4–06E0A`<br>`06E0C–06E67` | [src/functions/puzzle/cell_dispatch_search_strategy.asm](src/functions/puzzle/cell_dispatch_search_strategy.asm) |
| `06E68` | `cell_random_byte` | Analyzer seed | `06E68–06E71` | [src/functions/puzzle/cell_random_byte.asm](src/functions/puzzle/cell_random_byte.asm) |
| `06E72` | `allocate_xms_still_cache` | Analyzer seed | `06E72–06EB5` | [src/functions/platform/allocate_xms_still_cache.asm](src/functions/platform/allocate_xms_still_cache.asm) |
| `06EB6` | `release_xms_still_cache` | Analyzer seed | `06EB6–06ED8` | [src/functions/platform/release_xms_still_cache.asm](src/functions/platform/release_xms_still_cache.asm) |
| `06ED9` | `transfer_selected_xms_still_cache_block` | Analyzer seed | `06ED9–06FA8` | [src/functions/vdx/transfer_selected_xms_still_cache_block.asm](src/functions/vdx/transfer_selected_xms_still_cache_block.asm) |
| `06FA9` | `select_xms_still_cache_entry` | Analyzer seed | `06FA9–07024` | [src/functions/vdx/select_xms_still_cache_entry.asm](src/functions/vdx/select_xms_still_cache_entry.asm) |
| `073E0` | `miles_find_driver_command` | Analyzer seed | `073E0–07417` | [src/functions/audio/miles_find_driver_command.asm](src/functions/audio/miles_find_driver_command.asm) |
| `07418` | `miles_tail_dispatch_driver_command` | Analyzer seed | `07418–0742F` | [src/functions/audio/miles_tail_dispatch_driver_command.asm](src/functions/audio/miles_tail_dispatch_driver_command.asm) |
| `07430` | `miles_timer_interrupt` | Recovered | `07430–07500` | [src/functions/audio/miles_timer_interrupt.asm](src/functions/audio/miles_timer_interrupt.asm) |
| `07501` | `miles_initialize_timer_state` | Analyzer seed | `07501–0753C` | [src/functions/audio/miles_initialize_timer_state.asm](src/functions/audio/miles_initialize_timer_state.asm) |
| `0753D` | `miles_chain_previous_timer_interrupt` | Recovered | `0753D–07543` | [src/functions/audio/miles_chain_previous_timer_interrupt.asm](src/functions/audio/miles_chain_previous_timer_interrupt.asm) |
| `07544` | `miles_install_timer_interrupt` | Analyzer seed | `07544–0758F` | [src/functions/audio/miles_install_timer_interrupt.asm](src/functions/audio/miles_install_timer_interrupt.asm) |
| `07590` | `miles_restore_timer_interrupt` | Analyzer seed | `07590–075BF` | [src/functions/audio/miles_restore_timer_interrupt.asm](src/functions/audio/miles_restore_timer_interrupt.asm) |
| `075C0` | `miles_program_pit_channel_zero` | Analyzer seed | `075C0–075E8` | [src/functions/audio/miles_program_pit_channel_zero.asm](src/functions/audio/miles_program_pit_channel_zero.asm) |
| `075E9` | `miles_program_pit_from_period` | Analyzer seed | `075E9–07612` | [src/functions/audio/miles_program_pit_from_period.asm](src/functions/audio/miles_program_pit_from_period.asm) |
| `07613` | `miles_divide_unsigned_dword` | Analyzer seed | `07613–0765D` | [src/functions/audio/miles_divide_unsigned_dword.asm](src/functions/audio/miles_divide_unsigned_dword.asm) |
| `0765E` | `miles_recompute_minimum_timer_period` | Analyzer seed | `0765E–076F2` | [src/functions/audio/miles_recompute_minimum_timer_period.asm](src/functions/audio/miles_recompute_minimum_timer_period.asm) |
| `076F3` | `miles_initialize_driver_tables` | Analyzer seed | `076F3–0773D` | [src/functions/audio/miles_initialize_driver_tables.asm](src/functions/audio/miles_initialize_driver_tables.asm) |
| `0773E` | `miles_shutdown_drivers_and_timers` | Analyzer seed | `0773E–077A2` | [src/functions/audio/miles_shutdown_drivers_and_timers.asm](src/functions/audio/miles_shutdown_drivers_and_timers.asm) |
| `077A3` | `miles_register_timer_callback` | Analyzer seed | `077A3–0786D` | [src/functions/audio/miles_register_timer_callback.asm](src/functions/audio/miles_register_timer_callback.asm) |
| `0786E` | `miles_release_timer_callback` | Analyzer seed | `0786E–078B6` | [src/functions/audio/miles_release_timer_callback.asm](src/functions/audio/miles_release_timer_callback.asm) |
| `078B7` | `miles_release_all_timer_callbacks` | Analyzer seed | `078B7–078D4` | [src/functions/audio/miles_release_all_timer_callbacks.asm](src/functions/audio/miles_release_all_timer_callbacks.asm) |
| `078D5` | `miles_start_timer_callback` | Analyzer seed | `078D5–078FC` | [src/functions/audio/miles_start_timer_callback.asm](src/functions/audio/miles_start_timer_callback.asm) |
| `0791B` | `miles_stop_timer_callback` | Analyzer seed | `0791B–07942` | [src/functions/audio/miles_stop_timer_callback.asm](src/functions/audio/miles_stop_timer_callback.asm) |
| `07961` | `miles_set_timer_period` | Analyzer seed | `07961–079B5` | [src/functions/audio/miles_set_timer_period.asm](src/functions/audio/miles_set_timer_period.asm) |
| `079B6` | `miles_set_timer_frequency` | Analyzer seed | `079B6–079F6` | [src/functions/audio/miles_set_timer_frequency.asm](src/functions/audio/miles_set_timer_frequency.asm) |
| `079F7` | `miles_set_timer_period_from_pit_count` | Analyzer seed | `079F7–07A32` | [src/functions/audio/miles_set_timer_period_from_pit_count.asm](src/functions/audio/miles_set_timer_period_from_pit_count.asm) |
| `07A33` | `miles_get_programmed_pit_count` | Analyzer seed | `07A33–07A46` | [src/functions/audio/miles_get_programmed_pit_count.asm](src/functions/audio/miles_get_programmed_pit_count.asm) |
| `07A47` | `miles_register_driver_image` | Analyzer seed | `07A47–07B29` | [src/functions/audio/miles_register_driver_image.asm](src/functions/audio/miles_register_driver_image.asm) |
| `07B71` | `miles_query_driver_descriptor` | Analyzer seed | `07B71–07B96` | [src/functions/audio/miles_query_driver_descriptor.asm](src/functions/audio/miles_query_driver_descriptor.asm) |
| `07B97` | `miles_dispatch_driver_command_65` | Analyzer seed | `07B97–07B9C` | [src/functions/audio/miles_dispatch_driver_command_65.asm](src/functions/audio/miles_dispatch_driver_command_65.asm) |
| `07B9D` | `miles_initialize_registered_driver` | Analyzer seed | `07B9D–07C4E` | [src/functions/audio/miles_initialize_registered_driver.asm](src/functions/audio/miles_initialize_registered_driver.asm) |
| `07C4F` | `miles_shutdown_registered_driver` | Analyzer seed | `07C4F–07C81` | [src/functions/audio/miles_shutdown_registered_driver.asm](src/functions/audio/miles_shutdown_registered_driver.asm) |
| `07C88` | `miles_dispatch_pcm_command_79` | Analyzer seed | `07C88–07C8D` | [src/functions/audio/miles_dispatch_pcm_command_79.asm](src/functions/audio/miles_dispatch_pcm_command_79.asm) |
| `07C8E` | `miles_dispatch_pcm_descriptor_command_86` | Analyzer seed | `07C8E–07C93` | [src/functions/audio/miles_dispatch_pcm_descriptor_command_86.asm](src/functions/audio/miles_dispatch_pcm_descriptor_command_86.asm) |
| `07C94` | `miles_query_pcm_buffer_status` | Analyzer seed | `07C94–07C99` | [src/functions/audio/miles_query_pcm_buffer_status.asm](src/functions/audio/miles_query_pcm_buffer_status.asm) |
| `07CAC` | `miles_dispatch_pcm_command_7d` | Analyzer seed | `07CAC–07CB1` | [src/functions/audio/miles_dispatch_pcm_command_7d.asm](src/functions/audio/miles_dispatch_pcm_command_7d.asm) |
| `07CB2` | `miles_dispatch_pcm_stop_command_7e` | Analyzer seed | `07CB2–07CB7` | [src/functions/audio/miles_dispatch_pcm_stop_command_7e.asm](src/functions/audio/miles_dispatch_pcm_stop_command_7e.asm) |
| `07CC4` | `miles_dispatch_driver_command_81` | Analyzer seed | `07CC4–07CC9` | [src/functions/audio/miles_dispatch_driver_command_81.asm](src/functions/audio/miles_dispatch_driver_command_81.asm) |
| `07CE2` | `miles_dispatch_driver_command_97` | Analyzer seed | `07CE2–07CE7` | [src/functions/audio/miles_dispatch_driver_command_97.asm](src/functions/audio/miles_dispatch_driver_command_97.asm) |
| `07CE8` | `miles_dispatch_driver_command_98` | Analyzer seed | `07CE8–07CED` | [src/functions/audio/miles_dispatch_driver_command_98.asm](src/functions/audio/miles_dispatch_driver_command_98.asm) |
| `07CEE` | `miles_dispatch_driver_command_99` | Analyzer seed | `07CEE–07CF3` | [src/functions/audio/miles_dispatch_driver_command_99.asm](src/functions/audio/miles_dispatch_driver_command_99.asm) |
| `07CF4` | `miles_dispatch_driver_command_9a` | Analyzer seed | `07CF4–07CF9` | [src/functions/audio/miles_dispatch_driver_command_9a.asm](src/functions/audio/miles_dispatch_driver_command_9a.asm) |
| `07CFA` | `miles_dispatch_driver_command_9b` | Analyzer seed | `07CFA–07CFF` | [src/functions/audio/miles_dispatch_driver_command_9b.asm](src/functions/audio/miles_dispatch_driver_command_9b.asm) |
| `07D00` | `miles_dispatch_driver_command_9c` | Analyzer seed | `07D00–07D05` | [src/functions/audio/miles_dispatch_driver_command_9c.asm](src/functions/audio/miles_dispatch_driver_command_9c.asm) |
| `07D18` | `miles_dispatch_driver_command_aa` | Analyzer seed | `07D18–07D1D` | [src/functions/audio/miles_dispatch_driver_command_aa.asm](src/functions/audio/miles_dispatch_driver_command_aa.asm) |
| `07D1E` | `miles_dispatch_driver_command_ab` | Analyzer seed | `07D1E–07D23` | [src/functions/audio/miles_dispatch_driver_command_ab.asm](src/functions/audio/miles_dispatch_driver_command_ab.asm) |
| `07D2A` | `miles_dispatch_driver_command_ae` | Analyzer seed | `07D2A–07D2F` | [src/functions/audio/miles_dispatch_driver_command_ae.asm](src/functions/audio/miles_dispatch_driver_command_ae.asm) |
| `07D3C` | `miles_dispatch_driver_command_b1` | Analyzer seed | `07D3C–07D41` | [src/functions/audio/miles_dispatch_driver_command_b1.asm](src/functions/audio/miles_dispatch_driver_command_b1.asm) |
| `07D4E` | `miles_dispatch_driver_command_b4` | Analyzer seed | `07D4E–07D53` | [src/functions/audio/miles_dispatch_driver_command_b4.asm](src/functions/audio/miles_dispatch_driver_command_b4.asm) |
| `07EA0` | `digpak_suspend_miles_timer_if_required` | Analyzer seed | `07EA0–07EC8`<br>`07ED3–07ED6` | [src/functions/audio/digpak_suspend_miles_timer_if_required.asm](src/functions/audio/digpak_suspend_miles_timer_if_required.asm) |
| `07ED7` | `digpak_resume_miles_timer_if_required` | Analyzer seed | `07ED7–07F0D` | [src/functions/audio/digpak_resume_miles_timer_if_required.asm](src/functions/audio/digpak_resume_miles_timer_if_required.asm) |
| `07F0E` | `digpak_subtract_far_pointer_addresses` | Analyzer seed | `07F0E–07F54` | [src/functions/audio/digpak_subtract_far_pointer_addresses.asm](src/functions/audio/digpak_subtract_far_pointer_addresses.asm) |
| `07F55` | `digpak_read_voc_block_type` | Analyzer seed | `07F55–07F63` | [src/functions/audio/digpak_read_voc_block_type.asm](src/functions/audio/digpak_read_voc_block_type.asm) |
| `07F64` | `digpak_read_voc_marker` | Analyzer seed | `07F64–07F7A` | [src/functions/audio/digpak_read_voc_marker.asm](src/functions/audio/digpak_read_voc_marker.asm) |
| `07F7B` | `digpak_rate_from_voc_time_constant` | Analyzer seed | `07F7B–07FB5` | [src/functions/audio/digpak_rate_from_voc_time_constant.asm](src/functions/audio/digpak_rate_from_voc_time_constant.asm) |
| `07FB6` | `digpak_submit_pcm_in_32k_chunks` | Analyzer seed | `07FB6–08068` | [src/functions/audio/digpak_submit_pcm_in_32k_chunks.asm](src/functions/audio/digpak_submit_pcm_in_32k_chunks.asm) |
| `08069` | `digpak_set_completion_callback` | Analyzer seed | `08069–08082` | [src/functions/audio/digpak_set_completion_callback.asm](src/functions/audio/digpak_set_completion_callback.asm) |
| `08083` | `digpak_voc_completion_callback` | Recovered | `08083–080A1` | [src/functions/audio/digpak_voc_completion_callback.asm](src/functions/audio/digpak_voc_completion_callback.asm) |
| `080A2` | `digpak_buffer_completion_callback` | Recovered | `080A2–080D5` | [src/functions/audio/digpak_buffer_completion_callback.asm](src/functions/audio/digpak_buffer_completion_callback.asm) |
| `080D6` | `digpak_advance_voc_block` | Analyzer seed | `080D6–0812A` | [src/functions/audio/digpak_advance_voc_block.asm](src/functions/audio/digpak_advance_voc_block.asm) |
| `0812B` | `digpak_select_ready_pcm_buffer` | Analyzer seed | `0812B–08151` | [src/functions/audio/digpak_select_ready_pcm_buffer.asm](src/functions/audio/digpak_select_ready_pcm_buffer.asm) |
| `08152` | `digpak_schedule_next_voc_block` | Analyzer seed | `08152–082A8` | [src/functions/audio/digpak_schedule_next_voc_block.asm](src/functions/audio/digpak_schedule_next_voc_block.asm) |
| `082A9` | `digpak_schedule_pcm_buffer_slot` | Analyzer seed | `082A9–082FB` | [src/functions/audio/digpak_schedule_pcm_buffer_slot.asm](src/functions/audio/digpak_schedule_pcm_buffer_slot.asm) |
| `082FC` | `digpak_begin_pcm_transfer` | Analyzer seed | `082FC–08326` | [src/functions/audio/digpak_begin_pcm_transfer.asm](src/functions/audio/digpak_begin_pcm_transfer.asm) |
| `08327` | `digpak_submit_next_pcm_chunk` | Analyzer seed | `08327–083FD` | [src/functions/audio/digpak_submit_next_pcm_chunk.asm](src/functions/audio/digpak_submit_next_pcm_chunk.asm) |
| `083FE` | `digpak_materialize_driver_descriptor` | Analyzer seed | `083FE–0847D` | [src/functions/audio/digpak_materialize_driver_descriptor.asm](src/functions/audio/digpak_materialize_driver_descriptor.asm) |
| `0847E` | `digpak_return_driver_probe_success` | Analyzer seed | `0847E–0848B` | [src/functions/audio/digpak_return_driver_probe_success.asm](src/functions/audio/digpak_return_driver_probe_success.asm) |
| `0848C` | `digpak_initialize_pcm_driver` | Analyzer seed | `0848C–084F0` | [src/functions/audio/digpak_initialize_pcm_driver.asm](src/functions/audio/digpak_initialize_pcm_driver.asm) |
| `084F1` | `digpak_shutdown_pcm_driver` | Analyzer seed | `084F1–08523` | [src/functions/audio/digpak_shutdown_pcm_driver.asm](src/functions/audio/digpak_shutdown_pcm_driver.asm) |
| `08524` | `digpak_find_voc_sound_block` | Analyzer seed | `08524–08649` | [src/functions/audio/digpak_find_voc_sound_block.asm](src/functions/audio/digpak_find_voc_sound_block.asm) |
| `0864A` | `digpak_queue_pcm_buffer_descriptor` | Analyzer seed | `0864A–086AA` | [src/functions/audio/digpak_queue_pcm_buffer_descriptor.asm](src/functions/audio/digpak_queue_pcm_buffer_descriptor.asm) |
| `086AB` | `digpak_get_pcm_buffer_status` | Analyzer seed | `086AB–086BF` | [src/functions/audio/digpak_get_pcm_buffer_status.asm](src/functions/audio/digpak_get_pcm_buffer_status.asm) |
| `086C0` | `digpak_select_voc_stream` | Analyzer seed | `086C0–08765` | [src/functions/audio/digpak_select_voc_stream.asm](src/functions/audio/digpak_select_voc_stream.asm) |
| `08766` | `digpak_submit_voc_pcm_blocks` | Analyzer seed | `08766–08853` | [src/functions/audio/digpak_submit_voc_pcm_blocks.asm](src/functions/audio/digpak_submit_voc_pcm_blocks.asm) |
| `08854` | `digpak_submit_pcm_descriptor` | Analyzer seed | `08854–08890` | [src/functions/audio/digpak_submit_pcm_descriptor.asm](src/functions/audio/digpak_submit_pcm_descriptor.asm) |
| `08891` | `digpak_service_pcm_playback` | Analyzer seed | `08891–088D8` | [src/functions/audio/digpak_service_pcm_playback.asm](src/functions/audio/digpak_service_pcm_playback.asm) |
| `088D9` | `digpak_stop_pcm_playback` | Analyzer seed | `088D9–0891C` | [src/functions/audio/digpak_stop_pcm_playback.asm](src/functions/audio/digpak_stop_pcm_playback.asm) |
| `0891D` | `digpak_get_pcm_playback_state` | Analyzer seed | `0891D–0892B` | [src/functions/audio/digpak_get_pcm_playback_state.asm](src/functions/audio/digpak_get_pcm_playback_state.asm) |

## Current data ownership

- `DS:E02B..E056`: eleven cursor shape pointers and eleven parallel palette
  pointers. The selector at `04710` indexes the first table and adds `16h`
  to fetch the corresponding palette pointer.
- `DS:CF20..CF21`: pending palette-upload gate, checked at `00509`.
- `DS:D46E..D47D`: background XMS move descriptor. The following words hold
  the VDX file handle, still tile counters and staged PCM count/read offset.
  `DS:D48C` retains an unresolved word name.
- `CS:3688..368B`: the XMS control entry pointer returned by INT 2Fh/4310h
  and stored by `query_xms` at `036A6/036AB`.
- `DS:E0C5/E0C6`: AdlibGold configuration flag and Miles PCM backend selector;
  `E0C7` remains unresolved and retains its initial byte `02h`.
- Miles segment `CS:0D82..0DB7` (load `07DA2..07DD7`): thirteen embedded
  command/callback entries and their `FFFFh` sentinel. The following 200
  bytes hold the embedded DIGPAK descriptor/state; internal field layout is
  only partially identified.
- `DS:F2FE..F30D`: still-cache XMS move descriptor, retaining the initial
  `C8 C8` word. `F30E..F31F` holds cache controls/counters and `F320..F7CF`
  holds 200 six-byte key/offset records. `F7D0..F821` remains unresolved.
- `DS:E907..E91B`: seven three-phase microscope strategy rows. Surrounding
  state and parallel 99-byte best-move source/destination arrays are named;
  the complete recursive/ranked workspace partition remains unresolved.
- `DS:E15A..E164`: the eleven-byte encoded empty-save caption, decoded by
  adding `30h` until the dollar terminator.

## Recovered video-bank handlers

Hardware detection writes 16 distinct targets into `SS:D660`; dispatch at
`02D54` jumps through that pointer. Fourteen targets perform literal indexed
or direct port bank programming, one invokes the configured far bank handler
with window zero, and one immediately returns. The adjacent existing window
one wrapper remains a separate original entry. A seventeenth newly identified
entry at `03453` is passed in DX to the bank-separation probe and invoked via
`call DX` by `0341A`.

Names describe the actual register/port operations. No vendor identity is
inferred from those patterns. These 17 entries reclaim 498 bytes and decode
289 instructions without executing hardware or changing original behavior.
The initial build found NASM's alternative `AND AX,0Fh` encoding; the source
retains the original `25 0F 00` form explicitly, and the canonical build passes.

## Remaining questions

The remaining 727 gap bytes include short branches, NOPs, helper-like code,
inline data and command thunks without established caller ownership. For
example `07D54..07DA1` contains thirteen six-byte command stubs; their shape
alone does not establish reachable functions. Mixed initialized data and the
large primary zero-initialized workspace also remain partially understood.
No claim of dead code or unused storage follows merely from absent direct
cross-references; far calls, indexed pointers and computed accesses matter.

The modern engine's DOS logical hotspots feed its existing responsive window
transform. Window sizing, instantaneous resize mapping, deliberate removal of
the original top/bottom bars, and QoL remain independent presentation choices.
This source pass changes no modern engine or toolkit code.

## Maintenance and build policy

The only automatic original-artifact check is this project's existing
`build.sh` canonical byte-identity gate. Builds are permitted; no auxiliary
engine/toolkit tests or extra verification scripts are maintained. Gameplay
and hardware acceptance belong to the maintainer. Keep original bytes here;
separate behavior-changing examples and forks from the canonical disassembly.
Update existing READMEs and report findings in chat; do not create new Markdown
recovery reports.
