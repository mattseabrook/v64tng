; Explicit file bytes raw 01757D..017580.
%macro emit_file_data_0204_01757d 0
    %%chunk_start:
    db 0x2E, 0x8B, 0xC0 ; raw 01757D |...|
    %if ($ - %%chunk_start) != 3
        %error "data chunk size drift: 01757D"
    %endif
%endmacro
