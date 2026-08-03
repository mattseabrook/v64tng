; PE virtual entry 00406E28
; Ghidra working symbol: FUN_00406e28
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00406e28_part_00 0
    %%fragment_start:
func_00406e28:
    %%insn_00406e28:
    push ebp ; 00406E28 55
    %if ($ - %%insn_00406e28) > 1
        %error "LONG_00406E28"
    %endif
    times 1 - ($ - %%insn_00406e28) db 0
    db 0x8B, 0xEC ; 00406E29 8BEC | mov ebp,esp | encoding preserved
    %%insn_00406e2b:
    sub esp,0xc ; 00406E2B 83EC0C
    %if ($ - %%insn_00406e2b) > 3
        %error "LONG_00406E2B"
    %endif
    times 3 - ($ - %%insn_00406e2b) db 0
    %%insn_00406e2e:
    cmp dword [0x41f510],0x0 ; 00406E2E 833D10F5410000
    %if ($ - %%insn_00406e2e) > 7
        %error "LONG_00406E2E"
    %endif
    times 7 - ($ - %%insn_00406e2e) db 0
    %%insn_00406e35:
    jz 0x406f56 ; 00406E35 0F841B010000
    %if ($ - %%insn_00406e35) > 6
        %error "LONG_00406E35"
    %endif
    times 6 - ($ - %%insn_00406e35) db 0
    %%insn_00406e3b:
    mov eax,[0x41f518] ; 00406E3B A118F54100
    %if ($ - %%insn_00406e3b) > 5
        %error "LONG_00406E3B"
    %endif
    times 5 - ($ - %%insn_00406e3b) db 0
    %%insn_00406e40:
    cmp eax,[0x41f51c] ; 00406E40 3B051CF54100
    %if ($ - %%insn_00406e40) > 6
        %error "LONG_00406E40"
    %endif
    times 6 - ($ - %%insn_00406e40) db 0
    %%insn_00406e46:
    jnl 0x406f39 ; 00406E46 0F8DED000000
    %if ($ - %%insn_00406e46) > 6
        %error "LONG_00406E46"
    %endif
    times 6 - ($ - %%insn_00406e46) db 0
    %%insn_00406e4c:
    mov ecx,[0x41f51c] ; 00406E4C 8B0D1CF54100
    %if ($ - %%insn_00406e4c) > 6
        %error "LONG_00406E4C"
    %endif
    times 6 - ($ - %%insn_00406e4c) db 0
    %%insn_00406e52:
    sub ecx,[0x41f518] ; 00406E52 2B0D18F54100
    %if ($ - %%insn_00406e52) > 6
        %error "LONG_00406E52"
    %endif
    times 6 - ($ - %%insn_00406e52) db 0
    %%insn_00406e58:
    cmp ecx,[0x42144c] ; 00406E58 3B0D4C144200
    %if ($ - %%insn_00406e58) > 6
        %error "LONG_00406E58"
    %endif
    times 6 - ($ - %%insn_00406e58) db 0
    %%insn_00406e5e:
    jl 0x406f39 ; 00406E5E 0F8CD5000000
    %if ($ - %%insn_00406e5e) > 6
        %error "LONG_00406E5E"
    %endif
    times 6 - ($ - %%insn_00406e5e) db 0
    %%insn_00406e64:
    mov edx,[0x41f4f8] ; 00406E64 8B15F8F44100
    %if ($ - %%insn_00406e64) > 6
        %error "LONG_00406E64"
    %endif
    times 6 - ($ - %%insn_00406e64) db 0
    %%insn_00406e6a:
    push edx ; 00406E6A 52
    %if ($ - %%insn_00406e6a) > 1
        %error "LONG_00406E6A"
    %endif
    times 1 - ($ - %%insn_00406e6a) db 0
    %%insn_00406e6b:
    call dword near [0x424600] ; 00406E6B FF1500464200
    %if ($ - %%insn_00406e6b) > 6
        %error "LONG_00406E6B"
    %endif
    times 6 - ($ - %%insn_00406e6b) db 0
    %%insn_00406e71:
    mov [ebp-0x8],eax ; 00406E71 8945F8
    %if ($ - %%insn_00406e71) > 3
        %error "LONG_00406E71"
    %endif
    times 3 - ($ - %%insn_00406e71) db 0
    %%insn_00406e74:
    cmp dword [ebp-0x8],0xffffffffffffffff ; 00406E74 837DF8FF
    %if ($ - %%insn_00406e74) > 4
        %error "LONG_00406E74"
    %endif
    times 4 - ($ - %%insn_00406e74) db 0
    %%insn_00406e78:
    jz 0x406f39 ; 00406E78 0F84BB000000
    %if ($ - %%insn_00406e78) > 6
        %error "LONG_00406E78"
    %endif
    times 6 - ($ - %%insn_00406e78) db 0
    %%insn_00406e7e:
    cmp dword [0x41f50c],0x8000 ; 00406E7E 813D0CF5410000800000
    %if ($ - %%insn_00406e7e) > 10
        %error "LONG_00406E7E"
    %endif
    times 10 - ($ - %%insn_00406e7e) db 0
    %%insn_00406e88:
    jl short 0x406eb6 ; 00406E88 7C2C
    %if ($ - %%insn_00406e88) > 2
        %error "LONG_00406E88"
    %endif
    times 2 - ($ - %%insn_00406e88) db 0
    %%insn_00406e8a:
    mov eax,[0x41f50c] ; 00406E8A A10CF54100
    %if ($ - %%insn_00406e8a) > 5
        %error "LONG_00406E8A"
    %endif
    times 5 - ($ - %%insn_00406e8a) db 0
    %%insn_00406e8f:
    mov [ebp-0x4],eax ; 00406E8F 8945FC
    %if ($ - %%insn_00406e8f) > 3
        %error "LONG_00406E8F"
    %endif
    times 3 - ($ - %%insn_00406e8f) db 0
    %%insn_00406e92:
    jmp short 0x406e9d ; 00406E92 EB09
    %if ($ - %%insn_00406e92) > 2
        %error "LONG_00406E92"
    %endif
    times 2 - ($ - %%insn_00406e92) db 0
    %%insn_00406e94:
    mov ecx,[ebp-0x4] ; 00406E94 8B4DFC
    %if ($ - %%insn_00406e94) > 3
        %error "LONG_00406E94"
    %endif
    times 3 - ($ - %%insn_00406e94) db 0
    %%insn_00406e97:
    add ecx,0x1 ; 00406E97 83C101
    %if ($ - %%insn_00406e97) > 3
        %error "LONG_00406E97"
    %endif
    times 3 - ($ - %%insn_00406e97) db 0
    %%insn_00406e9a:
    mov [ebp-0x4],ecx ; 00406E9A 894DFC
    %if ($ - %%insn_00406e9a) > 3
        %error "LONG_00406E9A"
    %endif
    times 3 - ($ - %%insn_00406e9a) db 0
    %%insn_00406e9d:
    cmp dword [ebp-0x4],0x10000 ; 00406E9D 817DFC00000100
    %if ($ - %%insn_00406e9d) > 7
        %error "LONG_00406E9D"
    %endif
    times 7 - ($ - %%insn_00406e9d) db 0
    %%insn_00406ea4:
    jnl short 0x406eb4 ; 00406EA4 7D0E
    %if ($ - %%insn_00406ea4) > 2
        %error "LONG_00406EA4"
    %endif
    times 2 - ($ - %%insn_00406ea4) db 0
    %%insn_00406ea6:
    mov edx,[0x42143c] ; 00406EA6 8B153C144200
    %if ($ - %%insn_00406ea6) > 6
        %error "LONG_00406EA6"
    %endif
    times 6 - ($ - %%insn_00406ea6) db 0
    %%insn_00406eac:
    add edx,[ebp-0x4] ; 00406EAC 0355FC
    %if ($ - %%insn_00406eac) > 3
        %error "LONG_00406EAC"
    %endif
    times 3 - ($ - %%insn_00406eac) db 0
    %%insn_00406eaf:
    mov byte [edx],0x80 ; 00406EAF C60280
    %if ($ - %%insn_00406eaf) > 3
        %error "LONG_00406EAF"
    %endif
    times 3 - ($ - %%insn_00406eaf) db 0
    %%insn_00406eb2:
    jmp short 0x406e94 ; 00406EB2 EBE0
    %if ($ - %%insn_00406eb2) > 2
        %error "LONG_00406EB2"
    %endif
    times 2 - ($ - %%insn_00406eb2) db 0
    %%insn_00406eb4:
    jmp short 0x406ee0 ; 00406EB4 EB2A
    %if ($ - %%insn_00406eb4) > 2
        %error "LONG_00406EB4"
    %endif
    times 2 - ($ - %%insn_00406eb4) db 0
    %%insn_00406eb6:
    mov eax,[0x41f50c] ; 00406EB6 A10CF54100
    %if ($ - %%insn_00406eb6) > 5
        %error "LONG_00406EB6"
    %endif
    times 5 - ($ - %%insn_00406eb6) db 0
    %%insn_00406ebb:
    mov [ebp-0x4],eax ; 00406EBB 8945FC
    %if ($ - %%insn_00406ebb) > 3
        %error "LONG_00406EBB"
    %endif
    times 3 - ($ - %%insn_00406ebb) db 0
    %%insn_00406ebe:
    jmp short 0x406ec9 ; 00406EBE EB09
    %if ($ - %%insn_00406ebe) > 2
        %error "LONG_00406EBE"
    %endif
    times 2 - ($ - %%insn_00406ebe) db 0
    %%insn_00406ec0:
    mov ecx,[ebp-0x4] ; 00406EC0 8B4DFC
    %if ($ - %%insn_00406ec0) > 3
        %error "LONG_00406EC0"
    %endif
    times 3 - ($ - %%insn_00406ec0) db 0
    %%insn_00406ec3:
    add ecx,0x1 ; 00406EC3 83C101
    %if ($ - %%insn_00406ec3) > 3
        %error "LONG_00406EC3"
    %endif
    times 3 - ($ - %%insn_00406ec3) db 0
    %%insn_00406ec6:
    mov [ebp-0x4],ecx ; 00406EC6 894DFC
    %if ($ - %%insn_00406ec6) > 3
        %error "LONG_00406EC6"
    %endif
    times 3 - ($ - %%insn_00406ec6) db 0
    %%insn_00406ec9:
    cmp dword [ebp-0x4],0x8000 ; 00406EC9 817DFC00800000
    %if ($ - %%insn_00406ec9) > 7
        %error "LONG_00406EC9"
    %endif
    times 7 - ($ - %%insn_00406ec9) db 0
    %%insn_00406ed0:
    jnl short 0x406ee0 ; 00406ED0 7D0E
    %if ($ - %%insn_00406ed0) > 2
        %error "LONG_00406ED0"
    %endif
    times 2 - ($ - %%insn_00406ed0) db 0
    %%insn_00406ed2:
    mov edx,[0x42143c] ; 00406ED2 8B153C144200
    %if ($ - %%insn_00406ed2) > 6
        %error "LONG_00406ED2"
    %endif
    times 6 - ($ - %%insn_00406ed2) db 0
    %%insn_00406ed8:
    add edx,[ebp-0x4] ; 00406ED8 0355FC
    %if ($ - %%insn_00406ed8) > 3
        %error "LONG_00406ED8"
    %endif
    times 3 - ($ - %%insn_00406ed8) db 0
    %%insn_00406edb:
    mov byte [edx],0x80 ; 00406EDB C60280
    %if ($ - %%insn_00406edb) > 3
        %error "LONG_00406EDB"
    %endif
    times 3 - ($ - %%insn_00406edb) db 0
    %%insn_00406ede:
    jmp short 0x406ec0 ; 00406EDE EBE0
    %if ($ - %%insn_00406ede) > 2
        %error "LONG_00406EDE"
    %endif
    times 2 - ($ - %%insn_00406ede) db 0
    %%insn_00406ee0:
    push dword 0x8000 ; 00406EE0 6800800000
    %if ($ - %%insn_00406ee0) > 5
        %error "LONG_00406EE0"
    %endif
    times 5 - ($ - %%insn_00406ee0) db 0
    %%insn_00406ee5:
    mov eax,[0x42143c] ; 00406EE5 A13C144200
    %if ($ - %%insn_00406ee5) > 5
        %error "LONG_00406EE5"
    %endif
    times 5 - ($ - %%insn_00406ee5) db 0
    %%insn_00406eea:
    add eax,[0x41f514] ; 00406EEA 030514F54100
    %if ($ - %%insn_00406eea) > 6
        %error "LONG_00406EEA"
    %endif
    times 6 - ($ - %%insn_00406eea) db 0
    %%insn_00406ef0:
    push eax ; 00406EF0 50
    %if ($ - %%insn_00406ef0) > 1
        %error "LONG_00406EF0"
    %endif
    times 1 - ($ - %%insn_00406ef0) db 0
    %%insn_00406ef1:
    mov ecx,[ebp-0x8] ; 00406EF1 8B4DF8
    %if ($ - %%insn_00406ef1) > 3
        %error "LONG_00406EF1"
    %endif
    times 3 - ($ - %%insn_00406ef1) db 0
    %%insn_00406ef4:
    push ecx ; 00406EF4 51
    %if ($ - %%insn_00406ef4) > 1
        %error "LONG_00406EF4"
    %endif
    times 1 - ($ - %%insn_00406ef4) db 0
    %%insn_00406ef5:
    mov edx,[0x41f4f8] ; 00406EF5 8B15F8F44100
    %if ($ - %%insn_00406ef5) > 6
        %error "LONG_00406EF5"
    %endif
    times 6 - ($ - %%insn_00406ef5) db 0
    %%insn_00406efb:
    push edx ; 00406EFB 52
    %if ($ - %%insn_00406efb) > 1
        %error "LONG_00406EFB"
    %endif
    times 1 - ($ - %%insn_00406efb) db 0
    %%insn_00406efc:
    call dword near [0x424604] ; 00406EFC FF1504464200
    %if ($ - %%insn_00406efc) > 6
        %error "LONG_00406EFC"
    %endif
    times 6 - ($ - %%insn_00406efc) db 0
    %%insn_00406f02:
    mov eax,[0x41f514] ; 00406F02 A114F54100
    %if ($ - %%insn_00406f02) > 5
        %error "LONG_00406F02"
    %endif
    times 5 - ($ - %%insn_00406f02) db 0
    %%insn_00406f07:
    add eax,0x8000 ; 00406F07 0500800000
    %if ($ - %%insn_00406f07) > 5
        %error "LONG_00406F07"
    %endif
    times 5 - ($ - %%insn_00406f07) db 0
    %%insn_00406f0c:
    mov [0x41f514],eax ; 00406F0C A314F54100
    %if ($ - %%insn_00406f0c) > 5
        %error "LONG_00406F0C"
    %endif
    times 5 - ($ - %%insn_00406f0c) db 0
    %%insn_00406f11:
    mov ecx,[0x41f518] ; 00406F11 8B0D18F54100
    %if ($ - %%insn_00406f11) > 6
        %error "LONG_00406F11"
    %endif
    times 6 - ($ - %%insn_00406f11) db 0
    %%insn_00406f17:
    add ecx,0x8000 ; 00406F17 81C100800000
    %if ($ - %%insn_00406f17) > 6
        %error "LONG_00406F17"
    %endif
    times 6 - ($ - %%insn_00406f17) db 0
    %%insn_00406f1d:
    mov [0x41f518],ecx ; 00406F1D 890D18F54100
    %if ($ - %%insn_00406f1d) > 6
        %error "LONG_00406F1D"
    %endif
    times 6 - ($ - %%insn_00406f1d) db 0
    %%insn_00406f23:
    cmp dword [0x41f514],0x10000 ; 00406F23 813D14F5410000000100
    %if ($ - %%insn_00406f23) > 10
        %error "LONG_00406F23"
    %endif
    times 10 - ($ - %%insn_00406f23) db 0
    %%insn_00406f2d:
    jnz short 0x406f39 ; 00406F2D 750A
    %if ($ - %%insn_00406f2d) > 2
        %error "LONG_00406F2D"
    %endif
    times 2 - ($ - %%insn_00406f2d) db 0
    %%insn_00406f2f:
    mov dword [0x41f514],0x0 ; 00406F2F C70514F5410000000000
    %if ($ - %%insn_00406f2f) > 10
        %error "LONG_00406F2F"
    %endif
    times 10 - ($ - %%insn_00406f2f) db 0
    %%insn_00406f39:
    call 0x409d64 ; 00406F39 E8262E0000
    %if ($ - %%insn_00406f39) > 5
        %error "LONG_00406F39"
    %endif
    times 5 - ($ - %%insn_00406f39) db 0
    %%insn_00406f3e:
    cmp dword [0x41f524],0x0 ; 00406F3E 833D24F5410000
    %if ($ - %%insn_00406f3e) > 7
        %error "LONG_00406F3E"
    %endif
    times 7 - ($ - %%insn_00406f3e) db 0
    %%insn_00406f45:
    jng short 0x406f39 ; 00406F45 7EF2
    %if ($ - %%insn_00406f45) > 2
        %error "LONG_00406F45"
    %endif
    times 2 - ($ - %%insn_00406f45) db 0
    %%insn_00406f47:
    push dword 0x0 ; 00406F47 6A00
    %if ($ - %%insn_00406f47) > 2
        %error "LONG_00406F47"
    %endif
    times 2 - ($ - %%insn_00406f47) db 0
    %%insn_00406f49:
    push dword 0x41f524 ; 00406F49 6824F54100
    %if ($ - %%insn_00406f49) > 5
        %error "LONG_00406F49"
    %endif
    times 5 - ($ - %%insn_00406f49) db 0
    %%insn_00406f4e:
    call dword near [0x4243b0] ; 00406F4E FF15B0434200
    %if ($ - %%insn_00406f4e) > 6
        %error "LONG_00406F4E"
    %endif
    times 6 - ($ - %%insn_00406f4e) db 0
    %%insn_00406f54:
    jmp short 0x406faa ; 00406F54 EB54
    %if ($ - %%insn_00406f54) > 2
        %error "LONG_00406F54"
    %endif
    times 2 - ($ - %%insn_00406f54) db 0
    %%insn_00406f56:
    movsx edx,word [0x420e4c] ; 00406F56 0FBF154C0E4200
    %if ($ - %%insn_00406f56) > 7
        %error "LONG_00406F56"
    %endif
    times 7 - ($ - %%insn_00406f56) db 0
    %%insn_00406f5d:
    neg edx ; 00406F5D F7DA
    %if ($ - %%insn_00406f5d) > 2
        %error "LONG_00406F5D"
    %endif
    times 2 - ($ - %%insn_00406f5d) db 0
    db 0x1B, 0xD2 ; 00406F5F 1BD2 | sbb edx,edx | encoding preserved
    %%insn_00406f61:
    and edx,0x3c ; 00406F61 83E23C
    %if ($ - %%insn_00406f61) > 3
        %error "LONG_00406F61"
    %endif
    times 3 - ($ - %%insn_00406f61) db 0
    %%insn_00406f64:
    add edx,0x28 ; 00406F64 83C228
    %if ($ - %%insn_00406f64) > 3
        %error "LONG_00406F64"
    %endif
    times 3 - ($ - %%insn_00406f64) db 0
    %%insn_00406f67:
    mov eax,[0x41f4e0] ; 00406F67 A1E0F44100
    %if ($ - %%insn_00406f67) > 5
        %error "LONG_00406F67"
    %endif
    times 5 - ($ - %%insn_00406f67) db 0
    db 0x03, 0xC2 ; 00406F6C 03C2 | add eax,edx | encoding preserved
    %%insn_00406f6e:
    mov [ebp-0xc],eax ; 00406F6E 8945F4
    %if ($ - %%insn_00406f6e) > 3
        %error "LONG_00406F6E"
    %endif
    times 3 - ($ - %%insn_00406f6e) db 0
    %%insn_00406f71:
    mov ecx,[ebp+0x8] ; 00406F71 8B4D08
    %if ($ - %%insn_00406f71) > 3
        %error "LONG_00406F71"
    %endif
    times 3 - ($ - %%insn_00406f71) db 0
    db 0x33, 0xD2 ; 00406F74 33D2 | xor edx,edx | encoding preserved
    %%insn_00406f76:
    mov dx,[ecx+0x62] ; 00406F76 668B5162
    %if ($ - %%insn_00406f76) > 4
        %error "LONG_00406F76"
    %endif
    times 4 - ($ - %%insn_00406f76) db 0
    %%insn_00406f7a:
    and edx,0x80 ; 00406F7A 81E280000000
    %if ($ - %%insn_00406f7a) > 6
        %error "LONG_00406F7A"
    %endif
    times 6 - ($ - %%insn_00406f7a) db 0
    %%insn_00406f80:
    test edx,edx ; 00406F80 85D2
    %if ($ - %%insn_00406f80) > 2
        %error "LONG_00406F80"
    %endif
    times 2 - ($ - %%insn_00406f80) db 0
    %%insn_00406f82:
    jz short 0x406f91 ; 00406F82 740D
    %if ($ - %%insn_00406f82) > 2
        %error "LONG_00406F82"
    %endif
    times 2 - ($ - %%insn_00406f82) db 0
    %%insn_00406f84:
    mov eax,[0x41f4e0] ; 00406F84 A1E0F44100
    %if ($ - %%insn_00406f84) > 5
        %error "LONG_00406F84"
    %endif
    times 5 - ($ - %%insn_00406f84) db 0
    %%insn_00406f89:
    sub eax,0x14 ; 00406F89 83E814
    %if ($ - %%insn_00406f89) > 3
        %error "LONG_00406F89"
    %endif
    times 3 - ($ - %%insn_00406f89) db 0
    %%insn_00406f8c:
    mov [0x41f4e0],eax ; 00406F8C A3E0F44100
    %if ($ - %%insn_00406f8c) > 5
        %error "LONG_00406F8C"
    %endif
    times 5 - ($ - %%insn_00406f8c) db 0
    %%insn_00406f91:
    call 0x409d64 ; 00406F91 E8CE2D0000
    %if ($ - %%insn_00406f91) > 5
        %error "LONG_00406F91"
    %endif
    times 5 - ($ - %%insn_00406f91) db 0
    %%insn_00406f96:
    call dword near [0x42458c] ; 00406F96 FF158C454200
    %if ($ - %%insn_00406f96) > 6
        %error "LONG_00406F96"
    %endif
    times 6 - ($ - %%insn_00406f96) db 0
    %%insn_00406f9c:
    cmp eax,[ebp-0xc] ; 00406F9C 3B45F4
    %if ($ - %%insn_00406f9c) > 3
        %error "LONG_00406F9C"
    %endif
    times 3 - ($ - %%insn_00406f9c) db 0
    %%insn_00406f9f:
    jc short 0x406f91 ; 00406F9F 72F0
    %if ($ - %%insn_00406f9f) > 2
        %error "LONG_00406F9F"
    %endif
    times 2 - ($ - %%insn_00406f9f) db 0
    %%insn_00406fa1:
    mov ecx,[ebp-0xc] ; 00406FA1 8B4DF4
    %if ($ - %%insn_00406fa1) > 3
        %error "LONG_00406FA1"
    %endif
    times 3 - ($ - %%insn_00406fa1) db 0
    %%insn_00406fa4:
    mov [0x41f4e0],ecx ; 00406FA4 890DE0F44100
    %if ($ - %%insn_00406fa4) > 6
        %error "LONG_00406FA4"
    %endif
    times 6 - ($ - %%insn_00406fa4) db 0
    db 0x8B, 0xE5 ; 00406FAA 8BE5 | mov esp,ebp | encoding preserved
    %%insn_00406fac:
    pop ebp ; 00406FAC 5D
    %if ($ - %%insn_00406fac) > 1
        %error "LONG_00406FAC"
    %endif
    times 1 - ($ - %%insn_00406fac) db 0
    %%insn_00406fad:
    ret ; 00406FAD C3
    %if ($ - %%insn_00406fad) > 1
        %error "LONG_00406FAD"
    %endif
    times 1 - ($ - %%insn_00406fad) db 0
    %if ($ - %%fragment_start) != 390
        %error "function fragment size drift: 00406E28"
    %endif
%endmacro
