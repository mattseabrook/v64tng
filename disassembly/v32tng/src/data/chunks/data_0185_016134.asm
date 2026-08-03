; Explicit file bytes raw 016134..016140.
%macro emit_file_data_0185_016134 0
    %%chunk_start:
    db 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90 ; raw 016134 |............|
    %if ($ - %%chunk_start) != 12
        %error "data chunk size drift: 016134"
    %endif
%endmacro
