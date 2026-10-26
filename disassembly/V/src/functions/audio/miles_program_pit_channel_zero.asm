; Linear entry 075C0 (1702:05a0)
; Ghidra working symbol: FUN_1702_05a0
; Verified role; boundaries repaired where the IRET entry overlaps OR BH,0.
; Contract: Store the count at CS:0128h; write command 36h to port 43h and low/high count bytes to port 40h, restoring saved FLAGS.
; Evidence: Called by period conversion 075E9h and final timer release 0786Eh. The overlapping IRET returns to the epilogue with the original saved FLAGS.
; Original byte identity is enforced by this project’s build.sh.
; Generated losslessly; edit names/comments only after preserving build identity.
; Instruction boundaries repaired: the flag-restoring IRET is entered inside
; OR BH,0; PUSH CS/CALL builds its IP:CS frame above the saved FLAGS.
; Former one-byte CF gap belongs to the overlapping OR/IRET sequence.

%macro emit_miles_program_pit_channel_zero_part_00 0
    %%fragment_start:
miles_program_pit_channel_zero:
    %%insn_075c0:
    push bp ; 075C0 55
    %if ($ - %%insn_075c0) != 1
        %error "MILES_INSTRUCTION_SIZE_075C0"
    %endif
    db 0x8B, 0xEC ; 075C1 8BEC | mov bp,sp | encoding preserved
    %%insn_075c3:
    push ds ; 075C3 1E
    %if ($ - %%insn_075c3) != 1
        %error "MILES_INSTRUCTION_SIZE_075C3"
    %endif
    %%insn_075c4:
    push si ; 075C4 56
    %if ($ - %%insn_075c4) != 1
        %error "MILES_INSTRUCTION_SIZE_075C4"
    %endif
    %%insn_075c5:
    push di ; 075C5 57
    %if ($ - %%insn_075c5) != 1
        %error "MILES_INSTRUCTION_SIZE_075C5"
    %endif
    %%insn_075c6:
    pushf ; 075C6 9C
    %if ($ - %%insn_075c6) != 1
        %error "MILES_INSTRUCTION_SIZE_075C6"
    %endif
    %%insn_075c7:
    cli ; 075C7 FA
    %if ($ - %%insn_075c7) != 1
        %error "MILES_INSTRUCTION_SIZE_075C7"
    %endif
    %%insn_075c8:
    mov al,0x36 ; 075C8 B036
    %if ($ - %%insn_075c8) != 2
        %error "MILES_INSTRUCTION_SIZE_075C8"
    %endif
    %%insn_075ca:
    out byte 0x43,al ; 075CA E643
    %if ($ - %%insn_075ca) != 2
        %error "MILES_INSTRUCTION_SIZE_075CA"
    %endif
    %%insn_075cc:
    mov ax,[bp+0x6] ; 075CC 8B4606
    %if ($ - %%insn_075cc) != 3
        %error "MILES_INSTRUCTION_SIZE_075CC"
    %endif
    %%insn_075cf:
    mov [cs:0x128],ax ; 075CF 2EA32801
    %if ($ - %%insn_075cf) != 4
        %error "MILES_INSTRUCTION_SIZE_075CF"
    %endif
    %%insn_075d3:
    jmp short 0x75d5 ; 075D3 EB00
    %if ($ - %%insn_075d3) != 2
        %error "MILES_INSTRUCTION_SIZE_075D3"
    %endif
    %%insn_075d5:
    out byte 0x40,al ; 075D5 E640
    %if ($ - %%insn_075d5) != 2
        %error "MILES_INSTRUCTION_SIZE_075D5"
    %endif
    db 0x8A, 0xC4 ; 075D7 8AC4 | mov al,ah | encoding preserved
    %%insn_075d9:
    jmp short 0x75db ; 075D9 EB00
    %if ($ - %%insn_075d9) != 2
        %error "MILES_INSTRUCTION_SIZE_075D9"
    %endif
    %%insn_075db:
    out byte 0x40,al ; 075DB E640
    %if ($ - %%insn_075db) != 2
        %error "MILES_INSTRUCTION_SIZE_075DB"
    %endif
    %%insn_075dd:
    or bh,0x0 ; 075DD 80CF00
    %if ($ - %%insn_075dd) != 3
        %error "MILES_INSTRUCTION_SIZE_075DD"
    %endif
    miles_program_pit_channel_zero_restore_flags_iret equ $ - 2 ; alternate entry 075DE: IRET
    %%insn_075e0:
    push cs ; 075E0 0E
    %if ($ - %%insn_075e0) != 1
        %error "MILES_INSTRUCTION_SIZE_075E0"
    %endif
    %%insn_075e1:
    call 0x75de ; 075E1 E8FAFF
    %if ($ - %%insn_075e1) != 3
        %error "MILES_INSTRUCTION_SIZE_075E1"
    %endif
    %%insn_075e4:
    pop di ; 075E4 5F
    %if ($ - %%insn_075e4) != 1
        %error "MILES_INSTRUCTION_SIZE_075E4"
    %endif
    %%insn_075e5:
    pop si ; 075E5 5E
    %if ($ - %%insn_075e5) != 1
        %error "MILES_INSTRUCTION_SIZE_075E5"
    %endif
    %%insn_075e6:
    pop ds ; 075E6 1F
    %if ($ - %%insn_075e6) != 1
        %error "MILES_INSTRUCTION_SIZE_075E6"
    %endif
    %%insn_075e7:
    pop bp ; 075E7 5D
    %if ($ - %%insn_075e7) != 1
        %error "MILES_INSTRUCTION_SIZE_075E7"
    %endif
    %%insn_075e8:
    retf ; 075E8 CB
    %if ($ - %%insn_075e8) != 1
        %error "MILES_INSTRUCTION_SIZE_075E8"
    %endif
    %if ($ - %%fragment_start) != 41
        %error "MILES_FUNCTION_SIZE_075C0"
    %endif
%endmacro
