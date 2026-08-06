; Explicit file bytes raw 01416C..014170.
%macro emit_file_data_0166_01416c 0
    %%chunk_start:
    db 0x90, 0x90, 0x90, 0x90 ; raw 01416C |....|
    %if ($ - %%chunk_start) != 4
        %error "data chunk size drift: 01416C"
    %endif
%endmacro
