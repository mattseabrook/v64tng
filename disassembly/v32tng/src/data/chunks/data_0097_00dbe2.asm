; Explicit file bytes raw 00DBE2..00DBF0.
%macro emit_file_data_0097_00dbe2 0
    %%chunk_start:
    db 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90 ; raw 00DBE2 |..............|
    %if ($ - %%chunk_start) != 14
        %error "data chunk size drift: 00DBE2"
    %endif
%endmacro
