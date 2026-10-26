; Verified XMS cache layout, load 17C2E..18151, runtime DS:F2FE..F821.
; 06EE0..06FA8 writes the descriptor and counters; 06FA9..07023 scans
; 200 six-byte key/offset records. Initial C8C8 is retained exactly.
%macro emit_xms_still_cache_state 0
    %%range_start:
xms_still_cache_move_descriptor: ; DS:F2FE, standard 16-byte XMS move record
    dw 0xC8C8
    times 14 db 0
xms_still_cache_handle:          dw 0 ; F30E
xms_still_cache_entry_count:     dw 0 ; F310
xms_still_cache_remaining_kib:   dw 0 ; F312
xms_still_cache_next_offset_kib: dw 0 ; F314
xms_still_cache_transfer_mode:   dw 0 ; F316: 0 disabled, 1 store, 2 restore
xms_still_cache_selected_entry:  dw 0 ; F318
xms_still_cache_store_count:     dw 0 ; F31A
xms_still_cache_restore_count:   dw 0 ; F31C
xms_still_cache_reset_count:     dw 0 ; F31E
xms_still_cache_entries:             ; F320..F7CF: key word + XMS offset dword
    times 200 * 6 db 0
unresolved_static_workspace_f7d0:    ; F7D0..F821: ownership not established
    times 0x52 db 0
    %if ($ - %%range_start) != 0x524
        %error "XMS cache state size drift"
    %endif
%endmacro
