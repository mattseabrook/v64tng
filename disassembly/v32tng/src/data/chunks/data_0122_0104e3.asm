; Explicit file bytes raw 0104E3..0104F0.
%macro emit_file_data_0122_0104e3 0
    %%chunk_start:
    db 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90 ; raw 0104E3 |.............|
    %if ($ - %%chunk_start) != 13
        %error "data chunk size drift: 0104E3"
    %endif
%endmacro
