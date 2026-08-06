; Linear entry 076F3 (1702:06d3)
; Ghidra working symbol: FUN_1702_06d3
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_076f3_part_00 0
    %%fragment_start:
func_076f3:
    %%insn_076f3:
    push ds ; 076F3 1E
    %if ($ - %%insn_076f3) > 1
        %error "LONG_076F3"
    %endif
    times 1 - ($ - %%insn_076f3) db 0
    %%insn_076f4:
    push si ; 076F4 56
    %if ($ - %%insn_076f4) > 1
        %error "LONG_076F4"
    %endif
    times 1 - ($ - %%insn_076f4) db 0
    %%insn_076f5:
    push di ; 076F5 57
    %if ($ - %%insn_076f5) > 1
        %error "LONG_076F5"
    %endif
    times 1 - ($ - %%insn_076f5) db 0
    %%insn_076f6:
    pushf ; 076F6 9C
    %if ($ - %%insn_076f6) > 1
        %error "LONG_076F6"
    %endif
    times 1 - ($ - %%insn_076f6) db 0
    %%insn_076f7:
    cli ; 076F7 FA
    %if ($ - %%insn_076f7) > 1
        %error "LONG_076F7"
    %endif
    times 1 - ($ - %%insn_076f7) db 0
    %%insn_076f8:
    mov word [cs:0x6],0x0 ; 076F8 2EC70606000000
    %if ($ - %%insn_076f8) > 7
        %error "LONG_076F8"
    %endif
    times 7 - ($ - %%insn_076f8) db 0
    %%insn_076ff:
    mov word [cs:0x8],0x0 ; 076FF 2EC70608000000
    %if ($ - %%insn_076ff) > 7
        %error "LONG_076FF"
    %endif
    times 7 - ($ - %%insn_076ff) db 0
    %%insn_07706:
    mov word [cs:0xe26],0x0 ; 07706 2EC706260E0000
    %if ($ - %%insn_07706) > 7
        %error "LONG_07706"
    %endif
    times 7 - ($ - %%insn_07706) db 0
    %%insn_0770d:
    cld ; 0770D FC
    %if ($ - %%insn_0770d) > 1
        %error "LONG_0770D"
    %endif
    times 1 - ($ - %%insn_0770d) db 0
    %%insn_0770e:
    mov ax,cs ; 0770E 8CC8
    %if ($ - %%insn_0770e) > 2
        %error "LONG_0770E"
    %endif
    times 2 - ($ - %%insn_0770e) db 0
    %%insn_07710:
    mov es,ax ; 07710 8EC0
    %if ($ - %%insn_07710) > 2
        %error "LONG_07710"
    %endif
    times 2 - ($ - %%insn_07710) db 0
    %%insn_07712:
    mov di,0x12a ; 07712 BF2A01
    %if ($ - %%insn_07712) > 3
        %error "LONG_07712"
    %endif
    times 3 - ($ - %%insn_07712) db 0
    %%insn_07715:
    mov cx,0x20 ; 07715 B92000
    %if ($ - %%insn_07715) > 3
        %error "LONG_07715"
    %endif
    times 3 - ($ - %%insn_07715) db 0
    %%insn_07718:
    mov ax,0x0 ; 07718 B80000
    %if ($ - %%insn_07718) > 3
        %error "LONG_07718"
    %endif
    times 3 - ($ - %%insn_07718) db 0
    %%insn_0771b:
    rep stosw ; 0771B F3AB
    %if ($ - %%insn_0771b) > 2
        %error "LONG_0771B"
    %endif
    times 2 - ($ - %%insn_0771b) db 0
    %%insn_0771d:
    mov di,0x16a ; 0771D BF6A01
    %if ($ - %%insn_0771d) > 3
        %error "LONG_0771D"
    %endif
    times 3 - ($ - %%insn_0771d) db 0
    %%insn_07720:
    mov cx,0x10 ; 07720 B91000
    %if ($ - %%insn_07720) > 3
        %error "LONG_07720"
    %endif
    times 3 - ($ - %%insn_07720) db 0
    %%insn_07723:
    mov ax,0xffff ; 07723 B8FFFF
    %if ($ - %%insn_07723) > 3
        %error "LONG_07723"
    %endif
    times 3 - ($ - %%insn_07723) db 0
    %%insn_07726:
    rep stosw ; 07726 F3AB
    %if ($ - %%insn_07726) > 2
        %error "LONG_07726"
    %endif
    times 2 - ($ - %%insn_07726) db 0
    %%insn_07728:
    mov di,0x18a ; 07728 BF8A01
    %if ($ - %%insn_07728) > 3
        %error "LONG_07728"
    %endif
    times 3 - ($ - %%insn_07728) db 0
    %%insn_0772b:
    mov cx,0x10 ; 0772B B91000
    %if ($ - %%insn_0772b) > 3
        %error "LONG_0772B"
    %endif
    times 3 - ($ - %%insn_0772b) db 0
    %%insn_0772e:
    mov ax,0x0 ; 0772E B80000
    %if ($ - %%insn_0772e) > 3
        %error "LONG_0772E"
    %endif
    times 3 - ($ - %%insn_0772e) db 0
    %%insn_07731:
    rep stosw ; 07731 F3AB
    %if ($ - %%insn_07731) > 2
        %error "LONG_07731"
    %endif
    times 2 - ($ - %%insn_07731) db 0
    %%insn_07733:
    db 0x80 ; 07733 80
    %if ($ - %%insn_07733) > 1
        %error "LONG_07733"
    %endif
    times 1 - ($ - %%insn_07733) db 0
    %if ($ - %%fragment_start) != 65
        %error "SIZE_076F3"
    %endif
%endmacro

%macro emit_func_076f3_part_01 0
    %%fragment_start:
    %%insn_07735:
    add [0xfae8],cl ; 07735 000EE8FA
    %if ($ - %%insn_07735) > 4
        %error "LONG_07735"
    %endif
    times 4 - ($ - %%insn_07735) db 0
    %%insn_07739:
    call word far [bx+0x5e] ; 07739 FF5F5E
    %if ($ - %%insn_07739) > 3
        %error "LONG_07739"
    %endif
    times 3 - ($ - %%insn_07739) db 0
    %%insn_0773c:
    pop ds ; 0773C 1F
    %if ($ - %%insn_0773c) > 1
        %error "LONG_0773C"
    %endif
    times 1 - ($ - %%insn_0773c) db 0
    %%insn_0773d:
    retf ; 0773D CB
    %if ($ - %%insn_0773d) > 1
        %error "LONG_0773D"
    %endif
    times 1 - ($ - %%insn_0773d) db 0
    %if ($ - %%fragment_start) != 9
        %error "SIZE_07735"
    %endif
%endmacro
