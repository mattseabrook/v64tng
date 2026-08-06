; PE virtual entry 004190B0
; Ghidra working symbol: FUN_004190b0
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_004190b0_part_00 0
    %%fragment_start:
func_004190b0:
    %%insn_004190b0:
    push ebx ; 004190B0 53
    %if ($ - %%insn_004190b0) > 1
        %error "LONG_004190B0"
    %endif
    times 1 - ($ - %%insn_004190b0) db 0
    %%insn_004190b1:
    push esi ; 004190B1 56
    %if ($ - %%insn_004190b1) > 1
        %error "LONG_004190B1"
    %endif
    times 1 - ($ - %%insn_004190b1) db 0
    %%insn_004190b2:
    mov esi,[0x420e74] ; 004190B2 8B35740E4200
    %if ($ - %%insn_004190b2) > 6
        %error "LONG_004190B2"
    %endif
    times 6 - ($ - %%insn_004190b2) db 0
    %%insn_004190b8:
    push edi ; 004190B8 57
    %if ($ - %%insn_004190b8) > 1
        %error "LONG_004190B8"
    %endif
    times 1 - ($ - %%insn_004190b8) db 0
    %%insn_004190b9:
    mov eax,[esi] ; 004190B9 8B06
    %if ($ - %%insn_004190b9) > 2
        %error "LONG_004190B9"
    %endif
    times 2 - ($ - %%insn_004190b9) db 0
    %%insn_004190bb:
    test eax,eax ; 004190BB 85C0
    %if ($ - %%insn_004190bb) > 2
        %error "LONG_004190BB"
    %endif
    times 2 - ($ - %%insn_004190bb) db 0
    %%insn_004190bd:
    jz short 0x419111 ; 004190BD 7452
    %if ($ - %%insn_004190bd) > 2
        %error "LONG_004190BD"
    %endif
    times 2 - ($ - %%insn_004190bd) db 0
    %%insn_004190bf:
    mov edi,[esp+0x14] ; 004190BF 8B7C2414
    %if ($ - %%insn_004190bf) > 4
        %error "LONG_004190BF"
    %endif
    times 4 - ($ - %%insn_004190bf) db 0
    %%insn_004190c3:
    mov ebx,[esp+0x10] ; 004190C3 8B5C2410
    %if ($ - %%insn_004190c3) > 4
        %error "LONG_004190C3"
    %endif
    times 4 - ($ - %%insn_004190c3) db 0
    %%insn_004190c7:
    push edi ; 004190C7 57
    %if ($ - %%insn_004190c7) > 1
        %error "LONG_004190C7"
    %endif
    times 1 - ($ - %%insn_004190c7) db 0
    %%insn_004190c8:
    push eax ; 004190C8 50
    %if ($ - %%insn_004190c8) > 1
        %error "LONG_004190C8"
    %endif
    times 1 - ($ - %%insn_004190c8) db 0
    %%insn_004190c9:
    push ebx ; 004190C9 53
    %if ($ - %%insn_004190c9) > 1
        %error "LONG_004190C9"
    %endif
    times 1 - ($ - %%insn_004190c9) db 0
    %%insn_004190ca:
    call 0x418890 ; 004190CA E8C1F7FFFF
    %if ($ - %%insn_004190ca) > 5
        %error "LONG_004190CA"
    %endif
    times 5 - ($ - %%insn_004190ca) db 0
    %%insn_004190cf:
    add esp,0xc ; 004190CF 83C40C
    %if ($ - %%insn_004190cf) > 3
        %error "LONG_004190CF"
    %endif
    times 3 - ($ - %%insn_004190cf) db 0
    %%insn_004190d2:
    test eax,eax ; 004190D2 85C0
    %if ($ - %%insn_004190d2) > 2
        %error "LONG_004190D2"
    %endif
    times 2 - ($ - %%insn_004190d2) db 0
    %%insn_004190d4:
    jnz short 0x4190e3 ; 004190D4 750D
    %if ($ - %%insn_004190d4) > 2
        %error "LONG_004190D4"
    %endif
    times 2 - ($ - %%insn_004190d4) db 0
    %%insn_004190d6:
    mov eax,[esi] ; 004190D6 8B06
    %if ($ - %%insn_004190d6) > 2
        %error "LONG_004190D6"
    %endif
    times 2 - ($ - %%insn_004190d6) db 0
    %%insn_004190d8:
    mov al,[eax+edi] ; 004190D8 8A0438
    %if ($ - %%insn_004190d8) > 3
        %error "LONG_004190D8"
    %endif
    times 3 - ($ - %%insn_004190d8) db 0
    %%insn_004190db:
    cmp al,0x3d ; 004190DB 3C3D
    %if ($ - %%insn_004190db) > 2
        %error "LONG_004190DB"
    %endif
    times 2 - ($ - %%insn_004190db) db 0
    %%insn_004190dd:
    jz short 0x419100 ; 004190DD 7421
    %if ($ - %%insn_004190dd) > 2
        %error "LONG_004190DD"
    %endif
    times 2 - ($ - %%insn_004190dd) db 0
    %%insn_004190df:
    test al,al ; 004190DF 84C0
    %if ($ - %%insn_004190df) > 2
        %error "LONG_004190DF"
    %endif
    times 2 - ($ - %%insn_004190df) db 0
    %%insn_004190e1:
    jz short 0x419100 ; 004190E1 741D
    %if ($ - %%insn_004190e1) > 2
        %error "LONG_004190E1"
    %endif
    times 2 - ($ - %%insn_004190e1) db 0
    %%insn_004190e3:
    mov eax,[esi+0x4] ; 004190E3 8B4604
    %if ($ - %%insn_004190e3) > 3
        %error "LONG_004190E3"
    %endif
    times 3 - ($ - %%insn_004190e3) db 0
    %%insn_004190e6:
    add esi,0x4 ; 004190E6 83C604
    %if ($ - %%insn_004190e6) > 3
        %error "LONG_004190E6"
    %endif
    times 3 - ($ - %%insn_004190e6) db 0
    %%insn_004190e9:
    test eax,eax ; 004190E9 85C0
    %if ($ - %%insn_004190e9) > 2
        %error "LONG_004190E9"
    %endif
    times 2 - ($ - %%insn_004190e9) db 0
    %%insn_004190eb:
    jnz short 0x4190c7 ; 004190EB 75DA
    %if ($ - %%insn_004190eb) > 2
        %error "LONG_004190EB"
    %endif
    times 2 - ($ - %%insn_004190eb) db 0
    db 0x8B, 0xC6 ; 004190ED 8BC6 | mov eax,esi | encoding preserved
    %%insn_004190ef:
    mov esi,[0x420e74] ; 004190EF 8B35740E4200
    %if ($ - %%insn_004190ef) > 6
        %error "LONG_004190EF"
    %endif
    times 6 - ($ - %%insn_004190ef) db 0
    db 0x2B, 0xC6 ; 004190F5 2BC6 | sub eax,esi | encoding preserved
    %%insn_004190f7:
    sar eax,byte 0x2 ; 004190F7 C1F802
    %if ($ - %%insn_004190f7) > 3
        %error "LONG_004190F7"
    %endif
    times 3 - ($ - %%insn_004190f7) db 0
    %%insn_004190fa:
    neg eax ; 004190FA F7D8
    %if ($ - %%insn_004190fa) > 2
        %error "LONG_004190FA"
    %endif
    times 2 - ($ - %%insn_004190fa) db 0
    %%insn_004190fc:
    pop edi ; 004190FC 5F
    %if ($ - %%insn_004190fc) > 1
        %error "LONG_004190FC"
    %endif
    times 1 - ($ - %%insn_004190fc) db 0
    %%insn_004190fd:
    pop esi ; 004190FD 5E
    %if ($ - %%insn_004190fd) > 1
        %error "LONG_004190FD"
    %endif
    times 1 - ($ - %%insn_004190fd) db 0
    %%insn_004190fe:
    pop ebx ; 004190FE 5B
    %if ($ - %%insn_004190fe) > 1
        %error "LONG_004190FE"
    %endif
    times 1 - ($ - %%insn_004190fe) db 0
    %%insn_004190ff:
    ret ; 004190FF C3
    %if ($ - %%insn_004190ff) > 1
        %error "LONG_004190FF"
    %endif
    times 1 - ($ - %%insn_004190ff) db 0
    %%insn_00419100:
    mov edx,[0x420e74] ; 00419100 8B15740E4200
    %if ($ - %%insn_00419100) > 6
        %error "LONG_00419100"
    %endif
    times 6 - ($ - %%insn_00419100) db 0
    db 0x8B, 0xC6 ; 00419106 8BC6 | mov eax,esi | encoding preserved
    db 0x2B, 0xC2 ; 00419108 2BC2 | sub eax,edx | encoding preserved
    %%insn_0041910a:
    sar eax,byte 0x2 ; 0041910A C1F802
    %if ($ - %%insn_0041910a) > 3
        %error "LONG_0041910A"
    %endif
    times 3 - ($ - %%insn_0041910a) db 0
    %%insn_0041910d:
    pop edi ; 0041910D 5F
    %if ($ - %%insn_0041910d) > 1
        %error "LONG_0041910D"
    %endif
    times 1 - ($ - %%insn_0041910d) db 0
    %%insn_0041910e:
    pop esi ; 0041910E 5E
    %if ($ - %%insn_0041910e) > 1
        %error "LONG_0041910E"
    %endif
    times 1 - ($ - %%insn_0041910e) db 0
    %%insn_0041910f:
    pop ebx ; 0041910F 5B
    %if ($ - %%insn_0041910f) > 1
        %error "LONG_0041910F"
    %endif
    times 1 - ($ - %%insn_0041910f) db 0
    %%insn_00419110:
    ret ; 00419110 C3
    %if ($ - %%insn_00419110) > 1
        %error "LONG_00419110"
    %endif
    times 1 - ($ - %%insn_00419110) db 0
    db 0x8B, 0xC6 ; 00419111 8BC6 | mov eax,esi | encoding preserved
    %%insn_00419113:
    mov esi,[0x420e74] ; 00419113 8B35740E4200
    %if ($ - %%insn_00419113) > 6
        %error "LONG_00419113"
    %endif
    times 6 - ($ - %%insn_00419113) db 0
    db 0x2B, 0xC6 ; 00419119 2BC6 | sub eax,esi | encoding preserved
    %%insn_0041911b:
    pop edi ; 0041911B 5F
    %if ($ - %%insn_0041911b) > 1
        %error "LONG_0041911B"
    %endif
    times 1 - ($ - %%insn_0041911b) db 0
    %%insn_0041911c:
    sar eax,byte 0x2 ; 0041911C C1F802
    %if ($ - %%insn_0041911c) > 3
        %error "LONG_0041911C"
    %endif
    times 3 - ($ - %%insn_0041911c) db 0
    %%insn_0041911f:
    pop esi ; 0041911F 5E
    %if ($ - %%insn_0041911f) > 1
        %error "LONG_0041911F"
    %endif
    times 1 - ($ - %%insn_0041911f) db 0
    %%insn_00419120:
    pop ebx ; 00419120 5B
    %if ($ - %%insn_00419120) > 1
        %error "LONG_00419120"
    %endif
    times 1 - ($ - %%insn_00419120) db 0
    %%insn_00419121:
    neg eax ; 00419121 F7D8
    %if ($ - %%insn_00419121) > 2
        %error "LONG_00419121"
    %endif
    times 2 - ($ - %%insn_00419121) db 0
    %%insn_00419123:
    ret ; 00419123 C3
    %if ($ - %%insn_00419123) > 1
        %error "LONG_00419123"
    %endif
    times 1 - ($ - %%insn_00419123) db 0
    %if ($ - %%fragment_start) != 116
        %error "function fragment size drift: 004190B0"
    %endif
%endmacro
