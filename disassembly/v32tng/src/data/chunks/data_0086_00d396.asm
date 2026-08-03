; Explicit file bytes raw 00D396..00D3A0.
%macro emit_file_data_0086_00d396 0
    %%chunk_start:
    db 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90 ; raw 00D396 |..........|
    %if ($ - %%chunk_start) != 10
        %error "data chunk size drift: 00D396"
    %endif
%endmacro
