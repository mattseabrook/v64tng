; Linear entry 04001 (1000:4001)
; Ghidra working symbol: FUN_1000_4001
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_04001_part_00 0
    %%fragment_start:
func_04001:
    %%insn_04001:
    mov si,[si] ; 04001 8B34
    %if ($ - %%insn_04001) > 2
        %error "LONG_04001"
    %endif
    times 2 - ($ - %%insn_04001) db 0
    %%insn_04003:
    ret ; 04003 C3
    %if ($ - %%insn_04003) > 1
        %error "LONG_04003"
    %endif
    times 1 - ($ - %%insn_04003) db 0
    %if ($ - %%fragment_start) != 3
        %error "SIZE_04001"
    %endif
%endmacro
