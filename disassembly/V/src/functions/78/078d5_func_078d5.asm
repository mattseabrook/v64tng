; Linear entry 078D5 (1702:08b5)
; Ghidra working symbol: FUN_1702_08b5
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_078d5_part_00 0
    %%fragment_start:
func_078d5:
    %%insn_078d5:
    push bp ; 078D5 55
    %if ($ - %%insn_078d5) > 1
        %error "LONG_078D5"
    %endif
    times 1 - ($ - %%insn_078d5) db 0
    db 0x8B, 0xEC ; 078D6 8BEC | mov bp,sp | encoding preserved
    %%insn_078d8:
    push ds ; 078D8 1E
    %if ($ - %%insn_078d8) > 1
        %error "LONG_078D8"
    %endif
    times 1 - ($ - %%insn_078d8) db 0
    %%insn_078d9:
    push si ; 078D9 56
    %if ($ - %%insn_078d9) > 1
        %error "LONG_078D9"
    %endif
    times 1 - ($ - %%insn_078d9) db 0
    %%insn_078da:
    push di ; 078DA 57
    %if ($ - %%insn_078da) > 1
        %error "LONG_078DA"
    %endif
    times 1 - ($ - %%insn_078da) db 0
    %%insn_078db:
    pushf ; 078DB 9C
    %if ($ - %%insn_078db) > 1
        %error "LONG_078DB"
    %endif
    times 1 - ($ - %%insn_078db) db 0
    %%insn_078dc:
    cli ; 078DC FA
    %if ($ - %%insn_078dc) > 1
        %error "LONG_078DC"
    %endif
    times 1 - ($ - %%insn_078dc) db 0
    %%insn_078dd:
    mov bx,[bp+0x6] ; 078DD 8B5E06
    %if ($ - %%insn_078dd) > 3
        %error "LONG_078DD"
    %endif
    times 3 - ($ - %%insn_078dd) db 0
    %%insn_078e0:
    shl bx,1 ; 078E0 D1E3
    %if ($ - %%insn_078e0) > 2
        %error "LONG_078E0"
    %endif
    times 2 - ($ - %%insn_078e0) db 0
    db 0x2E, 0x83, 0xBF, 0x70, 0x00, 0x01 ; 078E2 2E83BF700001 | cmp word [cs:bx+0x70],0x1 | encoding preserved
    %%insn_078e8:
    jnz short 0x78f1 ; 078E8 7507
    %if ($ - %%insn_078e8) > 2
        %error "LONG_078E8"
    %endif
    times 2 - ($ - %%insn_078e8) db 0
    db 0x2E, 0xC7, 0x87, 0x70, 0x00, 0x02, 0x00 ; 078EA 2EC78770000200 | mov word [cs:bx+0x70],0x2 | encoding preserved
    %%insn_078f1:
    db 0x80 ; 078F1 80
    %if ($ - %%insn_078f1) > 1
        %error "LONG_078F1"
    %endif
    times 1 - ($ - %%insn_078f1) db 0
    %if ($ - %%fragment_start) != 29
        %error "SIZE_078D5"
    %endif
%endmacro

%macro emit_func_078d5_part_01 0
    %%fragment_start:
    %%insn_078f3:
    add [0xfae8],cl ; 078F3 000EE8FA
    %if ($ - %%insn_078f3) > 4
        %error "LONG_078F3"
    %endif
    times 4 - ($ - %%insn_078f3) db 0
    %%insn_078f7:
    call word far [bx+0x5e] ; 078F7 FF5F5E
    %if ($ - %%insn_078f7) > 3
        %error "LONG_078F7"
    %endif
    times 3 - ($ - %%insn_078f7) db 0
    %%insn_078fa:
    pop ds ; 078FA 1F
    %if ($ - %%insn_078fa) > 1
        %error "LONG_078FA"
    %endif
    times 1 - ($ - %%insn_078fa) db 0
    %%insn_078fb:
    pop bp ; 078FB 5D
    %if ($ - %%insn_078fb) > 1
        %error "LONG_078FB"
    %endif
    times 1 - ($ - %%insn_078fb) db 0
    %%insn_078fc:
    retf ; 078FC CB
    %if ($ - %%insn_078fc) > 1
        %error "LONG_078FC"
    %endif
    times 1 - ($ - %%insn_078fc) db 0
    %if ($ - %%fragment_start) != 10
        %error "SIZE_078F3"
    %endif
%endmacro
