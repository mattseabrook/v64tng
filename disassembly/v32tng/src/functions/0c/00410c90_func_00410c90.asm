; PE virtual entry 00410C90
; Ghidra working symbol: FUN_00410c90
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00410c90_part_00 0
    %%fragment_start:
func_00410c90:
    %%insn_00410c90:
    mov eax,[0x420f20] ; 00410C90 A1200F4200
    %if ($ - %%insn_00410c90) > 5
        %error "LONG_00410C90"
    %endif
    times 5 - ($ - %%insn_00410c90) db 0
    %%insn_00410c95:
    sub esp,0x8 ; 00410C95 83EC08
    %if ($ - %%insn_00410c95) > 3
        %error "LONG_00410C95"
    %endif
    times 3 - ($ - %%insn_00410c95) db 0
    %%insn_00410c98:
    test eax,eax ; 00410C98 85C0
    %if ($ - %%insn_00410c98) > 2
        %error "LONG_00410C98"
    %endif
    times 2 - ($ - %%insn_00410c98) db 0
    %%insn_00410c9a:
    push ebx ; 00410C9A 53
    %if ($ - %%insn_00410c9a) > 1
        %error "LONG_00410C9A"
    %endif
    times 1 - ($ - %%insn_00410c9a) db 0
    %%insn_00410c9b:
    jnz short 0x410cbb ; 00410C9B 751E
    %if ($ - %%insn_00410c9b) > 2
        %error "LONG_00410C9B"
    %endif
    times 2 - ($ - %%insn_00410c9b) db 0
    %%insn_00410c9d:
    mov eax,[esp+0x10] ; 00410C9D 8B442410
    %if ($ - %%insn_00410c9d) > 4
        %error "LONG_00410C9D"
    %endif
    times 4 - ($ - %%insn_00410c9d) db 0
    %%insn_00410ca1:
    cmp eax,0x41 ; 00410CA1 83F841
    %if ($ - %%insn_00410ca1) > 3
        %error "LONG_00410CA1"
    %endif
    times 3 - ($ - %%insn_00410ca1) db 0
    %%insn_00410ca4:
    jl 0x410d87 ; 00410CA4 0F8CDD000000
    %if ($ - %%insn_00410ca4) > 6
        %error "LONG_00410CA4"
    %endif
    times 6 - ($ - %%insn_00410ca4) db 0
    %%insn_00410caa:
    cmp eax,0x5a ; 00410CAA 83F85A
    %if ($ - %%insn_00410caa) > 3
        %error "LONG_00410CAA"
    %endif
    times 3 - ($ - %%insn_00410caa) db 0
    %%insn_00410cad:
    jg 0x410d87 ; 00410CAD 0F8FD4000000
    %if ($ - %%insn_00410cad) > 6
        %error "LONG_00410CAD"
    %endif
    times 6 - ($ - %%insn_00410cad) db 0
    %%insn_00410cb3:
    add eax,0x20 ; 00410CB3 83C020
    %if ($ - %%insn_00410cb3) > 3
        %error "LONG_00410CB3"
    %endif
    times 3 - ($ - %%insn_00410cb3) db 0
    %%insn_00410cb6:
    pop ebx ; 00410CB6 5B
    %if ($ - %%insn_00410cb6) > 1
        %error "LONG_00410CB6"
    %endif
    times 1 - ($ - %%insn_00410cb6) db 0
    %%insn_00410cb7:
    add esp,0x8 ; 00410CB7 83C408
    %if ($ - %%insn_00410cb7) > 3
        %error "LONG_00410CB7"
    %endif
    times 3 - ($ - %%insn_00410cb7) db 0
    %%insn_00410cba:
    ret ; 00410CBA C3
    %if ($ - %%insn_00410cba) > 1
        %error "LONG_00410CBA"
    %endif
    times 1 - ($ - %%insn_00410cba) db 0
    %%insn_00410cbb:
    mov ebx,[esp+0x10] ; 00410CBB 8B5C2410
    %if ($ - %%insn_00410cbb) > 4
        %error "LONG_00410CBB"
    %endif
    times 4 - ($ - %%insn_00410cbb) db 0
    %%insn_00410cbf:
    cmp ebx,0x100 ; 00410CBF 81FB00010000
    %if ($ - %%insn_00410cbf) > 6
        %error "LONG_00410CBF"
    %endif
    times 6 - ($ - %%insn_00410cbf) db 0
    %%insn_00410cc5:
    jnl short 0x410cf3 ; 00410CC5 7D2C
    %if ($ - %%insn_00410cc5) > 2
        %error "LONG_00410CC5"
    %endif
    times 2 - ($ - %%insn_00410cc5) db 0
    %%insn_00410cc7:
    cmp dword [0x41f044],0x1 ; 00410CC7 833D44F0410001
    %if ($ - %%insn_00410cc7) > 7
        %error "LONG_00410CC7"
    %endif
    times 7 - ($ - %%insn_00410cc7) db 0
    %%insn_00410cce:
    jng short 0x410cdd ; 00410CCE 7E0D
    %if ($ - %%insn_00410cce) > 2
        %error "LONG_00410CCE"
    %endif
    times 2 - ($ - %%insn_00410cce) db 0
    %%insn_00410cd0:
    push dword 0x1 ; 00410CD0 6A01
    %if ($ - %%insn_00410cd0) > 2
        %error "LONG_00410CD0"
    %endif
    times 2 - ($ - %%insn_00410cd0) db 0
    %%insn_00410cd2:
    push ebx ; 00410CD2 53
    %if ($ - %%insn_00410cd2) > 1
        %error "LONG_00410CD2"
    %endif
    times 1 - ($ - %%insn_00410cd2) db 0
    %%insn_00410cd3:
    call 0x414da0 ; 00410CD3 E8C8400000
    %if ($ - %%insn_00410cd3) > 5
        %error "LONG_00410CD3"
    %endif
    times 5 - ($ - %%insn_00410cd3) db 0
    %%insn_00410cd8:
    add esp,0x8 ; 00410CD8 83C408
    %if ($ - %%insn_00410cd8) > 3
        %error "LONG_00410CD8"
    %endif
    times 3 - ($ - %%insn_00410cd8) db 0
    %%insn_00410cdb:
    jmp short 0x410ce8 ; 00410CDB EB0B
    %if ($ - %%insn_00410cdb) > 2
        %error "LONG_00410CDB"
    %endif
    times 2 - ($ - %%insn_00410cdb) db 0
    %%insn_00410cdd:
    mov eax,[0x41e640] ; 00410CDD A140E64100
    %if ($ - %%insn_00410cdd) > 5
        %error "LONG_00410CDD"
    %endif
    times 5 - ($ - %%insn_00410cdd) db 0
    %%insn_00410ce2:
    mov al,[eax+ebx*2] ; 00410CE2 8A0458
    %if ($ - %%insn_00410ce2) > 3
        %error "LONG_00410CE2"
    %endif
    times 3 - ($ - %%insn_00410ce2) db 0
    %%insn_00410ce5:
    and eax,0x1 ; 00410CE5 83E001
    %if ($ - %%insn_00410ce5) > 3
        %error "LONG_00410CE5"
    %endif
    times 3 - ($ - %%insn_00410ce5) db 0
    %%insn_00410ce8:
    test eax,eax ; 00410CE8 85C0
    %if ($ - %%insn_00410ce8) > 2
        %error "LONG_00410CE8"
    %endif
    times 2 - ($ - %%insn_00410ce8) db 0
    %%insn_00410cea:
    jnz short 0x410cf3 ; 00410CEA 7507
    %if ($ - %%insn_00410cea) > 2
        %error "LONG_00410CEA"
    %endif
    times 2 - ($ - %%insn_00410cea) db 0
    db 0x8B, 0xC3 ; 00410CEC 8BC3 | mov eax,ebx | encoding preserved
    %%insn_00410cee:
    pop ebx ; 00410CEE 5B
    %if ($ - %%insn_00410cee) > 1
        %error "LONG_00410CEE"
    %endif
    times 1 - ($ - %%insn_00410cee) db 0
    %%insn_00410cef:
    add esp,0x8 ; 00410CEF 83C408
    %if ($ - %%insn_00410cef) > 3
        %error "LONG_00410CEF"
    %endif
    times 3 - ($ - %%insn_00410cef) db 0
    %%insn_00410cf2:
    ret ; 00410CF2 C3
    %if ($ - %%insn_00410cf2) > 1
        %error "LONG_00410CF2"
    %endif
    times 1 - ($ - %%insn_00410cf2) db 0
    %%insn_00410cf3:
    mov edx,[0x41e640] ; 00410CF3 8B1540E64100
    %if ($ - %%insn_00410cf3) > 6
        %error "LONG_00410CF3"
    %endif
    times 6 - ($ - %%insn_00410cf3) db 0
    db 0x8B, 0xC3 ; 00410CF9 8BC3 | mov eax,ebx | encoding preserved
    %%insn_00410cfb:
    sar eax,byte 0x8 ; 00410CFB C1F808
    %if ($ - %%insn_00410cfb) > 3
        %error "LONG_00410CFB"
    %endif
    times 3 - ($ - %%insn_00410cfb) db 0
    db 0x8B, 0xC8 ; 00410CFE 8BC8 | mov ecx,eax | encoding preserved
    %%insn_00410d00:
    and ecx,0xff ; 00410D00 81E1FF000000
    %if ($ - %%insn_00410d00) > 6
        %error "LONG_00410D00"
    %endif
    times 6 - ($ - %%insn_00410d00) db 0
    %%insn_00410d06:
    test byte [edx+ecx*2+0x1],0x80 ; 00410D06 F6444A0180
    %if ($ - %%insn_00410d06) > 5
        %error "LONG_00410D06"
    %endif
    times 5 - ($ - %%insn_00410d06) db 0
    %%insn_00410d0b:
    jz short 0x410d21 ; 00410D0B 7414
    %if ($ - %%insn_00410d0b) > 2
        %error "LONG_00410D0B"
    %endif
    times 2 - ($ - %%insn_00410d0b) db 0
    %%insn_00410d0d:
    mov [esp+0x10],al ; 00410D0D 88442410
    %if ($ - %%insn_00410d0d) > 4
        %error "LONG_00410D0D"
    %endif
    times 4 - ($ - %%insn_00410d0d) db 0
    %%insn_00410d11:
    mov [esp+0x11],bl ; 00410D11 885C2411
    %if ($ - %%insn_00410d11) > 4
        %error "LONG_00410D11"
    %endif
    times 4 - ($ - %%insn_00410d11) db 0
    %%insn_00410d15:
    mov byte [esp+0x12],0x0 ; 00410D15 C644241200
    %if ($ - %%insn_00410d15) > 5
        %error "LONG_00410D15"
    %endif
    times 5 - ($ - %%insn_00410d15) db 0
    %%insn_00410d1a:
    mov eax,0x2 ; 00410D1A B802000000
    %if ($ - %%insn_00410d1a) > 5
        %error "LONG_00410D1A"
    %endif
    times 5 - ($ - %%insn_00410d1a) db 0
    %%insn_00410d1f:
    jmp short 0x410d2f ; 00410D1F EB0E
    %if ($ - %%insn_00410d1f) > 2
        %error "LONG_00410D1F"
    %endif
    times 2 - ($ - %%insn_00410d1f) db 0
    %%insn_00410d21:
    mov [esp+0x10],bl ; 00410D21 885C2410
    %if ($ - %%insn_00410d21) > 4
        %error "LONG_00410D21"
    %endif
    times 4 - ($ - %%insn_00410d21) db 0
    %%insn_00410d25:
    mov byte [esp+0x11],0x0 ; 00410D25 C644241100
    %if ($ - %%insn_00410d25) > 5
        %error "LONG_00410D25"
    %endif
    times 5 - ($ - %%insn_00410d25) db 0
    %%insn_00410d2a:
    mov eax,0x1 ; 00410D2A B801000000
    %if ($ - %%insn_00410d2a) > 5
        %error "LONG_00410D2A"
    %endif
    times 5 - ($ - %%insn_00410d2a) db 0
    %%insn_00410d2f:
    push dword 0x0 ; 00410D2F 6A00
    %if ($ - %%insn_00410d2f) > 2
        %error "LONG_00410D2F"
    %endif
    times 2 - ($ - %%insn_00410d2f) db 0
    %%insn_00410d31:
    lea ecx,[esp+0x8] ; 00410D31 8D4C2408
    %if ($ - %%insn_00410d31) > 4
        %error "LONG_00410D31"
    %endif
    times 4 - ($ - %%insn_00410d31) db 0
    %%insn_00410d35:
    push dword 0x3 ; 00410D35 6A03
    %if ($ - %%insn_00410d35) > 2
        %error "LONG_00410D35"
    %endif
    times 2 - ($ - %%insn_00410d35) db 0
    %%insn_00410d37:
    push ecx ; 00410D37 51
    %if ($ - %%insn_00410d37) > 1
        %error "LONG_00410D37"
    %endif
    times 1 - ($ - %%insn_00410d37) db 0
    %%insn_00410d38:
    lea edx,[esp+0x1c] ; 00410D38 8D54241C
    %if ($ - %%insn_00410d38) > 4
        %error "LONG_00410D38"
    %endif
    times 4 - ($ - %%insn_00410d38) db 0
    %%insn_00410d3c:
    push eax ; 00410D3C 50
    %if ($ - %%insn_00410d3c) > 1
        %error "LONG_00410D3C"
    %endif
    times 1 - ($ - %%insn_00410d3c) db 0
    %%insn_00410d3d:
    mov eax,[0x420f20] ; 00410D3D A1200F4200
    %if ($ - %%insn_00410d3d) > 5
        %error "LONG_00410D3D"
    %endif
    times 5 - ($ - %%insn_00410d3d) db 0
    %%insn_00410d42:
    push edx ; 00410D42 52
    %if ($ - %%insn_00410d42) > 1
        %error "LONG_00410D42"
    %endif
    times 1 - ($ - %%insn_00410d42) db 0
    %%insn_00410d43:
    push dword 0x100 ; 00410D43 6800010000
    %if ($ - %%insn_00410d43) > 5
        %error "LONG_00410D43"
    %endif
    times 5 - ($ - %%insn_00410d43) db 0
    %%insn_00410d48:
    push eax ; 00410D48 50
    %if ($ - %%insn_00410d48) > 1
        %error "LONG_00410D48"
    %endif
    times 1 - ($ - %%insn_00410d48) db 0
    %%insn_00410d49:
    call 0x414b50 ; 00410D49 E8023E0000
    %if ($ - %%insn_00410d49) > 5
        %error "LONG_00410D49"
    %endif
    times 5 - ($ - %%insn_00410d49) db 0
    %%insn_00410d4e:
    add esp,0x1c ; 00410D4E 83C41C
    %if ($ - %%insn_00410d4e) > 3
        %error "LONG_00410D4E"
    %endif
    times 3 - ($ - %%insn_00410d4e) db 0
    %%insn_00410d51:
    test eax,eax ; 00410D51 85C0
    %if ($ - %%insn_00410d51) > 2
        %error "LONG_00410D51"
    %endif
    times 2 - ($ - %%insn_00410d51) db 0
    %%insn_00410d53:
    jnz short 0x410d5c ; 00410D53 7507
    %if ($ - %%insn_00410d53) > 2
        %error "LONG_00410D53"
    %endif
    times 2 - ($ - %%insn_00410d53) db 0
    db 0x8B, 0xC3 ; 00410D55 8BC3 | mov eax,ebx | encoding preserved
    %%insn_00410d57:
    pop ebx ; 00410D57 5B
    %if ($ - %%insn_00410d57) > 1
        %error "LONG_00410D57"
    %endif
    times 1 - ($ - %%insn_00410d57) db 0
    %%insn_00410d58:
    add esp,0x8 ; 00410D58 83C408
    %if ($ - %%insn_00410d58) > 3
        %error "LONG_00410D58"
    %endif
    times 3 - ($ - %%insn_00410d58) db 0
    %%insn_00410d5b:
    ret ; 00410D5B C3
    %if ($ - %%insn_00410d5b) > 1
        %error "LONG_00410D5B"
    %endif
    times 1 - ($ - %%insn_00410d5b) db 0
    %%insn_00410d5c:
    cmp eax,0x1 ; 00410D5C 83F801
    %if ($ - %%insn_00410d5c) > 3
        %error "LONG_00410D5C"
    %endif
    times 3 - ($ - %%insn_00410d5c) db 0
    %%insn_00410d5f:
    jnz short 0x410d6f ; 00410D5F 750E
    %if ($ - %%insn_00410d5f) > 2
        %error "LONG_00410D5F"
    %endif
    times 2 - ($ - %%insn_00410d5f) db 0
    %%insn_00410d61:
    mov eax,[esp+0x4] ; 00410D61 8B442404
    %if ($ - %%insn_00410d61) > 4
        %error "LONG_00410D61"
    %endif
    times 4 - ($ - %%insn_00410d61) db 0
    %%insn_00410d65:
    and eax,0xff ; 00410D65 25FF000000
    %if ($ - %%insn_00410d65) > 5
        %error "LONG_00410D65"
    %endif
    times 5 - ($ - %%insn_00410d65) db 0
    %%insn_00410d6a:
    pop ebx ; 00410D6A 5B
    %if ($ - %%insn_00410d6a) > 1
        %error "LONG_00410D6A"
    %endif
    times 1 - ($ - %%insn_00410d6a) db 0
    %%insn_00410d6b:
    add esp,0x8 ; 00410D6B 83C408
    %if ($ - %%insn_00410d6b) > 3
        %error "LONG_00410D6B"
    %endif
    times 3 - ($ - %%insn_00410d6b) db 0
    %%insn_00410d6e:
    ret ; 00410D6E C3
    %if ($ - %%insn_00410d6e) > 1
        %error "LONG_00410D6E"
    %endif
    times 1 - ($ - %%insn_00410d6e) db 0
    %%insn_00410d6f:
    mov eax,[esp+0x5] ; 00410D6F 8B442405
    %if ($ - %%insn_00410d6f) > 4
        %error "LONG_00410D6F"
    %endif
    times 4 - ($ - %%insn_00410d6f) db 0
    %%insn_00410d73:
    mov ecx,[esp+0x4] ; 00410D73 8B4C2404
    %if ($ - %%insn_00410d73) > 4
        %error "LONG_00410D73"
    %endif
    times 4 - ($ - %%insn_00410d73) db 0
    %%insn_00410d77:
    and eax,0xff ; 00410D77 25FF000000
    %if ($ - %%insn_00410d77) > 5
        %error "LONG_00410D77"
    %endif
    times 5 - ($ - %%insn_00410d77) db 0
    %%insn_00410d7c:
    and ecx,0xff ; 00410D7C 81E1FF000000
    %if ($ - %%insn_00410d7c) > 6
        %error "LONG_00410D7C"
    %endif
    times 6 - ($ - %%insn_00410d7c) db 0
    %%insn_00410d82:
    shl eax,byte 0x8 ; 00410D82 C1E008
    %if ($ - %%insn_00410d82) > 3
        %error "LONG_00410D82"
    %endif
    times 3 - ($ - %%insn_00410d82) db 0
    db 0x0B, 0xC1 ; 00410D85 0BC1 | or eax,ecx | encoding preserved
    %%insn_00410d87:
    pop ebx ; 00410D87 5B
    %if ($ - %%insn_00410d87) > 1
        %error "LONG_00410D87"
    %endif
    times 1 - ($ - %%insn_00410d87) db 0
    %%insn_00410d88:
    add esp,0x8 ; 00410D88 83C408
    %if ($ - %%insn_00410d88) > 3
        %error "LONG_00410D88"
    %endif
    times 3 - ($ - %%insn_00410d88) db 0
    %%insn_00410d8b:
    ret ; 00410D8B C3
    %if ($ - %%insn_00410d8b) > 1
        %error "LONG_00410D8B"
    %endif
    times 1 - ($ - %%insn_00410d8b) db 0
    %if ($ - %%fragment_start) != 252
        %error "function fragment size drift: 00410C90"
    %endif
%endmacro
