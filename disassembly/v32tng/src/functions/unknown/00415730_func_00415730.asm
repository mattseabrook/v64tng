; PE virtual entry 00415730
; Ghidra working symbol: FUN_00415730
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00415730_part_00 0
    %%fragment_start:
func_00415730:
    %%insn_00415730:
    push dword 0x2 ; 00415730 6A02
    %if ($ - %%insn_00415730) > 2
        %error "LONG_00415730"
    %endif
    times 2 - ($ - %%insn_00415730) db 0
    %%insn_00415732:
    call 0x40dda0 ; 00415732 E86986FFFF
    %if ($ - %%insn_00415732) > 5
        %error "LONG_00415732"
    %endif
    times 5 - ($ - %%insn_00415732) db 0
    %%insn_00415737:
    add esp,0x4 ; 00415737 83C404
    %if ($ - %%insn_00415737) > 3
        %error "LONG_00415737"
    %endif
    times 3 - ($ - %%insn_00415737) db 0
    %%insn_0041573a:
    ret ; 0041573A C3
    %if ($ - %%insn_0041573a) > 1
        %error "LONG_0041573A"
    %endif
    times 1 - ($ - %%insn_0041573a) db 0
    %if ($ - %%fragment_start) != 11
        %error "function fragment size drift: 00415730"
    %endif
%endmacro
