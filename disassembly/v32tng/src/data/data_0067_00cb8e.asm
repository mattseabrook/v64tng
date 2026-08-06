; Explicit file bytes raw 00CB8E..00CB90.
%macro emit_file_data_0067_00cb8e 0
    %%chunk_start:
    db 0x90, 0x90 ; raw 00CB8E |..|
    %if ($ - %%chunk_start) != 2
        %error "data chunk size drift: 00CB8E"
    %endif
%endmacro
