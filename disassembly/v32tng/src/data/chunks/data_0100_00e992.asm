; Explicit file bytes raw 00E992..00E9A0.
%macro emit_file_data_0100_00e992 0
    %%chunk_start:
    db 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90 ; raw 00E992 |..............|
    %if ($ - %%chunk_start) != 14
        %error "data chunk size drift: 00E992"
    %endif
%endmacro
