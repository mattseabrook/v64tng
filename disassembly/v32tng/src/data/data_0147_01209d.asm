; Explicit file bytes raw 01209D..0120A0.
%macro emit_file_data_0147_01209d 0
    %%chunk_start:
    db 0x90, 0x90, 0x90 ; raw 01209D |...|
    %if ($ - %%chunk_start) != 3
        %error "data chunk size drift: 01209D"
    %endif
%endmacro
