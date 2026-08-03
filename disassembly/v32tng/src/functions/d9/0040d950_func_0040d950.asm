; PE virtual entry 0040D950
; Ghidra working symbol: FUN_0040d950
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040d950_part_00 0
    %%fragment_start:
func_0040d950:
    %%insn_0040d950:
    mov eax,[esp+0x4] ; 0040D950 8B442404
    %if ($ - %%insn_0040d950) > 4
        %error "LONG_0040D950"
    %endif
    times 4 - ($ - %%insn_0040d950) db 0
    %%insn_0040d954:
    sub esp,0x10c ; 0040D954 81EC0C010000
    %if ($ - %%insn_0040d954) > 6
        %error "LONG_0040D954"
    %endif
    times 6 - ($ - %%insn_0040d954) db 0
    %%insn_0040d95a:
    push eax ; 0040D95A 50
    %if ($ - %%insn_0040d95a) > 1
        %error "LONG_0040D95A"
    %endif
    times 1 - ($ - %%insn_0040d95a) db 0
    %%insn_0040d95b:
    call dword near [0x424424] ; 0040D95B FF1524444200
    %if ($ - %%insn_0040d95b) > 6
        %error "LONG_0040D95B"
    %endif
    times 6 - ($ - %%insn_0040d95b) db 0
    %%insn_0040d961:
    test eax,eax ; 0040D961 85C0
    %if ($ - %%insn_0040d961) > 2
        %error "LONG_0040D961"
    %endif
    times 2 - ($ - %%insn_0040d961) db 0
    %%insn_0040d963:
    jz short 0x40d9d0 ; 0040D963 746B
    %if ($ - %%insn_0040d963) > 2
        %error "LONG_0040D963"
    %endif
    times 2 - ($ - %%insn_0040d963) db 0
    %%insn_0040d965:
    lea ecx,[esp+0x4] ; 0040D965 8D4C2404
    %if ($ - %%insn_0040d965) > 4
        %error "LONG_0040D965"
    %endif
    times 4 - ($ - %%insn_0040d965) db 0
    %%insn_0040d969:
    push ecx ; 0040D969 51
    %if ($ - %%insn_0040d969) > 1
        %error "LONG_0040D969"
    %endif
    times 1 - ($ - %%insn_0040d969) db 0
    %%insn_0040d96a:
    push dword 0x105 ; 0040D96A 6805010000
    %if ($ - %%insn_0040d96a) > 5
        %error "LONG_0040D96A"
    %endif
    times 5 - ($ - %%insn_0040d96a) db 0
    %%insn_0040d96f:
    call dword near [0x424428] ; 0040D96F FF1528444200
    %if ($ - %%insn_0040d96f) > 6
        %error "LONG_0040D96F"
    %endif
    times 6 - ($ - %%insn_0040d96f) db 0
    %%insn_0040d975:
    test eax,eax ; 0040D975 85C0
    %if ($ - %%insn_0040d975) > 2
        %error "LONG_0040D975"
    %endif
    times 2 - ($ - %%insn_0040d975) db 0
    %%insn_0040d977:
    jz short 0x40d9d0 ; 0040D977 7457
    %if ($ - %%insn_0040d977) > 2
        %error "LONG_0040D977"
    %endif
    times 2 - ($ - %%insn_0040d977) db 0
    %%insn_0040d979:
    mov eax,[esp+0x4] ; 0040D979 8B442404
    %if ($ - %%insn_0040d979) > 4
        %error "LONG_0040D979"
    %endif
    times 4 - ($ - %%insn_0040d979) db 0
    %%insn_0040d97d:
    cmp al,0x5c ; 0040D97D 3C5C
    %if ($ - %%insn_0040d97d) > 2
        %error "LONG_0040D97D"
    %endif
    times 2 - ($ - %%insn_0040d97d) db 0
    %%insn_0040d97f:
    jz short 0x40d985 ; 0040D97F 7404
    %if ($ - %%insn_0040d97f) > 2
        %error "LONG_0040D97F"
    %endif
    times 2 - ($ - %%insn_0040d97f) db 0
    %%insn_0040d981:
    cmp al,0x2f ; 0040D981 3C2F
    %if ($ - %%insn_0040d981) > 2
        %error "LONG_0040D981"
    %endif
    times 2 - ($ - %%insn_0040d981) db 0
    %%insn_0040d983:
    jnz short 0x40d992 ; 0040D983 750D
    %if ($ - %%insn_0040d983) > 2
        %error "LONG_0040D983"
    %endif
    times 2 - ($ - %%insn_0040d983) db 0
    db 0x3A, 0xC4 ; 0040D985 3AC4 | cmp al,ah | encoding preserved
    %%insn_0040d987:
    jnz short 0x40d992 ; 0040D987 7509
    %if ($ - %%insn_0040d987) > 2
        %error "LONG_0040D987"
    %endif
    times 2 - ($ - %%insn_0040d987) db 0
    db 0x33, 0xC0 ; 0040D989 33C0 | xor eax,eax | encoding preserved
    %%insn_0040d98b:
    add esp,0x10c ; 0040D98B 81C40C010000
    %if ($ - %%insn_0040d98b) > 6
        %error "LONG_0040D98B"
    %endif
    times 6 - ($ - %%insn_0040d98b) db 0
    %%insn_0040d991:
    ret ; 0040D991 C3
    %if ($ - %%insn_0040d991) > 1
        %error "LONG_0040D991"
    %endif
    times 1 - ($ - %%insn_0040d991) db 0
    %%insn_0040d992:
    and eax,0xff ; 0040D992 25FF000000
    %if ($ - %%insn_0040d992) > 5
        %error "LONG_0040D992"
    %endif
    times 5 - ($ - %%insn_0040d992) db 0
    db 0xC6, 0x44, 0x24, 0x00, 0x3D ; 0040D997 C64424003D | mov byte [esp+0x0],0x3d | encoding preserved
    %%insn_0040d99c:
    push eax ; 0040D99C 50
    %if ($ - %%insn_0040d99c) > 1
        %error "LONG_0040D99C"
    %endif
    times 1 - ($ - %%insn_0040d99c) db 0
    %%insn_0040d99d:
    call 0x411870 ; 0040D99D E8CE3E0000
    %if ($ - %%insn_0040d99d) > 5
        %error "LONG_0040D99D"
    %endif
    times 5 - ($ - %%insn_0040d99d) db 0
    %%insn_0040d9a2:
    add esp,0x4 ; 0040D9A2 83C404
    %if ($ - %%insn_0040d9a2) > 3
        %error "LONG_0040D9A2"
    %endif
    times 3 - ($ - %%insn_0040d9a2) db 0
    %%insn_0040d9a5:
    mov [esp+0x1],al ; 0040D9A5 88442401
    %if ($ - %%insn_0040d9a5) > 4
        %error "LONG_0040D9A5"
    %endif
    times 4 - ($ - %%insn_0040d9a5) db 0
    %%insn_0040d9a9:
    lea edx,[esp+0x4] ; 0040D9A9 8D542404
    %if ($ - %%insn_0040d9a9) > 4
        %error "LONG_0040D9A9"
    %endif
    times 4 - ($ - %%insn_0040d9a9) db 0
    db 0x8D, 0x44, 0x24, 0x00 ; 0040D9AD 8D442400 | lea eax,[esp+0x0] | encoding preserved
    %%insn_0040d9b1:
    push edx ; 0040D9B1 52
    %if ($ - %%insn_0040d9b1) > 1
        %error "LONG_0040D9B1"
    %endif
    times 1 - ($ - %%insn_0040d9b1) db 0
    %%insn_0040d9b2:
    push eax ; 0040D9B2 50
    %if ($ - %%insn_0040d9b2) > 1
        %error "LONG_0040D9B2"
    %endif
    times 1 - ($ - %%insn_0040d9b2) db 0
    %%insn_0040d9b3:
    mov byte [esp+0xa],0x3a ; 0040D9B3 C644240A3A
    %if ($ - %%insn_0040d9b3) > 5
        %error "LONG_0040D9B3"
    %endif
    times 5 - ($ - %%insn_0040d9b3) db 0
    %%insn_0040d9b8:
    mov byte [esp+0xb],0x0 ; 0040D9B8 C644240B00
    %if ($ - %%insn_0040d9b8) > 5
        %error "LONG_0040D9B8"
    %endif
    times 5 - ($ - %%insn_0040d9b8) db 0
    %%insn_0040d9bd:
    call dword near [0x42442c] ; 0040D9BD FF152C444200
    %if ($ - %%insn_0040d9bd) > 6
        %error "LONG_0040D9BD"
    %endif
    times 6 - ($ - %%insn_0040d9bd) db 0
    %%insn_0040d9c3:
    test eax,eax ; 0040D9C3 85C0
    %if ($ - %%insn_0040d9c3) > 2
        %error "LONG_0040D9C3"
    %endif
    times 2 - ($ - %%insn_0040d9c3) db 0
    %%insn_0040d9c5:
    jz short 0x40d9d0 ; 0040D9C5 7409
    %if ($ - %%insn_0040d9c5) > 2
        %error "LONG_0040D9C5"
    %endif
    times 2 - ($ - %%insn_0040d9c5) db 0
    db 0x33, 0xC0 ; 0040D9C7 33C0 | xor eax,eax | encoding preserved
    %%insn_0040d9c9:
    add esp,0x10c ; 0040D9C9 81C40C010000
    %if ($ - %%insn_0040d9c9) > 6
        %error "LONG_0040D9C9"
    %endif
    times 6 - ($ - %%insn_0040d9c9) db 0
    %%insn_0040d9cf:
    ret ; 0040D9CF C3
    %if ($ - %%insn_0040d9cf) > 1
        %error "LONG_0040D9CF"
    %endif
    times 1 - ($ - %%insn_0040d9cf) db 0
    %%insn_0040d9d0:
    call dword near [0x4243c4] ; 0040D9D0 FF15C4434200
    %if ($ - %%insn_0040d9d0) > 6
        %error "LONG_0040D9D0"
    %endif
    times 6 - ($ - %%insn_0040d9d0) db 0
    %%insn_0040d9d6:
    push eax ; 0040D9D6 50
    %if ($ - %%insn_0040d9d6) > 1
        %error "LONG_0040D9D6"
    %endif
    times 1 - ($ - %%insn_0040d9d6) db 0
    %%insn_0040d9d7:
    call 0x410d90 ; 0040D9D7 E8B4330000
    %if ($ - %%insn_0040d9d7) > 5
        %error "LONG_0040D9D7"
    %endif
    times 5 - ($ - %%insn_0040d9d7) db 0
    %%insn_0040d9dc:
    add esp,0x4 ; 0040D9DC 83C404
    %if ($ - %%insn_0040d9dc) > 3
        %error "LONG_0040D9DC"
    %endif
    times 3 - ($ - %%insn_0040d9dc) db 0
    %%insn_0040d9df:
    or eax,0xffffffffffffffff ; 0040D9DF 83C8FF
    %if ($ - %%insn_0040d9df) > 3
        %error "LONG_0040D9DF"
    %endif
    times 3 - ($ - %%insn_0040d9df) db 0
    %%insn_0040d9e2:
    add esp,0x10c ; 0040D9E2 81C40C010000
    %if ($ - %%insn_0040d9e2) > 6
        %error "LONG_0040D9E2"
    %endif
    times 6 - ($ - %%insn_0040d9e2) db 0
    %%insn_0040d9e8:
    ret ; 0040D9E8 C3
    %if ($ - %%insn_0040d9e8) > 1
        %error "LONG_0040D9E8"
    %endif
    times 1 - ($ - %%insn_0040d9e8) db 0
    %if ($ - %%fragment_start) != 153
        %error "function fragment size drift: 0040D950"
    %endif
%endmacro
