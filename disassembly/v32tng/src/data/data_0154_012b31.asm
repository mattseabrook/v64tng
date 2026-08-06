; Explicit file bytes raw 012B31..012B40.
%macro emit_file_data_0154_012b31 0
    %%chunk_start:
    db 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90 ; raw 012B31 |...............|
    %if ($ - %%chunk_start) != 15
        %error "data chunk size drift: 012B31"
    %endif
%endmacro
