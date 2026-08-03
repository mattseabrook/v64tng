; Linear entry 075C0 (1702:05a0)
; Ghidra working symbol: FUN_1702_05a0
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_075c0_part_00 0
    %%fragment_start:
func_075c0:
    %%insn_075c0:
    push bp ; 075C0 55
    %if ($ - %%insn_075c0) > 1
        %error "LONG_075C0"
    %endif
    times 1 - ($ - %%insn_075c0) db 0
    db 0x8B, 0xEC ; 075C1 8BEC | mov bp,sp | encoding preserved
    %%insn_075c3:
    push ds ; 075C3 1E
    %if ($ - %%insn_075c3) > 1
        %error "LONG_075C3"
    %endif
    times 1 - ($ - %%insn_075c3) db 0
    %%insn_075c4:
    push si ; 075C4 56
    %if ($ - %%insn_075c4) > 1
        %error "LONG_075C4"
    %endif
    times 1 - ($ - %%insn_075c4) db 0
    %%insn_075c5:
    push di ; 075C5 57
    %if ($ - %%insn_075c5) > 1
        %error "LONG_075C5"
    %endif
    times 1 - ($ - %%insn_075c5) db 0
    %%insn_075c6:
    pushf ; 075C6 9C
    %if ($ - %%insn_075c6) > 1
        %error "LONG_075C6"
    %endif
    times 1 - ($ - %%insn_075c6) db 0
    %%insn_075c7:
    cli ; 075C7 FA
    %if ($ - %%insn_075c7) > 1
        %error "LONG_075C7"
    %endif
    times 1 - ($ - %%insn_075c7) db 0
    %%insn_075c8:
    mov al,0x36 ; 075C8 B036
    %if ($ - %%insn_075c8) > 2
        %error "LONG_075C8"
    %endif
    times 2 - ($ - %%insn_075c8) db 0
    %%insn_075ca:
    out byte 0x43,al ; 075CA E643
    %if ($ - %%insn_075ca) > 2
        %error "LONG_075CA"
    %endif
    times 2 - ($ - %%insn_075ca) db 0
    %%insn_075cc:
    mov ax,[bp+0x6] ; 075CC 8B4606
    %if ($ - %%insn_075cc) > 3
        %error "LONG_075CC"
    %endif
    times 3 - ($ - %%insn_075cc) db 0
    %%insn_075cf:
    mov [cs:0x128],ax ; 075CF 2EA32801
    %if ($ - %%insn_075cf) > 4
        %error "LONG_075CF"
    %endif
    times 4 - ($ - %%insn_075cf) db 0
    %%insn_075d3:
    jmp short 0x75d5 ; 075D3 EB00
    %if ($ - %%insn_075d3) > 2
        %error "LONG_075D3"
    %endif
    times 2 - ($ - %%insn_075d3) db 0
    %%insn_075d5:
    out byte 0x40,al ; 075D5 E640
    %if ($ - %%insn_075d5) > 2
        %error "LONG_075D5"
    %endif
    times 2 - ($ - %%insn_075d5) db 0
    db 0x8A, 0xC4 ; 075D7 8AC4 | mov al,ah | encoding preserved
    %%insn_075d9:
    jmp short 0x75db ; 075D9 EB00
    %if ($ - %%insn_075d9) > 2
        %error "LONG_075D9"
    %endif
    times 2 - ($ - %%insn_075d9) db 0
    %%insn_075db:
    out byte 0x40,al ; 075DB E640
    %if ($ - %%insn_075db) > 2
        %error "LONG_075DB"
    %endif
    times 2 - ($ - %%insn_075db) db 0
    %%insn_075dd:
    db 0x80 ; 075DD 80
    %if ($ - %%insn_075dd) > 1
        %error "LONG_075DD"
    %endif
    times 1 - ($ - %%insn_075dd) db 0
    %if ($ - %%fragment_start) != 30
        %error "SIZE_075C0"
    %endif
%endmacro

%macro emit_func_075c0_part_01 0
    %%fragment_start:
    %%insn_075df:
    add [0xfae8],cl ; 075DF 000EE8FA
    %if ($ - %%insn_075df) > 4
        %error "LONG_075DF"
    %endif
    times 4 - ($ - %%insn_075df) db 0
    %%insn_075e3:
    call word far [bx+0x5e] ; 075E3 FF5F5E
    %if ($ - %%insn_075e3) > 3
        %error "LONG_075E3"
    %endif
    times 3 - ($ - %%insn_075e3) db 0
    %%insn_075e6:
    pop ds ; 075E6 1F
    %if ($ - %%insn_075e6) > 1
        %error "LONG_075E6"
    %endif
    times 1 - ($ - %%insn_075e6) db 0
    %%insn_075e7:
    pop bp ; 075E7 5D
    %if ($ - %%insn_075e7) > 1
        %error "LONG_075E7"
    %endif
    times 1 - ($ - %%insn_075e7) db 0
    %%insn_075e8:
    retf ; 075E8 CB
    %if ($ - %%insn_075e8) > 1
        %error "LONG_075E8"
    %endif
    times 1 - ($ - %%insn_075e8) db 0
    %if ($ - %%fragment_start) != 10
        %error "SIZE_075DF"
    %endif
%endmacro
