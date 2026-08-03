; Explicit file bytes raw 00CDE9..00CDF0.
%macro emit_file_data_0074_00cde9 0
    %%chunk_start:
    db 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90 ; raw 00CDE9 |.......|
    %if ($ - %%chunk_start) != 7
        %error "data chunk size drift: 00CDE9"
    %endif
%endmacro
