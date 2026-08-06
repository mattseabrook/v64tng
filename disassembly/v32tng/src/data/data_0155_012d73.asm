; Explicit file bytes raw 012D73..012D80.
%macro emit_file_data_0155_012d73 0
    %%chunk_start:
    db 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90 ; raw 012D73 |.............|
    %if ($ - %%chunk_start) != 13
        %error "data chunk size drift: 012D73"
    %endif
%endmacro
