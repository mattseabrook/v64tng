; Explicit file bytes raw 0132FB..013300.
%macro emit_file_data_0158_0132fb 0
    %%chunk_start:
    db 0x90, 0x90, 0x90, 0x90, 0x90 ; raw 0132FB |.....|
    %if ($ - %%chunk_start) != 5
        %error "data chunk size drift: 0132FB"
    %endif
%endmacro
