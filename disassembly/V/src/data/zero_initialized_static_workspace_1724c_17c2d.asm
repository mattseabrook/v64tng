; Verified zero-initialized static workspace at startup DS:E91C..F2FD.
; Load-image offsets 1724C..17C2D, exactly 2,530 zero bytes.
%macro emit_zero_initialized_static_workspace_1724c_17c2d 0
    %%range_start:
dos_zero_initialized_static_workspace_secondary_a:
    times 0x9E2 db 0
    %if ($ - %%range_start) != 0x9E2
        %error "secondary DOS static workspace A size drift"
    %endif
%endmacro
