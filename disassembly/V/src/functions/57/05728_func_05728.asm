; Linear entry 05728 (1000:5728)
; Ghidra working symbol: FUN_1000_5728
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_05728_part_00 0
    %%fragment_start:
func_05728:
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
