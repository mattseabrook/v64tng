; Explicit file bytes raw 00832E..008330.
%macro emit_file_data_0010_00832e 0
    %%chunk_start:
    db 0xCC, 0xCC ; raw 00832E |..|
    %if ($ - %%chunk_start) != 2
        %error "data chunk size drift: 00832E"
    %endif
%endmacro
