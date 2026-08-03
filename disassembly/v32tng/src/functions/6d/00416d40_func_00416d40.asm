; PE virtual entry 00416D40
; Ghidra working symbol: FUN_00416d40
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00416d40_part_00 0
    %%fragment_start:
func_00416d40:
    %%insn_00416d40:
    push ecx ; 00416D40 51
    %if ($ - %%insn_00416d40) > 1
        %error "LONG_00416D40"
    %endif
    times 1 - ($ - %%insn_00416d40) db 0
    %%insn_00416d41:
    mov eax,[0x4211f0] ; 00416D41 A1F0114200
    %if ($ - %%insn_00416d41) > 5
        %error "LONG_00416D41"
    %endif
    times 5 - ($ - %%insn_00416d41) db 0
    %%insn_00416d46:
    push ebx ; 00416D46 53
    %if ($ - %%insn_00416d46) > 1
        %error "LONG_00416D46"
    %endif
    times 1 - ($ - %%insn_00416d46) db 0
    %%insn_00416d47:
    push ebp ; 00416D47 55
    %if ($ - %%insn_00416d47) > 1
        %error "LONG_00416D47"
    %endif
    times 1 - ($ - %%insn_00416d47) db 0
    %%insn_00416d48:
    push esi ; 00416D48 56
    %if ($ - %%insn_00416d48) > 1
        %error "LONG_00416D48"
    %endif
    times 1 - ($ - %%insn_00416d48) db 0
    %%insn_00416d49:
    mov esi,[0x424474] ; 00416D49 8B3574444200
    %if ($ - %%insn_00416d49) > 6
        %error "LONG_00416D49"
    %endif
    times 6 - ($ - %%insn_00416d49) db 0
    %%insn_00416d4f:
    push edi ; 00416D4F 57
    %if ($ - %%insn_00416d4f) > 1
        %error "LONG_00416D4F"
    %endif
    times 1 - ($ - %%insn_00416d4f) db 0
    db 0x33, 0xFF ; 00416D50 33FF | xor edi,edi | encoding preserved
    db 0x3B, 0xC7 ; 00416D52 3BC7 | cmp eax,edi | encoding preserved
    %%insn_00416d54:
    jnz short 0x416d79 ; 00416D54 7523
    %if ($ - %%insn_00416d54) > 2
        %error "LONG_00416D54"
    %endif
    times 2 - ($ - %%insn_00416d54) db 0
    %%insn_00416d56:
    lea eax,[esp+0x12] ; 00416D56 8D442412
    %if ($ - %%insn_00416d56) > 4
        %error "LONG_00416D56"
    %endif
    times 4 - ($ - %%insn_00416d56) db 0
    %%insn_00416d5a:
    push eax ; 00416D5A 50
    %if ($ - %%insn_00416d5a) > 1
        %error "LONG_00416D5A"
    %endif
    times 1 - ($ - %%insn_00416d5a) db 0
    %%insn_00416d5b:
    push dword 0x1 ; 00416D5B 6A01
    %if ($ - %%insn_00416d5b) > 2
        %error "LONG_00416D5B"
    %endif
    times 2 - ($ - %%insn_00416d5b) db 0
    %%insn_00416d5d:
    push dword 0x41aad4 ; 00416D5D 68D4AA4100
    %if ($ - %%insn_00416d5d) > 5
        %error "LONG_00416D5D"
    %endif
    times 5 - ($ - %%insn_00416d5d) db 0
    %%insn_00416d62:
    push dword 0x1 ; 00416D62 6A01
    %if ($ - %%insn_00416d62) > 2
        %error "LONG_00416D62"
    %endif
    times 2 - ($ - %%insn_00416d62) db 0
    %%insn_00416d64:
    push edi ; 00416D64 57
    %if ($ - %%insn_00416d64) > 1
        %error "LONG_00416D64"
    %endif
    times 1 - ($ - %%insn_00416d64) db 0
    %%insn_00416d65:
    call esi ; 00416D65 FFD6
    %if ($ - %%insn_00416d65) > 2
        %error "LONG_00416D65"
    %endif
    times 2 - ($ - %%insn_00416d65) db 0
    %%insn_00416d67:
    test eax,eax ; 00416D67 85C0
    %if ($ - %%insn_00416d67) > 2
        %error "LONG_00416D67"
    %endif
    times 2 - ($ - %%insn_00416d67) db 0
    %%insn_00416d69:
    jz 0x416e3e ; 00416D69 0F84CF000000
    %if ($ - %%insn_00416d69) > 6
        %error "LONG_00416D69"
    %endif
    times 6 - ($ - %%insn_00416d69) db 0
    %%insn_00416d6f:
    mov eax,0x2 ; 00416D6F B802000000
    %if ($ - %%insn_00416d6f) > 5
        %error "LONG_00416D6F"
    %endif
    times 5 - ($ - %%insn_00416d6f) db 0
    %%insn_00416d74:
    mov [0x4211f0],eax ; 00416D74 A3F0114200
    %if ($ - %%insn_00416d74) > 5
        %error "LONG_00416D74"
    %endif
    times 5 - ($ - %%insn_00416d74) db 0
    %%insn_00416d79:
    cmp eax,0x2 ; 00416D79 83F802
    %if ($ - %%insn_00416d79) > 3
        %error "LONG_00416D79"
    %endif
    times 3 - ($ - %%insn_00416d79) db 0
    %%insn_00416d7c:
    jnz short 0x416da8 ; 00416D7C 752A
    %if ($ - %%insn_00416d7c) > 2
        %error "LONG_00416D7C"
    %endif
    times 2 - ($ - %%insn_00416d7c) db 0
    %%insn_00416d7e:
    mov eax,[esp+0x2c] ; 00416D7E 8B44242C
    %if ($ - %%insn_00416d7e) > 4
        %error "LONG_00416D7E"
    %endif
    times 4 - ($ - %%insn_00416d7e) db 0
    db 0x3B, 0xC7 ; 00416D82 3BC7 | cmp eax,edi | encoding preserved
    %%insn_00416d84:
    jnz short 0x416d8b ; 00416D84 7505
    %if ($ - %%insn_00416d84) > 2
        %error "LONG_00416D84"
    %endif
    times 2 - ($ - %%insn_00416d84) db 0
    %%insn_00416d86:
    mov eax,[0x420f20] ; 00416D86 A1200F4200
    %if ($ - %%insn_00416d86) > 5
        %error "LONG_00416D86"
    %endif
    times 5 - ($ - %%insn_00416d86) db 0
    %%insn_00416d8b:
    mov edx,[esp+0x24] ; 00416D8B 8B542424
    %if ($ - %%insn_00416d8b) > 4
        %error "LONG_00416D8B"
    %endif
    times 4 - ($ - %%insn_00416d8b) db 0
    %%insn_00416d8f:
    mov ecx,[esp+0x20] ; 00416D8F 8B4C2420
    %if ($ - %%insn_00416d8f) > 4
        %error "LONG_00416D8F"
    %endif
    times 4 - ($ - %%insn_00416d8f) db 0
    %%insn_00416d93:
    push edx ; 00416D93 52
    %if ($ - %%insn_00416d93) > 1
        %error "LONG_00416D93"
    %endif
    times 1 - ($ - %%insn_00416d93) db 0
    %%insn_00416d94:
    mov edx,[esp+0x20] ; 00416D94 8B542420
    %if ($ - %%insn_00416d94) > 4
        %error "LONG_00416D94"
    %endif
    times 4 - ($ - %%insn_00416d94) db 0
    %%insn_00416d98:
    push ecx ; 00416D98 51
    %if ($ - %%insn_00416d98) > 1
        %error "LONG_00416D98"
    %endif
    times 1 - ($ - %%insn_00416d98) db 0
    %%insn_00416d99:
    mov ecx,[esp+0x20] ; 00416D99 8B4C2420
    %if ($ - %%insn_00416d99) > 4
        %error "LONG_00416D99"
    %endif
    times 4 - ($ - %%insn_00416d99) db 0
    %%insn_00416d9d:
    push edx ; 00416D9D 52
    %if ($ - %%insn_00416d9d) > 1
        %error "LONG_00416D9D"
    %endif
    times 1 - ($ - %%insn_00416d9d) db 0
    %%insn_00416d9e:
    push ecx ; 00416D9E 51
    %if ($ - %%insn_00416d9e) > 1
        %error "LONG_00416D9E"
    %endif
    times 1 - ($ - %%insn_00416d9e) db 0
    %%insn_00416d9f:
    push eax ; 00416D9F 50
    %if ($ - %%insn_00416d9f) > 1
        %error "LONG_00416D9F"
    %endif
    times 1 - ($ - %%insn_00416d9f) db 0
    %%insn_00416da0:
    call esi ; 00416DA0 FFD6
    %if ($ - %%insn_00416da0) > 2
        %error "LONG_00416DA0"
    %endif
    times 2 - ($ - %%insn_00416da0) db 0
    %%insn_00416da2:
    pop edi ; 00416DA2 5F
    %if ($ - %%insn_00416da2) > 1
        %error "LONG_00416DA2"
    %endif
    times 1 - ($ - %%insn_00416da2) db 0
    %%insn_00416da3:
    pop esi ; 00416DA3 5E
    %if ($ - %%insn_00416da3) > 1
        %error "LONG_00416DA3"
    %endif
    times 1 - ($ - %%insn_00416da3) db 0
    %%insn_00416da4:
    pop ebp ; 00416DA4 5D
    %if ($ - %%insn_00416da4) > 1
        %error "LONG_00416DA4"
    %endif
    times 1 - ($ - %%insn_00416da4) db 0
    %%insn_00416da5:
    pop ebx ; 00416DA5 5B
    %if ($ - %%insn_00416da5) > 1
        %error "LONG_00416DA5"
    %endif
    times 1 - ($ - %%insn_00416da5) db 0
    %%insn_00416da6:
    pop ecx ; 00416DA6 59
    %if ($ - %%insn_00416da6) > 1
        %error "LONG_00416DA6"
    %endif
    times 1 - ($ - %%insn_00416da6) db 0
    %%insn_00416da7:
    ret ; 00416DA7 C3
    %if ($ - %%insn_00416da7) > 1
        %error "LONG_00416DA7"
    %endif
    times 1 - ($ - %%insn_00416da7) db 0
    %%insn_00416da8:
    cmp eax,0x1 ; 00416DA8 83F801
    %if ($ - %%insn_00416da8) > 3
        %error "LONG_00416DA8"
    %endif
    times 3 - ($ - %%insn_00416da8) db 0
    %%insn_00416dab:
    jnz 0x416e38 ; 00416DAB 0F8587000000
    %if ($ - %%insn_00416dab) > 6
        %error "LONG_00416DAB"
    %endif
    times 6 - ($ - %%insn_00416dab) db 0
    %%insn_00416db1:
    mov ebx,[esp+0x28] ; 00416DB1 8B5C2428
    %if ($ - %%insn_00416db1) > 4
        %error "LONG_00416DB1"
    %endif
    times 4 - ($ - %%insn_00416db1) db 0
    %%insn_00416db5:
    mov [esp+0x2c],edi ; 00416DB5 897C242C
    %if ($ - %%insn_00416db5) > 4
        %error "LONG_00416DB5"
    %endif
    times 4 - ($ - %%insn_00416db5) db 0
    db 0x3B, 0xDF ; 00416DB9 3BDF | cmp ebx,edi | encoding preserved
    %%insn_00416dbb:
    jnz short 0x416dc3 ; 00416DBB 7506
    %if ($ - %%insn_00416dbb) > 2
        %error "LONG_00416DBB"
    %endif
    times 2 - ($ - %%insn_00416dbb) db 0
    %%insn_00416dbd:
    mov ebx,[0x420f30] ; 00416DBD 8B1D300F4200
    %if ($ - %%insn_00416dbd) > 6
        %error "LONG_00416DBD"
    %endif
    times 6 - ($ - %%insn_00416dbd) db 0
    %%insn_00416dc3:
    mov ebp,[esp+0x20] ; 00416DC3 8B6C2420
    %if ($ - %%insn_00416dc3) > 4
        %error "LONG_00416DC3"
    %endif
    times 4 - ($ - %%insn_00416dc3) db 0
    %%insn_00416dc7:
    mov edx,[esp+0x1c] ; 00416DC7 8B54241C
    %if ($ - %%insn_00416dc7) > 4
        %error "LONG_00416DC7"
    %endif
    times 4 - ($ - %%insn_00416dc7) db 0
    %%insn_00416dcb:
    push edi ; 00416DCB 57
    %if ($ - %%insn_00416dcb) > 1
        %error "LONG_00416DCB"
    %endif
    times 1 - ($ - %%insn_00416dcb) db 0
    %%insn_00416dcc:
    push edi ; 00416DCC 57
    %if ($ - %%insn_00416dcc) > 1
        %error "LONG_00416DCC"
    %endif
    times 1 - ($ - %%insn_00416dcc) db 0
    %%insn_00416dcd:
    push ebp ; 00416DCD 55
    %if ($ - %%insn_00416dcd) > 1
        %error "LONG_00416DCD"
    %endif
    times 1 - ($ - %%insn_00416dcd) db 0
    %%insn_00416dce:
    push edx ; 00416DCE 52
    %if ($ - %%insn_00416dce) > 1
        %error "LONG_00416DCE"
    %endif
    times 1 - ($ - %%insn_00416dce) db 0
    %%insn_00416dcf:
    push dword 0x9 ; 00416DCF 6A09
    %if ($ - %%insn_00416dcf) > 2
        %error "LONG_00416DCF"
    %endif
    times 2 - ($ - %%insn_00416dcf) db 0
    %%insn_00416dd1:
    push ebx ; 00416DD1 53
    %if ($ - %%insn_00416dd1) > 1
        %error "LONG_00416DD1"
    %endif
    times 1 - ($ - %%insn_00416dd1) db 0
    %%insn_00416dd2:
    call dword near [0x424464] ; 00416DD2 FF1564444200
    %if ($ - %%insn_00416dd2) > 6
        %error "LONG_00416DD2"
    %endif
    times 6 - ($ - %%insn_00416dd2) db 0
    db 0x8B, 0xF0 ; 00416DD8 8BF0 | mov esi,eax | encoding preserved
    %%insn_00416dda:
    test esi,esi ; 00416DDA 85F6
    %if ($ - %%insn_00416dda) > 2
        %error "LONG_00416DDA"
    %endif
    times 2 - ($ - %%insn_00416dda) db 0
    %%insn_00416ddc:
    jz short 0x416e29 ; 00416DDC 744B
    %if ($ - %%insn_00416ddc) > 2
        %error "LONG_00416DDC"
    %endif
    times 2 - ($ - %%insn_00416ddc) db 0
    %%insn_00416dde:
    push esi ; 00416DDE 56
    %if ($ - %%insn_00416dde) > 1
        %error "LONG_00416DDE"
    %endif
    times 1 - ($ - %%insn_00416dde) db 0
    %%insn_00416ddf:
    push dword 0x2 ; 00416DDF 6A02
    %if ($ - %%insn_00416ddf) > 2
        %error "LONG_00416DDF"
    %endif
    times 2 - ($ - %%insn_00416ddf) db 0
    %%insn_00416de1:
    call 0x415550 ; 00416DE1 E86AE7FFFF
    %if ($ - %%insn_00416de1) > 5
        %error "LONG_00416DE1"
    %endif
    times 5 - ($ - %%insn_00416de1) db 0
    db 0x8B, 0xF8 ; 00416DE6 8BF8 | mov edi,eax | encoding preserved
    %%insn_00416de8:
    add esp,0x8 ; 00416DE8 83C408
    %if ($ - %%insn_00416de8) > 3
        %error "LONG_00416DE8"
    %endif
    times 3 - ($ - %%insn_00416de8) db 0
    %%insn_00416deb:
    test edi,edi ; 00416DEB 85FF
    %if ($ - %%insn_00416deb) > 2
        %error "LONG_00416DEB"
    %endif
    times 2 - ($ - %%insn_00416deb) db 0
    %%insn_00416ded:
    jz short 0x416e29 ; 00416DED 743A
    %if ($ - %%insn_00416ded) > 2
        %error "LONG_00416DED"
    %endif
    times 2 - ($ - %%insn_00416ded) db 0
    %%insn_00416def:
    mov eax,[esp+0x1c] ; 00416DEF 8B44241C
    %if ($ - %%insn_00416def) > 4
        %error "LONG_00416DEF"
    %endif
    times 4 - ($ - %%insn_00416def) db 0
    %%insn_00416df3:
    push esi ; 00416DF3 56
    %if ($ - %%insn_00416df3) > 1
        %error "LONG_00416DF3"
    %endif
    times 1 - ($ - %%insn_00416df3) db 0
    %%insn_00416df4:
    push edi ; 00416DF4 57
    %if ($ - %%insn_00416df4) > 1
        %error "LONG_00416DF4"
    %endif
    times 1 - ($ - %%insn_00416df4) db 0
    %%insn_00416df5:
    push ebp ; 00416DF5 55
    %if ($ - %%insn_00416df5) > 1
        %error "LONG_00416DF5"
    %endif
    times 1 - ($ - %%insn_00416df5) db 0
    %%insn_00416df6:
    push eax ; 00416DF6 50
    %if ($ - %%insn_00416df6) > 1
        %error "LONG_00416DF6"
    %endif
    times 1 - ($ - %%insn_00416df6) db 0
    %%insn_00416df7:
    push dword 0x1 ; 00416DF7 6A01
    %if ($ - %%insn_00416df7) > 2
        %error "LONG_00416DF7"
    %endif
    times 2 - ($ - %%insn_00416df7) db 0
    %%insn_00416df9:
    push ebx ; 00416DF9 53
    %if ($ - %%insn_00416df9) > 1
        %error "LONG_00416DF9"
    %endif
    times 1 - ($ - %%insn_00416df9) db 0
    %%insn_00416dfa:
    call dword near [0x424464] ; 00416DFA FF1564444200
    %if ($ - %%insn_00416dfa) > 6
        %error "LONG_00416DFA"
    %endif
    times 6 - ($ - %%insn_00416dfa) db 0
    %%insn_00416e00:
    test eax,eax ; 00416E00 85C0
    %if ($ - %%insn_00416e00) > 2
        %error "LONG_00416E00"
    %endif
    times 2 - ($ - %%insn_00416e00) db 0
    %%insn_00416e02:
    jz short 0x416e29 ; 00416E02 7425
    %if ($ - %%insn_00416e02) > 2
        %error "LONG_00416E02"
    %endif
    times 2 - ($ - %%insn_00416e02) db 0
    %%insn_00416e04:
    mov ecx,[esp+0x24] ; 00416E04 8B4C2424
    %if ($ - %%insn_00416e04) > 4
        %error "LONG_00416E04"
    %endif
    times 4 - ($ - %%insn_00416e04) db 0
    %%insn_00416e08:
    mov edx,[esp+0x18] ; 00416E08 8B542418
    %if ($ - %%insn_00416e08) > 4
        %error "LONG_00416E08"
    %endif
    times 4 - ($ - %%insn_00416e08) db 0
    %%insn_00416e0c:
    push ecx ; 00416E0C 51
    %if ($ - %%insn_00416e0c) > 1
        %error "LONG_00416E0C"
    %endif
    times 1 - ($ - %%insn_00416e0c) db 0
    %%insn_00416e0d:
    push eax ; 00416E0D 50
    %if ($ - %%insn_00416e0d) > 1
        %error "LONG_00416E0D"
    %endif
    times 1 - ($ - %%insn_00416e0d) db 0
    %%insn_00416e0e:
    push edi ; 00416E0E 57
    %if ($ - %%insn_00416e0e) > 1
        %error "LONG_00416E0E"
    %endif
    times 1 - ($ - %%insn_00416e0e) db 0
    %%insn_00416e0f:
    push edx ; 00416E0F 52
    %if ($ - %%insn_00416e0f) > 1
        %error "LONG_00416E0F"
    %endif
    times 1 - ($ - %%insn_00416e0f) db 0
    %%insn_00416e10:
    call dword near [0x424470] ; 00416E10 FF1570444200
    %if ($ - %%insn_00416e10) > 6
        %error "LONG_00416E10"
    %endif
    times 6 - ($ - %%insn_00416e10) db 0
    %%insn_00416e16:
    push edi ; 00416E16 57
    %if ($ - %%insn_00416e16) > 1
        %error "LONG_00416E16"
    %endif
    times 1 - ($ - %%insn_00416e16) db 0
    db 0x8B, 0xF0 ; 00416E17 8BF0 | mov esi,eax | encoding preserved
    %%insn_00416e19:
    call 0x40c9a0 ; 00416E19 E8825BFFFF
    %if ($ - %%insn_00416e19) > 5
        %error "LONG_00416E19"
    %endif
    times 5 - ($ - %%insn_00416e19) db 0
    %%insn_00416e1e:
    add esp,0x4 ; 00416E1E 83C404
    %if ($ - %%insn_00416e1e) > 3
        %error "LONG_00416E1E"
    %endif
    times 3 - ($ - %%insn_00416e1e) db 0
    db 0x8B, 0xC6 ; 00416E21 8BC6 | mov eax,esi | encoding preserved
    %%insn_00416e23:
    pop edi ; 00416E23 5F
    %if ($ - %%insn_00416e23) > 1
        %error "LONG_00416E23"
    %endif
    times 1 - ($ - %%insn_00416e23) db 0
    %%insn_00416e24:
    pop esi ; 00416E24 5E
    %if ($ - %%insn_00416e24) > 1
        %error "LONG_00416E24"
    %endif
    times 1 - ($ - %%insn_00416e24) db 0
    %%insn_00416e25:
    pop ebp ; 00416E25 5D
    %if ($ - %%insn_00416e25) > 1
        %error "LONG_00416E25"
    %endif
    times 1 - ($ - %%insn_00416e25) db 0
    %%insn_00416e26:
    pop ebx ; 00416E26 5B
    %if ($ - %%insn_00416e26) > 1
        %error "LONG_00416E26"
    %endif
    times 1 - ($ - %%insn_00416e26) db 0
    %%insn_00416e27:
    pop ecx ; 00416E27 59
    %if ($ - %%insn_00416e27) > 1
        %error "LONG_00416E27"
    %endif
    times 1 - ($ - %%insn_00416e27) db 0
    %%insn_00416e28:
    ret ; 00416E28 C3
    %if ($ - %%insn_00416e28) > 1
        %error "LONG_00416E28"
    %endif
    times 1 - ($ - %%insn_00416e28) db 0
    %%insn_00416e29:
    mov esi,[esp+0x2c] ; 00416E29 8B74242C
    %if ($ - %%insn_00416e29) > 4
        %error "LONG_00416E29"
    %endif
    times 4 - ($ - %%insn_00416e29) db 0
    %%insn_00416e2d:
    push edi ; 00416E2D 57
    %if ($ - %%insn_00416e2d) > 1
        %error "LONG_00416E2D"
    %endif
    times 1 - ($ - %%insn_00416e2d) db 0
    %%insn_00416e2e:
    call 0x40c9a0 ; 00416E2E E86D5BFFFF
    %if ($ - %%insn_00416e2e) > 5
        %error "LONG_00416E2E"
    %endif
    times 5 - ($ - %%insn_00416e2e) db 0
    %%insn_00416e33:
    add esp,0x4 ; 00416E33 83C404
    %if ($ - %%insn_00416e33) > 3
        %error "LONG_00416E33"
    %endif
    times 3 - ($ - %%insn_00416e33) db 0
    db 0x8B, 0xC6 ; 00416E36 8BC6 | mov eax,esi | encoding preserved
    %%insn_00416e38:
    pop edi ; 00416E38 5F
    %if ($ - %%insn_00416e38) > 1
        %error "LONG_00416E38"
    %endif
    times 1 - ($ - %%insn_00416e38) db 0
    %%insn_00416e39:
    pop esi ; 00416E39 5E
    %if ($ - %%insn_00416e39) > 1
        %error "LONG_00416E39"
    %endif
    times 1 - ($ - %%insn_00416e39) db 0
    %%insn_00416e3a:
    pop ebp ; 00416E3A 5D
    %if ($ - %%insn_00416e3a) > 1
        %error "LONG_00416E3A"
    %endif
    times 1 - ($ - %%insn_00416e3a) db 0
    %%insn_00416e3b:
    pop ebx ; 00416E3B 5B
    %if ($ - %%insn_00416e3b) > 1
        %error "LONG_00416E3B"
    %endif
    times 1 - ($ - %%insn_00416e3b) db 0
    %%insn_00416e3c:
    pop ecx ; 00416E3C 59
    %if ($ - %%insn_00416e3c) > 1
        %error "LONG_00416E3C"
    %endif
    times 1 - ($ - %%insn_00416e3c) db 0
    %%insn_00416e3d:
    ret ; 00416E3D C3
    %if ($ - %%insn_00416e3d) > 1
        %error "LONG_00416E3D"
    %endif
    times 1 - ($ - %%insn_00416e3d) db 0
    %%insn_00416e3e:
    lea ecx,[esp+0x12] ; 00416E3E 8D4C2412
    %if ($ - %%insn_00416e3e) > 4
        %error "LONG_00416E3E"
    %endif
    times 4 - ($ - %%insn_00416e3e) db 0
    %%insn_00416e42:
    push ecx ; 00416E42 51
    %if ($ - %%insn_00416e42) > 1
        %error "LONG_00416E42"
    %endif
    times 1 - ($ - %%insn_00416e42) db 0
    %%insn_00416e43:
    push dword 0x1 ; 00416E43 6A01
    %if ($ - %%insn_00416e43) > 2
        %error "LONG_00416E43"
    %endif
    times 2 - ($ - %%insn_00416e43) db 0
    %%insn_00416e45:
    push dword 0x41aad8 ; 00416E45 68D8AA4100
    %if ($ - %%insn_00416e45) > 5
        %error "LONG_00416E45"
    %endif
    times 5 - ($ - %%insn_00416e45) db 0
    %%insn_00416e4a:
    push dword 0x1 ; 00416E4A 6A01
    %if ($ - %%insn_00416e4a) > 2
        %error "LONG_00416E4A"
    %endif
    times 2 - ($ - %%insn_00416e4a) db 0
    %%insn_00416e4c:
    call dword near [0x424470] ; 00416E4C FF1570444200
    %if ($ - %%insn_00416e4c) > 6
        %error "LONG_00416E4C"
    %endif
    times 6 - ($ - %%insn_00416e4c) db 0
    %%insn_00416e52:
    test eax,eax ; 00416E52 85C0
    %if ($ - %%insn_00416e52) > 2
        %error "LONG_00416E52"
    %endif
    times 2 - ($ - %%insn_00416e52) db 0
    %%insn_00416e54:
    jz short 0x416e65 ; 00416E54 740F
    %if ($ - %%insn_00416e54) > 2
        %error "LONG_00416E54"
    %endif
    times 2 - ($ - %%insn_00416e54) db 0
    %%insn_00416e56:
    mov eax,0x1 ; 00416E56 B801000000
    %if ($ - %%insn_00416e56) > 5
        %error "LONG_00416E56"
    %endif
    times 5 - ($ - %%insn_00416e56) db 0
    %%insn_00416e5b:
    mov [0x4211f0],eax ; 00416E5B A3F0114200
    %if ($ - %%insn_00416e5b) > 5
        %error "LONG_00416E5B"
    %endif
    times 5 - ($ - %%insn_00416e5b) db 0
    %%insn_00416e60:
    jmp 0x416d79 ; 00416E60 E914FFFFFF
    %if ($ - %%insn_00416e60) > 5
        %error "LONG_00416E60"
    %endif
    times 5 - ($ - %%insn_00416e60) db 0
    %%insn_00416e65:
    pop edi ; 00416E65 5F
    %if ($ - %%insn_00416e65) > 1
        %error "LONG_00416E65"
    %endif
    times 1 - ($ - %%insn_00416e65) db 0
    %%insn_00416e66:
    pop esi ; 00416E66 5E
    %if ($ - %%insn_00416e66) > 1
        %error "LONG_00416E66"
    %endif
    times 1 - ($ - %%insn_00416e66) db 0
    %%insn_00416e67:
    pop ebp ; 00416E67 5D
    %if ($ - %%insn_00416e67) > 1
        %error "LONG_00416E67"
    %endif
    times 1 - ($ - %%insn_00416e67) db 0
    db 0x33, 0xC0 ; 00416E68 33C0 | xor eax,eax | encoding preserved
    %%insn_00416e6a:
    pop ebx ; 00416E6A 5B
    %if ($ - %%insn_00416e6a) > 1
        %error "LONG_00416E6A"
    %endif
    times 1 - ($ - %%insn_00416e6a) db 0
    %%insn_00416e6b:
    pop ecx ; 00416E6B 59
    %if ($ - %%insn_00416e6b) > 1
        %error "LONG_00416E6B"
    %endif
    times 1 - ($ - %%insn_00416e6b) db 0
    %%insn_00416e6c:
    ret ; 00416E6C C3
    %if ($ - %%insn_00416e6c) > 1
        %error "LONG_00416E6C"
    %endif
    times 1 - ($ - %%insn_00416e6c) db 0
    %if ($ - %%fragment_start) != 301
        %error "function fragment size drift: 00416D40"
    %endif
%endmacro
