; Linear entry 076F3 (1702:06d3)
; Ghidra working symbol: FUN_1702_06d3
; Verified role; boundaries repaired where the IRET entry overlaps OR BH,0.
; Contract: Clear registration/reentry state, 16 driver far pointers and initialized flags; set the 16 driver timer handles to FFFFh.
; Evidence: 0576Eh calls 0702h:06D3h at startup. This is separate from timer-state initialization at 07501h.
; Original byte identity is enforced by this project’s build.sh.
; Generated losslessly; edit names/comments only after preserving build identity.
; Instruction boundaries repaired: the flag-restoring IRET is entered inside
; OR BH,0; PUSH CS/CALL builds its IP:CS frame above the saved FLAGS.
; Former one-byte CF gap belongs to the overlapping OR/IRET sequence.

%macro emit_miles_initialize_driver_tables_part_00 0
    %%fragment_start:
miles_initialize_driver_tables:
    %%insn_076f3:
    push ds ; 076F3 1E
    %if ($ - %%insn_076f3) != 1
        %error "MILES_INSTRUCTION_SIZE_076F3"
    %endif
    %%insn_076f4:
    push si ; 076F4 56
    %if ($ - %%insn_076f4) != 1
        %error "MILES_INSTRUCTION_SIZE_076F4"
    %endif
    %%insn_076f5:
    push di ; 076F5 57
    %if ($ - %%insn_076f5) != 1
        %error "MILES_INSTRUCTION_SIZE_076F5"
    %endif
    %%insn_076f6:
    pushf ; 076F6 9C
    %if ($ - %%insn_076f6) != 1
        %error "MILES_INSTRUCTION_SIZE_076F6"
    %endif
    %%insn_076f7:
    cli ; 076F7 FA
    %if ($ - %%insn_076f7) != 1
        %error "MILES_INSTRUCTION_SIZE_076F7"
    %endif
    %%insn_076f8:
    mov word [cs:0x6],0x0 ; 076F8 2EC70606000000
    %if ($ - %%insn_076f8) != 7
        %error "MILES_INSTRUCTION_SIZE_076F8"
    %endif
    %%insn_076ff:
    mov word [cs:0x8],0x0 ; 076FF 2EC70608000000
    %if ($ - %%insn_076ff) != 7
        %error "MILES_INSTRUCTION_SIZE_076FF"
    %endif
    %%insn_07706:
    mov word [cs:0xe26],0x0 ; 07706 2EC706260E0000
    %if ($ - %%insn_07706) != 7
        %error "MILES_INSTRUCTION_SIZE_07706"
    %endif
    %%insn_0770d:
    cld ; 0770D FC
    %if ($ - %%insn_0770d) != 1
        %error "MILES_INSTRUCTION_SIZE_0770D"
    %endif
    %%insn_0770e:
    mov ax,cs ; 0770E 8CC8
    %if ($ - %%insn_0770e) != 2
        %error "MILES_INSTRUCTION_SIZE_0770E"
    %endif
    %%insn_07710:
    mov es,ax ; 07710 8EC0
    %if ($ - %%insn_07710) != 2
        %error "MILES_INSTRUCTION_SIZE_07710"
    %endif
    %%insn_07712:
    mov di,0x12a ; 07712 BF2A01
    %if ($ - %%insn_07712) != 3
        %error "MILES_INSTRUCTION_SIZE_07712"
    %endif
    %%insn_07715:
    mov cx,0x20 ; 07715 B92000
    %if ($ - %%insn_07715) != 3
        %error "MILES_INSTRUCTION_SIZE_07715"
    %endif
    %%insn_07718:
    mov ax,0x0 ; 07718 B80000
    %if ($ - %%insn_07718) != 3
        %error "MILES_INSTRUCTION_SIZE_07718"
    %endif
    %%insn_0771b:
    rep stosw ; 0771B F3AB
    %if ($ - %%insn_0771b) != 2
        %error "MILES_INSTRUCTION_SIZE_0771B"
    %endif
    %%insn_0771d:
    mov di,0x16a ; 0771D BF6A01
    %if ($ - %%insn_0771d) != 3
        %error "MILES_INSTRUCTION_SIZE_0771D"
    %endif
    %%insn_07720:
    mov cx,0x10 ; 07720 B91000
    %if ($ - %%insn_07720) != 3
        %error "MILES_INSTRUCTION_SIZE_07720"
    %endif
    %%insn_07723:
    mov ax,0xffff ; 07723 B8FFFF
    %if ($ - %%insn_07723) != 3
        %error "MILES_INSTRUCTION_SIZE_07723"
    %endif
    %%insn_07726:
    rep stosw ; 07726 F3AB
    %if ($ - %%insn_07726) != 2
        %error "MILES_INSTRUCTION_SIZE_07726"
    %endif
    %%insn_07728:
    mov di,0x18a ; 07728 BF8A01
    %if ($ - %%insn_07728) != 3
        %error "MILES_INSTRUCTION_SIZE_07728"
    %endif
    %%insn_0772b:
    mov cx,0x10 ; 0772B B91000
    %if ($ - %%insn_0772b) != 3
        %error "MILES_INSTRUCTION_SIZE_0772B"
    %endif
    %%insn_0772e:
    mov ax,0x0 ; 0772E B80000
    %if ($ - %%insn_0772e) != 3
        %error "MILES_INSTRUCTION_SIZE_0772E"
    %endif
    %%insn_07731:
    rep stosw ; 07731 F3AB
    %if ($ - %%insn_07731) != 2
        %error "MILES_INSTRUCTION_SIZE_07731"
    %endif
    %%insn_07733:
    or bh,0x0 ; 07733 80CF00
    %if ($ - %%insn_07733) != 3
        %error "MILES_INSTRUCTION_SIZE_07733"
    %endif
    miles_initialize_driver_tables_restore_flags_iret equ $ - 2 ; alternate entry 07734: IRET
    %%insn_07736:
    push cs ; 07736 0E
    %if ($ - %%insn_07736) != 1
        %error "MILES_INSTRUCTION_SIZE_07736"
    %endif
    %%insn_07737:
    call 0x7734 ; 07737 E8FAFF
    %if ($ - %%insn_07737) != 3
        %error "MILES_INSTRUCTION_SIZE_07737"
    %endif
    %%insn_0773a:
    pop di ; 0773A 5F
    %if ($ - %%insn_0773a) != 1
        %error "MILES_INSTRUCTION_SIZE_0773A"
    %endif
    %%insn_0773b:
    pop si ; 0773B 5E
    %if ($ - %%insn_0773b) != 1
        %error "MILES_INSTRUCTION_SIZE_0773B"
    %endif
    %%insn_0773c:
    pop ds ; 0773C 1F
    %if ($ - %%insn_0773c) != 1
        %error "MILES_INSTRUCTION_SIZE_0773C"
    %endif
    %%insn_0773d:
    retf ; 0773D CB
    %if ($ - %%insn_0773d) != 1
        %error "MILES_INSTRUCTION_SIZE_0773D"
    %endif
    %if ($ - %%fragment_start) != 75
        %error "MILES_FUNCTION_SIZE_076F3"
    %endif
%endmacro
