; Explicit file bytes raw 004278..004280.
%macro emit_file_data_0002_004278 0
    %%chunk_start:
    db 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC ; raw 004278 |........|
    %if ($ - %%chunk_start) != 8
        %error "data chunk size drift: 004278"
    %endif
%endmacro
