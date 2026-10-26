; Linear entry 079B6 (1702:0996)
; Ghidra working symbol: FUN_1702_0996
; Verified role; boundaries repaired where the IRET entry overlaps OR BH,0.
; Contract: Compute floor(1000000/frequency) using unsigned dword division and pass the resulting period to 07961h.
; Evidence: Driver initialization 07B9Dh calls this for its timer. The requested frequency is a stack-supplied dword; zero can raise divide error.
; Original byte identity is enforced by this project’s build.sh.
; Generated losslessly; edit names/comments only after preserving build identity.
; Instruction boundaries repaired: the flag-restoring IRET is entered inside
; OR BH,0; PUSH CS/CALL builds its IP:CS frame above the saved FLAGS.
; Former one-byte CF gap belongs to the overlapping OR/IRET sequence.

%macro emit_miles_set_timer_frequency_part_00 0
    %%fragment_start:
miles_set_timer_frequency:
    %%insn_079b6:
    push bp ; 079B6 55
    %if ($ - %%insn_079b6) != 1
        %error "MILES_INSTRUCTION_SIZE_079B6"
    %endif
    db 0x8B, 0xEC ; 079B7 8BEC | mov bp,sp | encoding preserved
    %%insn_079b9:
    push ds ; 079B9 1E
    %if ($ - %%insn_079b9) != 1
        %error "MILES_INSTRUCTION_SIZE_079B9"
    %endif
    %%insn_079ba:
    push si ; 079BA 56
    %if ($ - %%insn_079ba) != 1
        %error "MILES_INSTRUCTION_SIZE_079BA"
    %endif
    %%insn_079bb:
    push di ; 079BB 57
    %if ($ - %%insn_079bb) != 1
        %error "MILES_INSTRUCTION_SIZE_079BB"
    %endif
    %%insn_079bc:
    pushf ; 079BC 9C
    %if ($ - %%insn_079bc) != 1
        %error "MILES_INSTRUCTION_SIZE_079BC"
    %endif
    %%insn_079bd:
    cli ; 079BD FA
    %if ($ - %%insn_079bd) != 1
        %error "MILES_INSTRUCTION_SIZE_079BD"
    %endif
    %%insn_079be:
    push word [bp+0xa] ; 079BE FF760A
    %if ($ - %%insn_079be) != 3
        %error "MILES_INSTRUCTION_SIZE_079BE"
    %endif
    %%insn_079c1:
    push word [bp+0x8] ; 079C1 FF7608
    %if ($ - %%insn_079c1) != 3
        %error "MILES_INSTRUCTION_SIZE_079C1"
    %endif
    %%insn_079c4:
    push ax ; 079C4 50
    %if ($ - %%insn_079c4) != 1
        %error "MILES_INSTRUCTION_SIZE_079C4"
    %endif
    %%insn_079c5:
    push bp ; 079C5 55
    %if ($ - %%insn_079c5) != 1
        %error "MILES_INSTRUCTION_SIZE_079C5"
    %endif
    db 0x8B, 0xEC ; 079C6 8BEC | mov bp,sp | encoding preserved
    %%insn_079c8:
    mov word [bp+0x2],0xf ; 079C8 C746020F00
    %if ($ - %%insn_079c8) != 5
        %error "MILES_INSTRUCTION_SIZE_079C8"
    %endif
    %%insn_079cd:
    pop bp ; 079CD 5D
    %if ($ - %%insn_079cd) != 1
        %error "MILES_INSTRUCTION_SIZE_079CD"
    %endif
    %%insn_079ce:
    push ax ; 079CE 50
    %if ($ - %%insn_079ce) != 1
        %error "MILES_INSTRUCTION_SIZE_079CE"
    %endif
    %%insn_079cf:
    push bp ; 079CF 55
    %if ($ - %%insn_079cf) != 1
        %error "MILES_INSTRUCTION_SIZE_079CF"
    %endif
    db 0x8B, 0xEC ; 079D0 8BEC | mov bp,sp | encoding preserved
    %%insn_079d2:
    mov word [bp+0x2],0x4240 ; 079D2 C746024042
    %if ($ - %%insn_079d2) != 5
        %error "MILES_INSTRUCTION_SIZE_079D2"
    %endif
    %%insn_079d7:
    pop bp ; 079D7 5D
    %if ($ - %%insn_079d7) != 1
        %error "MILES_INSTRUCTION_SIZE_079D7"
    %endif
    %%insn_079d8:
    push cs ; 079D8 0E
    %if ($ - %%insn_079d8) != 1
        %error "MILES_INSTRUCTION_SIZE_079D8"
    %endif
    %%insn_079d9:
    call 0x7613 ; 079D9 E837FC
    %if ($ - %%insn_079d9) != 3
        %error "MILES_INSTRUCTION_SIZE_079D9"
    %endif
    %%insn_079dc:
    add sp,0x8 ; 079DC 83C408
    %if ($ - %%insn_079dc) != 3
        %error "MILES_INSTRUCTION_SIZE_079DC"
    %endif
    %%insn_079df:
    push dx ; 079DF 52
    %if ($ - %%insn_079df) != 1
        %error "MILES_INSTRUCTION_SIZE_079DF"
    %endif
    %%insn_079e0:
    push ax ; 079E0 50
    %if ($ - %%insn_079e0) != 1
        %error "MILES_INSTRUCTION_SIZE_079E0"
    %endif
    %%insn_079e1:
    push word [bp+0x6] ; 079E1 FF7606
    %if ($ - %%insn_079e1) != 3
        %error "MILES_INSTRUCTION_SIZE_079E1"
    %endif
    %%insn_079e4:
    push cs ; 079E4 0E
    %if ($ - %%insn_079e4) != 1
        %error "MILES_INSTRUCTION_SIZE_079E4"
    %endif
    %%insn_079e5:
    call 0x7961 ; 079E5 E879FF
    %if ($ - %%insn_079e5) != 3
        %error "MILES_INSTRUCTION_SIZE_079E5"
    %endif
    %%insn_079e8:
    add sp,0x6 ; 079E8 83C406
    %if ($ - %%insn_079e8) != 3
        %error "MILES_INSTRUCTION_SIZE_079E8"
    %endif
    %%insn_079eb:
    or bh,0x0 ; 079EB 80CF00
    %if ($ - %%insn_079eb) != 3
        %error "MILES_INSTRUCTION_SIZE_079EB"
    %endif
    miles_set_timer_frequency_restore_flags_iret equ $ - 2 ; alternate entry 079EC: IRET
    %%insn_079ee:
    push cs ; 079EE 0E
    %if ($ - %%insn_079ee) != 1
        %error "MILES_INSTRUCTION_SIZE_079EE"
    %endif
    %%insn_079ef:
    call 0x79ec ; 079EF E8FAFF
    %if ($ - %%insn_079ef) != 3
        %error "MILES_INSTRUCTION_SIZE_079EF"
    %endif
    %%insn_079f2:
    pop di ; 079F2 5F
    %if ($ - %%insn_079f2) != 1
        %error "MILES_INSTRUCTION_SIZE_079F2"
    %endif
    %%insn_079f3:
    pop si ; 079F3 5E
    %if ($ - %%insn_079f3) != 1
        %error "MILES_INSTRUCTION_SIZE_079F3"
    %endif
    %%insn_079f4:
    pop ds ; 079F4 1F
    %if ($ - %%insn_079f4) != 1
        %error "MILES_INSTRUCTION_SIZE_079F4"
    %endif
    %%insn_079f5:
    pop bp ; 079F5 5D
    %if ($ - %%insn_079f5) != 1
        %error "MILES_INSTRUCTION_SIZE_079F5"
    %endif
    %%insn_079f6:
    retf ; 079F6 CB
    %if ($ - %%insn_079f6) != 1
        %error "MILES_INSTRUCTION_SIZE_079F6"
    %endif
    %if ($ - %%fragment_start) != 65
        %error "MILES_FUNCTION_SIZE_079B6"
    %endif
%endmacro
