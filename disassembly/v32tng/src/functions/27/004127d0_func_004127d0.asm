; PE virtual entry 004127D0
; Ghidra working symbol: FUN_004127d0
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_004127d0_part_00 0
    %%fragment_start:
func_004127d0:
    %%insn_004127d0:
    push esi ; 004127D0 56
    %if ($ - %%insn_004127d0) > 1
        %error "LONG_004127D0"
    %endif
    times 1 - ($ - %%insn_004127d0) db 0
    %%insn_004127d1:
    push edi ; 004127D1 57
    %if ($ - %%insn_004127d1) > 1
        %error "LONG_004127D1"
    %endif
    times 1 - ($ - %%insn_004127d1) db 0
    %%insn_004127d2:
    call dword near [0x4243c4] ; 004127D2 FF15C4434200
    %if ($ - %%insn_004127d2) > 6
        %error "LONG_004127D2"
    %endif
    times 6 - ($ - %%insn_004127d2) db 0
    db 0x8B, 0xF8 ; 004127D8 8BF8 | mov edi,eax | encoding preserved
    %%insn_004127da:
    mov eax,[0x41e310] ; 004127DA A110E34100
    %if ($ - %%insn_004127da) > 5
        %error "LONG_004127DA"
    %endif
    times 5 - ($ - %%insn_004127da) db 0
    %%insn_004127df:
    push eax ; 004127DF 50
    %if ($ - %%insn_004127df) > 1
        %error "LONG_004127DF"
    %endif
    times 1 - ($ - %%insn_004127df) db 0
    %%insn_004127e0:
    call dword near [0x4244bc] ; 004127E0 FF15BC444200
    %if ($ - %%insn_004127e0) > 6
        %error "LONG_004127E0"
    %endif
    times 6 - ($ - %%insn_004127e0) db 0
    db 0x8B, 0xF0 ; 004127E6 8BF0 | mov esi,eax | encoding preserved
    %%insn_004127e8:
    test esi,esi ; 004127E8 85F6
    %if ($ - %%insn_004127e8) > 2
        %error "LONG_004127E8"
    %endif
    times 2 - ($ - %%insn_004127e8) db 0
    %%insn_004127ea:
    jnz short 0x41283e ; 004127EA 7552
    %if ($ - %%insn_004127ea) > 2
        %error "LONG_004127EA"
    %endif
    times 2 - ($ - %%insn_004127ea) db 0
    %%insn_004127ec:
    push dword 0x74 ; 004127EC 6A74
    %if ($ - %%insn_004127ec) > 2
        %error "LONG_004127EC"
    %endif
    times 2 - ($ - %%insn_004127ec) db 0
    %%insn_004127ee:
    push dword 0x1 ; 004127EE 6A01
    %if ($ - %%insn_004127ee) > 2
        %error "LONG_004127EE"
    %endif
    times 2 - ($ - %%insn_004127ee) db 0
    %%insn_004127f0:
    call 0x415550 ; 004127F0 E85B2D0000
    %if ($ - %%insn_004127f0) > 5
        %error "LONG_004127F0"
    %endif
    times 5 - ($ - %%insn_004127f0) db 0
    db 0x8B, 0xF0 ; 004127F5 8BF0 | mov esi,eax | encoding preserved
    %%insn_004127f7:
    add esp,0x8 ; 004127F7 83C408
    %if ($ - %%insn_004127f7) > 3
        %error "LONG_004127F7"
    %endif
    times 3 - ($ - %%insn_004127f7) db 0
    %%insn_004127fa:
    test esi,esi ; 004127FA 85F6
    %if ($ - %%insn_004127fa) > 2
        %error "LONG_004127FA"
    %endif
    times 2 - ($ - %%insn_004127fa) db 0
    %%insn_004127fc:
    jz short 0x412834 ; 004127FC 7436
    %if ($ - %%insn_004127fc) > 2
        %error "LONG_004127FC"
    %endif
    times 2 - ($ - %%insn_004127fc) db 0
    %%insn_004127fe:
    mov ecx,[0x41e310] ; 004127FE 8B0D10E34100
    %if ($ - %%insn_004127fe) > 6
        %error "LONG_004127FE"
    %endif
    times 6 - ($ - %%insn_004127fe) db 0
    %%insn_00412804:
    push esi ; 00412804 56
    %if ($ - %%insn_00412804) > 1
        %error "LONG_00412804"
    %endif
    times 1 - ($ - %%insn_00412804) db 0
    %%insn_00412805:
    push ecx ; 00412805 51
    %if ($ - %%insn_00412805) > 1
        %error "LONG_00412805"
    %endif
    times 1 - ($ - %%insn_00412805) db 0
    %%insn_00412806:
    call dword near [0x4244b0] ; 00412806 FF15B0444200
    %if ($ - %%insn_00412806) > 6
        %error "LONG_00412806"
    %endif
    times 6 - ($ - %%insn_00412806) db 0
    %%insn_0041280c:
    test eax,eax ; 0041280C 85C0
    %if ($ - %%insn_0041280c) > 2
        %error "LONG_0041280C"
    %endif
    times 2 - ($ - %%insn_0041280c) db 0
    %%insn_0041280e:
    jz short 0x412834 ; 0041280E 7424
    %if ($ - %%insn_0041280e) > 2
        %error "LONG_0041280E"
    %endif
    times 2 - ($ - %%insn_0041280e) db 0
    %%insn_00412810:
    push esi ; 00412810 56
    %if ($ - %%insn_00412810) > 1
        %error "LONG_00412810"
    %endif
    times 1 - ($ - %%insn_00412810) db 0
    %%insn_00412811:
    call 0x4127b0 ; 00412811 E89AFFFFFF
    %if ($ - %%insn_00412811) > 5
        %error "LONG_00412811"
    %endif
    times 5 - ($ - %%insn_00412811) db 0
    %%insn_00412816:
    add esp,0x4 ; 00412816 83C404
    %if ($ - %%insn_00412816) > 3
        %error "LONG_00412816"
    %endif
    times 3 - ($ - %%insn_00412816) db 0
    %%insn_00412819:
    call dword near [0x4244c4] ; 00412819 FF15C4444200
    %if ($ - %%insn_00412819) > 6
        %error "LONG_00412819"
    %endif
    times 6 - ($ - %%insn_00412819) db 0
    %%insn_0041281f:
    push edi ; 0041281F 57
    %if ($ - %%insn_0041281f) > 1
        %error "LONG_0041281F"
    %endif
    times 1 - ($ - %%insn_0041281f) db 0
    %%insn_00412820:
    mov [esi],eax ; 00412820 8906
    %if ($ - %%insn_00412820) > 2
        %error "LONG_00412820"
    %endif
    times 2 - ($ - %%insn_00412820) db 0
    %%insn_00412822:
    mov dword [esi+0x4],0xffffffff ; 00412822 C74604FFFFFFFF
    %if ($ - %%insn_00412822) > 7
        %error "LONG_00412822"
    %endif
    times 7 - ($ - %%insn_00412822) db 0
    %%insn_00412829:
    call dword near [0x42448c] ; 00412829 FF158C444200
    %if ($ - %%insn_00412829) > 6
        %error "LONG_00412829"
    %endif
    times 6 - ($ - %%insn_00412829) db 0
    db 0x8B, 0xC6 ; 0041282F 8BC6 | mov eax,esi | encoding preserved
    %%insn_00412831:
    pop edi ; 00412831 5F
    %if ($ - %%insn_00412831) > 1
        %error "LONG_00412831"
    %endif
    times 1 - ($ - %%insn_00412831) db 0
    %%insn_00412832:
    pop esi ; 00412832 5E
    %if ($ - %%insn_00412832) > 1
        %error "LONG_00412832"
    %endif
    times 1 - ($ - %%insn_00412832) db 0
    %%insn_00412833:
    ret ; 00412833 C3
    %if ($ - %%insn_00412833) > 1
        %error "LONG_00412833"
    %endif
    times 1 - ($ - %%insn_00412833) db 0
    %%insn_00412834:
    push dword 0x10 ; 00412834 6A10
    %if ($ - %%insn_00412834) > 2
        %error "LONG_00412834"
    %endif
    times 2 - ($ - %%insn_00412834) db 0
    %%insn_00412836:
    call 0x40dda0 ; 00412836 E865B5FFFF
    %if ($ - %%insn_00412836) > 5
        %error "LONG_00412836"
    %endif
    times 5 - ($ - %%insn_00412836) db 0
    %%insn_0041283b:
    add esp,0x4 ; 0041283B 83C404
    %if ($ - %%insn_0041283b) > 3
        %error "LONG_0041283B"
    %endif
    times 3 - ($ - %%insn_0041283b) db 0
    %%insn_0041283e:
    push edi ; 0041283E 57
    %if ($ - %%insn_0041283e) > 1
        %error "LONG_0041283E"
    %endif
    times 1 - ($ - %%insn_0041283e) db 0
    %%insn_0041283f:
    call dword near [0x42448c] ; 0041283F FF158C444200
    %if ($ - %%insn_0041283f) > 6
        %error "LONG_0041283F"
    %endif
    times 6 - ($ - %%insn_0041283f) db 0
    db 0x8B, 0xC6 ; 00412845 8BC6 | mov eax,esi | encoding preserved
    %%insn_00412847:
    pop edi ; 00412847 5F
    %if ($ - %%insn_00412847) > 1
        %error "LONG_00412847"
    %endif
    times 1 - ($ - %%insn_00412847) db 0
    %%insn_00412848:
    pop esi ; 00412848 5E
    %if ($ - %%insn_00412848) > 1
        %error "LONG_00412848"
    %endif
    times 1 - ($ - %%insn_00412848) db 0
    %%insn_00412849:
    ret ; 00412849 C3
    %if ($ - %%insn_00412849) > 1
        %error "LONG_00412849"
    %endif
    times 1 - ($ - %%insn_00412849) db 0
    %if ($ - %%fragment_start) != 122
        %error "function fragment size drift: 004127D0"
    %endif
%endmacro
