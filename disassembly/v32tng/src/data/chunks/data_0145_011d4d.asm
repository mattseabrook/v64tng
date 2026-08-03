; Explicit file bytes raw 011D4D..011D50.
%macro emit_file_data_0145_011d4d 0
    %%chunk_start:
    db 0x90, 0x90, 0x90 ; raw 011D4D |...|
    %if ($ - %%chunk_start) != 3
        %error "data chunk size drift: 011D4D"
    %endif
%endmacro
