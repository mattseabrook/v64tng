; Explicit file bytes raw 00BE6B..00BE6C.
%macro emit_file_data_0023_00be6b 0
    %%chunk_start:
    db 0x90 ; raw 00BE6B |.|
    %if ($ - %%chunk_start) != 1
        %error "data chunk size drift: 00BE6B"
    %endif
%endmacro
