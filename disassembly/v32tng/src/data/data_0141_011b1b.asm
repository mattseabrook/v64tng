; Explicit file bytes raw 011B1B..011B20.
%macro emit_file_data_0141_011b1b 0
    %%chunk_start:
    db 0x90, 0x90, 0x90, 0x90, 0x90 ; raw 011B1B |.....|
    %if ($ - %%chunk_start) != 5
        %error "data chunk size drift: 011B1B"
    %endif
%endmacro
