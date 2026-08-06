; Explicit file bytes raw 013F07..013F10.
%macro emit_file_data_0164_013f07 0
    %%chunk_start:
    db 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90 ; raw 013F07 |.........|
    %if ($ - %%chunk_start) != 9
        %error "data chunk size drift: 013F07"
    %endif
%endmacro
