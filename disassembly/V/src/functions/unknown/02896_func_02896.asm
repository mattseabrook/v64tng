; Linear entry 02896 (1000:2896)
; Ghidra working symbol: FUN_1000_2896
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_02896_part_00 0
    %%fragment_start:
func_02896:
    %%insn_02896:
    cmp word [bp-0x1b8a],0x80 ; 02896 81BE76E48000
    %if ($ - %%insn_02896) > 6
        %error "LONG_02896"
    %endif
    times 6 - ($ - %%insn_02896) db 0
    %%insn_0289c:
    jnz short 0x289f ; 0289C 7501
    %if ($ - %%insn_0289c) > 2
        %error "LONG_0289C"
    %endif
    times 2 - ($ - %%insn_0289c) db 0
    %%insn_0289e:
    ret ; 0289E C3
    %if ($ - %%insn_0289e) > 1
        %error "LONG_0289E"
    %endif
    times 1 - ($ - %%insn_0289e) db 0
    %%insn_0289f:
    cmp word [bp-0x2b78],0x0 ; 0289F 83BE88D400
    %if ($ - %%insn_0289f) > 5
        %error "LONG_0289F"
    %endif
    times 5 - ($ - %%insn_0289f) db 0
    %%insn_028a4:
    jnz short 0x28a7 ; 028A4 7501
    %if ($ - %%insn_028a4) > 2
        %error "LONG_028A4"
    %endif
    times 2 - ($ - %%insn_028a4) db 0
    %%insn_028a6:
    ret ; 028A6 C3
    %if ($ - %%insn_028a6) > 1
        %error "LONG_028A6"
    %endif
    times 1 - ($ - %%insn_028a6) db 0
    %%insn_028a7:
    push es ; 028A7 06
    %if ($ - %%insn_028a7) > 1
        %error "LONG_028A7"
    %endif
    times 1 - ($ - %%insn_028a7) db 0
    %%insn_028a8:
    push ds ; 028A8 1E
    %if ($ - %%insn_028a8) > 1
        %error "LONG_028A8"
    %endif
    times 1 - ($ - %%insn_028a8) db 0
    %%insn_028a9:
    pusha ; 028A9 60
    %if ($ - %%insn_028a9) > 1
        %error "LONG_028A9"
    %endif
    times 1 - ($ - %%insn_028a9) db 0
    %%insn_028aa:
    jmp 0x2a0f ; 028AA E96201
    %if ($ - %%insn_028aa) > 3
        %error "LONG_028AA"
    %endif
    times 3 - ($ - %%insn_028aa) db 0
    %if ($ - %%fragment_start) != 23
        %error "SIZE_02896"
    %endif
%endmacro
