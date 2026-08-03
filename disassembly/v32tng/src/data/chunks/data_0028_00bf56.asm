; Explicit file bytes raw 00BF56..00BF68.
%macro emit_file_data_0028_00bf56 0
    %%chunk_start:
    db 0x8B, 0xC0, 0x68, 0xCB, 0x40, 0x00, 0x70, 0xCB, 0x40, 0x00, 0x7C, 0xCB, 0x40, 0x00, 0x90, 0xCB ; raw 00BF56 |..h.@.p.@.|.@...|
    db 0x40, 0x00 ; raw 00BF66 |@.|
    %if ($ - %%chunk_start) != 18
        %error "data chunk size drift: 00BF56"
    %endif
%endmacro
