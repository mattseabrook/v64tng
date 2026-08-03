; Explicit file bytes raw 011A1B..011A20.
%macro emit_file_data_0137_011a1b 0
    %%chunk_start:
    db 0x90, 0x90, 0x90, 0x90, 0x90 ; raw 011A1B |.....|
    %if ($ - %%chunk_start) != 5
        %error "data chunk size drift: 011A1B"
    %endif
%endmacro
