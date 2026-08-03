; Explicit file bytes raw 011BC3..011BD0.
%macro emit_file_data_0143_011bc3 0
    %%chunk_start:
    db 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90 ; raw 011BC3 |.............|
    %if ($ - %%chunk_start) != 13
        %error "data chunk size drift: 011BC3"
    %endif
%endmacro
