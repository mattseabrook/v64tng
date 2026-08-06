; Explicit file bytes raw 00D3D6..00D3E0.
%macro emit_file_data_0087_00d3d6 0
    %%chunk_start:
    db 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90 ; raw 00D3D6 |..........|
    %if ($ - %%chunk_start) != 10
        %error "data chunk size drift: 00D3D6"
    %endif
%endmacro
