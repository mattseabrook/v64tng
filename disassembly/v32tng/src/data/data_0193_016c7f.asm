; Explicit file bytes raw 016C7F..016C80.
%macro emit_file_data_0193_016c7f 0
    %%chunk_start:
    db 0xCC ; raw 016C7F |.|
    %if ($ - %%chunk_start) != 1
        %error "data chunk size drift: 016C7F"
    %endif
%endmacro
