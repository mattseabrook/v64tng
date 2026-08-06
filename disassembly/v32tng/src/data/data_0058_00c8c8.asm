; Explicit file bytes raw 00C8C8..00C8D0.
%macro emit_file_data_0058_00c8c8 0
    %%chunk_start:
    db 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC ; raw 00C8C8 |........|
    %if ($ - %%chunk_start) != 8
        %error "data chunk size drift: 00C8C8"
    %endif
%endmacro
