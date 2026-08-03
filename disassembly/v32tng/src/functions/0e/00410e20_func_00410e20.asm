; PE virtual entry 00410E20
; Ghidra working symbol: FUN_00410e20
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00410e20_part_00 0
    %%fragment_start:
func_00410e20:
    %%insn_00410e20:
    call 0x4127d0 ; 00410E20 E8AB190000
    %if ($ - %%insn_00410e20) > 5
        %error "LONG_00410E20"
    %endif
    times 5 - ($ - %%insn_00410e20) db 0
    %%insn_00410e25:
    add eax,0xc ; 00410E25 83C00C
    %if ($ - %%insn_00410e25) > 3
        %error "LONG_00410E25"
    %endif
    times 3 - ($ - %%insn_00410e25) db 0
    %%insn_00410e28:
    ret ; 00410E28 C3
    %if ($ - %%insn_00410e28) > 1
        %error "LONG_00410E28"
    %endif
    times 1 - ($ - %%insn_00410e28) db 0
    %if ($ - %%fragment_start) != 9
        %error "function fragment size drift: 00410E20"
    %endif
%endmacro
