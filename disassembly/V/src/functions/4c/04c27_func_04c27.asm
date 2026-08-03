; Linear entry 04C27 (1000:4c27)
; Ghidra working symbol: FUN_1000_4c27
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_04c27_part_00 0
    %%fragment_start:
func_04c27:
    %%insn_04c27:
    cmp word [bp-0x30de],0x0 ; 04C27 83BE22CF00
    %if ($ - %%insn_04c27) > 5
        %error "LONG_04C27"
    %endif
    times 5 - ($ - %%insn_04c27) db 0
    %%insn_04c2c:
    jz short 0x4c31 ; 04C2C 7403
    %if ($ - %%insn_04c2c) > 2
        %error "LONG_04C2C"
    %endif
    times 2 - ($ - %%insn_04c2c) db 0
    %%insn_04c2e:
    jmp 0x4d8c ; 04C2E E95B01
    %if ($ - %%insn_04c2e) > 3
        %error "LONG_04C2E"
    %endif
    times 3 - ($ - %%insn_04c2e) db 0
    %%insn_04c31:
    push es ; 04C31 06
    %if ($ - %%insn_04c31) > 1
        %error "LONG_04C31"
    %endif
    times 1 - ($ - %%insn_04c31) db 0
    %%insn_04c32:
    push ds ; 04C32 1E
    %if ($ - %%insn_04c32) > 1
        %error "LONG_04C32"
    %endif
    times 1 - ($ - %%insn_04c32) db 0
    %%insn_04c33:
    mov ax,0xa000 ; 04C33 B800A0
    %if ($ - %%insn_04c33) > 3
        %error "LONG_04C33"
    %endif
    times 3 - ($ - %%insn_04c33) db 0
    %%insn_04c36:
    mov es,ax ; 04C36 8EC0
    %if ($ - %%insn_04c36) > 2
        %error "LONG_04C36"
    %endif
    times 2 - ($ - %%insn_04c36) db 0
    db 0x8B, 0xD9 ; 04C38 8BD9 | mov bx,cx | encoding preserved
    %%insn_04c3a:
    mov cx,[bp-0x2996] ; 04C3A 8B8E6AD6
    %if ($ - %%insn_04c3a) > 4
        %error "LONG_04C3A"
    %endif
    times 4 - ($ - %%insn_04c3a) db 0
    db 0x8B, 0xC2 ; 04C3E 8BC2 | mov ax,dx | encoding preserved
    %%insn_04c40:
    mul cx ; 04C40 F7E1
    %if ($ - %%insn_04c40) > 2
        %error "LONG_04C40"
    %endif
    times 2 - ($ - %%insn_04c40) db 0
    db 0x8B, 0xF8 ; 04C42 8BF8 | mov di,ax | encoding preserved
    db 0x8A, 0xC2 ; 04C44 8AC2 | mov al,dl | encoding preserved
    db 0x03, 0xFB ; 04C46 03FB | add di,bx | encoding preserved
    %%insn_04c48:
    adc al,0x0 ; 04C48 1400
    %if ($ - %%insn_04c48) > 2
        %error "LONG_04C48"
    %endif
    times 2 - ($ - %%insn_04c48) db 0
    %%insn_04c4a:
    cmp al,[bp-0x3076] ; 04C4A 3A868ACF
    %if ($ - %%insn_04c4a) > 4
        %error "LONG_04C4A"
    %endif
    times 4 - ($ - %%insn_04c4a) db 0
    %%insn_04c4e:
    jz short 0x4c56 ; 04C4E 7406
    %if ($ - %%insn_04c4e) > 2
        %error "LONG_04C4E"
    %endif
    times 2 - ($ - %%insn_04c4e) db 0
    %%insn_04c50:
    call 0x2d50 ; 04C50 E8FDE0
    %if ($ - %%insn_04c50) > 3
        %error "LONG_04C50"
    %endif
    times 3 - ($ - %%insn_04c50) db 0
    %%insn_04c53:
    call 0x2d5a ; 04C53 E804E1
    %if ($ - %%insn_04c53) > 3
        %error "LONG_04C53"
    %endif
    times 3 - ($ - %%insn_04c53) db 0
    %%insn_04c56:
    lodsb ; 04C56 AC
    %if ($ - %%insn_04c56) > 1
        %error "LONG_04C56"
    %endif
    times 1 - ($ - %%insn_04c56) db 0
    db 0x8A, 0xE8 ; 04C57 8AE8 | mov ch,al | encoding preserved
    %%insn_04c59:
    lodsb ; 04C59 AC
    %if ($ - %%insn_04c59) > 1
        %error "LONG_04C59"
    %endif
    times 1 - ($ - %%insn_04c59) db 0
    db 0x8A, 0xC8 ; 04C5A 8AC8 | mov cl,al | encoding preserved
    %%insn_04c5c:
    inc si ; 04C5C 46
    %if ($ - %%insn_04c5c) > 1
        %error "LONG_04C5C"
    %endif
    times 1 - ($ - %%insn_04c5c) db 0
    %%insn_04c5d:
    push cx ; 04C5D 51
    %if ($ - %%insn_04c5d) > 1
        %error "LONG_04C5D"
    %endif
    times 1 - ($ - %%insn_04c5d) db 0
    db 0x33, 0xC9 ; 04C5E 33C9 | xor cx,cx | encoding preserved
    db 0x33, 0xD2 ; 04C60 33D2 | xor dx,dx | encoding preserved
    %%insn_04c62:
    lodsw ; 04C62 AD
    %if ($ - %%insn_04c62) > 1
        %error "LONG_04C62"
    %endif
    times 1 - ($ - %%insn_04c62) db 0
    %%insn_04c63:
    mov cl,[bp-0x2789] ; 04C63 8A8E77D8
    %if ($ - %%insn_04c63) > 4
        %error "LONG_04C63"
    %endif
    times 4 - ($ - %%insn_04c63) db 0
    %%insn_04c67:
    mul cx ; 04C67 F7E1
    %if ($ - %%insn_04c67) > 2
        %error "LONG_04C67"
    %endif
    times 2 - ($ - %%insn_04c67) db 0
    db 0x03, 0xF0 ; 04C69 03F0 | add si,ax | encoding preserved
    %%insn_04c6b:
    pop cx ; 04C6B 59
    %if ($ - %%insn_04c6b) > 1
        %error "LONG_04C6B"
    %endif
    times 1 - ($ - %%insn_04c6b) db 0
    %%insn_04c6c:
    mov [bp-0x264e],cx ; 04C6C 898EB2D9
    %if ($ - %%insn_04c6c) > 4
        %error "LONG_04C6C"
    %endif
    times 4 - ($ - %%insn_04c6c) db 0
    db 0x8B, 0xD3 ; 04C70 8BD3 | mov dx,bx | encoding preserved
    %%insn_04c72:
    mov bx,0xc000 ; 04C72 BB00C0
    %if ($ - %%insn_04c72) > 3
        %error "LONG_04C72"
    %endif
    times 3 - ($ - %%insn_04c72) db 0
    %%insn_04c75:
    push cx ; 04C75 51
    %if ($ - %%insn_04c75) > 1
        %error "LONG_04C75"
    %endif
    times 1 - ($ - %%insn_04c75) db 0
    %%insn_04c76:
    push di ; 04C76 57
    %if ($ - %%insn_04c76) > 1
        %error "LONG_04C76"
    %endif
    times 1 - ($ - %%insn_04c76) db 0
    %%insn_04c77:
    mov al,[bp-0x3076] ; 04C77 8A868ACF
    %if ($ - %%insn_04c77) > 4
        %error "LONG_04C77"
    %endif
    times 4 - ($ - %%insn_04c77) db 0
    %%insn_04c7b:
    push ax ; 04C7B 50
    %if ($ - %%insn_04c7b) > 1
        %error "LONG_04C7B"
    %endif
    times 1 - ($ - %%insn_04c7b) db 0
    db 0x32, 0xE4 ; 04C7C 32E4 | xor ah,ah | encoding preserved
    %%insn_04c7e:
    mov al,[es:di] ; 04C7E 268A05
    %if ($ - %%insn_04c7e) > 3
        %error "LONG_04C7E"
    %endif
    times 3 - ($ - %%insn_04c7e) db 0
    %%insn_04c81:
    mov [bx],al ; 04C81 8807
    %if ($ - %%insn_04c81) > 2
        %error "LONG_04C81"
    %endif
    times 2 - ($ - %%insn_04c81) db 0
    %%insn_04c83:
    inc bx ; 04C83 43
    %if ($ - %%insn_04c83) > 1
        %error "LONG_04C83"
    %endif
    times 1 - ($ - %%insn_04c83) db 0
    %%insn_04c84:
    lodsb ; 04C84 AC
    %if ($ - %%insn_04c84) > 1
        %error "LONG_04C84"
    %endif
    times 1 - ($ - %%insn_04c84) db 0
    db 0x22, 0xC0 ; 04C85 22C0 | and al,al | encoding preserved
    %%insn_04c87:
    jz short 0x4c9b ; 04C87 7412
    %if ($ - %%insn_04c87) > 2
        %error "LONG_04C87"
    %endif
    times 2 - ($ - %%insn_04c87) db 0
    db 0x8B, 0xD3 ; 04C89 8BD3 | mov dx,bx | encoding preserved
    db 0x8A, 0xD8 ; 04C8B 8AD8 | mov bl,al | encoding preserved
    db 0x32, 0xFF ; 04C8D 32FF | xor bh,bh | encoding preserved
    %%insn_04c8f:
    add bx,0xe166 ; 04C8F 81C366E1
    %if ($ - %%insn_04c8f) > 4
        %error "LONG_04C8F"
    %endif
    times 4 - ($ - %%insn_04c8f) db 0
    %%insn_04c93:
    mov al,[ss:bx] ; 04C93 368A07
    %if ($ - %%insn_04c93) > 3
        %error "LONG_04C93"
    %endif
    times 3 - ($ - %%insn_04c93) db 0
    %%insn_04c96:
    stosb ; 04C96 AA
    %if ($ - %%insn_04c96) > 1
        %error "LONG_04C96"
    %endif
    times 1 - ($ - %%insn_04c96) db 0
    db 0x8B, 0xDA ; 04C97 8BDA | mov bx,dx | encoding preserved
    %%insn_04c99:
    jmp short 0x4c9c ; 04C99 EB01
    %if ($ - %%insn_04c99) > 2
        %error "LONG_04C99"
    %endif
    times 2 - ($ - %%insn_04c99) db 0
    %%insn_04c9b:
    inc di ; 04C9B 47
    %if ($ - %%insn_04c9b) > 1
        %error "LONG_04C9B"
    %endif
    times 1 - ($ - %%insn_04c9b) db 0
    db 0x23, 0xFF ; 04C9C 23FF | and di,di | encoding preserved
    %%insn_04c9e:
    jnz short 0x4cae ; 04C9E 750E
    %if ($ - %%insn_04c9e) > 2
        %error "LONG_04C9E"
    %endif
    times 2 - ($ - %%insn_04c9e) db 0
    %%insn_04ca0:
    mov al,[bp-0x3076] ; 04CA0 8A868ACF
    %if ($ - %%insn_04ca0) > 4
        %error "LONG_04CA0"
    %endif
    times 4 - ($ - %%insn_04ca0) db 0
    %%insn_04ca4:
    inc al ; 04CA4 FEC0
    %if ($ - %%insn_04ca4) > 2
        %error "LONG_04CA4"
    %endif
    times 2 - ($ - %%insn_04ca4) db 0
    %%insn_04ca6:
    push cx ; 04CA6 51
    %if ($ - %%insn_04ca6) > 1
        %error "LONG_04CA6"
    %endif
    times 1 - ($ - %%insn_04ca6) db 0
    %%insn_04ca7:
    call 0x2d50 ; 04CA7 E8A6E0
    %if ($ - %%insn_04ca7) > 3
        %error "LONG_04CA7"
    %endif
    times 3 - ($ - %%insn_04ca7) db 0
    %%insn_04caa:
    call 0x2d5a ; 04CAA E8ADE0
    %if ($ - %%insn_04caa) > 3
        %error "LONG_04CAA"
    %endif
    times 3 - ($ - %%insn_04caa) db 0
    %%insn_04cad:
    pop cx ; 04CAD 59
    %if ($ - %%insn_04cad) > 1
        %error "LONG_04CAD"
    %endif
    times 1 - ($ - %%insn_04cad) db 0
    %%insn_04cae:
    dec ch ; 04CAE FECD
    %if ($ - %%insn_04cae) > 2
        %error "LONG_04CAE"
    %endif
    times 2 - ($ - %%insn_04cae) db 0
    %%insn_04cb0:
    jnz short 0x4c7e ; 04CB0 75CC
    %if ($ - %%insn_04cb0) > 2
        %error "LONG_04CB0"
    %endif
    times 2 - ($ - %%insn_04cb0) db 0
    %%insn_04cb2:
    pop cx ; 04CB2 59
    %if ($ - %%insn_04cb2) > 1
        %error "LONG_04CB2"
    %endif
    times 1 - ($ - %%insn_04cb2) db 0
    %%insn_04cb3:
    pop di ; 04CB3 5F
    %if ($ - %%insn_04cb3) > 1
        %error "LONG_04CB3"
    %endif
    times 1 - ($ - %%insn_04cb3) db 0
    %%insn_04cb4:
    add di,[bp-0x2996] ; 04CB4 03BE6AD6
    %if ($ - %%insn_04cb4) > 4
        %error "LONG_04CB4"
    %endif
    times 4 - ($ - %%insn_04cb4) db 0
    %%insn_04cb8:
    jnc short 0x4cca ; 04CB8 7310
    %if ($ - %%insn_04cb8) > 2
        %error "LONG_04CB8"
    %endif
    times 2 - ($ - %%insn_04cb8) db 0
    %%insn_04cba:
    mov al,[bp-0x3076] ; 04CBA 8A868ACF
    %if ($ - %%insn_04cba) > 4
        %error "LONG_04CBA"
    %endif
    times 4 - ($ - %%insn_04cba) db 0
    db 0x3A, 0xC1 ; 04CBE 3AC1 | cmp al,cl | encoding preserved
    %%insn_04cc0:
    jnz short 0x4cca ; 04CC0 7508
    %if ($ - %%insn_04cc0) > 2
        %error "LONG_04CC0"
    %endif
    times 2 - ($ - %%insn_04cc0) db 0
    %%insn_04cc2:
    inc al ; 04CC2 FEC0
    %if ($ - %%insn_04cc2) > 2
        %error "LONG_04CC2"
    %endif
    times 2 - ($ - %%insn_04cc2) db 0
    %%insn_04cc4:
    call 0x2d50 ; 04CC4 E889E0
    %if ($ - %%insn_04cc4) > 3
        %error "LONG_04CC4"
    %endif
    times 3 - ($ - %%insn_04cc4) db 0
    %%insn_04cc7:
    call 0x2d5a ; 04CC7 E890E0
    %if ($ - %%insn_04cc7) > 3
        %error "LONG_04CC7"
    %endif
    times 3 - ($ - %%insn_04cc7) db 0
    %%insn_04cca:
    pop cx ; 04CCA 59
    %if ($ - %%insn_04cca) > 1
        %error "LONG_04CCA"
    %endif
    times 1 - ($ - %%insn_04cca) db 0
    %%insn_04ccb:
    dec cl ; 04CCB FEC9
    %if ($ - %%insn_04ccb) > 2
        %error "LONG_04CCB"
    %endif
    times 2 - ($ - %%insn_04ccb) db 0
    %%insn_04ccd:
    jnz short 0x4c75 ; 04CCD 75A6
    %if ($ - %%insn_04ccd) > 2
        %error "LONG_04CCD"
    %endif
    times 2 - ($ - %%insn_04ccd) db 0
    %%insn_04ccf:
    pop ds ; 04CCF 1F
    %if ($ - %%insn_04ccf) > 1
        %error "LONG_04CCF"
    %endif
    times 1 - ($ - %%insn_04ccf) db 0
    %%insn_04cd0:
    pop es ; 04CD0 07
    %if ($ - %%insn_04cd0) > 1
        %error "LONG_04CD0"
    %endif
    times 1 - ($ - %%insn_04cd0) db 0
    %%insn_04cd1:
    ret ; 04CD1 C3
    %if ($ - %%insn_04cd1) > 1
        %error "LONG_04CD1"
    %endif
    times 1 - ($ - %%insn_04cd1) db 0
    %if ($ - %%fragment_start) != 171
        %error "SIZE_04C27"
    %endif
%endmacro
