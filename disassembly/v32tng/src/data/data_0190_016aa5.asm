; Explicit file bytes raw 016AA5..016AB0.
%macro emit_file_data_0190_016aa5 0
    %%chunk_start:
    db 0x2E, 0x8B, 0xC0, 0x2E, 0x8B, 0xC0, 0x2E, 0x8B, 0xC0, 0x8B, 0xC0 ; raw 016AA5 |...........|
    %if ($ - %%chunk_start) != 11
        %error "data chunk size drift: 016AA5"
    %endif
%endmacro
