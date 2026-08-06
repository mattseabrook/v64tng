; Explicit file bytes raw 00CBAA..00CBB0.
%macro emit_file_data_0068_00cbaa 0
    %%chunk_start:
    db 0x90, 0x90, 0x90, 0x90, 0x90, 0x90 ; raw 00CBAA |......|
    %if ($ - %%chunk_start) != 6
        %error "data chunk size drift: 00CBAA"
    %endif
%endmacro
