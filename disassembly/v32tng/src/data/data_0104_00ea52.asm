; Explicit file bytes raw 00EA52..00EA60.
%macro emit_file_data_0104_00ea52 0
    %%chunk_start:
    db 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90 ; raw 00EA52 |..............|
    %if ($ - %%chunk_start) != 14
        %error "data chunk size drift: 00EA52"
    %endif
%endmacro
