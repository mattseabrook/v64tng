; Explicit file bytes raw 00C04F..00C050.
%macro emit_file_data_0037_00c04f 0
    %%chunk_start:
    db 0x90 ; raw 00C04F |.|
    %if ($ - %%chunk_start) != 1
        %error "data chunk size drift: 00C04F"
    %endif
%endmacro
