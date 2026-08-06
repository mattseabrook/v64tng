; Explicit file bytes raw 00EA31..00EA40.
%macro emit_file_data_0103_00ea31 0
    %%chunk_start:
    db 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90 ; raw 00EA31 |...............|
    %if ($ - %%chunk_start) != 15
        %error "data chunk size drift: 00EA31"
    %endif
%endmacro
