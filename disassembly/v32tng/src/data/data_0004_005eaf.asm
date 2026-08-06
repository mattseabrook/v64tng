; Explicit file bytes raw 005EAF..005EB0.
%macro emit_file_data_0004_005eaf 0
    %%chunk_start:
    db 0xCC ; raw 005EAF |.|
    %if ($ - %%chunk_start) != 1
        %error "data chunk size drift: 005EAF"
    %endif
%endmacro
