; Explicit file bytes raw 00CB2B..00CB30.
%macro emit_file_data_0065_00cb2b 0
    %%chunk_start:
    db 0x90, 0x90, 0x90, 0x90, 0x90 ; raw 00CB2B |.....|
    %if ($ - %%chunk_start) != 5
        %error "data chunk size drift: 00CB2B"
    %endif
%endmacro
