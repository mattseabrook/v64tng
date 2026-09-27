# September 26 semantic and capture evidence

Both executable rebuilds retain their canonical SHA-256. Analyzer boundaries,
instruction ownership and emitted bytes are unchanged. Five DOS entries and
one Win32 entry gained semantic names: DOS 86/261, Win32 91/336, combined
177/597 (29.6%). The combined decoded instruction count is 37,665
(12,484 + 25,181); the root README's older 33,236 figure was stale.

| Entry | Verified role | Evidence |
|---|---|---|
| DOS `001E1` | `open_vdx_file_or_borrow_archive_handle` | Standalone caller at `00132`; CF2E switches between DOS read-only open of CF68 and borrowed archive handle D849; stores active D47E; returns 0/FFFFh |
| DOS `0020A` | `close_vdx_file_unless_archive_borrowed` | Standalone cleanup at `001CA`/`001D9`; CF2E skips close for borrowed ownership; otherwise INT 21h/3E00h closes D47E |
| DOS `026E5` | `merge_32_color_palette_into_unused_entries` | Marks used background slots for one-shot merge; protects index zero; installs up to 32 RGB colors in unused slots, converts 8-bit RGB to DAC components, writes E166 translation indexes, uploads at retrace |
| DOS `02822` | `restore_saved_vga_palette_at_retrace` | Copies 768 bytes CC20 to active CF8C, waits for VGA retrace and writes DAC; hotspot caller and existing fade routines corroborate ownership |
| DOS `04980` | `build_32_color_palette_translation` | Clears E166 table, calls merge, fills unmapped indexes 1..31 from active palette candidates 1..255 using original RGB score |
| Win32 `00408D24` | `initialize_selected_vdx_stream` | GRV selection and logo/credit callers; cache/mmio header read; 9267h magic; configure/callback installation; independent loose-VDX initialization sequence |

`grooviev1/verify_dos_palette_helpers.py` executes the original rebuilt code
in Unicorn with only VGA status and output ports modeled. It verifies exact
saved palette restoration/DAC order, protected palette entries, all 32 merged
translations, and the full fallback path when every destination slot is used.

The fallback score at `049C6`/`049DD`/`049F4` is asymmetric. With active
component `a = DAC << 2` and source component `s`, the positive path gives
`a-s`; the borrow path performs `SUB CX,AX` on that already-subtracted value,
giving `2*s-a`. Scores sum over RGB; ties keep the earliest candidate. With
source red 100, active red 40 scores 160, whereas active red 240 scores 140.
The native translation selects the latter despite its greater absolute RGB
distance. This behavior is preserved and explicitly documented; no v64tng
rendering algorithm was changed on the strength of this isolated finding.

Validation completed:

- both canonical NASM rebuild/hash checks;
- 4,120 existing DOS GRV helper machine-code cases;
- 87 existing Win32 resource/cache machine-code scenarios;
- the new DOS palette machine-code scenarios;
- eight capture/inventory/digester offline tests and agent syntax validation;
- extraction of both basement example scripts and every numeric reference,
  with no unresolved sites or asset/chunk errors.

The capture kit is maintained in `research/debug`. Compact output keeps VM
hooks active for variable attribution while omitting boundary events. Optional
decoded chunk dumps are hashed and deduplicated. Full script extraction and
audio export run offline. See [the kit](../research/debug/README.md) and
[the basement inventory](BASEMENT_STATIC_INVENTORY.md). Live Windows injection
has not been revalidated, and no dungeon runtime trace was used or created.
