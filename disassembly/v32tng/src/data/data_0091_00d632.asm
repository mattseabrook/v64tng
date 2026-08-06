; Explicit file bytes raw 00D632..00D640.
%macro emit_file_data_0091_00d632 0
    %%chunk_start:
    db 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90 ; raw 00D632 |..............|
    %if ($ - %%chunk_start) != 14
        %error "data chunk size drift: 00D632"
    %endif
%endmacro
