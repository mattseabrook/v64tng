; Linear entry 078D5 (1702:08b5)
; Ghidra working symbol: FUN_1702_08b5
; Verified role; boundaries repaired where the IRET entry overlaps OR BH,0.
; Contract: Change a timer state from stopped (1) to running (2); leave other states unchanged.
; Evidence: First registration starts reserved slot 16 through this helper. No input index bounds check is present.
; Original byte identity is enforced by this project’s build.sh.
; Generated losslessly; edit names/comments only after preserving build identity.
; Instruction boundaries repaired: the flag-restoring IRET is entered inside
; OR BH,0; PUSH CS/CALL builds its IP:CS frame above the saved FLAGS.
; Former one-byte CF gap belongs to the overlapping OR/IRET sequence.

%macro emit_miles_start_timer_callback_part_00 0
    %%fragment_start:
miles_start_timer_callback:
    %%insn_078d5:
    push bp ; 078D5 55
    %if ($ - %%insn_078d5) != 1
        %error "MILES_INSTRUCTION_SIZE_078D5"
    %endif
    db 0x8B, 0xEC ; 078D6 8BEC | mov bp,sp | encoding preserved
    %%insn_078d8:
    push ds ; 078D8 1E
    %if ($ - %%insn_078d8) != 1
        %error "MILES_INSTRUCTION_SIZE_078D8"
    %endif
    %%insn_078d9:
    push si ; 078D9 56
    %if ($ - %%insn_078d9) != 1
        %error "MILES_INSTRUCTION_SIZE_078D9"
    %endif
    %%insn_078da:
    push di ; 078DA 57
    %if ($ - %%insn_078da) != 1
        %error "MILES_INSTRUCTION_SIZE_078DA"
    %endif
    %%insn_078db:
    pushf ; 078DB 9C
    %if ($ - %%insn_078db) != 1
        %error "MILES_INSTRUCTION_SIZE_078DB"
    %endif
    %%insn_078dc:
    cli ; 078DC FA
    %if ($ - %%insn_078dc) != 1
        %error "MILES_INSTRUCTION_SIZE_078DC"
    %endif
    %%insn_078dd:
    mov bx,[bp+0x6] ; 078DD 8B5E06
    %if ($ - %%insn_078dd) != 3
        %error "MILES_INSTRUCTION_SIZE_078DD"
    %endif
    %%insn_078e0:
    shl bx,1 ; 078E0 D1E3
    %if ($ - %%insn_078e0) != 2
        %error "MILES_INSTRUCTION_SIZE_078E0"
    %endif
    db 0x2E, 0x83, 0xBF, 0x70, 0x00, 0x01 ; 078E2 2E83BF700001 | cmp word [cs:bx+0x70],0x1 | encoding preserved
    %%insn_078e8:
    jnz short 0x78f1 ; 078E8 7507
    %if ($ - %%insn_078e8) != 2
        %error "MILES_INSTRUCTION_SIZE_078E8"
    %endif
    db 0x2E, 0xC7, 0x87, 0x70, 0x00, 0x02, 0x00 ; 078EA 2EC78770000200 | mov word [cs:bx+0x70],0x2 | encoding preserved
    %%insn_078f1:
    or bh,0x0 ; 078F1 80CF00
    %if ($ - %%insn_078f1) != 3
        %error "MILES_INSTRUCTION_SIZE_078F1"
    %endif
    miles_start_timer_callback_restore_flags_iret equ $ - 2 ; alternate entry 078F2: IRET
    %%insn_078f4:
    push cs ; 078F4 0E
    %if ($ - %%insn_078f4) != 1
        %error "MILES_INSTRUCTION_SIZE_078F4"
    %endif
    %%insn_078f5:
    call 0x78f2 ; 078F5 E8FAFF
    %if ($ - %%insn_078f5) != 3
        %error "MILES_INSTRUCTION_SIZE_078F5"
    %endif
    %%insn_078f8:
    pop di ; 078F8 5F
    %if ($ - %%insn_078f8) != 1
        %error "MILES_INSTRUCTION_SIZE_078F8"
    %endif
    %%insn_078f9:
    pop si ; 078F9 5E
    %if ($ - %%insn_078f9) != 1
        %error "MILES_INSTRUCTION_SIZE_078F9"
    %endif
    %%insn_078fa:
    pop ds ; 078FA 1F
    %if ($ - %%insn_078fa) != 1
        %error "MILES_INSTRUCTION_SIZE_078FA"
    %endif
    %%insn_078fb:
    pop bp ; 078FB 5D
    %if ($ - %%insn_078fb) != 1
        %error "MILES_INSTRUCTION_SIZE_078FB"
    %endif
    %%insn_078fc:
    retf ; 078FC CB
    %if ($ - %%insn_078fc) != 1
        %error "MILES_INSTRUCTION_SIZE_078FC"
    %endif
    %if ($ - %%fragment_start) != 40
        %error "MILES_FUNCTION_SIZE_078D5"
    %endif
%endmacro
