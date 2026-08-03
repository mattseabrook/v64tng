; PE virtual entry 00418790
; Ghidra working symbol: FUN_00418790
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00418790_part_00 0
    %%fragment_start:
func_00418790:
    %%insn_00418790:
    mov edx,[esp+0x4] ; 00418790 8B542404
    %if ($ - %%insn_00418790) > 4
        %error "LONG_00418790"
    %endif
    times 4 - ($ - %%insn_00418790) db 0
    %%insn_00418794:
    push esi ; 00418794 56
    %if ($ - %%insn_00418794) > 1
        %error "LONG_00418794"
    %endif
    times 1 - ($ - %%insn_00418794) db 0
    %%insn_00418795:
    mov esi,[esp+0xc] ; 00418795 8B74240C
    %if ($ - %%insn_00418795) > 4
        %error "LONG_00418795"
    %endif
    times 4 - ($ - %%insn_00418795) db 0
    db 0x8B, 0xC2 ; 00418799 8BC2 | mov eax,edx | encoding preserved
    db 0x8B, 0xCE ; 0041879B 8BCE | mov ecx,esi | encoding preserved
    %%insn_0041879d:
    test ecx,ecx ; 0041879D 85C9
    %if ($ - %%insn_0041879d) > 2
        %error "LONG_0041879D"
    %endif
    times 2 - ($ - %%insn_0041879d) db 0
    %%insn_0041879f:
    jz short 0x4187be ; 0041879F 741D
    %if ($ - %%insn_0041879f) > 2
        %error "LONG_0041879F"
    %endif
    times 2 - ($ - %%insn_0041879f) db 0
    %%insn_004187a1:
    cmp word [eax],0x0 ; 004187A1 66833800
    %if ($ - %%insn_004187a1) > 4
        %error "LONG_004187A1"
    %endif
    times 4 - ($ - %%insn_004187a1) db 0
    %%insn_004187a5:
    jz short 0x4187ad ; 004187A5 7406
    %if ($ - %%insn_004187a5) > 2
        %error "LONG_004187A5"
    %endif
    times 2 - ($ - %%insn_004187a5) db 0
    %%insn_004187a7:
    add eax,0x2 ; 004187A7 83C002
    %if ($ - %%insn_004187a7) > 3
        %error "LONG_004187A7"
    %endif
    times 3 - ($ - %%insn_004187a7) db 0
    %%insn_004187aa:
    dec ecx ; 004187AA 49
    %if ($ - %%insn_004187aa) > 1
        %error "LONG_004187AA"
    %endif
    times 1 - ($ - %%insn_004187aa) db 0
    %%insn_004187ab:
    jnz short 0x4187a1 ; 004187AB 75F4
    %if ($ - %%insn_004187ab) > 2
        %error "LONG_004187AB"
    %endif
    times 2 - ($ - %%insn_004187ab) db 0
    %%insn_004187ad:
    test ecx,ecx ; 004187AD 85C9
    %if ($ - %%insn_004187ad) > 2
        %error "LONG_004187AD"
    %endif
    times 2 - ($ - %%insn_004187ad) db 0
    %%insn_004187af:
    jz short 0x4187be ; 004187AF 740D
    %if ($ - %%insn_004187af) > 2
        %error "LONG_004187AF"
    %endif
    times 2 - ($ - %%insn_004187af) db 0
    %%insn_004187b1:
    cmp word [eax],0x0 ; 004187B1 66833800
    %if ($ - %%insn_004187b1) > 4
        %error "LONG_004187B1"
    %endif
    times 4 - ($ - %%insn_004187b1) db 0
    %%insn_004187b5:
    jnz short 0x4187be ; 004187B5 7507
    %if ($ - %%insn_004187b5) > 2
        %error "LONG_004187B5"
    %endif
    times 2 - ($ - %%insn_004187b5) db 0
    db 0x2B, 0xC2 ; 004187B7 2BC2 | sub eax,edx | encoding preserved
    %%insn_004187b9:
    sar eax,1 ; 004187B9 D1F8
    %if ($ - %%insn_004187b9) > 2
        %error "LONG_004187B9"
    %endif
    times 2 - ($ - %%insn_004187b9) db 0
    %%insn_004187bb:
    inc eax ; 004187BB 40
    %if ($ - %%insn_004187bb) > 1
        %error "LONG_004187BB"
    %endif
    times 1 - ($ - %%insn_004187bb) db 0
    %%insn_004187bc:
    pop esi ; 004187BC 5E
    %if ($ - %%insn_004187bc) > 1
        %error "LONG_004187BC"
    %endif
    times 1 - ($ - %%insn_004187bc) db 0
    %%insn_004187bd:
    ret ; 004187BD C3
    %if ($ - %%insn_004187bd) > 1
        %error "LONG_004187BD"
    %endif
    times 1 - ($ - %%insn_004187bd) db 0
    db 0x8B, 0xC6 ; 004187BE 8BC6 | mov eax,esi | encoding preserved
    %%insn_004187c0:
    pop esi ; 004187C0 5E
    %if ($ - %%insn_004187c0) > 1
        %error "LONG_004187C0"
    %endif
    times 1 - ($ - %%insn_004187c0) db 0
    %%insn_004187c1:
    ret ; 004187C1 C3
    %if ($ - %%insn_004187c1) > 1
        %error "LONG_004187C1"
    %endif
    times 1 - ($ - %%insn_004187c1) db 0
    %if ($ - %%fragment_start) != 50
        %error "function fragment size drift: 00418790"
    %endif
%endmacro
