; PE virtual entry 00411E90
; Ghidra working symbol: FUN_00411e90
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00411e90_part_00 0
    %%fragment_start:
func_00411e90:
    %%insn_00411e90:
    mov eax,[esp+0x10] ; 00411E90 8B442410
    %if ($ - %%insn_00411e90) > 4
        %error "LONG_00411E90"
    %endif
    times 4 - ($ - %%insn_00411e90) db 0
    %%insn_00411e94:
    push ebx ; 00411E94 53
    %if ($ - %%insn_00411e94) > 1
        %error "LONG_00411E94"
    %endif
    times 1 - ($ - %%insn_00411e94) db 0
    %%insn_00411e95:
    push ebp ; 00411E95 55
    %if ($ - %%insn_00411e95) > 1
        %error "LONG_00411E95"
    %endif
    times 1 - ($ - %%insn_00411e95) db 0
    %%insn_00411e96:
    mov ebp,[esp+0x10] ; 00411E96 8B6C2410
    %if ($ - %%insn_00411e96) > 4
        %error "LONG_00411E96"
    %endif
    times 4 - ($ - %%insn_00411e96) db 0
    %%insn_00411e9a:
    push esi ; 00411E9A 56
    %if ($ - %%insn_00411e9a) > 1
        %error "LONG_00411E9A"
    %endif
    times 1 - ($ - %%insn_00411e9a) db 0
    %%insn_00411e9b:
    mov esi,[esp+0x18] ; 00411E9B 8B742418
    %if ($ - %%insn_00411e9b) > 4
        %error "LONG_00411E9B"
    %endif
    times 4 - ($ - %%insn_00411e9b) db 0
    %%insn_00411e9f:
    push edi ; 00411E9F 57
    %if ($ - %%insn_00411e9f) > 1
        %error "LONG_00411E9F"
    %endif
    times 1 - ($ - %%insn_00411e9f) db 0
    %%insn_00411ea0:
    mov edi,[esp+0x24] ; 00411EA0 8B7C2424
    %if ($ - %%insn_00411ea0) > 4
        %error "LONG_00411EA0"
    %endif
    times 4 - ($ - %%insn_00411ea0) db 0
    %%insn_00411ea4:
    test ebp,ebp ; 00411EA4 85ED
    %if ($ - %%insn_00411ea4) > 2
        %error "LONG_00411EA4"
    %endif
    times 2 - ($ - %%insn_00411ea4) db 0
    %%insn_00411ea6:
    mov dword [edi],0x0 ; 00411EA6 C70700000000
    %if ($ - %%insn_00411ea6) > 6
        %error "LONG_00411EA6"
    %endif
    times 6 - ($ - %%insn_00411ea6) db 0
    %%insn_00411eac:
    mov dword [eax],0x1 ; 00411EAC C70001000000
    %if ($ - %%insn_00411eac) > 6
        %error "LONG_00411EAC"
    %endif
    times 6 - ($ - %%insn_00411eac) db 0
    %%insn_00411eb2:
    mov eax,[esp+0x14] ; 00411EB2 8B442414
    %if ($ - %%insn_00411eb2) > 4
        %error "LONG_00411EB2"
    %endif
    times 4 - ($ - %%insn_00411eb2) db 0
    %%insn_00411eb6:
    mov ebx,0x4 ; 00411EB6 BB04000000
    %if ($ - %%insn_00411eb6) > 5
        %error "LONG_00411EB6"
    %endif
    times 5 - ($ - %%insn_00411eb6) db 0
    %%insn_00411ebb:
    jz short 0x411ec6 ; 00411EBB 7409
    %if ($ - %%insn_00411ebb) > 2
        %error "LONG_00411EBB"
    %endif
    times 2 - ($ - %%insn_00411ebb) db 0
    %%insn_00411ebd:
    mov [ebp+0x0],esi ; 00411EBD 897500
    %if ($ - %%insn_00411ebd) > 3
        %error "LONG_00411EBD"
    %endif
    times 3 - ($ - %%insn_00411ebd) db 0
    db 0x03, 0xEB ; 00411EC0 03EB | add ebp,ebx | encoding preserved
    %%insn_00411ec2:
    mov [esp+0x18],ebp ; 00411EC2 896C2418
    %if ($ - %%insn_00411ec2) > 4
        %error "LONG_00411EC2"
    %endif
    times 4 - ($ - %%insn_00411ec2) db 0
    %%insn_00411ec6:
    cmp byte [eax],0x22 ; 00411EC6 803822
    %if ($ - %%insn_00411ec6) > 3
        %error "LONG_00411EC6"
    %endif
    times 3 - ($ - %%insn_00411ec6) db 0
    %%insn_00411ec9:
    jnz short 0x411f21 ; 00411EC9 7556
    %if ($ - %%insn_00411ec9) > 2
        %error "LONG_00411EC9"
    %endif
    times 2 - ($ - %%insn_00411ec9) db 0
    %%insn_00411ecb:
    mov cl,[eax+0x1] ; 00411ECB 8A4801
    %if ($ - %%insn_00411ecb) > 3
        %error "LONG_00411ECB"
    %endif
    times 3 - ($ - %%insn_00411ecb) db 0
    %%insn_00411ece:
    inc eax ; 00411ECE 40
    %if ($ - %%insn_00411ece) > 1
        %error "LONG_00411ECE"
    %endif
    times 1 - ($ - %%insn_00411ece) db 0
    %%insn_00411ecf:
    cmp cl,0x22 ; 00411ECF 80F922
    %if ($ - %%insn_00411ecf) > 3
        %error "LONG_00411ECF"
    %endif
    times 3 - ($ - %%insn_00411ecf) db 0
    %%insn_00411ed2:
    jz short 0x411f0c ; 00411ED2 7438
    %if ($ - %%insn_00411ed2) > 2
        %error "LONG_00411ED2"
    %endif
    times 2 - ($ - %%insn_00411ed2) db 0
    %%insn_00411ed4:
    test cl,cl ; 00411ED4 84C9
    %if ($ - %%insn_00411ed4) > 2
        %error "LONG_00411ED4"
    %endif
    times 2 - ($ - %%insn_00411ed4) db 0
    %%insn_00411ed6:
    jz short 0x411f0c ; 00411ED6 7434
    %if ($ - %%insn_00411ed6) > 2
        %error "LONG_00411ED6"
    %endif
    times 2 - ($ - %%insn_00411ed6) db 0
    %%insn_00411ed8:
    and ecx,0xff ; 00411ED8 81E1FF000000
    %if ($ - %%insn_00411ed8) > 6
        %error "LONG_00411ED8"
    %endif
    times 6 - ($ - %%insn_00411ed8) db 0
    %%insn_00411ede:
    test [ecx+0x421051],bl ; 00411EDE 849951104200
    %if ($ - %%insn_00411ede) > 6
        %error "LONG_00411EDE"
    %endif
    times 6 - ($ - %%insn_00411ede) db 0
    %%insn_00411ee4:
    jz short 0x411ef5 ; 00411EE4 740F
    %if ($ - %%insn_00411ee4) > 2
        %error "LONG_00411EE4"
    %endif
    times 2 - ($ - %%insn_00411ee4) db 0
    %%insn_00411ee6:
    mov edx,[edi] ; 00411EE6 8B17
    %if ($ - %%insn_00411ee6) > 2
        %error "LONG_00411EE6"
    %endif
    times 2 - ($ - %%insn_00411ee6) db 0
    %%insn_00411ee8:
    inc edx ; 00411EE8 42
    %if ($ - %%insn_00411ee8) > 1
        %error "LONG_00411EE8"
    %endif
    times 1 - ($ - %%insn_00411ee8) db 0
    %%insn_00411ee9:
    test esi,esi ; 00411EE9 85F6
    %if ($ - %%insn_00411ee9) > 2
        %error "LONG_00411EE9"
    %endif
    times 2 - ($ - %%insn_00411ee9) db 0
    %%insn_00411eeb:
    mov [edi],edx ; 00411EEB 8917
    %if ($ - %%insn_00411eeb) > 2
        %error "LONG_00411EEB"
    %endif
    times 2 - ($ - %%insn_00411eeb) db 0
    %%insn_00411eed:
    jz short 0x411ef5 ; 00411EED 7406
    %if ($ - %%insn_00411eed) > 2
        %error "LONG_00411EED"
    %endif
    times 2 - ($ - %%insn_00411eed) db 0
    %%insn_00411eef:
    mov cl,[eax] ; 00411EEF 8A08
    %if ($ - %%insn_00411eef) > 2
        %error "LONG_00411EEF"
    %endif
    times 2 - ($ - %%insn_00411eef) db 0
    %%insn_00411ef1:
    mov [esi],cl ; 00411EF1 880E
    %if ($ - %%insn_00411ef1) > 2
        %error "LONG_00411EF1"
    %endif
    times 2 - ($ - %%insn_00411ef1) db 0
    %%insn_00411ef3:
    inc esi ; 00411EF3 46
    %if ($ - %%insn_00411ef3) > 1
        %error "LONG_00411EF3"
    %endif
    times 1 - ($ - %%insn_00411ef3) db 0
    %%insn_00411ef4:
    inc eax ; 00411EF4 40
    %if ($ - %%insn_00411ef4) > 1
        %error "LONG_00411EF4"
    %endif
    times 1 - ($ - %%insn_00411ef4) db 0
    %%insn_00411ef5:
    mov edx,[edi] ; 00411EF5 8B17
    %if ($ - %%insn_00411ef5) > 2
        %error "LONG_00411EF5"
    %endif
    times 2 - ($ - %%insn_00411ef5) db 0
    %%insn_00411ef7:
    inc edx ; 00411EF7 42
    %if ($ - %%insn_00411ef7) > 1
        %error "LONG_00411EF7"
    %endif
    times 1 - ($ - %%insn_00411ef7) db 0
    %%insn_00411ef8:
    test esi,esi ; 00411EF8 85F6
    %if ($ - %%insn_00411ef8) > 2
        %error "LONG_00411EF8"
    %endif
    times 2 - ($ - %%insn_00411ef8) db 0
    %%insn_00411efa:
    mov [edi],edx ; 00411EFA 8917
    %if ($ - %%insn_00411efa) > 2
        %error "LONG_00411EFA"
    %endif
    times 2 - ($ - %%insn_00411efa) db 0
    %%insn_00411efc:
    jz short 0x411f03 ; 00411EFC 7405
    %if ($ - %%insn_00411efc) > 2
        %error "LONG_00411EFC"
    %endif
    times 2 - ($ - %%insn_00411efc) db 0
    %%insn_00411efe:
    mov dl,[eax] ; 00411EFE 8A10
    %if ($ - %%insn_00411efe) > 2
        %error "LONG_00411EFE"
    %endif
    times 2 - ($ - %%insn_00411efe) db 0
    %%insn_00411f00:
    mov [esi],dl ; 00411F00 8816
    %if ($ - %%insn_00411f00) > 2
        %error "LONG_00411F00"
    %endif
    times 2 - ($ - %%insn_00411f00) db 0
    %%insn_00411f02:
    inc esi ; 00411F02 46
    %if ($ - %%insn_00411f02) > 1
        %error "LONG_00411F02"
    %endif
    times 1 - ($ - %%insn_00411f02) db 0
    %%insn_00411f03:
    mov cl,[eax+0x1] ; 00411F03 8A4801
    %if ($ - %%insn_00411f03) > 3
        %error "LONG_00411F03"
    %endif
    times 3 - ($ - %%insn_00411f03) db 0
    %%insn_00411f06:
    inc eax ; 00411F06 40
    %if ($ - %%insn_00411f06) > 1
        %error "LONG_00411F06"
    %endif
    times 1 - ($ - %%insn_00411f06) db 0
    %%insn_00411f07:
    cmp cl,0x22 ; 00411F07 80F922
    %if ($ - %%insn_00411f07) > 3
        %error "LONG_00411F07"
    %endif
    times 3 - ($ - %%insn_00411f07) db 0
    %%insn_00411f0a:
    jnz short 0x411ed4 ; 00411F0A 75C8
    %if ($ - %%insn_00411f0a) > 2
        %error "LONG_00411F0A"
    %endif
    times 2 - ($ - %%insn_00411f0a) db 0
    %%insn_00411f0c:
    mov edx,[edi] ; 00411F0C 8B17
    %if ($ - %%insn_00411f0c) > 2
        %error "LONG_00411F0C"
    %endif
    times 2 - ($ - %%insn_00411f0c) db 0
    %%insn_00411f0e:
    inc edx ; 00411F0E 42
    %if ($ - %%insn_00411f0e) > 1
        %error "LONG_00411F0E"
    %endif
    times 1 - ($ - %%insn_00411f0e) db 0
    %%insn_00411f0f:
    test esi,esi ; 00411F0F 85F6
    %if ($ - %%insn_00411f0f) > 2
        %error "LONG_00411F0F"
    %endif
    times 2 - ($ - %%insn_00411f0f) db 0
    %%insn_00411f11:
    mov [edi],edx ; 00411F11 8917
    %if ($ - %%insn_00411f11) > 2
        %error "LONG_00411F11"
    %endif
    times 2 - ($ - %%insn_00411f11) db 0
    %%insn_00411f13:
    jz short 0x411f19 ; 00411F13 7404
    %if ($ - %%insn_00411f13) > 2
        %error "LONG_00411F13"
    %endif
    times 2 - ($ - %%insn_00411f13) db 0
    %%insn_00411f15:
    mov byte [esi],0x0 ; 00411F15 C60600
    %if ($ - %%insn_00411f15) > 3
        %error "LONG_00411F15"
    %endif
    times 3 - ($ - %%insn_00411f15) db 0
    %%insn_00411f18:
    inc esi ; 00411F18 46
    %if ($ - %%insn_00411f18) > 1
        %error "LONG_00411F18"
    %endif
    times 1 - ($ - %%insn_00411f18) db 0
    %%insn_00411f19:
    cmp byte [eax],0x22 ; 00411F19 803822
    %if ($ - %%insn_00411f19) > 3
        %error "LONG_00411F19"
    %endif
    times 3 - ($ - %%insn_00411f19) db 0
    %%insn_00411f1c:
    jnz short 0x411f74 ; 00411F1C 7556
    %if ($ - %%insn_00411f1c) > 2
        %error "LONG_00411F1C"
    %endif
    times 2 - ($ - %%insn_00411f1c) db 0
    %%insn_00411f1e:
    inc eax ; 00411F1E 40
    %if ($ - %%insn_00411f1e) > 1
        %error "LONG_00411F1E"
    %endif
    times 1 - ($ - %%insn_00411f1e) db 0
    %%insn_00411f1f:
    jmp short 0x411f74 ; 00411F1F EB53
    %if ($ - %%insn_00411f1f) > 2
        %error "LONG_00411F1F"
    %endif
    times 2 - ($ - %%insn_00411f1f) db 0
    %%insn_00411f21:
    mov edx,[edi] ; 00411F21 8B17
    %if ($ - %%insn_00411f21) > 2
        %error "LONG_00411F21"
    %endif
    times 2 - ($ - %%insn_00411f21) db 0
    %%insn_00411f23:
    inc edx ; 00411F23 42
    %if ($ - %%insn_00411f23) > 1
        %error "LONG_00411F23"
    %endif
    times 1 - ($ - %%insn_00411f23) db 0
    %%insn_00411f24:
    test esi,esi ; 00411F24 85F6
    %if ($ - %%insn_00411f24) > 2
        %error "LONG_00411F24"
    %endif
    times 2 - ($ - %%insn_00411f24) db 0
    %%insn_00411f26:
    mov [edi],edx ; 00411F26 8917
    %if ($ - %%insn_00411f26) > 2
        %error "LONG_00411F26"
    %endif
    times 2 - ($ - %%insn_00411f26) db 0
    %%insn_00411f28:
    jz short 0x411f2f ; 00411F28 7405
    %if ($ - %%insn_00411f28) > 2
        %error "LONG_00411F28"
    %endif
    times 2 - ($ - %%insn_00411f28) db 0
    %%insn_00411f2a:
    mov cl,[eax] ; 00411F2A 8A08
    %if ($ - %%insn_00411f2a) > 2
        %error "LONG_00411F2A"
    %endif
    times 2 - ($ - %%insn_00411f2a) db 0
    %%insn_00411f2c:
    mov [esi],cl ; 00411F2C 880E
    %if ($ - %%insn_00411f2c) > 2
        %error "LONG_00411F2C"
    %endif
    times 2 - ($ - %%insn_00411f2c) db 0
    %%insn_00411f2e:
    inc esi ; 00411F2E 46
    %if ($ - %%insn_00411f2e) > 1
        %error "LONG_00411F2E"
    %endif
    times 1 - ($ - %%insn_00411f2e) db 0
    %%insn_00411f2f:
    mov cl,[eax] ; 00411F2F 8A08
    %if ($ - %%insn_00411f2f) > 2
        %error "LONG_00411F2F"
    %endif
    times 2 - ($ - %%insn_00411f2f) db 0
    %%insn_00411f31:
    inc eax ; 00411F31 40
    %if ($ - %%insn_00411f31) > 1
        %error "LONG_00411F31"
    %endif
    times 1 - ($ - %%insn_00411f31) db 0
    %%insn_00411f32:
    mov [esp+0x24],cl ; 00411F32 884C2424
    %if ($ - %%insn_00411f32) > 4
        %error "LONG_00411F32"
    %endif
    times 4 - ($ - %%insn_00411f32) db 0
    %%insn_00411f36:
    mov edx,[esp+0x24] ; 00411F36 8B542424
    %if ($ - %%insn_00411f36) > 4
        %error "LONG_00411F36"
    %endif
    times 4 - ($ - %%insn_00411f36) db 0
    %%insn_00411f3a:
    and edx,0xff ; 00411F3A 81E2FF000000
    %if ($ - %%insn_00411f3a) > 6
        %error "LONG_00411F3A"
    %endif
    times 6 - ($ - %%insn_00411f3a) db 0
    %%insn_00411f40:
    test [edx+0x421051],bl ; 00411F40 849A51104200
    %if ($ - %%insn_00411f40) > 6
        %error "LONG_00411F40"
    %endif
    times 6 - ($ - %%insn_00411f40) db 0
    %%insn_00411f46:
    jz short 0x411f57 ; 00411F46 740F
    %if ($ - %%insn_00411f46) > 2
        %error "LONG_00411F46"
    %endif
    times 2 - ($ - %%insn_00411f46) db 0
    %%insn_00411f48:
    mov edx,[edi] ; 00411F48 8B17
    %if ($ - %%insn_00411f48) > 2
        %error "LONG_00411F48"
    %endif
    times 2 - ($ - %%insn_00411f48) db 0
    %%insn_00411f4a:
    inc edx ; 00411F4A 42
    %if ($ - %%insn_00411f4a) > 1
        %error "LONG_00411F4A"
    %endif
    times 1 - ($ - %%insn_00411f4a) db 0
    %%insn_00411f4b:
    test esi,esi ; 00411F4B 85F6
    %if ($ - %%insn_00411f4b) > 2
        %error "LONG_00411F4B"
    %endif
    times 2 - ($ - %%insn_00411f4b) db 0
    %%insn_00411f4d:
    mov [edi],edx ; 00411F4D 8917
    %if ($ - %%insn_00411f4d) > 2
        %error "LONG_00411F4D"
    %endif
    times 2 - ($ - %%insn_00411f4d) db 0
    %%insn_00411f4f:
    jz short 0x411f56 ; 00411F4F 7405
    %if ($ - %%insn_00411f4f) > 2
        %error "LONG_00411F4F"
    %endif
    times 2 - ($ - %%insn_00411f4f) db 0
    %%insn_00411f51:
    mov dl,[eax] ; 00411F51 8A10
    %if ($ - %%insn_00411f51) > 2
        %error "LONG_00411F51"
    %endif
    times 2 - ($ - %%insn_00411f51) db 0
    %%insn_00411f53:
    mov [esi],dl ; 00411F53 8816
    %if ($ - %%insn_00411f53) > 2
        %error "LONG_00411F53"
    %endif
    times 2 - ($ - %%insn_00411f53) db 0
    %%insn_00411f55:
    inc esi ; 00411F55 46
    %if ($ - %%insn_00411f55) > 1
        %error "LONG_00411F55"
    %endif
    times 1 - ($ - %%insn_00411f55) db 0
    %%insn_00411f56:
    inc eax ; 00411F56 40
    %if ($ - %%insn_00411f56) > 1
        %error "LONG_00411F56"
    %endif
    times 1 - ($ - %%insn_00411f56) db 0
    %%insn_00411f57:
    cmp cl,0x20 ; 00411F57 80F920
    %if ($ - %%insn_00411f57) > 3
        %error "LONG_00411F57"
    %endif
    times 3 - ($ - %%insn_00411f57) db 0
    %%insn_00411f5a:
    jz short 0x411f65 ; 00411F5A 7409
    %if ($ - %%insn_00411f5a) > 2
        %error "LONG_00411F5A"
    %endif
    times 2 - ($ - %%insn_00411f5a) db 0
    %%insn_00411f5c:
    test cl,cl ; 00411F5C 84C9
    %if ($ - %%insn_00411f5c) > 2
        %error "LONG_00411F5C"
    %endif
    times 2 - ($ - %%insn_00411f5c) db 0
    %%insn_00411f5e:
    jz short 0x411f69 ; 00411F5E 7409
    %if ($ - %%insn_00411f5e) > 2
        %error "LONG_00411F5E"
    %endif
    times 2 - ($ - %%insn_00411f5e) db 0
    %%insn_00411f60:
    cmp cl,0x9 ; 00411F60 80F909
    %if ($ - %%insn_00411f60) > 3
        %error "LONG_00411F60"
    %endif
    times 3 - ($ - %%insn_00411f60) db 0
    %%insn_00411f63:
    jnz short 0x411f21 ; 00411F63 75BC
    %if ($ - %%insn_00411f63) > 2
        %error "LONG_00411F63"
    %endif
    times 2 - ($ - %%insn_00411f63) db 0
    %%insn_00411f65:
    test cl,cl ; 00411F65 84C9
    %if ($ - %%insn_00411f65) > 2
        %error "LONG_00411F65"
    %endif
    times 2 - ($ - %%insn_00411f65) db 0
    %%insn_00411f67:
    jnz short 0x411f6c ; 00411F67 7503
    %if ($ - %%insn_00411f67) > 2
        %error "LONG_00411F67"
    %endif
    times 2 - ($ - %%insn_00411f67) db 0
    %%insn_00411f69:
    dec eax ; 00411F69 48
    %if ($ - %%insn_00411f69) > 1
        %error "LONG_00411F69"
    %endif
    times 1 - ($ - %%insn_00411f69) db 0
    %%insn_00411f6a:
    jmp short 0x411f74 ; 00411F6A EB08
    %if ($ - %%insn_00411f6a) > 2
        %error "LONG_00411F6A"
    %endif
    times 2 - ($ - %%insn_00411f6a) db 0
    %%insn_00411f6c:
    test esi,esi ; 00411F6C 85F6
    %if ($ - %%insn_00411f6c) > 2
        %error "LONG_00411F6C"
    %endif
    times 2 - ($ - %%insn_00411f6c) db 0
    %%insn_00411f6e:
    jz short 0x411f74 ; 00411F6E 7404
    %if ($ - %%insn_00411f6e) > 2
        %error "LONG_00411F6E"
    %endif
    times 2 - ($ - %%insn_00411f6e) db 0
    %%insn_00411f70:
    mov byte [esi-0x1],0x0 ; 00411F70 C646FF00
    %if ($ - %%insn_00411f70) > 4
        %error "LONG_00411F70"
    %endif
    times 4 - ($ - %%insn_00411f70) db 0
    db 0x33, 0xD2 ; 00411F74 33D2 | xor edx,edx | encoding preserved
    %%insn_00411f76:
    mov [esp+0x24],edx ; 00411F76 89542424
    %if ($ - %%insn_00411f76) > 4
        %error "LONG_00411F76"
    %endif
    times 4 - ($ - %%insn_00411f76) db 0
    %%insn_00411f7a:
    cmp byte [eax],0x0 ; 00411F7A 803800
    %if ($ - %%insn_00411f7a) > 3
        %error "LONG_00411F7A"
    %endif
    times 3 - ($ - %%insn_00411f7a) db 0
    %%insn_00411f7d:
    jz 0x412086 ; 00411F7D 0F8403010000
    %if ($ - %%insn_00411f7d) > 6
        %error "LONG_00411F7D"
    %endif
    times 6 - ($ - %%insn_00411f7d) db 0
    %%insn_00411f83:
    mov cl,[eax] ; 00411F83 8A08
    %if ($ - %%insn_00411f83) > 2
        %error "LONG_00411F83"
    %endif
    times 2 - ($ - %%insn_00411f83) db 0
    %%insn_00411f85:
    cmp cl,0x20 ; 00411F85 80F920
    %if ($ - %%insn_00411f85) > 3
        %error "LONG_00411F85"
    %endif
    times 3 - ($ - %%insn_00411f85) db 0
    %%insn_00411f88:
    jz short 0x411f8f ; 00411F88 7405
    %if ($ - %%insn_00411f88) > 2
        %error "LONG_00411F88"
    %endif
    times 2 - ($ - %%insn_00411f88) db 0
    %%insn_00411f8a:
    cmp cl,0x9 ; 00411F8A 80F909
    %if ($ - %%insn_00411f8a) > 3
        %error "LONG_00411F8A"
    %endif
    times 3 - ($ - %%insn_00411f8a) db 0
    %%insn_00411f8d:
    jnz short 0x411f92 ; 00411F8D 7503
    %if ($ - %%insn_00411f8d) > 2
        %error "LONG_00411F8D"
    %endif
    times 2 - ($ - %%insn_00411f8d) db 0
    %%insn_00411f8f:
    inc eax ; 00411F8F 40
    %if ($ - %%insn_00411f8f) > 1
        %error "LONG_00411F8F"
    %endif
    times 1 - ($ - %%insn_00411f8f) db 0
    %%insn_00411f90:
    jmp short 0x411f83 ; 00411F90 EBF1
    %if ($ - %%insn_00411f90) > 2
        %error "LONG_00411F90"
    %endif
    times 2 - ($ - %%insn_00411f90) db 0
    %%insn_00411f92:
    cmp byte [eax],0x0 ; 00411F92 803800
    %if ($ - %%insn_00411f92) > 3
        %error "LONG_00411F92"
    %endif
    times 3 - ($ - %%insn_00411f92) db 0
    %%insn_00411f95:
    jz 0x412086 ; 00411F95 0F84EB000000
    %if ($ - %%insn_00411f95) > 6
        %error "LONG_00411F95"
    %endif
    times 6 - ($ - %%insn_00411f95) db 0
    %%insn_00411f9b:
    test ebp,ebp ; 00411F9B 85ED
    %if ($ - %%insn_00411f9b) > 2
        %error "LONG_00411F9B"
    %endif
    times 2 - ($ - %%insn_00411f9b) db 0
    %%insn_00411f9d:
    jz short 0x411fa8 ; 00411F9D 7409
    %if ($ - %%insn_00411f9d) > 2
        %error "LONG_00411F9D"
    %endif
    times 2 - ($ - %%insn_00411f9d) db 0
    %%insn_00411f9f:
    mov [ebp+0x0],esi ; 00411F9F 897500
    %if ($ - %%insn_00411f9f) > 3
        %error "LONG_00411F9F"
    %endif
    times 3 - ($ - %%insn_00411f9f) db 0
    db 0x03, 0xEB ; 00411FA2 03EB | add ebp,ebx | encoding preserved
    %%insn_00411fa4:
    mov [esp+0x18],ebp ; 00411FA4 896C2418
    %if ($ - %%insn_00411fa4) > 4
        %error "LONG_00411FA4"
    %endif
    times 4 - ($ - %%insn_00411fa4) db 0
    %%insn_00411fa8:
    mov ecx,[esp+0x20] ; 00411FA8 8B4C2420
    %if ($ - %%insn_00411fa8) > 4
        %error "LONG_00411FA8"
    %endif
    times 4 - ($ - %%insn_00411fa8) db 0
    %%insn_00411fac:
    inc dword [ecx] ; 00411FAC FF01
    %if ($ - %%insn_00411fac) > 2
        %error "LONG_00411FAC"
    %endif
    times 2 - ($ - %%insn_00411fac) db 0
    %%insn_00411fae:
    mov bl,[eax] ; 00411FAE 8A18
    %if ($ - %%insn_00411fae) > 2
        %error "LONG_00411FAE"
    %endif
    times 2 - ($ - %%insn_00411fae) db 0
    db 0x33, 0xC9 ; 00411FB0 33C9 | xor ecx,ecx | encoding preserved
    %%insn_00411fb2:
    cmp bl,0x5c ; 00411FB2 80FB5C
    %if ($ - %%insn_00411fb2) > 3
        %error "LONG_00411FB2"
    %endif
    times 3 - ($ - %%insn_00411fb2) db 0
    %%insn_00411fb5:
    mov ebp,0x1 ; 00411FB5 BD01000000
    %if ($ - %%insn_00411fb5) > 5
        %error "LONG_00411FB5"
    %endif
    times 5 - ($ - %%insn_00411fb5) db 0
    %%insn_00411fba:
    jnz short 0x411fc6 ; 00411FBA 750A
    %if ($ - %%insn_00411fba) > 2
        %error "LONG_00411FBA"
    %endif
    times 2 - ($ - %%insn_00411fba) db 0
    %%insn_00411fbc:
    mov bl,[eax+0x1] ; 00411FBC 8A5801
    %if ($ - %%insn_00411fbc) > 3
        %error "LONG_00411FBC"
    %endif
    times 3 - ($ - %%insn_00411fbc) db 0
    %%insn_00411fbf:
    inc eax ; 00411FBF 40
    %if ($ - %%insn_00411fbf) > 1
        %error "LONG_00411FBF"
    %endif
    times 1 - ($ - %%insn_00411fbf) db 0
    %%insn_00411fc0:
    inc ecx ; 00411FC0 41
    %if ($ - %%insn_00411fc0) > 1
        %error "LONG_00411FC0"
    %endif
    times 1 - ($ - %%insn_00411fc0) db 0
    %%insn_00411fc1:
    cmp bl,0x5c ; 00411FC1 80FB5C
    %if ($ - %%insn_00411fc1) > 3
        %error "LONG_00411FC1"
    %endif
    times 3 - ($ - %%insn_00411fc1) db 0
    %%insn_00411fc4:
    jz short 0x411fbc ; 00411FC4 74F6
    %if ($ - %%insn_00411fc4) > 2
        %error "LONG_00411FC4"
    %endif
    times 2 - ($ - %%insn_00411fc4) db 0
    %%insn_00411fc6:
    cmp byte [eax],0x22 ; 00411FC6 803822
    %if ($ - %%insn_00411fc6) > 3
        %error "LONG_00411FC6"
    %endif
    times 3 - ($ - %%insn_00411fc6) db 0
    %%insn_00411fc9:
    jnz short 0x411ff0 ; 00411FC9 7525
    %if ($ - %%insn_00411fc9) > 2
        %error "LONG_00411FC9"
    %endif
    times 2 - ($ - %%insn_00411fc9) db 0
    %%insn_00411fcb:
    test cl,0x1 ; 00411FCB F6C101
    %if ($ - %%insn_00411fcb) > 3
        %error "LONG_00411FCB"
    %endif
    times 3 - ($ - %%insn_00411fcb) db 0
    %%insn_00411fce:
    jnz short 0x411fee ; 00411FCE 751E
    %if ($ - %%insn_00411fce) > 2
        %error "LONG_00411FCE"
    %endif
    times 2 - ($ - %%insn_00411fce) db 0
    %%insn_00411fd0:
    test edx,edx ; 00411FD0 85D2
    %if ($ - %%insn_00411fd0) > 2
        %error "LONG_00411FD0"
    %endif
    times 2 - ($ - %%insn_00411fd0) db 0
    %%insn_00411fd2:
    jz short 0x411fdd ; 00411FD2 7409
    %if ($ - %%insn_00411fd2) > 2
        %error "LONG_00411FD2"
    %endif
    times 2 - ($ - %%insn_00411fd2) db 0
    %%insn_00411fd4:
    cmp byte [eax+0x1],0x22 ; 00411FD4 80780122
    %if ($ - %%insn_00411fd4) > 4
        %error "LONG_00411FD4"
    %endif
    times 4 - ($ - %%insn_00411fd4) db 0
    %%insn_00411fd8:
    jnz short 0x411fdd ; 00411FD8 7503
    %if ($ - %%insn_00411fd8) > 2
        %error "LONG_00411FD8"
    %endif
    times 2 - ($ - %%insn_00411fd8) db 0
    %%insn_00411fda:
    inc eax ; 00411FDA 40
    %if ($ - %%insn_00411fda) > 1
        %error "LONG_00411FDA"
    %endif
    times 1 - ($ - %%insn_00411fda) db 0
    %%insn_00411fdb:
    jmp short 0x411fdf ; 00411FDB EB02
    %if ($ - %%insn_00411fdb) > 2
        %error "LONG_00411FDB"
    %endif
    times 2 - ($ - %%insn_00411fdb) db 0
    db 0x33, 0xED ; 00411FDD 33ED | xor ebp,ebp | encoding preserved
    %%insn_00411fdf:
    mov ebx,[esp+0x24] ; 00411FDF 8B5C2424
    %if ($ - %%insn_00411fdf) > 4
        %error "LONG_00411FDF"
    %endif
    times 4 - ($ - %%insn_00411fdf) db 0
    db 0x33, 0xD2 ; 00411FE3 33D2 | xor edx,edx | encoding preserved
    %%insn_00411fe5:
    test ebx,ebx ; 00411FE5 85DB
    %if ($ - %%insn_00411fe5) > 2
        %error "LONG_00411FE5"
    %endif
    times 2 - ($ - %%insn_00411fe5) db 0
    %%insn_00411fe7:
    setz dl ; 00411FE7 0F94C2
    %if ($ - %%insn_00411fe7) > 3
        %error "LONG_00411FE7"
    %endif
    times 3 - ($ - %%insn_00411fe7) db 0
    %%insn_00411fea:
    mov [esp+0x24],edx ; 00411FEA 89542424
    %if ($ - %%insn_00411fea) > 4
        %error "LONG_00411FEA"
    %endif
    times 4 - ($ - %%insn_00411fea) db 0
    %%insn_00411fee:
    shr ecx,1 ; 00411FEE D1E9
    %if ($ - %%insn_00411fee) > 2
        %error "LONG_00411FEE"
    %endif
    times 2 - ($ - %%insn_00411fee) db 0
    db 0x8B, 0xD9 ; 00411FF0 8BD9 | mov ebx,ecx | encoding preserved
    %%insn_00411ff2:
    dec ecx ; 00411FF2 49
    %if ($ - %%insn_00411ff2) > 1
        %error "LONG_00411FF2"
    %endif
    times 1 - ($ - %%insn_00411ff2) db 0
    %%insn_00411ff3:
    test ebx,ebx ; 00411FF3 85DB
    %if ($ - %%insn_00411ff3) > 2
        %error "LONG_00411FF3"
    %endif
    times 2 - ($ - %%insn_00411ff3) db 0
    %%insn_00411ff5:
    jz short 0x412008 ; 00411FF5 7411
    %if ($ - %%insn_00411ff5) > 2
        %error "LONG_00411FF5"
    %endif
    times 2 - ($ - %%insn_00411ff5) db 0
    %%insn_00411ff7:
    inc ecx ; 00411FF7 41
    %if ($ - %%insn_00411ff7) > 1
        %error "LONG_00411FF7"
    %endif
    times 1 - ($ - %%insn_00411ff7) db 0
    %%insn_00411ff8:
    test esi,esi ; 00411FF8 85F6
    %if ($ - %%insn_00411ff8) > 2
        %error "LONG_00411FF8"
    %endif
    times 2 - ($ - %%insn_00411ff8) db 0
    %%insn_00411ffa:
    jz short 0x412000 ; 00411FFA 7404
    %if ($ - %%insn_00411ffa) > 2
        %error "LONG_00411FFA"
    %endif
    times 2 - ($ - %%insn_00411ffa) db 0
    %%insn_00411ffc:
    mov byte [esi],0x5c ; 00411FFC C6065C
    %if ($ - %%insn_00411ffc) > 3
        %error "LONG_00411FFC"
    %endif
    times 3 - ($ - %%insn_00411ffc) db 0
    %%insn_00411fff:
    inc esi ; 00411FFF 46
    %if ($ - %%insn_00411fff) > 1
        %error "LONG_00411FFF"
    %endif
    times 1 - ($ - %%insn_00411fff) db 0
    %%insn_00412000:
    mov ebx,[edi] ; 00412000 8B1F
    %if ($ - %%insn_00412000) > 2
        %error "LONG_00412000"
    %endif
    times 2 - ($ - %%insn_00412000) db 0
    %%insn_00412002:
    inc ebx ; 00412002 43
    %if ($ - %%insn_00412002) > 1
        %error "LONG_00412002"
    %endif
    times 1 - ($ - %%insn_00412002) db 0
    %%insn_00412003:
    dec ecx ; 00412003 49
    %if ($ - %%insn_00412003) > 1
        %error "LONG_00412003"
    %endif
    times 1 - ($ - %%insn_00412003) db 0
    %%insn_00412004:
    mov [edi],ebx ; 00412004 891F
    %if ($ - %%insn_00412004) > 2
        %error "LONG_00412004"
    %endif
    times 2 - ($ - %%insn_00412004) db 0
    %%insn_00412006:
    jnz short 0x411ff8 ; 00412006 75F0
    %if ($ - %%insn_00412006) > 2
        %error "LONG_00412006"
    %endif
    times 2 - ($ - %%insn_00412006) db 0
    %%insn_00412008:
    mov cl,[eax] ; 00412008 8A08
    %if ($ - %%insn_00412008) > 2
        %error "LONG_00412008"
    %endif
    times 2 - ($ - %%insn_00412008) db 0
    %%insn_0041200a:
    test cl,cl ; 0041200A 84C9
    %if ($ - %%insn_0041200a) > 2
        %error "LONG_0041200A"
    %endif
    times 2 - ($ - %%insn_0041200a) db 0
    %%insn_0041200c:
    jz short 0x41206b ; 0041200C 745D
    %if ($ - %%insn_0041200c) > 2
        %error "LONG_0041200C"
    %endif
    times 2 - ($ - %%insn_0041200c) db 0
    %%insn_0041200e:
    test edx,edx ; 0041200E 85D2
    %if ($ - %%insn_0041200e) > 2
        %error "LONG_0041200E"
    %endif
    times 2 - ($ - %%insn_0041200e) db 0
    %%insn_00412010:
    jnz short 0x41201c ; 00412010 750A
    %if ($ - %%insn_00412010) > 2
        %error "LONG_00412010"
    %endif
    times 2 - ($ - %%insn_00412010) db 0
    %%insn_00412012:
    cmp cl,0x20 ; 00412012 80F920
    %if ($ - %%insn_00412012) > 3
        %error "LONG_00412012"
    %endif
    times 3 - ($ - %%insn_00412012) db 0
    %%insn_00412015:
    jz short 0x41206b ; 00412015 7454
    %if ($ - %%insn_00412015) > 2
        %error "LONG_00412015"
    %endif
    times 2 - ($ - %%insn_00412015) db 0
    %%insn_00412017:
    cmp cl,0x9 ; 00412017 80F909
    %if ($ - %%insn_00412017) > 3
        %error "LONG_00412017"
    %endif
    times 3 - ($ - %%insn_00412017) db 0
    %%insn_0041201a:
    jz short 0x41206b ; 0041201A 744F
    %if ($ - %%insn_0041201a) > 2
        %error "LONG_0041201A"
    %endif
    times 2 - ($ - %%insn_0041201a) db 0
    %%insn_0041201c:
    test ebp,ebp ; 0041201C 85ED
    %if ($ - %%insn_0041201c) > 2
        %error "LONG_0041201C"
    %endif
    times 2 - ($ - %%insn_0041201c) db 0
    %%insn_0041201e:
    jz short 0x412065 ; 0041201E 7445
    %if ($ - %%insn_0041201e) > 2
        %error "LONG_0041201E"
    %endif
    times 2 - ($ - %%insn_0041201e) db 0
    %%insn_00412020:
    test esi,esi ; 00412020 85F6
    %if ($ - %%insn_00412020) > 2
        %error "LONG_00412020"
    %endif
    times 2 - ($ - %%insn_00412020) db 0
    %%insn_00412022:
    jz short 0x41204e ; 00412022 742A
    %if ($ - %%insn_00412022) > 2
        %error "LONG_00412022"
    %endif
    times 2 - ($ - %%insn_00412022) db 0
    db 0x8B, 0xD9 ; 00412024 8BD9 | mov ebx,ecx | encoding preserved
    %%insn_00412026:
    and ebx,0xff ; 00412026 81E3FF000000
    %if ($ - %%insn_00412026) > 6
        %error "LONG_00412026"
    %endif
    times 6 - ($ - %%insn_00412026) db 0
    %%insn_0041202c:
    test byte [ebx+0x421051],0x4 ; 0041202C F6835110420004
    %if ($ - %%insn_0041202c) > 7
        %error "LONG_0041202C"
    %endif
    times 7 - ($ - %%insn_0041202c) db 0
    %%insn_00412033:
    jz short 0x41203e ; 00412033 7409
    %if ($ - %%insn_00412033) > 2
        %error "LONG_00412033"
    %endif
    times 2 - ($ - %%insn_00412033) db 0
    %%insn_00412035:
    mov [esi],cl ; 00412035 880E
    %if ($ - %%insn_00412035) > 2
        %error "LONG_00412035"
    %endif
    times 2 - ($ - %%insn_00412035) db 0
    %%insn_00412037:
    mov ecx,[edi] ; 00412037 8B0F
    %if ($ - %%insn_00412037) > 2
        %error "LONG_00412037"
    %endif
    times 2 - ($ - %%insn_00412037) db 0
    %%insn_00412039:
    inc esi ; 00412039 46
    %if ($ - %%insn_00412039) > 1
        %error "LONG_00412039"
    %endif
    times 1 - ($ - %%insn_00412039) db 0
    %%insn_0041203a:
    inc eax ; 0041203A 40
    %if ($ - %%insn_0041203a) > 1
        %error "LONG_0041203A"
    %endif
    times 1 - ($ - %%insn_0041203a) db 0
    %%insn_0041203b:
    inc ecx ; 0041203B 41
    %if ($ - %%insn_0041203b) > 1
        %error "LONG_0041203B"
    %endif
    times 1 - ($ - %%insn_0041203b) db 0
    %%insn_0041203c:
    mov [edi],ecx ; 0041203C 890F
    %if ($ - %%insn_0041203c) > 2
        %error "LONG_0041203C"
    %endif
    times 2 - ($ - %%insn_0041203c) db 0
    %%insn_0041203e:
    mov cl,[eax] ; 0041203E 8A08
    %if ($ - %%insn_0041203e) > 2
        %error "LONG_0041203E"
    %endif
    times 2 - ($ - %%insn_0041203e) db 0
    %%insn_00412040:
    mov [esi],cl ; 00412040 880E
    %if ($ - %%insn_00412040) > 2
        %error "LONG_00412040"
    %endif
    times 2 - ($ - %%insn_00412040) db 0
    %%insn_00412042:
    mov ecx,[edi] ; 00412042 8B0F
    %if ($ - %%insn_00412042) > 2
        %error "LONG_00412042"
    %endif
    times 2 - ($ - %%insn_00412042) db 0
    %%insn_00412044:
    inc esi ; 00412044 46
    %if ($ - %%insn_00412044) > 1
        %error "LONG_00412044"
    %endif
    times 1 - ($ - %%insn_00412044) db 0
    %%insn_00412045:
    inc ecx ; 00412045 41
    %if ($ - %%insn_00412045) > 1
        %error "LONG_00412045"
    %endif
    times 1 - ($ - %%insn_00412045) db 0
    %%insn_00412046:
    mov [edi],ecx ; 00412046 890F
    %if ($ - %%insn_00412046) > 2
        %error "LONG_00412046"
    %endif
    times 2 - ($ - %%insn_00412046) db 0
    %%insn_00412048:
    inc eax ; 00412048 40
    %if ($ - %%insn_00412048) > 1
        %error "LONG_00412048"
    %endif
    times 1 - ($ - %%insn_00412048) db 0
    %%insn_00412049:
    jmp 0x411fae ; 00412049 E960FFFFFF
    %if ($ - %%insn_00412049) > 5
        %error "LONG_00412049"
    %endif
    times 5 - ($ - %%insn_00412049) db 0
    %%insn_0041204e:
    and ecx,0xff ; 0041204E 81E1FF000000
    %if ($ - %%insn_0041204e) > 6
        %error "LONG_0041204E"
    %endif
    times 6 - ($ - %%insn_0041204e) db 0
    %%insn_00412054:
    test byte [ecx+0x421051],0x4 ; 00412054 F6815110420004
    %if ($ - %%insn_00412054) > 7
        %error "LONG_00412054"
    %endif
    times 7 - ($ - %%insn_00412054) db 0
    %%insn_0041205b:
    jz short 0x412063 ; 0041205B 7406
    %if ($ - %%insn_0041205b) > 2
        %error "LONG_0041205B"
    %endif
    times 2 - ($ - %%insn_0041205b) db 0
    %%insn_0041205d:
    mov ecx,[edi] ; 0041205D 8B0F
    %if ($ - %%insn_0041205d) > 2
        %error "LONG_0041205D"
    %endif
    times 2 - ($ - %%insn_0041205d) db 0
    %%insn_0041205f:
    inc eax ; 0041205F 40
    %if ($ - %%insn_0041205f) > 1
        %error "LONG_0041205F"
    %endif
    times 1 - ($ - %%insn_0041205f) db 0
    %%insn_00412060:
    inc ecx ; 00412060 41
    %if ($ - %%insn_00412060) > 1
        %error "LONG_00412060"
    %endif
    times 1 - ($ - %%insn_00412060) db 0
    %%insn_00412061:
    mov [edi],ecx ; 00412061 890F
    %if ($ - %%insn_00412061) > 2
        %error "LONG_00412061"
    %endif
    times 2 - ($ - %%insn_00412061) db 0
    %%insn_00412063:
    inc dword [edi] ; 00412063 FF07
    %if ($ - %%insn_00412063) > 2
        %error "LONG_00412063"
    %endif
    times 2 - ($ - %%insn_00412063) db 0
    %%insn_00412065:
    inc eax ; 00412065 40
    %if ($ - %%insn_00412065) > 1
        %error "LONG_00412065"
    %endif
    times 1 - ($ - %%insn_00412065) db 0
    %%insn_00412066:
    jmp 0x411fae ; 00412066 E943FFFFFF
    %if ($ - %%insn_00412066) > 5
        %error "LONG_00412066"
    %endif
    times 5 - ($ - %%insn_00412066) db 0
    %%insn_0041206b:
    test esi,esi ; 0041206B 85F6
    %if ($ - %%insn_0041206b) > 2
        %error "LONG_0041206B"
    %endif
    times 2 - ($ - %%insn_0041206b) db 0
    %%insn_0041206d:
    jz short 0x412073 ; 0041206D 7404
    %if ($ - %%insn_0041206d) > 2
        %error "LONG_0041206D"
    %endif
    times 2 - ($ - %%insn_0041206d) db 0
    %%insn_0041206f:
    mov byte [esi],0x0 ; 0041206F C60600
    %if ($ - %%insn_0041206f) > 3
        %error "LONG_0041206F"
    %endif
    times 3 - ($ - %%insn_0041206f) db 0
    %%insn_00412072:
    inc esi ; 00412072 46
    %if ($ - %%insn_00412072) > 1
        %error "LONG_00412072"
    %endif
    times 1 - ($ - %%insn_00412072) db 0
    %%insn_00412073:
    mov ecx,[edi] ; 00412073 8B0F
    %if ($ - %%insn_00412073) > 2
        %error "LONG_00412073"
    %endif
    times 2 - ($ - %%insn_00412073) db 0
    %%insn_00412075:
    mov ebp,[esp+0x18] ; 00412075 8B6C2418
    %if ($ - %%insn_00412075) > 4
        %error "LONG_00412075"
    %endif
    times 4 - ($ - %%insn_00412075) db 0
    %%insn_00412079:
    inc ecx ; 00412079 41
    %if ($ - %%insn_00412079) > 1
        %error "LONG_00412079"
    %endif
    times 1 - ($ - %%insn_00412079) db 0
    %%insn_0041207a:
    mov ebx,0x4 ; 0041207A BB04000000
    %if ($ - %%insn_0041207a) > 5
        %error "LONG_0041207A"
    %endif
    times 5 - ($ - %%insn_0041207a) db 0
    %%insn_0041207f:
    mov [edi],ecx ; 0041207F 890F
    %if ($ - %%insn_0041207f) > 2
        %error "LONG_0041207F"
    %endif
    times 2 - ($ - %%insn_0041207f) db 0
    %%insn_00412081:
    jmp 0x411f7a ; 00412081 E9F4FEFFFF
    %if ($ - %%insn_00412081) > 5
        %error "LONG_00412081"
    %endif
    times 5 - ($ - %%insn_00412081) db 0
    %%insn_00412086:
    test ebp,ebp ; 00412086 85ED
    %if ($ - %%insn_00412086) > 2
        %error "LONG_00412086"
    %endif
    times 2 - ($ - %%insn_00412086) db 0
    %%insn_00412088:
    jz short 0x412091 ; 00412088 7407
    %if ($ - %%insn_00412088) > 2
        %error "LONG_00412088"
    %endif
    times 2 - ($ - %%insn_00412088) db 0
    %%insn_0041208a:
    mov dword [ebp+0x0],0x0 ; 0041208A C7450000000000
    %if ($ - %%insn_0041208a) > 7
        %error "LONG_0041208A"
    %endif
    times 7 - ($ - %%insn_0041208a) db 0
    %%insn_00412091:
    mov eax,[esp+0x20] ; 00412091 8B442420
    %if ($ - %%insn_00412091) > 4
        %error "LONG_00412091"
    %endif
    times 4 - ($ - %%insn_00412091) db 0
    %%insn_00412095:
    pop edi ; 00412095 5F
    %if ($ - %%insn_00412095) > 1
        %error "LONG_00412095"
    %endif
    times 1 - ($ - %%insn_00412095) db 0
    %%insn_00412096:
    pop esi ; 00412096 5E
    %if ($ - %%insn_00412096) > 1
        %error "LONG_00412096"
    %endif
    times 1 - ($ - %%insn_00412096) db 0
    %%insn_00412097:
    pop ebp ; 00412097 5D
    %if ($ - %%insn_00412097) > 1
        %error "LONG_00412097"
    %endif
    times 1 - ($ - %%insn_00412097) db 0
    %%insn_00412098:
    mov ecx,[eax] ; 00412098 8B08
    %if ($ - %%insn_00412098) > 2
        %error "LONG_00412098"
    %endif
    times 2 - ($ - %%insn_00412098) db 0
    %%insn_0041209a:
    pop ebx ; 0041209A 5B
    %if ($ - %%insn_0041209a) > 1
        %error "LONG_0041209A"
    %endif
    times 1 - ($ - %%insn_0041209a) db 0
    %%insn_0041209b:
    inc ecx ; 0041209B 41
    %if ($ - %%insn_0041209b) > 1
        %error "LONG_0041209B"
    %endif
    times 1 - ($ - %%insn_0041209b) db 0
    %%insn_0041209c:
    mov [eax],ecx ; 0041209C 8908
    %if ($ - %%insn_0041209c) > 2
        %error "LONG_0041209C"
    %endif
    times 2 - ($ - %%insn_0041209c) db 0
    %%insn_0041209e:
    ret ; 0041209E C3
    %if ($ - %%insn_0041209e) > 1
        %error "LONG_0041209E"
    %endif
    times 1 - ($ - %%insn_0041209e) db 0
    %if ($ - %%fragment_start) != 527
        %error "function fragment size drift: 00411E90"
    %endif
%endmacro
