; Linear entry 06AEF (1000:6aef)
; Ghidra working symbol: FUN_1000_6aef
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_06aef_part_00 0
    %%fragment_start:
func_06aef:
    %%insn_06aef:
    push bp ; 06AEF 55
    %if ($ - %%insn_06aef) > 1
        %error "LONG_06AEF"
    %endif
    times 1 - ($ - %%insn_06aef) db 0
    db 0x8B, 0xEC ; 06AF0 8BEC | mov bp,sp | encoding preserved
    %%insn_06af2:
    sub sp,0x8 ; 06AF2 83EC08
    %if ($ - %%insn_06af2) > 3
        %error "LONG_06AF2"
    %endif
    times 3 - ($ - %%insn_06af2) db 0
    %%insn_06af5:
    push dx ; 06AF5 52
    %if ($ - %%insn_06af5) > 1
        %error "LONG_06AF5"
    %endif
    times 1 - ($ - %%insn_06af5) db 0
    %%insn_06af6:
    push ax ; 06AF6 50
    %if ($ - %%insn_06af6) > 1
        %error "LONG_06AF6"
    %endif
    times 1 - ($ - %%insn_06af6) db 0
    %%insn_06af7:
    push di ; 06AF7 57
    %if ($ - %%insn_06af7) > 1
        %error "LONG_06AF7"
    %endif
    times 1 - ($ - %%insn_06af7) db 0
    %%insn_06af8:
    push si ; 06AF8 56
    %if ($ - %%insn_06af8) > 1
        %error "LONG_06AF8"
    %endif
    times 1 - ($ - %%insn_06af8) db 0
    %%insn_06af9:
    mov word [bp-0xa],0x1 ; 06AF9 C746F60100
    %if ($ - %%insn_06af9) > 5
        %error "LONG_06AF9"
    %endif
    times 5 - ($ - %%insn_06af9) db 0
    %%insn_06afe:
    mov bx,0xe484 ; 06AFE BB84E4
    %if ($ - %%insn_06afe) > 3
        %error "LONG_06AFE"
    %endif
    times 3 - ($ - %%insn_06afe) db 0
    %%insn_06b01:
    call 0x5f6c ; 06B01 E868F4
    %if ($ - %%insn_06b01) > 3
        %error "LONG_06B01"
    %endif
    times 3 - ($ - %%insn_06b01) db 0
    %%insn_06b04:
    call 0x6a6d ; 06B04 E866FF
    %if ($ - %%insn_06b04) > 3
        %error "LONG_06B04"
    %endif
    times 3 - ($ - %%insn_06b04) db 0
    %%insn_06b07:
    mov al,[0xe4b5] ; 06B07 A0B5E4
    %if ($ - %%insn_06b07) > 3
        %error "LONG_06B07"
    %endif
    times 3 - ($ - %%insn_06b07) db 0
    %%insn_06b0a:
    cbw ; 06B0A 98
    %if ($ - %%insn_06b0a) > 1
        %error "LONG_06B0A"
    %endif
    times 1 - ($ - %%insn_06b0a) db 0
    db 0x2D, 0x31, 0x00 ; 06B0B 2D3100 | sub ax,0x31 | encoding preserved
    %%insn_06b0e:
    neg ax ; 06B0E F7D8
    %if ($ - %%insn_06b0e) > 2
        %error "LONG_06B0E"
    %endif
    times 2 - ($ - %%insn_06b0e) db 0
    db 0x8B, 0xC8 ; 06B10 8BC8 | mov cx,ax | encoding preserved
    %%insn_06b12:
    mov al,[0xe4b6] ; 06B12 A0B6E4
    %if ($ - %%insn_06b12) > 3
        %error "LONG_06B12"
    %endif
    times 3 - ($ - %%insn_06b12) db 0
    %%insn_06b15:
    cbw ; 06B15 98
    %if ($ - %%insn_06b15) > 1
        %error "LONG_06B15"
    %endif
    times 1 - ($ - %%insn_06b15) db 0
    db 0x2B, 0xC8 ; 06B16 2BC8 | sub cx,ax | encoding preserved
    %%insn_06b18:
    mov al,[0xe4b7] ; 06B18 A0B7E4
    %if ($ - %%insn_06b18) > 3
        %error "LONG_06B18"
    %endif
    times 3 - ($ - %%insn_06b18) db 0
    %%insn_06b1b:
    cbw ; 06B1B 98
    %if ($ - %%insn_06b1b) > 1
        %error "LONG_06B1B"
    %endif
    times 1 - ($ - %%insn_06b1b) db 0
    db 0x2B, 0xC8 ; 06B1C 2BC8 | sub cx,ax | encoding preserved
    %%insn_06b1e:
    mov al,[0xe4b8] ; 06B1E A0B8E4
    %if ($ - %%insn_06b1e) > 3
        %error "LONG_06B1E"
    %endif
    times 3 - ($ - %%insn_06b1e) db 0
    %%insn_06b21:
    cbw ; 06B21 98
    %if ($ - %%insn_06b21) > 1
        %error "LONG_06B21"
    %endif
    times 1 - ($ - %%insn_06b21) db 0
    db 0x2B, 0xC8 ; 06B22 2BC8 | sub cx,ax | encoding preserved
    %%insn_06b24:
    mov al,[bp-0xc] ; 06B24 8A46F4
    %if ($ - %%insn_06b24) > 3
        %error "LONG_06B24"
    %endif
    times 3 - ($ - %%insn_06b24) db 0
    %%insn_06b27:
    cbw ; 06B27 98
    %if ($ - %%insn_06b27) > 1
        %error "LONG_06B27"
    %endif
    times 1 - ($ - %%insn_06b27) db 0
    db 0x8B, 0xD8 ; 06B28 8BD8 | mov bx,ax | encoding preserved
    %%insn_06b2a:
    add bx,0xe4b4 ; 06B2A 81C3B4E4
    %if ($ - %%insn_06b2a) > 4
        %error "LONG_06B2A"
    %endif
    times 4 - ($ - %%insn_06b2a) db 0
    %%insn_06b2e:
    mov [bp-0x8],bx ; 06B2E 895EF8
    %if ($ - %%insn_06b2e) > 3
        %error "LONG_06B2E"
    %endif
    times 3 - ($ - %%insn_06b2e) db 0
    %%insn_06b31:
    mov al,[bx] ; 06B31 8A07
    %if ($ - %%insn_06b31) > 2
        %error "LONG_06B31"
    %endif
    times 2 - ($ - %%insn_06b31) db 0
    %%insn_06b33:
    cbw ; 06B33 98
    %if ($ - %%insn_06b33) > 1
        %error "LONG_06B33"
    %endif
    times 1 - ($ - %%insn_06b33) db 0
    db 0x3B, 0xC8 ; 06B34 3BC8 | cmp cx,ax | encoding preserved
    %%insn_06b36:
    jng short 0x6b42 ; 06B36 7E0A
    %if ($ - %%insn_06b36) > 2
        %error "LONG_06B36"
    %endif
    times 2 - ($ - %%insn_06b36) db 0
    %%insn_06b38:
    call 0x5fb6 ; 06B38 E87BF4
    %if ($ - %%insn_06b38) > 3
        %error "LONG_06B38"
    %endif
    times 3 - ($ - %%insn_06b38) db 0
    %%insn_06b3b:
    mov word [bp-0x4],0x5fe4 ; 06B3B C746FCE45F
    %if ($ - %%insn_06b3b) > 5
        %error "LONG_06B3B"
    %endif
    times 5 - ($ - %%insn_06b3b) db 0
    %%insn_06b40:
    jmp short 0x6b4a ; 06B40 EB08
    %if ($ - %%insn_06b40) > 2
        %error "LONG_06B40"
    %endif
    times 2 - ($ - %%insn_06b40) db 0
    %%insn_06b42:
    call 0x5fd8 ; 06B42 E893F4
    %if ($ - %%insn_06b42) > 3
        %error "LONG_06B42"
    %endif
    times 3 - ($ - %%insn_06b42) db 0
    %%insn_06b45:
    mov word [bp-0x4],0x61d0 ; 06B45 C746FCD061
    %if ($ - %%insn_06b45) > 5
        %error "LONG_06B45"
    %endif
    times 5 - ($ - %%insn_06b45) db 0
    %%insn_06b4a:
    mov al,[bp-0xc] ; 06B4A 8A46F4
    %if ($ - %%insn_06b4a) > 3
        %error "LONG_06B4A"
    %endif
    times 3 - ($ - %%insn_06b4a) db 0
    %%insn_06b4d:
    call word near [bp-0x4] ; 06B4D FF56FC
    %if ($ - %%insn_06b4d) > 3
        %error "LONG_06B4D"
    %endif
    times 3 - ($ - %%insn_06b4d) db 0
    db 0x0B, 0xC0 ; 06B50 0BC0 | or ax,ax | encoding preserved
    %%insn_06b52:
    jnz short 0x6b57 ; 06B52 7503
    %if ($ - %%insn_06b52) > 2
        %error "LONG_06B52"
    %endif
    times 2 - ($ - %%insn_06b52) db 0
    %%insn_06b54:
    jmp 0x6d08 ; 06B54 E9B101
    %if ($ - %%insn_06b54) > 3
        %error "LONG_06B54"
    %endif
    times 3 - ($ - %%insn_06b54) db 0
    %%insn_06b57:
    mov al,[0xe4b5] ; 06B57 A0B5E4
    %if ($ - %%insn_06b57) > 3
        %error "LONG_06B57"
    %endif
    times 3 - ($ - %%insn_06b57) db 0
    %%insn_06b5a:
    cbw ; 06B5A 98
    %if ($ - %%insn_06b5a) > 1
        %error "LONG_06B5A"
    %endif
    times 1 - ($ - %%insn_06b5a) db 0
    %%insn_06b5b:
    mov bx,[bp-0x8] ; 06B5B 8B5EF8
    %if ($ - %%insn_06b5b) > 3
        %error "LONG_06B5B"
    %endif
    times 3 - ($ - %%insn_06b5b) db 0
    db 0x8B, 0xC8 ; 06B5E 8BC8 | mov cx,ax | encoding preserved
    %%insn_06b60:
    mov al,[bx] ; 06B60 8A07
    %if ($ - %%insn_06b60) > 2
        %error "LONG_06B60"
    %endif
    times 2 - ($ - %%insn_06b60) db 0
    %%insn_06b62:
    cbw ; 06B62 98
    %if ($ - %%insn_06b62) > 1
        %error "LONG_06B62"
    %endif
    times 1 - ($ - %%insn_06b62) db 0
    db 0x2B, 0xC1 ; 06B63 2BC1 | sub ax,cx | encoding preserved
    db 0x8B, 0xC8 ; 06B65 8BC8 | mov cx,ax | encoding preserved
    %%insn_06b67:
    mov al,[0xe4b6] ; 06B67 A0B6E4
    %if ($ - %%insn_06b67) > 3
        %error "LONG_06B67"
    %endif
    times 3 - ($ - %%insn_06b67) db 0
    %%insn_06b6a:
    cbw ; 06B6A 98
    %if ($ - %%insn_06b6a) > 1
        %error "LONG_06B6A"
    %endif
    times 1 - ($ - %%insn_06b6a) db 0
    db 0x2B, 0xC8 ; 06B6B 2BC8 | sub cx,ax | encoding preserved
    %%insn_06b6d:
    mov al,[0xe4b7] ; 06B6D A0B7E4
    %if ($ - %%insn_06b6d) > 3
        %error "LONG_06B6D"
    %endif
    times 3 - ($ - %%insn_06b6d) db 0
    %%insn_06b70:
    cbw ; 06B70 98
    %if ($ - %%insn_06b70) > 1
        %error "LONG_06B70"
    %endif
    times 1 - ($ - %%insn_06b70) db 0
    db 0x2B, 0xC8 ; 06B71 2BC8 | sub cx,ax | encoding preserved
    %%insn_06b73:
    mov al,[0xe4b8] ; 06B73 A0B8E4
    %if ($ - %%insn_06b73) > 3
        %error "LONG_06B73"
    %endif
    times 3 - ($ - %%insn_06b73) db 0
    %%insn_06b76:
    cbw ; 06B76 98
    %if ($ - %%insn_06b76) > 1
        %error "LONG_06B76"
    %endif
    times 1 - ($ - %%insn_06b76) db 0
    db 0x3B, 0xC8 ; 06B77 3BC8 | cmp cx,ax | encoding preserved
    %%insn_06b79:
    jnz short 0x6b80 ; 06B79 7505
    %if ($ - %%insn_06b79) > 2
        %error "LONG_06B79"
    %endif
    times 2 - ($ - %%insn_06b79) db 0
    %%insn_06b7b:
    mov word [bp-0xa],0x0 ; 06B7B C746F60000
    %if ($ - %%insn_06b7b) > 5
        %error "LONG_06B7B"
    %endif
    times 5 - ($ - %%insn_06b7b) db 0
    %%insn_06b80:
    mov byte [0xe8fc],0x0 ; 06B80 C606FCE800
    %if ($ - %%insn_06b80) > 5
        %error "LONG_06B80"
    %endif
    times 5 - ($ - %%insn_06b80) db 0
    %%insn_06b85:
    cmp byte [0xe4bb],0x1 ; 06B85 803EBBE401
    %if ($ - %%insn_06b85) > 5
        %error "LONG_06B85"
    %endif
    times 5 - ($ - %%insn_06b85) db 0
    %%insn_06b8a:
    jnz short 0x6b91 ; 06B8A 7505
    %if ($ - %%insn_06b8a) > 2
        %error "LONG_06B8A"
    %endif
    times 2 - ($ - %%insn_06b8a) db 0
    %%insn_06b8c:
    mov byte [0xe8fc],0x1 ; 06B8C C606FCE801
    %if ($ - %%insn_06b8c) > 5
        %error "LONG_06B8C"
    %endif
    times 5 - ($ - %%insn_06b8c) db 0
    %%insn_06b91:
    cmp word [bp-0xa],0x0 ; 06B91 837EF600
    %if ($ - %%insn_06b91) > 4
        %error "LONG_06B91"
    %endif
    times 4 - ($ - %%insn_06b91) db 0
    %%insn_06b95:
    jz short 0x6c00 ; 06B95 7469
    %if ($ - %%insn_06b95) > 2
        %error "LONG_06B95"
    %endif
    times 2 - ($ - %%insn_06b95) db 0
    %%insn_06b97:
    mov al,[bp-0xc] ; 06B97 8A46F4
    %if ($ - %%insn_06b97) > 3
        %error "LONG_06B97"
    %endif
    times 3 - ($ - %%insn_06b97) db 0
    %%insn_06b9a:
    call 0x6290 ; 06B9A E8F3F6
    %if ($ - %%insn_06b9a) > 3
        %error "LONG_06B9A"
    %endif
    times 3 - ($ - %%insn_06b9a) db 0
    %%insn_06b9d:
    mov word [0xe905],0x0 ; 06B9D C70605E90000
    %if ($ - %%insn_06b9d) > 6
        %error "LONG_06B9D"
    %endif
    times 6 - ($ - %%insn_06b9d) db 0
    %%insn_06ba3:
    cmp word [bp-0x4],0x61d0 ; 06BA3 817EFCD061
    %if ($ - %%insn_06ba3) > 5
        %error "LONG_06BA3"
    %endif
    times 5 - ($ - %%insn_06ba3) db 0
    %%insn_06ba8:
    jnz short 0x6bba ; 06BA8 7510
    %if ($ - %%insn_06ba8) > 2
        %error "LONG_06BA8"
    %endif
    times 2 - ($ - %%insn_06ba8) db 0
    %%insn_06baa:
    mov al,0x81 ; 06BAA B081
    %if ($ - %%insn_06baa) > 2
        %error "LONG_06BAA"
    %endif
    times 2 - ($ - %%insn_06baa) db 0
    %%insn_06bac:
    push ax ; 06BAC 50
    %if ($ - %%insn_06bac) > 1
        %error "LONG_06BAC"
    %endif
    times 1 - ($ - %%insn_06bac) db 0
    %%insn_06bad:
    mov al,[bp-0xc] ; 06BAD 8A46F4
    %if ($ - %%insn_06bad) > 3
        %error "LONG_06BAD"
    %endif
    times 3 - ($ - %%insn_06bad) db 0
    db 0x8A, 0xD0 ; 06BB0 8AD0 | mov dl,al | encoding preserved
    %%insn_06bb2:
    mov bx,[bp-0xa] ; 06BB2 8B5EF6
    %if ($ - %%insn_06bb2) > 3
        %error "LONG_06BB2"
    %endif
    times 3 - ($ - %%insn_06bb2) db 0
    %%insn_06bb5:
    call 0x656c ; 06BB5 E8B4F9
    %if ($ - %%insn_06bb5) > 3
        %error "LONG_06BB5"
    %endif
    times 3 - ($ - %%insn_06bb5) db 0
    %%insn_06bb8:
    jmp short 0x6c08 ; 06BB8 EB4E
    %if ($ - %%insn_06bb8) > 2
        %error "LONG_06BB8"
    %endif
    times 2 - ($ - %%insn_06bb8) db 0
    %%insn_06bba:
    mov bx,[0xe903] ; 06BBA 8B1E03E9
    %if ($ - %%insn_06bba) > 4
        %error "LONG_06BBA"
    %endif
    times 4 - ($ - %%insn_06bba) db 0
    %%insn_06bbe:
    mov cx,0x1c ; 06BBE B91C00
    %if ($ - %%insn_06bbe) > 3
        %error "LONG_06BBE"
    %endif
    times 3 - ($ - %%insn_06bbe) db 0
    %%insn_06bc1:
    lea di,[bx-0x16dd] ; 06BC1 8DBF23E9
    %if ($ - %%insn_06bc1) > 4
        %error "LONG_06BC1"
    %endif
    times 4 - ($ - %%insn_06bc1) db 0
    %%insn_06bc5:
    mov si,0xeb5d ; 06BC5 BE5DEB
    %if ($ - %%insn_06bc5) > 3
        %error "LONG_06BC5"
    %endif
    times 3 - ($ - %%insn_06bc5) db 0
    %%insn_06bc8:
    push ds ; 06BC8 1E
    %if ($ - %%insn_06bc8) > 1
        %error "LONG_06BC8"
    %endif
    times 1 - ($ - %%insn_06bc8) db 0
    %%insn_06bc9:
    pop es ; 06BC9 07
    %if ($ - %%insn_06bc9) > 1
        %error "LONG_06BC9"
    %endif
    times 1 - ($ - %%insn_06bc9) db 0
    %%insn_06bca:
    rep movsw ; 06BCA F3A5
    %if ($ - %%insn_06bca) > 2
        %error "LONG_06BCA"
    %endif
    times 2 - ($ - %%insn_06bca) db 0
    %%insn_06bcc:
    movsb ; 06BCC A4
    %if ($ - %%insn_06bcc) > 1
        %error "LONG_06BCC"
    %endif
    times 1 - ($ - %%insn_06bcc) db 0
    %%insn_06bcd:
    add word [0xe903],0x39 ; 06BCD 830603E939
    %if ($ - %%insn_06bcd) > 5
        %error "LONG_06BCD"
    %endif
    times 5 - ($ - %%insn_06bcd) db 0
    %%insn_06bd2:
    mov al,0x81 ; 06BD2 B081
    %if ($ - %%insn_06bd2) > 2
        %error "LONG_06BD2"
    %endif
    times 2 - ($ - %%insn_06bd2) db 0
    %%insn_06bd4:
    push ax ; 06BD4 50
    %if ($ - %%insn_06bd4) > 1
        %error "LONG_06BD4"
    %endif
    times 1 - ($ - %%insn_06bd4) db 0
    %%insn_06bd5:
    mov al,[bp-0xc] ; 06BD5 8A46F4
    %if ($ - %%insn_06bd5) > 3
        %error "LONG_06BD5"
    %endif
    times 3 - ($ - %%insn_06bd5) db 0
    db 0x8A, 0xD0 ; 06BD8 8AD0 | mov dl,al | encoding preserved
    %%insn_06bda:
    mov bx,[bp-0xa] ; 06BDA 8B5EF6
    %if ($ - %%insn_06bda) > 3
        %error "LONG_06BDA"
    %endif
    times 3 - ($ - %%insn_06bda) db 0
    %%insn_06bdd:
    call 0x656c ; 06BDD E88CF9
    %if ($ - %%insn_06bdd) > 3
        %error "LONG_06BDD"
    %endif
    times 3 - ($ - %%insn_06bdd) db 0
    %%insn_06be0:
    mov [bp-0x2],al ; 06BE0 8846FE
    %if ($ - %%insn_06be0) > 3
        %error "LONG_06BE0"
    %endif
    times 3 - ($ - %%insn_06be0) db 0
    %%insn_06be3:
    sub word [0xe903],0x39 ; 06BE3 832E03E939
    %if ($ - %%insn_06be3) > 5
        %error "LONG_06BE3"
    %endif
    times 5 - ($ - %%insn_06be3) db 0
    %%insn_06be8:
    mov ax,0xeb5d ; 06BE8 B85DEB
    %if ($ - %%insn_06be8) > 3
        %error "LONG_06BE8"
    %endif
    times 3 - ($ - %%insn_06be8) db 0
    %%insn_06beb:
    mov bx,[0xe903] ; 06BEB 8B1E03E9
    %if ($ - %%insn_06beb) > 4
        %error "LONG_06BEB"
    %endif
    times 4 - ($ - %%insn_06beb) db 0
    %%insn_06bef:
    mov cx,0x1c ; 06BEF B91C00
    %if ($ - %%insn_06bef) > 3
        %error "LONG_06BEF"
    %endif
    times 3 - ($ - %%insn_06bef) db 0
    db 0x8B, 0xF8 ; 06BF2 8BF8 | mov di,ax | encoding preserved
    %%insn_06bf4:
    lea si,[bx-0x16dd] ; 06BF4 8DB723E9
    %if ($ - %%insn_06bf4) > 4
        %error "LONG_06BF4"
    %endif
    times 4 - ($ - %%insn_06bf4) db 0
    %%insn_06bf8:
    push ds ; 06BF8 1E
    %if ($ - %%insn_06bf8) > 1
        %error "LONG_06BF8"
    %endif
    times 1 - ($ - %%insn_06bf8) db 0
    %%insn_06bf9:
    pop es ; 06BF9 07
    %if ($ - %%insn_06bf9) > 1
        %error "LONG_06BF9"
    %endif
    times 1 - ($ - %%insn_06bf9) db 0
    %%insn_06bfa:
    rep movsw ; 06BFA F3A5
    %if ($ - %%insn_06bfa) > 2
        %error "LONG_06BFA"
    %endif
    times 2 - ($ - %%insn_06bfa) db 0
    %%insn_06bfc:
    movsb ; 06BFC A4
    %if ($ - %%insn_06bfc) > 1
        %error "LONG_06BFC"
    %endif
    times 1 - ($ - %%insn_06bfc) db 0
    %%insn_06bfd:
    jmp short 0x6c0b ; 06BFD EB0C
    %if ($ - %%insn_06bfd) > 2
        %error "LONG_06BFD"
    %endif
    times 2 - ($ - %%insn_06bfd) db 0
    %if ($ - %%fragment_start) != 272
        %error "SIZE_06AEF"
    %endif
%endmacro

%macro emit_func_06aef_part_01 0
    %%fragment_start:
    %%insn_06c00:
    mov al,[bp-0xc] ; 06C00 8A46F4
    %if ($ - %%insn_06c00) > 3
        %error "LONG_06C00"
    %endif
    times 3 - ($ - %%insn_06c00) db 0
    db 0x8A, 0xD0 ; 06C03 8AD0 | mov dl,al | encoding preserved
    %%insn_06c05:
    call 0x62ea ; 06C05 E8E2F6
    %if ($ - %%insn_06c05) > 3
        %error "LONG_06C05"
    %endif
    times 3 - ($ - %%insn_06c05) db 0
    %%insn_06c08:
    mov [bp-0x2],al ; 06C08 8846FE
    %if ($ - %%insn_06c08) > 3
        %error "LONG_06C08"
    %endif
    times 3 - ($ - %%insn_06c08) db 0
    %%insn_06c0b:
    mov al,[bp-0x2] ; 06C0B 8A46FE
    %if ($ - %%insn_06c0b) > 3
        %error "LONG_06C0B"
    %endif
    times 3 - ($ - %%insn_06c0b) db 0
    %%insn_06c0e:
    call 0x6a81 ; 06C0E E870FE
    %if ($ - %%insn_06c0e) > 3
        %error "LONG_06C0E"
    %endif
    times 3 - ($ - %%insn_06c0e) db 0
    %%insn_06c11:
    mov bx,[bp-0x8] ; 06C11 8B5EF8
    %if ($ - %%insn_06c11) > 3
        %error "LONG_06C11"
    %endif
    times 3 - ($ - %%insn_06c11) db 0
    %%insn_06c14:
    mov al,[bx] ; 06C14 8A07
    %if ($ - %%insn_06c14) > 2
        %error "LONG_06C14"
    %endif
    times 2 - ($ - %%insn_06c14) db 0
    %%insn_06c16:
    shl al,1 ; 06C16 D0E0
    %if ($ - %%insn_06c16) > 2
        %error "LONG_06C16"
    %endif
    times 2 - ($ - %%insn_06c16) db 0
    %%insn_06c18:
    sub al,[0xe4b5] ; 06C18 2A06B5E4
    %if ($ - %%insn_06c18) > 4
        %error "LONG_06C18"
    %endif
    times 4 - ($ - %%insn_06c18) db 0
    %%insn_06c1c:
    sub al,[0xe4b6] ; 06C1C 2A06B6E4
    %if ($ - %%insn_06c1c) > 4
        %error "LONG_06C1C"
    %endif
    times 4 - ($ - %%insn_06c1c) db 0
    %%insn_06c20:
    sub al,[0xe4b7] ; 06C20 2A06B7E4
    %if ($ - %%insn_06c20) > 4
        %error "LONG_06C20"
    %endif
    times 4 - ($ - %%insn_06c20) db 0
    %%insn_06c24:
    sub al,[0xe4b8] ; 06C24 2A06B8E4
    %if ($ - %%insn_06c24) > 4
        %error "LONG_06C24"
    %endif
    times 4 - ($ - %%insn_06c24) db 0
    %%insn_06c28:
    shl al,1 ; 06C28 D0E0
    %if ($ - %%insn_06c28) > 2
        %error "LONG_06C28"
    %endif
    times 2 - ($ - %%insn_06c28) db 0
    %%insn_06c2a:
    mov [bp-0x5],al ; 06C2A 8846FB
    %if ($ - %%insn_06c2a) > 3
        %error "LONG_06C2A"
    %endif
    times 3 - ($ - %%insn_06c2a) db 0
    %%insn_06c2d:
    mov al,[bp-0xc] ; 06C2D 8A46F4
    %if ($ - %%insn_06c2d) > 3
        %error "LONG_06C2D"
    %endif
    times 3 - ($ - %%insn_06c2d) db 0
    %%insn_06c30:
    call word near [bp-0x4] ; 06C30 FF56FC
    %if ($ - %%insn_06c30) > 3
        %error "LONG_06C30"
    %endif
    times 3 - ($ - %%insn_06c30) db 0
    db 0x0B, 0xC0 ; 06C33 0BC0 | or ax,ax | encoding preserved
    %%insn_06c35:
    jnz short 0x6c3a ; 06C35 7503
    %if ($ - %%insn_06c35) > 2
        %error "LONG_06C35"
    %endif
    times 2 - ($ - %%insn_06c35) db 0
    %%insn_06c37:
    jmp 0x6d05 ; 06C37 E9CB00
    %if ($ - %%insn_06c37) > 3
        %error "LONG_06C37"
    %endif
    times 3 - ($ - %%insn_06c37) db 0
    %%insn_06c3a:
    cmp byte [0xe8fb],0x0 ; 06C3A 803EFBE800
    %if ($ - %%insn_06c3a) > 5
        %error "LONG_06C3A"
    %endif
    times 5 - ($ - %%insn_06c3a) db 0
    %%insn_06c3f:
    jz short 0x6c44 ; 06C3F 7403
    %if ($ - %%insn_06c3f) > 2
        %error "LONG_06C3F"
    %endif
    times 2 - ($ - %%insn_06c3f) db 0
    %%insn_06c41:
    jmp 0x6d05 ; 06C41 E9C100
    %if ($ - %%insn_06c41) > 3
        %error "LONG_06C41"
    %endif
    times 3 - ($ - %%insn_06c41) db 0
    %%insn_06c44:
    mov byte [0xe8fc],0x0 ; 06C44 C606FCE800
    %if ($ - %%insn_06c44) > 5
        %error "LONG_06C44"
    %endif
    times 5 - ($ - %%insn_06c44) db 0
    %%insn_06c49:
    cmp byte [0xe4bb],0x2 ; 06C49 803EBBE402
    %if ($ - %%insn_06c49) > 5
        %error "LONG_06C49"
    %endif
    times 5 - ($ - %%insn_06c49) db 0
    %%insn_06c4e:
    jnz short 0x6c60 ; 06C4E 7510
    %if ($ - %%insn_06c4e) > 2
        %error "LONG_06C4E"
    %endif
    times 2 - ($ - %%insn_06c4e) db 0
    %%insn_06c50:
    mov al,[bp-0xc] ; 06C50 8A46F4
    %if ($ - %%insn_06c50) > 3
        %error "LONG_06C50"
    %endif
    times 3 - ($ - %%insn_06c50) db 0
    db 0x8A, 0xD0 ; 06C53 8AD0 | mov dl,al | encoding preserved
    %%insn_06c55:
    call 0x62ea ; 06C55 E892F6
    %if ($ - %%insn_06c55) > 3
        %error "LONG_06C55"
    %endif
    times 3 - ($ - %%insn_06c55) db 0
    %%insn_06c58:
    cmp al,[bp-0x5] ; 06C58 3A46FB
    %if ($ - %%insn_06c58) > 3
        %error "LONG_06C58"
    %endif
    times 3 - ($ - %%insn_06c58) db 0
    %%insn_06c5b:
    jnz short 0x6c60 ; 06C5B 7503
    %if ($ - %%insn_06c5b) > 2
        %error "LONG_06C5B"
    %endif
    times 2 - ($ - %%insn_06c5b) db 0
    %%insn_06c5d:
    jmp 0x6cf8 ; 06C5D E99800
    %if ($ - %%insn_06c5d) > 3
        %error "LONG_06C5D"
    %endif
    times 3 - ($ - %%insn_06c5d) db 0
    %%insn_06c60:
    cmp byte [0xe4bb],0x1 ; 06C60 803EBBE401
    %if ($ - %%insn_06c60) > 5
        %error "LONG_06C60"
    %endif
    times 5 - ($ - %%insn_06c60) db 0
    %%insn_06c65:
    jnz short 0x6c6c ; 06C65 7505
    %if ($ - %%insn_06c65) > 2
        %error "LONG_06C65"
    %endif
    times 2 - ($ - %%insn_06c65) db 0
    %%insn_06c67:
    mov byte [0xe8fc],0x1 ; 06C67 C606FCE801
    %if ($ - %%insn_06c67) > 5
        %error "LONG_06C67"
    %endif
    times 5 - ($ - %%insn_06c67) db 0
    %%insn_06c6c:
    cmp word [bp-0xa],0x0 ; 06C6C 837EF600
    %if ($ - %%insn_06c6c) > 4
        %error "LONG_06C6C"
    %endif
    times 4 - ($ - %%insn_06c6c) db 0
    %%insn_06c70:
    jz short 0x6cdc ; 06C70 746A
    %if ($ - %%insn_06c70) > 2
        %error "LONG_06C70"
    %endif
    times 2 - ($ - %%insn_06c70) db 0
    %%insn_06c72:
    mov al,[bp-0xc] ; 06C72 8A46F4
    %if ($ - %%insn_06c72) > 3
        %error "LONG_06C72"
    %endif
    times 3 - ($ - %%insn_06c72) db 0
    %%insn_06c75:
    call 0x6290 ; 06C75 E818F6
    %if ($ - %%insn_06c75) > 3
        %error "LONG_06C75"
    %endif
    times 3 - ($ - %%insn_06c75) db 0
    %%insn_06c78:
    mov word [0xe905],0x0 ; 06C78 C70605E90000
    %if ($ - %%insn_06c78) > 6
        %error "LONG_06C78"
    %endif
    times 6 - ($ - %%insn_06c78) db 0
    %%insn_06c7e:
    cmp word [bp-0x4],0x61d0 ; 06C7E 817EFCD061
    %if ($ - %%insn_06c7e) > 5
        %error "LONG_06C7E"
    %endif
    times 5 - ($ - %%insn_06c7e) db 0
    %%insn_06c83:
    jnz short 0x6c96 ; 06C83 7511
    %if ($ - %%insn_06c83) > 2
        %error "LONG_06C83"
    %endif
    times 2 - ($ - %%insn_06c83) db 0
    %%insn_06c85:
    mov al,[bp-0x2] ; 06C85 8A46FE
    %if ($ - %%insn_06c85) > 3
        %error "LONG_06C85"
    %endif
    times 3 - ($ - %%insn_06c85) db 0
    %%insn_06c88:
    push ax ; 06C88 50
    %if ($ - %%insn_06c88) > 1
        %error "LONG_06C88"
    %endif
    times 1 - ($ - %%insn_06c88) db 0
    %%insn_06c89:
    mov al,[bp-0xc] ; 06C89 8A46F4
    %if ($ - %%insn_06c89) > 3
        %error "LONG_06C89"
    %endif
    times 3 - ($ - %%insn_06c89) db 0
    db 0x8A, 0xD0 ; 06C8C 8AD0 | mov dl,al | encoding preserved
    %%insn_06c8e:
    mov bx,[bp-0xa] ; 06C8E 8B5EF6
    %if ($ - %%insn_06c8e) > 3
        %error "LONG_06C8E"
    %endif
    times 3 - ($ - %%insn_06c8e) db 0
    %%insn_06c91:
    call 0x656c ; 06C91 E8D8F8
    %if ($ - %%insn_06c91) > 3
        %error "LONG_06C91"
    %endif
    times 3 - ($ - %%insn_06c91) db 0
    %%insn_06c94:
    jmp short 0x6ce4 ; 06C94 EB4E
    %if ($ - %%insn_06c94) > 2
        %error "LONG_06C94"
    %endif
    times 2 - ($ - %%insn_06c94) db 0
    %%insn_06c96:
    mov bx,[0xe903] ; 06C96 8B1E03E9
    %if ($ - %%insn_06c96) > 4
        %error "LONG_06C96"
    %endif
    times 4 - ($ - %%insn_06c96) db 0
    %%insn_06c9a:
    mov cx,0x1c ; 06C9A B91C00
    %if ($ - %%insn_06c9a) > 3
        %error "LONG_06C9A"
    %endif
    times 3 - ($ - %%insn_06c9a) db 0
    %%insn_06c9d:
    lea di,[bx-0x16dd] ; 06C9D 8DBF23E9
    %if ($ - %%insn_06c9d) > 4
        %error "LONG_06C9D"
    %endif
    times 4 - ($ - %%insn_06c9d) db 0
    %%insn_06ca1:
    mov si,0xeb5d ; 06CA1 BE5DEB
    %if ($ - %%insn_06ca1) > 3
        %error "LONG_06CA1"
    %endif
    times 3 - ($ - %%insn_06ca1) db 0
    %%insn_06ca4:
    push ds ; 06CA4 1E
    %if ($ - %%insn_06ca4) > 1
        %error "LONG_06CA4"
    %endif
    times 1 - ($ - %%insn_06ca4) db 0
    %%insn_06ca5:
    pop es ; 06CA5 07
    %if ($ - %%insn_06ca5) > 1
        %error "LONG_06CA5"
    %endif
    times 1 - ($ - %%insn_06ca5) db 0
    %%insn_06ca6:
    rep movsw ; 06CA6 F3A5
    %if ($ - %%insn_06ca6) > 2
        %error "LONG_06CA6"
    %endif
    times 2 - ($ - %%insn_06ca6) db 0
    %%insn_06ca8:
    movsb ; 06CA8 A4
    %if ($ - %%insn_06ca8) > 1
        %error "LONG_06CA8"
    %endif
    times 1 - ($ - %%insn_06ca8) db 0
    %%insn_06ca9:
    add word [0xe903],0x39 ; 06CA9 830603E939
    %if ($ - %%insn_06ca9) > 5
        %error "LONG_06CA9"
    %endif
    times 5 - ($ - %%insn_06ca9) db 0
    %%insn_06cae:
    mov al,[bp-0x2] ; 06CAE 8A46FE
    %if ($ - %%insn_06cae) > 3
        %error "LONG_06CAE"
    %endif
    times 3 - ($ - %%insn_06cae) db 0
    %%insn_06cb1:
    push ax ; 06CB1 50
    %if ($ - %%insn_06cb1) > 1
        %error "LONG_06CB1"
    %endif
    times 1 - ($ - %%insn_06cb1) db 0
    %%insn_06cb2:
    mov al,[bp-0xc] ; 06CB2 8A46F4
    %if ($ - %%insn_06cb2) > 3
        %error "LONG_06CB2"
    %endif
    times 3 - ($ - %%insn_06cb2) db 0
    db 0x8A, 0xD0 ; 06CB5 8AD0 | mov dl,al | encoding preserved
    %%insn_06cb7:
    mov bx,[bp-0xa] ; 06CB7 8B5EF6
    %if ($ - %%insn_06cb7) > 3
        %error "LONG_06CB7"
    %endif
    times 3 - ($ - %%insn_06cb7) db 0
    %%insn_06cba:
    call 0x656c ; 06CBA E8AFF8
    %if ($ - %%insn_06cba) > 3
        %error "LONG_06CBA"
    %endif
    times 3 - ($ - %%insn_06cba) db 0
    %%insn_06cbd:
    mov [bp-0x1],al ; 06CBD 8846FF
    %if ($ - %%insn_06cbd) > 3
        %error "LONG_06CBD"
    %endif
    times 3 - ($ - %%insn_06cbd) db 0
    %%insn_06cc0:
    sub word [0xe903],0x39 ; 06CC0 832E03E939
    %if ($ - %%insn_06cc0) > 5
        %error "LONG_06CC0"
    %endif
    times 5 - ($ - %%insn_06cc0) db 0
    %%insn_06cc5:
    mov ax,0xeb5d ; 06CC5 B85DEB
    %if ($ - %%insn_06cc5) > 3
        %error "LONG_06CC5"
    %endif
    times 3 - ($ - %%insn_06cc5) db 0
    %%insn_06cc8:
    mov bx,[0xe903] ; 06CC8 8B1E03E9
    %if ($ - %%insn_06cc8) > 4
        %error "LONG_06CC8"
    %endif
    times 4 - ($ - %%insn_06cc8) db 0
    %%insn_06ccc:
    mov cx,0x1c ; 06CCC B91C00
    %if ($ - %%insn_06ccc) > 3
        %error "LONG_06CCC"
    %endif
    times 3 - ($ - %%insn_06ccc) db 0
    db 0x8B, 0xF8 ; 06CCF 8BF8 | mov di,ax | encoding preserved
    %%insn_06cd1:
    lea si,[bx-0x16dd] ; 06CD1 8DB723E9
    %if ($ - %%insn_06cd1) > 4
        %error "LONG_06CD1"
    %endif
    times 4 - ($ - %%insn_06cd1) db 0
    %%insn_06cd5:
    push ds ; 06CD5 1E
    %if ($ - %%insn_06cd5) > 1
        %error "LONG_06CD5"
    %endif
    times 1 - ($ - %%insn_06cd5) db 0
    %%insn_06cd6:
    pop es ; 06CD6 07
    %if ($ - %%insn_06cd6) > 1
        %error "LONG_06CD6"
    %endif
    times 1 - ($ - %%insn_06cd6) db 0
    %%insn_06cd7:
    rep movsw ; 06CD7 F3A5
    %if ($ - %%insn_06cd7) > 2
        %error "LONG_06CD7"
    %endif
    times 2 - ($ - %%insn_06cd7) db 0
    %%insn_06cd9:
    movsb ; 06CD9 A4
    %if ($ - %%insn_06cd9) > 1
        %error "LONG_06CD9"
    %endif
    times 1 - ($ - %%insn_06cd9) db 0
    %%insn_06cda:
    jmp short 0x6ce7 ; 06CDA EB0B
    %if ($ - %%insn_06cda) > 2
        %error "LONG_06CDA"
    %endif
    times 2 - ($ - %%insn_06cda) db 0
    %%insn_06cdc:
    mov al,[bp-0xc] ; 06CDC 8A46F4
    %if ($ - %%insn_06cdc) > 3
        %error "LONG_06CDC"
    %endif
    times 3 - ($ - %%insn_06cdc) db 0
    db 0x8A, 0xD0 ; 06CDF 8AD0 | mov dl,al | encoding preserved
    %%insn_06ce1:
    call 0x62ea ; 06CE1 E806F6
    %if ($ - %%insn_06ce1) > 3
        %error "LONG_06CE1"
    %endif
    times 3 - ($ - %%insn_06ce1) db 0
    %%insn_06ce4:
    mov [bp-0x1],al ; 06CE4 8846FF
    %if ($ - %%insn_06ce4) > 3
        %error "LONG_06CE4"
    %endif
    times 3 - ($ - %%insn_06ce4) db 0
    %%insn_06ce7:
    mov al,[bp-0x1] ; 06CE7 8A46FF
    %if ($ - %%insn_06ce7) > 3
        %error "LONG_06CE7"
    %endif
    times 3 - ($ - %%insn_06ce7) db 0
    %%insn_06cea:
    call 0x6a81 ; 06CEA E894FD
    %if ($ - %%insn_06cea) > 3
        %error "LONG_06CEA"
    %endif
    times 3 - ($ - %%insn_06cea) db 0
    %%insn_06ced:
    mov al,[bp-0x1] ; 06CED 8A46FF
    %if ($ - %%insn_06ced) > 3
        %error "LONG_06CED"
    %endif
    times 3 - ($ - %%insn_06ced) db 0
    %%insn_06cf0:
    cmp [bp-0x2],al ; 06CF0 3846FE
    %if ($ - %%insn_06cf0) > 3
        %error "LONG_06CF0"
    %endif
    times 3 - ($ - %%insn_06cf0) db 0
    %%insn_06cf3:
    jnl short 0x6cf8 ; 06CF3 7D03
    %if ($ - %%insn_06cf3) > 2
        %error "LONG_06CF3"
    %endif
    times 2 - ($ - %%insn_06cf3) db 0
    %%insn_06cf5:
    mov [bp-0x2],al ; 06CF5 8846FE
    %if ($ - %%insn_06cf5) > 3
        %error "LONG_06CF5"
    %endif
    times 3 - ($ - %%insn_06cf5) db 0
    %%insn_06cf8:
    mov al,[bp-0xc] ; 06CF8 8A46F4
    %if ($ - %%insn_06cf8) > 3
        %error "LONG_06CF8"
    %endif
    times 3 - ($ - %%insn_06cf8) db 0
    %%insn_06cfb:
    call word near [bp-0x4] ; 06CFB FF56FC
    %if ($ - %%insn_06cfb) > 3
        %error "LONG_06CFB"
    %endif
    times 3 - ($ - %%insn_06cfb) db 0
    db 0x0B, 0xC0 ; 06CFE 0BC0 | or ax,ax | encoding preserved
    %%insn_06d00:
    jz short 0x6d05 ; 06D00 7403
    %if ($ - %%insn_06d00) > 2
        %error "LONG_06D00"
    %endif
    times 2 - ($ - %%insn_06d00) db 0
    %%insn_06d02:
    jmp 0x6c3a ; 06D02 E935FF
    %if ($ - %%insn_06d02) > 3
        %error "LONG_06D02"
    %endif
    times 3 - ($ - %%insn_06d02) db 0
    %%insn_06d05:
    mov ax,0x1 ; 06D05 B80100
    %if ($ - %%insn_06d05) > 3
        %error "LONG_06D05"
    %endif
    times 3 - ($ - %%insn_06d05) db 0
    %%insn_06d08:
    pop si ; 06D08 5E
    %if ($ - %%insn_06d08) > 1
        %error "LONG_06D08"
    %endif
    times 1 - ($ - %%insn_06d08) db 0
    %%insn_06d09:
    pop di ; 06D09 5F
    %if ($ - %%insn_06d09) > 1
        %error "LONG_06D09"
    %endif
    times 1 - ($ - %%insn_06d09) db 0
    db 0x8B, 0xE5 ; 06D0A 8BE5 | mov sp,bp | encoding preserved
    %%insn_06d0c:
    pop bp ; 06D0C 5D
    %if ($ - %%insn_06d0c) > 1
        %error "LONG_06D0C"
    %endif
    times 1 - ($ - %%insn_06d0c) db 0
    %%insn_06d0d:
    ret ; 06D0D C3
    %if ($ - %%insn_06d0d) > 1
        %error "LONG_06D0D"
    %endif
    times 1 - ($ - %%insn_06d0d) db 0
    %if ($ - %%fragment_start) != 270
        %error "SIZE_06C00"
    %endif
%endmacro
