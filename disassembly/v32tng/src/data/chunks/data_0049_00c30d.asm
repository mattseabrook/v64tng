; Explicit file bytes raw 00C30D..00C310.
%macro emit_file_data_0049_00c30d 0
    %%chunk_start:
    db 0x90, 0x90, 0x90 ; raw 00C30D |...|
    %if ($ - %%chunk_start) != 3
        %error "data chunk size drift: 00C30D"
    %endif
%endmacro
