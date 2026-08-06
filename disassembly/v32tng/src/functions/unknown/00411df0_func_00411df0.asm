; PE virtual entry 00411DF0
; Ghidra working symbol: FUN_00411df0
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00411df0_part_00 0
    %%fragment_start:
func_00411df0:
    %%insn_00411df0:
    sub esp,0x8 ; 00411DF0 83EC08
    %if ($ - %%insn_00411df0) > 3
        %error "LONG_00411DF0"
    %endif
    times 3 - ($ - %%insn_00411df0) db 0
    %%insn_00411df3:
    push esi ; 00411DF3 56
    %if ($ - %%insn_00411df3) > 1
        %error "LONG_00411DF3"
    %endif
    times 1 - ($ - %%insn_00411df3) db 0
    %%insn_00411df4:
    push edi ; 00411DF4 57
    %if ($ - %%insn_00411df4) > 1
        %error "LONG_00411DF4"
    %endif
    times 1 - ($ - %%insn_00411df4) db 0
    %%insn_00411df5:
    push dword 0x104 ; 00411DF5 6804010000
    %if ($ - %%insn_00411df5) > 5
        %error "LONG_00411DF5"
    %endif
    times 5 - ($ - %%insn_00411df5) db 0
    %%insn_00411dfa:
    push dword 0x420f40 ; 00411DFA 68400F4200
    %if ($ - %%insn_00411dfa) > 5
        %error "LONG_00411DFA"
    %endif
    times 5 - ($ - %%insn_00411dfa) db 0
    %%insn_00411dff:
    push dword 0x0 ; 00411DFF 6A00
    %if ($ - %%insn_00411dff) > 2
        %error "LONG_00411DFF"
    %endif
    times 2 - ($ - %%insn_00411dff) db 0
    %%insn_00411e01:
    call dword near [0x4243b8] ; 00411E01 FF15B8434200
    %if ($ - %%insn_00411e01) > 6
        %error "LONG_00411E01"
    %endif
    times 6 - ($ - %%insn_00411e01) db 0
    %%insn_00411e07:
    mov edi,[0x423590] ; 00411E07 8B3D90354200
    %if ($ - %%insn_00411e07) > 6
        %error "LONG_00411E07"
    %endif
    times 6 - ($ - %%insn_00411e07) db 0
    %%insn_00411e0d:
    mov dword [0x420e84],0x420f40 ; 00411E0D C705840E4200400F4200
    %if ($ - %%insn_00411e0d) > 10
        %error "LONG_00411E0D"
    %endif
    times 10 - ($ - %%insn_00411e0d) db 0
    %%insn_00411e17:
    cmp byte [edi],0x0 ; 00411E17 803F00
    %if ($ - %%insn_00411e17) > 3
        %error "LONG_00411E17"
    %endif
    times 3 - ($ - %%insn_00411e17) db 0
    %%insn_00411e1a:
    jnz short 0x411e21 ; 00411E1A 7505
    %if ($ - %%insn_00411e1a) > 2
        %error "LONG_00411E1A"
    %endif
    times 2 - ($ - %%insn_00411e1a) db 0
    %%insn_00411e1c:
    mov edi,0x420f40 ; 00411E1C BF400F4200
    %if ($ - %%insn_00411e1c) > 5
        %error "LONG_00411E1C"
    %endif
    times 5 - ($ - %%insn_00411e1c) db 0
    %%insn_00411e21:
    lea eax,[esp+0xc] ; 00411E21 8D44240C
    %if ($ - %%insn_00411e21) > 4
        %error "LONG_00411E21"
    %endif
    times 4 - ($ - %%insn_00411e21) db 0
    %%insn_00411e25:
    lea ecx,[esp+0x8] ; 00411E25 8D4C2408
    %if ($ - %%insn_00411e25) > 4
        %error "LONG_00411E25"
    %endif
    times 4 - ($ - %%insn_00411e25) db 0
    %%insn_00411e29:
    push eax ; 00411E29 50
    %if ($ - %%insn_00411e29) > 1
        %error "LONG_00411E29"
    %endif
    times 1 - ($ - %%insn_00411e29) db 0
    %%insn_00411e2a:
    push ecx ; 00411E2A 51
    %if ($ - %%insn_00411e2a) > 1
        %error "LONG_00411E2A"
    %endif
    times 1 - ($ - %%insn_00411e2a) db 0
    %%insn_00411e2b:
    push dword 0x0 ; 00411E2B 6A00
    %if ($ - %%insn_00411e2b) > 2
        %error "LONG_00411E2B"
    %endif
    times 2 - ($ - %%insn_00411e2b) db 0
    %%insn_00411e2d:
    push dword 0x0 ; 00411E2D 6A00
    %if ($ - %%insn_00411e2d) > 2
        %error "LONG_00411E2D"
    %endif
    times 2 - ($ - %%insn_00411e2d) db 0
    %%insn_00411e2f:
    push edi ; 00411E2F 57
    %if ($ - %%insn_00411e2f) > 1
        %error "LONG_00411E2F"
    %endif
    times 1 - ($ - %%insn_00411e2f) db 0
    %%insn_00411e30:
    call 0x411e90 ; 00411E30 E85B000000
    %if ($ - %%insn_00411e30) > 5
        %error "LONG_00411E30"
    %endif
    times 5 - ($ - %%insn_00411e30) db 0
    %%insn_00411e35:
    mov edx,[esp+0x20] ; 00411E35 8B542420
    %if ($ - %%insn_00411e35) > 4
        %error "LONG_00411E35"
    %endif
    times 4 - ($ - %%insn_00411e35) db 0
    %%insn_00411e39:
    mov eax,[esp+0x1c] ; 00411E39 8B44241C
    %if ($ - %%insn_00411e39) > 4
        %error "LONG_00411E39"
    %endif
    times 4 - ($ - %%insn_00411e39) db 0
    %%insn_00411e3d:
    add esp,0x14 ; 00411E3D 83C414
    %if ($ - %%insn_00411e3d) > 3
        %error "LONG_00411E3D"
    %endif
    times 3 - ($ - %%insn_00411e3d) db 0
    %%insn_00411e40:
    lea ecx,[edx+eax*4] ; 00411E40 8D0C82
    %if ($ - %%insn_00411e40) > 3
        %error "LONG_00411E40"
    %endif
    times 3 - ($ - %%insn_00411e40) db 0
    %%insn_00411e43:
    push ecx ; 00411E43 51
    %if ($ - %%insn_00411e43) > 1
        %error "LONG_00411E43"
    %endif
    times 1 - ($ - %%insn_00411e43) db 0
    %%insn_00411e44:
    call 0x40cdc0 ; 00411E44 E877AFFFFF
    %if ($ - %%insn_00411e44) > 5
        %error "LONG_00411E44"
    %endif
    times 5 - ($ - %%insn_00411e44) db 0
    db 0x8B, 0xF0 ; 00411E49 8BF0 | mov esi,eax | encoding preserved
    %%insn_00411e4b:
    add esp,0x4 ; 00411E4B 83C404
    %if ($ - %%insn_00411e4b) > 3
        %error "LONG_00411E4B"
    %endif
    times 3 - ($ - %%insn_00411e4b) db 0
    %%insn_00411e4e:
    test esi,esi ; 00411E4E 85F6
    %if ($ - %%insn_00411e4e) > 2
        %error "LONG_00411E4E"
    %endif
    times 2 - ($ - %%insn_00411e4e) db 0
    %%insn_00411e50:
    jnz short 0x411e5c ; 00411E50 750A
    %if ($ - %%insn_00411e50) > 2
        %error "LONG_00411E50"
    %endif
    times 2 - ($ - %%insn_00411e50) db 0
    %%insn_00411e52:
    push dword 0x8 ; 00411E52 6A08
    %if ($ - %%insn_00411e52) > 2
        %error "LONG_00411E52"
    %endif
    times 2 - ($ - %%insn_00411e52) db 0
    %%insn_00411e54:
    call 0x40dda0 ; 00411E54 E847BFFFFF
    %if ($ - %%insn_00411e54) > 5
        %error "LONG_00411E54"
    %endif
    times 5 - ($ - %%insn_00411e54) db 0
    %%insn_00411e59:
    add esp,0x4 ; 00411E59 83C404
    %if ($ - %%insn_00411e59) > 3
        %error "LONG_00411E59"
    %endif
    times 3 - ($ - %%insn_00411e59) db 0
    %%insn_00411e5c:
    mov ecx,[esp+0x8] ; 00411E5C 8B4C2408
    %if ($ - %%insn_00411e5c) > 4
        %error "LONG_00411E5C"
    %endif
    times 4 - ($ - %%insn_00411e5c) db 0
    %%insn_00411e60:
    lea edx,[esp+0xc] ; 00411E60 8D54240C
    %if ($ - %%insn_00411e60) > 4
        %error "LONG_00411E60"
    %endif
    times 4 - ($ - %%insn_00411e60) db 0
    %%insn_00411e64:
    push edx ; 00411E64 52
    %if ($ - %%insn_00411e64) > 1
        %error "LONG_00411E64"
    %endif
    times 1 - ($ - %%insn_00411e64) db 0
    %%insn_00411e65:
    lea eax,[esp+0xc] ; 00411E65 8D44240C
    %if ($ - %%insn_00411e65) > 4
        %error "LONG_00411E65"
    %endif
    times 4 - ($ - %%insn_00411e65) db 0
    %%insn_00411e69:
    lea edx,[esi+ecx*4] ; 00411E69 8D148E
    %if ($ - %%insn_00411e69) > 3
        %error "LONG_00411E69"
    %endif
    times 3 - ($ - %%insn_00411e69) db 0
    %%insn_00411e6c:
    push eax ; 00411E6C 50
    %if ($ - %%insn_00411e6c) > 1
        %error "LONG_00411E6C"
    %endif
    times 1 - ($ - %%insn_00411e6c) db 0
    %%insn_00411e6d:
    push edx ; 00411E6D 52
    %if ($ - %%insn_00411e6d) > 1
        %error "LONG_00411E6D"
    %endif
    times 1 - ($ - %%insn_00411e6d) db 0
    %%insn_00411e6e:
    push esi ; 00411E6E 56
    %if ($ - %%insn_00411e6e) > 1
        %error "LONG_00411E6E"
    %endif
    times 1 - ($ - %%insn_00411e6e) db 0
    %%insn_00411e6f:
    push edi ; 00411E6F 57
    %if ($ - %%insn_00411e6f) > 1
        %error "LONG_00411E6F"
    %endif
    times 1 - ($ - %%insn_00411e6f) db 0
    %%insn_00411e70:
    call 0x411e90 ; 00411E70 E81B000000
    %if ($ - %%insn_00411e70) > 5
        %error "LONG_00411E70"
    %endif
    times 5 - ($ - %%insn_00411e70) db 0
    %%insn_00411e75:
    mov eax,[esp+0x1c] ; 00411E75 8B44241C
    %if ($ - %%insn_00411e75) > 4
        %error "LONG_00411E75"
    %endif
    times 4 - ($ - %%insn_00411e75) db 0
    %%insn_00411e79:
    add esp,0x14 ; 00411E79 83C414
    %if ($ - %%insn_00411e79) > 3
        %error "LONG_00411E79"
    %endif
    times 3 - ($ - %%insn_00411e79) db 0
    %%insn_00411e7c:
    dec eax ; 00411E7C 48
    %if ($ - %%insn_00411e7c) > 1
        %error "LONG_00411E7C"
    %endif
    times 1 - ($ - %%insn_00411e7c) db 0
    %%insn_00411e7d:
    mov [0x420e6c],esi ; 00411E7D 89356C0E4200
    %if ($ - %%insn_00411e7d) > 6
        %error "LONG_00411E7D"
    %endif
    times 6 - ($ - %%insn_00411e7d) db 0
    %%insn_00411e83:
    pop edi ; 00411E83 5F
    %if ($ - %%insn_00411e83) > 1
        %error "LONG_00411E83"
    %endif
    times 1 - ($ - %%insn_00411e83) db 0
    %%insn_00411e84:
    mov [0x420e68],eax ; 00411E84 A3680E4200
    %if ($ - %%insn_00411e84) > 5
        %error "LONG_00411E84"
    %endif
    times 5 - ($ - %%insn_00411e84) db 0
    %%insn_00411e89:
    pop esi ; 00411E89 5E
    %if ($ - %%insn_00411e89) > 1
        %error "LONG_00411E89"
    %endif
    times 1 - ($ - %%insn_00411e89) db 0
    %%insn_00411e8a:
    add esp,0x8 ; 00411E8A 83C408
    %if ($ - %%insn_00411e8a) > 3
        %error "LONG_00411E8A"
    %endif
    times 3 - ($ - %%insn_00411e8a) db 0
    %%insn_00411e8d:
    ret ; 00411E8D C3
    %if ($ - %%insn_00411e8d) > 1
        %error "LONG_00411E8D"
    %endif
    times 1 - ($ - %%insn_00411e8d) db 0
    %if ($ - %%fragment_start) != 158
        %error "function fragment size drift: 00411DF0"
    %endif
%endmacro
