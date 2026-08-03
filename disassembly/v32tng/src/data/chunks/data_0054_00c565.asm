; Explicit file bytes raw 00C565..00C570.
%macro emit_file_data_0054_00c565 0
    %%chunk_start:
    db 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90 ; raw 00C565 |...........|
    %if ($ - %%chunk_start) != 11
        %error "data chunk size drift: 00C565"
    %endif
%endmacro
