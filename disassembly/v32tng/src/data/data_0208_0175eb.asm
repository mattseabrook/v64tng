; Explicit file bytes raw 0175EB..0175F8.
%macro emit_file_data_0208_0175eb 0
    %%chunk_start:
    db 0x90, 0xF8, 0x81, 0x41, 0x00, 0x18, 0x82, 0x41, 0x00, 0x40, 0x82, 0x41, 0x00 ; raw 0175EB |...A...A.@.A.|
    %if ($ - %%chunk_start) != 13
        %error "data chunk size drift: 0175EB"
    %endif
%endmacro
