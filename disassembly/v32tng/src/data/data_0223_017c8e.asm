; Explicit file bytes raw 017C8E..017C90.
%macro emit_file_data_0223_017c8e 0
    %%chunk_start:
    db 0x90, 0x90 ; raw 017C8E |..|
    %if ($ - %%chunk_start) != 2
        %error "data chunk size drift: 017C8E"
    %endif
%endmacro
