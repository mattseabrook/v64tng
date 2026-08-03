; Explicit file bytes raw 016C44..016C50.
%macro emit_file_data_0192_016c44 0
    %%chunk_start:
    db 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90 ; raw 016C44 |............|
    %if ($ - %%chunk_start) != 12
        %error "data chunk size drift: 016C44"
    %endif
%endmacro
