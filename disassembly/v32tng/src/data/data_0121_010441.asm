; Explicit file bytes raw 010441..010450.
%macro emit_file_data_0121_010441 0
    %%chunk_start:
    db 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90 ; raw 010441 |...............|
    %if ($ - %%chunk_start) != 15
        %error "data chunk size drift: 010441"
    %endif
%endmacro
