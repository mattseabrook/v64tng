; PE virtual entry 0040F8A0
; Ghidra working symbol: FUN_0040f8a0
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040f8a0_part_00 0
    %%fragment_start:
func_0040f8a0:
    %%insn_0040f8a0:
    push ebx ; 0040F8A0 53
    %if ($ - %%insn_0040f8a0) > 1
        %error "LONG_0040F8A0"
    %endif
    times 1 - ($ - %%insn_0040f8a0) db 0
    %%insn_0040f8a1:
    push esi ; 0040F8A1 56
    %if ($ - %%insn_0040f8a1) > 1
        %error "LONG_0040F8A1"
    %endif
    times 1 - ($ - %%insn_0040f8a1) db 0
    %%insn_0040f8a2:
    mov esi,[esp+0xc] ; 0040F8A2 8B74240C
    %if ($ - %%insn_0040f8a2) > 4
        %error "LONG_0040F8A2"
    %endif
    times 4 - ($ - %%insn_0040f8a2) db 0
    db 0x33, 0xDB ; 0040F8A6 33DB | xor ebx,ebx | encoding preserved
    %%insn_0040f8a8:
    push edi ; 0040F8A8 57
    %if ($ - %%insn_0040f8a8) > 1
        %error "LONG_0040F8A8"
    %endif
    times 1 - ($ - %%insn_0040f8a8) db 0
    %%insn_0040f8a9:
    mov eax,[esi+0xc] ; 0040F8A9 8B460C
    %if ($ - %%insn_0040f8a9) > 3
        %error "LONG_0040F8A9"
    %endif
    times 3 - ($ - %%insn_0040f8a9) db 0
    db 0x8B, 0xC8 ; 0040F8AC 8BC8 | mov ecx,eax | encoding preserved
    %%insn_0040f8ae:
    and ecx,0x3 ; 0040F8AE 83E103
    %if ($ - %%insn_0040f8ae) > 3
        %error "LONG_0040F8AE"
    %endif
    times 3 - ($ - %%insn_0040f8ae) db 0
    %%insn_0040f8b1:
    cmp cl,0x2 ; 0040F8B1 80F902
    %if ($ - %%insn_0040f8b1) > 3
        %error "LONG_0040F8B1"
    %endif
    times 3 - ($ - %%insn_0040f8b1) db 0
    %%insn_0040f8b4:
    jnz short 0x40f8fc ; 0040F8B4 7546
    %if ($ - %%insn_0040f8b4) > 2
        %error "LONG_0040F8B4"
    %endif
    times 2 - ($ - %%insn_0040f8b4) db 0
    %%insn_0040f8b6:
    test eax,0x108 ; 0040F8B6 A908010000
    %if ($ - %%insn_0040f8b6) > 5
        %error "LONG_0040F8B6"
    %endif
    times 5 - ($ - %%insn_0040f8b6) db 0
    %%insn_0040f8bb:
    jz short 0x40f8fc ; 0040F8BB 743F
    %if ($ - %%insn_0040f8bb) > 2
        %error "LONG_0040F8BB"
    %endif
    times 2 - ($ - %%insn_0040f8bb) db 0
    %%insn_0040f8bd:
    mov eax,[esi+0x8] ; 0040F8BD 8B4608
    %if ($ - %%insn_0040f8bd) > 3
        %error "LONG_0040F8BD"
    %endif
    times 3 - ($ - %%insn_0040f8bd) db 0
    %%insn_0040f8c0:
    mov edi,[esi] ; 0040F8C0 8B3E
    %if ($ - %%insn_0040f8c0) > 2
        %error "LONG_0040F8C0"
    %endif
    times 2 - ($ - %%insn_0040f8c0) db 0
    db 0x2B, 0xF8 ; 0040F8C2 2BF8 | sub edi,eax | encoding preserved
    %%insn_0040f8c4:
    test edi,edi ; 0040F8C4 85FF
    %if ($ - %%insn_0040f8c4) > 2
        %error "LONG_0040F8C4"
    %endif
    times 2 - ($ - %%insn_0040f8c4) db 0
    %%insn_0040f8c6:
    jng short 0x40f8fc ; 0040F8C6 7E34
    %if ($ - %%insn_0040f8c6) > 2
        %error "LONG_0040F8C6"
    %endif
    times 2 - ($ - %%insn_0040f8c6) db 0
    %%insn_0040f8c8:
    mov edx,[esi+0x10] ; 0040F8C8 8B5610
    %if ($ - %%insn_0040f8c8) > 3
        %error "LONG_0040F8C8"
    %endif
    times 3 - ($ - %%insn_0040f8c8) db 0
    %%insn_0040f8cb:
    push edi ; 0040F8CB 57
    %if ($ - %%insn_0040f8cb) > 1
        %error "LONG_0040F8CB"
    %endif
    times 1 - ($ - %%insn_0040f8cb) db 0
    %%insn_0040f8cc:
    push eax ; 0040F8CC 50
    %if ($ - %%insn_0040f8cc) > 1
        %error "LONG_0040F8CC"
    %endif
    times 1 - ($ - %%insn_0040f8cc) db 0
    %%insn_0040f8cd:
    push edx ; 0040F8CD 52
    %if ($ - %%insn_0040f8cd) > 1
        %error "LONG_0040F8CD"
    %endif
    times 1 - ($ - %%insn_0040f8cd) db 0
    %%insn_0040f8ce:
    call 0x40f9e0 ; 0040F8CE E80D010000
    %if ($ - %%insn_0040f8ce) > 5
        %error "LONG_0040F8CE"
    %endif
    times 5 - ($ - %%insn_0040f8ce) db 0
    %%insn_0040f8d3:
    add esp,0xc ; 0040F8D3 83C40C
    %if ($ - %%insn_0040f8d3) > 3
        %error "LONG_0040F8D3"
    %endif
    times 3 - ($ - %%insn_0040f8d3) db 0
    db 0x3B, 0xC7 ; 0040F8D6 3BC7 | cmp eax,edi | encoding preserved
    %%insn_0040f8d8:
    mov eax,[esi+0xc] ; 0040F8D8 8B460C
    %if ($ - %%insn_0040f8d8) > 3
        %error "LONG_0040F8D8"
    %endif
    times 3 - ($ - %%insn_0040f8d8) db 0
    %%insn_0040f8db:
    jnz short 0x40f8f4 ; 0040F8DB 7517
    %if ($ - %%insn_0040f8db) > 2
        %error "LONG_0040F8DB"
    %endif
    times 2 - ($ - %%insn_0040f8db) db 0
    %%insn_0040f8dd:
    test al,0x80 ; 0040F8DD A880
    %if ($ - %%insn_0040f8dd) > 2
        %error "LONG_0040F8DD"
    %endif
    times 2 - ($ - %%insn_0040f8dd) db 0
    %%insn_0040f8df:
    jz short 0x40f8fc ; 0040F8DF 741B
    %if ($ - %%insn_0040f8df) > 2
        %error "LONG_0040F8DF"
    %endif
    times 2 - ($ - %%insn_0040f8df) db 0
    %%insn_0040f8e1:
    and al,0xfd ; 0040F8E1 24FD
    %if ($ - %%insn_0040f8e1) > 2
        %error "LONG_0040F8E1"
    %endif
    times 2 - ($ - %%insn_0040f8e1) db 0
    %%insn_0040f8e3:
    mov [esi+0x4],ebx ; 0040F8E3 895E04
    %if ($ - %%insn_0040f8e3) > 3
        %error "LONG_0040F8E3"
    %endif
    times 3 - ($ - %%insn_0040f8e3) db 0
    %%insn_0040f8e6:
    mov [esi+0xc],eax ; 0040F8E6 89460C
    %if ($ - %%insn_0040f8e6) > 3
        %error "LONG_0040F8E6"
    %endif
    times 3 - ($ - %%insn_0040f8e6) db 0
    %%insn_0040f8e9:
    mov eax,[esi+0x8] ; 0040F8E9 8B4608
    %if ($ - %%insn_0040f8e9) > 3
        %error "LONG_0040F8E9"
    %endif
    times 3 - ($ - %%insn_0040f8e9) db 0
    %%insn_0040f8ec:
    mov [esi],eax ; 0040F8EC 8906
    %if ($ - %%insn_0040f8ec) > 2
        %error "LONG_0040F8EC"
    %endif
    times 2 - ($ - %%insn_0040f8ec) db 0
    db 0x8B, 0xC3 ; 0040F8EE 8BC3 | mov eax,ebx | encoding preserved
    %%insn_0040f8f0:
    pop edi ; 0040F8F0 5F
    %if ($ - %%insn_0040f8f0) > 1
        %error "LONG_0040F8F0"
    %endif
    times 1 - ($ - %%insn_0040f8f0) db 0
    %%insn_0040f8f1:
    pop esi ; 0040F8F1 5E
    %if ($ - %%insn_0040f8f1) > 1
        %error "LONG_0040F8F1"
    %endif
    times 1 - ($ - %%insn_0040f8f1) db 0
    %%insn_0040f8f2:
    pop ebx ; 0040F8F2 5B
    %if ($ - %%insn_0040f8f2) > 1
        %error "LONG_0040F8F2"
    %endif
    times 1 - ($ - %%insn_0040f8f2) db 0
    %%insn_0040f8f3:
    ret ; 0040F8F3 C3
    %if ($ - %%insn_0040f8f3) > 1
        %error "LONG_0040F8F3"
    %endif
    times 1 - ($ - %%insn_0040f8f3) db 0
    %%insn_0040f8f4:
    or al,0x20 ; 0040F8F4 0C20
    %if ($ - %%insn_0040f8f4) > 2
        %error "LONG_0040F8F4"
    %endif
    times 2 - ($ - %%insn_0040f8f4) db 0
    %%insn_0040f8f6:
    or ebx,0xffffffffffffffff ; 0040F8F6 83CBFF
    %if ($ - %%insn_0040f8f6) > 3
        %error "LONG_0040F8F6"
    %endif
    times 3 - ($ - %%insn_0040f8f6) db 0
    %%insn_0040f8f9:
    mov [esi+0xc],eax ; 0040F8F9 89460C
    %if ($ - %%insn_0040f8f9) > 3
        %error "LONG_0040F8F9"
    %endif
    times 3 - ($ - %%insn_0040f8f9) db 0
    %%insn_0040f8fc:
    mov eax,[esi+0x8] ; 0040F8FC 8B4608
    %if ($ - %%insn_0040f8fc) > 3
        %error "LONG_0040F8FC"
    %endif
    times 3 - ($ - %%insn_0040f8fc) db 0
    %%insn_0040f8ff:
    mov dword [esi+0x4],0x0 ; 0040F8FF C7460400000000
    %if ($ - %%insn_0040f8ff) > 7
        %error "LONG_0040F8FF"
    %endif
    times 7 - ($ - %%insn_0040f8ff) db 0
    %%insn_0040f906:
    mov [esi],eax ; 0040F906 8906
    %if ($ - %%insn_0040f906) > 2
        %error "LONG_0040F906"
    %endif
    times 2 - ($ - %%insn_0040f906) db 0
    %%insn_0040f908:
    pop edi ; 0040F908 5F
    %if ($ - %%insn_0040f908) > 1
        %error "LONG_0040F908"
    %endif
    times 1 - ($ - %%insn_0040f908) db 0
    db 0x8B, 0xC3 ; 0040F909 8BC3 | mov eax,ebx | encoding preserved
    %%insn_0040f90b:
    pop esi ; 0040F90B 5E
    %if ($ - %%insn_0040f90b) > 1
        %error "LONG_0040F90B"
    %endif
    times 1 - ($ - %%insn_0040f90b) db 0
    %%insn_0040f90c:
    pop ebx ; 0040F90C 5B
    %if ($ - %%insn_0040f90c) > 1
        %error "LONG_0040F90C"
    %endif
    times 1 - ($ - %%insn_0040f90c) db 0
    %%insn_0040f90d:
    ret ; 0040F90D C3
    %if ($ - %%insn_0040f90d) > 1
        %error "LONG_0040F90D"
    %endif
    times 1 - ($ - %%insn_0040f90d) db 0
    %if ($ - %%fragment_start) != 110
        %error "function fragment size drift: 0040F8A0"
    %endif
%endmacro
