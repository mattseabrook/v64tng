; Linear entry 07ED7 (1702:0eb7)
; Ghidra working symbol: FUN_1702_0eb7
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_07ed7_part_00 0
    %%fragment_start:
func_07ed7:
    %%insn_07ed7:
    push ds ; 07ED7 1E
    %if ($ - %%insn_07ed7) > 1
        %error "LONG_07ED7"
    %endif
    times 1 - ($ - %%insn_07ed7) db 0
    %%insn_07ed8:
    push si ; 07ED8 56
    %if ($ - %%insn_07ed8) > 1
        %error "LONG_07ED8"
    %endif
    times 1 - ($ - %%insn_07ed8) db 0
    %%insn_07ed9:
    push di ; 07ED9 57
    %if ($ - %%insn_07ed9) > 1
        %error "LONG_07ED9"
    %endif
    times 1 - ($ - %%insn_07ed9) db 0
    %%insn_07eda:
    test word [cs:0xe2e],0x8 ; 07EDA 2EF7062E0E0800
    %if ($ - %%insn_07eda) > 7
        %error "LONG_07EDA"
    %endif
    times 7 - ($ - %%insn_07eda) db 0
    %%insn_07ee1:
    jz short 0x7f0a ; 07EE1 7427
    %if ($ - %%insn_07ee1) > 2
        %error "LONG_07EE1"
    %endif
    times 2 - ($ - %%insn_07ee1) db 0
    %%insn_07ee3:
    cmp word [cs:0x6],0x0 ; 07EE3 2E833E060000
    %if ($ - %%insn_07ee3) > 6
        %error "LONG_07EE3"
    %endif
    times 6 - ($ - %%insn_07ee3) db 0
    %%insn_07ee9:
    jz short 0x7f0a ; 07EE9 741F
    %if ($ - %%insn_07ee9) > 2
        %error "LONG_07EE9"
    %endif
    times 2 - ($ - %%insn_07ee9) db 0
    %%insn_07eeb:
    cmp word [cs:0xe7e],0x0 ; 07EEB 2E833E7E0E00
    %if ($ - %%insn_07eeb) > 6
        %error "LONG_07EEB"
    %endif
    times 6 - ($ - %%insn_07eeb) db 0
    %%insn_07ef1:
    jnz short 0x7f0a ; 07EF1 7517
    %if ($ - %%insn_07ef1) > 2
        %error "LONG_07EF1"
    %endif
    times 2 - ($ - %%insn_07ef1) db 0
    %%insn_07ef3:
    push cs ; 07EF3 0E
    %if ($ - %%insn_07ef3) > 1
        %error "LONG_07EF3"
    %endif
    times 1 - ($ - %%insn_07ef3) db 0
    %%insn_07ef4:
    call 0x7a33 ; 07EF4 E83CFB
    %if ($ - %%insn_07ef4) > 3
        %error "LONG_07EF4"
    %endif
    times 3 - ($ - %%insn_07ef4) db 0
    %%insn_07ef7:
    push ax ; 07EF7 50
    %if ($ - %%insn_07ef7) > 1
        %error "LONG_07EF7"
    %endif
    times 1 - ($ - %%insn_07ef7) db 0
    %%insn_07ef8:
    push cs ; 07EF8 0E
    %if ($ - %%insn_07ef8) > 1
        %error "LONG_07EF8"
    %endif
    times 1 - ($ - %%insn_07ef8) db 0
    %%insn_07ef9:
    call 0x75c0 ; 07EF9 E8C4F6
    %if ($ - %%insn_07ef9) > 3
        %error "LONG_07EF9"
    %endif
    times 3 - ($ - %%insn_07ef9) db 0
    %%insn_07efc:
    add sp,0x2 ; 07EFC 83C402
    %if ($ - %%insn_07efc) > 3
        %error "LONG_07EFC"
    %endif
    times 3 - ($ - %%insn_07efc) db 0
    %%insn_07eff:
    push cs ; 07EFF 0E
    %if ($ - %%insn_07eff) > 1
        %error "LONG_07EFF"
    %endif
    times 1 - ($ - %%insn_07eff) db 0
    %%insn_07f00:
    call 0x7544 ; 07F00 E841F6
    %if ($ - %%insn_07f00) > 3
        %error "LONG_07F00"
    %endif
    times 3 - ($ - %%insn_07f00) db 0
    %%insn_07f03:
    mov word [cs:0xe7e],0x1 ; 07F03 2EC7067E0E0100
    %if ($ - %%insn_07f03) > 7
        %error "LONG_07F03"
    %endif
    times 7 - ($ - %%insn_07f03) db 0
    %%insn_07f0a:
    pop di ; 07F0A 5F
    %if ($ - %%insn_07f0a) > 1
        %error "LONG_07F0A"
    %endif
    times 1 - ($ - %%insn_07f0a) db 0
    %%insn_07f0b:
    pop si ; 07F0B 5E
    %if ($ - %%insn_07f0b) > 1
        %error "LONG_07F0B"
    %endif
    times 1 - ($ - %%insn_07f0b) db 0
    %%insn_07f0c:
    pop ds ; 07F0C 1F
    %if ($ - %%insn_07f0c) > 1
        %error "LONG_07F0C"
    %endif
    times 1 - ($ - %%insn_07f0c) db 0
    %%insn_07f0d:
    retf ; 07F0D CB
    %if ($ - %%insn_07f0d) > 1
        %error "LONG_07F0D"
    %endif
    times 1 - ($ - %%insn_07f0d) db 0
    %if ($ - %%fragment_start) != 55
        %error "SIZE_07ED7"
    %endif
%endmacro
