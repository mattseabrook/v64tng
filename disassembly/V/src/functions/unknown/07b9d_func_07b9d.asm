; Linear entry 07B9D (1702:0b7d)
; Ghidra working symbol: FUN_1702_0b7d
; Role not yet verified; boundary is provisional.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_func_07b9d_part_00 0
    %%fragment_start:
func_07b9d:
    %%insn_07b9d:
    push bp ; 07B9D 55
    %if ($ - %%insn_07b9d) > 1
        %error "LONG_07B9D"
    %endif
    times 1 - ($ - %%insn_07b9d) db 0
    db 0x8B, 0xEC ; 07B9E 8BEC | mov bp,sp | encoding preserved
    %%insn_07ba0:
    push ds ; 07BA0 1E
    %if ($ - %%insn_07ba0) > 1
        %error "LONG_07BA0"
    %endif
    times 1 - ($ - %%insn_07ba0) db 0
    %%insn_07ba1:
    push si ; 07BA1 56
    %if ($ - %%insn_07ba1) > 1
        %error "LONG_07BA1"
    %endif
    times 1 - ($ - %%insn_07ba1) db 0
    %%insn_07ba2:
    push di ; 07BA2 57
    %if ($ - %%insn_07ba2) > 1
        %error "LONG_07BA2"
    %endif
    times 1 - ($ - %%insn_07ba2) db 0
    %%insn_07ba3:
    pushf ; 07BA3 9C
    %if ($ - %%insn_07ba3) > 1
        %error "LONG_07BA3"
    %endif
    times 1 - ($ - %%insn_07ba3) db 0
    %%insn_07ba4:
    cli ; 07BA4 FA
    %if ($ - %%insn_07ba4) > 1
        %error "LONG_07BA4"
    %endif
    times 1 - ($ - %%insn_07ba4) db 0
    %%insn_07ba5:
    cmp word [bp+0x6],0x10 ; 07BA5 837E0610
    %if ($ - %%insn_07ba5) > 4
        %error "LONG_07BA5"
    %endif
    times 4 - ($ - %%insn_07ba5) db 0
    %%insn_07ba9:
    jc short 0x7bae ; 07BA9 7203
    %if ($ - %%insn_07ba9) > 2
        %error "LONG_07BA9"
    %endif
    times 2 - ($ - %%insn_07ba9) db 0
    %%insn_07bab:
    jmp 0x7c43 ; 07BAB E99500
    %if ($ - %%insn_07bab) > 3
        %error "LONG_07BAB"
    %endif
    times 3 - ($ - %%insn_07bab) db 0
    %%insn_07bae:
    mov word [cs:0x1b4],0xffff ; 07BAE 2EC706B401FFFF
    %if ($ - %%insn_07bae) > 7
        %error "LONG_07BAE"
    %endif
    times 7 - ($ - %%insn_07bae) db 0
    %%insn_07bb5:
    push word [bp+0x6] ; 07BB5 FF7606
    %if ($ - %%insn_07bb5) > 3
        %error "LONG_07BB5"
    %endif
    times 3 - ($ - %%insn_07bb5) db 0
    %%insn_07bb8:
    push cs ; 07BB8 0E
    %if ($ - %%insn_07bb8) > 1
        %error "LONG_07BB8"
    %endif
    times 1 - ($ - %%insn_07bb8) db 0
    %%insn_07bb9:
    call 0x7b71 ; 07BB9 E8B5FF
    %if ($ - %%insn_07bb9) > 3
        %error "LONG_07BB9"
    %endif
    times 3 - ($ - %%insn_07bb9) db 0
    %%insn_07bbc:
    add sp,0x2 ; 07BBC 83C402
    %if ($ - %%insn_07bbc) > 3
        %error "LONG_07BBC"
    %endif
    times 3 - ($ - %%insn_07bbc) db 0
    %%insn_07bbf:
    mov es,dx ; 07BBF 8EC2
    %if ($ - %%insn_07bbf) > 2
        %error "LONG_07BBF"
    %endif
    times 2 - ($ - %%insn_07bbf) db 0
    db 0x8B, 0xF8 ; 07BC1 8BF8 | mov di,ax | encoding preserved
    %%insn_07bc3:
    mov si,[es:di+0x14] ; 07BC3 268B7514
    %if ($ - %%insn_07bc3) > 4
        %error "LONG_07BC3"
    %endif
    times 4 - ($ - %%insn_07bc3) db 0
    %%insn_07bc7:
    cmp si,0xffffffffffffffff ; 07BC7 83FEFF
    %if ($ - %%insn_07bc7) > 3
        %error "LONG_07BC7"
    %endif
    times 3 - ($ - %%insn_07bc7) db 0
    %%insn_07bca:
    jz short 0x7c0a ; 07BCA 743E
    %if ($ - %%insn_07bca) > 2
        %error "LONG_07BCA"
    %endif
    times 2 - ($ - %%insn_07bca) db 0
    %%insn_07bcc:
    mov ax,0x67 ; 07BCC B86700
    %if ($ - %%insn_07bcc) > 3
        %error "LONG_07BCC"
    %endif
    times 3 - ($ - %%insn_07bcc) db 0
    %%insn_07bcf:
    mov bx,[bp+0x6] ; 07BCF 8B5E06
    %if ($ - %%insn_07bcf) > 3
        %error "LONG_07BCF"
    %endif
    times 3 - ($ - %%insn_07bcf) db 0
    %%insn_07bd2:
    push cs ; 07BD2 0E
    %if ($ - %%insn_07bd2) > 1
        %error "LONG_07BD2"
    %endif
    times 1 - ($ - %%insn_07bd2) db 0
    %%insn_07bd3:
    call 0x73e0 ; 07BD3 E80AF8
    %if ($ - %%insn_07bd3) > 3
        %error "LONG_07BD3"
    %endif
    times 3 - ($ - %%insn_07bd3) db 0
    db 0x8B, 0xD8 ; 07BD6 8BD8 | mov bx,ax | encoding preserved
    db 0x0B, 0xDA ; 07BD8 0BDA | or bx,dx | encoding preserved
    %%insn_07bda:
    jz short 0x7c0a ; 07BDA 742E
    %if ($ - %%insn_07bda) > 2
        %error "LONG_07BDA"
    %endif
    times 2 - ($ - %%insn_07bda) db 0
    %%insn_07bdc:
    mov es,dx ; 07BDC 8EC2
    %if ($ - %%insn_07bdc) > 2
        %error "LONG_07BDC"
    %endif
    times 2 - ($ - %%insn_07bdc) db 0
    db 0x8B, 0xD8 ; 07BDE 8BD8 | mov bx,ax | encoding preserved
    %%insn_07be0:
    push es ; 07BE0 06
    %if ($ - %%insn_07be0) > 1
        %error "LONG_07BE0"
    %endif
    times 1 - ($ - %%insn_07be0) db 0
    %%insn_07be1:
    push bx ; 07BE1 53
    %if ($ - %%insn_07be1) > 1
        %error "LONG_07BE1"
    %endif
    times 1 - ($ - %%insn_07be1) db 0
    %%insn_07be2:
    push cs ; 07BE2 0E
    %if ($ - %%insn_07be2) > 1
        %error "LONG_07BE2"
    %endif
    times 1 - ($ - %%insn_07be2) db 0
    %%insn_07be3:
    call 0x77a3 ; 07BE3 E8BDFB
    %if ($ - %%insn_07be3) > 3
        %error "LONG_07BE3"
    %endif
    times 3 - ($ - %%insn_07be3) db 0
    %%insn_07be6:
    add sp,0x4 ; 07BE6 83C404
    %if ($ - %%insn_07be6) > 3
        %error "LONG_07BE6"
    %endif
    times 3 - ($ - %%insn_07be6) db 0
    %%insn_07be9:
    mov bx,[bp+0x6] ; 07BE9 8B5E06
    %if ($ - %%insn_07be9) > 3
        %error "LONG_07BE9"
    %endif
    times 3 - ($ - %%insn_07be9) db 0
    %%insn_07bec:
    shl bx,1 ; 07BEC D1E3
    %if ($ - %%insn_07bec) > 2
        %error "LONG_07BEC"
    %endif
    times 2 - ($ - %%insn_07bec) db 0
    %%insn_07bee:
    mov [cs:bx+0x16a],ax ; 07BEE 2E89876A01
    %if ($ - %%insn_07bee) > 5
        %error "LONG_07BEE"
    %endif
    times 5 - ($ - %%insn_07bee) db 0
    %%insn_07bf3:
    mov [cs:0x1b4],ax ; 07BF3 2EA3B401
    %if ($ - %%insn_07bf3) > 4
        %error "LONG_07BF3"
    %endif
    times 4 - ($ - %%insn_07bf3) db 0
    %%insn_07bf7:
    push ax ; 07BF7 50
    %if ($ - %%insn_07bf7) > 1
        %error "LONG_07BF7"
    %endif
    times 1 - ($ - %%insn_07bf7) db 0
    %%insn_07bf8:
    push bp ; 07BF8 55
    %if ($ - %%insn_07bf8) > 1
        %error "LONG_07BF8"
    %endif
    times 1 - ($ - %%insn_07bf8) db 0
    db 0x8B, 0xEC ; 07BF9 8BEC | mov bp,sp | encoding preserved
    %%insn_07bfb:
    mov word [bp+0x2],0x0 ; 07BFB C746020000
    %if ($ - %%insn_07bfb) > 5
        %error "LONG_07BFB"
    %endif
    times 5 - ($ - %%insn_07bfb) db 0
    %%insn_07c00:
    pop bp ; 07C00 5D
    %if ($ - %%insn_07c00) > 1
        %error "LONG_07C00"
    %endif
    times 1 - ($ - %%insn_07c00) db 0
    %%insn_07c01:
    push si ; 07C01 56
    %if ($ - %%insn_07c01) > 1
        %error "LONG_07C01"
    %endif
    times 1 - ($ - %%insn_07c01) db 0
    %%insn_07c02:
    push ax ; 07C02 50
    %if ($ - %%insn_07c02) > 1
        %error "LONG_07C02"
    %endif
    times 1 - ($ - %%insn_07c02) db 0
    %%insn_07c03:
    push cs ; 07C03 0E
    %if ($ - %%insn_07c03) > 1
        %error "LONG_07C03"
    %endif
    times 1 - ($ - %%insn_07c03) db 0
    %%insn_07c04:
    call 0x79b6 ; 07C04 E8AFFD
    %if ($ - %%insn_07c04) > 3
        %error "LONG_07C04"
    %endif
    times 3 - ($ - %%insn_07c04) db 0
    %%insn_07c07:
    add sp,0x6 ; 07C07 83C406
    %if ($ - %%insn_07c07) > 3
        %error "LONG_07C07"
    %endif
    times 3 - ($ - %%insn_07c07) db 0
    %%insn_07c0a:
    push word [bp+0xe] ; 07C0A FF760E
    %if ($ - %%insn_07c0a) > 3
        %error "LONG_07C0A"
    %endif
    times 3 - ($ - %%insn_07c0a) db 0
    %%insn_07c0d:
    push word [bp+0xc] ; 07C0D FF760C
    %if ($ - %%insn_07c0d) > 3
        %error "LONG_07C0D"
    %endif
    times 3 - ($ - %%insn_07c0d) db 0
    %%insn_07c10:
    push word [bp+0xa] ; 07C10 FF760A
    %if ($ - %%insn_07c10) > 3
        %error "LONG_07C10"
    %endif
    times 3 - ($ - %%insn_07c10) db 0
    %%insn_07c13:
    push word [bp+0x8] ; 07C13 FF7608
    %if ($ - %%insn_07c13) > 3
        %error "LONG_07C13"
    %endif
    times 3 - ($ - %%insn_07c13) db 0
    %%insn_07c16:
    push word [bp+0x6] ; 07C16 FF7606
    %if ($ - %%insn_07c16) > 3
        %error "LONG_07C16"
    %endif
    times 3 - ($ - %%insn_07c16) db 0
    %%insn_07c19:
    mov ax,0x66 ; 07C19 B86600
    %if ($ - %%insn_07c19) > 3
        %error "LONG_07C19"
    %endif
    times 3 - ($ - %%insn_07c19) db 0
    %%insn_07c1c:
    push cs ; 07C1C 0E
    %if ($ - %%insn_07c1c) > 1
        %error "LONG_07C1C"
    %endif
    times 1 - ($ - %%insn_07c1c) db 0
    %%insn_07c1d:
    call 0x7418 ; 07C1D E8F8F7
    %if ($ - %%insn_07c1d) > 3
        %error "LONG_07C1D"
    %endif
    times 3 - ($ - %%insn_07c1d) db 0
    %%insn_07c20:
    add sp,0xa ; 07C20 83C40A
    %if ($ - %%insn_07c20) > 3
        %error "LONG_07C20"
    %endif
    times 3 - ($ - %%insn_07c20) db 0
    %%insn_07c23:
    mov bx,[bp+0x6] ; 07C23 8B5E06
    %if ($ - %%insn_07c23) > 3
        %error "LONG_07C23"
    %endif
    times 3 - ($ - %%insn_07c23) db 0
    %%insn_07c26:
    shl bx,1 ; 07C26 D1E3
    %if ($ - %%insn_07c26) > 2
        %error "LONG_07C26"
    %endif
    times 2 - ($ - %%insn_07c26) db 0
    %%insn_07c28:
    mov word [cs:bx+0x18a],0x1 ; 07C28 2EC7878A010100
    %if ($ - %%insn_07c28) > 7
        %error "LONG_07C28"
    %endif
    times 7 - ($ - %%insn_07c28) db 0
    %%insn_07c2f:
    cmp word [cs:0x1b4],0xffffffffffffffff ; 07C2F 2E833EB401FF
    %if ($ - %%insn_07c2f) > 6
        %error "LONG_07C2F"
    %endif
    times 6 - ($ - %%insn_07c2f) db 0
    %%insn_07c35:
    jz short 0x7c43 ; 07C35 740C
    %if ($ - %%insn_07c35) > 2
        %error "LONG_07C35"
    %endif
    times 2 - ($ - %%insn_07c35) db 0
    %%insn_07c37:
    push word [cs:0x1b4] ; 07C37 2EFF36B401
    %if ($ - %%insn_07c37) > 5
        %error "LONG_07C37"
    %endif
    times 5 - ($ - %%insn_07c37) db 0
    %%insn_07c3c:
    push cs ; 07C3C 0E
    %if ($ - %%insn_07c3c) > 1
        %error "LONG_07C3C"
    %endif
    times 1 - ($ - %%insn_07c3c) db 0
    %%insn_07c3d:
    call 0x78d5 ; 07C3D E895FC
    %if ($ - %%insn_07c3d) > 3
        %error "LONG_07C3D"
    %endif
    times 3 - ($ - %%insn_07c3d) db 0
    %%insn_07c40:
    add sp,0x2 ; 07C40 83C402
    %if ($ - %%insn_07c40) > 3
        %error "LONG_07C40"
    %endif
    times 3 - ($ - %%insn_07c40) db 0
    %%insn_07c43:
    db 0x80 ; 07C43 80
    %if ($ - %%insn_07c43) > 1
        %error "LONG_07C43"
    %endif
    times 1 - ($ - %%insn_07c43) db 0
    %if ($ - %%fragment_start) != 167
        %error "SIZE_07B9D"
    %endif
%endmacro

%macro emit_func_07b9d_part_01 0
    %%fragment_start:
    %%insn_07c45:
    add [0xfae8],cl ; 07C45 000EE8FA
    %if ($ - %%insn_07c45) > 4
        %error "LONG_07C45"
    %endif
    times 4 - ($ - %%insn_07c45) db 0
    %%insn_07c49:
    call word far [bx+0x5e] ; 07C49 FF5F5E
    %if ($ - %%insn_07c49) > 3
        %error "LONG_07C49"
    %endif
    times 3 - ($ - %%insn_07c49) db 0
    %%insn_07c4c:
    pop ds ; 07C4C 1F
    %if ($ - %%insn_07c4c) > 1
        %error "LONG_07C4C"
    %endif
    times 1 - ($ - %%insn_07c4c) db 0
    %%insn_07c4d:
    pop bp ; 07C4D 5D
    %if ($ - %%insn_07c4d) > 1
        %error "LONG_07C4D"
    %endif
    times 1 - ($ - %%insn_07c4d) db 0
    %%insn_07c4e:
    retf ; 07C4E CB
    %if ($ - %%insn_07c4e) > 1
        %error "LONG_07C4E"
    %endif
    times 1 - ($ - %%insn_07c4e) db 0
    %if ($ - %%fragment_start) != 10
        %error "SIZE_07C45"
    %endif
%endmacro
