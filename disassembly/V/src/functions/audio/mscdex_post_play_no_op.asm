; Linear entry 05728 (1000:5728)
; Ghidra working symbol: FUN_1000_5728
; Verified role; provisional analyzer boundaries retained.
; Contract: Return without changing state.
; Cross-reference: Single RET called after the 055FCh play request. Its no-op behavior is verified; no intended missing hardware action is claimed.
; Original byte identity is enforced by this project’s build.sh.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_mscdex_post_play_no_op_part_00 0
    %%fragment_start:
mscdex_post_play_no_op:
    %%insn_05728:
    ret ; 05728 C3
    %if ($ - %%insn_05728) > 1
        %error "LONG_05728"
    %endif
    times 1 - ($ - %%insn_05728) db 0
    %if ($ - %%fragment_start) != 1
        %error "SIZE_05728"
    %endif
%endmacro
