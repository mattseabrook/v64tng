; Explicit file bytes raw 017B8A..017B90.
%macro emit_file_data_0221_017b8a 0
    %%chunk_start:
    db 0x90, 0x90, 0x90, 0x90, 0x90, 0x90 ; raw 017B8A |......|
    %if ($ - %%chunk_start) != 6
        %error "data chunk size drift: 017B8A"
    %endif
%endmacro
