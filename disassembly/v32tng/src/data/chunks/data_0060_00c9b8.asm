; Explicit file bytes raw 00C9B8..00C9C0.
%macro emit_file_data_0060_00c9b8 0
    %%chunk_start:
    db 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90 ; raw 00C9B8 |........|
    %if ($ - %%chunk_start) != 8
        %error "data chunk size drift: 00C9B8"
    %endif
%endmacro
