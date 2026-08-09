; Unresolved initialized DOS runtime word, load-image offsets 17C2E..17C2F.
%macro emit_unresolved_initialized_word 0
    %%range_start:
    db 0xC8, 0xC8 ; 17C2E |..|
    %if ($ - %%range_start) != 0x2
        %error "unresolved initialized word size drift"
    %endif
%endmacro
