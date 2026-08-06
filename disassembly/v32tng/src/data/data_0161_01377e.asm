; Explicit file bytes raw 01377E..013780.
%macro emit_file_data_0161_01377e 0
    %%chunk_start:
    db 0xCC, 0xCC ; raw 01377E |..|
    %if ($ - %%chunk_start) != 2
        %error "data chunk size drift: 01377E"
    %endif
%endmacro
