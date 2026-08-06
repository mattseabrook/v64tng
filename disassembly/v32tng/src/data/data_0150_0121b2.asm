; Explicit file bytes raw 0121B2..0121C0.
%macro emit_file_data_0150_0121b2 0
    %%chunk_start:
    db 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90 ; raw 0121B2 |..............|
    %if ($ - %%chunk_start) != 14
        %error "data chunk size drift: 0121B2"
    %endif
%endmacro
