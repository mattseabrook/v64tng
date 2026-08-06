; Linear entry 0358A (1000:358a)
; Ghidra working symbol: FUN_1000_358a
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_0358a_part_00 0
    %%fragment_start:
func_0358a:
    %%insn_0358a:
    mov ax,0x3 ; 0358A B80300
    %if ($ - %%insn_0358a) > 3
        %error "LONG_0358A"
    %endif
    times 3 - ($ - %%insn_0358a) db 0
    %%insn_0358d:
    int byte 0x10 ; 0358D CD10
    %if ($ - %%insn_0358d) > 2
        %error "LONG_0358D"
    %endif
    times 2 - ($ - %%insn_0358d) db 0
    %%insn_0358f:
    ret ; 0358F C3
    %if ($ - %%insn_0358f) > 1
        %error "LONG_0358F"
    %endif
    times 1 - ($ - %%insn_0358f) db 0
    %if ($ - %%fragment_start) != 6
        %error "SIZE_0358A"
    %endif
%endmacro
