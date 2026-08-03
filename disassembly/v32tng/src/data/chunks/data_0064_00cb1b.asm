; Explicit file bytes raw 00CB1B..00CB20.
%macro emit_file_data_0064_00cb1b 0
    %%chunk_start:
    db 0x90, 0x90, 0x90, 0x90, 0x90 ; raw 00CB1B |.....|
    %if ($ - %%chunk_start) != 5
        %error "data chunk size drift: 00CB1B"
    %endif
%endmacro
