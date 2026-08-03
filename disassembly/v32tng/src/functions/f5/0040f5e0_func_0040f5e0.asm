; PE virtual entry 0040F5E0
; Ghidra working symbol: FUN_0040f5e0
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040f5e0_part_00 0
    %%fragment_start:
func_0040f5e0:
    %%insn_0040f5e0:
    push ebx ; 0040F5E0 53
    %if ($ - %%insn_0040f5e0) > 1
        %error "LONG_0040F5E0"
    %endif
    times 1 - ($ - %%insn_0040f5e0) db 0
    %%insn_0040f5e1:
    push ebp ; 0040F5E1 55
    %if ($ - %%insn_0040f5e1) > 1
        %error "LONG_0040F5E1"
    %endif
    times 1 - ($ - %%insn_0040f5e1) db 0
    %%insn_0040f5e2:
    mov ebp,[esp+0x10] ; 0040F5E2 8B6C2410
    %if ($ - %%insn_0040f5e2) > 4
        %error "LONG_0040F5E2"
    %endif
    times 4 - ($ - %%insn_0040f5e2) db 0
    %%insn_0040f5e6:
    push esi ; 0040F5E6 56
    %if ($ - %%insn_0040f5e6) > 1
        %error "LONG_0040F5E6"
    %endif
    times 1 - ($ - %%insn_0040f5e6) db 0
    db 0x8B, 0xC5 ; 0040F5E7 8BC5 | mov eax,ebp | encoding preserved
    %%insn_0040f5e9:
    dec ebp ; 0040F5E9 4D
    %if ($ - %%insn_0040f5e9) > 1
        %error "LONG_0040F5E9"
    %endif
    times 1 - ($ - %%insn_0040f5e9) db 0
    %%insn_0040f5ea:
    test eax,eax ; 0040F5EA 85C0
    %if ($ - %%insn_0040f5ea) > 2
        %error "LONG_0040F5EA"
    %endif
    times 2 - ($ - %%insn_0040f5ea) db 0
    %%insn_0040f5ec:
    push edi ; 0040F5EC 57
    %if ($ - %%insn_0040f5ec) > 1
        %error "LONG_0040F5EC"
    %endif
    times 1 - ($ - %%insn_0040f5ec) db 0
    %%insn_0040f5ed:
    jng short 0x40f618 ; 0040F5ED 7E29
    %if ($ - %%insn_0040f5ed) > 2
        %error "LONG_0040F5ED"
    %endif
    times 2 - ($ - %%insn_0040f5ed) db 0
    %%insn_0040f5ef:
    mov edi,[esp+0x20] ; 0040F5EF 8B7C2420
    %if ($ - %%insn_0040f5ef) > 4
        %error "LONG_0040F5EF"
    %endif
    times 4 - ($ - %%insn_0040f5ef) db 0
    %%insn_0040f5f3:
    mov ebx,[esp+0x1c] ; 0040F5F3 8B5C241C
    %if ($ - %%insn_0040f5f3) > 4
        %error "LONG_0040F5F3"
    %endif
    times 4 - ($ - %%insn_0040f5f3) db 0
    %%insn_0040f5f7:
    mov esi,[esp+0x14] ; 0040F5F7 8B742414
    %if ($ - %%insn_0040f5f7) > 4
        %error "LONG_0040F5F7"
    %endif
    times 4 - ($ - %%insn_0040f5f7) db 0
    %%insn_0040f5fb:
    movsx eax,byte [esi] ; 0040F5FB 0FBE06
    %if ($ - %%insn_0040f5fb) > 3
        %error "LONG_0040F5FB"
    %endif
    times 3 - ($ - %%insn_0040f5fb) db 0
    %%insn_0040f5fe:
    push edi ; 0040F5FE 57
    %if ($ - %%insn_0040f5fe) > 1
        %error "LONG_0040F5FE"
    %endif
    times 1 - ($ - %%insn_0040f5fe) db 0
    %%insn_0040f5ff:
    push ebx ; 0040F5FF 53
    %if ($ - %%insn_0040f5ff) > 1
        %error "LONG_0040F5FF"
    %endif
    times 1 - ($ - %%insn_0040f5ff) db 0
    %%insn_0040f600:
    push eax ; 0040F600 50
    %if ($ - %%insn_0040f600) > 1
        %error "LONG_0040F600"
    %endif
    times 1 - ($ - %%insn_0040f600) db 0
    %%insn_0040f601:
    inc esi ; 0040F601 46
    %if ($ - %%insn_0040f601) > 1
        %error "LONG_0040F601"
    %endif
    times 1 - ($ - %%insn_0040f601) db 0
    %%insn_0040f602:
    call 0x40f550 ; 0040F602 E849FFFFFF
    %if ($ - %%insn_0040f602) > 5
        %error "LONG_0040F602"
    %endif
    times 5 - ($ - %%insn_0040f602) db 0
    %%insn_0040f607:
    mov eax,[edi] ; 0040F607 8B07
    %if ($ - %%insn_0040f607) > 2
        %error "LONG_0040F607"
    %endif
    times 2 - ($ - %%insn_0040f607) db 0
    %%insn_0040f609:
    add esp,0xc ; 0040F609 83C40C
    %if ($ - %%insn_0040f609) > 3
        %error "LONG_0040F609"
    %endif
    times 3 - ($ - %%insn_0040f609) db 0
    %%insn_0040f60c:
    cmp eax,0xffffffffffffffff ; 0040F60C 83F8FF
    %if ($ - %%insn_0040f60c) > 3
        %error "LONG_0040F60C"
    %endif
    times 3 - ($ - %%insn_0040f60c) db 0
    %%insn_0040f60f:
    jz short 0x40f618 ; 0040F60F 7407
    %if ($ - %%insn_0040f60f) > 2
        %error "LONG_0040F60F"
    %endif
    times 2 - ($ - %%insn_0040f60f) db 0
    db 0x8B, 0xCD ; 0040F611 8BCD | mov ecx,ebp | encoding preserved
    %%insn_0040f613:
    dec ebp ; 0040F613 4D
    %if ($ - %%insn_0040f613) > 1
        %error "LONG_0040F613"
    %endif
    times 1 - ($ - %%insn_0040f613) db 0
    %%insn_0040f614:
    test ecx,ecx ; 0040F614 85C9
    %if ($ - %%insn_0040f614) > 2
        %error "LONG_0040F614"
    %endif
    times 2 - ($ - %%insn_0040f614) db 0
    %%insn_0040f616:
    jg short 0x40f5fb ; 0040F616 7FE3
    %if ($ - %%insn_0040f616) > 2
        %error "LONG_0040F616"
    %endif
    times 2 - ($ - %%insn_0040f616) db 0
    %%insn_0040f618:
    pop edi ; 0040F618 5F
    %if ($ - %%insn_0040f618) > 1
        %error "LONG_0040F618"
    %endif
    times 1 - ($ - %%insn_0040f618) db 0
    %%insn_0040f619:
    pop esi ; 0040F619 5E
    %if ($ - %%insn_0040f619) > 1
        %error "LONG_0040F619"
    %endif
    times 1 - ($ - %%insn_0040f619) db 0
    %%insn_0040f61a:
    pop ebp ; 0040F61A 5D
    %if ($ - %%insn_0040f61a) > 1
        %error "LONG_0040F61A"
    %endif
    times 1 - ($ - %%insn_0040f61a) db 0
    %%insn_0040f61b:
    pop ebx ; 0040F61B 5B
    %if ($ - %%insn_0040f61b) > 1
        %error "LONG_0040F61B"
    %endif
    times 1 - ($ - %%insn_0040f61b) db 0
    %%insn_0040f61c:
    ret ; 0040F61C C3
    %if ($ - %%insn_0040f61c) > 1
        %error "LONG_0040F61C"
    %endif
    times 1 - ($ - %%insn_0040f61c) db 0
    %if ($ - %%fragment_start) != 61
        %error "function fragment size drift: 0040F5E0"
    %endif
%endmacro
