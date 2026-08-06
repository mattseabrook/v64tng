; Explicit file bytes raw 00C506..00C510.
%macro emit_file_data_0052_00c506 0
    %%chunk_start:
    db 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90 ; raw 00C506 |..........|
    %if ($ - %%chunk_start) != 10
        %error "data chunk size drift: 00C506"
    %endif
%endmacro
