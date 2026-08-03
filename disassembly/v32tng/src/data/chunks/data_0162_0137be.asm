; Explicit file bytes raw 0137BE..0137C0.
%macro emit_file_data_0162_0137be 0
    %%chunk_start:
    db 0xCC, 0xCC ; raw 0137BE |..|
    %if ($ - %%chunk_start) != 2
        %error "data chunk size drift: 0137BE"
    %endif
%endmacro
