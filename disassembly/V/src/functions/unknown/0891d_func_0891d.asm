; Linear entry 0891D (1000:891d)
; Ghidra working symbol: FUN_1000_891d
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_0891d_part_00 0
    %%fragment_start:
func_0891d:
    %%insn_0891d:
    push bp ; 0891D 55
    %if ($ - %%insn_0891d) > 1
        %error "LONG_0891D"
    %endif
    times 1 - ($ - %%insn_0891d) db 0
    db 0x8B, 0xEC ; 0891E 8BEC | mov bp,sp | encoding preserved
    %%insn_08920:
    push ds ; 08920 1E
    %if ($ - %%insn_08920) > 1
        %error "LONG_08920"
    %endif
    times 1 - ($ - %%insn_08920) db 0
    %%insn_08921:
    push si ; 08921 56
    %if ($ - %%insn_08921) > 1
        %error "LONG_08921"
    %endif
    times 1 - ($ - %%insn_08921) db 0
    %%insn_08922:
    push di ; 08922 57
    %if ($ - %%insn_08922) > 1
        %error "LONG_08922"
    %endif
    times 1 - ($ - %%insn_08922) db 0
    %%insn_08923:
    mov ax,[cs:0xe62] ; 08923 2EA1620E
    %if ($ - %%insn_08923) > 4
        %error "LONG_08923"
    %endif
    times 4 - ($ - %%insn_08923) db 0
    %%insn_08927:
    pop di ; 08927 5F
    %if ($ - %%insn_08927) > 1
        %error "LONG_08927"
    %endif
    times 1 - ($ - %%insn_08927) db 0
    %%insn_08928:
    pop si ; 08928 5E
    %if ($ - %%insn_08928) > 1
        %error "LONG_08928"
    %endif
    times 1 - ($ - %%insn_08928) db 0
    %%insn_08929:
    pop ds ; 08929 1F
    %if ($ - %%insn_08929) > 1
        %error "LONG_08929"
    %endif
    times 1 - ($ - %%insn_08929) db 0
    %%insn_0892a:
    pop bp ; 0892A 5D
    %if ($ - %%insn_0892a) > 1
        %error "LONG_0892A"
    %endif
    times 1 - ($ - %%insn_0892a) db 0
    %%insn_0892b:
    retf ; 0892B CB
    %if ($ - %%insn_0892b) > 1
        %error "LONG_0892B"
    %endif
    times 1 - ($ - %%insn_0892b) db 0
    %if ($ - %%fragment_start) != 15
        %error "SIZE_0891D"
    %endif
%endmacro
