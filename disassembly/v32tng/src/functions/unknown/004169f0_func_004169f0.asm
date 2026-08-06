; PE virtual entry 004169F0
; Ghidra working symbol: FUN_004169f0
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_004169f0_part_00 0
    %%fragment_start:
func_004169f0:
    %%insn_004169f0:
    mov eax,[esp+0x4] ; 004169F0 8B442404
    %if ($ - %%insn_004169f0) > 4
        %error "LONG_004169F0"
    %endif
    times 4 - ($ - %%insn_004169f0) db 0
    %%insn_004169f4:
    sub esp,0x84 ; 004169F4 81EC84000000
    %if ($ - %%insn_004169f4) > 6
        %error "LONG_004169F4"
    %endif
    times 6 - ($ - %%insn_004169f4) db 0
    %%insn_004169fa:
    push ebx ; 004169FA 53
    %if ($ - %%insn_004169fa) > 1
        %error "LONG_004169FA"
    %endif
    times 1 - ($ - %%insn_004169fa) db 0
    %%insn_004169fb:
    push ebp ; 004169FB 55
    %if ($ - %%insn_004169fb) > 1
        %error "LONG_004169FB"
    %endif
    times 1 - ($ - %%insn_004169fb) db 0
    %%insn_004169fc:
    mov ebp,0x1 ; 004169FC BD01000000
    %if ($ - %%insn_004169fc) > 5
        %error "LONG_004169FC"
    %endif
    times 5 - ($ - %%insn_004169fc) db 0
    %%insn_00416a01:
    push esi ; 00416A01 56
    %if ($ - %%insn_00416a01) > 1
        %error "LONG_00416A01"
    %endif
    times 1 - ($ - %%insn_00416a01) db 0
    db 0x3B, 0xC5 ; 00416A02 3BC5 | cmp eax,ebp | encoding preserved
    %%insn_00416a04:
    push edi ; 00416A04 57
    %if ($ - %%insn_00416a04) > 1
        %error "LONG_00416A04"
    %endif
    times 1 - ($ - %%insn_00416a04) db 0
    %%insn_00416a05:
    jnz 0x416af0 ; 00416A05 0F85E5000000
    %if ($ - %%insn_00416a05) > 6
        %error "LONG_00416A05"
    %endif
    times 6 - ($ - %%insn_00416a05) db 0
    %%insn_00416a0b:
    mov ebx,[esp+0xa0] ; 00416A0B 8B9C24A0000000
    %if ($ - %%insn_00416a0b) > 7
        %error "LONG_00416A0B"
    %endif
    times 7 - ($ - %%insn_00416a0b) db 0
    %%insn_00416a12:
    mov ebp,[esp+0x9c] ; 00416A12 8BAC249C000000
    %if ($ - %%insn_00416a12) > 7
        %error "LONG_00416A12"
    %endif
    times 7 - ($ - %%insn_00416a12) db 0
    %%insn_00416a19:
    push dword 0x0 ; 00416A19 6A00
    %if ($ - %%insn_00416a19) > 2
        %error "LONG_00416A19"
    %endif
    times 2 - ($ - %%insn_00416a19) db 0
    %%insn_00416a1b:
    lea eax,[esp+0x18] ; 00416A1B 8D442418
    %if ($ - %%insn_00416a1b) > 4
        %error "LONG_00416A1B"
    %endif
    times 4 - ($ - %%insn_00416a1b) db 0
    %%insn_00416a1f:
    push dword 0x80 ; 00416A1F 6880000000
    %if ($ - %%insn_00416a1f) > 5
        %error "LONG_00416A1F"
    %endif
    times 5 - ($ - %%insn_00416a1f) db 0
    %%insn_00416a24:
    push eax ; 00416A24 50
    %if ($ - %%insn_00416a24) > 1
        %error "LONG_00416A24"
    %endif
    times 1 - ($ - %%insn_00416a24) db 0
    %%insn_00416a25:
    push ebx ; 00416A25 53
    %if ($ - %%insn_00416a25) > 1
        %error "LONG_00416A25"
    %endif
    times 1 - ($ - %%insn_00416a25) db 0
    %%insn_00416a26:
    push ebp ; 00416A26 55
    %if ($ - %%insn_00416a26) > 1
        %error "LONG_00416A26"
    %endif
    times 1 - ($ - %%insn_00416a26) db 0
    %%insn_00416a27:
    lea edi,[esp+0x28] ; 00416A27 8D7C2428
    %if ($ - %%insn_00416a27) > 4
        %error "LONG_00416A27"
    %endif
    times 4 - ($ - %%insn_00416a27) db 0
    %%insn_00416a2b:
    mov dword [esp+0x24],0x0 ; 00416A2B C744242400000000
    %if ($ - %%insn_00416a2b) > 8
        %error "LONG_00416A2B"
    %endif
    times 8 - ($ - %%insn_00416a2b) db 0
    %%insn_00416a33:
    call 0x4171c0 ; 00416A33 E888070000
    %if ($ - %%insn_00416a33) > 5
        %error "LONG_00416A33"
    %endif
    times 5 - ($ - %%insn_00416a33) db 0
    db 0x8B, 0xF0 ; 00416A38 8BF0 | mov esi,eax | encoding preserved
    %%insn_00416a3a:
    add esp,0x14 ; 00416A3A 83C414
    %if ($ - %%insn_00416a3a) > 3
        %error "LONG_00416A3A"
    %endif
    times 3 - ($ - %%insn_00416a3a) db 0
    %%insn_00416a3d:
    test esi,esi ; 00416A3D 85F6
    %if ($ - %%insn_00416a3d) > 2
        %error "LONG_00416A3D"
    %endif
    times 2 - ($ - %%insn_00416a3d) db 0
    %%insn_00416a3f:
    jnz short 0x416a8a ; 00416A3F 7549
    %if ($ - %%insn_00416a3f) > 2
        %error "LONG_00416A3F"
    %endif
    times 2 - ($ - %%insn_00416a3f) db 0
    %%insn_00416a41:
    call dword near [0x4243c4] ; 00416A41 FF15C4434200
    %if ($ - %%insn_00416a41) > 6
        %error "LONG_00416A41"
    %endif
    times 6 - ($ - %%insn_00416a41) db 0
    %%insn_00416a47:
    cmp eax,0x7a ; 00416A47 83F87A
    %if ($ - %%insn_00416a47) > 3
        %error "LONG_00416A47"
    %endif
    times 3 - ($ - %%insn_00416a47) db 0
    %%insn_00416a4a:
    jnz short 0x416aa0 ; 00416A4A 7554
    %if ($ - %%insn_00416a4a) > 2
        %error "LONG_00416A4A"
    %endif
    times 2 - ($ - %%insn_00416a4a) db 0
    %%insn_00416a4c:
    push esi ; 00416A4C 56
    %if ($ - %%insn_00416a4c) > 1
        %error "LONG_00416A4C"
    %endif
    times 1 - ($ - %%insn_00416a4c) db 0
    %%insn_00416a4d:
    push esi ; 00416A4D 56
    %if ($ - %%insn_00416a4d) > 1
        %error "LONG_00416A4D"
    %endif
    times 1 - ($ - %%insn_00416a4d) db 0
    %%insn_00416a4e:
    push esi ; 00416A4E 56
    %if ($ - %%insn_00416a4e) > 1
        %error "LONG_00416A4E"
    %endif
    times 1 - ($ - %%insn_00416a4e) db 0
    %%insn_00416a4f:
    push ebx ; 00416A4F 53
    %if ($ - %%insn_00416a4f) > 1
        %error "LONG_00416A4F"
    %endif
    times 1 - ($ - %%insn_00416a4f) db 0
    %%insn_00416a50:
    push ebp ; 00416A50 55
    %if ($ - %%insn_00416a50) > 1
        %error "LONG_00416A50"
    %endif
    times 1 - ($ - %%insn_00416a50) db 0
    %%insn_00416a51:
    call 0x4171c0 ; 00416A51 E86A070000
    %if ($ - %%insn_00416a51) > 5
        %error "LONG_00416A51"
    %endif
    times 5 - ($ - %%insn_00416a51) db 0
    db 0x8B, 0xF0 ; 00416A56 8BF0 | mov esi,eax | encoding preserved
    %%insn_00416a58:
    add esp,0x14 ; 00416A58 83C414
    %if ($ - %%insn_00416a58) > 3
        %error "LONG_00416A58"
    %endif
    times 3 - ($ - %%insn_00416a58) db 0
    %%insn_00416a5b:
    test esi,esi ; 00416A5B 85F6
    %if ($ - %%insn_00416a5b) > 2
        %error "LONG_00416A5B"
    %endif
    times 2 - ($ - %%insn_00416a5b) db 0
    %%insn_00416a5d:
    jz short 0x416aa0 ; 00416A5D 7441
    %if ($ - %%insn_00416a5d) > 2
        %error "LONG_00416A5D"
    %endif
    times 2 - ($ - %%insn_00416a5d) db 0
    %%insn_00416a5f:
    push esi ; 00416A5F 56
    %if ($ - %%insn_00416a5f) > 1
        %error "LONG_00416A5F"
    %endif
    times 1 - ($ - %%insn_00416a5f) db 0
    %%insn_00416a60:
    call 0x40cdc0 ; 00416A60 E85B63FFFF
    %if ($ - %%insn_00416a60) > 5
        %error "LONG_00416A60"
    %endif
    times 5 - ($ - %%insn_00416a60) db 0
    db 0x8B, 0xF8 ; 00416A65 8BF8 | mov edi,eax | encoding preserved
    %%insn_00416a67:
    add esp,0x4 ; 00416A67 83C404
    %if ($ - %%insn_00416a67) > 3
        %error "LONG_00416A67"
    %endif
    times 3 - ($ - %%insn_00416a67) db 0
    %%insn_00416a6a:
    test edi,edi ; 00416A6A 85FF
    %if ($ - %%insn_00416a6a) > 2
        %error "LONG_00416A6A"
    %endif
    times 2 - ($ - %%insn_00416a6a) db 0
    %%insn_00416a6c:
    jz short 0x416aa0 ; 00416A6C 7432
    %if ($ - %%insn_00416a6c) > 2
        %error "LONG_00416A6C"
    %endif
    times 2 - ($ - %%insn_00416a6c) db 0
    %%insn_00416a6e:
    push dword 0x0 ; 00416A6E 6A00
    %if ($ - %%insn_00416a6e) > 2
        %error "LONG_00416A6E"
    %endif
    times 2 - ($ - %%insn_00416a6e) db 0
    %%insn_00416a70:
    push esi ; 00416A70 56
    %if ($ - %%insn_00416a70) > 1
        %error "LONG_00416A70"
    %endif
    times 1 - ($ - %%insn_00416a70) db 0
    %%insn_00416a71:
    push edi ; 00416A71 57
    %if ($ - %%insn_00416a71) > 1
        %error "LONG_00416A71"
    %endif
    times 1 - ($ - %%insn_00416a71) db 0
    %%insn_00416a72:
    push ebx ; 00416A72 53
    %if ($ - %%insn_00416a72) > 1
        %error "LONG_00416A72"
    %endif
    times 1 - ($ - %%insn_00416a72) db 0
    %%insn_00416a73:
    push ebp ; 00416A73 55
    %if ($ - %%insn_00416a73) > 1
        %error "LONG_00416A73"
    %endif
    times 1 - ($ - %%insn_00416a73) db 0
    %%insn_00416a74:
    mov dword [esp+0x24],0x1 ; 00416A74 C744242401000000
    %if ($ - %%insn_00416a74) > 8
        %error "LONG_00416A74"
    %endif
    times 8 - ($ - %%insn_00416a74) db 0
    %%insn_00416a7c:
    call 0x4171c0 ; 00416A7C E83F070000
    %if ($ - %%insn_00416a7c) > 5
        %error "LONG_00416A7C"
    %endif
    times 5 - ($ - %%insn_00416a7c) db 0
    db 0x8B, 0xF0 ; 00416A81 8BF0 | mov esi,eax | encoding preserved
    %%insn_00416a83:
    add esp,0x14 ; 00416A83 83C414
    %if ($ - %%insn_00416a83) > 3
        %error "LONG_00416A83"
    %endif
    times 3 - ($ - %%insn_00416a83) db 0
    %%insn_00416a86:
    test esi,esi ; 00416A86 85F6
    %if ($ - %%insn_00416a86) > 2
        %error "LONG_00416A86"
    %endif
    times 2 - ($ - %%insn_00416a86) db 0
    %%insn_00416a88:
    jz short 0x416aa0 ; 00416A88 7416
    %if ($ - %%insn_00416a88) > 2
        %error "LONG_00416A88"
    %endif
    times 2 - ($ - %%insn_00416a88) db 0
    %%insn_00416a8a:
    push esi ; 00416A8A 56
    %if ($ - %%insn_00416a8a) > 1
        %error "LONG_00416A8A"
    %endif
    times 1 - ($ - %%insn_00416a8a) db 0
    %%insn_00416a8b:
    call 0x40cdc0 ; 00416A8B E83063FFFF
    %if ($ - %%insn_00416a8b) > 5
        %error "LONG_00416A8B"
    %endif
    times 5 - ($ - %%insn_00416a8b) db 0
    %%insn_00416a90:
    mov ecx,[esp+0xa8] ; 00416A90 8B8C24A8000000
    %if ($ - %%insn_00416a90) > 7
        %error "LONG_00416A90"
    %endif
    times 7 - ($ - %%insn_00416a90) db 0
    %%insn_00416a97:
    add esp,0x4 ; 00416A97 83C404
    %if ($ - %%insn_00416a97) > 3
        %error "LONG_00416A97"
    %endif
    times 3 - ($ - %%insn_00416a97) db 0
    %%insn_00416a9a:
    test eax,eax ; 00416A9A 85C0
    %if ($ - %%insn_00416a9a) > 2
        %error "LONG_00416A9A"
    %endif
    times 2 - ($ - %%insn_00416a9a) db 0
    %%insn_00416a9c:
    mov [ecx],eax ; 00416A9C 8901
    %if ($ - %%insn_00416a9c) > 2
        %error "LONG_00416A9C"
    %endif
    times 2 - ($ - %%insn_00416a9c) db 0
    %%insn_00416a9e:
    jnz short 0x416ac3 ; 00416A9E 7523
    %if ($ - %%insn_00416a9e) > 2
        %error "LONG_00416A9E"
    %endif
    times 2 - ($ - %%insn_00416a9e) db 0
    %%insn_00416aa0:
    mov eax,[esp+0x10] ; 00416AA0 8B442410
    %if ($ - %%insn_00416aa0) > 4
        %error "LONG_00416AA0"
    %endif
    times 4 - ($ - %%insn_00416aa0) db 0
    %%insn_00416aa4:
    test eax,eax ; 00416AA4 85C0
    %if ($ - %%insn_00416aa4) > 2
        %error "LONG_00416AA4"
    %endif
    times 2 - ($ - %%insn_00416aa4) db 0
    %%insn_00416aa6:
    jz 0x416b8e ; 00416AA6 0F84E2000000
    %if ($ - %%insn_00416aa6) > 6
        %error "LONG_00416AA6"
    %endif
    times 6 - ($ - %%insn_00416aa6) db 0
    %%insn_00416aac:
    push edi ; 00416AAC 57
    %if ($ - %%insn_00416aac) > 1
        %error "LONG_00416AAC"
    %endif
    times 1 - ($ - %%insn_00416aac) db 0
    %%insn_00416aad:
    call 0x40c9a0 ; 00416AAD E8EE5EFFFF
    %if ($ - %%insn_00416aad) > 5
        %error "LONG_00416AAD"
    %endif
    times 5 - ($ - %%insn_00416aad) db 0
    %%insn_00416ab2:
    add esp,0x4 ; 00416AB2 83C404
    %if ($ - %%insn_00416ab2) > 3
        %error "LONG_00416AB2"
    %endif
    times 3 - ($ - %%insn_00416ab2) db 0
    %%insn_00416ab5:
    or eax,0xffffffffffffffff ; 00416AB5 83C8FF
    %if ($ - %%insn_00416ab5) > 3
        %error "LONG_00416AB5"
    %endif
    times 3 - ($ - %%insn_00416ab5) db 0
    %%insn_00416ab8:
    pop edi ; 00416AB8 5F
    %if ($ - %%insn_00416ab8) > 1
        %error "LONG_00416AB8"
    %endif
    times 1 - ($ - %%insn_00416ab8) db 0
    %%insn_00416ab9:
    pop esi ; 00416AB9 5E
    %if ($ - %%insn_00416ab9) > 1
        %error "LONG_00416AB9"
    %endif
    times 1 - ($ - %%insn_00416ab9) db 0
    %%insn_00416aba:
    pop ebp ; 00416ABA 5D
    %if ($ - %%insn_00416aba) > 1
        %error "LONG_00416ABA"
    %endif
    times 1 - ($ - %%insn_00416aba) db 0
    %%insn_00416abb:
    pop ebx ; 00416ABB 5B
    %if ($ - %%insn_00416abb) > 1
        %error "LONG_00416ABB"
    %endif
    times 1 - ($ - %%insn_00416abb) db 0
    %%insn_00416abc:
    add esp,0x84 ; 00416ABC 81C484000000
    %if ($ - %%insn_00416abc) > 6
        %error "LONG_00416ABC"
    %endif
    times 6 - ($ - %%insn_00416abc) db 0
    %%insn_00416ac2:
    ret ; 00416AC2 C3
    %if ($ - %%insn_00416ac2) > 1
        %error "LONG_00416AC2"
    %endif
    times 1 - ($ - %%insn_00416ac2) db 0
    %%insn_00416ac3:
    push esi ; 00416AC3 56
    %if ($ - %%insn_00416ac3) > 1
        %error "LONG_00416AC3"
    %endif
    times 1 - ($ - %%insn_00416ac3) db 0
    %%insn_00416ac4:
    push edi ; 00416AC4 57
    %if ($ - %%insn_00416ac4) > 1
        %error "LONG_00416AC4"
    %endif
    times 1 - ($ - %%insn_00416ac4) db 0
    %%insn_00416ac5:
    push eax ; 00416AC5 50
    %if ($ - %%insn_00416ac5) > 1
        %error "LONG_00416AC5"
    %endif
    times 1 - ($ - %%insn_00416ac5) db 0
    %%insn_00416ac6:
    call 0x414280 ; 00416AC6 E8B5D7FFFF
    %if ($ - %%insn_00416ac6) > 5
        %error "LONG_00416AC6"
    %endif
    times 5 - ($ - %%insn_00416ac6) db 0
    %%insn_00416acb:
    mov eax,[esp+0x1c] ; 00416ACB 8B44241C
    %if ($ - %%insn_00416acb) > 4
        %error "LONG_00416ACB"
    %endif
    times 4 - ($ - %%insn_00416acb) db 0
    %%insn_00416acf:
    add esp,0xc ; 00416ACF 83C40C
    %if ($ - %%insn_00416acf) > 3
        %error "LONG_00416ACF"
    %endif
    times 3 - ($ - %%insn_00416acf) db 0
    %%insn_00416ad2:
    test eax,eax ; 00416AD2 85C0
    %if ($ - %%insn_00416ad2) > 2
        %error "LONG_00416AD2"
    %endif
    times 2 - ($ - %%insn_00416ad2) db 0
    %%insn_00416ad4:
    jz 0x416b81 ; 00416AD4 0F84A7000000
    %if ($ - %%insn_00416ad4) > 6
        %error "LONG_00416AD4"
    %endif
    times 6 - ($ - %%insn_00416ad4) db 0
    %%insn_00416ada:
    push edi ; 00416ADA 57
    %if ($ - %%insn_00416ada) > 1
        %error "LONG_00416ADA"
    %endif
    times 1 - ($ - %%insn_00416ada) db 0
    %%insn_00416adb:
    call 0x40c9a0 ; 00416ADB E8C05EFFFF
    %if ($ - %%insn_00416adb) > 5
        %error "LONG_00416ADB"
    %endif
    times 5 - ($ - %%insn_00416adb) db 0
    %%insn_00416ae0:
    add esp,0x4 ; 00416AE0 83C404
    %if ($ - %%insn_00416ae0) > 3
        %error "LONG_00416AE0"
    %endif
    times 3 - ($ - %%insn_00416ae0) db 0
    db 0x33, 0xC0 ; 00416AE3 33C0 | xor eax,eax | encoding preserved
    %%insn_00416ae5:
    pop edi ; 00416AE5 5F
    %if ($ - %%insn_00416ae5) > 1
        %error "LONG_00416AE5"
    %endif
    times 1 - ($ - %%insn_00416ae5) db 0
    %%insn_00416ae6:
    pop esi ; 00416AE6 5E
    %if ($ - %%insn_00416ae6) > 1
        %error "LONG_00416AE6"
    %endif
    times 1 - ($ - %%insn_00416ae6) db 0
    %%insn_00416ae7:
    pop ebp ; 00416AE7 5D
    %if ($ - %%insn_00416ae7) > 1
        %error "LONG_00416AE7"
    %endif
    times 1 - ($ - %%insn_00416ae7) db 0
    %%insn_00416ae8:
    pop ebx ; 00416AE8 5B
    %if ($ - %%insn_00416ae8) > 1
        %error "LONG_00416AE8"
    %endif
    times 1 - ($ - %%insn_00416ae8) db 0
    %%insn_00416ae9:
    add esp,0x84 ; 00416AE9 81C484000000
    %if ($ - %%insn_00416ae9) > 6
        %error "LONG_00416AE9"
    %endif
    times 6 - ($ - %%insn_00416ae9) db 0
    %%insn_00416aef:
    ret ; 00416AEF C3
    %if ($ - %%insn_00416aef) > 1
        %error "LONG_00416AEF"
    %endif
    times 1 - ($ - %%insn_00416aef) db 0
    %%insn_00416af0:
    test eax,eax ; 00416AF0 85C0
    %if ($ - %%insn_00416af0) > 2
        %error "LONG_00416AF0"
    %endif
    times 2 - ($ - %%insn_00416af0) db 0
    %%insn_00416af2:
    jnz 0x416b8e ; 00416AF2 0F8596000000
    %if ($ - %%insn_00416af2) > 6
        %error "LONG_00416AF2"
    %endif
    times 6 - ($ - %%insn_00416af2) db 0
    %%insn_00416af8:
    mov edx,[esp+0xa0] ; 00416AF8 8B9424A0000000
    %if ($ - %%insn_00416af8) > 7
        %error "LONG_00416AF8"
    %endif
    times 7 - ($ - %%insn_00416af8) db 0
    %%insn_00416aff:
    push eax ; 00416AFF 50
    %if ($ - %%insn_00416aff) > 1
        %error "LONG_00416AFF"
    %endif
    times 1 - ($ - %%insn_00416aff) db 0
    %%insn_00416b00:
    mov eax,[esp+0xa0] ; 00416B00 8B8424A0000000
    %if ($ - %%insn_00416b00) > 7
        %error "LONG_00416B00"
    %endif
    times 7 - ($ - %%insn_00416b00) db 0
    %%insn_00416b07:
    push dword 0x4 ; 00416B07 6A04
    %if ($ - %%insn_00416b07) > 2
        %error "LONG_00416B07"
    %endif
    times 2 - ($ - %%insn_00416b07) db 0
    %%insn_00416b09:
    push dword 0x4211e0 ; 00416B09 68E0114200
    %if ($ - %%insn_00416b09) > 5
        %error "LONG_00416B09"
    %endif
    times 5 - ($ - %%insn_00416b09) db 0
    %%insn_00416b0e:
    push edx ; 00416B0E 52
    %if ($ - %%insn_00416b0e) > 1
        %error "LONG_00416B0E"
    %endif
    times 1 - ($ - %%insn_00416b0e) db 0
    %%insn_00416b0f:
    push eax ; 00416B0F 50
    %if ($ - %%insn_00416b0f) > 1
        %error "LONG_00416B0F"
    %endif
    times 1 - ($ - %%insn_00416b0f) db 0
    %%insn_00416b10:
    call 0x417090 ; 00416B10 E87B050000
    %if ($ - %%insn_00416b10) > 5
        %error "LONG_00416B10"
    %endif
    times 5 - ($ - %%insn_00416b10) db 0
    %%insn_00416b15:
    add esp,0x14 ; 00416B15 83C414
    %if ($ - %%insn_00416b15) > 3
        %error "LONG_00416B15"
    %endif
    times 3 - ($ - %%insn_00416b15) db 0
    %%insn_00416b18:
    test eax,eax ; 00416B18 85C0
    %if ($ - %%insn_00416b18) > 2
        %error "LONG_00416B18"
    %endif
    times 2 - ($ - %%insn_00416b18) db 0
    %%insn_00416b1a:
    jz short 0x416b8e ; 00416B1A 7472
    %if ($ - %%insn_00416b1a) > 2
        %error "LONG_00416B1A"
    %endif
    times 2 - ($ - %%insn_00416b1a) db 0
    %%insn_00416b1c:
    mov edi,[esp+0xa4] ; 00416B1C 8BBC24A4000000
    %if ($ - %%insn_00416b1c) > 7
        %error "LONG_00416B1C"
    %endif
    times 7 - ($ - %%insn_00416b1c) db 0
    %%insn_00416b23:
    mov esi,0x4211e0 ; 00416B23 BEE0114200
    %if ($ - %%insn_00416b23) > 5
        %error "LONG_00416B23"
    %endif
    times 5 - ($ - %%insn_00416b23) db 0
    %%insn_00416b28:
    mov byte [edi],0x0 ; 00416B28 C60700
    %if ($ - %%insn_00416b28) > 3
        %error "LONG_00416B28"
    %endif
    times 3 - ($ - %%insn_00416b28) db 0
    %%insn_00416b2b:
    mov eax,[0x41f044] ; 00416B2B A144F04100
    %if ($ - %%insn_00416b2b) > 5
        %error "LONG_00416B2B"
    %endif
    times 5 - ($ - %%insn_00416b2b) db 0
    %%insn_00416b30:
    mov bl,[esi] ; 00416B30 8A1E
    %if ($ - %%insn_00416b30) > 2
        %error "LONG_00416B30"
    %endif
    times 2 - ($ - %%insn_00416b30) db 0
    db 0x3B, 0xC5 ; 00416B32 3BC5 | cmp eax,ebp | encoding preserved
    %%insn_00416b34:
    mov [esp+0x10],bl ; 00416B34 885C2410
    %if ($ - %%insn_00416b34) > 4
        %error "LONG_00416B34"
    %endif
    times 4 - ($ - %%insn_00416b34) db 0
    %%insn_00416b38:
    jng short 0x416b51 ; 00416B38 7E17
    %if ($ - %%insn_00416b38) > 2
        %error "LONG_00416B38"
    %endif
    times 2 - ($ - %%insn_00416b38) db 0
    %%insn_00416b3a:
    mov ecx,[esp+0x10] ; 00416B3A 8B4C2410
    %if ($ - %%insn_00416b3a) > 4
        %error "LONG_00416B3A"
    %endif
    times 4 - ($ - %%insn_00416b3a) db 0
    %%insn_00416b3e:
    push dword 0x4 ; 00416B3E 6A04
    %if ($ - %%insn_00416b3e) > 2
        %error "LONG_00416B3E"
    %endif
    times 2 - ($ - %%insn_00416b3e) db 0
    %%insn_00416b40:
    and ecx,0xff ; 00416B40 81E1FF000000
    %if ($ - %%insn_00416b40) > 6
        %error "LONG_00416B40"
    %endif
    times 6 - ($ - %%insn_00416b40) db 0
    %%insn_00416b46:
    push ecx ; 00416B46 51
    %if ($ - %%insn_00416b46) > 1
        %error "LONG_00416B46"
    %endif
    times 1 - ($ - %%insn_00416b46) db 0
    %%insn_00416b47:
    call 0x414da0 ; 00416B47 E854E2FFFF
    %if ($ - %%insn_00416b47) > 5
        %error "LONG_00416B47"
    %endif
    times 5 - ($ - %%insn_00416b47) db 0
    %%insn_00416b4c:
    add esp,0x8 ; 00416B4C 83C408
    %if ($ - %%insn_00416b4c) > 3
        %error "LONG_00416B4C"
    %endif
    times 3 - ($ - %%insn_00416b4c) db 0
    %%insn_00416b4f:
    jmp short 0x416b66 ; 00416B4F EB15
    %if ($ - %%insn_00416b4f) > 2
        %error "LONG_00416B4F"
    %endif
    times 2 - ($ - %%insn_00416b4f) db 0
    %%insn_00416b51:
    mov edx,[esp+0x10] ; 00416B51 8B542410
    %if ($ - %%insn_00416b51) > 4
        %error "LONG_00416B51"
    %endif
    times 4 - ($ - %%insn_00416b51) db 0
    %%insn_00416b55:
    mov eax,[0x41e640] ; 00416B55 A140E64100
    %if ($ - %%insn_00416b55) > 5
        %error "LONG_00416B55"
    %endif
    times 5 - ($ - %%insn_00416b55) db 0
    %%insn_00416b5a:
    and edx,0xff ; 00416B5A 81E2FF000000
    %if ($ - %%insn_00416b5a) > 6
        %error "LONG_00416B5A"
    %endif
    times 6 - ($ - %%insn_00416b5a) db 0
    %%insn_00416b60:
    mov al,[eax+edx*2] ; 00416B60 8A0450
    %if ($ - %%insn_00416b60) > 3
        %error "LONG_00416B60"
    %endif
    times 3 - ($ - %%insn_00416b60) db 0
    %%insn_00416b63:
    and eax,0x4 ; 00416B63 83E004
    %if ($ - %%insn_00416b63) > 3
        %error "LONG_00416B63"
    %endif
    times 3 - ($ - %%insn_00416b63) db 0
    %%insn_00416b66:
    test eax,eax ; 00416B66 85C0
    %if ($ - %%insn_00416b66) > 2
        %error "LONG_00416B66"
    %endif
    times 2 - ($ - %%insn_00416b66) db 0
    %%insn_00416b68:
    jz short 0x416b81 ; 00416B68 7417
    %if ($ - %%insn_00416b68) > 2
        %error "LONG_00416B68"
    %endif
    times 2 - ($ - %%insn_00416b68) db 0
    %%insn_00416b6a:
    mov al,[edi] ; 00416B6A 8A07
    %if ($ - %%insn_00416b6a) > 2
        %error "LONG_00416B6A"
    %endif
    times 2 - ($ - %%insn_00416b6a) db 0
    %%insn_00416b6c:
    mov cl,0xa ; 00416B6C B10A
    %if ($ - %%insn_00416b6c) > 2
        %error "LONG_00416B6C"
    %endif
    times 2 - ($ - %%insn_00416b6c) db 0
    %%insn_00416b6e:
    imul cl ; 00416B6E F6E9
    %if ($ - %%insn_00416b6e) > 2
        %error "LONG_00416B6E"
    %endif
    times 2 - ($ - %%insn_00416b6e) db 0
    db 0x02, 0xC3 ; 00416B70 02C3 | add al,bl | encoding preserved
    %%insn_00416b72:
    add esi,0x2 ; 00416B72 83C602
    %if ($ - %%insn_00416b72) > 3
        %error "LONG_00416B72"
    %endif
    times 3 - ($ - %%insn_00416b72) db 0
    %%insn_00416b75:
    sub al,0x30 ; 00416B75 2C30
    %if ($ - %%insn_00416b75) > 2
        %error "LONG_00416B75"
    %endif
    times 2 - ($ - %%insn_00416b75) db 0
    %%insn_00416b77:
    cmp esi,0x4211e8 ; 00416B77 81FEE8114200
    %if ($ - %%insn_00416b77) > 6
        %error "LONG_00416B77"
    %endif
    times 6 - ($ - %%insn_00416b77) db 0
    %%insn_00416b7d:
    mov [edi],al ; 00416B7D 8807
    %if ($ - %%insn_00416b7d) > 2
        %error "LONG_00416B7D"
    %endif
    times 2 - ($ - %%insn_00416b7d) db 0
    %%insn_00416b7f:
    jl short 0x416b2b ; 00416B7F 7CAA
    %if ($ - %%insn_00416b7f) > 2
        %error "LONG_00416B7F"
    %endif
    times 2 - ($ - %%insn_00416b7f) db 0
    db 0x33, 0xC0 ; 00416B81 33C0 | xor eax,eax | encoding preserved
    %%insn_00416b83:
    pop edi ; 00416B83 5F
    %if ($ - %%insn_00416b83) > 1
        %error "LONG_00416B83"
    %endif
    times 1 - ($ - %%insn_00416b83) db 0
    %%insn_00416b84:
    pop esi ; 00416B84 5E
    %if ($ - %%insn_00416b84) > 1
        %error "LONG_00416B84"
    %endif
    times 1 - ($ - %%insn_00416b84) db 0
    %%insn_00416b85:
    pop ebp ; 00416B85 5D
    %if ($ - %%insn_00416b85) > 1
        %error "LONG_00416B85"
    %endif
    times 1 - ($ - %%insn_00416b85) db 0
    %%insn_00416b86:
    pop ebx ; 00416B86 5B
    %if ($ - %%insn_00416b86) > 1
        %error "LONG_00416B86"
    %endif
    times 1 - ($ - %%insn_00416b86) db 0
    %%insn_00416b87:
    add esp,0x84 ; 00416B87 81C484000000
    %if ($ - %%insn_00416b87) > 6
        %error "LONG_00416B87"
    %endif
    times 6 - ($ - %%insn_00416b87) db 0
    %%insn_00416b8d:
    ret ; 00416B8D C3
    %if ($ - %%insn_00416b8d) > 1
        %error "LONG_00416B8D"
    %endif
    times 1 - ($ - %%insn_00416b8d) db 0
    %%insn_00416b8e:
    pop edi ; 00416B8E 5F
    %if ($ - %%insn_00416b8e) > 1
        %error "LONG_00416B8E"
    %endif
    times 1 - ($ - %%insn_00416b8e) db 0
    %%insn_00416b8f:
    pop esi ; 00416B8F 5E
    %if ($ - %%insn_00416b8f) > 1
        %error "LONG_00416B8F"
    %endif
    times 1 - ($ - %%insn_00416b8f) db 0
    %%insn_00416b90:
    pop ebp ; 00416B90 5D
    %if ($ - %%insn_00416b90) > 1
        %error "LONG_00416B90"
    %endif
    times 1 - ($ - %%insn_00416b90) db 0
    %%insn_00416b91:
    or eax,0xffffffffffffffff ; 00416B91 83C8FF
    %if ($ - %%insn_00416b91) > 3
        %error "LONG_00416B91"
    %endif
    times 3 - ($ - %%insn_00416b91) db 0
    %%insn_00416b94:
    pop ebx ; 00416B94 5B
    %if ($ - %%insn_00416b94) > 1
        %error "LONG_00416B94"
    %endif
    times 1 - ($ - %%insn_00416b94) db 0
    %%insn_00416b95:
    add esp,0x84 ; 00416B95 81C484000000
    %if ($ - %%insn_00416b95) > 6
        %error "LONG_00416B95"
    %endif
    times 6 - ($ - %%insn_00416b95) db 0
    %%insn_00416b9b:
    ret ; 00416B9B C3
    %if ($ - %%insn_00416b9b) > 1
        %error "LONG_00416B9B"
    %endif
    times 1 - ($ - %%insn_00416b9b) db 0
    %if ($ - %%fragment_start) != 428
        %error "function fragment size drift: 004169F0"
    %endif
%endmacro
