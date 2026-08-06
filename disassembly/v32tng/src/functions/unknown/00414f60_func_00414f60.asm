; PE virtual entry 00414F60
; Ghidra working symbol: FUN_00414f60
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00414f60_part_00 0
    %%fragment_start:
func_00414f60:
    %%insn_00414f60:
    mov eax,[0x421154] ; 00414F60 A154114200
    %if ($ - %%insn_00414f60) > 5
        %error "LONG_00414F60"
    %endif
    times 5 - ($ - %%insn_00414f60) db 0
    %%insn_00414f65:
    push esi ; 00414F65 56
    %if ($ - %%insn_00414f65) > 1
        %error "LONG_00414F65"
    %endif
    times 1 - ($ - %%insn_00414f65) db 0
    db 0x33, 0xF6 ; 00414F66 33F6 | xor esi,esi | encoding preserved
    %%insn_00414f68:
    test eax,eax ; 00414F68 85C0
    %if ($ - %%insn_00414f68) > 2
        %error "LONG_00414F68"
    %endif
    times 2 - ($ - %%insn_00414f68) db 0
    %%insn_00414f6a:
    jnz short 0x414f80 ; 00414F6A 7514
    %if ($ - %%insn_00414f6a) > 2
        %error "LONG_00414F6A"
    %endif
    times 2 - ($ - %%insn_00414f6a) db 0
    %%insn_00414f6c:
    mov eax,[esp+0xc] ; 00414F6C 8B44240C
    %if ($ - %%insn_00414f6c) > 4
        %error "LONG_00414F6C"
    %endif
    times 4 - ($ - %%insn_00414f6c) db 0
    %%insn_00414f70:
    mov ecx,[esp+0x8] ; 00414F70 8B4C2408
    %if ($ - %%insn_00414f70) > 4
        %error "LONG_00414F70"
    %endif
    times 4 - ($ - %%insn_00414f70) db 0
    %%insn_00414f74:
    push eax ; 00414F74 50
    %if ($ - %%insn_00414f74) > 1
        %error "LONG_00414F74"
    %endif
    times 1 - ($ - %%insn_00414f74) db 0
    %%insn_00414f75:
    push ecx ; 00414F75 51
    %if ($ - %%insn_00414f75) > 1
        %error "LONG_00414F75"
    %endif
    times 1 - ($ - %%insn_00414f75) db 0
    %%insn_00414f76:
    call 0x40d9f0 ; 00414F76 E8758AFFFF
    %if ($ - %%insn_00414f76) > 5
        %error "LONG_00414F76"
    %endif
    times 5 - ($ - %%insn_00414f76) db 0
    %%insn_00414f7b:
    add esp,0x8 ; 00414F7B 83C408
    %if ($ - %%insn_00414f7b) > 3
        %error "LONG_00414F7B"
    %endif
    times 3 - ($ - %%insn_00414f7b) db 0
    %%insn_00414f7e:
    pop esi ; 00414F7E 5E
    %if ($ - %%insn_00414f7e) > 1
        %error "LONG_00414F7E"
    %endif
    times 1 - ($ - %%insn_00414f7e) db 0
    %%insn_00414f7f:
    ret ; 00414F7F C3
    %if ($ - %%insn_00414f7f) > 1
        %error "LONG_00414F7F"
    %endif
    times 1 - ($ - %%insn_00414f7f) db 0
    %%insn_00414f80:
    push edi ; 00414F80 57
    %if ($ - %%insn_00414f80) > 1
        %error "LONG_00414F80"
    %endif
    times 1 - ($ - %%insn_00414f80) db 0
    %%insn_00414f81:
    push ebp ; 00414F81 55
    %if ($ - %%insn_00414f81) > 1
        %error "LONG_00414F81"
    %endif
    times 1 - ($ - %%insn_00414f81) db 0
    %%insn_00414f82:
    push ebx ; 00414F82 53
    %if ($ - %%insn_00414f82) > 1
        %error "LONG_00414F82"
    %endif
    times 1 - ($ - %%insn_00414f82) db 0
    %%insn_00414f83:
    push dword 0x19 ; 00414F83 6A19
    %if ($ - %%insn_00414f83) > 2
        %error "LONG_00414F83"
    %endif
    times 2 - ($ - %%insn_00414f83) db 0
    %%insn_00414f85:
    call 0x40df00 ; 00414F85 E8768FFFFF
    %if ($ - %%insn_00414f85) > 5
        %error "LONG_00414F85"
    %endif
    times 5 - ($ - %%insn_00414f85) db 0
    %%insn_00414f8a:
    mov edi,[esp+0x1c] ; 00414F8A 8B7C241C
    %if ($ - %%insn_00414f8a) > 4
        %error "LONG_00414F8A"
    %endif
    times 4 - ($ - %%insn_00414f8a) db 0
    %%insn_00414f8e:
    mov edx,[esp+0x18] ; 00414F8E 8B542418
    %if ($ - %%insn_00414f8e) > 4
        %error "LONG_00414F8E"
    %endif
    times 4 - ($ - %%insn_00414f8e) db 0
    %%insn_00414f92:
    add esp,0x4 ; 00414F92 83C404
    %if ($ - %%insn_00414f92) > 3
        %error "LONG_00414F92"
    %endif
    times 3 - ($ - %%insn_00414f92) db 0
    %%insn_00414f95:
    mov bl,0x4 ; 00414F95 B304
    %if ($ - %%insn_00414f95) > 2
        %error "LONG_00414F95"
    %endif
    times 2 - ($ - %%insn_00414f95) db 0
    %%insn_00414f97:
    mov cl,[edx] ; 00414F97 8A0A
    %if ($ - %%insn_00414f97) > 2
        %error "LONG_00414F97"
    %endif
    times 2 - ($ - %%insn_00414f97) db 0
    db 0x8B, 0xC1 ; 00414F99 8BC1 | mov eax,ecx | encoding preserved
    %%insn_00414f9b:
    and eax,0xff ; 00414F9B 25FF000000
    %if ($ - %%insn_00414f9b) > 5
        %error "LONG_00414F9B"
    %endif
    times 5 - ($ - %%insn_00414f9b) db 0
    db 0x8B, 0xE8 ; 00414FA0 8BE8 | mov ebp,eax | encoding preserved
    %%insn_00414fa2:
    and ebp,0xff ; 00414FA2 81E5FF000000
    %if ($ - %%insn_00414fa2) > 6
        %error "LONG_00414FA2"
    %endif
    times 6 - ($ - %%insn_00414fa2) db 0
    %%insn_00414fa8:
    test [ebp+0x421051],bl ; 00414FA8 849D51104200
    %if ($ - %%insn_00414fa8) > 6
        %error "LONG_00414FA8"
    %endif
    times 6 - ($ - %%insn_00414fa8) db 0
    %%insn_00414fae:
    jz short 0x414fd4 ; 00414FAE 7424
    %if ($ - %%insn_00414fae) > 2
        %error "LONG_00414FAE"
    %endif
    times 2 - ($ - %%insn_00414fae) db 0
    %%insn_00414fb0:
    mov cl,[edx+0x1] ; 00414FB0 8A4A01
    %if ($ - %%insn_00414fb0) > 3
        %error "LONG_00414FB0"
    %endif
    times 3 - ($ - %%insn_00414fb0) db 0
    %%insn_00414fb3:
    inc edx ; 00414FB3 42
    %if ($ - %%insn_00414fb3) > 1
        %error "LONG_00414FB3"
    %endif
    times 1 - ($ - %%insn_00414fb3) db 0
    %%insn_00414fb4:
    test cl,cl ; 00414FB4 84C9
    %if ($ - %%insn_00414fb4) > 2
        %error "LONG_00414FB4"
    %endif
    times 2 - ($ - %%insn_00414fb4) db 0
    %%insn_00414fb6:
    jz short 0x414fce ; 00414FB6 7416
    %if ($ - %%insn_00414fb6) > 2
        %error "LONG_00414FB6"
    %endif
    times 2 - ($ - %%insn_00414fb6) db 0
    db 0x8B, 0xE9 ; 00414FB8 8BE9 | mov ebp,ecx | encoding preserved
    %%insn_00414fba:
    shl eax,byte 0x8 ; 00414FBA C1E008
    %if ($ - %%insn_00414fba) > 3
        %error "LONG_00414FBA"
    %endif
    times 3 - ($ - %%insn_00414fba) db 0
    %%insn_00414fbd:
    and ebp,0xff ; 00414FBD 81E5FF000000
    %if ($ - %%insn_00414fbd) > 6
        %error "LONG_00414FBD"
    %endif
    times 6 - ($ - %%insn_00414fbd) db 0
    db 0x0B, 0xC5 ; 00414FC3 0BC5 | or eax,ebp | encoding preserved
    db 0x3B, 0xF8 ; 00414FC5 3BF8 | cmp edi,eax | encoding preserved
    %%insn_00414fc7:
    jnz short 0x414fda ; 00414FC7 7511
    %if ($ - %%insn_00414fc7) > 2
        %error "LONG_00414FC7"
    %endif
    times 2 - ($ - %%insn_00414fc7) db 0
    %%insn_00414fc9:
    lea esi,[edx-0x1] ; 00414FC9 8D72FF
    %if ($ - %%insn_00414fc9) > 3
        %error "LONG_00414FC9"
    %endif
    times 3 - ($ - %%insn_00414fc9) db 0
    %%insn_00414fcc:
    jmp short 0x414fda ; 00414FCC EB0C
    %if ($ - %%insn_00414fcc) > 2
        %error "LONG_00414FCC"
    %endif
    times 2 - ($ - %%insn_00414fcc) db 0
    %%insn_00414fce:
    test esi,esi ; 00414FCE 85F6
    %if ($ - %%insn_00414fce) > 2
        %error "LONG_00414FCE"
    %endif
    times 2 - ($ - %%insn_00414fce) db 0
    %%insn_00414fd0:
    jnz short 0x414fda ; 00414FD0 7508
    %if ($ - %%insn_00414fd0) > 2
        %error "LONG_00414FD0"
    %endif
    times 2 - ($ - %%insn_00414fd0) db 0
    %%insn_00414fd2:
    jmp short 0x414fd8 ; 00414FD2 EB04
    %if ($ - %%insn_00414fd2) > 2
        %error "LONG_00414FD2"
    %endif
    times 2 - ($ - %%insn_00414fd2) db 0
    db 0x3B, 0xF8 ; 00414FD4 3BF8 | cmp edi,eax | encoding preserved
    %%insn_00414fd6:
    jnz short 0x414fda ; 00414FD6 7502
    %if ($ - %%insn_00414fd6) > 2
        %error "LONG_00414FD6"
    %endif
    times 2 - ($ - %%insn_00414fd6) db 0
    db 0x8B, 0xF2 ; 00414FD8 8BF2 | mov esi,edx | encoding preserved
    %%insn_00414fda:
    inc edx ; 00414FDA 42
    %if ($ - %%insn_00414fda) > 1
        %error "LONG_00414FDA"
    %endif
    times 1 - ($ - %%insn_00414fda) db 0
    %%insn_00414fdb:
    test cl,cl ; 00414FDB 84C9
    %if ($ - %%insn_00414fdb) > 2
        %error "LONG_00414FDB"
    %endif
    times 2 - ($ - %%insn_00414fdb) db 0
    %%insn_00414fdd:
    jnz short 0x414f97 ; 00414FDD 75B8
    %if ($ - %%insn_00414fdd) > 2
        %error "LONG_00414FDD"
    %endif
    times 2 - ($ - %%insn_00414fdd) db 0
    %%insn_00414fdf:
    push dword 0x19 ; 00414FDF 6A19
    %if ($ - %%insn_00414fdf) > 2
        %error "LONG_00414FDF"
    %endif
    times 2 - ($ - %%insn_00414fdf) db 0
    %%insn_00414fe1:
    call 0x40df80 ; 00414FE1 E89A8FFFFF
    %if ($ - %%insn_00414fe1) > 5
        %error "LONG_00414FE1"
    %endif
    times 5 - ($ - %%insn_00414fe1) db 0
    %%insn_00414fe6:
    add esp,0x4 ; 00414FE6 83C404
    %if ($ - %%insn_00414fe6) > 3
        %error "LONG_00414FE6"
    %endif
    times 3 - ($ - %%insn_00414fe6) db 0
    db 0x8B, 0xC6 ; 00414FE9 8BC6 | mov eax,esi | encoding preserved
    %%insn_00414feb:
    pop ebx ; 00414FEB 5B
    %if ($ - %%insn_00414feb) > 1
        %error "LONG_00414FEB"
    %endif
    times 1 - ($ - %%insn_00414feb) db 0
    %%insn_00414fec:
    pop ebp ; 00414FEC 5D
    %if ($ - %%insn_00414fec) > 1
        %error "LONG_00414FEC"
    %endif
    times 1 - ($ - %%insn_00414fec) db 0
    %%insn_00414fed:
    pop edi ; 00414FED 5F
    %if ($ - %%insn_00414fed) > 1
        %error "LONG_00414FED"
    %endif
    times 1 - ($ - %%insn_00414fed) db 0
    %%insn_00414fee:
    pop esi ; 00414FEE 5E
    %if ($ - %%insn_00414fee) > 1
        %error "LONG_00414FEE"
    %endif
    times 1 - ($ - %%insn_00414fee) db 0
    %%insn_00414fef:
    ret ; 00414FEF C3
    %if ($ - %%insn_00414fef) > 1
        %error "LONG_00414FEF"
    %endif
    times 1 - ($ - %%insn_00414fef) db 0
    %if ($ - %%fragment_start) != 144
        %error "function fragment size drift: 00414F60"
    %endif
%endmacro
