; Explicit file bytes raw 0149FB..014A00.
%macro emit_file_data_0175_0149fb 0
    %%chunk_start:
    db 0x90, 0x90, 0x90, 0x90, 0x90 ; raw 0149FB |.....|
    %if ($ - %%chunk_start) != 5
        %error "data chunk size drift: 0149FB"
    %endif
%endmacro
