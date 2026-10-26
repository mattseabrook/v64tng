; Linear entry 0791B (1702:08fb)
; Ghidra working symbol: FUN_1702_08fb
; Verified role; boundaries repaired where the IRET entry overlaps OR BH,0.
; Contract: Change a timer state from running (2) to stopped (1); leave other states unchanged.
; Evidence: Uses the same CS:0070h timer-state table and saved-FLAGS overlapping return as the start helper. No input index bounds check is present.
; Original byte identity is enforced by this project’s build.sh.
; Generated losslessly; edit names/comments only after preserving build identity.
; Instruction boundaries repaired: the flag-restoring IRET is entered inside
; OR BH,0; PUSH CS/CALL builds its IP:CS frame above the saved FLAGS.
; Former one-byte CF gap belongs to the overlapping OR/IRET sequence.

%macro emit_miles_stop_timer_callback_part_00 0
    %%fragment_start:
miles_stop_timer_callback:
    %%insn_0791b:
    push bp ; 0791B 55
    %if ($ - %%insn_0791b) != 1
        %error "MILES_INSTRUCTION_SIZE_0791B"
    %endif
    db 0x8B, 0xEC ; 0791C 8BEC | mov bp,sp | encoding preserved
    %%insn_0791e:
    push ds ; 0791E 1E
    %if ($ - %%insn_0791e) != 1
        %error "MILES_INSTRUCTION_SIZE_0791E"
    %endif
    %%insn_0791f:
    push si ; 0791F 56
    %if ($ - %%insn_0791f) != 1
        %error "MILES_INSTRUCTION_SIZE_0791F"
    %endif
    %%insn_07920:
    push di ; 07920 57
    %if ($ - %%insn_07920) != 1
        %error "MILES_INSTRUCTION_SIZE_07920"
    %endif
    %%insn_07921:
    pushf ; 07921 9C
    %if ($ - %%insn_07921) != 1
        %error "MILES_INSTRUCTION_SIZE_07921"
    %endif
    %%insn_07922:
    cli ; 07922 FA
    %if ($ - %%insn_07922) != 1
        %error "MILES_INSTRUCTION_SIZE_07922"
    %endif
    %%insn_07923:
    mov bx,[bp+0x6] ; 07923 8B5E06
    %if ($ - %%insn_07923) != 3
        %error "MILES_INSTRUCTION_SIZE_07923"
    %endif
    %%insn_07926:
    shl bx,1 ; 07926 D1E3
    %if ($ - %%insn_07926) != 2
        %error "MILES_INSTRUCTION_SIZE_07926"
    %endif
    db 0x2E, 0x83, 0xBF, 0x70, 0x00, 0x02 ; 07928 2E83BF700002 | cmp word [cs:bx+0x70],0x2 | encoding preserved
    %%insn_0792e:
    jnz short 0x7937 ; 0792E 7507
    %if ($ - %%insn_0792e) != 2
        %error "MILES_INSTRUCTION_SIZE_0792E"
    %endif
    db 0x2E, 0xC7, 0x87, 0x70, 0x00, 0x01, 0x00 ; 07930 2EC78770000100 | mov word [cs:bx+0x70],0x1 | encoding preserved
    %%insn_07937:
    or bh,0x0 ; 07937 80CF00
    %if ($ - %%insn_07937) != 3
        %error "MILES_INSTRUCTION_SIZE_07937"
    %endif
    miles_stop_timer_callback_restore_flags_iret equ $ - 2 ; alternate entry 07938: IRET
    %%insn_0793a:
    push cs ; 0793A 0E
    %if ($ - %%insn_0793a) != 1
        %error "MILES_INSTRUCTION_SIZE_0793A"
    %endif
    %%insn_0793b:
    call 0x7938 ; 0793B E8FAFF
    %if ($ - %%insn_0793b) != 3
        %error "MILES_INSTRUCTION_SIZE_0793B"
    %endif
    %%insn_0793e:
    pop di ; 0793E 5F
    %if ($ - %%insn_0793e) != 1
        %error "MILES_INSTRUCTION_SIZE_0793E"
    %endif
    %%insn_0793f:
    pop si ; 0793F 5E
    %if ($ - %%insn_0793f) != 1
        %error "MILES_INSTRUCTION_SIZE_0793F"
    %endif
    %%insn_07940:
    pop ds ; 07940 1F
    %if ($ - %%insn_07940) != 1
        %error "MILES_INSTRUCTION_SIZE_07940"
    %endif
    %%insn_07941:
    pop bp ; 07941 5D
    %if ($ - %%insn_07941) != 1
        %error "MILES_INSTRUCTION_SIZE_07941"
    %endif
    %%insn_07942:
    retf ; 07942 CB
    %if ($ - %%insn_07942) != 1
        %error "MILES_INSTRUCTION_SIZE_07942"
    %endif
    %if ($ - %%fragment_start) != 40
        %error "MILES_FUNCTION_SIZE_0791B"
    %endif
%endmacro
