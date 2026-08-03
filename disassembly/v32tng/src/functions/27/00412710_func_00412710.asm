; PE virtual entry 00412710
; Ghidra working symbol: FUN_00412710
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00412710_part_00 0
    %%fragment_start:
func_00412710:
    %%insn_00412710:
    push dword 0xfffffffffffffffd ; 00412710 6AFD
    %if ($ - %%insn_00412710) > 2
        %error "LONG_00412710"
    %endif
    times 2 - ($ - %%insn_00412710) db 0
    %%insn_00412712:
    call 0x412400 ; 00412712 E8E9FCFFFF
    %if ($ - %%insn_00412712) > 5
        %error "LONG_00412712"
    %endif
    times 5 - ($ - %%insn_00412712) db 0
    %%insn_00412717:
    add esp,0x4 ; 00412717 83C404
    %if ($ - %%insn_00412717) > 3
        %error "LONG_00412717"
    %endif
    times 3 - ($ - %%insn_00412717) db 0
    %%insn_0041271a:
    ret ; 0041271A C3
    %if ($ - %%insn_0041271a) > 1
        %error "LONG_0041271A"
    %endif
    times 1 - ($ - %%insn_0041271a) db 0
    %if ($ - %%fragment_start) != 11
        %error "function fragment size drift: 00412710"
    %endif
%endmacro
