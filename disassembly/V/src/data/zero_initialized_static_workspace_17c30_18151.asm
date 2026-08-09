; Verified zero-initialized static workspace at startup DS:F300..F821.
; Load-image offsets 17C30..18151, exactly 1,314 zero bytes.
%macro emit_zero_initialized_static_workspace_17c30_18151 0
    %%range_start:
dos_zero_initialized_static_workspace_secondary_b:
    times 0x522 db 0
    %if ($ - %%range_start) != 0x522
        %error "secondary DOS static workspace B size drift"
    %endif
%endmacro
