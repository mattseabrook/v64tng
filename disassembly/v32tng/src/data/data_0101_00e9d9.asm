; Explicit file bytes raw 00E9D9..00E9E0.
%macro emit_file_data_0101_00e9d9 0
    %%chunk_start:
    db 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90 ; raw 00E9D9 |.......|
    %if ($ - %%chunk_start) != 7
        %error "data chunk size drift: 00E9D9"
    %endif
%endmacro
