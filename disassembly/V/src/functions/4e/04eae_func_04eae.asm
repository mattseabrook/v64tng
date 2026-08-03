; Linear entry 04EAE (1000:4eae)
; Ghidra working symbol: FUN_1000_4eae
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_04eae_part_00 0
    %%fragment_start:
func_04eae:
    %%insn_04eae:
    cmp word [bp-0x30de],0x0 ; 04EAE 83BE22CF00
    %if ($ - %%insn_04eae) > 5
        %error "LONG_04EAE"
    %endif
    times 5 - ($ - %%insn_04eae) db 0
    %%insn_04eb3:
    jz short 0x4eb8 ; 04EB3 7403
    %if ($ - %%insn_04eb3) > 2
        %error "LONG_04EB3"
    %endif
    times 2 - ($ - %%insn_04eb3) db 0
    %%insn_04eb5:
    jmp 0x4f5c ; 04EB5 E9A400
    %if ($ - %%insn_04eb5) > 3
        %error "LONG_04EB5"
    %endif
    times 3 - ($ - %%insn_04eb5) db 0
    %%insn_04eb8:
    mov ax,[bp-0x264e] ; 04EB8 8B86B2D9
    %if ($ - %%insn_04eb8) > 4
        %error "LONG_04EB8"
    %endif
    times 4 - ($ - %%insn_04eb8) db 0
    db 0x23, 0xC0 ; 04EBC 23C0 | and ax,ax | encoding preserved
    %%insn_04ebe:
    jnz short 0x4ec1 ; 04EBE 7501
    %if ($ - %%insn_04ebe) > 2
        %error "LONG_04EBE"
    %endif
    times 2 - ($ - %%insn_04ebe) db 0
    %%insn_04ec0:
    ret ; 04EC0 C3
    %if ($ - %%insn_04ec0) > 1
        %error "LONG_04EC0"
    %endif
    times 1 - ($ - %%insn_04ec0) db 0
    %%insn_04ec1:
    push es ; 04EC1 06
    %if ($ - %%insn_04ec1) > 1
        %error "LONG_04EC1"
    %endif
    times 1 - ($ - %%insn_04ec1) db 0
    %%insn_04ec2:
    push ds ; 04EC2 1E
    %if ($ - %%insn_04ec2) > 1
        %error "LONG_04EC2"
    %endif
    times 1 - ($ - %%insn_04ec2) db 0
    %%insn_04ec3:
    mov ax,0xa000 ; 04EC3 B800A0
    %if ($ - %%insn_04ec3) > 3
        %error "LONG_04EC3"
    %endif
    times 3 - ($ - %%insn_04ec3) db 0
    %%insn_04ec6:
    mov es,ax ; 04EC6 8EC0
    %if ($ - %%insn_04ec6) > 2
        %error "LONG_04EC6"
    %endif
    times 2 - ($ - %%insn_04ec6) db 0
    %%insn_04ec8:
    mov ax,[bp-0x2aaa] ; 04EC8 8B8656D5
    %if ($ - %%insn_04ec8) > 4
        %error "LONG_04EC8"
    %endif
    times 4 - ($ - %%insn_04ec8) db 0
    %%insn_04ecc:
    mov ds,ax ; 04ECC 8ED8
    %if ($ - %%insn_04ecc) > 2
        %error "LONG_04ECC"
    %endif
    times 2 - ($ - %%insn_04ecc) db 0
    db 0x8B, 0xD9 ; 04ECE 8BD9 | mov bx,cx | encoding preserved
    %%insn_04ed0:
    mov cx,[bp-0x2996] ; 04ED0 8B8E6AD6
    %if ($ - %%insn_04ed0) > 4
        %error "LONG_04ED0"
    %endif
    times 4 - ($ - %%insn_04ed0) db 0
    db 0x8B, 0xC2 ; 04ED4 8BC2 | mov ax,dx | encoding preserved
    %%insn_04ed6:
    mul cx ; 04ED6 F7E1
    %if ($ - %%insn_04ed6) > 2
        %error "LONG_04ED6"
    %endif
    times 2 - ($ - %%insn_04ed6) db 0
    db 0x8B, 0xF8 ; 04ED8 8BF8 | mov di,ax | encoding preserved
    db 0x8A, 0xC2 ; 04EDA 8AC2 | mov al,dl | encoding preserved
    db 0x32, 0xE4 ; 04EDC 32E4 | xor ah,ah | encoding preserved
    %%insn_04ede:
    mov [bp-0x3076],al ; 04EDE 88868ACF
    %if ($ - %%insn_04ede) > 4
        %error "LONG_04EDE"
    %endif
    times 4 - ($ - %%insn_04ede) db 0
    %%insn_04ee2:
    call word near [ss:0xd660] ; 04EE2 36FF1660D6
    %if ($ - %%insn_04ee2) > 5
        %error "LONG_04EE2"
    %endif
    times 5 - ($ - %%insn_04ee2) db 0
    db 0x03, 0xFB ; 04EE7 03FB | add di,bx | encoding preserved
    %%insn_04ee9:
    jnc short 0x4efc ; 04EE9 7311
    %if ($ - %%insn_04ee9) > 2
        %error "LONG_04EE9"
    %endif
    times 2 - ($ - %%insn_04ee9) db 0
    %%insn_04eeb:
    mov al,[bp-0x3076] ; 04EEB 8A868ACF
    %if ($ - %%insn_04eeb) > 4
        %error "LONG_04EEB"
    %endif
    times 4 - ($ - %%insn_04eeb) db 0
    %%insn_04eef:
    inc al ; 04EEF FEC0
    %if ($ - %%insn_04eef) > 2
        %error "LONG_04EEF"
    %endif
    times 2 - ($ - %%insn_04eef) db 0
    db 0x32, 0xE4 ; 04EF1 32E4 | xor ah,ah | encoding preserved
    %%insn_04ef3:
    mov [bp-0x3076],al ; 04EF3 88868ACF
    %if ($ - %%insn_04ef3) > 4
        %error "LONG_04EF3"
    %endif
    times 4 - ($ - %%insn_04ef3) db 0
    %%insn_04ef7:
    call word near [ss:0xd660] ; 04EF7 36FF1660D6
    %if ($ - %%insn_04ef7) > 5
        %error "LONG_04EF7"
    %endif
    times 5 - ($ - %%insn_04ef7) db 0
    %%insn_04efc:
    push dx ; 04EFC 52
    %if ($ - %%insn_04efc) > 1
        %error "LONG_04EFC"
    %endif
    times 1 - ($ - %%insn_04efc) db 0
    %%insn_04efd:
    mov dx,0x3da ; 04EFD BADA03
    %if ($ - %%insn_04efd) > 3
        %error "LONG_04EFD"
    %endif
    times 3 - ($ - %%insn_04efd) db 0
    %%insn_04f00:
    in al,dx ; 04F00 EC
    %if ($ - %%insn_04f00) > 1
        %error "LONG_04F00"
    %endif
    times 1 - ($ - %%insn_04f00) db 0
    %%insn_04f01:
    and al,0x8 ; 04F01 2408
    %if ($ - %%insn_04f01) > 2
        %error "LONG_04F01"
    %endif
    times 2 - ($ - %%insn_04f01) db 0
    %%insn_04f03:
    jmp short 0x4f05 ; 04F03 EB00
    %if ($ - %%insn_04f03) > 2
        %error "LONG_04F03"
    %endif
    times 2 - ($ - %%insn_04f03) db 0
    %%insn_04f05:
    jnz short 0x4f00 ; 04F05 75F9
    %if ($ - %%insn_04f05) > 2
        %error "LONG_04F05"
    %endif
    times 2 - ($ - %%insn_04f05) db 0
    %%insn_04f07:
    in al,dx ; 04F07 EC
    %if ($ - %%insn_04f07) > 1
        %error "LONG_04F07"
    %endif
    times 1 - ($ - %%insn_04f07) db 0
    %%insn_04f08:
    and al,0x8 ; 04F08 2408
    %if ($ - %%insn_04f08) > 2
        %error "LONG_04F08"
    %endif
    times 2 - ($ - %%insn_04f08) db 0
    %%insn_04f0a:
    jmp short 0x4f0c ; 04F0A EB00
    %if ($ - %%insn_04f0a) > 2
        %error "LONG_04F0A"
    %endif
    times 2 - ($ - %%insn_04f0a) db 0
    %%insn_04f0c:
    jz short 0x4f07 ; 04F0C 74F9
    %if ($ - %%insn_04f0c) > 2
        %error "LONG_04F0C"
    %endif
    times 2 - ($ - %%insn_04f0c) db 0
    %%insn_04f0e:
    pop dx ; 04F0E 5A
    %if ($ - %%insn_04f0e) > 1
        %error "LONG_04F0E"
    %endif
    times 1 - ($ - %%insn_04f0e) db 0
    %%insn_04f0f:
    mov si,0xc000 ; 04F0F BE00C0
    %if ($ - %%insn_04f0f) > 3
        %error "LONG_04F0F"
    %endif
    times 3 - ($ - %%insn_04f0f) db 0
    %%insn_04f12:
    mov cx,[bp-0x264e] ; 04F12 8B8EB2D9
    %if ($ - %%insn_04f12) > 4
        %error "LONG_04F12"
    %endif
    times 4 - ($ - %%insn_04f12) db 0
    %%insn_04f16:
    push cx ; 04F16 51
    %if ($ - %%insn_04f16) > 1
        %error "LONG_04F16"
    %endif
    times 1 - ($ - %%insn_04f16) db 0
    %%insn_04f17:
    push di ; 04F17 57
    %if ($ - %%insn_04f17) > 1
        %error "LONG_04F17"
    %endif
    times 1 - ($ - %%insn_04f17) db 0
    %%insn_04f18:
    mov al,[bp-0x3076] ; 04F18 8A868ACF
    %if ($ - %%insn_04f18) > 4
        %error "LONG_04F18"
    %endif
    times 4 - ($ - %%insn_04f18) db 0
    %%insn_04f1c:
    push ax ; 04F1C 50
    %if ($ - %%insn_04f1c) > 1
        %error "LONG_04F1C"
    %endif
    times 1 - ($ - %%insn_04f1c) db 0
    %%insn_04f1d:
    movsb ; 04F1D A4
    %if ($ - %%insn_04f1d) > 1
        %error "LONG_04F1D"
    %endif
    times 1 - ($ - %%insn_04f1d) db 0
    db 0x23, 0xFF ; 04F1E 23FF | and di,di | encoding preserved
    %%insn_04f20:
    jnz short 0x4f33 ; 04F20 7511
    %if ($ - %%insn_04f20) > 2
        %error "LONG_04F20"
    %endif
    times 2 - ($ - %%insn_04f20) db 0
    %%insn_04f22:
    mov al,[bp-0x3076] ; 04F22 8A868ACF
    %if ($ - %%insn_04f22) > 4
        %error "LONG_04F22"
    %endif
    times 4 - ($ - %%insn_04f22) db 0
    %%insn_04f26:
    inc al ; 04F26 FEC0
    %if ($ - %%insn_04f26) > 2
        %error "LONG_04F26"
    %endif
    times 2 - ($ - %%insn_04f26) db 0
    db 0x32, 0xE4 ; 04F28 32E4 | xor ah,ah | encoding preserved
    %%insn_04f2a:
    mov [bp-0x3076],al ; 04F2A 88868ACF
    %if ($ - %%insn_04f2a) > 4
        %error "LONG_04F2A"
    %endif
    times 4 - ($ - %%insn_04f2a) db 0
    %%insn_04f2e:
    call word near [ss:0xd660] ; 04F2E 36FF1660D6
    %if ($ - %%insn_04f2e) > 5
        %error "LONG_04F2E"
    %endif
    times 5 - ($ - %%insn_04f2e) db 0
    %%insn_04f33:
    dec ch ; 04F33 FECD
    %if ($ - %%insn_04f33) > 2
        %error "LONG_04F33"
    %endif
    times 2 - ($ - %%insn_04f33) db 0
    %%insn_04f35:
    jnz short 0x4f1d ; 04F35 75E6
    %if ($ - %%insn_04f35) > 2
        %error "LONG_04F35"
    %endif
    times 2 - ($ - %%insn_04f35) db 0
    %%insn_04f37:
    pop cx ; 04F37 59
    %if ($ - %%insn_04f37) > 1
        %error "LONG_04F37"
    %endif
    times 1 - ($ - %%insn_04f37) db 0
    %%insn_04f38:
    pop di ; 04F38 5F
    %if ($ - %%insn_04f38) > 1
        %error "LONG_04F38"
    %endif
    times 1 - ($ - %%insn_04f38) db 0
    %%insn_04f39:
    add di,[bp-0x2996] ; 04F39 03BE6AD6
    %if ($ - %%insn_04f39) > 4
        %error "LONG_04F39"
    %endif
    times 4 - ($ - %%insn_04f39) db 0
    %%insn_04f3d:
    jnc short 0x4f54 ; 04F3D 7315
    %if ($ - %%insn_04f3d) > 2
        %error "LONG_04F3D"
    %endif
    times 2 - ($ - %%insn_04f3d) db 0
    %%insn_04f3f:
    mov al,[bp-0x3076] ; 04F3F 8A868ACF
    %if ($ - %%insn_04f3f) > 4
        %error "LONG_04F3F"
    %endif
    times 4 - ($ - %%insn_04f3f) db 0
    db 0x3A, 0xC1 ; 04F43 3AC1 | cmp al,cl | encoding preserved
    %%insn_04f45:
    jnz short 0x4f54 ; 04F45 750D
    %if ($ - %%insn_04f45) > 2
        %error "LONG_04F45"
    %endif
    times 2 - ($ - %%insn_04f45) db 0
    %%insn_04f47:
    inc al ; 04F47 FEC0
    %if ($ - %%insn_04f47) > 2
        %error "LONG_04F47"
    %endif
    times 2 - ($ - %%insn_04f47) db 0
    db 0x32, 0xE4 ; 04F49 32E4 | xor ah,ah | encoding preserved
    %%insn_04f4b:
    mov [bp-0x3076],al ; 04F4B 88868ACF
    %if ($ - %%insn_04f4b) > 4
        %error "LONG_04F4B"
    %endif
    times 4 - ($ - %%insn_04f4b) db 0
    %%insn_04f4f:
    call word near [ss:0xd660] ; 04F4F 36FF1660D6
    %if ($ - %%insn_04f4f) > 5
        %error "LONG_04F4F"
    %endif
    times 5 - ($ - %%insn_04f4f) db 0
    %%insn_04f54:
    pop cx ; 04F54 59
    %if ($ - %%insn_04f54) > 1
        %error "LONG_04F54"
    %endif
    times 1 - ($ - %%insn_04f54) db 0
    %%insn_04f55:
    dec cl ; 04F55 FEC9
    %if ($ - %%insn_04f55) > 2
        %error "LONG_04F55"
    %endif
    times 2 - ($ - %%insn_04f55) db 0
    %%insn_04f57:
    jnz short 0x4f16 ; 04F57 75BD
    %if ($ - %%insn_04f57) > 2
        %error "LONG_04F57"
    %endif
    times 2 - ($ - %%insn_04f57) db 0
    %%insn_04f59:
    pop ds ; 04F59 1F
    %if ($ - %%insn_04f59) > 1
        %error "LONG_04F59"
    %endif
    times 1 - ($ - %%insn_04f59) db 0
    %%insn_04f5a:
    pop es ; 04F5A 07
    %if ($ - %%insn_04f5a) > 1
        %error "LONG_04F5A"
    %endif
    times 1 - ($ - %%insn_04f5a) db 0
    %%insn_04f5b:
    ret ; 04F5B C3
    %if ($ - %%insn_04f5b) > 1
        %error "LONG_04F5B"
    %endif
    times 1 - ($ - %%insn_04f5b) db 0
    %%insn_04f5c:
    mov ax,[bp-0x264e] ; 04F5C 8B86B2D9
    %if ($ - %%insn_04f5c) > 4
        %error "LONG_04F5C"
    %endif
    times 4 - ($ - %%insn_04f5c) db 0
    db 0x23, 0xC0 ; 04F60 23C0 | and ax,ax | encoding preserved
    %%insn_04f62:
    jnz short 0x4f65 ; 04F62 7501
    %if ($ - %%insn_04f62) > 2
        %error "LONG_04F62"
    %endif
    times 2 - ($ - %%insn_04f62) db 0
    %%insn_04f64:
    ret ; 04F64 C3
    %if ($ - %%insn_04f64) > 1
        %error "LONG_04F64"
    %endif
    times 1 - ($ - %%insn_04f64) db 0
    %%insn_04f65:
    push es ; 04F65 06
    %if ($ - %%insn_04f65) > 1
        %error "LONG_04F65"
    %endif
    times 1 - ($ - %%insn_04f65) db 0
    %%insn_04f66:
    push ds ; 04F66 1E
    %if ($ - %%insn_04f66) > 1
        %error "LONG_04F66"
    %endif
    times 1 - ($ - %%insn_04f66) db 0
    %%insn_04f67:
    mov ax,0xa000 ; 04F67 B800A0
    %if ($ - %%insn_04f67) > 3
        %error "LONG_04F67"
    %endif
    times 3 - ($ - %%insn_04f67) db 0
    %%insn_04f6a:
    mov es,ax ; 04F6A 8EC0
    %if ($ - %%insn_04f6a) > 2
        %error "LONG_04F6A"
    %endif
    times 2 - ($ - %%insn_04f6a) db 0
    db 0x8B, 0xD9 ; 04F6C 8BD9 | mov bx,cx | encoding preserved
    %%insn_04f6e:
    mov cx,0x140 ; 04F6E B94001
    %if ($ - %%insn_04f6e) > 3
        %error "LONG_04F6E"
    %endif
    times 3 - ($ - %%insn_04f6e) db 0
    db 0x8B, 0xC2 ; 04F71 8BC2 | mov ax,dx | encoding preserved
    db 0x2D, 0x28, 0x00 ; 04F73 2D2800 | sub ax,0x28 | encoding preserved
    %%insn_04f76:
    jnc short 0x4f7a ; 04F76 7302
    %if ($ - %%insn_04f76) > 2
        %error "LONG_04F76"
    %endif
    times 2 - ($ - %%insn_04f76) db 0
    db 0x33, 0xC0 ; 04F78 33C0 | xor ax,ax | encoding preserved
    %%insn_04f7a:
    shr ax,1 ; 04F7A D1E8
    %if ($ - %%insn_04f7a) > 2
        %error "LONG_04F7A"
    %endif
    times 2 - ($ - %%insn_04f7a) db 0
    %%insn_04f7c:
    cmp ax,0xb4 ; 04F7C 3DB400
    %if ($ - %%insn_04f7c) > 3
        %error "LONG_04F7C"
    %endif
    times 3 - ($ - %%insn_04f7c) db 0
    %%insn_04f7f:
    jna short 0x4f84 ; 04F7F 7603
    %if ($ - %%insn_04f7f) > 2
        %error "LONG_04F7F"
    %endif
    times 2 - ($ - %%insn_04f7f) db 0
    %%insn_04f81:
    mov ax,0xb4 ; 04F81 B8B400
    %if ($ - %%insn_04f81) > 3
        %error "LONG_04F81"
    %endif
    times 3 - ($ - %%insn_04f81) db 0
    %%insn_04f84:
    mul cx ; 04F84 F7E1
    %if ($ - %%insn_04f84) > 2
        %error "LONG_04F84"
    %endif
    times 2 - ($ - %%insn_04f84) db 0
    db 0x8B, 0xF8 ; 04F86 8BF8 | mov di,ax | encoding preserved
    %%insn_04f88:
    shr bx,1 ; 04F88 D1EB
    %if ($ - %%insn_04f88) > 2
        %error "LONG_04F88"
    %endif
    times 2 - ($ - %%insn_04f88) db 0
    %%insn_04f8a:
    cmp bx,0x127 ; 04F8A 81FB2701
    %if ($ - %%insn_04f8a) > 4
        %error "LONG_04F8A"
    %endif
    times 4 - ($ - %%insn_04f8a) db 0
    %%insn_04f8e:
    jna short 0x4f93 ; 04F8E 7603
    %if ($ - %%insn_04f8e) > 2
        %error "LONG_04F8E"
    %endif
    times 2 - ($ - %%insn_04f8e) db 0
    %%insn_04f90:
    mov bx,0x127 ; 04F90 BB2701
    %if ($ - %%insn_04f90) > 3
        %error "LONG_04F90"
    %endif
    times 3 - ($ - %%insn_04f90) db 0
    db 0x03, 0xFB ; 04F93 03FB | add di,bx | encoding preserved
    %%insn_04f95:
    mov si,0xc000 ; 04F95 BE00C0
    %if ($ - %%insn_04f95) > 3
        %error "LONG_04F95"
    %endif
    times 3 - ($ - %%insn_04f95) db 0
    %%insn_04f98:
    mov cx,[bp-0x264e] ; 04F98 8B8EB2D9
    %if ($ - %%insn_04f98) > 4
        %error "LONG_04F98"
    %endif
    times 4 - ($ - %%insn_04f98) db 0
    %%insn_04f9c:
    push dx ; 04F9C 52
    %if ($ - %%insn_04f9c) > 1
        %error "LONG_04F9C"
    %endif
    times 1 - ($ - %%insn_04f9c) db 0
    %%insn_04f9d:
    mov dx,0x3da ; 04F9D BADA03
    %if ($ - %%insn_04f9d) > 3
        %error "LONG_04F9D"
    %endif
    times 3 - ($ - %%insn_04f9d) db 0
    %%insn_04fa0:
    in al,dx ; 04FA0 EC
    %if ($ - %%insn_04fa0) > 1
        %error "LONG_04FA0"
    %endif
    times 1 - ($ - %%insn_04fa0) db 0
    %%insn_04fa1:
    and al,0x8 ; 04FA1 2408
    %if ($ - %%insn_04fa1) > 2
        %error "LONG_04FA1"
    %endif
    times 2 - ($ - %%insn_04fa1) db 0
    %%insn_04fa3:
    jmp short 0x4fa5 ; 04FA3 EB00
    %if ($ - %%insn_04fa3) > 2
        %error "LONG_04FA3"
    %endif
    times 2 - ($ - %%insn_04fa3) db 0
    %%insn_04fa5:
    jnz short 0x4fa0 ; 04FA5 75F9
    %if ($ - %%insn_04fa5) > 2
        %error "LONG_04FA5"
    %endif
    times 2 - ($ - %%insn_04fa5) db 0
    %%insn_04fa7:
    in al,dx ; 04FA7 EC
    %if ($ - %%insn_04fa7) > 1
        %error "LONG_04FA7"
    %endif
    times 1 - ($ - %%insn_04fa7) db 0
    %%insn_04fa8:
    and al,0x8 ; 04FA8 2408
    %if ($ - %%insn_04fa8) > 2
        %error "LONG_04FA8"
    %endif
    times 2 - ($ - %%insn_04fa8) db 0
    %%insn_04faa:
    jmp short 0x4fac ; 04FAA EB00
    %if ($ - %%insn_04faa) > 2
        %error "LONG_04FAA"
    %endif
    times 2 - ($ - %%insn_04faa) db 0
    %%insn_04fac:
    jz short 0x4fa7 ; 04FAC 74F9
    %if ($ - %%insn_04fac) > 2
        %error "LONG_04FAC"
    %endif
    times 2 - ($ - %%insn_04fac) db 0
    %%insn_04fae:
    pop dx ; 04FAE 5A
    %if ($ - %%insn_04fae) > 1
        %error "LONG_04FAE"
    %endif
    times 1 - ($ - %%insn_04fae) db 0
    %%insn_04faf:
    shr cl,1 ; 04FAF D0E9
    %if ($ - %%insn_04faf) > 2
        %error "LONG_04FAF"
    %endif
    times 2 - ($ - %%insn_04faf) db 0
    %%insn_04fb1:
    shr ch,1 ; 04FB1 D0ED
    %if ($ - %%insn_04fb1) > 2
        %error "LONG_04FB1"
    %endif
    times 2 - ($ - %%insn_04fb1) db 0
    %%insn_04fb3:
    push cx ; 04FB3 51
    %if ($ - %%insn_04fb3) > 1
        %error "LONG_04FB3"
    %endif
    times 1 - ($ - %%insn_04fb3) db 0
    %%insn_04fb4:
    push di ; 04FB4 57
    %if ($ - %%insn_04fb4) > 1
        %error "LONG_04FB4"
    %endif
    times 1 - ($ - %%insn_04fb4) db 0
    %%insn_04fb5:
    movsb ; 04FB5 A4
    %if ($ - %%insn_04fb5) > 1
        %error "LONG_04FB5"
    %endif
    times 1 - ($ - %%insn_04fb5) db 0
    %%insn_04fb6:
    dec ch ; 04FB6 FECD
    %if ($ - %%insn_04fb6) > 2
        %error "LONG_04FB6"
    %endif
    times 2 - ($ - %%insn_04fb6) db 0
    %%insn_04fb8:
    jnz short 0x4fb5 ; 04FB8 75FB
    %if ($ - %%insn_04fb8) > 2
        %error "LONG_04FB8"
    %endif
    times 2 - ($ - %%insn_04fb8) db 0
    %%insn_04fba:
    pop di ; 04FBA 5F
    %if ($ - %%insn_04fba) > 1
        %error "LONG_04FBA"
    %endif
    times 1 - ($ - %%insn_04fba) db 0
    %%insn_04fbb:
    add di,0x140 ; 04FBB 81C74001
    %if ($ - %%insn_04fbb) > 4
        %error "LONG_04FBB"
    %endif
    times 4 - ($ - %%insn_04fbb) db 0
    %%insn_04fbf:
    pop cx ; 04FBF 59
    %if ($ - %%insn_04fbf) > 1
        %error "LONG_04FBF"
    %endif
    times 1 - ($ - %%insn_04fbf) db 0
    %%insn_04fc0:
    dec cl ; 04FC0 FEC9
    %if ($ - %%insn_04fc0) > 2
        %error "LONG_04FC0"
    %endif
    times 2 - ($ - %%insn_04fc0) db 0
    %%insn_04fc2:
    jnz short 0x4fb3 ; 04FC2 75EF
    %if ($ - %%insn_04fc2) > 2
        %error "LONG_04FC2"
    %endif
    times 2 - ($ - %%insn_04fc2) db 0
    %%insn_04fc4:
    pop ds ; 04FC4 1F
    %if ($ - %%insn_04fc4) > 1
        %error "LONG_04FC4"
    %endif
    times 1 - ($ - %%insn_04fc4) db 0
    %%insn_04fc5:
    pop es ; 04FC5 07
    %if ($ - %%insn_04fc5) > 1
        %error "LONG_04FC5"
    %endif
    times 1 - ($ - %%insn_04fc5) db 0
    %%insn_04fc6:
    ret ; 04FC6 C3
    %if ($ - %%insn_04fc6) > 1
        %error "LONG_04FC6"
    %endif
    times 1 - ($ - %%insn_04fc6) db 0
    %if ($ - %%fragment_start) != 281
        %error "SIZE_04EAE"
    %endif
%endmacro
