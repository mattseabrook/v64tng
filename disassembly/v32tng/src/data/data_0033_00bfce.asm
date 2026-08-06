; Explicit file bytes raw 00BFCE..00BFD0.
%macro emit_file_data_0033_00bfce 0
    %%chunk_start:
    db 0x8B, 0xC0 ; raw 00BFCE |..|
    %if ($ - %%chunk_start) != 2
        %error "data chunk size drift: 00BFCE"
    %endif
%endmacro
