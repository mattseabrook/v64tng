; Explicit file bytes raw 01598D..015990.
%macro emit_file_data_0180_01598d 0
    %%chunk_start:
    db 0x90, 0x90, 0x90 ; raw 01598D |...|
    %if ($ - %%chunk_start) != 3
        %error "data chunk size drift: 01598D"
    %endif
%endmacro
