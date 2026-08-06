; Linear entry 07F55 (1702:0f35)
; Ghidra working symbol: FUN_1702_0f35
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_07f55_part_00 0
    %%fragment_start:
func_07f55:
    %%insn_07f55:
    push ds ; 07F55 1E
    %if ($ - %%insn_07f55) > 1
        %error "LONG_07F55"
    %endif
    times 1 - ($ - %%insn_07f55) db 0
    %%insn_07f56:
    push si ; 07F56 56
    %if ($ - %%insn_07f56) > 1
        %error "LONG_07F56"
    %endif
    times 1 - ($ - %%insn_07f56) db 0
    %%insn_07f57:
    push di ; 07F57 57
    %if ($ - %%insn_07f57) > 1
        %error "LONG_07F57"
    %endif
    times 1 - ($ - %%insn_07f57) db 0
    %%insn_07f58:
    lds si,word [cs:0xe66] ; 07F58 2EC536660E
    %if ($ - %%insn_07f58) > 5
        %error "LONG_07F58"
    %endif
    times 5 - ($ - %%insn_07f58) db 0
    %%insn_07f5d:
    lodsb ; 07F5D AC
    %if ($ - %%insn_07f5d) > 1
        %error "LONG_07F5D"
    %endif
    times 1 - ($ - %%insn_07f5d) db 0
    %%insn_07f5e:
    mov ah,0x0 ; 07F5E B400
    %if ($ - %%insn_07f5e) > 2
        %error "LONG_07F5E"
    %endif
    times 2 - ($ - %%insn_07f5e) db 0
    %%insn_07f60:
    pop di ; 07F60 5F
    %if ($ - %%insn_07f60) > 1
        %error "LONG_07F60"
    %endif
    times 1 - ($ - %%insn_07f60) db 0
    %%insn_07f61:
    pop si ; 07F61 5E
    %if ($ - %%insn_07f61) > 1
        %error "LONG_07F61"
    %endif
    times 1 - ($ - %%insn_07f61) db 0
    %%insn_07f62:
    pop ds ; 07F62 1F
    %if ($ - %%insn_07f62) > 1
        %error "LONG_07F62"
    %endif
    times 1 - ($ - %%insn_07f62) db 0
    %%insn_07f63:
    retf ; 07F63 CB
    %if ($ - %%insn_07f63) > 1
        %error "LONG_07F63"
    %endif
    times 1 - ($ - %%insn_07f63) db 0
    %if ($ - %%fragment_start) != 15
        %error "SIZE_07F55"
    %endif
%endmacro
