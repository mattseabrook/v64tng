; PE virtual entry 00418520
; Ghidra working symbol: FUN_00418520
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00418520_part_00 0
    %%fragment_start:
func_00418520:
    %%insn_00418520:
    push ebx ; 00418520 53
    %if ($ - %%insn_00418520) > 1
        %error "LONG_00418520"
    %endif
    times 1 - ($ - %%insn_00418520) db 0
    %%insn_00418521:
    push esi ; 00418521 56
    %if ($ - %%insn_00418521) > 1
        %error "LONG_00418521"
    %endif
    times 1 - ($ - %%insn_00418521) db 0
    %%insn_00418522:
    push edi ; 00418522 57
    %if ($ - %%insn_00418522) > 1
        %error "LONG_00418522"
    %endif
    times 1 - ($ - %%insn_00418522) db 0
    %%insn_00418523:
    push dword 0x423588 ; 00418523 6888354200
    %if ($ - %%insn_00418523) > 5
        %error "LONG_00418523"
    %endif
    times 5 - ($ - %%insn_00418523) db 0
    %%insn_00418528:
    call dword near [0x4243b4] ; 00418528 FF15B4434200
    %if ($ - %%insn_00418528) > 6
        %error "LONG_00418528"
    %endif
    times 6 - ($ - %%insn_00418528) db 0
    %%insn_0041852e:
    mov eax,[0x423584] ; 0041852E A184354200
    %if ($ - %%insn_0041852e) > 5
        %error "LONG_0041852E"
    %endif
    times 5 - ($ - %%insn_0041852e) db 0
    %%insn_00418533:
    mov edi,[0x4243e0] ; 00418533 8B3DE0434200
    %if ($ - %%insn_00418533) > 6
        %error "LONG_00418533"
    %endif
    times 6 - ($ - %%insn_00418533) db 0
    %%insn_00418539:
    test eax,eax ; 00418539 85C0
    %if ($ - %%insn_00418539) > 2
        %error "LONG_00418539"
    %endif
    times 2 - ($ - %%insn_00418539) db 0
    %%insn_0041853b:
    jz short 0x418555 ; 0041853B 7418
    %if ($ - %%insn_0041853b) > 2
        %error "LONG_0041853B"
    %endif
    times 2 - ($ - %%insn_0041853b) db 0
    %%insn_0041853d:
    push dword 0x423588 ; 0041853D 6888354200
    %if ($ - %%insn_0041853d) > 5
        %error "LONG_0041853D"
    %endif
    times 5 - ($ - %%insn_0041853d) db 0
    %%insn_00418542:
    call edi ; 00418542 FFD7
    %if ($ - %%insn_00418542) > 2
        %error "LONG_00418542"
    %endif
    times 2 - ($ - %%insn_00418542) db 0
    %%insn_00418544:
    push dword 0x13 ; 00418544 6A13
    %if ($ - %%insn_00418544) > 2
        %error "LONG_00418544"
    %endif
    times 2 - ($ - %%insn_00418544) db 0
    %%insn_00418546:
    call 0x40df00 ; 00418546 E8B559FFFF
    %if ($ - %%insn_00418546) > 5
        %error "LONG_00418546"
    %endif
    times 5 - ($ - %%insn_00418546) db 0
    %%insn_0041854b:
    add esp,0x4 ; 0041854B 83C404
    %if ($ - %%insn_0041854b) > 3
        %error "LONG_0041854B"
    %endif
    times 3 - ($ - %%insn_0041854b) db 0
    %%insn_0041854e:
    mov esi,0x1 ; 0041854E BE01000000
    %if ($ - %%insn_0041854e) > 5
        %error "LONG_0041854E"
    %endif
    times 5 - ($ - %%insn_0041854e) db 0
    %%insn_00418553:
    jmp short 0x418557 ; 00418553 EB02
    %if ($ - %%insn_00418553) > 2
        %error "LONG_00418553"
    %endif
    times 2 - ($ - %%insn_00418553) db 0
    db 0x33, 0xF6 ; 00418555 33F6 | xor esi,esi | encoding preserved
    %%insn_00418557:
    mov eax,[esp+0x18] ; 00418557 8B442418
    %if ($ - %%insn_00418557) > 4
        %error "LONG_00418557"
    %endif
    times 4 - ($ - %%insn_00418557) db 0
    %%insn_0041855b:
    mov ecx,[esp+0x14] ; 0041855B 8B4C2414
    %if ($ - %%insn_0041855b) > 4
        %error "LONG_0041855B"
    %endif
    times 4 - ($ - %%insn_0041855b) db 0
    %%insn_0041855f:
    mov edx,[esp+0x10] ; 0041855F 8B542410
    %if ($ - %%insn_0041855f) > 4
        %error "LONG_0041855F"
    %endif
    times 4 - ($ - %%insn_0041855f) db 0
    %%insn_00418563:
    push eax ; 00418563 50
    %if ($ - %%insn_00418563) > 1
        %error "LONG_00418563"
    %endif
    times 1 - ($ - %%insn_00418563) db 0
    %%insn_00418564:
    push ecx ; 00418564 51
    %if ($ - %%insn_00418564) > 1
        %error "LONG_00418564"
    %endif
    times 1 - ($ - %%insn_00418564) db 0
    %%insn_00418565:
    push edx ; 00418565 52
    %if ($ - %%insn_00418565) > 1
        %error "LONG_00418565"
    %endif
    times 1 - ($ - %%insn_00418565) db 0
    %%insn_00418566:
    call 0x4185a0 ; 00418566 E835000000
    %if ($ - %%insn_00418566) > 5
        %error "LONG_00418566"
    %endif
    times 5 - ($ - %%insn_00418566) db 0
    %%insn_0041856b:
    add esp,0xc ; 0041856B 83C40C
    %if ($ - %%insn_0041856b) > 3
        %error "LONG_0041856B"
    %endif
    times 3 - ($ - %%insn_0041856b) db 0
    db 0x8B, 0xD8 ; 0041856E 8BD8 | mov ebx,eax | encoding preserved
    %%insn_00418570:
    test esi,esi ; 00418570 85F6
    %if ($ - %%insn_00418570) > 2
        %error "LONG_00418570"
    %endif
    times 2 - ($ - %%insn_00418570) db 0
    %%insn_00418572:
    jz short 0x418584 ; 00418572 7410
    %if ($ - %%insn_00418572) > 2
        %error "LONG_00418572"
    %endif
    times 2 - ($ - %%insn_00418572) db 0
    %%insn_00418574:
    push dword 0x13 ; 00418574 6A13
    %if ($ - %%insn_00418574) > 2
        %error "LONG_00418574"
    %endif
    times 2 - ($ - %%insn_00418574) db 0
    %%insn_00418576:
    call 0x40df80 ; 00418576 E8055AFFFF
    %if ($ - %%insn_00418576) > 5
        %error "LONG_00418576"
    %endif
    times 5 - ($ - %%insn_00418576) db 0
    %%insn_0041857b:
    add esp,0x4 ; 0041857B 83C404
    %if ($ - %%insn_0041857b) > 3
        %error "LONG_0041857B"
    %endif
    times 3 - ($ - %%insn_0041857b) db 0
    db 0x8B, 0xC3 ; 0041857E 8BC3 | mov eax,ebx | encoding preserved
    %%insn_00418580:
    pop edi ; 00418580 5F
    %if ($ - %%insn_00418580) > 1
        %error "LONG_00418580"
    %endif
    times 1 - ($ - %%insn_00418580) db 0
    %%insn_00418581:
    pop esi ; 00418581 5E
    %if ($ - %%insn_00418581) > 1
        %error "LONG_00418581"
    %endif
    times 1 - ($ - %%insn_00418581) db 0
    %%insn_00418582:
    pop ebx ; 00418582 5B
    %if ($ - %%insn_00418582) > 1
        %error "LONG_00418582"
    %endif
    times 1 - ($ - %%insn_00418582) db 0
    %%insn_00418583:
    ret ; 00418583 C3
    %if ($ - %%insn_00418583) > 1
        %error "LONG_00418583"
    %endif
    times 1 - ($ - %%insn_00418583) db 0
    %%insn_00418584:
    push dword 0x423588 ; 00418584 6888354200
    %if ($ - %%insn_00418584) > 5
        %error "LONG_00418584"
    %endif
    times 5 - ($ - %%insn_00418584) db 0
    %%insn_00418589:
    call edi ; 00418589 FFD7
    %if ($ - %%insn_00418589) > 2
        %error "LONG_00418589"
    %endif
    times 2 - ($ - %%insn_00418589) db 0
    %%insn_0041858b:
    pop edi ; 0041858B 5F
    %if ($ - %%insn_0041858b) > 1
        %error "LONG_0041858B"
    %endif
    times 1 - ($ - %%insn_0041858b) db 0
    db 0x8B, 0xC3 ; 0041858C 8BC3 | mov eax,ebx | encoding preserved
    %%insn_0041858e:
    pop esi ; 0041858E 5E
    %if ($ - %%insn_0041858e) > 1
        %error "LONG_0041858E"
    %endif
    times 1 - ($ - %%insn_0041858e) db 0
    %%insn_0041858f:
    pop ebx ; 0041858F 5B
    %if ($ - %%insn_0041858f) > 1
        %error "LONG_0041858F"
    %endif
    times 1 - ($ - %%insn_0041858f) db 0
    %%insn_00418590:
    ret ; 00418590 C3
    %if ($ - %%insn_00418590) > 1
        %error "LONG_00418590"
    %endif
    times 1 - ($ - %%insn_00418590) db 0
    %if ($ - %%fragment_start) != 113
        %error "function fragment size drift: 00418520"
    %endif
%endmacro
