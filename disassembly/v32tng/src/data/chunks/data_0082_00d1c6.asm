; Explicit file bytes raw 00D1C6..00D1D0.
%macro emit_file_data_0082_00d1c6 0
    %%chunk_start:
    db 0x83, 0xC4, 0x04, 0xC3, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90 ; raw 00D1C6 |..........|
    %if ($ - %%chunk_start) != 10
        %error "data chunk size drift: 00D1C6"
    %endif
%endmacro
