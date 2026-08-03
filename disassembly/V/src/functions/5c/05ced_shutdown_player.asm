; Linear entry 05CED (1000:5ced)
; Ghidra working symbol: FUN_1000_5ced
; Cross-version mapped global shutdown and cleanup path.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_shutdown_player_part_00 0
    %%fragment_start:
shutdown_player:
    %%insn_05ced:
    push ax ; 05CED 50
    %if ($ - %%insn_05ced) > 1
        %error "LONG_05CED"
    %endif
    times 1 - ($ - %%insn_05ced) db 0
    %%insn_05cee:
    push dx ; 05CEE 52
    %if ($ - %%insn_05cee) > 1
        %error "LONG_05CEE"
    %endif
    times 1 - ($ - %%insn_05cee) db 0
    %%insn_05cef:
    push bp ; 05CEF 55
    %if ($ - %%insn_05cef) > 1
        %error "LONG_05CEF"
    %endif
    times 1 - ($ - %%insn_05cef) db 0
    %%insn_05cf0:
    cmp word [bp-0x1bc8],0xf000 ; 05CF0 81BE38E400F0
    %if ($ - %%insn_05cf0) > 6
        %error "LONG_05CF0"
    %endif
    times 6 - ($ - %%insn_05cf0) db 0
    %%insn_05cf6:
    jz short 0x5d08 ; 05CF6 7410
    %if ($ - %%insn_05cf6) > 2
        %error "LONG_05CF6"
    %endif
    times 2 - ($ - %%insn_05cf6) db 0
    %%insn_05cf8:
    push word [bp-0x1bc8] ; 05CF8 FFB638E4
    %if ($ - %%insn_05cf8) > 4
        %error "LONG_05CF8"
    %endif
    times 4 - ($ - %%insn_05cf8) db 0
    %%insn_05cfc:
    push word [bp-0x1bce] ; 05CFC FFB632E4
    %if ($ - %%insn_05cfc) > 4
        %error "LONG_05CFC"
    %endif
    times 4 - ($ - %%insn_05cfc) db 0
    %%insn_05d00:
    call word 0x702:word 0xcfe ; 05D00 9AFE0C0207
    %if ($ - %%insn_05d00) > 5
        %error "LONG_05D00"
    %endif
    times 5 - ($ - %%insn_05d00) db 0
    %%insn_05d05:
    add sp,0x4 ; 05D05 83C404
    %if ($ - %%insn_05d05) > 3
        %error "LONG_05D05"
    %endif
    times 3 - ($ - %%insn_05d05) db 0
    %%insn_05d08:
    push word [bp-0x1bca] ; 05D08 FFB636E4
    %if ($ - %%insn_05d08) > 4
        %error "LONG_05D08"
    %endif
    times 4 - ($ - %%insn_05d08) db 0
    %%insn_05d0c:
    call word 0x702:word 0x8fb ; 05D0C 9AFB080207
    %if ($ - %%insn_05d0c) > 5
        %error "LONG_05D0C"
    %endif
    times 5 - ($ - %%insn_05d0c) db 0
    %%insn_05d11:
    add sp,0x2 ; 05D11 83C402
    %if ($ - %%insn_05d11) > 3
        %error "LONG_05D11"
    %endif
    times 3 - ($ - %%insn_05d11) db 0
    %%insn_05d14:
    push word 0x0 ; 05D14 6A00
    %if ($ - %%insn_05d14) > 2
        %error "LONG_05D14"
    %endif
    times 2 - ($ - %%insn_05d14) db 0
    %%insn_05d16:
    push word 0x0 ; 05D16 6A00
    %if ($ - %%insn_05d16) > 2
        %error "LONG_05D16"
    %endif
    times 2 - ($ - %%insn_05d16) db 0
    %%insn_05d18:
    push word [bp-0x1bce] ; 05D18 FFB632E4
    %if ($ - %%insn_05d18) > 4
        %error "LONG_05D18"
    %endif
    times 4 - ($ - %%insn_05d18) db 0
    %%insn_05d1c:
    call word 0x702:word 0xc2f ; 05D1C 9A2F0C0207
    %if ($ - %%insn_05d1c) > 5
        %error "LONG_05D1C"
    %endif
    times 5 - ($ - %%insn_05d1c) db 0
    %%insn_05d21:
    add sp,0x6 ; 05D21 83C406
    %if ($ - %%insn_05d21) > 3
        %error "LONG_05D21"
    %endif
    times 3 - ($ - %%insn_05d21) db 0
    %%insn_05d24:
    cmp byte [bp-0x1f3a],0x0 ; 05D24 80BEC6E000
    %if ($ - %%insn_05d24) > 5
        %error "LONG_05D24"
    %endif
    times 5 - ($ - %%insn_05d24) db 0
    %%insn_05d29:
    jnz short 0x5d3b ; 05D29 7510
    %if ($ - %%insn_05d29) > 2
        %error "LONG_05D29"
    %endif
    times 2 - ($ - %%insn_05d29) db 0
    %%insn_05d2b:
    push word 0x0 ; 05D2B 6A00
    %if ($ - %%insn_05d2b) > 2
        %error "LONG_05D2B"
    %endif
    times 2 - ($ - %%insn_05d2b) db 0
    %%insn_05d2d:
    push word 0x0 ; 05D2D 6A00
    %if ($ - %%insn_05d2d) > 2
        %error "LONG_05D2D"
    %endif
    times 2 - ($ - %%insn_05d2d) db 0
    %%insn_05d2f:
    push word [bp-0x1bcc] ; 05D2F FFB634E4
    %if ($ - %%insn_05d2f) > 4
        %error "LONG_05D2F"
    %endif
    times 4 - ($ - %%insn_05d2f) db 0
    %%insn_05d33:
    call word 0x702:word 0xc2f ; 05D33 9A2F0C0207
    %if ($ - %%insn_05d33) > 5
        %error "LONG_05D33"
    %endif
    times 5 - ($ - %%insn_05d33) db 0
    %%insn_05d38:
    add sp,0x6 ; 05D38 83C406
    %if ($ - %%insn_05d38) > 3
        %error "LONG_05D38"
    %endif
    times 3 - ($ - %%insn_05d38) db 0
    %%insn_05d3b:
    push word 0x0 ; 05D3B 6A00
    %if ($ - %%insn_05d3b) > 2
        %error "LONG_05D3B"
    %endif
    times 2 - ($ - %%insn_05d3b) db 0
    %%insn_05d3d:
    push word 0x0 ; 05D3D 6A00
    %if ($ - %%insn_05d3d) > 2
        %error "LONG_05D3D"
    %endif
    times 2 - ($ - %%insn_05d3d) db 0
    %%insn_05d3f:
    call word 0x702:word 0x71e ; 05D3F 9A1E070207
    %if ($ - %%insn_05d3f) > 5
        %error "LONG_05D3F"
    %endif
    times 5 - ($ - %%insn_05d3f) db 0
    %%insn_05d44:
    add sp,0x4 ; 05D44 83C404
    %if ($ - %%insn_05d44) > 3
        %error "LONG_05D44"
    %endif
    times 3 - ($ - %%insn_05d44) db 0
    %%insn_05d47:
    call 0x6eb6 ; 05D47 E86C11
    %if ($ - %%insn_05d47) > 3
        %error "LONG_05D47"
    %endif
    times 3 - ($ - %%insn_05d47) db 0
    %%insn_05d4a:
    call 0x377e ; 05D4A E831DA
    %if ($ - %%insn_05d4a) > 3
        %error "LONG_05D4A"
    %endif
    times 3 - ($ - %%insn_05d4a) db 0
    %%insn_05d4d:
    mov es,word [bp-0x1bda] ; 05D4D 8E8626E4
    %if ($ - %%insn_05d4d) > 4
        %error "LONG_05D4D"
    %endif
    times 4 - ($ - %%insn_05d4d) db 0
    %%insn_05d51:
    call 0x5e8d ; 05D51 E83901
    %if ($ - %%insn_05d51) > 3
        %error "LONG_05D51"
    %endif
    times 3 - ($ - %%insn_05d51) db 0
    %%insn_05d54:
    mov word [bp-0x1bda],0x0 ; 05D54 C78626E40000
    %if ($ - %%insn_05d54) > 6
        %error "LONG_05D54"
    %endif
    times 6 - ($ - %%insn_05d54) db 0
    %%insn_05d5a:
    mov es,word [bp-0x1bd2] ; 05D5A 8E862EE4
    %if ($ - %%insn_05d5a) > 4
        %error "LONG_05D5A"
    %endif
    times 4 - ($ - %%insn_05d5a) db 0
    %%insn_05d5e:
    call 0x5e8d ; 05D5E E82C01
    %if ($ - %%insn_05d5e) > 3
        %error "LONG_05D5E"
    %endif
    times 3 - ($ - %%insn_05d5e) db 0
    %%insn_05d61:
    mov word [bp-0x1bd2],0x0 ; 05D61 C7862EE40000
    %if ($ - %%insn_05d61) > 6
        %error "LONG_05D61"
    %endif
    times 6 - ($ - %%insn_05d61) db 0
    %%insn_05d67:
    mov dx,[bp-0x2ab0] ; 05D67 8B9650D5
    %if ($ - %%insn_05d67) > 4
        %error "LONG_05D67"
    %endif
    times 4 - ($ - %%insn_05d67) db 0
    db 0x23, 0xD2 ; 05D6B 23D2 | and dx,dx | encoding preserved
    %%insn_05d6d:
    jz short 0x5d7c ; 05D6D 740D
    %if ($ - %%insn_05d6d) > 2
        %error "LONG_05D6D"
    %endif
    times 2 - ($ - %%insn_05d6d) db 0
    %%insn_05d6f:
    mov ah,0xa ; 05D6F B40A
    %if ($ - %%insn_05d6f) > 2
        %error "LONG_05D6F"
    %endif
    times 2 - ($ - %%insn_05d6f) db 0
    %%insn_05d71:
    call word far [cs:0x3688] ; 05D71 2EFF1E8836
    %if ($ - %%insn_05d71) > 5
        %error "LONG_05D71"
    %endif
    times 5 - ($ - %%insn_05d71) db 0
    %%insn_05d76:
    mov word [bp-0x2ab0],0x0 ; 05D76 C78650D50000
    %if ($ - %%insn_05d76) > 6
        %error "LONG_05D76"
    %endif
    times 6 - ($ - %%insn_05d76) db 0
    %%insn_05d7c:
    mov es,word [bp-0x2605] ; 05D7C 8E86FBD9
    %if ($ - %%insn_05d7c) > 4
        %error "LONG_05D7C"
    %endif
    times 4 - ($ - %%insn_05d7c) db 0
    %%insn_05d80:
    call 0x5e8d ; 05D80 E80A01
    %if ($ - %%insn_05d80) > 3
        %error "LONG_05D80"
    %endif
    times 3 - ($ - %%insn_05d80) db 0
    %%insn_05d83:
    mov word [bp-0x2605],0x0 ; 05D83 C786FBD90000
    %if ($ - %%insn_05d83) > 6
        %error "LONG_05D83"
    %endif
    times 6 - ($ - %%insn_05d83) db 0
    %%insn_05d89:
    mov es,word [bp-0x2ab2] ; 05D89 8E864ED5
    %if ($ - %%insn_05d89) > 4
        %error "LONG_05D89"
    %endif
    times 4 - ($ - %%insn_05d89) db 0
    %%insn_05d8d:
    call 0x5e8d ; 05D8D E8FD00
    %if ($ - %%insn_05d8d) > 3
        %error "LONG_05D8D"
    %endif
    times 3 - ($ - %%insn_05d8d) db 0
    %%insn_05d90:
    mov word [bp-0x2ab2],0x0 ; 05D90 C7864ED50000
    %if ($ - %%insn_05d90) > 6
        %error "LONG_05D90"
    %endif
    times 6 - ($ - %%insn_05d90) db 0
    %%insn_05d96:
    mov es,word [bp-0x1bd6] ; 05D96 8E862AE4
    %if ($ - %%insn_05d96) > 4
        %error "LONG_05D96"
    %endif
    times 4 - ($ - %%insn_05d96) db 0
    %%insn_05d9a:
    call 0x5e8d ; 05D9A E8F000
    %if ($ - %%insn_05d9a) > 3
        %error "LONG_05D9A"
    %endif
    times 3 - ($ - %%insn_05d9a) db 0
    %%insn_05d9d:
    mov word [bp-0x1bd6],0x0 ; 05D9D C7862AE40000
    %if ($ - %%insn_05d9d) > 6
        %error "LONG_05D9D"
    %endif
    times 6 - ($ - %%insn_05d9d) db 0
    %%insn_05da3:
    mov es,word [bp-0x1bd4] ; 05DA3 8E862CE4
    %if ($ - %%insn_05da3) > 4
        %error "LONG_05DA3"
    %endif
    times 4 - ($ - %%insn_05da3) db 0
    %%insn_05da7:
    call 0x5e8d ; 05DA7 E8E300
    %if ($ - %%insn_05da7) > 3
        %error "LONG_05DA7"
    %endif
    times 3 - ($ - %%insn_05da7) db 0
    %%insn_05daa:
    mov word [bp-0x1bd4],0x0 ; 05DAA C7862CE40000
    %if ($ - %%insn_05daa) > 6
        %error "LONG_05DAA"
    %endif
    times 6 - ($ - %%insn_05daa) db 0
    %%insn_05db0:
    mov es,word [bp-0x2aaa] ; 05DB0 8E8656D5
    %if ($ - %%insn_05db0) > 4
        %error "LONG_05DB0"
    %endif
    times 4 - ($ - %%insn_05db0) db 0
    %%insn_05db4:
    call 0x5e8d ; 05DB4 E8D600
    %if ($ - %%insn_05db4) > 3
        %error "LONG_05DB4"
    %endif
    times 3 - ($ - %%insn_05db4) db 0
    %%insn_05db7:
    mov word [bp-0x2aaa],0x0 ; 05DB7 C78656D50000
    %if ($ - %%insn_05db7) > 6
        %error "LONG_05DB7"
    %endif
    times 6 - ($ - %%insn_05db7) db 0
    db 0x33, 0xC9 ; 05DBD 33C9 | xor cx,cx | encoding preserved
    %%insn_05dbf:
    loop short 0x5dbf ; 05DBF E2FE
    %if ($ - %%insn_05dbf) > 2
        %error "LONG_05DBF"
    %endif
    times 2 - ($ - %%insn_05dbf) db 0
    %%insn_05dc1:
    mov ax,0x3000 ; 05DC1 B80030
    %if ($ - %%insn_05dc1) > 3
        %error "LONG_05DC1"
    %endif
    times 3 - ($ - %%insn_05dc1) db 0
    %%insn_05dc4:
    int byte 0x21 ; 05DC4 CD21
    %if ($ - %%insn_05dc4) > 2
        %error "LONG_05DC4"
    %endif
    times 2 - ($ - %%insn_05dc4) db 0
    %%insn_05dc6:
    cmp al,0x4 ; 05DC6 3C04
    %if ($ - %%insn_05dc6) > 2
        %error "LONG_05DC6"
    %endif
    times 2 - ($ - %%insn_05dc6) db 0
    %%insn_05dc8:
    jna short 0x5dd2 ; 05DC8 7608
    %if ($ - %%insn_05dc8) > 2
        %error "LONG_05DC8"
    %endif
    times 2 - ($ - %%insn_05dc8) db 0
    %%insn_05dca:
    mov bx,0x0 ; 05DCA BB0000
    %if ($ - %%insn_05dca) > 3
        %error "LONG_05DCA"
    %endif
    times 3 - ($ - %%insn_05dca) db 0
    %%insn_05dcd:
    mov ax,0x5801 ; 05DCD B80158
    %if ($ - %%insn_05dcd) > 3
        %error "LONG_05DCD"
    %endif
    times 3 - ($ - %%insn_05dcd) db 0
    %%insn_05dd0:
    int byte 0x21 ; 05DD0 CD21
    %if ($ - %%insn_05dd0) > 2
        %error "LONG_05DD0"
    %endif
    times 2 - ($ - %%insn_05dd0) db 0
    db 0x33, 0xC0 ; 05DD2 33C0 | xor ax,ax | encoding preserved
    %%insn_05dd4:
    mov es,ax ; 05DD4 8EC0
    %if ($ - %%insn_05dd4) > 2
        %error "LONG_05DD4"
    %endif
    times 2 - ($ - %%insn_05dd4) db 0
    %%insn_05dd6:
    mov si,0x90 ; 05DD6 BE9000
    %if ($ - %%insn_05dd6) > 3
        %error "LONG_05DD6"
    %endif
    times 3 - ($ - %%insn_05dd6) db 0
    %%insn_05dd9:
    mov ax,[bp-0x1bf4] ; 05DD9 8B860CE4
    %if ($ - %%insn_05dd9) > 4
        %error "LONG_05DD9"
    %endif
    times 4 - ($ - %%insn_05dd9) db 0
    %%insn_05ddd:
    mov [es:si],ax ; 05DDD 268904
    %if ($ - %%insn_05ddd) > 3
        %error "LONG_05DDD"
    %endif
    times 3 - ($ - %%insn_05ddd) db 0
    %%insn_05de0:
    mov ax,[bp-0x1bf2] ; 05DE0 8B860EE4
    %if ($ - %%insn_05de0) > 4
        %error "LONG_05DE0"
    %endif
    times 4 - ($ - %%insn_05de0) db 0
    %%insn_05de4:
    mov [es:si+0x2],ax ; 05DE4 26894402
    %if ($ - %%insn_05de4) > 4
        %error "LONG_05DE4"
    %endif
    times 4 - ($ - %%insn_05de4) db 0
    %%insn_05de8:
    cmp byte [bp-0x30bb],0x0 ; 05DE8 80BE45CF00
    %if ($ - %%insn_05de8) > 5
        %error "LONG_05DE8"
    %endif
    times 5 - ($ - %%insn_05de8) db 0
    %%insn_05ded:
    jz short 0x5e06 ; 05DED 7417
    %if ($ - %%insn_05ded) > 2
        %error "LONG_05DED"
    %endif
    times 2 - ($ - %%insn_05ded) db 0
    %%insn_05def:
    mov si,0x54 ; 05DEF BE5400
    %if ($ - %%insn_05def) > 3
        %error "LONG_05DEF"
    %endif
    times 3 - ($ - %%insn_05def) db 0
    %%insn_05df2:
    mov ax,[cs:0x2bec] ; 05DF2 2EA1EC2B
    %if ($ - %%insn_05df2) > 4
        %error "LONG_05DF2"
    %endif
    times 4 - ($ - %%insn_05df2) db 0
    %%insn_05df6:
    mov [es:si],ax ; 05DF6 268904
    %if ($ - %%insn_05df6) > 3
        %error "LONG_05DF6"
    %endif
    times 3 - ($ - %%insn_05df6) db 0
    %%insn_05df9:
    mov ax,[cs:0x2bee] ; 05DF9 2EA1EE2B
    %if ($ - %%insn_05df9) > 4
        %error "LONG_05DF9"
    %endif
    times 4 - ($ - %%insn_05df9) db 0
    %%insn_05dfd:
    mov [es:si+0x2],ax ; 05DFD 26894402
    %if ($ - %%insn_05dfd) > 4
        %error "LONG_05DFD"
    %endif
    times 4 - ($ - %%insn_05dfd) db 0
    %%insn_05e01:
    mov byte [bp-0x30bb],0x0 ; 05E01 C68645CF00
    %if ($ - %%insn_05e01) > 5
        %error "LONG_05E01"
    %endif
    times 5 - ($ - %%insn_05e01) db 0
    %%insn_05e06:
    cmp word [bp-0x30ac],0x0 ; 05E06 83BE54CF00
    %if ($ - %%insn_05e06) > 5
        %error "LONG_05E06"
    %endif
    times 5 - ($ - %%insn_05e06) db 0
    %%insn_05e0b:
    jz short 0x5e12 ; 05E0B 7405
    %if ($ - %%insn_05e0b) > 2
        %error "LONG_05E0B"
    %endif
    times 2 - ($ - %%insn_05e0b) db 0
    %%insn_05e0d:
    mov ax,0x3 ; 05E0D B80300
    %if ($ - %%insn_05e0d) > 3
        %error "LONG_05E0D"
    %endif
    times 3 - ($ - %%insn_05e0d) db 0
    %%insn_05e10:
    int byte 0x10 ; 05E10 CD10
    %if ($ - %%insn_05e10) > 2
        %error "LONG_05E10"
    %endif
    times 2 - ($ - %%insn_05e10) db 0
    %%insn_05e12:
    pop bp ; 05E12 5D
    %if ($ - %%insn_05e12) > 1
        %error "LONG_05E12"
    %endif
    times 1 - ($ - %%insn_05e12) db 0
    %%insn_05e13:
    cmp bp,0x0 ; 05E13 83FD00
    %if ($ - %%insn_05e13) > 3
        %error "LONG_05E13"
    %endif
    times 3 - ($ - %%insn_05e13) db 0
    %%insn_05e16:
    jnz short 0x5e20 ; 05E16 7508
    %if ($ - %%insn_05e16) > 2
        %error "LONG_05E16"
    %endif
    times 2 - ($ - %%insn_05e16) db 0
    db 0x3D, 0x00, 0x00 ; 05E18 3D0000 | cmp ax,0x0 | encoding preserved
    %%insn_05e1b:
    jz short 0x5e20 ; 05E1B 7403
    %if ($ - %%insn_05e1b) > 2
        %error "LONG_05E1B"
    %endif
    times 2 - ($ - %%insn_05e1b) db 0
    %%insn_05e1d:
    call 0x3f77 ; 05E1D E857E1
    %if ($ - %%insn_05e1d) > 3
        %error "LONG_05E1D"
    %endif
    times 3 - ($ - %%insn_05e1d) db 0
    db 0x33, 0xED ; 05E20 33ED | xor bp,bp | encoding preserved
    %%insn_05e22:
    pop bx ; 05E22 5B
    %if ($ - %%insn_05e22) > 1
        %error "LONG_05E22"
    %endif
    times 1 - ($ - %%insn_05e22) db 0
    %%insn_05e23:
    pop ax ; 05E23 58
    %if ($ - %%insn_05e23) > 1
        %error "LONG_05E23"
    %endif
    times 1 - ($ - %%insn_05e23) db 0
    %%insn_05e24:
    test ax,0x8000 ; 05E24 A90080
    %if ($ - %%insn_05e24) > 3
        %error "LONG_05E24"
    %endif
    times 3 - ($ - %%insn_05e24) db 0
    %%insn_05e27:
    jz short 0x5e4b ; 05E27 7422
    %if ($ - %%insn_05e27) > 2
        %error "LONG_05E27"
    %endif
    times 2 - ($ - %%insn_05e27) db 0
    %%insn_05e29:
    push ax ; 05E29 50
    %if ($ - %%insn_05e29) > 1
        %error "LONG_05E29"
    %endif
    times 1 - ($ - %%insn_05e29) db 0
    %%insn_05e2a:
    mov al,[bx] ; 05E2A 8A07
    %if ($ - %%insn_05e2a) > 2
        %error "LONG_05E2A"
    %endif
    times 2 - ($ - %%insn_05e2a) db 0
    %%insn_05e2c:
    cmp al,0x0 ; 05E2C 3C00
    %if ($ - %%insn_05e2c) > 2
        %error "LONG_05E2C"
    %endif
    times 2 - ($ - %%insn_05e2c) db 0
    %%insn_05e2e:
    jz short 0x5e3a ; 05E2E 740A
    %if ($ - %%insn_05e2e) > 2
        %error "LONG_05E2E"
    %endif
    times 2 - ($ - %%insn_05e2e) db 0
    %%insn_05e30:
    push bx ; 05E30 53
    %if ($ - %%insn_05e30) > 1
        %error "LONG_05E30"
    %endif
    times 1 - ($ - %%insn_05e30) db 0
    db 0x33, 0xDB ; 05E31 33DB | xor bx,bx | encoding preserved
    %%insn_05e33:
    mov ah,0xe ; 05E33 B40E
    %if ($ - %%insn_05e33) > 2
        %error "LONG_05E33"
    %endif
    times 2 - ($ - %%insn_05e33) db 0
    %%insn_05e35:
    int byte 0x10 ; 05E35 CD10
    %if ($ - %%insn_05e35) > 2
        %error "LONG_05E35"
    %endif
    times 2 - ($ - %%insn_05e35) db 0
    %%insn_05e37:
    mov al,0xff ; 05E37 B0FF
    %if ($ - %%insn_05e37) > 2
        %error "LONG_05E37"
    %endif
    times 2 - ($ - %%insn_05e37) db 0
    %%insn_05e39:
    pop bx ; 05E39 5B
    %if ($ - %%insn_05e39) > 1
        %error "LONG_05E39"
    %endif
    times 1 - ($ - %%insn_05e39) db 0
    %%insn_05e3a:
    inc bx ; 05E3A 43
    %if ($ - %%insn_05e3a) > 1
        %error "LONG_05E3A"
    %endif
    times 1 - ($ - %%insn_05e3a) db 0
    db 0x22, 0xC0 ; 05E3B 22C0 | and al,al | encoding preserved
    %%insn_05e3d:
    jnz short 0x5e2a ; 05E3D 75EB
    %if ($ - %%insn_05e3d) > 2
        %error "LONG_05E3D"
    %endif
    times 2 - ($ - %%insn_05e3d) db 0
    db 0x33, 0xDB ; 05E3F 33DB | xor bx,bx | encoding preserved
    %%insn_05e41:
    mov al,0x20 ; 05E41 B020
    %if ($ - %%insn_05e41) > 2
        %error "LONG_05E41"
    %endif
    times 2 - ($ - %%insn_05e41) db 0
    %%insn_05e43:
    mov ah,0xe ; 05E43 B40E
    %if ($ - %%insn_05e43) > 2
        %error "LONG_05E43"
    %endif
    times 2 - ($ - %%insn_05e43) db 0
    %%insn_05e45:
    int byte 0x10 ; 05E45 CD10
    %if ($ - %%insn_05e45) > 2
        %error "LONG_05E45"
    %endif
    times 2 - ($ - %%insn_05e45) db 0
    %%insn_05e47:
    pop ax ; 05E47 58
    %if ($ - %%insn_05e47) > 1
        %error "LONG_05E47"
    %endif
    times 1 - ($ - %%insn_05e47) db 0
    %%insn_05e48:
    and ax,0x7fff ; 05E48 25FF7F
    %if ($ - %%insn_05e48) > 3
        %error "LONG_05E48"
    %endif
    times 3 - ($ - %%insn_05e48) db 0
    db 0x23, 0xC0 ; 05E4B 23C0 | and ax,ax | encoding preserved
    %%insn_05e4d:
    jz short 0x5e68 ; 05E4D 7419
    %if ($ - %%insn_05e4d) > 2
        %error "LONG_05E4D"
    %endif
    times 2 - ($ - %%insn_05e4d) db 0
    %%insn_05e4f:
    push ax ; 05E4F 50
    %if ($ - %%insn_05e4f) > 1
        %error "LONG_05E4F"
    %endif
    times 1 - ($ - %%insn_05e4f) db 0
    %%insn_05e50:
    mov ax,0x1815 ; 05E50 B81518
    %if ($ - %%insn_05e50) > 3
        %error "LONG_05E50"
    %endif
    times 3 - ($ - %%insn_05e50) db 0
    %%insn_05e53:
    mov ds,ax ; 05E53 8ED8
    %if ($ - %%insn_05e53) > 2
        %error "LONG_05E53"
    %endif
    times 2 - ($ - %%insn_05e53) db 0
    %%insn_05e55:
    mov dx,0x830 ; 05E55 BA3008
    %if ($ - %%insn_05e55) > 3
        %error "LONG_05E55"
    %endif
    times 3 - ($ - %%insn_05e55) db 0
    %%insn_05e58:
    mov ax,0x900 ; 05E58 B80009
    %if ($ - %%insn_05e58) > 3
        %error "LONG_05E58"
    %endif
    times 3 - ($ - %%insn_05e58) db 0
    %%insn_05e5b:
    int byte 0x21 ; 05E5B CD21
    %if ($ - %%insn_05e5b) > 2
        %error "LONG_05E5B"
    %endif
    times 2 - ($ - %%insn_05e5b) db 0
    %%insn_05e5d:
    pop dx ; 05E5D 5A
    %if ($ - %%insn_05e5d) > 1
        %error "LONG_05E5D"
    %endif
    times 1 - ($ - %%insn_05e5d) db 0
    %%insn_05e5e:
    mov ax,0x900 ; 05E5E B80009
    %if ($ - %%insn_05e5e) > 3
        %error "LONG_05E5E"
    %endif
    times 3 - ($ - %%insn_05e5e) db 0
    %%insn_05e61:
    int byte 0x21 ; 05E61 CD21
    %if ($ - %%insn_05e61) > 2
        %error "LONG_05E61"
    %endif
    times 2 - ($ - %%insn_05e61) db 0
    %%insn_05e63:
    mov ax,0x4c01 ; 05E63 B8014C
    %if ($ - %%insn_05e63) > 3
        %error "LONG_05E63"
    %endif
    times 3 - ($ - %%insn_05e63) db 0
    %%insn_05e66:
    jmp short 0x5e6b ; 05E66 EB03
    %if ($ - %%insn_05e66) > 2
        %error "LONG_05E66"
    %endif
    times 2 - ($ - %%insn_05e66) db 0
    %%insn_05e68:
    mov ax,0x4c00 ; 05E68 B8004C
    %if ($ - %%insn_05e68) > 3
        %error "LONG_05E68"
    %endif
    times 3 - ($ - %%insn_05e68) db 0
    %%insn_05e6b:
    int byte 0x21 ; 05E6B CD21
    %if ($ - %%insn_05e6b) > 2
        %error "LONG_05E6B"
    %endif
    times 2 - ($ - %%insn_05e6b) db 0
    %%insn_05e6d:
    inc byte [cs:0x5e8c] ; 05E6D 2EFE068C5E
    %if ($ - %%insn_05e6d) > 5
        %error "LONG_05E6D"
    %endif
    times 5 - ($ - %%insn_05e6d) db 0
    %%insn_05e72:
    cmp byte [cs:0x5e8c],0x32 ; 05E72 2E803E8C5E32
    %if ($ - %%insn_05e72) > 6
        %error "LONG_05E72"
    %endif
    times 6 - ($ - %%insn_05e72) db 0
    %%insn_05e78:
    jnz short 0x5e80 ; 05E78 7506
    %if ($ - %%insn_05e78) > 2
        %error "LONG_05E78"
    %endif
    times 2 - ($ - %%insn_05e78) db 0
    %%insn_05e7a:
    mov ax,0xaf9 ; 05E7A B8F90A
    %if ($ - %%insn_05e7a) > 3
        %error "LONG_05E7A"
    %endif
    times 3 - ($ - %%insn_05e7a) db 0
    %%insn_05e7d:
    jmp 0x5ced ; 05E7D E96DFE
    %if ($ - %%insn_05e7d) > 3
        %error "LONG_05E7D"
    %endif
    times 3 - ($ - %%insn_05e7d) db 0
    db 0x33, 0xC0 ; 05E80 33C0 | xor ax,ax | encoding preserved
    %%insn_05e82:
    dec ax ; 05E82 48
    %if ($ - %%insn_05e82) > 1
        %error "LONG_05E82"
    %endif
    times 1 - ($ - %%insn_05e82) db 0
    %%insn_05e83:
    jnz short 0x5e82 ; 05E83 75FD
    %if ($ - %%insn_05e83) > 2
        %error "LONG_05E83"
    %endif
    times 2 - ($ - %%insn_05e83) db 0
    %%insn_05e85:
    dec ax ; 05E85 48
    %if ($ - %%insn_05e85) > 1
        %error "LONG_05E85"
    %endif
    times 1 - ($ - %%insn_05e85) db 0
    %%insn_05e86:
    jnz short 0x5e85 ; 05E86 75FD
    %if ($ - %%insn_05e86) > 2
        %error "LONG_05E86"
    %endif
    times 2 - ($ - %%insn_05e86) db 0
    %%insn_05e88:
    mov ax,0x1 ; 05E88 B80100
    %if ($ - %%insn_05e88) > 3
        %error "LONG_05E88"
    %endif
    times 3 - ($ - %%insn_05e88) db 0
    %%insn_05e8b:
    iret ; 05E8B CF
    %if ($ - %%insn_05e8b) > 1
        %error "LONG_05E8B"
    %endif
    times 1 - ($ - %%insn_05e8b) db 0
    %if ($ - %%fragment_start) != 415
        %error "SIZE_05CED"
    %endif
%endmacro
