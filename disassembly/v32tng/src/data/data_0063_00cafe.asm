; Explicit file bytes raw 00CAFE..00CB10.
%macro emit_file_data_0063_00cafe 0
    %%chunk_start:
    db 0x5E, 0x5D, 0x5B, 0xC3, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90 ; raw 00CAFE |^][.............|
    db 0x90, 0x90 ; raw 00CB0E |..|
    %if ($ - %%chunk_start) != 18
        %error "data chunk size drift: 00CAFE"
    %endif
%endmacro
