; Linear entry 0847E (1000:847e)
; Ghidra working symbol: FUN_1000_847e
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_0847e_part_00 0
    %%fragment_start:
func_0847e:
    %%insn_0847e:
    push bp ; 0847E 55
    %if ($ - %%insn_0847e) > 1
        %error "LONG_0847E"
    %endif
    times 1 - ($ - %%insn_0847e) db 0
    db 0x8B, 0xEC ; 0847F 8BEC | mov bp,sp | encoding preserved
    %%insn_08481:
    push ds ; 08481 1E
    %if ($ - %%insn_08481) > 1
        %error "LONG_08481"
    %endif
    times 1 - ($ - %%insn_08481) db 0
    %%insn_08482:
    push si ; 08482 56
    %if ($ - %%insn_08482) > 1
        %error "LONG_08482"
    %endif
    times 1 - ($ - %%insn_08482) db 0
    %%insn_08483:
    push di ; 08483 57
    %if ($ - %%insn_08483) > 1
        %error "LONG_08483"
    %endif
    times 1 - ($ - %%insn_08483) db 0
    %%insn_08484:
    mov ax,0x1 ; 08484 B80100
    %if ($ - %%insn_08484) > 3
        %error "LONG_08484"
    %endif
    times 3 - ($ - %%insn_08484) db 0
    %%insn_08487:
    pop di ; 08487 5F
    %if ($ - %%insn_08487) > 1
        %error "LONG_08487"
    %endif
    times 1 - ($ - %%insn_08487) db 0
    %%insn_08488:
    pop si ; 08488 5E
    %if ($ - %%insn_08488) > 1
        %error "LONG_08488"
    %endif
    times 1 - ($ - %%insn_08488) db 0
    %%insn_08489:
    pop ds ; 08489 1F
    %if ($ - %%insn_08489) > 1
        %error "LONG_08489"
    %endif
    times 1 - ($ - %%insn_08489) db 0
    %%insn_0848a:
    pop bp ; 0848A 5D
    %if ($ - %%insn_0848a) > 1
        %error "LONG_0848A"
    %endif
    times 1 - ($ - %%insn_0848a) db 0
    %%insn_0848b:
    retf ; 0848B CB
    %if ($ - %%insn_0848b) > 1
        %error "LONG_0848B"
    %endif
    times 1 - ($ - %%insn_0848b) db 0
    %if ($ - %%fragment_start) != 14
        %error "SIZE_0847E"
    %endif
%endmacro
