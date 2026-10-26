; Linear entry 07590 (1702:0570)
; Ghidra working symbol: FUN_1702_0570
; Verified role; boundaries repaired where the IRET entry overlaps OR BH,0.
; Contract: Set the timer scan state to FFFFh and restore the saved INT 08h vector.
; Evidence: 0786Eh calls this after the final user timer is released; saved vector CS:011Eh/0120h was captured by 07544h.
; Original byte identity is enforced by this project’s build.sh.
; Generated losslessly; edit names/comments only after preserving build identity.
; Instruction boundaries repaired: the flag-restoring IRET is entered inside
; OR BH,0; PUSH CS/CALL builds its IP:CS frame above the saved FLAGS.
; Former one-byte CF gap belongs to the overlapping OR/IRET sequence.

%macro emit_miles_restore_timer_interrupt_part_00 0
    %%fragment_start:
miles_restore_timer_interrupt:
    %%insn_07590:
    push ds ; 07590 1E
    %if ($ - %%insn_07590) != 1
        %error "MILES_INSTRUCTION_SIZE_07590"
    %endif
    %%insn_07591:
    push si ; 07591 56
    %if ($ - %%insn_07591) != 1
        %error "MILES_INSTRUCTION_SIZE_07591"
    %endif
    %%insn_07592:
    push di ; 07592 57
    %if ($ - %%insn_07592) != 1
        %error "MILES_INSTRUCTION_SIZE_07592"
    %endif
    %%insn_07593:
    pushf ; 07593 9C
    %if ($ - %%insn_07593) != 1
        %error "MILES_INSTRUCTION_SIZE_07593"
    %endif
    %%insn_07594:
    cli ; 07594 FA
    %if ($ - %%insn_07594) != 1
        %error "MILES_INSTRUCTION_SIZE_07594"
    %endif
    %%insn_07595:
    mov word [cs:0x122],0xffff ; 07595 2EC7062201FFFF
    %if ($ - %%insn_07595) != 7
        %error "MILES_INSTRUCTION_SIZE_07595"
    %endif
    %%insn_0759c:
    mov dx,[cs:0x11e] ; 0759C 2E8B161E01
    %if ($ - %%insn_0759c) != 5
        %error "MILES_INSTRUCTION_SIZE_0759C"
    %endif
    %%insn_075a1:
    mov ds,word [cs:0x120] ; 075A1 2E8E1E2001
    %if ($ - %%insn_075a1) != 5
        %error "MILES_INSTRUCTION_SIZE_075A1"
    %endif
    %%insn_075a6:
    mov ax,0x0 ; 075A6 B80000
    %if ($ - %%insn_075a6) != 3
        %error "MILES_INSTRUCTION_SIZE_075A6"
    %endif
    %%insn_075a9:
    mov es,ax ; 075A9 8EC0
    %if ($ - %%insn_075a9) != 2
        %error "MILES_INSTRUCTION_SIZE_075A9"
    %endif
    %%insn_075ab:
    mov [es:0x20],dx ; 075AB 2689162000
    %if ($ - %%insn_075ab) != 5
        %error "MILES_INSTRUCTION_SIZE_075AB"
    %endif
    %%insn_075b0:
    mov word [es:0x22],ds ; 075B0 268C1E2200
    %if ($ - %%insn_075b0) != 5
        %error "MILES_INSTRUCTION_SIZE_075B0"
    %endif
    %%insn_075b5:
    or bh,0x0 ; 075B5 80CF00
    %if ($ - %%insn_075b5) != 3
        %error "MILES_INSTRUCTION_SIZE_075B5"
    %endif
    miles_restore_timer_interrupt_restore_flags_iret equ $ - 2 ; alternate entry 075B6: IRET
    %%insn_075b8:
    push cs ; 075B8 0E
    %if ($ - %%insn_075b8) != 1
        %error "MILES_INSTRUCTION_SIZE_075B8"
    %endif
    %%insn_075b9:
    call 0x75b6 ; 075B9 E8FAFF
    %if ($ - %%insn_075b9) != 3
        %error "MILES_INSTRUCTION_SIZE_075B9"
    %endif
    %%insn_075bc:
    pop di ; 075BC 5F
    %if ($ - %%insn_075bc) != 1
        %error "MILES_INSTRUCTION_SIZE_075BC"
    %endif
    %%insn_075bd:
    pop si ; 075BD 5E
    %if ($ - %%insn_075bd) != 1
        %error "MILES_INSTRUCTION_SIZE_075BD"
    %endif
    %%insn_075be:
    pop ds ; 075BE 1F
    %if ($ - %%insn_075be) != 1
        %error "MILES_INSTRUCTION_SIZE_075BE"
    %endif
    %%insn_075bf:
    retf ; 075BF CB
    %if ($ - %%insn_075bf) != 1
        %error "MILES_INSTRUCTION_SIZE_075BF"
    %endif
    %if ($ - %%fragment_start) != 48
        %error "MILES_FUNCTION_SIZE_07590"
    %endif
%endmacro
