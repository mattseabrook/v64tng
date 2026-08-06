; Explicit file bytes raw 00BEA9..00BEAC.
%macro emit_file_data_0025_00bea9 0
    %%chunk_start:
    db 0x2E, 0x8B, 0xC0 ; raw 00BEA9 |...|
    %if ($ - %%chunk_start) != 3
        %error "data chunk size drift: 00BEA9"
    %endif
%endmacro
