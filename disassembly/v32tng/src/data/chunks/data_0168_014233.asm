; Explicit file bytes raw 014233..014240.
%macro emit_file_data_0168_014233 0
    %%chunk_start:
    db 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90 ; raw 014233 |.............|
    %if ($ - %%chunk_start) != 13
        %error "data chunk size drift: 014233"
    %endif
%endmacro
