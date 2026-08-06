; Explicit file bytes raw 010655..010660.
%macro emit_file_data_0124_010655 0
    %%chunk_start:
    db 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90 ; raw 010655 |...........|
    %if ($ - %%chunk_start) != 11
        %error "data chunk size drift: 010655"
    %endif
%endmacro
