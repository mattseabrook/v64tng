; Linear entry 078B7 (1702:0897)
; Ghidra working symbol: FUN_1702_0897
; Verified role; boundaries repaired where the IRET entry overlaps OR BH,0.
; Contract: Release user timer slots 15 through 0 through 0786Eh.
; Evidence: 0773Eh invokes this after its driver walk. The reserved slot 16 is not part of this sweep.
; Original byte identity is enforced by this project’s build.sh.
; Generated losslessly; edit names/comments only after preserving build identity.
; Instruction boundaries repaired: the flag-restoring IRET is entered inside
; OR BH,0; PUSH CS/CALL builds its IP:CS frame above the saved FLAGS.
; Former one-byte CF gap belongs to the overlapping OR/IRET sequence.

%macro emit_miles_release_all_timer_callbacks_part_00 0
    %%fragment_start:
miles_release_all_timer_callbacks:
    %%insn_078b7:
    push ds ; 078B7 1E
    %if ($ - %%insn_078b7) != 1
        %error "MILES_INSTRUCTION_SIZE_078B7"
    %endif
    %%insn_078b8:
    push si ; 078B8 56
    %if ($ - %%insn_078b8) != 1
        %error "MILES_INSTRUCTION_SIZE_078B8"
    %endif
    %%insn_078b9:
    push di ; 078B9 57
    %if ($ - %%insn_078b9) != 1
        %error "MILES_INSTRUCTION_SIZE_078B9"
    %endif
    %%insn_078ba:
    pushf ; 078BA 9C
    %if ($ - %%insn_078ba) != 1
        %error "MILES_INSTRUCTION_SIZE_078BA"
    %endif
    %%insn_078bb:
    cli ; 078BB FA
    %if ($ - %%insn_078bb) != 1
        %error "MILES_INSTRUCTION_SIZE_078BB"
    %endif
    %%insn_078bc:
    mov si,0xf ; 078BC BE0F00
    %if ($ - %%insn_078bc) != 3
        %error "MILES_INSTRUCTION_SIZE_078BC"
    %endif
    %%insn_078bf:
    push si ; 078BF 56
    %if ($ - %%insn_078bf) != 1
        %error "MILES_INSTRUCTION_SIZE_078BF"
    %endif
    %%insn_078c0:
    push cs ; 078C0 0E
    %if ($ - %%insn_078c0) != 1
        %error "MILES_INSTRUCTION_SIZE_078C0"
    %endif
    %%insn_078c1:
    call 0x786e ; 078C1 E8AAFF
    %if ($ - %%insn_078c1) != 3
        %error "MILES_INSTRUCTION_SIZE_078C1"
    %endif
    %%insn_078c4:
    add sp,0x2 ; 078C4 83C402
    %if ($ - %%insn_078c4) != 3
        %error "MILES_INSTRUCTION_SIZE_078C4"
    %endif
    %%insn_078c7:
    dec si ; 078C7 4E
    %if ($ - %%insn_078c7) != 1
        %error "MILES_INSTRUCTION_SIZE_078C7"
    %endif
    %%insn_078c8:
    jnl short 0x78bf ; 078C8 7DF5
    %if ($ - %%insn_078c8) != 2
        %error "MILES_INSTRUCTION_SIZE_078C8"
    %endif
    %%insn_078ca:
    or bh,0x0 ; 078CA 80CF00
    %if ($ - %%insn_078ca) != 3
        %error "MILES_INSTRUCTION_SIZE_078CA"
    %endif
    miles_release_all_timer_callbacks_restore_flags_iret equ $ - 2 ; alternate entry 078CB: IRET
    %%insn_078cd:
    push cs ; 078CD 0E
    %if ($ - %%insn_078cd) != 1
        %error "MILES_INSTRUCTION_SIZE_078CD"
    %endif
    %%insn_078ce:
    call 0x78cb ; 078CE E8FAFF
    %if ($ - %%insn_078ce) != 3
        %error "MILES_INSTRUCTION_SIZE_078CE"
    %endif
    %%insn_078d1:
    pop di ; 078D1 5F
    %if ($ - %%insn_078d1) != 1
        %error "MILES_INSTRUCTION_SIZE_078D1"
    %endif
    %%insn_078d2:
    pop si ; 078D2 5E
    %if ($ - %%insn_078d2) != 1
        %error "MILES_INSTRUCTION_SIZE_078D2"
    %endif
    %%insn_078d3:
    pop ds ; 078D3 1F
    %if ($ - %%insn_078d3) != 1
        %error "MILES_INSTRUCTION_SIZE_078D3"
    %endif
    %%insn_078d4:
    retf ; 078D4 CB
    %if ($ - %%insn_078d4) != 1
        %error "MILES_INSTRUCTION_SIZE_078D4"
    %endif
    %if ($ - %%fragment_start) != 30
        %error "MILES_FUNCTION_SIZE_078B7"
    %endif
%endmacro
