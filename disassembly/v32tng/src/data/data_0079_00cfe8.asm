; Explicit file bytes raw 00CFE8..00CFF0.
%macro emit_file_data_0079_00cfe8 0
    %%chunk_start:
    db 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC ; raw 00CFE8 |........|
    %if ($ - %%chunk_start) != 8
        %error "data chunk size drift: 00CFE8"
    %endif
%endmacro
