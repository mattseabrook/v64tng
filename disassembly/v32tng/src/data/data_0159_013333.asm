; Explicit file bytes raw 013333..013340.
%macro emit_file_data_0159_013333 0
    %%chunk_start:
    db 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90 ; raw 013333 |.............|
    %if ($ - %%chunk_start) != 13
        %error "data chunk size drift: 013333"
    %endif
%endmacro
