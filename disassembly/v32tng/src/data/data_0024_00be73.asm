; Explicit file bytes raw 00BE73..00BE80.
%macro emit_file_data_0024_00be73 0
    %%chunk_start:
    db 0x90, 0x80, 0xCA, 0x40, 0x00, 0xAC, 0xCA, 0x40, 0x00, 0xD0, 0xCA, 0x40, 0x00 ; raw 00BE73 |...@...@...@.|
    %if ($ - %%chunk_start) != 13
        %error "data chunk size drift: 00BE73"
    %endif
%endmacro
