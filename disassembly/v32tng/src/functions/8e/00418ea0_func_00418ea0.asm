; PE virtual entry 00418EA0
; Ghidra working symbol: FUN_00418ea0
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00418ea0_part_00 0
    %%fragment_start:
func_00418ea0:
    %%insn_00418ea0:
    push ecx ; 00418EA0 51
    %if ($ - %%insn_00418ea0) > 1
        %error "LONG_00418EA0"
    %endif
    times 1 - ($ - %%insn_00418ea0) db 0
    %%insn_00418ea1:
    push ebx ; 00418EA1 53
    %if ($ - %%insn_00418ea1) > 1
        %error "LONG_00418EA1"
    %endif
    times 1 - ($ - %%insn_00418ea1) db 0
    %%insn_00418ea2:
    push ebp ; 00418EA2 55
    %if ($ - %%insn_00418ea2) > 1
        %error "LONG_00418EA2"
    %endif
    times 1 - ($ - %%insn_00418ea2) db 0
    %%insn_00418ea3:
    push esi ; 00418EA3 56
    %if ($ - %%insn_00418ea3) > 1
        %error "LONG_00418EA3"
    %endif
    times 1 - ($ - %%insn_00418ea3) db 0
    %%insn_00418ea4:
    push edi ; 00418EA4 57
    %if ($ - %%insn_00418ea4) > 1
        %error "LONG_00418EA4"
    %endif
    times 1 - ($ - %%insn_00418ea4) db 0
    %%insn_00418ea5:
    mov edi,[esp+0x18] ; 00418EA5 8B7C2418
    %if ($ - %%insn_00418ea5) > 4
        %error "LONG_00418EA5"
    %endif
    times 4 - ($ - %%insn_00418ea5) db 0
    %%insn_00418ea9:
    test edi,edi ; 00418EA9 85FF
    %if ($ - %%insn_00418ea9) > 2
        %error "LONG_00418EA9"
    %endif
    times 2 - ($ - %%insn_00418ea9) db 0
    %%insn_00418eab:
    jz 0x41905e ; 00418EAB 0F84AD010000
    %if ($ - %%insn_00418eab) > 6
        %error "LONG_00418EAB"
    %endif
    times 6 - ($ - %%insn_00418eab) db 0
    %%insn_00418eb1:
    push dword 0x3d ; 00418EB1 6A3D
    %if ($ - %%insn_00418eb1) > 2
        %error "LONG_00418EB1"
    %endif
    times 2 - ($ - %%insn_00418eb1) db 0
    %%insn_00418eb3:
    push edi ; 00418EB3 57
    %if ($ - %%insn_00418eb3) > 1
        %error "LONG_00418EB3"
    %endif
    times 1 - ($ - %%insn_00418eb3) db 0
    %%insn_00418eb4:
    call 0x414e90 ; 00418EB4 E8D7BFFFFF
    %if ($ - %%insn_00418eb4) > 5
        %error "LONG_00418EB4"
    %endif
    times 5 - ($ - %%insn_00418eb4) db 0
    db 0x8B, 0xF0 ; 00418EB9 8BF0 | mov esi,eax | encoding preserved
    %%insn_00418ebb:
    add esp,0x8 ; 00418EBB 83C408
    %if ($ - %%insn_00418ebb) > 3
        %error "LONG_00418EBB"
    %endif
    times 3 - ($ - %%insn_00418ebb) db 0
    %%insn_00418ebe:
    test esi,esi ; 00418EBE 85F6
    %if ($ - %%insn_00418ebe) > 2
        %error "LONG_00418EBE"
    %endif
    times 2 - ($ - %%insn_00418ebe) db 0
    %%insn_00418ec0:
    jz 0x41905e ; 00418EC0 0F8498010000
    %if ($ - %%insn_00418ec0) > 6
        %error "LONG_00418EC0"
    %endif
    times 6 - ($ - %%insn_00418ec0) db 0
    db 0x3B, 0xFE ; 00418EC6 3BFE | cmp edi,esi | encoding preserved
    %%insn_00418ec8:
    jz 0x41905e ; 00418EC8 0F8490010000
    %if ($ - %%insn_00418ec8) > 6
        %error "LONG_00418EC8"
    %endif
    times 6 - ($ - %%insn_00418ec8) db 0
    %%insn_00418ece:
    mov dl,[esi+0x1] ; 00418ECE 8A5601
    %if ($ - %%insn_00418ece) > 3
        %error "LONG_00418ECE"
    %endif
    times 3 - ($ - %%insn_00418ece) db 0
    %%insn_00418ed1:
    mov ecx,[0x420e78] ; 00418ED1 8B0D780E4200
    %if ($ - %%insn_00418ed1) > 6
        %error "LONG_00418ED1"
    %endif
    times 6 - ($ - %%insn_00418ed1) db 0
    db 0x33, 0xC0 ; 00418ED7 33C0 | xor eax,eax | encoding preserved
    %%insn_00418ed9:
    test dl,dl ; 00418ED9 84D2
    %if ($ - %%insn_00418ed9) > 2
        %error "LONG_00418ED9"
    %endif
    times 2 - ($ - %%insn_00418ed9) db 0
    %%insn_00418edb:
    setz al ; 00418EDB 0F94C0
    %if ($ - %%insn_00418edb) > 3
        %error "LONG_00418EDB"
    %endif
    times 3 - ($ - %%insn_00418edb) db 0
    db 0x8B, 0xE8 ; 00418EDE 8BE8 | mov ebp,eax | encoding preserved
    %%insn_00418ee0:
    mov eax,[0x420e74] ; 00418EE0 A1740E4200
    %if ($ - %%insn_00418ee0) > 5
        %error "LONG_00418EE0"
    %endif
    times 5 - ($ - %%insn_00418ee0) db 0
    db 0x3B, 0xC1 ; 00418EE5 3BC1 | cmp eax,ecx | encoding preserved
    %%insn_00418ee7:
    jnz short 0x418ef7 ; 00418EE7 750E
    %if ($ - %%insn_00418ee7) > 2
        %error "LONG_00418EE7"
    %endif
    times 2 - ($ - %%insn_00418ee7) db 0
    %%insn_00418ee9:
    push eax ; 00418EE9 50
    %if ($ - %%insn_00418ee9) > 1
        %error "LONG_00418EE9"
    %endif
    times 1 - ($ - %%insn_00418ee9) db 0
    %%insn_00418eea:
    call 0x419130 ; 00418EEA E841020000
    %if ($ - %%insn_00418eea) > 5
        %error "LONG_00418EEA"
    %endif
    times 5 - ($ - %%insn_00418eea) db 0
    %%insn_00418eef:
    add esp,0x4 ; 00418EEF 83C404
    %if ($ - %%insn_00418eef) > 3
        %error "LONG_00418EEF"
    %endif
    times 3 - ($ - %%insn_00418eef) db 0
    %%insn_00418ef2:
    mov [0x420e74],eax ; 00418EF2 A3740E4200
    %if ($ - %%insn_00418ef2) > 5
        %error "LONG_00418EF2"
    %endif
    times 5 - ($ - %%insn_00418ef2) db 0
    %%insn_00418ef7:
    test eax,eax ; 00418EF7 85C0
    %if ($ - %%insn_00418ef7) > 2
        %error "LONG_00418EF7"
    %endif
    times 2 - ($ - %%insn_00418ef7) db 0
    %%insn_00418ef9:
    jnz short 0x418f72 ; 00418EF9 7577
    %if ($ - %%insn_00418ef9) > 2
        %error "LONG_00418EF9"
    %endif
    times 2 - ($ - %%insn_00418ef9) db 0
    %%insn_00418efb:
    mov eax,[esp+0x1c] ; 00418EFB 8B44241C
    %if ($ - %%insn_00418efb) > 4
        %error "LONG_00418EFB"
    %endif
    times 4 - ($ - %%insn_00418efb) db 0
    %%insn_00418eff:
    test eax,eax ; 00418EFF 85C0
    %if ($ - %%insn_00418eff) > 2
        %error "LONG_00418EFF"
    %endif
    times 2 - ($ - %%insn_00418eff) db 0
    %%insn_00418f01:
    jz short 0x418f1e ; 00418F01 741B
    %if ($ - %%insn_00418f01) > 2
        %error "LONG_00418F01"
    %endif
    times 2 - ($ - %%insn_00418f01) db 0
    %%insn_00418f03:
    mov eax,[0x420e7c] ; 00418F03 A17C0E4200
    %if ($ - %%insn_00418f03) > 5
        %error "LONG_00418F03"
    %endif
    times 5 - ($ - %%insn_00418f03) db 0
    %%insn_00418f08:
    test eax,eax ; 00418F08 85C0
    %if ($ - %%insn_00418f08) > 2
        %error "LONG_00418F08"
    %endif
    times 2 - ($ - %%insn_00418f08) db 0
    %%insn_00418f0a:
    jz short 0x418f1e ; 00418F0A 7412
    %if ($ - %%insn_00418f0a) > 2
        %error "LONG_00418F0A"
    %endif
    times 2 - ($ - %%insn_00418f0a) db 0
    %%insn_00418f0c:
    call 0x4188d0 ; 00418F0C E8BFF9FFFF
    %if ($ - %%insn_00418f0c) > 5
        %error "LONG_00418F0C"
    %endif
    times 5 - ($ - %%insn_00418f0c) db 0
    %%insn_00418f11:
    test eax,eax ; 00418F11 85C0
    %if ($ - %%insn_00418f11) > 2
        %error "LONG_00418F11"
    %endif
    times 2 - ($ - %%insn_00418f11) db 0
    %%insn_00418f13:
    jz short 0x418f6d ; 00418F13 7458
    %if ($ - %%insn_00418f13) > 2
        %error "LONG_00418F13"
    %endif
    times 2 - ($ - %%insn_00418f13) db 0
    %%insn_00418f15:
    or eax,0xffffffffffffffff ; 00418F15 83C8FF
    %if ($ - %%insn_00418f15) > 3
        %error "LONG_00418F15"
    %endif
    times 3 - ($ - %%insn_00418f15) db 0
    %%insn_00418f18:
    pop edi ; 00418F18 5F
    %if ($ - %%insn_00418f18) > 1
        %error "LONG_00418F18"
    %endif
    times 1 - ($ - %%insn_00418f18) db 0
    %%insn_00418f19:
    pop esi ; 00418F19 5E
    %if ($ - %%insn_00418f19) > 1
        %error "LONG_00418F19"
    %endif
    times 1 - ($ - %%insn_00418f19) db 0
    %%insn_00418f1a:
    pop ebp ; 00418F1A 5D
    %if ($ - %%insn_00418f1a) > 1
        %error "LONG_00418F1A"
    %endif
    times 1 - ($ - %%insn_00418f1a) db 0
    %%insn_00418f1b:
    pop ebx ; 00418F1B 5B
    %if ($ - %%insn_00418f1b) > 1
        %error "LONG_00418F1B"
    %endif
    times 1 - ($ - %%insn_00418f1b) db 0
    %%insn_00418f1c:
    pop ecx ; 00418F1C 59
    %if ($ - %%insn_00418f1c) > 1
        %error "LONG_00418F1C"
    %endif
    times 1 - ($ - %%insn_00418f1c) db 0
    %%insn_00418f1d:
    ret ; 00418F1D C3
    %if ($ - %%insn_00418f1d) > 1
        %error "LONG_00418F1D"
    %endif
    times 1 - ($ - %%insn_00418f1d) db 0
    %%insn_00418f1e:
    test ebp,ebp ; 00418F1E 85ED
    %if ($ - %%insn_00418f1e) > 2
        %error "LONG_00418F1E"
    %endif
    times 2 - ($ - %%insn_00418f1e) db 0
    %%insn_00418f20:
    jz short 0x418f2a ; 00418F20 7408
    %if ($ - %%insn_00418f20) > 2
        %error "LONG_00418F20"
    %endif
    times 2 - ($ - %%insn_00418f20) db 0
    db 0x33, 0xC0 ; 00418F22 33C0 | xor eax,eax | encoding preserved
    %%insn_00418f24:
    pop edi ; 00418F24 5F
    %if ($ - %%insn_00418f24) > 1
        %error "LONG_00418F24"
    %endif
    times 1 - ($ - %%insn_00418f24) db 0
    %%insn_00418f25:
    pop esi ; 00418F25 5E
    %if ($ - %%insn_00418f25) > 1
        %error "LONG_00418F25"
    %endif
    times 1 - ($ - %%insn_00418f25) db 0
    %%insn_00418f26:
    pop ebp ; 00418F26 5D
    %if ($ - %%insn_00418f26) > 1
        %error "LONG_00418F26"
    %endif
    times 1 - ($ - %%insn_00418f26) db 0
    %%insn_00418f27:
    pop ebx ; 00418F27 5B
    %if ($ - %%insn_00418f27) > 1
        %error "LONG_00418F27"
    %endif
    times 1 - ($ - %%insn_00418f27) db 0
    %%insn_00418f28:
    pop ecx ; 00418F28 59
    %if ($ - %%insn_00418f28) > 1
        %error "LONG_00418F28"
    %endif
    times 1 - ($ - %%insn_00418f28) db 0
    %%insn_00418f29:
    ret ; 00418F29 C3
    %if ($ - %%insn_00418f29) > 1
        %error "LONG_00418F29"
    %endif
    times 1 - ($ - %%insn_00418f29) db 0
    %%insn_00418f2a:
    push dword 0x4 ; 00418F2A 6A04
    %if ($ - %%insn_00418f2a) > 2
        %error "LONG_00418F2A"
    %endif
    times 2 - ($ - %%insn_00418f2a) db 0
    %%insn_00418f2c:
    call 0x40cdc0 ; 00418F2C E88F3EFFFF
    %if ($ - %%insn_00418f2c) > 5
        %error "LONG_00418F2C"
    %endif
    times 5 - ($ - %%insn_00418f2c) db 0
    %%insn_00418f31:
    add esp,0x4 ; 00418F31 83C404
    %if ($ - %%insn_00418f31) > 3
        %error "LONG_00418F31"
    %endif
    times 3 - ($ - %%insn_00418f31) db 0
    %%insn_00418f34:
    mov [0x420e74],eax ; 00418F34 A3740E4200
    %if ($ - %%insn_00418f34) > 5
        %error "LONG_00418F34"
    %endif
    times 5 - ($ - %%insn_00418f34) db 0
    %%insn_00418f39:
    test eax,eax ; 00418F39 85C0
    %if ($ - %%insn_00418f39) > 2
        %error "LONG_00418F39"
    %endif
    times 2 - ($ - %%insn_00418f39) db 0
    %%insn_00418f3b:
    jz 0x41905e ; 00418F3B 0F841D010000
    %if ($ - %%insn_00418f3b) > 6
        %error "LONG_00418F3B"
    %endif
    times 6 - ($ - %%insn_00418f3b) db 0
    %%insn_00418f41:
    mov dword [eax],0x0 ; 00418F41 C70000000000
    %if ($ - %%insn_00418f41) > 6
        %error "LONG_00418F41"
    %endif
    times 6 - ($ - %%insn_00418f41) db 0
    %%insn_00418f47:
    mov eax,[0x420e7c] ; 00418F47 A17C0E4200
    %if ($ - %%insn_00418f47) > 5
        %error "LONG_00418F47"
    %endif
    times 5 - ($ - %%insn_00418f47) db 0
    %%insn_00418f4c:
    test eax,eax ; 00418F4C 85C0
    %if ($ - %%insn_00418f4c) > 2
        %error "LONG_00418F4C"
    %endif
    times 2 - ($ - %%insn_00418f4c) db 0
    %%insn_00418f4e:
    jnz short 0x418f6d ; 00418F4E 751D
    %if ($ - %%insn_00418f4e) > 2
        %error "LONG_00418F4E"
    %endif
    times 2 - ($ - %%insn_00418f4e) db 0
    %%insn_00418f50:
    push dword 0x4 ; 00418F50 6A04
    %if ($ - %%insn_00418f50) > 2
        %error "LONG_00418F50"
    %endif
    times 2 - ($ - %%insn_00418f50) db 0
    %%insn_00418f52:
    call 0x40cdc0 ; 00418F52 E8693EFFFF
    %if ($ - %%insn_00418f52) > 5
        %error "LONG_00418F52"
    %endif
    times 5 - ($ - %%insn_00418f52) db 0
    %%insn_00418f57:
    add esp,0x4 ; 00418F57 83C404
    %if ($ - %%insn_00418f57) > 3
        %error "LONG_00418F57"
    %endif
    times 3 - ($ - %%insn_00418f57) db 0
    %%insn_00418f5a:
    mov [0x420e7c],eax ; 00418F5A A37C0E4200
    %if ($ - %%insn_00418f5a) > 5
        %error "LONG_00418F5A"
    %endif
    times 5 - ($ - %%insn_00418f5a) db 0
    %%insn_00418f5f:
    test eax,eax ; 00418F5F 85C0
    %if ($ - %%insn_00418f5f) > 2
        %error "LONG_00418F5F"
    %endif
    times 2 - ($ - %%insn_00418f5f) db 0
    %%insn_00418f61:
    jz 0x41905e ; 00418F61 0F84F7000000
    %if ($ - %%insn_00418f61) > 6
        %error "LONG_00418F61"
    %endif
    times 6 - ($ - %%insn_00418f61) db 0
    %%insn_00418f67:
    mov dword [eax],0x0 ; 00418F67 C70000000000
    %if ($ - %%insn_00418f67) > 6
        %error "LONG_00418F67"
    %endif
    times 6 - ($ - %%insn_00418f67) db 0
    %%insn_00418f6d:
    mov eax,[0x420e74] ; 00418F6D A1740E4200
    %if ($ - %%insn_00418f6d) > 5
        %error "LONG_00418F6D"
    %endif
    times 5 - ($ - %%insn_00418f6d) db 0
    db 0x8B, 0xD8 ; 00418F72 8BD8 | mov ebx,eax | encoding preserved
    db 0x8B, 0xC6 ; 00418F74 8BC6 | mov eax,esi | encoding preserved
    db 0x2B, 0xC7 ; 00418F76 2BC7 | sub eax,edi | encoding preserved
    %%insn_00418f78:
    push eax ; 00418F78 50
    %if ($ - %%insn_00418f78) > 1
        %error "LONG_00418F78"
    %endif
    times 1 - ($ - %%insn_00418f78) db 0
    %%insn_00418f79:
    push edi ; 00418F79 57
    %if ($ - %%insn_00418f79) > 1
        %error "LONG_00418F79"
    %endif
    times 1 - ($ - %%insn_00418f79) db 0
    %%insn_00418f7a:
    mov [esp+0x18],eax ; 00418F7A 89442418
    %if ($ - %%insn_00418f7a) > 4
        %error "LONG_00418F7A"
    %endif
    times 4 - ($ - %%insn_00418f7a) db 0
    %%insn_00418f7e:
    call 0x4190b0 ; 00418F7E E82D010000
    %if ($ - %%insn_00418f7e) > 5
        %error "LONG_00418F7E"
    %endif
    times 5 - ($ - %%insn_00418f7e) db 0
    db 0x8B, 0xF0 ; 00418F83 8BF0 | mov esi,eax | encoding preserved
    %%insn_00418f85:
    add esp,0x8 ; 00418F85 83C408
    %if ($ - %%insn_00418f85) > 3
        %error "LONG_00418F85"
    %endif
    times 3 - ($ - %%insn_00418f85) db 0
    %%insn_00418f88:
    test esi,esi ; 00418F88 85F6
    %if ($ - %%insn_00418f88) > 2
        %error "LONG_00418F88"
    %endif
    times 2 - ($ - %%insn_00418f88) db 0
    %%insn_00418f8a:
    jl 0x41906f ; 00418F8A 0F8CDF000000
    %if ($ - %%insn_00418f8a) > 6
        %error "LONG_00418F8A"
    %endif
    times 6 - ($ - %%insn_00418f8a) db 0
    %%insn_00418f90:
    cmp dword [ebx],0x0 ; 00418F90 833B00
    %if ($ - %%insn_00418f90) > 3
        %error "LONG_00418F90"
    %endif
    times 3 - ($ - %%insn_00418f90) db 0
    %%insn_00418f93:
    jz 0x41906f ; 00418F93 0F84D6000000
    %if ($ - %%insn_00418f93) > 6
        %error "LONG_00418F93"
    %endif
    times 6 - ($ - %%insn_00418f93) db 0
    %%insn_00418f99:
    test ebp,ebp ; 00418F99 85ED
    %if ($ - %%insn_00418f99) > 2
        %error "LONG_00418F99"
    %endif
    times 2 - ($ - %%insn_00418f99) db 0
    %%insn_00418f9b:
    jz 0x419067 ; 00418F9B 0F84C6000000
    %if ($ - %%insn_00418f9b) > 6
        %error "LONG_00418F9B"
    %endif
    times 6 - ($ - %%insn_00418f9b) db 0
    %%insn_00418fa1:
    mov ecx,[ebx+esi*4] ; 00418FA1 8B0CB3
    %if ($ - %%insn_00418fa1) > 3
        %error "LONG_00418FA1"
    %endif
    times 3 - ($ - %%insn_00418fa1) db 0
    %%insn_00418fa4:
    lea edi,[ebx+esi*4] ; 00418FA4 8D3CB3
    %if ($ - %%insn_00418fa4) > 3
        %error "LONG_00418FA4"
    %endif
    times 3 - ($ - %%insn_00418fa4) db 0
    %%insn_00418fa7:
    push ecx ; 00418FA7 51
    %if ($ - %%insn_00418fa7) > 1
        %error "LONG_00418FA7"
    %endif
    times 1 - ($ - %%insn_00418fa7) db 0
    %%insn_00418fa8:
    call 0x40c9a0 ; 00418FA8 E8F339FFFF
    %if ($ - %%insn_00418fa8) > 5
        %error "LONG_00418FA8"
    %endif
    times 5 - ($ - %%insn_00418fa8) db 0
    %%insn_00418fad:
    mov eax,[edi] ; 00418FAD 8B07
    %if ($ - %%insn_00418fad) > 2
        %error "LONG_00418FAD"
    %endif
    times 2 - ($ - %%insn_00418fad) db 0
    %%insn_00418faf:
    add esp,0x4 ; 00418FAF 83C404
    %if ($ - %%insn_00418faf) > 3
        %error "LONG_00418FAF"
    %endif
    times 3 - ($ - %%insn_00418faf) db 0
    %%insn_00418fb2:
    test eax,eax ; 00418FB2 85C0
    %if ($ - %%insn_00418fb2) > 2
        %error "LONG_00418FB2"
    %endif
    times 2 - ($ - %%insn_00418fb2) db 0
    %%insn_00418fb4:
    jz short 0x418fc9 ; 00418FB4 7413
    %if ($ - %%insn_00418fb4) > 2
        %error "LONG_00418FB4"
    %endif
    times 2 - ($ - %%insn_00418fb4) db 0
    db 0x8B, 0xC7 ; 00418FB6 8BC7 | mov eax,edi | encoding preserved
    %%insn_00418fb8:
    mov edx,[eax+0x4] ; 00418FB8 8B5004
    %if ($ - %%insn_00418fb8) > 3
        %error "LONG_00418FB8"
    %endif
    times 3 - ($ - %%insn_00418fb8) db 0
    %%insn_00418fbb:
    add eax,0x4 ; 00418FBB 83C004
    %if ($ - %%insn_00418fbb) > 3
        %error "LONG_00418FBB"
    %endif
    times 3 - ($ - %%insn_00418fbb) db 0
    %%insn_00418fbe:
    mov [edi],edx ; 00418FBE 8917
    %if ($ - %%insn_00418fbe) > 2
        %error "LONG_00418FBE"
    %endif
    times 2 - ($ - %%insn_00418fbe) db 0
    %%insn_00418fc0:
    inc esi ; 00418FC0 46
    %if ($ - %%insn_00418fc0) > 1
        %error "LONG_00418FC0"
    %endif
    times 1 - ($ - %%insn_00418fc0) db 0
    %%insn_00418fc1:
    mov ecx,[eax] ; 00418FC1 8B08
    %if ($ - %%insn_00418fc1) > 2
        %error "LONG_00418FC1"
    %endif
    times 2 - ($ - %%insn_00418fc1) db 0
    db 0x8B, 0xF8 ; 00418FC3 8BF8 | mov edi,eax | encoding preserved
    %%insn_00418fc5:
    test ecx,ecx ; 00418FC5 85C9
    %if ($ - %%insn_00418fc5) > 2
        %error "LONG_00418FC5"
    %endif
    times 2 - ($ - %%insn_00418fc5) db 0
    %%insn_00418fc7:
    jnz short 0x418fb8 ; 00418FC7 75EF
    %if ($ - %%insn_00418fc7) > 2
        %error "LONG_00418FC7"
    %endif
    times 2 - ($ - %%insn_00418fc7) db 0
    %%insn_00418fc9:
    lea eax,[esi*4+0x0] ; 00418FC9 8D04B500000000
    %if ($ - %%insn_00418fc9) > 7
        %error "LONG_00418FC9"
    %endif
    times 7 - ($ - %%insn_00418fc9) db 0
    %%insn_00418fd0:
    push eax ; 00418FD0 50
    %if ($ - %%insn_00418fd0) > 1
        %error "LONG_00418FD0"
    %endif
    times 1 - ($ - %%insn_00418fd0) db 0
    %%insn_00418fd1:
    push ebx ; 00418FD1 53
    %if ($ - %%insn_00418fd1) > 1
        %error "LONG_00418FD1"
    %endif
    times 1 - ($ - %%insn_00418fd1) db 0
    %%insn_00418fd2:
    call 0x4191a0 ; 00418FD2 E8C9010000
    %if ($ - %%insn_00418fd2) > 5
        %error "LONG_00418FD2"
    %endif
    times 5 - ($ - %%insn_00418fd2) db 0
    %%insn_00418fd7:
    add esp,0x8 ; 00418FD7 83C408
    %if ($ - %%insn_00418fd7) > 3
        %error "LONG_00418FD7"
    %endif
    times 3 - ($ - %%insn_00418fd7) db 0
    %%insn_00418fda:
    test eax,eax ; 00418FDA 85C0
    %if ($ - %%insn_00418fda) > 2
        %error "LONG_00418FDA"
    %endif
    times 2 - ($ - %%insn_00418fda) db 0
    %%insn_00418fdc:
    jz short 0x418fe3 ; 00418FDC 7405
    %if ($ - %%insn_00418fdc) > 2
        %error "LONG_00418FDC"
    %endif
    times 2 - ($ - %%insn_00418fdc) db 0
    %%insn_00418fde:
    mov [0x420e74],eax ; 00418FDE A3740E4200
    %if ($ - %%insn_00418fde) > 5
        %error "LONG_00418FDE"
    %endif
    times 5 - ($ - %%insn_00418fde) db 0
    %%insn_00418fe3:
    mov edi,[esp+0x18] ; 00418FE3 8B7C2418
    %if ($ - %%insn_00418fe3) > 4
        %error "LONG_00418FE3"
    %endif
    times 4 - ($ - %%insn_00418fe3) db 0
    %%insn_00418fe7:
    mov eax,[esp+0x1c] ; 00418FE7 8B44241C
    %if ($ - %%insn_00418fe7) > 4
        %error "LONG_00418FE7"
    %endif
    times 4 - ($ - %%insn_00418fe7) db 0
    %%insn_00418feb:
    test eax,eax ; 00418FEB 85C0
    %if ($ - %%insn_00418feb) > 2
        %error "LONG_00418FEB"
    %endif
    times 2 - ($ - %%insn_00418feb) db 0
    %%insn_00418fed:
    jz short 0x419056 ; 00418FED 7467
    %if ($ - %%insn_00418fed) > 2
        %error "LONG_00418FED"
    %endif
    times 2 - ($ - %%insn_00418fed) db 0
    %%insn_00418fef:
    or ecx,0xffffffffffffffff ; 00418FEF 83C9FF
    %if ($ - %%insn_00418fef) > 3
        %error "LONG_00418FEF"
    %endif
    times 3 - ($ - %%insn_00418fef) db 0
    db 0x33, 0xC0 ; 00418FF2 33C0 | xor eax,eax | encoding preserved
    %%insn_00418ff4:
    repne scasb ; 00418FF4 F2AE
    %if ($ - %%insn_00418ff4) > 2
        %error "LONG_00418FF4"
    %endif
    times 2 - ($ - %%insn_00418ff4) db 0
    %%insn_00418ff6:
    not ecx ; 00418FF6 F7D1
    %if ($ - %%insn_00418ff6) > 2
        %error "LONG_00418FF6"
    %endif
    times 2 - ($ - %%insn_00418ff6) db 0
    %%insn_00418ff8:
    inc ecx ; 00418FF8 41
    %if ($ - %%insn_00418ff8) > 1
        %error "LONG_00418FF8"
    %endif
    times 1 - ($ - %%insn_00418ff8) db 0
    %%insn_00418ff9:
    push ecx ; 00418FF9 51
    %if ($ - %%insn_00418ff9) > 1
        %error "LONG_00418FF9"
    %endif
    times 1 - ($ - %%insn_00418ff9) db 0
    %%insn_00418ffa:
    call 0x40cdc0 ; 00418FFA E8C13DFFFF
    %if ($ - %%insn_00418ffa) > 5
        %error "LONG_00418FFA"
    %endif
    times 5 - ($ - %%insn_00418ffa) db 0
    db 0x8B, 0xD8 ; 00418FFF 8BD8 | mov ebx,eax | encoding preserved
    %%insn_00419001:
    add esp,0x4 ; 00419001 83C404
    %if ($ - %%insn_00419001) > 3
        %error "LONG_00419001"
    %endif
    times 3 - ($ - %%insn_00419001) db 0
    %%insn_00419004:
    test ebx,ebx ; 00419004 85DB
    %if ($ - %%insn_00419004) > 2
        %error "LONG_00419004"
    %endif
    times 2 - ($ - %%insn_00419004) db 0
    %%insn_00419006:
    jz short 0x419056 ; 00419006 744E
    %if ($ - %%insn_00419006) > 2
        %error "LONG_00419006"
    %endif
    times 2 - ($ - %%insn_00419006) db 0
    %%insn_00419008:
    mov edi,[esp+0x18] ; 00419008 8B7C2418
    %if ($ - %%insn_00419008) > 4
        %error "LONG_00419008"
    %endif
    times 4 - ($ - %%insn_00419008) db 0
    %%insn_0041900c:
    or ecx,0xffffffffffffffff ; 0041900C 83C9FF
    %if ($ - %%insn_0041900c) > 3
        %error "LONG_0041900C"
    %endif
    times 3 - ($ - %%insn_0041900c) db 0
    db 0x33, 0xC0 ; 0041900F 33C0 | xor eax,eax | encoding preserved
    %%insn_00419011:
    repne scasb ; 00419011 F2AE
    %if ($ - %%insn_00419011) > 2
        %error "LONG_00419011"
    %endif
    times 2 - ($ - %%insn_00419011) db 0
    %%insn_00419013:
    not ecx ; 00419013 F7D1
    %if ($ - %%insn_00419013) > 2
        %error "LONG_00419013"
    %endif
    times 2 - ($ - %%insn_00419013) db 0
    db 0x2B, 0xF9 ; 00419015 2BF9 | sub edi,ecx | encoding preserved
    %%insn_00419017:
    mov eax,[esp+0x10] ; 00419017 8B442410
    %if ($ - %%insn_00419017) > 4
        %error "LONG_00419017"
    %endif
    times 4 - ($ - %%insn_00419017) db 0
    db 0x8B, 0xD1 ; 0041901B 8BD1 | mov edx,ecx | encoding preserved
    db 0x8B, 0xF7 ; 0041901D 8BF7 | mov esi,edi | encoding preserved
    db 0x8B, 0xFB ; 0041901F 8BFB | mov edi,ebx | encoding preserved
    %%insn_00419021:
    shr ecx,byte 0x2 ; 00419021 C1E902
    %if ($ - %%insn_00419021) > 3
        %error "LONG_00419021"
    %endif
    times 3 - ($ - %%insn_00419021) db 0
    %%insn_00419024:
    rep movsd ; 00419024 F3A5
    %if ($ - %%insn_00419024) > 2
        %error "LONG_00419024"
    %endif
    times 2 - ($ - %%insn_00419024) db 0
    db 0x8B, 0xCA ; 00419026 8BCA | mov ecx,edx | encoding preserved
    %%insn_00419028:
    and ecx,0x3 ; 00419028 83E103
    %if ($ - %%insn_00419028) > 3
        %error "LONG_00419028"
    %endif
    times 3 - ($ - %%insn_00419028) db 0
    %%insn_0041902b:
    neg ebp ; 0041902B F7DD
    %if ($ - %%insn_0041902b) > 2
        %error "LONG_0041902B"
    %endif
    times 2 - ($ - %%insn_0041902b) db 0
    %%insn_0041902d:
    rep movsb ; 0041902D F3A4
    %if ($ - %%insn_0041902d) > 2
        %error "LONG_0041902D"
    %endif
    times 2 - ($ - %%insn_0041902d) db 0
    db 0x1B, 0xED ; 0041902F 1BED | sbb ebp,ebp | encoding preserved
    %%insn_00419031:
    mov byte [ebx+eax],0x0 ; 00419031 C6040300
    %if ($ - %%insn_00419031) > 4
        %error "LONG_00419031"
    %endif
    times 4 - ($ - %%insn_00419031) db 0
    %%insn_00419035:
    lea eax,[ebx+eax+0x1] ; 00419035 8D440301
    %if ($ - %%insn_00419035) > 4
        %error "LONG_00419035"
    %endif
    times 4 - ($ - %%insn_00419035) db 0
    %%insn_00419039:
    not ebp ; 00419039 F7D5
    %if ($ - %%insn_00419039) > 2
        %error "LONG_00419039"
    %endif
    times 2 - ($ - %%insn_00419039) db 0
    db 0x23, 0xE8 ; 0041903B 23E8 | and ebp,eax | encoding preserved
    %%insn_0041903d:
    push ebp ; 0041903D 55
    %if ($ - %%insn_0041903d) > 1
        %error "LONG_0041903D"
    %endif
    times 1 - ($ - %%insn_0041903d) db 0
    %%insn_0041903e:
    push ebx ; 0041903E 53
    %if ($ - %%insn_0041903e) > 1
        %error "LONG_0041903E"
    %endif
    times 1 - ($ - %%insn_0041903e) db 0
    %%insn_0041903f:
    call dword near [0x42442c] ; 0041903F FF152C444200
    %if ($ - %%insn_0041903f) > 6
        %error "LONG_0041903F"
    %endif
    times 6 - ($ - %%insn_0041903f) db 0
    %%insn_00419045:
    push ebx ; 00419045 53
    %if ($ - %%insn_00419045) > 1
        %error "LONG_00419045"
    %endif
    times 1 - ($ - %%insn_00419045) db 0
    %%insn_00419046:
    call 0x40c9a0 ; 00419046 E85539FFFF
    %if ($ - %%insn_00419046) > 5
        %error "LONG_00419046"
    %endif
    times 5 - ($ - %%insn_00419046) db 0
    %%insn_0041904b:
    add esp,0x4 ; 0041904B 83C404
    %if ($ - %%insn_0041904b) > 3
        %error "LONG_0041904B"
    %endif
    times 3 - ($ - %%insn_0041904b) db 0
    db 0x33, 0xC0 ; 0041904E 33C0 | xor eax,eax | encoding preserved
    %%insn_00419050:
    pop edi ; 00419050 5F
    %if ($ - %%insn_00419050) > 1
        %error "LONG_00419050"
    %endif
    times 1 - ($ - %%insn_00419050) db 0
    %%insn_00419051:
    pop esi ; 00419051 5E
    %if ($ - %%insn_00419051) > 1
        %error "LONG_00419051"
    %endif
    times 1 - ($ - %%insn_00419051) db 0
    %%insn_00419052:
    pop ebp ; 00419052 5D
    %if ($ - %%insn_00419052) > 1
        %error "LONG_00419052"
    %endif
    times 1 - ($ - %%insn_00419052) db 0
    %%insn_00419053:
    pop ebx ; 00419053 5B
    %if ($ - %%insn_00419053) > 1
        %error "LONG_00419053"
    %endif
    times 1 - ($ - %%insn_00419053) db 0
    %%insn_00419054:
    pop ecx ; 00419054 59
    %if ($ - %%insn_00419054) > 1
        %error "LONG_00419054"
    %endif
    times 1 - ($ - %%insn_00419054) db 0
    %%insn_00419055:
    ret ; 00419055 C3
    %if ($ - %%insn_00419055) > 1
        %error "LONG_00419055"
    %endif
    times 1 - ($ - %%insn_00419055) db 0
    db 0x33, 0xC0 ; 00419056 33C0 | xor eax,eax | encoding preserved
    %%insn_00419058:
    pop edi ; 00419058 5F
    %if ($ - %%insn_00419058) > 1
        %error "LONG_00419058"
    %endif
    times 1 - ($ - %%insn_00419058) db 0
    %%insn_00419059:
    pop esi ; 00419059 5E
    %if ($ - %%insn_00419059) > 1
        %error "LONG_00419059"
    %endif
    times 1 - ($ - %%insn_00419059) db 0
    %%insn_0041905a:
    pop ebp ; 0041905A 5D
    %if ($ - %%insn_0041905a) > 1
        %error "LONG_0041905A"
    %endif
    times 1 - ($ - %%insn_0041905a) db 0
    %%insn_0041905b:
    pop ebx ; 0041905B 5B
    %if ($ - %%insn_0041905b) > 1
        %error "LONG_0041905B"
    %endif
    times 1 - ($ - %%insn_0041905b) db 0
    %%insn_0041905c:
    pop ecx ; 0041905C 59
    %if ($ - %%insn_0041905c) > 1
        %error "LONG_0041905C"
    %endif
    times 1 - ($ - %%insn_0041905c) db 0
    %%insn_0041905d:
    ret ; 0041905D C3
    %if ($ - %%insn_0041905d) > 1
        %error "LONG_0041905D"
    %endif
    times 1 - ($ - %%insn_0041905d) db 0
    %%insn_0041905e:
    pop edi ; 0041905E 5F
    %if ($ - %%insn_0041905e) > 1
        %error "LONG_0041905E"
    %endif
    times 1 - ($ - %%insn_0041905e) db 0
    %%insn_0041905f:
    pop esi ; 0041905F 5E
    %if ($ - %%insn_0041905f) > 1
        %error "LONG_0041905F"
    %endif
    times 1 - ($ - %%insn_0041905f) db 0
    %%insn_00419060:
    pop ebp ; 00419060 5D
    %if ($ - %%insn_00419060) > 1
        %error "LONG_00419060"
    %endif
    times 1 - ($ - %%insn_00419060) db 0
    %%insn_00419061:
    or eax,0xffffffffffffffff ; 00419061 83C8FF
    %if ($ - %%insn_00419061) > 3
        %error "LONG_00419061"
    %endif
    times 3 - ($ - %%insn_00419061) db 0
    %%insn_00419064:
    pop ebx ; 00419064 5B
    %if ($ - %%insn_00419064) > 1
        %error "LONG_00419064"
    %endif
    times 1 - ($ - %%insn_00419064) db 0
    %%insn_00419065:
    pop ecx ; 00419065 59
    %if ($ - %%insn_00419065) > 1
        %error "LONG_00419065"
    %endif
    times 1 - ($ - %%insn_00419065) db 0
    %%insn_00419066:
    ret ; 00419066 C3
    %if ($ - %%insn_00419066) > 1
        %error "LONG_00419066"
    %endif
    times 1 - ($ - %%insn_00419066) db 0
    %%insn_00419067:
    mov [ebx+esi*4],edi ; 00419067 893CB3
    %if ($ - %%insn_00419067) > 3
        %error "LONG_00419067"
    %endif
    times 3 - ($ - %%insn_00419067) db 0
    %%insn_0041906a:
    jmp 0x418fe7 ; 0041906A E978FFFFFF
    %if ($ - %%insn_0041906a) > 5
        %error "LONG_0041906A"
    %endif
    times 5 - ($ - %%insn_0041906a) db 0
    %%insn_0041906f:
    test ebp,ebp ; 0041906F 85ED
    %if ($ - %%insn_0041906f) > 2
        %error "LONG_0041906F"
    %endif
    times 2 - ($ - %%insn_0041906f) db 0
    %%insn_00419071:
    jnz short 0x419056 ; 00419071 75E3
    %if ($ - %%insn_00419071) > 2
        %error "LONG_00419071"
    %endif
    times 2 - ($ - %%insn_00419071) db 0
    %%insn_00419073:
    test esi,esi ; 00419073 85F6
    %if ($ - %%insn_00419073) > 2
        %error "LONG_00419073"
    %endif
    times 2 - ($ - %%insn_00419073) db 0
    %%insn_00419075:
    jnl short 0x419079 ; 00419075 7D02
    %if ($ - %%insn_00419075) > 2
        %error "LONG_00419075"
    %endif
    times 2 - ($ - %%insn_00419075) db 0
    %%insn_00419077:
    neg esi ; 00419077 F7DE
    %if ($ - %%insn_00419077) > 2
        %error "LONG_00419077"
    %endif
    times 2 - ($ - %%insn_00419077) db 0
    %%insn_00419079:
    lea ecx,[esi*4+0x8] ; 00419079 8D0CB508000000
    %if ($ - %%insn_00419079) > 7
        %error "LONG_00419079"
    %endif
    times 7 - ($ - %%insn_00419079) db 0
    %%insn_00419080:
    push ecx ; 00419080 51
    %if ($ - %%insn_00419080) > 1
        %error "LONG_00419080"
    %endif
    times 1 - ($ - %%insn_00419080) db 0
    %%insn_00419081:
    push ebx ; 00419081 53
    %if ($ - %%insn_00419081) > 1
        %error "LONG_00419081"
    %endif
    times 1 - ($ - %%insn_00419081) db 0
    %%insn_00419082:
    call 0x4191a0 ; 00419082 E819010000
    %if ($ - %%insn_00419082) > 5
        %error "LONG_00419082"
    %endif
    times 5 - ($ - %%insn_00419082) db 0
    %%insn_00419087:
    add esp,0x8 ; 00419087 83C408
    %if ($ - %%insn_00419087) > 3
        %error "LONG_00419087"
    %endif
    times 3 - ($ - %%insn_00419087) db 0
    %%insn_0041908a:
    test eax,eax ; 0041908A 85C0
    %if ($ - %%insn_0041908a) > 2
        %error "LONG_0041908A"
    %endif
    times 2 - ($ - %%insn_0041908a) db 0
    %%insn_0041908c:
    jz short 0x41905e ; 0041908C 74D0
    %if ($ - %%insn_0041908c) > 2
        %error "LONG_0041908C"
    %endif
    times 2 - ($ - %%insn_0041908c) db 0
    %%insn_0041908e:
    mov [eax+esi*4],edi ; 0041908E 893CB0
    %if ($ - %%insn_0041908e) > 3
        %error "LONG_0041908E"
    %endif
    times 3 - ($ - %%insn_0041908e) db 0
    %%insn_00419091:
    mov dword [eax+esi*4+0x4],0x0 ; 00419091 C744B00400000000
    %if ($ - %%insn_00419091) > 8
        %error "LONG_00419091"
    %endif
    times 8 - ($ - %%insn_00419091) db 0
    %%insn_00419099:
    mov [0x420e74],eax ; 00419099 A3740E4200
    %if ($ - %%insn_00419099) > 5
        %error "LONG_00419099"
    %endif
    times 5 - ($ - %%insn_00419099) db 0
    %%insn_0041909e:
    jmp 0x418fe7 ; 0041909E E944FFFFFF
    %if ($ - %%insn_0041909e) > 5
        %error "LONG_0041909E"
    %endif
    times 5 - ($ - %%insn_0041909e) db 0
    %if ($ - %%fragment_start) != 515
        %error "function fragment size drift: 00418EA0"
    %endif
%endmacro
