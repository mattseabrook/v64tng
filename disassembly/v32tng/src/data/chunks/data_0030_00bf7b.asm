; Explicit file bytes raw 00BF7B..00BF7C.
%macro emit_file_data_0030_00bf7b 0
    %%chunk_start:
    db 0x90 ; raw 00BF7B |.|
    %if ($ - %%chunk_start) != 1
        %error "data chunk size drift: 00BF7B"
    %endif
%endmacro
