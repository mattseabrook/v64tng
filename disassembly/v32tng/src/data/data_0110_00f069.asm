; Explicit file bytes raw 00F069..00F070.
%macro emit_file_data_0110_00f069 0
    %%chunk_start:
    db 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90 ; raw 00F069 |.......|
    %if ($ - %%chunk_start) != 7
        %error "data chunk size drift: 00F069"
    %endif
%endmacro
