; Explicit file bytes raw 0176F7..0176F8.
%macro emit_file_data_0213_0176f7 0
    %%chunk_start:
    db 0x90 ; raw 0176F7 |.|
    %if ($ - %%chunk_start) != 1
        %error "data chunk size drift: 0176F7"
    %endif
%endmacro
