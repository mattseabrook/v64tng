; Linear entry 05729 (1000:5729)
; Ghidra working symbol: FUN_1000_5729
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_05729_part_00 0
    %%fragment_start:
func_05729:
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
