; Linear entry 07544 (1702:0524)
; Ghidra working symbol: FUN_1702_0524
; Verified role; boundaries repaired where the IRET entry overlaps OR BH,0.
; Contract: Save INT 08h vector, set reserved callback to 0753Dh, and install the library timer interrupt at CS:0410h.
; Evidence: Writes IVT bytes 0020h..0023h directly while interrupts are disabled. The corresponding restore is 07590h.
; Original byte identity is enforced by this project’s build.sh.
; Generated losslessly; edit names/comments only after preserving build identity.
; Instruction boundaries repaired: the flag-restoring IRET is entered inside
; OR BH,0; PUSH CS/CALL builds its IP:CS frame above the saved FLAGS.
; Former one-byte CF gap belongs to the overlapping OR/IRET sequence.

%macro emit_miles_install_timer_interrupt_part_00 0
    %%fragment_start:
miles_install_timer_interrupt:
    %%insn_07544:
    push ds ; 07544 1E
    %if ($ - %%insn_07544) != 1
        %error "MILES_INSTRUCTION_SIZE_07544"
    %endif
    %%insn_07545:
    push si ; 07545 56
    %if ($ - %%insn_07545) != 1
        %error "MILES_INSTRUCTION_SIZE_07545"
    %endif
    %%insn_07546:
    push di ; 07546 57
    %if ($ - %%insn_07546) != 1
        %error "MILES_INSTRUCTION_SIZE_07546"
    %endif
    %%insn_07547:
    pushf ; 07547 9C
    %if ($ - %%insn_07547) != 1
        %error "MILES_INSTRUCTION_SIZE_07547"
    %endif
    %%insn_07548:
    cli ; 07548 FA
    %if ($ - %%insn_07548) != 1
        %error "MILES_INSTRUCTION_SIZE_07548"
    %endif
    %%insn_07549:
    mov ax,0x0 ; 07549 B80000
    %if ($ - %%insn_07549) != 3
        %error "MILES_INSTRUCTION_SIZE_07549"
    %endif
    %%insn_0754c:
    mov es,ax ; 0754C 8EC0
    %if ($ - %%insn_0754c) != 2
        %error "MILES_INSTRUCTION_SIZE_0754C"
    %endif
    %%insn_0754e:
    mov bx,[es:0x20] ; 0754E 268B1E2000
    %if ($ - %%insn_0754e) != 5
        %error "MILES_INSTRUCTION_SIZE_0754E"
    %endif
    %%insn_07553:
    mov es,word [es:0x22] ; 07553 268E062200
    %if ($ - %%insn_07553) != 5
        %error "MILES_INSTRUCTION_SIZE_07553"
    %endif
    %%insn_07558:
    mov [cs:0x11e],bx ; 07558 2E891E1E01
    %if ($ - %%insn_07558) != 5
        %error "MILES_INSTRUCTION_SIZE_07558"
    %endif
    %%insn_0755d:
    mov word [cs:0x120],es ; 0755D 2E8C062001
    %if ($ - %%insn_0755d) != 5
        %error "MILES_INSTRUCTION_SIZE_0755D"
    %endif
    %%insn_07562:
    mov bx,0x51d ; 07562 BB1D05
    %if ($ - %%insn_07562) != 3
        %error "MILES_INSTRUCTION_SIZE_07562"
    %endif
    %%insn_07565:
    mov [cs:0x4a],bx ; 07565 2E891E4A00
    %if ($ - %%insn_07565) != 5
        %error "MILES_INSTRUCTION_SIZE_07565"
    %endif
    %%insn_0756a:
    mov word [cs:0x4c],cs ; 0756A 2E8C0E4C00
    %if ($ - %%insn_0756a) != 5
        %error "MILES_INSTRUCTION_SIZE_0756A"
    %endif
    %%insn_0756f:
    mov ax,cs ; 0756F 8CC8
    %if ($ - %%insn_0756f) != 2
        %error "MILES_INSTRUCTION_SIZE_0756F"
    %endif
    %%insn_07571:
    mov ds,ax ; 07571 8ED8
    %if ($ - %%insn_07571) != 2
        %error "MILES_INSTRUCTION_SIZE_07571"
    %endif
    %%insn_07573:
    mov dx,0x410 ; 07573 BA1004
    %if ($ - %%insn_07573) != 3
        %error "MILES_INSTRUCTION_SIZE_07573"
    %endif
    %%insn_07576:
    mov ax,0x0 ; 07576 B80000
    %if ($ - %%insn_07576) != 3
        %error "MILES_INSTRUCTION_SIZE_07576"
    %endif
    %%insn_07579:
    mov es,ax ; 07579 8EC0
    %if ($ - %%insn_07579) != 2
        %error "MILES_INSTRUCTION_SIZE_07579"
    %endif
    %%insn_0757b:
    mov [es:0x20],dx ; 0757B 2689162000
    %if ($ - %%insn_0757b) != 5
        %error "MILES_INSTRUCTION_SIZE_0757B"
    %endif
    %%insn_07580:
    mov word [es:0x22],ds ; 07580 268C1E2200
    %if ($ - %%insn_07580) != 5
        %error "MILES_INSTRUCTION_SIZE_07580"
    %endif
    %%insn_07585:
    or bh,0x0 ; 07585 80CF00
    %if ($ - %%insn_07585) != 3
        %error "MILES_INSTRUCTION_SIZE_07585"
    %endif
    miles_install_timer_interrupt_restore_flags_iret equ $ - 2 ; alternate entry 07586: IRET
    %%insn_07588:
    push cs ; 07588 0E
    %if ($ - %%insn_07588) != 1
        %error "MILES_INSTRUCTION_SIZE_07588"
    %endif
    %%insn_07589:
    call 0x7586 ; 07589 E8FAFF
    %if ($ - %%insn_07589) != 3
        %error "MILES_INSTRUCTION_SIZE_07589"
    %endif
    %%insn_0758c:
    pop di ; 0758C 5F
    %if ($ - %%insn_0758c) != 1
        %error "MILES_INSTRUCTION_SIZE_0758C"
    %endif
    %%insn_0758d:
    pop si ; 0758D 5E
    %if ($ - %%insn_0758d) != 1
        %error "MILES_INSTRUCTION_SIZE_0758D"
    %endif
    %%insn_0758e:
    pop ds ; 0758E 1F
    %if ($ - %%insn_0758e) != 1
        %error "MILES_INSTRUCTION_SIZE_0758E"
    %endif
    %%insn_0758f:
    retf ; 0758F CB
    %if ($ - %%insn_0758f) != 1
        %error "MILES_INSTRUCTION_SIZE_0758F"
    %endif
    %if ($ - %%fragment_start) != 76
        %error "MILES_FUNCTION_SIZE_07544"
    %endif
%endmacro
