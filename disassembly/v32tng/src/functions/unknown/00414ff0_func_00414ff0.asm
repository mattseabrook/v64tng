; PE virtual entry 00414FF0
; Ghidra working symbol: FUN_00414ff0
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00414ff0_part_00 0
    %%fragment_start:
func_00414ff0:
    %%insn_00414ff0:
    sub esp,0x5c ; 00414FF0 83EC5C
    %if ($ - %%insn_00414ff0) > 3
        %error "LONG_00414FF0"
    %endif
    times 3 - ($ - %%insn_00414ff0) db 0
    %%insn_00414ff3:
    mov eax,[esp+0x60] ; 00414FF3 8B442460
    %if ($ - %%insn_00414ff3) > 4
        %error "LONG_00414FF3"
    %endif
    times 4 - ($ - %%insn_00414ff3) db 0
    %%insn_00414ff7:
    push ebx ; 00414FF7 53
    %if ($ - %%insn_00414ff7) > 1
        %error "LONG_00414FF7"
    %endif
    times 1 - ($ - %%insn_00414ff7) db 0
    %%insn_00414ff8:
    push ebp ; 00414FF8 55
    %if ($ - %%insn_00414ff8) > 1
        %error "LONG_00414FF8"
    %endif
    times 1 - ($ - %%insn_00414ff8) db 0
    db 0x33, 0xDB ; 00414FF9 33DB | xor ebx,ebx | encoding preserved
    %%insn_00414ffb:
    push esi ; 00414FFB 56
    %if ($ - %%insn_00414ffb) > 1
        %error "LONG_00414FFB"
    %endif
    times 1 - ($ - %%insn_00414ffb) db 0
    %%insn_00414ffc:
    cmp eax,0x4 ; 00414FFC 83F804
    %if ($ - %%insn_00414ffc) > 3
        %error "LONG_00414FFC"
    %endif
    times 3 - ($ - %%insn_00414ffc) db 0
    %%insn_00414fff:
    push edi ; 00414FFF 57
    %if ($ - %%insn_00414fff) > 1
        %error "LONG_00414FFF"
    %endif
    times 1 - ($ - %%insn_00414fff) db 0
    %%insn_00415000:
    mov [esp+0x13],bl ; 00415000 885C2413
    %if ($ - %%insn_00415000) > 4
        %error "LONG_00415000"
    %endif
    times 4 - ($ - %%insn_00415000) db 0
    %%insn_00415004:
    ja 0x415240 ; 00415004 0F8736020000
    %if ($ - %%insn_00415004) > 6
        %error "LONG_00415004"
    %endif
    times 6 - ($ - %%insn_00415004) db 0
    %%insn_0041500a:
    jmp dword near [eax*4+0x415264] ; 0041500A FF248564524100
    %if ($ - %%insn_0041500a) > 7
        %error "LONG_0041500A"
    %endif
    times 7 - ($ - %%insn_0041500a) db 0
    %%insn_00415011:
    mov byte [esp+0x13],0x1 ; 00415011 C644241301
    %if ($ - %%insn_00415011) > 5
        %error "LONG_00415011"
    %endif
    times 5 - ($ - %%insn_00415011) db 0
    %%insn_00415016:
    mov eax,[esp+0x78] ; 00415016 8B442478
    %if ($ - %%insn_00415016) > 4
        %error "LONG_00415016"
    %endif
    times 4 - ($ - %%insn_00415016) db 0
    %%insn_0041501a:
    mov [esp+0x14],eax ; 0041501A 89442414
    %if ($ - %%insn_0041501a) > 4
        %error "LONG_0041501A"
    %endif
    times 4 - ($ - %%insn_0041501a) db 0
    %%insn_0041501e:
    mov cl,[eax] ; 0041501E 8A08
    %if ($ - %%insn_0041501e) > 2
        %error "LONG_0041501E"
    %endif
    times 2 - ($ - %%insn_0041501e) db 0
    %%insn_00415020:
    test cl,cl ; 00415020 84C9
    %if ($ - %%insn_00415020) > 2
        %error "LONG_00415020"
    %endif
    times 2 - ($ - %%insn_00415020) db 0
    %%insn_00415022:
    jz short 0x41503d ; 00415022 7419
    %if ($ - %%insn_00415022) > 2
        %error "LONG_00415022"
    %endif
    times 2 - ($ - %%insn_00415022) db 0
    %%insn_00415024:
    mov cl,[eax+0x1] ; 00415024 8A4801
    %if ($ - %%insn_00415024) > 3
        %error "LONG_00415024"
    %endif
    times 3 - ($ - %%insn_00415024) db 0
    %%insn_00415027:
    inc eax ; 00415027 40
    %if ($ - %%insn_00415027) > 1
        %error "LONG_00415027"
    %endif
    times 1 - ($ - %%insn_00415027) db 0
    %%insn_00415028:
    test cl,cl ; 00415028 84C9
    %if ($ - %%insn_00415028) > 2
        %error "LONG_00415028"
    %endif
    times 2 - ($ - %%insn_00415028) db 0
    %%insn_0041502a:
    jnz short 0x415024 ; 0041502A 75F8
    %if ($ - %%insn_0041502a) > 2
        %error "LONG_0041502A"
    %endif
    times 2 - ($ - %%insn_0041502a) db 0
    %%insn_0041502c:
    mov cl,[eax+0x1] ; 0041502C 8A4801
    %if ($ - %%insn_0041502c) > 3
        %error "LONG_0041502C"
    %endif
    times 3 - ($ - %%insn_0041502c) db 0
    %%insn_0041502f:
    test cl,cl ; 0041502F 84C9
    %if ($ - %%insn_0041502f) > 2
        %error "LONG_0041502F"
    %endif
    times 2 - ($ - %%insn_0041502f) db 0
    %%insn_00415031:
    jz short 0x415037 ; 00415031 7404
    %if ($ - %%insn_00415031) > 2
        %error "LONG_00415031"
    %endif
    times 2 - ($ - %%insn_00415031) db 0
    %%insn_00415033:
    mov byte [eax],0x20 ; 00415033 C60020
    %if ($ - %%insn_00415033) > 3
        %error "LONG_00415033"
    %endif
    times 3 - ($ - %%insn_00415033) db 0
    %%insn_00415036:
    inc eax ; 00415036 40
    %if ($ - %%insn_00415036) > 1
        %error "LONG_00415036"
    %endif
    times 1 - ($ - %%insn_00415036) db 0
    %%insn_00415037:
    mov cl,[eax] ; 00415037 8A08
    %if ($ - %%insn_00415037) > 2
        %error "LONG_00415037"
    %endif
    times 2 - ($ - %%insn_00415037) db 0
    %%insn_00415039:
    test cl,cl ; 00415039 84C9
    %if ($ - %%insn_00415039) > 2
        %error "LONG_00415039"
    %endif
    times 2 - ($ - %%insn_00415039) db 0
    %%insn_0041503b:
    jnz short 0x415024 ; 0041503B 75E7
    %if ($ - %%insn_0041503b) > 2
        %error "LONG_0041503B"
    %endif
    times 2 - ($ - %%insn_0041503b) db 0
    %%insn_0041503d:
    mov esi,[0x423580] ; 0041503D 8B3580354200
    %if ($ - %%insn_0041503d) > 6
        %error "LONG_0041503D"
    %endif
    times 6 - ($ - %%insn_0041503d) db 0
    %%insn_00415043:
    mov ecx,0x11 ; 00415043 B911000000
    %if ($ - %%insn_00415043) > 5
        %error "LONG_00415043"
    %endif
    times 5 - ($ - %%insn_00415043) db 0
    db 0x33, 0xC0 ; 00415048 33C0 | xor eax,eax | encoding preserved
    %%insn_0041504a:
    lea edi,[esp+0x28] ; 0041504A 8D7C2428
    %if ($ - %%insn_0041504a) > 4
        %error "LONG_0041504A"
    %endif
    times 4 - ($ - %%insn_0041504a) db 0
    %%insn_0041504e:
    rep stosd ; 0041504E F3AB
    %if ($ - %%insn_0041504e) > 2
        %error "LONG_0041504E"
    %endif
    times 2 - ($ - %%insn_0041504e) db 0
    %%insn_00415050:
    test esi,esi ; 00415050 85F6
    %if ($ - %%insn_00415050) > 2
        %error "LONG_00415050"
    %endif
    times 2 - ($ - %%insn_00415050) db 0
    %%insn_00415052:
    mov dword [esp+0x28],0x44 ; 00415052 C744242844000000
    %if ($ - %%insn_00415052) > 8
        %error "LONG_00415052"
    %endif
    times 8 - ($ - %%insn_00415052) db 0
    %%insn_0041505a:
    jz short 0x415080 ; 0041505A 7424
    %if ($ - %%insn_0041505a) > 2
        %error "LONG_0041505A"
    %endif
    times 2 - ($ - %%insn_0041505a) db 0
    %%insn_0041505c:
    lea ecx,[esi-0x1] ; 0041505C 8D4EFF
    %if ($ - %%insn_0041505c) > 3
        %error "LONG_0041505C"
    %endif
    times 3 - ($ - %%insn_0041505c) db 0
    db 0x8B, 0xD1 ; 0041505F 8BD1 | mov edx,ecx | encoding preserved
    db 0x8B, 0xC1 ; 00415061 8BC1 | mov eax,ecx | encoding preserved
    %%insn_00415063:
    sar edx,byte 0x5 ; 00415063 C1FA05
    %if ($ - %%insn_00415063) > 3
        %error "LONG_00415063"
    %endif
    times 3 - ($ - %%insn_00415063) db 0
    %%insn_00415066:
    and eax,0x1f ; 00415066 83E01F
    %if ($ - %%insn_00415066) > 3
        %error "LONG_00415066"
    %endif
    times 3 - ($ - %%insn_00415066) db 0
    %%insn_00415069:
    mov edx,[edx*4+0x423480] ; 00415069 8B149580344200
    %if ($ - %%insn_00415069) > 7
        %error "LONG_00415069"
    %endif
    times 7 - ($ - %%insn_00415069) db 0
    %%insn_00415070:
    lea eax,[eax+eax*8] ; 00415070 8D04C0
    %if ($ - %%insn_00415070) > 3
        %error "LONG_00415070"
    %endif
    times 3 - ($ - %%insn_00415070) db 0
    %%insn_00415073:
    cmp byte [edx+eax*4+0x4],0x0 ; 00415073 807C820400
    %if ($ - %%insn_00415073) > 5
        %error "LONG_00415073"
    %endif
    times 5 - ($ - %%insn_00415073) db 0
    %%insn_00415078:
    jnz short 0x415080 ; 00415078 7506
    %if ($ - %%insn_00415078) > 2
        %error "LONG_00415078"
    %endif
    times 2 - ($ - %%insn_00415078) db 0
    db 0x8B, 0xF1 ; 0041507A 8BF1 | mov esi,ecx | encoding preserved
    %%insn_0041507c:
    test esi,esi ; 0041507C 85F6
    %if ($ - %%insn_0041507c) > 2
        %error "LONG_0041507C"
    %endif
    times 2 - ($ - %%insn_0041507c) db 0
    %%insn_0041507e:
    jnz short 0x41505c ; 0041507E 75DC
    %if ($ - %%insn_0041507e) > 2
        %error "LONG_0041507E"
    %endif
    times 2 - ($ - %%insn_0041507e) db 0
    %%insn_00415080:
    lea eax,[esi+esi*4+0x4] ; 00415080 8D44B604
    %if ($ - %%insn_00415080) > 4
        %error "LONG_00415080"
    %endif
    times 4 - ($ - %%insn_00415080) db 0
    %%insn_00415084:
    push dword 0x1 ; 00415084 6A01
    %if ($ - %%insn_00415084) > 2
        %error "LONG_00415084"
    %endif
    times 2 - ($ - %%insn_00415084) db 0
    %%insn_00415086:
    mov [esp+0x5e],ax ; 00415086 668944245E
    %if ($ - %%insn_00415086) > 5
        %error "LONG_00415086"
    %endif
    times 5 - ($ - %%insn_00415086) db 0
    %%insn_0041508b:
    mov ecx,[esp+0x5e] ; 0041508B 8B4C245E
    %if ($ - %%insn_0041508b) > 4
        %error "LONG_0041508B"
    %endif
    times 4 - ($ - %%insn_0041508b) db 0
    %%insn_0041508f:
    and ecx,0xffff ; 0041508F 81E1FFFF0000
    %if ($ - %%insn_0041508f) > 6
        %error "LONG_0041508F"
    %endif
    times 6 - ($ - %%insn_0041508f) db 0
    %%insn_00415095:
    push ecx ; 00415095 51
    %if ($ - %%insn_00415095) > 1
        %error "LONG_00415095"
    %endif
    times 1 - ($ - %%insn_00415095) db 0
    %%insn_00415096:
    call 0x415550 ; 00415096 E8B5040000
    %if ($ - %%insn_00415096) > 5
        %error "LONG_00415096"
    %endif
    times 5 - ($ - %%insn_00415096) db 0
    %%insn_0041509b:
    mov [esp+0x64],eax ; 0041509B 89442464
    %if ($ - %%insn_0041509b) > 4
        %error "LONG_0041509B"
    %endif
    times 4 - ($ - %%insn_0041509b) db 0
    %%insn_0041509f:
    mov [eax],esi ; 0041509F 8930
    %if ($ - %%insn_0041509f) > 2
        %error "LONG_0041509F"
    %endif
    times 2 - ($ - %%insn_0041509f) db 0
    %%insn_004150a1:
    mov edx,[esp+0x64] ; 004150A1 8B542464
    %if ($ - %%insn_004150a1) > 4
        %error "LONG_004150A1"
    %endif
    times 4 - ($ - %%insn_004150a1) db 0
    %%insn_004150a5:
    add esp,0x8 ; 004150A5 83C408
    %if ($ - %%insn_004150a5) > 3
        %error "LONG_004150A5"
    %endif
    times 3 - ($ - %%insn_004150a5) db 0
    db 0x33, 0xC9 ; 004150A8 33C9 | xor ecx,ecx | encoding preserved
    %%insn_004150aa:
    test esi,esi ; 004150AA 85F6
    %if ($ - %%insn_004150aa) > 2
        %error "LONG_004150AA"
    %endif
    times 2 - ($ - %%insn_004150aa) db 0
    %%insn_004150ac:
    lea edi,[edx+0x4] ; 004150AC 8D7A04
    %if ($ - %%insn_004150ac) > 3
        %error "LONG_004150AC"
    %endif
    times 3 - ($ - %%insn_004150ac) db 0
    %%insn_004150af:
    lea ebp,[esi+edx+0x4] ; 004150AF 8D6C1604
    %if ($ - %%insn_004150af) > 4
        %error "LONG_004150AF"
    %endif
    times 4 - ($ - %%insn_004150af) db 0
    %%insn_004150b3:
    jng short 0x4150f4 ; 004150B3 7E3F
    %if ($ - %%insn_004150b3) > 2
        %error "LONG_004150B3"
    %endif
    times 2 - ($ - %%insn_004150b3) db 0
    db 0x8B, 0xD1 ; 004150B5 8BD1 | mov edx,ecx | encoding preserved
    db 0x8B, 0xC1 ; 004150B7 8BC1 | mov eax,ecx | encoding preserved
    %%insn_004150b9:
    sar edx,byte 0x5 ; 004150B9 C1FA05
    %if ($ - %%insn_004150b9) > 3
        %error "LONG_004150B9"
    %endif
    times 3 - ($ - %%insn_004150b9) db 0
    %%insn_004150bc:
    and eax,0x1f ; 004150BC 83E01F
    %if ($ - %%insn_004150bc) > 3
        %error "LONG_004150BC"
    %endif
    times 3 - ($ - %%insn_004150bc) db 0
    %%insn_004150bf:
    mov edx,[edx*4+0x423480] ; 004150BF 8B149580344200
    %if ($ - %%insn_004150bf) > 7
        %error "LONG_004150BF"
    %endif
    times 7 - ($ - %%insn_004150bf) db 0
    %%insn_004150c6:
    lea eax,[eax+eax*8] ; 004150C6 8D04C0
    %if ($ - %%insn_004150c6) > 3
        %error "LONG_004150C6"
    %endif
    times 3 - ($ - %%insn_004150c6) db 0
    %%insn_004150c9:
    lea eax,[edx+eax*4] ; 004150C9 8D0482
    %if ($ - %%insn_004150c9) > 3
        %error "LONG_004150C9"
    %endif
    times 3 - ($ - %%insn_004150c9) db 0
    %%insn_004150cc:
    mov dl,[eax+0x4] ; 004150CC 8A5004
    %if ($ - %%insn_004150cc) > 3
        %error "LONG_004150CC"
    %endif
    times 3 - ($ - %%insn_004150cc) db 0
    %%insn_004150cf:
    test dl,0x10 ; 004150CF F6C210
    %if ($ - %%insn_004150cf) > 3
        %error "LONG_004150CF"
    %endif
    times 3 - ($ - %%insn_004150cf) db 0
    %%insn_004150d2:
    jnz short 0x4150dd ; 004150D2 7509
    %if ($ - %%insn_004150d2) > 2
        %error "LONG_004150D2"
    %endif
    times 2 - ($ - %%insn_004150d2) db 0
    %%insn_004150d4:
    mov [edi],dl ; 004150D4 8817
    %if ($ - %%insn_004150d4) > 2
        %error "LONG_004150D4"
    %endif
    times 2 - ($ - %%insn_004150d4) db 0
    %%insn_004150d6:
    mov eax,[eax] ; 004150D6 8B00
    %if ($ - %%insn_004150d6) > 2
        %error "LONG_004150D6"
    %endif
    times 2 - ($ - %%insn_004150d6) db 0
    %%insn_004150d8:
    mov [ebp+0x0],eax ; 004150D8 894500
    %if ($ - %%insn_004150d8) > 3
        %error "LONG_004150D8"
    %endif
    times 3 - ($ - %%insn_004150d8) db 0
    %%insn_004150db:
    jmp short 0x4150e7 ; 004150DB EB0A
    %if ($ - %%insn_004150db) > 2
        %error "LONG_004150DB"
    %endif
    times 2 - ($ - %%insn_004150db) db 0
    %%insn_004150dd:
    mov byte [edi],0x0 ; 004150DD C60700
    %if ($ - %%insn_004150dd) > 3
        %error "LONG_004150DD"
    %endif
    times 3 - ($ - %%insn_004150dd) db 0
    %%insn_004150e0:
    mov dword [ebp+0x0],0xffffffff ; 004150E0 C74500FFFFFFFF
    %if ($ - %%insn_004150e0) > 7
        %error "LONG_004150E0"
    %endif
    times 7 - ($ - %%insn_004150e0) db 0
    %%insn_004150e7:
    inc ecx ; 004150E7 41
    %if ($ - %%insn_004150e7) > 1
        %error "LONG_004150E7"
    %endif
    times 1 - ($ - %%insn_004150e7) db 0
    %%insn_004150e8:
    inc edi ; 004150E8 47
    %if ($ - %%insn_004150e8) > 1
        %error "LONG_004150E8"
    %endif
    times 1 - ($ - %%insn_004150e8) db 0
    %%insn_004150e9:
    add ebp,0x4 ; 004150E9 83C504
    %if ($ - %%insn_004150e9) > 3
        %error "LONG_004150E9"
    %endif
    times 3 - ($ - %%insn_004150e9) db 0
    db 0x3B, 0xCE ; 004150EC 3BCE | cmp ecx,esi | encoding preserved
    %%insn_004150ee:
    jl short 0x4150b5 ; 004150EE 7CC5
    %if ($ - %%insn_004150ee) > 2
        %error "LONG_004150EE"
    %endif
    times 2 - ($ - %%insn_004150ee) db 0
    %%insn_004150f0:
    mov edx,[esp+0x5c] ; 004150F0 8B54245C
    %if ($ - %%insn_004150f0) > 4
        %error "LONG_004150F0"
    %endif
    times 4 - ($ - %%insn_004150f0) db 0
    %%insn_004150f4:
    mov al,[esp+0x13] ; 004150F4 8A442413
    %if ($ - %%insn_004150f4) > 4
        %error "LONG_004150F4"
    %endif
    times 4 - ($ - %%insn_004150f4) db 0
    %%insn_004150f8:
    test al,al ; 004150F8 84C0
    %if ($ - %%insn_004150f8) > 2
        %error "LONG_004150F8"
    %endif
    times 2 - ($ - %%insn_004150f8) db 0
    %%insn_004150fa:
    jz short 0x41512a ; 004150FA 742E
    %if ($ - %%insn_004150fa) > 2
        %error "LONG_004150FA"
    %endif
    times 2 - ($ - %%insn_004150fa) db 0
    db 0x33, 0xFF ; 004150FC 33FF | xor edi,edi | encoding preserved
    %%insn_004150fe:
    lea eax,[edx+0x4] ; 004150FE 8D4204
    %if ($ - %%insn_004150fe) > 3
        %error "LONG_004150FE"
    %endif
    times 3 - ($ - %%insn_004150fe) db 0
    %%insn_00415101:
    lea ecx,[esi+edx+0x4] ; 00415101 8D4C1604
    %if ($ - %%insn_00415101) > 4
        %error "LONG_00415101"
    %endif
    times 4 - ($ - %%insn_00415101) db 0
    %%insn_00415105:
    cmp esi,0x3 ; 00415105 83FE03
    %if ($ - %%insn_00415105) > 3
        %error "LONG_00415105"
    %endif
    times 3 - ($ - %%insn_00415105) db 0
    db 0x8B, 0xD6 ; 00415108 8BD6 | mov edx,esi | encoding preserved
    %%insn_0041510a:
    jl short 0x415111 ; 0041510A 7C05
    %if ($ - %%insn_0041510a) > 2
        %error "LONG_0041510A"
    %endif
    times 2 - ($ - %%insn_0041510a) db 0
    %%insn_0041510c:
    mov edx,0x3 ; 0041510C BA03000000
    %if ($ - %%insn_0041510c) > 5
        %error "LONG_0041510C"
    %endif
    times 5 - ($ - %%insn_0041510c) db 0
    db 0x3B, 0xFA ; 00415111 3BFA | cmp edi,edx | encoding preserved
    %%insn_00415113:
    jnl short 0x415125 ; 00415113 7D10
    %if ($ - %%insn_00415113) > 2
        %error "LONG_00415113"
    %endif
    times 2 - ($ - %%insn_00415113) db 0
    %%insn_00415115:
    mov byte [eax],0x0 ; 00415115 C60000
    %if ($ - %%insn_00415115) > 3
        %error "LONG_00415115"
    %endif
    times 3 - ($ - %%insn_00415115) db 0
    %%insn_00415118:
    inc edi ; 00415118 47
    %if ($ - %%insn_00415118) > 1
        %error "LONG_00415118"
    %endif
    times 1 - ($ - %%insn_00415118) db 0
    %%insn_00415119:
    mov dword [ecx],0xffffffff ; 00415119 C701FFFFFFFF
    %if ($ - %%insn_00415119) > 6
        %error "LONG_00415119"
    %endif
    times 6 - ($ - %%insn_00415119) db 0
    %%insn_0041511f:
    inc eax ; 0041511F 40
    %if ($ - %%insn_0041511f) > 1
        %error "LONG_0041511F"
    %endif
    times 1 - ($ - %%insn_0041511f) db 0
    %%insn_00415120:
    add ecx,0x4 ; 00415120 83C104
    %if ($ - %%insn_00415120) > 3
        %error "LONG_00415120"
    %endif
    times 3 - ($ - %%insn_00415120) db 0
    %%insn_00415123:
    jmp short 0x415105 ; 00415123 EBE0
    %if ($ - %%insn_00415123) > 2
        %error "LONG_00415123"
    %endif
    times 2 - ($ - %%insn_00415123) db 0
    %%insn_00415125:
    mov ebx,0x8 ; 00415125 BB08000000
    %if ($ - %%insn_00415125) > 5
        %error "LONG_00415125"
    %endif
    times 5 - ($ - %%insn_00415125) db 0
    %%insn_0041512a:
    call 0x410e10 ; 0041512A E8E1BCFFFF
    %if ($ - %%insn_0041512a) > 5
        %error "LONG_0041512A"
    %endif
    times 5 - ($ - %%insn_0041512a) db 0
    %%insn_0041512f:
    mov dword [eax],0x0 ; 0041512F C70000000000
    %if ($ - %%insn_0041512f) > 6
        %error "LONG_0041512F"
    %endif
    times 6 - ($ - %%insn_0041512f) db 0
    %%insn_00415135:
    call 0x410e20 ; 00415135 E8E6BCFFFF
    %if ($ - %%insn_00415135) > 5
        %error "LONG_00415135"
    %endif
    times 5 - ($ - %%insn_00415135) db 0
    %%insn_0041513a:
    lea ecx,[esp+0x18] ; 0041513A 8D4C2418
    %if ($ - %%insn_0041513a) > 4
        %error "LONG_0041513A"
    %endif
    times 4 - ($ - %%insn_0041513a) db 0
    %%insn_0041513e:
    lea edx,[esp+0x28] ; 0041513E 8D542428
    %if ($ - %%insn_0041513e) > 4
        %error "LONG_0041513E"
    %endif
    times 4 - ($ - %%insn_0041513e) db 0
    %%insn_00415142:
    mov dword [eax],0x0 ; 00415142 C70000000000
    %if ($ - %%insn_00415142) > 6
        %error "LONG_00415142"
    %endif
    times 6 - ($ - %%insn_00415142) db 0
    %%insn_00415148:
    mov eax,[esp+0x7c] ; 00415148 8B44247C
    %if ($ - %%insn_00415148) > 4
        %error "LONG_00415148"
    %endif
    times 4 - ($ - %%insn_00415148) db 0
    %%insn_0041514c:
    push ecx ; 0041514C 51
    %if ($ - %%insn_0041514c) > 1
        %error "LONG_0041514C"
    %endif
    times 1 - ($ - %%insn_0041514c) db 0
    %%insn_0041514d:
    mov ecx,[esp+0x18] ; 0041514D 8B4C2418
    %if ($ - %%insn_0041514d) > 4
        %error "LONG_0041514D"
    %endif
    times 4 - ($ - %%insn_0041514d) db 0
    %%insn_00415151:
    push edx ; 00415151 52
    %if ($ - %%insn_00415151) > 1
        %error "LONG_00415151"
    %endif
    times 1 - ($ - %%insn_00415151) db 0
    %%insn_00415152:
    mov edx,[esp+0x7c] ; 00415152 8B54247C
    %if ($ - %%insn_00415152) > 4
        %error "LONG_00415152"
    %endif
    times 4 - ($ - %%insn_00415152) db 0
    %%insn_00415156:
    push dword 0x0 ; 00415156 6A00
    %if ($ - %%insn_00415156) > 2
        %error "LONG_00415156"
    %endif
    times 2 - ($ - %%insn_00415156) db 0
    %%insn_00415158:
    push eax ; 00415158 50
    %if ($ - %%insn_00415158) > 1
        %error "LONG_00415158"
    %endif
    times 1 - ($ - %%insn_00415158) db 0
    %%insn_00415159:
    push ebx ; 00415159 53
    %if ($ - %%insn_00415159) > 1
        %error "LONG_00415159"
    %endif
    times 1 - ($ - %%insn_00415159) db 0
    %%insn_0041515a:
    push dword 0x1 ; 0041515A 6A01
    %if ($ - %%insn_0041515a) > 2
        %error "LONG_0041515A"
    %endif
    times 2 - ($ - %%insn_0041515a) db 0
    %%insn_0041515c:
    push dword 0x0 ; 0041515C 6A00
    %if ($ - %%insn_0041515c) > 2
        %error "LONG_0041515C"
    %endif
    times 2 - ($ - %%insn_0041515c) db 0
    %%insn_0041515e:
    push dword 0x0 ; 0041515E 6A00
    %if ($ - %%insn_0041515e) > 2
        %error "LONG_0041515E"
    %endif
    times 2 - ($ - %%insn_0041515e) db 0
    %%insn_00415160:
    push ecx ; 00415160 51
    %if ($ - %%insn_00415160) > 1
        %error "LONG_00415160"
    %endif
    times 1 - ($ - %%insn_00415160) db 0
    %%insn_00415161:
    push edx ; 00415161 52
    %if ($ - %%insn_00415161) > 1
        %error "LONG_00415161"
    %endif
    times 1 - ($ - %%insn_00415161) db 0
    %%insn_00415162:
    call dword near [0x424484] ; 00415162 FF1584444200
    %if ($ - %%insn_00415162) > 6
        %error "LONG_00415162"
    %endif
    times 6 - ($ - %%insn_00415162) db 0
    db 0x8B, 0xF0 ; 00415168 8BF0 | mov esi,eax | encoding preserved
    %%insn_0041516a:
    call dword near [0x4243c4] ; 0041516A FF15C4434200
    %if ($ - %%insn_0041516a) > 6
        %error "LONG_0041516A"
    %endif
    times 6 - ($ - %%insn_0041516a) db 0
    db 0x8B, 0xF8 ; 00415170 8BF8 | mov edi,eax | encoding preserved
    %%insn_00415172:
    mov eax,[esp+0x5c] ; 00415172 8B44245C
    %if ($ - %%insn_00415172) > 4
        %error "LONG_00415172"
    %endif
    times 4 - ($ - %%insn_00415172) db 0
    %%insn_00415176:
    push eax ; 00415176 50
    %if ($ - %%insn_00415176) > 1
        %error "LONG_00415176"
    %endif
    times 1 - ($ - %%insn_00415176) db 0
    %%insn_00415177:
    call 0x40c9a0 ; 00415177 E82478FFFF
    %if ($ - %%insn_00415177) > 5
        %error "LONG_00415177"
    %endif
    times 5 - ($ - %%insn_00415177) db 0
    %%insn_0041517c:
    add esp,0x4 ; 0041517C 83C404
    %if ($ - %%insn_0041517c) > 3
        %error "LONG_0041517C"
    %endif
    times 3 - ($ - %%insn_0041517c) db 0
    %%insn_0041517f:
    test esi,esi ; 0041517F 85F6
    %if ($ - %%insn_0041517f) > 2
        %error "LONG_0041517F"
    %endif
    times 2 - ($ - %%insn_0041517f) db 0
    %%insn_00415181:
    jnz short 0x415197 ; 00415181 7514
    %if ($ - %%insn_00415181) > 2
        %error "LONG_00415181"
    %endif
    times 2 - ($ - %%insn_00415181) db 0
    %%insn_00415183:
    push edi ; 00415183 57
    %if ($ - %%insn_00415183) > 1
        %error "LONG_00415183"
    %endif
    times 1 - ($ - %%insn_00415183) db 0
    %%insn_00415184:
    call 0x410d90 ; 00415184 E807BCFFFF
    %if ($ - %%insn_00415184) > 5
        %error "LONG_00415184"
    %endif
    times 5 - ($ - %%insn_00415184) db 0
    %%insn_00415189:
    add esp,0x4 ; 00415189 83C404
    %if ($ - %%insn_00415189) > 3
        %error "LONG_00415189"
    %endif
    times 3 - ($ - %%insn_00415189) db 0
    %%insn_0041518c:
    or eax,0xffffffffffffffff ; 0041518C 83C8FF
    %if ($ - %%insn_0041518c) > 3
        %error "LONG_0041518C"
    %endif
    times 3 - ($ - %%insn_0041518c) db 0
    %%insn_0041518f:
    pop edi ; 0041518F 5F
    %if ($ - %%insn_0041518f) > 1
        %error "LONG_0041518F"
    %endif
    times 1 - ($ - %%insn_0041518f) db 0
    %%insn_00415190:
    pop esi ; 00415190 5E
    %if ($ - %%insn_00415190) > 1
        %error "LONG_00415190"
    %endif
    times 1 - ($ - %%insn_00415190) db 0
    %%insn_00415191:
    pop ebp ; 00415191 5D
    %if ($ - %%insn_00415191) > 1
        %error "LONG_00415191"
    %endif
    times 1 - ($ - %%insn_00415191) db 0
    %%insn_00415192:
    pop ebx ; 00415192 5B
    %if ($ - %%insn_00415192) > 1
        %error "LONG_00415192"
    %endif
    times 1 - ($ - %%insn_00415192) db 0
    %%insn_00415193:
    add esp,0x5c ; 00415193 83C45C
    %if ($ - %%insn_00415193) > 3
        %error "LONG_00415193"
    %endif
    times 3 - ($ - %%insn_00415193) db 0
    %%insn_00415196:
    ret ; 00415196 C3
    %if ($ - %%insn_00415196) > 1
        %error "LONG_00415196"
    %endif
    times 1 - ($ - %%insn_00415196) db 0
    %%insn_00415197:
    mov eax,[esp+0x70] ; 00415197 8B442470
    %if ($ - %%insn_00415197) > 4
        %error "LONG_00415197"
    %endif
    times 4 - ($ - %%insn_00415197) db 0
    %%insn_0041519b:
    mov esi,[0x4243c8] ; 0041519B 8B35C8434200
    %if ($ - %%insn_0041519b) > 6
        %error "LONG_0041519B"
    %endif
    times 6 - ($ - %%insn_0041519b) db 0
    %%insn_004151a1:
    cmp eax,0x2 ; 004151A1 83F802
    %if ($ - %%insn_004151a1) > 3
        %error "LONG_004151A1"
    %endif
    times 3 - ($ - %%insn_004151a1) db 0
    %%insn_004151a4:
    jnz short 0x4151c3 ; 004151A4 751D
    %if ($ - %%insn_004151a4) > 2
        %error "LONG_004151A4"
    %endif
    times 2 - ($ - %%insn_004151a4) db 0
    %%insn_004151a6:
    push dword 0x0 ; 004151A6 6A00
    %if ($ - %%insn_004151a6) > 2
        %error "LONG_004151A6"
    %endif
    times 2 - ($ - %%insn_004151a6) db 0
    %%insn_004151a8:
    call 0x40d610 ; 004151A8 E86384FFFF
    %if ($ - %%insn_004151a8) > 5
        %error "LONG_004151A8"
    %endif
    times 5 - ($ - %%insn_004151a8) db 0
    %if ($ - %%fragment_start) != 445
        %error "function fragment size drift: 00414FF0"
    %endif
%endmacro

%macro emit_func_00414ff0_part_01 0
    %%fragment_start:
    %%insn_004151c3:
    test eax,eax ; 004151C3 85C0
    %if ($ - %%insn_004151c3) > 2
        %error "LONG_004151C3"
    %endif
    times 2 - ($ - %%insn_004151c3) db 0
    %%insn_004151c5:
    jnz short 0x4151fe ; 004151C5 7537
    %if ($ - %%insn_004151c5) > 2
        %error "LONG_004151C5"
    %endif
    times 2 - ($ - %%insn_004151c5) db 0
    %%insn_004151c7:
    mov ecx,[esp+0x18] ; 004151C7 8B4C2418
    %if ($ - %%insn_004151c7) > 4
        %error "LONG_004151C7"
    %endif
    times 4 - ($ - %%insn_004151c7) db 0
    %%insn_004151cb:
    push dword 0xffffffffffffffff ; 004151CB 6AFF
    %if ($ - %%insn_004151cb) > 2
        %error "LONG_004151CB"
    %endif
    times 2 - ($ - %%insn_004151cb) db 0
    %%insn_004151cd:
    push ecx ; 004151CD 51
    %if ($ - %%insn_004151cd) > 1
        %error "LONG_004151CD"
    %endif
    times 1 - ($ - %%insn_004151cd) db 0
    %%insn_004151ce:
    call dword near [0x424488] ; 004151CE FF1588444200
    %if ($ - %%insn_004151ce) > 6
        %error "LONG_004151CE"
    %endif
    times 6 - ($ - %%insn_004151ce) db 0
    %%insn_004151d4:
    mov eax,[esp+0x18] ; 004151D4 8B442418
    %if ($ - %%insn_004151d4) > 4
        %error "LONG_004151D4"
    %endif
    times 4 - ($ - %%insn_004151d4) db 0
    %%insn_004151d8:
    lea edx,[esp+0x78] ; 004151D8 8D542478
    %if ($ - %%insn_004151d8) > 4
        %error "LONG_004151D8"
    %endif
    times 4 - ($ - %%insn_004151d8) db 0
    %%insn_004151dc:
    push edx ; 004151DC 52
    %if ($ - %%insn_004151dc) > 1
        %error "LONG_004151DC"
    %endif
    times 1 - ($ - %%insn_004151dc) db 0
    %%insn_004151dd:
    push eax ; 004151DD 50
    %if ($ - %%insn_004151dd) > 1
        %error "LONG_004151DD"
    %endif
    times 1 - ($ - %%insn_004151dd) db 0
    %%insn_004151de:
    call dword near [0x424494] ; 004151DE FF1594444200
    %if ($ - %%insn_004151de) > 6
        %error "LONG_004151DE"
    %endif
    times 6 - ($ - %%insn_004151de) db 0
    %%insn_004151e4:
    mov ecx,[esp+0x18] ; 004151E4 8B4C2418
    %if ($ - %%insn_004151e4) > 4
        %error "LONG_004151E4"
    %endif
    times 4 - ($ - %%insn_004151e4) db 0
    %%insn_004151e8:
    push ecx ; 004151E8 51
    %if ($ - %%insn_004151e8) > 1
        %error "LONG_004151E8"
    %endif
    times 1 - ($ - %%insn_004151e8) db 0
    %%insn_004151e9:
    call esi ; 004151E9 FFD6
    %if ($ - %%insn_004151e9) > 2
        %error "LONG_004151E9"
    %endif
    times 2 - ($ - %%insn_004151e9) db 0
    %%insn_004151eb:
    mov ecx,[esp+0x1c] ; 004151EB 8B4C241C
    %if ($ - %%insn_004151eb) > 4
        %error "LONG_004151EB"
    %endif
    times 4 - ($ - %%insn_004151eb) db 0
    %%insn_004151ef:
    push ecx ; 004151EF 51
    %if ($ - %%insn_004151ef) > 1
        %error "LONG_004151EF"
    %endif
    times 1 - ($ - %%insn_004151ef) db 0
    %%insn_004151f0:
    call esi ; 004151F0 FFD6
    %if ($ - %%insn_004151f0) > 2
        %error "LONG_004151F0"
    %endif
    times 2 - ($ - %%insn_004151f0) db 0
    %%insn_004151f2:
    mov eax,[esp+0x78] ; 004151F2 8B442478
    %if ($ - %%insn_004151f2) > 4
        %error "LONG_004151F2"
    %endif
    times 4 - ($ - %%insn_004151f2) db 0
    %%insn_004151f6:
    pop edi ; 004151F6 5F
    %if ($ - %%insn_004151f6) > 1
        %error "LONG_004151F6"
    %endif
    times 1 - ($ - %%insn_004151f6) db 0
    %%insn_004151f7:
    pop esi ; 004151F7 5E
    %if ($ - %%insn_004151f7) > 1
        %error "LONG_004151F7"
    %endif
    times 1 - ($ - %%insn_004151f7) db 0
    %%insn_004151f8:
    pop ebp ; 004151F8 5D
    %if ($ - %%insn_004151f8) > 1
        %error "LONG_004151F8"
    %endif
    times 1 - ($ - %%insn_004151f8) db 0
    %%insn_004151f9:
    pop ebx ; 004151F9 5B
    %if ($ - %%insn_004151f9) > 1
        %error "LONG_004151F9"
    %endif
    times 1 - ($ - %%insn_004151f9) db 0
    %%insn_004151fa:
    add esp,0x5c ; 004151FA 83C45C
    %if ($ - %%insn_004151fa) > 3
        %error "LONG_004151FA"
    %endif
    times 3 - ($ - %%insn_004151fa) db 0
    %%insn_004151fd:
    ret ; 004151FD C3
    %if ($ - %%insn_004151fd) > 1
        %error "LONG_004151FD"
    %endif
    times 1 - ($ - %%insn_004151fd) db 0
    %%insn_004151fe:
    cmp eax,0x4 ; 004151FE 83F804
    %if ($ - %%insn_004151fe) > 3
        %error "LONG_004151FE"
    %endif
    times 3 - ($ - %%insn_004151fe) db 0
    %%insn_00415201:
    jnz short 0x415225 ; 00415201 7522
    %if ($ - %%insn_00415201) > 2
        %error "LONG_00415201"
    %endif
    times 2 - ($ - %%insn_00415201) db 0
    %%insn_00415203:
    mov edx,[esp+0x18] ; 00415203 8B542418
    %if ($ - %%insn_00415203) > 4
        %error "LONG_00415203"
    %endif
    times 4 - ($ - %%insn_00415203) db 0
    %%insn_00415207:
    push edx ; 00415207 52
    %if ($ - %%insn_00415207) > 1
        %error "LONG_00415207"
    %endif
    times 1 - ($ - %%insn_00415207) db 0
    %%insn_00415208:
    call esi ; 00415208 FFD6
    %if ($ - %%insn_00415208) > 2
        %error "LONG_00415208"
    %endif
    times 2 - ($ - %%insn_00415208) db 0
    %%insn_0041520a:
    mov ecx,[esp+0x1c] ; 0041520A 8B4C241C
    %if ($ - %%insn_0041520a) > 4
        %error "LONG_0041520A"
    %endif
    times 4 - ($ - %%insn_0041520a) db 0
    %%insn_0041520e:
    mov dword [esp+0x78],0x0 ; 0041520E C744247800000000
    %if ($ - %%insn_0041520e) > 8
        %error "LONG_0041520E"
    %endif
    times 8 - ($ - %%insn_0041520e) db 0
    %%insn_00415216:
    push ecx ; 00415216 51
    %if ($ - %%insn_00415216) > 1
        %error "LONG_00415216"
    %endif
    times 1 - ($ - %%insn_00415216) db 0
    %%insn_00415217:
    call esi ; 00415217 FFD6
    %if ($ - %%insn_00415217) > 2
        %error "LONG_00415217"
    %endif
    times 2 - ($ - %%insn_00415217) db 0
    %%insn_00415219:
    mov eax,[esp+0x78] ; 00415219 8B442478
    %if ($ - %%insn_00415219) > 4
        %error "LONG_00415219"
    %endif
    times 4 - ($ - %%insn_00415219) db 0
    %%insn_0041521d:
    pop edi ; 0041521D 5F
    %if ($ - %%insn_0041521d) > 1
        %error "LONG_0041521D"
    %endif
    times 1 - ($ - %%insn_0041521d) db 0
    %%insn_0041521e:
    pop esi ; 0041521E 5E
    %if ($ - %%insn_0041521e) > 1
        %error "LONG_0041521E"
    %endif
    times 1 - ($ - %%insn_0041521e) db 0
    %%insn_0041521f:
    pop ebp ; 0041521F 5D
    %if ($ - %%insn_0041521f) > 1
        %error "LONG_0041521F"
    %endif
    times 1 - ($ - %%insn_0041521f) db 0
    %%insn_00415220:
    pop ebx ; 00415220 5B
    %if ($ - %%insn_00415220) > 1
        %error "LONG_00415220"
    %endif
    times 1 - ($ - %%insn_00415220) db 0
    %%insn_00415221:
    add esp,0x5c ; 00415221 83C45C
    %if ($ - %%insn_00415221) > 3
        %error "LONG_00415221"
    %endif
    times 3 - ($ - %%insn_00415221) db 0
    %%insn_00415224:
    ret ; 00415224 C3
    %if ($ - %%insn_00415224) > 1
        %error "LONG_00415224"
    %endif
    times 1 - ($ - %%insn_00415224) db 0
    %%insn_00415225:
    mov ecx,[esp+0x1c] ; 00415225 8B4C241C
    %if ($ - %%insn_00415225) > 4
        %error "LONG_00415225"
    %endif
    times 4 - ($ - %%insn_00415225) db 0
    %%insn_00415229:
    mov eax,[esp+0x18] ; 00415229 8B442418
    %if ($ - %%insn_00415229) > 4
        %error "LONG_00415229"
    %endif
    times 4 - ($ - %%insn_00415229) db 0
    %%insn_0041522d:
    push ecx ; 0041522D 51
    %if ($ - %%insn_0041522d) > 1
        %error "LONG_0041522D"
    %endif
    times 1 - ($ - %%insn_0041522d) db 0
    %%insn_0041522e:
    mov [esp+0x7c],eax ; 0041522E 8944247C
    %if ($ - %%insn_0041522e) > 4
        %error "LONG_0041522E"
    %endif
    times 4 - ($ - %%insn_0041522e) db 0
    %%insn_00415232:
    call esi ; 00415232 FFD6
    %if ($ - %%insn_00415232) > 2
        %error "LONG_00415232"
    %endif
    times 2 - ($ - %%insn_00415232) db 0
    %%insn_00415234:
    mov eax,[esp+0x78] ; 00415234 8B442478
    %if ($ - %%insn_00415234) > 4
        %error "LONG_00415234"
    %endif
    times 4 - ($ - %%insn_00415234) db 0
    %%insn_00415238:
    pop edi ; 00415238 5F
    %if ($ - %%insn_00415238) > 1
        %error "LONG_00415238"
    %endif
    times 1 - ($ - %%insn_00415238) db 0
    %%insn_00415239:
    pop esi ; 00415239 5E
    %if ($ - %%insn_00415239) > 1
        %error "LONG_00415239"
    %endif
    times 1 - ($ - %%insn_00415239) db 0
    %%insn_0041523a:
    pop ebp ; 0041523A 5D
    %if ($ - %%insn_0041523a) > 1
        %error "LONG_0041523A"
    %endif
    times 1 - ($ - %%insn_0041523a) db 0
    %%insn_0041523b:
    pop ebx ; 0041523B 5B
    %if ($ - %%insn_0041523b) > 1
        %error "LONG_0041523B"
    %endif
    times 1 - ($ - %%insn_0041523b) db 0
    %%insn_0041523c:
    add esp,0x5c ; 0041523C 83C45C
    %if ($ - %%insn_0041523c) > 3
        %error "LONG_0041523C"
    %endif
    times 3 - ($ - %%insn_0041523c) db 0
    %%insn_0041523f:
    ret ; 0041523F C3
    %if ($ - %%insn_0041523f) > 1
        %error "LONG_0041523F"
    %endif
    times 1 - ($ - %%insn_0041523f) db 0
    %%insn_00415240:
    call 0x410e10 ; 00415240 E8CBBBFFFF
    %if ($ - %%insn_00415240) > 5
        %error "LONG_00415240"
    %endif
    times 5 - ($ - %%insn_00415240) db 0
    %%insn_00415245:
    mov dword [eax],0x16 ; 00415245 C70016000000
    %if ($ - %%insn_00415245) > 6
        %error "LONG_00415245"
    %endif
    times 6 - ($ - %%insn_00415245) db 0
    %%insn_0041524b:
    call 0x410e20 ; 0041524B E8D0BBFFFF
    %if ($ - %%insn_0041524b) > 5
        %error "LONG_0041524B"
    %endif
    times 5 - ($ - %%insn_0041524b) db 0
    %%insn_00415250:
    pop edi ; 00415250 5F
    %if ($ - %%insn_00415250) > 1
        %error "LONG_00415250"
    %endif
    times 1 - ($ - %%insn_00415250) db 0
    %%insn_00415251:
    pop esi ; 00415251 5E
    %if ($ - %%insn_00415251) > 1
        %error "LONG_00415251"
    %endif
    times 1 - ($ - %%insn_00415251) db 0
    %%insn_00415252:
    mov dword [eax],0x0 ; 00415252 C70000000000
    %if ($ - %%insn_00415252) > 6
        %error "LONG_00415252"
    %endif
    times 6 - ($ - %%insn_00415252) db 0
    %%insn_00415258:
    pop ebp ; 00415258 5D
    %if ($ - %%insn_00415258) > 1
        %error "LONG_00415258"
    %endif
    times 1 - ($ - %%insn_00415258) db 0
    %%insn_00415259:
    or eax,0xffffffffffffffff ; 00415259 83C8FF
    %if ($ - %%insn_00415259) > 3
        %error "LONG_00415259"
    %endif
    times 3 - ($ - %%insn_00415259) db 0
    %%insn_0041525c:
    pop ebx ; 0041525C 5B
    %if ($ - %%insn_0041525c) > 1
        %error "LONG_0041525C"
    %endif
    times 1 - ($ - %%insn_0041525c) db 0
    %%insn_0041525d:
    add esp,0x5c ; 0041525D 83C45C
    %if ($ - %%insn_0041525d) > 3
        %error "LONG_0041525D"
    %endif
    times 3 - ($ - %%insn_0041525d) db 0
    %%insn_00415260:
    ret ; 00415260 C3
    %if ($ - %%insn_00415260) > 1
        %error "LONG_00415260"
    %endif
    times 1 - ($ - %%insn_00415260) db 0
    %if ($ - %%fragment_start) != 158
        %error "function fragment size drift: 004151C3"
    %endif
%endmacro
