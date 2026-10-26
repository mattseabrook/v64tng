; Linear entry 07A33 (1702:0a13)
; Ghidra working symbol: FUN_1702_0a13
; Verified role; boundaries repaired where the IRET entry overlaps OR BH,0.
; Contract: Return the last programmed PIT count from CS:0128h, restoring saved FLAGS.
; Evidence: 075C0h stores this field immediately before hardware writes; no external hardware read is performed.
; Original byte identity is enforced by this project’s build.sh.
; Generated losslessly; edit names/comments only after preserving build identity.
; Instruction boundaries repaired: the flag-restoring IRET is entered inside
; OR BH,0; PUSH CS/CALL builds its IP:CS frame above the saved FLAGS.
; Former one-byte CF gap belongs to the overlapping OR/IRET sequence.

%macro emit_miles_get_programmed_pit_count_part_00 0
    %%fragment_start:
miles_get_programmed_pit_count:
    %%insn_07a33:
    push ds ; 07A33 1E
    %if ($ - %%insn_07a33) != 1
        %error "MILES_INSTRUCTION_SIZE_07A33"
    %endif
    %%insn_07a34:
    push si ; 07A34 56
    %if ($ - %%insn_07a34) != 1
        %error "MILES_INSTRUCTION_SIZE_07A34"
    %endif
    %%insn_07a35:
    push di ; 07A35 57
    %if ($ - %%insn_07a35) != 1
        %error "MILES_INSTRUCTION_SIZE_07A35"
    %endif
    %%insn_07a36:
    pushf ; 07A36 9C
    %if ($ - %%insn_07a36) != 1
        %error "MILES_INSTRUCTION_SIZE_07A36"
    %endif
    %%insn_07a37:
    cli ; 07A37 FA
    %if ($ - %%insn_07a37) != 1
        %error "MILES_INSTRUCTION_SIZE_07A37"
    %endif
    %%insn_07a38:
    mov ax,[cs:0x128] ; 07A38 2EA12801
    %if ($ - %%insn_07a38) != 4
        %error "MILES_INSTRUCTION_SIZE_07A38"
    %endif
    %%insn_07a3c:
    or bh,0x0 ; 07A3C 80CF00
    %if ($ - %%insn_07a3c) != 3
        %error "MILES_INSTRUCTION_SIZE_07A3C"
    %endif
    miles_get_programmed_pit_count_restore_flags_iret equ $ - 2 ; alternate entry 07A3D: IRET
    %%insn_07a3f:
    push cs ; 07A3F 0E
    %if ($ - %%insn_07a3f) != 1
        %error "MILES_INSTRUCTION_SIZE_07A3F"
    %endif
    %%insn_07a40:
    call 0x7a3d ; 07A40 E8FAFF
    %if ($ - %%insn_07a40) != 3
        %error "MILES_INSTRUCTION_SIZE_07A40"
    %endif
    %%insn_07a43:
    pop di ; 07A43 5F
    %if ($ - %%insn_07a43) != 1
        %error "MILES_INSTRUCTION_SIZE_07A43"
    %endif
    %%insn_07a44:
    pop si ; 07A44 5E
    %if ($ - %%insn_07a44) != 1
        %error "MILES_INSTRUCTION_SIZE_07A44"
    %endif
    %%insn_07a45:
    pop ds ; 07A45 1F
    %if ($ - %%insn_07a45) != 1
        %error "MILES_INSTRUCTION_SIZE_07A45"
    %endif
    %%insn_07a46:
    retf ; 07A46 CB
    %if ($ - %%insn_07a46) != 1
        %error "MILES_INSTRUCTION_SIZE_07A46"
    %endif
    %if ($ - %%fragment_start) != 20
        %error "MILES_FUNCTION_SIZE_07A33"
    %endif
%endmacro
