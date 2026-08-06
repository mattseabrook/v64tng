; Explicit file bytes raw 01419F..0141A0.
%macro emit_file_data_0167_01419f 0
    %%chunk_start:
    db 0x90 ; raw 01419F |.|
    %if ($ - %%chunk_start) != 1
        %error "data chunk size drift: 01419F"
    %endif
%endmacro
