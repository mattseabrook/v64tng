; Explicit file bytes raw 00C107..00C108.
%macro emit_file_data_0040_00c107 0
    %%chunk_start:
    db 0x90 ; raw 00C107 |.|
    %if ($ - %%chunk_start) != 1
        %error "data chunk size drift: 00C107"
    %endif
%endmacro
