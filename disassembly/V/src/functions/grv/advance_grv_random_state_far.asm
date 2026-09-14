; Linear entry 04327 (1000:4327)
; Ghidra working symbol: FUN_1000_4327
; Verified role; evidence:
; Far-call adapter: calls the state update at 042F1h and returns with RETF. Register/result
; contract is inherited from that routine.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_advance_grv_random_state_far_part_00 0
    %%fragment_start:
advance_grv_random_state_far:
    %%insn_04327:
    call advance_grv_random_state ; 04327 E8C7FF
    %if ($ - %%insn_04327) > 3
        %error "LONG_04327"
    %endif
    times 3 - ($ - %%insn_04327) db 0
    %%insn_0432a:
    retf ; 0432A CB
    %if ($ - %%insn_0432a) > 1
        %error "LONG_0432A"
    %endif
    times 1 - ($ - %%insn_0432a) db 0
    %if ($ - %%fragment_start) != 4
        %error "SIZE_04327"
    %endif
%endmacro
