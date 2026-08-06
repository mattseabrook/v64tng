; PE virtual entry 00414B50
; Ghidra working symbol: FUN_00414b50
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00414b50_part_00 0
    %%fragment_start:
func_00414b50:
    %%insn_00414b50:
    mov eax,[0x4211c0] ; 00414B50 A1C0114200
    %if ($ - %%insn_00414b50) > 5
        %error "LONG_00414B50"
    %endif
    times 5 - ($ - %%insn_00414b50) db 0
    %%insn_00414b55:
    push ebx ; 00414B55 53
    %if ($ - %%insn_00414b55) > 1
        %error "LONG_00414B55"
    %endif
    times 1 - ($ - %%insn_00414b55) db 0
    %%insn_00414b56:
    mov ebx,[0x4244a0] ; 00414B56 8B1DA0444200
    %if ($ - %%insn_00414b56) > 6
        %error "LONG_00414B56"
    %endif
    times 6 - ($ - %%insn_00414b56) db 0
    %%insn_00414b5c:
    push ebp ; 00414B5C 55
    %if ($ - %%insn_00414b5c) > 1
        %error "LONG_00414B5C"
    %endif
    times 1 - ($ - %%insn_00414b5c) db 0
    %%insn_00414b5d:
    push esi ; 00414B5D 56
    %if ($ - %%insn_00414b5d) > 1
        %error "LONG_00414B5D"
    %endif
    times 1 - ($ - %%insn_00414b5d) db 0
    %%insn_00414b5e:
    push edi ; 00414B5E 57
    %if ($ - %%insn_00414b5e) > 1
        %error "LONG_00414B5E"
    %endif
    times 1 - ($ - %%insn_00414b5e) db 0
    %%insn_00414b5f:
    test eax,eax ; 00414B5F 85C0
    %if ($ - %%insn_00414b5f) > 2
        %error "LONG_00414B5F"
    %endif
    times 2 - ($ - %%insn_00414b5f) db 0
    %%insn_00414b61:
    jnz short 0x414bac ; 00414B61 7549
    %if ($ - %%insn_00414b61) > 2
        %error "LONG_00414B61"
    %endif
    times 2 - ($ - %%insn_00414b61) db 0
    %%insn_00414b63:
    push dword 0x0 ; 00414B63 6A00
    %if ($ - %%insn_00414b63) > 2
        %error "LONG_00414B63"
    %endif
    times 2 - ($ - %%insn_00414b63) db 0
    %%insn_00414b65:
    push dword 0x0 ; 00414B65 6A00
    %if ($ - %%insn_00414b65) > 2
        %error "LONG_00414B65"
    %endif
    times 2 - ($ - %%insn_00414b65) db 0
    %%insn_00414b67:
    push dword 0x1 ; 00414B67 6A01
    %if ($ - %%insn_00414b67) > 2
        %error "LONG_00414B67"
    %endif
    times 2 - ($ - %%insn_00414b67) db 0
    %%insn_00414b69:
    push dword 0x41aad4 ; 00414B69 68D4AA4100
    %if ($ - %%insn_00414b69) > 5
        %error "LONG_00414B69"
    %endif
    times 5 - ($ - %%insn_00414b69) db 0
    %%insn_00414b6e:
    push dword 0x100 ; 00414B6E 6800010000
    %if ($ - %%insn_00414b6e) > 5
        %error "LONG_00414B6E"
    %endif
    times 5 - ($ - %%insn_00414b6e) db 0
    %%insn_00414b73:
    push dword 0x0 ; 00414B73 6A00
    %if ($ - %%insn_00414b73) > 2
        %error "LONG_00414B73"
    %endif
    times 2 - ($ - %%insn_00414b73) db 0
    %%insn_00414b75:
    call ebx ; 00414B75 FFD3
    %if ($ - %%insn_00414b75) > 2
        %error "LONG_00414B75"
    %endif
    times 2 - ($ - %%insn_00414b75) db 0
    %%insn_00414b77:
    test eax,eax ; 00414B77 85C0
    %if ($ - %%insn_00414b77) > 2
        %error "LONG_00414B77"
    %endif
    times 2 - ($ - %%insn_00414b77) db 0
    %%insn_00414b79:
    jz short 0x414b82 ; 00414B79 7407
    %if ($ - %%insn_00414b79) > 2
        %error "LONG_00414B79"
    %endif
    times 2 - ($ - %%insn_00414b79) db 0
    %%insn_00414b7b:
    mov eax,0x2 ; 00414B7B B802000000
    %if ($ - %%insn_00414b7b) > 5
        %error "LONG_00414B7B"
    %endif
    times 5 - ($ - %%insn_00414b7b) db 0
    %%insn_00414b80:
    jmp short 0x414ba7 ; 00414B80 EB25
    %if ($ - %%insn_00414b80) > 2
        %error "LONG_00414B80"
    %endif
    times 2 - ($ - %%insn_00414b80) db 0
    %%insn_00414b82:
    push dword 0x0 ; 00414B82 6A00
    %if ($ - %%insn_00414b82) > 2
        %error "LONG_00414B82"
    %endif
    times 2 - ($ - %%insn_00414b82) db 0
    %%insn_00414b84:
    push dword 0x0 ; 00414B84 6A00
    %if ($ - %%insn_00414b84) > 2
        %error "LONG_00414B84"
    %endif
    times 2 - ($ - %%insn_00414b84) db 0
    %%insn_00414b86:
    push dword 0x1 ; 00414B86 6A01
    %if ($ - %%insn_00414b86) > 2
        %error "LONG_00414B86"
    %endif
    times 2 - ($ - %%insn_00414b86) db 0
    %%insn_00414b88:
    push dword 0x41aad8 ; 00414B88 68D8AA4100
    %if ($ - %%insn_00414b88) > 5
        %error "LONG_00414B88"
    %endif
    times 5 - ($ - %%insn_00414b88) db 0
    %%insn_00414b8d:
    push dword 0x100 ; 00414B8D 6800010000
    %if ($ - %%insn_00414b8d) > 5
        %error "LONG_00414B8D"
    %endif
    times 5 - ($ - %%insn_00414b8d) db 0
    %%insn_00414b92:
    push dword 0x0 ; 00414B92 6A00
    %if ($ - %%insn_00414b92) > 2
        %error "LONG_00414B92"
    %endif
    times 2 - ($ - %%insn_00414b92) db 0
    %%insn_00414b94:
    call dword near [0x42449c] ; 00414B94 FF159C444200
    %if ($ - %%insn_00414b94) > 6
        %error "LONG_00414B94"
    %endif
    times 6 - ($ - %%insn_00414b94) db 0
    %%insn_00414b9a:
    test eax,eax ; 00414B9A 85C0
    %if ($ - %%insn_00414b9a) > 2
        %error "LONG_00414B9A"
    %endif
    times 2 - ($ - %%insn_00414b9a) db 0
    %%insn_00414b9c:
    jz 0x414d65 ; 00414B9C 0F84C3010000
    %if ($ - %%insn_00414b9c) > 6
        %error "LONG_00414B9C"
    %endif
    times 6 - ($ - %%insn_00414b9c) db 0
    %%insn_00414ba2:
    mov eax,0x1 ; 00414BA2 B801000000
    %if ($ - %%insn_00414ba2) > 5
        %error "LONG_00414BA2"
    %endif
    times 5 - ($ - %%insn_00414ba2) db 0
    %%insn_00414ba7:
    mov [0x4211c0],eax ; 00414BA7 A3C0114200
    %if ($ - %%insn_00414ba7) > 5
        %error "LONG_00414BA7"
    %endif
    times 5 - ($ - %%insn_00414ba7) db 0
    %%insn_00414bac:
    mov esi,[esp+0x20] ; 00414BAC 8B742420
    %if ($ - %%insn_00414bac) > 4
        %error "LONG_00414BAC"
    %endif
    times 4 - ($ - %%insn_00414bac) db 0
    %%insn_00414bb0:
    test esi,esi ; 00414BB0 85F6
    %if ($ - %%insn_00414bb0) > 2
        %error "LONG_00414BB0"
    %endif
    times 2 - ($ - %%insn_00414bb0) db 0
    %%insn_00414bb2:
    jng short 0x414bcb ; 00414BB2 7E17
    %if ($ - %%insn_00414bb2) > 2
        %error "LONG_00414BB2"
    %endif
    times 2 - ($ - %%insn_00414bb2) db 0
    %%insn_00414bb4:
    mov edi,[esp+0x1c] ; 00414BB4 8B7C241C
    %if ($ - %%insn_00414bb4) > 4
        %error "LONG_00414BB4"
    %endif
    times 4 - ($ - %%insn_00414bb4) db 0
    %%insn_00414bb8:
    push esi ; 00414BB8 56
    %if ($ - %%insn_00414bb8) > 1
        %error "LONG_00414BB8"
    %endif
    times 1 - ($ - %%insn_00414bb8) db 0
    %%insn_00414bb9:
    push edi ; 00414BB9 57
    %if ($ - %%insn_00414bb9) > 1
        %error "LONG_00414BB9"
    %endif
    times 1 - ($ - %%insn_00414bb9) db 0
    %%insn_00414bba:
    call 0x414d70 ; 00414BBA E8B1010000
    %if ($ - %%insn_00414bba) > 5
        %error "LONG_00414BBA"
    %endif
    times 5 - ($ - %%insn_00414bba) db 0
    db 0x8B, 0xF0 ; 00414BBF 8BF0 | mov esi,eax | encoding preserved
    %%insn_00414bc1:
    mov eax,[0x4211c0] ; 00414BC1 A1C0114200
    %if ($ - %%insn_00414bc1) > 5
        %error "LONG_00414BC1"
    %endif
    times 5 - ($ - %%insn_00414bc1) db 0
    %%insn_00414bc6:
    add esp,0x8 ; 00414BC6 83C408
    %if ($ - %%insn_00414bc6) > 3
        %error "LONG_00414BC6"
    %endif
    times 3 - ($ - %%insn_00414bc6) db 0
    %%insn_00414bc9:
    jmp short 0x414bcf ; 00414BC9 EB04
    %if ($ - %%insn_00414bc9) > 2
        %error "LONG_00414BC9"
    %endif
    times 2 - ($ - %%insn_00414bc9) db 0
    %%insn_00414bcb:
    mov edi,[esp+0x1c] ; 00414BCB 8B7C241C
    %if ($ - %%insn_00414bcb) > 4
        %error "LONG_00414BCB"
    %endif
    times 4 - ($ - %%insn_00414bcb) db 0
    %%insn_00414bcf:
    cmp eax,0x2 ; 00414BCF 83F802
    %if ($ - %%insn_00414bcf) > 3
        %error "LONG_00414BCF"
    %endif
    times 3 - ($ - %%insn_00414bcf) db 0
    %%insn_00414bd2:
    jnz short 0x414bf1 ; 00414BD2 751D
    %if ($ - %%insn_00414bd2) > 2
        %error "LONG_00414BD2"
    %endif
    times 2 - ($ - %%insn_00414bd2) db 0
    %%insn_00414bd4:
    mov eax,[esp+0x28] ; 00414BD4 8B442428
    %if ($ - %%insn_00414bd4) > 4
        %error "LONG_00414BD4"
    %endif
    times 4 - ($ - %%insn_00414bd4) db 0
    %%insn_00414bd8:
    mov ecx,[esp+0x24] ; 00414BD8 8B4C2424
    %if ($ - %%insn_00414bd8) > 4
        %error "LONG_00414BD8"
    %endif
    times 4 - ($ - %%insn_00414bd8) db 0
    %%insn_00414bdc:
    mov edx,[esp+0x18] ; 00414BDC 8B542418
    %if ($ - %%insn_00414bdc) > 4
        %error "LONG_00414BDC"
    %endif
    times 4 - ($ - %%insn_00414bdc) db 0
    %%insn_00414be0:
    push eax ; 00414BE0 50
    %if ($ - %%insn_00414be0) > 1
        %error "LONG_00414BE0"
    %endif
    times 1 - ($ - %%insn_00414be0) db 0
    %%insn_00414be1:
    mov eax,[esp+0x18] ; 00414BE1 8B442418
    %if ($ - %%insn_00414be1) > 4
        %error "LONG_00414BE1"
    %endif
    times 4 - ($ - %%insn_00414be1) db 0
    %%insn_00414be5:
    push ecx ; 00414BE5 51
    %if ($ - %%insn_00414be5) > 1
        %error "LONG_00414BE5"
    %endif
    times 1 - ($ - %%insn_00414be5) db 0
    %%insn_00414be6:
    push esi ; 00414BE6 56
    %if ($ - %%insn_00414be6) > 1
        %error "LONG_00414BE6"
    %endif
    times 1 - ($ - %%insn_00414be6) db 0
    %%insn_00414be7:
    push edi ; 00414BE7 57
    %if ($ - %%insn_00414be7) > 1
        %error "LONG_00414BE7"
    %endif
    times 1 - ($ - %%insn_00414be7) db 0
    %%insn_00414be8:
    push edx ; 00414BE8 52
    %if ($ - %%insn_00414be8) > 1
        %error "LONG_00414BE8"
    %endif
    times 1 - ($ - %%insn_00414be8) db 0
    %%insn_00414be9:
    push eax ; 00414BE9 50
    %if ($ - %%insn_00414be9) > 1
        %error "LONG_00414BE9"
    %endif
    times 1 - ($ - %%insn_00414be9) db 0
    %%insn_00414bea:
    call ebx ; 00414BEA FFD3
    %if ($ - %%insn_00414bea) > 2
        %error "LONG_00414BEA"
    %endif
    times 2 - ($ - %%insn_00414bea) db 0
    %%insn_00414bec:
    pop edi ; 00414BEC 5F
    %if ($ - %%insn_00414bec) > 1
        %error "LONG_00414BEC"
    %endif
    times 1 - ($ - %%insn_00414bec) db 0
    %%insn_00414bed:
    pop esi ; 00414BED 5E
    %if ($ - %%insn_00414bed) > 1
        %error "LONG_00414BED"
    %endif
    times 1 - ($ - %%insn_00414bed) db 0
    %%insn_00414bee:
    pop ebp ; 00414BEE 5D
    %if ($ - %%insn_00414bee) > 1
        %error "LONG_00414BEE"
    %endif
    times 1 - ($ - %%insn_00414bee) db 0
    %%insn_00414bef:
    pop ebx ; 00414BEF 5B
    %if ($ - %%insn_00414bef) > 1
        %error "LONG_00414BEF"
    %endif
    times 1 - ($ - %%insn_00414bef) db 0
    %%insn_00414bf0:
    ret ; 00414BF0 C3
    %if ($ - %%insn_00414bf0) > 1
        %error "LONG_00414BF0"
    %endif
    times 1 - ($ - %%insn_00414bf0) db 0
    %%insn_00414bf1:
    cmp eax,0x1 ; 00414BF1 83F801
    %if ($ - %%insn_00414bf1) > 3
        %error "LONG_00414BF1"
    %endif
    times 3 - ($ - %%insn_00414bf1) db 0
    %%insn_00414bf4:
    jnz 0x414ccc ; 00414BF4 0F85D2000000
    %if ($ - %%insn_00414bf4) > 6
        %error "LONG_00414BF4"
    %endif
    times 6 - ($ - %%insn_00414bf4) db 0
    %%insn_00414bfa:
    mov ebp,[esp+0x2c] ; 00414BFA 8B6C242C
    %if ($ - %%insn_00414bfa) > 4
        %error "LONG_00414BFA"
    %endif
    times 4 - ($ - %%insn_00414bfa) db 0
    %%insn_00414bfe:
    mov dword [esp+0x20],0x0 ; 00414BFE C744242000000000
    %if ($ - %%insn_00414bfe) > 8
        %error "LONG_00414BFE"
    %endif
    times 8 - ($ - %%insn_00414bfe) db 0
    %%insn_00414c06:
    test ebp,ebp ; 00414C06 85ED
    %if ($ - %%insn_00414c06) > 2
        %error "LONG_00414C06"
    %endif
    times 2 - ($ - %%insn_00414c06) db 0
    %%insn_00414c08:
    jnz short 0x414c16 ; 00414C08 750C
    %if ($ - %%insn_00414c08) > 2
        %error "LONG_00414C08"
    %endif
    times 2 - ($ - %%insn_00414c08) db 0
    %%insn_00414c0a:
    mov ecx,[0x420f30] ; 00414C0A 8B0D300F4200
    %if ($ - %%insn_00414c0a) > 6
        %error "LONG_00414C0A"
    %endif
    times 6 - ($ - %%insn_00414c0a) db 0
    %%insn_00414c10:
    mov [esp+0x2c],ecx ; 00414C10 894C242C
    %if ($ - %%insn_00414c10) > 4
        %error "LONG_00414C10"
    %endif
    times 4 - ($ - %%insn_00414c10) db 0
    db 0x8B, 0xE9 ; 00414C14 8BE9 | mov ebp,ecx | encoding preserved
    %%insn_00414c16:
    push dword 0x0 ; 00414C16 6A00
    %if ($ - %%insn_00414c16) > 2
        %error "LONG_00414C16"
    %endif
    times 2 - ($ - %%insn_00414c16) db 0
    %%insn_00414c18:
    push dword 0x0 ; 00414C18 6A00
    %if ($ - %%insn_00414c18) > 2
        %error "LONG_00414C18"
    %endif
    times 2 - ($ - %%insn_00414c18) db 0
    %%insn_00414c1a:
    push esi ; 00414C1A 56
    %if ($ - %%insn_00414c1a) > 1
        %error "LONG_00414C1A"
    %endif
    times 1 - ($ - %%insn_00414c1a) db 0
    %%insn_00414c1b:
    push edi ; 00414C1B 57
    %if ($ - %%insn_00414c1b) > 1
        %error "LONG_00414C1B"
    %endif
    times 1 - ($ - %%insn_00414c1b) db 0
    %%insn_00414c1c:
    push dword 0x9 ; 00414C1C 6A09
    %if ($ - %%insn_00414c1c) > 2
        %error "LONG_00414C1C"
    %endif
    times 2 - ($ - %%insn_00414c1c) db 0
    %%insn_00414c1e:
    push ebp ; 00414C1E 55
    %if ($ - %%insn_00414c1e) > 1
        %error "LONG_00414C1E"
    %endif
    times 1 - ($ - %%insn_00414c1e) db 0
    %%insn_00414c1f:
    call dword near [0x424464] ; 00414C1F FF1564444200
    %if ($ - %%insn_00414c1f) > 6
        %error "LONG_00414C1F"
    %endif
    times 6 - ($ - %%insn_00414c1f) db 0
    db 0x8B, 0xF8 ; 00414C25 8BF8 | mov edi,eax | encoding preserved
    %%insn_00414c27:
    test edi,edi ; 00414C27 85FF
    %if ($ - %%insn_00414c27) > 2
        %error "LONG_00414C27"
    %endif
    times 2 - ($ - %%insn_00414c27) db 0
    %%insn_00414c29:
    jnz short 0x414c30 ; 00414C29 7505
    %if ($ - %%insn_00414c29) > 2
        %error "LONG_00414C29"
    %endif
    times 2 - ($ - %%insn_00414c29) db 0
    %%insn_00414c2b:
    pop edi ; 00414C2B 5F
    %if ($ - %%insn_00414c2b) > 1
        %error "LONG_00414C2B"
    %endif
    times 1 - ($ - %%insn_00414c2b) db 0
    %%insn_00414c2c:
    pop esi ; 00414C2C 5E
    %if ($ - %%insn_00414c2c) > 1
        %error "LONG_00414C2C"
    %endif
    times 1 - ($ - %%insn_00414c2c) db 0
    %%insn_00414c2d:
    pop ebp ; 00414C2D 5D
    %if ($ - %%insn_00414c2d) > 1
        %error "LONG_00414C2D"
    %endif
    times 1 - ($ - %%insn_00414c2d) db 0
    %%insn_00414c2e:
    pop ebx ; 00414C2E 5B
    %if ($ - %%insn_00414c2e) > 1
        %error "LONG_00414C2E"
    %endif
    times 1 - ($ - %%insn_00414c2e) db 0
    %%insn_00414c2f:
    ret ; 00414C2F C3
    %if ($ - %%insn_00414c2f) > 1
        %error "LONG_00414C2F"
    %endif
    times 1 - ($ - %%insn_00414c2f) db 0
    %%insn_00414c30:
    lea edx,[edi+edi] ; 00414C30 8D143F
    %if ($ - %%insn_00414c30) > 3
        %error "LONG_00414C30"
    %endif
    times 3 - ($ - %%insn_00414c30) db 0
    %%insn_00414c33:
    push edx ; 00414C33 52
    %if ($ - %%insn_00414c33) > 1
        %error "LONG_00414C33"
    %endif
    times 1 - ($ - %%insn_00414c33) db 0
    %%insn_00414c34:
    call 0x40cdc0 ; 00414C34 E88781FFFF
    %if ($ - %%insn_00414c34) > 5
        %error "LONG_00414C34"
    %endif
    times 5 - ($ - %%insn_00414c34) db 0
    db 0x8B, 0xD8 ; 00414C39 8BD8 | mov ebx,eax | encoding preserved
    %%insn_00414c3b:
    add esp,0x4 ; 00414C3B 83C404
    %if ($ - %%insn_00414c3b) > 3
        %error "LONG_00414C3B"
    %endif
    times 3 - ($ - %%insn_00414c3b) db 0
    %%insn_00414c3e:
    test ebx,ebx ; 00414C3E 85DB
    %if ($ - %%insn_00414c3e) > 2
        %error "LONG_00414C3E"
    %endif
    times 2 - ($ - %%insn_00414c3e) db 0
    %%insn_00414c40:
    jnz short 0x414c47 ; 00414C40 7505
    %if ($ - %%insn_00414c40) > 2
        %error "LONG_00414C40"
    %endif
    times 2 - ($ - %%insn_00414c40) db 0
    %%insn_00414c42:
    pop edi ; 00414C42 5F
    %if ($ - %%insn_00414c42) > 1
        %error "LONG_00414C42"
    %endif
    times 1 - ($ - %%insn_00414c42) db 0
    %%insn_00414c43:
    pop esi ; 00414C43 5E
    %if ($ - %%insn_00414c43) > 1
        %error "LONG_00414C43"
    %endif
    times 1 - ($ - %%insn_00414c43) db 0
    %%insn_00414c44:
    pop ebp ; 00414C44 5D
    %if ($ - %%insn_00414c44) > 1
        %error "LONG_00414C44"
    %endif
    times 1 - ($ - %%insn_00414c44) db 0
    %%insn_00414c45:
    pop ebx ; 00414C45 5B
    %if ($ - %%insn_00414c45) > 1
        %error "LONG_00414C45"
    %endif
    times 1 - ($ - %%insn_00414c45) db 0
    %%insn_00414c46:
    ret ; 00414C46 C3
    %if ($ - %%insn_00414c46) > 1
        %error "LONG_00414C46"
    %endif
    times 1 - ($ - %%insn_00414c46) db 0
    %%insn_00414c47:
    mov eax,[esp+0x1c] ; 00414C47 8B44241C
    %if ($ - %%insn_00414c47) > 4
        %error "LONG_00414C47"
    %endif
    times 4 - ($ - %%insn_00414c47) db 0
    %%insn_00414c4b:
    push edi ; 00414C4B 57
    %if ($ - %%insn_00414c4b) > 1
        %error "LONG_00414C4B"
    %endif
    times 1 - ($ - %%insn_00414c4b) db 0
    %%insn_00414c4c:
    push ebx ; 00414C4C 53
    %if ($ - %%insn_00414c4c) > 1
        %error "LONG_00414C4C"
    %endif
    times 1 - ($ - %%insn_00414c4c) db 0
    %%insn_00414c4d:
    push esi ; 00414C4D 56
    %if ($ - %%insn_00414c4d) > 1
        %error "LONG_00414C4D"
    %endif
    times 1 - ($ - %%insn_00414c4d) db 0
    %%insn_00414c4e:
    push eax ; 00414C4E 50
    %if ($ - %%insn_00414c4e) > 1
        %error "LONG_00414C4E"
    %endif
    times 1 - ($ - %%insn_00414c4e) db 0
    %%insn_00414c4f:
    push dword 0x1 ; 00414C4F 6A01
    %if ($ - %%insn_00414c4f) > 2
        %error "LONG_00414C4F"
    %endif
    times 2 - ($ - %%insn_00414c4f) db 0
    %%insn_00414c51:
    push ebp ; 00414C51 55
    %if ($ - %%insn_00414c51) > 1
        %error "LONG_00414C51"
    %endif
    times 1 - ($ - %%insn_00414c51) db 0
    %%insn_00414c52:
    call dword near [0x424464] ; 00414C52 FF1564444200
    %if ($ - %%insn_00414c52) > 6
        %error "LONG_00414C52"
    %endif
    times 6 - ($ - %%insn_00414c52) db 0
    %%insn_00414c58:
    test eax,eax ; 00414C58 85C0
    %if ($ - %%insn_00414c58) > 2
        %error "LONG_00414C58"
    %endif
    times 2 - ($ - %%insn_00414c58) db 0
    %%insn_00414c5a:
    jz 0x414d4f ; 00414C5A 0F84EF000000
    %if ($ - %%insn_00414c5a) > 6
        %error "LONG_00414C5A"
    %endif
    times 6 - ($ - %%insn_00414c5a) db 0
    %%insn_00414c60:
    mov ebp,[esp+0x18] ; 00414C60 8B6C2418
    %if ($ - %%insn_00414c60) > 4
        %error "LONG_00414C60"
    %endif
    times 4 - ($ - %%insn_00414c60) db 0
    %%insn_00414c64:
    mov ecx,[esp+0x14] ; 00414C64 8B4C2414
    %if ($ - %%insn_00414c64) > 4
        %error "LONG_00414C64"
    %endif
    times 4 - ($ - %%insn_00414c64) db 0
    %%insn_00414c68:
    push dword 0x0 ; 00414C68 6A00
    %if ($ - %%insn_00414c68) > 2
        %error "LONG_00414C68"
    %endif
    times 2 - ($ - %%insn_00414c68) db 0
    %%insn_00414c6a:
    push dword 0x0 ; 00414C6A 6A00
    %if ($ - %%insn_00414c6a) > 2
        %error "LONG_00414C6A"
    %endif
    times 2 - ($ - %%insn_00414c6a) db 0
    %%insn_00414c6c:
    push edi ; 00414C6C 57
    %if ($ - %%insn_00414c6c) > 1
        %error "LONG_00414C6C"
    %endif
    times 1 - ($ - %%insn_00414c6c) db 0
    %%insn_00414c6d:
    push ebx ; 00414C6D 53
    %if ($ - %%insn_00414c6d) > 1
        %error "LONG_00414C6D"
    %endif
    times 1 - ($ - %%insn_00414c6d) db 0
    %%insn_00414c6e:
    push ebp ; 00414C6E 55
    %if ($ - %%insn_00414c6e) > 1
        %error "LONG_00414C6E"
    %endif
    times 1 - ($ - %%insn_00414c6e) db 0
    %%insn_00414c6f:
    push ecx ; 00414C6F 51
    %if ($ - %%insn_00414c6f) > 1
        %error "LONG_00414C6F"
    %endif
    times 1 - ($ - %%insn_00414c6f) db 0
    %%insn_00414c70:
    call dword near [0x42449c] ; 00414C70 FF159C444200
    %if ($ - %%insn_00414c70) > 6
        %error "LONG_00414C70"
    %endif
    times 6 - ($ - %%insn_00414c70) db 0
    db 0x8B, 0xF0 ; 00414C76 8BF0 | mov esi,eax | encoding preserved
    %%insn_00414c78:
    test esi,esi ; 00414C78 85F6
    %if ($ - %%insn_00414c78) > 2
        %error "LONG_00414C78"
    %endif
    times 2 - ($ - %%insn_00414c78) db 0
    %%insn_00414c7a:
    jz 0x414d4f ; 00414C7A 0F84CF000000
    %if ($ - %%insn_00414c7a) > 6
        %error "LONG_00414C7A"
    %endif
    times 6 - ($ - %%insn_00414c7a) db 0
    %%insn_00414c80:
    test ebp,0x400 ; 00414C80 F7C500040000
    %if ($ - %%insn_00414c80) > 6
        %error "LONG_00414C80"
    %endif
    times 6 - ($ - %%insn_00414c80) db 0
    %%insn_00414c86:
    jz short 0x414cd1 ; 00414C86 7449
    %if ($ - %%insn_00414c86) > 2
        %error "LONG_00414C86"
    %endif
    times 2 - ($ - %%insn_00414c86) db 0
    %%insn_00414c88:
    mov eax,[esp+0x28] ; 00414C88 8B442428
    %if ($ - %%insn_00414c88) > 4
        %error "LONG_00414C88"
    %endif
    times 4 - ($ - %%insn_00414c88) db 0
    %%insn_00414c8c:
    test eax,eax ; 00414C8C 85C0
    %if ($ - %%insn_00414c8c) > 2
        %error "LONG_00414C8C"
    %endif
    times 2 - ($ - %%insn_00414c8c) db 0
    %%insn_00414c8e:
    jz short 0x414cb4 ; 00414C8E 7424
    %if ($ - %%insn_00414c8e) > 2
        %error "LONG_00414C8E"
    %endif
    times 2 - ($ - %%insn_00414c8e) db 0
    db 0x3B, 0xF0 ; 00414C90 3BF0 | cmp esi,eax | encoding preserved
    %%insn_00414c92:
    jg 0x414d4f ; 00414C92 0F8FB7000000
    %if ($ - %%insn_00414c92) > 6
        %error "LONG_00414C92"
    %endif
    times 6 - ($ - %%insn_00414c92) db 0
    %%insn_00414c98:
    mov edx,[esp+0x24] ; 00414C98 8B542424
    %if ($ - %%insn_00414c98) > 4
        %error "LONG_00414C98"
    %endif
    times 4 - ($ - %%insn_00414c98) db 0
    %%insn_00414c9c:
    push eax ; 00414C9C 50
    %if ($ - %%insn_00414c9c) > 1
        %error "LONG_00414C9C"
    %endif
    times 1 - ($ - %%insn_00414c9c) db 0
    %%insn_00414c9d:
    mov eax,[esp+0x18] ; 00414C9D 8B442418
    %if ($ - %%insn_00414c9d) > 4
        %error "LONG_00414C9D"
    %endif
    times 4 - ($ - %%insn_00414c9d) db 0
    %%insn_00414ca1:
    push edx ; 00414CA1 52
    %if ($ - %%insn_00414ca1) > 1
        %error "LONG_00414CA1"
    %endif
    times 1 - ($ - %%insn_00414ca1) db 0
    %%insn_00414ca2:
    push edi ; 00414CA2 57
    %if ($ - %%insn_00414ca2) > 1
        %error "LONG_00414CA2"
    %endif
    times 1 - ($ - %%insn_00414ca2) db 0
    %%insn_00414ca3:
    push ebx ; 00414CA3 53
    %if ($ - %%insn_00414ca3) > 1
        %error "LONG_00414CA3"
    %endif
    times 1 - ($ - %%insn_00414ca3) db 0
    %%insn_00414ca4:
    push ebp ; 00414CA4 55
    %if ($ - %%insn_00414ca4) > 1
        %error "LONG_00414CA4"
    %endif
    times 1 - ($ - %%insn_00414ca4) db 0
    %%insn_00414ca5:
    push eax ; 00414CA5 50
    %if ($ - %%insn_00414ca5) > 1
        %error "LONG_00414CA5"
    %endif
    times 1 - ($ - %%insn_00414ca5) db 0
    %%insn_00414ca6:
    call dword near [0x42449c] ; 00414CA6 FF159C444200
    %if ($ - %%insn_00414ca6) > 6
        %error "LONG_00414CA6"
    %endif
    times 6 - ($ - %%insn_00414ca6) db 0
    %%insn_00414cac:
    test eax,eax ; 00414CAC 85C0
    %if ($ - %%insn_00414cac) > 2
        %error "LONG_00414CAC"
    %endif
    times 2 - ($ - %%insn_00414cac) db 0
    %%insn_00414cae:
    jz 0x414d4f ; 00414CAE 0F849B000000
    %if ($ - %%insn_00414cae) > 6
        %error "LONG_00414CAE"
    %endif
    times 6 - ($ - %%insn_00414cae) db 0
    %%insn_00414cb4:
    push ebx ; 00414CB4 53
    %if ($ - %%insn_00414cb4) > 1
        %error "LONG_00414CB4"
    %endif
    times 1 - ($ - %%insn_00414cb4) db 0
    %%insn_00414cb5:
    call 0x40c9a0 ; 00414CB5 E8E67CFFFF
    %if ($ - %%insn_00414cb5) > 5
        %error "LONG_00414CB5"
    %endif
    times 5 - ($ - %%insn_00414cb5) db 0
    %%insn_00414cba:
    mov ecx,[esp+0x24] ; 00414CBA 8B4C2424
    %if ($ - %%insn_00414cba) > 4
        %error "LONG_00414CBA"
    %endif
    times 4 - ($ - %%insn_00414cba) db 0
    %%insn_00414cbe:
    add esp,0x4 ; 00414CBE 83C404
    %if ($ - %%insn_00414cbe) > 3
        %error "LONG_00414CBE"
    %endif
    times 3 - ($ - %%insn_00414cbe) db 0
    %%insn_00414cc1:
    push ecx ; 00414CC1 51
    %if ($ - %%insn_00414cc1) > 1
        %error "LONG_00414CC1"
    %endif
    times 1 - ($ - %%insn_00414cc1) db 0
    %%insn_00414cc2:
    call 0x40c9a0 ; 00414CC2 E8D97CFFFF
    %if ($ - %%insn_00414cc2) > 5
        %error "LONG_00414CC2"
    %endif
    times 5 - ($ - %%insn_00414cc2) db 0
    %%insn_00414cc7:
    add esp,0x4 ; 00414CC7 83C404
    %if ($ - %%insn_00414cc7) > 3
        %error "LONG_00414CC7"
    %endif
    times 3 - ($ - %%insn_00414cc7) db 0
    db 0x8B, 0xC6 ; 00414CCA 8BC6 | mov eax,esi | encoding preserved
    %%insn_00414ccc:
    pop edi ; 00414CCC 5F
    %if ($ - %%insn_00414ccc) > 1
        %error "LONG_00414CCC"
    %endif
    times 1 - ($ - %%insn_00414ccc) db 0
    %%insn_00414ccd:
    pop esi ; 00414CCD 5E
    %if ($ - %%insn_00414ccd) > 1
        %error "LONG_00414CCD"
    %endif
    times 1 - ($ - %%insn_00414ccd) db 0
    %%insn_00414cce:
    pop ebp ; 00414CCE 5D
    %if ($ - %%insn_00414cce) > 1
        %error "LONG_00414CCE"
    %endif
    times 1 - ($ - %%insn_00414cce) db 0
    %%insn_00414ccf:
    pop ebx ; 00414CCF 5B
    %if ($ - %%insn_00414ccf) > 1
        %error "LONG_00414CCF"
    %endif
    times 1 - ($ - %%insn_00414ccf) db 0
    %%insn_00414cd0:
    ret ; 00414CD0 C3
    %if ($ - %%insn_00414cd0) > 1
        %error "LONG_00414CD0"
    %endif
    times 1 - ($ - %%insn_00414cd0) db 0
    %%insn_00414cd1:
    lea ecx,[esi+esi] ; 00414CD1 8D0C36
    %if ($ - %%insn_00414cd1) > 3
        %error "LONG_00414CD1"
    %endif
    times 3 - ($ - %%insn_00414cd1) db 0
    %%insn_00414cd4:
    push ecx ; 00414CD4 51
    %if ($ - %%insn_00414cd4) > 1
        %error "LONG_00414CD4"
    %endif
    times 1 - ($ - %%insn_00414cd4) db 0
    %%insn_00414cd5:
    call 0x40cdc0 ; 00414CD5 E8E680FFFF
    %if ($ - %%insn_00414cd5) > 5
        %error "LONG_00414CD5"
    %endif
    times 5 - ($ - %%insn_00414cd5) db 0
    %%insn_00414cda:
    add esp,0x4 ; 00414CDA 83C404
    %if ($ - %%insn_00414cda) > 3
        %error "LONG_00414CDA"
    %endif
    times 3 - ($ - %%insn_00414cda) db 0
    %%insn_00414cdd:
    mov [esp+0x20],eax ; 00414CDD 89442420
    %if ($ - %%insn_00414cdd) > 4
        %error "LONG_00414CDD"
    %endif
    times 4 - ($ - %%insn_00414cdd) db 0
    %%insn_00414ce1:
    test eax,eax ; 00414CE1 85C0
    %if ($ - %%insn_00414ce1) > 2
        %error "LONG_00414CE1"
    %endif
    times 2 - ($ - %%insn_00414ce1) db 0
    %%insn_00414ce3:
    jz short 0x414d4f ; 00414CE3 746A
    %if ($ - %%insn_00414ce3) > 2
        %error "LONG_00414CE3"
    %endif
    times 2 - ($ - %%insn_00414ce3) db 0
    db 0x8B, 0xD0 ; 00414CE5 8BD0 | mov edx,eax | encoding preserved
    %%insn_00414ce7:
    mov eax,[esp+0x14] ; 00414CE7 8B442414
    %if ($ - %%insn_00414ce7) > 4
        %error "LONG_00414CE7"
    %endif
    times 4 - ($ - %%insn_00414ce7) db 0
    %%insn_00414ceb:
    push esi ; 00414CEB 56
    %if ($ - %%insn_00414ceb) > 1
        %error "LONG_00414CEB"
    %endif
    times 1 - ($ - %%insn_00414ceb) db 0
    %%insn_00414cec:
    push edx ; 00414CEC 52
    %if ($ - %%insn_00414cec) > 1
        %error "LONG_00414CEC"
    %endif
    times 1 - ($ - %%insn_00414cec) db 0
    %%insn_00414ced:
    push edi ; 00414CED 57
    %if ($ - %%insn_00414ced) > 1
        %error "LONG_00414CED"
    %endif
    times 1 - ($ - %%insn_00414ced) db 0
    %%insn_00414cee:
    push ebx ; 00414CEE 53
    %if ($ - %%insn_00414cee) > 1
        %error "LONG_00414CEE"
    %endif
    times 1 - ($ - %%insn_00414cee) db 0
    %%insn_00414cef:
    push ebp ; 00414CEF 55
    %if ($ - %%insn_00414cef) > 1
        %error "LONG_00414CEF"
    %endif
    times 1 - ($ - %%insn_00414cef) db 0
    %%insn_00414cf0:
    push eax ; 00414CF0 50
    %if ($ - %%insn_00414cf0) > 1
        %error "LONG_00414CF0"
    %endif
    times 1 - ($ - %%insn_00414cf0) db 0
    %%insn_00414cf1:
    call dword near [0x42449c] ; 00414CF1 FF159C444200
    %if ($ - %%insn_00414cf1) > 6
        %error "LONG_00414CF1"
    %endif
    times 6 - ($ - %%insn_00414cf1) db 0
    %%insn_00414cf7:
    test eax,eax ; 00414CF7 85C0
    %if ($ - %%insn_00414cf7) > 2
        %error "LONG_00414CF7"
    %endif
    times 2 - ($ - %%insn_00414cf7) db 0
    %%insn_00414cf9:
    jz short 0x414d4f ; 00414CF9 7454
    %if ($ - %%insn_00414cf9) > 2
        %error "LONG_00414CF9"
    %endif
    times 2 - ($ - %%insn_00414cf9) db 0
    %%insn_00414cfb:
    mov eax,[esp+0x28] ; 00414CFB 8B442428
    %if ($ - %%insn_00414cfb) > 4
        %error "LONG_00414CFB"
    %endif
    times 4 - ($ - %%insn_00414cfb) db 0
    %%insn_00414cff:
    push dword 0x0 ; 00414CFF 6A00
    %if ($ - %%insn_00414cff) > 2
        %error "LONG_00414CFF"
    %endif
    times 2 - ($ - %%insn_00414cff) db 0
    %%insn_00414d01:
    test eax,eax ; 00414D01 85C0
    %if ($ - %%insn_00414d01) > 2
        %error "LONG_00414D01"
    %endif
    times 2 - ($ - %%insn_00414d01) db 0
    %%insn_00414d03:
    push dword 0x0 ; 00414D03 6A00
    %if ($ - %%insn_00414d03) > 2
        %error "LONG_00414D03"
    %endif
    times 2 - ($ - %%insn_00414d03) db 0
    %%insn_00414d05:
    jnz short 0x414d29 ; 00414D05 7522
    %if ($ - %%insn_00414d05) > 2
        %error "LONG_00414D05"
    %endif
    times 2 - ($ - %%insn_00414d05) db 0
    %%insn_00414d07:
    mov ecx,[esp+0x28] ; 00414D07 8B4C2428
    %if ($ - %%insn_00414d07) > 4
        %error "LONG_00414D07"
    %endif
    times 4 - ($ - %%insn_00414d07) db 0
    %%insn_00414d0b:
    mov edx,[esp+0x34] ; 00414D0B 8B542434
    %if ($ - %%insn_00414d0b) > 4
        %error "LONG_00414D0B"
    %endif
    times 4 - ($ - %%insn_00414d0b) db 0
    %%insn_00414d0f:
    push dword 0x0 ; 00414D0F 6A00
    %if ($ - %%insn_00414d0f) > 2
        %error "LONG_00414D0F"
    %endif
    times 2 - ($ - %%insn_00414d0f) db 0
    %%insn_00414d11:
    push dword 0x0 ; 00414D11 6A00
    %if ($ - %%insn_00414d11) > 2
        %error "LONG_00414D11"
    %endif
    times 2 - ($ - %%insn_00414d11) db 0
    %%insn_00414d13:
    push esi ; 00414D13 56
    %if ($ - %%insn_00414d13) > 1
        %error "LONG_00414D13"
    %endif
    times 1 - ($ - %%insn_00414d13) db 0
    %%insn_00414d14:
    push ecx ; 00414D14 51
    %if ($ - %%insn_00414d14) > 1
        %error "LONG_00414D14"
    %endif
    times 1 - ($ - %%insn_00414d14) db 0
    %%insn_00414d15:
    push dword 0x220 ; 00414D15 6820020000
    %if ($ - %%insn_00414d15) > 5
        %error "LONG_00414D15"
    %endif
    times 5 - ($ - %%insn_00414d15) db 0
    %%insn_00414d1a:
    push edx ; 00414D1A 52
    %if ($ - %%insn_00414d1a) > 1
        %error "LONG_00414D1A"
    %endif
    times 1 - ($ - %%insn_00414d1a) db 0
    %%insn_00414d1b:
    call dword near [0x4244d0] ; 00414D1B FF15D0444200
    %if ($ - %%insn_00414d1b) > 6
        %error "LONG_00414D1B"
    %endif
    times 6 - ($ - %%insn_00414d1b) db 0
    db 0x8B, 0xF0 ; 00414D21 8BF0 | mov esi,eax | encoding preserved
    %%insn_00414d23:
    test esi,esi ; 00414D23 85F6
    %if ($ - %%insn_00414d23) > 2
        %error "LONG_00414D23"
    %endif
    times 2 - ($ - %%insn_00414d23) db 0
    %%insn_00414d25:
    jz short 0x414d4f ; 00414D25 7428
    %if ($ - %%insn_00414d25) > 2
        %error "LONG_00414D25"
    %endif
    times 2 - ($ - %%insn_00414d25) db 0
    %%insn_00414d27:
    jmp short 0x414cb4 ; 00414D27 EB8B
    %if ($ - %%insn_00414d27) > 2
        %error "LONG_00414D27"
    %endif
    times 2 - ($ - %%insn_00414d27) db 0
    %%insn_00414d29:
    mov ecx,[esp+0x28] ; 00414D29 8B4C2428
    %if ($ - %%insn_00414d29) > 4
        %error "LONG_00414D29"
    %endif
    times 4 - ($ - %%insn_00414d29) db 0
    %%insn_00414d2d:
    mov edx,[esp+0x34] ; 00414D2D 8B542434
    %if ($ - %%insn_00414d2d) > 4
        %error "LONG_00414D2D"
    %endif
    times 4 - ($ - %%insn_00414d2d) db 0
    %%insn_00414d31:
    push eax ; 00414D31 50
    %if ($ - %%insn_00414d31) > 1
        %error "LONG_00414D31"
    %endif
    times 1 - ($ - %%insn_00414d31) db 0
    %%insn_00414d32:
    mov eax,[esp+0x30] ; 00414D32 8B442430
    %if ($ - %%insn_00414d32) > 4
        %error "LONG_00414D32"
    %endif
    times 4 - ($ - %%insn_00414d32) db 0
    %%insn_00414d36:
    push eax ; 00414D36 50
    %if ($ - %%insn_00414d36) > 1
        %error "LONG_00414D36"
    %endif
    times 1 - ($ - %%insn_00414d36) db 0
    %%insn_00414d37:
    push esi ; 00414D37 56
    %if ($ - %%insn_00414d37) > 1
        %error "LONG_00414D37"
    %endif
    times 1 - ($ - %%insn_00414d37) db 0
    %%insn_00414d38:
    push ecx ; 00414D38 51
    %if ($ - %%insn_00414d38) > 1
        %error "LONG_00414D38"
    %endif
    times 1 - ($ - %%insn_00414d38) db 0
    %%insn_00414d39:
    push dword 0x220 ; 00414D39 6820020000
    %if ($ - %%insn_00414d39) > 5
        %error "LONG_00414D39"
    %endif
    times 5 - ($ - %%insn_00414d39) db 0
    %%insn_00414d3e:
    push edx ; 00414D3E 52
    %if ($ - %%insn_00414d3e) > 1
        %error "LONG_00414D3E"
    %endif
    times 1 - ($ - %%insn_00414d3e) db 0
    %%insn_00414d3f:
    call dword near [0x4244d0] ; 00414D3F FF15D0444200
    %if ($ - %%insn_00414d3f) > 6
        %error "LONG_00414D3F"
    %endif
    times 6 - ($ - %%insn_00414d3f) db 0
    db 0x8B, 0xF0 ; 00414D45 8BF0 | mov esi,eax | encoding preserved
    %%insn_00414d47:
    test esi,esi ; 00414D47 85F6
    %if ($ - %%insn_00414d47) > 2
        %error "LONG_00414D47"
    %endif
    times 2 - ($ - %%insn_00414d47) db 0
    %%insn_00414d49:
    jnz 0x414cb4 ; 00414D49 0F8565FFFFFF
    %if ($ - %%insn_00414d49) > 6
        %error "LONG_00414D49"
    %endif
    times 6 - ($ - %%insn_00414d49) db 0
    %%insn_00414d4f:
    push ebx ; 00414D4F 53
    %if ($ - %%insn_00414d4f) > 1
        %error "LONG_00414D4F"
    %endif
    times 1 - ($ - %%insn_00414d4f) db 0
    %%insn_00414d50:
    call 0x40c9a0 ; 00414D50 E84B7CFFFF
    %if ($ - %%insn_00414d50) > 5
        %error "LONG_00414D50"
    %endif
    times 5 - ($ - %%insn_00414d50) db 0
    %%insn_00414d55:
    mov eax,[esp+0x24] ; 00414D55 8B442424
    %if ($ - %%insn_00414d55) > 4
        %error "LONG_00414D55"
    %endif
    times 4 - ($ - %%insn_00414d55) db 0
    %%insn_00414d59:
    add esp,0x4 ; 00414D59 83C404
    %if ($ - %%insn_00414d59) > 3
        %error "LONG_00414D59"
    %endif
    times 3 - ($ - %%insn_00414d59) db 0
    %%insn_00414d5c:
    push eax ; 00414D5C 50
    %if ($ - %%insn_00414d5c) > 1
        %error "LONG_00414D5C"
    %endif
    times 1 - ($ - %%insn_00414d5c) db 0
    %%insn_00414d5d:
    call 0x40c9a0 ; 00414D5D E83E7CFFFF
    %if ($ - %%insn_00414d5d) > 5
        %error "LONG_00414D5D"
    %endif
    times 5 - ($ - %%insn_00414d5d) db 0
    %%insn_00414d62:
    add esp,0x4 ; 00414D62 83C404
    %if ($ - %%insn_00414d62) > 3
        %error "LONG_00414D62"
    %endif
    times 3 - ($ - %%insn_00414d62) db 0
    %%insn_00414d65:
    pop edi ; 00414D65 5F
    %if ($ - %%insn_00414d65) > 1
        %error "LONG_00414D65"
    %endif
    times 1 - ($ - %%insn_00414d65) db 0
    %%insn_00414d66:
    pop esi ; 00414D66 5E
    %if ($ - %%insn_00414d66) > 1
        %error "LONG_00414D66"
    %endif
    times 1 - ($ - %%insn_00414d66) db 0
    %%insn_00414d67:
    pop ebp ; 00414D67 5D
    %if ($ - %%insn_00414d67) > 1
        %error "LONG_00414D67"
    %endif
    times 1 - ($ - %%insn_00414d67) db 0
    db 0x33, 0xC0 ; 00414D68 33C0 | xor eax,eax | encoding preserved
    %%insn_00414d6a:
    pop ebx ; 00414D6A 5B
    %if ($ - %%insn_00414d6a) > 1
        %error "LONG_00414D6A"
    %endif
    times 1 - ($ - %%insn_00414d6a) db 0
    %%insn_00414d6b:
    ret ; 00414D6B C3
    %if ($ - %%insn_00414d6b) > 1
        %error "LONG_00414D6B"
    %endif
    times 1 - ($ - %%insn_00414d6b) db 0
    %if ($ - %%fragment_start) != 540
        %error "function fragment size drift: 00414B50"
    %endif
%endmacro
