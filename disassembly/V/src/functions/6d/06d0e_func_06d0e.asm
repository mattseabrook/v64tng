; Linear entry 06D0E (1000:6d0e)
; Ghidra working symbol: FUN_1000_6d0e
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_06d0e_part_00 0
    %%fragment_start:
func_06d0e:
    %%insn_06d0e:
    push bp ; 06D0E 55
    %if ($ - %%insn_06d0e) > 1
        %error "LONG_06D0E"
    %endif
    times 1 - ($ - %%insn_06d0e) db 0
    db 0x8B, 0xEC ; 06D0F 8BEC | mov bp,sp | encoding preserved
    %%insn_06d11:
    sub sp,0x4 ; 06D11 83EC04
    %if ($ - %%insn_06d11) > 3
        %error "LONG_06D11"
    %endif
    times 3 - ($ - %%insn_06d11) db 0
    %%insn_06d14:
    push ax ; 06D14 50
    %if ($ - %%insn_06d14) > 1
        %error "LONG_06D14"
    %endif
    times 1 - ($ - %%insn_06d14) db 0
    %%insn_06d15:
    push di ; 06D15 57
    %if ($ - %%insn_06d15) > 1
        %error "LONG_06D15"
    %endif
    times 1 - ($ - %%insn_06d15) db 0
    %%insn_06d16:
    push si ; 06D16 56
    %if ($ - %%insn_06d16) > 1
        %error "LONG_06D16"
    %endif
    times 1 - ($ - %%insn_06d16) db 0
    %%insn_06d17:
    mov byte [bp-0x2],0x81 ; 06D17 C646FE81
    %if ($ - %%insn_06d17) > 4
        %error "LONG_06D17"
    %endif
    times 4 - ($ - %%insn_06d17) db 0
    %%insn_06d1b:
    mov si,[0xf1c9] ; 06D1B 8B36C9F1
    %if ($ - %%insn_06d1b) > 4
        %error "LONG_06D1B"
    %endif
    times 4 - ($ - %%insn_06d1b) db 0
    %%insn_06d1f:
    cmp si,0xffffffffffffffff ; 06D1F 83FEFF
    %if ($ - %%insn_06d1f) > 3
        %error "LONG_06D1F"
    %endif
    times 3 - ($ - %%insn_06d1f) db 0
    %%insn_06d22:
    jnz short 0x6d2c ; 06D22 7508
    %if ($ - %%insn_06d22) > 2
        %error "LONG_06D22"
    %endif
    times 2 - ($ - %%insn_06d22) db 0
    db 0x2B, 0xC0 ; 06D24 2BC0 | sub ax,ax | encoding preserved
    %%insn_06d26:
    pop si ; 06D26 5E
    %if ($ - %%insn_06d26) > 1
        %error "LONG_06D26"
    %endif
    times 1 - ($ - %%insn_06d26) db 0
    %%insn_06d27:
    pop di ; 06D27 5F
    %if ($ - %%insn_06d27) > 1
        %error "LONG_06D27"
    %endif
    times 1 - ($ - %%insn_06d27) db 0
    db 0x8B, 0xE5 ; 06D28 8BE5 | mov sp,bp | encoding preserved
    %%insn_06d2a:
    pop bp ; 06D2A 5D
    %if ($ - %%insn_06d2a) > 1
        %error "LONG_06D2A"
    %endif
    times 1 - ($ - %%insn_06d2a) db 0
    %%insn_06d2b:
    ret ; 06D2B C3
    %if ($ - %%insn_06d2b) > 1
        %error "LONG_06D2B"
    %endif
    times 1 - ($ - %%insn_06d2b) db 0
    db 0x8B, 0xFA ; 06D2C 8BFA | mov di,dx | encoding preserved
    %%insn_06d2e:
    mov al,[0xe4b5] ; 06D2E A0B5E4
    %if ($ - %%insn_06d2e) > 3
        %error "LONG_06D2E"
    %endif
    times 3 - ($ - %%insn_06d2e) db 0
    %%insn_06d31:
    cbw ; 06D31 98
    %if ($ - %%insn_06d31) > 1
        %error "LONG_06D31"
    %endif
    times 1 - ($ - %%insn_06d31) db 0
    db 0x8B, 0xC8 ; 06D32 8BC8 | mov cx,ax | encoding preserved
    %%insn_06d34:
    mov al,[bp-0x6] ; 06D34 8A46FA
    %if ($ - %%insn_06d34) > 3
        %error "LONG_06D34"
    %endif
    times 3 - ($ - %%insn_06d34) db 0
    %%insn_06d37:
    cbw ; 06D37 98
    %if ($ - %%insn_06d37) > 1
        %error "LONG_06D37"
    %endif
    times 1 - ($ - %%insn_06d37) db 0
    db 0x8B, 0xD8 ; 06D38 8BD8 | mov bx,ax | encoding preserved
    %%insn_06d3a:
    mov al,[bx-0x1b4c] ; 06D3A 8A87B4E4
    %if ($ - %%insn_06d3a) > 4
        %error "LONG_06D3A"
    %endif
    times 4 - ($ - %%insn_06d3a) db 0
    %%insn_06d3e:
    cbw ; 06D3E 98
    %if ($ - %%insn_06d3e) > 1
        %error "LONG_06D3E"
    %endif
    times 1 - ($ - %%insn_06d3e) db 0
    db 0x2B, 0xC1 ; 06D3F 2BC1 | sub ax,cx | encoding preserved
    db 0x8B, 0xC8 ; 06D41 8BC8 | mov cx,ax | encoding preserved
    %%insn_06d43:
    mov al,[0xe4b6] ; 06D43 A0B6E4
    %if ($ - %%insn_06d43) > 3
        %error "LONG_06D43"
    %endif
    times 3 - ($ - %%insn_06d43) db 0
    %%insn_06d46:
    cbw ; 06D46 98
    %if ($ - %%insn_06d46) > 1
        %error "LONG_06D46"
    %endif
    times 1 - ($ - %%insn_06d46) db 0
    db 0x2B, 0xC8 ; 06D47 2BC8 | sub cx,ax | encoding preserved
    %%insn_06d49:
    mov al,[0xe4b7] ; 06D49 A0B7E4
    %if ($ - %%insn_06d49) > 3
        %error "LONG_06D49"
    %endif
    times 3 - ($ - %%insn_06d49) db 0
    %%insn_06d4c:
    cbw ; 06D4C 98
    %if ($ - %%insn_06d4c) > 1
        %error "LONG_06D4C"
    %endif
    times 1 - ($ - %%insn_06d4c) db 0
    db 0x2B, 0xC8 ; 06D4D 2BC8 | sub cx,ax | encoding preserved
    %%insn_06d4f:
    mov al,[0xe4b8] ; 06D4F A0B8E4
    %if ($ - %%insn_06d4f) > 3
        %error "LONG_06D4F"
    %endif
    times 3 - ($ - %%insn_06d4f) db 0
    %%insn_06d52:
    cbw ; 06D52 98
    %if ($ - %%insn_06d52) > 1
        %error "LONG_06D52"
    %endif
    times 1 - ($ - %%insn_06d52) db 0
    db 0x3B, 0xC8 ; 06D53 3BC8 | cmp cx,ax | encoding preserved
    %%insn_06d55:
    jnz short 0x6d59 ; 06D55 7502
    %if ($ - %%insn_06d55) > 2
        %error "LONG_06D55"
    %endif
    times 2 - ($ - %%insn_06d55) db 0
    db 0x2B, 0xFF ; 06D57 2BFF | sub di,di | encoding preserved
    %%insn_06d59:
    cmp si,0xffffffffffffffff ; 06D59 83FEFF
    %if ($ - %%insn_06d59) > 3
        %error "LONG_06D59"
    %endif
    times 3 - ($ - %%insn_06d59) db 0
    %%insn_06d5c:
    jz short 0x6dd4 ; 06D5C 7476
    %if ($ - %%insn_06d5c) > 2
        %error "LONG_06D5C"
    %endif
    times 2 - ($ - %%insn_06d5c) db 0
    %%insn_06d5e:
    mov al,[si-0x1431] ; 06D5E 8A84CFEB
    %if ($ - %%insn_06d5e) > 4
        %error "LONG_06D5E"
    %endif
    times 4 - ($ - %%insn_06d5e) db 0
    %%insn_06d62:
    mov [0xe4b9],al ; 06D62 A2B9E4
    %if ($ - %%insn_06d62) > 3
        %error "LONG_06D62"
    %endif
    times 3 - ($ - %%insn_06d62) db 0
    %%insn_06d65:
    mov al,[si-0x1332] ; 06D65 8A84CEEC
    %if ($ - %%insn_06d65) > 4
        %error "LONG_06D65"
    %endif
    times 4 - ($ - %%insn_06d65) db 0
    %%insn_06d69:
    mov [0xe4ba],al ; 06D69 A2BAE4
    %if ($ - %%insn_06d69) > 3
        %error "LONG_06D69"
    %endif
    times 3 - ($ - %%insn_06d69) db 0
    %%insn_06d6c:
    mov al,[si-0x1134] ; 06D6C 8A84CCEE
    %if ($ - %%insn_06d6c) > 4
        %error "LONG_06D6C"
    %endif
    times 4 - ($ - %%insn_06d6c) db 0
    %%insn_06d70:
    mov [0xe4bb],al ; 06D70 A2BBE4
    %if ($ - %%insn_06d70) > 3
        %error "LONG_06D70"
    %endif
    times 3 - ($ - %%insn_06d70) db 0
    db 0x8B, 0xDE ; 06D73 8BDE | mov bx,si | encoding preserved
    %%insn_06d75:
    mov si,[bx+si-0x1035] ; 06D75 8BB0CBEF
    %if ($ - %%insn_06d75) > 4
        %error "LONG_06D75"
    %endif
    times 4 - ($ - %%insn_06d75) db 0
    %%insn_06d79:
    mov byte [0xe8fc],0x0 ; 06D79 C606FCE800
    %if ($ - %%insn_06d79) > 5
        %error "LONG_06D79"
    %endif
    times 5 - ($ - %%insn_06d79) db 0
    %%insn_06d7e:
    cmp al,0x1 ; 06D7E 3C01
    %if ($ - %%insn_06d7e) > 2
        %error "LONG_06D7E"
    %endif
    times 2 - ($ - %%insn_06d7e) db 0
    %%insn_06d80:
    jnz short 0x6d85 ; 06D80 7503
    %if ($ - %%insn_06d80) > 2
        %error "LONG_06D80"
    %endif
    times 2 - ($ - %%insn_06d80) db 0
    %%insn_06d82:
    mov [0xe8fc],al ; 06D82 A2FCE8
    %if ($ - %%insn_06d82) > 3
        %error "LONG_06D82"
    %endif
    times 3 - ($ - %%insn_06d82) db 0
    db 0x0B, 0xFF ; 06D85 0BFF | or di,di | encoding preserved
    %%insn_06d87:
    jz short 0x6da6 ; 06D87 741D
    %if ($ - %%insn_06d87) > 2
        %error "LONG_06D87"
    %endif
    times 2 - ($ - %%insn_06d87) db 0
    %%insn_06d89:
    mov al,[bp-0x6] ; 06D89 8A46FA
    %if ($ - %%insn_06d89) > 3
        %error "LONG_06D89"
    %endif
    times 3 - ($ - %%insn_06d89) db 0
    %%insn_06d8c:
    call 0x6290 ; 06D8C E801F5
    %if ($ - %%insn_06d8c) > 3
        %error "LONG_06D8C"
    %endif
    times 3 - ($ - %%insn_06d8c) db 0
    %%insn_06d8f:
    mov word [0xe905],0x0 ; 06D8F C70605E90000
    %if ($ - %%insn_06d8f) > 6
        %error "LONG_06D8F"
    %endif
    times 6 - ($ - %%insn_06d8f) db 0
    %%insn_06d95:
    mov al,[bp-0x2] ; 06D95 8A46FE
    %if ($ - %%insn_06d95) > 3
        %error "LONG_06D95"
    %endif
    times 3 - ($ - %%insn_06d95) db 0
    %%insn_06d98:
    push ax ; 06D98 50
    %if ($ - %%insn_06d98) > 1
        %error "LONG_06D98"
    %endif
    times 1 - ($ - %%insn_06d98) db 0
    %%insn_06d99:
    mov al,[bp-0x6] ; 06D99 8A46FA
    %if ($ - %%insn_06d99) > 3
        %error "LONG_06D99"
    %endif
    times 3 - ($ - %%insn_06d99) db 0
    db 0x8A, 0xD0 ; 06D9C 8AD0 | mov dl,al | encoding preserved
    db 0x8B, 0xDF ; 06D9E 8BDF | mov bx,di | encoding preserved
    %%insn_06da0:
    call 0x656c ; 06DA0 E8C9F7
    %if ($ - %%insn_06da0) > 3
        %error "LONG_06DA0"
    %endif
    times 3 - ($ - %%insn_06da0) db 0
    %%insn_06da3:
    jmp short 0x6dae ; 06DA3 EB09
    %if ($ - %%insn_06da3) > 2
        %error "LONG_06DA3"
    %endif
    times 2 - ($ - %%insn_06da3) db 0
    %if ($ - %%fragment_start) != 151
        %error "SIZE_06D0E"
    %endif
%endmacro

%macro emit_func_06d0e_part_01 0
    %%fragment_start:
    %%insn_06da6:
    mov al,[bp-0x6] ; 06DA6 8A46FA
    %if ($ - %%insn_06da6) > 3
        %error "LONG_06DA6"
    %endif
    times 3 - ($ - %%insn_06da6) db 0
    db 0x8A, 0xD0 ; 06DA9 8AD0 | mov dl,al | encoding preserved
    %%insn_06dab:
    call 0x62ea ; 06DAB E83CF5
    %if ($ - %%insn_06dab) > 3
        %error "LONG_06DAB"
    %endif
    times 3 - ($ - %%insn_06dab) db 0
    %%insn_06dae:
    mov [bp-0x1],al ; 06DAE 8846FF
    %if ($ - %%insn_06dae) > 3
        %error "LONG_06DAE"
    %endif
    times 3 - ($ - %%insn_06dae) db 0
    %%insn_06db1:
    mov al,[bp-0x2] ; 06DB1 8A46FE
    %if ($ - %%insn_06db1) > 3
        %error "LONG_06DB1"
    %endif
    times 3 - ($ - %%insn_06db1) db 0
    %%insn_06db4:
    cmp [bp-0x1],al ; 06DB4 3846FF
    %if ($ - %%insn_06db4) > 3
        %error "LONG_06DB4"
    %endif
    times 3 - ($ - %%insn_06db4) db 0
    %%insn_06db7:
    jnz short 0x6dbc ; 06DB7 7503
    %if ($ - %%insn_06db7) > 2
        %error "LONG_06DB7"
    %endif
    times 2 - ($ - %%insn_06db7) db 0
    %%insn_06db9:
    call 0x6436 ; 06DB9 E87AF6
    %if ($ - %%insn_06db9) > 3
        %error "LONG_06DB9"
    %endif
    times 3 - ($ - %%insn_06db9) db 0
    %%insn_06dbc:
    mov al,[bp-0x2] ; 06DBC 8A46FE
    %if ($ - %%insn_06dbc) > 3
        %error "LONG_06DBC"
    %endif
    times 3 - ($ - %%insn_06dbc) db 0
    %%insn_06dbf:
    cmp [bp-0x1],al ; 06DBF 3846FF
    %if ($ - %%insn_06dbf) > 3
        %error "LONG_06DBF"
    %endif
    times 3 - ($ - %%insn_06dbf) db 0
    %%insn_06dc2:
    jng short 0x6dcd ; 06DC2 7E09
    %if ($ - %%insn_06dc2) > 2
        %error "LONG_06DC2"
    %endif
    times 2 - ($ - %%insn_06dc2) db 0
    %%insn_06dc4:
    call 0x641c ; 06DC4 E855F6
    %if ($ - %%insn_06dc4) > 3
        %error "LONG_06DC4"
    %endif
    times 3 - ($ - %%insn_06dc4) db 0
    %%insn_06dc7:
    mov al,[bp-0x1] ; 06DC7 8A46FF
    %if ($ - %%insn_06dc7) > 3
        %error "LONG_06DC7"
    %endif
    times 3 - ($ - %%insn_06dc7) db 0
    %%insn_06dca:
    mov [bp-0x2],al ; 06DCA 8846FE
    %if ($ - %%insn_06dca) > 3
        %error "LONG_06DCA"
    %endif
    times 3 - ($ - %%insn_06dca) db 0
    %%insn_06dcd:
    cmp byte [0xe8fb],0x0 ; 06DCD 803EFBE800
    %if ($ - %%insn_06dcd) > 5
        %error "LONG_06DCD"
    %endif
    times 5 - ($ - %%insn_06dcd) db 0
    %%insn_06dd2:
    jz short 0x6d59 ; 06DD2 7485
    %if ($ - %%insn_06dd2) > 2
        %error "LONG_06DD2"
    %endif
    times 2 - ($ - %%insn_06dd2) db 0
    %%insn_06dd4:
    mov al,[bp-0x6] ; 06DD4 8A46FA
    %if ($ - %%insn_06dd4) > 3
        %error "LONG_06DD4"
    %endif
    times 3 - ($ - %%insn_06dd4) db 0
    %%insn_06dd7:
    call 0x6458 ; 06DD7 E87EF6
    %if ($ - %%insn_06dd7) > 3
        %error "LONG_06DD7"
    %endif
    times 3 - ($ - %%insn_06dd7) db 0
    %%insn_06dda:
    mov ax,0x1 ; 06DDA B80100
    %if ($ - %%insn_06dda) > 3
        %error "LONG_06DDA"
    %endif
    times 3 - ($ - %%insn_06dda) db 0
    %%insn_06ddd:
    pop si ; 06DDD 5E
    %if ($ - %%insn_06ddd) > 1
        %error "LONG_06DDD"
    %endif
    times 1 - ($ - %%insn_06ddd) db 0
    %%insn_06dde:
    pop di ; 06DDE 5F
    %if ($ - %%insn_06dde) > 1
        %error "LONG_06DDE"
    %endif
    times 1 - ($ - %%insn_06dde) db 0
    db 0x8B, 0xE5 ; 06DDF 8BE5 | mov sp,bp | encoding preserved
    %%insn_06de1:
    pop bp ; 06DE1 5D
    %if ($ - %%insn_06de1) > 1
        %error "LONG_06DE1"
    %endif
    times 1 - ($ - %%insn_06de1) db 0
    %%insn_06de2:
    ret ; 06DE2 C3
    %if ($ - %%insn_06de2) > 1
        %error "LONG_06DE2"
    %endif
    times 1 - ($ - %%insn_06de2) db 0
    %if ($ - %%fragment_start) != 61
        %error "SIZE_06DA6"
    %endif
%endmacro
