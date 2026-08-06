; Explicit file bytes raw 011A6D..011A70.
%macro emit_file_data_0138_011a6d 0
    %%chunk_start:
    db 0x90, 0x90, 0x90 ; raw 011A6D |...|
    %if ($ - %%chunk_start) != 3
        %error "data chunk size drift: 011A6D"
    %endif
%endmacro
