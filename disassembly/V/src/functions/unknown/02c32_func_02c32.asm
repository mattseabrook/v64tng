; Linear entry 02C32 (1000:2c32)
; Ghidra working symbol: FUN_1000_2c32
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_02c32_part_00 0
    %%fragment_start:
func_02c32:
    %%insn_02c32:
    push bp ; 02C32 55
    %if ($ - %%insn_02c32) > 1
        %error "LONG_02C32"
    %endif
    times 1 - ($ - %%insn_02c32) db 0
    db 0x8B, 0xEC ; 02C33 8BEC | mov bp,sp | encoding preserved
    %%insn_02c35:
    push si ; 02C35 56
    %if ($ - %%insn_02c35) > 1
        %error "LONG_02C35"
    %endif
    times 1 - ($ - %%insn_02c35) db 0
    %%insn_02c36:
    mov si,[0xd65e] ; 02C36 8B365ED6
    %if ($ - %%insn_02c36) > 4
        %error "LONG_02C36"
    %endif
    times 4 - ($ - %%insn_02c36) db 0
    db 0x0B, 0xF6 ; 02C3A 0BF6 | or si,si | encoding preserved
    %%insn_02c3c:
    jz short 0x2c41 ; 02C3C 7403
    %if ($ - %%insn_02c3c) > 2
        %error "LONG_02C3C"
    %endif
    times 2 - ($ - %%insn_02c3c) db 0
    %%insn_02c3e:
    jmp 0x2d09 ; 02C3E E9C800
    %if ($ - %%insn_02c3e) > 3
        %error "LONG_02C3E"
    %endif
    times 3 - ($ - %%insn_02c3e) db 0
    %%insn_02c41:
    pushf ; 02C41 9C
    %if ($ - %%insn_02c41) > 1
        %error "LONG_02C41"
    %endif
    times 1 - ($ - %%insn_02c41) db 0
    %%insn_02c42:
    pop bx ; 02C42 5B
    %if ($ - %%insn_02c42) > 1
        %error "LONG_02C42"
    %endif
    times 1 - ($ - %%insn_02c42) db 0
    %%insn_02c43:
    mov ax,0xfff ; 02C43 B8FF0F
    %if ($ - %%insn_02c43) > 3
        %error "LONG_02C43"
    %endif
    times 3 - ($ - %%insn_02c43) db 0
    db 0x23, 0xC3 ; 02C46 23C3 | and ax,bx | encoding preserved
    %%insn_02c48:
    push ax ; 02C48 50
    %if ($ - %%insn_02c48) > 1
        %error "LONG_02C48"
    %endif
    times 1 - ($ - %%insn_02c48) db 0
    %%insn_02c49:
    popf ; 02C49 9D
    %if ($ - %%insn_02c49) > 1
        %error "LONG_02C49"
    %endif
    times 1 - ($ - %%insn_02c49) db 0
    %%insn_02c4a:
    pushf ; 02C4A 9C
    %if ($ - %%insn_02c4a) > 1
        %error "LONG_02C4A"
    %endif
    times 1 - ($ - %%insn_02c4a) db 0
    %%insn_02c4b:
    pop ax ; 02C4B 58
    %if ($ - %%insn_02c4b) > 1
        %error "LONG_02C4B"
    %endif
    times 1 - ($ - %%insn_02c4b) db 0
    %%insn_02c4c:
    and ax,0xf000 ; 02C4C 2500F0
    %if ($ - %%insn_02c4c) > 3
        %error "LONG_02C4C"
    %endif
    times 3 - ($ - %%insn_02c4c) db 0
    %%insn_02c4f:
    cmp ax,0xf000 ; 02C4F 3D00F0
    %if ($ - %%insn_02c4f) > 3
        %error "LONG_02C4F"
    %endif
    times 3 - ($ - %%insn_02c4f) db 0
    %%insn_02c52:
    jnz short 0x2c59 ; 02C52 7505
    %if ($ - %%insn_02c52) > 2
        %error "LONG_02C52"
    %endif
    times 2 - ($ - %%insn_02c52) db 0
    %%insn_02c54:
    or si,0x1 ; 02C54 83CE01
    %if ($ - %%insn_02c54) > 3
        %error "LONG_02C54"
    %endif
    times 3 - ($ - %%insn_02c54) db 0
    %%insn_02c57:
    jmp short 0x2c92 ; 02C57 EB39
    %if ($ - %%insn_02c57) > 2
        %error "LONG_02C57"
    %endif
    times 2 - ($ - %%insn_02c57) db 0
    %%insn_02c59:
    or bx,0xf000 ; 02C59 81CB00F0
    %if ($ - %%insn_02c59) > 4
        %error "LONG_02C59"
    %endif
    times 4 - ($ - %%insn_02c59) db 0
    %%insn_02c5d:
    push bx ; 02C5D 53
    %if ($ - %%insn_02c5d) > 1
        %error "LONG_02C5D"
    %endif
    times 1 - ($ - %%insn_02c5d) db 0
    %%insn_02c5e:
    popf ; 02C5E 9D
    %if ($ - %%insn_02c5e) > 1
        %error "LONG_02C5E"
    %endif
    times 1 - ($ - %%insn_02c5e) db 0
    %%insn_02c5f:
    pushf ; 02C5F 9C
    %if ($ - %%insn_02c5f) > 1
        %error "LONG_02C5F"
    %endif
    times 1 - ($ - %%insn_02c5f) db 0
    %%insn_02c60:
    pop ax ; 02C60 58
    %if ($ - %%insn_02c60) > 1
        %error "LONG_02C60"
    %endif
    times 1 - ($ - %%insn_02c60) db 0
    %%insn_02c61:
    and ax,0xf000 ; 02C61 2500F0
    %if ($ - %%insn_02c61) > 3
        %error "LONG_02C61"
    %endif
    times 3 - ($ - %%insn_02c61) db 0
    %%insn_02c64:
    jnz short 0x2c6b ; 02C64 7505
    %if ($ - %%insn_02c64) > 2
        %error "LONG_02C64"
    %endif
    times 2 - ($ - %%insn_02c64) db 0
    %%insn_02c66:
    or si,0x4 ; 02C66 83CE04
    %if ($ - %%insn_02c66) > 3
        %error "LONG_02C66"
    %endif
    times 3 - ($ - %%insn_02c66) db 0
    %%insn_02c69:
    jmp short 0x2c92 ; 02C69 EB27
    %if ($ - %%insn_02c69) > 2
        %error "LONG_02C69"
    %endif
    times 2 - ($ - %%insn_02c69) db 0
    db 0x8B, 0xDC ; 02C6B 8BDC | mov bx,sp | encoding preserved
    %%insn_02c6d:
    and sp,0xfffffffffffffffc ; 02C6D 83E4FC
    %if ($ - %%insn_02c6d) > 3
        %error "LONG_02C6D"
    %endif
    times 3 - ($ - %%insn_02c6d) db 0
    %%insn_02c70:
    pushfd ; 02C70 669C
    %if ($ - %%insn_02c70) > 2
        %error "LONG_02C70"
    %endif
    times 2 - ($ - %%insn_02c70) db 0
    %%insn_02c72:
    pop eax ; 02C72 6658
    %if ($ - %%insn_02c72) > 2
        %error "LONG_02C72"
    %endif
    times 2 - ($ - %%insn_02c72) db 0
    db 0x66, 0x8B, 0xC8 ; 02C74 668BC8 | mov ecx,eax | encoding preserved
    %%insn_02c77:
    xor eax,0x40000 ; 02C77 663500000400
    %if ($ - %%insn_02c77) > 6
        %error "LONG_02C77"
    %endif
    times 6 - ($ - %%insn_02c77) db 0
    %%insn_02c7d:
    push eax ; 02C7D 6650
    %if ($ - %%insn_02c7d) > 2
        %error "LONG_02C7D"
    %endif
    times 2 - ($ - %%insn_02c7d) db 0
    %%insn_02c7f:
    popfd ; 02C7F 669D
    %if ($ - %%insn_02c7f) > 2
        %error "LONG_02C7F"
    %endif
    times 2 - ($ - %%insn_02c7f) db 0
    %%insn_02c81:
    pushfd ; 02C81 669C
    %if ($ - %%insn_02c81) > 2
        %error "LONG_02C81"
    %endif
    times 2 - ($ - %%insn_02c81) db 0
    %%insn_02c83:
    pop eax ; 02C83 6658
    %if ($ - %%insn_02c83) > 2
        %error "LONG_02C83"
    %endif
    times 2 - ($ - %%insn_02c83) db 0
    db 0x66, 0x33, 0xC1 ; 02C85 6633C1 | xor eax,ecx | encoding preserved
    %%insn_02c88:
    jnz short 0x2c8f ; 02C88 7505
    %if ($ - %%insn_02c88) > 2
        %error "LONG_02C88"
    %endif
    times 2 - ($ - %%insn_02c88) db 0
    %%insn_02c8a:
    or si,0x4 ; 02C8A 83CE04
    %if ($ - %%insn_02c8a) > 3
        %error "LONG_02C8A"
    %endif
    times 3 - ($ - %%insn_02c8a) db 0
    %%insn_02c8d:
    jmp short 0x2c92 ; 02C8D EB03
    %if ($ - %%insn_02c8d) > 2
        %error "LONG_02C8D"
    %endif
    times 2 - ($ - %%insn_02c8d) db 0
    %%insn_02c8f:
    or si,0x8 ; 02C8F 83CE08
    %if ($ - %%insn_02c8f) > 3
        %error "LONG_02C8F"
    %endif
    times 3 - ($ - %%insn_02c8f) db 0
    %%insn_02c92:
    fninit ; 02C92 DBE3
    %if ($ - %%insn_02c92) > 2
        %error "LONG_02C92"
    %endif
    times 2 - ($ - %%insn_02c92) db 0
    %%insn_02c94:
    mov word [0xd65c],0x5a5a ; 02C94 C7065CD65A5A
    %if ($ - %%insn_02c94) > 6
        %error "LONG_02C94"
    %endif
    times 6 - ($ - %%insn_02c94) db 0
    %%insn_02c9a:
    fnstsw [0xd65c] ; 02C9A DD3E5CD6
    %if ($ - %%insn_02c9a) > 4
        %error "LONG_02C9A"
    %endif
    times 4 - ($ - %%insn_02c9a) db 0
    %%insn_02c9e:
    mov ax,[0xd65c] ; 02C9E A15CD6
    %if ($ - %%insn_02c9e) > 3
        %error "LONG_02C9E"
    %endif
    times 3 - ($ - %%insn_02c9e) db 0
    db 0x0A, 0xC0 ; 02CA1 0AC0 | or al,al | encoding preserved
    %%insn_02ca3:
    jnz short 0x2d09 ; 02CA3 7564
    %if ($ - %%insn_02ca3) > 2
        %error "LONG_02CA3"
    %endif
    times 2 - ($ - %%insn_02ca3) db 0
    %%insn_02ca5:
    fnstcw [0xd65c] ; 02CA5 D93E5CD6
    %if ($ - %%insn_02ca5) > 4
        %error "LONG_02CA5"
    %endif
    times 4 - ($ - %%insn_02ca5) db 0
    %%insn_02ca9:
    mov ax,[0xd65c] ; 02CA9 A15CD6
    %if ($ - %%insn_02ca9) > 3
        %error "LONG_02CA9"
    %endif
    times 3 - ($ - %%insn_02ca9) db 0
    %%insn_02cac:
    and ax,0x103f ; 02CAC 253F10
    %if ($ - %%insn_02cac) > 3
        %error "LONG_02CAC"
    %endif
    times 3 - ($ - %%insn_02cac) db 0
    db 0x3D, 0x3F, 0x00 ; 02CAF 3D3F00 | cmp ax,0x3f | encoding preserved
    %%insn_02cb2:
    jnz short 0x2d09 ; 02CB2 7555
    %if ($ - %%insn_02cb2) > 2
        %error "LONG_02CB2"
    %endif
    times 2 - ($ - %%insn_02cb2) db 0
    %%insn_02cb4:
    test si,0x8 ; 02CB4 F7C60800
    %if ($ - %%insn_02cb4) > 4
        %error "LONG_02CB4"
    %endif
    times 4 - ($ - %%insn_02cb4) db 0
    %%insn_02cb8:
    jz short 0x2ce9 ; 02CB8 742F
    %if ($ - %%insn_02cb8) > 2
        %error "LONG_02CB8"
    %endif
    times 2 - ($ - %%insn_02cb8) db 0
    %%insn_02cba:
    or si,0x800 ; 02CBA 81CE0008
    %if ($ - %%insn_02cba) > 4
        %error "LONG_02CBA"
    %endif
    times 4 - ($ - %%insn_02cba) db 0
    %%insn_02cbe:
    jmp short 0x2d09 ; 02CBE EB49
    %if ($ - %%insn_02cbe) > 2
        %error "LONG_02CBE"
    %endif
    times 2 - ($ - %%insn_02cbe) db 0
    %if ($ - %%fragment_start) != 142
        %error "SIZE_02C32"
    %endif
%endmacro

%macro emit_func_02c32_part_01 0
    %%fragment_start:
    %%insn_02ce9:
    or si,0x400 ; 02CE9 81CE0004
    %if ($ - %%insn_02ce9) > 4
        %error "LONG_02CE9"
    %endif
    times 4 - ($ - %%insn_02ce9) db 0
    %%insn_02ced:
    push ecx ; 02CED 6651
    %if ($ - %%insn_02ced) > 2
        %error "LONG_02CED"
    %endif
    times 2 - ($ - %%insn_02ced) db 0
    %%insn_02cef:
    popfd ; 02CEF 669D
    %if ($ - %%insn_02cef) > 2
        %error "LONG_02CEF"
    %endif
    times 2 - ($ - %%insn_02cef) db 0
    db 0x8B, 0xE3 ; 02CF1 8BE3 | mov sp,bx | encoding preserved
    %%insn_02cf3:
    jmp short 0x2d09 ; 02CF3 EB14
    %if ($ - %%insn_02cf3) > 2
        %error "LONG_02CF3"
    %endif
    times 2 - ($ - %%insn_02cf3) db 0
    %if ($ - %%fragment_start) != 12
        %error "SIZE_02CE9"
    %endif
%endmacro

%macro emit_func_02c32_part_02 0
    %%fragment_start:
    %%insn_02d09:
    test si,0xe ; 02D09 F7C60E00
    %if ($ - %%insn_02d09) > 4
        %error "LONG_02D09"
    %endif
    times 4 - ($ - %%insn_02d09) db 0
    %%insn_02d0d:
    jz short 0x2d1b ; 02D0D 740C
    %if ($ - %%insn_02d0d) > 2
        %error "LONG_02D0D"
    %endif
    times 2 - ($ - %%insn_02d0d) db 0
    %%insn_02d0f:
    smsw ax ; 02D0F 0F01E0
    %if ($ - %%insn_02d0f) > 3
        %error "LONG_02D0F"
    %endif
    times 3 - ($ - %%insn_02d0f) db 0
    %%insn_02d12:
    test ax,0x1 ; 02D12 A90100
    %if ($ - %%insn_02d12) > 3
        %error "LONG_02D12"
    %endif
    times 3 - ($ - %%insn_02d12) db 0
    %%insn_02d15:
    jz short 0x2d1b ; 02D15 7404
    %if ($ - %%insn_02d15) > 2
        %error "LONG_02D15"
    %endif
    times 2 - ($ - %%insn_02d15) db 0
    %%insn_02d17:
    or si,0x8000 ; 02D17 81CE0080
    %if ($ - %%insn_02d17) > 4
        %error "LONG_02D17"
    %endif
    times 4 - ($ - %%insn_02d17) db 0
    db 0x8B, 0xC6 ; 02D1B 8BC6 | mov ax,si | encoding preserved
    %%insn_02d1d:
    and si,0x7 ; 02D1D 83E607
    %if ($ - %%insn_02d1d) > 3
        %error "LONG_02D1D"
    %endif
    times 3 - ($ - %%insn_02d1d) db 0
    %%insn_02d20:
    cmp si,0x4 ; 02D20 83FE04
    %if ($ - %%insn_02d20) > 3
        %error "LONG_02D20"
    %endif
    times 3 - ($ - %%insn_02d20) db 0
    %%insn_02d23:
    jnz short 0x2d4a ; 02D23 7525
    %if ($ - %%insn_02d23) > 2
        %error "LONG_02D23"
    %endif
    times 2 - ($ - %%insn_02d23) db 0
    %%insn_02d25:
    push ax ; 02D25 50
    %if ($ - %%insn_02d25) > 1
        %error "LONG_02D25"
    %endif
    times 1 - ($ - %%insn_02d25) db 0
    %%insn_02d26:
    mov eax,cr0 ; 02D26 0F20C0
    %if ($ - %%insn_02d26) > 3
        %error "LONG_02D26"
    %endif
    times 3 - ($ - %%insn_02d26) db 0
    db 0x66, 0x8B, 0xC8 ; 02D29 668BC8 | mov ecx,eax | encoding preserved
    %%insn_02d2c:
    xor eax,0x10 ; 02D2C 6683F010
    %if ($ - %%insn_02d2c) > 4
        %error "LONG_02D2C"
    %endif
    times 4 - ($ - %%insn_02d2c) db 0
    %%insn_02d30:
    mov cr0,eax ; 02D30 0F22C0
    %if ($ - %%insn_02d30) > 3
        %error "LONG_02D30"
    %endif
    times 3 - ($ - %%insn_02d30) db 0
    %%insn_02d33:
    mov eax,cr0 ; 02D33 0F20C0
    %if ($ - %%insn_02d33) > 3
        %error "LONG_02D33"
    %endif
    times 3 - ($ - %%insn_02d33) db 0
    %%insn_02d36:
    mov cr0,ecx ; 02D36 0F22C1
    %if ($ - %%insn_02d36) > 3
        %error "LONG_02D36"
    %endif
    times 3 - ($ - %%insn_02d36) db 0
    %%insn_02d39:
    mov si,0x6 ; 02D39 BE0600
    %if ($ - %%insn_02d39) > 3
        %error "LONG_02D39"
    %endif
    times 3 - ($ - %%insn_02d39) db 0
    db 0x66, 0x33, 0xC1 ; 02D3C 6633C1 | xor eax,ecx | encoding preserved
    %%insn_02d3f:
    jz short 0x2d44 ; 02D3F 7403
    %if ($ - %%insn_02d3f) > 2
        %error "LONG_02D3F"
    %endif
    times 2 - ($ - %%insn_02d3f) db 0
    %%insn_02d41:
    mov si,0x4 ; 02D41 BE0400
    %if ($ - %%insn_02d41) > 3
        %error "LONG_02D41"
    %endif
    times 3 - ($ - %%insn_02d41) db 0
    %%insn_02d44:
    pop ax ; 02D44 58
    %if ($ - %%insn_02d44) > 1
        %error "LONG_02D44"
    %endif
    times 1 - ($ - %%insn_02d44) db 0
    %%insn_02d45:
    and ax,0xf00 ; 02D45 25000F
    %if ($ - %%insn_02d45) > 3
        %error "LONG_02D45"
    %endif
    times 3 - ($ - %%insn_02d45) db 0
    db 0x0B, 0xC6 ; 02D48 0BC6 | or ax,si | encoding preserved
    %%insn_02d4a:
    pop si ; 02D4A 5E
    %if ($ - %%insn_02d4a) > 1
        %error "LONG_02D4A"
    %endif
    times 1 - ($ - %%insn_02d4a) db 0
    db 0x8B, 0xE5 ; 02D4B 8BE5 | mov sp,bp | encoding preserved
    %%insn_02d4d:
    pop bp ; 02D4D 5D
    %if ($ - %%insn_02d4d) > 1
        %error "LONG_02D4D"
    %endif
    times 1 - ($ - %%insn_02d4d) db 0
    %%insn_02d4e:
    retf ; 02D4E CB
    %if ($ - %%insn_02d4e) > 1
        %error "LONG_02D4E"
    %endif
    times 1 - ($ - %%insn_02d4e) db 0
    %if ($ - %%fragment_start) != 70
        %error "SIZE_02D09"
    %endif
%endmacro
