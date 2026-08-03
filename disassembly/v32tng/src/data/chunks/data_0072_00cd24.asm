; Explicit file bytes raw 00CD24..00CD30.
%macro emit_file_data_0072_00cd24 0
    %%chunk_start:
    db 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC ; raw 00CD24 |............|
    %if ($ - %%chunk_start) != 12
        %error "data chunk size drift: 00CD24"
    %endif
%endmacro
