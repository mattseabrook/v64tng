; PE virtual entry 00412E30
; Ghidra working symbol: __aullrem
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00412e30_part_00 0
    %%fragment_start:
func_00412e30:
    %%insn_00412e30:
    push ebx ; 00412E30 53
    %if ($ - %%insn_00412e30) > 1
        %error "LONG_00412E30"
    %endif
    times 1 - ($ - %%insn_00412e30) db 0
    %%insn_00412e31:
    mov eax,[esp+0x14] ; 00412E31 8B442414
    %if ($ - %%insn_00412e31) > 4
        %error "LONG_00412E31"
    %endif
    times 4 - ($ - %%insn_00412e31) db 0
    db 0x0B, 0xC0 ; 00412E35 0BC0 | or eax,eax | encoding preserved
    %%insn_00412e37:
    jnz short 0x412e51 ; 00412E37 7518
    %if ($ - %%insn_00412e37) > 2
        %error "LONG_00412E37"
    %endif
    times 2 - ($ - %%insn_00412e37) db 0
    %%insn_00412e39:
    mov ecx,[esp+0x10] ; 00412E39 8B4C2410
    %if ($ - %%insn_00412e39) > 4
        %error "LONG_00412E39"
    %endif
    times 4 - ($ - %%insn_00412e39) db 0
    %%insn_00412e3d:
    mov eax,[esp+0xc] ; 00412E3D 8B44240C
    %if ($ - %%insn_00412e3d) > 4
        %error "LONG_00412E3D"
    %endif
    times 4 - ($ - %%insn_00412e3d) db 0
    db 0x33, 0xD2 ; 00412E41 33D2 | xor edx,edx | encoding preserved
    %%insn_00412e43:
    div ecx ; 00412E43 F7F1
    %if ($ - %%insn_00412e43) > 2
        %error "LONG_00412E43"
    %endif
    times 2 - ($ - %%insn_00412e43) db 0
    %%insn_00412e45:
    mov eax,[esp+0x8] ; 00412E45 8B442408
    %if ($ - %%insn_00412e45) > 4
        %error "LONG_00412E45"
    %endif
    times 4 - ($ - %%insn_00412e45) db 0
    %%insn_00412e49:
    div ecx ; 00412E49 F7F1
    %if ($ - %%insn_00412e49) > 2
        %error "LONG_00412E49"
    %endif
    times 2 - ($ - %%insn_00412e49) db 0
    db 0x8B, 0xC2 ; 00412E4B 8BC2 | mov eax,edx | encoding preserved
    db 0x33, 0xD2 ; 00412E4D 33D2 | xor edx,edx | encoding preserved
    %%insn_00412e4f:
    jmp short 0x412ea1 ; 00412E4F EB50
    %if ($ - %%insn_00412e4f) > 2
        %error "LONG_00412E4F"
    %endif
    times 2 - ($ - %%insn_00412e4f) db 0
    db 0x8B, 0xC8 ; 00412E51 8BC8 | mov ecx,eax | encoding preserved
    %%insn_00412e53:
    mov ebx,[esp+0x10] ; 00412E53 8B5C2410
    %if ($ - %%insn_00412e53) > 4
        %error "LONG_00412E53"
    %endif
    times 4 - ($ - %%insn_00412e53) db 0
    %%insn_00412e57:
    mov edx,[esp+0xc] ; 00412E57 8B54240C
    %if ($ - %%insn_00412e57) > 4
        %error "LONG_00412E57"
    %endif
    times 4 - ($ - %%insn_00412e57) db 0
    %%insn_00412e5b:
    mov eax,[esp+0x8] ; 00412E5B 8B442408
    %if ($ - %%insn_00412e5b) > 4
        %error "LONG_00412E5B"
    %endif
    times 4 - ($ - %%insn_00412e5b) db 0
    %%insn_00412e5f:
    shr ecx,1 ; 00412E5F D1E9
    %if ($ - %%insn_00412e5f) > 2
        %error "LONG_00412E5F"
    %endif
    times 2 - ($ - %%insn_00412e5f) db 0
    %%insn_00412e61:
    rcr ebx,1 ; 00412E61 D1DB
    %if ($ - %%insn_00412e61) > 2
        %error "LONG_00412E61"
    %endif
    times 2 - ($ - %%insn_00412e61) db 0
    %%insn_00412e63:
    shr edx,1 ; 00412E63 D1EA
    %if ($ - %%insn_00412e63) > 2
        %error "LONG_00412E63"
    %endif
    times 2 - ($ - %%insn_00412e63) db 0
    %%insn_00412e65:
    rcr eax,1 ; 00412E65 D1D8
    %if ($ - %%insn_00412e65) > 2
        %error "LONG_00412E65"
    %endif
    times 2 - ($ - %%insn_00412e65) db 0
    db 0x0B, 0xC9 ; 00412E67 0BC9 | or ecx,ecx | encoding preserved
    %%insn_00412e69:
    jnz short 0x412e5f ; 00412E69 75F4
    %if ($ - %%insn_00412e69) > 2
        %error "LONG_00412E69"
    %endif
    times 2 - ($ - %%insn_00412e69) db 0
    %%insn_00412e6b:
    div ebx ; 00412E6B F7F3
    %if ($ - %%insn_00412e6b) > 2
        %error "LONG_00412E6B"
    %endif
    times 2 - ($ - %%insn_00412e6b) db 0
    db 0x8B, 0xC8 ; 00412E6D 8BC8 | mov ecx,eax | encoding preserved
    %%insn_00412e6f:
    mul dword [esp+0x14] ; 00412E6F F7642414
    %if ($ - %%insn_00412e6f) > 4
        %error "LONG_00412E6F"
    %endif
    times 4 - ($ - %%insn_00412e6f) db 0
    %%insn_00412e73:
    xchg eax,ecx ; 00412E73 91
    %if ($ - %%insn_00412e73) > 1
        %error "LONG_00412E73"
    %endif
    times 1 - ($ - %%insn_00412e73) db 0
    %%insn_00412e74:
    mul dword [esp+0x10] ; 00412E74 F7642410
    %if ($ - %%insn_00412e74) > 4
        %error "LONG_00412E74"
    %endif
    times 4 - ($ - %%insn_00412e74) db 0
    db 0x03, 0xD1 ; 00412E78 03D1 | add edx,ecx | encoding preserved
    %%insn_00412e7a:
    jc short 0x412e8a ; 00412E7A 720E
    %if ($ - %%insn_00412e7a) > 2
        %error "LONG_00412E7A"
    %endif
    times 2 - ($ - %%insn_00412e7a) db 0
    %%insn_00412e7c:
    cmp edx,[esp+0xc] ; 00412E7C 3B54240C
    %if ($ - %%insn_00412e7c) > 4
        %error "LONG_00412E7C"
    %endif
    times 4 - ($ - %%insn_00412e7c) db 0
    %%insn_00412e80:
    ja short 0x412e8a ; 00412E80 7708
    %if ($ - %%insn_00412e80) > 2
        %error "LONG_00412E80"
    %endif
    times 2 - ($ - %%insn_00412e80) db 0
    %%insn_00412e82:
    jc short 0x412e92 ; 00412E82 720E
    %if ($ - %%insn_00412e82) > 2
        %error "LONG_00412E82"
    %endif
    times 2 - ($ - %%insn_00412e82) db 0
    %%insn_00412e84:
    cmp eax,[esp+0x8] ; 00412E84 3B442408
    %if ($ - %%insn_00412e84) > 4
        %error "LONG_00412E84"
    %endif
    times 4 - ($ - %%insn_00412e84) db 0
    %%insn_00412e88:
    jna short 0x412e92 ; 00412E88 7608
    %if ($ - %%insn_00412e88) > 2
        %error "LONG_00412E88"
    %endif
    times 2 - ($ - %%insn_00412e88) db 0
    %%insn_00412e8a:
    sub eax,[esp+0x10] ; 00412E8A 2B442410
    %if ($ - %%insn_00412e8a) > 4
        %error "LONG_00412E8A"
    %endif
    times 4 - ($ - %%insn_00412e8a) db 0
    %%insn_00412e8e:
    sbb edx,[esp+0x14] ; 00412E8E 1B542414
    %if ($ - %%insn_00412e8e) > 4
        %error "LONG_00412E8E"
    %endif
    times 4 - ($ - %%insn_00412e8e) db 0
    %%insn_00412e92:
    sub eax,[esp+0x8] ; 00412E92 2B442408
    %if ($ - %%insn_00412e92) > 4
        %error "LONG_00412E92"
    %endif
    times 4 - ($ - %%insn_00412e92) db 0
    %%insn_00412e96:
    sbb edx,[esp+0xc] ; 00412E96 1B54240C
    %if ($ - %%insn_00412e96) > 4
        %error "LONG_00412E96"
    %endif
    times 4 - ($ - %%insn_00412e96) db 0
    %%insn_00412e9a:
    neg edx ; 00412E9A F7DA
    %if ($ - %%insn_00412e9a) > 2
        %error "LONG_00412E9A"
    %endif
    times 2 - ($ - %%insn_00412e9a) db 0
    %%insn_00412e9c:
    neg eax ; 00412E9C F7D8
    %if ($ - %%insn_00412e9c) > 2
        %error "LONG_00412E9C"
    %endif
    times 2 - ($ - %%insn_00412e9c) db 0
    %%insn_00412e9e:
    sbb edx,0x0 ; 00412E9E 83DA00
    %if ($ - %%insn_00412e9e) > 3
        %error "LONG_00412E9E"
    %endif
    times 3 - ($ - %%insn_00412e9e) db 0
    %%insn_00412ea1:
    pop ebx ; 00412EA1 5B
    %if ($ - %%insn_00412ea1) > 1
        %error "LONG_00412EA1"
    %endif
    times 1 - ($ - %%insn_00412ea1) db 0
    %%insn_00412ea2:
    ret word 0x10 ; 00412EA2 C21000
    %if ($ - %%insn_00412ea2) > 3
        %error "LONG_00412EA2"
    %endif
    times 3 - ($ - %%insn_00412ea2) db 0
    %if ($ - %%fragment_start) != 117
        %error "function fragment size drift: 00412E30"
    %endif
%endmacro
