; Explicit file bytes raw 00EE52..00EE60.
%macro emit_file_data_0109_00ee52 0
    %%chunk_start:
    db 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90 ; raw 00EE52 |..............|
    %if ($ - %%chunk_start) != 14
        %error "data chunk size drift: 00EE52"
    %endif
%endmacro
