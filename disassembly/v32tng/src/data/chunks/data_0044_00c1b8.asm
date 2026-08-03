; Explicit file bytes raw 00C1B8..00C1C0.
%macro emit_file_data_0044_00c1b8 0
    %%chunk_start:
    db 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90 ; raw 00C1B8 |........|
    %if ($ - %%chunk_start) != 8
        %error "data chunk size drift: 00C1B8"
    %endif
%endmacro
