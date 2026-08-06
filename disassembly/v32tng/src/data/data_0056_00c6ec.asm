; Explicit file bytes raw 00C6EC..00C6F0.
%macro emit_file_data_0056_00c6ec 0
    %%chunk_start:
    db 0x90, 0x90, 0x90, 0x90 ; raw 00C6EC |....|
    %if ($ - %%chunk_start) != 4
        %error "data chunk size drift: 00C6EC"
    %endif
%endmacro
