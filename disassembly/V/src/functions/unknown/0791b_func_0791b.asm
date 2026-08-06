; Linear entry 0791B (1702:08fb)
; Ghidra working symbol: FUN_1702_08fb
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_0791b_part_00 0
    %%fragment_start:
func_0791b:
    %%insn_0791b:
    push bp ; 0791B 55
    %if ($ - %%insn_0791b) > 1
        %error "LONG_0791B"
    %endif
    times 1 - ($ - %%insn_0791b) db 0
    db 0x8B, 0xEC ; 0791C 8BEC | mov bp,sp | encoding preserved
    %%insn_0791e:
    push ds ; 0791E 1E
    %if ($ - %%insn_0791e) > 1
        %error "LONG_0791E"
    %endif
    times 1 - ($ - %%insn_0791e) db 0
    %%insn_0791f:
    push si ; 0791F 56
    %if ($ - %%insn_0791f) > 1
        %error "LONG_0791F"
    %endif
    times 1 - ($ - %%insn_0791f) db 0
    %%insn_07920:
    push di ; 07920 57
    %if ($ - %%insn_07920) > 1
        %error "LONG_07920"
    %endif
    times 1 - ($ - %%insn_07920) db 0
    %%insn_07921:
    pushf ; 07921 9C
    %if ($ - %%insn_07921) > 1
        %error "LONG_07921"
    %endif
    times 1 - ($ - %%insn_07921) db 0
    %%insn_07922:
    cli ; 07922 FA
    %if ($ - %%insn_07922) > 1
        %error "LONG_07922"
    %endif
    times 1 - ($ - %%insn_07922) db 0
    %%insn_07923:
    mov bx,[bp+0x6] ; 07923 8B5E06
    %if ($ - %%insn_07923) > 3
        %error "LONG_07923"
    %endif
    times 3 - ($ - %%insn_07923) db 0
    %%insn_07926:
    shl bx,1 ; 07926 D1E3
    %if ($ - %%insn_07926) > 2
        %error "LONG_07926"
    %endif
    times 2 - ($ - %%insn_07926) db 0
    db 0x2E, 0x83, 0xBF, 0x70, 0x00, 0x02 ; 07928 2E83BF700002 | cmp word [cs:bx+0x70],0x2 | encoding preserved
    %%insn_0792e:
    jnz short 0x7937 ; 0792E 7507
    %if ($ - %%insn_0792e) > 2
        %error "LONG_0792E"
    %endif
    times 2 - ($ - %%insn_0792e) db 0
    db 0x2E, 0xC7, 0x87, 0x70, 0x00, 0x01, 0x00 ; 07930 2EC78770000100 | mov word [cs:bx+0x70],0x1 | encoding preserved
    %%insn_07937:
    db 0x80 ; 07937 80
    %if ($ - %%insn_07937) > 1
        %error "LONG_07937"
    %endif
    times 1 - ($ - %%insn_07937) db 0
    %if ($ - %%fragment_start) != 29
        %error "SIZE_0791B"
    %endif
%endmacro

%macro emit_func_0791b_part_01 0
    %%fragment_start:
    %%insn_07939:
    add [0xfae8],cl ; 07939 000EE8FA
    %if ($ - %%insn_07939) > 4
        %error "LONG_07939"
    %endif
    times 4 - ($ - %%insn_07939) db 0
    %%insn_0793d:
    call word far [bx+0x5e] ; 0793D FF5F5E
    %if ($ - %%insn_0793d) > 3
        %error "LONG_0793D"
    %endif
    times 3 - ($ - %%insn_0793d) db 0
    %%insn_07940:
    pop ds ; 07940 1F
    %if ($ - %%insn_07940) > 1
        %error "LONG_07940"
    %endif
    times 1 - ($ - %%insn_07940) db 0
    %%insn_07941:
    pop bp ; 07941 5D
    %if ($ - %%insn_07941) > 1
        %error "LONG_07941"
    %endif
    times 1 - ($ - %%insn_07941) db 0
    %%insn_07942:
    retf ; 07942 CB
    %if ($ - %%insn_07942) > 1
        %error "LONG_07942"
    %endif
    times 1 - ($ - %%insn_07942) db 0
    %if ($ - %%fragment_start) != 10
        %error "SIZE_07939"
    %endif
%endmacro
