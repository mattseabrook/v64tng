; PE virtual entry 0040D710
; Ghidra working symbol: FUN_0040d710
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040d710_part_00 0
    %%fragment_start:
func_0040d710:
    %%insn_0040d710:
    push dword 0xd ; 0040D710 6A0D
    %if ($ - %%insn_0040d710) > 2
        %error "LONG_0040D710"
    %endif
    times 2 - ($ - %%insn_0040d710) db 0
    %%insn_0040d712:
    call 0x40df00 ; 0040D712 E8E9070000
    %if ($ - %%insn_0040d712) > 5
        %error "LONG_0040D712"
    %endif
    times 5 - ($ - %%insn_0040d712) db 0
    %%insn_0040d717:
    add esp,0x4 ; 0040D717 83C404
    %if ($ - %%insn_0040d717) > 3
        %error "LONG_0040D717"
    %endif
    times 3 - ($ - %%insn_0040d717) db 0
    %%insn_0040d71a:
    ret ; 0040D71A C3
    %if ($ - %%insn_0040d71a) > 1
        %error "LONG_0040D71A"
    %endif
    times 1 - ($ - %%insn_0040d71a) db 0
    %if ($ - %%fragment_start) != 11
        %error "function fragment size drift: 0040D710"
    %endif
%endmacro
