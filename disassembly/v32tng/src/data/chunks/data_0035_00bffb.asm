; Explicit file bytes raw 00BFFB..00C008.
%macro emit_file_data_0035_00bffb 0
    %%chunk_start:
    db 0x90, 0x08, 0xCC, 0x40, 0x00, 0x28, 0xCC, 0x40, 0x00, 0x50, 0xCC, 0x40, 0x00 ; raw 00BFFB |...@.(.@.P.@.|
    %if ($ - %%chunk_start) != 13
        %error "data chunk size drift: 00BFFB"
    %endif
%endmacro
