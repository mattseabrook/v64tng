; Linear entry 07F64 (1702:0f44)
; Ghidra working symbol: FUN_1702_0f44
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_07f64_part_00 0
    %%fragment_start:
func_07f64:
    %%insn_07f64:
    push ds ; 07F64 1E
    %if ($ - %%insn_07f64) > 1
        %error "LONG_07F64"
    %endif
    times 1 - ($ - %%insn_07f64) db 0
    %%insn_07f65:
    push si ; 07F65 56
    %if ($ - %%insn_07f65) > 1
        %error "LONG_07F65"
    %endif
    times 1 - ($ - %%insn_07f65) db 0
    %%insn_07f66:
    push di ; 07F66 57
    %if ($ - %%insn_07f66) > 1
        %error "LONG_07F66"
    %endif
    times 1 - ($ - %%insn_07f66) db 0
    %%insn_07f67:
    lds si,word [cs:0xe66] ; 07F67 2EC536660E
    %if ($ - %%insn_07f67) > 5
        %error "LONG_07F67"
    %endif
    times 5 - ($ - %%insn_07f67) db 0
    %%insn_07f6c:
    cmp byte [si],0x4 ; 07F6C 803C04
    %if ($ - %%insn_07f6c) > 3
        %error "LONG_07F6C"
    %endif
    times 3 - ($ - %%insn_07f6c) db 0
    %%insn_07f6f:
    mov ax,0xffff ; 07F6F B8FFFF
    %if ($ - %%insn_07f6f) > 3
        %error "LONG_07F6F"
    %endif
    times 3 - ($ - %%insn_07f6f) db 0
    %%insn_07f72:
    jnz short 0x7f77 ; 07F72 7503
    %if ($ - %%insn_07f72) > 2
        %error "LONG_07F72"
    %endif
    times 2 - ($ - %%insn_07f72) db 0
    %%insn_07f74:
    mov ax,[si+0x4] ; 07F74 8B4404
    %if ($ - %%insn_07f74) > 3
        %error "LONG_07F74"
    %endif
    times 3 - ($ - %%insn_07f74) db 0
    %%insn_07f77:
    pop di ; 07F77 5F
    %if ($ - %%insn_07f77) > 1
        %error "LONG_07F77"
    %endif
    times 1 - ($ - %%insn_07f77) db 0
    %%insn_07f78:
    pop si ; 07F78 5E
    %if ($ - %%insn_07f78) > 1
        %error "LONG_07F78"
    %endif
    times 1 - ($ - %%insn_07f78) db 0
    %%insn_07f79:
    pop ds ; 07F79 1F
    %if ($ - %%insn_07f79) > 1
        %error "LONG_07F79"
    %endif
    times 1 - ($ - %%insn_07f79) db 0
    %%insn_07f7a:
    retf ; 07F7A CB
    %if ($ - %%insn_07f7a) > 1
        %error "LONG_07F7A"
    %endif
    times 1 - ($ - %%insn_07f7a) db 0
    %if ($ - %%fragment_start) != 23
        %error "SIZE_07F64"
    %endif
%endmacro
