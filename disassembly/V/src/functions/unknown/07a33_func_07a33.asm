; Linear entry 07A33 (1702:0a13)
; Ghidra working symbol: FUN_1702_0a13
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_07a33_part_00 0
    %%fragment_start:
func_07a33:
    %%insn_07a33:
    push ds ; 07A33 1E
    %if ($ - %%insn_07a33) > 1
        %error "LONG_07A33"
    %endif
    times 1 - ($ - %%insn_07a33) db 0
    %%insn_07a34:
    push si ; 07A34 56
    %if ($ - %%insn_07a34) > 1
        %error "LONG_07A34"
    %endif
    times 1 - ($ - %%insn_07a34) db 0
    %%insn_07a35:
    push di ; 07A35 57
    %if ($ - %%insn_07a35) > 1
        %error "LONG_07A35"
    %endif
    times 1 - ($ - %%insn_07a35) db 0
    %%insn_07a36:
    pushf ; 07A36 9C
    %if ($ - %%insn_07a36) > 1
        %error "LONG_07A36"
    %endif
    times 1 - ($ - %%insn_07a36) db 0
    %%insn_07a37:
    cli ; 07A37 FA
    %if ($ - %%insn_07a37) > 1
        %error "LONG_07A37"
    %endif
    times 1 - ($ - %%insn_07a37) db 0
    %%insn_07a38:
    mov ax,[cs:0x128] ; 07A38 2EA12801
    %if ($ - %%insn_07a38) > 4
        %error "LONG_07A38"
    %endif
    times 4 - ($ - %%insn_07a38) db 0
    %%insn_07a3c:
    db 0x80 ; 07A3C 80
    %if ($ - %%insn_07a3c) > 1
        %error "LONG_07A3C"
    %endif
    times 1 - ($ - %%insn_07a3c) db 0
    %if ($ - %%fragment_start) != 10
        %error "SIZE_07A33"
    %endif
%endmacro

%macro emit_func_07a33_part_01 0
    %%fragment_start:
    %%insn_07a3e:
    add [0xfae8],cl ; 07A3E 000EE8FA
    %if ($ - %%insn_07a3e) > 4
        %error "LONG_07A3E"
    %endif
    times 4 - ($ - %%insn_07a3e) db 0
    %%insn_07a42:
    call word far [bx+0x5e] ; 07A42 FF5F5E
    %if ($ - %%insn_07a42) > 3
        %error "LONG_07A42"
    %endif
    times 3 - ($ - %%insn_07a42) db 0
    %%insn_07a45:
    pop ds ; 07A45 1F
    %if ($ - %%insn_07a45) > 1
        %error "LONG_07A45"
    %endif
    times 1 - ($ - %%insn_07a45) db 0
    %%insn_07a46:
    retf ; 07A46 CB
    %if ($ - %%insn_07a46) > 1
        %error "LONG_07A46"
    %endif
    times 1 - ($ - %%insn_07a46) db 0
    %if ($ - %%fragment_start) != 9
        %error "SIZE_07A3E"
    %endif
%endmacro
