; PE virtual entry 00404983
; Ghidra working symbol: FUN_00404983
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00404983_part_00 0
    %%fragment_start:
func_00404983:
    %%insn_00404983:
    push ebp ; 00404983 55
    %if ($ - %%insn_00404983) > 1
        %error "LONG_00404983"
    %endif
    times 1 - ($ - %%insn_00404983) db 0
    db 0x8B, 0xEC ; 00404984 8BEC | mov ebp,esp | encoding preserved
    %%insn_00404986:
    sub esp,0x1c ; 00404986 83EC1C
    %if ($ - %%insn_00404986) > 3
        %error "LONG_00404986"
    %endif
    times 3 - ($ - %%insn_00404986) db 0
    %%insn_00404989:
    push ebx ; 00404989 53
    %if ($ - %%insn_00404989) > 1
        %error "LONG_00404989"
    %endif
    times 1 - ($ - %%insn_00404989) db 0
    %%insn_0040498a:
    push esi ; 0040498A 56
    %if ($ - %%insn_0040498a) > 1
        %error "LONG_0040498A"
    %endif
    times 1 - ($ - %%insn_0040498a) db 0
    %%insn_0040498b:
    push edi ; 0040498B 57
    %if ($ - %%insn_0040498b) > 1
        %error "LONG_0040498B"
    %endif
    times 1 - ($ - %%insn_0040498b) db 0
    %%insn_0040498c:
    cmp dword [0x41f454],0x0 ; 0040498C 833D54F4410000
    %if ($ - %%insn_0040498c) > 7
        %error "LONG_0040498C"
    %endif
    times 7 - ($ - %%insn_0040498c) db 0
    %%insn_00404993:
    jnz 0x404a8b ; 00404993 0F85F2000000
    %if ($ - %%insn_00404993) > 6
        %error "LONG_00404993"
    %endif
    times 6 - ($ - %%insn_00404993) db 0
    %%insn_00404999:
    mov dword [ebp-0x14],0x0 ; 00404999 C745EC00000000
    %if ($ - %%insn_00404999) > 7
        %error "LONG_00404999"
    %endif
    times 7 - ($ - %%insn_00404999) db 0
    %%insn_004049a0:
    jmp short 0x4049ab ; 004049A0 EB09
    %if ($ - %%insn_004049a0) > 2
        %error "LONG_004049A0"
    %endif
    times 2 - ($ - %%insn_004049a0) db 0
    %%insn_004049a2:
    mov eax,[ebp-0x14] ; 004049A2 8B45EC
    %if ($ - %%insn_004049a2) > 3
        %error "LONG_004049A2"
    %endif
    times 3 - ($ - %%insn_004049a2) db 0
    %%insn_004049a5:
    add eax,0x1 ; 004049A5 83C001
    %if ($ - %%insn_004049a5) > 3
        %error "LONG_004049A5"
    %endif
    times 3 - ($ - %%insn_004049a5) db 0
    %%insn_004049a8:
    mov [ebp-0x14],eax ; 004049A8 8945EC
    %if ($ - %%insn_004049a8) > 3
        %error "LONG_004049A8"
    %endif
    times 3 - ($ - %%insn_004049a8) db 0
    %%insn_004049ab:
    cmp dword [ebp-0x14],0x100 ; 004049AB 817DEC00010000
    %if ($ - %%insn_004049ab) > 7
        %error "LONG_004049AB"
    %endif
    times 7 - ($ - %%insn_004049ab) db 0
    %%insn_004049b2:
    jnl short 0x404a0c ; 004049B2 7D58
    %if ($ - %%insn_004049b2) > 2
        %error "LONG_004049B2"
    %endif
    times 2 - ($ - %%insn_004049b2) db 0
    %%insn_004049b4:
    mov ecx,[ebp-0x14] ; 004049B4 8B4DEC
    %if ($ - %%insn_004049b4) > 3
        %error "LONG_004049B4"
    %endif
    times 3 - ($ - %%insn_004049b4) db 0
    %%insn_004049b7:
    mov byte [ecx+0x41f350],0x0 ; 004049B7 C68150F3410000
    %if ($ - %%insn_004049b7) > 7
        %error "LONG_004049B7"
    %endif
    times 7 - ($ - %%insn_004049b7) db 0
    %%insn_004049be:
    mov edx,[ebp-0x14] ; 004049BE 8B55EC
    %if ($ - %%insn_004049be) > 3
        %error "LONG_004049BE"
    %endif
    times 3 - ($ - %%insn_004049be) db 0
    %%insn_004049c1:
    imul edx,edx,0x3 ; 004049C1 6BD203
    %if ($ - %%insn_004049c1) > 3
        %error "LONG_004049C1"
    %endif
    times 3 - ($ - %%insn_004049c1) db 0
    %%insn_004049c4:
    mov eax,[ebp-0x14] ; 004049C4 8B45EC
    %if ($ - %%insn_004049c4) > 3
        %error "LONG_004049C4"
    %endif
    times 3 - ($ - %%insn_004049c4) db 0
    %%insn_004049c7:
    mov ecx,[0x421344] ; 004049C7 8B0D44134200
    %if ($ - %%insn_004049c7) > 6
        %error "LONG_004049C7"
    %endif
    times 6 - ($ - %%insn_004049c7) db 0
    %%insn_004049cd:
    mov dl,[ecx+edx] ; 004049CD 8A1411
    %if ($ - %%insn_004049cd) > 3
        %error "LONG_004049CD"
    %endif
    times 3 - ($ - %%insn_004049cd) db 0
    %%insn_004049d0:
    mov [eax*4+0x421f80],dl ; 004049D0 881485801F4200
    %if ($ - %%insn_004049d0) > 7
        %error "LONG_004049D0"
    %endif
    times 7 - ($ - %%insn_004049d0) db 0
    %%insn_004049d7:
    mov eax,[ebp-0x14] ; 004049D7 8B45EC
    %if ($ - %%insn_004049d7) > 3
        %error "LONG_004049D7"
    %endif
    times 3 - ($ - %%insn_004049d7) db 0
    %%insn_004049da:
    imul eax,eax,0x3 ; 004049DA 6BC003
    %if ($ - %%insn_004049da) > 3
        %error "LONG_004049DA"
    %endif
    times 3 - ($ - %%insn_004049da) db 0
    %%insn_004049dd:
    mov ecx,[ebp-0x14] ; 004049DD 8B4DEC
    %if ($ - %%insn_004049dd) > 3
        %error "LONG_004049DD"
    %endif
    times 3 - ($ - %%insn_004049dd) db 0
    %%insn_004049e0:
    mov edx,[0x421344] ; 004049E0 8B1544134200
    %if ($ - %%insn_004049e0) > 6
        %error "LONG_004049E0"
    %endif
    times 6 - ($ - %%insn_004049e0) db 0
    %%insn_004049e6:
    mov al,[edx+eax+0x1] ; 004049E6 8A440201
    %if ($ - %%insn_004049e6) > 4
        %error "LONG_004049E6"
    %endif
    times 4 - ($ - %%insn_004049e6) db 0
    %%insn_004049ea:
    mov [ecx*4+0x421f81],al ; 004049EA 88048D811F4200
    %if ($ - %%insn_004049ea) > 7
        %error "LONG_004049EA"
    %endif
    times 7 - ($ - %%insn_004049ea) db 0
    %%insn_004049f1:
    mov ecx,[ebp-0x14] ; 004049F1 8B4DEC
    %if ($ - %%insn_004049f1) > 3
        %error "LONG_004049F1"
    %endif
    times 3 - ($ - %%insn_004049f1) db 0
    %%insn_004049f4:
    imul ecx,ecx,0x3 ; 004049F4 6BC903
    %if ($ - %%insn_004049f4) > 3
        %error "LONG_004049F4"
    %endif
    times 3 - ($ - %%insn_004049f4) db 0
    %%insn_004049f7:
    mov edx,[ebp-0x14] ; 004049F7 8B55EC
    %if ($ - %%insn_004049f7) > 3
        %error "LONG_004049F7"
    %endif
    times 3 - ($ - %%insn_004049f7) db 0
    %%insn_004049fa:
    mov eax,[0x421344] ; 004049FA A144134200
    %if ($ - %%insn_004049fa) > 5
        %error "LONG_004049FA"
    %endif
    times 5 - ($ - %%insn_004049fa) db 0
    %%insn_004049ff:
    mov cl,[eax+ecx+0x2] ; 004049FF 8A4C0802
    %if ($ - %%insn_004049ff) > 4
        %error "LONG_004049FF"
    %endif
    times 4 - ($ - %%insn_004049ff) db 0
    %%insn_00404a03:
    mov [edx*4+0x421f82],cl ; 00404A03 880C95821F4200
    %if ($ - %%insn_00404a03) > 7
        %error "LONG_00404A03"
    %endif
    times 7 - ($ - %%insn_00404a03) db 0
    %%insn_00404a0a:
    jmp short 0x4049a2 ; 00404A0A EB96
    %if ($ - %%insn_00404a0a) > 2
        %error "LONG_00404A0A"
    %endif
    times 2 - ($ - %%insn_00404a0a) db 0
    %%insn_00404a0c:
    mov edx,[0x42133c] ; 00404A0C 8B153C134200
    %if ($ - %%insn_00404a0c) > 6
        %error "LONG_00404A0C"
    %endif
    times 6 - ($ - %%insn_00404a0c) db 0
    db 0x33, 0xC0 ; 00404A12 33C0 | xor eax,eax | encoding preserved
    %%insn_00404a14:
    mov al,[edx] ; 00404A14 8A02
    %if ($ - %%insn_00404a14) > 2
        %error "LONG_00404A14"
    %endif
    times 2 - ($ - %%insn_00404a14) db 0
    %%insn_00404a16:
    mov byte [eax+0x41f350],0x1 ; 00404A16 C68050F3410001
    %if ($ - %%insn_00404a16) > 7
        %error "LONG_00404A16"
    %endif
    times 7 - ($ - %%insn_00404a16) db 0
    %%insn_00404a1d:
    mov dword [ebp-0x18],0x50 ; 00404A1D C745E850000000
    %if ($ - %%insn_00404a1d) > 7
        %error "LONG_00404A1D"
    %endif
    times 7 - ($ - %%insn_00404a1d) db 0
    %%insn_00404a24:
    jmp short 0x404a2f ; 00404A24 EB09
    %if ($ - %%insn_00404a24) > 2
        %error "LONG_00404A24"
    %endif
    times 2 - ($ - %%insn_00404a24) db 0
    %%insn_00404a26:
    mov ecx,[ebp-0x18] ; 00404A26 8B4DE8
    %if ($ - %%insn_00404a26) > 3
        %error "LONG_00404A26"
    %endif
    times 3 - ($ - %%insn_00404a26) db 0
    %%insn_00404a29:
    add ecx,0x1 ; 00404A29 83C101
    %if ($ - %%insn_00404a29) > 3
        %error "LONG_00404A29"
    %endif
    times 3 - ($ - %%insn_00404a29) db 0
    %%insn_00404a2c:
    mov [ebp-0x18],ecx ; 00404A2C 894DE8
    %if ($ - %%insn_00404a2c) > 3
        %error "LONG_00404A2C"
    %endif
    times 3 - ($ - %%insn_00404a2c) db 0
    %%insn_00404a2f:
    cmp dword [ebp-0x18],0x190 ; 00404A2F 817DE890010000
    %if ($ - %%insn_00404a2f) > 7
        %error "LONG_00404A2F"
    %endif
    times 7 - ($ - %%insn_00404a2f) db 0
    %%insn_00404a36:
    jnl short 0x404a81 ; 00404A36 7D49
    %if ($ - %%insn_00404a36) > 2
        %error "LONG_00404A36"
    %endif
    times 2 - ($ - %%insn_00404a36) db 0
    %%insn_00404a38:
    mov edx,[ebp-0x18] ; 00404A38 8B55E8
    %if ($ - %%insn_00404a38) > 3
        %error "LONG_00404A38"
    %endif
    times 3 - ($ - %%insn_00404a38) db 0
    %%insn_00404a3b:
    imul edx,edx,0x280 ; 00404A3B 69D280020000
    %if ($ - %%insn_00404a3b) > 6
        %error "LONG_00404A3B"
    %endif
    times 6 - ($ - %%insn_00404a3b) db 0
    %%insn_00404a41:
    mov eax,[0x42133c] ; 00404A41 A13C134200
    %if ($ - %%insn_00404a41) > 5
        %error "LONG_00404A41"
    %endif
    times 5 - ($ - %%insn_00404a41) db 0
    db 0x03, 0xC2 ; 00404A46 03C2 | add eax,edx | encoding preserved
    %%insn_00404a48:
    mov [ebp-0x8],eax ; 00404A48 8945F8
    %if ($ - %%insn_00404a48) > 3
        %error "LONG_00404A48"
    %endif
    times 3 - ($ - %%insn_00404a48) db 0
    %%insn_00404a4b:
    mov dword [ebp-0x14],0x0 ; 00404A4B C745EC00000000
    %if ($ - %%insn_00404a4b) > 7
        %error "LONG_00404A4B"
    %endif
    times 7 - ($ - %%insn_00404a4b) db 0
    %%insn_00404a52:
    jmp short 0x404a5d ; 00404A52 EB09
    %if ($ - %%insn_00404a52) > 2
        %error "LONG_00404A52"
    %endif
    times 2 - ($ - %%insn_00404a52) db 0
    %%insn_00404a54:
    mov ecx,[ebp-0x14] ; 00404A54 8B4DEC
    %if ($ - %%insn_00404a54) > 3
        %error "LONG_00404A54"
    %endif
    times 3 - ($ - %%insn_00404a54) db 0
    %%insn_00404a57:
    add ecx,0x1 ; 00404A57 83C101
    %if ($ - %%insn_00404a57) > 3
        %error "LONG_00404A57"
    %endif
    times 3 - ($ - %%insn_00404a57) db 0
    %%insn_00404a5a:
    mov [ebp-0x14],ecx ; 00404A5A 894DEC
    %if ($ - %%insn_00404a5a) > 3
        %error "LONG_00404A5A"
    %endif
    times 3 - ($ - %%insn_00404a5a) db 0
    %%insn_00404a5d:
    cmp dword [ebp-0x14],0x280 ; 00404A5D 817DEC80020000
    %if ($ - %%insn_00404a5d) > 7
        %error "LONG_00404A5D"
    %endif
    times 7 - ($ - %%insn_00404a5d) db 0
    %%insn_00404a64:
    jnl short 0x404a7f ; 00404A64 7D19
    %if ($ - %%insn_00404a64) > 2
        %error "LONG_00404A64"
    %endif
    times 2 - ($ - %%insn_00404a64) db 0
    %%insn_00404a66:
    mov edx,[ebp-0x8] ; 00404A66 8B55F8
    %if ($ - %%insn_00404a66) > 3
        %error "LONG_00404A66"
    %endif
    times 3 - ($ - %%insn_00404a66) db 0
    db 0x33, 0xC0 ; 00404A69 33C0 | xor eax,eax | encoding preserved
    %%insn_00404a6b:
    mov al,[edx] ; 00404A6B 8A02
    %if ($ - %%insn_00404a6b) > 2
        %error "LONG_00404A6B"
    %endif
    times 2 - ($ - %%insn_00404a6b) db 0
    %%insn_00404a6d:
    mov byte [eax+0x41f350],0x1 ; 00404A6D C68050F3410001
    %if ($ - %%insn_00404a6d) > 7
        %error "LONG_00404A6D"
    %endif
    times 7 - ($ - %%insn_00404a6d) db 0
    %%insn_00404a74:
    mov ecx,[ebp-0x8] ; 00404A74 8B4DF8
    %if ($ - %%insn_00404a74) > 3
        %error "LONG_00404A74"
    %endif
    times 3 - ($ - %%insn_00404a74) db 0
    %%insn_00404a77:
    add ecx,0x1 ; 00404A77 83C101
    %if ($ - %%insn_00404a77) > 3
        %error "LONG_00404A77"
    %endif
    times 3 - ($ - %%insn_00404a77) db 0
    %%insn_00404a7a:
    mov [ebp-0x8],ecx ; 00404A7A 894DF8
    %if ($ - %%insn_00404a7a) > 3
        %error "LONG_00404A7A"
    %endif
    times 3 - ($ - %%insn_00404a7a) db 0
    %%insn_00404a7d:
    jmp short 0x404a54 ; 00404A7D EBD5
    %if ($ - %%insn_00404a7d) > 2
        %error "LONG_00404A7D"
    %endif
    times 2 - ($ - %%insn_00404a7d) db 0
    %%insn_00404a7f:
    jmp short 0x404a26 ; 00404A7F EBA5
    %if ($ - %%insn_00404a7f) > 2
        %error "LONG_00404A7F"
    %endif
    times 2 - ($ - %%insn_00404a7f) db 0
    %%insn_00404a81:
    mov dword [0x41f454],0x1 ; 00404A81 C70554F4410001000000
    %if ($ - %%insn_00404a81) > 10
        %error "LONG_00404A81"
    %endif
    times 10 - ($ - %%insn_00404a81) db 0
    %%insn_00404a8b:
    mov dword [ebp-0xc],0x0 ; 00404A8B C745F400000000
    %if ($ - %%insn_00404a8b) > 7
        %error "LONG_00404A8B"
    %endif
    times 7 - ($ - %%insn_00404a8b) db 0
    %%insn_00404a92:
    mov dword [ebp-0x14],0x0 ; 00404A92 C745EC00000000
    %if ($ - %%insn_00404a92) > 7
        %error "LONG_00404A92"
    %endif
    times 7 - ($ - %%insn_00404a92) db 0
    %%insn_00404a99:
    jmp short 0x404aa4 ; 00404A99 EB09
    %if ($ - %%insn_00404a99) > 2
        %error "LONG_00404A99"
    %endif
    times 2 - ($ - %%insn_00404a99) db 0
    %%insn_00404a9b:
    mov edx,[ebp-0x14] ; 00404A9B 8B55EC
    %if ($ - %%insn_00404a9b) > 3
        %error "LONG_00404A9B"
    %endif
    times 3 - ($ - %%insn_00404a9b) db 0
    %%insn_00404a9e:
    add edx,0x1 ; 00404A9E 83C201
    %if ($ - %%insn_00404a9e) > 3
        %error "LONG_00404A9E"
    %endif
    times 3 - ($ - %%insn_00404a9e) db 0
    %%insn_00404aa1:
    mov [ebp-0x14],edx ; 00404AA1 8955EC
    %if ($ - %%insn_00404aa1) > 3
        %error "LONG_00404AA1"
    %endif
    times 3 - ($ - %%insn_00404aa1) db 0
    %%insn_00404aa4:
    cmp dword [ebp-0x14],0xff ; 00404AA4 817DECFF000000
    %if ($ - %%insn_00404aa4) > 7
        %error "LONG_00404AA4"
    %endif
    times 7 - ($ - %%insn_00404aa4) db 0
    %%insn_00404aab:
    jnl 0x404b34 ; 00404AAB 0F8D83000000
    %if ($ - %%insn_00404aab) > 6
        %error "LONG_00404AAB"
    %endif
    times 6 - ($ - %%insn_00404aab) db 0
    %%insn_00404ab1:
    cmp dword [ebp-0xc],0x20 ; 00404AB1 837DF420
    %if ($ - %%insn_00404ab1) > 4
        %error "LONG_00404AB1"
    %endif
    times 4 - ($ - %%insn_00404ab1) db 0
    %%insn_00404ab5:
    jnl short 0x404b34 ; 00404AB5 7D7D
    %if ($ - %%insn_00404ab5) > 2
        %error "LONG_00404AB5"
    %endif
    times 2 - ($ - %%insn_00404ab5) db 0
    %%insn_00404ab7:
    mov eax,[ebp-0x14] ; 00404AB7 8B45EC
    %if ($ - %%insn_00404ab7) > 3
        %error "LONG_00404AB7"
    %endif
    times 3 - ($ - %%insn_00404ab7) db 0
    db 0x33, 0xC9 ; 00404ABA 33C9 | xor ecx,ecx | encoding preserved
    %%insn_00404abc:
    mov cl,[eax+0x41f350] ; 00404ABC 8A8850F34100
    %if ($ - %%insn_00404abc) > 6
        %error "LONG_00404ABC"
    %endif
    times 6 - ($ - %%insn_00404abc) db 0
    %%insn_00404ac2:
    test ecx,ecx ; 00404AC2 85C9
    %if ($ - %%insn_00404ac2) > 2
        %error "LONG_00404AC2"
    %endif
    times 2 - ($ - %%insn_00404ac2) db 0
    %%insn_00404ac4:
    jnz short 0x404b2f ; 00404AC4 7569
    %if ($ - %%insn_00404ac4) > 2
        %error "LONG_00404AC4"
    %endif
    times 2 - ($ - %%insn_00404ac4) db 0
    %%insn_00404ac6:
    mov edx,[ebp-0xc] ; 00404AC6 8B55F4
    %if ($ - %%insn_00404ac6) > 3
        %error "LONG_00404AC6"
    %endif
    times 3 - ($ - %%insn_00404ac6) db 0
    %%insn_00404ac9:
    imul edx,edx,0x3 ; 00404AC9 6BD203
    %if ($ - %%insn_00404ac9) > 3
        %error "LONG_00404AC9"
    %endif
    times 3 - ($ - %%insn_00404ac9) db 0
    %%insn_00404acc:
    mov eax,[ebp-0x14] ; 00404ACC 8B45EC
    %if ($ - %%insn_00404acc) > 3
        %error "LONG_00404ACC"
    %endif
    times 3 - ($ - %%insn_00404acc) db 0
    %%insn_00404acf:
    imul eax,eax,0x3 ; 00404ACF 6BC003
    %if ($ - %%insn_00404acf) > 3
        %error "LONG_00404ACF"
    %endif
    times 3 - ($ - %%insn_00404acf) db 0
    %%insn_00404ad2:
    mov ecx,[0x421344] ; 00404AD2 8B0D44134200
    %if ($ - %%insn_00404ad2) > 6
        %error "LONG_00404AD2"
    %endif
    times 6 - ($ - %%insn_00404ad2) db 0
    %%insn_00404ad8:
    mov esi,[ebp+0x8] ; 00404AD8 8B7508
    %if ($ - %%insn_00404ad8) > 3
        %error "LONG_00404AD8"
    %endif
    times 3 - ($ - %%insn_00404ad8) db 0
    %%insn_00404adb:
    mov dl,[esi+edx] ; 00404ADB 8A1416
    %if ($ - %%insn_00404adb) > 3
        %error "LONG_00404ADB"
    %endif
    times 3 - ($ - %%insn_00404adb) db 0
    %%insn_00404ade:
    mov [ecx+eax],dl ; 00404ADE 881401
    %if ($ - %%insn_00404ade) > 3
        %error "LONG_00404ADE"
    %endif
    times 3 - ($ - %%insn_00404ade) db 0
    %%insn_00404ae1:
    mov eax,[ebp-0xc] ; 00404AE1 8B45F4
    %if ($ - %%insn_00404ae1) > 3
        %error "LONG_00404AE1"
    %endif
    times 3 - ($ - %%insn_00404ae1) db 0
    %%insn_00404ae4:
    imul eax,eax,0x3 ; 00404AE4 6BC003
    %if ($ - %%insn_00404ae4) > 3
        %error "LONG_00404AE4"
    %endif
    times 3 - ($ - %%insn_00404ae4) db 0
    %%insn_00404ae7:
    mov ecx,[ebp-0x14] ; 00404AE7 8B4DEC
    %if ($ - %%insn_00404ae7) > 3
        %error "LONG_00404AE7"
    %endif
    times 3 - ($ - %%insn_00404ae7) db 0
    %%insn_00404aea:
    imul ecx,ecx,0x3 ; 00404AEA 6BC903
    %if ($ - %%insn_00404aea) > 3
        %error "LONG_00404AEA"
    %endif
    times 3 - ($ - %%insn_00404aea) db 0
    %%insn_00404aed:
    mov edx,[0x421344] ; 00404AED 8B1544134200
    %if ($ - %%insn_00404aed) > 6
        %error "LONG_00404AED"
    %endif
    times 6 - ($ - %%insn_00404aed) db 0
    %%insn_00404af3:
    mov esi,[ebp+0x8] ; 00404AF3 8B7508
    %if ($ - %%insn_00404af3) > 3
        %error "LONG_00404AF3"
    %endif
    times 3 - ($ - %%insn_00404af3) db 0
    %%insn_00404af6:
    mov al,[esi+eax+0x1] ; 00404AF6 8A440601
    %if ($ - %%insn_00404af6) > 4
        %error "LONG_00404AF6"
    %endif
    times 4 - ($ - %%insn_00404af6) db 0
    %%insn_00404afa:
    mov [edx+ecx+0x1],al ; 00404AFA 88440A01
    %if ($ - %%insn_00404afa) > 4
        %error "LONG_00404AFA"
    %endif
    times 4 - ($ - %%insn_00404afa) db 0
    %%insn_00404afe:
    mov ecx,[ebp-0xc] ; 00404AFE 8B4DF4
    %if ($ - %%insn_00404afe) > 3
        %error "LONG_00404AFE"
    %endif
    times 3 - ($ - %%insn_00404afe) db 0
    %%insn_00404b01:
    imul ecx,ecx,0x3 ; 00404B01 6BC903
    %if ($ - %%insn_00404b01) > 3
        %error "LONG_00404B01"
    %endif
    times 3 - ($ - %%insn_00404b01) db 0
    %%insn_00404b04:
    mov edx,[ebp-0x14] ; 00404B04 8B55EC
    %if ($ - %%insn_00404b04) > 3
        %error "LONG_00404B04"
    %endif
    times 3 - ($ - %%insn_00404b04) db 0
    %%insn_00404b07:
    imul edx,edx,0x3 ; 00404B07 6BD203
    %if ($ - %%insn_00404b07) > 3
        %error "LONG_00404B07"
    %endif
    times 3 - ($ - %%insn_00404b07) db 0
    %%insn_00404b0a:
    mov eax,[0x421344] ; 00404B0A A144134200
    %if ($ - %%insn_00404b0a) > 5
        %error "LONG_00404B0A"
    %endif
    times 5 - ($ - %%insn_00404b0a) db 0
    %%insn_00404b0f:
    mov esi,[ebp+0x8] ; 00404B0F 8B7508
    %if ($ - %%insn_00404b0f) > 3
        %error "LONG_00404B0F"
    %endif
    times 3 - ($ - %%insn_00404b0f) db 0
    %%insn_00404b12:
    mov cl,[esi+ecx+0x2] ; 00404B12 8A4C0E02
    %if ($ - %%insn_00404b12) > 4
        %error "LONG_00404B12"
    %endif
    times 4 - ($ - %%insn_00404b12) db 0
    %%insn_00404b16:
    mov [eax+edx+0x2],cl ; 00404B16 884C1002
    %if ($ - %%insn_00404b16) > 4
        %error "LONG_00404B16"
    %endif
    times 4 - ($ - %%insn_00404b16) db 0
    %%insn_00404b1a:
    mov edx,[ebp-0xc] ; 00404B1A 8B55F4
    %if ($ - %%insn_00404b1a) > 3
        %error "LONG_00404B1A"
    %endif
    times 3 - ($ - %%insn_00404b1a) db 0
    %%insn_00404b1d:
    mov al,[ebp-0x14] ; 00404B1D 8A45EC
    %if ($ - %%insn_00404b1d) > 3
        %error "LONG_00404B1D"
    %endif
    times 3 - ($ - %%insn_00404b1d) db 0
    %%insn_00404b20:
    mov [edx+0x421f40],al ; 00404B20 8882401F4200
    %if ($ - %%insn_00404b20) > 6
        %error "LONG_00404B20"
    %endif
    times 6 - ($ - %%insn_00404b20) db 0
    %%insn_00404b26:
    mov ecx,[ebp-0xc] ; 00404B26 8B4DF4
    %if ($ - %%insn_00404b26) > 3
        %error "LONG_00404B26"
    %endif
    times 3 - ($ - %%insn_00404b26) db 0
    %%insn_00404b29:
    add ecx,0x1 ; 00404B29 83C101
    %if ($ - %%insn_00404b29) > 3
        %error "LONG_00404B29"
    %endif
    times 3 - ($ - %%insn_00404b29) db 0
    %%insn_00404b2c:
    mov [ebp-0xc],ecx ; 00404B2C 894DF4
    %if ($ - %%insn_00404b2c) > 3
        %error "LONG_00404B2C"
    %endif
    times 3 - ($ - %%insn_00404b2c) db 0
    %%insn_00404b2f:
    jmp 0x404a9b ; 00404B2F E967FFFFFF
    %if ($ - %%insn_00404b2f) > 5
        %error "LONG_00404B2F"
    %endif
    times 5 - ($ - %%insn_00404b2f) db 0
    %%insn_00404b34:
    cmp dword [ebp-0xc],0x20 ; 00404B34 837DF420
    %if ($ - %%insn_00404b34) > 4
        %error "LONG_00404B34"
    %endif
    times 4 - ($ - %%insn_00404b34) db 0
    %%insn_00404b38:
    jz 0x404c8b ; 00404B38 0F844D010000
    %if ($ - %%insn_00404b38) > 6
        %error "LONG_00404B38"
    %endif
    times 6 - ($ - %%insn_00404b38) db 0
    %%insn_00404b3e:
    jmp short 0x404b49 ; 00404B3E EB09
    %if ($ - %%insn_00404b3e) > 2
        %error "LONG_00404B3E"
    %endif
    times 2 - ($ - %%insn_00404b3e) db 0
    %%insn_00404b40:
    mov edx,[ebp-0xc] ; 00404B40 8B55F4
    %if ($ - %%insn_00404b40) > 3
        %error "LONG_00404B40"
    %endif
    times 3 - ($ - %%insn_00404b40) db 0
    %%insn_00404b43:
    add edx,0x1 ; 00404B43 83C201
    %if ($ - %%insn_00404b43) > 3
        %error "LONG_00404B43"
    %endif
    times 3 - ($ - %%insn_00404b43) db 0
    %%insn_00404b46:
    mov [ebp-0xc],edx ; 00404B46 8955F4
    %if ($ - %%insn_00404b46) > 3
        %error "LONG_00404B46"
    %endif
    times 3 - ($ - %%insn_00404b46) db 0
    %%insn_00404b49:
    cmp dword [ebp-0xc],0x20 ; 00404B49 837DF420
    %if ($ - %%insn_00404b49) > 4
        %error "LONG_00404B49"
    %endif
    times 4 - ($ - %%insn_00404b49) db 0
    %%insn_00404b4d:
    jnl 0x404c8b ; 00404B4D 0F8D38010000
    %if ($ - %%insn_00404b4d) > 6
        %error "LONG_00404B4D"
    %endif
    times 6 - ($ - %%insn_00404b4d) db 0
    %%insn_00404b53:
    mov dword [ebp-0x18],0x40000 ; 00404B53 C745E800000400
    %if ($ - %%insn_00404b53) > 7
        %error "LONG_00404B53"
    %endif
    times 7 - ($ - %%insn_00404b53) db 0
    %%insn_00404b5a:
    mov eax,[ebp-0xc] ; 00404B5A 8B45F4
    %if ($ - %%insn_00404b5a) > 3
        %error "LONG_00404B5A"
    %endif
    times 3 - ($ - %%insn_00404b5a) db 0
    %%insn_00404b5d:
    imul eax,eax,0x3 ; 00404B5D 6BC003
    %if ($ - %%insn_00404b5d) > 3
        %error "LONG_00404B5D"
    %endif
    times 3 - ($ - %%insn_00404b5d) db 0
    %%insn_00404b60:
    mov ecx,[ebp+0x8] ; 00404B60 8B4D08
    %if ($ - %%insn_00404b60) > 3
        %error "LONG_00404B60"
    %endif
    times 3 - ($ - %%insn_00404b60) db 0
    %%insn_00404b63:
    mov dl,[ecx+eax] ; 00404B63 8A1401
    %if ($ - %%insn_00404b63) > 3
        %error "LONG_00404B63"
    %endif
    times 3 - ($ - %%insn_00404b63) db 0
    %%insn_00404b66:
    mov [ebp-0x1c],dl ; 00404B66 8855E4
    %if ($ - %%insn_00404b66) > 3
        %error "LONG_00404B66"
    %endif
    times 3 - ($ - %%insn_00404b66) db 0
    %%insn_00404b69:
    mov eax,[ebp-0xc] ; 00404B69 8B45F4
    %if ($ - %%insn_00404b69) > 3
        %error "LONG_00404B69"
    %endif
    times 3 - ($ - %%insn_00404b69) db 0
    %%insn_00404b6c:
    imul eax,eax,0x3 ; 00404B6C 6BC003
    %if ($ - %%insn_00404b6c) > 3
        %error "LONG_00404B6C"
    %endif
    times 3 - ($ - %%insn_00404b6c) db 0
    %%insn_00404b6f:
    mov ecx,[ebp+0x8] ; 00404B6F 8B4D08
    %if ($ - %%insn_00404b6f) > 3
        %error "LONG_00404B6F"
    %endif
    times 3 - ($ - %%insn_00404b6f) db 0
    %%insn_00404b72:
    mov dl,[ecx+eax+0x1] ; 00404B72 8A540101
    %if ($ - %%insn_00404b72) > 4
        %error "LONG_00404B72"
    %endif
    times 4 - ($ - %%insn_00404b72) db 0
    %%insn_00404b76:
    mov [ebp-0x1b],dl ; 00404B76 8855E5
    %if ($ - %%insn_00404b76) > 3
        %error "LONG_00404B76"
    %endif
    times 3 - ($ - %%insn_00404b76) db 0
    %%insn_00404b79:
    mov eax,[ebp-0xc] ; 00404B79 8B45F4
    %if ($ - %%insn_00404b79) > 3
        %error "LONG_00404B79"
    %endif
    times 3 - ($ - %%insn_00404b79) db 0
    %%insn_00404b7c:
    imul eax,eax,0x3 ; 00404B7C 6BC003
    %if ($ - %%insn_00404b7c) > 3
        %error "LONG_00404B7C"
    %endif
    times 3 - ($ - %%insn_00404b7c) db 0
    %%insn_00404b7f:
    mov ecx,[ebp+0x8] ; 00404B7F 8B4D08
    %if ($ - %%insn_00404b7f) > 3
        %error "LONG_00404B7F"
    %endif
    times 3 - ($ - %%insn_00404b7f) db 0
    %%insn_00404b82:
    mov dl,[ecx+eax+0x1] ; 00404B82 8A540101
    %if ($ - %%insn_00404b82) > 4
        %error "LONG_00404B82"
    %endif
    times 4 - ($ - %%insn_00404b82) db 0
    %%insn_00404b86:
    mov [ebp-0x1a],dl ; 00404B86 8855E6
    %if ($ - %%insn_00404b86) > 3
        %error "LONG_00404B86"
    %endif
    times 3 - ($ - %%insn_00404b86) db 0
    %%insn_00404b89:
    mov dword [ebp-0x14],0x1 ; 00404B89 C745EC01000000
    %if ($ - %%insn_00404b89) > 7
        %error "LONG_00404B89"
    %endif
    times 7 - ($ - %%insn_00404b89) db 0
    %%insn_00404b90:
    jmp short 0x404b9b ; 00404B90 EB09
    %if ($ - %%insn_00404b90) > 2
        %error "LONG_00404B90"
    %endif
    times 2 - ($ - %%insn_00404b90) db 0
    %%insn_00404b92:
    mov eax,[ebp-0x14] ; 00404B92 8B45EC
    %if ($ - %%insn_00404b92) > 3
        %error "LONG_00404B92"
    %endif
    times 3 - ($ - %%insn_00404b92) db 0
    %%insn_00404b95:
    add eax,0x1 ; 00404B95 83C001
    %if ($ - %%insn_00404b95) > 3
        %error "LONG_00404B95"
    %endif
    times 3 - ($ - %%insn_00404b95) db 0
    %%insn_00404b98:
    mov [ebp-0x14],eax ; 00404B98 8945EC
    %if ($ - %%insn_00404b98) > 3
        %error "LONG_00404B98"
    %endif
    times 3 - ($ - %%insn_00404b98) db 0
    %%insn_00404b9b:
    cmp dword [ebp-0x14],0xff ; 00404B9B 817DECFF000000
    %if ($ - %%insn_00404b9b) > 7
        %error "LONG_00404B9B"
    %endif
    times 7 - ($ - %%insn_00404b9b) db 0
    %%insn_00404ba2:
    jnl 0x404c7a ; 00404BA2 0F8DD2000000
    %if ($ - %%insn_00404ba2) > 6
        %error "LONG_00404BA2"
    %endif
    times 6 - ($ - %%insn_00404ba2) db 0
    %%insn_00404ba8:
    mov ecx,[ebp-0x1c] ; 00404BA8 8B4DE4
    %if ($ - %%insn_00404ba8) > 3
        %error "LONG_00404BA8"
    %endif
    times 3 - ($ - %%insn_00404ba8) db 0
    %%insn_00404bab:
    and ecx,0xff ; 00404BAB 81E1FF000000
    %if ($ - %%insn_00404bab) > 6
        %error "LONG_00404BAB"
    %endif
    times 6 - ($ - %%insn_00404bab) db 0
    %%insn_00404bb1:
    mov edx,[ebp-0x14] ; 00404BB1 8B55EC
    %if ($ - %%insn_00404bb1) > 3
        %error "LONG_00404BB1"
    %endif
    times 3 - ($ - %%insn_00404bb1) db 0
    %%insn_00404bb4:
    imul edx,edx,0x3 ; 00404BB4 6BD203
    %if ($ - %%insn_00404bb4) > 3
        %error "LONG_00404BB4"
    %endif
    times 3 - ($ - %%insn_00404bb4) db 0
    %%insn_00404bb7:
    mov eax,[0x421344] ; 00404BB7 A144134200
    %if ($ - %%insn_00404bb7) > 5
        %error "LONG_00404BB7"
    %endif
    times 5 - ($ - %%insn_00404bb7) db 0
    db 0x33, 0xDB ; 00404BBC 33DB | xor ebx,ebx | encoding preserved
    %%insn_00404bbe:
    mov bl,[eax+edx] ; 00404BBE 8A1C10
    %if ($ - %%insn_00404bbe) > 3
        %error "LONG_00404BBE"
    %endif
    times 3 - ($ - %%insn_00404bbe) db 0
    db 0x2B, 0xCB ; 00404BC1 2BCB | sub ecx,ebx | encoding preserved
    %%insn_00404bc3:
    mov edx,[ebp-0x1c] ; 00404BC3 8B55E4
    %if ($ - %%insn_00404bc3) > 3
        %error "LONG_00404BC3"
    %endif
    times 3 - ($ - %%insn_00404bc3) db 0
    %%insn_00404bc6:
    and edx,0xff ; 00404BC6 81E2FF000000
    %if ($ - %%insn_00404bc6) > 6
        %error "LONG_00404BC6"
    %endif
    times 6 - ($ - %%insn_00404bc6) db 0
    %%insn_00404bcc:
    mov eax,[ebp-0x14] ; 00404BCC 8B45EC
    %if ($ - %%insn_00404bcc) > 3
        %error "LONG_00404BCC"
    %endif
    times 3 - ($ - %%insn_00404bcc) db 0
    %%insn_00404bcf:
    imul eax,eax,0x3 ; 00404BCF 6BC003
    %if ($ - %%insn_00404bcf) > 3
        %error "LONG_00404BCF"
    %endif
    times 3 - ($ - %%insn_00404bcf) db 0
    %%insn_00404bd2:
    mov esi,[0x421344] ; 00404BD2 8B3544134200
    %if ($ - %%insn_00404bd2) > 6
        %error "LONG_00404BD2"
    %endif
    times 6 - ($ - %%insn_00404bd2) db 0
    db 0x33, 0xDB ; 00404BD8 33DB | xor ebx,ebx | encoding preserved
    %%insn_00404bda:
    mov bl,[esi+eax] ; 00404BDA 8A1C06
    %if ($ - %%insn_00404bda) > 3
        %error "LONG_00404BDA"
    %endif
    times 3 - ($ - %%insn_00404bda) db 0
    db 0x2B, 0xD3 ; 00404BDD 2BD3 | sub edx,ebx | encoding preserved
    %%insn_00404bdf:
    imul ecx,edx ; 00404BDF 0FAFCA
    %if ($ - %%insn_00404bdf) > 3
        %error "LONG_00404BDF"
    %endif
    times 3 - ($ - %%insn_00404bdf) db 0
    %%insn_00404be2:
    mov edx,[ebp-0x1b] ; 00404BE2 8B55E5
    %if ($ - %%insn_00404be2) > 3
        %error "LONG_00404BE2"
    %endif
    times 3 - ($ - %%insn_00404be2) db 0
    %%insn_00404be5:
    and edx,0xff ; 00404BE5 81E2FF000000
    %if ($ - %%insn_00404be5) > 6
        %error "LONG_00404BE5"
    %endif
    times 6 - ($ - %%insn_00404be5) db 0
    %%insn_00404beb:
    mov eax,[ebp-0x14] ; 00404BEB 8B45EC
    %if ($ - %%insn_00404beb) > 3
        %error "LONG_00404BEB"
    %endif
    times 3 - ($ - %%insn_00404beb) db 0
    %%insn_00404bee:
    imul eax,eax,0x3 ; 00404BEE 6BC003
    %if ($ - %%insn_00404bee) > 3
        %error "LONG_00404BEE"
    %endif
    times 3 - ($ - %%insn_00404bee) db 0
    %%insn_00404bf1:
    mov esi,[0x421344] ; 00404BF1 8B3544134200
    %if ($ - %%insn_00404bf1) > 6
        %error "LONG_00404BF1"
    %endif
    times 6 - ($ - %%insn_00404bf1) db 0
    db 0x33, 0xDB ; 00404BF7 33DB | xor ebx,ebx | encoding preserved
    %%insn_00404bf9:
    mov bl,[esi+eax+0x1] ; 00404BF9 8A5C0601
    %if ($ - %%insn_00404bf9) > 4
        %error "LONG_00404BF9"
    %endif
    times 4 - ($ - %%insn_00404bf9) db 0
    db 0x2B, 0xD3 ; 00404BFD 2BD3 | sub edx,ebx | encoding preserved
    %%insn_00404bff:
    mov eax,[ebp-0x1b] ; 00404BFF 8B45E5
    %if ($ - %%insn_00404bff) > 3
        %error "LONG_00404BFF"
    %endif
    times 3 - ($ - %%insn_00404bff) db 0
    %%insn_00404c02:
    and eax,0xff ; 00404C02 25FF000000
    %if ($ - %%insn_00404c02) > 5
        %error "LONG_00404C02"
    %endif
    times 5 - ($ - %%insn_00404c02) db 0
    %%insn_00404c07:
    mov esi,[ebp-0x14] ; 00404C07 8B75EC
    %if ($ - %%insn_00404c07) > 3
        %error "LONG_00404C07"
    %endif
    times 3 - ($ - %%insn_00404c07) db 0
    %%insn_00404c0a:
    imul esi,esi,0x3 ; 00404C0A 6BF603
    %if ($ - %%insn_00404c0a) > 3
        %error "LONG_00404C0A"
    %endif
    times 3 - ($ - %%insn_00404c0a) db 0
    %%insn_00404c0d:
    mov edi,[0x421344] ; 00404C0D 8B3D44134200
    %if ($ - %%insn_00404c0d) > 6
        %error "LONG_00404C0D"
    %endif
    times 6 - ($ - %%insn_00404c0d) db 0
    db 0x33, 0xDB ; 00404C13 33DB | xor ebx,ebx | encoding preserved
    %%insn_00404c15:
    mov bl,[edi+esi+0x1] ; 00404C15 8A5C3701
    %if ($ - %%insn_00404c15) > 4
        %error "LONG_00404C15"
    %endif
    times 4 - ($ - %%insn_00404c15) db 0
    db 0x2B, 0xC3 ; 00404C19 2BC3 | sub eax,ebx | encoding preserved
    %%insn_00404c1b:
    imul edx,eax ; 00404C1B 0FAFD0
    %if ($ - %%insn_00404c1b) > 3
        %error "LONG_00404C1B"
    %endif
    times 3 - ($ - %%insn_00404c1b) db 0
    db 0x03, 0xCA ; 00404C1E 03CA | add ecx,edx | encoding preserved
    %%insn_00404c20:
    mov edx,[ebp-0x1a] ; 00404C20 8B55E6
    %if ($ - %%insn_00404c20) > 3
        %error "LONG_00404C20"
    %endif
    times 3 - ($ - %%insn_00404c20) db 0
    %%insn_00404c23:
    and edx,0xff ; 00404C23 81E2FF000000
    %if ($ - %%insn_00404c23) > 6
        %error "LONG_00404C23"
    %endif
    times 6 - ($ - %%insn_00404c23) db 0
    %%insn_00404c29:
    mov eax,[ebp-0x14] ; 00404C29 8B45EC
    %if ($ - %%insn_00404c29) > 3
        %error "LONG_00404C29"
    %endif
    times 3 - ($ - %%insn_00404c29) db 0
    %%insn_00404c2c:
    imul eax,eax,0x3 ; 00404C2C 6BC003
    %if ($ - %%insn_00404c2c) > 3
        %error "LONG_00404C2C"
    %endif
    times 3 - ($ - %%insn_00404c2c) db 0
    %%insn_00404c2f:
    mov esi,[0x421344] ; 00404C2F 8B3544134200
    %if ($ - %%insn_00404c2f) > 6
        %error "LONG_00404C2F"
    %endif
    times 6 - ($ - %%insn_00404c2f) db 0
    db 0x33, 0xDB ; 00404C35 33DB | xor ebx,ebx | encoding preserved
    %%insn_00404c37:
    mov bl,[esi+eax+0x2] ; 00404C37 8A5C0602
    %if ($ - %%insn_00404c37) > 4
        %error "LONG_00404C37"
    %endif
    times 4 - ($ - %%insn_00404c37) db 0
    db 0x2B, 0xD3 ; 00404C3B 2BD3 | sub edx,ebx | encoding preserved
    %%insn_00404c3d:
    mov eax,[ebp-0x1a] ; 00404C3D 8B45E6
    %if ($ - %%insn_00404c3d) > 3
        %error "LONG_00404C3D"
    %endif
    times 3 - ($ - %%insn_00404c3d) db 0
    %%insn_00404c40:
    and eax,0xff ; 00404C40 25FF000000
    %if ($ - %%insn_00404c40) > 5
        %error "LONG_00404C40"
    %endif
    times 5 - ($ - %%insn_00404c40) db 0
    %%insn_00404c45:
    mov esi,[ebp-0x14] ; 00404C45 8B75EC
    %if ($ - %%insn_00404c45) > 3
        %error "LONG_00404C45"
    %endif
    times 3 - ($ - %%insn_00404c45) db 0
    %%insn_00404c48:
    imul esi,esi,0x3 ; 00404C48 6BF603
    %if ($ - %%insn_00404c48) > 3
        %error "LONG_00404C48"
    %endif
    times 3 - ($ - %%insn_00404c48) db 0
    %%insn_00404c4b:
    mov edi,[0x421344] ; 00404C4B 8B3D44134200
    %if ($ - %%insn_00404c4b) > 6
        %error "LONG_00404C4B"
    %endif
    times 6 - ($ - %%insn_00404c4b) db 0
    db 0x33, 0xDB ; 00404C51 33DB | xor ebx,ebx | encoding preserved
    %%insn_00404c53:
    mov bl,[edi+esi+0x2] ; 00404C53 8A5C3702
    %if ($ - %%insn_00404c53) > 4
        %error "LONG_00404C53"
    %endif
    times 4 - ($ - %%insn_00404c53) db 0
    db 0x2B, 0xC3 ; 00404C57 2BC3 | sub eax,ebx | encoding preserved
    %%insn_00404c59:
    imul edx,eax ; 00404C59 0FAFD0
    %if ($ - %%insn_00404c59) > 3
        %error "LONG_00404C59"
    %endif
    times 3 - ($ - %%insn_00404c59) db 0
    db 0x03, 0xCA ; 00404C5C 03CA | add ecx,edx | encoding preserved
    %%insn_00404c5e:
    mov [ebp-0x10],ecx ; 00404C5E 894DF0
    %if ($ - %%insn_00404c5e) > 3
        %error "LONG_00404C5E"
    %endif
    times 3 - ($ - %%insn_00404c5e) db 0
    %%insn_00404c61:
    mov ecx,[ebp-0x10] ; 00404C61 8B4DF0
    %if ($ - %%insn_00404c61) > 3
        %error "LONG_00404C61"
    %endif
    times 3 - ($ - %%insn_00404c61) db 0
    %%insn_00404c64:
    cmp ecx,[ebp-0x18] ; 00404C64 3B4DE8
    %if ($ - %%insn_00404c64) > 3
        %error "LONG_00404C64"
    %endif
    times 3 - ($ - %%insn_00404c64) db 0
    %%insn_00404c67:
    jnl short 0x404c75 ; 00404C67 7D0C
    %if ($ - %%insn_00404c67) > 2
        %error "LONG_00404C67"
    %endif
    times 2 - ($ - %%insn_00404c67) db 0
    %%insn_00404c69:
    mov edx,[ebp-0x10] ; 00404C69 8B55F0
    %if ($ - %%insn_00404c69) > 3
        %error "LONG_00404C69"
    %endif
    times 3 - ($ - %%insn_00404c69) db 0
    %%insn_00404c6c:
    mov [ebp-0x18],edx ; 00404C6C 8955E8
    %if ($ - %%insn_00404c6c) > 3
        %error "LONG_00404C6C"
    %endif
    times 3 - ($ - %%insn_00404c6c) db 0
    %%insn_00404c6f:
    mov eax,[ebp-0x14] ; 00404C6F 8B45EC
    %if ($ - %%insn_00404c6f) > 3
        %error "LONG_00404C6F"
    %endif
    times 3 - ($ - %%insn_00404c6f) db 0
    %%insn_00404c72:
    mov [ebp-0x4],eax ; 00404C72 8945FC
    %if ($ - %%insn_00404c72) > 3
        %error "LONG_00404C72"
    %endif
    times 3 - ($ - %%insn_00404c72) db 0
    %%insn_00404c75:
    jmp 0x404b92 ; 00404C75 E918FFFFFF
    %if ($ - %%insn_00404c75) > 5
        %error "LONG_00404C75"
    %endif
    times 5 - ($ - %%insn_00404c75) db 0
    %%insn_00404c7a:
    mov ecx,[ebp-0xc] ; 00404C7A 8B4DF4
    %if ($ - %%insn_00404c7a) > 3
        %error "LONG_00404C7A"
    %endif
    times 3 - ($ - %%insn_00404c7a) db 0
    %%insn_00404c7d:
    mov dl,[ebp-0x4] ; 00404C7D 8A55FC
    %if ($ - %%insn_00404c7d) > 3
        %error "LONG_00404C7D"
    %endif
    times 3 - ($ - %%insn_00404c7d) db 0
    %%insn_00404c80:
    mov [ecx+0x421f40],dl ; 00404C80 8891401F4200
    %if ($ - %%insn_00404c80) > 6
        %error "LONG_00404C80"
    %endif
    times 6 - ($ - %%insn_00404c80) db 0
    %%insn_00404c86:
    jmp 0x404b40 ; 00404C86 E9B5FEFFFF
    %if ($ - %%insn_00404c86) > 5
        %error "LONG_00404C86"
    %endif
    times 5 - ($ - %%insn_00404c86) db 0
    %%insn_00404c8b:
    mov ecx,0x421300 ; 00404C8B B900134200
    %if ($ - %%insn_00404c8b) > 5
        %error "LONG_00404C8B"
    %endif
    times 5 - ($ - %%insn_00404c8b) db 0
    %%insn_00404c90:
    call dword near [0x4213b8] ; 00404C90 FF15B8134200
    %if ($ - %%insn_00404c90) > 6
        %error "LONG_00404C90"
    %endif
    times 6 - ($ - %%insn_00404c90) db 0
    %%insn_00404c96:
    mov eax,0x1 ; 00404C96 B801000000
    %if ($ - %%insn_00404c96) > 5
        %error "LONG_00404C96"
    %endif
    times 5 - ($ - %%insn_00404c96) db 0
    %%insn_00404c9b:
    pop edi ; 00404C9B 5F
    %if ($ - %%insn_00404c9b) > 1
        %error "LONG_00404C9B"
    %endif
    times 1 - ($ - %%insn_00404c9b) db 0
    %%insn_00404c9c:
    pop esi ; 00404C9C 5E
    %if ($ - %%insn_00404c9c) > 1
        %error "LONG_00404C9C"
    %endif
    times 1 - ($ - %%insn_00404c9c) db 0
    %%insn_00404c9d:
    pop ebx ; 00404C9D 5B
    %if ($ - %%insn_00404c9d) > 1
        %error "LONG_00404C9D"
    %endif
    times 1 - ($ - %%insn_00404c9d) db 0
    db 0x8B, 0xE5 ; 00404C9E 8BE5 | mov esp,ebp | encoding preserved
    %%insn_00404ca0:
    pop ebp ; 00404CA0 5D
    %if ($ - %%insn_00404ca0) > 1
        %error "LONG_00404CA0"
    %endif
    times 1 - ($ - %%insn_00404ca0) db 0
    %%insn_00404ca1:
    ret ; 00404CA1 C3
    %if ($ - %%insn_00404ca1) > 1
        %error "LONG_00404CA1"
    %endif
    times 1 - ($ - %%insn_00404ca1) db 0
    %if ($ - %%fragment_start) != 799
        %error "function fragment size drift: 00404983"
    %endif
%endmacro
