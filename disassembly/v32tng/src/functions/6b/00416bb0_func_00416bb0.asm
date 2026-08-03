; PE virtual entry 00416BB0
; Ghidra working symbol: FUN_00416bb0
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00416bb0_part_00 0
    %%fragment_start:
func_00416bb0:
    %%insn_00416bb0:
    push ecx ; 00416BB0 51
    %if ($ - %%insn_00416bb0) > 1
        %error "LONG_00416BB0"
    %endif
    times 1 - ($ - %%insn_00416bb0) db 0
    %%insn_00416bb1:
    mov eax,[0x4211ec] ; 00416BB1 A1EC114200
    %if ($ - %%insn_00416bb1) > 5
        %error "LONG_00416BB1"
    %endif
    times 5 - ($ - %%insn_00416bb1) db 0
    %%insn_00416bb6:
    push ebx ; 00416BB6 53
    %if ($ - %%insn_00416bb6) > 1
        %error "LONG_00416BB6"
    %endif
    times 1 - ($ - %%insn_00416bb6) db 0
    db 0x33, 0xDB ; 00416BB7 33DB | xor ebx,ebx | encoding preserved
    %%insn_00416bb9:
    push ebp ; 00416BB9 55
    %if ($ - %%insn_00416bb9) > 1
        %error "LONG_00416BB9"
    %endif
    times 1 - ($ - %%insn_00416bb9) db 0
    %%insn_00416bba:
    push esi ; 00416BBA 56
    %if ($ - %%insn_00416bba) > 1
        %error "LONG_00416BBA"
    %endif
    times 1 - ($ - %%insn_00416bba) db 0
    %%insn_00416bbb:
    mov esi,[0x424470] ; 00416BBB 8B3570444200
    %if ($ - %%insn_00416bbb) > 6
        %error "LONG_00416BBB"
    %endif
    times 6 - ($ - %%insn_00416bbb) db 0
    db 0x3B, 0xC3 ; 00416BC1 3BC3 | cmp eax,ebx | encoding preserved
    %%insn_00416bc3:
    push edi ; 00416BC3 57
    %if ($ - %%insn_00416bc3) > 1
        %error "LONG_00416BC3"
    %endif
    times 1 - ($ - %%insn_00416bc3) db 0
    %%insn_00416bc4:
    jnz short 0x416c08 ; 00416BC4 7542
    %if ($ - %%insn_00416bc4) > 2
        %error "LONG_00416BC4"
    %endif
    times 2 - ($ - %%insn_00416bc4) db 0
    %%insn_00416bc6:
    lea eax,[esp+0x10] ; 00416BC6 8D442410
    %if ($ - %%insn_00416bc6) > 4
        %error "LONG_00416BC6"
    %endif
    times 4 - ($ - %%insn_00416bc6) db 0
    %%insn_00416bca:
    push eax ; 00416BCA 50
    %if ($ - %%insn_00416bca) > 1
        %error "LONG_00416BCA"
    %endif
    times 1 - ($ - %%insn_00416bca) db 0
    %%insn_00416bcb:
    push dword 0x1 ; 00416BCB 6A01
    %if ($ - %%insn_00416bcb) > 2
        %error "LONG_00416BCB"
    %endif
    times 2 - ($ - %%insn_00416bcb) db 0
    %%insn_00416bcd:
    push dword 0x41aad8 ; 00416BCD 68D8AA4100
    %if ($ - %%insn_00416bcd) > 5
        %error "LONG_00416BCD"
    %endif
    times 5 - ($ - %%insn_00416bcd) db 0
    %%insn_00416bd2:
    push dword 0x1 ; 00416BD2 6A01
    %if ($ - %%insn_00416bd2) > 2
        %error "LONG_00416BD2"
    %endif
    times 2 - ($ - %%insn_00416bd2) db 0
    %%insn_00416bd4:
    call esi ; 00416BD4 FFD6
    %if ($ - %%insn_00416bd4) > 2
        %error "LONG_00416BD4"
    %endif
    times 2 - ($ - %%insn_00416bd4) db 0
    %%insn_00416bd6:
    test eax,eax ; 00416BD6 85C0
    %if ($ - %%insn_00416bd6) > 2
        %error "LONG_00416BD6"
    %endif
    times 2 - ($ - %%insn_00416bd6) db 0
    %%insn_00416bd8:
    jz short 0x416be1 ; 00416BD8 7407
    %if ($ - %%insn_00416bd8) > 2
        %error "LONG_00416BD8"
    %endif
    times 2 - ($ - %%insn_00416bd8) db 0
    %%insn_00416bda:
    mov eax,0x1 ; 00416BDA B801000000
    %if ($ - %%insn_00416bda) > 5
        %error "LONG_00416BDA"
    %endif
    times 5 - ($ - %%insn_00416bda) db 0
    %%insn_00416bdf:
    jmp short 0x416c03 ; 00416BDF EB22
    %if ($ - %%insn_00416bdf) > 2
        %error "LONG_00416BDF"
    %endif
    times 2 - ($ - %%insn_00416bdf) db 0
    %%insn_00416be1:
    lea ecx,[esp+0x10] ; 00416BE1 8D4C2410
    %if ($ - %%insn_00416be1) > 4
        %error "LONG_00416BE1"
    %endif
    times 4 - ($ - %%insn_00416be1) db 0
    %%insn_00416be5:
    push ecx ; 00416BE5 51
    %if ($ - %%insn_00416be5) > 1
        %error "LONG_00416BE5"
    %endif
    times 1 - ($ - %%insn_00416be5) db 0
    %%insn_00416be6:
    push dword 0x1 ; 00416BE6 6A01
    %if ($ - %%insn_00416be6) > 2
        %error "LONG_00416BE6"
    %endif
    times 2 - ($ - %%insn_00416be6) db 0
    %%insn_00416be8:
    push dword 0x41aad4 ; 00416BE8 68D4AA4100
    %if ($ - %%insn_00416be8) > 5
        %error "LONG_00416BE8"
    %endif
    times 5 - ($ - %%insn_00416be8) db 0
    %%insn_00416bed:
    push dword 0x1 ; 00416BED 6A01
    %if ($ - %%insn_00416bed) > 2
        %error "LONG_00416BED"
    %endif
    times 2 - ($ - %%insn_00416bed) db 0
    %%insn_00416bef:
    push ebx ; 00416BEF 53
    %if ($ - %%insn_00416bef) > 1
        %error "LONG_00416BEF"
    %endif
    times 1 - ($ - %%insn_00416bef) db 0
    %%insn_00416bf0:
    call dword near [0x424474] ; 00416BF0 FF1574444200
    %if ($ - %%insn_00416bf0) > 6
        %error "LONG_00416BF0"
    %endif
    times 6 - ($ - %%insn_00416bf0) db 0
    %%insn_00416bf6:
    test eax,eax ; 00416BF6 85C0
    %if ($ - %%insn_00416bf6) > 2
        %error "LONG_00416BF6"
    %endif
    times 2 - ($ - %%insn_00416bf6) db 0
    %%insn_00416bf8:
    jz 0x416c84 ; 00416BF8 0F8486000000
    %if ($ - %%insn_00416bf8) > 6
        %error "LONG_00416BF8"
    %endif
    times 6 - ($ - %%insn_00416bf8) db 0
    %%insn_00416bfe:
    mov eax,0x2 ; 00416BFE B802000000
    %if ($ - %%insn_00416bfe) > 5
        %error "LONG_00416BFE"
    %endif
    times 5 - ($ - %%insn_00416bfe) db 0
    %%insn_00416c03:
    mov [0x4211ec],eax ; 00416C03 A3EC114200
    %if ($ - %%insn_00416c03) > 5
        %error "LONG_00416C03"
    %endif
    times 5 - ($ - %%insn_00416c03) db 0
    %%insn_00416c08:
    cmp eax,0x1 ; 00416C08 83F801
    %if ($ - %%insn_00416c08) > 3
        %error "LONG_00416C08"
    %endif
    times 3 - ($ - %%insn_00416c08) db 0
    %%insn_00416c0b:
    jnz short 0x416c29 ; 00416C0B 751C
    %if ($ - %%insn_00416c0b) > 2
        %error "LONG_00416C0B"
    %endif
    times 2 - ($ - %%insn_00416c0b) db 0
    %%insn_00416c0d:
    mov edx,[esp+0x24] ; 00416C0D 8B542424
    %if ($ - %%insn_00416c0d) > 4
        %error "LONG_00416C0D"
    %endif
    times 4 - ($ - %%insn_00416c0d) db 0
    %%insn_00416c11:
    mov eax,[esp+0x20] ; 00416C11 8B442420
    %if ($ - %%insn_00416c11) > 4
        %error "LONG_00416C11"
    %endif
    times 4 - ($ - %%insn_00416c11) db 0
    %%insn_00416c15:
    mov ecx,[esp+0x1c] ; 00416C15 8B4C241C
    %if ($ - %%insn_00416c15) > 4
        %error "LONG_00416C15"
    %endif
    times 4 - ($ - %%insn_00416c15) db 0
    %%insn_00416c19:
    push edx ; 00416C19 52
    %if ($ - %%insn_00416c19) > 1
        %error "LONG_00416C19"
    %endif
    times 1 - ($ - %%insn_00416c19) db 0
    %%insn_00416c1a:
    mov edx,[esp+0x1c] ; 00416C1A 8B54241C
    %if ($ - %%insn_00416c1a) > 4
        %error "LONG_00416C1A"
    %endif
    times 4 - ($ - %%insn_00416c1a) db 0
    %%insn_00416c1e:
    push eax ; 00416C1E 50
    %if ($ - %%insn_00416c1e) > 1
        %error "LONG_00416C1E"
    %endif
    times 1 - ($ - %%insn_00416c1e) db 0
    %%insn_00416c1f:
    push ecx ; 00416C1F 51
    %if ($ - %%insn_00416c1f) > 1
        %error "LONG_00416C1F"
    %endif
    times 1 - ($ - %%insn_00416c1f) db 0
    %%insn_00416c20:
    push edx ; 00416C20 52
    %if ($ - %%insn_00416c20) > 1
        %error "LONG_00416C20"
    %endif
    times 1 - ($ - %%insn_00416c20) db 0
    %%insn_00416c21:
    call esi ; 00416C21 FFD6
    %if ($ - %%insn_00416c21) > 2
        %error "LONG_00416C21"
    %endif
    times 2 - ($ - %%insn_00416c21) db 0
    %%insn_00416c23:
    pop edi ; 00416C23 5F
    %if ($ - %%insn_00416c23) > 1
        %error "LONG_00416C23"
    %endif
    times 1 - ($ - %%insn_00416c23) db 0
    %%insn_00416c24:
    pop esi ; 00416C24 5E
    %if ($ - %%insn_00416c24) > 1
        %error "LONG_00416C24"
    %endif
    times 1 - ($ - %%insn_00416c24) db 0
    %%insn_00416c25:
    pop ebp ; 00416C25 5D
    %if ($ - %%insn_00416c25) > 1
        %error "LONG_00416C25"
    %endif
    times 1 - ($ - %%insn_00416c25) db 0
    %%insn_00416c26:
    pop ebx ; 00416C26 5B
    %if ($ - %%insn_00416c26) > 1
        %error "LONG_00416C26"
    %endif
    times 1 - ($ - %%insn_00416c26) db 0
    %%insn_00416c27:
    pop ecx ; 00416C27 59
    %if ($ - %%insn_00416c27) > 1
        %error "LONG_00416C27"
    %endif
    times 1 - ($ - %%insn_00416c27) db 0
    %%insn_00416c28:
    ret ; 00416C28 C3
    %if ($ - %%insn_00416c28) > 1
        %error "LONG_00416C28"
    %endif
    times 1 - ($ - %%insn_00416c28) db 0
    %%insn_00416c29:
    cmp eax,0x2 ; 00416C29 83F802
    %if ($ - %%insn_00416c29) > 3
        %error "LONG_00416C29"
    %endif
    times 3 - ($ - %%insn_00416c29) db 0
    %%insn_00416c2c:
    jnz 0x416d2e ; 00416C2C 0F85FC000000
    %if ($ - %%insn_00416c2c) > 6
        %error "LONG_00416C2C"
    %endif
    times 6 - ($ - %%insn_00416c2c) db 0
    %%insn_00416c32:
    mov eax,[esp+0x28] ; 00416C32 8B442428
    %if ($ - %%insn_00416c32) > 4
        %error "LONG_00416C32"
    %endif
    times 4 - ($ - %%insn_00416c32) db 0
    %%insn_00416c36:
    mov [esp+0x10],ebx ; 00416C36 895C2410
    %if ($ - %%insn_00416c36) > 4
        %error "LONG_00416C36"
    %endif
    times 4 - ($ - %%insn_00416c36) db 0
    db 0x3B, 0xC3 ; 00416C3A 3BC3 | cmp eax,ebx | encoding preserved
    %%insn_00416c3c:
    jnz short 0x416c47 ; 00416C3C 7509
    %if ($ - %%insn_00416c3c) > 2
        %error "LONG_00416C3C"
    %endif
    times 2 - ($ - %%insn_00416c3c) db 0
    %%insn_00416c3e:
    mov eax,[0x420f30] ; 00416C3E A1300F4200
    %if ($ - %%insn_00416c3e) > 5
        %error "LONG_00416C3E"
    %endif
    times 5 - ($ - %%insn_00416c3e) db 0
    %%insn_00416c43:
    mov [esp+0x28],eax ; 00416C43 89442428
    %if ($ - %%insn_00416c43) > 4
        %error "LONG_00416C43"
    %endif
    times 4 - ($ - %%insn_00416c43) db 0
    %%insn_00416c47:
    mov edi,[esp+0x20] ; 00416C47 8B7C2420
    %if ($ - %%insn_00416c47) > 4
        %error "LONG_00416C47"
    %endif
    times 4 - ($ - %%insn_00416c47) db 0
    %%insn_00416c4b:
    mov ecx,[esp+0x1c] ; 00416C4B 8B4C241C
    %if ($ - %%insn_00416c4b) > 4
        %error "LONG_00416C4B"
    %endif
    times 4 - ($ - %%insn_00416c4b) db 0
    %%insn_00416c4f:
    mov edx,[esp+0x28] ; 00416C4F 8B542428
    %if ($ - %%insn_00416c4f) > 4
        %error "LONG_00416C4F"
    %endif
    times 4 - ($ - %%insn_00416c4f) db 0
    %%insn_00416c53:
    push ebx ; 00416C53 53
    %if ($ - %%insn_00416c53) > 1
        %error "LONG_00416C53"
    %endif
    times 1 - ($ - %%insn_00416c53) db 0
    %%insn_00416c54:
    push ebx ; 00416C54 53
    %if ($ - %%insn_00416c54) > 1
        %error "LONG_00416C54"
    %endif
    times 1 - ($ - %%insn_00416c54) db 0
    %%insn_00416c55:
    push ebx ; 00416C55 53
    %if ($ - %%insn_00416c55) > 1
        %error "LONG_00416C55"
    %endif
    times 1 - ($ - %%insn_00416c55) db 0
    %%insn_00416c56:
    push ebx ; 00416C56 53
    %if ($ - %%insn_00416c56) > 1
        %error "LONG_00416C56"
    %endif
    times 1 - ($ - %%insn_00416c56) db 0
    %%insn_00416c57:
    push edi ; 00416C57 57
    %if ($ - %%insn_00416c57) > 1
        %error "LONG_00416C57"
    %endif
    times 1 - ($ - %%insn_00416c57) db 0
    %%insn_00416c58:
    push ecx ; 00416C58 51
    %if ($ - %%insn_00416c58) > 1
        %error "LONG_00416C58"
    %endif
    times 1 - ($ - %%insn_00416c58) db 0
    %%insn_00416c59:
    push dword 0x220 ; 00416C59 6820020000
    %if ($ - %%insn_00416c59) > 5
        %error "LONG_00416C59"
    %endif
    times 5 - ($ - %%insn_00416c59) db 0
    %%insn_00416c5e:
    push edx ; 00416C5E 52
    %if ($ - %%insn_00416c5e) > 1
        %error "LONG_00416C5E"
    %endif
    times 1 - ($ - %%insn_00416c5e) db 0
    %%insn_00416c5f:
    call dword near [0x4244d0] ; 00416C5F FF15D0444200
    %if ($ - %%insn_00416c5f) > 6
        %error "LONG_00416C5F"
    %endif
    times 6 - ($ - %%insn_00416c5f) db 0
    db 0x8B, 0xF0 ; 00416C65 8BF0 | mov esi,eax | encoding preserved
    db 0x3B, 0xF3 ; 00416C67 3BF3 | cmp esi,ebx | encoding preserved
    %%insn_00416c69:
    jnz short 0x416c73 ; 00416C69 7508
    %if ($ - %%insn_00416c69) > 2
        %error "LONG_00416C69"
    %endif
    times 2 - ($ - %%insn_00416c69) db 0
    db 0x33, 0xC0 ; 00416C6B 33C0 | xor eax,eax | encoding preserved
    %%insn_00416c6d:
    pop edi ; 00416C6D 5F
    %if ($ - %%insn_00416c6d) > 1
        %error "LONG_00416C6D"
    %endif
    times 1 - ($ - %%insn_00416c6d) db 0
    %%insn_00416c6e:
    pop esi ; 00416C6E 5E
    %if ($ - %%insn_00416c6e) > 1
        %error "LONG_00416C6E"
    %endif
    times 1 - ($ - %%insn_00416c6e) db 0
    %%insn_00416c6f:
    pop ebp ; 00416C6F 5D
    %if ($ - %%insn_00416c6f) > 1
        %error "LONG_00416C6F"
    %endif
    times 1 - ($ - %%insn_00416c6f) db 0
    %%insn_00416c70:
    pop ebx ; 00416C70 5B
    %if ($ - %%insn_00416c70) > 1
        %error "LONG_00416C70"
    %endif
    times 1 - ($ - %%insn_00416c70) db 0
    %%insn_00416c71:
    pop ecx ; 00416C71 59
    %if ($ - %%insn_00416c71) > 1
        %error "LONG_00416C71"
    %endif
    times 1 - ($ - %%insn_00416c71) db 0
    %%insn_00416c72:
    ret ; 00416C72 C3
    %if ($ - %%insn_00416c72) > 1
        %error "LONG_00416C72"
    %endif
    times 1 - ($ - %%insn_00416c72) db 0
    %%insn_00416c73:
    push esi ; 00416C73 56
    %if ($ - %%insn_00416c73) > 1
        %error "LONG_00416C73"
    %endif
    times 1 - ($ - %%insn_00416c73) db 0
    %%insn_00416c74:
    push dword 0x1 ; 00416C74 6A01
    %if ($ - %%insn_00416c74) > 2
        %error "LONG_00416C74"
    %endif
    times 2 - ($ - %%insn_00416c74) db 0
    %%insn_00416c76:
    call 0x415550 ; 00416C76 E8D5E8FFFF
    %if ($ - %%insn_00416c76) > 5
        %error "LONG_00416C76"
    %endif
    times 5 - ($ - %%insn_00416c76) db 0
    db 0x8B, 0xE8 ; 00416C7B 8BE8 | mov ebp,eax | encoding preserved
    %%insn_00416c7d:
    add esp,0x8 ; 00416C7D 83C408
    %if ($ - %%insn_00416c7d) > 3
        %error "LONG_00416C7D"
    %endif
    times 3 - ($ - %%insn_00416c7d) db 0
    %%insn_00416c80:
    test ebp,ebp ; 00416C80 85ED
    %if ($ - %%insn_00416c80) > 2
        %error "LONG_00416C80"
    %endif
    times 2 - ($ - %%insn_00416c80) db 0
    %%insn_00416c82:
    jnz short 0x416c8c ; 00416C82 7508
    %if ($ - %%insn_00416c82) > 2
        %error "LONG_00416C82"
    %endif
    times 2 - ($ - %%insn_00416c82) db 0
    db 0x33, 0xC0 ; 00416C84 33C0 | xor eax,eax | encoding preserved
    %%insn_00416c86:
    pop edi ; 00416C86 5F
    %if ($ - %%insn_00416c86) > 1
        %error "LONG_00416C86"
    %endif
    times 1 - ($ - %%insn_00416c86) db 0
    %%insn_00416c87:
    pop esi ; 00416C87 5E
    %if ($ - %%insn_00416c87) > 1
        %error "LONG_00416C87"
    %endif
    times 1 - ($ - %%insn_00416c87) db 0
    %%insn_00416c88:
    pop ebp ; 00416C88 5D
    %if ($ - %%insn_00416c88) > 1
        %error "LONG_00416C88"
    %endif
    times 1 - ($ - %%insn_00416c88) db 0
    %%insn_00416c89:
    pop ebx ; 00416C89 5B
    %if ($ - %%insn_00416c89) > 1
        %error "LONG_00416C89"
    %endif
    times 1 - ($ - %%insn_00416c89) db 0
    %%insn_00416c8a:
    pop ecx ; 00416C8A 59
    %if ($ - %%insn_00416c8a) > 1
        %error "LONG_00416C8A"
    %endif
    times 1 - ($ - %%insn_00416c8a) db 0
    %%insn_00416c8b:
    ret ; 00416C8B C3
    %if ($ - %%insn_00416c8b) > 1
        %error "LONG_00416C8B"
    %endif
    times 1 - ($ - %%insn_00416c8b) db 0
    %%insn_00416c8c:
    mov eax,[esp+0x1c] ; 00416C8C 8B44241C
    %if ($ - %%insn_00416c8c) > 4
        %error "LONG_00416C8C"
    %endif
    times 4 - ($ - %%insn_00416c8c) db 0
    %%insn_00416c90:
    mov ecx,[esp+0x28] ; 00416C90 8B4C2428
    %if ($ - %%insn_00416c90) > 4
        %error "LONG_00416C90"
    %endif
    times 4 - ($ - %%insn_00416c90) db 0
    %%insn_00416c94:
    push dword 0x0 ; 00416C94 6A00
    %if ($ - %%insn_00416c94) > 2
        %error "LONG_00416C94"
    %endif
    times 2 - ($ - %%insn_00416c94) db 0
    %%insn_00416c96:
    push dword 0x0 ; 00416C96 6A00
    %if ($ - %%insn_00416c96) > 2
        %error "LONG_00416C96"
    %endif
    times 2 - ($ - %%insn_00416c96) db 0
    %%insn_00416c98:
    push esi ; 00416C98 56
    %if ($ - %%insn_00416c98) > 1
        %error "LONG_00416C98"
    %endif
    times 1 - ($ - %%insn_00416c98) db 0
    %%insn_00416c99:
    push ebp ; 00416C99 55
    %if ($ - %%insn_00416c99) > 1
        %error "LONG_00416C99"
    %endif
    times 1 - ($ - %%insn_00416c99) db 0
    %%insn_00416c9a:
    push edi ; 00416C9A 57
    %if ($ - %%insn_00416c9a) > 1
        %error "LONG_00416C9A"
    %endif
    times 1 - ($ - %%insn_00416c9a) db 0
    %%insn_00416c9b:
    push eax ; 00416C9B 50
    %if ($ - %%insn_00416c9b) > 1
        %error "LONG_00416C9B"
    %endif
    times 1 - ($ - %%insn_00416c9b) db 0
    %%insn_00416c9c:
    push dword 0x220 ; 00416C9C 6820020000
    %if ($ - %%insn_00416c9c) > 5
        %error "LONG_00416C9C"
    %endif
    times 5 - ($ - %%insn_00416c9c) db 0
    %%insn_00416ca1:
    push ecx ; 00416CA1 51
    %if ($ - %%insn_00416ca1) > 1
        %error "LONG_00416CA1"
    %endif
    times 1 - ($ - %%insn_00416ca1) db 0
    %%insn_00416ca2:
    call dword near [0x4244d0] ; 00416CA2 FF15D0444200
    %if ($ - %%insn_00416ca2) > 6
        %error "LONG_00416CA2"
    %endif
    times 6 - ($ - %%insn_00416ca2) db 0
    %%insn_00416ca8:
    test eax,eax ; 00416CA8 85C0
    %if ($ - %%insn_00416ca8) > 2
        %error "LONG_00416CA8"
    %endif
    times 2 - ($ - %%insn_00416ca8) db 0
    %%insn_00416caa:
    jz short 0x416d18 ; 00416CAA 746C
    %if ($ - %%insn_00416caa) > 2
        %error "LONG_00416CAA"
    %endif
    times 2 - ($ - %%insn_00416caa) db 0
    %%insn_00416cac:
    lea edx,[esi+esi+0x2] ; 00416CAC 8D543602
    %if ($ - %%insn_00416cac) > 4
        %error "LONG_00416CAC"
    %endif
    times 4 - ($ - %%insn_00416cac) db 0
    %%insn_00416cb0:
    push edx ; 00416CB0 52
    %if ($ - %%insn_00416cb0) > 1
        %error "LONG_00416CB0"
    %endif
    times 1 - ($ - %%insn_00416cb0) db 0
    %%insn_00416cb1:
    call 0x40cdc0 ; 00416CB1 E80A61FFFF
    %if ($ - %%insn_00416cb1) > 5
        %error "LONG_00416CB1"
    %endif
    times 5 - ($ - %%insn_00416cb1) db 0
    db 0x8B, 0xD8 ; 00416CB6 8BD8 | mov ebx,eax | encoding preserved
    %%insn_00416cb8:
    add esp,0x4 ; 00416CB8 83C404
    %if ($ - %%insn_00416cb8) > 3
        %error "LONG_00416CB8"
    %endif
    times 3 - ($ - %%insn_00416cb8) db 0
    %%insn_00416cbb:
    test ebx,ebx ; 00416CBB 85DB
    %if ($ - %%insn_00416cbb) > 2
        %error "LONG_00416CBB"
    %endif
    times 2 - ($ - %%insn_00416cbb) db 0
    %%insn_00416cbd:
    jz short 0x416d18 ; 00416CBD 7459
    %if ($ - %%insn_00416cbd) > 2
        %error "LONG_00416CBD"
    %endif
    times 2 - ($ - %%insn_00416cbd) db 0
    %%insn_00416cbf:
    mov eax,[esp+0x2c] ; 00416CBF 8B44242C
    %if ($ - %%insn_00416cbf) > 4
        %error "LONG_00416CBF"
    %endif
    times 4 - ($ - %%insn_00416cbf) db 0
    %%insn_00416cc3:
    test eax,eax ; 00416CC3 85C0
    %if ($ - %%insn_00416cc3) > 2
        %error "LONG_00416CC3"
    %endif
    times 2 - ($ - %%insn_00416cc3) db 0
    %%insn_00416cc5:
    jnz short 0x416ccc ; 00416CC5 7505
    %if ($ - %%insn_00416cc5) > 2
        %error "LONG_00416CC5"
    %endif
    times 2 - ($ - %%insn_00416cc5) db 0
    %%insn_00416cc7:
    mov eax,[0x420f20] ; 00416CC7 A1200F4200
    %if ($ - %%insn_00416cc7) > 5
        %error "LONG_00416CC7"
    %endif
    times 5 - ($ - %%insn_00416cc7) db 0
    %%insn_00416ccc:
    mov ecx,[esp+0x18] ; 00416CCC 8B4C2418
    %if ($ - %%insn_00416ccc) > 4
        %error "LONG_00416CCC"
    %endif
    times 4 - ($ - %%insn_00416ccc) db 0
    %%insn_00416cd0:
    push ebx ; 00416CD0 53
    %if ($ - %%insn_00416cd0) > 1
        %error "LONG_00416CD0"
    %endif
    times 1 - ($ - %%insn_00416cd0) db 0
    db 0x03, 0xFF ; 00416CD1 03FF | add edi,edi | encoding preserved
    %%insn_00416cd3:
    push esi ; 00416CD3 56
    %if ($ - %%insn_00416cd3) > 1
        %error "LONG_00416CD3"
    %endif
    times 1 - ($ - %%insn_00416cd3) db 0
    %%insn_00416cd4:
    push ebp ; 00416CD4 55
    %if ($ - %%insn_00416cd4) > 1
        %error "LONG_00416CD4"
    %endif
    times 1 - ($ - %%insn_00416cd4) db 0
    %%insn_00416cd5:
    push ecx ; 00416CD5 51
    %if ($ - %%insn_00416cd5) > 1
        %error "LONG_00416CD5"
    %endif
    times 1 - ($ - %%insn_00416cd5) db 0
    %%insn_00416cd6:
    mov word [ebx+edi],0xffff ; 00416CD6 66C7043BFFFF
    %if ($ - %%insn_00416cd6) > 6
        %error "LONG_00416CD6"
    %endif
    times 6 - ($ - %%insn_00416cd6) db 0
    %%insn_00416cdc:
    push eax ; 00416CDC 50
    %if ($ - %%insn_00416cdc) > 1
        %error "LONG_00416CDC"
    %endif
    times 1 - ($ - %%insn_00416cdc) db 0
    %%insn_00416cdd:
    mov word [ebx+edi-0x2],0xffff ; 00416CDD 66C7443BFEFFFF
    %if ($ - %%insn_00416cdd) > 7
        %error "LONG_00416CDD"
    %endif
    times 7 - ($ - %%insn_00416cdd) db 0
    %%insn_00416ce4:
    call dword near [0x424474] ; 00416CE4 FF1574444200
    %if ($ - %%insn_00416ce4) > 6
        %error "LONG_00416CE4"
    %endif
    times 6 - ($ - %%insn_00416ce4) db 0
    db 0x66, 0x81, 0x7C, 0x3B, 0xFE, 0xFF, 0xFF ; 00416CEA 66817C3BFEFFFF | cmp word [ebx+edi-0x2],0xffff | encoding preserved
    %%insn_00416cf1:
    mov [esp+0x10],eax ; 00416CF1 89442410
    %if ($ - %%insn_00416cf1) > 4
        %error "LONG_00416CF1"
    %endif
    times 4 - ($ - %%insn_00416cf1) db 0
    %%insn_00416cf5:
    jz short 0x416d10 ; 00416CF5 7419
    %if ($ - %%insn_00416cf5) > 2
        %error "LONG_00416CF5"
    %endif
    times 2 - ($ - %%insn_00416cf5) db 0
    db 0x66, 0x81, 0x3C, 0x3B, 0xFF, 0xFF ; 00416CF7 66813C3BFFFF | cmp word [ebx+edi],0xffff | encoding preserved
    %%insn_00416cfd:
    jnz short 0x416d10 ; 00416CFD 7511
    %if ($ - %%insn_00416cfd) > 2
        %error "LONG_00416CFD"
    %endif
    times 2 - ($ - %%insn_00416cfd) db 0
    %%insn_00416cff:
    mov edx,[esp+0x24] ; 00416CFF 8B542424
    %if ($ - %%insn_00416cff) > 4
        %error "LONG_00416CFF"
    %endif
    times 4 - ($ - %%insn_00416cff) db 0
    %%insn_00416d03:
    push edi ; 00416D03 57
    %if ($ - %%insn_00416d03) > 1
        %error "LONG_00416D03"
    %endif
    times 1 - ($ - %%insn_00416d03) db 0
    %%insn_00416d04:
    push ebx ; 00416D04 53
    %if ($ - %%insn_00416d04) > 1
        %error "LONG_00416D04"
    %endif
    times 1 - ($ - %%insn_00416d04) db 0
    %%insn_00416d05:
    push edx ; 00416D05 52
    %if ($ - %%insn_00416d05) > 1
        %error "LONG_00416D05"
    %endif
    times 1 - ($ - %%insn_00416d05) db 0
    %%insn_00416d06:
    call 0x418000 ; 00416D06 E8F5120000
    %if ($ - %%insn_00416d06) > 5
        %error "LONG_00416D06"
    %endif
    times 5 - ($ - %%insn_00416d06) db 0
    %%insn_00416d0b:
    add esp,0xc ; 00416D0B 83C40C
    %if ($ - %%insn_00416d0b) > 3
        %error "LONG_00416D0B"
    %endif
    times 3 - ($ - %%insn_00416d0b) db 0
    %%insn_00416d0e:
    jmp short 0x416d18 ; 00416D0E EB08
    %if ($ - %%insn_00416d0e) > 2
        %error "LONG_00416D0E"
    %endif
    times 2 - ($ - %%insn_00416d0e) db 0
    %%insn_00416d10:
    mov dword [esp+0x10],0x0 ; 00416D10 C744241000000000
    %if ($ - %%insn_00416d10) > 8
        %error "LONG_00416D10"
    %endif
    times 8 - ($ - %%insn_00416d10) db 0
    %%insn_00416d18:
    push ebp ; 00416D18 55
    %if ($ - %%insn_00416d18) > 1
        %error "LONG_00416D18"
    %endif
    times 1 - ($ - %%insn_00416d18) db 0
    %%insn_00416d19:
    call 0x40c9a0 ; 00416D19 E8825CFFFF
    %if ($ - %%insn_00416d19) > 5
        %error "LONG_00416D19"
    %endif
    times 5 - ($ - %%insn_00416d19) db 0
    %%insn_00416d1e:
    add esp,0x4 ; 00416D1E 83C404
    %if ($ - %%insn_00416d1e) > 3
        %error "LONG_00416D1E"
    %endif
    times 3 - ($ - %%insn_00416d1e) db 0
    %%insn_00416d21:
    push ebx ; 00416D21 53
    %if ($ - %%insn_00416d21) > 1
        %error "LONG_00416D21"
    %endif
    times 1 - ($ - %%insn_00416d21) db 0
    %%insn_00416d22:
    call 0x40c9a0 ; 00416D22 E8795CFFFF
    %if ($ - %%insn_00416d22) > 5
        %error "LONG_00416D22"
    %endif
    times 5 - ($ - %%insn_00416d22) db 0
    %%insn_00416d27:
    mov eax,[esp+0x14] ; 00416D27 8B442414
    %if ($ - %%insn_00416d27) > 4
        %error "LONG_00416D27"
    %endif
    times 4 - ($ - %%insn_00416d27) db 0
    %%insn_00416d2b:
    add esp,0x4 ; 00416D2B 83C404
    %if ($ - %%insn_00416d2b) > 3
        %error "LONG_00416D2B"
    %endif
    times 3 - ($ - %%insn_00416d2b) db 0
    %%insn_00416d2e:
    pop edi ; 00416D2E 5F
    %if ($ - %%insn_00416d2e) > 1
        %error "LONG_00416D2E"
    %endif
    times 1 - ($ - %%insn_00416d2e) db 0
    %%insn_00416d2f:
    pop esi ; 00416D2F 5E
    %if ($ - %%insn_00416d2f) > 1
        %error "LONG_00416D2F"
    %endif
    times 1 - ($ - %%insn_00416d2f) db 0
    %%insn_00416d30:
    pop ebp ; 00416D30 5D
    %if ($ - %%insn_00416d30) > 1
        %error "LONG_00416D30"
    %endif
    times 1 - ($ - %%insn_00416d30) db 0
    %%insn_00416d31:
    pop ebx ; 00416D31 5B
    %if ($ - %%insn_00416d31) > 1
        %error "LONG_00416D31"
    %endif
    times 1 - ($ - %%insn_00416d31) db 0
    %%insn_00416d32:
    pop ecx ; 00416D32 59
    %if ($ - %%insn_00416d32) > 1
        %error "LONG_00416D32"
    %endif
    times 1 - ($ - %%insn_00416d32) db 0
    %%insn_00416d33:
    ret ; 00416D33 C3
    %if ($ - %%insn_00416d33) > 1
        %error "LONG_00416D33"
    %endif
    times 1 - ($ - %%insn_00416d33) db 0
    %if ($ - %%fragment_start) != 388
        %error "function fragment size drift: 00416BB0"
    %endif
%endmacro
