; Explicit file bytes raw 012228..012230.
%macro emit_file_data_0151_012228 0
    %%chunk_start:
    db 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC, 0xCC ; raw 012228 |........|
    %if ($ - %%chunk_start) != 8
        %error "data chunk size drift: 012228"
    %endif
%endmacro
