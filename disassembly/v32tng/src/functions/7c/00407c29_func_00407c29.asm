; PE virtual entry 00407C29
; Ghidra working symbol: FUN_00407c29
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00407c29_part_00 0
    %%fragment_start:
func_00407c29:
    %%insn_00407c29:
    push ebp ; 00407C29 55
    %if ($ - %%insn_00407c29) > 1
        %error "LONG_00407C29"
    %endif
    times 1 - ($ - %%insn_00407c29) db 0
    db 0x8B, 0xEC ; 00407C2A 8BEC | mov ebp,esp | encoding preserved
    %%insn_00407c2c:
    sub esp,0x5b8 ; 00407C2C 81ECB8050000
    %if ($ - %%insn_00407c2c) > 6
        %error "LONG_00407C2C"
    %endif
    times 6 - ($ - %%insn_00407c2c) db 0
    %%insn_00407c32:
    mov [ebp-0x5b8],edx ; 00407C32 899548FAFFFF
    %if ($ - %%insn_00407c32) > 6
        %error "LONG_00407C32"
    %endif
    times 6 - ($ - %%insn_00407c32) db 0
    %%insn_00407c38:
    mov [ebp-0x5b4],ecx ; 00407C38 898D4CFAFFFF
    %if ($ - %%insn_00407c38) > 6
        %error "LONG_00407C38"
    %endif
    times 6 - ($ - %%insn_00407c38) db 0
    %%insn_00407c3e:
    cmp dword [0x41f54c],0x0 ; 00407C3E 833D4CF5410000
    %if ($ - %%insn_00407c3e) > 7
        %error "LONG_00407C3E"
    %endif
    times 7 - ($ - %%insn_00407c3e) db 0
    %%insn_00407c45:
    jnz short 0x407ca8 ; 00407C45 7561
    %if ($ - %%insn_00407c45) > 2
        %error "LONG_00407C45"
    %endif
    times 2 - ($ - %%insn_00407c45) db 0
    %%insn_00407c47:
    push dword 0x0 ; 00407C47 6A00
    %if ($ - %%insn_00407c47) > 2
        %error "LONG_00407C47"
    %endif
    times 2 - ($ - %%insn_00407c47) db 0
    %%insn_00407c49:
    push dword 0x41f54c ; 00407C49 684CF54100
    %if ($ - %%insn_00407c49) > 5
        %error "LONG_00407C49"
    %endif
    times 5 - ($ - %%insn_00407c49) db 0
    %%insn_00407c4e:
    push dword 0x0 ; 00407C4E 6A00
    %if ($ - %%insn_00407c4e) > 2
        %error "LONG_00407C4E"
    %endif
    times 2 - ($ - %%insn_00407c4e) db 0
    %%insn_00407c50:
    call 0x40c996 ; 00407C50 E8414D0000
    %if ($ - %%insn_00407c50) > 5
        %error "LONG_00407C50"
    %endif
    times 5 - ($ - %%insn_00407c50) db 0
    %%insn_00407c55:
    mov [ebp-0x5ac],eax ; 00407C55 898554FAFFFF
    %if ($ - %%insn_00407c55) > 6
        %error "LONG_00407C55"
    %endif
    times 6 - ($ - %%insn_00407c55) db 0
    %%insn_00407c5b:
    cmp dword [ebp-0x5ac],0x0 ; 00407C5B 83BD54FAFFFF00
    %if ($ - %%insn_00407c5b) > 7
        %error "LONG_00407C5B"
    %endif
    times 7 - ($ - %%insn_00407c5b) db 0
    %%insn_00407c62:
    jz short 0x407c71 ; 00407C62 740D
    %if ($ - %%insn_00407c62) > 2
        %error "LONG_00407C62"
    %endif
    times 2 - ($ - %%insn_00407c62) db 0
    %%insn_00407c64:
    push dword 0x41ba24 ; 00407C64 6824BA4100
    %if ($ - %%insn_00407c64) > 5
        %error "LONG_00407C64"
    %endif
    times 5 - ($ - %%insn_00407c64) db 0
    %%insn_00407c69:
    call 0x409760 ; 00407C69 E8F21A0000
    %if ($ - %%insn_00407c69) > 5
        %error "LONG_00407C69"
    %endif
    times 5 - ($ - %%insn_00407c69) db 0
    %%insn_00407c6e:
    add esp,0x4 ; 00407C6E 83C404
    %if ($ - %%insn_00407c6e) > 3
        %error "LONG_00407C6E"
    %endif
    times 3 - ($ - %%insn_00407c6e) db 0
    %%insn_00407c71:
    push dword 0x13 ; 00407C71 6A13
    %if ($ - %%insn_00407c71) > 2
        %error "LONG_00407C71"
    %endif
    times 2 - ($ - %%insn_00407c71) db 0
    %%insn_00407c73:
    mov eax,[ebp-0x5b4] ; 00407C73 8B854CFAFFFF
    %if ($ - %%insn_00407c73) > 6
        %error "LONG_00407C73"
    %endif
    times 6 - ($ - %%insn_00407c73) db 0
    %%insn_00407c79:
    push eax ; 00407C79 50
    %if ($ - %%insn_00407c79) > 1
        %error "LONG_00407C79"
    %endif
    times 1 - ($ - %%insn_00407c79) db 0
    %%insn_00407c7a:
    mov ecx,[0x41f54c] ; 00407C7A 8B0D4CF54100
    %if ($ - %%insn_00407c7a) > 6
        %error "LONG_00407C7A"
    %endif
    times 6 - ($ - %%insn_00407c7a) db 0
    %%insn_00407c80:
    push ecx ; 00407C80 51
    %if ($ - %%insn_00407c80) > 1
        %error "LONG_00407C80"
    %endif
    times 1 - ($ - %%insn_00407c80) db 0
    %%insn_00407c81:
    mov edx,[0x41f54c] ; 00407C81 8B154CF54100
    %if ($ - %%insn_00407c81) > 6
        %error "LONG_00407C81"
    %endif
    times 6 - ($ - %%insn_00407c81) db 0
    %%insn_00407c87:
    mov eax,[edx] ; 00407C87 8B02
    %if ($ - %%insn_00407c87) > 2
        %error "LONG_00407C87"
    %endif
    times 2 - ($ - %%insn_00407c87) db 0
    %%insn_00407c89:
    call dword near [eax+0x50] ; 00407C89 FF5050
    %if ($ - %%insn_00407c89) > 3
        %error "LONG_00407C89"
    %endif
    times 3 - ($ - %%insn_00407c89) db 0
    %%insn_00407c8c:
    mov [ebp-0x5ac],eax ; 00407C8C 898554FAFFFF
    %if ($ - %%insn_00407c8c) > 6
        %error "LONG_00407C8C"
    %endif
    times 6 - ($ - %%insn_00407c8c) db 0
    %%insn_00407c92:
    cmp dword [ebp-0x5ac],0x0 ; 00407C92 83BD54FAFFFF00
    %if ($ - %%insn_00407c92) > 7
        %error "LONG_00407C92"
    %endif
    times 7 - ($ - %%insn_00407c92) db 0
    %%insn_00407c99:
    jz short 0x407ca8 ; 00407C99 740D
    %if ($ - %%insn_00407c99) > 2
        %error "LONG_00407C99"
    %endif
    times 2 - ($ - %%insn_00407c99) db 0
    %%insn_00407c9b:
    push dword 0x41ba50 ; 00407C9B 6850BA4100
    %if ($ - %%insn_00407c9b) > 5
        %error "LONG_00407C9B"
    %endif
    times 5 - ($ - %%insn_00407c9b) db 0
    %%insn_00407ca0:
    call 0x409760 ; 00407CA0 E8BB1A0000
    %if ($ - %%insn_00407ca0) > 5
        %error "LONG_00407CA0"
    %endif
    times 5 - ($ - %%insn_00407ca0) db 0
    %%insn_00407ca5:
    add esp,0x4 ; 00407CA5 83C404
    %if ($ - %%insn_00407ca5) > 3
        %error "LONG_00407CA5"
    %endif
    times 3 - ($ - %%insn_00407ca5) db 0
    %%insn_00407ca8:
    mov ecx,[ebp-0x5b8] ; 00407CA8 8B8D48FAFFFF
    %if ($ - %%insn_00407ca8) > 6
        %error "LONG_00407CA8"
    %endif
    times 6 - ($ - %%insn_00407ca8) db 0
    %%insn_00407cae:
    mov [0x41f548],ecx ; 00407CAE 890D48F54100
    %if ($ - %%insn_00407cae) > 6
        %error "LONG_00407CAE"
    %endif
    times 6 - ($ - %%insn_00407cae) db 0
    %%insn_00407cb4:
    mov edx,[ebp+0x8] ; 00407CB4 8B5508
    %if ($ - %%insn_00407cb4) > 3
        %error "LONG_00407CB4"
    %endif
    times 3 - ($ - %%insn_00407cb4) db 0
    %%insn_00407cb7:
    mov [0x41f530],edx ; 00407CB7 891530F54100
    %if ($ - %%insn_00407cb7) > 6
        %error "LONG_00407CB7"
    %endif
    times 6 - ($ - %%insn_00407cb7) db 0
    %%insn_00407cbd:
    mov dword [0x41f53c],0x0 ; 00407CBD C7053CF5410000000000
    %if ($ - %%insn_00407cbd) > 10
        %error "LONG_00407CBD"
    %endif
    times 10 - ($ - %%insn_00407cbd) db 0
    %%insn_00407cc7:
    mov eax,[ebp+0xc] ; 00407CC7 8B450C
    %if ($ - %%insn_00407cc7) > 3
        %error "LONG_00407CC7"
    %endif
    times 3 - ($ - %%insn_00407cc7) db 0
    %%insn_00407cca:
    mov [0x41f52c],eax ; 00407CCA A32CF54100
    %if ($ - %%insn_00407cca) > 5
        %error "LONG_00407CCA"
    %endif
    times 5 - ($ - %%insn_00407cca) db 0
    %%insn_00407ccf:
    mov dword [0x41f538],0x0 ; 00407CCF C70538F5410000000000
    %if ($ - %%insn_00407ccf) > 10
        %error "LONG_00407CCF"
    %endif
    times 10 - ($ - %%insn_00407ccf) db 0
    %%insn_00407cd9:
    mov ecx,[ebp+0x10] ; 00407CD9 8B4D10
    %if ($ - %%insn_00407cd9) > 3
        %error "LONG_00407CD9"
    %endif
    times 3 - ($ - %%insn_00407cd9) db 0
    %%insn_00407cdc:
    mov [0x41f534],ecx ; 00407CDC 890D34F54100
    %if ($ - %%insn_00407cdc) > 6
        %error "LONG_00407CDC"
    %endif
    times 6 - ($ - %%insn_00407cdc) db 0
    %%insn_00407ce2:
    mov edx,[ebp+0xc] ; 00407CE2 8B550C
    %if ($ - %%insn_00407ce2) > 3
        %error "LONG_00407CE2"
    %endif
    times 3 - ($ - %%insn_00407ce2) db 0
    %%insn_00407ce5:
    mov [0x41f540],edx ; 00407CE5 891540F54100
    %if ($ - %%insn_00407ce5) > 6
        %error "LONG_00407CE5"
    %endif
    times 6 - ($ - %%insn_00407ce5) db 0
    %%insn_00407ceb:
    mov eax,[ebp+0x10] ; 00407CEB 8B4510
    %if ($ - %%insn_00407ceb) > 3
        %error "LONG_00407CEB"
    %endif
    times 3 - ($ - %%insn_00407ceb) db 0
    %%insn_00407cee:
    mov [0x41f544],eax ; 00407CEE A344F54100
    %if ($ - %%insn_00407cee) > 5
        %error "LONG_00407CEE"
    %endif
    times 5 - ($ - %%insn_00407cee) db 0
    %%insn_00407cf3:
    mov ecx,[ebp+0x14] ; 00407CF3 8B4D14
    %if ($ - %%insn_00407cf3) > 3
        %error "LONG_00407CF3"
    %endif
    times 3 - ($ - %%insn_00407cf3) db 0
    %%insn_00407cf6:
    push ecx ; 00407CF6 51
    %if ($ - %%insn_00407cf6) > 1
        %error "LONG_00407CF6"
    %endif
    times 1 - ($ - %%insn_00407cf6) db 0
    %%insn_00407cf7:
    mov edx,[ebp+0x10] ; 00407CF7 8B5510
    %if ($ - %%insn_00407cf7) > 3
        %error "LONG_00407CF7"
    %endif
    times 3 - ($ - %%insn_00407cf7) db 0
    %%insn_00407cfa:
    push edx ; 00407CFA 52
    %if ($ - %%insn_00407cfa) > 1
        %error "LONG_00407CFA"
    %endif
    times 1 - ($ - %%insn_00407cfa) db 0
    %%insn_00407cfb:
    mov eax,[ebp+0xc] ; 00407CFB 8B450C
    %if ($ - %%insn_00407cfb) > 3
        %error "LONG_00407CFB"
    %endif
    times 3 - ($ - %%insn_00407cfb) db 0
    %%insn_00407cfe:
    push eax ; 00407CFE 50
    %if ($ - %%insn_00407cfe) > 1
        %error "LONG_00407CFE"
    %endif
    times 1 - ($ - %%insn_00407cfe) db 0
    %%insn_00407cff:
    mov ecx,[0x41f54c] ; 00407CFF 8B0D4CF54100
    %if ($ - %%insn_00407cff) > 6
        %error "LONG_00407CFF"
    %endif
    times 6 - ($ - %%insn_00407cff) db 0
    %%insn_00407d05:
    push ecx ; 00407D05 51
    %if ($ - %%insn_00407d05) > 1
        %error "LONG_00407D05"
    %endif
    times 1 - ($ - %%insn_00407d05) db 0
    %%insn_00407d06:
    mov edx,[0x41f54c] ; 00407D06 8B154CF54100
    %if ($ - %%insn_00407d06) > 6
        %error "LONG_00407D06"
    %endif
    times 6 - ($ - %%insn_00407d06) db 0
    %%insn_00407d0c:
    mov eax,[edx] ; 00407D0C 8B02
    %if ($ - %%insn_00407d0c) > 2
        %error "LONG_00407D0C"
    %endif
    times 2 - ($ - %%insn_00407d0c) db 0
    %%insn_00407d0e:
    call dword near [eax+0x54] ; 00407D0E FF5054
    %if ($ - %%insn_00407d0e) > 3
        %error "LONG_00407D0E"
    %endif
    times 3 - ($ - %%insn_00407d0e) db 0
    %%insn_00407d11:
    mov [ebp-0x5ac],eax ; 00407D11 898554FAFFFF
    %if ($ - %%insn_00407d11) > 6
        %error "LONG_00407D11"
    %endif
    times 6 - ($ - %%insn_00407d11) db 0
    %%insn_00407d17:
    cmp dword [ebp-0x5ac],0x0 ; 00407D17 83BD54FAFFFF00
    %if ($ - %%insn_00407d17) > 7
        %error "LONG_00407D17"
    %endif
    times 7 - ($ - %%insn_00407d17) db 0
    %%insn_00407d1e:
    jz short 0x407d2d ; 00407D1E 740D
    %if ($ - %%insn_00407d1e) > 2
        %error "LONG_00407D1E"
    %endif
    times 2 - ($ - %%insn_00407d1e) db 0
    %%insn_00407d20:
    push dword 0x41ba84 ; 00407D20 6884BA4100
    %if ($ - %%insn_00407d20) > 5
        %error "LONG_00407D20"
    %endif
    times 5 - ($ - %%insn_00407d20) db 0
    %%insn_00407d25:
    call 0x409760 ; 00407D25 E8361A0000
    %if ($ - %%insn_00407d25) > 5
        %error "LONG_00407D25"
    %endif
    times 5 - ($ - %%insn_00407d25) db 0
    %%insn_00407d2a:
    add esp,0x4 ; 00407D2A 83C404
    %if ($ - %%insn_00407d2a) > 3
        %error "LONG_00407D2A"
    %endif
    times 3 - ($ - %%insn_00407d2a) db 0
    %%insn_00407d2d:
    mov dword [ebp-0x13c],0x13c ; 00407D2D C785C4FEFFFF3C010000
    %if ($ - %%insn_00407d2d) > 10
        %error "LONG_00407D2D"
    %endif
    times 10 - ($ - %%insn_00407d2d) db 0
    %%insn_00407d37:
    push dword 0x6c ; 00407D37 6A6C
    %if ($ - %%insn_00407d37) > 2
        %error "LONG_00407D37"
    %endif
    times 2 - ($ - %%insn_00407d37) db 0
    %%insn_00407d39:
    push dword 0x0 ; 00407D39 6A00
    %if ($ - %%insn_00407d39) > 2
        %error "LONG_00407D39"
    %endif
    times 2 - ($ - %%insn_00407d39) db 0
    %%insn_00407d3b:
    lea ecx,[ebp-0x1a8] ; 00407D3B 8D8D58FEFFFF
    %if ($ - %%insn_00407d3b) > 6
        %error "LONG_00407D3B"
    %endif
    times 6 - ($ - %%insn_00407d3b) db 0
    %%insn_00407d41:
    push ecx ; 00407D41 51
    %if ($ - %%insn_00407d41) > 1
        %error "LONG_00407D41"
    %endif
    times 1 - ($ - %%insn_00407d41) db 0
    %%insn_00407d42:
    call 0x40d470 ; 00407D42 E829570000
    %if ($ - %%insn_00407d42) > 5
        %error "LONG_00407D42"
    %endif
    times 5 - ($ - %%insn_00407d42) db 0
    %%insn_00407d47:
    add esp,0xc ; 00407D47 83C40C
    %if ($ - %%insn_00407d47) > 3
        %error "LONG_00407D47"
    %endif
    times 3 - ($ - %%insn_00407d47) db 0
    %%insn_00407d4a:
    mov dword [ebp-0x1a8],0x6c ; 00407D4A C78558FEFFFF6C000000
    %if ($ - %%insn_00407d4a) > 10
        %error "LONG_00407D4A"
    %endif
    times 10 - ($ - %%insn_00407d4a) db 0
    %%insn_00407d54:
    mov dword [ebp-0x1a4],0x1 ; 00407D54 C7855CFEFFFF01000000
    %if ($ - %%insn_00407d54) > 10
        %error "LONG_00407D54"
    %endif
    times 10 - ($ - %%insn_00407d54) db 0
    %%insn_00407d5e:
    mov dword [ebp-0x140],0x200 ; 00407D5E C785C0FEFFFF00020000
    %if ($ - %%insn_00407d5e) > 10
        %error "LONG_00407D5E"
    %endif
    times 10 - ($ - %%insn_00407d5e) db 0
    %%insn_00407d68:
    push dword 0x0 ; 00407D68 6A00
    %if ($ - %%insn_00407d68) > 2
        %error "LONG_00407D68"
    %endif
    times 2 - ($ - %%insn_00407d68) db 0
    %%insn_00407d6a:
    push dword 0x421428 ; 00407D6A 6828144200
    %if ($ - %%insn_00407d6a) > 5
        %error "LONG_00407D6A"
    %endif
    times 5 - ($ - %%insn_00407d6a) db 0
    %%insn_00407d6f:
    lea edx,[ebp-0x1a8] ; 00407D6F 8D9558FEFFFF
    %if ($ - %%insn_00407d6f) > 6
        %error "LONG_00407D6F"
    %endif
    times 6 - ($ - %%insn_00407d6f) db 0
    %%insn_00407d75:
    push edx ; 00407D75 52
    %if ($ - %%insn_00407d75) > 1
        %error "LONG_00407D75"
    %endif
    times 1 - ($ - %%insn_00407d75) db 0
    %%insn_00407d76:
    mov eax,[0x41f54c] ; 00407D76 A14CF54100
    %if ($ - %%insn_00407d76) > 5
        %error "LONG_00407D76"
    %endif
    times 5 - ($ - %%insn_00407d76) db 0
    %%insn_00407d7b:
    push eax ; 00407D7B 50
    %if ($ - %%insn_00407d7b) > 1
        %error "LONG_00407D7B"
    %endif
    times 1 - ($ - %%insn_00407d7b) db 0
    %%insn_00407d7c:
    mov ecx,[0x41f54c] ; 00407D7C 8B0D4CF54100
    %if ($ - %%insn_00407d7c) > 6
        %error "LONG_00407D7C"
    %endif
    times 6 - ($ - %%insn_00407d7c) db 0
    %%insn_00407d82:
    mov edx,[ecx] ; 00407D82 8B11
    %if ($ - %%insn_00407d82) > 2
        %error "LONG_00407D82"
    %endif
    times 2 - ($ - %%insn_00407d82) db 0
    %%insn_00407d84:
    call dword near [edx+0x18] ; 00407D84 FF5218
    %if ($ - %%insn_00407d84) > 3
        %error "LONG_00407D84"
    %endif
    times 3 - ($ - %%insn_00407d84) db 0
    %%insn_00407d87:
    mov [ebp-0x5ac],eax ; 00407D87 898554FAFFFF
    %if ($ - %%insn_00407d87) > 6
        %error "LONG_00407D87"
    %endif
    times 6 - ($ - %%insn_00407d87) db 0
    %%insn_00407d8d:
    cmp dword [ebp-0x5ac],0x0 ; 00407D8D 83BD54FAFFFF00
    %if ($ - %%insn_00407d8d) > 7
        %error "LONG_00407D8D"
    %endif
    times 7 - ($ - %%insn_00407d8d) db 0
    %%insn_00407d94:
    jz short 0x407da3 ; 00407D94 740D
    %if ($ - %%insn_00407d94) > 2
        %error "LONG_00407D94"
    %endif
    times 2 - ($ - %%insn_00407d94) db 0
    %%insn_00407d96:
    push dword 0x41bab8 ; 00407D96 68B8BA4100
    %if ($ - %%insn_00407d96) > 5
        %error "LONG_00407D96"
    %endif
    times 5 - ($ - %%insn_00407d96) db 0
    %%insn_00407d9b:
    call 0x409760 ; 00407D9B E8C0190000
    %if ($ - %%insn_00407d9b) > 5
        %error "LONG_00407D9B"
    %endif
    times 5 - ($ - %%insn_00407d9b) db 0
    %%insn_00407da0:
    add esp,0x4 ; 00407DA0 83C404
    %if ($ - %%insn_00407da0) > 3
        %error "LONG_00407DA0"
    %endif
    times 3 - ($ - %%insn_00407da0) db 0
    %%insn_00407da3:
    mov dword [ebp-0x1a4],0x7 ; 00407DA3 C7855CFEFFFF07000000
    %if ($ - %%insn_00407da3) > 10
        %error "LONG_00407DA3"
    %endif
    times 10 - ($ - %%insn_00407da3) db 0
    %%insn_00407dad:
    mov dword [ebp-0x140],0x840 ; 00407DAD C785C0FEFFFF40080000
    %if ($ - %%insn_00407dad) > 10
        %error "LONG_00407DAD"
    %endif
    times 10 - ($ - %%insn_00407dad) db 0
    %%insn_00407db7:
    mov dword [ebp-0x19c],0x280 ; 00407DB7 C78564FEFFFF80020000
    %if ($ - %%insn_00407db7) > 10
        %error "LONG_00407DB7"
    %endif
    times 10 - ($ - %%insn_00407db7) db 0
    %%insn_00407dc1:
    mov dword [ebp-0x1a0],0x1e0 ; 00407DC1 C78560FEFFFFE0010000
    %if ($ - %%insn_00407dc1) > 10
        %error "LONG_00407DC1"
    %endif
    times 10 - ($ - %%insn_00407dc1) db 0
    %%insn_00407dcb:
    push dword 0x0 ; 00407DCB 6A00
    %if ($ - %%insn_00407dcb) > 2
        %error "LONG_00407DCB"
    %endif
    times 2 - ($ - %%insn_00407dcb) db 0
    %%insn_00407dcd:
    push dword 0x421438 ; 00407DCD 6838144200
    %if ($ - %%insn_00407dcd) > 5
        %error "LONG_00407DCD"
    %endif
    times 5 - ($ - %%insn_00407dcd) db 0
    %%insn_00407dd2:
    lea eax,[ebp-0x1a8] ; 00407DD2 8D8558FEFFFF
    %if ($ - %%insn_00407dd2) > 6
        %error "LONG_00407DD2"
    %endif
    times 6 - ($ - %%insn_00407dd2) db 0
    %%insn_00407dd8:
    push eax ; 00407DD8 50
    %if ($ - %%insn_00407dd8) > 1
        %error "LONG_00407DD8"
    %endif
    times 1 - ($ - %%insn_00407dd8) db 0
    %%insn_00407dd9:
    mov ecx,[0x41f54c] ; 00407DD9 8B0D4CF54100
    %if ($ - %%insn_00407dd9) > 6
        %error "LONG_00407DD9"
    %endif
    times 6 - ($ - %%insn_00407dd9) db 0
    %%insn_00407ddf:
    push ecx ; 00407DDF 51
    %if ($ - %%insn_00407ddf) > 1
        %error "LONG_00407DDF"
    %endif
    times 1 - ($ - %%insn_00407ddf) db 0
    %%insn_00407de0:
    mov edx,[0x41f54c] ; 00407DE0 8B154CF54100
    %if ($ - %%insn_00407de0) > 6
        %error "LONG_00407DE0"
    %endif
    times 6 - ($ - %%insn_00407de0) db 0
    %%insn_00407de6:
    mov eax,[edx] ; 00407DE6 8B02
    %if ($ - %%insn_00407de6) > 2
        %error "LONG_00407DE6"
    %endif
    times 2 - ($ - %%insn_00407de6) db 0
    %%insn_00407de8:
    call dword near [eax+0x18] ; 00407DE8 FF5018
    %if ($ - %%insn_00407de8) > 3
        %error "LONG_00407DE8"
    %endif
    times 3 - ($ - %%insn_00407de8) db 0
    %%insn_00407deb:
    mov [ebp-0x5ac],eax ; 00407DEB 898554FAFFFF
    %if ($ - %%insn_00407deb) > 6
        %error "LONG_00407DEB"
    %endif
    times 6 - ($ - %%insn_00407deb) db 0
    %%insn_00407df1:
    cmp dword [ebp-0x5ac],0x0 ; 00407DF1 83BD54FAFFFF00
    %if ($ - %%insn_00407df1) > 7
        %error "LONG_00407DF1"
    %endif
    times 7 - ($ - %%insn_00407df1) db 0
    %%insn_00407df8:
    jz short 0x407e07 ; 00407DF8 740D
    %if ($ - %%insn_00407df8) > 2
        %error "LONG_00407DF8"
    %endif
    times 2 - ($ - %%insn_00407df8) db 0
    %%insn_00407dfa:
    push dword 0x41baf0 ; 00407DFA 68F0BA4100
    %if ($ - %%insn_00407dfa) > 5
        %error "LONG_00407DFA"
    %endif
    times 5 - ($ - %%insn_00407dfa) db 0
    %%insn_00407dff:
    call 0x409760 ; 00407DFF E85C190000
    %if ($ - %%insn_00407dff) > 5
        %error "LONG_00407DFF"
    %endif
    times 5 - ($ - %%insn_00407dff) db 0
    %%insn_00407e04:
    add esp,0x4 ; 00407E04 83C404
    %if ($ - %%insn_00407e04) > 3
        %error "LONG_00407E04"
    %endif
    times 3 - ($ - %%insn_00407e04) db 0
    %%insn_00407e07:
    mov ecx,[0x421438] ; 00407E07 8B0D38144200
    %if ($ - %%insn_00407e07) > 6
        %error "LONG_00407E07"
    %endif
    times 6 - ($ - %%insn_00407e07) db 0
    %%insn_00407e0d:
    call 0x407b0d ; 00407E0D E8FBFCFFFF
    %if ($ - %%insn_00407e0d) > 5
        %error "LONG_00407E0D"
    %endif
    times 5 - ($ - %%insn_00407e0d) db 0
    %%insn_00407e12:
    mov ecx,[0x421434] ; 00407E12 8B0D34144200
    %if ($ - %%insn_00407e12) > 6
        %error "LONG_00407E12"
    %endif
    times 6 - ($ - %%insn_00407e12) db 0
    %%insn_00407e18:
    mov [0x421424],ecx ; 00407E18 890D24144200
    %if ($ - %%insn_00407e18) > 6
        %error "LONG_00407E18"
    %endif
    times 6 - ($ - %%insn_00407e18) db 0
    %%insn_00407e1e:
    mov ecx,[0x421438] ; 00407E1E 8B0D38144200
    %if ($ - %%insn_00407e1e) > 6
        %error "LONG_00407E1E"
    %endif
    times 6 - ($ - %%insn_00407e1e) db 0
    %%insn_00407e24:
    call 0x407ae7 ; 00407E24 E8BEFCFFFF
    %if ($ - %%insn_00407e24) > 5
        %error "LONG_00407E24"
    %endif
    times 5 - ($ - %%insn_00407e24) db 0
    %%insn_00407e29:
    mov dword [ebp-0x5b0],0x0 ; 00407E29 C78550FAFFFF00000000
    %if ($ - %%insn_00407e29) > 10
        %error "LONG_00407E29"
    %endif
    times 10 - ($ - %%insn_00407e29) db 0
    %%insn_00407e33:
    jmp short 0x407e44 ; 00407E33 EB0F
    %if ($ - %%insn_00407e33) > 2
        %error "LONG_00407E33"
    %endif
    times 2 - ($ - %%insn_00407e33) db 0
    %%insn_00407e35:
    mov edx,[ebp-0x5b0] ; 00407E35 8B9550FAFFFF
    %if ($ - %%insn_00407e35) > 6
        %error "LONG_00407E35"
    %endif
    times 6 - ($ - %%insn_00407e35) db 0
    %%insn_00407e3b:
    add edx,0x1 ; 00407E3B 83C201
    %if ($ - %%insn_00407e3b) > 3
        %error "LONG_00407E3B"
    %endif
    times 3 - ($ - %%insn_00407e3b) db 0
    %%insn_00407e3e:
    mov [ebp-0x5b0],edx ; 00407E3E 899550FAFFFF
    %if ($ - %%insn_00407e3e) > 6
        %error "LONG_00407E3E"
    %endif
    times 6 - ($ - %%insn_00407e3e) db 0
    %%insn_00407e44:
    cmp dword [ebp-0x5b0],0x100 ; 00407E44 81BD50FAFFFF00010000
    %if ($ - %%insn_00407e44) > 10
        %error "LONG_00407E44"
    %endif
    times 10 - ($ - %%insn_00407e44) db 0
    %%insn_00407e4e:
    jnl short 0x407eb0 ; 00407E4E 7D60
    %if ($ - %%insn_00407e4e) > 2
        %error "LONG_00407E4E"
    %endif
    times 2 - ($ - %%insn_00407e4e) db 0
    %%insn_00407e50:
    mov eax,[ebp-0x5b0] ; 00407E50 8B8550FAFFFF
    %if ($ - %%insn_00407e50) > 6
        %error "LONG_00407E50"
    %endif
    times 6 - ($ - %%insn_00407e50) db 0
    %%insn_00407e56:
    imul eax,eax,0x3 ; 00407E56 6BC003
    %if ($ - %%insn_00407e56) > 3
        %error "LONG_00407E56"
    %endif
    times 3 - ($ - %%insn_00407e56) db 0
    %%insn_00407e59:
    mov ecx,[ebp-0x5b0] ; 00407E59 8B8D50FAFFFF
    %if ($ - %%insn_00407e59) > 6
        %error "LONG_00407E59"
    %endif
    times 6 - ($ - %%insn_00407e59) db 0
    %%insn_00407e5f:
    mov edx,[0x421344] ; 00407E5F 8B1544134200
    %if ($ - %%insn_00407e5f) > 6
        %error "LONG_00407E5F"
    %endif
    times 6 - ($ - %%insn_00407e5f) db 0
    %%insn_00407e65:
    mov al,[edx+eax] ; 00407E65 8A0402
    %if ($ - %%insn_00407e65) > 3
        %error "LONG_00407E65"
    %endif
    times 3 - ($ - %%insn_00407e65) db 0
    %%insn_00407e68:
    mov [ebp+ecx*4-0x5a8],al ; 00407E68 88848D58FAFFFF
    %if ($ - %%insn_00407e68) > 7
        %error "LONG_00407E68"
    %endif
    times 7 - ($ - %%insn_00407e68) db 0
    %%insn_00407e6f:
    mov ecx,[ebp-0x5b0] ; 00407E6F 8B8D50FAFFFF
    %if ($ - %%insn_00407e6f) > 6
        %error "LONG_00407E6F"
    %endif
    times 6 - ($ - %%insn_00407e6f) db 0
    %%insn_00407e75:
    imul ecx,ecx,0x3 ; 00407E75 6BC903
    %if ($ - %%insn_00407e75) > 3
        %error "LONG_00407E75"
    %endif
    times 3 - ($ - %%insn_00407e75) db 0
    %%insn_00407e78:
    mov edx,[ebp-0x5b0] ; 00407E78 8B9550FAFFFF
    %if ($ - %%insn_00407e78) > 6
        %error "LONG_00407E78"
    %endif
    times 6 - ($ - %%insn_00407e78) db 0
    %%insn_00407e7e:
    mov eax,[0x421344] ; 00407E7E A144134200
    %if ($ - %%insn_00407e7e) > 5
        %error "LONG_00407E7E"
    %endif
    times 5 - ($ - %%insn_00407e7e) db 0
    %%insn_00407e83:
    mov cl,[eax+ecx+0x1] ; 00407E83 8A4C0801
    %if ($ - %%insn_00407e83) > 4
        %error "LONG_00407E83"
    %endif
    times 4 - ($ - %%insn_00407e83) db 0
    %%insn_00407e87:
    mov [ebp+edx*4-0x5a7],cl ; 00407E87 888C9559FAFFFF
    %if ($ - %%insn_00407e87) > 7
        %error "LONG_00407E87"
    %endif
    times 7 - ($ - %%insn_00407e87) db 0
    %%insn_00407e8e:
    mov edx,[ebp-0x5b0] ; 00407E8E 8B9550FAFFFF
    %if ($ - %%insn_00407e8e) > 6
        %error "LONG_00407E8E"
    %endif
    times 6 - ($ - %%insn_00407e8e) db 0
    %%insn_00407e94:
    imul edx,edx,0x3 ; 00407E94 6BD203
    %if ($ - %%insn_00407e94) > 3
        %error "LONG_00407E94"
    %endif
    times 3 - ($ - %%insn_00407e94) db 0
    %%insn_00407e97:
    mov eax,[ebp-0x5b0] ; 00407E97 8B8550FAFFFF
    %if ($ - %%insn_00407e97) > 6
        %error "LONG_00407E97"
    %endif
    times 6 - ($ - %%insn_00407e97) db 0
    %%insn_00407e9d:
    mov ecx,[0x421344] ; 00407E9D 8B0D44134200
    %if ($ - %%insn_00407e9d) > 6
        %error "LONG_00407E9D"
    %endif
    times 6 - ($ - %%insn_00407e9d) db 0
    %%insn_00407ea3:
    mov dl,[ecx+edx+0x2] ; 00407EA3 8A541102
    %if ($ - %%insn_00407ea3) > 4
        %error "LONG_00407EA3"
    %endif
    times 4 - ($ - %%insn_00407ea3) db 0
    %%insn_00407ea7:
    mov [ebp+eax*4-0x5a6],dl ; 00407EA7 8894855AFAFFFF
    %if ($ - %%insn_00407ea7) > 7
        %error "LONG_00407EA7"
    %endif
    times 7 - ($ - %%insn_00407ea7) db 0
    %%insn_00407eae:
    jmp short 0x407e35 ; 00407EAE EB85
    %if ($ - %%insn_00407eae) > 2
        %error "LONG_00407EAE"
    %endif
    times 2 - ($ - %%insn_00407eae) db 0
    %%insn_00407eb0:
    push dword 0x0 ; 00407EB0 6A00
    %if ($ - %%insn_00407eb0) > 2
        %error "LONG_00407EB0"
    %endif
    times 2 - ($ - %%insn_00407eb0) db 0
    %%insn_00407eb2:
    push dword 0x42142c ; 00407EB2 682C144200
    %if ($ - %%insn_00407eb2) > 5
        %error "LONG_00407EB2"
    %endif
    times 5 - ($ - %%insn_00407eb2) db 0
    %%insn_00407eb7:
    lea eax,[ebp-0x5a8] ; 00407EB7 8D8558FAFFFF
    %if ($ - %%insn_00407eb7) > 6
        %error "LONG_00407EB7"
    %endif
    times 6 - ($ - %%insn_00407eb7) db 0
    %%insn_00407ebd:
    push eax ; 00407EBD 50
    %if ($ - %%insn_00407ebd) > 1
        %error "LONG_00407EBD"
    %endif
    times 1 - ($ - %%insn_00407ebd) db 0
    %%insn_00407ebe:
    push dword 0x44 ; 00407EBE 6A44
    %if ($ - %%insn_00407ebe) > 2
        %error "LONG_00407EBE"
    %endif
    times 2 - ($ - %%insn_00407ebe) db 0
    %%insn_00407ec0:
    mov ecx,[0x41f54c] ; 00407EC0 8B0D4CF54100
    %if ($ - %%insn_00407ec0) > 6
        %error "LONG_00407EC0"
    %endif
    times 6 - ($ - %%insn_00407ec0) db 0
    %%insn_00407ec6:
    push ecx ; 00407EC6 51
    %if ($ - %%insn_00407ec6) > 1
        %error "LONG_00407EC6"
    %endif
    times 1 - ($ - %%insn_00407ec6) db 0
    %%insn_00407ec7:
    mov edx,[0x41f54c] ; 00407EC7 8B154CF54100
    %if ($ - %%insn_00407ec7) > 6
        %error "LONG_00407EC7"
    %endif
    times 6 - ($ - %%insn_00407ec7) db 0
    %%insn_00407ecd:
    mov eax,[edx] ; 00407ECD 8B02
    %if ($ - %%insn_00407ecd) > 2
        %error "LONG_00407ECD"
    %endif
    times 2 - ($ - %%insn_00407ecd) db 0
    %%insn_00407ecf:
    call dword near [eax+0x14] ; 00407ECF FF5014
    %if ($ - %%insn_00407ecf) > 3
        %error "LONG_00407ECF"
    %endif
    times 3 - ($ - %%insn_00407ecf) db 0
    %%insn_00407ed2:
    mov [ebp-0x5ac],eax ; 00407ED2 898554FAFFFF
    %if ($ - %%insn_00407ed2) > 6
        %error "LONG_00407ED2"
    %endif
    times 6 - ($ - %%insn_00407ed2) db 0
    %%insn_00407ed8:
    cmp dword [ebp-0x5ac],0x0 ; 00407ED8 83BD54FAFFFF00
    %if ($ - %%insn_00407ed8) > 7
        %error "LONG_00407ED8"
    %endif
    times 7 - ($ - %%insn_00407ed8) db 0
    %%insn_00407edf:
    jz short 0x407eee ; 00407EDF 740D
    %if ($ - %%insn_00407edf) > 2
        %error "LONG_00407EDF"
    %endif
    times 2 - ($ - %%insn_00407edf) db 0
    %%insn_00407ee1:
    push dword 0x41bb28 ; 00407EE1 6828BB4100
    %if ($ - %%insn_00407ee1) > 5
        %error "LONG_00407EE1"
    %endif
    times 5 - ($ - %%insn_00407ee1) db 0
    %%insn_00407ee6:
    call 0x409760 ; 00407EE6 E875180000
    %if ($ - %%insn_00407ee6) > 5
        %error "LONG_00407EE6"
    %endif
    times 5 - ($ - %%insn_00407ee6) db 0
    %%insn_00407eeb:
    add esp,0x4 ; 00407EEB 83C404
    %if ($ - %%insn_00407eeb) > 3
        %error "LONG_00407EEB"
    %endif
    times 3 - ($ - %%insn_00407eeb) db 0
    %%insn_00407eee:
    mov ecx,[0x42142c] ; 00407EEE 8B0D2C144200
    %if ($ - %%insn_00407eee) > 6
        %error "LONG_00407EEE"
    %endif
    times 6 - ($ - %%insn_00407eee) db 0
    %%insn_00407ef4:
    push ecx ; 00407EF4 51
    %if ($ - %%insn_00407ef4) > 1
        %error "LONG_00407EF4"
    %endif
    times 1 - ($ - %%insn_00407ef4) db 0
    %%insn_00407ef5:
    mov edx,[0x421428] ; 00407EF5 8B1528144200
    %if ($ - %%insn_00407ef5) > 6
        %error "LONG_00407EF5"
    %endif
    times 6 - ($ - %%insn_00407ef5) db 0
    %%insn_00407efb:
    push edx ; 00407EFB 52
    %if ($ - %%insn_00407efb) > 1
        %error "LONG_00407EFB"
    %endif
    times 1 - ($ - %%insn_00407efb) db 0
    %%insn_00407efc:
    mov eax,[0x421428] ; 00407EFC A128144200
    %if ($ - %%insn_00407efc) > 5
        %error "LONG_00407EFC"
    %endif
    times 5 - ($ - %%insn_00407efc) db 0
    %%insn_00407f01:
    mov ecx,[eax] ; 00407F01 8B08
    %if ($ - %%insn_00407f01) > 2
        %error "LONG_00407F01"
    %endif
    times 2 - ($ - %%insn_00407f01) db 0
    %%insn_00407f03:
    call dword near [ecx+0x7c] ; 00407F03 FF517C
    %if ($ - %%insn_00407f03) > 3
        %error "LONG_00407F03"
    %endif
    times 3 - ($ - %%insn_00407f03) db 0
    %%insn_00407f06:
    mov [ebp-0x5ac],eax ; 00407F06 898554FAFFFF
    %if ($ - %%insn_00407f06) > 6
        %error "LONG_00407F06"
    %endif
    times 6 - ($ - %%insn_00407f06) db 0
    %%insn_00407f0c:
    cmp dword [ebp-0x5ac],0x0 ; 00407F0C 83BD54FAFFFF00
    %if ($ - %%insn_00407f0c) > 7
        %error "LONG_00407F0C"
    %endif
    times 7 - ($ - %%insn_00407f0c) db 0
    %%insn_00407f13:
    jz short 0x407f22 ; 00407F13 740D
    %if ($ - %%insn_00407f13) > 2
        %error "LONG_00407F13"
    %endif
    times 2 - ($ - %%insn_00407f13) db 0
    %%insn_00407f15:
    push dword 0x41bb50 ; 00407F15 6850BB4100
    %if ($ - %%insn_00407f15) > 5
        %error "LONG_00407F15"
    %endif
    times 5 - ($ - %%insn_00407f15) db 0
    %%insn_00407f1a:
    call 0x409760 ; 00407F1A E841180000
    %if ($ - %%insn_00407f1a) > 5
        %error "LONG_00407F1A"
    %endif
    times 5 - ($ - %%insn_00407f1a) db 0
    %%insn_00407f1f:
    add esp,0x4 ; 00407F1F 83C404
    %if ($ - %%insn_00407f1f) > 3
        %error "LONG_00407F1F"
    %endif
    times 3 - ($ - %%insn_00407f1f) db 0
    %%insn_00407f22:
    mov eax,[0x421424] ; 00407F22 A124144200
    %if ($ - %%insn_00407f22) > 5
        %error "LONG_00407F22"
    %endif
    times 5 - ($ - %%insn_00407f22) db 0
    db 0x8B, 0xE5 ; 00407F27 8BE5 | mov esp,ebp | encoding preserved
    %%insn_00407f29:
    pop ebp ; 00407F29 5D
    %if ($ - %%insn_00407f29) > 1
        %error "LONG_00407F29"
    %endif
    times 1 - ($ - %%insn_00407f29) db 0
    %%insn_00407f2a:
    ret word 0x10 ; 00407F2A C21000
    %if ($ - %%insn_00407f2a) > 3
        %error "LONG_00407F2A"
    %endif
    times 3 - ($ - %%insn_00407f2a) db 0
    %if ($ - %%fragment_start) != 772
        %error "function fragment size drift: 00407C29"
    %endif
%endmacro
