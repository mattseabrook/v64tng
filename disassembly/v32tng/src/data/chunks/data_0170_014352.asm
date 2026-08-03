; Explicit file bytes raw 014352..014360.
%macro emit_file_data_0170_014352 0
    %%chunk_start:
    db 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90 ; raw 014352 |..............|
    %if ($ - %%chunk_start) != 14
        %error "data chunk size drift: 014352"
    %endif
%endmacro
