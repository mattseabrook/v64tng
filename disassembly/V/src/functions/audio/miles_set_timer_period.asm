; Linear entry 07961 (1702:0941)
; Ghidra working symbol: FUN_1702_0941
; Verified role; boundaries repaired where the IRET entry overlaps OR BH,0.
; Contract: Temporarily mark the timer allocated, store its 32-bit period, clear its accumulator, recompute the minimum, then restore its prior state.
; Evidence: Called by frequency conversion 079B6h and raw PIT-count conversion 079F7h. The prior timer state is preserved, including free state 0.
; Original byte identity is enforced by this project’s build.sh.
; Generated losslessly; edit names/comments only after preserving build identity.
; Instruction boundaries repaired: the flag-restoring IRET is entered inside
; OR BH,0; PUSH CS/CALL builds its IP:CS frame above the saved FLAGS.
; Former one-byte CF gap belongs to the overlapping OR/IRET sequence.

%macro emit_miles_set_timer_period_part_00 0
    %%fragment_start:
miles_set_timer_period:
    %%insn_07961:
    push bp ; 07961 55
    %if ($ - %%insn_07961) != 1
        %error "MILES_INSTRUCTION_SIZE_07961"
    %endif
    db 0x8B, 0xEC ; 07962 8BEC | mov bp,sp | encoding preserved
    %%insn_07964:
    push ds ; 07964 1E
    %if ($ - %%insn_07964) != 1
        %error "MILES_INSTRUCTION_SIZE_07964"
    %endif
    %%insn_07965:
    push si ; 07965 56
    %if ($ - %%insn_07965) != 1
        %error "MILES_INSTRUCTION_SIZE_07965"
    %endif
    %%insn_07966:
    push di ; 07966 57
    %if ($ - %%insn_07966) != 1
        %error "MILES_INSTRUCTION_SIZE_07966"
    %endif
    %%insn_07967:
    pushf ; 07967 9C
    %if ($ - %%insn_07967) != 1
        %error "MILES_INSTRUCTION_SIZE_07967"
    %endif
    %%insn_07968:
    cli ; 07968 FA
    %if ($ - %%insn_07968) != 1
        %error "MILES_INSTRUCTION_SIZE_07968"
    %endif
    %%insn_07969:
    mov bx,[bp+0x6] ; 07969 8B5E06
    %if ($ - %%insn_07969) != 3
        %error "MILES_INSTRUCTION_SIZE_07969"
    %endif
    %%insn_0796c:
    shl bx,1 ; 0796C D1E3
    %if ($ - %%insn_0796c) != 2
        %error "MILES_INSTRUCTION_SIZE_0796C"
    %endif
    db 0x2E, 0x8B, 0x87, 0x70, 0x00 ; 0796E 2E8B877000 | mov ax,[cs:bx+0x70] | encoding preserved
    %%insn_07973:
    push ax ; 07973 50
    %if ($ - %%insn_07973) != 1
        %error "MILES_INSTRUCTION_SIZE_07973"
    %endif
    db 0x2E, 0xC7, 0x87, 0x70, 0x00, 0x01, 0x00 ; 07974 2EC78770000100 | mov word [cs:bx+0x70],0x1 | encoding preserved
    %%insn_0797b:
    shl bx,1 ; 0797B D1E3
    %if ($ - %%insn_0797b) != 2
        %error "MILES_INSTRUCTION_SIZE_0797B"
    %endif
    %%insn_0797d:
    mov ax,[bp+0x8] ; 0797D 8B4608
    %if ($ - %%insn_0797d) != 3
        %error "MILES_INSTRUCTION_SIZE_0797D"
    %endif
    %%insn_07980:
    mov dx,[bp+0xa] ; 07980 8B560A
    %if ($ - %%insn_07980) != 3
        %error "MILES_INSTRUCTION_SIZE_07980"
    %endif
    %%insn_07983:
    mov [cs:bx+0xd6],ax ; 07983 2E8987D600
    %if ($ - %%insn_07983) != 5
        %error "MILES_INSTRUCTION_SIZE_07983"
    %endif
    %%insn_07988:
    mov [cs:bx+0xd8],dx ; 07988 2E8997D800
    %if ($ - %%insn_07988) != 5
        %error "MILES_INSTRUCTION_SIZE_07988"
    %endif
    %%insn_0798d:
    mov word [cs:bx+0x92],0x0 ; 0798D 2EC78792000000
    %if ($ - %%insn_0798d) != 7
        %error "MILES_INSTRUCTION_SIZE_0798D"
    %endif
    %%insn_07994:
    mov word [cs:bx+0x94],0x0 ; 07994 2EC78794000000
    %if ($ - %%insn_07994) != 7
        %error "MILES_INSTRUCTION_SIZE_07994"
    %endif
    %%insn_0799b:
    push cs ; 0799B 0E
    %if ($ - %%insn_0799b) != 1
        %error "MILES_INSTRUCTION_SIZE_0799B"
    %endif
    %%insn_0799c:
    call 0x765e ; 0799C E8BFFC
    %if ($ - %%insn_0799c) != 3
        %error "MILES_INSTRUCTION_SIZE_0799C"
    %endif
    %%insn_0799f:
    pop ax ; 0799F 58
    %if ($ - %%insn_0799f) != 1
        %error "MILES_INSTRUCTION_SIZE_0799F"
    %endif
    %%insn_079a0:
    mov bx,[bp+0x6] ; 079A0 8B5E06
    %if ($ - %%insn_079a0) != 3
        %error "MILES_INSTRUCTION_SIZE_079A0"
    %endif
    %%insn_079a3:
    shl bx,1 ; 079A3 D1E3
    %if ($ - %%insn_079a3) != 2
        %error "MILES_INSTRUCTION_SIZE_079A3"
    %endif
    db 0x2E, 0x89, 0x87, 0x70, 0x00 ; 079A5 2E89877000 | mov [cs:bx+0x70],ax | encoding preserved
    %%insn_079aa:
    or bh,0x0 ; 079AA 80CF00
    %if ($ - %%insn_079aa) != 3
        %error "MILES_INSTRUCTION_SIZE_079AA"
    %endif
    miles_set_timer_period_restore_flags_iret equ $ - 2 ; alternate entry 079AB: IRET
    %%insn_079ad:
    push cs ; 079AD 0E
    %if ($ - %%insn_079ad) != 1
        %error "MILES_INSTRUCTION_SIZE_079AD"
    %endif
    %%insn_079ae:
    call 0x79ab ; 079AE E8FAFF
    %if ($ - %%insn_079ae) != 3
        %error "MILES_INSTRUCTION_SIZE_079AE"
    %endif
    %%insn_079b1:
    pop di ; 079B1 5F
    %if ($ - %%insn_079b1) != 1
        %error "MILES_INSTRUCTION_SIZE_079B1"
    %endif
    %%insn_079b2:
    pop si ; 079B2 5E
    %if ($ - %%insn_079b2) != 1
        %error "MILES_INSTRUCTION_SIZE_079B2"
    %endif
    %%insn_079b3:
    pop ds ; 079B3 1F
    %if ($ - %%insn_079b3) != 1
        %error "MILES_INSTRUCTION_SIZE_079B3"
    %endif
    %%insn_079b4:
    pop bp ; 079B4 5D
    %if ($ - %%insn_079b4) != 1
        %error "MILES_INSTRUCTION_SIZE_079B4"
    %endif
    %%insn_079b5:
    retf ; 079B5 CB
    %if ($ - %%insn_079b5) != 1
        %error "MILES_INSTRUCTION_SIZE_079B5"
    %endif
    %if ($ - %%fragment_start) != 85
        %error "MILES_FUNCTION_SIZE_07961"
    %endif
%endmacro
