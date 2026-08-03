; PE virtual entry 00414900
; Ghidra working symbol: FUN_00414900
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00414900_part_00 0
    %%fragment_start:
func_00414900:
    %%insn_00414900:
    mov eax,[0x4211bc] ; 00414900 A1BC114200
    %if ($ - %%insn_00414900) > 5
        %error "LONG_00414900"
    %endif
    times 5 - ($ - %%insn_00414900) db 0
    %%insn_00414905:
    push ebx ; 00414905 53
    %if ($ - %%insn_00414905) > 1
        %error "LONG_00414905"
    %endif
    times 1 - ($ - %%insn_00414905) db 0
    %%insn_00414906:
    mov ebx,[0x42449c] ; 00414906 8B1D9C444200
    %if ($ - %%insn_00414906) > 6
        %error "LONG_00414906"
    %endif
    times 6 - ($ - %%insn_00414906) db 0
    %%insn_0041490c:
    push ebp ; 0041490C 55
    %if ($ - %%insn_0041490c) > 1
        %error "LONG_0041490C"
    %endif
    times 1 - ($ - %%insn_0041490c) db 0
    %%insn_0041490d:
    push esi ; 0041490D 56
    %if ($ - %%insn_0041490d) > 1
        %error "LONG_0041490D"
    %endif
    times 1 - ($ - %%insn_0041490d) db 0
    %%insn_0041490e:
    push edi ; 0041490E 57
    %if ($ - %%insn_0041490e) > 1
        %error "LONG_0041490E"
    %endif
    times 1 - ($ - %%insn_0041490e) db 0
    %%insn_0041490f:
    test eax,eax ; 0041490F 85C0
    %if ($ - %%insn_0041490f) > 2
        %error "LONG_0041490F"
    %endif
    times 2 - ($ - %%insn_0041490f) db 0
    %%insn_00414911:
    jnz short 0x41495c ; 00414911 7549
    %if ($ - %%insn_00414911) > 2
        %error "LONG_00414911"
    %endif
    times 2 - ($ - %%insn_00414911) db 0
    %%insn_00414913:
    push dword 0x0 ; 00414913 6A00
    %if ($ - %%insn_00414913) > 2
        %error "LONG_00414913"
    %endif
    times 2 - ($ - %%insn_00414913) db 0
    %%insn_00414915:
    push dword 0x0 ; 00414915 6A00
    %if ($ - %%insn_00414915) > 2
        %error "LONG_00414915"
    %endif
    times 2 - ($ - %%insn_00414915) db 0
    %%insn_00414917:
    push dword 0x1 ; 00414917 6A01
    %if ($ - %%insn_00414917) > 2
        %error "LONG_00414917"
    %endif
    times 2 - ($ - %%insn_00414917) db 0
    %%insn_00414919:
    push dword 0x41aad8 ; 00414919 68D8AA4100
    %if ($ - %%insn_00414919) > 5
        %error "LONG_00414919"
    %endif
    times 5 - ($ - %%insn_00414919) db 0
    %%insn_0041491e:
    push dword 0x100 ; 0041491E 6800010000
    %if ($ - %%insn_0041491e) > 5
        %error "LONG_0041491E"
    %endif
    times 5 - ($ - %%insn_0041491e) db 0
    %%insn_00414923:
    push dword 0x0 ; 00414923 6A00
    %if ($ - %%insn_00414923) > 2
        %error "LONG_00414923"
    %endif
    times 2 - ($ - %%insn_00414923) db 0
    %%insn_00414925:
    call ebx ; 00414925 FFD3
    %if ($ - %%insn_00414925) > 2
        %error "LONG_00414925"
    %endif
    times 2 - ($ - %%insn_00414925) db 0
    %%insn_00414927:
    test eax,eax ; 00414927 85C0
    %if ($ - %%insn_00414927) > 2
        %error "LONG_00414927"
    %endif
    times 2 - ($ - %%insn_00414927) db 0
    %%insn_00414929:
    jz short 0x414932 ; 00414929 7407
    %if ($ - %%insn_00414929) > 2
        %error "LONG_00414929"
    %endif
    times 2 - ($ - %%insn_00414929) db 0
    %%insn_0041492b:
    mov eax,0x1 ; 0041492B B801000000
    %if ($ - %%insn_0041492b) > 5
        %error "LONG_0041492B"
    %endif
    times 5 - ($ - %%insn_0041492b) db 0
    %%insn_00414930:
    jmp short 0x414957 ; 00414930 EB25
    %if ($ - %%insn_00414930) > 2
        %error "LONG_00414930"
    %endif
    times 2 - ($ - %%insn_00414930) db 0
    %%insn_00414932:
    push dword 0x0 ; 00414932 6A00
    %if ($ - %%insn_00414932) > 2
        %error "LONG_00414932"
    %endif
    times 2 - ($ - %%insn_00414932) db 0
    %%insn_00414934:
    push dword 0x0 ; 00414934 6A00
    %if ($ - %%insn_00414934) > 2
        %error "LONG_00414934"
    %endif
    times 2 - ($ - %%insn_00414934) db 0
    %%insn_00414936:
    push dword 0x1 ; 00414936 6A01
    %if ($ - %%insn_00414936) > 2
        %error "LONG_00414936"
    %endif
    times 2 - ($ - %%insn_00414936) db 0
    %%insn_00414938:
    push dword 0x41aad4 ; 00414938 68D4AA4100
    %if ($ - %%insn_00414938) > 5
        %error "LONG_00414938"
    %endif
    times 5 - ($ - %%insn_00414938) db 0
    %%insn_0041493d:
    push dword 0x100 ; 0041493D 6800010000
    %if ($ - %%insn_0041493d) > 5
        %error "LONG_0041493D"
    %endif
    times 5 - ($ - %%insn_0041493d) db 0
    %%insn_00414942:
    push dword 0x0 ; 00414942 6A00
    %if ($ - %%insn_00414942) > 2
        %error "LONG_00414942"
    %endif
    times 2 - ($ - %%insn_00414942) db 0
    %%insn_00414944:
    call dword near [0x4244a0] ; 00414944 FF15A0444200
    %if ($ - %%insn_00414944) > 6
        %error "LONG_00414944"
    %endif
    times 6 - ($ - %%insn_00414944) db 0
    %%insn_0041494a:
    test eax,eax ; 0041494A 85C0
    %if ($ - %%insn_0041494a) > 2
        %error "LONG_0041494A"
    %endif
    times 2 - ($ - %%insn_0041494a) db 0
    %%insn_0041494c:
    jz 0x414b00 ; 0041494C 0F84AE010000
    %if ($ - %%insn_0041494c) > 6
        %error "LONG_0041494C"
    %endif
    times 6 - ($ - %%insn_0041494c) db 0
    %%insn_00414952:
    mov eax,0x2 ; 00414952 B802000000
    %if ($ - %%insn_00414952) > 5
        %error "LONG_00414952"
    %endif
    times 5 - ($ - %%insn_00414952) db 0
    %%insn_00414957:
    mov [0x4211bc],eax ; 00414957 A3BC114200
    %if ($ - %%insn_00414957) > 5
        %error "LONG_00414957"
    %endif
    times 5 - ($ - %%insn_00414957) db 0
    %%insn_0041495c:
    mov esi,[esp+0x20] ; 0041495C 8B742420
    %if ($ - %%insn_0041495c) > 4
        %error "LONG_0041495C"
    %endif
    times 4 - ($ - %%insn_0041495c) db 0
    %%insn_00414960:
    test esi,esi ; 00414960 85F6
    %if ($ - %%insn_00414960) > 2
        %error "LONG_00414960"
    %endif
    times 2 - ($ - %%insn_00414960) db 0
    %%insn_00414962:
    jng short 0x41497b ; 00414962 7E17
    %if ($ - %%insn_00414962) > 2
        %error "LONG_00414962"
    %endif
    times 2 - ($ - %%insn_00414962) db 0
    %%insn_00414964:
    mov edi,[esp+0x1c] ; 00414964 8B7C241C
    %if ($ - %%insn_00414964) > 4
        %error "LONG_00414964"
    %endif
    times 4 - ($ - %%insn_00414964) db 0
    %%insn_00414968:
    push esi ; 00414968 56
    %if ($ - %%insn_00414968) > 1
        %error "LONG_00414968"
    %endif
    times 1 - ($ - %%insn_00414968) db 0
    %%insn_00414969:
    push edi ; 00414969 57
    %if ($ - %%insn_00414969) > 1
        %error "LONG_00414969"
    %endif
    times 1 - ($ - %%insn_00414969) db 0
    %%insn_0041496a:
    call 0x414b10 ; 0041496A E8A1010000
    %if ($ - %%insn_0041496a) > 5
        %error "LONG_0041496A"
    %endif
    times 5 - ($ - %%insn_0041496a) db 0
    db 0x8B, 0xF0 ; 0041496F 8BF0 | mov esi,eax | encoding preserved
    %%insn_00414971:
    mov eax,[0x4211bc] ; 00414971 A1BC114200
    %if ($ - %%insn_00414971) > 5
        %error "LONG_00414971"
    %endif
    times 5 - ($ - %%insn_00414971) db 0
    %%insn_00414976:
    add esp,0x8 ; 00414976 83C408
    %if ($ - %%insn_00414976) > 3
        %error "LONG_00414976"
    %endif
    times 3 - ($ - %%insn_00414976) db 0
    %%insn_00414979:
    jmp short 0x41497f ; 00414979 EB04
    %if ($ - %%insn_00414979) > 2
        %error "LONG_00414979"
    %endif
    times 2 - ($ - %%insn_00414979) db 0
    %%insn_0041497b:
    mov edi,[esp+0x1c] ; 0041497B 8B7C241C
    %if ($ - %%insn_0041497b) > 4
        %error "LONG_0041497B"
    %endif
    times 4 - ($ - %%insn_0041497b) db 0
    %%insn_0041497f:
    cmp eax,0x1 ; 0041497F 83F801
    %if ($ - %%insn_0041497f) > 3
        %error "LONG_0041497F"
    %endif
    times 3 - ($ - %%insn_0041497f) db 0
    %%insn_00414982:
    jnz short 0x4149a1 ; 00414982 751D
    %if ($ - %%insn_00414982) > 2
        %error "LONG_00414982"
    %endif
    times 2 - ($ - %%insn_00414982) db 0
    %%insn_00414984:
    mov eax,[esp+0x28] ; 00414984 8B442428
    %if ($ - %%insn_00414984) > 4
        %error "LONG_00414984"
    %endif
    times 4 - ($ - %%insn_00414984) db 0
    %%insn_00414988:
    mov ecx,[esp+0x24] ; 00414988 8B4C2424
    %if ($ - %%insn_00414988) > 4
        %error "LONG_00414988"
    %endif
    times 4 - ($ - %%insn_00414988) db 0
    %%insn_0041498c:
    mov edx,[esp+0x18] ; 0041498C 8B542418
    %if ($ - %%insn_0041498c) > 4
        %error "LONG_0041498C"
    %endif
    times 4 - ($ - %%insn_0041498c) db 0
    %%insn_00414990:
    push eax ; 00414990 50
    %if ($ - %%insn_00414990) > 1
        %error "LONG_00414990"
    %endif
    times 1 - ($ - %%insn_00414990) db 0
    %%insn_00414991:
    mov eax,[esp+0x18] ; 00414991 8B442418
    %if ($ - %%insn_00414991) > 4
        %error "LONG_00414991"
    %endif
    times 4 - ($ - %%insn_00414991) db 0
    %%insn_00414995:
    push ecx ; 00414995 51
    %if ($ - %%insn_00414995) > 1
        %error "LONG_00414995"
    %endif
    times 1 - ($ - %%insn_00414995) db 0
    %%insn_00414996:
    push esi ; 00414996 56
    %if ($ - %%insn_00414996) > 1
        %error "LONG_00414996"
    %endif
    times 1 - ($ - %%insn_00414996) db 0
    %%insn_00414997:
    push edi ; 00414997 57
    %if ($ - %%insn_00414997) > 1
        %error "LONG_00414997"
    %endif
    times 1 - ($ - %%insn_00414997) db 0
    %%insn_00414998:
    push edx ; 00414998 52
    %if ($ - %%insn_00414998) > 1
        %error "LONG_00414998"
    %endif
    times 1 - ($ - %%insn_00414998) db 0
    %%insn_00414999:
    push eax ; 00414999 50
    %if ($ - %%insn_00414999) > 1
        %error "LONG_00414999"
    %endif
    times 1 - ($ - %%insn_00414999) db 0
    %%insn_0041499a:
    call ebx ; 0041499A FFD3
    %if ($ - %%insn_0041499a) > 2
        %error "LONG_0041499A"
    %endif
    times 2 - ($ - %%insn_0041499a) db 0
    %%insn_0041499c:
    pop edi ; 0041499C 5F
    %if ($ - %%insn_0041499c) > 1
        %error "LONG_0041499C"
    %endif
    times 1 - ($ - %%insn_0041499c) db 0
    %%insn_0041499d:
    pop esi ; 0041499D 5E
    %if ($ - %%insn_0041499d) > 1
        %error "LONG_0041499D"
    %endif
    times 1 - ($ - %%insn_0041499d) db 0
    %%insn_0041499e:
    pop ebp ; 0041499E 5D
    %if ($ - %%insn_0041499e) > 1
        %error "LONG_0041499E"
    %endif
    times 1 - ($ - %%insn_0041499e) db 0
    %%insn_0041499f:
    pop ebx ; 0041499F 5B
    %if ($ - %%insn_0041499f) > 1
        %error "LONG_0041499F"
    %endif
    times 1 - ($ - %%insn_0041499f) db 0
    %%insn_004149a0:
    ret ; 004149A0 C3
    %if ($ - %%insn_004149a0) > 1
        %error "LONG_004149A0"
    %endif
    times 1 - ($ - %%insn_004149a0) db 0
    %%insn_004149a1:
    cmp eax,0x2 ; 004149A1 83F802
    %if ($ - %%insn_004149a1) > 3
        %error "LONG_004149A1"
    %endif
    times 3 - ($ - %%insn_004149a1) db 0
    %%insn_004149a4:
    jnz 0x414aa9 ; 004149A4 0F85FF000000
    %if ($ - %%insn_004149a4) > 6
        %error "LONG_004149A4"
    %endif
    times 6 - ($ - %%insn_004149a4) db 0
    %%insn_004149aa:
    mov ebx,[esp+0x2c] ; 004149AA 8B5C242C
    %if ($ - %%insn_004149aa) > 4
        %error "LONG_004149AA"
    %endif
    times 4 - ($ - %%insn_004149aa) db 0
    %%insn_004149ae:
    mov dword [esp+0x20],0x0 ; 004149AE C744242000000000
    %if ($ - %%insn_004149ae) > 8
        %error "LONG_004149AE"
    %endif
    times 8 - ($ - %%insn_004149ae) db 0
    %%insn_004149b6:
    test ebx,ebx ; 004149B6 85DB
    %if ($ - %%insn_004149b6) > 2
        %error "LONG_004149B6"
    %endif
    times 2 - ($ - %%insn_004149b6) db 0
    %%insn_004149b8:
    jnz short 0x4149c0 ; 004149B8 7506
    %if ($ - %%insn_004149b8) > 2
        %error "LONG_004149B8"
    %endif
    times 2 - ($ - %%insn_004149b8) db 0
    %%insn_004149ba:
    mov ebx,[0x420f30] ; 004149BA 8B1D300F4200
    %if ($ - %%insn_004149ba) > 6
        %error "LONG_004149BA"
    %endif
    times 6 - ($ - %%insn_004149ba) db 0
    %%insn_004149c0:
    push dword 0x0 ; 004149C0 6A00
    %if ($ - %%insn_004149c0) > 2
        %error "LONG_004149C0"
    %endif
    times 2 - ($ - %%insn_004149c0) db 0
    %%insn_004149c2:
    push dword 0x0 ; 004149C2 6A00
    %if ($ - %%insn_004149c2) > 2
        %error "LONG_004149C2"
    %endif
    times 2 - ($ - %%insn_004149c2) db 0
    %%insn_004149c4:
    push dword 0x0 ; 004149C4 6A00
    %if ($ - %%insn_004149c4) > 2
        %error "LONG_004149C4"
    %endif
    times 2 - ($ - %%insn_004149c4) db 0
    %%insn_004149c6:
    push dword 0x0 ; 004149C6 6A00
    %if ($ - %%insn_004149c6) > 2
        %error "LONG_004149C6"
    %endif
    times 2 - ($ - %%insn_004149c6) db 0
    %%insn_004149c8:
    push esi ; 004149C8 56
    %if ($ - %%insn_004149c8) > 1
        %error "LONG_004149C8"
    %endif
    times 1 - ($ - %%insn_004149c8) db 0
    %%insn_004149c9:
    push edi ; 004149C9 57
    %if ($ - %%insn_004149c9) > 1
        %error "LONG_004149C9"
    %endif
    times 1 - ($ - %%insn_004149c9) db 0
    %%insn_004149ca:
    push dword 0x220 ; 004149CA 6820020000
    %if ($ - %%insn_004149ca) > 5
        %error "LONG_004149CA"
    %endif
    times 5 - ($ - %%insn_004149ca) db 0
    %%insn_004149cf:
    push ebx ; 004149CF 53
    %if ($ - %%insn_004149cf) > 1
        %error "LONG_004149CF"
    %endif
    times 1 - ($ - %%insn_004149cf) db 0
    %%insn_004149d0:
    call dword near [0x4244d0] ; 004149D0 FF15D0444200
    %if ($ - %%insn_004149d0) > 6
        %error "LONG_004149D0"
    %endif
    times 6 - ($ - %%insn_004149d0) db 0
    db 0x8B, 0xF8 ; 004149D6 8BF8 | mov edi,eax | encoding preserved
    %%insn_004149d8:
    test edi,edi ; 004149D8 85FF
    %if ($ - %%insn_004149d8) > 2
        %error "LONG_004149D8"
    %endif
    times 2 - ($ - %%insn_004149d8) db 0
    %%insn_004149da:
    jnz short 0x4149e1 ; 004149DA 7505
    %if ($ - %%insn_004149da) > 2
        %error "LONG_004149DA"
    %endif
    times 2 - ($ - %%insn_004149da) db 0
    %%insn_004149dc:
    pop edi ; 004149DC 5F
    %if ($ - %%insn_004149dc) > 1
        %error "LONG_004149DC"
    %endif
    times 1 - ($ - %%insn_004149dc) db 0
    %%insn_004149dd:
    pop esi ; 004149DD 5E
    %if ($ - %%insn_004149dd) > 1
        %error "LONG_004149DD"
    %endif
    times 1 - ($ - %%insn_004149dd) db 0
    %%insn_004149de:
    pop ebp ; 004149DE 5D
    %if ($ - %%insn_004149de) > 1
        %error "LONG_004149DE"
    %endif
    times 1 - ($ - %%insn_004149de) db 0
    %%insn_004149df:
    pop ebx ; 004149DF 5B
    %if ($ - %%insn_004149df) > 1
        %error "LONG_004149DF"
    %endif
    times 1 - ($ - %%insn_004149df) db 0
    %%insn_004149e0:
    ret ; 004149E0 C3
    %if ($ - %%insn_004149e0) > 1
        %error "LONG_004149E0"
    %endif
    times 1 - ($ - %%insn_004149e0) db 0
    %%insn_004149e1:
    push edi ; 004149E1 57
    %if ($ - %%insn_004149e1) > 1
        %error "LONG_004149E1"
    %endif
    times 1 - ($ - %%insn_004149e1) db 0
    %%insn_004149e2:
    call 0x40cdc0 ; 004149E2 E8D983FFFF
    %if ($ - %%insn_004149e2) > 5
        %error "LONG_004149E2"
    %endif
    times 5 - ($ - %%insn_004149e2) db 0
    db 0x8B, 0xE8 ; 004149E7 8BE8 | mov ebp,eax | encoding preserved
    %%insn_004149e9:
    add esp,0x4 ; 004149E9 83C404
    %if ($ - %%insn_004149e9) > 3
        %error "LONG_004149E9"
    %endif
    times 3 - ($ - %%insn_004149e9) db 0
    %%insn_004149ec:
    test ebp,ebp ; 004149EC 85ED
    %if ($ - %%insn_004149ec) > 2
        %error "LONG_004149EC"
    %endif
    times 2 - ($ - %%insn_004149ec) db 0
    %%insn_004149ee:
    jnz short 0x4149f5 ; 004149EE 7505
    %if ($ - %%insn_004149ee) > 2
        %error "LONG_004149EE"
    %endif
    times 2 - ($ - %%insn_004149ee) db 0
    %%insn_004149f0:
    pop edi ; 004149F0 5F
    %if ($ - %%insn_004149f0) > 1
        %error "LONG_004149F0"
    %endif
    times 1 - ($ - %%insn_004149f0) db 0
    %%insn_004149f1:
    pop esi ; 004149F1 5E
    %if ($ - %%insn_004149f1) > 1
        %error "LONG_004149F1"
    %endif
    times 1 - ($ - %%insn_004149f1) db 0
    %%insn_004149f2:
    pop ebp ; 004149F2 5D
    %if ($ - %%insn_004149f2) > 1
        %error "LONG_004149F2"
    %endif
    times 1 - ($ - %%insn_004149f2) db 0
    %%insn_004149f3:
    pop ebx ; 004149F3 5B
    %if ($ - %%insn_004149f3) > 1
        %error "LONG_004149F3"
    %endif
    times 1 - ($ - %%insn_004149f3) db 0
    %%insn_004149f4:
    ret ; 004149F4 C3
    %if ($ - %%insn_004149f4) > 1
        %error "LONG_004149F4"
    %endif
    times 1 - ($ - %%insn_004149f4) db 0
    %%insn_004149f5:
    mov ecx,[esp+0x1c] ; 004149F5 8B4C241C
    %if ($ - %%insn_004149f5) > 4
        %error "LONG_004149F5"
    %endif
    times 4 - ($ - %%insn_004149f5) db 0
    %%insn_004149f9:
    push dword 0x0 ; 004149F9 6A00
    %if ($ - %%insn_004149f9) > 2
        %error "LONG_004149F9"
    %endif
    times 2 - ($ - %%insn_004149f9) db 0
    %%insn_004149fb:
    push dword 0x0 ; 004149FB 6A00
    %if ($ - %%insn_004149fb) > 2
        %error "LONG_004149FB"
    %endif
    times 2 - ($ - %%insn_004149fb) db 0
    %%insn_004149fd:
    push edi ; 004149FD 57
    %if ($ - %%insn_004149fd) > 1
        %error "LONG_004149FD"
    %endif
    times 1 - ($ - %%insn_004149fd) db 0
    %%insn_004149fe:
    push ebp ; 004149FE 55
    %if ($ - %%insn_004149fe) > 1
        %error "LONG_004149FE"
    %endif
    times 1 - ($ - %%insn_004149fe) db 0
    %%insn_004149ff:
    push esi ; 004149FF 56
    %if ($ - %%insn_004149ff) > 1
        %error "LONG_004149FF"
    %endif
    times 1 - ($ - %%insn_004149ff) db 0
    %%insn_00414a00:
    push ecx ; 00414A00 51
    %if ($ - %%insn_00414a00) > 1
        %error "LONG_00414A00"
    %endif
    times 1 - ($ - %%insn_00414a00) db 0
    %%insn_00414a01:
    push dword 0x220 ; 00414A01 6820020000
    %if ($ - %%insn_00414a01) > 5
        %error "LONG_00414A01"
    %endif
    times 5 - ($ - %%insn_00414a01) db 0
    %%insn_00414a06:
    push ebx ; 00414A06 53
    %if ($ - %%insn_00414a06) > 1
        %error "LONG_00414A06"
    %endif
    times 1 - ($ - %%insn_00414a06) db 0
    %%insn_00414a07:
    call dword near [0x4244d0] ; 00414A07 FF15D0444200
    %if ($ - %%insn_00414a07) > 6
        %error "LONG_00414A07"
    %endif
    times 6 - ($ - %%insn_00414a07) db 0
    %%insn_00414a0d:
    test eax,eax ; 00414A0D 85C0
    %if ($ - %%insn_00414a0d) > 2
        %error "LONG_00414A0D"
    %endif
    times 2 - ($ - %%insn_00414a0d) db 0
    %%insn_00414a0f:
    jz 0x414aea ; 00414A0F 0F84D5000000
    %if ($ - %%insn_00414a0f) > 6
        %error "LONG_00414A0F"
    %endif
    times 6 - ($ - %%insn_00414a0f) db 0
    %%insn_00414a15:
    mov edx,[esp+0x18] ; 00414A15 8B542418
    %if ($ - %%insn_00414a15) > 4
        %error "LONG_00414A15"
    %endif
    times 4 - ($ - %%insn_00414a15) db 0
    %%insn_00414a19:
    mov eax,[esp+0x14] ; 00414A19 8B442414
    %if ($ - %%insn_00414a19) > 4
        %error "LONG_00414A19"
    %endif
    times 4 - ($ - %%insn_00414a19) db 0
    %%insn_00414a1d:
    push dword 0x0 ; 00414A1D 6A00
    %if ($ - %%insn_00414a1d) > 2
        %error "LONG_00414A1D"
    %endif
    times 2 - ($ - %%insn_00414a1d) db 0
    %%insn_00414a1f:
    push dword 0x0 ; 00414A1F 6A00
    %if ($ - %%insn_00414a1f) > 2
        %error "LONG_00414A1F"
    %endif
    times 2 - ($ - %%insn_00414a1f) db 0
    %%insn_00414a21:
    push edi ; 00414A21 57
    %if ($ - %%insn_00414a21) > 1
        %error "LONG_00414A21"
    %endif
    times 1 - ($ - %%insn_00414a21) db 0
    %%insn_00414a22:
    push ebp ; 00414A22 55
    %if ($ - %%insn_00414a22) > 1
        %error "LONG_00414A22"
    %endif
    times 1 - ($ - %%insn_00414a22) db 0
    %%insn_00414a23:
    push edx ; 00414A23 52
    %if ($ - %%insn_00414a23) > 1
        %error "LONG_00414A23"
    %endif
    times 1 - ($ - %%insn_00414a23) db 0
    %%insn_00414a24:
    push eax ; 00414A24 50
    %if ($ - %%insn_00414a24) > 1
        %error "LONG_00414A24"
    %endif
    times 1 - ($ - %%insn_00414a24) db 0
    %%insn_00414a25:
    call dword near [0x4244a0] ; 00414A25 FF15A0444200
    %if ($ - %%insn_00414a25) > 6
        %error "LONG_00414A25"
    %endif
    times 6 - ($ - %%insn_00414a25) db 0
    db 0x8B, 0xF0 ; 00414A2B 8BF0 | mov esi,eax | encoding preserved
    %%insn_00414a2d:
    test esi,esi ; 00414A2D 85F6
    %if ($ - %%insn_00414a2d) > 2
        %error "LONG_00414A2D"
    %endif
    times 2 - ($ - %%insn_00414a2d) db 0
    %%insn_00414a2f:
    jz 0x414aea ; 00414A2F 0F84B5000000
    %if ($ - %%insn_00414a2f) > 6
        %error "LONG_00414A2F"
    %endif
    times 6 - ($ - %%insn_00414a2f) db 0
    %%insn_00414a35:
    push esi ; 00414A35 56
    %if ($ - %%insn_00414a35) > 1
        %error "LONG_00414A35"
    %endif
    times 1 - ($ - %%insn_00414a35) db 0
    %%insn_00414a36:
    call 0x40cdc0 ; 00414A36 E88583FFFF
    %if ($ - %%insn_00414a36) > 5
        %error "LONG_00414A36"
    %endif
    times 5 - ($ - %%insn_00414a36) db 0
    %%insn_00414a3b:
    add esp,0x4 ; 00414A3B 83C404
    %if ($ - %%insn_00414a3b) > 3
        %error "LONG_00414A3B"
    %endif
    times 3 - ($ - %%insn_00414a3b) db 0
    %%insn_00414a3e:
    mov [esp+0x20],eax ; 00414A3E 89442420
    %if ($ - %%insn_00414a3e) > 4
        %error "LONG_00414A3E"
    %endif
    times 4 - ($ - %%insn_00414a3e) db 0
    %%insn_00414a42:
    test eax,eax ; 00414A42 85C0
    %if ($ - %%insn_00414a42) > 2
        %error "LONG_00414A42"
    %endif
    times 2 - ($ - %%insn_00414a42) db 0
    %%insn_00414a44:
    jz 0x414aea ; 00414A44 0F84A0000000
    %if ($ - %%insn_00414a44) > 6
        %error "LONG_00414A44"
    %endif
    times 6 - ($ - %%insn_00414a44) db 0
    %%insn_00414a4a:
    mov ecx,[esp+0x14] ; 00414A4A 8B4C2414
    %if ($ - %%insn_00414a4a) > 4
        %error "LONG_00414A4A"
    %endif
    times 4 - ($ - %%insn_00414a4a) db 0
    %%insn_00414a4e:
    push esi ; 00414A4E 56
    %if ($ - %%insn_00414a4e) > 1
        %error "LONG_00414A4E"
    %endif
    times 1 - ($ - %%insn_00414a4e) db 0
    %%insn_00414a4f:
    push eax ; 00414A4F 50
    %if ($ - %%insn_00414a4f) > 1
        %error "LONG_00414A4F"
    %endif
    times 1 - ($ - %%insn_00414a4f) db 0
    %%insn_00414a50:
    push edi ; 00414A50 57
    %if ($ - %%insn_00414a50) > 1
        %error "LONG_00414A50"
    %endif
    times 1 - ($ - %%insn_00414a50) db 0
    %%insn_00414a51:
    mov edi,[esp+0x24] ; 00414A51 8B7C2424
    %if ($ - %%insn_00414a51) > 4
        %error "LONG_00414A51"
    %endif
    times 4 - ($ - %%insn_00414a51) db 0
    %%insn_00414a55:
    push ebp ; 00414A55 55
    %if ($ - %%insn_00414a55) > 1
        %error "LONG_00414A55"
    %endif
    times 1 - ($ - %%insn_00414a55) db 0
    %%insn_00414a56:
    push edi ; 00414A56 57
    %if ($ - %%insn_00414a56) > 1
        %error "LONG_00414A56"
    %endif
    times 1 - ($ - %%insn_00414a56) db 0
    %%insn_00414a57:
    push ecx ; 00414A57 51
    %if ($ - %%insn_00414a57) > 1
        %error "LONG_00414A57"
    %endif
    times 1 - ($ - %%insn_00414a57) db 0
    %%insn_00414a58:
    call dword near [0x4244a0] ; 00414A58 FF15A0444200
    %if ($ - %%insn_00414a58) > 6
        %error "LONG_00414A58"
    %endif
    times 6 - ($ - %%insn_00414a58) db 0
    %%insn_00414a5e:
    test eax,eax ; 00414A5E 85C0
    %if ($ - %%insn_00414a5e) > 2
        %error "LONG_00414A5E"
    %endif
    times 2 - ($ - %%insn_00414a5e) db 0
    %%insn_00414a60:
    jz 0x414aea ; 00414A60 0F8484000000
    %if ($ - %%insn_00414a60) > 6
        %error "LONG_00414A60"
    %endif
    times 6 - ($ - %%insn_00414a60) db 0
    %%insn_00414a66:
    test edi,0x400 ; 00414A66 F7C700040000
    %if ($ - %%insn_00414a66) > 6
        %error "LONG_00414A66"
    %endif
    times 6 - ($ - %%insn_00414a66) db 0
    %%insn_00414a6c:
    jz short 0x414aae ; 00414A6C 7440
    %if ($ - %%insn_00414a6c) > 2
        %error "LONG_00414A6C"
    %endif
    times 2 - ($ - %%insn_00414a6c) db 0
    %%insn_00414a6e:
    mov eax,[esp+0x28] ; 00414A6E 8B442428
    %if ($ - %%insn_00414a6e) > 4
        %error "LONG_00414A6E"
    %endif
    times 4 - ($ - %%insn_00414a6e) db 0
    db 0x8B, 0xFE ; 00414A72 8BFE | mov edi,esi | encoding preserved
    %%insn_00414a74:
    test eax,eax ; 00414A74 85C0
    %if ($ - %%insn_00414a74) > 2
        %error "LONG_00414A74"
    %endif
    times 2 - ($ - %%insn_00414a74) db 0
    %%insn_00414a76:
    jz short 0x414a91 ; 00414A76 7419
    %if ($ - %%insn_00414a76) > 2
        %error "LONG_00414A76"
    %endif
    times 2 - ($ - %%insn_00414a76) db 0
    db 0x3B, 0xC6 ; 00414A78 3BC6 | cmp eax,esi | encoding preserved
    %%insn_00414a7a:
    jl short 0x414a7e ; 00414A7A 7C02
    %if ($ - %%insn_00414a7a) > 2
        %error "LONG_00414A7A"
    %endif
    times 2 - ($ - %%insn_00414a7a) db 0
    db 0x8B, 0xC6 ; 00414A7C 8BC6 | mov eax,esi | encoding preserved
    %%insn_00414a7e:
    mov edx,[esp+0x20] ; 00414A7E 8B542420
    %if ($ - %%insn_00414a7e) > 4
        %error "LONG_00414A7E"
    %endif
    times 4 - ($ - %%insn_00414a7e) db 0
    %%insn_00414a82:
    push eax ; 00414A82 50
    %if ($ - %%insn_00414a82) > 1
        %error "LONG_00414A82"
    %endif
    times 1 - ($ - %%insn_00414a82) db 0
    %%insn_00414a83:
    mov eax,[esp+0x28] ; 00414A83 8B442428
    %if ($ - %%insn_00414a83) > 4
        %error "LONG_00414A83"
    %endif
    times 4 - ($ - %%insn_00414a83) db 0
    %%insn_00414a87:
    push edx ; 00414A87 52
    %if ($ - %%insn_00414a87) > 1
        %error "LONG_00414A87"
    %endif
    times 1 - ($ - %%insn_00414a87) db 0
    %%insn_00414a88:
    push eax ; 00414A88 50
    %if ($ - %%insn_00414a88) > 1
        %error "LONG_00414A88"
    %endif
    times 1 - ($ - %%insn_00414a88) db 0
    %%insn_00414a89:
    call 0x414280 ; 00414A89 E8F2F7FFFF
    %if ($ - %%insn_00414a89) > 5
        %error "LONG_00414A89"
    %endif
    times 5 - ($ - %%insn_00414a89) db 0
    %%insn_00414a8e:
    add esp,0xc ; 00414A8E 83C40C
    %if ($ - %%insn_00414a8e) > 3
        %error "LONG_00414A8E"
    %endif
    times 3 - ($ - %%insn_00414a8e) db 0
    %%insn_00414a91:
    push ebp ; 00414A91 55
    %if ($ - %%insn_00414a91) > 1
        %error "LONG_00414A91"
    %endif
    times 1 - ($ - %%insn_00414a91) db 0
    %%insn_00414a92:
    call 0x40c9a0 ; 00414A92 E8097FFFFF
    %if ($ - %%insn_00414a92) > 5
        %error "LONG_00414A92"
    %endif
    times 5 - ($ - %%insn_00414a92) db 0
    %%insn_00414a97:
    mov edx,[esp+0x24] ; 00414A97 8B542424
    %if ($ - %%insn_00414a97) > 4
        %error "LONG_00414A97"
    %endif
    times 4 - ($ - %%insn_00414a97) db 0
    %%insn_00414a9b:
    add esp,0x4 ; 00414A9B 83C404
    %if ($ - %%insn_00414a9b) > 3
        %error "LONG_00414A9B"
    %endif
    times 3 - ($ - %%insn_00414a9b) db 0
    %%insn_00414a9e:
    push edx ; 00414A9E 52
    %if ($ - %%insn_00414a9e) > 1
        %error "LONG_00414A9E"
    %endif
    times 1 - ($ - %%insn_00414a9e) db 0
    %%insn_00414a9f:
    call 0x40c9a0 ; 00414A9F E8FC7EFFFF
    %if ($ - %%insn_00414a9f) > 5
        %error "LONG_00414A9F"
    %endif
    times 5 - ($ - %%insn_00414a9f) db 0
    %%insn_00414aa4:
    add esp,0x4 ; 00414AA4 83C404
    %if ($ - %%insn_00414aa4) > 3
        %error "LONG_00414AA4"
    %endif
    times 3 - ($ - %%insn_00414aa4) db 0
    db 0x8B, 0xC7 ; 00414AA7 8BC7 | mov eax,edi | encoding preserved
    %%insn_00414aa9:
    pop edi ; 00414AA9 5F
    %if ($ - %%insn_00414aa9) > 1
        %error "LONG_00414AA9"
    %endif
    times 1 - ($ - %%insn_00414aa9) db 0
    %%insn_00414aaa:
    pop esi ; 00414AAA 5E
    %if ($ - %%insn_00414aaa) > 1
        %error "LONG_00414AAA"
    %endif
    times 1 - ($ - %%insn_00414aaa) db 0
    %%insn_00414aab:
    pop ebp ; 00414AAB 5D
    %if ($ - %%insn_00414aab) > 1
        %error "LONG_00414AAB"
    %endif
    times 1 - ($ - %%insn_00414aab) db 0
    %%insn_00414aac:
    pop ebx ; 00414AAC 5B
    %if ($ - %%insn_00414aac) > 1
        %error "LONG_00414AAC"
    %endif
    times 1 - ($ - %%insn_00414aac) db 0
    %%insn_00414aad:
    ret ; 00414AAD C3
    %if ($ - %%insn_00414aad) > 1
        %error "LONG_00414AAD"
    %endif
    times 1 - ($ - %%insn_00414aad) db 0
    %%insn_00414aae:
    mov eax,[esp+0x28] ; 00414AAE 8B442428
    %if ($ - %%insn_00414aae) > 4
        %error "LONG_00414AAE"
    %endif
    times 4 - ($ - %%insn_00414aae) db 0
    %%insn_00414ab2:
    test eax,eax ; 00414AB2 85C0
    %if ($ - %%insn_00414ab2) > 2
        %error "LONG_00414AB2"
    %endif
    times 2 - ($ - %%insn_00414ab2) db 0
    %%insn_00414ab4:
    jnz short 0x414acf ; 00414AB4 7519
    %if ($ - %%insn_00414ab4) > 2
        %error "LONG_00414AB4"
    %endif
    times 2 - ($ - %%insn_00414ab4) db 0
    %%insn_00414ab6:
    mov ecx,[esp+0x20] ; 00414AB6 8B4C2420
    %if ($ - %%insn_00414ab6) > 4
        %error "LONG_00414AB6"
    %endif
    times 4 - ($ - %%insn_00414ab6) db 0
    %%insn_00414aba:
    push eax ; 00414ABA 50
    %if ($ - %%insn_00414aba) > 1
        %error "LONG_00414ABA"
    %endif
    times 1 - ($ - %%insn_00414aba) db 0
    %%insn_00414abb:
    push eax ; 00414ABB 50
    %if ($ - %%insn_00414abb) > 1
        %error "LONG_00414ABB"
    %endif
    times 1 - ($ - %%insn_00414abb) db 0
    %%insn_00414abc:
    push esi ; 00414ABC 56
    %if ($ - %%insn_00414abc) > 1
        %error "LONG_00414ABC"
    %endif
    times 1 - ($ - %%insn_00414abc) db 0
    %%insn_00414abd:
    push ecx ; 00414ABD 51
    %if ($ - %%insn_00414abd) > 1
        %error "LONG_00414ABD"
    %endif
    times 1 - ($ - %%insn_00414abd) db 0
    %%insn_00414abe:
    push dword 0x1 ; 00414ABE 6A01
    %if ($ - %%insn_00414abe) > 2
        %error "LONG_00414ABE"
    %endif
    times 2 - ($ - %%insn_00414abe) db 0
    %%insn_00414ac0:
    push ebx ; 00414AC0 53
    %if ($ - %%insn_00414ac0) > 1
        %error "LONG_00414AC0"
    %endif
    times 1 - ($ - %%insn_00414ac0) db 0
    %%insn_00414ac1:
    call dword near [0x424464] ; 00414AC1 FF1564444200
    %if ($ - %%insn_00414ac1) > 6
        %error "LONG_00414AC1"
    %endif
    times 6 - ($ - %%insn_00414ac1) db 0
    db 0x8B, 0xF8 ; 00414AC7 8BF8 | mov edi,eax | encoding preserved
    %%insn_00414ac9:
    test edi,edi ; 00414AC9 85FF
    %if ($ - %%insn_00414ac9) > 2
        %error "LONG_00414AC9"
    %endif
    times 2 - ($ - %%insn_00414ac9) db 0
    %%insn_00414acb:
    jz short 0x414aea ; 00414ACB 741D
    %if ($ - %%insn_00414acb) > 2
        %error "LONG_00414ACB"
    %endif
    times 2 - ($ - %%insn_00414acb) db 0
    %%insn_00414acd:
    jmp short 0x414a91 ; 00414ACD EBC2
    %if ($ - %%insn_00414acd) > 2
        %error "LONG_00414ACD"
    %endif
    times 2 - ($ - %%insn_00414acd) db 0
    %%insn_00414acf:
    mov edx,[esp+0x24] ; 00414ACF 8B542424
    %if ($ - %%insn_00414acf) > 4
        %error "LONG_00414ACF"
    %endif
    times 4 - ($ - %%insn_00414acf) db 0
    %%insn_00414ad3:
    push eax ; 00414AD3 50
    %if ($ - %%insn_00414ad3) > 1
        %error "LONG_00414AD3"
    %endif
    times 1 - ($ - %%insn_00414ad3) db 0
    %%insn_00414ad4:
    mov eax,[esp+0x24] ; 00414AD4 8B442424
    %if ($ - %%insn_00414ad4) > 4
        %error "LONG_00414AD4"
    %endif
    times 4 - ($ - %%insn_00414ad4) db 0
    %%insn_00414ad8:
    push edx ; 00414AD8 52
    %if ($ - %%insn_00414ad8) > 1
        %error "LONG_00414AD8"
    %endif
    times 1 - ($ - %%insn_00414ad8) db 0
    %%insn_00414ad9:
    push esi ; 00414AD9 56
    %if ($ - %%insn_00414ad9) > 1
        %error "LONG_00414AD9"
    %endif
    times 1 - ($ - %%insn_00414ad9) db 0
    %%insn_00414ada:
    push eax ; 00414ADA 50
    %if ($ - %%insn_00414ada) > 1
        %error "LONG_00414ADA"
    %endif
    times 1 - ($ - %%insn_00414ada) db 0
    %%insn_00414adb:
    push dword 0x1 ; 00414ADB 6A01
    %if ($ - %%insn_00414adb) > 2
        %error "LONG_00414ADB"
    %endif
    times 2 - ($ - %%insn_00414adb) db 0
    %%insn_00414add:
    push ebx ; 00414ADD 53
    %if ($ - %%insn_00414add) > 1
        %error "LONG_00414ADD"
    %endif
    times 1 - ($ - %%insn_00414add) db 0
    %%insn_00414ade:
    call dword near [0x424464] ; 00414ADE FF1564444200
    %if ($ - %%insn_00414ade) > 6
        %error "LONG_00414ADE"
    %endif
    times 6 - ($ - %%insn_00414ade) db 0
    db 0x8B, 0xF8 ; 00414AE4 8BF8 | mov edi,eax | encoding preserved
    %%insn_00414ae6:
    test edi,edi ; 00414AE6 85FF
    %if ($ - %%insn_00414ae6) > 2
        %error "LONG_00414AE6"
    %endif
    times 2 - ($ - %%insn_00414ae6) db 0
    %%insn_00414ae8:
    jnz short 0x414a91 ; 00414AE8 75A7
    %if ($ - %%insn_00414ae8) > 2
        %error "LONG_00414AE8"
    %endif
    times 2 - ($ - %%insn_00414ae8) db 0
    %%insn_00414aea:
    push ebp ; 00414AEA 55
    %if ($ - %%insn_00414aea) > 1
        %error "LONG_00414AEA"
    %endif
    times 1 - ($ - %%insn_00414aea) db 0
    %%insn_00414aeb:
    call 0x40c9a0 ; 00414AEB E8B07EFFFF
    %if ($ - %%insn_00414aeb) > 5
        %error "LONG_00414AEB"
    %endif
    times 5 - ($ - %%insn_00414aeb) db 0
    %%insn_00414af0:
    mov ecx,[esp+0x24] ; 00414AF0 8B4C2424
    %if ($ - %%insn_00414af0) > 4
        %error "LONG_00414AF0"
    %endif
    times 4 - ($ - %%insn_00414af0) db 0
    %%insn_00414af4:
    add esp,0x4 ; 00414AF4 83C404
    %if ($ - %%insn_00414af4) > 3
        %error "LONG_00414AF4"
    %endif
    times 3 - ($ - %%insn_00414af4) db 0
    %%insn_00414af7:
    push ecx ; 00414AF7 51
    %if ($ - %%insn_00414af7) > 1
        %error "LONG_00414AF7"
    %endif
    times 1 - ($ - %%insn_00414af7) db 0
    %%insn_00414af8:
    call 0x40c9a0 ; 00414AF8 E8A37EFFFF
    %if ($ - %%insn_00414af8) > 5
        %error "LONG_00414AF8"
    %endif
    times 5 - ($ - %%insn_00414af8) db 0
    %%insn_00414afd:
    add esp,0x4 ; 00414AFD 83C404
    %if ($ - %%insn_00414afd) > 3
        %error "LONG_00414AFD"
    %endif
    times 3 - ($ - %%insn_00414afd) db 0
    %%insn_00414b00:
    pop edi ; 00414B00 5F
    %if ($ - %%insn_00414b00) > 1
        %error "LONG_00414B00"
    %endif
    times 1 - ($ - %%insn_00414b00) db 0
    %%insn_00414b01:
    pop esi ; 00414B01 5E
    %if ($ - %%insn_00414b01) > 1
        %error "LONG_00414B01"
    %endif
    times 1 - ($ - %%insn_00414b01) db 0
    %%insn_00414b02:
    pop ebp ; 00414B02 5D
    %if ($ - %%insn_00414b02) > 1
        %error "LONG_00414B02"
    %endif
    times 1 - ($ - %%insn_00414b02) db 0
    db 0x33, 0xC0 ; 00414B03 33C0 | xor eax,eax | encoding preserved
    %%insn_00414b05:
    pop ebx ; 00414B05 5B
    %if ($ - %%insn_00414b05) > 1
        %error "LONG_00414B05"
    %endif
    times 1 - ($ - %%insn_00414b05) db 0
    %%insn_00414b06:
    ret ; 00414B06 C3
    %if ($ - %%insn_00414b06) > 1
        %error "LONG_00414B06"
    %endif
    times 1 - ($ - %%insn_00414b06) db 0
    %if ($ - %%fragment_start) != 519
        %error "function fragment size drift: 00414900"
    %endif
%endmacro
