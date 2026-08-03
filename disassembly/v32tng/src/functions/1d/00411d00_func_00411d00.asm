; PE virtual entry 00411D00
; Ghidra working symbol: FUN_00411d00
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00411d00_part_00 0
    %%fragment_start:
func_00411d00:
    %%insn_00411d00:
    push ecx ; 00411D00 51
    %if ($ - %%insn_00411d00) > 1
        %error "LONG_00411D00"
    %endif
    times 1 - ($ - %%insn_00411d00) db 0
    %%insn_00411d01:
    mov edx,[0x420e98] ; 00411D01 8B15980E4200
    %if ($ - %%insn_00411d01) > 6
        %error "LONG_00411D01"
    %endif
    times 6 - ($ - %%insn_00411d01) db 0
    %%insn_00411d07:
    push ebx ; 00411D07 53
    %if ($ - %%insn_00411d07) > 1
        %error "LONG_00411D07"
    %endif
    times 1 - ($ - %%insn_00411d07) db 0
    %%insn_00411d08:
    push ebp ; 00411D08 55
    %if ($ - %%insn_00411d08) > 1
        %error "LONG_00411D08"
    %endif
    times 1 - ($ - %%insn_00411d08) db 0
    %%insn_00411d09:
    push esi ; 00411D09 56
    %if ($ - %%insn_00411d09) > 1
        %error "LONG_00411D09"
    %endif
    times 1 - ($ - %%insn_00411d09) db 0
    %%insn_00411d0a:
    mov al,[edx] ; 00411D0A 8A02
    %if ($ - %%insn_00411d0a) > 2
        %error "LONG_00411D0A"
    %endif
    times 2 - ($ - %%insn_00411d0a) db 0
    db 0x33, 0xF6 ; 00411D0C 33F6 | xor esi,esi | encoding preserved
    %%insn_00411d0e:
    test al,al ; 00411D0E 84C0
    %if ($ - %%insn_00411d0e) > 2
        %error "LONG_00411D0E"
    %endif
    times 2 - ($ - %%insn_00411d0e) db 0
    %%insn_00411d10:
    push edi ; 00411D10 57
    %if ($ - %%insn_00411d10) > 1
        %error "LONG_00411D10"
    %endif
    times 1 - ($ - %%insn_00411d10) db 0
    %%insn_00411d11:
    jz short 0x411d30 ; 00411D11 741D
    %if ($ - %%insn_00411d11) > 2
        %error "LONG_00411D11"
    %endif
    times 2 - ($ - %%insn_00411d11) db 0
    %%insn_00411d13:
    cmp al,0x3d ; 00411D13 3C3D
    %if ($ - %%insn_00411d13) > 2
        %error "LONG_00411D13"
    %endif
    times 2 - ($ - %%insn_00411d13) db 0
    %%insn_00411d15:
    jz short 0x411d18 ; 00411D15 7401
    %if ($ - %%insn_00411d15) > 2
        %error "LONG_00411D15"
    %endif
    times 2 - ($ - %%insn_00411d15) db 0
    %%insn_00411d17:
    inc esi ; 00411D17 46
    %if ($ - %%insn_00411d17) > 1
        %error "LONG_00411D17"
    %endif
    times 1 - ($ - %%insn_00411d17) db 0
    db 0x8B, 0xFA ; 00411D18 8BFA | mov edi,edx | encoding preserved
    %%insn_00411d1a:
    or ecx,0xffffffffffffffff ; 00411D1A 83C9FF
    %if ($ - %%insn_00411d1a) > 3
        %error "LONG_00411D1A"
    %endif
    times 3 - ($ - %%insn_00411d1a) db 0
    db 0x33, 0xC0 ; 00411D1D 33C0 | xor eax,eax | encoding preserved
    %%insn_00411d1f:
    repne scasb ; 00411D1F F2AE
    %if ($ - %%insn_00411d1f) > 2
        %error "LONG_00411D1F"
    %endif
    times 2 - ($ - %%insn_00411d1f) db 0
    %%insn_00411d21:
    not ecx ; 00411D21 F7D1
    %if ($ - %%insn_00411d21) > 2
        %error "LONG_00411D21"
    %endif
    times 2 - ($ - %%insn_00411d21) db 0
    %%insn_00411d23:
    dec ecx ; 00411D23 49
    %if ($ - %%insn_00411d23) > 1
        %error "LONG_00411D23"
    %endif
    times 1 - ($ - %%insn_00411d23) db 0
    %%insn_00411d24:
    mov al,[edx+ecx+0x1] ; 00411D24 8A440A01
    %if ($ - %%insn_00411d24) > 4
        %error "LONG_00411D24"
    %endif
    times 4 - ($ - %%insn_00411d24) db 0
    %%insn_00411d28:
    lea edx,[edx+ecx+0x1] ; 00411D28 8D540A01
    %if ($ - %%insn_00411d28) > 4
        %error "LONG_00411D28"
    %endif
    times 4 - ($ - %%insn_00411d28) db 0
    %%insn_00411d2c:
    test al,al ; 00411D2C 84C0
    %if ($ - %%insn_00411d2c) > 2
        %error "LONG_00411D2C"
    %endif
    times 2 - ($ - %%insn_00411d2c) db 0
    %%insn_00411d2e:
    jnz short 0x411d13 ; 00411D2E 75E3
    %if ($ - %%insn_00411d2e) > 2
        %error "LONG_00411D2E"
    %endif
    times 2 - ($ - %%insn_00411d2e) db 0
    %%insn_00411d30:
    lea eax,[esi*4+0x4] ; 00411D30 8D04B504000000
    %if ($ - %%insn_00411d30) > 7
        %error "LONG_00411D30"
    %endif
    times 7 - ($ - %%insn_00411d30) db 0
    %%insn_00411d37:
    push eax ; 00411D37 50
    %if ($ - %%insn_00411d37) > 1
        %error "LONG_00411D37"
    %endif
    times 1 - ($ - %%insn_00411d37) db 0
    %%insn_00411d38:
    call 0x40cdc0 ; 00411D38 E883B0FFFF
    %if ($ - %%insn_00411d38) > 5
        %error "LONG_00411D38"
    %endif
    times 5 - ($ - %%insn_00411d38) db 0
    db 0x8B, 0xF0 ; 00411D3D 8BF0 | mov esi,eax | encoding preserved
    %%insn_00411d3f:
    add esp,0x4 ; 00411D3F 83C404
    %if ($ - %%insn_00411d3f) > 3
        %error "LONG_00411D3F"
    %endif
    times 3 - ($ - %%insn_00411d3f) db 0
    %%insn_00411d42:
    test esi,esi ; 00411D42 85F6
    %if ($ - %%insn_00411d42) > 2
        %error "LONG_00411D42"
    %endif
    times 2 - ($ - %%insn_00411d42) db 0
    %%insn_00411d44:
    mov [esp+0x10],esi ; 00411D44 89742410
    %if ($ - %%insn_00411d44) > 4
        %error "LONG_00411D44"
    %endif
    times 4 - ($ - %%insn_00411d44) db 0
    %%insn_00411d48:
    mov [0x420e74],esi ; 00411D48 8935740E4200
    %if ($ - %%insn_00411d48) > 6
        %error "LONG_00411D48"
    %endif
    times 6 - ($ - %%insn_00411d48) db 0
    %%insn_00411d4e:
    jnz short 0x411d5a ; 00411D4E 750A
    %if ($ - %%insn_00411d4e) > 2
        %error "LONG_00411D4E"
    %endif
    times 2 - ($ - %%insn_00411d4e) db 0
    %%insn_00411d50:
    push dword 0x9 ; 00411D50 6A09
    %if ($ - %%insn_00411d50) > 2
        %error "LONG_00411D50"
    %endif
    times 2 - ($ - %%insn_00411d50) db 0
    %%insn_00411d52:
    call 0x40dda0 ; 00411D52 E849C0FFFF
    %if ($ - %%insn_00411d52) > 5
        %error "LONG_00411D52"
    %endif
    times 5 - ($ - %%insn_00411d52) db 0
    %%insn_00411d57:
    add esp,0x4 ; 00411D57 83C404
    %if ($ - %%insn_00411d57) > 3
        %error "LONG_00411D57"
    %endif
    times 3 - ($ - %%insn_00411d57) db 0
    %%insn_00411d5a:
    mov ebp,[0x420e98] ; 00411D5A 8B2D980E4200
    %if ($ - %%insn_00411d5a) > 6
        %error "LONG_00411D5A"
    %endif
    times 6 - ($ - %%insn_00411d5a) db 0
    %%insn_00411d60:
    mov dl,[ebp+0x0] ; 00411D60 8A5500
    %if ($ - %%insn_00411d60) > 3
        %error "LONG_00411D60"
    %endif
    times 3 - ($ - %%insn_00411d60) db 0
    %%insn_00411d63:
    test dl,dl ; 00411D63 84D2
    %if ($ - %%insn_00411d63) > 2
        %error "LONG_00411D63"
    %endif
    times 2 - ($ - %%insn_00411d63) db 0
    %%insn_00411d65:
    jz short 0x411dca ; 00411D65 7463
    %if ($ - %%insn_00411d65) > 2
        %error "LONG_00411D65"
    %endif
    times 2 - ($ - %%insn_00411d65) db 0
    db 0x8B, 0xFD ; 00411D67 8BFD | mov edi,ebp | encoding preserved
    %%insn_00411d69:
    or ecx,0xffffffffffffffff ; 00411D69 83C9FF
    %if ($ - %%insn_00411d69) > 3
        %error "LONG_00411D69"
    %endif
    times 3 - ($ - %%insn_00411d69) db 0
    db 0x33, 0xC0 ; 00411D6C 33C0 | xor eax,eax | encoding preserved
    %%insn_00411d6e:
    repne scasb ; 00411D6E F2AE
    %if ($ - %%insn_00411d6e) > 2
        %error "LONG_00411D6E"
    %endif
    times 2 - ($ - %%insn_00411d6e) db 0
    %%insn_00411d70:
    not ecx ; 00411D70 F7D1
    %if ($ - %%insn_00411d70) > 2
        %error "LONG_00411D70"
    %endif
    times 2 - ($ - %%insn_00411d70) db 0
    %%insn_00411d72:
    dec ecx ; 00411D72 49
    %if ($ - %%insn_00411d72) > 1
        %error "LONG_00411D72"
    %endif
    times 1 - ($ - %%insn_00411d72) db 0
    db 0x8B, 0xD9 ; 00411D73 8BD9 | mov ebx,ecx | encoding preserved
    %%insn_00411d75:
    inc ebx ; 00411D75 43
    %if ($ - %%insn_00411d75) > 1
        %error "LONG_00411D75"
    %endif
    times 1 - ($ - %%insn_00411d75) db 0
    %%insn_00411d76:
    cmp dl,0x3d ; 00411D76 80FA3D
    %if ($ - %%insn_00411d76) > 3
        %error "LONG_00411D76"
    %endif
    times 3 - ($ - %%insn_00411d76) db 0
    %%insn_00411d79:
    jz short 0x411dc0 ; 00411D79 7445
    %if ($ - %%insn_00411d79) > 2
        %error "LONG_00411D79"
    %endif
    times 2 - ($ - %%insn_00411d79) db 0
    %%insn_00411d7b:
    push ebx ; 00411D7B 53
    %if ($ - %%insn_00411d7b) > 1
        %error "LONG_00411D7B"
    %endif
    times 1 - ($ - %%insn_00411d7b) db 0
    %%insn_00411d7c:
    call 0x40cdc0 ; 00411D7C E83FB0FFFF
    %if ($ - %%insn_00411d7c) > 5
        %error "LONG_00411D7C"
    %endif
    times 5 - ($ - %%insn_00411d7c) db 0
    %%insn_00411d81:
    add esp,0x4 ; 00411D81 83C404
    %if ($ - %%insn_00411d81) > 3
        %error "LONG_00411D81"
    %endif
    times 3 - ($ - %%insn_00411d81) db 0
    %%insn_00411d84:
    mov [esi],eax ; 00411D84 8906
    %if ($ - %%insn_00411d84) > 2
        %error "LONG_00411D84"
    %endif
    times 2 - ($ - %%insn_00411d84) db 0
    %%insn_00411d86:
    test eax,eax ; 00411D86 85C0
    %if ($ - %%insn_00411d86) > 2
        %error "LONG_00411D86"
    %endif
    times 2 - ($ - %%insn_00411d86) db 0
    %%insn_00411d88:
    jnz short 0x411d94 ; 00411D88 750A
    %if ($ - %%insn_00411d88) > 2
        %error "LONG_00411D88"
    %endif
    times 2 - ($ - %%insn_00411d88) db 0
    %%insn_00411d8a:
    push dword 0x9 ; 00411D8A 6A09
    %if ($ - %%insn_00411d8a) > 2
        %error "LONG_00411D8A"
    %endif
    times 2 - ($ - %%insn_00411d8a) db 0
    %%insn_00411d8c:
    call 0x40dda0 ; 00411D8C E80FC0FFFF
    %if ($ - %%insn_00411d8c) > 5
        %error "LONG_00411D8C"
    %endif
    times 5 - ($ - %%insn_00411d8c) db 0
    %%insn_00411d91:
    add esp,0x4 ; 00411D91 83C404
    %if ($ - %%insn_00411d91) > 3
        %error "LONG_00411D91"
    %endif
    times 3 - ($ - %%insn_00411d91) db 0
    db 0x8B, 0xFD ; 00411D94 8BFD | mov edi,ebp | encoding preserved
    %%insn_00411d96:
    or ecx,0xffffffffffffffff ; 00411D96 83C9FF
    %if ($ - %%insn_00411d96) > 3
        %error "LONG_00411D96"
    %endif
    times 3 - ($ - %%insn_00411d96) db 0
    db 0x33, 0xC0 ; 00411D99 33C0 | xor eax,eax | encoding preserved
    %%insn_00411d9b:
    repne scasb ; 00411D9B F2AE
    %if ($ - %%insn_00411d9b) > 2
        %error "LONG_00411D9B"
    %endif
    times 2 - ($ - %%insn_00411d9b) db 0
    %%insn_00411d9d:
    mov eax,[esp+0x10] ; 00411D9D 8B442410
    %if ($ - %%insn_00411d9d) > 4
        %error "LONG_00411D9D"
    %endif
    times 4 - ($ - %%insn_00411d9d) db 0
    %%insn_00411da1:
    not ecx ; 00411DA1 F7D1
    %if ($ - %%insn_00411da1) > 2
        %error "LONG_00411DA1"
    %endif
    times 2 - ($ - %%insn_00411da1) db 0
    db 0x2B, 0xF9 ; 00411DA3 2BF9 | sub edi,ecx | encoding preserved
    db 0x8B, 0xD1 ; 00411DA5 8BD1 | mov edx,ecx | encoding preserved
    db 0x8B, 0xF7 ; 00411DA7 8BF7 | mov esi,edi | encoding preserved
    %%insn_00411da9:
    mov edi,[eax] ; 00411DA9 8B38
    %if ($ - %%insn_00411da9) > 2
        %error "LONG_00411DA9"
    %endif
    times 2 - ($ - %%insn_00411da9) db 0
    %%insn_00411dab:
    shr ecx,byte 0x2 ; 00411DAB C1E902
    %if ($ - %%insn_00411dab) > 3
        %error "LONG_00411DAB"
    %endif
    times 3 - ($ - %%insn_00411dab) db 0
    %%insn_00411dae:
    rep movsd ; 00411DAE F3A5
    %if ($ - %%insn_00411dae) > 2
        %error "LONG_00411DAE"
    %endif
    times 2 - ($ - %%insn_00411dae) db 0
    db 0x8B, 0xCA ; 00411DB0 8BCA | mov ecx,edx | encoding preserved
    %%insn_00411db2:
    and ecx,0x3 ; 00411DB2 83E103
    %if ($ - %%insn_00411db2) > 3
        %error "LONG_00411DB2"
    %endif
    times 3 - ($ - %%insn_00411db2) db 0
    %%insn_00411db5:
    add eax,0x4 ; 00411DB5 83C004
    %if ($ - %%insn_00411db5) > 3
        %error "LONG_00411DB5"
    %endif
    times 3 - ($ - %%insn_00411db5) db 0
    %%insn_00411db8:
    rep movsb ; 00411DB8 F3A4
    %if ($ - %%insn_00411db8) > 2
        %error "LONG_00411DB8"
    %endif
    times 2 - ($ - %%insn_00411db8) db 0
    %%insn_00411dba:
    mov [esp+0x10],eax ; 00411DBA 89442410
    %if ($ - %%insn_00411dba) > 4
        %error "LONG_00411DBA"
    %endif
    times 4 - ($ - %%insn_00411dba) db 0
    db 0x8B, 0xF0 ; 00411DBE 8BF0 | mov esi,eax | encoding preserved
    %%insn_00411dc0:
    mov dl,[ebp+ebx+0x0] ; 00411DC0 8A541D00
    %if ($ - %%insn_00411dc0) > 4
        %error "LONG_00411DC0"
    %endif
    times 4 - ($ - %%insn_00411dc0) db 0
    db 0x03, 0xEB ; 00411DC4 03EB | add ebp,ebx | encoding preserved
    %%insn_00411dc6:
    test dl,dl ; 00411DC6 84D2
    %if ($ - %%insn_00411dc6) > 2
        %error "LONG_00411DC6"
    %endif
    times 2 - ($ - %%insn_00411dc6) db 0
    %%insn_00411dc8:
    jnz short 0x411d67 ; 00411DC8 759D
    %if ($ - %%insn_00411dc8) > 2
        %error "LONG_00411DC8"
    %endif
    times 2 - ($ - %%insn_00411dc8) db 0
    %%insn_00411dca:
    mov eax,[0x420e98] ; 00411DCA A1980E4200
    %if ($ - %%insn_00411dca) > 5
        %error "LONG_00411DCA"
    %endif
    times 5 - ($ - %%insn_00411dca) db 0
    %%insn_00411dcf:
    push eax ; 00411DCF 50
    %if ($ - %%insn_00411dcf) > 1
        %error "LONG_00411DCF"
    %endif
    times 1 - ($ - %%insn_00411dcf) db 0
    %%insn_00411dd0:
    call 0x40c9a0 ; 00411DD0 E8CBABFFFF
    %if ($ - %%insn_00411dd0) > 5
        %error "LONG_00411DD0"
    %endif
    times 5 - ($ - %%insn_00411dd0) db 0
    %%insn_00411dd5:
    add esp,0x4 ; 00411DD5 83C404
    %if ($ - %%insn_00411dd5) > 3
        %error "LONG_00411DD5"
    %endif
    times 3 - ($ - %%insn_00411dd5) db 0
    %%insn_00411dd8:
    mov dword [0x420e98],0x0 ; 00411DD8 C705980E420000000000
    %if ($ - %%insn_00411dd8) > 10
        %error "LONG_00411DD8"
    %endif
    times 10 - ($ - %%insn_00411dd8) db 0
    %%insn_00411de2:
    mov dword [esi],0x0 ; 00411DE2 C70600000000
    %if ($ - %%insn_00411de2) > 6
        %error "LONG_00411DE2"
    %endif
    times 6 - ($ - %%insn_00411de2) db 0
    %%insn_00411de8:
    pop edi ; 00411DE8 5F
    %if ($ - %%insn_00411de8) > 1
        %error "LONG_00411DE8"
    %endif
    times 1 - ($ - %%insn_00411de8) db 0
    %%insn_00411de9:
    pop esi ; 00411DE9 5E
    %if ($ - %%insn_00411de9) > 1
        %error "LONG_00411DE9"
    %endif
    times 1 - ($ - %%insn_00411de9) db 0
    %%insn_00411dea:
    pop ebp ; 00411DEA 5D
    %if ($ - %%insn_00411dea) > 1
        %error "LONG_00411DEA"
    %endif
    times 1 - ($ - %%insn_00411dea) db 0
    %%insn_00411deb:
    pop ebx ; 00411DEB 5B
    %if ($ - %%insn_00411deb) > 1
        %error "LONG_00411DEB"
    %endif
    times 1 - ($ - %%insn_00411deb) db 0
    %%insn_00411dec:
    pop ecx ; 00411DEC 59
    %if ($ - %%insn_00411dec) > 1
        %error "LONG_00411DEC"
    %endif
    times 1 - ($ - %%insn_00411dec) db 0
    %%insn_00411ded:
    ret ; 00411DED C3
    %if ($ - %%insn_00411ded) > 1
        %error "LONG_00411DED"
    %endif
    times 1 - ($ - %%insn_00411ded) db 0
    %if ($ - %%fragment_start) != 238
        %error "function fragment size drift: 00411D00"
    %endif
%endmacro
