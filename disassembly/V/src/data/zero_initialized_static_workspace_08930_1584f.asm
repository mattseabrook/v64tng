; Verified zero-initialized static workspace at startup DS:0000..CF1F.
; Load-image offsets 08930..1584F, exactly 53,024 zero bytes.
%macro emit_zero_initialized_static_workspace_08930_1584f 0
    %%range_start:
dos_zero_initialized_static_workspace_primary:
    times 0xCF20 db 0
    %if ($ - %%range_start) != 0xCF20
        %error "primary DOS static workspace size drift"
    %endif
%endmacro
