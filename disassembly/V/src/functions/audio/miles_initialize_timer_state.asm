; Linear entry 07501 (1702:04e1)
; Ghidra working symbol: FUN_1702_04e1
; Verified role; boundaries repaired where the IRET entry overlaps OR BH,0.
; Contract: Initialize 17 timer states, elapsed counters and period slots to zero, and set the cached minimum period to FFFFFFFFh.
; Evidence: First timer registration 077A3h calls this before reserving slot 16. CLI/CLD protect table changes; the overlapping IRET restores saved FLAGS.
; Original byte identity is enforced by this project’s build.sh.
; Generated losslessly; edit names/comments only after preserving build identity.
; Instruction boundaries repaired: the flag-restoring IRET is entered inside
; OR BH,0; PUSH CS/CALL builds its IP:CS frame above the saved FLAGS.
; Former one-byte CF gap belongs to the overlapping OR/IRET sequence.

%macro emit_miles_initialize_timer_state_part_00 0
    %%fragment_start:
miles_initialize_timer_state:
    %%insn_07501:
    push ds ; 07501 1E
    %if ($ - %%insn_07501) != 1
        %error "MILES_INSTRUCTION_SIZE_07501"
    %endif
    %%insn_07502:
    push si ; 07502 56
    %if ($ - %%insn_07502) != 1
        %error "MILES_INSTRUCTION_SIZE_07502"
    %endif
    %%insn_07503:
    push di ; 07503 57
    %if ($ - %%insn_07503) != 1
        %error "MILES_INSTRUCTION_SIZE_07503"
    %endif
    %%insn_07504:
    pushf ; 07504 9C
    %if ($ - %%insn_07504) != 1
        %error "MILES_INSTRUCTION_SIZE_07504"
    %endif
    %%insn_07505:
    cli ; 07505 FA
    %if ($ - %%insn_07505) != 1
        %error "MILES_INSTRUCTION_SIZE_07505"
    %endif
    %%insn_07506:
    cld ; 07506 FC
    %if ($ - %%insn_07506) != 1
        %error "MILES_INSTRUCTION_SIZE_07506"
    %endif
    %%insn_07507:
    mov word [cs:0x11a],0xffff ; 07507 2EC7061A01FFFF
    %if ($ - %%insn_07507) != 7
        %error "MILES_INSTRUCTION_SIZE_07507"
    %endif
    %%insn_0750e:
    mov word [cs:0x11c],0xffff ; 0750E 2EC7061C01FFFF
    %if ($ - %%insn_0750e) != 7
        %error "MILES_INSTRUCTION_SIZE_0750E"
    %endif
    %%insn_07515:
    push cs ; 07515 0E
    %if ($ - %%insn_07515) != 1
        %error "MILES_INSTRUCTION_SIZE_07515"
    %endif
    %%insn_07516:
    pop es ; 07516 07
    %if ($ - %%insn_07516) != 1
        %error "MILES_INSTRUCTION_SIZE_07516"
    %endif
    %%insn_07517:
    mov di,0x70 ; 07517 BF7000
    %if ($ - %%insn_07517) != 3
        %error "MILES_INSTRUCTION_SIZE_07517"
    %endif
    %%insn_0751a:
    mov cx,0x11 ; 0751A B91100
    %if ($ - %%insn_0751a) != 3
        %error "MILES_INSTRUCTION_SIZE_0751A"
    %endif
    %%insn_0751d:
    mov ax,0x0 ; 0751D B80000
    %if ($ - %%insn_0751d) != 3
        %error "MILES_INSTRUCTION_SIZE_0751D"
    %endif
    %%insn_07520:
    rep stosw ; 07520 F3AB
    %if ($ - %%insn_07520) != 2
        %error "MILES_INSTRUCTION_SIZE_07520"
    %endif
    %%insn_07522:
    mov di,0x92 ; 07522 BF9200
    %if ($ - %%insn_07522) != 3
        %error "MILES_INSTRUCTION_SIZE_07522"
    %endif
    %%insn_07525:
    mov cx,0x22 ; 07525 B92200
    %if ($ - %%insn_07525) != 3
        %error "MILES_INSTRUCTION_SIZE_07525"
    %endif
    %%insn_07528:
    rep stosw ; 07528 F3AB
    %if ($ - %%insn_07528) != 2
        %error "MILES_INSTRUCTION_SIZE_07528"
    %endif
    %%insn_0752a:
    mov di,0xd6 ; 0752A BFD600
    %if ($ - %%insn_0752a) != 3
        %error "MILES_INSTRUCTION_SIZE_0752A"
    %endif
    %%insn_0752d:
    mov cx,0x22 ; 0752D B92200
    %if ($ - %%insn_0752d) != 3
        %error "MILES_INSTRUCTION_SIZE_0752D"
    %endif
    %%insn_07530:
    rep stosw ; 07530 F3AB
    %if ($ - %%insn_07530) != 2
        %error "MILES_INSTRUCTION_SIZE_07530"
    %endif
    %%insn_07532:
    or bh,0x0 ; 07532 80CF00
    %if ($ - %%insn_07532) != 3
        %error "MILES_INSTRUCTION_SIZE_07532"
    %endif
    miles_initialize_timer_state_restore_flags_iret equ $ - 2 ; alternate entry 07533: IRET
    %%insn_07535:
    push cs ; 07535 0E
    %if ($ - %%insn_07535) != 1
        %error "MILES_INSTRUCTION_SIZE_07535"
    %endif
    %%insn_07536:
    call 0x7533 ; 07536 E8FAFF
    %if ($ - %%insn_07536) != 3
        %error "MILES_INSTRUCTION_SIZE_07536"
    %endif
    %%insn_07539:
    pop di ; 07539 5F
    %if ($ - %%insn_07539) != 1
        %error "MILES_INSTRUCTION_SIZE_07539"
    %endif
    %%insn_0753a:
    pop si ; 0753A 5E
    %if ($ - %%insn_0753a) != 1
        %error "MILES_INSTRUCTION_SIZE_0753A"
    %endif
    %%insn_0753b:
    pop ds ; 0753B 1F
    %if ($ - %%insn_0753b) != 1
        %error "MILES_INSTRUCTION_SIZE_0753B"
    %endif
    %%insn_0753c:
    retf ; 0753C CB
    %if ($ - %%insn_0753c) != 1
        %error "MILES_INSTRUCTION_SIZE_0753C"
    %endif
    %if ($ - %%fragment_start) != 60
        %error "MILES_FUNCTION_SIZE_07501"
    %endif
%endmacro
