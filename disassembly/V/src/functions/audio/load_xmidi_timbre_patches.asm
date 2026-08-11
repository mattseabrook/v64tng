; Linear entry 05AAC (1000:5aac)
; Ghidra working symbol: FUN_1000_5aac
; Verified Miles XMIDI timbre preparation path. Allocates a 600h-paragraph
; staging block, asks the active MIDI driver which timbres are required, scans
; the selected archive's six-byte resource records, reads 100h-byte timbre
; payloads, installs them through the driver interface, and frees the staging
; block on every success/error exit.
; Generated losslessly; edit names/comments only after preserving build identity.

%macro emit_load_xmidi_timbre_patches_part_00 0
    %%fragment_start:
load_xmidi_timbre_patches:
    db 0x8B, 0xD0 ; 05AAC 8BD0 | mov dx,ax | encoding preserved
    %%insn_05aae:
    push es ; 05AAE 06
    %if ($ - %%insn_05aae) > 1
        %error "LONG_05AAE"
    %endif
    times 1 - ($ - %%insn_05aae) db 0
    %%insn_05aaf:
    mov ax,[bp-0x1bda] ; 05AAF 8B8626E4
    %if ($ - %%insn_05aaf) > 4
        %error "LONG_05AAF"
    %endif
    times 4 - ($ - %%insn_05aaf) db 0
    %%insn_05ab3:
    mov [bp-0x1bd8],ax ; 05AB3 898628E4
    %if ($ - %%insn_05ab3) > 4
        %error "LONG_05AB3"
    %endif
    times 4 - ($ - %%insn_05ab3) db 0
    %%insn_05ab7:
    mov cx,0x600 ; 05AB7 B90006
    %if ($ - %%insn_05ab7) > 3
        %error "LONG_05AB7"
    %endif
    times 3 - ($ - %%insn_05ab7) db 0
    %%insn_05aba:
    call 0x5ea9 ; 05ABA E8EC03
    %if ($ - %%insn_05aba) > 3
        %error "LONG_05ABA"
    %endif
    times 3 - ($ - %%insn_05aba) db 0
    %%insn_05abd:
    mov [bp-0x1bda],ax ; 05ABD 898626E4
    %if ($ - %%insn_05abd) > 4
        %error "LONG_05ABD"
    %endif
    times 4 - ($ - %%insn_05abd) db 0
    %%insn_05ac1:
    mov es,ax ; 05AC1 8EC0
    %if ($ - %%insn_05ac1) > 2
        %error "LONG_05AC1"
    %endif
    times 2 - ($ - %%insn_05ac1) db 0
    db 0x8B, 0xC2 ; 05AC3 8BC2 | mov ax,dx | encoding preserved
    %%insn_05ac5:
    push word 0x0 ; 05AC5 6A00
    %if ($ - %%insn_05ac5) > 2
        %error "LONG_05AC5"
    %endif
    times 2 - ($ - %%insn_05ac5) db 0
    %%insn_05ac7:
    push word 0x0 ; 05AC7 6A00
    %if ($ - %%insn_05ac7) > 2
        %error "LONG_05AC7"
    %endif
    times 2 - ($ - %%insn_05ac7) db 0
    %%insn_05ac9:
    push es ; 05AC9 06
    %if ($ - %%insn_05ac9) > 1
        %error "LONG_05AC9"
    %endif
    times 1 - ($ - %%insn_05ac9) db 0
    %%insn_05aca:
    push word 0x0 ; 05ACA 6A00
    %if ($ - %%insn_05aca) > 2
        %error "LONG_05ACA"
    %endif
    times 2 - ($ - %%insn_05aca) db 0
    %%insn_05acc:
    push word 0x0 ; 05ACC 6A00
    %if ($ - %%insn_05acc) > 2
        %error "LONG_05ACC"
    %endif
    times 2 - ($ - %%insn_05acc) db 0
    %%insn_05ace:
    push ax ; 05ACE 50
    %if ($ - %%insn_05ace) > 1
        %error "LONG_05ACE"
    %endif
    times 1 - ($ - %%insn_05ace) db 0
    %%insn_05acf:
    push word 0x0 ; 05ACF 6A00
    %if ($ - %%insn_05acf) > 2
        %error "LONG_05ACF"
    %endif
    times 2 - ($ - %%insn_05acf) db 0
    %%insn_05ad1:
    push word [bp-0x1bce] ; 05AD1 FFB632E4
    %if ($ - %%insn_05ad1) > 4
        %error "LONG_05AD1"
    %endif
    times 4 - ($ - %%insn_05ad1) db 0
    %%insn_05ad5:
    call word 0x702:word 0xcc2 ; 05AD5 9AC20C0207
    %if ($ - %%insn_05ad5) > 5
        %error "LONG_05AD5"
    %endif
    times 5 - ($ - %%insn_05ad5) db 0
    %%insn_05ada:
    add sp,0x10 ; 05ADA 83C410
    %if ($ - %%insn_05ada) > 3
        %error "LONG_05ADA"
    %endif
    times 3 - ($ - %%insn_05ada) db 0
    db 0x3D, 0xFF, 0xFF ; 05ADD 3DFFFF | cmp ax,0xffff | encoding preserved
    %%insn_05ae0:
    jnz short 0x5af5 ; 05AE0 7513
    %if ($ - %%insn_05ae0) > 2
        %error "LONG_05AE0"
    %endif
    times 2 - ($ - %%insn_05ae0) db 0
    %%insn_05ae2:
    mov es,word [bp-0x1bd8] ; 05AE2 8E8628E4
    %if ($ - %%insn_05ae2) > 4
        %error "LONG_05AE2"
    %endif
    times 4 - ($ - %%insn_05ae2) db 0
    %%insn_05ae6:
    call 0x5e8d ; 05AE6 E8A403
    %if ($ - %%insn_05ae6) > 3
        %error "LONG_05AE6"
    %endif
    times 3 - ($ - %%insn_05ae6) db 0
    %%insn_05ae9:
    mov word [bp-0x1bd8],0x0 ; 05AE9 C78628E40000
    %if ($ - %%insn_05ae9) > 6
        %error "LONG_05AE9"
    %endif
    times 6 - ($ - %%insn_05ae9) db 0
    %%insn_05aef:
    mov ax,0x90a ; 05AEF B80A09
    %if ($ - %%insn_05aef) > 3
        %error "LONG_05AEF"
    %endif
    times 3 - ($ - %%insn_05aef) db 0
    %%insn_05af2:
    jmp 0x5ced ; 05AF2 E9F801
    %if ($ - %%insn_05af2) > 3
        %error "LONG_05AF2"
    %endif
    times 3 - ($ - %%insn_05af2) db 0
    %%insn_05af5:
    mov [bp-0x1bc6],ax ; 05AF5 89863AE4
    %if ($ - %%insn_05af5) > 4
        %error "LONG_05AF5"
    %endif
    times 4 - ($ - %%insn_05af5) db 0
    %%insn_05af9:
    cmp byte [bp-0x235e],0x1 ; 05AF9 80BEA2DC01
    %if ($ - %%insn_05af9) > 5
        %error "LONG_05AF9"
    %endif
    times 5 - ($ - %%insn_05af9) db 0
    %%insn_05afe:
    jnz short 0x5b0f ; 05AFE 750F
    %if ($ - %%insn_05afe) > 2
        %error "LONG_05AFE"
    %endif
    times 2 - ($ - %%insn_05afe) db 0
    %%insn_05b00:
    mov es,word [bp-0x1bd8] ; 05B00 8E8628E4
    %if ($ - %%insn_05b00) > 4
        %error "LONG_05B00"
    %endif
    times 4 - ($ - %%insn_05b00) db 0
    %%insn_05b04:
    call 0x5e8d ; 05B04 E88603
    %if ($ - %%insn_05b04) > 3
        %error "LONG_05B04"
    %endif
    times 3 - ($ - %%insn_05b04) db 0
    %%insn_05b07:
    mov word [bp-0x1bd8],0x0 ; 05B07 C78628E40000
    %if ($ - %%insn_05b07) > 6
        %error "LONG_05B07"
    %endif
    times 6 - ($ - %%insn_05b07) db 0
    %%insn_05b0d:
    pop es ; 05B0D 07
    %if ($ - %%insn_05b0d) > 1
        %error "LONG_05B0D"
    %endif
    times 1 - ($ - %%insn_05b0d) db 0
    %%insn_05b0e:
    ret ; 05B0E C3
    %if ($ - %%insn_05b0e) > 1
        %error "LONG_05B0E"
    %endif
    times 1 - ($ - %%insn_05b0e) db 0
    %%insn_05b0f:
    push ax ; 05B0F 50
    %if ($ - %%insn_05b0f) > 1
        %error "LONG_05B0F"
    %endif
    times 1 - ($ - %%insn_05b0f) db 0
    %%insn_05b10:
    push ds ; 05B10 1E
    %if ($ - %%insn_05b10) > 1
        %error "LONG_05B10"
    %endif
    times 1 - ($ - %%insn_05b10) db 0
    %%insn_05b11:
    mov ax,0x893 ; 05B11 B89308
    %if ($ - %%insn_05b11) > 3
        %error "LONG_05B11"
    %endif
    times 3 - ($ - %%insn_05b11) db 0
    %%insn_05b14:
    mov ds,ax ; 05B14 8ED8
    %if ($ - %%insn_05b14) > 2
        %error "LONG_05B14"
    %endif
    times 2 - ($ - %%insn_05b14) db 0
    %%insn_05b16:
    mov dx,0xe478 ; 05B16 BA78E4
    %if ($ - %%insn_05b16) > 3
        %error "LONG_05B16"
    %endif
    times 3 - ($ - %%insn_05b16) db 0
    %%insn_05b19:
    call 0x5734 ; 05B19 E818FC
    %if ($ - %%insn_05b19) > 3
        %error "LONG_05B19"
    %endif
    times 3 - ($ - %%insn_05b19) db 0
    db 0x3D, 0xFF, 0xFF ; 05B1C 3DFFFF | cmp ax,0xffff | encoding preserved
    %%insn_05b1f:
    jnz short 0x5b34 ; 05B1F 7513
    %if ($ - %%insn_05b1f) > 2
        %error "LONG_05B1F"
    %endif
    times 2 - ($ - %%insn_05b1f) db 0
    %%insn_05b21:
    mov es,word [bp-0x1bd8] ; 05B21 8E8628E4
    %if ($ - %%insn_05b21) > 4
        %error "LONG_05B21"
    %endif
    times 4 - ($ - %%insn_05b21) db 0
    %%insn_05b25:
    call 0x5e8d ; 05B25 E86503
    %if ($ - %%insn_05b25) > 3
        %error "LONG_05B25"
    %endif
    times 3 - ($ - %%insn_05b25) db 0
    %%insn_05b28:
    mov word [bp-0x1bd8],0x0 ; 05B28 C78628E40000
    %if ($ - %%insn_05b28) > 6
        %error "LONG_05B28"
    %endif
    times 6 - ($ - %%insn_05b28) db 0
    %%insn_05b2e:
    mov ax,0x87e ; 05B2E B87E08
    %if ($ - %%insn_05b2e) > 3
        %error "LONG_05B2E"
    %endif
    times 3 - ($ - %%insn_05b2e) db 0
    %%insn_05b31:
    jmp 0x5ced ; 05B31 E9B901
    %if ($ - %%insn_05b31) > 3
        %error "LONG_05B31"
    %endif
    times 3 - ($ - %%insn_05b31) db 0
    %%insn_05b34:
    push word [bp-0x1bc6] ; 05B34 FFB63AE4
    %if ($ - %%insn_05b34) > 4
        %error "LONG_05B34"
    %endif
    times 4 - ($ - %%insn_05b34) db 0
    %%insn_05b38:
    push word [bp-0x1bce] ; 05B38 FFB632E4
    %if ($ - %%insn_05b38) > 4
        %error "LONG_05B38"
    %endif
    times 4 - ($ - %%insn_05b38) db 0
    %%insn_05b3c:
    call word 0x702:word 0xcda ; 05B3C 9ADA0C0207
    %if ($ - %%insn_05b3c) > 5
        %error "LONG_05B3C"
    %endif
    times 5 - ($ - %%insn_05b3c) db 0
    %%insn_05b41:
    add sp,0x4 ; 05B41 83C404
    %if ($ - %%insn_05b41) > 3
        %error "LONG_05B41"
    %endif
    times 3 - ($ - %%insn_05b41) db 0
    db 0x3D, 0xFF, 0xFF ; 05B44 3DFFFF | cmp ax,0xffff | encoding preserved
    %%insn_05b47:
    jz short 0x5bbd ; 05B47 7474
    %if ($ - %%insn_05b47) > 2
        %error "LONG_05B47"
    %endif
    times 2 - ($ - %%insn_05b47) db 0
    db 0x8B, 0xF0 ; 05B49 8BF0 | mov si,ax | encoding preserved
    %%insn_05b4b:
    cmp ah,0x0 ; 05B4B 80FC00
    %if ($ - %%insn_05b4b) > 3
        %error "LONG_05B4B"
    %endif
    times 3 - ($ - %%insn_05b4b) db 0
    %%insn_05b4e:
    jnz short 0x5b54 ; 05B4E 7504
    %if ($ - %%insn_05b4e) > 2
        %error "LONG_05B4E"
    %endif
    times 2 - ($ - %%insn_05b4e) db 0
    %%insn_05b50:
    or si,0x5500 ; 05B50 81CE0055
    %if ($ - %%insn_05b50) > 4
        %error "LONG_05B50"
    %endif
    times 4 - ($ - %%insn_05b50) db 0
    db 0x33, 0xD2 ; 05B54 33D2 | xor dx,dx | encoding preserved
    db 0x33, 0xC9 ; 05B56 33C9 | xor cx,cx | encoding preserved
    %%insn_05b58:
    mov bx,[bp-0x1b7f] ; 05B58 8B9E81E4
    %if ($ - %%insn_05b58) > 4
        %error "LONG_05B58"
    %endif
    times 4 - ($ - %%insn_05b58) db 0
    %%insn_05b5c:
    mov ax,0x4200 ; 05B5C B80042
    %if ($ - %%insn_05b5c) > 3
        %error "LONG_05B5C"
    %endif
    times 3 - ($ - %%insn_05b5c) db 0
    %%insn_05b5f:
    int byte 0x21 ; 05B5F CD21
    %if ($ - %%insn_05b5f) > 2
        %error "LONG_05B5F"
    %endif
    times 2 - ($ - %%insn_05b5f) db 0
    %%insn_05b61:
    mov dx,0xe414 ; 05B61 BA14E4
    %if ($ - %%insn_05b61) > 3
        %error "LONG_05B61"
    %endif
    times 3 - ($ - %%insn_05b61) db 0
    %%insn_05b64:
    mov cx,0x6 ; 05B64 B90600
    %if ($ - %%insn_05b64) > 3
        %error "LONG_05B64"
    %endif
    times 3 - ($ - %%insn_05b64) db 0
    %%insn_05b67:
    mov bx,[bp-0x1b7f] ; 05B67 8B9E81E4
    %if ($ - %%insn_05b67) > 4
        %error "LONG_05B67"
    %endif
    times 4 - ($ - %%insn_05b67) db 0
    %%insn_05b6b:
    mov ax,0x3f00 ; 05B6B B8003F
    %if ($ - %%insn_05b6b) > 3
        %error "LONG_05B6B"
    %endif
    times 3 - ($ - %%insn_05b6b) db 0
    %%insn_05b6e:
    int byte 0x21 ; 05B6E CD21
    %if ($ - %%insn_05b6e) > 2
        %error "LONG_05B6E"
    %endif
    times 2 - ($ - %%insn_05b6e) db 0
    db 0x3D, 0x00, 0x00 ; 05B70 3D0000 | cmp ax,0x0 | encoding preserved
    %%insn_05b73:
    jnz short 0x5b7a ; 05B73 7505
    %if ($ - %%insn_05b73) > 2
        %error "LONG_05B73"
    %endif
    times 2 - ($ - %%insn_05b73) db 0
    %%insn_05b75:
    mov ax,0xffff ; 05B75 B8FFFF
    %if ($ - %%insn_05b75) > 3
        %error "LONG_05B75"
    %endif
    times 3 - ($ - %%insn_05b75) db 0
    %%insn_05b78:
    jmp short 0x5bbd ; 05B78 EB43
    %if ($ - %%insn_05b78) > 2
        %error "LONG_05B78"
    %endif
    times 2 - ($ - %%insn_05b78) db 0
    %%insn_05b7a:
    cmp si,[bp-0x1bec] ; 05B7A 3BB614E4
    %if ($ - %%insn_05b7a) > 4
        %error "LONG_05B7A"
    %endif
    times 4 - ($ - %%insn_05b7a) db 0
    %%insn_05b7e:
    jnz short 0x5b61 ; 05B7E 75E1
    %if ($ - %%insn_05b7e) > 2
        %error "LONG_05B7E"
    %endif
    times 2 - ($ - %%insn_05b7e) db 0
    %%insn_05b80:
    mov dx,[bp-0x1bea] ; 05B80 8B9616E4
    %if ($ - %%insn_05b80) > 4
        %error "LONG_05B80"
    %endif
    times 4 - ($ - %%insn_05b80) db 0
    %%insn_05b84:
    mov cx,[bp-0x1be8] ; 05B84 8B8E18E4
    %if ($ - %%insn_05b84) > 4
        %error "LONG_05B84"
    %endif
    times 4 - ($ - %%insn_05b84) db 0
    %%insn_05b88:
    mov bx,[bp-0x1b7f] ; 05B88 8B9E81E4
    %if ($ - %%insn_05b88) > 4
        %error "LONG_05B88"
    %endif
    times 4 - ($ - %%insn_05b88) db 0
    %%insn_05b8c:
    mov ax,0x4200 ; 05B8C B80042
    %if ($ - %%insn_05b8c) > 3
        %error "LONG_05B8C"
    %endif
    times 3 - ($ - %%insn_05b8c) db 0
    %%insn_05b8f:
    int byte 0x21 ; 05B8F CD21
    %if ($ - %%insn_05b8f) > 2
        %error "LONG_05B8F"
    %endif
    times 2 - ($ - %%insn_05b8f) db 0
    %%insn_05b91:
    mov dx,0xe266 ; 05B91 BA66E2
    %if ($ - %%insn_05b91) > 3
        %error "LONG_05B91"
    %endif
    times 3 - ($ - %%insn_05b91) db 0
    %%insn_05b94:
    mov cx,0x100 ; 05B94 B90001
    %if ($ - %%insn_05b94) > 3
        %error "LONG_05B94"
    %endif
    times 3 - ($ - %%insn_05b94) db 0
    %%insn_05b97:
    mov bx,[bp-0x1b7f] ; 05B97 8B9E81E4
    %if ($ - %%insn_05b97) > 4
        %error "LONG_05B97"
    %endif
    times 4 - ($ - %%insn_05b97) db 0
    %%insn_05b9b:
    mov ax,0x3f00 ; 05B9B B8003F
    %if ($ - %%insn_05b9b) > 3
        %error "LONG_05B9B"
    %endif
    times 3 - ($ - %%insn_05b9b) db 0
    %%insn_05b9e:
    int byte 0x21 ; 05B9E CD21
    %if ($ - %%insn_05b9e) > 2
        %error "LONG_05B9E"
    %endif
    times 2 - ($ - %%insn_05b9e) db 0
    db 0x8B, 0xC6 ; 05BA0 8BC6 | mov ax,si | encoding preserved
    db 0x8A, 0xDC ; 05BA2 8ADC | mov bl,ah | encoding preserved
    db 0x32, 0xFF ; 05BA4 32FF | xor bh,bh | encoding preserved
    db 0x32, 0xE4 ; 05BA6 32E4 | xor ah,ah | encoding preserved
    %%insn_05ba8:
    push ss ; 05BA8 16
    %if ($ - %%insn_05ba8) > 1
        %error "LONG_05BA8"
    %endif
    times 1 - ($ - %%insn_05ba8) db 0
    %%insn_05ba9:
    push word 0xe266 ; 05BA9 6866E2
    %if ($ - %%insn_05ba9) > 3
        %error "LONG_05BA9"
    %endif
    times 3 - ($ - %%insn_05ba9) db 0
    %%insn_05bac:
    push ax ; 05BAC 50
    %if ($ - %%insn_05bac) > 1
        %error "LONG_05BAC"
    %endif
    times 1 - ($ - %%insn_05bac) db 0
    %%insn_05bad:
    push bx ; 05BAD 53
    %if ($ - %%insn_05bad) > 1
        %error "LONG_05BAD"
    %endif
    times 1 - ($ - %%insn_05bad) db 0
    %%insn_05bae:
    push word [bp-0x1bce] ; 05BAE FFB632E4
    %if ($ - %%insn_05bae) > 4
        %error "LONG_05BAE"
    %endif
    times 4 - ($ - %%insn_05bae) db 0
    %%insn_05bb2:
    call word 0x702:word 0xce0 ; 05BB2 9AE00C0207
    %if ($ - %%insn_05bb2) > 5
        %error "LONG_05BB2"
    %endif
    times 5 - ($ - %%insn_05bb2) db 0
    %%insn_05bb7:
    add sp,0xa ; 05BB7 83C40A
    %if ($ - %%insn_05bb7) > 3
        %error "LONG_05BB7"
    %endif
    times 3 - ($ - %%insn_05bb7) db 0
    %%insn_05bba:
    jmp 0x5b34 ; 05BBA E977FF
    %if ($ - %%insn_05bba) > 3
        %error "LONG_05BBA"
    %endif
    times 3 - ($ - %%insn_05bba) db 0
    %%insn_05bbd:
    call 0x574a ; 05BBD E88AFB
    %if ($ - %%insn_05bbd) > 3
        %error "LONG_05BBD"
    %endif
    times 3 - ($ - %%insn_05bbd) db 0
    %%insn_05bc0:
    mov es,word [bp-0x1bd8] ; 05BC0 8E8628E4
    %if ($ - %%insn_05bc0) > 4
        %error "LONG_05BC0"
    %endif
    times 4 - ($ - %%insn_05bc0) db 0
    %%insn_05bc4:
    call 0x5e8d ; 05BC4 E8C602
    %if ($ - %%insn_05bc4) > 3
        %error "LONG_05BC4"
    %endif
    times 3 - ($ - %%insn_05bc4) db 0
    %%insn_05bc7:
    mov word [bp-0x1bd8],0x0 ; 05BC7 C78628E40000
    %if ($ - %%insn_05bc7) > 6
        %error "LONG_05BC7"
    %endif
    times 6 - ($ - %%insn_05bc7) db 0
    %%insn_05bcd:
    pop ds ; 05BCD 1F
    %if ($ - %%insn_05bcd) > 1
        %error "LONG_05BCD"
    %endif
    times 1 - ($ - %%insn_05bcd) db 0
    %%insn_05bce:
    pop ax ; 05BCE 58
    %if ($ - %%insn_05bce) > 1
        %error "LONG_05BCE"
    %endif
    times 1 - ($ - %%insn_05bce) db 0
    %%insn_05bcf:
    pop es ; 05BCF 07
    %if ($ - %%insn_05bcf) > 1
        %error "LONG_05BCF"
    %endif
    times 1 - ($ - %%insn_05bcf) db 0
    %%insn_05bd0:
    ret ; 05BD0 C3
    %if ($ - %%insn_05bd0) > 1
        %error "LONG_05BD0"
    %endif
    times 1 - ($ - %%insn_05bd0) db 0
    %if ($ - %%fragment_start) != 293
        %error "SIZE_05AAC"
    %endif
%endmacro
