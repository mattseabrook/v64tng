; PE virtual entry 0040CE90
; Ghidra working symbol: _strncmp
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040ce90_part_00 0
    %%fragment_start:
func_0040ce90:
    %%insn_0040ce90:
    push ebp ; 0040CE90 55
    %if ($ - %%insn_0040ce90) > 1
        %error "LONG_0040CE90"
    %endif
    times 1 - ($ - %%insn_0040ce90) db 0
    db 0x8B, 0xEC ; 0040CE91 8BEC | mov ebp,esp | encoding preserved
    %%insn_0040ce93:
    push edi ; 0040CE93 57
    %if ($ - %%insn_0040ce93) > 1
        %error "LONG_0040CE93"
    %endif
    times 1 - ($ - %%insn_0040ce93) db 0
    %%insn_0040ce94:
    push esi ; 0040CE94 56
    %if ($ - %%insn_0040ce94) > 1
        %error "LONG_0040CE94"
    %endif
    times 1 - ($ - %%insn_0040ce94) db 0
    %%insn_0040ce95:
    push ebx ; 0040CE95 53
    %if ($ - %%insn_0040ce95) > 1
        %error "LONG_0040CE95"
    %endif
    times 1 - ($ - %%insn_0040ce95) db 0
    %%insn_0040ce96:
    mov ecx,[ebp+0x10] ; 0040CE96 8B4D10
    %if ($ - %%insn_0040ce96) > 3
        %error "LONG_0040CE96"
    %endif
    times 3 - ($ - %%insn_0040ce96) db 0
    %%insn_0040ce99:
    jecxz short 0x40cec1 ; 0040CE99 E326
    %if ($ - %%insn_0040ce99) > 2
        %error "LONG_0040CE99"
    %endif
    times 2 - ($ - %%insn_0040ce99) db 0
    db 0x8B, 0xD9 ; 0040CE9B 8BD9 | mov ebx,ecx | encoding preserved
    %%insn_0040ce9d:
    mov edi,[ebp+0x8] ; 0040CE9D 8B7D08
    %if ($ - %%insn_0040ce9d) > 3
        %error "LONG_0040CE9D"
    %endif
    times 3 - ($ - %%insn_0040ce9d) db 0
    db 0x8B, 0xF7 ; 0040CEA0 8BF7 | mov esi,edi | encoding preserved
    db 0x33, 0xC0 ; 0040CEA2 33C0 | xor eax,eax | encoding preserved
    %%insn_0040cea4:
    repne scasb ; 0040CEA4 F2AE
    %if ($ - %%insn_0040cea4) > 2
        %error "LONG_0040CEA4"
    %endif
    times 2 - ($ - %%insn_0040cea4) db 0
    %%insn_0040cea6:
    neg ecx ; 0040CEA6 F7D9
    %if ($ - %%insn_0040cea6) > 2
        %error "LONG_0040CEA6"
    %endif
    times 2 - ($ - %%insn_0040cea6) db 0
    db 0x03, 0xCB ; 0040CEA8 03CB | add ecx,ebx | encoding preserved
    db 0x8B, 0xFE ; 0040CEAA 8BFE | mov edi,esi | encoding preserved
    %%insn_0040ceac:
    mov esi,[ebp+0xc] ; 0040CEAC 8B750C
    %if ($ - %%insn_0040ceac) > 3
        %error "LONG_0040CEAC"
    %endif
    times 3 - ($ - %%insn_0040ceac) db 0
    %%insn_0040ceaf:
    repe cmpsb ; 0040CEAF F3A6
    %if ($ - %%insn_0040ceaf) > 2
        %error "LONG_0040CEAF"
    %endif
    times 2 - ($ - %%insn_0040ceaf) db 0
    %%insn_0040ceb1:
    mov al,[esi-0x1] ; 0040CEB1 8A46FF
    %if ($ - %%insn_0040ceb1) > 3
        %error "LONG_0040CEB1"
    %endif
    times 3 - ($ - %%insn_0040ceb1) db 0
    db 0x33, 0xC9 ; 0040CEB4 33C9 | xor ecx,ecx | encoding preserved
    %%insn_0040ceb6:
    cmp al,[edi-0x1] ; 0040CEB6 3A47FF
    %if ($ - %%insn_0040ceb6) > 3
        %error "LONG_0040CEB6"
    %endif
    times 3 - ($ - %%insn_0040ceb6) db 0
    %%insn_0040ceb9:
    ja short 0x40cebf ; 0040CEB9 7704
    %if ($ - %%insn_0040ceb9) > 2
        %error "LONG_0040CEB9"
    %endif
    times 2 - ($ - %%insn_0040ceb9) db 0
    %%insn_0040cebb:
    jz short 0x40cec1 ; 0040CEBB 7404
    %if ($ - %%insn_0040cebb) > 2
        %error "LONG_0040CEBB"
    %endif
    times 2 - ($ - %%insn_0040cebb) db 0
    %%insn_0040cebd:
    dec ecx ; 0040CEBD 49
    %if ($ - %%insn_0040cebd) > 1
        %error "LONG_0040CEBD"
    %endif
    times 1 - ($ - %%insn_0040cebd) db 0
    %%insn_0040cebe:
    dec ecx ; 0040CEBE 49
    %if ($ - %%insn_0040cebe) > 1
        %error "LONG_0040CEBE"
    %endif
    times 1 - ($ - %%insn_0040cebe) db 0
    %%insn_0040cebf:
    not ecx ; 0040CEBF F7D1
    %if ($ - %%insn_0040cebf) > 2
        %error "LONG_0040CEBF"
    %endif
    times 2 - ($ - %%insn_0040cebf) db 0
    db 0x8B, 0xC1 ; 0040CEC1 8BC1 | mov eax,ecx | encoding preserved
    %%insn_0040cec3:
    pop ebx ; 0040CEC3 5B
    %if ($ - %%insn_0040cec3) > 1
        %error "LONG_0040CEC3"
    %endif
    times 1 - ($ - %%insn_0040cec3) db 0
    %%insn_0040cec4:
    pop esi ; 0040CEC4 5E
    %if ($ - %%insn_0040cec4) > 1
        %error "LONG_0040CEC4"
    %endif
    times 1 - ($ - %%insn_0040cec4) db 0
    %%insn_0040cec5:
    pop edi ; 0040CEC5 5F
    %if ($ - %%insn_0040cec5) > 1
        %error "LONG_0040CEC5"
    %endif
    times 1 - ($ - %%insn_0040cec5) db 0
    %%insn_0040cec6:
    leave ; 0040CEC6 C9
    %if ($ - %%insn_0040cec6) > 1
        %error "LONG_0040CEC6"
    %endif
    times 1 - ($ - %%insn_0040cec6) db 0
    %%insn_0040cec7:
    ret ; 0040CEC7 C3
    %if ($ - %%insn_0040cec7) > 1
        %error "LONG_0040CEC7"
    %endif
    times 1 - ($ - %%insn_0040cec7) db 0
    %if ($ - %%fragment_start) != 56
        %error "function fragment size drift: 0040CE90"
    %endif
%endmacro
