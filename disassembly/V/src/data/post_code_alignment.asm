; Verified four-byte alignment between the final native function and DS:0000.
%macro emit_post_code_alignment 0
    %%range_start:
    times 4 db 0
    %if ($ - %%range_start) != 4
        %error "post-code alignment size drift"
    %endif
%endmacro
