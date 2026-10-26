; Linear entry 05729 (1000:5729)
; Ghidra working symbol: FUN_1000_5729
; Verified role; provisional analyzer boundaries retained.
; Contract: Return without changing state.
; Cross-reference: Single RET used by the 62h branch before stop_mscdex_audio. Its no-op behavior is verified; no intended missing hardware action is claimed.
; Original byte identity is enforced by this project’s build.sh.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_mscdex_pre_stop_no_op_part_00 0
    %%fragment_start:
mscdex_pre_stop_no_op:
    %%insn_05729:
    ret ; 05729 C3
    %if ($ - %%insn_05729) > 1
        %error "LONG_05729"
    %endif
    times 1 - ($ - %%insn_05729) db 0
    %if ($ - %%fragment_start) != 1
        %error "SIZE_05729"
    %endif
%endmacro
