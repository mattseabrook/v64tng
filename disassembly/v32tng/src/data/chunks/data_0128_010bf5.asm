; Explicit file bytes raw 010BF5..010C00.
%macro emit_file_data_0128_010bf5 0
    %%chunk_start:
    db 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90 ; raw 010BF5 |...........|
    %if ($ - %%chunk_start) != 11
        %error "data chunk size drift: 010BF5"
    %endif
%endmacro
