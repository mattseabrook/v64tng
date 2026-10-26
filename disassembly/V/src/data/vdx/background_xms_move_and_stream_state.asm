; Load 15D9E..15DBD; DS:D46E..D48D.
; Background XMS helpers write the standard 16-byte move record at D46E.
; Still decode writes tile counters; stream/audio pump share pending byte count
; and read offset at D488/D48A. D48C remains named only by its address.
%macro emit_background_xms_move_and_stream_state 0
    %%range_start:
background_xms_move_descriptor: ; DS:D46E
    db 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
vdx_stream_file_handle: ; DS:D47E
    db 0x00, 0x00
vdx_still_tile_columns_remaining: ; DS:D480
    db 0x00, 0x00
vdx_still_tile_column_count: ; DS:D482
    db 0x00, 0x00
vdx_still_tile_rows_remaining: ; DS:D484
    db 0x00, 0x00
vdx_still_tile_row_count: ; DS:D486
    db 0x00, 0x00
pcm_staged_bytes_remaining: ; DS:D488
    db 0x00, 0x00
pcm_staged_read_offset: ; DS:D48A
    db 0x00, 0x00
unresolved_stream_word_d48c: ; DS:D48C
    db 0x00, 0x00
    %if ($ - %%range_start) != 0x20
        %error "background XMS/stream state size"
    %endif
%endmacro
