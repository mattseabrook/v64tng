; PE virtual entry 00411600
; Ghidra working symbol: FUN_00411600
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00411600_part_00 0
    %%fragment_start:
func_00411600:
    %%insn_00411600:
    sub esp,0xc ; 00411600 83EC0C
    %if ($ - %%insn_00411600) > 3
        %error "LONG_00411600"
    %endif
    times 3 - ($ - %%insn_00411600) db 0
    %%insn_00411603:
    push ebx ; 00411603 53
    %if ($ - %%insn_00411603) > 1
        %error "LONG_00411603"
    %endif
    times 1 - ($ - %%insn_00411603) db 0
    %%insn_00411604:
    push ebp ; 00411604 55
    %if ($ - %%insn_00411604) > 1
        %error "LONG_00411604"
    %endif
    times 1 - ($ - %%insn_00411604) db 0
    %%insn_00411605:
    mov ebp,[esp+0x1c] ; 00411605 8B6C241C
    %if ($ - %%insn_00411605) > 4
        %error "LONG_00411605"
    %endif
    times 4 - ($ - %%insn_00411605) db 0
    %%insn_00411609:
    push esi ; 00411609 56
    %if ($ - %%insn_00411609) > 1
        %error "LONG_00411609"
    %endif
    times 1 - ($ - %%insn_00411609) db 0
    %%insn_0041160a:
    push edi ; 0041160A 57
    %if ($ - %%insn_0041160a) > 1
        %error "LONG_0041160A"
    %endif
    times 1 - ($ - %%insn_0041160a) db 0
    db 0x8B, 0xDD ; 0041160B 8BDD | mov ebx,ebp | encoding preserved
    %%insn_0041160d:
    push dword 0x5c ; 0041160D 6A5C
    %if ($ - %%insn_0041160d) > 2
        %error "LONG_0041160D"
    %endif
    times 2 - ($ - %%insn_0041160d) db 0
    %%insn_0041160f:
    push ebp ; 0041160F 55
    %if ($ - %%insn_0041160f) > 1
        %error "LONG_0041160F"
    %endif
    times 1 - ($ - %%insn_0041160f) db 0
    %%insn_00411610:
    mov [esp+0x18],ebx ; 00411610 895C2418
    %if ($ - %%insn_00411610) > 4
        %error "LONG_00411610"
    %endif
    times 4 - ($ - %%insn_00411610) db 0
    %%insn_00411614:
    call 0x414f60 ; 00411614 E847390000
    %if ($ - %%insn_00411614) > 5
        %error "LONG_00411614"
    %endif
    times 5 - ($ - %%insn_00411614) db 0
    %%insn_00411619:
    add esp,0x8 ; 00411619 83C408
    %if ($ - %%insn_00411619) > 3
        %error "LONG_00411619"
    %endif
    times 3 - ($ - %%insn_00411619) db 0
    db 0x8B, 0xF0 ; 0041161C 8BF0 | mov esi,eax | encoding preserved
    %%insn_0041161e:
    push dword 0x2f ; 0041161E 6A2F
    %if ($ - %%insn_0041161e) > 2
        %error "LONG_0041161E"
    %endif
    times 2 - ($ - %%insn_0041161e) db 0
    %%insn_00411620:
    push ebp ; 00411620 55
    %if ($ - %%insn_00411620) > 1
        %error "LONG_00411620"
    %endif
    times 1 - ($ - %%insn_00411620) db 0
    %%insn_00411621:
    call 0x414f60 ; 00411621 E83A390000
    %if ($ - %%insn_00411621) > 5
        %error "LONG_00411621"
    %endif
    times 5 - ($ - %%insn_00411621) db 0
    %%insn_00411626:
    add esp,0x8 ; 00411626 83C408
    %if ($ - %%insn_00411626) > 3
        %error "LONG_00411626"
    %endif
    times 3 - ($ - %%insn_00411626) db 0
    %%insn_00411629:
    test eax,eax ; 00411629 85C0
    %if ($ - %%insn_00411629) > 2
        %error "LONG_00411629"
    %endif
    times 2 - ($ - %%insn_00411629) db 0
    %%insn_0041162b:
    jnz 0x4116b9 ; 0041162B 0F8588000000
    %if ($ - %%insn_0041162b) > 6
        %error "LONG_0041162B"
    %endif
    times 6 - ($ - %%insn_0041162b) db 0
    %%insn_00411631:
    test esi,esi ; 00411631 85F6
    %if ($ - %%insn_00411631) > 2
        %error "LONG_00411631"
    %endif
    times 2 - ($ - %%insn_00411631) db 0
    %%insn_00411633:
    jnz 0x4116c3 ; 00411633 0F858A000000
    %if ($ - %%insn_00411633) > 6
        %error "LONG_00411633"
    %endif
    times 6 - ($ - %%insn_00411633) db 0
    %%insn_00411639:
    push dword 0x3a ; 00411639 6A3A
    %if ($ - %%insn_00411639) > 2
        %error "LONG_00411639"
    %endif
    times 2 - ($ - %%insn_00411639) db 0
    %%insn_0041163b:
    push ebp ; 0041163B 55
    %if ($ - %%insn_0041163b) > 1
        %error "LONG_0041163B"
    %endif
    times 1 - ($ - %%insn_0041163b) db 0
    %%insn_0041163c:
    call 0x414e90 ; 0041163C E84F380000
    %if ($ - %%insn_0041163c) > 5
        %error "LONG_0041163C"
    %endif
    times 5 - ($ - %%insn_0041163c) db 0
    db 0x8B, 0xF0 ; 00411641 8BF0 | mov esi,eax | encoding preserved
    %%insn_00411643:
    add esp,0x8 ; 00411643 83C408
    %if ($ - %%insn_00411643) > 3
        %error "LONG_00411643"
    %endif
    times 3 - ($ - %%insn_00411643) db 0
    %%insn_00411646:
    test esi,esi ; 00411646 85F6
    %if ($ - %%insn_00411646) > 2
        %error "LONG_00411646"
    %endif
    times 2 - ($ - %%insn_00411646) db 0
    %%insn_00411648:
    jnz short 0x4116c3 ; 00411648 7579
    %if ($ - %%insn_00411648) > 2
        %error "LONG_00411648"
    %endif
    times 2 - ($ - %%insn_00411648) db 0
    db 0x8B, 0xFD ; 0041164A 8BFD | mov edi,ebp | encoding preserved
    %%insn_0041164c:
    or ecx,0xffffffffffffffff ; 0041164C 83C9FF
    %if ($ - %%insn_0041164c) > 3
        %error "LONG_0041164C"
    %endif
    times 3 - ($ - %%insn_0041164c) db 0
    %%insn_0041164f:
    repne scasb ; 0041164F F2AE
    %if ($ - %%insn_0041164f) > 2
        %error "LONG_0041164F"
    %endif
    times 2 - ($ - %%insn_0041164f) db 0
    %%insn_00411651:
    not ecx ; 00411651 F7D1
    %if ($ - %%insn_00411651) > 2
        %error "LONG_00411651"
    %endif
    times 2 - ($ - %%insn_00411651) db 0
    %%insn_00411653:
    add ecx,0x2 ; 00411653 83C102
    %if ($ - %%insn_00411653) > 3
        %error "LONG_00411653"
    %endif
    times 3 - ($ - %%insn_00411653) db 0
    %%insn_00411656:
    push ecx ; 00411656 51
    %if ($ - %%insn_00411656) > 1
        %error "LONG_00411656"
    %endif
    times 1 - ($ - %%insn_00411656) db 0
    %%insn_00411657:
    call 0x40cdc0 ; 00411657 E864B7FFFF
    %if ($ - %%insn_00411657) > 5
        %error "LONG_00411657"
    %endif
    times 5 - ($ - %%insn_00411657) db 0
    db 0x8B, 0xD0 ; 0041165C 8BD0 | mov edx,eax | encoding preserved
    %%insn_0041165e:
    add esp,0x4 ; 0041165E 83C404
    %if ($ - %%insn_0041165e) > 3
        %error "LONG_0041165E"
    %endif
    times 3 - ($ - %%insn_0041165e) db 0
    %%insn_00411661:
    test edx,edx ; 00411661 85D2
    %if ($ - %%insn_00411661) > 2
        %error "LONG_00411661"
    %endif
    times 2 - ($ - %%insn_00411661) db 0
    %%insn_00411663:
    mov [esp+0x10],edx ; 00411663 89542410
    %if ($ - %%insn_00411663) > 4
        %error "LONG_00411663"
    %endif
    times 4 - ($ - %%insn_00411663) db 0
    %%insn_00411667:
    jnz short 0x411674 ; 00411667 750B
    %if ($ - %%insn_00411667) > 2
        %error "LONG_00411667"
    %endif
    times 2 - ($ - %%insn_00411667) db 0
    %%insn_00411669:
    or eax,0xffffffffffffffff ; 00411669 83C8FF
    %if ($ - %%insn_00411669) > 3
        %error "LONG_00411669"
    %endif
    times 3 - ($ - %%insn_00411669) db 0
    %%insn_0041166c:
    pop edi ; 0041166C 5F
    %if ($ - %%insn_0041166c) > 1
        %error "LONG_0041166C"
    %endif
    times 1 - ($ - %%insn_0041166c) db 0
    %%insn_0041166d:
    pop esi ; 0041166D 5E
    %if ($ - %%insn_0041166d) > 1
        %error "LONG_0041166D"
    %endif
    times 1 - ($ - %%insn_0041166d) db 0
    %%insn_0041166e:
    pop ebp ; 0041166E 5D
    %if ($ - %%insn_0041166e) > 1
        %error "LONG_0041166E"
    %endif
    times 1 - ($ - %%insn_0041166e) db 0
    %%insn_0041166f:
    pop ebx ; 0041166F 5B
    %if ($ - %%insn_0041166f) > 1
        %error "LONG_0041166F"
    %endif
    times 1 - ($ - %%insn_0041166f) db 0
    %%insn_00411670:
    add esp,0xc ; 00411670 83C40C
    %if ($ - %%insn_00411670) > 3
        %error "LONG_00411670"
    %endif
    times 3 - ($ - %%insn_00411670) db 0
    %%insn_00411673:
    ret ; 00411673 C3
    %if ($ - %%insn_00411673) > 1
        %error "LONG_00411673"
    %endif
    times 1 - ($ - %%insn_00411673) db 0
    %%insn_00411674:
    mov cx,[0x41a244] ; 00411674 668B0D44A24100
    %if ($ - %%insn_00411674) > 7
        %error "LONG_00411674"
    %endif
    times 7 - ($ - %%insn_00411674) db 0
    db 0x8B, 0xC2 ; 0041167B 8BC2 | mov eax,edx | encoding preserved
    db 0x8B, 0xFD ; 0041167D 8BFD | mov edi,ebp | encoding preserved
    %%insn_0041167f:
    mov [eax],cx ; 0041167F 668908
    %if ($ - %%insn_0041167f) > 3
        %error "LONG_0041167F"
    %endif
    times 3 - ($ - %%insn_0041167f) db 0
    %%insn_00411682:
    mov cl,[0x41a246] ; 00411682 8A0D46A24100
    %if ($ - %%insn_00411682) > 6
        %error "LONG_00411682"
    %endif
    times 6 - ($ - %%insn_00411682) db 0
    %%insn_00411688:
    mov [eax+0x2],cl ; 00411688 884802
    %if ($ - %%insn_00411688) > 3
        %error "LONG_00411688"
    %endif
    times 3 - ($ - %%insn_00411688) db 0
    %%insn_0041168b:
    or ecx,0xffffffffffffffff ; 0041168B 83C9FF
    %if ($ - %%insn_0041168b) > 3
        %error "LONG_0041168B"
    %endif
    times 3 - ($ - %%insn_0041168b) db 0
    db 0x33, 0xC0 ; 0041168E 33C0 | xor eax,eax | encoding preserved
    %%insn_00411690:
    repne scasb ; 00411690 F2AE
    %if ($ - %%insn_00411690) > 2
        %error "LONG_00411690"
    %endif
    times 2 - ($ - %%insn_00411690) db 0
    %%insn_00411692:
    not ecx ; 00411692 F7D1
    %if ($ - %%insn_00411692) > 2
        %error "LONG_00411692"
    %endif
    times 2 - ($ - %%insn_00411692) db 0
    db 0x2B, 0xF9 ; 00411694 2BF9 | sub edi,ecx | encoding preserved
    db 0x8B, 0xF7 ; 00411696 8BF7 | mov esi,edi | encoding preserved
    db 0x8B, 0xD9 ; 00411698 8BD9 | mov ebx,ecx | encoding preserved
    db 0x8B, 0xFA ; 0041169A 8BFA | mov edi,edx | encoding preserved
    %%insn_0041169c:
    or ecx,0xffffffffffffffff ; 0041169C 83C9FF
    %if ($ - %%insn_0041169c) > 3
        %error "LONG_0041169C"
    %endif
    times 3 - ($ - %%insn_0041169c) db 0
    %%insn_0041169f:
    repne scasb ; 0041169F F2AE
    %if ($ - %%insn_0041169f) > 2
        %error "LONG_0041169F"
    %endif
    times 2 - ($ - %%insn_0041169f) db 0
    db 0x8B, 0xCB ; 004116A1 8BCB | mov ecx,ebx | encoding preserved
    %%insn_004116a3:
    dec edi ; 004116A3 4F
    %if ($ - %%insn_004116a3) > 1
        %error "LONG_004116A3"
    %endif
    times 1 - ($ - %%insn_004116a3) db 0
    %%insn_004116a4:
    shr ecx,byte 0x2 ; 004116A4 C1E902
    %if ($ - %%insn_004116a4) > 3
        %error "LONG_004116A4"
    %endif
    times 3 - ($ - %%insn_004116a4) db 0
    %%insn_004116a7:
    rep movsd ; 004116A7 F3A5
    %if ($ - %%insn_004116a7) > 2
        %error "LONG_004116A7"
    %endif
    times 2 - ($ - %%insn_004116a7) db 0
    db 0x8B, 0xCB ; 004116A9 8BCB | mov ecx,ebx | encoding preserved
    %%insn_004116ab:
    mov ebx,[esp+0x10] ; 004116AB 8B5C2410
    %if ($ - %%insn_004116ab) > 4
        %error "LONG_004116AB"
    %endif
    times 4 - ($ - %%insn_004116ab) db 0
    %%insn_004116af:
    and ecx,0x3 ; 004116AF 83E103
    %if ($ - %%insn_004116af) > 3
        %error "LONG_004116AF"
    %endif
    times 3 - ($ - %%insn_004116af) db 0
    %%insn_004116b2:
    rep movsb ; 004116B2 F3A4
    %if ($ - %%insn_004116b2) > 2
        %error "LONG_004116B2"
    %endif
    times 2 - ($ - %%insn_004116b2) db 0
    %%insn_004116b4:
    lea esi,[edx+0x2] ; 004116B4 8D7202
    %if ($ - %%insn_004116b4) > 3
        %error "LONG_004116B4"
    %endif
    times 3 - ($ - %%insn_004116b4) db 0
    %%insn_004116b7:
    jmp short 0x4116c3 ; 004116B7 EB0A
    %if ($ - %%insn_004116b7) > 2
        %error "LONG_004116B7"
    %endif
    times 2 - ($ - %%insn_004116b7) db 0
    %%insn_004116b9:
    test esi,esi ; 004116B9 85F6
    %if ($ - %%insn_004116b9) > 2
        %error "LONG_004116B9"
    %endif
    times 2 - ($ - %%insn_004116b9) db 0
    %%insn_004116bb:
    jz short 0x4116c1 ; 004116BB 7404
    %if ($ - %%insn_004116bb) > 2
        %error "LONG_004116BB"
    %endif
    times 2 - ($ - %%insn_004116bb) db 0
    db 0x3B, 0xC6 ; 004116BD 3BC6 | cmp eax,esi | encoding preserved
    %%insn_004116bf:
    jna short 0x4116c3 ; 004116BF 7602
    %if ($ - %%insn_004116bf) > 2
        %error "LONG_004116BF"
    %endif
    times 2 - ($ - %%insn_004116bf) db 0
    db 0x8B, 0xF0 ; 004116C1 8BF0 | mov esi,eax | encoding preserved
    %%insn_004116c3:
    push dword 0x2e ; 004116C3 6A2E
    %if ($ - %%insn_004116c3) > 2
        %error "LONG_004116C3"
    %endif
    times 2 - ($ - %%insn_004116c3) db 0
    %%insn_004116c5:
    push esi ; 004116C5 56
    %if ($ - %%insn_004116c5) > 1
        %error "LONG_004116C5"
    %endif
    times 1 - ($ - %%insn_004116c5) db 0
    %%insn_004116c6:
    mov dword [esp+0x1c],0xffffffff ; 004116C6 C744241CFFFFFFFF
    %if ($ - %%insn_004116c6) > 8
        %error "LONG_004116C6"
    %endif
    times 8 - ($ - %%insn_004116c6) db 0
    %%insn_004116ce:
    call 0x414f60 ; 004116CE E88D380000
    %if ($ - %%insn_004116ce) > 5
        %error "LONG_004116CE"
    %endif
    times 5 - ($ - %%insn_004116ce) db 0
    %%insn_004116d3:
    add esp,0x8 ; 004116D3 83C408
    %if ($ - %%insn_004116d3) > 3
        %error "LONG_004116D3"
    %endif
    times 3 - ($ - %%insn_004116d3) db 0
    %%insn_004116d6:
    test eax,eax ; 004116D6 85C0
    %if ($ - %%insn_004116d6) > 2
        %error "LONG_004116D6"
    %endif
    times 2 - ($ - %%insn_004116d6) db 0
    %%insn_004116d8:
    jz short 0x41170f ; 004116D8 7435
    %if ($ - %%insn_004116d8) > 2
        %error "LONG_004116D8"
    %endif
    times 2 - ($ - %%insn_004116d8) db 0
    %%insn_004116da:
    push dword 0x0 ; 004116DA 6A00
    %if ($ - %%insn_004116da) > 2
        %error "LONG_004116DA"
    %endif
    times 2 - ($ - %%insn_004116da) db 0
    %%insn_004116dc:
    push ebx ; 004116DC 53
    %if ($ - %%insn_004116dc) > 1
        %error "LONG_004116DC"
    %endif
    times 1 - ($ - %%insn_004116dc) db 0
    %%insn_004116dd:
    call 0x414e40 ; 004116DD E85E370000
    %if ($ - %%insn_004116dd) > 5
        %error "LONG_004116DD"
    %endif
    times 5 - ($ - %%insn_004116dd) db 0
    %%insn_004116e2:
    add esp,0x8 ; 004116E2 83C408
    %if ($ - %%insn_004116e2) > 3
        %error "LONG_004116E2"
    %endif
    times 3 - ($ - %%insn_004116e2) db 0
    %%insn_004116e5:
    cmp eax,0xffffffffffffffff ; 004116E5 83F8FF
    %if ($ - %%insn_004116e5) > 3
        %error "LONG_004116E5"
    %endif
    times 3 - ($ - %%insn_004116e5) db 0
    %%insn_004116e8:
    jz 0x4117dc ; 004116E8 0F84EE000000
    %if ($ - %%insn_004116e8) > 6
        %error "LONG_004116E8"
    %endif
    times 6 - ($ - %%insn_004116e8) db 0
    %%insn_004116ee:
    mov edx,[esp+0x2c] ; 004116EE 8B54242C
    %if ($ - %%insn_004116ee) > 4
        %error "LONG_004116EE"
    %endif
    times 4 - ($ - %%insn_004116ee) db 0
    %%insn_004116f2:
    mov eax,[esp+0x28] ; 004116F2 8B442428
    %if ($ - %%insn_004116f2) > 4
        %error "LONG_004116F2"
    %endif
    times 4 - ($ - %%insn_004116f2) db 0
    %%insn_004116f6:
    mov ecx,[esp+0x20] ; 004116F6 8B4C2420
    %if ($ - %%insn_004116f6) > 4
        %error "LONG_004116F6"
    %endif
    times 4 - ($ - %%insn_004116f6) db 0
    %%insn_004116fa:
    push edx ; 004116FA 52
    %if ($ - %%insn_004116fa) > 1
        %error "LONG_004116FA"
    %endif
    times 1 - ($ - %%insn_004116fa) db 0
    %%insn_004116fb:
    push eax ; 004116FB 50
    %if ($ - %%insn_004116fb) > 1
        %error "LONG_004116FB"
    %endif
    times 1 - ($ - %%insn_004116fb) db 0
    %%insn_004116fc:
    push ebx ; 004116FC 53
    %if ($ - %%insn_004116fc) > 1
        %error "LONG_004116FC"
    %endif
    times 1 - ($ - %%insn_004116fc) db 0
    %%insn_004116fd:
    push ecx ; 004116FD 51
    %if ($ - %%insn_004116fd) > 1
        %error "LONG_004116FD"
    %endif
    times 1 - ($ - %%insn_004116fd) db 0
    %%insn_004116fe:
    call 0x411800 ; 004116FE E8FD000000
    %if ($ - %%insn_004116fe) > 5
        %error "LONG_004116FE"
    %endif
    times 5 - ($ - %%insn_004116fe) db 0
    %%insn_00411703:
    add esp,0x10 ; 00411703 83C410
    %if ($ - %%insn_00411703) > 3
        %error "LONG_00411703"
    %endif
    times 3 - ($ - %%insn_00411703) db 0
    %%insn_00411706:
    mov [esp+0x14],eax ; 00411706 89442414
    %if ($ - %%insn_00411706) > 4
        %error "LONG_00411706"
    %endif
    times 4 - ($ - %%insn_00411706) db 0
    %%insn_0041170a:
    jmp 0x4117dc ; 0041170A E9CD000000
    %if ($ - %%insn_0041170a) > 5
        %error "LONG_0041170A"
    %endif
    times 5 - ($ - %%insn_0041170a) db 0
    db 0x8B, 0xFB ; 0041170F 8BFB | mov edi,ebx | encoding preserved
    %%insn_00411711:
    or ecx,0xffffffffffffffff ; 00411711 83C9FF
    %if ($ - %%insn_00411711) > 3
        %error "LONG_00411711"
    %endif
    times 3 - ($ - %%insn_00411711) db 0
    db 0x33, 0xC0 ; 00411714 33C0 | xor eax,eax | encoding preserved
    %%insn_00411716:
    repne scasb ; 00411716 F2AE
    %if ($ - %%insn_00411716) > 2
        %error "LONG_00411716"
    %endif
    times 2 - ($ - %%insn_00411716) db 0
    %%insn_00411718:
    not ecx ; 00411718 F7D1
    %if ($ - %%insn_00411718) > 2
        %error "LONG_00411718"
    %endif
    times 2 - ($ - %%insn_00411718) db 0
    %%insn_0041171a:
    add ecx,0x4 ; 0041171A 83C104
    %if ($ - %%insn_0041171a) > 3
        %error "LONG_0041171A"
    %endif
    times 3 - ($ - %%insn_0041171a) db 0
    %%insn_0041171d:
    push ecx ; 0041171D 51
    %if ($ - %%insn_0041171d) > 1
        %error "LONG_0041171D"
    %endif
    times 1 - ($ - %%insn_0041171d) db 0
    %%insn_0041171e:
    call 0x40cdc0 ; 0041171E E89DB6FFFF
    %if ($ - %%insn_0041171e) > 5
        %error "LONG_0041171E"
    %endif
    times 5 - ($ - %%insn_0041171e) db 0
    db 0x8B, 0xE8 ; 00411723 8BE8 | mov ebp,eax | encoding preserved
    %%insn_00411725:
    add esp,0x4 ; 00411725 83C404
    %if ($ - %%insn_00411725) > 3
        %error "LONG_00411725"
    %endif
    times 3 - ($ - %%insn_00411725) db 0
    %%insn_00411728:
    test ebp,ebp ; 00411728 85ED
    %if ($ - %%insn_00411728) > 2
        %error "LONG_00411728"
    %endif
    times 2 - ($ - %%insn_00411728) db 0
    %%insn_0041172a:
    jnz short 0x411737 ; 0041172A 750B
    %if ($ - %%insn_0041172a) > 2
        %error "LONG_0041172A"
    %endif
    times 2 - ($ - %%insn_0041172a) db 0
    %%insn_0041172c:
    or eax,0xffffffffffffffff ; 0041172C 83C8FF
    %if ($ - %%insn_0041172c) > 3
        %error "LONG_0041172C"
    %endif
    times 3 - ($ - %%insn_0041172c) db 0
    %%insn_0041172f:
    pop edi ; 0041172F 5F
    %if ($ - %%insn_0041172f) > 1
        %error "LONG_0041172F"
    %endif
    times 1 - ($ - %%insn_0041172f) db 0
    %%insn_00411730:
    pop esi ; 00411730 5E
    %if ($ - %%insn_00411730) > 1
        %error "LONG_00411730"
    %endif
    times 1 - ($ - %%insn_00411730) db 0
    %%insn_00411731:
    pop ebp ; 00411731 5D
    %if ($ - %%insn_00411731) > 1
        %error "LONG_00411731"
    %endif
    times 1 - ($ - %%insn_00411731) db 0
    %%insn_00411732:
    pop ebx ; 00411732 5B
    %if ($ - %%insn_00411732) > 1
        %error "LONG_00411732"
    %endif
    times 1 - ($ - %%insn_00411732) db 0
    %%insn_00411733:
    add esp,0xc ; 00411733 83C40C
    %if ($ - %%insn_00411733) > 3
        %error "LONG_00411733"
    %endif
    times 3 - ($ - %%insn_00411733) db 0
    %%insn_00411736:
    ret ; 00411736 C3
    %if ($ - %%insn_00411736) > 1
        %error "LONG_00411736"
    %endif
    times 1 - ($ - %%insn_00411736) db 0
    db 0x8B, 0xFB ; 00411737 8BFB | mov edi,ebx | encoding preserved
    %%insn_00411739:
    or ecx,0xffffffffffffffff ; 00411739 83C9FF
    %if ($ - %%insn_00411739) > 3
        %error "LONG_00411739"
    %endif
    times 3 - ($ - %%insn_00411739) db 0
    db 0x33, 0xC0 ; 0041173C 33C0 | xor eax,eax | encoding preserved
    %%insn_0041173e:
    repne scasb ; 0041173E F2AE
    %if ($ - %%insn_0041173e) > 2
        %error "LONG_0041173E"
    %endif
    times 2 - ($ - %%insn_0041173e) db 0
    %%insn_00411740:
    not ecx ; 00411740 F7D1
    %if ($ - %%insn_00411740) > 2
        %error "LONG_00411740"
    %endif
    times 2 - ($ - %%insn_00411740) db 0
    db 0x2B, 0xF9 ; 00411742 2BF9 | sub edi,ecx | encoding preserved
    db 0x8B, 0xD1 ; 00411744 8BD1 | mov edx,ecx | encoding preserved
    db 0x8B, 0xF7 ; 00411746 8BF7 | mov esi,edi | encoding preserved
    db 0x8B, 0xFD ; 00411748 8BFD | mov edi,ebp | encoding preserved
    %%insn_0041174a:
    shr ecx,byte 0x2 ; 0041174A C1E902
    %if ($ - %%insn_0041174a) > 3
        %error "LONG_0041174A"
    %endif
    times 3 - ($ - %%insn_0041174a) db 0
    %%insn_0041174d:
    rep movsd ; 0041174D F3A5
    %if ($ - %%insn_0041174d) > 2
        %error "LONG_0041174D"
    %endif
    times 2 - ($ - %%insn_0041174d) db 0
    db 0x8B, 0xCA ; 0041174F 8BCA | mov ecx,edx | encoding preserved
    %%insn_00411751:
    and ecx,0x3 ; 00411751 83E103
    %if ($ - %%insn_00411751) > 3
        %error "LONG_00411751"
    %endif
    times 3 - ($ - %%insn_00411751) db 0
    %%insn_00411754:
    rep movsb ; 00411754 F3A4
    %if ($ - %%insn_00411754) > 2
        %error "LONG_00411754"
    %endif
    times 2 - ($ - %%insn_00411754) db 0
    db 0x8B, 0xFB ; 00411756 8BFB | mov edi,ebx | encoding preserved
    %%insn_00411758:
    or ecx,0xffffffffffffffff ; 00411758 83C9FF
    %if ($ - %%insn_00411758) > 3
        %error "LONG_00411758"
    %endif
    times 3 - ($ - %%insn_00411758) db 0
    %%insn_0041175b:
    repne scasb ; 0041175B F2AE
    %if ($ - %%insn_0041175b) > 2
        %error "LONG_0041175B"
    %endif
    times 2 - ($ - %%insn_0041175b) db 0
    %%insn_0041175d:
    not ecx ; 0041175D F7D1
    %if ($ - %%insn_0041175d) > 2
        %error "LONG_0041175D"
    %endif
    times 2 - ($ - %%insn_0041175d) db 0
    %%insn_0041175f:
    dec ecx ; 0041175F 49
    %if ($ - %%insn_0041175f) > 1
        %error "LONG_0041175F"
    %endif
    times 1 - ($ - %%insn_0041175f) db 0
    %%insn_00411760:
    mov ebx,0x41e18c ; 00411760 BB8CE14100
    %if ($ - %%insn_00411760) > 5
        %error "LONG_00411760"
    %endif
    times 5 - ($ - %%insn_00411760) db 0
    db 0x8B, 0xD1 ; 00411765 8BD1 | mov edx,ecx | encoding preserved
    db 0x03, 0xD5 ; 00411767 03D5 | add edx,ebp | encoding preserved
    %%insn_00411769:
    mov [esp+0x18],edx ; 00411769 89542418
    %if ($ - %%insn_00411769) > 4
        %error "LONG_00411769"
    %endif
    times 4 - ($ - %%insn_00411769) db 0
    %%insn_0041176d:
    jmp short 0x411773 ; 0041176D EB04
    %if ($ - %%insn_0041176d) > 2
        %error "LONG_0041176D"
    %endif
    times 2 - ($ - %%insn_0041176d) db 0
    %%insn_0041176f:
    mov edx,[esp+0x18] ; 0041176F 8B542418
    %if ($ - %%insn_0041176f) > 4
        %error "LONG_0041176F"
    %endif
    times 4 - ($ - %%insn_0041176f) db 0
    %%insn_00411773:
    mov edi,[ebx] ; 00411773 8B3B
    %if ($ - %%insn_00411773) > 2
        %error "LONG_00411773"
    %endif
    times 2 - ($ - %%insn_00411773) db 0
    %%insn_00411775:
    or ecx,0xffffffffffffffff ; 00411775 83C9FF
    %if ($ - %%insn_00411775) > 3
        %error "LONG_00411775"
    %endif
    times 3 - ($ - %%insn_00411775) db 0
    db 0x33, 0xC0 ; 00411778 33C0 | xor eax,eax | encoding preserved
    %%insn_0041177a:
    push dword 0x0 ; 0041177A 6A00
    %if ($ - %%insn_0041177a) > 2
        %error "LONG_0041177A"
    %endif
    times 2 - ($ - %%insn_0041177a) db 0
    %%insn_0041177c:
    repne scasb ; 0041177C F2AE
    %if ($ - %%insn_0041177c) > 2
        %error "LONG_0041177C"
    %endif
    times 2 - ($ - %%insn_0041177c) db 0
    %%insn_0041177e:
    not ecx ; 0041177E F7D1
    %if ($ - %%insn_0041177e) > 2
        %error "LONG_0041177E"
    %endif
    times 2 - ($ - %%insn_0041177e) db 0
    db 0x2B, 0xF9 ; 00411780 2BF9 | sub edi,ecx | encoding preserved
    %%insn_00411782:
    push ebp ; 00411782 55
    %if ($ - %%insn_00411782) > 1
        %error "LONG_00411782"
    %endif
    times 1 - ($ - %%insn_00411782) db 0
    db 0x8B, 0xC1 ; 00411783 8BC1 | mov eax,ecx | encoding preserved
    db 0x8B, 0xF7 ; 00411785 8BF7 | mov esi,edi | encoding preserved
    db 0x8B, 0xFA ; 00411787 8BFA | mov edi,edx | encoding preserved
    %%insn_00411789:
    shr ecx,byte 0x2 ; 00411789 C1E902
    %if ($ - %%insn_00411789) > 3
        %error "LONG_00411789"
    %endif
    times 3 - ($ - %%insn_00411789) db 0
    %%insn_0041178c:
    rep movsd ; 0041178C F3A5
    %if ($ - %%insn_0041178c) > 2
        %error "LONG_0041178C"
    %endif
    times 2 - ($ - %%insn_0041178c) db 0
    db 0x8B, 0xC8 ; 0041178E 8BC8 | mov ecx,eax | encoding preserved
    %%insn_00411790:
    and ecx,0x3 ; 00411790 83E103
    %if ($ - %%insn_00411790) > 3
        %error "LONG_00411790"
    %endif
    times 3 - ($ - %%insn_00411790) db 0
    %%insn_00411793:
    rep movsb ; 00411793 F3A4
    %if ($ - %%insn_00411793) > 2
        %error "LONG_00411793"
    %endif
    times 2 - ($ - %%insn_00411793) db 0
    %%insn_00411795:
    call 0x414e40 ; 00411795 E8A6360000
    %if ($ - %%insn_00411795) > 5
        %error "LONG_00411795"
    %endif
    times 5 - ($ - %%insn_00411795) db 0
    %%insn_0041179a:
    add esp,0x8 ; 0041179A 83C408
    %if ($ - %%insn_0041179a) > 3
        %error "LONG_0041179A"
    %endif
    times 3 - ($ - %%insn_0041179a) db 0
    %%insn_0041179d:
    cmp eax,0xffffffffffffffff ; 0041179D 83F8FF
    %if ($ - %%insn_0041179d) > 3
        %error "LONG_0041179D"
    %endif
    times 3 - ($ - %%insn_0041179d) db 0
    %%insn_004117a0:
    jnz short 0x4117af ; 004117A0 750D
    %if ($ - %%insn_004117a0) > 2
        %error "LONG_004117A0"
    %endif
    times 2 - ($ - %%insn_004117a0) db 0
    %%insn_004117a2:
    sub ebx,0x4 ; 004117A2 83EB04
    %if ($ - %%insn_004117a2) > 3
        %error "LONG_004117A2"
    %endif
    times 3 - ($ - %%insn_004117a2) db 0
    %%insn_004117a5:
    cmp ebx,0x41e180 ; 004117A5 81FB80E14100
    %if ($ - %%insn_004117a5) > 6
        %error "LONG_004117A5"
    %endif
    times 6 - ($ - %%insn_004117a5) db 0
    %%insn_004117ab:
    jnl short 0x41176f ; 004117AB 7DC2
    %if ($ - %%insn_004117ab) > 2
        %error "LONG_004117AB"
    %endif
    times 2 - ($ - %%insn_004117ab) db 0
    %%insn_004117ad:
    jmp short 0x4117cb ; 004117AD EB1C
    %if ($ - %%insn_004117ad) > 2
        %error "LONG_004117AD"
    %endif
    times 2 - ($ - %%insn_004117ad) db 0
    %%insn_004117af:
    mov ecx,[esp+0x2c] ; 004117AF 8B4C242C
    %if ($ - %%insn_004117af) > 4
        %error "LONG_004117AF"
    %endif
    times 4 - ($ - %%insn_004117af) db 0
    %%insn_004117b3:
    mov edx,[esp+0x28] ; 004117B3 8B542428
    %if ($ - %%insn_004117b3) > 4
        %error "LONG_004117B3"
    %endif
    times 4 - ($ - %%insn_004117b3) db 0
    %%insn_004117b7:
    mov eax,[esp+0x20] ; 004117B7 8B442420
    %if ($ - %%insn_004117b7) > 4
        %error "LONG_004117B7"
    %endif
    times 4 - ($ - %%insn_004117b7) db 0
    %%insn_004117bb:
    push ecx ; 004117BB 51
    %if ($ - %%insn_004117bb) > 1
        %error "LONG_004117BB"
    %endif
    times 1 - ($ - %%insn_004117bb) db 0
    %%insn_004117bc:
    push edx ; 004117BC 52
    %if ($ - %%insn_004117bc) > 1
        %error "LONG_004117BC"
    %endif
    times 1 - ($ - %%insn_004117bc) db 0
    %%insn_004117bd:
    push ebp ; 004117BD 55
    %if ($ - %%insn_004117bd) > 1
        %error "LONG_004117BD"
    %endif
    times 1 - ($ - %%insn_004117bd) db 0
    %%insn_004117be:
    push eax ; 004117BE 50
    %if ($ - %%insn_004117be) > 1
        %error "LONG_004117BE"
    %endif
    times 1 - ($ - %%insn_004117be) db 0
    %%insn_004117bf:
    call 0x411800 ; 004117BF E83C000000
    %if ($ - %%insn_004117bf) > 5
        %error "LONG_004117BF"
    %endif
    times 5 - ($ - %%insn_004117bf) db 0
    %%insn_004117c4:
    add esp,0x10 ; 004117C4 83C410
    %if ($ - %%insn_004117c4) > 3
        %error "LONG_004117C4"
    %endif
    times 3 - ($ - %%insn_004117c4) db 0
    %%insn_004117c7:
    mov [esp+0x14],eax ; 004117C7 89442414
    %if ($ - %%insn_004117c7) > 4
        %error "LONG_004117C7"
    %endif
    times 4 - ($ - %%insn_004117c7) db 0
    %%insn_004117cb:
    push ebp ; 004117CB 55
    %if ($ - %%insn_004117cb) > 1
        %error "LONG_004117CB"
    %endif
    times 1 - ($ - %%insn_004117cb) db 0
    %%insn_004117cc:
    call 0x40c9a0 ; 004117CC E8CFB1FFFF
    %if ($ - %%insn_004117cc) > 5
        %error "LONG_004117CC"
    %endif
    times 5 - ($ - %%insn_004117cc) db 0
    %%insn_004117d1:
    mov ebx,[esp+0x14] ; 004117D1 8B5C2414
    %if ($ - %%insn_004117d1) > 4
        %error "LONG_004117D1"
    %endif
    times 4 - ($ - %%insn_004117d1) db 0
    %%insn_004117d5:
    mov ebp,[esp+0x28] ; 004117D5 8B6C2428
    %if ($ - %%insn_004117d5) > 4
        %error "LONG_004117D5"
    %endif
    times 4 - ($ - %%insn_004117d5) db 0
    %%insn_004117d9:
    add esp,0x4 ; 004117D9 83C404
    %if ($ - %%insn_004117d9) > 3
        %error "LONG_004117D9"
    %endif
    times 3 - ($ - %%insn_004117d9) db 0
    db 0x3B, 0xDD ; 004117DC 3BDD | cmp ebx,ebp | encoding preserved
    %%insn_004117de:
    jz short 0x4117e9 ; 004117DE 7409
    %if ($ - %%insn_004117de) > 2
        %error "LONG_004117DE"
    %endif
    times 2 - ($ - %%insn_004117de) db 0
    %%insn_004117e0:
    push ebx ; 004117E0 53
    %if ($ - %%insn_004117e0) > 1
        %error "LONG_004117E0"
    %endif
    times 1 - ($ - %%insn_004117e0) db 0
    %%insn_004117e1:
    call 0x40c9a0 ; 004117E1 E8BAB1FFFF
    %if ($ - %%insn_004117e1) > 5
        %error "LONG_004117E1"
    %endif
    times 5 - ($ - %%insn_004117e1) db 0
    %%insn_004117e6:
    add esp,0x4 ; 004117E6 83C404
    %if ($ - %%insn_004117e6) > 3
        %error "LONG_004117E6"
    %endif
    times 3 - ($ - %%insn_004117e6) db 0
    %%insn_004117e9:
    mov eax,[esp+0x14] ; 004117E9 8B442414
    %if ($ - %%insn_004117e9) > 4
        %error "LONG_004117E9"
    %endif
    times 4 - ($ - %%insn_004117e9) db 0
    %%insn_004117ed:
    pop edi ; 004117ED 5F
    %if ($ - %%insn_004117ed) > 1
        %error "LONG_004117ED"
    %endif
    times 1 - ($ - %%insn_004117ed) db 0
    %%insn_004117ee:
    pop esi ; 004117EE 5E
    %if ($ - %%insn_004117ee) > 1
        %error "LONG_004117EE"
    %endif
    times 1 - ($ - %%insn_004117ee) db 0
    %%insn_004117ef:
    pop ebp ; 004117EF 5D
    %if ($ - %%insn_004117ef) > 1
        %error "LONG_004117EF"
    %endif
    times 1 - ($ - %%insn_004117ef) db 0
    %%insn_004117f0:
    pop ebx ; 004117F0 5B
    %if ($ - %%insn_004117f0) > 1
        %error "LONG_004117F0"
    %endif
    times 1 - ($ - %%insn_004117f0) db 0
    %%insn_004117f1:
    add esp,0xc ; 004117F1 83C40C
    %if ($ - %%insn_004117f1) > 3
        %error "LONG_004117F1"
    %endif
    times 3 - ($ - %%insn_004117f1) db 0
    %%insn_004117f4:
    ret ; 004117F4 C3
    %if ($ - %%insn_004117f4) > 1
        %error "LONG_004117F4"
    %endif
    times 1 - ($ - %%insn_004117f4) db 0
    %if ($ - %%fragment_start) != 501
        %error "function fragment size drift: 00411600"
    %endif
%endmacro
