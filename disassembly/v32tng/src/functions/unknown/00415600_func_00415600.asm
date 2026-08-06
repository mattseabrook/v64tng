; PE virtual entry 00415600
; Ghidra working symbol: FUN_00415600
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00415600_part_00 0
    %%fragment_start:
func_00415600:
    %%insn_00415600:
    mov eax,[0x4211c4] ; 00415600 A1C4114200
    %if ($ - %%insn_00415600) > 5
        %error "LONG_00415600"
    %endif
    times 5 - ($ - %%insn_00415600) db 0
    %%insn_00415605:
    push ebx ; 00415605 53
    %if ($ - %%insn_00415605) > 1
        %error "LONG_00415605"
    %endif
    times 1 - ($ - %%insn_00415605) db 0
    db 0x33, 0xDB ; 00415606 33DB | xor ebx,ebx | encoding preserved
    %%insn_00415608:
    push esi ; 00415608 56
    %if ($ - %%insn_00415608) > 1
        %error "LONG_00415608"
    %endif
    times 1 - ($ - %%insn_00415608) db 0
    %%insn_00415609:
    test eax,eax ; 00415609 85C0
    %if ($ - %%insn_00415609) > 2
        %error "LONG_00415609"
    %endif
    times 2 - ($ - %%insn_00415609) db 0
    %%insn_0041560b:
    push edi ; 0041560B 57
    %if ($ - %%insn_0041560b) > 1
        %error "LONG_0041560B"
    %endif
    times 1 - ($ - %%insn_0041560b) db 0
    %%insn_0041560c:
    jnz short 0x415650 ; 0041560C 7542
    %if ($ - %%insn_0041560c) > 2
        %error "LONG_0041560C"
    %endif
    times 2 - ($ - %%insn_0041560c) db 0
    %%insn_0041560e:
    push dword 0x41ab0c ; 0041560E 680CAB4100
    %if ($ - %%insn_0041560e) > 5
        %error "LONG_0041560E"
    %endif
    times 5 - ($ - %%insn_0041560e) db 0
    %%insn_00415613:
    call dword near [0x42447c] ; 00415613 FF157C444200
    %if ($ - %%insn_00415613) > 6
        %error "LONG_00415613"
    %endif
    times 6 - ($ - %%insn_00415613) db 0
    db 0x8B, 0xF0 ; 00415619 8BF0 | mov esi,eax | encoding preserved
    %%insn_0041561b:
    test esi,esi ; 0041561B 85F6
    %if ($ - %%insn_0041561b) > 2
        %error "LONG_0041561B"
    %endif
    times 2 - ($ - %%insn_0041561b) db 0
    %%insn_0041561d:
    jz short 0x415689 ; 0041561D 746A
    %if ($ - %%insn_0041561d) > 2
        %error "LONG_0041561D"
    %endif
    times 2 - ($ - %%insn_0041561d) db 0
    %%insn_0041561f:
    mov edi,[0x424480] ; 0041561F 8B3D80444200
    %if ($ - %%insn_0041561f) > 6
        %error "LONG_0041561F"
    %endif
    times 6 - ($ - %%insn_0041561f) db 0
    %%insn_00415625:
    push dword 0x41ab00 ; 00415625 6800AB4100
    %if ($ - %%insn_00415625) > 5
        %error "LONG_00415625"
    %endif
    times 5 - ($ - %%insn_00415625) db 0
    %%insn_0041562a:
    push esi ; 0041562A 56
    %if ($ - %%insn_0041562a) > 1
        %error "LONG_0041562A"
    %endif
    times 1 - ($ - %%insn_0041562a) db 0
    %%insn_0041562b:
    call edi ; 0041562B FFD7
    %if ($ - %%insn_0041562b) > 2
        %error "LONG_0041562B"
    %endif
    times 2 - ($ - %%insn_0041562b) db 0
    %%insn_0041562d:
    test eax,eax ; 0041562D 85C0
    %if ($ - %%insn_0041562d) > 2
        %error "LONG_0041562D"
    %endif
    times 2 - ($ - %%insn_0041562d) db 0
    %%insn_0041562f:
    mov [0x4211c4],eax ; 0041562F A3C4114200
    %if ($ - %%insn_0041562f) > 5
        %error "LONG_0041562F"
    %endif
    times 5 - ($ - %%insn_0041562f) db 0
    %%insn_00415634:
    jz short 0x415689 ; 00415634 7453
    %if ($ - %%insn_00415634) > 2
        %error "LONG_00415634"
    %endif
    times 2 - ($ - %%insn_00415634) db 0
    %%insn_00415636:
    push dword 0x41aaf0 ; 00415636 68F0AA4100
    %if ($ - %%insn_00415636) > 5
        %error "LONG_00415636"
    %endif
    times 5 - ($ - %%insn_00415636) db 0
    %%insn_0041563b:
    push esi ; 0041563B 56
    %if ($ - %%insn_0041563b) > 1
        %error "LONG_0041563B"
    %endif
    times 1 - ($ - %%insn_0041563b) db 0
    %%insn_0041563c:
    call edi ; 0041563C FFD7
    %if ($ - %%insn_0041563c) > 2
        %error "LONG_0041563C"
    %endif
    times 2 - ($ - %%insn_0041563c) db 0
    %%insn_0041563e:
    push dword 0x41aadc ; 0041563E 68DCAA4100
    %if ($ - %%insn_0041563e) > 5
        %error "LONG_0041563E"
    %endif
    times 5 - ($ - %%insn_0041563e) db 0
    %%insn_00415643:
    push esi ; 00415643 56
    %if ($ - %%insn_00415643) > 1
        %error "LONG_00415643"
    %endif
    times 1 - ($ - %%insn_00415643) db 0
    %%insn_00415644:
    mov [0x4211c8],eax ; 00415644 A3C8114200
    %if ($ - %%insn_00415644) > 5
        %error "LONG_00415644"
    %endif
    times 5 - ($ - %%insn_00415644) db 0
    %%insn_00415649:
    call edi ; 00415649 FFD7
    %if ($ - %%insn_00415649) > 2
        %error "LONG_00415649"
    %endif
    times 2 - ($ - %%insn_00415649) db 0
    %%insn_0041564b:
    mov [0x4211cc],eax ; 0041564B A3CC114200
    %if ($ - %%insn_0041564b) > 5
        %error "LONG_0041564B"
    %endif
    times 5 - ($ - %%insn_0041564b) db 0
    %%insn_00415650:
    mov eax,[0x4211c8] ; 00415650 A1C8114200
    %if ($ - %%insn_00415650) > 5
        %error "LONG_00415650"
    %endif
    times 5 - ($ - %%insn_00415650) db 0
    %%insn_00415655:
    test eax,eax ; 00415655 85C0
    %if ($ - %%insn_00415655) > 2
        %error "LONG_00415655"
    %endif
    times 2 - ($ - %%insn_00415655) db 0
    %%insn_00415657:
    jz short 0x41565d ; 00415657 7404
    %if ($ - %%insn_00415657) > 2
        %error "LONG_00415657"
    %endif
    times 2 - ($ - %%insn_00415657) db 0
    %%insn_00415659:
    call eax ; 00415659 FFD0
    %if ($ - %%insn_00415659) > 2
        %error "LONG_00415659"
    %endif
    times 2 - ($ - %%insn_00415659) db 0
    db 0x8B, 0xD8 ; 0041565B 8BD8 | mov ebx,eax | encoding preserved
    %%insn_0041565d:
    test ebx,ebx ; 0041565D 85DB
    %if ($ - %%insn_0041565d) > 2
        %error "LONG_0041565D"
    %endif
    times 2 - ($ - %%insn_0041565d) db 0
    %%insn_0041565f:
    jz short 0x41566f ; 0041565F 740E
    %if ($ - %%insn_0041565f) > 2
        %error "LONG_0041565F"
    %endif
    times 2 - ($ - %%insn_0041565f) db 0
    %%insn_00415661:
    mov eax,[0x4211cc] ; 00415661 A1CC114200
    %if ($ - %%insn_00415661) > 5
        %error "LONG_00415661"
    %endif
    times 5 - ($ - %%insn_00415661) db 0
    %%insn_00415666:
    test eax,eax ; 00415666 85C0
    %if ($ - %%insn_00415666) > 2
        %error "LONG_00415666"
    %endif
    times 2 - ($ - %%insn_00415666) db 0
    %%insn_00415668:
    jz short 0x41566f ; 00415668 7405
    %if ($ - %%insn_00415668) > 2
        %error "LONG_00415668"
    %endif
    times 2 - ($ - %%insn_00415668) db 0
    %%insn_0041566a:
    push ebx ; 0041566A 53
    %if ($ - %%insn_0041566a) > 1
        %error "LONG_0041566A"
    %endif
    times 1 - ($ - %%insn_0041566a) db 0
    %%insn_0041566b:
    call eax ; 0041566B FFD0
    %if ($ - %%insn_0041566b) > 2
        %error "LONG_0041566B"
    %endif
    times 2 - ($ - %%insn_0041566b) db 0
    db 0x8B, 0xD8 ; 0041566D 8BD8 | mov ebx,eax | encoding preserved
    %%insn_0041566f:
    mov eax,[esp+0x18] ; 0041566F 8B442418
    %if ($ - %%insn_0041566f) > 4
        %error "LONG_0041566F"
    %endif
    times 4 - ($ - %%insn_0041566f) db 0
    %%insn_00415673:
    mov ecx,[esp+0x14] ; 00415673 8B4C2414
    %if ($ - %%insn_00415673) > 4
        %error "LONG_00415673"
    %endif
    times 4 - ($ - %%insn_00415673) db 0
    %%insn_00415677:
    mov edx,[esp+0x10] ; 00415677 8B542410
    %if ($ - %%insn_00415677) > 4
        %error "LONG_00415677"
    %endif
    times 4 - ($ - %%insn_00415677) db 0
    %%insn_0041567b:
    push eax ; 0041567B 50
    %if ($ - %%insn_0041567b) > 1
        %error "LONG_0041567B"
    %endif
    times 1 - ($ - %%insn_0041567b) db 0
    %%insn_0041567c:
    push ecx ; 0041567C 51
    %if ($ - %%insn_0041567c) > 1
        %error "LONG_0041567C"
    %endif
    times 1 - ($ - %%insn_0041567c) db 0
    %%insn_0041567d:
    push edx ; 0041567D 52
    %if ($ - %%insn_0041567d) > 1
        %error "LONG_0041567D"
    %endif
    times 1 - ($ - %%insn_0041567d) db 0
    %%insn_0041567e:
    push ebx ; 0041567E 53
    %if ($ - %%insn_0041567e) > 1
        %error "LONG_0041567E"
    %endif
    times 1 - ($ - %%insn_0041567e) db 0
    %%insn_0041567f:
    call dword near [0x4211c4] ; 0041567F FF15C4114200
    %if ($ - %%insn_0041567f) > 6
        %error "LONG_0041567F"
    %endif
    times 6 - ($ - %%insn_0041567f) db 0
    %%insn_00415685:
    pop edi ; 00415685 5F
    %if ($ - %%insn_00415685) > 1
        %error "LONG_00415685"
    %endif
    times 1 - ($ - %%insn_00415685) db 0
    %%insn_00415686:
    pop esi ; 00415686 5E
    %if ($ - %%insn_00415686) > 1
        %error "LONG_00415686"
    %endif
    times 1 - ($ - %%insn_00415686) db 0
    %%insn_00415687:
    pop ebx ; 00415687 5B
    %if ($ - %%insn_00415687) > 1
        %error "LONG_00415687"
    %endif
    times 1 - ($ - %%insn_00415687) db 0
    %%insn_00415688:
    ret ; 00415688 C3
    %if ($ - %%insn_00415688) > 1
        %error "LONG_00415688"
    %endif
    times 1 - ($ - %%insn_00415688) db 0
    %%insn_00415689:
    pop edi ; 00415689 5F
    %if ($ - %%insn_00415689) > 1
        %error "LONG_00415689"
    %endif
    times 1 - ($ - %%insn_00415689) db 0
    %%insn_0041568a:
    pop esi ; 0041568A 5E
    %if ($ - %%insn_0041568a) > 1
        %error "LONG_0041568A"
    %endif
    times 1 - ($ - %%insn_0041568a) db 0
    db 0x33, 0xC0 ; 0041568B 33C0 | xor eax,eax | encoding preserved
    %%insn_0041568d:
    pop ebx ; 0041568D 5B
    %if ($ - %%insn_0041568d) > 1
        %error "LONG_0041568D"
    %endif
    times 1 - ($ - %%insn_0041568d) db 0
    %%insn_0041568e:
    ret ; 0041568E C3
    %if ($ - %%insn_0041568e) > 1
        %error "LONG_0041568E"
    %endif
    times 1 - ($ - %%insn_0041568e) db 0
    %if ($ - %%fragment_start) != 143
        %error "function fragment size drift: 00415600"
    %endif
%endmacro
