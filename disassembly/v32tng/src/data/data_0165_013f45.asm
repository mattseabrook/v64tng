; Explicit file bytes raw 013F45..013F50.
%macro emit_file_data_0165_013f45 0
    %%chunk_start:
    db 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90 ; raw 013F45 |...........|
    %if ($ - %%chunk_start) != 11
        %error "data chunk size drift: 013F45"
    %endif
%endmacro
