; PE virtual entry 00410E30
; Ghidra working symbol: FUN_00410e30
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00410e30_part_00 0
    %%fragment_start:
func_00410e30:
    %%insn_00410e30:
    sub esp,0x8 ; 00410E30 83EC08
    %if ($ - %%insn_00410e30) > 3
        %error "LONG_00410E30"
    %endif
    times 3 - ($ - %%insn_00410e30) db 0
    %%insn_00410e33:
    push ebx ; 00410E33 53
    %if ($ - %%insn_00410e33) > 1
        %error "LONG_00410E33"
    %endif
    times 1 - ($ - %%insn_00410e33) db 0
    %%insn_00410e34:
    push ebp ; 00410E34 55
    %if ($ - %%insn_00410e34) > 1
        %error "LONG_00410E34"
    %endif
    times 1 - ($ - %%insn_00410e34) db 0
    %%insn_00410e35:
    push esi ; 00410E35 56
    %if ($ - %%insn_00410e35) > 1
        %error "LONG_00410E35"
    %endif
    times 1 - ($ - %%insn_00410e35) db 0
    %%insn_00410e36:
    push edi ; 00410E36 57
    %if ($ - %%insn_00410e36) > 1
        %error "LONG_00410E36"
    %endif
    times 1 - ($ - %%insn_00410e36) db 0
    %%insn_00410e37:
    push dword 0x12 ; 00410E37 6A12
    %if ($ - %%insn_00410e37) > 2
        %error "LONG_00410E37"
    %endif
    times 2 - ($ - %%insn_00410e37) db 0
    %%insn_00410e39:
    mov dword [esp+0x14],0xffffffff ; 00410E39 C7442414FFFFFFFF
    %if ($ - %%insn_00410e39) > 8
        %error "LONG_00410E39"
    %endif
    times 8 - ($ - %%insn_00410e39) db 0
    %%insn_00410e41:
    call 0x40df00 ; 00410E41 E8BAD0FFFF
    %if ($ - %%insn_00410e41) > 5
        %error "LONG_00410E41"
    %endif
    times 5 - ($ - %%insn_00410e41) db 0
    db 0x33, 0xFF ; 00410E46 33FF | xor edi,edi | encoding preserved
    %%insn_00410e48:
    add esp,0x4 ; 00410E48 83C404
    %if ($ - %%insn_00410e48) > 3
        %error "LONG_00410E48"
    %endif
    times 3 - ($ - %%insn_00410e48) db 0
    %%insn_00410e4b:
    mov [esp+0x14],edi ; 00410E4B 897C2414
    %if ($ - %%insn_00410e4b) > 4
        %error "LONG_00410E4B"
    %endif
    times 4 - ($ - %%insn_00410e4b) db 0
    db 0x33, 0xDB ; 00410E4F 33DB | xor ebx,ebx | encoding preserved
    %%insn_00410e51:
    mov ebp,0x423480 ; 00410E51 BD80344200
    %if ($ - %%insn_00410e51) > 5
        %error "LONG_00410E51"
    %endif
    times 5 - ($ - %%insn_00410e51) db 0
    %%insn_00410e56:
    mov esi,[ebp+0x0] ; 00410E56 8B7500
    %if ($ - %%insn_00410e56) > 3
        %error "LONG_00410E56"
    %endif
    times 3 - ($ - %%insn_00410e56) db 0
    %%insn_00410e59:
    test esi,esi ; 00410E59 85F6
    %if ($ - %%insn_00410e59) > 2
        %error "LONG_00410E59"
    %endif
    times 2 - ($ - %%insn_00410e59) db 0
    %%insn_00410e5b:
    jz 0x410f17 ; 00410E5B 0F84B6000000
    %if ($ - %%insn_00410e5b) > 6
        %error "LONG_00410E5B"
    %endif
    times 6 - ($ - %%insn_00410e5b) db 0
    %%insn_00410e61:
    lea eax,[esi+0x480] ; 00410E61 8D8680040000
    %if ($ - %%insn_00410e61) > 6
        %error "LONG_00410E61"
    %endif
    times 6 - ($ - %%insn_00410e61) db 0
    db 0x3B, 0xF0 ; 00410E67 3BF0 | cmp esi,eax | encoding preserved
    %%insn_00410e69:
    jnc 0x410eef ; 00410E69 0F8380000000
    %if ($ - %%insn_00410e69) > 6
        %error "LONG_00410E69"
    %endif
    times 6 - ($ - %%insn_00410e69) db 0
    %%insn_00410e6f:
    test byte [esi+0x4],0x1 ; 00410E6F F6460401
    %if ($ - %%insn_00410e6f) > 4
        %error "LONG_00410E6F"
    %endif
    times 4 - ($ - %%insn_00410e6f) db 0
    %%insn_00410e73:
    jnz short 0x410ebb ; 00410E73 7546
    %if ($ - %%insn_00410e73) > 2
        %error "LONG_00410E73"
    %endif
    times 2 - ($ - %%insn_00410e73) db 0
    %%insn_00410e75:
    mov eax,[esi+0x8] ; 00410E75 8B4608
    %if ($ - %%insn_00410e75) > 3
        %error "LONG_00410E75"
    %endif
    times 3 - ($ - %%insn_00410e75) db 0
    %%insn_00410e78:
    test eax,eax ; 00410E78 85C0
    %if ($ - %%insn_00410e78) > 2
        %error "LONG_00410E78"
    %endif
    times 2 - ($ - %%insn_00410e78) db 0
    %%insn_00410e7a:
    jnz short 0x410ea4 ; 00410E7A 7528
    %if ($ - %%insn_00410e7a) > 2
        %error "LONG_00410E7A"
    %endif
    times 2 - ($ - %%insn_00410e7a) db 0
    %%insn_00410e7c:
    push dword 0x11 ; 00410E7C 6A11
    %if ($ - %%insn_00410e7c) > 2
        %error "LONG_00410E7C"
    %endif
    times 2 - ($ - %%insn_00410e7c) db 0
    %%insn_00410e7e:
    call 0x40df00 ; 00410E7E E87DD0FFFF
    %if ($ - %%insn_00410e7e) > 5
        %error "LONG_00410E7E"
    %endif
    times 5 - ($ - %%insn_00410e7e) db 0
    %%insn_00410e83:
    mov eax,[esi+0x8] ; 00410E83 8B4608
    %if ($ - %%insn_00410e83) > 3
        %error "LONG_00410E83"
    %endif
    times 3 - ($ - %%insn_00410e83) db 0
    %%insn_00410e86:
    add esp,0x4 ; 00410E86 83C404
    %if ($ - %%insn_00410e86) > 3
        %error "LONG_00410E86"
    %endif
    times 3 - ($ - %%insn_00410e86) db 0
    %%insn_00410e89:
    test eax,eax ; 00410E89 85C0
    %if ($ - %%insn_00410e89) > 2
        %error "LONG_00410E89"
    %endif
    times 2 - ($ - %%insn_00410e89) db 0
    %%insn_00410e8b:
    jnz short 0x410e9a ; 00410E8B 750D
    %if ($ - %%insn_00410e8b) > 2
        %error "LONG_00410E8B"
    %endif
    times 2 - ($ - %%insn_00410e8b) db 0
    %%insn_00410e8d:
    lea ecx,[esi+0xc] ; 00410E8D 8D4E0C
    %if ($ - %%insn_00410e8d) > 3
        %error "LONG_00410E8D"
    %endif
    times 3 - ($ - %%insn_00410e8d) db 0
    %%insn_00410e90:
    push ecx ; 00410E90 51
    %if ($ - %%insn_00410e90) > 1
        %error "LONG_00410E90"
    %endif
    times 1 - ($ - %%insn_00410e90) db 0
    %%insn_00410e91:
    call dword near [0x424400] ; 00410E91 FF1500444200
    %if ($ - %%insn_00410e91) > 6
        %error "LONG_00410E91"
    %endif
    times 6 - ($ - %%insn_00410e91) db 0
    %%insn_00410e97:
    inc dword [esi+0x8] ; 00410E97 FF4608
    %if ($ - %%insn_00410e97) > 3
        %error "LONG_00410E97"
    %endif
    times 3 - ($ - %%insn_00410e97) db 0
    %%insn_00410e9a:
    push dword 0x11 ; 00410E9A 6A11
    %if ($ - %%insn_00410e9a) > 2
        %error "LONG_00410E9A"
    %endif
    times 2 - ($ - %%insn_00410e9a) db 0
    %%insn_00410e9c:
    call 0x40df80 ; 00410E9C E8DFD0FFFF
    %if ($ - %%insn_00410e9c) > 5
        %error "LONG_00410E9C"
    %endif
    times 5 - ($ - %%insn_00410e9c) db 0
    %%insn_00410ea1:
    add esp,0x4 ; 00410EA1 83C404
    %if ($ - %%insn_00410ea1) > 3
        %error "LONG_00410EA1"
    %endif
    times 3 - ($ - %%insn_00410ea1) db 0
    %%insn_00410ea4:
    lea edi,[esi+0xc] ; 00410EA4 8D7E0C
    %if ($ - %%insn_00410ea4) > 3
        %error "LONG_00410EA4"
    %endif
    times 3 - ($ - %%insn_00410ea4) db 0
    %%insn_00410ea7:
    push edi ; 00410EA7 57
    %if ($ - %%insn_00410ea7) > 1
        %error "LONG_00410EA7"
    %endif
    times 1 - ($ - %%insn_00410ea7) db 0
    %%insn_00410ea8:
    call dword near [0x4243f8] ; 00410EA8 FF15F8434200
    %if ($ - %%insn_00410ea8) > 6
        %error "LONG_00410EA8"
    %endif
    times 6 - ($ - %%insn_00410ea8) db 0
    %%insn_00410eae:
    test byte [esi+0x4],0x1 ; 00410EAE F6460401
    %if ($ - %%insn_00410eae) > 4
        %error "LONG_00410EAE"
    %endif
    times 4 - ($ - %%insn_00410eae) db 0
    %%insn_00410eb2:
    jz short 0x410ecd ; 00410EB2 7419
    %if ($ - %%insn_00410eb2) > 2
        %error "LONG_00410EB2"
    %endif
    times 2 - ($ - %%insn_00410eb2) db 0
    %%insn_00410eb4:
    push edi ; 00410EB4 57
    %if ($ - %%insn_00410eb4) > 1
        %error "LONG_00410EB4"
    %endif
    times 1 - ($ - %%insn_00410eb4) db 0
    %%insn_00410eb5:
    call dword near [0x4243f4] ; 00410EB5 FF15F4434200
    %if ($ - %%insn_00410eb5) > 6
        %error "LONG_00410EB5"
    %endif
    times 6 - ($ - %%insn_00410eb5) db 0
    %%insn_00410ebb:
    mov edx,[ebp+0x0] ; 00410EBB 8B5500
    %if ($ - %%insn_00410ebb) > 3
        %error "LONG_00410EBB"
    %endif
    times 3 - ($ - %%insn_00410ebb) db 0
    %%insn_00410ebe:
    add esi,0x24 ; 00410EBE 83C624
    %if ($ - %%insn_00410ebe) > 3
        %error "LONG_00410EBE"
    %endif
    times 3 - ($ - %%insn_00410ebe) db 0
    %%insn_00410ec1:
    add edx,0x480 ; 00410EC1 81C280040000
    %if ($ - %%insn_00410ec1) > 6
        %error "LONG_00410EC1"
    %endif
    times 6 - ($ - %%insn_00410ec1) db 0
    db 0x3B, 0xF2 ; 00410EC7 3BF2 | cmp esi,edx | encoding preserved
    %%insn_00410ec9:
    jc short 0x410e6f ; 00410EC9 72A4
    %if ($ - %%insn_00410ec9) > 2
        %error "LONG_00410EC9"
    %endif
    times 2 - ($ - %%insn_00410ec9) db 0
    %%insn_00410ecb:
    jmp short 0x410eef ; 00410ECB EB22
    %if ($ - %%insn_00410ecb) > 2
        %error "LONG_00410ECB"
    %endif
    times 2 - ($ - %%insn_00410ecb) db 0
    %%insn_00410ecd:
    mov dword [esi],0xffffffff ; 00410ECD C706FFFFFFFF
    %if ($ - %%insn_00410ecd) > 6
        %error "LONG_00410ECD"
    %endif
    times 6 - ($ - %%insn_00410ecd) db 0
    %%insn_00410ed3:
    mov eax,[ebp+0x0] ; 00410ED3 8B4500
    %if ($ - %%insn_00410ed3) > 3
        %error "LONG_00410ED3"
    %endif
    times 3 - ($ - %%insn_00410ed3) db 0
    db 0x2B, 0xF0 ; 00410ED6 2BF0 | sub esi,eax | encoding preserved
    %%insn_00410ed8:
    mov eax,0x38e38e39 ; 00410ED8 B8398EE338
    %if ($ - %%insn_00410ed8) > 5
        %error "LONG_00410ED8"
    %endif
    times 5 - ($ - %%insn_00410ed8) db 0
    %%insn_00410edd:
    imul esi ; 00410EDD F7EE
    %if ($ - %%insn_00410edd) > 2
        %error "LONG_00410EDD"
    %endif
    times 2 - ($ - %%insn_00410edd) db 0
    %%insn_00410edf:
    sar edx,byte 0x3 ; 00410EDF C1FA03
    %if ($ - %%insn_00410edf) > 3
        %error "LONG_00410EDF"
    %endif
    times 3 - ($ - %%insn_00410edf) db 0
    db 0x8B, 0xC2 ; 00410EE2 8BC2 | mov eax,edx | encoding preserved
    %%insn_00410ee4:
    shr eax,byte 0x1f ; 00410EE4 C1E81F
    %if ($ - %%insn_00410ee4) > 3
        %error "LONG_00410EE4"
    %endif
    times 3 - ($ - %%insn_00410ee4) db 0
    db 0x03, 0xD0 ; 00410EE7 03D0 | add edx,eax | encoding preserved
    db 0x03, 0xD3 ; 00410EE9 03D3 | add edx,ebx | encoding preserved
    %%insn_00410eeb:
    mov [esp+0x10],edx ; 00410EEB 89542410
    %if ($ - %%insn_00410eeb) > 4
        %error "LONG_00410EEB"
    %endif
    times 4 - ($ - %%insn_00410eeb) db 0
    %%insn_00410eef:
    cmp dword [esp+0x10],0xffffffffffffffff ; 00410EEF 837C2410FF
    %if ($ - %%insn_00410eef) > 5
        %error "LONG_00410EEF"
    %endif
    times 5 - ($ - %%insn_00410eef) db 0
    %%insn_00410ef4:
    jnz 0x410f82 ; 00410EF4 0F8588000000
    %if ($ - %%insn_00410ef4) > 6
        %error "LONG_00410EF4"
    %endif
    times 6 - ($ - %%insn_00410ef4) db 0
    %%insn_00410efa:
    mov edi,[esp+0x14] ; 00410EFA 8B7C2414
    %if ($ - %%insn_00410efa) > 4
        %error "LONG_00410EFA"
    %endif
    times 4 - ($ - %%insn_00410efa) db 0
    %%insn_00410efe:
    add ebp,0x4 ; 00410EFE 83C504
    %if ($ - %%insn_00410efe) > 3
        %error "LONG_00410EFE"
    %endif
    times 3 - ($ - %%insn_00410efe) db 0
    %%insn_00410f01:
    inc edi ; 00410F01 47
    %if ($ - %%insn_00410f01) > 1
        %error "LONG_00410F01"
    %endif
    times 1 - ($ - %%insn_00410f01) db 0
    %%insn_00410f02:
    add ebx,0x20 ; 00410F02 83C320
    %if ($ - %%insn_00410f02) > 3
        %error "LONG_00410F02"
    %endif
    times 3 - ($ - %%insn_00410f02) db 0
    %%insn_00410f05:
    cmp ebp,0x423580 ; 00410F05 81FD80354200
    %if ($ - %%insn_00410f05) > 6
        %error "LONG_00410F05"
    %endif
    times 6 - ($ - %%insn_00410f05) db 0
    %%insn_00410f0b:
    mov [esp+0x14],edi ; 00410F0B 897C2414
    %if ($ - %%insn_00410f0b) > 4
        %error "LONG_00410F0B"
    %endif
    times 4 - ($ - %%insn_00410f0b) db 0
    %%insn_00410f0f:
    jl 0x410e56 ; 00410F0F 0F8C41FFFFFF
    %if ($ - %%insn_00410f0f) > 6
        %error "LONG_00410F0F"
    %endif
    times 6 - ($ - %%insn_00410f0f) db 0
    %%insn_00410f15:
    jmp short 0x410f82 ; 00410F15 EB6B
    %if ($ - %%insn_00410f15) > 2
        %error "LONG_00410F15"
    %endif
    times 2 - ($ - %%insn_00410f15) db 0
    %%insn_00410f17:
    push dword 0x480 ; 00410F17 6880040000
    %if ($ - %%insn_00410f17) > 5
        %error "LONG_00410F17"
    %endif
    times 5 - ($ - %%insn_00410f17) db 0
    %%insn_00410f1c:
    call 0x40cdc0 ; 00410F1C E89FBEFFFF
    %if ($ - %%insn_00410f1c) > 5
        %error "LONG_00410F1C"
    %endif
    times 5 - ($ - %%insn_00410f1c) db 0
    db 0x33, 0xD2 ; 00410F21 33D2 | xor edx,edx | encoding preserved
    %%insn_00410f23:
    add esp,0x4 ; 00410F23 83C404
    %if ($ - %%insn_00410f23) > 3
        %error "LONG_00410F23"
    %endif
    times 3 - ($ - %%insn_00410f23) db 0
    db 0x3B, 0xC2 ; 00410F26 3BC2 | cmp eax,edx | encoding preserved
    %%insn_00410f28:
    jz short 0x410f82 ; 00410F28 7458
    %if ($ - %%insn_00410f28) > 2
        %error "LONG_00410F28"
    %endif
    times 2 - ($ - %%insn_00410f28) db 0
    %%insn_00410f2a:
    mov ebx,[0x423580] ; 00410F2A 8B1D80354200
    %if ($ - %%insn_00410f2a) > 6
        %error "LONG_00410F2A"
    %endif
    times 6 - ($ - %%insn_00410f2a) db 0
    %%insn_00410f30:
    lea ecx,[eax+0x480] ; 00410F30 8D8880040000
    %if ($ - %%insn_00410f30) > 6
        %error "LONG_00410F30"
    %endif
    times 6 - ($ - %%insn_00410f30) db 0
    %%insn_00410f36:
    add ebx,0x20 ; 00410F36 83C320
    %if ($ - %%insn_00410f36) > 3
        %error "LONG_00410F36"
    %endif
    times 3 - ($ - %%insn_00410f36) db 0
    db 0x3B, 0xC1 ; 00410F39 3BC1 | cmp eax,ecx | encoding preserved
    %%insn_00410f3b:
    mov [edi*4+0x423480],eax ; 00410F3B 8904BD80344200
    %if ($ - %%insn_00410f3b) > 7
        %error "LONG_00410F3B"
    %endif
    times 7 - ($ - %%insn_00410f3b) db 0
    %%insn_00410f42:
    mov [0x423580],ebx ; 00410F42 891D80354200
    %if ($ - %%insn_00410f42) > 6
        %error "LONG_00410F42"
    %endif
    times 6 - ($ - %%insn_00410f42) db 0
    %%insn_00410f48:
    jnc short 0x410f70 ; 00410F48 7326
    %if ($ - %%insn_00410f48) > 2
        %error "LONG_00410F48"
    %endif
    times 2 - ($ - %%insn_00410f48) db 0
    %%insn_00410f4a:
    mov cl,0xa ; 00410F4A B10A
    %if ($ - %%insn_00410f4a) > 2
        %error "LONG_00410F4A"
    %endif
    times 2 - ($ - %%insn_00410f4a) db 0
    %%insn_00410f4c:
    mov byte [eax+0x4],0x0 ; 00410F4C C6400400
    %if ($ - %%insn_00410f4c) > 4
        %error "LONG_00410F4C"
    %endif
    times 4 - ($ - %%insn_00410f4c) db 0
    %%insn_00410f50:
    mov dword [eax],0xffffffff ; 00410F50 C700FFFFFFFF
    %if ($ - %%insn_00410f50) > 6
        %error "LONG_00410F50"
    %endif
    times 6 - ($ - %%insn_00410f50) db 0
    %%insn_00410f56:
    mov [eax+0x5],cl ; 00410F56 884805
    %if ($ - %%insn_00410f56) > 3
        %error "LONG_00410F56"
    %endif
    times 3 - ($ - %%insn_00410f56) db 0
    %%insn_00410f59:
    mov [eax+0x8],edx ; 00410F59 895008
    %if ($ - %%insn_00410f59) > 3
        %error "LONG_00410F59"
    %endif
    times 3 - ($ - %%insn_00410f59) db 0
    %%insn_00410f5c:
    mov esi,[edi*4+0x423480] ; 00410F5C 8B34BD80344200
    %if ($ - %%insn_00410f5c) > 7
        %error "LONG_00410F5C"
    %endif
    times 7 - ($ - %%insn_00410f5c) db 0
    %%insn_00410f63:
    add eax,0x24 ; 00410F63 83C024
    %if ($ - %%insn_00410f63) > 3
        %error "LONG_00410F63"
    %endif
    times 3 - ($ - %%insn_00410f63) db 0
    %%insn_00410f66:
    add esi,0x480 ; 00410F66 81C680040000
    %if ($ - %%insn_00410f66) > 6
        %error "LONG_00410F66"
    %endif
    times 6 - ($ - %%insn_00410f66) db 0
    db 0x3B, 0xC6 ; 00410F6C 3BC6 | cmp eax,esi | encoding preserved
    %%insn_00410f6e:
    jc short 0x410f4c ; 00410F6E 72DC
    %if ($ - %%insn_00410f6e) > 2
        %error "LONG_00410F6E"
    %endif
    times 2 - ($ - %%insn_00410f6e) db 0
    %%insn_00410f70:
    shl edi,byte 0x5 ; 00410F70 C1E705
    %if ($ - %%insn_00410f70) > 3
        %error "LONG_00410F70"
    %endif
    times 3 - ($ - %%insn_00410f70) db 0
    db 0x8B, 0xC7 ; 00410F73 8BC7 | mov eax,edi | encoding preserved
    %%insn_00410f75:
    push eax ; 00410F75 50
    %if ($ - %%insn_00410f75) > 1
        %error "LONG_00410F75"
    %endif
    times 1 - ($ - %%insn_00410f75) db 0
    %%insn_00410f76:
    mov [esp+0x14],eax ; 00410F76 89442414
    %if ($ - %%insn_00410f76) > 4
        %error "LONG_00410F76"
    %endif
    times 4 - ($ - %%insn_00410f76) db 0
    %%insn_00410f7a:
    call 0x4111f0 ; 00410F7A E871020000
    %if ($ - %%insn_00410f7a) > 5
        %error "LONG_00410F7A"
    %endif
    times 5 - ($ - %%insn_00410f7a) db 0
    %%insn_00410f7f:
    add esp,0x4 ; 00410F7F 83C404
    %if ($ - %%insn_00410f7f) > 3
        %error "LONG_00410F7F"
    %endif
    times 3 - ($ - %%insn_00410f7f) db 0
    %%insn_00410f82:
    push dword 0x12 ; 00410F82 6A12
    %if ($ - %%insn_00410f82) > 2
        %error "LONG_00410F82"
    %endif
    times 2 - ($ - %%insn_00410f82) db 0
    %%insn_00410f84:
    call 0x40df80 ; 00410F84 E8F7CFFFFF
    %if ($ - %%insn_00410f84) > 5
        %error "LONG_00410F84"
    %endif
    times 5 - ($ - %%insn_00410f84) db 0
    %%insn_00410f89:
    mov eax,[esp+0x14] ; 00410F89 8B442414
    %if ($ - %%insn_00410f89) > 4
        %error "LONG_00410F89"
    %endif
    times 4 - ($ - %%insn_00410f89) db 0
    %%insn_00410f8d:
    add esp,0x4 ; 00410F8D 83C404
    %if ($ - %%insn_00410f8d) > 3
        %error "LONG_00410F8D"
    %endif
    times 3 - ($ - %%insn_00410f8d) db 0
    %%insn_00410f90:
    pop edi ; 00410F90 5F
    %if ($ - %%insn_00410f90) > 1
        %error "LONG_00410F90"
    %endif
    times 1 - ($ - %%insn_00410f90) db 0
    %%insn_00410f91:
    pop esi ; 00410F91 5E
    %if ($ - %%insn_00410f91) > 1
        %error "LONG_00410F91"
    %endif
    times 1 - ($ - %%insn_00410f91) db 0
    %%insn_00410f92:
    pop ebp ; 00410F92 5D
    %if ($ - %%insn_00410f92) > 1
        %error "LONG_00410F92"
    %endif
    times 1 - ($ - %%insn_00410f92) db 0
    %%insn_00410f93:
    pop ebx ; 00410F93 5B
    %if ($ - %%insn_00410f93) > 1
        %error "LONG_00410F93"
    %endif
    times 1 - ($ - %%insn_00410f93) db 0
    %%insn_00410f94:
    add esp,0x8 ; 00410F94 83C408
    %if ($ - %%insn_00410f94) > 3
        %error "LONG_00410F94"
    %endif
    times 3 - ($ - %%insn_00410f94) db 0
    %%insn_00410f97:
    ret ; 00410F97 C3
    %if ($ - %%insn_00410f97) > 1
        %error "LONG_00410F97"
    %endif
    times 1 - ($ - %%insn_00410f97) db 0
    %if ($ - %%fragment_start) != 360
        %error "function fragment size drift: 00410E30"
    %endif
%endmacro
