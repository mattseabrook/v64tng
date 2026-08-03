; Explicit file bytes raw 010702..010710.
%macro emit_file_data_0126_010702 0
    %%chunk_start:
    db 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90 ; raw 010702 |..............|
    %if ($ - %%chunk_start) != 14
        %error "data chunk size drift: 010702"
    %endif
%endmacro
