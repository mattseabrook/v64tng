; Explicit file bytes raw 01128E..011290.
%macro emit_file_data_0134_01128e 0
    %%chunk_start:
    db 0x90, 0x90 ; raw 01128E |..|
    %if ($ - %%chunk_start) != 2
        %error "data chunk size drift: 01128E"
    %endif
%endmacro
