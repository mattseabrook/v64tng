; PE virtual entry 00410E10
; Ghidra working symbol: FUN_00410e10
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00410e10_part_00 0
    %%fragment_start:
func_00410e10:
    %%insn_00410e10:
    call 0x4127d0 ; 00410E10 E8BB190000
    %if ($ - %%insn_00410e10) > 5
        %error "LONG_00410E10"
    %endif
    times 5 - ($ - %%insn_00410e10) db 0
    %%insn_00410e15:
    add eax,0x8 ; 00410E15 83C008
    %if ($ - %%insn_00410e15) > 3
        %error "LONG_00410E15"
    %endif
    times 3 - ($ - %%insn_00410e15) db 0
    %%insn_00410e18:
    ret ; 00410E18 C3
    %if ($ - %%insn_00410e18) > 1
        %error "LONG_00410E18"
    %endif
    times 1 - ($ - %%insn_00410e18) db 0
    %if ($ - %%fragment_start) != 9
        %error "function fragment size drift: 00410E10"
    %endif
%endmacro
