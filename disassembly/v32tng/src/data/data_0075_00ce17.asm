; Explicit file bytes raw 00CE17..00CE18.
%macro emit_file_data_0075_00ce17 0
    %%chunk_start:
    db 0xCC ; raw 00CE17 |.|
    %if ($ - %%chunk_start) != 1
        %error "data chunk size drift: 00CE17"
    %endif
%endmacro
