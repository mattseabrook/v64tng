; PE virtual entry 00409B1D
; Ghidra working symbol: FUN_00409b1d
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00409b1d_part_00 0
    %%fragment_start:
func_00409b1d:
    %%insn_00409b1d:
    push ebp ; 00409B1D 55
    %if ($ - %%insn_00409b1d) > 1
        %error "LONG_00409B1D"
    %endif
    times 1 - ($ - %%insn_00409b1d) db 0
    db 0x8B, 0xEC ; 00409B1E 8BEC | mov ebp,esp | encoding preserved
    %%insn_00409b20:
    push dword 0xffffffffffffffff ; 00409B20 6AFF
    %if ($ - %%insn_00409b20) > 2
        %error "LONG_00409B20"
    %endif
    times 2 - ($ - %%insn_00409b20) db 0
    %%insn_00409b22:
    push dword 0x41a058 ; 00409B22 6858A04100
    %if ($ - %%insn_00409b22) > 5
        %error "LONG_00409B22"
    %endif
    times 5 - ($ - %%insn_00409b22) db 0
    %%insn_00409b27:
    push dword 0x40db10 ; 00409B27 6810DB4000
    %if ($ - %%insn_00409b27) > 5
        %error "LONG_00409B27"
    %endif
    times 5 - ($ - %%insn_00409b27) db 0
    %%insn_00409b2c:
    mov eax,[fs:0x0] ; 00409B2C 64A100000000
    %if ($ - %%insn_00409b2c) > 6
        %error "LONG_00409B2C"
    %endif
    times 6 - ($ - %%insn_00409b2c) db 0
    %%insn_00409b32:
    push eax ; 00409B32 50
    %if ($ - %%insn_00409b32) > 1
        %error "LONG_00409B32"
    %endif
    times 1 - ($ - %%insn_00409b32) db 0
    %%insn_00409b33:
    mov [fs:0x0],esp ; 00409B33 64892500000000
    %if ($ - %%insn_00409b33) > 7
        %error "LONG_00409B33"
    %endif
    times 7 - ($ - %%insn_00409b33) db 0
    %%insn_00409b3a:
    add esp,0xfffffffffffffff0 ; 00409B3A 83C4F0
    %if ($ - %%insn_00409b3a) > 3
        %error "LONG_00409B3A"
    %endif
    times 3 - ($ - %%insn_00409b3a) db 0
    %%insn_00409b3d:
    push ebx ; 00409B3D 53
    %if ($ - %%insn_00409b3d) > 1
        %error "LONG_00409B3D"
    %endif
    times 1 - ($ - %%insn_00409b3d) db 0
    %%insn_00409b3e:
    push esi ; 00409B3E 56
    %if ($ - %%insn_00409b3e) > 1
        %error "LONG_00409B3E"
    %endif
    times 1 - ($ - %%insn_00409b3e) db 0
    %%insn_00409b3f:
    push edi ; 00409B3F 57
    %if ($ - %%insn_00409b3f) > 1
        %error "LONG_00409B3F"
    %endif
    times 1 - ($ - %%insn_00409b3f) db 0
    %%insn_00409b40:
    mov [ebp-0x18],esp ; 00409B40 8965E8
    %if ($ - %%insn_00409b40) > 3
        %error "LONG_00409B40"
    %endif
    times 3 - ($ - %%insn_00409b40) db 0
    %%insn_00409b43:
    mov dword [0x420a08],0x1 ; 00409B43 C705080A420001000000
    %if ($ - %%insn_00409b43) > 10
        %error "LONG_00409B43"
    %endif
    times 10 - ($ - %%insn_00409b43) db 0
    %%insn_00409b4d:
    cmp dword [0x42238c],0x0 ; 00409B4D 833D8C23420000
    %if ($ - %%insn_00409b4d) > 7
        %error "LONG_00409B4D"
    %endif
    times 7 - ($ - %%insn_00409b4d) db 0
    %%insn_00409b54:
    jnz short 0x409b60 ; 00409B54 750A
    %if ($ - %%insn_00409b54) > 2
        %error "LONG_00409B54"
    %endif
    times 2 - ($ - %%insn_00409b54) db 0
    %%insn_00409b56:
    mov dword [0x42238c],0x20000 ; 00409B56 C7058C23420000000200
    %if ($ - %%insn_00409b56) > 10
        %error "LONG_00409B56"
    %endif
    times 10 - ($ - %%insn_00409b56) db 0
    %%insn_00409b60:
    cmp dword [0x42238c],0x4000 ; 00409B60 813D8C23420000400000
    %if ($ - %%insn_00409b60) > 10
        %error "LONG_00409B60"
    %endif
    times 10 - ($ - %%insn_00409b60) db 0
    %%insn_00409b6a:
    jnc short 0x409b80 ; 00409B6A 7314
    %if ($ - %%insn_00409b6a) > 2
        %error "LONG_00409B6A"
    %endif
    times 2 - ($ - %%insn_00409b6a) db 0
    %%insn_00409b6c:
    mov eax,[0x42238c] ; 00409B6C A18C234200
    %if ($ - %%insn_00409b6c) > 5
        %error "LONG_00409B6C"
    %endif
    times 5 - ($ - %%insn_00409b6c) db 0
    %%insn_00409b71:
    mov [ebp-0x20],eax ; 00409B71 8945E0
    %if ($ - %%insn_00409b71) > 3
        %error "LONG_00409B71"
    %endif
    times 3 - ($ - %%insn_00409b71) db 0
    %%insn_00409b74:
    mov dword [0x420a08],0x0 ; 00409B74 C705080A420000000000
    %if ($ - %%insn_00409b74) > 10
        %error "LONG_00409B74"
    %endif
    times 10 - ($ - %%insn_00409b74) db 0
    %%insn_00409b7e:
    jmp short 0x409b87 ; 00409B7E EB07
    %if ($ - %%insn_00409b7e) > 2
        %error "LONG_00409B7E"
    %endif
    times 2 - ($ - %%insn_00409b7e) db 0
    %%insn_00409b80:
    mov dword [ebp-0x20],0x4000 ; 00409B80 C745E000400000
    %if ($ - %%insn_00409b80) > 7
        %error "LONG_00409B80"
    %endif
    times 7 - ($ - %%insn_00409b80) db 0
    %%insn_00409b87:
    mov ecx,[ebp+0x8] ; 00409B87 8B4D08
    %if ($ - %%insn_00409b87) > 3
        %error "LONG_00409B87"
    %endif
    times 3 - ($ - %%insn_00409b87) db 0
    %%insn_00409b8a:
    mov [0x4209fc],ecx ; 00409B8A 890DFC094200
    %if ($ - %%insn_00409b8a) > 6
        %error "LONG_00409B8A"
    %endif
    times 6 - ($ - %%insn_00409b8a) db 0
    %%insn_00409b90:
    mov dword [0x41f5ec],0x0 ; 00409B90 C705ECF5410000000000
    %if ($ - %%insn_00409b90) > 10
        %error "LONG_00409B90"
    %endif
    times 10 - ($ - %%insn_00409b90) db 0
    %%insn_00409b9a:
    mov edx,[ebp+0xc] ; 00409B9A 8B550C
    %if ($ - %%insn_00409b9a) > 3
        %error "LONG_00409B9A"
    %endif
    times 3 - ($ - %%insn_00409b9a) db 0
    %%insn_00409b9d:
    and edx,0xffff ; 00409B9D 81E2FFFF0000
    %if ($ - %%insn_00409b9d) > 6
        %error "LONG_00409B9D"
    %endif
    times 6 - ($ - %%insn_00409b9d) db 0
    %%insn_00409ba3:
    test edx,edx ; 00409BA3 85D2
    %if ($ - %%insn_00409ba3) > 2
        %error "LONG_00409BA3"
    %endif
    times 2 - ($ - %%insn_00409ba3) db 0
    %%insn_00409ba5:
    jz 0x409c54 ; 00409BA5 0F84A9000000
    %if ($ - %%insn_00409ba5) > 6
        %error "LONG_00409BA5"
    %endif
    times 6 - ($ - %%insn_00409ba5) db 0
    %%insn_00409bab:
    mov dword [ebp-0x20],0xfff0 ; 00409BAB C745E0F0FF0000
    %if ($ - %%insn_00409bab) > 7
        %error "LONG_00409BAB"
    %endif
    times 7 - ($ - %%insn_00409bab) db 0
    %%insn_00409bb2:
    mov eax,[ebp-0x20] ; 00409BB2 8B45E0
    %if ($ - %%insn_00409bb2) > 3
        %error "LONG_00409BB2"
    %endif
    times 3 - ($ - %%insn_00409bb2) db 0
    %%insn_00409bb5:
    cmp eax,[0x42238c] ; 00409BB5 3B058C234200
    %if ($ - %%insn_00409bb5) > 6
        %error "LONG_00409BB5"
    %endif
    times 6 - ($ - %%insn_00409bb5) db 0
    %%insn_00409bbb:
    jna short 0x409bd0 ; 00409BBB 7613
    %if ($ - %%insn_00409bbb) > 2
        %error "LONG_00409BBB"
    %endif
    times 2 - ($ - %%insn_00409bbb) db 0
    %%insn_00409bbd:
    mov ecx,[0x42238c] ; 00409BBD 8B0D8C234200
    %if ($ - %%insn_00409bbd) > 6
        %error "LONG_00409BBD"
    %endif
    times 6 - ($ - %%insn_00409bbd) db 0
    %%insn_00409bc3:
    mov [ebp-0x20],ecx ; 00409BC3 894DE0
    %if ($ - %%insn_00409bc3) > 3
        %error "LONG_00409BC3"
    %endif
    times 3 - ($ - %%insn_00409bc3) db 0
    %%insn_00409bc6:
    mov dword [0x420a08],0x0 ; 00409BC6 C705080A420000000000
    %if ($ - %%insn_00409bc6) > 10
        %error "LONG_00409BC6"
    %endif
    times 10 - ($ - %%insn_00409bc6) db 0
    %%insn_00409bd0:
    mov edx,[ebp+0xc] ; 00409BD0 8B550C
    %if ($ - %%insn_00409bd0) > 3
        %error "LONG_00409BD0"
    %endif
    times 3 - ($ - %%insn_00409bd0) db 0
    %%insn_00409bd3:
    and edx,0xffff ; 00409BD3 81E2FFFF0000
    %if ($ - %%insn_00409bd3) > 6
        %error "LONG_00409BD3"
    %endif
    times 6 - ($ - %%insn_00409bd3) db 0
    %%insn_00409bd9:
    push edx ; 00409BD9 52
    %if ($ - %%insn_00409bd9) > 1
        %error "LONG_00409BD9"
    %endif
    times 1 - ($ - %%insn_00409bd9) db 0
    %%insn_00409bda:
    call 0x40a39f ; 00409BDA E8C0070000
    %if ($ - %%insn_00409bda) > 5
        %error "LONG_00409BDA"
    %endif
    times 5 - ($ - %%insn_00409bda) db 0
    %%insn_00409bdf:
    add esp,0x4 ; 00409BDF 83C404
    %if ($ - %%insn_00409bdf) > 3
        %error "LONG_00409BDF"
    %endif
    times 3 - ($ - %%insn_00409bdf) db 0
    %%insn_00409be2:
    add eax,0x10 ; 00409BE2 83C010
    %if ($ - %%insn_00409be2) > 3
        %error "LONG_00409BE2"
    %endif
    times 3 - ($ - %%insn_00409be2) db 0
    %%insn_00409be5:
    mov [ebp-0x1c],eax ; 00409BE5 8945E4
    %if ($ - %%insn_00409be5) > 3
        %error "LONG_00409BE5"
    %endif
    times 3 - ($ - %%insn_00409be5) db 0
    %%insn_00409be8:
    mov eax,[ebp-0x20] ; 00409BE8 8B45E0
    %if ($ - %%insn_00409be8) > 3
        %error "LONG_00409BE8"
    %endif
    times 3 - ($ - %%insn_00409be8) db 0
    %%insn_00409beb:
    push eax ; 00409BEB 50
    %if ($ - %%insn_00409beb) > 1
        %error "LONG_00409BEB"
    %endif
    times 1 - ($ - %%insn_00409beb) db 0
    %%insn_00409bec:
    mov ecx,[ebp-0x1c] ; 00409BEC 8B4DE4
    %if ($ - %%insn_00409bec) > 3
        %error "LONG_00409BEC"
    %endif
    times 3 - ($ - %%insn_00409bec) db 0
    %%insn_00409bef:
    push ecx ; 00409BEF 51
    %if ($ - %%insn_00409bef) > 1
        %error "LONG_00409BEF"
    %endif
    times 1 - ($ - %%insn_00409bef) db 0
    %%insn_00409bf0:
    mov edx,[0x41f5f4] ; 00409BF0 8B15F4F54100
    %if ($ - %%insn_00409bf0) > 6
        %error "LONG_00409BF0"
    %endif
    times 6 - ($ - %%insn_00409bf0) db 0
    %%insn_00409bf6:
    push edx ; 00409BF6 52
    %if ($ - %%insn_00409bf6) > 1
        %error "LONG_00409BF6"
    %endif
    times 1 - ($ - %%insn_00409bf6) db 0
    %%insn_00409bf7:
    call 0x40ca10 ; 00409BF7 E8142E0000
    %if ($ - %%insn_00409bf7) > 5
        %error "LONG_00409BF7"
    %endif
    times 5 - ($ - %%insn_00409bf7) db 0
    %%insn_00409bfc:
    add esp,0xc ; 00409BFC 83C40C
    %if ($ - %%insn_00409bfc) > 3
        %error "LONG_00409BFC"
    %endif
    times 3 - ($ - %%insn_00409bfc) db 0
    %%insn_00409bff:
    cmp dword [0x420a08],0x0 ; 00409BFF 833D080A420000
    %if ($ - %%insn_00409bff) > 7
        %error "LONG_00409BFF"
    %endif
    times 7 - ($ - %%insn_00409bff) db 0
    %%insn_00409c06:
    jz short 0x409c32 ; 00409C06 742A
    %if ($ - %%insn_00409c06) > 2
        %error "LONG_00409C06"
    %endif
    times 2 - ($ - %%insn_00409c06) db 0
    db 0x33, 0xC0 ; 00409C08 33C0 | xor eax,eax | encoding preserved
    %%insn_00409c0a:
    mov ax,[0x421422] ; 00409C0A 66A122144200
    %if ($ - %%insn_00409c0a) > 6
        %error "LONG_00409C0A"
    %endif
    times 6 - ($ - %%insn_00409c0a) db 0
    %%insn_00409c10:
    and eax,0x2 ; 00409C10 83E002
    %if ($ - %%insn_00409c10) > 3
        %error "LONG_00409C10"
    %endif
    times 3 - ($ - %%insn_00409c10) db 0
    %%insn_00409c13:
    test eax,eax ; 00409C13 85C0
    %if ($ - %%insn_00409c13) > 2
        %error "LONG_00409C13"
    %endif
    times 2 - ($ - %%insn_00409c13) db 0
    %%insn_00409c15:
    jnz short 0x409c32 ; 00409C15 751B
    %if ($ - %%insn_00409c15) > 2
        %error "LONG_00409C15"
    %endif
    times 2 - ($ - %%insn_00409c15) db 0
    %%insn_00409c17:
    mov ecx,[ebp+0xc] ; 00409C17 8B4D0C
    %if ($ - %%insn_00409c17) > 3
        %error "LONG_00409C17"
    %endif
    times 3 - ($ - %%insn_00409c17) db 0
    %%insn_00409c1a:
    and ecx,0xffff ; 00409C1A 81E1FFFF0000
    %if ($ - %%insn_00409c1a) > 6
        %error "LONG_00409C1A"
    %endif
    times 6 - ($ - %%insn_00409c1a) db 0
    %%insn_00409c20:
    push ecx ; 00409C20 51
    %if ($ - %%insn_00409c20) > 1
        %error "LONG_00409C20"
    %endif
    times 1 - ($ - %%insn_00409c20) db 0
    %%insn_00409c21:
    mov edx,[0x4209fc] ; 00409C21 8B15FC094200
    %if ($ - %%insn_00409c21) > 6
        %error "LONG_00409C21"
    %endif
    times 6 - ($ - %%insn_00409c21) db 0
    %%insn_00409c27:
    push edx ; 00409C27 52
    %if ($ - %%insn_00409c27) > 1
        %error "LONG_00409C27"
    %endif
    times 1 - ($ - %%insn_00409c27) db 0
    %%insn_00409c28:
    call 0x40a3ee ; 00409C28 E8C1070000
    %if ($ - %%insn_00409c28) > 5
        %error "LONG_00409C28"
    %endif
    times 5 - ($ - %%insn_00409c28) db 0
    %%insn_00409c2d:
    add esp,0x8 ; 00409C2D 83C408
    %if ($ - %%insn_00409c2d) > 3
        %error "LONG_00409C2D"
    %endif
    times 3 - ($ - %%insn_00409c2d) db 0
    %%insn_00409c30:
    jmp short 0x409c52 ; 00409C30 EB20
    %if ($ - %%insn_00409c30) > 2
        %error "LONG_00409C30"
    %endif
    times 2 - ($ - %%insn_00409c30) db 0
    %%insn_00409c32:
    cmp dword [0x420a08],0x0 ; 00409C32 833D080A420000
    %if ($ - %%insn_00409c32) > 7
        %error "LONG_00409C32"
    %endif
    times 7 - ($ - %%insn_00409c32) db 0
    %%insn_00409c39:
    jz short 0x409c48 ; 00409C39 740D
    %if ($ - %%insn_00409c39) > 2
        %error "LONG_00409C39"
    %endif
    times 2 - ($ - %%insn_00409c39) db 0
    %%insn_00409c3b:
    mov eax,[ebp+0xc] ; 00409C3B 8B450C
    %if ($ - %%insn_00409c3b) > 3
        %error "LONG_00409C3B"
    %endif
    times 3 - ($ - %%insn_00409c3b) db 0
    %%insn_00409c3e:
    and eax,0xffff ; 00409C3E 25FFFF0000
    %if ($ - %%insn_00409c3e) > 5
        %error "LONG_00409C3E"
    %endif
    times 5 - ($ - %%insn_00409c3e) db 0
    %%insn_00409c43:
    mov [0x41f5ec],eax ; 00409C43 A3ECF54100
    %if ($ - %%insn_00409c43) > 5
        %error "LONG_00409C43"
    %endif
    times 5 - ($ - %%insn_00409c43) db 0
    %%insn_00409c48:
    mov dword [0x420a08],0x0 ; 00409C48 C705080A420000000000
    %if ($ - %%insn_00409c48) > 10
        %error "LONG_00409C48"
    %endif
    times 10 - ($ - %%insn_00409c48) db 0
    %%insn_00409c52:
    jmp short 0x409c98 ; 00409C52 EB44
    %if ($ - %%insn_00409c52) > 2
        %error "LONG_00409C52"
    %endif
    times 2 - ($ - %%insn_00409c52) db 0
    %%insn_00409c54:
    mov dword [ebp-0x4],0x0 ; 00409C54 C745FC00000000
    %if ($ - %%insn_00409c54) > 7
        %error "LONG_00409C54"
    %endif
    times 7 - ($ - %%insn_00409c54) db 0
    %%insn_00409c5b:
    mov ecx,[ebp-0x20] ; 00409C5B 8B4DE0
    %if ($ - %%insn_00409c5b) > 3
        %error "LONG_00409C5B"
    %endif
    times 3 - ($ - %%insn_00409c5b) db 0
    %%insn_00409c5e:
    push ecx ; 00409C5E 51
    %if ($ - %%insn_00409c5e) > 1
        %error "LONG_00409C5E"
    %endif
    times 1 - ($ - %%insn_00409c5e) db 0
    %%insn_00409c5f:
    mov edx,[0x41f5f4] ; 00409C5F 8B15F4F54100
    %if ($ - %%insn_00409c5f) > 6
        %error "LONG_00409C5F"
    %endif
    times 6 - ($ - %%insn_00409c5f) db 0
    %%insn_00409c65:
    push edx ; 00409C65 52
    %if ($ - %%insn_00409c65) > 1
        %error "LONG_00409C65"
    %endif
    times 1 - ($ - %%insn_00409c65) db 0
    %%insn_00409c66:
    mov eax,[0x4209fc] ; 00409C66 A1FC094200
    %if ($ - %%insn_00409c66) > 5
        %error "LONG_00409C66"
    %endif
    times 5 - ($ - %%insn_00409c66) db 0
    %%insn_00409c6b:
    push eax ; 00409C6B 50
    %if ($ - %%insn_00409c6b) > 1
        %error "LONG_00409C6B"
    %endif
    times 1 - ($ - %%insn_00409c6b) db 0
    %%insn_00409c6c:
    call dword near [0x424594] ; 00409C6C FF1594454200
    %if ($ - %%insn_00409c6c) > 6
        %error "LONG_00409C6C"
    %endif
    times 6 - ($ - %%insn_00409c6c) db 0
    %%insn_00409c72:
    mov dword [ebp-0x4],0xffffffff ; 00409C72 C745FCFFFFFFFF
    %if ($ - %%insn_00409c72) > 7
        %error "LONG_00409C72"
    %endif
    times 7 - ($ - %%insn_00409c72) db 0
    %%insn_00409c79:
    jmp short 0x409c98 ; 00409C79 EB1D
    %if ($ - %%insn_00409c79) > 2
        %error "LONG_00409C79"
    %endif
    times 2 - ($ - %%insn_00409c79) db 0
    %if ($ - %%fragment_start) != 350
        %error "function fragment size drift: 00409B1D"
    %endif
%endmacro

%macro emit_func_00409b1d_part_01 0
    %%fragment_start:
    %%insn_00409c98:
    cmp dword [0x420a08],0x0 ; 00409C98 833D080A420000
    %if ($ - %%insn_00409c98) > 7
        %error "LONG_00409C98"
    %endif
    times 7 - ($ - %%insn_00409c98) db 0
    %%insn_00409c9f:
    jnz short 0x409cc1 ; 00409C9F 7520
    %if ($ - %%insn_00409c9f) > 2
        %error "LONG_00409C9F"
    %endif
    times 2 - ($ - %%insn_00409c9f) db 0
    %%insn_00409ca1:
    mov ecx,0x20000 ; 00409CA1 B900000200
    %if ($ - %%insn_00409ca1) > 5
        %error "LONG_00409CA1"
    %endif
    times 5 - ($ - %%insn_00409ca1) db 0
    %%insn_00409ca6:
    sub ecx,[ebp-0x20] ; 00409CA6 2B4DE0
    %if ($ - %%insn_00409ca6) > 3
        %error "LONG_00409CA6"
    %endif
    times 3 - ($ - %%insn_00409ca6) db 0
    %%insn_00409ca9:
    push ecx ; 00409CA9 51
    %if ($ - %%insn_00409ca9) > 1
        %error "LONG_00409CA9"
    %endif
    times 1 - ($ - %%insn_00409ca9) db 0
    %%insn_00409caa:
    push dword 0xff ; 00409CAA 68FF000000
    %if ($ - %%insn_00409caa) > 5
        %error "LONG_00409CAA"
    %endif
    times 5 - ($ - %%insn_00409caa) db 0
    %%insn_00409caf:
    mov edx,[0x41f5f4] ; 00409CAF 8B15F4F54100
    %if ($ - %%insn_00409caf) > 6
        %error "LONG_00409CAF"
    %endif
    times 6 - ($ - %%insn_00409caf) db 0
    %%insn_00409cb5:
    add edx,[ebp-0x20] ; 00409CB5 0355E0
    %if ($ - %%insn_00409cb5) > 3
        %error "LONG_00409CB5"
    %endif
    times 3 - ($ - %%insn_00409cb5) db 0
    %%insn_00409cb8:
    push edx ; 00409CB8 52
    %if ($ - %%insn_00409cb8) > 1
        %error "LONG_00409CB8"
    %endif
    times 1 - ($ - %%insn_00409cb8) db 0
    %%insn_00409cb9:
    call 0x40d470 ; 00409CB9 E8B2370000
    %if ($ - %%insn_00409cb9) > 5
        %error "LONG_00409CB9"
    %endif
    times 5 - ($ - %%insn_00409cb9) db 0
    %%insn_00409cbe:
    add esp,0xc ; 00409CBE 83C40C
    %if ($ - %%insn_00409cbe) > 3
        %error "LONG_00409CBE"
    %endif
    times 3 - ($ - %%insn_00409cbe) db 0
    %%insn_00409cc1:
    mov dword [0x41f5e8],0x0 ; 00409CC1 C705E8F5410000000000
    %if ($ - %%insn_00409cc1) > 10
        %error "LONG_00409CC1"
    %endif
    times 10 - ($ - %%insn_00409cc1) db 0
    %%insn_00409ccb:
    mov dword [0x420a1c],0x0 ; 00409CCB C7051C0A420000000000
    %if ($ - %%insn_00409ccb) > 10
        %error "LONG_00409CCB"
    %endif
    times 10 - ($ - %%insn_00409ccb) db 0
    %%insn_00409cd5:
    mov dword [0x420a20],0x0 ; 00409CD5 C705200A420000000000
    %if ($ - %%insn_00409cd5) > 10
        %error "LONG_00409CD5"
    %endif
    times 10 - ($ - %%insn_00409cd5) db 0
    %%insn_00409cdf:
    mov eax,[ebp-0x20] ; 00409CDF 8B45E0
    %if ($ - %%insn_00409cdf) > 3
        %error "LONG_00409CDF"
    %endif
    times 3 - ($ - %%insn_00409cdf) db 0
    %%insn_00409ce2:
    mov [0x420a10],eax ; 00409CE2 A3100A4200
    %if ($ - %%insn_00409ce2) > 5
        %error "LONG_00409CE2"
    %endif
    times 5 - ($ - %%insn_00409ce2) db 0
    %%insn_00409ce7:
    mov ecx,[ebp-0x20] ; 00409CE7 8B4DE0
    %if ($ - %%insn_00409ce7) > 3
        %error "LONG_00409CE7"
    %endif
    times 3 - ($ - %%insn_00409ce7) db 0
    %%insn_00409cea:
    mov [0x41f5f0],ecx ; 00409CEA 890DF0F54100
    %if ($ - %%insn_00409cea) > 6
        %error "LONG_00409CEA"
    %endif
    times 6 - ($ - %%insn_00409cea) db 0
    %%insn_00409cf0:
    cmp dword [ebp-0x20],0x20000 ; 00409CF0 817DE000000200
    %if ($ - %%insn_00409cf0) > 7
        %error "LONG_00409CF0"
    %endif
    times 7 - ($ - %%insn_00409cf0) db 0
    %%insn_00409cf7:
    jnz short 0x409d03 ; 00409CF7 750A
    %if ($ - %%insn_00409cf7) > 2
        %error "LONG_00409CF7"
    %endif
    times 2 - ($ - %%insn_00409cf7) db 0
    %%insn_00409cf9:
    mov dword [0x41f5f0],0x0 ; 00409CF9 C705F0F5410000000000
    %if ($ - %%insn_00409cf9) > 10
        %error "LONG_00409CF9"
    %endif
    times 10 - ($ - %%insn_00409cf9) db 0
    %%insn_00409d03:
    mov dword [0x4209f8],0x0 ; 00409D03 C705F809420000000000
    %if ($ - %%insn_00409d03) > 10
        %error "LONG_00409D03"
    %endif
    times 10 - ($ - %%insn_00409d03) db 0
    %%insn_00409d0d:
    mov ecx,[ebp-0x10] ; 00409D0D 8B4DF0
    %if ($ - %%insn_00409d0d) > 3
        %error "LONG_00409D0D"
    %endif
    times 3 - ($ - %%insn_00409d0d) db 0
    %%insn_00409d10:
    mov [fs:0x0],ecx ; 00409D10 64890D00000000
    %if ($ - %%insn_00409d10) > 7
        %error "LONG_00409D10"
    %endif
    times 7 - ($ - %%insn_00409d10) db 0
    %%insn_00409d17:
    pop edi ; 00409D17 5F
    %if ($ - %%insn_00409d17) > 1
        %error "LONG_00409D17"
    %endif
    times 1 - ($ - %%insn_00409d17) db 0
    %%insn_00409d18:
    pop esi ; 00409D18 5E
    %if ($ - %%insn_00409d18) > 1
        %error "LONG_00409D18"
    %endif
    times 1 - ($ - %%insn_00409d18) db 0
    %%insn_00409d19:
    pop ebx ; 00409D19 5B
    %if ($ - %%insn_00409d19) > 1
        %error "LONG_00409D19"
    %endif
    times 1 - ($ - %%insn_00409d19) db 0
    db 0x8B, 0xE5 ; 00409D1A 8BE5 | mov esp,ebp | encoding preserved
    %%insn_00409d1c:
    pop ebp ; 00409D1C 5D
    %if ($ - %%insn_00409d1c) > 1
        %error "LONG_00409D1C"
    %endif
    times 1 - ($ - %%insn_00409d1c) db 0
    %%insn_00409d1d:
    ret ; 00409D1D C3
    %if ($ - %%insn_00409d1d) > 1
        %error "LONG_00409D1D"
    %endif
    times 1 - ($ - %%insn_00409d1d) db 0
    %if ($ - %%fragment_start) != 134
        %error "function fragment size drift: 00409C98"
    %endif
%endmacro
