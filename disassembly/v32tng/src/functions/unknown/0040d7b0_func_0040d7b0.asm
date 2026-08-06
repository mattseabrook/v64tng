; PE virtual entry 0040D7B0
; Ghidra working symbol: FUN_0040d7b0
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040d7b0_part_00 0
    %%fragment_start:
func_0040d7b0:
    %%insn_0040d7b0:
    push edi ; 0040D7B0 57
    %if ($ - %%insn_0040d7b0) > 1
        %error "LONG_0040D7B0"
    %endif
    times 1 - ($ - %%insn_0040d7b0) db 0
    %%insn_0040d7b1:
    mov edi,[esp+0x8] ; 0040D7B1 8B7C2408
    %if ($ - %%insn_0040d7b1) > 4
        %error "LONG_0040D7B1"
    %endif
    times 4 - ($ - %%insn_0040d7b1) db 0
    %%insn_0040d7b5:
    jmp short 0x40d821 ; 0040D7B5 EB6A
    %if ($ - %%insn_0040d7b5) > 2
        %error "LONG_0040D7B5"
    %endif
    times 2 - ($ - %%insn_0040d7b5) db 0
    %if ($ - %%fragment_start) != 7
        %error "function fragment size drift: 0040D7B0"
    %endif
%endmacro
