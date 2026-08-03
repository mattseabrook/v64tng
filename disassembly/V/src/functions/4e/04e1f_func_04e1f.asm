; Linear entry 04E1F (1000:4e1f)
; Ghidra working symbol: FUN_1000_4e1f
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_04e1f_part_00 0
    %%fragment_start:
func_04e1f:
    %%insn_04e1f:
    push es ; 04E1F 06
    %if ($ - %%insn_04e1f) > 1
        %error "LONG_04E1F"
    %endif
    times 1 - ($ - %%insn_04e1f) db 0
    %%insn_04e20:
    push ds ; 04E20 1E
    %if ($ - %%insn_04e20) > 1
        %error "LONG_04E20"
    %endif
    times 1 - ($ - %%insn_04e20) db 0
    %%insn_04e21:
    mov ax,0xa000 ; 04E21 B800A0
    %if ($ - %%insn_04e21) > 3
        %error "LONG_04E21"
    %endif
    times 3 - ($ - %%insn_04e21) db 0
    %%insn_04e24:
    mov es,ax ; 04E24 8EC0
    %if ($ - %%insn_04e24) > 2
        %error "LONG_04E24"
    %endif
    times 2 - ($ - %%insn_04e24) db 0
    db 0x8B, 0xD9 ; 04E26 8BD9 | mov bx,cx | encoding preserved
    %%insn_04e28:
    mov cx,0x140 ; 04E28 B94001
    %if ($ - %%insn_04e28) > 3
        %error "LONG_04E28"
    %endif
    times 3 - ($ - %%insn_04e28) db 0
    db 0x8B, 0xC2 ; 04E2B 8BC2 | mov ax,dx | encoding preserved
    db 0x2D, 0x28, 0x00 ; 04E2D 2D2800 | sub ax,0x28 | encoding preserved
    %%insn_04e30:
    jnc short 0x4e34 ; 04E30 7302
    %if ($ - %%insn_04e30) > 2
        %error "LONG_04E30"
    %endif
    times 2 - ($ - %%insn_04e30) db 0
    db 0x33, 0xC0 ; 04E32 33C0 | xor ax,ax | encoding preserved
    %%insn_04e34:
    shr ax,1 ; 04E34 D1E8
    %if ($ - %%insn_04e34) > 2
        %error "LONG_04E34"
    %endif
    times 2 - ($ - %%insn_04e34) db 0
    %%insn_04e36:
    cmp ax,0xb4 ; 04E36 3DB400
    %if ($ - %%insn_04e36) > 3
        %error "LONG_04E36"
    %endif
    times 3 - ($ - %%insn_04e36) db 0
    %%insn_04e39:
    jna short 0x4e3e ; 04E39 7603
    %if ($ - %%insn_04e39) > 2
        %error "LONG_04E39"
    %endif
    times 2 - ($ - %%insn_04e39) db 0
    %%insn_04e3b:
    mov ax,0xb4 ; 04E3B B8B400
    %if ($ - %%insn_04e3b) > 3
        %error "LONG_04E3B"
    %endif
    times 3 - ($ - %%insn_04e3b) db 0
    %%insn_04e3e:
    mul cx ; 04E3E F7E1
    %if ($ - %%insn_04e3e) > 2
        %error "LONG_04E3E"
    %endif
    times 2 - ($ - %%insn_04e3e) db 0
    db 0x8B, 0xF8 ; 04E40 8BF8 | mov di,ax | encoding preserved
    %%insn_04e42:
    shr bx,1 ; 04E42 D1EB
    %if ($ - %%insn_04e42) > 2
        %error "LONG_04E42"
    %endif
    times 2 - ($ - %%insn_04e42) db 0
    %%insn_04e44:
    cmp bx,0x127 ; 04E44 81FB2701
    %if ($ - %%insn_04e44) > 4
        %error "LONG_04E44"
    %endif
    times 4 - ($ - %%insn_04e44) db 0
    %%insn_04e48:
    jna short 0x4e4d ; 04E48 7603
    %if ($ - %%insn_04e48) > 2
        %error "LONG_04E48"
    %endif
    times 2 - ($ - %%insn_04e48) db 0
    %%insn_04e4a:
    mov bx,0x127 ; 04E4A BB2701
    %if ($ - %%insn_04e4a) > 3
        %error "LONG_04E4A"
    %endif
    times 3 - ($ - %%insn_04e4a) db 0
    db 0x03, 0xFB ; 04E4D 03FB | add di,bx | encoding preserved
    %%insn_04e4f:
    lodsb ; 04E4F AC
    %if ($ - %%insn_04e4f) > 1
        %error "LONG_04E4F"
    %endif
    times 1 - ($ - %%insn_04e4f) db 0
    db 0x8A, 0xE8 ; 04E50 8AE8 | mov ch,al | encoding preserved
    %%insn_04e52:
    lodsb ; 04E52 AC
    %if ($ - %%insn_04e52) > 1
        %error "LONG_04E52"
    %endif
    times 1 - ($ - %%insn_04e52) db 0
    db 0x8A, 0xC8 ; 04E53 8AC8 | mov cl,al | encoding preserved
    %%insn_04e55:
    inc si ; 04E55 46
    %if ($ - %%insn_04e55) > 1
        %error "LONG_04E55"
    %endif
    times 1 - ($ - %%insn_04e55) db 0
    %%insn_04e56:
    push cx ; 04E56 51
    %if ($ - %%insn_04e56) > 1
        %error "LONG_04E56"
    %endif
    times 1 - ($ - %%insn_04e56) db 0
    db 0x33, 0xC9 ; 04E57 33C9 | xor cx,cx | encoding preserved
    db 0x33, 0xD2 ; 04E59 33D2 | xor dx,dx | encoding preserved
    %%insn_04e5b:
    lodsw ; 04E5B AD
    %if ($ - %%insn_04e5b) > 1
        %error "LONG_04E5B"
    %endif
    times 1 - ($ - %%insn_04e5b) db 0
    %%insn_04e5c:
    mov cl,[bp-0x2789] ; 04E5C 8A8E77D8
    %if ($ - %%insn_04e5c) > 4
        %error "LONG_04E5C"
    %endif
    times 4 - ($ - %%insn_04e5c) db 0
    %%insn_04e60:
    mul cx ; 04E60 F7E1
    %if ($ - %%insn_04e60) > 2
        %error "LONG_04E60"
    %endif
    times 2 - ($ - %%insn_04e60) db 0
    db 0x03, 0xF0 ; 04E62 03F0 | add si,ax | encoding preserved
    %%insn_04e64:
    pop cx ; 04E64 59
    %if ($ - %%insn_04e64) > 1
        %error "LONG_04E64"
    %endif
    times 1 - ($ - %%insn_04e64) db 0
    %%insn_04e65:
    mov [bp-0x264e],cx ; 04E65 898EB2D9
    %if ($ - %%insn_04e65) > 4
        %error "LONG_04E65"
    %endif
    times 4 - ($ - %%insn_04e65) db 0
    db 0x8B, 0xD3 ; 04E69 8BD3 | mov dx,bx | encoding preserved
    %%insn_04e6b:
    mov bx,0xc000 ; 04E6B BB00C0
    %if ($ - %%insn_04e6b) > 3
        %error "LONG_04E6B"
    %endif
    times 3 - ($ - %%insn_04e6b) db 0
    %%insn_04e6e:
    shr cl,1 ; 04E6E D0E9
    %if ($ - %%insn_04e6e) > 2
        %error "LONG_04E6E"
    %endif
    times 2 - ($ - %%insn_04e6e) db 0
    %%insn_04e70:
    shr ch,1 ; 04E70 D0ED
    %if ($ - %%insn_04e70) > 2
        %error "LONG_04E70"
    %endif
    times 2 - ($ - %%insn_04e70) db 0
    %%insn_04e72:
    push cx ; 04E72 51
    %if ($ - %%insn_04e72) > 1
        %error "LONG_04E72"
    %endif
    times 1 - ($ - %%insn_04e72) db 0
    %%insn_04e73:
    push di ; 04E73 57
    %if ($ - %%insn_04e73) > 1
        %error "LONG_04E73"
    %endif
    times 1 - ($ - %%insn_04e73) db 0
    %%insn_04e74:
    push si ; 04E74 56
    %if ($ - %%insn_04e74) > 1
        %error "LONG_04E74"
    %endif
    times 1 - ($ - %%insn_04e74) db 0
    %%insn_04e75:
    lodsb ; 04E75 AC
    %if ($ - %%insn_04e75) > 1
        %error "LONG_04E75"
    %endif
    times 1 - ($ - %%insn_04e75) db 0
    %%insn_04e76:
    inc si ; 04E76 46
    %if ($ - %%insn_04e76) > 1
        %error "LONG_04E76"
    %endif
    times 1 - ($ - %%insn_04e76) db 0
    db 0x22, 0xC0 ; 04E77 22C0 | and al,al | encoding preserved
    %%insn_04e79:
    jz short 0x4e8c ; 04E79 7411
    %if ($ - %%insn_04e79) > 2
        %error "LONG_04E79"
    %endif
    times 2 - ($ - %%insn_04e79) db 0
    db 0x8B, 0xD3 ; 04E7B 8BD3 | mov dx,bx | encoding preserved
    db 0x8A, 0xD8 ; 04E7D 8AD8 | mov bl,al | encoding preserved
    db 0x32, 0xFF ; 04E7F 32FF | xor bh,bh | encoding preserved
    %%insn_04e81:
    add bx,0xe166 ; 04E81 81C366E1
    %if ($ - %%insn_04e81) > 4
        %error "LONG_04E81"
    %endif
    times 4 - ($ - %%insn_04e81) db 0
    %%insn_04e85:
    mov al,[ss:bx] ; 04E85 368A07
    %if ($ - %%insn_04e85) > 3
        %error "LONG_04E85"
    %endif
    times 3 - ($ - %%insn_04e85) db 0
    db 0x8B, 0xDA ; 04E88 8BDA | mov bx,dx | encoding preserved
    %%insn_04e8a:
    jmp short 0x4e8e ; 04E8A EB02
    %if ($ - %%insn_04e8a) > 2
        %error "LONG_04E8A"
    %endif
    times 2 - ($ - %%insn_04e8a) db 0
    %%insn_04e8c:
    mov al,[bx] ; 04E8C 8A07
    %if ($ - %%insn_04e8c) > 2
        %error "LONG_04E8C"
    %endif
    times 2 - ($ - %%insn_04e8c) db 0
    %%insn_04e8e:
    stosb ; 04E8E AA
    %if ($ - %%insn_04e8e) > 1
        %error "LONG_04E8E"
    %endif
    times 1 - ($ - %%insn_04e8e) db 0
    %%insn_04e8f:
    inc bx ; 04E8F 43
    %if ($ - %%insn_04e8f) > 1
        %error "LONG_04E8F"
    %endif
    times 1 - ($ - %%insn_04e8f) db 0
    %%insn_04e90:
    dec ch ; 04E90 FECD
    %if ($ - %%insn_04e90) > 2
        %error "LONG_04E90"
    %endif
    times 2 - ($ - %%insn_04e90) db 0
    %%insn_04e92:
    jnz short 0x4e75 ; 04E92 75E1
    %if ($ - %%insn_04e92) > 2
        %error "LONG_04E92"
    %endif
    times 2 - ($ - %%insn_04e92) db 0
    %%insn_04e94:
    pop si ; 04E94 5E
    %if ($ - %%insn_04e94) > 1
        %error "LONG_04E94"
    %endif
    times 1 - ($ - %%insn_04e94) db 0
    %%insn_04e95:
    mov ax,[bp-0x264e] ; 04E95 8B86B2D9
    %if ($ - %%insn_04e95) > 4
        %error "LONG_04E95"
    %endif
    times 4 - ($ - %%insn_04e95) db 0
    db 0x32, 0xC0 ; 04E99 32C0 | xor al,al | encoding preserved
    %%insn_04e9b:
    xchg al,ah ; 04E9B 86C4
    %if ($ - %%insn_04e9b) > 2
        %error "LONG_04E9B"
    %endif
    times 2 - ($ - %%insn_04e9b) db 0
    db 0x03, 0xF0 ; 04E9D 03F0 | add si,ax | encoding preserved
    db 0x03, 0xF0 ; 04E9F 03F0 | add si,ax | encoding preserved
    %%insn_04ea1:
    pop di ; 04EA1 5F
    %if ($ - %%insn_04ea1) > 1
        %error "LONG_04EA1"
    %endif
    times 1 - ($ - %%insn_04ea1) db 0
    %%insn_04ea2:
    add di,0x140 ; 04EA2 81C74001
    %if ($ - %%insn_04ea2) > 4
        %error "LONG_04EA2"
    %endif
    times 4 - ($ - %%insn_04ea2) db 0
    %%insn_04ea6:
    pop cx ; 04EA6 59
    %if ($ - %%insn_04ea6) > 1
        %error "LONG_04EA6"
    %endif
    times 1 - ($ - %%insn_04ea6) db 0
    %%insn_04ea7:
    dec cl ; 04EA7 FEC9
    %if ($ - %%insn_04ea7) > 2
        %error "LONG_04EA7"
    %endif
    times 2 - ($ - %%insn_04ea7) db 0
    %%insn_04ea9:
    jnz short 0x4e72 ; 04EA9 75C7
    %if ($ - %%insn_04ea9) > 2
        %error "LONG_04EA9"
    %endif
    times 2 - ($ - %%insn_04ea9) db 0
    %%insn_04eab:
    pop ds ; 04EAB 1F
    %if ($ - %%insn_04eab) > 1
        %error "LONG_04EAB"
    %endif
    times 1 - ($ - %%insn_04eab) db 0
    %%insn_04eac:
    pop es ; 04EAC 07
    %if ($ - %%insn_04eac) > 1
        %error "LONG_04EAC"
    %endif
    times 1 - ($ - %%insn_04eac) db 0
    %%insn_04ead:
    ret ; 04EAD C3
    %if ($ - %%insn_04ead) > 1
        %error "LONG_04EAD"
    %endif
    times 1 - ($ - %%insn_04ead) db 0
    %if ($ - %%fragment_start) != 143
        %error "SIZE_04E1F"
    %endif
%endmacro
