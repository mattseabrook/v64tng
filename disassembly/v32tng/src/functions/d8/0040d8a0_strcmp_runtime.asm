; PE virtual entry 0040D8A0
; Ghidra working symbol: _strcmp
; Compiler-runtime strcmp recognized statically and by call behavior.
; Generated losslessly; preserve byte identity after edits.

%macro emit_strcmp_runtime_part_00 0
    %%fragment_start:
strcmp_runtime:
    %%insn_0040d8a0:
    mov edx,[esp+0x4] ; 0040D8A0 8B542404
    %if ($ - %%insn_0040d8a0) > 4
        %error "LONG_0040D8A0"
    %endif
    times 4 - ($ - %%insn_0040d8a0) db 0
    %%insn_0040d8a4:
    mov ecx,[esp+0x8] ; 0040D8A4 8B4C2408
    %if ($ - %%insn_0040d8a4) > 4
        %error "LONG_0040D8A4"
    %endif
    times 4 - ($ - %%insn_0040d8a4) db 0
    %%insn_0040d8a8:
    test edx,0x3 ; 0040D8A8 F7C203000000
    %if ($ - %%insn_0040d8a8) > 6
        %error "LONG_0040D8A8"
    %endif
    times 6 - ($ - %%insn_0040d8a8) db 0
    %%insn_0040d8ae:
    jnz short 0x40d8ec ; 0040D8AE 753C
    %if ($ - %%insn_0040d8ae) > 2
        %error "LONG_0040D8AE"
    %endif
    times 2 - ($ - %%insn_0040d8ae) db 0
    %%insn_0040d8b0:
    mov eax,[edx] ; 0040D8B0 8B02
    %if ($ - %%insn_0040d8b0) > 2
        %error "LONG_0040D8B0"
    %endif
    times 2 - ($ - %%insn_0040d8b0) db 0
    %%insn_0040d8b2:
    cmp al,[ecx] ; 0040D8B2 3A01
    %if ($ - %%insn_0040d8b2) > 2
        %error "LONG_0040D8B2"
    %endif
    times 2 - ($ - %%insn_0040d8b2) db 0
    %%insn_0040d8b4:
    jnz short 0x40d8e4 ; 0040D8B4 752E
    %if ($ - %%insn_0040d8b4) > 2
        %error "LONG_0040D8B4"
    %endif
    times 2 - ($ - %%insn_0040d8b4) db 0
    db 0x0A, 0xC0 ; 0040D8B6 0AC0 | or al,al | encoding preserved
    %%insn_0040d8b8:
    jz short 0x40d8e0 ; 0040D8B8 7426
    %if ($ - %%insn_0040d8b8) > 2
        %error "LONG_0040D8B8"
    %endif
    times 2 - ($ - %%insn_0040d8b8) db 0
    %%insn_0040d8ba:
    cmp ah,[ecx+0x1] ; 0040D8BA 3A6101
    %if ($ - %%insn_0040d8ba) > 3
        %error "LONG_0040D8BA"
    %endif
    times 3 - ($ - %%insn_0040d8ba) db 0
    %%insn_0040d8bd:
    jnz short 0x40d8e4 ; 0040D8BD 7525
    %if ($ - %%insn_0040d8bd) > 2
        %error "LONG_0040D8BD"
    %endif
    times 2 - ($ - %%insn_0040d8bd) db 0
    db 0x0A, 0xE4 ; 0040D8BF 0AE4 | or ah,ah | encoding preserved
    %%insn_0040d8c1:
    jz short 0x40d8e0 ; 0040D8C1 741D
    %if ($ - %%insn_0040d8c1) > 2
        %error "LONG_0040D8C1"
    %endif
    times 2 - ($ - %%insn_0040d8c1) db 0
    %%insn_0040d8c3:
    shr eax,byte 0x10 ; 0040D8C3 C1E810
    %if ($ - %%insn_0040d8c3) > 3
        %error "LONG_0040D8C3"
    %endif
    times 3 - ($ - %%insn_0040d8c3) db 0
    %%insn_0040d8c6:
    cmp al,[ecx+0x2] ; 0040D8C6 3A4102
    %if ($ - %%insn_0040d8c6) > 3
        %error "LONG_0040D8C6"
    %endif
    times 3 - ($ - %%insn_0040d8c6) db 0
    %%insn_0040d8c9:
    jnz short 0x40d8e4 ; 0040D8C9 7519
    %if ($ - %%insn_0040d8c9) > 2
        %error "LONG_0040D8C9"
    %endif
    times 2 - ($ - %%insn_0040d8c9) db 0
    db 0x0A, 0xC0 ; 0040D8CB 0AC0 | or al,al | encoding preserved
    %%insn_0040d8cd:
    jz short 0x40d8e0 ; 0040D8CD 7411
    %if ($ - %%insn_0040d8cd) > 2
        %error "LONG_0040D8CD"
    %endif
    times 2 - ($ - %%insn_0040d8cd) db 0
    %%insn_0040d8cf:
    cmp ah,[ecx+0x3] ; 0040D8CF 3A6103
    %if ($ - %%insn_0040d8cf) > 3
        %error "LONG_0040D8CF"
    %endif
    times 3 - ($ - %%insn_0040d8cf) db 0
    %%insn_0040d8d2:
    jnz short 0x40d8e4 ; 0040D8D2 7510
    %if ($ - %%insn_0040d8d2) > 2
        %error "LONG_0040D8D2"
    %endif
    times 2 - ($ - %%insn_0040d8d2) db 0
    %%insn_0040d8d4:
    add ecx,0x4 ; 0040D8D4 83C104
    %if ($ - %%insn_0040d8d4) > 3
        %error "LONG_0040D8D4"
    %endif
    times 3 - ($ - %%insn_0040d8d4) db 0
    %%insn_0040d8d7:
    add edx,0x4 ; 0040D8D7 83C204
    %if ($ - %%insn_0040d8d7) > 3
        %error "LONG_0040D8D7"
    %endif
    times 3 - ($ - %%insn_0040d8d7) db 0
    db 0x0A, 0xE4 ; 0040D8DA 0AE4 | or ah,ah | encoding preserved
    %%insn_0040d8dc:
    jnz short 0x40d8b0 ; 0040D8DC 75D2
    %if ($ - %%insn_0040d8dc) > 2
        %error "LONG_0040D8DC"
    %endif
    times 2 - ($ - %%insn_0040d8dc) db 0
    db 0x8B, 0xC0 ; 0040D8DE 8BC0 | mov eax,eax | encoding preserved
    db 0x33, 0xC0 ; 0040D8E0 33C0 | xor eax,eax | encoding preserved
    %%insn_0040d8e2:
    ret ; 0040D8E2 C3
    %if ($ - %%insn_0040d8e2) > 1
        %error "LONG_0040D8E2"
    %endif
    times 1 - ($ - %%insn_0040d8e2) db 0
    %if ($ - %%fragment_start) != 67
        %error "function fragment size drift: 0040D8A0"
    %endif
%endmacro

%macro emit_strcmp_runtime_part_01 0
    %%fragment_start:
    db 0x1B, 0xC0 ; 0040D8E4 1BC0 | sbb eax,eax | encoding preserved
    %%insn_0040d8e6:
    shl eax,1 ; 0040D8E6 D1E0
    %if ($ - %%insn_0040d8e6) > 2
        %error "LONG_0040D8E6"
    %endif
    times 2 - ($ - %%insn_0040d8e6) db 0
    %%insn_0040d8e8:
    inc eax ; 0040D8E8 40
    %if ($ - %%insn_0040d8e8) > 1
        %error "LONG_0040D8E8"
    %endif
    times 1 - ($ - %%insn_0040d8e8) db 0
    %%insn_0040d8e9:
    ret ; 0040D8E9 C3
    %if ($ - %%insn_0040d8e9) > 1
        %error "LONG_0040D8E9"
    %endif
    times 1 - ($ - %%insn_0040d8e9) db 0
    %if ($ - %%fragment_start) != 6
        %error "function fragment size drift: 0040D8E4"
    %endif
%endmacro

%macro emit_strcmp_runtime_part_02 0
    %%fragment_start:
    %%insn_0040d8ec:
    test edx,0x1 ; 0040D8EC F7C201000000
    %if ($ - %%insn_0040d8ec) > 6
        %error "LONG_0040D8EC"
    %endif
    times 6 - ($ - %%insn_0040d8ec) db 0
    %%insn_0040d8f2:
    jz short 0x40d908 ; 0040D8F2 7414
    %if ($ - %%insn_0040d8f2) > 2
        %error "LONG_0040D8F2"
    %endif
    times 2 - ($ - %%insn_0040d8f2) db 0
    %%insn_0040d8f4:
    mov al,[edx] ; 0040D8F4 8A02
    %if ($ - %%insn_0040d8f4) > 2
        %error "LONG_0040D8F4"
    %endif
    times 2 - ($ - %%insn_0040d8f4) db 0
    %%insn_0040d8f6:
    inc edx ; 0040D8F6 42
    %if ($ - %%insn_0040d8f6) > 1
        %error "LONG_0040D8F6"
    %endif
    times 1 - ($ - %%insn_0040d8f6) db 0
    %%insn_0040d8f7:
    cmp al,[ecx] ; 0040D8F7 3A01
    %if ($ - %%insn_0040d8f7) > 2
        %error "LONG_0040D8F7"
    %endif
    times 2 - ($ - %%insn_0040d8f7) db 0
    %%insn_0040d8f9:
    jnz short 0x40d8e4 ; 0040D8F9 75E9
    %if ($ - %%insn_0040d8f9) > 2
        %error "LONG_0040D8F9"
    %endif
    times 2 - ($ - %%insn_0040d8f9) db 0
    %%insn_0040d8fb:
    inc ecx ; 0040D8FB 41
    %if ($ - %%insn_0040d8fb) > 1
        %error "LONG_0040D8FB"
    %endif
    times 1 - ($ - %%insn_0040d8fb) db 0
    db 0x0A, 0xC0 ; 0040D8FC 0AC0 | or al,al | encoding preserved
    %%insn_0040d8fe:
    jz short 0x40d8e0 ; 0040D8FE 74E0
    %if ($ - %%insn_0040d8fe) > 2
        %error "LONG_0040D8FE"
    %endif
    times 2 - ($ - %%insn_0040d8fe) db 0
    %%insn_0040d900:
    test edx,0x2 ; 0040D900 F7C202000000
    %if ($ - %%insn_0040d900) > 6
        %error "LONG_0040D900"
    %endif
    times 6 - ($ - %%insn_0040d900) db 0
    %%insn_0040d906:
    jz short 0x40d8b0 ; 0040D906 74A8
    %if ($ - %%insn_0040d906) > 2
        %error "LONG_0040D906"
    %endif
    times 2 - ($ - %%insn_0040d906) db 0
    %%insn_0040d908:
    mov ax,[edx] ; 0040D908 668B02
    %if ($ - %%insn_0040d908) > 3
        %error "LONG_0040D908"
    %endif
    times 3 - ($ - %%insn_0040d908) db 0
    %%insn_0040d90b:
    add edx,0x2 ; 0040D90B 83C202
    %if ($ - %%insn_0040d90b) > 3
        %error "LONG_0040D90B"
    %endif
    times 3 - ($ - %%insn_0040d90b) db 0
    %%insn_0040d90e:
    cmp al,[ecx] ; 0040D90E 3A01
    %if ($ - %%insn_0040d90e) > 2
        %error "LONG_0040D90E"
    %endif
    times 2 - ($ - %%insn_0040d90e) db 0
    %%insn_0040d910:
    jnz short 0x40d8e4 ; 0040D910 75D2
    %if ($ - %%insn_0040d910) > 2
        %error "LONG_0040D910"
    %endif
    times 2 - ($ - %%insn_0040d910) db 0
    db 0x0A, 0xC0 ; 0040D912 0AC0 | or al,al | encoding preserved
    %%insn_0040d914:
    jz short 0x40d8e0 ; 0040D914 74CA
    %if ($ - %%insn_0040d914) > 2
        %error "LONG_0040D914"
    %endif
    times 2 - ($ - %%insn_0040d914) db 0
    %%insn_0040d916:
    cmp ah,[ecx+0x1] ; 0040D916 3A6101
    %if ($ - %%insn_0040d916) > 3
        %error "LONG_0040D916"
    %endif
    times 3 - ($ - %%insn_0040d916) db 0
    %%insn_0040d919:
    jnz short 0x40d8e4 ; 0040D919 75C9
    %if ($ - %%insn_0040d919) > 2
        %error "LONG_0040D919"
    %endif
    times 2 - ($ - %%insn_0040d919) db 0
    db 0x0A, 0xE4 ; 0040D91B 0AE4 | or ah,ah | encoding preserved
    %%insn_0040d91d:
    jz short 0x40d8e0 ; 0040D91D 74C1
    %if ($ - %%insn_0040d91d) > 2
        %error "LONG_0040D91D"
    %endif
    times 2 - ($ - %%insn_0040d91d) db 0
    %%insn_0040d91f:
    add ecx,0x2 ; 0040D91F 83C102
    %if ($ - %%insn_0040d91f) > 3
        %error "LONG_0040D91F"
    %endif
    times 3 - ($ - %%insn_0040d91f) db 0
    %%insn_0040d922:
    jmp short 0x40d8b0 ; 0040D922 EB8C
    %if ($ - %%insn_0040d922) > 2
        %error "LONG_0040D922"
    %endif
    times 2 - ($ - %%insn_0040d922) db 0
    %if ($ - %%fragment_start) != 56
        %error "function fragment size drift: 0040D8EC"
    %endif
%endmacro
