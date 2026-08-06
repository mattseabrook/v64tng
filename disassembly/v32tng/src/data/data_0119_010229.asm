; Explicit file bytes raw 010229..010230.
%macro emit_file_data_0119_010229 0
    %%chunk_start:
    db 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90 ; raw 010229 |.......|
    %if ($ - %%chunk_start) != 7
        %error "data chunk size drift: 010229"
    %endif
%endmacro
