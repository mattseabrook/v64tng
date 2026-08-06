; Linear entry 07EA0 (1702:0e80)
; Ghidra working symbol: FUN_1702_0e80
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_07ea0_part_00 0
    %%fragment_start:
func_07ea0:
    %%insn_07ea0:
    push ds ; 07EA0 1E
    %if ($ - %%insn_07ea0) > 1
        %error "LONG_07EA0"
    %endif
    times 1 - ($ - %%insn_07ea0) db 0
    %%insn_07ea1:
    push si ; 07EA1 56
    %if ($ - %%insn_07ea1) > 1
        %error "LONG_07EA1"
    %endif
    times 1 - ($ - %%insn_07ea1) db 0
    %%insn_07ea2:
    push di ; 07EA2 57
    %if ($ - %%insn_07ea2) > 1
        %error "LONG_07EA2"
    %endif
    times 1 - ($ - %%insn_07ea2) db 0
    %%insn_07ea3:
    test word [cs:0xe2e],0x8 ; 07EA3 2EF7062E0E0800
    %if ($ - %%insn_07ea3) > 7
        %error "LONG_07EA3"
    %endif
    times 7 - ($ - %%insn_07ea3) db 0
    %%insn_07eaa:
    jz short 0x7ed3 ; 07EAA 7427
    %if ($ - %%insn_07eaa) > 2
        %error "LONG_07EAA"
    %endif
    times 2 - ($ - %%insn_07eaa) db 0
    %%insn_07eac:
    cmp word [cs:0x6],0x0 ; 07EAC 2E833E060000
    %if ($ - %%insn_07eac) > 6
        %error "LONG_07EAC"
    %endif
    times 6 - ($ - %%insn_07eac) db 0
    %%insn_07eb2:
    jz short 0x7ed3 ; 07EB2 741F
    %if ($ - %%insn_07eb2) > 2
        %error "LONG_07EB2"
    %endif
    times 2 - ($ - %%insn_07eb2) db 0
    %%insn_07eb4:
    cmp word [cs:0xe7e],0x0 ; 07EB4 2E833E7E0E00
    %if ($ - %%insn_07eb4) > 6
        %error "LONG_07EB4"
    %endif
    times 6 - ($ - %%insn_07eb4) db 0
    %%insn_07eba:
    jz short 0x7ed3 ; 07EBA 7417
    %if ($ - %%insn_07eba) > 2
        %error "LONG_07EBA"
    %endif
    times 2 - ($ - %%insn_07eba) db 0
    %%insn_07ebc:
    push cs ; 07EBC 0E
    %if ($ - %%insn_07ebc) > 1
        %error "LONG_07EBC"
    %endif
    times 1 - ($ - %%insn_07ebc) db 0
    %%insn_07ebd:
    call 0x7590 ; 07EBD E8D0F6
    %if ($ - %%insn_07ebd) > 3
        %error "LONG_07EBD"
    %endif
    times 3 - ($ - %%insn_07ebd) db 0
    %%insn_07ec0:
    mov word [cs:0xe7e],0x0 ; 07EC0 2EC7067E0E0000
    %if ($ - %%insn_07ec0) > 7
        %error "LONG_07EC0"
    %endif
    times 7 - ($ - %%insn_07ec0) db 0
    %%insn_07ec7:
    jmp short 0x7ed3 ; 07EC7 EB0A
    %if ($ - %%insn_07ec7) > 2
        %error "LONG_07EC7"
    %endif
    times 2 - ($ - %%insn_07ec7) db 0
    %if ($ - %%fragment_start) != 41
        %error "SIZE_07EA0"
    %endif
%endmacro

%macro emit_func_07ea0_part_01 0
    %%fragment_start:
    %%insn_07ed3:
    pop di ; 07ED3 5F
    %if ($ - %%insn_07ed3) > 1
        %error "LONG_07ED3"
    %endif
    times 1 - ($ - %%insn_07ed3) db 0
    %%insn_07ed4:
    pop si ; 07ED4 5E
    %if ($ - %%insn_07ed4) > 1
        %error "LONG_07ED4"
    %endif
    times 1 - ($ - %%insn_07ed4) db 0
    %%insn_07ed5:
    pop ds ; 07ED5 1F
    %if ($ - %%insn_07ed5) > 1
        %error "LONG_07ED5"
    %endif
    times 1 - ($ - %%insn_07ed5) db 0
    %%insn_07ed6:
    retf ; 07ED6 CB
    %if ($ - %%insn_07ed6) > 1
        %error "LONG_07ED6"
    %endif
    times 1 - ($ - %%insn_07ed6) db 0
    %if ($ - %%fragment_start) != 4
        %error "SIZE_07ED3"
    %endif
%endmacro
