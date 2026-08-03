; Explicit file bytes raw 00D69B..00D6A0.
%macro emit_file_data_0092_00d69b 0
    %%chunk_start:
    db 0x90, 0x90, 0x90, 0x90, 0x90 ; raw 00D69B |.....|
    %if ($ - %%chunk_start) != 5
        %error "data chunk size drift: 00D69B"
    %endif
%endmacro
