; PE virtual entry 004178E0
; Ghidra working symbol: FUN_004178e0
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_004178e0_part_00 0
    %%fragment_start:
func_004178e0:
    %%insn_004178e0:
    push ecx ; 004178E0 51
    %if ($ - %%insn_004178e0) > 1
        %error "LONG_004178E0"
    %endif
    times 1 - ($ - %%insn_004178e0) db 0
    %%insn_004178e1:
    push ebp ; 004178E1 55
    %if ($ - %%insn_004178e1) > 1
        %error "LONG_004178E1"
    %endif
    times 1 - ($ - %%insn_004178e1) db 0
    %%insn_004178e2:
    push esi ; 004178E2 56
    %if ($ - %%insn_004178e2) > 1
        %error "LONG_004178E2"
    %endif
    times 1 - ($ - %%insn_004178e2) db 0
    %%insn_004178e3:
    push edi ; 004178E3 57
    %if ($ - %%insn_004178e3) > 1
        %error "LONG_004178E3"
    %endif
    times 1 - ($ - %%insn_004178e3) db 0
    db 0x33, 0xF6 ; 004178E4 33F6 | xor esi,esi | encoding preserved
    %%insn_004178e6:
    push dword 0xc ; 004178E6 6A0C
    %if ($ - %%insn_004178e6) > 2
        %error "LONG_004178E6"
    %endif
    times 2 - ($ - %%insn_004178e6) db 0
    %%insn_004178e8:
    mov [esp+0x10],esi ; 004178E8 89742410
    %if ($ - %%insn_004178e8) > 4
        %error "LONG_004178E8"
    %endif
    times 4 - ($ - %%insn_004178e8) db 0
    %%insn_004178ec:
    call 0x40df00 ; 004178EC E80F66FFFF
    %if ($ - %%insn_004178ec) > 5
        %error "LONG_004178EC"
    %endif
    times 5 - ($ - %%insn_004178ec) db 0
    %%insn_004178f1:
    add esp,0x4 ; 004178F1 83C404
    %if ($ - %%insn_004178f1) > 3
        %error "LONG_004178F1"
    %endif
    times 3 - ($ - %%insn_004178f1) db 0
    %%insn_004178f4:
    mov [0x421200],esi ; 004178F4 893500124200
    %if ($ - %%insn_004178f4) > 6
        %error "LONG_004178F4"
    %endif
    times 6 - ($ - %%insn_004178f4) db 0
    %%insn_004178fa:
    mov dword [0x41f1f8],0xffffffff ; 004178FA C705F8F14100FFFFFFFF
    %if ($ - %%insn_004178fa) > 10
        %error "LONG_004178FA"
    %endif
    times 10 - ($ - %%insn_004178fa) db 0
    %%insn_00417904:
    mov dword [0x41f1e8],0xffffffff ; 00417904 C705E8F14100FFFFFFFF
    %if ($ - %%insn_00417904) > 10
        %error "LONG_00417904"
    %endif
    times 10 - ($ - %%insn_00417904) db 0
    %%insn_0041790e:
    push dword 0x41ac88 ; 0041790E 6888AC4100
    %if ($ - %%insn_0041790e) > 5
        %error "LONG_0041790E"
    %endif
    times 5 - ($ - %%insn_0041790e) db 0
    %%insn_00417913:
    call 0x418800 ; 00417913 E8E80E0000
    %if ($ - %%insn_00417913) > 5
        %error "LONG_00417913"
    %endif
    times 5 - ($ - %%insn_00417913) db 0
    db 0x8B, 0xE8 ; 00417918 8BE8 | mov ebp,eax | encoding preserved
    %%insn_0041791a:
    add esp,0x4 ; 0041791A 83C404
    %if ($ - %%insn_0041791a) > 3
        %error "LONG_0041791A"
    %endif
    times 3 - ($ - %%insn_0041791a) db 0
    db 0x3B, 0xEE ; 0041791D 3BEE | cmp ebp,esi | encoding preserved
    %%insn_0041791f:
    jnz 0x4179fb ; 0041791F 0F85D6000000
    %if ($ - %%insn_0041791f) > 6
        %error "LONG_0041791F"
    %endif
    times 6 - ($ - %%insn_0041791f) db 0
    %%insn_00417925:
    push dword 0xc ; 00417925 6A0C
    %if ($ - %%insn_00417925) > 2
        %error "LONG_00417925"
    %endif
    times 2 - ($ - %%insn_00417925) db 0
    %%insn_00417927:
    call 0x40df80 ; 00417927 E85466FFFF
    %if ($ - %%insn_00417927) > 5
        %error "LONG_00417927"
    %endif
    times 5 - ($ - %%insn_00417927) db 0
    %%insn_0041792c:
    add esp,0x4 ; 0041792C 83C404
    %if ($ - %%insn_0041792c) > 3
        %error "LONG_0041792C"
    %endif
    times 3 - ($ - %%insn_0041792c) db 0
    %%insn_0041792f:
    push dword 0x421208 ; 0041792F 6808124200
    %if ($ - %%insn_0041792f) > 5
        %error "LONG_0041792F"
    %endif
    times 5 - ($ - %%insn_0041792f) db 0
    %%insn_00417934:
    call dword near [0x4243d4] ; 00417934 FF15D4434200
    %if ($ - %%insn_00417934) > 6
        %error "LONG_00417934"
    %endif
    times 6 - ($ - %%insn_00417934) db 0
    %%insn_0041793a:
    cmp eax,0xffffffffffffffff ; 0041793A 83F8FF
    %if ($ - %%insn_0041793a) > 3
        %error "LONG_0041793A"
    %endif
    times 3 - ($ - %%insn_0041793a) db 0
    %%insn_0041793d:
    jz 0x417bb3 ; 0041793D 0F8470020000
    %if ($ - %%insn_0041793d) > 6
        %error "LONG_0041793D"
    %endif
    times 6 - ($ - %%insn_0041793d) db 0
    %%insn_00417943:
    mov eax,[0x421208] ; 00417943 A108124200
    %if ($ - %%insn_00417943) > 5
        %error "LONG_00417943"
    %endif
    times 5 - ($ - %%insn_00417943) db 0
    %%insn_00417948:
    mov ecx,[0x42125c] ; 00417948 8B0D5C124200
    %if ($ - %%insn_00417948) > 6
        %error "LONG_00417948"
    %endif
    times 6 - ($ - %%insn_00417948) db 0
    db 0x33, 0xFF ; 0041794E 33FF | xor edi,edi | encoding preserved
    %%insn_00417950:
    mov esi,0x1 ; 00417950 BE01000000
    %if ($ - %%insn_00417950) > 5
        %error "LONG_00417950"
    %endif
    times 5 - ($ - %%insn_00417950) db 0
    %%insn_00417955:
    lea eax,[eax+eax*2] ; 00417955 8D0440
    %if ($ - %%insn_00417955) > 3
        %error "LONG_00417955"
    %endif
    times 3 - ($ - %%insn_00417955) db 0
    %%insn_00417958:
    mov [0x421200],esi ; 00417958 893500124200
    %if ($ - %%insn_00417958) > 6
        %error "LONG_00417958"
    %endif
    times 6 - ($ - %%insn_00417958) db 0
    %%insn_0041795e:
    lea eax,[eax+eax*4] ; 0041795E 8D0480
    %if ($ - %%insn_0041795e) > 3
        %error "LONG_0041795E"
    %endif
    times 3 - ($ - %%insn_0041795e) db 0
    %%insn_00417961:
    shl eax,byte 0x2 ; 00417961 C1E002
    %if ($ - %%insn_00417961) > 3
        %error "LONG_00417961"
    %endif
    times 3 - ($ - %%insn_00417961) db 0
    %%insn_00417964:
    cmp [0x42124e],di ; 00417964 66393D4E124200
    %if ($ - %%insn_00417964) > 7
        %error "LONG_00417964"
    %endif
    times 7 - ($ - %%insn_00417964) db 0
    %%insn_0041796b:
    mov [0x41f150],eax ; 0041796B A350F14100
    %if ($ - %%insn_0041796b) > 5
        %error "LONG_0041796B"
    %endif
    times 5 - ($ - %%insn_0041796b) db 0
    %%insn_00417970:
    jz short 0x417980 ; 00417970 740E
    %if ($ - %%insn_00417970) > 2
        %error "LONG_00417970"
    %endif
    times 2 - ($ - %%insn_00417970) db 0
    %%insn_00417972:
    lea edx,[ecx+ecx*2] ; 00417972 8D1449
    %if ($ - %%insn_00417972) > 3
        %error "LONG_00417972"
    %endif
    times 3 - ($ - %%insn_00417972) db 0
    %%insn_00417975:
    lea edx,[edx+edx*4] ; 00417975 8D1492
    %if ($ - %%insn_00417975) > 3
        %error "LONG_00417975"
    %endif
    times 3 - ($ - %%insn_00417975) db 0
    %%insn_00417978:
    lea eax,[eax+edx*4] ; 00417978 8D0490
    %if ($ - %%insn_00417978) > 3
        %error "LONG_00417978"
    %endif
    times 3 - ($ - %%insn_00417978) db 0
    %%insn_0041797b:
    mov [0x41f150],eax ; 0041797B A350F14100
    %if ($ - %%insn_0041797b) > 5
        %error "LONG_0041797B"
    %endif
    times 5 - ($ - %%insn_0041797b) db 0
    %%insn_00417980:
    cmp [0x4212a2],di ; 00417980 66393DA2124200
    %if ($ - %%insn_00417980) > 7
        %error "LONG_00417980"
    %endif
    times 7 - ($ - %%insn_00417980) db 0
    %%insn_00417987:
    jz short 0x4179ab ; 00417987 7422
    %if ($ - %%insn_00417987) > 2
        %error "LONG_00417987"
    %endif
    times 2 - ($ - %%insn_00417987) db 0
    %%insn_00417989:
    mov eax,[0x4212b0] ; 00417989 A1B0124200
    %if ($ - %%insn_00417989) > 5
        %error "LONG_00417989"
    %endif
    times 5 - ($ - %%insn_00417989) db 0
    db 0x3B, 0xC7 ; 0041798E 3BC7 | cmp eax,edi | encoding preserved
    %%insn_00417990:
    jz short 0x4179ab ; 00417990 7419
    %if ($ - %%insn_00417990) > 2
        %error "LONG_00417990"
    %endif
    times 2 - ($ - %%insn_00417990) db 0
    db 0x2B, 0xC1 ; 00417992 2BC1 | sub eax,ecx | encoding preserved
    %%insn_00417994:
    mov [0x41f154],esi ; 00417994 893554F14100
    %if ($ - %%insn_00417994) > 6
        %error "LONG_00417994"
    %endif
    times 6 - ($ - %%insn_00417994) db 0
    %%insn_0041799a:
    lea eax,[eax+eax*2] ; 0041799A 8D0440
    %if ($ - %%insn_0041799a) > 3
        %error "LONG_0041799A"
    %endif
    times 3 - ($ - %%insn_0041799a) db 0
    %%insn_0041799d:
    lea ecx,[eax+eax*4] ; 0041799D 8D0C80
    %if ($ - %%insn_0041799d) > 3
        %error "LONG_0041799D"
    %endif
    times 3 - ($ - %%insn_0041799d) db 0
    %%insn_004179a0:
    shl ecx,byte 0x2 ; 004179A0 C1E102
    %if ($ - %%insn_004179a0) > 3
        %error "LONG_004179A0"
    %endif
    times 3 - ($ - %%insn_004179a0) db 0
    %%insn_004179a3:
    mov [0x41f158],ecx ; 004179A3 890D58F14100
    %if ($ - %%insn_004179a3) > 6
        %error "LONG_004179A3"
    %endif
    times 6 - ($ - %%insn_004179a3) db 0
    %%insn_004179a9:
    jmp short 0x4179b7 ; 004179A9 EB0C
    %if ($ - %%insn_004179a9) > 2
        %error "LONG_004179A9"
    %endif
    times 2 - ($ - %%insn_004179a9) db 0
    %%insn_004179ab:
    mov [0x41f154],edi ; 004179AB 893D54F14100
    %if ($ - %%insn_004179ab) > 6
        %error "LONG_004179AB"
    %endif
    times 6 - ($ - %%insn_004179ab) db 0
    %%insn_004179b1:
    mov [0x41f158],edi ; 004179B1 893D58F14100
    %if ($ - %%insn_004179b1) > 6
        %error "LONG_004179B1"
    %endif
    times 6 - ($ - %%insn_004179b1) db 0
    %%insn_004179b7:
    mov edx,[0x41f1e0] ; 004179B7 8B15E0F14100
    %if ($ - %%insn_004179b7) > 6
        %error "LONG_004179B7"
    %endif
    times 6 - ($ - %%insn_004179b7) db 0
    %%insn_004179bd:
    push dword 0x40 ; 004179BD 6A40
    %if ($ - %%insn_004179bd) > 2
        %error "LONG_004179BD"
    %endif
    times 2 - ($ - %%insn_004179bd) db 0
    %%insn_004179bf:
    push dword 0x42120c ; 004179BF 680C124200
    %if ($ - %%insn_004179bf) > 5
        %error "LONG_004179BF"
    %endif
    times 5 - ($ - %%insn_004179bf) db 0
    %%insn_004179c4:
    push edx ; 004179C4 52
    %if ($ - %%insn_004179c4) > 1
        %error "LONG_004179C4"
    %endif
    times 1 - ($ - %%insn_004179c4) db 0
    %%insn_004179c5:
    call 0x418520 ; 004179C5 E8560B0000
    %if ($ - %%insn_004179c5) > 5
        %error "LONG_004179C5"
    %endif
    times 5 - ($ - %%insn_004179c5) db 0
    %%insn_004179ca:
    mov eax,[0x41f1e4] ; 004179CA A1E4F14100
    %if ($ - %%insn_004179ca) > 5
        %error "LONG_004179CA"
    %endif
    times 5 - ($ - %%insn_004179ca) db 0
    %%insn_004179cf:
    add esp,0xc ; 004179CF 83C40C
    %if ($ - %%insn_004179cf) > 3
        %error "LONG_004179CF"
    %endif
    times 3 - ($ - %%insn_004179cf) db 0
    %%insn_004179d2:
    push dword 0x40 ; 004179D2 6A40
    %if ($ - %%insn_004179d2) > 2
        %error "LONG_004179D2"
    %endif
    times 2 - ($ - %%insn_004179d2) db 0
    %%insn_004179d4:
    push dword 0x421260 ; 004179D4 6860124200
    %if ($ - %%insn_004179d4) > 5
        %error "LONG_004179D4"
    %endif
    times 5 - ($ - %%insn_004179d4) db 0
    %%insn_004179d9:
    push eax ; 004179D9 50
    %if ($ - %%insn_004179d9) > 1
        %error "LONG_004179D9"
    %endif
    times 1 - ($ - %%insn_004179d9) db 0
    %%insn_004179da:
    call 0x418520 ; 004179DA E8410B0000
    %if ($ - %%insn_004179da) > 5
        %error "LONG_004179DA"
    %endif
    times 5 - ($ - %%insn_004179da) db 0
    %%insn_004179df:
    mov ecx,[0x41f1e4] ; 004179DF 8B0DE4F14100
    %if ($ - %%insn_004179df) > 6
        %error "LONG_004179DF"
    %endif
    times 6 - ($ - %%insn_004179df) db 0
    %%insn_004179e5:
    add esp,0xc ; 004179E5 83C40C
    %if ($ - %%insn_004179e5) > 3
        %error "LONG_004179E5"
    %endif
    times 3 - ($ - %%insn_004179e5) db 0
    %%insn_004179e8:
    mov byte [ecx+0x3f],0x0 ; 004179E8 C6413F00
    %if ($ - %%insn_004179e8) > 4
        %error "LONG_004179E8"
    %endif
    times 4 - ($ - %%insn_004179e8) db 0
    %%insn_004179ec:
    mov edx,[0x41f1e0] ; 004179EC 8B15E0F14100
    %if ($ - %%insn_004179ec) > 6
        %error "LONG_004179EC"
    %endif
    times 6 - ($ - %%insn_004179ec) db 0
    %%insn_004179f2:
    mov byte [edx+0x3f],0x0 ; 004179F2 C6423F00
    %if ($ - %%insn_004179f2) > 4
        %error "LONG_004179F2"
    %endif
    times 4 - ($ - %%insn_004179f2) db 0
    %%insn_004179f6:
    pop edi ; 004179F6 5F
    %if ($ - %%insn_004179f6) > 1
        %error "LONG_004179F6"
    %endif
    times 1 - ($ - %%insn_004179f6) db 0
    %%insn_004179f7:
    pop esi ; 004179F7 5E
    %if ($ - %%insn_004179f7) > 1
        %error "LONG_004179F7"
    %endif
    times 1 - ($ - %%insn_004179f7) db 0
    %%insn_004179f8:
    pop ebp ; 004179F8 5D
    %if ($ - %%insn_004179f8) > 1
        %error "LONG_004179F8"
    %endif
    times 1 - ($ - %%insn_004179f8) db 0
    %%insn_004179f9:
    pop ecx ; 004179F9 59
    %if ($ - %%insn_004179f9) > 1
        %error "LONG_004179F9"
    %endif
    times 1 - ($ - %%insn_004179f9) db 0
    %%insn_004179fa:
    ret ; 004179FA C3
    %if ($ - %%insn_004179fa) > 1
        %error "LONG_004179FA"
    %endif
    times 1 - ($ - %%insn_004179fa) db 0
    %%insn_004179fb:
    cmp byte [ebp+0x0],0x0 ; 004179FB 807D0000
    %if ($ - %%insn_004179fb) > 4
        %error "LONG_004179FB"
    %endif
    times 4 - ($ - %%insn_004179fb) db 0
    %%insn_004179ff:
    jz 0x417ba9 ; 004179FF 0F84A4010000
    %if ($ - %%insn_004179ff) > 6
        %error "LONG_004179FF"
    %endif
    times 6 - ($ - %%insn_004179ff) db 0
    %%insn_00417a05:
    mov edi,[0x4212b4] ; 00417A05 8B3DB4124200
    %if ($ - %%insn_00417a05) > 6
        %error "LONG_00417A05"
    %endif
    times 6 - ($ - %%insn_00417a05) db 0
    db 0x3B, 0xFE ; 00417A0B 3BFE | cmp edi,esi | encoding preserved
    %%insn_00417a0d:
    jz short 0x417a44 ; 00417A0D 7435
    %if ($ - %%insn_00417a0d) > 2
        %error "LONG_00417A0D"
    %endif
    times 2 - ($ - %%insn_00417a0d) db 0
    db 0x8B, 0xF7 ; 00417A0F 8BF7 | mov esi,edi | encoding preserved
    db 0x8B, 0xC5 ; 00417A11 8BC5 | mov eax,ebp | encoding preserved
    %%insn_00417a13:
    mov dl,[eax] ; 00417A13 8A10
    %if ($ - %%insn_00417a13) > 2
        %error "LONG_00417A13"
    %endif
    times 2 - ($ - %%insn_00417a13) db 0
    db 0x8A, 0xCA ; 00417A15 8ACA | mov cl,dl | encoding preserved
    %%insn_00417a17:
    cmp dl,[esi] ; 00417A17 3A16
    %if ($ - %%insn_00417a17) > 2
        %error "LONG_00417A17"
    %endif
    times 2 - ($ - %%insn_00417a17) db 0
    %%insn_00417a19:
    jnz short 0x417a37 ; 00417A19 751C
    %if ($ - %%insn_00417a19) > 2
        %error "LONG_00417A19"
    %endif
    times 2 - ($ - %%insn_00417a19) db 0
    %%insn_00417a1b:
    test cl,cl ; 00417A1B 84C9
    %if ($ - %%insn_00417a1b) > 2
        %error "LONG_00417A1B"
    %endif
    times 2 - ($ - %%insn_00417a1b) db 0
    %%insn_00417a1d:
    jz short 0x417a33 ; 00417A1D 7414
    %if ($ - %%insn_00417a1d) > 2
        %error "LONG_00417A1D"
    %endif
    times 2 - ($ - %%insn_00417a1d) db 0
    %%insn_00417a1f:
    mov dl,[eax+0x1] ; 00417A1F 8A5001
    %if ($ - %%insn_00417a1f) > 3
        %error "LONG_00417A1F"
    %endif
    times 3 - ($ - %%insn_00417a1f) db 0
    db 0x8A, 0xCA ; 00417A22 8ACA | mov cl,dl | encoding preserved
    %%insn_00417a24:
    cmp dl,[esi+0x1] ; 00417A24 3A5601
    %if ($ - %%insn_00417a24) > 3
        %error "LONG_00417A24"
    %endif
    times 3 - ($ - %%insn_00417a24) db 0
    %%insn_00417a27:
    jnz short 0x417a37 ; 00417A27 750E
    %if ($ - %%insn_00417a27) > 2
        %error "LONG_00417A27"
    %endif
    times 2 - ($ - %%insn_00417a27) db 0
    %%insn_00417a29:
    add eax,0x2 ; 00417A29 83C002
    %if ($ - %%insn_00417a29) > 3
        %error "LONG_00417A29"
    %endif
    times 3 - ($ - %%insn_00417a29) db 0
    %%insn_00417a2c:
    add esi,0x2 ; 00417A2C 83C602
    %if ($ - %%insn_00417a2c) > 3
        %error "LONG_00417A2C"
    %endif
    times 3 - ($ - %%insn_00417a2c) db 0
    %%insn_00417a2f:
    test cl,cl ; 00417A2F 84C9
    %if ($ - %%insn_00417a2f) > 2
        %error "LONG_00417A2F"
    %endif
    times 2 - ($ - %%insn_00417a2f) db 0
    %%insn_00417a31:
    jnz short 0x417a13 ; 00417A31 75E0
    %if ($ - %%insn_00417a31) > 2
        %error "LONG_00417A31"
    %endif
    times 2 - ($ - %%insn_00417a31) db 0
    db 0x33, 0xC0 ; 00417A33 33C0 | xor eax,eax | encoding preserved
    %%insn_00417a35:
    jmp short 0x417a3c ; 00417A35 EB05
    %if ($ - %%insn_00417a35) > 2
        %error "LONG_00417A35"
    %endif
    times 2 - ($ - %%insn_00417a35) db 0
    db 0x1B, 0xC0 ; 00417A37 1BC0 | sbb eax,eax | encoding preserved
    %%insn_00417a39:
    sbb eax,0xffffffffffffffff ; 00417A39 83D8FF
    %if ($ - %%insn_00417a39) > 3
        %error "LONG_00417A39"
    %endif
    times 3 - ($ - %%insn_00417a39) db 0
    %%insn_00417a3c:
    test eax,eax ; 00417A3C 85C0
    %if ($ - %%insn_00417a3c) > 2
        %error "LONG_00417A3C"
    %endif
    times 2 - ($ - %%insn_00417a3c) db 0
    %%insn_00417a3e:
    jz 0x417ba9 ; 00417A3E 0F8465010000
    %if ($ - %%insn_00417a3e) > 6
        %error "LONG_00417A3E"
    %endif
    times 6 - ($ - %%insn_00417a3e) db 0
    %%insn_00417a44:
    push edi ; 00417A44 57
    %if ($ - %%insn_00417a44) > 1
        %error "LONG_00417A44"
    %endif
    times 1 - ($ - %%insn_00417a44) db 0
    %%insn_00417a45:
    call 0x40c9a0 ; 00417A45 E8564FFFFF
    %if ($ - %%insn_00417a45) > 5
        %error "LONG_00417A45"
    %endif
    times 5 - ($ - %%insn_00417a45) db 0
    db 0x8B, 0xFD ; 00417A4A 8BFD | mov edi,ebp | encoding preserved
    %%insn_00417a4c:
    or ecx,0xffffffffffffffff ; 00417A4C 83C9FF
    %if ($ - %%insn_00417a4c) > 3
        %error "LONG_00417A4C"
    %endif
    times 3 - ($ - %%insn_00417a4c) db 0
    db 0x33, 0xC0 ; 00417A4F 33C0 | xor eax,eax | encoding preserved
    %%insn_00417a51:
    add esp,0x4 ; 00417A51 83C404
    %if ($ - %%insn_00417a51) > 3
        %error "LONG_00417A51"
    %endif
    times 3 - ($ - %%insn_00417a51) db 0
    %%insn_00417a54:
    repne scasb ; 00417A54 F2AE
    %if ($ - %%insn_00417a54) > 2
        %error "LONG_00417A54"
    %endif
    times 2 - ($ - %%insn_00417a54) db 0
    %%insn_00417a56:
    not ecx ; 00417A56 F7D1
    %if ($ - %%insn_00417a56) > 2
        %error "LONG_00417A56"
    %endif
    times 2 - ($ - %%insn_00417a56) db 0
    %%insn_00417a58:
    push ecx ; 00417A58 51
    %if ($ - %%insn_00417a58) > 1
        %error "LONG_00417A58"
    %endif
    times 1 - ($ - %%insn_00417a58) db 0
    %%insn_00417a59:
    call 0x40cdc0 ; 00417A59 E86253FFFF
    %if ($ - %%insn_00417a59) > 5
        %error "LONG_00417A59"
    %endif
    times 5 - ($ - %%insn_00417a59) db 0
    db 0x8B, 0xD0 ; 00417A5E 8BD0 | mov edx,eax | encoding preserved
    %%insn_00417a60:
    add esp,0x4 ; 00417A60 83C404
    %if ($ - %%insn_00417a60) > 3
        %error "LONG_00417A60"
    %endif
    times 3 - ($ - %%insn_00417a60) db 0
    %%insn_00417a63:
    test edx,edx ; 00417A63 85D2
    %if ($ - %%insn_00417a63) > 2
        %error "LONG_00417A63"
    %endif
    times 2 - ($ - %%insn_00417a63) db 0
    %%insn_00417a65:
    mov [0x4212b4],edx ; 00417A65 8915B4124200
    %if ($ - %%insn_00417a65) > 6
        %error "LONG_00417A65"
    %endif
    times 6 - ($ - %%insn_00417a65) db 0
    %%insn_00417a6b:
    jz 0x417ba9 ; 00417A6B 0F8438010000
    %if ($ - %%insn_00417a6b) > 6
        %error "LONG_00417A6B"
    %endif
    times 6 - ($ - %%insn_00417a6b) db 0
    db 0x8B, 0xFD ; 00417A71 8BFD | mov edi,ebp | encoding preserved
    %%insn_00417a73:
    or ecx,0xffffffffffffffff ; 00417A73 83C9FF
    %if ($ - %%insn_00417a73) > 3
        %error "LONG_00417A73"
    %endif
    times 3 - ($ - %%insn_00417a73) db 0
    db 0x33, 0xC0 ; 00417A76 33C0 | xor eax,eax | encoding preserved
    %%insn_00417a78:
    push dword 0xc ; 00417A78 6A0C
    %if ($ - %%insn_00417a78) > 2
        %error "LONG_00417A78"
    %endif
    times 2 - ($ - %%insn_00417a78) db 0
    %%insn_00417a7a:
    repne scasb ; 00417A7A F2AE
    %if ($ - %%insn_00417a7a) > 2
        %error "LONG_00417A7A"
    %endif
    times 2 - ($ - %%insn_00417a7a) db 0
    %%insn_00417a7c:
    not ecx ; 00417A7C F7D1
    %if ($ - %%insn_00417a7c) > 2
        %error "LONG_00417A7C"
    %endif
    times 2 - ($ - %%insn_00417a7c) db 0
    db 0x2B, 0xF9 ; 00417A7E 2BF9 | sub edi,ecx | encoding preserved
    db 0x8B, 0xC1 ; 00417A80 8BC1 | mov eax,ecx | encoding preserved
    db 0x8B, 0xF7 ; 00417A82 8BF7 | mov esi,edi | encoding preserved
    db 0x8B, 0xFA ; 00417A84 8BFA | mov edi,edx | encoding preserved
    %%insn_00417a86:
    shr ecx,byte 0x2 ; 00417A86 C1E902
    %if ($ - %%insn_00417a86) > 3
        %error "LONG_00417A86"
    %endif
    times 3 - ($ - %%insn_00417a86) db 0
    %%insn_00417a89:
    rep movsd ; 00417A89 F3A5
    %if ($ - %%insn_00417a89) > 2
        %error "LONG_00417A89"
    %endif
    times 2 - ($ - %%insn_00417a89) db 0
    db 0x8B, 0xC8 ; 00417A8B 8BC8 | mov ecx,eax | encoding preserved
    %%insn_00417a8d:
    and ecx,0x3 ; 00417A8D 83E103
    %if ($ - %%insn_00417a8d) > 3
        %error "LONG_00417A8D"
    %endif
    times 3 - ($ - %%insn_00417a8d) db 0
    %%insn_00417a90:
    rep movsb ; 00417A90 F3A4
    %if ($ - %%insn_00417a90) > 2
        %error "LONG_00417A90"
    %endif
    times 2 - ($ - %%insn_00417a90) db 0
    %%insn_00417a92:
    call 0x40df80 ; 00417A92 E8E964FFFF
    %if ($ - %%insn_00417a92) > 5
        %error "LONG_00417A92"
    %endif
    times 5 - ($ - %%insn_00417a92) db 0
    %%insn_00417a97:
    mov ecx,[0x41f1e0] ; 00417A97 8B0DE0F14100
    %if ($ - %%insn_00417a97) > 6
        %error "LONG_00417A97"
    %endif
    times 6 - ($ - %%insn_00417a97) db 0
    %%insn_00417a9d:
    add esp,0x4 ; 00417A9D 83C404
    %if ($ - %%insn_00417a9d) > 3
        %error "LONG_00417A9D"
    %endif
    times 3 - ($ - %%insn_00417a9d) db 0
    %%insn_00417aa0:
    push dword 0x3 ; 00417AA0 6A03
    %if ($ - %%insn_00417aa0) > 2
        %error "LONG_00417AA0"
    %endif
    times 2 - ($ - %%insn_00417aa0) db 0
    %%insn_00417aa2:
    push ebp ; 00417AA2 55
    %if ($ - %%insn_00417aa2) > 1
        %error "LONG_00417AA2"
    %endif
    times 1 - ($ - %%insn_00417aa2) db 0
    %%insn_00417aa3:
    push ecx ; 00417AA3 51
    %if ($ - %%insn_00417aa3) > 1
        %error "LONG_00417AA3"
    %endif
    times 1 - ($ - %%insn_00417aa3) db 0
    %%insn_00417aa4:
    call 0x414280 ; 00417AA4 E8D7C7FFFF
    %if ($ - %%insn_00417aa4) > 5
        %error "LONG_00417AA4"
    %endif
    times 5 - ($ - %%insn_00417aa4) db 0
    %%insn_00417aa9:
    mov edx,[0x41f1e0] ; 00417AA9 8B15E0F14100
    %if ($ - %%insn_00417aa9) > 6
        %error "LONG_00417AA9"
    %endif
    times 6 - ($ - %%insn_00417aa9) db 0
    %%insn_00417aaf:
    add ebp,0x3 ; 00417AAF 83C503
    %if ($ - %%insn_00417aaf) > 3
        %error "LONG_00417AAF"
    %endif
    times 3 - ($ - %%insn_00417aaf) db 0
    %%insn_00417ab2:
    add esp,0xc ; 00417AB2 83C40C
    %if ($ - %%insn_00417ab2) > 3
        %error "LONG_00417AB2"
    %endif
    times 3 - ($ - %%insn_00417ab2) db 0
    %%insn_00417ab5:
    mov byte [edx+0x3],0x0 ; 00417AB5 C6420300
    %if ($ - %%insn_00417ab5) > 4
        %error "LONG_00417AB5"
    %endif
    times 4 - ($ - %%insn_00417ab5) db 0
    %%insn_00417ab9:
    mov al,[ebp+0x0] ; 00417AB9 8A4500
    %if ($ - %%insn_00417ab9) > 3
        %error "LONG_00417AB9"
    %endif
    times 3 - ($ - %%insn_00417ab9) db 0
    %%insn_00417abc:
    cmp al,0x2d ; 00417ABC 3C2D
    %if ($ - %%insn_00417abc) > 2
        %error "LONG_00417ABC"
    %endif
    times 2 - ($ - %%insn_00417abc) db 0
    %%insn_00417abe:
    jnz short 0x417ac8 ; 00417ABE 7508
    %if ($ - %%insn_00417abe) > 2
        %error "LONG_00417ABE"
    %endif
    times 2 - ($ - %%insn_00417abe) db 0
    %%insn_00417ac0:
    mov esi,0x1 ; 00417AC0 BE01000000
    %if ($ - %%insn_00417ac0) > 5
        %error "LONG_00417AC0"
    %endif
    times 5 - ($ - %%insn_00417ac0) db 0
    %%insn_00417ac5:
    inc ebp ; 00417AC5 45
    %if ($ - %%insn_00417ac5) > 1
        %error "LONG_00417AC5"
    %endif
    times 1 - ($ - %%insn_00417ac5) db 0
    %%insn_00417ac6:
    jmp short 0x417acc ; 00417AC6 EB04
    %if ($ - %%insn_00417ac6) > 2
        %error "LONG_00417AC6"
    %endif
    times 2 - ($ - %%insn_00417ac6) db 0
    %%insn_00417ac8:
    mov esi,[esp+0xc] ; 00417AC8 8B74240C
    %if ($ - %%insn_00417ac8) > 4
        %error "LONG_00417AC8"
    %endif
    times 4 - ($ - %%insn_00417ac8) db 0
    %%insn_00417acc:
    push ebp ; 00417ACC 55
    %if ($ - %%insn_00417acc) > 1
        %error "LONG_00417ACC"
    %endif
    times 1 - ($ - %%insn_00417acc) db 0
    %%insn_00417acd:
    call 0x417520 ; 00417ACD E84EFAFFFF
    %if ($ - %%insn_00417acd) > 5
        %error "LONG_00417ACD"
    %endif
    times 5 - ($ - %%insn_00417acd) db 0
    %%insn_00417ad2:
    lea eax,[eax+eax*4] ; 00417AD2 8D0480
    %if ($ - %%insn_00417ad2) > 3
        %error "LONG_00417AD2"
    %endif
    times 3 - ($ - %%insn_00417ad2) db 0
    %%insn_00417ad5:
    add esp,0x4 ; 00417AD5 83C404
    %if ($ - %%insn_00417ad5) > 3
        %error "LONG_00417AD5"
    %endif
    times 3 - ($ - %%insn_00417ad5) db 0
    %%insn_00417ad8:
    lea eax,[eax+eax*4] ; 00417AD8 8D0480
    %if ($ - %%insn_00417ad8) > 3
        %error "LONG_00417AD8"
    %endif
    times 3 - ($ - %%insn_00417ad8) db 0
    %%insn_00417adb:
    lea ecx,[eax+eax*8] ; 00417ADB 8D0CC0
    %if ($ - %%insn_00417adb) > 3
        %error "LONG_00417ADB"
    %endif
    times 3 - ($ - %%insn_00417adb) db 0
    %%insn_00417ade:
    shl ecx,byte 0x4 ; 00417ADE C1E104
    %if ($ - %%insn_00417ade) > 3
        %error "LONG_00417ADE"
    %endif
    times 3 - ($ - %%insn_00417ade) db 0
    %%insn_00417ae1:
    mov [0x41f150],ecx ; 00417AE1 890D50F14100
    %if ($ - %%insn_00417ae1) > 6
        %error "LONG_00417AE1"
    %endif
    times 6 - ($ - %%insn_00417ae1) db 0
    %%insn_00417ae7:
    mov al,[ebp+0x0] ; 00417AE7 8A4500
    %if ($ - %%insn_00417ae7) > 3
        %error "LONG_00417AE7"
    %endif
    times 3 - ($ - %%insn_00417ae7) db 0
    %%insn_00417aea:
    cmp al,0x2b ; 00417AEA 3C2B
    %if ($ - %%insn_00417aea) > 2
        %error "LONG_00417AEA"
    %endif
    times 2 - ($ - %%insn_00417aea) db 0
    %%insn_00417aec:
    jz short 0x417af6 ; 00417AEC 7408
    %if ($ - %%insn_00417aec) > 2
        %error "LONG_00417AEC"
    %endif
    times 2 - ($ - %%insn_00417aec) db 0
    %%insn_00417aee:
    cmp al,0x30 ; 00417AEE 3C30
    %if ($ - %%insn_00417aee) > 2
        %error "LONG_00417AEE"
    %endif
    times 2 - ($ - %%insn_00417aee) db 0
    %%insn_00417af0:
    jl short 0x417af9 ; 00417AF0 7C07
    %if ($ - %%insn_00417af0) > 2
        %error "LONG_00417AF0"
    %endif
    times 2 - ($ - %%insn_00417af0) db 0
    %%insn_00417af2:
    cmp al,0x39 ; 00417AF2 3C39
    %if ($ - %%insn_00417af2) > 2
        %error "LONG_00417AF2"
    %endif
    times 2 - ($ - %%insn_00417af2) db 0
    %%insn_00417af4:
    jg short 0x417af9 ; 00417AF4 7F03
    %if ($ - %%insn_00417af4) > 2
        %error "LONG_00417AF4"
    %endif
    times 2 - ($ - %%insn_00417af4) db 0
    %%insn_00417af6:
    inc ebp ; 00417AF6 45
    %if ($ - %%insn_00417af6) > 1
        %error "LONG_00417AF6"
    %endif
    times 1 - ($ - %%insn_00417af6) db 0
    %%insn_00417af7:
    jmp short 0x417ae7 ; 00417AF7 EBEE
    %if ($ - %%insn_00417af7) > 2
        %error "LONG_00417AF7"
    %endif
    times 2 - ($ - %%insn_00417af7) db 0
    %%insn_00417af9:
    cmp byte [ebp+0x0],0x3a ; 00417AF9 807D003A
    %if ($ - %%insn_00417af9) > 4
        %error "LONG_00417AF9"
    %endif
    times 4 - ($ - %%insn_00417af9) db 0
    %%insn_00417afd:
    jnz short 0x417b62 ; 00417AFD 7563
    %if ($ - %%insn_00417afd) > 2
        %error "LONG_00417AFD"
    %endif
    times 2 - ($ - %%insn_00417afd) db 0
    %%insn_00417aff:
    inc ebp ; 00417AFF 45
    %if ($ - %%insn_00417aff) > 1
        %error "LONG_00417AFF"
    %endif
    times 1 - ($ - %%insn_00417aff) db 0
    %%insn_00417b00:
    push ebp ; 00417B00 55
    %if ($ - %%insn_00417b00) > 1
        %error "LONG_00417B00"
    %endif
    times 1 - ($ - %%insn_00417b00) db 0
    %%insn_00417b01:
    call 0x417520 ; 00417B01 E81AFAFFFF
    %if ($ - %%insn_00417b01) > 5
        %error "LONG_00417B01"
    %endif
    times 5 - ($ - %%insn_00417b01) db 0
    %%insn_00417b06:
    mov ecx,[0x41f150] ; 00417B06 8B0D50F14100
    %if ($ - %%insn_00417b06) > 6
        %error "LONG_00417B06"
    %endif
    times 6 - ($ - %%insn_00417b06) db 0
    %%insn_00417b0c:
    lea eax,[eax+eax*2] ; 00417B0C 8D0440
    %if ($ - %%insn_00417b0c) > 3
        %error "LONG_00417B0C"
    %endif
    times 3 - ($ - %%insn_00417b0c) db 0
    %%insn_00417b0f:
    add esp,0x4 ; 00417B0F 83C404
    %if ($ - %%insn_00417b0f) > 3
        %error "LONG_00417B0F"
    %endif
    times 3 - ($ - %%insn_00417b0f) db 0
    %%insn_00417b12:
    lea eax,[eax+eax*4] ; 00417B12 8D0480
    %if ($ - %%insn_00417b12) > 3
        %error "LONG_00417B12"
    %endif
    times 3 - ($ - %%insn_00417b12) db 0
    %%insn_00417b15:
    lea ecx,[ecx+eax*4] ; 00417B15 8D0C81
    %if ($ - %%insn_00417b15) > 3
        %error "LONG_00417B15"
    %endif
    times 3 - ($ - %%insn_00417b15) db 0
    %%insn_00417b18:
    mov [0x41f150],ecx ; 00417B18 890D50F14100
    %if ($ - %%insn_00417b18) > 6
        %error "LONG_00417B18"
    %endif
    times 6 - ($ - %%insn_00417b18) db 0
    %%insn_00417b1e:
    mov al,[ebp+0x0] ; 00417B1E 8A4500
    %if ($ - %%insn_00417b1e) > 3
        %error "LONG_00417B1E"
    %endif
    times 3 - ($ - %%insn_00417b1e) db 0
    %%insn_00417b21:
    cmp al,0x30 ; 00417B21 3C30
    %if ($ - %%insn_00417b21) > 2
        %error "LONG_00417B21"
    %endif
    times 2 - ($ - %%insn_00417b21) db 0
    %%insn_00417b23:
    jl short 0x417b31 ; 00417B23 7C0C
    %if ($ - %%insn_00417b23) > 2
        %error "LONG_00417B23"
    %endif
    times 2 - ($ - %%insn_00417b23) db 0
    %%insn_00417b25:
    cmp al,0x39 ; 00417B25 3C39
    %if ($ - %%insn_00417b25) > 2
        %error "LONG_00417B25"
    %endif
    times 2 - ($ - %%insn_00417b25) db 0
    %%insn_00417b27:
    jg short 0x417b31 ; 00417B27 7F08
    %if ($ - %%insn_00417b27) > 2
        %error "LONG_00417B27"
    %endif
    times 2 - ($ - %%insn_00417b27) db 0
    %%insn_00417b29:
    mov al,[ebp+0x1] ; 00417B29 8A4501
    %if ($ - %%insn_00417b29) > 3
        %error "LONG_00417B29"
    %endif
    times 3 - ($ - %%insn_00417b29) db 0
    %%insn_00417b2c:
    inc ebp ; 00417B2C 45
    %if ($ - %%insn_00417b2c) > 1
        %error "LONG_00417B2C"
    %endif
    times 1 - ($ - %%insn_00417b2c) db 0
    %%insn_00417b2d:
    cmp al,0x30 ; 00417B2D 3C30
    %if ($ - %%insn_00417b2d) > 2
        %error "LONG_00417B2D"
    %endif
    times 2 - ($ - %%insn_00417b2d) db 0
    %%insn_00417b2f:
    jnl short 0x417b25 ; 00417B2F 7DF4
    %if ($ - %%insn_00417b2f) > 2
        %error "LONG_00417B2F"
    %endif
    times 2 - ($ - %%insn_00417b2f) db 0
    %%insn_00417b31:
    cmp byte [ebp+0x0],0x3a ; 00417B31 807D003A
    %if ($ - %%insn_00417b31) > 4
        %error "LONG_00417B31"
    %endif
    times 4 - ($ - %%insn_00417b31) db 0
    %%insn_00417b35:
    jnz short 0x417b62 ; 00417B35 752B
    %if ($ - %%insn_00417b35) > 2
        %error "LONG_00417B35"
    %endif
    times 2 - ($ - %%insn_00417b35) db 0
    %%insn_00417b37:
    inc ebp ; 00417B37 45
    %if ($ - %%insn_00417b37) > 1
        %error "LONG_00417B37"
    %endif
    times 1 - ($ - %%insn_00417b37) db 0
    %%insn_00417b38:
    push ebp ; 00417B38 55
    %if ($ - %%insn_00417b38) > 1
        %error "LONG_00417B38"
    %endif
    times 1 - ($ - %%insn_00417b38) db 0
    %%insn_00417b39:
    call 0x417520 ; 00417B39 E8E2F9FFFF
    %if ($ - %%insn_00417b39) > 5
        %error "LONG_00417B39"
    %endif
    times 5 - ($ - %%insn_00417b39) db 0
    %%insn_00417b3e:
    mov ecx,[0x41f150] ; 00417B3E 8B0D50F14100
    %if ($ - %%insn_00417b3e) > 6
        %error "LONG_00417B3E"
    %endif
    times 6 - ($ - %%insn_00417b3e) db 0
    %%insn_00417b44:
    add esp,0x4 ; 00417B44 83C404
    %if ($ - %%insn_00417b44) > 3
        %error "LONG_00417B44"
    %endif
    times 3 - ($ - %%insn_00417b44) db 0
    db 0x03, 0xC8 ; 00417B47 03C8 | add ecx,eax | encoding preserved
    %%insn_00417b49:
    mov [0x41f150],ecx ; 00417B49 890D50F14100
    %if ($ - %%insn_00417b49) > 6
        %error "LONG_00417B49"
    %endif
    times 6 - ($ - %%insn_00417b49) db 0
    %%insn_00417b4f:
    mov al,[ebp+0x0] ; 00417B4F 8A4500
    %if ($ - %%insn_00417b4f) > 3
        %error "LONG_00417B4F"
    %endif
    times 3 - ($ - %%insn_00417b4f) db 0
    %%insn_00417b52:
    cmp al,0x30 ; 00417B52 3C30
    %if ($ - %%insn_00417b52) > 2
        %error "LONG_00417B52"
    %endif
    times 2 - ($ - %%insn_00417b52) db 0
    %%insn_00417b54:
    jl short 0x417b62 ; 00417B54 7C0C
    %if ($ - %%insn_00417b54) > 2
        %error "LONG_00417B54"
    %endif
    times 2 - ($ - %%insn_00417b54) db 0
    %%insn_00417b56:
    cmp al,0x39 ; 00417B56 3C39
    %if ($ - %%insn_00417b56) > 2
        %error "LONG_00417B56"
    %endif
    times 2 - ($ - %%insn_00417b56) db 0
    %%insn_00417b58:
    jg short 0x417b62 ; 00417B58 7F08
    %if ($ - %%insn_00417b58) > 2
        %error "LONG_00417B58"
    %endif
    times 2 - ($ - %%insn_00417b58) db 0
    %%insn_00417b5a:
    mov al,[ebp+0x1] ; 00417B5A 8A4501
    %if ($ - %%insn_00417b5a) > 3
        %error "LONG_00417B5A"
    %endif
    times 3 - ($ - %%insn_00417b5a) db 0
    %%insn_00417b5d:
    inc ebp ; 00417B5D 45
    %if ($ - %%insn_00417b5d) > 1
        %error "LONG_00417B5D"
    %endif
    times 1 - ($ - %%insn_00417b5d) db 0
    %%insn_00417b5e:
    cmp al,0x30 ; 00417B5E 3C30
    %if ($ - %%insn_00417b5e) > 2
        %error "LONG_00417B5E"
    %endif
    times 2 - ($ - %%insn_00417b5e) db 0
    %%insn_00417b60:
    jnl short 0x417b56 ; 00417B60 7DF4
    %if ($ - %%insn_00417b60) > 2
        %error "LONG_00417B60"
    %endif
    times 2 - ($ - %%insn_00417b60) db 0
    %%insn_00417b62:
    test esi,esi ; 00417B62 85F6
    %if ($ - %%insn_00417b62) > 2
        %error "LONG_00417B62"
    %endif
    times 2 - ($ - %%insn_00417b62) db 0
    %%insn_00417b64:
    jz short 0x417b6e ; 00417B64 7408
    %if ($ - %%insn_00417b64) > 2
        %error "LONG_00417B64"
    %endif
    times 2 - ($ - %%insn_00417b64) db 0
    %%insn_00417b66:
    neg ecx ; 00417B66 F7D9
    %if ($ - %%insn_00417b66) > 2
        %error "LONG_00417B66"
    %endif
    times 2 - ($ - %%insn_00417b66) db 0
    %%insn_00417b68:
    mov [0x41f150],ecx ; 00417B68 890D50F14100
    %if ($ - %%insn_00417b68) > 6
        %error "LONG_00417B68"
    %endif
    times 6 - ($ - %%insn_00417b68) db 0
    %%insn_00417b6e:
    movsx eax,byte [ebp+0x0] ; 00417B6E 0FBE4500
    %if ($ - %%insn_00417b6e) > 4
        %error "LONG_00417B6E"
    %endif
    times 4 - ($ - %%insn_00417b6e) db 0
    %%insn_00417b72:
    test eax,eax ; 00417B72 85C0
    %if ($ - %%insn_00417b72) > 2
        %error "LONG_00417B72"
    %endif
    times 2 - ($ - %%insn_00417b72) db 0
    %%insn_00417b74:
    mov [0x41f154],eax ; 00417B74 A354F14100
    %if ($ - %%insn_00417b74) > 5
        %error "LONG_00417B74"
    %endif
    times 5 - ($ - %%insn_00417b74) db 0
    %%insn_00417b79:
    jz short 0x417b9b ; 00417B79 7420
    %if ($ - %%insn_00417b79) > 2
        %error "LONG_00417B79"
    %endif
    times 2 - ($ - %%insn_00417b79) db 0
    %%insn_00417b7b:
    mov edx,[0x41f1e4] ; 00417B7B 8B15E4F14100
    %if ($ - %%insn_00417b7b) > 6
        %error "LONG_00417B7B"
    %endif
    times 6 - ($ - %%insn_00417b7b) db 0
    %%insn_00417b81:
    push dword 0x3 ; 00417B81 6A03
    %if ($ - %%insn_00417b81) > 2
        %error "LONG_00417B81"
    %endif
    times 2 - ($ - %%insn_00417b81) db 0
    %%insn_00417b83:
    push ebp ; 00417B83 55
    %if ($ - %%insn_00417b83) > 1
        %error "LONG_00417B83"
    %endif
    times 1 - ($ - %%insn_00417b83) db 0
    %%insn_00417b84:
    push edx ; 00417B84 52
    %if ($ - %%insn_00417b84) > 1
        %error "LONG_00417B84"
    %endif
    times 1 - ($ - %%insn_00417b84) db 0
    %%insn_00417b85:
    call 0x414280 ; 00417B85 E8F6C6FFFF
    %if ($ - %%insn_00417b85) > 5
        %error "LONG_00417B85"
    %endif
    times 5 - ($ - %%insn_00417b85) db 0
    %%insn_00417b8a:
    mov eax,[0x41f1e4] ; 00417B8A A1E4F14100
    %if ($ - %%insn_00417b8a) > 5
        %error "LONG_00417B8A"
    %endif
    times 5 - ($ - %%insn_00417b8a) db 0
    %%insn_00417b8f:
    add esp,0xc ; 00417B8F 83C40C
    %if ($ - %%insn_00417b8f) > 3
        %error "LONG_00417B8F"
    %endif
    times 3 - ($ - %%insn_00417b8f) db 0
    %%insn_00417b92:
    mov byte [eax+0x3],0x0 ; 00417B92 C6400300
    %if ($ - %%insn_00417b92) > 4
        %error "LONG_00417B92"
    %endif
    times 4 - ($ - %%insn_00417b92) db 0
    %%insn_00417b96:
    pop edi ; 00417B96 5F
    %if ($ - %%insn_00417b96) > 1
        %error "LONG_00417B96"
    %endif
    times 1 - ($ - %%insn_00417b96) db 0
    %%insn_00417b97:
    pop esi ; 00417B97 5E
    %if ($ - %%insn_00417b97) > 1
        %error "LONG_00417B97"
    %endif
    times 1 - ($ - %%insn_00417b97) db 0
    %%insn_00417b98:
    pop ebp ; 00417B98 5D
    %if ($ - %%insn_00417b98) > 1
        %error "LONG_00417B98"
    %endif
    times 1 - ($ - %%insn_00417b98) db 0
    %%insn_00417b99:
    pop ecx ; 00417B99 59
    %if ($ - %%insn_00417b99) > 1
        %error "LONG_00417B99"
    %endif
    times 1 - ($ - %%insn_00417b99) db 0
    %%insn_00417b9a:
    ret ; 00417B9A C3
    %if ($ - %%insn_00417b9a) > 1
        %error "LONG_00417B9A"
    %endif
    times 1 - ($ - %%insn_00417b9a) db 0
    %%insn_00417b9b:
    mov ecx,[0x41f1e4] ; 00417B9B 8B0DE4F14100
    %if ($ - %%insn_00417b9b) > 6
        %error "LONG_00417B9B"
    %endif
    times 6 - ($ - %%insn_00417b9b) db 0
    %%insn_00417ba1:
    mov byte [ecx],0x0 ; 00417BA1 C60100
    %if ($ - %%insn_00417ba1) > 3
        %error "LONG_00417BA1"
    %endif
    times 3 - ($ - %%insn_00417ba1) db 0
    %%insn_00417ba4:
    pop edi ; 00417BA4 5F
    %if ($ - %%insn_00417ba4) > 1
        %error "LONG_00417BA4"
    %endif
    times 1 - ($ - %%insn_00417ba4) db 0
    %%insn_00417ba5:
    pop esi ; 00417BA5 5E
    %if ($ - %%insn_00417ba5) > 1
        %error "LONG_00417BA5"
    %endif
    times 1 - ($ - %%insn_00417ba5) db 0
    %%insn_00417ba6:
    pop ebp ; 00417BA6 5D
    %if ($ - %%insn_00417ba6) > 1
        %error "LONG_00417BA6"
    %endif
    times 1 - ($ - %%insn_00417ba6) db 0
    %%insn_00417ba7:
    pop ecx ; 00417BA7 59
    %if ($ - %%insn_00417ba7) > 1
        %error "LONG_00417BA7"
    %endif
    times 1 - ($ - %%insn_00417ba7) db 0
    %%insn_00417ba8:
    ret ; 00417BA8 C3
    %if ($ - %%insn_00417ba8) > 1
        %error "LONG_00417BA8"
    %endif
    times 1 - ($ - %%insn_00417ba8) db 0
    %%insn_00417ba9:
    push dword 0xc ; 00417BA9 6A0C
    %if ($ - %%insn_00417ba9) > 2
        %error "LONG_00417BA9"
    %endif
    times 2 - ($ - %%insn_00417ba9) db 0
    %%insn_00417bab:
    call 0x40df80 ; 00417BAB E8D063FFFF
    %if ($ - %%insn_00417bab) > 5
        %error "LONG_00417BAB"
    %endif
    times 5 - ($ - %%insn_00417bab) db 0
    %%insn_00417bb0:
    add esp,0x4 ; 00417BB0 83C404
    %if ($ - %%insn_00417bb0) > 3
        %error "LONG_00417BB0"
    %endif
    times 3 - ($ - %%insn_00417bb0) db 0
    %%insn_00417bb3:
    pop edi ; 00417BB3 5F
    %if ($ - %%insn_00417bb3) > 1
        %error "LONG_00417BB3"
    %endif
    times 1 - ($ - %%insn_00417bb3) db 0
    %%insn_00417bb4:
    pop esi ; 00417BB4 5E
    %if ($ - %%insn_00417bb4) > 1
        %error "LONG_00417BB4"
    %endif
    times 1 - ($ - %%insn_00417bb4) db 0
    %%insn_00417bb5:
    pop ebp ; 00417BB5 5D
    %if ($ - %%insn_00417bb5) > 1
        %error "LONG_00417BB5"
    %endif
    times 1 - ($ - %%insn_00417bb5) db 0
    %%insn_00417bb6:
    pop ecx ; 00417BB6 59
    %if ($ - %%insn_00417bb6) > 1
        %error "LONG_00417BB6"
    %endif
    times 1 - ($ - %%insn_00417bb6) db 0
    %%insn_00417bb7:
    ret ; 00417BB7 C3
    %if ($ - %%insn_00417bb7) > 1
        %error "LONG_00417BB7"
    %endif
    times 1 - ($ - %%insn_00417bb7) db 0
    %if ($ - %%fragment_start) != 728
        %error "function fragment size drift: 004178E0"
    %endif
%endmacro
