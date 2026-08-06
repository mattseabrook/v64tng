; Explicit file bytes raw 00C12B..00C12C.
%macro emit_file_data_0042_00c12b 0
    %%chunk_start:
    db 0x90 ; raw 00C12B |.|
    %if ($ - %%chunk_start) != 1
        %error "data chunk size drift: 00C12B"
    %endif
%endmacro
