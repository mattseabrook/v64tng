; Linear entry 082FC (1702:12dc)
; Ghidra working symbol: FUN_1702_12dc
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_082fc_part_00 0
    %%fragment_start:
func_082fc:
    %%insn_082fc:
    push bp ; 082FC 55
    %if ($ - %%insn_082fc) > 1
        %error "LONG_082FC"
    %endif
    times 1 - ($ - %%insn_082fc) db 0
    db 0x8B, 0xEC ; 082FD 8BEC | mov bp,sp | encoding preserved
    %%insn_082ff:
    push ds ; 082FF 1E
    %if ($ - %%insn_082ff) > 1
        %error "LONG_082FF"
    %endif
    times 1 - ($ - %%insn_082ff) db 0
    %%insn_08300:
    push si ; 08300 56
    %if ($ - %%insn_08300) > 1
        %error "LONG_08300"
    %endif
    times 1 - ($ - %%insn_08300) db 0
    %%insn_08301:
    push di ; 08301 57
    %if ($ - %%insn_08301) > 1
        %error "LONG_08301"
    %endif
    times 1 - ($ - %%insn_08301) db 0
    %%insn_08302:
    lds si,word [bp+0x6] ; 08302 C57606
    %if ($ - %%insn_08302) > 3
        %error "LONG_08302"
    %endif
    times 3 - ($ - %%insn_08302) db 0
    %%insn_08305:
    mov ax,[bp+0xa] ; 08305 8B460A
    %if ($ - %%insn_08305) > 3
        %error "LONG_08305"
    %endif
    times 3 - ($ - %%insn_08305) db 0
    %%insn_08308:
    mov dx,[bp+0xc] ; 08308 8B560C
    %if ($ - %%insn_08308) > 3
        %error "LONG_08308"
    %endif
    times 3 - ($ - %%insn_08308) db 0
    %%insn_0830b:
    mov [cs:0xe70],si ; 0830B 2E8936700E
    %if ($ - %%insn_0830b) > 5
        %error "LONG_0830B"
    %endif
    times 5 - ($ - %%insn_0830b) db 0
    %%insn_08310:
    mov word [cs:0xe72],ds ; 08310 2E8C1E720E
    %if ($ - %%insn_08310) > 5
        %error "LONG_08310"
    %endif
    times 5 - ($ - %%insn_08310) db 0
    %%insn_08315:
    mov [cs:0xe74],ax ; 08315 2EA3740E
    %if ($ - %%insn_08315) > 4
        %error "LONG_08315"
    %endif
    times 4 - ($ - %%insn_08315) db 0
    %%insn_08319:
    mov [cs:0xe76],dx ; 08319 2E8916760E
    %if ($ - %%insn_08319) > 5
        %error "LONG_08319"
    %endif
    times 5 - ($ - %%insn_08319) db 0
    %%insn_0831e:
    push cs ; 0831E 0E
    %if ($ - %%insn_0831e) > 1
        %error "LONG_0831E"
    %endif
    times 1 - ($ - %%insn_0831e) db 0
    %%insn_0831f:
    call 0x8327 ; 0831F E80500
    %if ($ - %%insn_0831f) > 3
        %error "LONG_0831F"
    %endif
    times 3 - ($ - %%insn_0831f) db 0
    %%insn_08322:
    pop di ; 08322 5F
    %if ($ - %%insn_08322) > 1
        %error "LONG_08322"
    %endif
    times 1 - ($ - %%insn_08322) db 0
    %%insn_08323:
    pop si ; 08323 5E
    %if ($ - %%insn_08323) > 1
        %error "LONG_08323"
    %endif
    times 1 - ($ - %%insn_08323) db 0
    %%insn_08324:
    pop ds ; 08324 1F
    %if ($ - %%insn_08324) > 1
        %error "LONG_08324"
    %endif
    times 1 - ($ - %%insn_08324) db 0
    %%insn_08325:
    pop bp ; 08325 5D
    %if ($ - %%insn_08325) > 1
        %error "LONG_08325"
    %endif
    times 1 - ($ - %%insn_08325) db 0
    %%insn_08326:
    retf ; 08326 CB
    %if ($ - %%insn_08326) > 1
        %error "LONG_08326"
    %endif
    times 1 - ($ - %%insn_08326) db 0
    %if ($ - %%fragment_start) != 43
        %error "SIZE_082FC"
    %endif
%endmacro
