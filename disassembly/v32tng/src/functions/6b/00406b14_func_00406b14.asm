; PE virtual entry 00406B14
; Ghidra working symbol: FUN_00406b14
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00406b14_part_00 0
    %%fragment_start:
func_00406b14:
    %%insn_00406b14:
    push ebp ; 00406B14 55
    %if ($ - %%insn_00406b14) > 1
        %error "LONG_00406B14"
    %endif
    times 1 - ($ - %%insn_00406b14) db 0
    db 0x8B, 0xEC ; 00406B15 8BEC | mov ebp,esp | encoding preserved
    %%insn_00406b17:
    sub esp,0x1c ; 00406B17 83EC1C
    %if ($ - %%insn_00406b17) > 3
        %error "LONG_00406B17"
    %endif
    times 3 - ($ - %%insn_00406b17) db 0
    db 0x33, 0xC0 ; 00406B1A 33C0 | xor eax,eax | encoding preserved
    %%insn_00406b1c:
    mov ax,[0x41f4c0] ; 00406B1C 66A1C0F44100
    %if ($ - %%insn_00406b1c) > 6
        %error "LONG_00406B1C"
    %endif
    times 6 - ($ - %%insn_00406b1c) db 0
    %%insn_00406b22:
    test eax,eax ; 00406B22 85C0
    %if ($ - %%insn_00406b22) > 2
        %error "LONG_00406B22"
    %endif
    times 2 - ($ - %%insn_00406b22) db 0
    %%insn_00406b24:
    jnz short 0x406b5b ; 00406B24 7535
    %if ($ - %%insn_00406b24) > 2
        %error "LONG_00406B24"
    %endif
    times 2 - ($ - %%insn_00406b24) db 0
    db 0x33, 0xC9 ; 00406B26 33C9 | xor ecx,ecx | encoding preserved
    %%insn_00406b28:
    mov cx,[0x41f4c4] ; 00406B28 668B0DC4F44100
    %if ($ - %%insn_00406b28) > 7
        %error "LONG_00406B28"
    %endif
    times 7 - ($ - %%insn_00406b28) db 0
    %%insn_00406b2f:
    test ecx,ecx ; 00406B2F 85C9
    %if ($ - %%insn_00406b2f) > 2
        %error "LONG_00406B2F"
    %endif
    times 2 - ($ - %%insn_00406b2f) db 0
    %%insn_00406b31:
    jnz short 0x406b5b ; 00406B31 7528
    %if ($ - %%insn_00406b31) > 2
        %error "LONG_00406B31"
    %endif
    times 2 - ($ - %%insn_00406b31) db 0
    db 0x33, 0xD2 ; 00406B33 33D2 | xor edx,edx | encoding preserved
    %%insn_00406b35:
    mov dx,[0x41f4c8] ; 00406B35 668B15C8F44100
    %if ($ - %%insn_00406b35) > 7
        %error "LONG_00406B35"
    %endif
    times 7 - ($ - %%insn_00406b35) db 0
    %%insn_00406b3c:
    test edx,edx ; 00406B3C 85D2
    %if ($ - %%insn_00406b3c) > 2
        %error "LONG_00406B3C"
    %endif
    times 2 - ($ - %%insn_00406b3c) db 0
    %%insn_00406b3e:
    jnz short 0x406b5b ; 00406B3E 751B
    %if ($ - %%insn_00406b3e) > 2
        %error "LONG_00406B3E"
    %endif
    times 2 - ($ - %%insn_00406b3e) db 0
    %%insn_00406b40:
    mov word [0x41f4c0],0xe6 ; 00406B40 66C705C0F44100E600
    %if ($ - %%insn_00406b40) > 9
        %error "LONG_00406B40"
    %endif
    times 9 - ($ - %%insn_00406b40) db 0
    %%insn_00406b49:
    mov word [0x41f4c4],0x1c ; 00406B49 66C705C4F441001C00
    %if ($ - %%insn_00406b49) > 9
        %error "LONG_00406B49"
    %endif
    times 9 - ($ - %%insn_00406b49) db 0
    %%insn_00406b52:
    mov word [0x41f4c8],0xc ; 00406B52 66C705C8F441000C00
    %if ($ - %%insn_00406b52) > 9
        %error "LONG_00406B52"
    %endif
    times 9 - ($ - %%insn_00406b52) db 0
    %%insn_00406b5b:
    mov ax,[0x41f4c0] ; 00406B5B 66A1C0F44100
    %if ($ - %%insn_00406b5b) > 6
        %error "LONG_00406B5B"
    %endif
    times 6 - ($ - %%insn_00406b5b) db 0
    %%insn_00406b61:
    mov [ebp-0x1c],ax ; 00406B61 668945E4
    %if ($ - %%insn_00406b61) > 4
        %error "LONG_00406B61"
    %endif
    times 4 - ($ - %%insn_00406b61) db 0
    %%insn_00406b65:
    mov cx,[0x41f4c4] ; 00406B65 668B0DC4F44100
    %if ($ - %%insn_00406b65) > 7
        %error "LONG_00406B65"
    %endif
    times 7 - ($ - %%insn_00406b65) db 0
    %%insn_00406b6c:
    mov [ebp-0x18],cx ; 00406B6C 66894DE8
    %if ($ - %%insn_00406b6c) > 4
        %error "LONG_00406B6C"
    %endif
    times 4 - ($ - %%insn_00406b6c) db 0
    %%insn_00406b70:
    mov dx,[0x41f4c8] ; 00406B70 668B15C8F44100
    %if ($ - %%insn_00406b70) > 7
        %error "LONG_00406B70"
    %endif
    times 7 - ($ - %%insn_00406b70) db 0
    %%insn_00406b77:
    mov [ebp-0x4],dx ; 00406B77 668955FC
    %if ($ - %%insn_00406b77) > 4
        %error "LONG_00406B77"
    %endif
    times 4 - ($ - %%insn_00406b77) db 0
    %%insn_00406b7b:
    mov word [ebp-0x10],0x0 ; 00406B7B 66C745F00000
    %if ($ - %%insn_00406b7b) > 6
        %error "LONG_00406B7B"
    %endif
    times 6 - ($ - %%insn_00406b7b) db 0
    %%insn_00406b81:
    mov word [ebp-0x14],0x0 ; 00406B81 66C745EC0000
    %if ($ - %%insn_00406b81) > 6
        %error "LONG_00406B81"
    %endif
    times 6 - ($ - %%insn_00406b81) db 0
    %%insn_00406b87:
    jmp short 0x406b95 ; 00406B87 EB0C
    %if ($ - %%insn_00406b87) > 2
        %error "LONG_00406B87"
    %endif
    times 2 - ($ - %%insn_00406b87) db 0
    %%insn_00406b89:
    mov ax,[ebp-0x14] ; 00406B89 668B45EC
    %if ($ - %%insn_00406b89) > 4
        %error "LONG_00406B89"
    %endif
    times 4 - ($ - %%insn_00406b89) db 0
    db 0x66, 0x05, 0x01, 0x00 ; 00406B8D 66050100 | add ax,0x1 | encoding preserved
    %%insn_00406b91:
    mov [ebp-0x14],ax ; 00406B91 668945EC
    %if ($ - %%insn_00406b91) > 4
        %error "LONG_00406B91"
    %endif
    times 4 - ($ - %%insn_00406b91) db 0
    %%insn_00406b95:
    mov ecx,[ebp-0x14] ; 00406B95 8B4DEC
    %if ($ - %%insn_00406b95) > 3
        %error "LONG_00406B95"
    %endif
    times 3 - ($ - %%insn_00406b95) db 0
    %%insn_00406b98:
    and ecx,0xffff ; 00406B98 81E1FFFF0000
    %if ($ - %%insn_00406b98) > 6
        %error "LONG_00406B98"
    %endif
    times 6 - ($ - %%insn_00406b98) db 0
    %%insn_00406b9e:
    cmp ecx,0x10 ; 00406B9E 83F910
    %if ($ - %%insn_00406b9e) > 3
        %error "LONG_00406B9E"
    %endif
    times 3 - ($ - %%insn_00406b9e) db 0
    %%insn_00406ba1:
    jnl 0x406cdc ; 00406BA1 0F8D35010000
    %if ($ - %%insn_00406ba1) > 6
        %error "LONG_00406BA1"
    %endif
    times 6 - ($ - %%insn_00406ba1) db 0
    %%insn_00406ba7:
    mov dx,[ebp-0x1c] ; 00406BA7 668B55E4
    %if ($ - %%insn_00406ba7) > 4
        %error "LONG_00406BA7"
    %endif
    times 4 - ($ - %%insn_00406ba7) db 0
    %%insn_00406bab:
    mov [ebp-0x8],dx ; 00406BAB 668955F8
    %if ($ - %%insn_00406bab) > 4
        %error "LONG_00406BAB"
    %endif
    times 4 - ($ - %%insn_00406bab) db 0
    %%insn_00406baf:
    mov eax,[ebp-0x8] ; 00406BAF 8B45F8
    %if ($ - %%insn_00406baf) > 3
        %error "LONG_00406BAF"
    %endif
    times 3 - ($ - %%insn_00406baf) db 0
    %%insn_00406bb2:
    and eax,0xffff ; 00406BB2 25FFFF0000
    %if ($ - %%insn_00406bb2) > 5
        %error "LONG_00406BB2"
    %endif
    times 5 - ($ - %%insn_00406bb2) db 0
    %%insn_00406bb7:
    and eax,0x1 ; 00406BB7 83E001
    %if ($ - %%insn_00406bb7) > 3
        %error "LONG_00406BB7"
    %endif
    times 3 - ($ - %%insn_00406bb7) db 0
    %%insn_00406bba:
    mov [ebp-0xc],ax ; 00406BBA 668945F4
    %if ($ - %%insn_00406bba) > 4
        %error "LONG_00406BBA"
    %endif
    times 4 - ($ - %%insn_00406bba) db 0
    %%insn_00406bbe:
    mov ecx,[ebp-0x8] ; 00406BBE 8B4DF8
    %if ($ - %%insn_00406bbe) > 3
        %error "LONG_00406BBE"
    %endif
    times 3 - ($ - %%insn_00406bbe) db 0
    %%insn_00406bc1:
    and ecx,0xffff ; 00406BC1 81E1FFFF0000
    %if ($ - %%insn_00406bc1) > 6
        %error "LONG_00406BC1"
    %endif
    times 6 - ($ - %%insn_00406bc1) db 0
    %%insn_00406bc7:
    sar ecx,1 ; 00406BC7 D1F9
    %if ($ - %%insn_00406bc7) > 2
        %error "LONG_00406BC7"
    %endif
    times 2 - ($ - %%insn_00406bc7) db 0
    %%insn_00406bc9:
    mov edx,[ebp-0x10] ; 00406BC9 8B55F0
    %if ($ - %%insn_00406bc9) > 3
        %error "LONG_00406BC9"
    %endif
    times 3 - ($ - %%insn_00406bc9) db 0
    %%insn_00406bcc:
    and edx,0xffff ; 00406BCC 81E2FFFF0000
    %if ($ - %%insn_00406bcc) > 6
        %error "LONG_00406BCC"
    %endif
    times 6 - ($ - %%insn_00406bcc) db 0
    db 0x03, 0xCA ; 00406BD2 03CA | add ecx,edx | encoding preserved
    %%insn_00406bd4:
    mov [ebp-0x8],cx ; 00406BD4 66894DF8
    %if ($ - %%insn_00406bd4) > 4
        %error "LONG_00406BD4"
    %endif
    times 4 - ($ - %%insn_00406bd4) db 0
    %%insn_00406bd8:
    mov eax,[ebp-0x8] ; 00406BD8 8B45F8
    %if ($ - %%insn_00406bd8) > 3
        %error "LONG_00406BD8"
    %endif
    times 3 - ($ - %%insn_00406bd8) db 0
    %%insn_00406bdb:
    and eax,0xffff ; 00406BDB 25FFFF0000
    %if ($ - %%insn_00406bdb) > 5
        %error "LONG_00406BDB"
    %endif
    times 5 - ($ - %%insn_00406bdb) db 0
    %%insn_00406be0:
    and eax,0x1 ; 00406BE0 83E001
    %if ($ - %%insn_00406be0) > 3
        %error "LONG_00406BE0"
    %endif
    times 3 - ($ - %%insn_00406be0) db 0
    %%insn_00406be3:
    mov [ebp-0x10],ax ; 00406BE3 668945F0
    %if ($ - %%insn_00406be3) > 4
        %error "LONG_00406BE3"
    %endif
    times 4 - ($ - %%insn_00406be3) db 0
    %%insn_00406be7:
    mov ecx,[ebp-0x8] ; 00406BE7 8B4DF8
    %if ($ - %%insn_00406be7) > 3
        %error "LONG_00406BE7"
    %endif
    times 3 - ($ - %%insn_00406be7) db 0
    %%insn_00406bea:
    and ecx,0xffff ; 00406BEA 81E1FFFF0000
    %if ($ - %%insn_00406bea) > 6
        %error "LONG_00406BEA"
    %endif
    times 6 - ($ - %%insn_00406bea) db 0
    %%insn_00406bf0:
    sar ecx,1 ; 00406BF0 D1F9
    %if ($ - %%insn_00406bf0) > 2
        %error "LONG_00406BF0"
    %endif
    times 2 - ($ - %%insn_00406bf0) db 0
    %%insn_00406bf2:
    mov edx,[ebp-0xc] ; 00406BF2 8B55F4
    %if ($ - %%insn_00406bf2) > 3
        %error "LONG_00406BF2"
    %endif
    times 3 - ($ - %%insn_00406bf2) db 0
    %%insn_00406bf5:
    and edx,0xffff ; 00406BF5 81E2FFFF0000
    %if ($ - %%insn_00406bf5) > 6
        %error "LONG_00406BF5"
    %endif
    times 6 - ($ - %%insn_00406bf5) db 0
    %%insn_00406bfb:
    shl edx,byte 0x7 ; 00406BFB C1E207
    %if ($ - %%insn_00406bfb) > 3
        %error "LONG_00406BFB"
    %endif
    times 3 - ($ - %%insn_00406bfb) db 0
    db 0x03, 0xCA ; 00406BFE 03CA | add ecx,edx | encoding preserved
    %%insn_00406c00:
    mov [ebp-0x8],cx ; 00406C00 66894DF8
    %if ($ - %%insn_00406c00) > 4
        %error "LONG_00406C00"
    %endif
    times 4 - ($ - %%insn_00406c00) db 0
    %%insn_00406c04:
    mov eax,[ebp-0x8] ; 00406C04 8B45F8
    %if ($ - %%insn_00406c04) > 3
        %error "LONG_00406C04"
    %endif
    times 3 - ($ - %%insn_00406c04) db 0
    %%insn_00406c07:
    and eax,0xffff ; 00406C07 25FFFF0000
    %if ($ - %%insn_00406c07) > 5
        %error "LONG_00406C07"
    %endif
    times 5 - ($ - %%insn_00406c07) db 0
    %%insn_00406c0c:
    and eax,0x1 ; 00406C0C 83E001
    %if ($ - %%insn_00406c0c) > 3
        %error "LONG_00406C0C"
    %endif
    times 3 - ($ - %%insn_00406c0c) db 0
    %%insn_00406c0f:
    mov [ebp-0xc],ax ; 00406C0F 668945F4
    %if ($ - %%insn_00406c0f) > 4
        %error "LONG_00406C0F"
    %endif
    times 4 - ($ - %%insn_00406c0f) db 0
    %%insn_00406c13:
    mov ecx,[ebp-0x8] ; 00406C13 8B4DF8
    %if ($ - %%insn_00406c13) > 3
        %error "LONG_00406C13"
    %endif
    times 3 - ($ - %%insn_00406c13) db 0
    %%insn_00406c16:
    and ecx,0xffff ; 00406C16 81E1FFFF0000
    %if ($ - %%insn_00406c16) > 6
        %error "LONG_00406C16"
    %endif
    times 6 - ($ - %%insn_00406c16) db 0
    %%insn_00406c1c:
    sar ecx,1 ; 00406C1C D1F9
    %if ($ - %%insn_00406c1c) > 2
        %error "LONG_00406C1C"
    %endif
    times 2 - ($ - %%insn_00406c1c) db 0
    %%insn_00406c1e:
    mov edx,[ebp-0x10] ; 00406C1E 8B55F0
    %if ($ - %%insn_00406c1e) > 3
        %error "LONG_00406C1E"
    %endif
    times 3 - ($ - %%insn_00406c1e) db 0
    %%insn_00406c21:
    and edx,0xffff ; 00406C21 81E2FFFF0000
    %if ($ - %%insn_00406c21) > 6
        %error "LONG_00406C21"
    %endif
    times 6 - ($ - %%insn_00406c21) db 0
    %%insn_00406c27:
    shl edx,byte 0x7 ; 00406C27 C1E207
    %if ($ - %%insn_00406c27) > 3
        %error "LONG_00406C27"
    %endif
    times 3 - ($ - %%insn_00406c27) db 0
    db 0x03, 0xCA ; 00406C2A 03CA | add ecx,edx | encoding preserved
    %%insn_00406c2c:
    mov [ebp-0x8],cx ; 00406C2C 66894DF8
    %if ($ - %%insn_00406c2c) > 4
        %error "LONG_00406C2C"
    %endif
    times 4 - ($ - %%insn_00406c2c) db 0
    %%insn_00406c30:
    mov ax,[ebp-0x8] ; 00406C30 668B45F8
    %if ($ - %%insn_00406c30) > 4
        %error "LONG_00406C30"
    %endif
    times 4 - ($ - %%insn_00406c30) db 0
    %%insn_00406c34:
    xor ax,[ebp-0x18] ; 00406C34 663345E8
    %if ($ - %%insn_00406c34) > 4
        %error "LONG_00406C34"
    %endif
    times 4 - ($ - %%insn_00406c34) db 0
    %%insn_00406c38:
    mov [ebp-0x8],ax ; 00406C38 668945F8
    %if ($ - %%insn_00406c38) > 4
        %error "LONG_00406C38"
    %endif
    times 4 - ($ - %%insn_00406c38) db 0
    %%insn_00406c3c:
    mov ecx,[ebp-0x8] ; 00406C3C 8B4DF8
    %if ($ - %%insn_00406c3c) > 3
        %error "LONG_00406C3C"
    %endif
    times 3 - ($ - %%insn_00406c3c) db 0
    %%insn_00406c3f:
    and ecx,0xffff ; 00406C3F 81E1FFFF0000
    %if ($ - %%insn_00406c3f) > 6
        %error "LONG_00406C3F"
    %endif
    times 6 - ($ - %%insn_00406c3f) db 0
    %%insn_00406c45:
    and ecx,0x1 ; 00406C45 83E101
    %if ($ - %%insn_00406c45) > 3
        %error "LONG_00406C45"
    %endif
    times 3 - ($ - %%insn_00406c45) db 0
    %%insn_00406c48:
    mov [ebp-0x10],cx ; 00406C48 66894DF0
    %if ($ - %%insn_00406c48) > 4
        %error "LONG_00406C48"
    %endif
    times 4 - ($ - %%insn_00406c48) db 0
    %%insn_00406c4c:
    mov edx,[ebp-0x4] ; 00406C4C 8B55FC
    %if ($ - %%insn_00406c4c) > 3
        %error "LONG_00406C4C"
    %endif
    times 3 - ($ - %%insn_00406c4c) db 0
    %%insn_00406c4f:
    and edx,0xffff ; 00406C4F 81E2FFFF0000
    %if ($ - %%insn_00406c4f) > 6
        %error "LONG_00406C4F"
    %endif
    times 6 - ($ - %%insn_00406c4f) db 0
    %%insn_00406c55:
    and edx,0x80 ; 00406C55 81E280000000
    %if ($ - %%insn_00406c55) > 6
        %error "LONG_00406C55"
    %endif
    times 6 - ($ - %%insn_00406c55) db 0
    %%insn_00406c5b:
    mov [ebp-0xc],dx ; 00406C5B 668955F4
    %if ($ - %%insn_00406c5b) > 4
        %error "LONG_00406C5B"
    %endif
    times 4 - ($ - %%insn_00406c5b) db 0
    %%insn_00406c5f:
    mov eax,[ebp-0x4] ; 00406C5F 8B45FC
    %if ($ - %%insn_00406c5f) > 3
        %error "LONG_00406C5F"
    %endif
    times 3 - ($ - %%insn_00406c5f) db 0
    %%insn_00406c62:
    and eax,0xffff ; 00406C62 25FFFF0000
    %if ($ - %%insn_00406c62) > 5
        %error "LONG_00406C62"
    %endif
    times 5 - ($ - %%insn_00406c62) db 0
    %%insn_00406c67:
    mov ecx,[ebp-0x10] ; 00406C67 8B4DF0
    %if ($ - %%insn_00406c67) > 3
        %error "LONG_00406C67"
    %endif
    times 3 - ($ - %%insn_00406c67) db 0
    %%insn_00406c6a:
    and ecx,0xffff ; 00406C6A 81E1FFFF0000
    %if ($ - %%insn_00406c6a) > 6
        %error "LONG_00406C6A"
    %endif
    times 6 - ($ - %%insn_00406c6a) db 0
    %%insn_00406c70:
    lea edx,[ecx+eax*2] ; 00406C70 8D1441
    %if ($ - %%insn_00406c70) > 3
        %error "LONG_00406C70"
    %endif
    times 3 - ($ - %%insn_00406c70) db 0
    %%insn_00406c73:
    mov [ebp-0x4],dx ; 00406C73 668955FC
    %if ($ - %%insn_00406c73) > 4
        %error "LONG_00406C73"
    %endif
    times 4 - ($ - %%insn_00406c73) db 0
    %%insn_00406c77:
    mov eax,[ebp-0x18] ; 00406C77 8B45E8
    %if ($ - %%insn_00406c77) > 3
        %error "LONG_00406C77"
    %endif
    times 3 - ($ - %%insn_00406c77) db 0
    %%insn_00406c7a:
    and eax,0xffff ; 00406C7A 25FFFF0000
    %if ($ - %%insn_00406c7a) > 5
        %error "LONG_00406C7A"
    %endif
    times 5 - ($ - %%insn_00406c7a) db 0
    %%insn_00406c7f:
    and eax,0x80 ; 00406C7F 2580000000
    %if ($ - %%insn_00406c7f) > 5
        %error "LONG_00406C7F"
    %endif
    times 5 - ($ - %%insn_00406c7f) db 0
    %%insn_00406c84:
    mov [ebp-0x10],ax ; 00406C84 668945F0
    %if ($ - %%insn_00406c84) > 4
        %error "LONG_00406C84"
    %endif
    times 4 - ($ - %%insn_00406c84) db 0
    %%insn_00406c88:
    mov ecx,[ebp-0x18] ; 00406C88 8B4DE8
    %if ($ - %%insn_00406c88) > 3
        %error "LONG_00406C88"
    %endif
    times 3 - ($ - %%insn_00406c88) db 0
    %%insn_00406c8b:
    and ecx,0xffff ; 00406C8B 81E1FFFF0000
    %if ($ - %%insn_00406c8b) > 6
        %error "LONG_00406C8B"
    %endif
    times 6 - ($ - %%insn_00406c8b) db 0
    %%insn_00406c91:
    mov edx,[ebp-0xc] ; 00406C91 8B55F4
    %if ($ - %%insn_00406c91) > 3
        %error "LONG_00406C91"
    %endif
    times 3 - ($ - %%insn_00406c91) db 0
    %%insn_00406c94:
    and edx,0xffff ; 00406C94 81E2FFFF0000
    %if ($ - %%insn_00406c94) > 6
        %error "LONG_00406C94"
    %endif
    times 6 - ($ - %%insn_00406c94) db 0
    %%insn_00406c9a:
    sar edx,byte 0x7 ; 00406C9A C1FA07
    %if ($ - %%insn_00406c9a) > 3
        %error "LONG_00406C9A"
    %endif
    times 3 - ($ - %%insn_00406c9a) db 0
    %%insn_00406c9d:
    lea eax,[edx+ecx*2] ; 00406C9D 8D044A
    %if ($ - %%insn_00406c9d) > 3
        %error "LONG_00406C9D"
    %endif
    times 3 - ($ - %%insn_00406c9d) db 0
    %%insn_00406ca0:
    mov [ebp-0x18],ax ; 00406CA0 668945E8
    %if ($ - %%insn_00406ca0) > 4
        %error "LONG_00406CA0"
    %endif
    times 4 - ($ - %%insn_00406ca0) db 0
    %%insn_00406ca4:
    mov ecx,[ebp-0x1c] ; 00406CA4 8B4DE4
    %if ($ - %%insn_00406ca4) > 3
        %error "LONG_00406CA4"
    %endif
    times 3 - ($ - %%insn_00406ca4) db 0
    %%insn_00406ca7:
    and ecx,0xffff ; 00406CA7 81E1FFFF0000
    %if ($ - %%insn_00406ca7) > 6
        %error "LONG_00406CA7"
    %endif
    times 6 - ($ - %%insn_00406ca7) db 0
    %%insn_00406cad:
    and ecx,0x1 ; 00406CAD 83E101
    %if ($ - %%insn_00406cad) > 3
        %error "LONG_00406CAD"
    %endif
    times 3 - ($ - %%insn_00406cad) db 0
    %%insn_00406cb0:
    mov [ebp-0xc],cx ; 00406CB0 66894DF4
    %if ($ - %%insn_00406cb0) > 4
        %error "LONG_00406CB0"
    %endif
    times 4 - ($ - %%insn_00406cb0) db 0
    %%insn_00406cb4:
    mov edx,[ebp-0x1c] ; 00406CB4 8B55E4
    %if ($ - %%insn_00406cb4) > 3
        %error "LONG_00406CB4"
    %endif
    times 3 - ($ - %%insn_00406cb4) db 0
    %%insn_00406cb7:
    and edx,0xffff ; 00406CB7 81E2FFFF0000
    %if ($ - %%insn_00406cb7) > 6
        %error "LONG_00406CB7"
    %endif
    times 6 - ($ - %%insn_00406cb7) db 0
    %%insn_00406cbd:
    mov eax,[ebp-0x10] ; 00406CBD 8B45F0
    %if ($ - %%insn_00406cbd) > 3
        %error "LONG_00406CBD"
    %endif
    times 3 - ($ - %%insn_00406cbd) db 0
    %%insn_00406cc0:
    and eax,0xffff ; 00406CC0 25FFFF0000
    %if ($ - %%insn_00406cc0) > 5
        %error "LONG_00406CC0"
    %endif
    times 5 - ($ - %%insn_00406cc0) db 0
    %%insn_00406cc5:
    sar eax,byte 0x7 ; 00406CC5 C1F807
    %if ($ - %%insn_00406cc5) > 3
        %error "LONG_00406CC5"
    %endif
    times 3 - ($ - %%insn_00406cc5) db 0
    %%insn_00406cc8:
    lea ecx,[eax+edx*2] ; 00406CC8 8D0C50
    %if ($ - %%insn_00406cc8) > 3
        %error "LONG_00406CC8"
    %endif
    times 3 - ($ - %%insn_00406cc8) db 0
    %%insn_00406ccb:
    mov [ebp-0x1c],cx ; 00406CCB 66894DE4
    %if ($ - %%insn_00406ccb) > 4
        %error "LONG_00406CCB"
    %endif
    times 4 - ($ - %%insn_00406ccb) db 0
    %%insn_00406ccf:
    mov dx,[ebp-0xc] ; 00406CCF 668B55F4
    %if ($ - %%insn_00406ccf) > 4
        %error "LONG_00406CCF"
    %endif
    times 4 - ($ - %%insn_00406ccf) db 0
    %%insn_00406cd3:
    mov [ebp-0x10],dx ; 00406CD3 668955F0
    %if ($ - %%insn_00406cd3) > 4
        %error "LONG_00406CD3"
    %endif
    times 4 - ($ - %%insn_00406cd3) db 0
    %%insn_00406cd7:
    jmp 0x406b89 ; 00406CD7 E9ADFEFFFF
    %if ($ - %%insn_00406cd7) > 5
        %error "LONG_00406CD7"
    %endif
    times 5 - ($ - %%insn_00406cd7) db 0
    %%insn_00406cdc:
    mov ax,[ebp-0x1c] ; 00406CDC 668B45E4
    %if ($ - %%insn_00406cdc) > 4
        %error "LONG_00406CDC"
    %endif
    times 4 - ($ - %%insn_00406cdc) db 0
    %%insn_00406ce0:
    mov [0x41f4c0],ax ; 00406CE0 66A3C0F44100
    %if ($ - %%insn_00406ce0) > 6
        %error "LONG_00406CE0"
    %endif
    times 6 - ($ - %%insn_00406ce0) db 0
    %%insn_00406ce6:
    mov cx,[ebp-0x18] ; 00406CE6 668B4DE8
    %if ($ - %%insn_00406ce6) > 4
        %error "LONG_00406CE6"
    %endif
    times 4 - ($ - %%insn_00406ce6) db 0
    %%insn_00406cea:
    mov [0x41f4c4],cx ; 00406CEA 66890DC4F44100
    %if ($ - %%insn_00406cea) > 7
        %error "LONG_00406CEA"
    %endif
    times 7 - ($ - %%insn_00406cea) db 0
    %%insn_00406cf1:
    mov dx,[ebp-0x4] ; 00406CF1 668B55FC
    %if ($ - %%insn_00406cf1) > 4
        %error "LONG_00406CF1"
    %endif
    times 4 - ($ - %%insn_00406cf1) db 0
    %%insn_00406cf5:
    mov [0x41f4c8],dx ; 00406CF5 668915C8F44100
    %if ($ - %%insn_00406cf5) > 7
        %error "LONG_00406CF5"
    %endif
    times 7 - ($ - %%insn_00406cf5) db 0
    db 0x33, 0xC0 ; 00406CFC 33C0 | xor eax,eax | encoding preserved
    %%insn_00406cfe:
    mov ax,[0x41f4c0] ; 00406CFE 66A1C0F44100
    %if ($ - %%insn_00406cfe) > 6
        %error "LONG_00406CFE"
    %endif
    times 6 - ($ - %%insn_00406cfe) db 0
    %%insn_00406d04:
    shl eax,byte 0x8 ; 00406D04 C1E008
    %if ($ - %%insn_00406d04) > 3
        %error "LONG_00406D04"
    %endif
    times 3 - ($ - %%insn_00406d04) db 0
    db 0x33, 0xC9 ; 00406D07 33C9 | xor ecx,ecx | encoding preserved
    %%insn_00406d09:
    mov cx,[0x41f4c4] ; 00406D09 668B0DC4F44100
    %if ($ - %%insn_00406d09) > 7
        %error "LONG_00406D09"
    %endif
    times 7 - ($ - %%insn_00406d09) db 0
    db 0x0B, 0xC1 ; 00406D10 0BC1 | or eax,ecx | encoding preserved
    db 0x8B, 0xE5 ; 00406D12 8BE5 | mov esp,ebp | encoding preserved
    %%insn_00406d14:
    pop ebp ; 00406D14 5D
    %if ($ - %%insn_00406d14) > 1
        %error "LONG_00406D14"
    %endif
    times 1 - ($ - %%insn_00406d14) db 0
    %%insn_00406d15:
    ret ; 00406D15 C3
    %if ($ - %%insn_00406d15) > 1
        %error "LONG_00406D15"
    %endif
    times 1 - ($ - %%insn_00406d15) db 0
    %if ($ - %%fragment_start) != 514
        %error "function fragment size drift: 00406B14"
    %endif
%endmacro
