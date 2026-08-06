; Linear entry 07961 (1702:0941)
; Ghidra working symbol: FUN_1702_0941
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_07961_part_00 0
    %%fragment_start:
func_07961:
    %%insn_07961:
    push bp ; 07961 55
    %if ($ - %%insn_07961) > 1
        %error "LONG_07961"
    %endif
    times 1 - ($ - %%insn_07961) db 0
    db 0x8B, 0xEC ; 07962 8BEC | mov bp,sp | encoding preserved
    %%insn_07964:
    push ds ; 07964 1E
    %if ($ - %%insn_07964) > 1
        %error "LONG_07964"
    %endif
    times 1 - ($ - %%insn_07964) db 0
    %%insn_07965:
    push si ; 07965 56
    %if ($ - %%insn_07965) > 1
        %error "LONG_07965"
    %endif
    times 1 - ($ - %%insn_07965) db 0
    %%insn_07966:
    push di ; 07966 57
    %if ($ - %%insn_07966) > 1
        %error "LONG_07966"
    %endif
    times 1 - ($ - %%insn_07966) db 0
    %%insn_07967:
    pushf ; 07967 9C
    %if ($ - %%insn_07967) > 1
        %error "LONG_07967"
    %endif
    times 1 - ($ - %%insn_07967) db 0
    %%insn_07968:
    cli ; 07968 FA
    %if ($ - %%insn_07968) > 1
        %error "LONG_07968"
    %endif
    times 1 - ($ - %%insn_07968) db 0
    %%insn_07969:
    mov bx,[bp+0x6] ; 07969 8B5E06
    %if ($ - %%insn_07969) > 3
        %error "LONG_07969"
    %endif
    times 3 - ($ - %%insn_07969) db 0
    %%insn_0796c:
    shl bx,1 ; 0796C D1E3
    %if ($ - %%insn_0796c) > 2
        %error "LONG_0796C"
    %endif
    times 2 - ($ - %%insn_0796c) db 0
    db 0x2E, 0x8B, 0x87, 0x70, 0x00 ; 0796E 2E8B877000 | mov ax,[cs:bx+0x70] | encoding preserved
    %%insn_07973:
    push ax ; 07973 50
    %if ($ - %%insn_07973) > 1
        %error "LONG_07973"
    %endif
    times 1 - ($ - %%insn_07973) db 0
    db 0x2E, 0xC7, 0x87, 0x70, 0x00, 0x01, 0x00 ; 07974 2EC78770000100 | mov word [cs:bx+0x70],0x1 | encoding preserved
    %%insn_0797b:
    shl bx,1 ; 0797B D1E3
    %if ($ - %%insn_0797b) > 2
        %error "LONG_0797B"
    %endif
    times 2 - ($ - %%insn_0797b) db 0
    %%insn_0797d:
    mov ax,[bp+0x8] ; 0797D 8B4608
    %if ($ - %%insn_0797d) > 3
        %error "LONG_0797D"
    %endif
    times 3 - ($ - %%insn_0797d) db 0
    %%insn_07980:
    mov dx,[bp+0xa] ; 07980 8B560A
    %if ($ - %%insn_07980) > 3
        %error "LONG_07980"
    %endif
    times 3 - ($ - %%insn_07980) db 0
    %%insn_07983:
    mov [cs:bx+0xd6],ax ; 07983 2E8987D600
    %if ($ - %%insn_07983) > 5
        %error "LONG_07983"
    %endif
    times 5 - ($ - %%insn_07983) db 0
    %%insn_07988:
    mov [cs:bx+0xd8],dx ; 07988 2E8997D800
    %if ($ - %%insn_07988) > 5
        %error "LONG_07988"
    %endif
    times 5 - ($ - %%insn_07988) db 0
    %%insn_0798d:
    mov word [cs:bx+0x92],0x0 ; 0798D 2EC78792000000
    %if ($ - %%insn_0798d) > 7
        %error "LONG_0798D"
    %endif
    times 7 - ($ - %%insn_0798d) db 0
    %%insn_07994:
    mov word [cs:bx+0x94],0x0 ; 07994 2EC78794000000
    %if ($ - %%insn_07994) > 7
        %error "LONG_07994"
    %endif
    times 7 - ($ - %%insn_07994) db 0
    %%insn_0799b:
    push cs ; 0799B 0E
    %if ($ - %%insn_0799b) > 1
        %error "LONG_0799B"
    %endif
    times 1 - ($ - %%insn_0799b) db 0
    %%insn_0799c:
    call 0x765e ; 0799C E8BFFC
    %if ($ - %%insn_0799c) > 3
        %error "LONG_0799C"
    %endif
    times 3 - ($ - %%insn_0799c) db 0
    %%insn_0799f:
    pop ax ; 0799F 58
    %if ($ - %%insn_0799f) > 1
        %error "LONG_0799F"
    %endif
    times 1 - ($ - %%insn_0799f) db 0
    %%insn_079a0:
    mov bx,[bp+0x6] ; 079A0 8B5E06
    %if ($ - %%insn_079a0) > 3
        %error "LONG_079A0"
    %endif
    times 3 - ($ - %%insn_079a0) db 0
    %%insn_079a3:
    shl bx,1 ; 079A3 D1E3
    %if ($ - %%insn_079a3) > 2
        %error "LONG_079A3"
    %endif
    times 2 - ($ - %%insn_079a3) db 0
    db 0x2E, 0x89, 0x87, 0x70, 0x00 ; 079A5 2E89877000 | mov [cs:bx+0x70],ax | encoding preserved
    %%insn_079aa:
    db 0x80 ; 079AA 80
    %if ($ - %%insn_079aa) > 1
        %error "LONG_079AA"
    %endif
    times 1 - ($ - %%insn_079aa) db 0
    %if ($ - %%fragment_start) != 74
        %error "SIZE_07961"
    %endif
%endmacro

%macro emit_func_07961_part_01 0
    %%fragment_start:
    %%insn_079ac:
    add [0xfae8],cl ; 079AC 000EE8FA
    %if ($ - %%insn_079ac) > 4
        %error "LONG_079AC"
    %endif
    times 4 - ($ - %%insn_079ac) db 0
    %%insn_079b0:
    call word far [bx+0x5e] ; 079B0 FF5F5E
    %if ($ - %%insn_079b0) > 3
        %error "LONG_079B0"
    %endif
    times 3 - ($ - %%insn_079b0) db 0
    %%insn_079b3:
    pop ds ; 079B3 1F
    %if ($ - %%insn_079b3) > 1
        %error "LONG_079B3"
    %endif
    times 1 - ($ - %%insn_079b3) db 0
    %%insn_079b4:
    pop bp ; 079B4 5D
    %if ($ - %%insn_079b4) > 1
        %error "LONG_079B4"
    %endif
    times 1 - ($ - %%insn_079b4) db 0
    %%insn_079b5:
    retf ; 079B5 CB
    %if ($ - %%insn_079b5) > 1
        %error "LONG_079B5"
    %endif
    times 1 - ($ - %%insn_079b5) db 0
    %if ($ - %%fragment_start) != 10
        %error "SIZE_079AC"
    %endif
%endmacro
