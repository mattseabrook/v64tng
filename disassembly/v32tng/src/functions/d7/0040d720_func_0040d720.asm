; PE virtual entry 0040D720
; Ghidra working symbol: FUN_0040d720
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040d720_part_00 0
    %%fragment_start:
func_0040d720:
    %%insn_0040d720:
    push dword 0xd ; 0040D720 6A0D
    %if ($ - %%insn_0040d720) > 2
        %error "LONG_0040D720"
    %endif
    times 2 - ($ - %%insn_0040d720) db 0
    %%insn_0040d722:
    call 0x40df80 ; 0040D722 E859080000
    %if ($ - %%insn_0040d722) > 5
        %error "LONG_0040D722"
    %endif
    times 5 - ($ - %%insn_0040d722) db 0
    %%insn_0040d727:
    add esp,0x4 ; 0040D727 83C404
    %if ($ - %%insn_0040d727) > 3
        %error "LONG_0040D727"
    %endif
    times 3 - ($ - %%insn_0040d727) db 0
    %%insn_0040d72a:
    ret ; 0040D72A C3
    %if ($ - %%insn_0040d72a) > 1
        %error "LONG_0040D72A"
    %endif
    times 1 - ($ - %%insn_0040d72a) db 0
    %if ($ - %%fragment_start) != 11
        %error "function fragment size drift: 0040D720"
    %endif
%endmacro
