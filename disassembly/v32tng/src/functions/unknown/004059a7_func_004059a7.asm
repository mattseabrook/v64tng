; PE virtual entry 004059A7
; Ghidra working symbol: FUN_004059a7
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_004059a7_part_00 0
    %%fragment_start:
func_004059a7:
    %%insn_004059a7:
    push ebp ; 004059A7 55
    %if ($ - %%insn_004059a7) > 1
        %error "LONG_004059A7"
    %endif
    times 1 - ($ - %%insn_004059a7) db 0
    db 0x8B, 0xEC ; 004059A8 8BEC | mov ebp,esp | encoding preserved
    %%insn_004059aa:
    mov al,[0x4215b5] ; 004059AA A0B5154200
    %if ($ - %%insn_004059aa) > 5
        %error "LONG_004059AA"
    %endif
    times 5 - ($ - %%insn_004059aa) db 0
    %%insn_004059af:
    mov [0x421b40],al ; 004059AF A2401B4200
    %if ($ - %%insn_004059af) > 5
        %error "LONG_004059AF"
    %endif
    times 5 - ($ - %%insn_004059af) db 0
    %%insn_004059b4:
    mov cl,[0x4215b6] ; 004059B4 8A0DB6154200
    %if ($ - %%insn_004059b4) > 6
        %error "LONG_004059B4"
    %endif
    times 6 - ($ - %%insn_004059b4) db 0
    %%insn_004059ba:
    mov [0x421920],cl ; 004059BA 880D20194200
    %if ($ - %%insn_004059ba) > 6
        %error "LONG_004059BA"
    %endif
    times 6 - ($ - %%insn_004059ba) db 0
    %%insn_004059c0:
    mov dl,[0x4215b7] ; 004059C0 8A15B7154200
    %if ($ - %%insn_004059c0) > 6
        %error "LONG_004059C0"
    %endif
    times 6 - ($ - %%insn_004059c0) db 0
    %%insn_004059c6:
    mov [0x421ac0],dl ; 004059C6 8815C01A4200
    %if ($ - %%insn_004059c6) > 6
        %error "LONG_004059C6"
    %endif
    times 6 - ($ - %%insn_004059c6) db 0
    %%insn_004059cc:
    mov word [0x421bfa],0x1 ; 004059CC 66C705FA1B42000100
    %if ($ - %%insn_004059cc) > 9
        %error "LONG_004059CC"
    %endif
    times 9 - ($ - %%insn_004059cc) db 0
    %%insn_004059d5:
    pop ebp ; 004059D5 5D
    %if ($ - %%insn_004059d5) > 1
        %error "LONG_004059D5"
    %endif
    times 1 - ($ - %%insn_004059d5) db 0
    %%insn_004059d6:
    ret ; 004059D6 C3
    %if ($ - %%insn_004059d6) > 1
        %error "LONG_004059D6"
    %endif
    times 1 - ($ - %%insn_004059d6) db 0
    %if ($ - %%fragment_start) != 48
        %error "function fragment size drift: 004059A7"
    %endif
%endmacro
