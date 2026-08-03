; PE virtual entry 00418BA0
; Ghidra working symbol: FUN_00418ba0
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00418ba0_part_00 0
    %%fragment_start:
func_00418ba0:
    %%insn_00418ba0:
    mov eax,[0x4212c0] ; 00418BA0 A1C0124200
    %if ($ - %%insn_00418ba0) > 5
        %error "LONG_00418BA0"
    %endif
    times 5 - ($ - %%insn_00418ba0) db 0
    %%insn_00418ba5:
    sub esp,0x18 ; 00418BA5 83EC18
    %if ($ - %%insn_00418ba5) > 3
        %error "LONG_00418BA5"
    %endif
    times 3 - ($ - %%insn_00418ba5) db 0
    %%insn_00418ba8:
    test eax,eax ; 00418BA8 85C0
    %if ($ - %%insn_00418ba8) > 2
        %error "LONG_00418BA8"
    %endif
    times 2 - ($ - %%insn_00418ba8) db 0
    %%insn_00418baa:
    push ebx ; 00418BAA 53
    %if ($ - %%insn_00418baa) > 1
        %error "LONG_00418BAA"
    %endif
    times 1 - ($ - %%insn_00418baa) db 0
    %%insn_00418bab:
    mov ebx,[0x4243d0] ; 00418BAB 8B1DD0434200
    %if ($ - %%insn_00418bab) > 6
        %error "LONG_00418BAB"
    %endif
    times 6 - ($ - %%insn_00418bab) db 0
    %%insn_00418bb1:
    push ebp ; 00418BB1 55
    %if ($ - %%insn_00418bb1) > 1
        %error "LONG_00418BB1"
    %endif
    times 1 - ($ - %%insn_00418bb1) db 0
    %%insn_00418bb2:
    push esi ; 00418BB2 56
    %if ($ - %%insn_00418bb2) > 1
        %error "LONG_00418BB2"
    %endif
    times 1 - ($ - %%insn_00418bb2) db 0
    %%insn_00418bb3:
    push edi ; 00418BB3 57
    %if ($ - %%insn_00418bb3) > 1
        %error "LONG_00418BB3"
    %endif
    times 1 - ($ - %%insn_00418bb3) db 0
    %%insn_00418bb4:
    jnz short 0x418c04 ; 00418BB4 754E
    %if ($ - %%insn_00418bb4) > 2
        %error "LONG_00418BB4"
    %endif
    times 2 - ($ - %%insn_00418bb4) db 0
    %%insn_00418bb6:
    push dword 0x1 ; 00418BB6 6A01
    %if ($ - %%insn_00418bb6) > 2
        %error "LONG_00418BB6"
    %endif
    times 2 - ($ - %%insn_00418bb6) db 0
    %%insn_00418bb8:
    push dword 0x41aad4 ; 00418BB8 68D4AA4100
    %if ($ - %%insn_00418bb8) > 5
        %error "LONG_00418BB8"
    %endif
    times 5 - ($ - %%insn_00418bb8) db 0
    %%insn_00418bbd:
    push dword 0x1 ; 00418BBD 6A01
    %if ($ - %%insn_00418bbd) > 2
        %error "LONG_00418BBD"
    %endif
    times 2 - ($ - %%insn_00418bbd) db 0
    %%insn_00418bbf:
    push dword 0x41aad4 ; 00418BBF 68D4AA4100
    %if ($ - %%insn_00418bbf) > 5
        %error "LONG_00418BBF"
    %endif
    times 5 - ($ - %%insn_00418bbf) db 0
    %%insn_00418bc4:
    push dword 0x0 ; 00418BC4 6A00
    %if ($ - %%insn_00418bc4) > 2
        %error "LONG_00418BC4"
    %endif
    times 2 - ($ - %%insn_00418bc4) db 0
    %%insn_00418bc6:
    push dword 0x0 ; 00418BC6 6A00
    %if ($ - %%insn_00418bc6) > 2
        %error "LONG_00418BC6"
    %endif
    times 2 - ($ - %%insn_00418bc6) db 0
    %%insn_00418bc8:
    call ebx ; 00418BC8 FFD3
    %if ($ - %%insn_00418bc8) > 2
        %error "LONG_00418BC8"
    %endif
    times 2 - ($ - %%insn_00418bc8) db 0
    %%insn_00418bca:
    test eax,eax ; 00418BCA 85C0
    %if ($ - %%insn_00418bca) > 2
        %error "LONG_00418BCA"
    %endif
    times 2 - ($ - %%insn_00418bca) db 0
    %%insn_00418bcc:
    jz short 0x418bda ; 00418BCC 740C
    %if ($ - %%insn_00418bcc) > 2
        %error "LONG_00418BCC"
    %endif
    times 2 - ($ - %%insn_00418bcc) db 0
    %%insn_00418bce:
    mov dword [0x4212c0],0x2 ; 00418BCE C705C012420002000000
    %if ($ - %%insn_00418bce) > 10
        %error "LONG_00418BCE"
    %endif
    times 10 - ($ - %%insn_00418bce) db 0
    %%insn_00418bd8:
    jmp short 0x418c04 ; 00418BD8 EB2A
    %if ($ - %%insn_00418bd8) > 2
        %error "LONG_00418BD8"
    %endif
    times 2 - ($ - %%insn_00418bd8) db 0
    %%insn_00418bda:
    push dword 0x1 ; 00418BDA 6A01
    %if ($ - %%insn_00418bda) > 2
        %error "LONG_00418BDA"
    %endif
    times 2 - ($ - %%insn_00418bda) db 0
    %%insn_00418bdc:
    push dword 0x41aad8 ; 00418BDC 68D8AA4100
    %if ($ - %%insn_00418bdc) > 5
        %error "LONG_00418BDC"
    %endif
    times 5 - ($ - %%insn_00418bdc) db 0
    %%insn_00418be1:
    push dword 0x1 ; 00418BE1 6A01
    %if ($ - %%insn_00418be1) > 2
        %error "LONG_00418BE1"
    %endif
    times 2 - ($ - %%insn_00418be1) db 0
    %%insn_00418be3:
    push dword 0x41aad8 ; 00418BE3 68D8AA4100
    %if ($ - %%insn_00418be3) > 5
        %error "LONG_00418BE3"
    %endif
    times 5 - ($ - %%insn_00418be3) db 0
    %%insn_00418be8:
    push dword 0x0 ; 00418BE8 6A00
    %if ($ - %%insn_00418be8) > 2
        %error "LONG_00418BE8"
    %endif
    times 2 - ($ - %%insn_00418be8) db 0
    %%insn_00418bea:
    push dword 0x0 ; 00418BEA 6A00
    %if ($ - %%insn_00418bea) > 2
        %error "LONG_00418BEA"
    %endif
    times 2 - ($ - %%insn_00418bea) db 0
    %%insn_00418bec:
    call dword near [0x4244c8] ; 00418BEC FF15C8444200
    %if ($ - %%insn_00418bec) > 6
        %error "LONG_00418BEC"
    %endif
    times 6 - ($ - %%insn_00418bec) db 0
    %%insn_00418bf2:
    test eax,eax ; 00418BF2 85C0
    %if ($ - %%insn_00418bf2) > 2
        %error "LONG_00418BF2"
    %endif
    times 2 - ($ - %%insn_00418bf2) db 0
    %%insn_00418bf4:
    jz 0x418dc0 ; 00418BF4 0F84C6010000
    %if ($ - %%insn_00418bf4) > 6
        %error "LONG_00418BF4"
    %endif
    times 6 - ($ - %%insn_00418bf4) db 0
    %%insn_00418bfa:
    mov dword [0x4212c0],0x1 ; 00418BFA C705C012420001000000
    %if ($ - %%insn_00418bfa) > 10
        %error "LONG_00418BFA"
    %endif
    times 10 - ($ - %%insn_00418bfa) db 0
    %%insn_00418c04:
    mov esi,[esp+0x38] ; 00418C04 8B742438
    %if ($ - %%insn_00418c04) > 4
        %error "LONG_00418C04"
    %endif
    times 4 - ($ - %%insn_00418c04) db 0
    %%insn_00418c08:
    test esi,esi ; 00418C08 85F6
    %if ($ - %%insn_00418c08) > 2
        %error "LONG_00418C08"
    %endif
    times 2 - ($ - %%insn_00418c08) db 0
    %%insn_00418c0a:
    jng short 0x418c1e ; 00418C0A 7E12
    %if ($ - %%insn_00418c0a) > 2
        %error "LONG_00418C0A"
    %endif
    times 2 - ($ - %%insn_00418c0a) db 0
    %%insn_00418c0c:
    mov ebp,[esp+0x34] ; 00418C0C 8B6C2434
    %if ($ - %%insn_00418c0c) > 4
        %error "LONG_00418C0C"
    %endif
    times 4 - ($ - %%insn_00418c0c) db 0
    %%insn_00418c10:
    push esi ; 00418C10 56
    %if ($ - %%insn_00418c10) > 1
        %error "LONG_00418C10"
    %endif
    times 1 - ($ - %%insn_00418c10) db 0
    %%insn_00418c11:
    push ebp ; 00418C11 55
    %if ($ - %%insn_00418c11) > 1
        %error "LONG_00418C11"
    %endif
    times 1 - ($ - %%insn_00418c11) db 0
    %%insn_00418c12:
    call 0x418e70 ; 00418C12 E859020000
    %if ($ - %%insn_00418c12) > 5
        %error "LONG_00418C12"
    %endif
    times 5 - ($ - %%insn_00418c12) db 0
    %%insn_00418c17:
    add esp,0x8 ; 00418C17 83C408
    %if ($ - %%insn_00418c17) > 3
        %error "LONG_00418C17"
    %endif
    times 3 - ($ - %%insn_00418c17) db 0
    db 0x8B, 0xF0 ; 00418C1A 8BF0 | mov esi,eax | encoding preserved
    %%insn_00418c1c:
    jmp short 0x418c22 ; 00418C1C EB04
    %if ($ - %%insn_00418c1c) > 2
        %error "LONG_00418C1C"
    %endif
    times 2 - ($ - %%insn_00418c1c) db 0
    %%insn_00418c1e:
    mov ebp,[esp+0x34] ; 00418C1E 8B6C2434
    %if ($ - %%insn_00418c1e) > 4
        %error "LONG_00418C1E"
    %endif
    times 4 - ($ - %%insn_00418c1e) db 0
    %%insn_00418c22:
    mov edi,[esp+0x40] ; 00418C22 8B7C2440
    %if ($ - %%insn_00418c22) > 4
        %error "LONG_00418C22"
    %endif
    times 4 - ($ - %%insn_00418c22) db 0
    %%insn_00418c26:
    test edi,edi ; 00418C26 85FF
    %if ($ - %%insn_00418c26) > 2
        %error "LONG_00418C26"
    %endif
    times 2 - ($ - %%insn_00418c26) db 0
    %%insn_00418c28:
    jng short 0x418c3e ; 00418C28 7E14
    %if ($ - %%insn_00418c28) > 2
        %error "LONG_00418C28"
    %endif
    times 2 - ($ - %%insn_00418c28) db 0
    %%insn_00418c2a:
    mov eax,[esp+0x3c] ; 00418C2A 8B44243C
    %if ($ - %%insn_00418c2a) > 4
        %error "LONG_00418C2A"
    %endif
    times 4 - ($ - %%insn_00418c2a) db 0
    %%insn_00418c2e:
    push edi ; 00418C2E 57
    %if ($ - %%insn_00418c2e) > 1
        %error "LONG_00418C2E"
    %endif
    times 1 - ($ - %%insn_00418c2e) db 0
    %%insn_00418c2f:
    push eax ; 00418C2F 50
    %if ($ - %%insn_00418c2f) > 1
        %error "LONG_00418C2F"
    %endif
    times 1 - ($ - %%insn_00418c2f) db 0
    %%insn_00418c30:
    call 0x418e70 ; 00418C30 E83B020000
    %if ($ - %%insn_00418c30) > 5
        %error "LONG_00418C30"
    %endif
    times 5 - ($ - %%insn_00418c30) db 0
    %%insn_00418c35:
    add esp,0x8 ; 00418C35 83C408
    %if ($ - %%insn_00418c35) > 3
        %error "LONG_00418C35"
    %endif
    times 3 - ($ - %%insn_00418c35) db 0
    %%insn_00418c38:
    mov [esp+0x40],eax ; 00418C38 89442440
    %if ($ - %%insn_00418c38) > 4
        %error "LONG_00418C38"
    %endif
    times 4 - ($ - %%insn_00418c38) db 0
    db 0x8B, 0xF8 ; 00418C3C 8BF8 | mov edi,eax | encoding preserved
    %%insn_00418c3e:
    mov eax,[0x4212c0] ; 00418C3E A1C0124200
    %if ($ - %%insn_00418c3e) > 5
        %error "LONG_00418C3E"
    %endif
    times 5 - ($ - %%insn_00418c3e) db 0
    %%insn_00418c43:
    cmp eax,0x2 ; 00418C43 83F802
    %if ($ - %%insn_00418c43) > 3
        %error "LONG_00418C43"
    %endif
    times 3 - ($ - %%insn_00418c43) db 0
    %%insn_00418c46:
    jnz short 0x418c64 ; 00418C46 751C
    %if ($ - %%insn_00418c46) > 2
        %error "LONG_00418C46"
    %endif
    times 2 - ($ - %%insn_00418c46) db 0
    %%insn_00418c48:
    mov ecx,[esp+0x3c] ; 00418C48 8B4C243C
    %if ($ - %%insn_00418c48) > 4
        %error "LONG_00418C48"
    %endif
    times 4 - ($ - %%insn_00418c48) db 0
    %%insn_00418c4c:
    mov edx,[esp+0x30] ; 00418C4C 8B542430
    %if ($ - %%insn_00418c4c) > 4
        %error "LONG_00418C4C"
    %endif
    times 4 - ($ - %%insn_00418c4c) db 0
    %%insn_00418c50:
    mov eax,[esp+0x2c] ; 00418C50 8B44242C
    %if ($ - %%insn_00418c50) > 4
        %error "LONG_00418C50"
    %endif
    times 4 - ($ - %%insn_00418c50) db 0
    %%insn_00418c54:
    push edi ; 00418C54 57
    %if ($ - %%insn_00418c54) > 1
        %error "LONG_00418C54"
    %endif
    times 1 - ($ - %%insn_00418c54) db 0
    %%insn_00418c55:
    push ecx ; 00418C55 51
    %if ($ - %%insn_00418c55) > 1
        %error "LONG_00418C55"
    %endif
    times 1 - ($ - %%insn_00418c55) db 0
    %%insn_00418c56:
    push esi ; 00418C56 56
    %if ($ - %%insn_00418c56) > 1
        %error "LONG_00418C56"
    %endif
    times 1 - ($ - %%insn_00418c56) db 0
    %%insn_00418c57:
    push ebp ; 00418C57 55
    %if ($ - %%insn_00418c57) > 1
        %error "LONG_00418C57"
    %endif
    times 1 - ($ - %%insn_00418c57) db 0
    %%insn_00418c58:
    push edx ; 00418C58 52
    %if ($ - %%insn_00418c58) > 1
        %error "LONG_00418C58"
    %endif
    times 1 - ($ - %%insn_00418c58) db 0
    %%insn_00418c59:
    push eax ; 00418C59 50
    %if ($ - %%insn_00418c59) > 1
        %error "LONG_00418C59"
    %endif
    times 1 - ($ - %%insn_00418c59) db 0
    %%insn_00418c5a:
    call ebx ; 00418C5A FFD3
    %if ($ - %%insn_00418c5a) > 2
        %error "LONG_00418C5A"
    %endif
    times 2 - ($ - %%insn_00418c5a) db 0
    %%insn_00418c5c:
    pop edi ; 00418C5C 5F
    %if ($ - %%insn_00418c5c) > 1
        %error "LONG_00418C5C"
    %endif
    times 1 - ($ - %%insn_00418c5c) db 0
    %%insn_00418c5d:
    pop esi ; 00418C5D 5E
    %if ($ - %%insn_00418c5d) > 1
        %error "LONG_00418C5D"
    %endif
    times 1 - ($ - %%insn_00418c5d) db 0
    %%insn_00418c5e:
    pop ebp ; 00418C5E 5D
    %if ($ - %%insn_00418c5e) > 1
        %error "LONG_00418C5E"
    %endif
    times 1 - ($ - %%insn_00418c5e) db 0
    %%insn_00418c5f:
    pop ebx ; 00418C5F 5B
    %if ($ - %%insn_00418c5f) > 1
        %error "LONG_00418C5F"
    %endif
    times 1 - ($ - %%insn_00418c5f) db 0
    %%insn_00418c60:
    add esp,0x18 ; 00418C60 83C418
    %if ($ - %%insn_00418c60) > 3
        %error "LONG_00418C60"
    %endif
    times 3 - ($ - %%insn_00418c60) db 0
    %%insn_00418c63:
    ret ; 00418C63 C3
    %if ($ - %%insn_00418c63) > 1
        %error "LONG_00418C63"
    %endif
    times 1 - ($ - %%insn_00418c63) db 0
    %%insn_00418c64:
    cmp eax,0x1 ; 00418C64 83F801
    %if ($ - %%insn_00418c64) > 3
        %error "LONG_00418C64"
    %endif
    times 3 - ($ - %%insn_00418c64) db 0
    %%insn_00418c67:
    jnz 0x418e5d ; 00418C67 0F85F0010000
    %if ($ - %%insn_00418c67) > 6
        %error "LONG_00418C67"
    %endif
    times 6 - ($ - %%insn_00418c67) db 0
    %%insn_00418c6d:
    mov ebx,[esp+0x44] ; 00418C6D 8B5C2444
    %if ($ - %%insn_00418c6d) > 4
        %error "LONG_00418C6D"
    %endif
    times 4 - ($ - %%insn_00418c6d) db 0
    db 0x33, 0xC0 ; 00418C71 33C0 | xor eax,eax | encoding preserved
    %%insn_00418c73:
    test ebx,ebx ; 00418C73 85DB
    %if ($ - %%insn_00418c73) > 2
        %error "LONG_00418C73"
    %endif
    times 2 - ($ - %%insn_00418c73) db 0
    %%insn_00418c75:
    mov [esp+0x10],eax ; 00418C75 89442410
    %if ($ - %%insn_00418c75) > 4
        %error "LONG_00418C75"
    %endif
    times 4 - ($ - %%insn_00418c75) db 0
    %%insn_00418c79:
    mov [esp+0x38],eax ; 00418C79 89442438
    %if ($ - %%insn_00418c79) > 4
        %error "LONG_00418C79"
    %endif
    times 4 - ($ - %%insn_00418c79) db 0
    %%insn_00418c7d:
    jnz short 0x418c85 ; 00418C7D 7506
    %if ($ - %%insn_00418c7d) > 2
        %error "LONG_00418C7D"
    %endif
    times 2 - ($ - %%insn_00418c7d) db 0
    %%insn_00418c7f:
    mov ebx,[0x420f30] ; 00418C7F 8B1D300F4200
    %if ($ - %%insn_00418c7f) > 6
        %error "LONG_00418C7F"
    %endif
    times 6 - ($ - %%insn_00418c7f) db 0
    %%insn_00418c85:
    test esi,esi ; 00418C85 85F6
    %if ($ - %%insn_00418c85) > 2
        %error "LONG_00418C85"
    %endif
    times 2 - ($ - %%insn_00418c85) db 0
    %%insn_00418c87:
    jz short 0x418c91 ; 00418C87 7408
    %if ($ - %%insn_00418c87) > 2
        %error "LONG_00418C87"
    %endif
    times 2 - ($ - %%insn_00418c87) db 0
    %%insn_00418c89:
    test edi,edi ; 00418C89 85FF
    %if ($ - %%insn_00418c89) > 2
        %error "LONG_00418C89"
    %endif
    times 2 - ($ - %%insn_00418c89) db 0
    %%insn_00418c8b:
    jnz 0x418d8c ; 00418C8B 0F85FB000000
    %if ($ - %%insn_00418c8b) > 6
        %error "LONG_00418C8B"
    %endif
    times 6 - ($ - %%insn_00418c8b) db 0
    db 0x3B, 0xF7 ; 00418C91 3BF7 | cmp esi,edi | encoding preserved
    %%insn_00418c93:
    jnz short 0x418ca2 ; 00418C93 750D
    %if ($ - %%insn_00418c93) > 2
        %error "LONG_00418C93"
    %endif
    times 2 - ($ - %%insn_00418c93) db 0
    %%insn_00418c95:
    mov eax,0x2 ; 00418C95 B802000000
    %if ($ - %%insn_00418c95) > 5
        %error "LONG_00418C95"
    %endif
    times 5 - ($ - %%insn_00418c95) db 0
    %%insn_00418c9a:
    pop edi ; 00418C9A 5F
    %if ($ - %%insn_00418c9a) > 1
        %error "LONG_00418C9A"
    %endif
    times 1 - ($ - %%insn_00418c9a) db 0
    %%insn_00418c9b:
    pop esi ; 00418C9B 5E
    %if ($ - %%insn_00418c9b) > 1
        %error "LONG_00418C9B"
    %endif
    times 1 - ($ - %%insn_00418c9b) db 0
    %%insn_00418c9c:
    pop ebp ; 00418C9C 5D
    %if ($ - %%insn_00418c9c) > 1
        %error "LONG_00418C9C"
    %endif
    times 1 - ($ - %%insn_00418c9c) db 0
    %%insn_00418c9d:
    pop ebx ; 00418C9D 5B
    %if ($ - %%insn_00418c9d) > 1
        %error "LONG_00418C9D"
    %endif
    times 1 - ($ - %%insn_00418c9d) db 0
    %%insn_00418c9e:
    add esp,0x18 ; 00418C9E 83C418
    %if ($ - %%insn_00418c9e) > 3
        %error "LONG_00418C9E"
    %endif
    times 3 - ($ - %%insn_00418c9e) db 0
    %%insn_00418ca1:
    ret ; 00418CA1 C3
    %if ($ - %%insn_00418ca1) > 1
        %error "LONG_00418CA1"
    %endif
    times 1 - ($ - %%insn_00418ca1) db 0
    %%insn_00418ca2:
    cmp edi,0x1 ; 00418CA2 83FF01
    %if ($ - %%insn_00418ca2) > 3
        %error "LONG_00418CA2"
    %endif
    times 3 - ($ - %%insn_00418ca2) db 0
    %%insn_00418ca5:
    jng short 0x418cb4 ; 00418CA5 7E0D
    %if ($ - %%insn_00418ca5) > 2
        %error "LONG_00418CA5"
    %endif
    times 2 - ($ - %%insn_00418ca5) db 0
    %%insn_00418ca7:
    mov eax,0x1 ; 00418CA7 B801000000
    %if ($ - %%insn_00418ca7) > 5
        %error "LONG_00418CA7"
    %endif
    times 5 - ($ - %%insn_00418ca7) db 0
    %%insn_00418cac:
    pop edi ; 00418CAC 5F
    %if ($ - %%insn_00418cac) > 1
        %error "LONG_00418CAC"
    %endif
    times 1 - ($ - %%insn_00418cac) db 0
    %%insn_00418cad:
    pop esi ; 00418CAD 5E
    %if ($ - %%insn_00418cad) > 1
        %error "LONG_00418CAD"
    %endif
    times 1 - ($ - %%insn_00418cad) db 0
    %%insn_00418cae:
    pop ebp ; 00418CAE 5D
    %if ($ - %%insn_00418cae) > 1
        %error "LONG_00418CAE"
    %endif
    times 1 - ($ - %%insn_00418cae) db 0
    %%insn_00418caf:
    pop ebx ; 00418CAF 5B
    %if ($ - %%insn_00418caf) > 1
        %error "LONG_00418CAF"
    %endif
    times 1 - ($ - %%insn_00418caf) db 0
    %%insn_00418cb0:
    add esp,0x18 ; 00418CB0 83C418
    %if ($ - %%insn_00418cb0) > 3
        %error "LONG_00418CB0"
    %endif
    times 3 - ($ - %%insn_00418cb0) db 0
    %%insn_00418cb3:
    ret ; 00418CB3 C3
    %if ($ - %%insn_00418cb3) > 1
        %error "LONG_00418CB3"
    %endif
    times 1 - ($ - %%insn_00418cb3) db 0
    %%insn_00418cb4:
    cmp esi,0x1 ; 00418CB4 83FE01
    %if ($ - %%insn_00418cb4) > 3
        %error "LONG_00418CB4"
    %endif
    times 3 - ($ - %%insn_00418cb4) db 0
    %%insn_00418cb7:
    jng short 0x418cc6 ; 00418CB7 7E0D
    %if ($ - %%insn_00418cb7) > 2
        %error "LONG_00418CB7"
    %endif
    times 2 - ($ - %%insn_00418cb7) db 0
    %%insn_00418cb9:
    mov eax,0x3 ; 00418CB9 B803000000
    %if ($ - %%insn_00418cb9) > 5
        %error "LONG_00418CB9"
    %endif
    times 5 - ($ - %%insn_00418cb9) db 0
    %%insn_00418cbe:
    pop edi ; 00418CBE 5F
    %if ($ - %%insn_00418cbe) > 1
        %error "LONG_00418CBE"
    %endif
    times 1 - ($ - %%insn_00418cbe) db 0
    %%insn_00418cbf:
    pop esi ; 00418CBF 5E
    %if ($ - %%insn_00418cbf) > 1
        %error "LONG_00418CBF"
    %endif
    times 1 - ($ - %%insn_00418cbf) db 0
    %%insn_00418cc0:
    pop ebp ; 00418CC0 5D
    %if ($ - %%insn_00418cc0) > 1
        %error "LONG_00418CC0"
    %endif
    times 1 - ($ - %%insn_00418cc0) db 0
    %%insn_00418cc1:
    pop ebx ; 00418CC1 5B
    %if ($ - %%insn_00418cc1) > 1
        %error "LONG_00418CC1"
    %endif
    times 1 - ($ - %%insn_00418cc1) db 0
    %%insn_00418cc2:
    add esp,0x18 ; 00418CC2 83C418
    %if ($ - %%insn_00418cc2) > 3
        %error "LONG_00418CC2"
    %endif
    times 3 - ($ - %%insn_00418cc2) db 0
    %%insn_00418cc5:
    ret ; 00418CC5 C3
    %if ($ - %%insn_00418cc5) > 1
        %error "LONG_00418CC5"
    %endif
    times 1 - ($ - %%insn_00418cc5) db 0
    %%insn_00418cc6:
    lea ecx,[esp+0x14] ; 00418CC6 8D4C2414
    %if ($ - %%insn_00418cc6) > 4
        %error "LONG_00418CC6"
    %endif
    times 4 - ($ - %%insn_00418cc6) db 0
    %%insn_00418cca:
    push ecx ; 00418CCA 51
    %if ($ - %%insn_00418cca) > 1
        %error "LONG_00418CCA"
    %endif
    times 1 - ($ - %%insn_00418cca) db 0
    %%insn_00418ccb:
    push ebx ; 00418CCB 53
    %if ($ - %%insn_00418ccb) > 1
        %error "LONG_00418CCB"
    %endif
    times 1 - ($ - %%insn_00418ccb) db 0
    %%insn_00418ccc:
    call dword near [0x4244e0] ; 00418CCC FF15E0444200
    %if ($ - %%insn_00418ccc) > 6
        %error "LONG_00418CCC"
    %endif
    times 6 - ($ - %%insn_00418ccc) db 0
    %%insn_00418cd2:
    test eax,eax ; 00418CD2 85C0
    %if ($ - %%insn_00418cd2) > 2
        %error "LONG_00418CD2"
    %endif
    times 2 - ($ - %%insn_00418cd2) db 0
    %%insn_00418cd4:
    jnz short 0x418cde ; 00418CD4 7508
    %if ($ - %%insn_00418cd4) > 2
        %error "LONG_00418CD4"
    %endif
    times 2 - ($ - %%insn_00418cd4) db 0
    %%insn_00418cd6:
    pop edi ; 00418CD6 5F
    %if ($ - %%insn_00418cd6) > 1
        %error "LONG_00418CD6"
    %endif
    times 1 - ($ - %%insn_00418cd6) db 0
    %%insn_00418cd7:
    pop esi ; 00418CD7 5E
    %if ($ - %%insn_00418cd7) > 1
        %error "LONG_00418CD7"
    %endif
    times 1 - ($ - %%insn_00418cd7) db 0
    %%insn_00418cd8:
    pop ebp ; 00418CD8 5D
    %if ($ - %%insn_00418cd8) > 1
        %error "LONG_00418CD8"
    %endif
    times 1 - ($ - %%insn_00418cd8) db 0
    %%insn_00418cd9:
    pop ebx ; 00418CD9 5B
    %if ($ - %%insn_00418cd9) > 1
        %error "LONG_00418CD9"
    %endif
    times 1 - ($ - %%insn_00418cd9) db 0
    %%insn_00418cda:
    add esp,0x18 ; 00418CDA 83C418
    %if ($ - %%insn_00418cda) > 3
        %error "LONG_00418CDA"
    %endif
    times 3 - ($ - %%insn_00418cda) db 0
    %%insn_00418cdd:
    ret ; 00418CDD C3
    %if ($ - %%insn_00418cdd) > 1
        %error "LONG_00418CDD"
    %endif
    times 1 - ($ - %%insn_00418cdd) db 0
    %%insn_00418cde:
    test esi,esi ; 00418CDE 85F6
    %if ($ - %%insn_00418cde) > 2
        %error "LONG_00418CDE"
    %endif
    times 2 - ($ - %%insn_00418cde) db 0
    %%insn_00418ce0:
    jng short 0x418d2d ; 00418CE0 7E4B
    %if ($ - %%insn_00418ce0) > 2
        %error "LONG_00418CE0"
    %endif
    times 2 - ($ - %%insn_00418ce0) db 0
    %%insn_00418ce2:
    cmp dword [esp+0x14],0x2 ; 00418CE2 837C241402
    %if ($ - %%insn_00418ce2) > 5
        %error "LONG_00418CE2"
    %endif
    times 5 - ($ - %%insn_00418ce2) db 0
    %%insn_00418ce7:
    jnc short 0x418cf6 ; 00418CE7 730D
    %if ($ - %%insn_00418ce7) > 2
        %error "LONG_00418CE7"
    %endif
    times 2 - ($ - %%insn_00418ce7) db 0
    %%insn_00418ce9:
    mov eax,0x3 ; 00418CE9 B803000000
    %if ($ - %%insn_00418ce9) > 5
        %error "LONG_00418CE9"
    %endif
    times 5 - ($ - %%insn_00418ce9) db 0
    %%insn_00418cee:
    pop edi ; 00418CEE 5F
    %if ($ - %%insn_00418cee) > 1
        %error "LONG_00418CEE"
    %endif
    times 1 - ($ - %%insn_00418cee) db 0
    %%insn_00418cef:
    pop esi ; 00418CEF 5E
    %if ($ - %%insn_00418cef) > 1
        %error "LONG_00418CEF"
    %endif
    times 1 - ($ - %%insn_00418cef) db 0
    %%insn_00418cf0:
    pop ebp ; 00418CF0 5D
    %if ($ - %%insn_00418cf0) > 1
        %error "LONG_00418CF0"
    %endif
    times 1 - ($ - %%insn_00418cf0) db 0
    %%insn_00418cf1:
    pop ebx ; 00418CF1 5B
    %if ($ - %%insn_00418cf1) > 1
        %error "LONG_00418CF1"
    %endif
    times 1 - ($ - %%insn_00418cf1) db 0
    %%insn_00418cf2:
    add esp,0x18 ; 00418CF2 83C418
    %if ($ - %%insn_00418cf2) > 3
        %error "LONG_00418CF2"
    %endif
    times 3 - ($ - %%insn_00418cf2) db 0
    %%insn_00418cf5:
    ret ; 00418CF5 C3
    %if ($ - %%insn_00418cf5) > 1
        %error "LONG_00418CF5"
    %endif
    times 1 - ($ - %%insn_00418cf5) db 0
    %%insn_00418cf6:
    mov cl,[esp+0x1a] ; 00418CF6 8A4C241A
    %if ($ - %%insn_00418cf6) > 4
        %error "LONG_00418CF6"
    %endif
    times 4 - ($ - %%insn_00418cf6) db 0
    %%insn_00418cfa:
    lea eax,[esp+0x1a] ; 00418CFA 8D44241A
    %if ($ - %%insn_00418cfa) > 4
        %error "LONG_00418CFA"
    %endif
    times 4 - ($ - %%insn_00418cfa) db 0
    %%insn_00418cfe:
    test cl,cl ; 00418CFE 84C9
    %if ($ - %%insn_00418cfe) > 2
        %error "LONG_00418CFE"
    %endif
    times 2 - ($ - %%insn_00418cfe) db 0
    %%insn_00418d00:
    jz short 0x418d20 ; 00418D00 741E
    %if ($ - %%insn_00418d00) > 2
        %error "LONG_00418D00"
    %endif
    times 2 - ($ - %%insn_00418d00) db 0
    %%insn_00418d02:
    mov dl,[eax+0x1] ; 00418D02 8A5001
    %if ($ - %%insn_00418d02) > 3
        %error "LONG_00418D02"
    %endif
    times 3 - ($ - %%insn_00418d02) db 0
    %%insn_00418d05:
    test dl,dl ; 00418D05 84D2
    %if ($ - %%insn_00418d05) > 2
        %error "LONG_00418D05"
    %endif
    times 2 - ($ - %%insn_00418d05) db 0
    %%insn_00418d07:
    jz short 0x418d20 ; 00418D07 7417
    %if ($ - %%insn_00418d07) > 2
        %error "LONG_00418D07"
    %endif
    times 2 - ($ - %%insn_00418d07) db 0
    %%insn_00418d09:
    mov cl,[ebp+0x0] ; 00418D09 8A4D00
    %if ($ - %%insn_00418d09) > 3
        %error "LONG_00418D09"
    %endif
    times 3 - ($ - %%insn_00418d09) db 0
    %%insn_00418d0c:
    mov bl,[eax] ; 00418D0C 8A18
    %if ($ - %%insn_00418d0c) > 2
        %error "LONG_00418D0C"
    %endif
    times 2 - ($ - %%insn_00418d0c) db 0
    db 0x3A, 0xCB ; 00418D0E 3ACB | cmp cl,bl | encoding preserved
    %%insn_00418d10:
    jc short 0x418d16 ; 00418D10 7204
    %if ($ - %%insn_00418d10) > 2
        %error "LONG_00418D10"
    %endif
    times 2 - ($ - %%insn_00418d10) db 0
    db 0x3A, 0xCA ; 00418D12 3ACA | cmp cl,dl | encoding preserved
    %%insn_00418d14:
    jna short 0x418d7f ; 00418D14 7669
    %if ($ - %%insn_00418d14) > 2
        %error "LONG_00418D14"
    %endif
    times 2 - ($ - %%insn_00418d14) db 0
    %%insn_00418d16:
    mov cl,[eax+0x2] ; 00418D16 8A4802
    %if ($ - %%insn_00418d16) > 3
        %error "LONG_00418D16"
    %endif
    times 3 - ($ - %%insn_00418d16) db 0
    %%insn_00418d19:
    add eax,0x2 ; 00418D19 83C002
    %if ($ - %%insn_00418d19) > 3
        %error "LONG_00418D19"
    %endif
    times 3 - ($ - %%insn_00418d19) db 0
    %%insn_00418d1c:
    test cl,cl ; 00418D1C 84C9
    %if ($ - %%insn_00418d1c) > 2
        %error "LONG_00418D1C"
    %endif
    times 2 - ($ - %%insn_00418d1c) db 0
    %%insn_00418d1e:
    jnz short 0x418d02 ; 00418D1E 75E2
    %if ($ - %%insn_00418d1e) > 2
        %error "LONG_00418D1E"
    %endif
    times 2 - ($ - %%insn_00418d1e) db 0
    %%insn_00418d20:
    mov eax,0x3 ; 00418D20 B803000000
    %if ($ - %%insn_00418d20) > 5
        %error "LONG_00418D20"
    %endif
    times 5 - ($ - %%insn_00418d20) db 0
    %%insn_00418d25:
    pop edi ; 00418D25 5F
    %if ($ - %%insn_00418d25) > 1
        %error "LONG_00418D25"
    %endif
    times 1 - ($ - %%insn_00418d25) db 0
    %%insn_00418d26:
    pop esi ; 00418D26 5E
    %if ($ - %%insn_00418d26) > 1
        %error "LONG_00418D26"
    %endif
    times 1 - ($ - %%insn_00418d26) db 0
    %%insn_00418d27:
    pop ebp ; 00418D27 5D
    %if ($ - %%insn_00418d27) > 1
        %error "LONG_00418D27"
    %endif
    times 1 - ($ - %%insn_00418d27) db 0
    %%insn_00418d28:
    pop ebx ; 00418D28 5B
    %if ($ - %%insn_00418d28) > 1
        %error "LONG_00418D28"
    %endif
    times 1 - ($ - %%insn_00418d28) db 0
    %%insn_00418d29:
    add esp,0x18 ; 00418D29 83C418
    %if ($ - %%insn_00418d29) > 3
        %error "LONG_00418D29"
    %endif
    times 3 - ($ - %%insn_00418d29) db 0
    %%insn_00418d2c:
    ret ; 00418D2C C3
    %if ($ - %%insn_00418d2c) > 1
        %error "LONG_00418D2C"
    %endif
    times 1 - ($ - %%insn_00418d2c) db 0
    %%insn_00418d2d:
    test edi,edi ; 00418D2D 85FF
    %if ($ - %%insn_00418d2d) > 2
        %error "LONG_00418D2D"
    %endif
    times 2 - ($ - %%insn_00418d2d) db 0
    %%insn_00418d2f:
    jng short 0x418d8c ; 00418D2F 7E5B
    %if ($ - %%insn_00418d2f) > 2
        %error "LONG_00418D2F"
    %endif
    times 2 - ($ - %%insn_00418d2f) db 0
    %%insn_00418d31:
    cmp dword [esp+0x14],0x2 ; 00418D31 837C241402
    %if ($ - %%insn_00418d31) > 5
        %error "LONG_00418D31"
    %endif
    times 5 - ($ - %%insn_00418d31) db 0
    %%insn_00418d36:
    jnc short 0x418d45 ; 00418D36 730D
    %if ($ - %%insn_00418d36) > 2
        %error "LONG_00418D36"
    %endif
    times 2 - ($ - %%insn_00418d36) db 0
    %%insn_00418d38:
    mov eax,0x1 ; 00418D38 B801000000
    %if ($ - %%insn_00418d38) > 5
        %error "LONG_00418D38"
    %endif
    times 5 - ($ - %%insn_00418d38) db 0
    %%insn_00418d3d:
    pop edi ; 00418D3D 5F
    %if ($ - %%insn_00418d3d) > 1
        %error "LONG_00418D3D"
    %endif
    times 1 - ($ - %%insn_00418d3d) db 0
    %%insn_00418d3e:
    pop esi ; 00418D3E 5E
    %if ($ - %%insn_00418d3e) > 1
        %error "LONG_00418D3E"
    %endif
    times 1 - ($ - %%insn_00418d3e) db 0
    %%insn_00418d3f:
    pop ebp ; 00418D3F 5D
    %if ($ - %%insn_00418d3f) > 1
        %error "LONG_00418D3F"
    %endif
    times 1 - ($ - %%insn_00418d3f) db 0
    %%insn_00418d40:
    pop ebx ; 00418D40 5B
    %if ($ - %%insn_00418d40) > 1
        %error "LONG_00418D40"
    %endif
    times 1 - ($ - %%insn_00418d40) db 0
    %%insn_00418d41:
    add esp,0x18 ; 00418D41 83C418
    %if ($ - %%insn_00418d41) > 3
        %error "LONG_00418D41"
    %endif
    times 3 - ($ - %%insn_00418d41) db 0
    %%insn_00418d44:
    ret ; 00418D44 C3
    %if ($ - %%insn_00418d44) > 1
        %error "LONG_00418D44"
    %endif
    times 1 - ($ - %%insn_00418d44) db 0
    %%insn_00418d45:
    mov cl,[esp+0x1a] ; 00418D45 8A4C241A
    %if ($ - %%insn_00418d45) > 4
        %error "LONG_00418D45"
    %endif
    times 4 - ($ - %%insn_00418d45) db 0
    %%insn_00418d49:
    lea eax,[esp+0x1a] ; 00418D49 8D44241A
    %if ($ - %%insn_00418d49) > 4
        %error "LONG_00418D49"
    %endif
    times 4 - ($ - %%insn_00418d49) db 0
    %%insn_00418d4d:
    test cl,cl ; 00418D4D 84C9
    %if ($ - %%insn_00418d4d) > 2
        %error "LONG_00418D4D"
    %endif
    times 2 - ($ - %%insn_00418d4d) db 0
    %%insn_00418d4f:
    jz short 0x418d72 ; 00418D4F 7421
    %if ($ - %%insn_00418d4f) > 2
        %error "LONG_00418D4F"
    %endif
    times 2 - ($ - %%insn_00418d4f) db 0
    %%insn_00418d51:
    mov dl,[eax+0x1] ; 00418D51 8A5001
    %if ($ - %%insn_00418d51) > 3
        %error "LONG_00418D51"
    %endif
    times 3 - ($ - %%insn_00418d51) db 0
    %%insn_00418d54:
    test dl,dl ; 00418D54 84D2
    %if ($ - %%insn_00418d54) > 2
        %error "LONG_00418D54"
    %endif
    times 2 - ($ - %%insn_00418d54) db 0
    %%insn_00418d56:
    jz short 0x418d72 ; 00418D56 741A
    %if ($ - %%insn_00418d56) > 2
        %error "LONG_00418D56"
    %endif
    times 2 - ($ - %%insn_00418d56) db 0
    %%insn_00418d58:
    mov ecx,[esp+0x3c] ; 00418D58 8B4C243C
    %if ($ - %%insn_00418d58) > 4
        %error "LONG_00418D58"
    %endif
    times 4 - ($ - %%insn_00418d58) db 0
    %%insn_00418d5c:
    mov bl,[eax] ; 00418D5C 8A18
    %if ($ - %%insn_00418d5c) > 2
        %error "LONG_00418D5C"
    %endif
    times 2 - ($ - %%insn_00418d5c) db 0
    %%insn_00418d5e:
    mov cl,[ecx] ; 00418D5E 8A09
    %if ($ - %%insn_00418d5e) > 2
        %error "LONG_00418D5E"
    %endif
    times 2 - ($ - %%insn_00418d5e) db 0
    db 0x3A, 0xCB ; 00418D60 3ACB | cmp cl,bl | encoding preserved
    %%insn_00418d62:
    jc short 0x418d68 ; 00418D62 7204
    %if ($ - %%insn_00418d62) > 2
        %error "LONG_00418D62"
    %endif
    times 2 - ($ - %%insn_00418d62) db 0
    db 0x3A, 0xCA ; 00418D64 3ACA | cmp cl,dl | encoding preserved
    %%insn_00418d66:
    jna short 0x418d7f ; 00418D66 7617
    %if ($ - %%insn_00418d66) > 2
        %error "LONG_00418D66"
    %endif
    times 2 - ($ - %%insn_00418d66) db 0
    %%insn_00418d68:
    mov cl,[eax+0x2] ; 00418D68 8A4802
    %if ($ - %%insn_00418d68) > 3
        %error "LONG_00418D68"
    %endif
    times 3 - ($ - %%insn_00418d68) db 0
    %%insn_00418d6b:
    add eax,0x2 ; 00418D6B 83C002
    %if ($ - %%insn_00418d6b) > 3
        %error "LONG_00418D6B"
    %endif
    times 3 - ($ - %%insn_00418d6b) db 0
    %%insn_00418d6e:
    test cl,cl ; 00418D6E 84C9
    %if ($ - %%insn_00418d6e) > 2
        %error "LONG_00418D6E"
    %endif
    times 2 - ($ - %%insn_00418d6e) db 0
    %%insn_00418d70:
    jnz short 0x418d51 ; 00418D70 75DF
    %if ($ - %%insn_00418d70) > 2
        %error "LONG_00418D70"
    %endif
    times 2 - ($ - %%insn_00418d70) db 0
    %%insn_00418d72:
    mov eax,0x1 ; 00418D72 B801000000
    %if ($ - %%insn_00418d72) > 5
        %error "LONG_00418D72"
    %endif
    times 5 - ($ - %%insn_00418d72) db 0
    %%insn_00418d77:
    pop edi ; 00418D77 5F
    %if ($ - %%insn_00418d77) > 1
        %error "LONG_00418D77"
    %endif
    times 1 - ($ - %%insn_00418d77) db 0
    %%insn_00418d78:
    pop esi ; 00418D78 5E
    %if ($ - %%insn_00418d78) > 1
        %error "LONG_00418D78"
    %endif
    times 1 - ($ - %%insn_00418d78) db 0
    %%insn_00418d79:
    pop ebp ; 00418D79 5D
    %if ($ - %%insn_00418d79) > 1
        %error "LONG_00418D79"
    %endif
    times 1 - ($ - %%insn_00418d79) db 0
    %%insn_00418d7a:
    pop ebx ; 00418D7A 5B
    %if ($ - %%insn_00418d7a) > 1
        %error "LONG_00418D7A"
    %endif
    times 1 - ($ - %%insn_00418d7a) db 0
    %%insn_00418d7b:
    add esp,0x18 ; 00418D7B 83C418
    %if ($ - %%insn_00418d7b) > 3
        %error "LONG_00418D7B"
    %endif
    times 3 - ($ - %%insn_00418d7b) db 0
    %%insn_00418d7e:
    ret ; 00418D7E C3
    %if ($ - %%insn_00418d7e) > 1
        %error "LONG_00418D7E"
    %endif
    times 1 - ($ - %%insn_00418d7e) db 0
    %%insn_00418d7f:
    mov eax,0x2 ; 00418D7F B802000000
    %if ($ - %%insn_00418d7f) > 5
        %error "LONG_00418D7F"
    %endif
    times 5 - ($ - %%insn_00418d7f) db 0
    %%insn_00418d84:
    pop edi ; 00418D84 5F
    %if ($ - %%insn_00418d84) > 1
        %error "LONG_00418D84"
    %endif
    times 1 - ($ - %%insn_00418d84) db 0
    %%insn_00418d85:
    pop esi ; 00418D85 5E
    %if ($ - %%insn_00418d85) > 1
        %error "LONG_00418D85"
    %endif
    times 1 - ($ - %%insn_00418d85) db 0
    %%insn_00418d86:
    pop ebp ; 00418D86 5D
    %if ($ - %%insn_00418d86) > 1
        %error "LONG_00418D86"
    %endif
    times 1 - ($ - %%insn_00418d86) db 0
    %%insn_00418d87:
    pop ebx ; 00418D87 5B
    %if ($ - %%insn_00418d87) > 1
        %error "LONG_00418D87"
    %endif
    times 1 - ($ - %%insn_00418d87) db 0
    %%insn_00418d88:
    add esp,0x18 ; 00418D88 83C418
    %if ($ - %%insn_00418d88) > 3
        %error "LONG_00418D88"
    %endif
    times 3 - ($ - %%insn_00418d88) db 0
    %%insn_00418d8b:
    ret ; 00418D8B C3
    %if ($ - %%insn_00418d8b) > 1
        %error "LONG_00418D8B"
    %endif
    times 1 - ($ - %%insn_00418d8b) db 0
    %%insn_00418d8c:
    mov edi,[0x424464] ; 00418D8C 8B3D64444200
    %if ($ - %%insn_00418d8c) > 6
        %error "LONG_00418D8C"
    %endif
    times 6 - ($ - %%insn_00418d8c) db 0
    %%insn_00418d92:
    push dword 0x0 ; 00418D92 6A00
    %if ($ - %%insn_00418d92) > 2
        %error "LONG_00418D92"
    %endif
    times 2 - ($ - %%insn_00418d92) db 0
    %%insn_00418d94:
    push dword 0x0 ; 00418D94 6A00
    %if ($ - %%insn_00418d94) > 2
        %error "LONG_00418D94"
    %endif
    times 2 - ($ - %%insn_00418d94) db 0
    %%insn_00418d96:
    push esi ; 00418D96 56
    %if ($ - %%insn_00418d96) > 1
        %error "LONG_00418D96"
    %endif
    times 1 - ($ - %%insn_00418d96) db 0
    %%insn_00418d97:
    push ebp ; 00418D97 55
    %if ($ - %%insn_00418d97) > 1
        %error "LONG_00418D97"
    %endif
    times 1 - ($ - %%insn_00418d97) db 0
    %%insn_00418d98:
    push dword 0x9 ; 00418D98 6A09
    %if ($ - %%insn_00418d98) > 2
        %error "LONG_00418D98"
    %endif
    times 2 - ($ - %%insn_00418d98) db 0
    %%insn_00418d9a:
    push ebx ; 00418D9A 53
    %if ($ - %%insn_00418d9a) > 1
        %error "LONG_00418D9A"
    %endif
    times 1 - ($ - %%insn_00418d9a) db 0
    %%insn_00418d9b:
    call edi ; 00418D9B FFD7
    %if ($ - %%insn_00418d9b) > 2
        %error "LONG_00418D9B"
    %endif
    times 2 - ($ - %%insn_00418d9b) db 0
    db 0x8B, 0xE8 ; 00418D9D 8BE8 | mov ebp,eax | encoding preserved
    %%insn_00418d9f:
    test ebp,ebp ; 00418D9F 85ED
    %if ($ - %%insn_00418d9f) > 2
        %error "LONG_00418D9F"
    %endif
    times 2 - ($ - %%insn_00418d9f) db 0
    %%insn_00418da1:
    jnz short 0x418dab ; 00418DA1 7508
    %if ($ - %%insn_00418da1) > 2
        %error "LONG_00418DA1"
    %endif
    times 2 - ($ - %%insn_00418da1) db 0
    %%insn_00418da3:
    pop edi ; 00418DA3 5F
    %if ($ - %%insn_00418da3) > 1
        %error "LONG_00418DA3"
    %endif
    times 1 - ($ - %%insn_00418da3) db 0
    %%insn_00418da4:
    pop esi ; 00418DA4 5E
    %if ($ - %%insn_00418da4) > 1
        %error "LONG_00418DA4"
    %endif
    times 1 - ($ - %%insn_00418da4) db 0
    %%insn_00418da5:
    pop ebp ; 00418DA5 5D
    %if ($ - %%insn_00418da5) > 1
        %error "LONG_00418DA5"
    %endif
    times 1 - ($ - %%insn_00418da5) db 0
    %%insn_00418da6:
    pop ebx ; 00418DA6 5B
    %if ($ - %%insn_00418da6) > 1
        %error "LONG_00418DA6"
    %endif
    times 1 - ($ - %%insn_00418da6) db 0
    %%insn_00418da7:
    add esp,0x18 ; 00418DA7 83C418
    %if ($ - %%insn_00418da7) > 3
        %error "LONG_00418DA7"
    %endif
    times 3 - ($ - %%insn_00418da7) db 0
    %%insn_00418daa:
    ret ; 00418DAA C3
    %if ($ - %%insn_00418daa) > 1
        %error "LONG_00418DAA"
    %endif
    times 1 - ($ - %%insn_00418daa) db 0
    %%insn_00418dab:
    lea edx,[ebp+ebp+0x0] ; 00418DAB 8D542D00
    %if ($ - %%insn_00418dab) > 4
        %error "LONG_00418DAB"
    %endif
    times 4 - ($ - %%insn_00418dab) db 0
    %%insn_00418daf:
    push edx ; 00418DAF 52
    %if ($ - %%insn_00418daf) > 1
        %error "LONG_00418DAF"
    %endif
    times 1 - ($ - %%insn_00418daf) db 0
    %%insn_00418db0:
    call 0x40cdc0 ; 00418DB0 E80B40FFFF
    %if ($ - %%insn_00418db0) > 5
        %error "LONG_00418DB0"
    %endif
    times 5 - ($ - %%insn_00418db0) db 0
    %%insn_00418db5:
    add esp,0x4 ; 00418DB5 83C404
    %if ($ - %%insn_00418db5) > 3
        %error "LONG_00418DB5"
    %endif
    times 3 - ($ - %%insn_00418db5) db 0
    %%insn_00418db8:
    mov [esp+0x44],eax ; 00418DB8 89442444
    %if ($ - %%insn_00418db8) > 4
        %error "LONG_00418DB8"
    %endif
    times 4 - ($ - %%insn_00418db8) db 0
    %%insn_00418dbc:
    test eax,eax ; 00418DBC 85C0
    %if ($ - %%insn_00418dbc) > 2
        %error "LONG_00418DBC"
    %endif
    times 2 - ($ - %%insn_00418dbc) db 0
    %%insn_00418dbe:
    jnz short 0x418dca ; 00418DBE 750A
    %if ($ - %%insn_00418dbe) > 2
        %error "LONG_00418DBE"
    %endif
    times 2 - ($ - %%insn_00418dbe) db 0
    db 0x33, 0xC0 ; 00418DC0 33C0 | xor eax,eax | encoding preserved
    %%insn_00418dc2:
    pop edi ; 00418DC2 5F
    %if ($ - %%insn_00418dc2) > 1
        %error "LONG_00418DC2"
    %endif
    times 1 - ($ - %%insn_00418dc2) db 0
    %%insn_00418dc3:
    pop esi ; 00418DC3 5E
    %if ($ - %%insn_00418dc3) > 1
        %error "LONG_00418DC3"
    %endif
    times 1 - ($ - %%insn_00418dc3) db 0
    %%insn_00418dc4:
    pop ebp ; 00418DC4 5D
    %if ($ - %%insn_00418dc4) > 1
        %error "LONG_00418DC4"
    %endif
    times 1 - ($ - %%insn_00418dc4) db 0
    %%insn_00418dc5:
    pop ebx ; 00418DC5 5B
    %if ($ - %%insn_00418dc5) > 1
        %error "LONG_00418DC5"
    %endif
    times 1 - ($ - %%insn_00418dc5) db 0
    %%insn_00418dc6:
    add esp,0x18 ; 00418DC6 83C418
    %if ($ - %%insn_00418dc6) > 3
        %error "LONG_00418DC6"
    %endif
    times 3 - ($ - %%insn_00418dc6) db 0
    %%insn_00418dc9:
    ret ; 00418DC9 C3
    %if ($ - %%insn_00418dc9) > 1
        %error "LONG_00418DC9"
    %endif
    times 1 - ($ - %%insn_00418dc9) db 0
    %%insn_00418dca:
    push ebp ; 00418DCA 55
    %if ($ - %%insn_00418dca) > 1
        %error "LONG_00418DCA"
    %endif
    times 1 - ($ - %%insn_00418dca) db 0
    %%insn_00418dcb:
    push eax ; 00418DCB 50
    %if ($ - %%insn_00418dcb) > 1
        %error "LONG_00418DCB"
    %endif
    times 1 - ($ - %%insn_00418dcb) db 0
    %%insn_00418dcc:
    mov eax,[esp+0x3c] ; 00418DCC 8B44243C
    %if ($ - %%insn_00418dcc) > 4
        %error "LONG_00418DCC"
    %endif
    times 4 - ($ - %%insn_00418dcc) db 0
    %%insn_00418dd0:
    push esi ; 00418DD0 56
    %if ($ - %%insn_00418dd0) > 1
        %error "LONG_00418DD0"
    %endif
    times 1 - ($ - %%insn_00418dd0) db 0
    %%insn_00418dd1:
    push eax ; 00418DD1 50
    %if ($ - %%insn_00418dd1) > 1
        %error "LONG_00418DD1"
    %endif
    times 1 - ($ - %%insn_00418dd1) db 0
    %%insn_00418dd2:
    push dword 0x1 ; 00418DD2 6A01
    %if ($ - %%insn_00418dd2) > 2
        %error "LONG_00418DD2"
    %endif
    times 2 - ($ - %%insn_00418dd2) db 0
    %%insn_00418dd4:
    push ebx ; 00418DD4 53
    %if ($ - %%insn_00418dd4) > 1
        %error "LONG_00418DD4"
    %endif
    times 1 - ($ - %%insn_00418dd4) db 0
    %%insn_00418dd5:
    call edi ; 00418DD5 FFD7
    %if ($ - %%insn_00418dd5) > 2
        %error "LONG_00418DD5"
    %endif
    times 2 - ($ - %%insn_00418dd5) db 0
    %%insn_00418dd7:
    test eax,eax ; 00418DD7 85C0
    %if ($ - %%insn_00418dd7) > 2
        %error "LONG_00418DD7"
    %endif
    times 2 - ($ - %%insn_00418dd7) db 0
    %%insn_00418dd9:
    jz short 0x418e3d ; 00418DD9 7462
    %if ($ - %%insn_00418dd9) > 2
        %error "LONG_00418DD9"
    %endif
    times 2 - ($ - %%insn_00418dd9) db 0
    %%insn_00418ddb:
    mov ecx,[esp+0x40] ; 00418DDB 8B4C2440
    %if ($ - %%insn_00418ddb) > 4
        %error "LONG_00418DDB"
    %endif
    times 4 - ($ - %%insn_00418ddb) db 0
    %%insn_00418ddf:
    mov edx,[esp+0x3c] ; 00418DDF 8B54243C
    %if ($ - %%insn_00418ddf) > 4
        %error "LONG_00418DDF"
    %endif
    times 4 - ($ - %%insn_00418ddf) db 0
    %%insn_00418de3:
    push dword 0x0 ; 00418DE3 6A00
    %if ($ - %%insn_00418de3) > 2
        %error "LONG_00418DE3"
    %endif
    times 2 - ($ - %%insn_00418de3) db 0
    %%insn_00418de5:
    push dword 0x0 ; 00418DE5 6A00
    %if ($ - %%insn_00418de5) > 2
        %error "LONG_00418DE5"
    %endif
    times 2 - ($ - %%insn_00418de5) db 0
    %%insn_00418de7:
    push ecx ; 00418DE7 51
    %if ($ - %%insn_00418de7) > 1
        %error "LONG_00418DE7"
    %endif
    times 1 - ($ - %%insn_00418de7) db 0
    %%insn_00418de8:
    push edx ; 00418DE8 52
    %if ($ - %%insn_00418de8) > 1
        %error "LONG_00418DE8"
    %endif
    times 1 - ($ - %%insn_00418de8) db 0
    %%insn_00418de9:
    push dword 0x9 ; 00418DE9 6A09
    %if ($ - %%insn_00418de9) > 2
        %error "LONG_00418DE9"
    %endif
    times 2 - ($ - %%insn_00418de9) db 0
    %%insn_00418deb:
    push ebx ; 00418DEB 53
    %if ($ - %%insn_00418deb) > 1
        %error "LONG_00418DEB"
    %endif
    times 1 - ($ - %%insn_00418deb) db 0
    %%insn_00418dec:
    call edi ; 00418DEC FFD7
    %if ($ - %%insn_00418dec) > 2
        %error "LONG_00418DEC"
    %endif
    times 2 - ($ - %%insn_00418dec) db 0
    db 0x8B, 0xF0 ; 00418DEE 8BF0 | mov esi,eax | encoding preserved
    %%insn_00418df0:
    test esi,esi ; 00418DF0 85F6
    %if ($ - %%insn_00418df0) > 2
        %error "LONG_00418DF0"
    %endif
    times 2 - ($ - %%insn_00418df0) db 0
    %%insn_00418df2:
    jz short 0x418e3d ; 00418DF2 7449
    %if ($ - %%insn_00418df2) > 2
        %error "LONG_00418DF2"
    %endif
    times 2 - ($ - %%insn_00418df2) db 0
    %%insn_00418df4:
    lea eax,[esi+esi] ; 00418DF4 8D0436
    %if ($ - %%insn_00418df4) > 3
        %error "LONG_00418DF4"
    %endif
    times 3 - ($ - %%insn_00418df4) db 0
    %%insn_00418df7:
    push eax ; 00418DF7 50
    %if ($ - %%insn_00418df7) > 1
        %error "LONG_00418DF7"
    %endif
    times 1 - ($ - %%insn_00418df7) db 0
    %%insn_00418df8:
    call 0x40cdc0 ; 00418DF8 E8C33FFFFF
    %if ($ - %%insn_00418df8) > 5
        %error "LONG_00418DF8"
    %endif
    times 5 - ($ - %%insn_00418df8) db 0
    %%insn_00418dfd:
    add esp,0x4 ; 00418DFD 83C404
    %if ($ - %%insn_00418dfd) > 3
        %error "LONG_00418DFD"
    %endif
    times 3 - ($ - %%insn_00418dfd) db 0
    %%insn_00418e00:
    mov [esp+0x38],eax ; 00418E00 89442438
    %if ($ - %%insn_00418e00) > 4
        %error "LONG_00418E00"
    %endif
    times 4 - ($ - %%insn_00418e00) db 0
    %%insn_00418e04:
    test eax,eax ; 00418E04 85C0
    %if ($ - %%insn_00418e04) > 2
        %error "LONG_00418E04"
    %endif
    times 2 - ($ - %%insn_00418e04) db 0
    %%insn_00418e06:
    jz short 0x418e3d ; 00418E06 7435
    %if ($ - %%insn_00418e06) > 2
        %error "LONG_00418E06"
    %endif
    times 2 - ($ - %%insn_00418e06) db 0
    %%insn_00418e08:
    mov ecx,[esp+0x40] ; 00418E08 8B4C2440
    %if ($ - %%insn_00418e08) > 4
        %error "LONG_00418E08"
    %endif
    times 4 - ($ - %%insn_00418e08) db 0
    %%insn_00418e0c:
    mov edx,[esp+0x3c] ; 00418E0C 8B54243C
    %if ($ - %%insn_00418e0c) > 4
        %error "LONG_00418E0C"
    %endif
    times 4 - ($ - %%insn_00418e0c) db 0
    %%insn_00418e10:
    push esi ; 00418E10 56
    %if ($ - %%insn_00418e10) > 1
        %error "LONG_00418E10"
    %endif
    times 1 - ($ - %%insn_00418e10) db 0
    %%insn_00418e11:
    push eax ; 00418E11 50
    %if ($ - %%insn_00418e11) > 1
        %error "LONG_00418E11"
    %endif
    times 1 - ($ - %%insn_00418e11) db 0
    %%insn_00418e12:
    push ecx ; 00418E12 51
    %if ($ - %%insn_00418e12) > 1
        %error "LONG_00418E12"
    %endif
    times 1 - ($ - %%insn_00418e12) db 0
    %%insn_00418e13:
    push edx ; 00418E13 52
    %if ($ - %%insn_00418e13) > 1
        %error "LONG_00418E13"
    %endif
    times 1 - ($ - %%insn_00418e13) db 0
    %%insn_00418e14:
    push dword 0x1 ; 00418E14 6A01
    %if ($ - %%insn_00418e14) > 2
        %error "LONG_00418E14"
    %endif
    times 2 - ($ - %%insn_00418e14) db 0
    %%insn_00418e16:
    push ebx ; 00418E16 53
    %if ($ - %%insn_00418e16) > 1
        %error "LONG_00418E16"
    %endif
    times 1 - ($ - %%insn_00418e16) db 0
    %%insn_00418e17:
    call edi ; 00418E17 FFD7
    %if ($ - %%insn_00418e17) > 2
        %error "LONG_00418E17"
    %endif
    times 2 - ($ - %%insn_00418e17) db 0
    %%insn_00418e19:
    test eax,eax ; 00418E19 85C0
    %if ($ - %%insn_00418e19) > 2
        %error "LONG_00418E19"
    %endif
    times 2 - ($ - %%insn_00418e19) db 0
    %%insn_00418e1b:
    jz short 0x418e3d ; 00418E1B 7420
    %if ($ - %%insn_00418e1b) > 2
        %error "LONG_00418E1B"
    %endif
    times 2 - ($ - %%insn_00418e1b) db 0
    %%insn_00418e1d:
    mov eax,[esp+0x38] ; 00418E1D 8B442438
    %if ($ - %%insn_00418e1d) > 4
        %error "LONG_00418E1D"
    %endif
    times 4 - ($ - %%insn_00418e1d) db 0
    %%insn_00418e21:
    mov ecx,[esp+0x44] ; 00418E21 8B4C2444
    %if ($ - %%insn_00418e21) > 4
        %error "LONG_00418E21"
    %endif
    times 4 - ($ - %%insn_00418e21) db 0
    %%insn_00418e25:
    mov edx,[esp+0x30] ; 00418E25 8B542430
    %if ($ - %%insn_00418e25) > 4
        %error "LONG_00418E25"
    %endif
    times 4 - ($ - %%insn_00418e25) db 0
    %%insn_00418e29:
    push esi ; 00418E29 56
    %if ($ - %%insn_00418e29) > 1
        %error "LONG_00418E29"
    %endif
    times 1 - ($ - %%insn_00418e29) db 0
    %%insn_00418e2a:
    push eax ; 00418E2A 50
    %if ($ - %%insn_00418e2a) > 1
        %error "LONG_00418E2A"
    %endif
    times 1 - ($ - %%insn_00418e2a) db 0
    %%insn_00418e2b:
    mov eax,[esp+0x34] ; 00418E2B 8B442434
    %if ($ - %%insn_00418e2b) > 4
        %error "LONG_00418E2B"
    %endif
    times 4 - ($ - %%insn_00418e2b) db 0
    %%insn_00418e2f:
    push ebp ; 00418E2F 55
    %if ($ - %%insn_00418e2f) > 1
        %error "LONG_00418E2F"
    %endif
    times 1 - ($ - %%insn_00418e2f) db 0
    %%insn_00418e30:
    push ecx ; 00418E30 51
    %if ($ - %%insn_00418e30) > 1
        %error "LONG_00418E30"
    %endif
    times 1 - ($ - %%insn_00418e30) db 0
    %%insn_00418e31:
    push edx ; 00418E31 52
    %if ($ - %%insn_00418e31) > 1
        %error "LONG_00418E31"
    %endif
    times 1 - ($ - %%insn_00418e31) db 0
    %%insn_00418e32:
    push eax ; 00418E32 50
    %if ($ - %%insn_00418e32) > 1
        %error "LONG_00418E32"
    %endif
    times 1 - ($ - %%insn_00418e32) db 0
    %%insn_00418e33:
    call dword near [0x4244c8] ; 00418E33 FF15C8444200
    %if ($ - %%insn_00418e33) > 6
        %error "LONG_00418E33"
    %endif
    times 6 - ($ - %%insn_00418e33) db 0
    db 0x8B, 0xF0 ; 00418E39 8BF0 | mov esi,eax | encoding preserved
    %%insn_00418e3b:
    jmp short 0x418e41 ; 00418E3B EB04
    %if ($ - %%insn_00418e3b) > 2
        %error "LONG_00418E3B"
    %endif
    times 2 - ($ - %%insn_00418e3b) db 0
    %%insn_00418e3d:
    mov esi,[esp+0x10] ; 00418E3D 8B742410
    %if ($ - %%insn_00418e3d) > 4
        %error "LONG_00418E3D"
    %endif
    times 4 - ($ - %%insn_00418e3d) db 0
    %%insn_00418e41:
    mov ecx,[esp+0x44] ; 00418E41 8B4C2444
    %if ($ - %%insn_00418e41) > 4
        %error "LONG_00418E41"
    %endif
    times 4 - ($ - %%insn_00418e41) db 0
    %%insn_00418e45:
    push ecx ; 00418E45 51
    %if ($ - %%insn_00418e45) > 1
        %error "LONG_00418E45"
    %endif
    times 1 - ($ - %%insn_00418e45) db 0
    %%insn_00418e46:
    call 0x40c9a0 ; 00418E46 E8553BFFFF
    %if ($ - %%insn_00418e46) > 5
        %error "LONG_00418E46"
    %endif
    times 5 - ($ - %%insn_00418e46) db 0
    %%insn_00418e4b:
    mov edx,[esp+0x3c] ; 00418E4B 8B54243C
    %if ($ - %%insn_00418e4b) > 4
        %error "LONG_00418E4B"
    %endif
    times 4 - ($ - %%insn_00418e4b) db 0
    %%insn_00418e4f:
    add esp,0x4 ; 00418E4F 83C404
    %if ($ - %%insn_00418e4f) > 3
        %error "LONG_00418E4F"
    %endif
    times 3 - ($ - %%insn_00418e4f) db 0
    %%insn_00418e52:
    push edx ; 00418E52 52
    %if ($ - %%insn_00418e52) > 1
        %error "LONG_00418E52"
    %endif
    times 1 - ($ - %%insn_00418e52) db 0
    %%insn_00418e53:
    call 0x40c9a0 ; 00418E53 E8483BFFFF
    %if ($ - %%insn_00418e53) > 5
        %error "LONG_00418E53"
    %endif
    times 5 - ($ - %%insn_00418e53) db 0
    %%insn_00418e58:
    add esp,0x4 ; 00418E58 83C404
    %if ($ - %%insn_00418e58) > 3
        %error "LONG_00418E58"
    %endif
    times 3 - ($ - %%insn_00418e58) db 0
    db 0x8B, 0xC6 ; 00418E5B 8BC6 | mov eax,esi | encoding preserved
    %%insn_00418e5d:
    pop edi ; 00418E5D 5F
    %if ($ - %%insn_00418e5d) > 1
        %error "LONG_00418E5D"
    %endif
    times 1 - ($ - %%insn_00418e5d) db 0
    %%insn_00418e5e:
    pop esi ; 00418E5E 5E
    %if ($ - %%insn_00418e5e) > 1
        %error "LONG_00418E5E"
    %endif
    times 1 - ($ - %%insn_00418e5e) db 0
    %%insn_00418e5f:
    pop ebp ; 00418E5F 5D
    %if ($ - %%insn_00418e5f) > 1
        %error "LONG_00418E5F"
    %endif
    times 1 - ($ - %%insn_00418e5f) db 0
    %%insn_00418e60:
    pop ebx ; 00418E60 5B
    %if ($ - %%insn_00418e60) > 1
        %error "LONG_00418E60"
    %endif
    times 1 - ($ - %%insn_00418e60) db 0
    %%insn_00418e61:
    add esp,0x18 ; 00418E61 83C418
    %if ($ - %%insn_00418e61) > 3
        %error "LONG_00418E61"
    %endif
    times 3 - ($ - %%insn_00418e61) db 0
    %%insn_00418e64:
    ret ; 00418E64 C3
    %if ($ - %%insn_00418e64) > 1
        %error "LONG_00418E64"
    %endif
    times 1 - ($ - %%insn_00418e64) db 0
    %if ($ - %%fragment_start) != 709
        %error "function fragment size drift: 00418BA0"
    %endif
%endmacro
