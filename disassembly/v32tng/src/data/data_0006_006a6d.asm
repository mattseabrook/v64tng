; Explicit file bytes raw 006A6D..006A70.
%macro emit_file_data_0006_006a6d 0
    %%chunk_start:
    db 0xCC, 0xCC, 0xCC ; raw 006A6D |...|
    %if ($ - %%chunk_start) != 3
        %error "data chunk size drift: 006A6D"
    %endif
%endmacro
