; Explicit file bytes raw 014927..014930.
%macro emit_file_data_0173_014927 0
    %%chunk_start:
    db 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90 ; raw 014927 |.........|
    %if ($ - %%chunk_start) != 9
        %error "data chunk size drift: 014927"
    %endif
%endmacro
