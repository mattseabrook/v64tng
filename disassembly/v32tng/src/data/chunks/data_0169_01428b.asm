; Explicit file bytes raw 01428B..014290.
%macro emit_file_data_0169_01428b 0
    %%chunk_start:
    db 0x90, 0x90, 0x90, 0x90, 0x90 ; raw 01428B |.....|
    %if ($ - %%chunk_start) != 5
        %error "data chunk size drift: 01428B"
    %endif
%endmacro
