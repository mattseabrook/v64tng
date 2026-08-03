; PE virtual entry 00409F1A
; Ghidra working symbol: FUN_00409f1a
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00409f1a_part_00 0
    %%fragment_start:
func_00409f1a:
    %%insn_00409f1a:
    push ebp ; 00409F1A 55
    %if ($ - %%insn_00409f1a) > 1
        %error "LONG_00409F1A"
    %endif
    times 1 - ($ - %%insn_00409f1a) db 0
    db 0x8B, 0xEC ; 00409F1B 8BEC | mov ebp,esp | encoding preserved
    %%insn_00409f1d:
    push dword 0xffffffffffffffff ; 00409F1D 6AFF
    %if ($ - %%insn_00409f1d) > 2
        %error "LONG_00409F1D"
    %endif
    times 2 - ($ - %%insn_00409f1d) db 0
    %%insn_00409f1f:
    push dword 0x41a078 ; 00409F1F 6878A04100
    %if ($ - %%insn_00409f1f) > 5
        %error "LONG_00409F1F"
    %endif
    times 5 - ($ - %%insn_00409f1f) db 0
    %%insn_00409f24:
    push dword 0x40db10 ; 00409F24 6810DB4000
    %if ($ - %%insn_00409f24) > 5
        %error "LONG_00409F24"
    %endif
    times 5 - ($ - %%insn_00409f24) db 0
    %%insn_00409f29:
    mov eax,[fs:0x0] ; 00409F29 64A100000000
    %if ($ - %%insn_00409f29) > 6
        %error "LONG_00409F29"
    %endif
    times 6 - ($ - %%insn_00409f29) db 0
    %%insn_00409f2f:
    push eax ; 00409F2F 50
    %if ($ - %%insn_00409f2f) > 1
        %error "LONG_00409F2F"
    %endif
    times 1 - ($ - %%insn_00409f2f) db 0
    %%insn_00409f30:
    mov [fs:0x0],esp ; 00409F30 64892500000000
    %if ($ - %%insn_00409f30) > 7
        %error "LONG_00409F30"
    %endif
    times 7 - ($ - %%insn_00409f30) db 0
    %%insn_00409f37:
    add esp,0xffffffffffffffe8 ; 00409F37 83C4E8
    %if ($ - %%insn_00409f37) > 3
        %error "LONG_00409F37"
    %endif
    times 3 - ($ - %%insn_00409f37) db 0
    %%insn_00409f3a:
    push ebx ; 00409F3A 53
    %if ($ - %%insn_00409f3a) > 1
        %error "LONG_00409F3A"
    %endif
    times 1 - ($ - %%insn_00409f3a) db 0
    %%insn_00409f3b:
    push esi ; 00409F3B 56
    %if ($ - %%insn_00409f3b) > 1
        %error "LONG_00409F3B"
    %endif
    times 1 - ($ - %%insn_00409f3b) db 0
    %%insn_00409f3c:
    push edi ; 00409F3C 57
    %if ($ - %%insn_00409f3c) > 1
        %error "LONG_00409F3C"
    %endif
    times 1 - ($ - %%insn_00409f3c) db 0
    %%insn_00409f3d:
    mov [ebp-0x18],esp ; 00409F3D 8965E8
    %if ($ - %%insn_00409f3d) > 3
        %error "LONG_00409F3D"
    %endif
    times 3 - ($ - %%insn_00409f3d) db 0
    %%insn_00409f40:
    mov dword [ebp-0x24],0x0 ; 00409F40 C745DC00000000
    %if ($ - %%insn_00409f40) > 7
        %error "LONG_00409F40"
    %endif
    times 7 - ($ - %%insn_00409f40) db 0
    %%insn_00409f47:
    jmp short 0x409f52 ; 00409F47 EB09
    %if ($ - %%insn_00409f47) > 2
        %error "LONG_00409F47"
    %endif
    times 2 - ($ - %%insn_00409f47) db 0
    %%insn_00409f49:
    mov eax,[ebp-0x24] ; 00409F49 8B45DC
    %if ($ - %%insn_00409f49) > 3
        %error "LONG_00409F49"
    %endif
    times 3 - ($ - %%insn_00409f49) db 0
    %%insn_00409f4c:
    add eax,0x1 ; 00409F4C 83C001
    %if ($ - %%insn_00409f4c) > 3
        %error "LONG_00409F4C"
    %endif
    times 3 - ($ - %%insn_00409f4c) db 0
    %%insn_00409f4f:
    mov [ebp-0x24],eax ; 00409F4F 8945DC
    %if ($ - %%insn_00409f4f) > 3
        %error "LONG_00409F4F"
    %endif
    times 3 - ($ - %%insn_00409f4f) db 0
    %%insn_00409f52:
    mov ecx,[ebp-0x24] ; 00409F52 8B4DDC
    %if ($ - %%insn_00409f52) > 3
        %error "LONG_00409F52"
    %endif
    times 3 - ($ - %%insn_00409f52) db 0
    %%insn_00409f55:
    cmp ecx,[0x420a04] ; 00409F55 3B0D040A4200
    %if ($ - %%insn_00409f55) > 6
        %error "LONG_00409F55"
    %endif
    times 6 - ($ - %%insn_00409f55) db 0
    %%insn_00409f5b:
    jnl short 0x409f70 ; 00409F5B 7D13
    %if ($ - %%insn_00409f5b) > 2
        %error "LONG_00409F5B"
    %endif
    times 2 - ($ - %%insn_00409f5b) db 0
    %%insn_00409f5d:
    mov edx,[ebp-0x24] ; 00409F5D 8B55DC
    %if ($ - %%insn_00409f5d) > 3
        %error "LONG_00409F5D"
    %endif
    times 3 - ($ - %%insn_00409f5d) db 0
    %%insn_00409f60:
    imul edx,edx,0x14 ; 00409F60 6BD214
    %if ($ - %%insn_00409f60) > 3
        %error "LONG_00409F60"
    %endif
    times 3 - ($ - %%insn_00409f60) db 0
    %%insn_00409f63:
    cmp dword [edx+0x41f608],0x0 ; 00409F63 83BA08F6410000
    %if ($ - %%insn_00409f63) > 7
        %error "LONG_00409F63"
    %endif
    times 7 - ($ - %%insn_00409f63) db 0
    %%insn_00409f6a:
    jnz short 0x409f6e ; 00409F6A 7502
    %if ($ - %%insn_00409f6a) > 2
        %error "LONG_00409F6A"
    %endif
    times 2 - ($ - %%insn_00409f6a) db 0
    %%insn_00409f6c:
    jmp short 0x409f70 ; 00409F6C EB02
    %if ($ - %%insn_00409f6c) > 2
        %error "LONG_00409F6C"
    %endif
    times 2 - ($ - %%insn_00409f6c) db 0
    %%insn_00409f6e:
    jmp short 0x409f49 ; 00409F6E EBD9
    %if ($ - %%insn_00409f6e) > 2
        %error "LONG_00409F6E"
    %endif
    times 2 - ($ - %%insn_00409f6e) db 0
    %%insn_00409f70:
    cmp dword [ebp-0x24],0x100 ; 00409F70 817DDC00010000
    %if ($ - %%insn_00409f70) > 7
        %error "LONG_00409F70"
    %endif
    times 7 - ($ - %%insn_00409f70) db 0
    %%insn_00409f77:
    jnz 0x40a04a ; 00409F77 0F85CD000000
    %if ($ - %%insn_00409f77) > 6
        %error "LONG_00409F77"
    %endif
    times 6 - ($ - %%insn_00409f77) db 0
    %%insn_00409f7d:
    mov dword [ebp-0x28],0x40000000 ; 00409F7D C745D800000040
    %if ($ - %%insn_00409f7d) > 7
        %error "LONG_00409F7D"
    %endif
    times 7 - ($ - %%insn_00409f7d) db 0
    %%insn_00409f84:
    mov dword [ebp-0x1c],0xffffffff ; 00409F84 C745E4FFFFFFFF
    %if ($ - %%insn_00409f84) > 7
        %error "LONG_00409F84"
    %endif
    times 7 - ($ - %%insn_00409f84) db 0
    %%insn_00409f8b:
    mov dword [ebp-0x24],0x0 ; 00409F8B C745DC00000000
    %if ($ - %%insn_00409f8b) > 7
        %error "LONG_00409F8B"
    %endif
    times 7 - ($ - %%insn_00409f8b) db 0
    %%insn_00409f92:
    jmp short 0x409f9d ; 00409F92 EB09
    %if ($ - %%insn_00409f92) > 2
        %error "LONG_00409F92"
    %endif
    times 2 - ($ - %%insn_00409f92) db 0
    %%insn_00409f94:
    mov eax,[ebp-0x24] ; 00409F94 8B45DC
    %if ($ - %%insn_00409f94) > 3
        %error "LONG_00409F94"
    %endif
    times 3 - ($ - %%insn_00409f94) db 0
    %%insn_00409f97:
    add eax,0x1 ; 00409F97 83C001
    %if ($ - %%insn_00409f97) > 3
        %error "LONG_00409F97"
    %endif
    times 3 - ($ - %%insn_00409f97) db 0
    %%insn_00409f9a:
    mov [ebp-0x24],eax ; 00409F9A 8945DC
    %if ($ - %%insn_00409f9a) > 3
        %error "LONG_00409F9A"
    %endif
    times 3 - ($ - %%insn_00409f9a) db 0
    %%insn_00409f9d:
    cmp dword [ebp-0x24],0x100 ; 00409F9D 817DDC00010000
    %if ($ - %%insn_00409f9d) > 7
        %error "LONG_00409F9D"
    %endif
    times 7 - ($ - %%insn_00409f9d) db 0
    %%insn_00409fa4:
    jnl short 0x409fdd ; 00409FA4 7D37
    %if ($ - %%insn_00409fa4) > 2
        %error "LONG_00409FA4"
    %endif
    times 2 - ($ - %%insn_00409fa4) db 0
    %%insn_00409fa6:
    mov ecx,[ebp-0x24] ; 00409FA6 8B4DDC
    %if ($ - %%insn_00409fa6) > 3
        %error "LONG_00409FA6"
    %endif
    times 3 - ($ - %%insn_00409fa6) db 0
    %%insn_00409fa9:
    imul ecx,ecx,0x14 ; 00409FA9 6BC914
    %if ($ - %%insn_00409fa9) > 3
        %error "LONG_00409FA9"
    %endif
    times 3 - ($ - %%insn_00409fa9) db 0
    %%insn_00409fac:
    cmp dword [ecx+0x41f608],0x0 ; 00409FAC 83B908F6410000
    %if ($ - %%insn_00409fac) > 7
        %error "LONG_00409FAC"
    %endif
    times 7 - ($ - %%insn_00409fac) db 0
    %%insn_00409fb3:
    jz short 0x409fdb ; 00409FB3 7426
    %if ($ - %%insn_00409fb3) > 2
        %error "LONG_00409FB3"
    %endif
    times 2 - ($ - %%insn_00409fb3) db 0
    %%insn_00409fb5:
    mov edx,[ebp-0x24] ; 00409FB5 8B55DC
    %if ($ - %%insn_00409fb5) > 3
        %error "LONG_00409FB5"
    %endif
    times 3 - ($ - %%insn_00409fb5) db 0
    %%insn_00409fb8:
    imul edx,edx,0x14 ; 00409FB8 6BD214
    %if ($ - %%insn_00409fb8) > 3
        %error "LONG_00409FB8"
    %endif
    times 3 - ($ - %%insn_00409fb8) db 0
    %%insn_00409fbb:
    mov eax,[edx+0x41f5fc] ; 00409FBB 8B82FCF54100
    %if ($ - %%insn_00409fbb) > 6
        %error "LONG_00409FBB"
    %endif
    times 6 - ($ - %%insn_00409fbb) db 0
    %%insn_00409fc1:
    cmp eax,[ebp-0x28] ; 00409FC1 3B45D8
    %if ($ - %%insn_00409fc1) > 3
        %error "LONG_00409FC1"
    %endif
    times 3 - ($ - %%insn_00409fc1) db 0
    %%insn_00409fc4:
    jnc short 0x409fdb ; 00409FC4 7315
    %if ($ - %%insn_00409fc4) > 2
        %error "LONG_00409FC4"
    %endif
    times 2 - ($ - %%insn_00409fc4) db 0
    %%insn_00409fc6:
    mov ecx,[ebp-0x24] ; 00409FC6 8B4DDC
    %if ($ - %%insn_00409fc6) > 3
        %error "LONG_00409FC6"
    %endif
    times 3 - ($ - %%insn_00409fc6) db 0
    %%insn_00409fc9:
    imul ecx,ecx,0x14 ; 00409FC9 6BC914
    %if ($ - %%insn_00409fc9) > 3
        %error "LONG_00409FC9"
    %endif
    times 3 - ($ - %%insn_00409fc9) db 0
    %%insn_00409fcc:
    mov edx,[ecx+0x41f5fc] ; 00409FCC 8B91FCF54100
    %if ($ - %%insn_00409fcc) > 6
        %error "LONG_00409FCC"
    %endif
    times 6 - ($ - %%insn_00409fcc) db 0
    %%insn_00409fd2:
    mov [ebp-0x28],edx ; 00409FD2 8955D8
    %if ($ - %%insn_00409fd2) > 3
        %error "LONG_00409FD2"
    %endif
    times 3 - ($ - %%insn_00409fd2) db 0
    %%insn_00409fd5:
    mov eax,[ebp-0x24] ; 00409FD5 8B45DC
    %if ($ - %%insn_00409fd5) > 3
        %error "LONG_00409FD5"
    %endif
    times 3 - ($ - %%insn_00409fd5) db 0
    %%insn_00409fd8:
    mov [ebp-0x1c],eax ; 00409FD8 8945E4
    %if ($ - %%insn_00409fd8) > 3
        %error "LONG_00409FD8"
    %endif
    times 3 - ($ - %%insn_00409fd8) db 0
    %%insn_00409fdb:
    jmp short 0x409f94 ; 00409FDB EBB7
    %if ($ - %%insn_00409fdb) > 2
        %error "LONG_00409FDB"
    %endif
    times 2 - ($ - %%insn_00409fdb) db 0
    %%insn_00409fdd:
    cmp dword [ebp-0x1c],0xffffffffffffffff ; 00409FDD 837DE4FF
    %if ($ - %%insn_00409fdd) > 4
        %error "LONG_00409FDD"
    %endif
    times 4 - ($ - %%insn_00409fdd) db 0
    %%insn_00409fe1:
    jnz short 0x409feb ; 00409FE1 7508
    %if ($ - %%insn_00409fe1) > 2
        %error "LONG_00409FE1"
    %endif
    times 2 - ($ - %%insn_00409fe1) db 0
    %%insn_00409fe3:
    or eax,0xffffffffffffffff ; 00409FE3 83C8FF
    %if ($ - %%insn_00409fe3) > 3
        %error "LONG_00409FE3"
    %endif
    times 3 - ($ - %%insn_00409fe3) db 0
    %%insn_00409fe6:
    jmp 0x40a28e ; 00409FE6 E9A3020000
    %if ($ - %%insn_00409fe6) > 5
        %error "LONG_00409FE6"
    %endif
    times 5 - ($ - %%insn_00409fe6) db 0
    %%insn_00409feb:
    mov ecx,[ebp-0x1c] ; 00409FEB 8B4DE4
    %if ($ - %%insn_00409feb) > 3
        %error "LONG_00409FEB"
    %endif
    times 3 - ($ - %%insn_00409feb) db 0
    %%insn_00409fee:
    imul ecx,ecx,0x14 ; 00409FEE 6BC914
    %if ($ - %%insn_00409fee) > 3
        %error "LONG_00409FEE"
    %endif
    times 3 - ($ - %%insn_00409fee) db 0
    %%insn_00409ff1:
    mov edx,[ecx+0x41f600] ; 00409FF1 8B9100F64100
    %if ($ - %%insn_00409ff1) > 6
        %error "LONG_00409FF1"
    %endif
    times 6 - ($ - %%insn_00409ff1) db 0
    %%insn_00409ff7:
    push edx ; 00409FF7 52
    %if ($ - %%insn_00409ff7) > 1
        %error "LONG_00409FF7"
    %endif
    times 1 - ($ - %%insn_00409ff7) db 0
    %%insn_00409ff8:
    call 0x409f0a ; 00409FF8 E80DFFFFFF
    %if ($ - %%insn_00409ff8) > 5
        %error "LONG_00409FF8"
    %endif
    times 5 - ($ - %%insn_00409ff8) db 0
    %%insn_00409ffd:
    add esp,0x4 ; 00409FFD 83C404
    %if ($ - %%insn_00409ffd) > 3
        %error "LONG_00409FFD"
    %endif
    times 3 - ($ - %%insn_00409ffd) db 0
    %%insn_0040a000:
    mov eax,[ebp-0x1c] ; 0040A000 8B45E4
    %if ($ - %%insn_0040a000) > 3
        %error "LONG_0040A000"
    %endif
    times 3 - ($ - %%insn_0040a000) db 0
    %%insn_0040a003:
    imul eax,eax,0x14 ; 0040A003 6BC014
    %if ($ - %%insn_0040a003) > 3
        %error "LONG_0040A003"
    %endif
    times 3 - ($ - %%insn_0040a003) db 0
    %%insn_0040a006:
    mov dword [eax+0x41f5fc],0x1 ; 0040A006 C780FCF5410001000000
    %if ($ - %%insn_0040a006) > 10
        %error "LONG_0040A006"
    %endif
    times 10 - ($ - %%insn_0040a006) db 0
    %%insn_0040a010:
    mov ecx,[ebp-0x1c] ; 0040A010 8B4DE4
    %if ($ - %%insn_0040a010) > 3
        %error "LONG_0040A010"
    %endif
    times 3 - ($ - %%insn_0040a010) db 0
    %%insn_0040a013:
    imul ecx,ecx,0x14 ; 0040A013 6BC914
    %if ($ - %%insn_0040a013) > 3
        %error "LONG_0040A013"
    %endif
    times 3 - ($ - %%insn_0040a013) db 0
    %%insn_0040a016:
    mov dword [ecx+0x41f608],0x0 ; 0040A016 C78108F6410000000000
    %if ($ - %%insn_0040a016) > 10
        %error "LONG_0040A016"
    %endif
    times 10 - ($ - %%insn_0040a016) db 0
    %%insn_0040a020:
    mov edx,[ebp-0x1c] ; 0040A020 8B55E4
    %if ($ - %%insn_0040a020) > 3
        %error "LONG_0040A020"
    %endif
    times 3 - ($ - %%insn_0040a020) db 0
    %%insn_0040a023:
    imul edx,edx,0x14 ; 0040A023 6BD214
    %if ($ - %%insn_0040a023) > 3
        %error "LONG_0040A023"
    %endif
    times 3 - ($ - %%insn_0040a023) db 0
    %%insn_0040a026:
    mov eax,[edx+0x41f5f8] ; 0040A026 8B82F8F54100
    %if ($ - %%insn_0040a026) > 6
        %error "LONG_0040A026"
    %endif
    times 6 - ($ - %%insn_0040a026) db 0
    %%insn_0040a02c:
    push eax ; 0040A02C 50
    %if ($ - %%insn_0040a02c) > 1
        %error "LONG_0040A02C"
    %endif
    times 1 - ($ - %%insn_0040a02c) db 0
    %%insn_0040a02d:
    call 0x40c9a0 ; 0040A02D E86E290000
    %if ($ - %%insn_0040a02d) > 5
        %error "LONG_0040A02D"
    %endif
    times 5 - ($ - %%insn_0040a02d) db 0
    %%insn_0040a032:
    add esp,0x4 ; 0040A032 83C404
    %if ($ - %%insn_0040a032) > 3
        %error "LONG_0040A032"
    %endif
    times 3 - ($ - %%insn_0040a032) db 0
    %%insn_0040a035:
    mov ecx,[ebp-0x1c] ; 0040A035 8B4DE4
    %if ($ - %%insn_0040a035) > 3
        %error "LONG_0040A035"
    %endif
    times 3 - ($ - %%insn_0040a035) db 0
    %%insn_0040a038:
    imul ecx,ecx,0x14 ; 0040A038 6BC914
    %if ($ - %%insn_0040a038) > 3
        %error "LONG_0040A038"
    %endif
    times 3 - ($ - %%insn_0040a038) db 0
    %%insn_0040a03b:
    mov dword [ecx+0x41f5f8],0x0 ; 0040A03B C781F8F5410000000000
    %if ($ - %%insn_0040a03b) > 10
        %error "LONG_0040A03B"
    %endif
    times 10 - ($ - %%insn_0040a03b) db 0
    %%insn_0040a045:
    jmp 0x409f40 ; 0040A045 E9F6FEFFFF
    %if ($ - %%insn_0040a045) > 5
        %error "LONG_0040A045"
    %endif
    times 5 - ($ - %%insn_0040a045) db 0
    %%insn_0040a04a:
    mov edx,[ebp-0x24] ; 0040A04A 8B55DC
    %if ($ - %%insn_0040a04a) > 3
        %error "LONG_0040A04A"
    %endif
    times 3 - ($ - %%insn_0040a04a) db 0
    %%insn_0040a04d:
    mov [ebp-0x1c],edx ; 0040A04D 8955E4
    %if ($ - %%insn_0040a04d) > 3
        %error "LONG_0040A04D"
    %endif
    times 3 - ($ - %%insn_0040a04d) db 0
    %%insn_0040a050:
    mov dword [ebp-0x20],0x10000 ; 0040A050 C745E000000100
    %if ($ - %%insn_0040a050) > 7
        %error "LONG_0040A050"
    %endif
    times 7 - ($ - %%insn_0040a050) db 0
    %%insn_0040a057:
    mov eax,[ebp-0x20] ; 0040A057 8B45E0
    %if ($ - %%insn_0040a057) > 3
        %error "LONG_0040A057"
    %endif
    times 3 - ($ - %%insn_0040a057) db 0
    %%insn_0040a05a:
    cmp eax,[0x42238c] ; 0040A05A 3B058C234200
    %if ($ - %%insn_0040a05a) > 6
        %error "LONG_0040A05A"
    %endif
    times 6 - ($ - %%insn_0040a05a) db 0
    %%insn_0040a060:
    jna short 0x40a06b ; 0040A060 7609
    %if ($ - %%insn_0040a060) > 2
        %error "LONG_0040A060"
    %endif
    times 2 - ($ - %%insn_0040a060) db 0
    %%insn_0040a062:
    mov ecx,[0x42238c] ; 0040A062 8B0D8C234200
    %if ($ - %%insn_0040a062) > 6
        %error "LONG_0040A062"
    %endif
    times 6 - ($ - %%insn_0040a062) db 0
    %%insn_0040a068:
    mov [ebp-0x20],ecx ; 0040A068 894DE0
    %if ($ - %%insn_0040a068) > 3
        %error "LONG_0040A068"
    %endif
    times 3 - ($ - %%insn_0040a068) db 0
    %%insn_0040a06b:
    mov edx,[ebp-0x20] ; 0040A06B 8B55E0
    %if ($ - %%insn_0040a06b) > 3
        %error "LONG_0040A06B"
    %endif
    times 3 - ($ - %%insn_0040a06b) db 0
    %%insn_0040a06e:
    push edx ; 0040A06E 52
    %if ($ - %%insn_0040a06e) > 1
        %error "LONG_0040A06E"
    %endif
    times 1 - ($ - %%insn_0040a06e) db 0
    %%insn_0040a06f:
    call 0x40cdc0 ; 0040A06F E84C2D0000
    %if ($ - %%insn_0040a06f) > 5
        %error "LONG_0040A06F"
    %endif
    times 5 - ($ - %%insn_0040a06f) db 0
    %%insn_0040a074:
    add esp,0x4 ; 0040A074 83C404
    %if ($ - %%insn_0040a074) > 3
        %error "LONG_0040A074"
    %endif
    times 3 - ($ - %%insn_0040a074) db 0
    %%insn_0040a077:
    mov ecx,[ebp-0x1c] ; 0040A077 8B4DE4
    %if ($ - %%insn_0040a077) > 3
        %error "LONG_0040A077"
    %endif
    times 3 - ($ - %%insn_0040a077) db 0
    %%insn_0040a07a:
    imul ecx,ecx,0x14 ; 0040A07A 6BC914
    %if ($ - %%insn_0040a07a) > 3
        %error "LONG_0040A07A"
    %endif
    times 3 - ($ - %%insn_0040a07a) db 0
    %%insn_0040a07d:
    mov [ecx+0x41f5f8],eax ; 0040A07D 8981F8F54100
    %if ($ - %%insn_0040a07d) > 6
        %error "LONG_0040A07D"
    %endif
    times 6 - ($ - %%insn_0040a07d) db 0
    %%insn_0040a083:
    mov edx,[ebp-0x1c] ; 0040A083 8B55E4
    %if ($ - %%insn_0040a083) > 3
        %error "LONG_0040A083"
    %endif
    times 3 - ($ - %%insn_0040a083) db 0
    %%insn_0040a086:
    imul edx,edx,0x14 ; 0040A086 6BD214
    %if ($ - %%insn_0040a086) > 3
        %error "LONG_0040A086"
    %endif
    times 3 - ($ - %%insn_0040a086) db 0
    %%insn_0040a089:
    cmp dword [edx+0x41f5f8],0x0 ; 0040A089 83BAF8F5410000
    %if ($ - %%insn_0040a089) > 7
        %error "LONG_0040A089"
    %endif
    times 7 - ($ - %%insn_0040a089) db 0
    %%insn_0040a090:
    jnz 0x40a19e ; 0040A090 0F8508010000
    %if ($ - %%insn_0040a090) > 6
        %error "LONG_0040A090"
    %endif
    times 6 - ($ - %%insn_0040a090) db 0
    %%insn_0040a096:
    mov eax,[ebp-0x1c] ; 0040A096 8B45E4
    %if ($ - %%insn_0040a096) > 3
        %error "LONG_0040A096"
    %endif
    times 3 - ($ - %%insn_0040a096) db 0
    %%insn_0040a099:
    imul eax,eax,0x14 ; 0040A099 6BC014
    %if ($ - %%insn_0040a099) > 3
        %error "LONG_0040A099"
    %endif
    times 3 - ($ - %%insn_0040a099) db 0
    %%insn_0040a09c:
    cmp dword [eax+0x41f5f8],0x0 ; 0040A09C 83B8F8F5410000
    %if ($ - %%insn_0040a09c) > 7
        %error "LONG_0040A09C"
    %endif
    times 7 - ($ - %%insn_0040a09c) db 0
    %%insn_0040a0a3:
    jz short 0x40a0ba ; 0040A0A3 7415
    %if ($ - %%insn_0040a0a3) > 2
        %error "LONG_0040A0A3"
    %endif
    times 2 - ($ - %%insn_0040a0a3) db 0
    %%insn_0040a0a5:
    mov ecx,[ebp-0x1c] ; 0040A0A5 8B4DE4
    %if ($ - %%insn_0040a0a5) > 3
        %error "LONG_0040A0A5"
    %endif
    times 3 - ($ - %%insn_0040a0a5) db 0
    %%insn_0040a0a8:
    imul ecx,ecx,0x14 ; 0040A0A8 6BC914
    %if ($ - %%insn_0040a0a8) > 3
        %error "LONG_0040A0A8"
    %endif
    times 3 - ($ - %%insn_0040a0a8) db 0
    %%insn_0040a0ab:
    mov edx,[ecx+0x41f5f8] ; 0040A0AB 8B91F8F54100
    %if ($ - %%insn_0040a0ab) > 6
        %error "LONG_0040A0AB"
    %endif
    times 6 - ($ - %%insn_0040a0ab) db 0
    %%insn_0040a0b1:
    push edx ; 0040A0B1 52
    %if ($ - %%insn_0040a0b1) > 1
        %error "LONG_0040A0B1"
    %endif
    times 1 - ($ - %%insn_0040a0b1) db 0
    %%insn_0040a0b2:
    call 0x40c9a0 ; 0040A0B2 E8E9280000
    %if ($ - %%insn_0040a0b2) > 5
        %error "LONG_0040A0B2"
    %endif
    times 5 - ($ - %%insn_0040a0b2) db 0
    %%insn_0040a0b7:
    add esp,0x4 ; 0040A0B7 83C404
    %if ($ - %%insn_0040a0b7) > 3
        %error "LONG_0040A0B7"
    %endif
    times 3 - ($ - %%insn_0040a0b7) db 0
    %%insn_0040a0ba:
    cmp dword [0x420a04],0x0 ; 0040A0BA 833D040A420000
    %if ($ - %%insn_0040a0ba) > 7
        %error "LONG_0040A0BA"
    %endif
    times 7 - ($ - %%insn_0040a0ba) db 0
    %%insn_0040a0c1:
    jz 0x40a196 ; 0040A0C1 0F84CF000000
    %if ($ - %%insn_0040a0c1) > 6
        %error "LONG_0040A0C1"
    %endif
    times 6 - ($ - %%insn_0040a0c1) db 0
    %%insn_0040a0c7:
    mov dword [ebp-0x28],0x40000000 ; 0040A0C7 C745D800000040
    %if ($ - %%insn_0040a0c7) > 7
        %error "LONG_0040A0C7"
    %endif
    times 7 - ($ - %%insn_0040a0c7) db 0
    %%insn_0040a0ce:
    mov dword [ebp-0x1c],0xffffffff ; 0040A0CE C745E4FFFFFFFF
    %if ($ - %%insn_0040a0ce) > 7
        %error "LONG_0040A0CE"
    %endif
    times 7 - ($ - %%insn_0040a0ce) db 0
    %%insn_0040a0d5:
    mov dword [ebp-0x24],0x0 ; 0040A0D5 C745DC00000000
    %if ($ - %%insn_0040a0d5) > 7
        %error "LONG_0040A0D5"
    %endif
    times 7 - ($ - %%insn_0040a0d5) db 0
    %%insn_0040a0dc:
    jmp short 0x40a0e7 ; 0040A0DC EB09
    %if ($ - %%insn_0040a0dc) > 2
        %error "LONG_0040A0DC"
    %endif
    times 2 - ($ - %%insn_0040a0dc) db 0
    %%insn_0040a0de:
    mov eax,[ebp-0x24] ; 0040A0DE 8B45DC
    %if ($ - %%insn_0040a0de) > 3
        %error "LONG_0040A0DE"
    %endif
    times 3 - ($ - %%insn_0040a0de) db 0
    %%insn_0040a0e1:
    add eax,0x1 ; 0040A0E1 83C001
    %if ($ - %%insn_0040a0e1) > 3
        %error "LONG_0040A0E1"
    %endif
    times 3 - ($ - %%insn_0040a0e1) db 0
    %%insn_0040a0e4:
    mov [ebp-0x24],eax ; 0040A0E4 8945DC
    %if ($ - %%insn_0040a0e4) > 3
        %error "LONG_0040A0E4"
    %endif
    times 3 - ($ - %%insn_0040a0e4) db 0
    %%insn_0040a0e7:
    mov ecx,[ebp-0x24] ; 0040A0E7 8B4DDC
    %if ($ - %%insn_0040a0e7) > 3
        %error "LONG_0040A0E7"
    %endif
    times 3 - ($ - %%insn_0040a0e7) db 0
    %%insn_0040a0ea:
    cmp ecx,[0x420a04] ; 0040A0EA 3B0D040A4200
    %if ($ - %%insn_0040a0ea) > 6
        %error "LONG_0040A0EA"
    %endif
    times 6 - ($ - %%insn_0040a0ea) db 0
    %%insn_0040a0f0:
    jnl short 0x40a129 ; 0040A0F0 7D37
    %if ($ - %%insn_0040a0f0) > 2
        %error "LONG_0040A0F0"
    %endif
    times 2 - ($ - %%insn_0040a0f0) db 0
    %%insn_0040a0f2:
    mov edx,[ebp-0x24] ; 0040A0F2 8B55DC
    %if ($ - %%insn_0040a0f2) > 3
        %error "LONG_0040A0F2"
    %endif
    times 3 - ($ - %%insn_0040a0f2) db 0
    %%insn_0040a0f5:
    imul edx,edx,0x14 ; 0040A0F5 6BD214
    %if ($ - %%insn_0040a0f5) > 3
        %error "LONG_0040A0F5"
    %endif
    times 3 - ($ - %%insn_0040a0f5) db 0
    %%insn_0040a0f8:
    cmp dword [edx+0x41f608],0x0 ; 0040A0F8 83BA08F6410000
    %if ($ - %%insn_0040a0f8) > 7
        %error "LONG_0040A0F8"
    %endif
    times 7 - ($ - %%insn_0040a0f8) db 0
    %%insn_0040a0ff:
    jz short 0x40a127 ; 0040A0FF 7426
    %if ($ - %%insn_0040a0ff) > 2
        %error "LONG_0040A0FF"
    %endif
    times 2 - ($ - %%insn_0040a0ff) db 0
    %%insn_0040a101:
    mov eax,[ebp-0x24] ; 0040A101 8B45DC
    %if ($ - %%insn_0040a101) > 3
        %error "LONG_0040A101"
    %endif
    times 3 - ($ - %%insn_0040a101) db 0
    %%insn_0040a104:
    imul eax,eax,0x14 ; 0040A104 6BC014
    %if ($ - %%insn_0040a104) > 3
        %error "LONG_0040A104"
    %endif
    times 3 - ($ - %%insn_0040a104) db 0
    %%insn_0040a107:
    mov ecx,[eax+0x41f5fc] ; 0040A107 8B88FCF54100
    %if ($ - %%insn_0040a107) > 6
        %error "LONG_0040A107"
    %endif
    times 6 - ($ - %%insn_0040a107) db 0
    %%insn_0040a10d:
    cmp ecx,[ebp-0x28] ; 0040A10D 3B4DD8
    %if ($ - %%insn_0040a10d) > 3
        %error "LONG_0040A10D"
    %endif
    times 3 - ($ - %%insn_0040a10d) db 0
    %%insn_0040a110:
    jnc short 0x40a127 ; 0040A110 7315
    %if ($ - %%insn_0040a110) > 2
        %error "LONG_0040A110"
    %endif
    times 2 - ($ - %%insn_0040a110) db 0
    %%insn_0040a112:
    mov edx,[ebp-0x24] ; 0040A112 8B55DC
    %if ($ - %%insn_0040a112) > 3
        %error "LONG_0040A112"
    %endif
    times 3 - ($ - %%insn_0040a112) db 0
    %%insn_0040a115:
    imul edx,edx,0x14 ; 0040A115 6BD214
    %if ($ - %%insn_0040a115) > 3
        %error "LONG_0040A115"
    %endif
    times 3 - ($ - %%insn_0040a115) db 0
    %%insn_0040a118:
    mov eax,[edx+0x41f5fc] ; 0040A118 8B82FCF54100
    %if ($ - %%insn_0040a118) > 6
        %error "LONG_0040A118"
    %endif
    times 6 - ($ - %%insn_0040a118) db 0
    %%insn_0040a11e:
    mov [ebp-0x28],eax ; 0040A11E 8945D8
    %if ($ - %%insn_0040a11e) > 3
        %error "LONG_0040A11E"
    %endif
    times 3 - ($ - %%insn_0040a11e) db 0
    %%insn_0040a121:
    mov ecx,[ebp-0x24] ; 0040A121 8B4DDC
    %if ($ - %%insn_0040a121) > 3
        %error "LONG_0040A121"
    %endif
    times 3 - ($ - %%insn_0040a121) db 0
    %%insn_0040a124:
    mov [ebp-0x1c],ecx ; 0040A124 894DE4
    %if ($ - %%insn_0040a124) > 3
        %error "LONG_0040A124"
    %endif
    times 3 - ($ - %%insn_0040a124) db 0
    %%insn_0040a127:
    jmp short 0x40a0de ; 0040A127 EBB5
    %if ($ - %%insn_0040a127) > 2
        %error "LONG_0040A127"
    %endif
    times 2 - ($ - %%insn_0040a127) db 0
    %%insn_0040a129:
    cmp dword [ebp-0x1c],0xffffffffffffffff ; 0040A129 837DE4FF
    %if ($ - %%insn_0040a129) > 4
        %error "LONG_0040A129"
    %endif
    times 4 - ($ - %%insn_0040a129) db 0
    %%insn_0040a12d:
    jnz short 0x40a137 ; 0040A12D 7508
    %if ($ - %%insn_0040a12d) > 2
        %error "LONG_0040A12D"
    %endif
    times 2 - ($ - %%insn_0040a12d) db 0
    %%insn_0040a12f:
    or eax,0xffffffffffffffff ; 0040A12F 83C8FF
    %if ($ - %%insn_0040a12f) > 3
        %error "LONG_0040A12F"
    %endif
    times 3 - ($ - %%insn_0040a12f) db 0
    %%insn_0040a132:
    jmp 0x40a28e ; 0040A132 E957010000
    %if ($ - %%insn_0040a132) > 5
        %error "LONG_0040A132"
    %endif
    times 5 - ($ - %%insn_0040a132) db 0
    %%insn_0040a137:
    mov edx,[ebp-0x1c] ; 0040A137 8B55E4
    %if ($ - %%insn_0040a137) > 3
        %error "LONG_0040A137"
    %endif
    times 3 - ($ - %%insn_0040a137) db 0
    %%insn_0040a13a:
    imul edx,edx,0x14 ; 0040A13A 6BD214
    %if ($ - %%insn_0040a13a) > 3
        %error "LONG_0040A13A"
    %endif
    times 3 - ($ - %%insn_0040a13a) db 0
    %%insn_0040a13d:
    mov eax,[edx+0x41f600] ; 0040A13D 8B8200F64100
    %if ($ - %%insn_0040a13d) > 6
        %error "LONG_0040A13D"
    %endif
    times 6 - ($ - %%insn_0040a13d) db 0
    %%insn_0040a143:
    push eax ; 0040A143 50
    %if ($ - %%insn_0040a143) > 1
        %error "LONG_0040A143"
    %endif
    times 1 - ($ - %%insn_0040a143) db 0
    %%insn_0040a144:
    call 0x409f0a ; 0040A144 E8C1FDFFFF
    %if ($ - %%insn_0040a144) > 5
        %error "LONG_0040A144"
    %endif
    times 5 - ($ - %%insn_0040a144) db 0
    %%insn_0040a149:
    add esp,0x4 ; 0040A149 83C404
    %if ($ - %%insn_0040a149) > 3
        %error "LONG_0040A149"
    %endif
    times 3 - ($ - %%insn_0040a149) db 0
    %%insn_0040a14c:
    mov ecx,[ebp-0x1c] ; 0040A14C 8B4DE4
    %if ($ - %%insn_0040a14c) > 3
        %error "LONG_0040A14C"
    %endif
    times 3 - ($ - %%insn_0040a14c) db 0
    %%insn_0040a14f:
    imul ecx,ecx,0x14 ; 0040A14F 6BC914
    %if ($ - %%insn_0040a14f) > 3
        %error "LONG_0040A14F"
    %endif
    times 3 - ($ - %%insn_0040a14f) db 0
    %%insn_0040a152:
    mov dword [ecx+0x41f5fc],0x1 ; 0040A152 C781FCF5410001000000
    %if ($ - %%insn_0040a152) > 10
        %error "LONG_0040A152"
    %endif
    times 10 - ($ - %%insn_0040a152) db 0
    %%insn_0040a15c:
    mov edx,[ebp-0x1c] ; 0040A15C 8B55E4
    %if ($ - %%insn_0040a15c) > 3
        %error "LONG_0040A15C"
    %endif
    times 3 - ($ - %%insn_0040a15c) db 0
    %%insn_0040a15f:
    imul edx,edx,0x14 ; 0040A15F 6BD214
    %if ($ - %%insn_0040a15f) > 3
        %error "LONG_0040A15F"
    %endif
    times 3 - ($ - %%insn_0040a15f) db 0
    %%insn_0040a162:
    mov dword [edx+0x41f608],0x0 ; 0040A162 C78208F6410000000000
    %if ($ - %%insn_0040a162) > 10
        %error "LONG_0040A162"
    %endif
    times 10 - ($ - %%insn_0040a162) db 0
    %%insn_0040a16c:
    mov eax,[ebp-0x1c] ; 0040A16C 8B45E4
    %if ($ - %%insn_0040a16c) > 3
        %error "LONG_0040A16C"
    %endif
    times 3 - ($ - %%insn_0040a16c) db 0
    %%insn_0040a16f:
    imul eax,eax,0x14 ; 0040A16F 6BC014
    %if ($ - %%insn_0040a16f) > 3
        %error "LONG_0040A16F"
    %endif
    times 3 - ($ - %%insn_0040a16f) db 0
    %%insn_0040a172:
    mov ecx,[eax+0x41f5f8] ; 0040A172 8B88F8F54100
    %if ($ - %%insn_0040a172) > 6
        %error "LONG_0040A172"
    %endif
    times 6 - ($ - %%insn_0040a172) db 0
    %%insn_0040a178:
    push ecx ; 0040A178 51
    %if ($ - %%insn_0040a178) > 1
        %error "LONG_0040A178"
    %endif
    times 1 - ($ - %%insn_0040a178) db 0
    %%insn_0040a179:
    call 0x40c9a0 ; 0040A179 E822280000
    %if ($ - %%insn_0040a179) > 5
        %error "LONG_0040A179"
    %endif
    times 5 - ($ - %%insn_0040a179) db 0
    %%insn_0040a17e:
    add esp,0x4 ; 0040A17E 83C404
    %if ($ - %%insn_0040a17e) > 3
        %error "LONG_0040A17E"
    %endif
    times 3 - ($ - %%insn_0040a17e) db 0
    %%insn_0040a181:
    mov edx,[ebp-0x1c] ; 0040A181 8B55E4
    %if ($ - %%insn_0040a181) > 3
        %error "LONG_0040A181"
    %endif
    times 3 - ($ - %%insn_0040a181) db 0
    %%insn_0040a184:
    imul edx,edx,0x14 ; 0040A184 6BD214
    %if ($ - %%insn_0040a184) > 3
        %error "LONG_0040A184"
    %endif
    times 3 - ($ - %%insn_0040a184) db 0
    %%insn_0040a187:
    mov dword [edx+0x41f5f8],0x0 ; 0040A187 C782F8F5410000000000
    %if ($ - %%insn_0040a187) > 10
        %error "LONG_0040A187"
    %endif
    times 10 - ($ - %%insn_0040a187) db 0
    %%insn_0040a191:
    jmp 0x409f40 ; 0040A191 E9AAFDFFFF
    %if ($ - %%insn_0040a191) > 5
        %error "LONG_0040A191"
    %endif
    times 5 - ($ - %%insn_0040a191) db 0
    %%insn_0040a196:
    or eax,0xffffffffffffffff ; 0040A196 83C8FF
    %if ($ - %%insn_0040a196) > 3
        %error "LONG_0040A196"
    %endif
    times 3 - ($ - %%insn_0040a196) db 0
    %%insn_0040a199:
    jmp 0x40a28e ; 0040A199 E9F0000000
    %if ($ - %%insn_0040a199) > 5
        %error "LONG_0040A199"
    %endif
    times 5 - ($ - %%insn_0040a199) db 0
    %%insn_0040a19e:
    mov eax,[ebp-0x1c] ; 0040A19E 8B45E4
    %if ($ - %%insn_0040a19e) > 3
        %error "LONG_0040A19E"
    %endif
    times 3 - ($ - %%insn_0040a19e) db 0
    %%insn_0040a1a1:
    cmp eax,[0x420a04] ; 0040A1A1 3B05040A4200
    %if ($ - %%insn_0040a1a1) > 6
        %error "LONG_0040A1A1"
    %endif
    times 6 - ($ - %%insn_0040a1a1) db 0
    %%insn_0040a1a7:
    jnz short 0x40a1b8 ; 0040A1A7 750F
    %if ($ - %%insn_0040a1a7) > 2
        %error "LONG_0040A1A7"
    %endif
    times 2 - ($ - %%insn_0040a1a7) db 0
    %%insn_0040a1a9:
    mov ecx,[0x420a04] ; 0040A1A9 8B0D040A4200
    %if ($ - %%insn_0040a1a9) > 6
        %error "LONG_0040A1A9"
    %endif
    times 6 - ($ - %%insn_0040a1a9) db 0
    %%insn_0040a1af:
    add ecx,0x1 ; 0040A1AF 83C101
    %if ($ - %%insn_0040a1af) > 3
        %error "LONG_0040A1AF"
    %endif
    times 3 - ($ - %%insn_0040a1af) db 0
    %%insn_0040a1b2:
    mov [0x420a04],ecx ; 0040A1B2 890D040A4200
    %if ($ - %%insn_0040a1b2) > 6
        %error "LONG_0040A1B2"
    %endif
    times 6 - ($ - %%insn_0040a1b2) db 0
    %%insn_0040a1b8:
    mov edx,[ebp-0x1c] ; 0040A1B8 8B55E4
    %if ($ - %%insn_0040a1b8) > 3
        %error "LONG_0040A1B8"
    %endif
    times 3 - ($ - %%insn_0040a1b8) db 0
    %%insn_0040a1bb:
    imul edx,edx,0x14 ; 0040A1BB 6BD214
    %if ($ - %%insn_0040a1bb) > 3
        %error "LONG_0040A1BB"
    %endif
    times 3 - ($ - %%insn_0040a1bb) db 0
    %%insn_0040a1be:
    mov eax,[ebp-0x20] ; 0040A1BE 8B45E0
    %if ($ - %%insn_0040a1be) > 3
        %error "LONG_0040A1BE"
    %endif
    times 3 - ($ - %%insn_0040a1be) db 0
    %%insn_0040a1c1:
    mov [edx+0x41f608],eax ; 0040A1C1 898208F64100
    %if ($ - %%insn_0040a1c1) > 6
        %error "LONG_0040A1C1"
    %endif
    times 6 - ($ - %%insn_0040a1c1) db 0
    %%insn_0040a1c7:
    mov dword [ebp-0x4],0x0 ; 0040A1C7 C745FC00000000
    %if ($ - %%insn_0040a1c7) > 7
        %error "LONG_0040A1C7"
    %endif
    times 7 - ($ - %%insn_0040a1c7) db 0
    %%insn_0040a1ce:
    cmp dword [0x42238c],0x10000 ; 0040A1CE 813D8C23420000000100
    %if ($ - %%insn_0040a1ce) > 10
        %error "LONG_0040A1CE"
    %endif
    times 10 - ($ - %%insn_0040a1ce) db 0
    %%insn_0040a1d8:
    jnc short 0x40a201 ; 0040A1D8 7327
    %if ($ - %%insn_0040a1d8) > 2
        %error "LONG_0040A1D8"
    %endif
    times 2 - ($ - %%insn_0040a1d8) db 0
    %%insn_0040a1da:
    mov ecx,[0x42238c] ; 0040A1DA 8B0D8C234200
    %if ($ - %%insn_0040a1da) > 6
        %error "LONG_0040A1DA"
    %endif
    times 6 - ($ - %%insn_0040a1da) db 0
    %%insn_0040a1e0:
    push ecx ; 0040A1E0 51
    %if ($ - %%insn_0040a1e0) > 1
        %error "LONG_0040A1E0"
    %endif
    times 1 - ($ - %%insn_0040a1e0) db 0
    %%insn_0040a1e1:
    mov edx,[ebp-0x1c] ; 0040A1E1 8B55E4
    %if ($ - %%insn_0040a1e1) > 3
        %error "LONG_0040A1E1"
    %endif
    times 3 - ($ - %%insn_0040a1e1) db 0
    %%insn_0040a1e4:
    imul edx,edx,0x14 ; 0040A1E4 6BD214
    %if ($ - %%insn_0040a1e4) > 3
        %error "LONG_0040A1E4"
    %endif
    times 3 - ($ - %%insn_0040a1e4) db 0
    %%insn_0040a1e7:
    mov eax,[edx+0x41f5f8] ; 0040A1E7 8B82F8F54100
    %if ($ - %%insn_0040a1e7) > 6
        %error "LONG_0040A1E7"
    %endif
    times 6 - ($ - %%insn_0040a1e7) db 0
    %%insn_0040a1ed:
    push eax ; 0040A1ED 50
    %if ($ - %%insn_0040a1ed) > 1
        %error "LONG_0040A1ED"
    %endif
    times 1 - ($ - %%insn_0040a1ed) db 0
    %%insn_0040a1ee:
    mov ecx,[ebp+0x8] ; 0040A1EE 8B4D08
    %if ($ - %%insn_0040a1ee) > 3
        %error "LONG_0040A1EE"
    %endif
    times 3 - ($ - %%insn_0040a1ee) db 0
    %%insn_0040a1f1:
    push ecx ; 0040A1F1 51
    %if ($ - %%insn_0040a1f1) > 1
        %error "LONG_0040A1F1"
    %endif
    times 1 - ($ - %%insn_0040a1f1) db 0
    %%insn_0040a1f2:
    call dword near [0x424594] ; 0040A1F2 FF1594454200
    %if ($ - %%insn_0040a1f2) > 6
        %error "LONG_0040A1F2"
    %endif
    times 6 - ($ - %%insn_0040a1f2) db 0
    %%insn_0040a1f8:
    mov dword [ebp+0x10],0x0 ; 0040A1F8 C7451000000000
    %if ($ - %%insn_0040a1f8) > 7
        %error "LONG_0040A1F8"
    %endif
    times 7 - ($ - %%insn_0040a1f8) db 0
    %%insn_0040a1ff:
    jmp short 0x40a229 ; 0040A1FF EB28
    %if ($ - %%insn_0040a1ff) > 2
        %error "LONG_0040A1FF"
    %endif
    times 2 - ($ - %%insn_0040a1ff) db 0
    %%insn_0040a201:
    push dword 0x10000 ; 0040A201 6800000100
    %if ($ - %%insn_0040a201) > 5
        %error "LONG_0040A201"
    %endif
    times 5 - ($ - %%insn_0040a201) db 0
    %%insn_0040a206:
    mov edx,[ebp-0x1c] ; 0040A206 8B55E4
    %if ($ - %%insn_0040a206) > 3
        %error "LONG_0040A206"
    %endif
    times 3 - ($ - %%insn_0040a206) db 0
    %%insn_0040a209:
    imul edx,edx,0x14 ; 0040A209 6BD214
    %if ($ - %%insn_0040a209) > 3
        %error "LONG_0040A209"
    %endif
    times 3 - ($ - %%insn_0040a209) db 0
    %%insn_0040a20c:
    mov eax,[edx+0x41f5f8] ; 0040A20C 8B82F8F54100
    %if ($ - %%insn_0040a20c) > 6
        %error "LONG_0040A20C"
    %endif
    times 6 - ($ - %%insn_0040a20c) db 0
    %%insn_0040a212:
    push eax ; 0040A212 50
    %if ($ - %%insn_0040a212) > 1
        %error "LONG_0040A212"
    %endif
    times 1 - ($ - %%insn_0040a212) db 0
    %%insn_0040a213:
    mov ecx,[ebp+0x8] ; 0040A213 8B4D08
    %if ($ - %%insn_0040a213) > 3
        %error "LONG_0040A213"
    %endif
    times 3 - ($ - %%insn_0040a213) db 0
    %%insn_0040a216:
    push ecx ; 0040A216 51
    %if ($ - %%insn_0040a216) > 1
        %error "LONG_0040A216"
    %endif
    times 1 - ($ - %%insn_0040a216) db 0
    %%insn_0040a217:
    call dword near [0x424594] ; 0040A217 FF1594454200
    %if ($ - %%insn_0040a217) > 6
        %error "LONG_0040A217"
    %endif
    times 6 - ($ - %%insn_0040a217) db 0
    %%insn_0040a21d:
    mov edx,[ebp+0x10] ; 0040A21D 8B5510
    %if ($ - %%insn_0040a21d) > 3
        %error "LONG_0040A21D"
    %endif
    times 3 - ($ - %%insn_0040a21d) db 0
    %%insn_0040a220:
    add edx,0x10000 ; 0040A220 81C200000100
    %if ($ - %%insn_0040a220) > 6
        %error "LONG_0040A220"
    %endif
    times 6 - ($ - %%insn_0040a220) db 0
    %%insn_0040a226:
    mov [ebp+0x10],edx ; 0040A226 895510
    %if ($ - %%insn_0040a226) > 3
        %error "LONG_0040A226"
    %endif
    times 3 - ($ - %%insn_0040a226) db 0
    %%insn_0040a229:
    mov dword [ebp-0x4],0xffffffff ; 0040A229 C745FCFFFFFFFF
    %if ($ - %%insn_0040a229) > 7
        %error "LONG_0040A229"
    %endif
    times 7 - ($ - %%insn_0040a229) db 0
    %%insn_0040a230:
    jmp short 0x40a24f ; 0040A230 EB1D
    %if ($ - %%insn_0040a230) > 2
        %error "LONG_0040A230"
    %endif
    times 2 - ($ - %%insn_0040a230) db 0
    %if ($ - %%fragment_start) != 792
        %error "function fragment size drift: 00409F1A"
    %endif
%endmacro

%macro emit_func_00409f1a_part_01 0
    %%fragment_start:
    %%insn_0040a24f:
    mov eax,[ebp-0x1c] ; 0040A24F 8B45E4
    %if ($ - %%insn_0040a24f) > 3
        %error "LONG_0040A24F"
    %endif
    times 3 - ($ - %%insn_0040a24f) db 0
    %%insn_0040a252:
    imul eax,eax,0x14 ; 0040A252 6BC014
    %if ($ - %%insn_0040a252) > 3
        %error "LONG_0040A252"
    %endif
    times 3 - ($ - %%insn_0040a252) db 0
    %%insn_0040a255:
    mov ecx,[eax+0x41f5fc] ; 0040A255 8B88FCF54100
    %if ($ - %%insn_0040a255) > 6
        %error "LONG_0040A255"
    %endif
    times 6 - ($ - %%insn_0040a255) db 0
    %%insn_0040a25b:
    add ecx,0x1 ; 0040A25B 83C101
    %if ($ - %%insn_0040a25b) > 3
        %error "LONG_0040A25B"
    %endif
    times 3 - ($ - %%insn_0040a25b) db 0
    %%insn_0040a25e:
    mov edx,[ebp-0x1c] ; 0040A25E 8B55E4
    %if ($ - %%insn_0040a25e) > 3
        %error "LONG_0040A25E"
    %endif
    times 3 - ($ - %%insn_0040a25e) db 0
    %%insn_0040a261:
    imul edx,edx,0x14 ; 0040A261 6BD214
    %if ($ - %%insn_0040a261) > 3
        %error "LONG_0040A261"
    %endif
    times 3 - ($ - %%insn_0040a261) db 0
    %%insn_0040a264:
    mov [edx+0x41f5fc],ecx ; 0040A264 898AFCF54100
    %if ($ - %%insn_0040a264) > 6
        %error "LONG_0040A264"
    %endif
    times 6 - ($ - %%insn_0040a264) db 0
    %%insn_0040a26a:
    mov eax,[ebp-0x1c] ; 0040A26A 8B45E4
    %if ($ - %%insn_0040a26a) > 3
        %error "LONG_0040A26A"
    %endif
    times 3 - ($ - %%insn_0040a26a) db 0
    %%insn_0040a26d:
    imul eax,eax,0x14 ; 0040A26D 6BC014
    %if ($ - %%insn_0040a26d) > 3
        %error "LONG_0040A26D"
    %endif
    times 3 - ($ - %%insn_0040a26d) db 0
    %%insn_0040a270:
    mov ecx,[ebp+0xc] ; 0040A270 8B4D0C
    %if ($ - %%insn_0040a270) > 3
        %error "LONG_0040A270"
    %endif
    times 3 - ($ - %%insn_0040a270) db 0
    %%insn_0040a273:
    mov [eax+0x41f600],ecx ; 0040A273 898800F64100
    %if ($ - %%insn_0040a273) > 6
        %error "LONG_0040A273"
    %endif
    times 6 - ($ - %%insn_0040a273) db 0
    %%insn_0040a279:
    mov edx,[ebp-0x1c] ; 0040A279 8B55E4
    %if ($ - %%insn_0040a279) > 3
        %error "LONG_0040A279"
    %endif
    times 3 - ($ - %%insn_0040a279) db 0
    %%insn_0040a27c:
    imul edx,edx,0x14 ; 0040A27C 6BD214
    %if ($ - %%insn_0040a27c) > 3
        %error "LONG_0040A27C"
    %endif
    times 3 - ($ - %%insn_0040a27c) db 0
    %%insn_0040a27f:
    mov eax,[ebp+0x10] ; 0040A27F 8B4510
    %if ($ - %%insn_0040a27f) > 3
        %error "LONG_0040A27F"
    %endif
    times 3 - ($ - %%insn_0040a27f) db 0
    %%insn_0040a282:
    mov [edx+0x41f604],eax ; 0040A282 898204F64100
    %if ($ - %%insn_0040a282) > 6
        %error "LONG_0040A282"
    %endif
    times 6 - ($ - %%insn_0040a282) db 0
    %%insn_0040a288:
    mov eax,[ebp-0x1c] ; 0040A288 8B45E4
    %if ($ - %%insn_0040a288) > 3
        %error "LONG_0040A288"
    %endif
    times 3 - ($ - %%insn_0040a288) db 0
    %%insn_0040a28b:
    add eax,0x1 ; 0040A28B 83C001
    %if ($ - %%insn_0040a28b) > 3
        %error "LONG_0040A28B"
    %endif
    times 3 - ($ - %%insn_0040a28b) db 0
    %%insn_0040a28e:
    mov ecx,[ebp-0x10] ; 0040A28E 8B4DF0
    %if ($ - %%insn_0040a28e) > 3
        %error "LONG_0040A28E"
    %endif
    times 3 - ($ - %%insn_0040a28e) db 0
    %%insn_0040a291:
    mov [fs:0x0],ecx ; 0040A291 64890D00000000
    %if ($ - %%insn_0040a291) > 7
        %error "LONG_0040A291"
    %endif
    times 7 - ($ - %%insn_0040a291) db 0
    %%insn_0040a298:
    pop edi ; 0040A298 5F
    %if ($ - %%insn_0040a298) > 1
        %error "LONG_0040A298"
    %endif
    times 1 - ($ - %%insn_0040a298) db 0
    %%insn_0040a299:
    pop esi ; 0040A299 5E
    %if ($ - %%insn_0040a299) > 1
        %error "LONG_0040A299"
    %endif
    times 1 - ($ - %%insn_0040a299) db 0
    %%insn_0040a29a:
    pop ebx ; 0040A29A 5B
    %if ($ - %%insn_0040a29a) > 1
        %error "LONG_0040A29A"
    %endif
    times 1 - ($ - %%insn_0040a29a) db 0
    db 0x8B, 0xE5 ; 0040A29B 8BE5 | mov esp,ebp | encoding preserved
    %%insn_0040a29d:
    pop ebp ; 0040A29D 5D
    %if ($ - %%insn_0040a29d) > 1
        %error "LONG_0040A29D"
    %endif
    times 1 - ($ - %%insn_0040a29d) db 0
    %%insn_0040a29e:
    ret ; 0040A29E C3
    %if ($ - %%insn_0040a29e) > 1
        %error "LONG_0040A29E"
    %endif
    times 1 - ($ - %%insn_0040a29e) db 0
    %if ($ - %%fragment_start) != 80
        %error "function fragment size drift: 0040A24F"
    %endif
%endmacro
