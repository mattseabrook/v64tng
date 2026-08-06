; PE virtual entry 00405095
; Ghidra working symbol: FUN_00405095
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00405095_part_00 0
    %%fragment_start:
func_00405095:
    %%insn_00405095:
    push ebp ; 00405095 55
    %if ($ - %%insn_00405095) > 1
        %error "LONG_00405095"
    %endif
    times 1 - ($ - %%insn_00405095) db 0
    db 0x8B, 0xEC ; 00405096 8BEC | mov ebp,esp | encoding preserved
    %%insn_00405098:
    mov byte [0x4215b6],0x0 ; 00405098 C605B615420000
    %if ($ - %%insn_00405098) > 7
        %error "LONG_00405098"
    %endif
    times 7 - ($ - %%insn_00405098) db 0
    %%insn_0040509f:
    mov byte [0x4215b5],0x0 ; 0040509F C605B515420000
    %if ($ - %%insn_0040509f) > 7
        %error "LONG_0040509F"
    %endif
    times 7 - ($ - %%insn_0040509f) db 0
    %%insn_004050a6:
    mov byte [0x4215b7],0x0 ; 004050A6 C605B715420000
    %if ($ - %%insn_004050a6) > 7
        %error "LONG_004050A6"
    %endif
    times 7 - ($ - %%insn_004050a6) db 0
    %%insn_004050ad:
    pop ebp ; 004050AD 5D
    %if ($ - %%insn_004050ad) > 1
        %error "LONG_004050AD"
    %endif
    times 1 - ($ - %%insn_004050ad) db 0
    %%insn_004050ae:
    ret ; 004050AE C3
    %if ($ - %%insn_004050ae) > 1
        %error "LONG_004050AE"
    %endif
    times 1 - ($ - %%insn_004050ae) db 0
    %if ($ - %%fragment_start) != 26
        %error "function fragment size drift: 00405095"
    %endif
%endmacro
