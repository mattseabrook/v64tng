; Explicit file bytes raw 00BFA7..00BFA8.
%macro emit_file_data_0032_00bfa7 0
    %%chunk_start:
    db 0x90 ; raw 00BFA7 |.|
    %if ($ - %%chunk_start) != 1
        %error "data chunk size drift: 00BFA7"
    %endif
%endmacro
