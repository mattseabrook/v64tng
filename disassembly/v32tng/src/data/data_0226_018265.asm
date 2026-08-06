; Explicit file bytes raw 018265..018270.
%macro emit_file_data_0226_018265 0
    %%chunk_start:
    db 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90 ; raw 018265 |...........|
    %if ($ - %%chunk_start) != 11
        %error "data chunk size drift: 018265"
    %endif
%endmacro
