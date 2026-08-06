; Explicit file bytes raw 00F319..00F320.
%macro emit_file_data_0112_00f319 0
    %%chunk_start:
    db 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90 ; raw 00F319 |.......|
    %if ($ - %%chunk_start) != 7
        %error "data chunk size drift: 00F319"
    %endif
%endmacro
