; Linear entry 0765E (1702:063e)
; Ghidra working symbol: FUN_1702_063e
; Verified role; boundaries repaired where the IRET entry overlaps OR BH,0.
; Contract: Find the unsigned minimum period among nonzero states for slots 0..16; on change program its low word and clear all 17 elapsed counters.
; Evidence: 07961h calls this while updating a period. Both stopped (1) and running (2) states participate; an unchanged minimum leaves other accumulators intact.
; Original byte identity is enforced by this project’s build.sh.
; Generated losslessly; edit names/comments only after preserving build identity.
; Instruction boundaries repaired: the flag-restoring IRET is entered inside
; OR BH,0; PUSH CS/CALL builds its IP:CS frame above the saved FLAGS.
; Former one-byte CF gap belongs to the overlapping OR/IRET sequence.

%macro emit_miles_recompute_minimum_timer_period_part_00 0
    %%fragment_start:
miles_recompute_minimum_timer_period:
    %%insn_0765e:
    push ds ; 0765E 1E
    %if ($ - %%insn_0765e) != 1
        %error "MILES_INSTRUCTION_SIZE_0765E"
    %endif
    %%insn_0765f:
    push si ; 0765F 56
    %if ($ - %%insn_0765f) != 1
        %error "MILES_INSTRUCTION_SIZE_0765F"
    %endif
    %%insn_07660:
    push di ; 07660 57
    %if ($ - %%insn_07660) != 1
        %error "MILES_INSTRUCTION_SIZE_07660"
    %endif
    %%insn_07661:
    pushf ; 07661 9C
    %if ($ - %%insn_07661) != 1
        %error "MILES_INSTRUCTION_SIZE_07661"
    %endif
    %%insn_07662:
    cli ; 07662 FA
    %if ($ - %%insn_07662) != 1
        %error "MILES_INSTRUCTION_SIZE_07662"
    %endif
    %%insn_07663:
    cld ; 07663 FC
    %if ($ - %%insn_07663) != 1
        %error "MILES_INSTRUCTION_SIZE_07663"
    %endif
    %%insn_07664:
    mov word [cs:0x124],0xffff ; 07664 2EC7062401FFFF
    %if ($ - %%insn_07664) != 7
        %error "MILES_INSTRUCTION_SIZE_07664"
    %endif
    %%insn_0766b:
    mov word [cs:0x126],0xffff ; 0766B 2EC7062601FFFF
    %if ($ - %%insn_0766b) != 7
        %error "MILES_INSTRUCTION_SIZE_0766B"
    %endif
    %%insn_07672:
    mov si,0x0 ; 07672 BE0000
    %if ($ - %%insn_07672) != 3
        %error "MILES_INSTRUCTION_SIZE_07672"
    %endif
    db 0x8B, 0xDE ; 07675 8BDE | mov bx,si | encoding preserved
    %%insn_07677:
    shl bx,1 ; 07677 D1E3
    %if ($ - %%insn_07677) != 2
        %error "MILES_INSTRUCTION_SIZE_07677"
    %endif
    db 0x2E, 0x83, 0xBF, 0x70, 0x00, 0x00 ; 07679 2E83BF700000 | cmp word [cs:bx+0x70],0x0 | encoding preserved
    %%insn_0767f:
    jz short 0x76a6 ; 0767F 7425
    %if ($ - %%insn_0767f) != 2
        %error "MILES_INSTRUCTION_SIZE_0767F"
    %endif
    %%insn_07681:
    shl bx,1 ; 07681 D1E3
    %if ($ - %%insn_07681) != 2
        %error "MILES_INSTRUCTION_SIZE_07681"
    %endif
    %%insn_07683:
    mov ax,[cs:bx+0xd6] ; 07683 2E8B87D600
    %if ($ - %%insn_07683) != 5
        %error "MILES_INSTRUCTION_SIZE_07683"
    %endif
    %%insn_07688:
    mov dx,[cs:bx+0xd8] ; 07688 2E8B97D800
    %if ($ - %%insn_07688) != 5
        %error "MILES_INSTRUCTION_SIZE_07688"
    %endif
    %%insn_0768d:
    cmp dx,[cs:0x126] ; 0768D 2E3B162601
    %if ($ - %%insn_0768d) != 5
        %error "MILES_INSTRUCTION_SIZE_0768D"
    %endif
    %%insn_07692:
    jc short 0x769d ; 07692 7209
    %if ($ - %%insn_07692) != 2
        %error "MILES_INSTRUCTION_SIZE_07692"
    %endif
    %%insn_07694:
    ja short 0x76a6 ; 07694 7710
    %if ($ - %%insn_07694) != 2
        %error "MILES_INSTRUCTION_SIZE_07694"
    %endif
    %%insn_07696:
    cmp ax,[cs:0x124] ; 07696 2E3B062401
    %if ($ - %%insn_07696) != 5
        %error "MILES_INSTRUCTION_SIZE_07696"
    %endif
    %%insn_0769b:
    jnc short 0x76a6 ; 0769B 7309
    %if ($ - %%insn_0769b) != 2
        %error "MILES_INSTRUCTION_SIZE_0769B"
    %endif
    %%insn_0769d:
    mov [cs:0x124],ax ; 0769D 2EA32401
    %if ($ - %%insn_0769d) != 4
        %error "MILES_INSTRUCTION_SIZE_0769D"
    %endif
    %%insn_076a1:
    mov [cs:0x126],dx ; 076A1 2E89162601
    %if ($ - %%insn_076a1) != 5
        %error "MILES_INSTRUCTION_SIZE_076A1"
    %endif
    %%insn_076a6:
    inc si ; 076A6 46
    %if ($ - %%insn_076a6) != 1
        %error "MILES_INSTRUCTION_SIZE_076A6"
    %endif
    %%insn_076a7:
    cmp si,0x10 ; 076A7 83FE10
    %if ($ - %%insn_076a7) != 3
        %error "MILES_INSTRUCTION_SIZE_076A7"
    %endif
    %%insn_076aa:
    jna short 0x7675 ; 076AA 76C9
    %if ($ - %%insn_076aa) != 2
        %error "MILES_INSTRUCTION_SIZE_076AA"
    %endif
    %%insn_076ac:
    mov ax,[cs:0x124] ; 076AC 2EA12401
    %if ($ - %%insn_076ac) != 4
        %error "MILES_INSTRUCTION_SIZE_076AC"
    %endif
    %%insn_076b0:
    mov dx,[cs:0x126] ; 076B0 2E8B162601
    %if ($ - %%insn_076b0) != 5
        %error "MILES_INSTRUCTION_SIZE_076B0"
    %endif
    %%insn_076b5:
    cmp ax,[cs:0x11a] ; 076B5 2E3B061A01
    %if ($ - %%insn_076b5) != 5
        %error "MILES_INSTRUCTION_SIZE_076B5"
    %endif
    %%insn_076ba:
    jnz short 0x76c3 ; 076BA 7507
    %if ($ - %%insn_076ba) != 2
        %error "MILES_INSTRUCTION_SIZE_076BA"
    %endif
    %%insn_076bc:
    cmp dx,[cs:0x11c] ; 076BC 2E3B161C01
    %if ($ - %%insn_076bc) != 5
        %error "MILES_INSTRUCTION_SIZE_076BC"
    %endif
    %%insn_076c1:
    jz short 0x76e8 ; 076C1 7425
    %if ($ - %%insn_076c1) != 2
        %error "MILES_INSTRUCTION_SIZE_076C1"
    %endif
    %%insn_076c3:
    mov word [cs:0x122],0xffff ; 076C3 2EC7062201FFFF
    %if ($ - %%insn_076c3) != 7
        %error "MILES_INSTRUCTION_SIZE_076C3"
    %endif
    %%insn_076ca:
    mov [cs:0x11a],ax ; 076CA 2EA31A01
    %if ($ - %%insn_076ca) != 4
        %error "MILES_INSTRUCTION_SIZE_076CA"
    %endif
    %%insn_076ce:
    mov [cs:0x11c],dx ; 076CE 2E89161C01
    %if ($ - %%insn_076ce) != 5
        %error "MILES_INSTRUCTION_SIZE_076CE"
    %endif
    %%insn_076d3:
    push ax ; 076D3 50
    %if ($ - %%insn_076d3) != 1
        %error "MILES_INSTRUCTION_SIZE_076D3"
    %endif
    %%insn_076d4:
    push cs ; 076D4 0E
    %if ($ - %%insn_076d4) != 1
        %error "MILES_INSTRUCTION_SIZE_076D4"
    %endif
    %%insn_076d5:
    call 0x75e9 ; 076D5 E811FF
    %if ($ - %%insn_076d5) != 3
        %error "MILES_INSTRUCTION_SIZE_076D5"
    %endif
    %%insn_076d8:
    add sp,0x2 ; 076D8 83C402
    %if ($ - %%insn_076d8) != 3
        %error "MILES_INSTRUCTION_SIZE_076D8"
    %endif
    %%insn_076db:
    push cs ; 076DB 0E
    %if ($ - %%insn_076db) != 1
        %error "MILES_INSTRUCTION_SIZE_076DB"
    %endif
    %%insn_076dc:
    pop es ; 076DC 07
    %if ($ - %%insn_076dc) != 1
        %error "MILES_INSTRUCTION_SIZE_076DC"
    %endif
    %%insn_076dd:
    mov di,0x92 ; 076DD BF9200
    %if ($ - %%insn_076dd) != 3
        %error "MILES_INSTRUCTION_SIZE_076DD"
    %endif
    %%insn_076e0:
    mov cx,0x22 ; 076E0 B92200
    %if ($ - %%insn_076e0) != 3
        %error "MILES_INSTRUCTION_SIZE_076E0"
    %endif
    %%insn_076e3:
    mov ax,0x0 ; 076E3 B80000
    %if ($ - %%insn_076e3) != 3
        %error "MILES_INSTRUCTION_SIZE_076E3"
    %endif
    %%insn_076e6:
    rep stosw ; 076E6 F3AB
    %if ($ - %%insn_076e6) != 2
        %error "MILES_INSTRUCTION_SIZE_076E6"
    %endif
    %%insn_076e8:
    or bh,0x0 ; 076E8 80CF00
    %if ($ - %%insn_076e8) != 3
        %error "MILES_INSTRUCTION_SIZE_076E8"
    %endif
    miles_recompute_minimum_timer_period_restore_flags_iret equ $ - 2 ; alternate entry 076E9: IRET
    %%insn_076eb:
    push cs ; 076EB 0E
    %if ($ - %%insn_076eb) != 1
        %error "MILES_INSTRUCTION_SIZE_076EB"
    %endif
    %%insn_076ec:
    call 0x76e9 ; 076EC E8FAFF
    %if ($ - %%insn_076ec) != 3
        %error "MILES_INSTRUCTION_SIZE_076EC"
    %endif
    %%insn_076ef:
    pop di ; 076EF 5F
    %if ($ - %%insn_076ef) != 1
        %error "MILES_INSTRUCTION_SIZE_076EF"
    %endif
    %%insn_076f0:
    pop si ; 076F0 5E
    %if ($ - %%insn_076f0) != 1
        %error "MILES_INSTRUCTION_SIZE_076F0"
    %endif
    %%insn_076f1:
    pop ds ; 076F1 1F
    %if ($ - %%insn_076f1) != 1
        %error "MILES_INSTRUCTION_SIZE_076F1"
    %endif
    %%insn_076f2:
    retf ; 076F2 CB
    %if ($ - %%insn_076f2) != 1
        %error "MILES_INSTRUCTION_SIZE_076F2"
    %endif
    %if ($ - %%fragment_start) != 149
        %error "MILES_FUNCTION_SIZE_0765E"
    %endif
%endmacro
