; Explicit file bytes raw 00C2C8..00C2D0.
%macro emit_file_data_0048_00c2c8 0
    %%chunk_start:
    db 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC ; raw 00C2C8 |........|
    %if ($ - %%chunk_start) != 8
        %error "data chunk size drift: 00C2C8"
    %endif
%endmacro
