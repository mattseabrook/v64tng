; Explicit file bytes raw 00CCE3..00CCE4.
%macro emit_file_data_0070_00cce3 0
    %%chunk_start:
    db 0x90 ; raw 00CCE3 |.|
    %if ($ - %%chunk_start) != 1
        %error "data chunk size drift: 00CCE3"
    %endif
%endmacro
