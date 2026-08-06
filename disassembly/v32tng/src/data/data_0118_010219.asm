; Explicit file bytes raw 010219..010220.
%macro emit_file_data_0118_010219 0
    %%chunk_start:
    db 0x90, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90 ; raw 010219 |.......|
    %if ($ - %%chunk_start) != 7
        %error "data chunk size drift: 010219"
    %endif
%endmacro
