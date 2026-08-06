; Explicit file bytes raw 00F40F..00F410.
%macro emit_file_data_0113_00f40f 0
    %%chunk_start:
    db 0x90 ; raw 00F40F |.|
    %if ($ - %%chunk_start) != 1
        %error "data chunk size drift: 00F40F"
    %endif
%endmacro
