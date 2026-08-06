; Explicit file bytes raw 00BF6F..00BF70.
%macro emit_file_data_0029_00bf6f 0
    %%chunk_start:
    db 0x90 ; raw 00BF6F |.|
    %if ($ - %%chunk_start) != 1
        %error "data chunk size drift: 00BF6F"
    %endif
%endmacro
