; Explicit file bytes raw 01213C..012140.
%macro emit_file_data_0149_01213c 0
    %%chunk_start:
    db 0x90, 0x90, 0x90, 0x90 ; raw 01213C |....|
    %if ($ - %%chunk_start) != 4
        %error "data chunk size drift: 01213C"
    %endif
%endmacro
