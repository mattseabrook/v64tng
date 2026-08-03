; Explicit file bytes raw 01755F..017560.
%macro emit_file_data_0202_01755f 0
    %%chunk_start:
    db 0x90 ; raw 01755F |.|
    %if ($ - %%chunk_start) != 1
        %error "data chunk size drift: 01755F"
    %endif
%endmacro
