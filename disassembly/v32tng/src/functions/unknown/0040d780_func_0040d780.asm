; PE virtual entry 0040D780
; Ghidra working symbol: FUN_0040d780
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040d780_part_00 0
    %%fragment_start:
func_0040d780:
    %%insn_0040d780:
    mov eax,[esp+0x4] ; 0040D780 8B442404
    %if ($ - %%insn_0040d780) > 4
        %error "LONG_0040D780"
    %endif
    times 4 - ($ - %%insn_0040d780) db 0
    %%insn_0040d784:
    push eax ; 0040D784 50
    %if ($ - %%insn_0040d784) > 1
        %error "LONG_0040D784"
    %endif
    times 1 - ($ - %%insn_0040d784) db 0
    %%insn_0040d785:
    call 0x40d750 ; 0040D785 E8C6FFFFFF
    %if ($ - %%insn_0040d785) > 5
        %error "LONG_0040D785"
    %endif
    times 5 - ($ - %%insn_0040d785) db 0
    %%insn_0040d78a:
    add esp,0x4 ; 0040D78A 83C404
    %if ($ - %%insn_0040d78a) > 3
        %error "LONG_0040D78A"
    %endif
    times 3 - ($ - %%insn_0040d78a) db 0
    %%insn_0040d78d:
    ret ; 0040D78D C3
    %if ($ - %%insn_0040d78d) > 1
        %error "LONG_0040D78D"
    %endif
    times 1 - ($ - %%insn_0040d78d) db 0
    %if ($ - %%fragment_start) != 14
        %error "function fragment size drift: 0040D780"
    %endif
%endmacro
