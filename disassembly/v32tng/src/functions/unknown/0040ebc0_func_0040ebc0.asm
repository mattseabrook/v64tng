; PE virtual entry 0040EBC0
; Ghidra working symbol: FUN_0040ebc0
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_0040ebc0_part_00 0
    %%fragment_start:
func_0040ebc0:
    %%insn_0040ebc0:
    sub esp,0x24c ; 0040EBC0 81EC4C020000
    %if ($ - %%insn_0040ebc0) > 6
        %error "LONG_0040EBC0"
    %endif
    times 6 - ($ - %%insn_0040ebc0) db 0
    %%insn_0040ebc6:
    push ebx ; 0040EBC6 53
    %if ($ - %%insn_0040ebc6) > 1
        %error "LONG_0040EBC6"
    %endif
    times 1 - ($ - %%insn_0040ebc6) db 0
    %%insn_0040ebc7:
    push ebp ; 0040EBC7 55
    %if ($ - %%insn_0040ebc7) > 1
        %error "LONG_0040EBC7"
    %endif
    times 1 - ($ - %%insn_0040ebc7) db 0
    %%insn_0040ebc8:
    push esi ; 0040EBC8 56
    %if ($ - %%insn_0040ebc8) > 1
        %error "LONG_0040EBC8"
    %endif
    times 1 - ($ - %%insn_0040ebc8) db 0
    %%insn_0040ebc9:
    push edi ; 0040EBC9 57
    %if ($ - %%insn_0040ebc9) > 1
        %error "LONG_0040EBC9"
    %endif
    times 1 - ($ - %%insn_0040ebc9) db 0
    %%insn_0040ebca:
    mov edi,[esp+0x264] ; 0040EBCA 8BBC2464020000
    %if ($ - %%insn_0040ebca) > 7
        %error "LONG_0040EBCA"
    %endif
    times 7 - ($ - %%insn_0040ebca) db 0
    db 0x33, 0xC9 ; 0040EBD1 33C9 | xor ecx,ecx | encoding preserved
    db 0x33, 0xED ; 0040EBD3 33ED | xor ebp,ebp | encoding preserved
    %%insn_0040ebd5:
    mov [esp+0x1c],ecx ; 0040EBD5 894C241C
    %if ($ - %%insn_0040ebd5) > 4
        %error "LONG_0040EBD5"
    %endif
    times 4 - ($ - %%insn_0040ebd5) db 0
    %%insn_0040ebd9:
    mov bl,[edi] ; 0040EBD9 8A1F
    %if ($ - %%insn_0040ebd9) > 2
        %error "LONG_0040EBD9"
    %endif
    times 2 - ($ - %%insn_0040ebd9) db 0
    %%insn_0040ebdb:
    inc edi ; 0040EBDB 47
    %if ($ - %%insn_0040ebdb) > 1
        %error "LONG_0040EBDB"
    %endif
    times 1 - ($ - %%insn_0040ebdb) db 0
    %%insn_0040ebdc:
    test bl,bl ; 0040EBDC 84DB
    %if ($ - %%insn_0040ebdc) > 2
        %error "LONG_0040EBDC"
    %endif
    times 2 - ($ - %%insn_0040ebdc) db 0
    %%insn_0040ebde:
    mov [esp+0x40],bl ; 0040EBDE 885C2440
    %if ($ - %%insn_0040ebde) > 4
        %error "LONG_0040EBDE"
    %endif
    times 4 - ($ - %%insn_0040ebde) db 0
    %%insn_0040ebe2:
    mov [esp+0x264],edi ; 0040EBE2 89BC2464020000
    %if ($ - %%insn_0040ebe2) > 7
        %error "LONG_0040EBE2"
    %endif
    times 7 - ($ - %%insn_0040ebe2) db 0
    %%insn_0040ebe9:
    jz 0x40f417 ; 0040EBE9 0F8428080000
    %if ($ - %%insn_0040ebe9) > 6
        %error "LONG_0040EBE9"
    %endif
    times 6 - ($ - %%insn_0040ebe9) db 0
    %%insn_0040ebef:
    mov esi,[esp+0x28] ; 0040EBEF 8B742428
    %if ($ - %%insn_0040ebef) > 4
        %error "LONG_0040EBEF"
    %endif
    times 4 - ($ - %%insn_0040ebef) db 0
    %%insn_0040ebf3:
    jmp short 0x40ebfd ; 0040EBF3 EB08
    %if ($ - %%insn_0040ebf3) > 2
        %error "LONG_0040EBF3"
    %endif
    times 2 - ($ - %%insn_0040ebf3) db 0
    %%insn_0040ebf5:
    mov esi,[esp+0x28] ; 0040EBF5 8B742428
    %if ($ - %%insn_0040ebf5) > 4
        %error "LONG_0040EBF5"
    %endif
    times 4 - ($ - %%insn_0040ebf5) db 0
    %%insn_0040ebf9:
    mov ecx,[esp+0x3c] ; 0040EBF9 8B4C243C
    %if ($ - %%insn_0040ebf9) > 4
        %error "LONG_0040EBF9"
    %endif
    times 4 - ($ - %%insn_0040ebf9) db 0
    %%insn_0040ebfd:
    mov eax,[esp+0x1c] ; 0040EBFD 8B44241C
    %if ($ - %%insn_0040ebfd) > 4
        %error "LONG_0040EBFD"
    %endif
    times 4 - ($ - %%insn_0040ebfd) db 0
    db 0x33, 0xD2 ; 0040EC01 33D2 | xor edx,edx | encoding preserved
    db 0x3B, 0xC2 ; 0040EC03 3BC2 | cmp eax,edx | encoding preserved
    %%insn_0040ec05:
    jl 0x40f417 ; 0040EC05 0F8C0C080000
    %if ($ - %%insn_0040ec05) > 6
        %error "LONG_0040EC05"
    %endif
    times 6 - ($ - %%insn_0040ec05) db 0
    %%insn_0040ec0b:
    cmp bl,0x20 ; 0040EC0B 80FB20
    %if ($ - %%insn_0040ec0b) > 3
        %error "LONG_0040EC0B"
    %endif
    times 3 - ($ - %%insn_0040ec0b) db 0
    %%insn_0040ec0e:
    jl short 0x40ec23 ; 0040EC0E 7C13
    %if ($ - %%insn_0040ec0e) > 2
        %error "LONG_0040EC0E"
    %endif
    times 2 - ($ - %%insn_0040ec0e) db 0
    %%insn_0040ec10:
    cmp bl,0x78 ; 0040EC10 80FB78
    %if ($ - %%insn_0040ec10) > 3
        %error "LONG_0040EC10"
    %endif
    times 3 - ($ - %%insn_0040ec10) db 0
    %%insn_0040ec13:
    jg short 0x40ec23 ; 0040EC13 7F0E
    %if ($ - %%insn_0040ec13) > 2
        %error "LONG_0040EC13"
    %endif
    times 2 - ($ - %%insn_0040ec13) db 0
    %%insn_0040ec15:
    movsx eax,bl ; 0040EC15 0FBEC3
    %if ($ - %%insn_0040ec15) > 3
        %error "LONG_0040EC15"
    %endif
    times 3 - ($ - %%insn_0040ec15) db 0
    %%insn_0040ec18:
    mov al,[eax+0x41a138] ; 0040EC18 8A8038A14100
    %if ($ - %%insn_0040ec18) > 6
        %error "LONG_0040EC18"
    %endif
    times 6 - ($ - %%insn_0040ec18) db 0
    %%insn_0040ec1e:
    and eax,0xf ; 0040EC1E 83E00F
    %if ($ - %%insn_0040ec1e) > 3
        %error "LONG_0040EC1E"
    %endif
    times 3 - ($ - %%insn_0040ec1e) db 0
    %%insn_0040ec21:
    jmp short 0x40ec25 ; 0040EC21 EB02
    %if ($ - %%insn_0040ec21) > 2
        %error "LONG_0040EC21"
    %endif
    times 2 - ($ - %%insn_0040ec21) db 0
    db 0x33, 0xC0 ; 0040EC23 33C0 | xor eax,eax | encoding preserved
    %%insn_0040ec25:
    movsx eax,byte [ecx+eax*8+0x41a158] ; 0040EC25 0FBE84C158A14100
    %if ($ - %%insn_0040ec25) > 8
        %error "LONG_0040EC25"
    %endif
    times 8 - ($ - %%insn_0040ec25) db 0
    %%insn_0040ec2d:
    sar eax,byte 0x4 ; 0040EC2D C1F804
    %if ($ - %%insn_0040ec2d) > 3
        %error "LONG_0040EC2D"
    %endif
    times 3 - ($ - %%insn_0040ec2d) db 0
    %%insn_0040ec30:
    cmp eax,0x7 ; 0040EC30 83F807
    %if ($ - %%insn_0040ec30) > 3
        %error "LONG_0040EC30"
    %endif
    times 3 - ($ - %%insn_0040ec30) db 0
    %%insn_0040ec33:
    mov [esp+0x3c],eax ; 0040EC33 8944243C
    %if ($ - %%insn_0040ec33) > 4
        %error "LONG_0040EC33"
    %endif
    times 4 - ($ - %%insn_0040ec33) db 0
    %%insn_0040ec37:
    ja 0x40f3fa ; 0040EC37 0F87BD070000
    %if ($ - %%insn_0040ec37) > 6
        %error "LONG_0040EC37"
    %endif
    times 6 - ($ - %%insn_0040ec37) db 0
    %%insn_0040ec3d:
    jmp dword near [eax*4+0x40f43c] ; 0040EC3D FF24853CF44000
    %if ($ - %%insn_0040ec3d) > 7
        %error "LONG_0040EC3D"
    %endif
    times 7 - ($ - %%insn_0040ec3d) db 0
    %%insn_0040ec44:
    mov [esp+0x44],edx ; 0040EC44 89542444
    %if ($ - %%insn_0040ec44) > 4
        %error "LONG_0040EC44"
    %endif
    times 4 - ($ - %%insn_0040ec44) db 0
    %%insn_0040ec48:
    mov [esp+0x34],edx ; 0040EC48 89542434
    %if ($ - %%insn_0040ec48) > 4
        %error "LONG_0040EC48"
    %endif
    times 4 - ($ - %%insn_0040ec48) db 0
    %%insn_0040ec4c:
    mov [esp+0x28],edx ; 0040EC4C 89542428
    %if ($ - %%insn_0040ec4c) > 4
        %error "LONG_0040EC4C"
    %endif
    times 4 - ($ - %%insn_0040ec4c) db 0
    %%insn_0040ec50:
    mov [esp+0x24],edx ; 0040EC50 89542424
    %if ($ - %%insn_0040ec50) > 4
        %error "LONG_0040EC50"
    %endif
    times 4 - ($ - %%insn_0040ec50) db 0
    %%insn_0040ec54:
    mov [esp+0x10],edx ; 0040EC54 89542410
    %if ($ - %%insn_0040ec54) > 4
        %error "LONG_0040EC54"
    %endif
    times 4 - ($ - %%insn_0040ec54) db 0
    %%insn_0040ec58:
    mov dword [esp+0x18],0xffffffff ; 0040EC58 C7442418FFFFFFFF
    %if ($ - %%insn_0040ec58) > 8
        %error "LONG_0040EC58"
    %endif
    times 8 - ($ - %%insn_0040ec58) db 0
    %%insn_0040ec60:
    mov [esp+0x2c],edx ; 0040EC60 8954242C
    %if ($ - %%insn_0040ec60) > 4
        %error "LONG_0040EC60"
    %endif
    times 4 - ($ - %%insn_0040ec60) db 0
    %%insn_0040ec64:
    jmp 0x40f3fa ; 0040EC64 E991070000
    %if ($ - %%insn_0040ec64) > 5
        %error "LONG_0040EC64"
    %endif
    times 5 - ($ - %%insn_0040ec64) db 0
    %%insn_0040ec69:
    movsx eax,bl ; 0040EC69 0FBEC3
    %if ($ - %%insn_0040ec69) > 3
        %error "LONG_0040EC69"
    %endif
    times 3 - ($ - %%insn_0040ec69) db 0
    %%insn_0040ec6c:
    add eax,0xffffffffffffffe0 ; 0040EC6C 83C0E0
    %if ($ - %%insn_0040ec6c) > 3
        %error "LONG_0040EC6C"
    %endif
    times 3 - ($ - %%insn_0040ec6c) db 0
    %%insn_0040ec6f:
    cmp eax,0x10 ; 0040EC6F 83F810
    %if ($ - %%insn_0040ec6f) > 3
        %error "LONG_0040EC6F"
    %endif
    times 3 - ($ - %%insn_0040ec6f) db 0
    %%insn_0040ec72:
    ja 0x40f3fa ; 0040EC72 0F8782070000
    %if ($ - %%insn_0040ec72) > 6
        %error "LONG_0040EC72"
    %endif
    times 6 - ($ - %%insn_0040ec72) db 0
    db 0x33, 0xC9 ; 0040EC78 33C9 | xor ecx,ecx | encoding preserved
    %%insn_0040ec7a:
    mov cl,[eax+0x40f474] ; 0040EC7A 8A8874F44000
    %if ($ - %%insn_0040ec7a) > 6
        %error "LONG_0040EC7A"
    %endif
    times 6 - ($ - %%insn_0040ec7a) db 0
    %%insn_0040ec80:
    jmp dword near [ecx*4+0x40f45c] ; 0040EC80 FF248D5CF44000
    %if ($ - %%insn_0040ec80) > 7
        %error "LONG_0040EC80"
    %endif
    times 7 - ($ - %%insn_0040ec80) db 0
    %%insn_0040ec87:
    mov eax,[esp+0x10] ; 0040EC87 8B442410
    %if ($ - %%insn_0040ec87) > 4
        %error "LONG_0040EC87"
    %endif
    times 4 - ($ - %%insn_0040ec87) db 0
    %%insn_0040ec8b:
    or al,0x4 ; 0040EC8B 0C04
    %if ($ - %%insn_0040ec8b) > 2
        %error "LONG_0040EC8B"
    %endif
    times 2 - ($ - %%insn_0040ec8b) db 0
    %%insn_0040ec8d:
    mov [esp+0x10],eax ; 0040EC8D 89442410
    %if ($ - %%insn_0040ec8d) > 4
        %error "LONG_0040EC8D"
    %endif
    times 4 - ($ - %%insn_0040ec8d) db 0
    %%insn_0040ec91:
    jmp 0x40f3fa ; 0040EC91 E964070000
    %if ($ - %%insn_0040ec91) > 5
        %error "LONG_0040EC91"
    %endif
    times 5 - ($ - %%insn_0040ec91) db 0
    %%insn_0040ec96:
    mov eax,[esp+0x10] ; 0040EC96 8B442410
    %if ($ - %%insn_0040ec96) > 4
        %error "LONG_0040EC96"
    %endif
    times 4 - ($ - %%insn_0040ec96) db 0
    %%insn_0040ec9a:
    or al,0x1 ; 0040EC9A 0C01
    %if ($ - %%insn_0040ec9a) > 2
        %error "LONG_0040EC9A"
    %endif
    times 2 - ($ - %%insn_0040ec9a) db 0
    %%insn_0040ec9c:
    mov [esp+0x10],eax ; 0040EC9C 89442410
    %if ($ - %%insn_0040ec9c) > 4
        %error "LONG_0040EC9C"
    %endif
    times 4 - ($ - %%insn_0040ec9c) db 0
    %%insn_0040eca0:
    jmp 0x40f3fa ; 0040ECA0 E955070000
    %if ($ - %%insn_0040eca0) > 5
        %error "LONG_0040ECA0"
    %endif
    times 5 - ($ - %%insn_0040eca0) db 0
    %%insn_0040eca5:
    mov eax,[esp+0x10] ; 0040ECA5 8B442410
    %if ($ - %%insn_0040eca5) > 4
        %error "LONG_0040ECA5"
    %endif
    times 4 - ($ - %%insn_0040eca5) db 0
    %%insn_0040eca9:
    or al,0x2 ; 0040ECA9 0C02
    %if ($ - %%insn_0040eca9) > 2
        %error "LONG_0040ECA9"
    %endif
    times 2 - ($ - %%insn_0040eca9) db 0
    %%insn_0040ecab:
    mov [esp+0x10],eax ; 0040ECAB 89442410
    %if ($ - %%insn_0040ecab) > 4
        %error "LONG_0040ECAB"
    %endif
    times 4 - ($ - %%insn_0040ecab) db 0
    %%insn_0040ecaf:
    jmp 0x40f3fa ; 0040ECAF E946070000
    %if ($ - %%insn_0040ecaf) > 5
        %error "LONG_0040ECAF"
    %endif
    times 5 - ($ - %%insn_0040ecaf) db 0
    %%insn_0040ecb4:
    mov eax,[esp+0x10] ; 0040ECB4 8B442410
    %if ($ - %%insn_0040ecb4) > 4
        %error "LONG_0040ECB4"
    %endif
    times 4 - ($ - %%insn_0040ecb4) db 0
    %%insn_0040ecb8:
    or al,0x80 ; 0040ECB8 0C80
    %if ($ - %%insn_0040ecb8) > 2
        %error "LONG_0040ECB8"
    %endif
    times 2 - ($ - %%insn_0040ecb8) db 0
    %%insn_0040ecba:
    mov [esp+0x10],eax ; 0040ECBA 89442410
    %if ($ - %%insn_0040ecba) > 4
        %error "LONG_0040ECBA"
    %endif
    times 4 - ($ - %%insn_0040ecba) db 0
    %%insn_0040ecbe:
    jmp 0x40f3fa ; 0040ECBE E937070000
    %if ($ - %%insn_0040ecbe) > 5
        %error "LONG_0040ECBE"
    %endif
    times 5 - ($ - %%insn_0040ecbe) db 0
    %%insn_0040ecc3:
    mov eax,[esp+0x10] ; 0040ECC3 8B442410
    %if ($ - %%insn_0040ecc3) > 4
        %error "LONG_0040ECC3"
    %endif
    times 4 - ($ - %%insn_0040ecc3) db 0
    %%insn_0040ecc7:
    or al,0x8 ; 0040ECC7 0C08
    %if ($ - %%insn_0040ecc7) > 2
        %error "LONG_0040ECC7"
    %endif
    times 2 - ($ - %%insn_0040ecc7) db 0
    %%insn_0040ecc9:
    mov [esp+0x10],eax ; 0040ECC9 89442410
    %if ($ - %%insn_0040ecc9) > 4
        %error "LONG_0040ECC9"
    %endif
    times 4 - ($ - %%insn_0040ecc9) db 0
    %%insn_0040eccd:
    jmp 0x40f3fa ; 0040ECCD E928070000
    %if ($ - %%insn_0040eccd) > 5
        %error "LONG_0040ECCD"
    %endif
    times 5 - ($ - %%insn_0040eccd) db 0
    %%insn_0040ecd2:
    cmp bl,0x2a ; 0040ECD2 80FB2A
    %if ($ - %%insn_0040ecd2) > 3
        %error "LONG_0040ECD2"
    %endif
    times 3 - ($ - %%insn_0040ecd2) db 0
    %%insn_0040ecd5:
    jnz short 0x40ed09 ; 0040ECD5 7532
    %if ($ - %%insn_0040ecd5) > 2
        %error "LONG_0040ECD5"
    %endif
    times 2 - ($ - %%insn_0040ecd5) db 0
    %%insn_0040ecd7:
    lea edx,[esp+0x268] ; 0040ECD7 8D942468020000
    %if ($ - %%insn_0040ecd7) > 7
        %error "LONG_0040ECD7"
    %endif
    times 7 - ($ - %%insn_0040ecd7) db 0
    %%insn_0040ecde:
    push edx ; 0040ECDE 52
    %if ($ - %%insn_0040ecde) > 1
        %error "LONG_0040ECDE"
    %endif
    times 1 - ($ - %%insn_0040ecde) db 0
    %%insn_0040ecdf:
    call 0x40f620 ; 0040ECDF E83C090000
    %if ($ - %%insn_0040ecdf) > 5
        %error "LONG_0040ECDF"
    %endif
    times 5 - ($ - %%insn_0040ecdf) db 0
    %%insn_0040ece4:
    add esp,0x4 ; 0040ECE4 83C404
    %if ($ - %%insn_0040ece4) > 3
        %error "LONG_0040ECE4"
    %endif
    times 3 - ($ - %%insn_0040ece4) db 0
    %%insn_0040ece7:
    mov [esp+0x28],eax ; 0040ECE7 89442428
    %if ($ - %%insn_0040ece7) > 4
        %error "LONG_0040ECE7"
    %endif
    times 4 - ($ - %%insn_0040ece7) db 0
    %%insn_0040eceb:
    test eax,eax ; 0040ECEB 85C0
    %if ($ - %%insn_0040eceb) > 2
        %error "LONG_0040ECEB"
    %endif
    times 2 - ($ - %%insn_0040eceb) db 0
    %%insn_0040eced:
    jnl 0x40f3fa ; 0040ECED 0F8D07070000
    %if ($ - %%insn_0040eced) > 6
        %error "LONG_0040ECED"
    %endif
    times 6 - ($ - %%insn_0040eced) db 0
    %%insn_0040ecf3:
    mov edx,[esp+0x10] ; 0040ECF3 8B542410
    %if ($ - %%insn_0040ecf3) > 4
        %error "LONG_0040ECF3"
    %endif
    times 4 - ($ - %%insn_0040ecf3) db 0
    %%insn_0040ecf7:
    or edx,0x4 ; 0040ECF7 83CA04
    %if ($ - %%insn_0040ecf7) > 3
        %error "LONG_0040ECF7"
    %endif
    times 3 - ($ - %%insn_0040ecf7) db 0
    %%insn_0040ecfa:
    neg eax ; 0040ECFA F7D8
    %if ($ - %%insn_0040ecfa) > 2
        %error "LONG_0040ECFA"
    %endif
    times 2 - ($ - %%insn_0040ecfa) db 0
    %%insn_0040ecfc:
    mov [esp+0x10],edx ; 0040ECFC 89542410
    %if ($ - %%insn_0040ecfc) > 4
        %error "LONG_0040ECFC"
    %endif
    times 4 - ($ - %%insn_0040ecfc) db 0
    %%insn_0040ed00:
    mov [esp+0x28],eax ; 0040ED00 89442428
    %if ($ - %%insn_0040ed00) > 4
        %error "LONG_0040ED00"
    %endif
    times 4 - ($ - %%insn_0040ed00) db 0
    %%insn_0040ed04:
    jmp 0x40f3fa ; 0040ED04 E9F1060000
    %if ($ - %%insn_0040ed04) > 5
        %error "LONG_0040ED04"
    %endif
    times 5 - ($ - %%insn_0040ed04) db 0
    %%insn_0040ed09:
    movsx ecx,bl ; 0040ED09 0FBECB
    %if ($ - %%insn_0040ed09) > 3
        %error "LONG_0040ED09"
    %endif
    times 3 - ($ - %%insn_0040ed09) db 0
    %%insn_0040ed0c:
    lea eax,[esi+esi*4] ; 0040ED0C 8D04B6
    %if ($ - %%insn_0040ed0c) > 3
        %error "LONG_0040ED0C"
    %endif
    times 3 - ($ - %%insn_0040ed0c) db 0
    %%insn_0040ed0f:
    lea edx,[ecx+eax*2-0x30] ; 0040ED0F 8D5441D0
    %if ($ - %%insn_0040ed0f) > 4
        %error "LONG_0040ED0F"
    %endif
    times 4 - ($ - %%insn_0040ed0f) db 0
    %%insn_0040ed13:
    mov [esp+0x28],edx ; 0040ED13 89542428
    %if ($ - %%insn_0040ed13) > 4
        %error "LONG_0040ED13"
    %endif
    times 4 - ($ - %%insn_0040ed13) db 0
    %%insn_0040ed17:
    jmp 0x40f3fa ; 0040ED17 E9DE060000
    %if ($ - %%insn_0040ed17) > 5
        %error "LONG_0040ED17"
    %endif
    times 5 - ($ - %%insn_0040ed17) db 0
    %%insn_0040ed1c:
    mov [esp+0x18],edx ; 0040ED1C 89542418
    %if ($ - %%insn_0040ed1c) > 4
        %error "LONG_0040ED1C"
    %endif
    times 4 - ($ - %%insn_0040ed1c) db 0
    %%insn_0040ed20:
    jmp 0x40f3fa ; 0040ED20 E9D5060000
    %if ($ - %%insn_0040ed20) > 5
        %error "LONG_0040ED20"
    %endif
    times 5 - ($ - %%insn_0040ed20) db 0
    %%insn_0040ed25:
    cmp bl,0x2a ; 0040ED25 80FB2A
    %if ($ - %%insn_0040ed25) > 3
        %error "LONG_0040ED25"
    %endif
    times 3 - ($ - %%insn_0040ed25) db 0
    %%insn_0040ed28:
    jnz short 0x40ed53 ; 0040ED28 7529
    %if ($ - %%insn_0040ed28) > 2
        %error "LONG_0040ED28"
    %endif
    times 2 - ($ - %%insn_0040ed28) db 0
    %%insn_0040ed2a:
    lea eax,[esp+0x268] ; 0040ED2A 8D842468020000
    %if ($ - %%insn_0040ed2a) > 7
        %error "LONG_0040ED2A"
    %endif
    times 7 - ($ - %%insn_0040ed2a) db 0
    %%insn_0040ed31:
    push eax ; 0040ED31 50
    %if ($ - %%insn_0040ed31) > 1
        %error "LONG_0040ED31"
    %endif
    times 1 - ($ - %%insn_0040ed31) db 0
    %%insn_0040ed32:
    call 0x40f620 ; 0040ED32 E8E9080000
    %if ($ - %%insn_0040ed32) > 5
        %error "LONG_0040ED32"
    %endif
    times 5 - ($ - %%insn_0040ed32) db 0
    %%insn_0040ed37:
    add esp,0x4 ; 0040ED37 83C404
    %if ($ - %%insn_0040ed37) > 3
        %error "LONG_0040ED37"
    %endif
    times 3 - ($ - %%insn_0040ed37) db 0
    %%insn_0040ed3a:
    mov [esp+0x18],eax ; 0040ED3A 89442418
    %if ($ - %%insn_0040ed3a) > 4
        %error "LONG_0040ED3A"
    %endif
    times 4 - ($ - %%insn_0040ed3a) db 0
    %%insn_0040ed3e:
    test eax,eax ; 0040ED3E 85C0
    %if ($ - %%insn_0040ed3e) > 2
        %error "LONG_0040ED3E"
    %endif
    times 2 - ($ - %%insn_0040ed3e) db 0
    %%insn_0040ed40:
    jnl 0x40f3fa ; 0040ED40 0F8DB4060000
    %if ($ - %%insn_0040ed40) > 6
        %error "LONG_0040ED40"
    %endif
    times 6 - ($ - %%insn_0040ed40) db 0
    %%insn_0040ed46:
    mov dword [esp+0x18],0xffffffff ; 0040ED46 C7442418FFFFFFFF
    %if ($ - %%insn_0040ed46) > 8
        %error "LONG_0040ED46"
    %endif
    times 8 - ($ - %%insn_0040ed46) db 0
    %%insn_0040ed4e:
    jmp 0x40f3fa ; 0040ED4E E9A7060000
    %if ($ - %%insn_0040ed4e) > 5
        %error "LONG_0040ED4E"
    %endif
    times 5 - ($ - %%insn_0040ed4e) db 0
    %%insn_0040ed53:
    mov eax,[esp+0x18] ; 0040ED53 8B442418
    %if ($ - %%insn_0040ed53) > 4
        %error "LONG_0040ED53"
    %endif
    times 4 - ($ - %%insn_0040ed53) db 0
    %%insn_0040ed57:
    movsx edx,bl ; 0040ED57 0FBED3
    %if ($ - %%insn_0040ed57) > 3
        %error "LONG_0040ED57"
    %endif
    times 3 - ($ - %%insn_0040ed57) db 0
    %%insn_0040ed5a:
    lea ecx,[eax+eax*4] ; 0040ED5A 8D0C80
    %if ($ - %%insn_0040ed5a) > 3
        %error "LONG_0040ED5A"
    %endif
    times 3 - ($ - %%insn_0040ed5a) db 0
    %%insn_0040ed5d:
    lea eax,[edx+ecx*2-0x30] ; 0040ED5D 8D444AD0
    %if ($ - %%insn_0040ed5d) > 4
        %error "LONG_0040ED5D"
    %endif
    times 4 - ($ - %%insn_0040ed5d) db 0
    %%insn_0040ed61:
    mov [esp+0x18],eax ; 0040ED61 89442418
    %if ($ - %%insn_0040ed61) > 4
        %error "LONG_0040ED61"
    %endif
    times 4 - ($ - %%insn_0040ed61) db 0
    %%insn_0040ed65:
    jmp 0x40f3fa ; 0040ED65 E990060000
    %if ($ - %%insn_0040ed65) > 5
        %error "LONG_0040ED65"
    %endif
    times 5 - ($ - %%insn_0040ed65) db 0
    %%insn_0040ed6a:
    movsx eax,bl ; 0040ED6A 0FBEC3
    %if ($ - %%insn_0040ed6a) > 3
        %error "LONG_0040ED6A"
    %endif
    times 3 - ($ - %%insn_0040ed6a) db 0
    %%insn_0040ed6d:
    add eax,0xffffffffffffffb7 ; 0040ED6D 83C0B7
    %if ($ - %%insn_0040ed6d) > 3
        %error "LONG_0040ED6D"
    %endif
    times 3 - ($ - %%insn_0040ed6d) db 0
    %%insn_0040ed70:
    cmp eax,0x2e ; 0040ED70 83F82E
    %if ($ - %%insn_0040ed70) > 3
        %error "LONG_0040ED70"
    %endif
    times 3 - ($ - %%insn_0040ed70) db 0
    %%insn_0040ed73:
    ja 0x40f3fa ; 0040ED73 0F8781060000
    %if ($ - %%insn_0040ed73) > 6
        %error "LONG_0040ED73"
    %endif
    times 6 - ($ - %%insn_0040ed73) db 0
    db 0x33, 0xC9 ; 0040ED79 33C9 | xor ecx,ecx | encoding preserved
    %%insn_0040ed7b:
    mov cl,[eax+0x40f49c] ; 0040ED7B 8A889CF44000
    %if ($ - %%insn_0040ed7b) > 6
        %error "LONG_0040ED7B"
    %endif
    times 6 - ($ - %%insn_0040ed7b) db 0
    %%insn_0040ed81:
    jmp dword near [ecx*4+0x40f488] ; 0040ED81 FF248D88F44000
    %if ($ - %%insn_0040ed81) > 7
        %error "LONG_0040ED81"
    %endif
    times 7 - ($ - %%insn_0040ed81) db 0
    %%insn_0040ed88:
    mov eax,[esp+0x10] ; 0040ED88 8B442410
    %if ($ - %%insn_0040ed88) > 4
        %error "LONG_0040ED88"
    %endif
    times 4 - ($ - %%insn_0040ed88) db 0
    %%insn_0040ed8c:
    or al,0x10 ; 0040ED8C 0C10
    %if ($ - %%insn_0040ed8c) > 2
        %error "LONG_0040ED8C"
    %endif
    times 2 - ($ - %%insn_0040ed8c) db 0
    %%insn_0040ed8e:
    mov [esp+0x10],eax ; 0040ED8E 89442410
    %if ($ - %%insn_0040ed8e) > 4
        %error "LONG_0040ED8E"
    %endif
    times 4 - ($ - %%insn_0040ed8e) db 0
    %%insn_0040ed92:
    jmp 0x40f3fa ; 0040ED92 E963060000
    %if ($ - %%insn_0040ed92) > 5
        %error "LONG_0040ED92"
    %endif
    times 5 - ($ - %%insn_0040ed92) db 0
    %%insn_0040ed97:
    cmp byte [edi],0x36 ; 0040ED97 803F36
    %if ($ - %%insn_0040ed97) > 3
        %error "LONG_0040ED97"
    %endif
    times 3 - ($ - %%insn_0040ed97) db 0
    %%insn_0040ed9a:
    jnz short 0x40edbc ; 0040ED9A 7520
    %if ($ - %%insn_0040ed9a) > 2
        %error "LONG_0040ED9A"
    %endif
    times 2 - ($ - %%insn_0040ed9a) db 0
    %%insn_0040ed9c:
    cmp byte [edi+0x1],0x34 ; 0040ED9C 807F0134
    %if ($ - %%insn_0040ed9c) > 4
        %error "LONG_0040ED9C"
    %endif
    times 4 - ($ - %%insn_0040ed9c) db 0
    %%insn_0040eda0:
    jnz short 0x40edbc ; 0040EDA0 751A
    %if ($ - %%insn_0040eda0) > 2
        %error "LONG_0040EDA0"
    %endif
    times 2 - ($ - %%insn_0040eda0) db 0
    %%insn_0040eda2:
    mov eax,[esp+0x10] ; 0040EDA2 8B442410
    %if ($ - %%insn_0040eda2) > 4
        %error "LONG_0040EDA2"
    %endif
    times 4 - ($ - %%insn_0040eda2) db 0
    %%insn_0040eda6:
    add edi,0x2 ; 0040EDA6 83C702
    %if ($ - %%insn_0040eda6) > 3
        %error "LONG_0040EDA6"
    %endif
    times 3 - ($ - %%insn_0040eda6) db 0
    %%insn_0040eda9:
    or ah,0x80 ; 0040EDA9 80CC80
    %if ($ - %%insn_0040eda9) > 3
        %error "LONG_0040EDA9"
    %endif
    times 3 - ($ - %%insn_0040eda9) db 0
    %%insn_0040edac:
    mov [esp+0x264],edi ; 0040EDAC 89BC2464020000
    %if ($ - %%insn_0040edac) > 7
        %error "LONG_0040EDAC"
    %endif
    times 7 - ($ - %%insn_0040edac) db 0
    %%insn_0040edb3:
    mov [esp+0x10],eax ; 0040EDB3 89442410
    %if ($ - %%insn_0040edb3) > 4
        %error "LONG_0040EDB3"
    %endif
    times 4 - ($ - %%insn_0040edb3) db 0
    %%insn_0040edb7:
    jmp 0x40f3fa ; 0040EDB7 E93E060000
    %if ($ - %%insn_0040edb7) > 5
        %error "LONG_0040EDB7"
    %endif
    times 5 - ($ - %%insn_0040edb7) db 0
    %%insn_0040edbc:
    mov [esp+0x3c],edx ; 0040EDBC 8954243C
    %if ($ - %%insn_0040edbc) > 4
        %error "LONG_0040EDBC"
    %endif
    times 4 - ($ - %%insn_0040edbc) db 0
    %%insn_0040edc0:
    mov eax,[0x41e640] ; 0040EDC0 A140E64100
    %if ($ - %%insn_0040edc0) > 5
        %error "LONG_0040EDC0"
    %endif
    times 5 - ($ - %%insn_0040edc0) db 0
    %%insn_0040edc5:
    mov [esp+0x2c],edx ; 0040EDC5 8954242C
    %if ($ - %%insn_0040edc5) > 4
        %error "LONG_0040EDC5"
    %endif
    times 4 - ($ - %%insn_0040edc5) db 0
    %%insn_0040edc9:
    mov edx,[esp+0x40] ; 0040EDC9 8B542440
    %if ($ - %%insn_0040edc9) > 4
        %error "LONG_0040EDC9"
    %endif
    times 4 - ($ - %%insn_0040edc9) db 0
    %%insn_0040edcd:
    and edx,0xff ; 0040EDCD 81E2FF000000
    %if ($ - %%insn_0040edcd) > 6
        %error "LONG_0040EDCD"
    %endif
    times 6 - ($ - %%insn_0040edcd) db 0
    %%insn_0040edd3:
    test byte [eax+edx*2+0x1],0x80 ; 0040EDD3 F644500180
    %if ($ - %%insn_0040edd3) > 5
        %error "LONG_0040EDD3"
    %endif
    times 5 - ($ - %%insn_0040edd3) db 0
    %%insn_0040edd8:
    jz short 0x40edfd ; 0040EDD8 7423
    %if ($ - %%insn_0040edd8) > 2
        %error "LONG_0040EDD8"
    %endif
    times 2 - ($ - %%insn_0040edd8) db 0
    %%insn_0040edda:
    mov edx,[esp+0x260] ; 0040EDDA 8B942460020000
    %if ($ - %%insn_0040edda) > 7
        %error "LONG_0040EDDA"
    %endif
    times 7 - ($ - %%insn_0040edda) db 0
    %%insn_0040ede1:
    lea ecx,[esp+0x1c] ; 0040EDE1 8D4C241C
    %if ($ - %%insn_0040ede1) > 4
        %error "LONG_0040EDE1"
    %endif
    times 4 - ($ - %%insn_0040ede1) db 0
    %%insn_0040ede5:
    movsx eax,bl ; 0040EDE5 0FBEC3
    %if ($ - %%insn_0040ede5) > 3
        %error "LONG_0040EDE5"
    %endif
    times 3 - ($ - %%insn_0040ede5) db 0
    %%insn_0040ede8:
    push ecx ; 0040EDE8 51
    %if ($ - %%insn_0040ede8) > 1
        %error "LONG_0040EDE8"
    %endif
    times 1 - ($ - %%insn_0040ede8) db 0
    %%insn_0040ede9:
    push edx ; 0040EDE9 52
    %if ($ - %%insn_0040ede9) > 1
        %error "LONG_0040EDE9"
    %endif
    times 1 - ($ - %%insn_0040ede9) db 0
    %%insn_0040edea:
    push eax ; 0040EDEA 50
    %if ($ - %%insn_0040edea) > 1
        %error "LONG_0040EDEA"
    %endif
    times 1 - ($ - %%insn_0040edea) db 0
    %%insn_0040edeb:
    call 0x40f550 ; 0040EDEB E860070000
    %if ($ - %%insn_0040edeb) > 5
        %error "LONG_0040EDEB"
    %endif
    times 5 - ($ - %%insn_0040edeb) db 0
    %%insn_0040edf0:
    mov bl,[edi] ; 0040EDF0 8A1F
    %if ($ - %%insn_0040edf0) > 2
        %error "LONG_0040EDF0"
    %endif
    times 2 - ($ - %%insn_0040edf0) db 0
    %%insn_0040edf2:
    add esp,0xc ; 0040EDF2 83C40C
    %if ($ - %%insn_0040edf2) > 3
        %error "LONG_0040EDF2"
    %endif
    times 3 - ($ - %%insn_0040edf2) db 0
    %%insn_0040edf5:
    inc edi ; 0040EDF5 47
    %if ($ - %%insn_0040edf5) > 1
        %error "LONG_0040EDF5"
    %endif
    times 1 - ($ - %%insn_0040edf5) db 0
    %%insn_0040edf6:
    mov [esp+0x264],edi ; 0040EDF6 89BC2464020000
    %if ($ - %%insn_0040edf6) > 7
        %error "LONG_0040EDF6"
    %endif
    times 7 - ($ - %%insn_0040edf6) db 0
    %%insn_0040edfd:
    mov edx,[esp+0x260] ; 0040EDFD 8B942460020000
    %if ($ - %%insn_0040edfd) > 7
        %error "LONG_0040EDFD"
    %endif
    times 7 - ($ - %%insn_0040edfd) db 0
    %%insn_0040ee04:
    lea ecx,[esp+0x1c] ; 0040EE04 8D4C241C
    %if ($ - %%insn_0040ee04) > 4
        %error "LONG_0040EE04"
    %endif
    times 4 - ($ - %%insn_0040ee04) db 0
    %%insn_0040ee08:
    movsx eax,bl ; 0040EE08 0FBEC3
    %if ($ - %%insn_0040ee08) > 3
        %error "LONG_0040EE08"
    %endif
    times 3 - ($ - %%insn_0040ee08) db 0
    %%insn_0040ee0b:
    push ecx ; 0040EE0B 51
    %if ($ - %%insn_0040ee0b) > 1
        %error "LONG_0040EE0B"
    %endif
    times 1 - ($ - %%insn_0040ee0b) db 0
    %%insn_0040ee0c:
    push edx ; 0040EE0C 52
    %if ($ - %%insn_0040ee0c) > 1
        %error "LONG_0040EE0C"
    %endif
    times 1 - ($ - %%insn_0040ee0c) db 0
    %%insn_0040ee0d:
    push eax ; 0040EE0D 50
    %if ($ - %%insn_0040ee0d) > 1
        %error "LONG_0040EE0D"
    %endif
    times 1 - ($ - %%insn_0040ee0d) db 0
    %%insn_0040ee0e:
    call 0x40f550 ; 0040EE0E E83D070000
    %if ($ - %%insn_0040ee0e) > 5
        %error "LONG_0040EE0E"
    %endif
    times 5 - ($ - %%insn_0040ee0e) db 0
    %%insn_0040ee13:
    add esp,0xc ; 0040EE13 83C40C
    %if ($ - %%insn_0040ee13) > 3
        %error "LONG_0040EE13"
    %endif
    times 3 - ($ - %%insn_0040ee13) db 0
    %%insn_0040ee16:
    jmp 0x40f3fa ; 0040EE16 E9DF050000
    %if ($ - %%insn_0040ee16) > 5
        %error "LONG_0040EE16"
    %endif
    times 5 - ($ - %%insn_0040ee16) db 0
    %%insn_0040ee1b:
    mov eax,[esp+0x10] ; 0040EE1B 8B442410
    %if ($ - %%insn_0040ee1b) > 4
        %error "LONG_0040EE1B"
    %endif
    times 4 - ($ - %%insn_0040ee1b) db 0
    %%insn_0040ee1f:
    or al,0x20 ; 0040EE1F 0C20
    %if ($ - %%insn_0040ee1f) > 2
        %error "LONG_0040EE1F"
    %endif
    times 2 - ($ - %%insn_0040ee1f) db 0
    %%insn_0040ee21:
    mov [esp+0x10],eax ; 0040EE21 89442410
    %if ($ - %%insn_0040ee21) > 4
        %error "LONG_0040EE21"
    %endif
    times 4 - ($ - %%insn_0040ee21) db 0
    %%insn_0040ee25:
    jmp 0x40f3fa ; 0040EE25 E9D0050000
    %if ($ - %%insn_0040ee25) > 5
        %error "LONG_0040EE25"
    %endif
    times 5 - ($ - %%insn_0040ee25) db 0
    %%insn_0040ee2a:
    mov eax,[esp+0x10] ; 0040EE2A 8B442410
    %if ($ - %%insn_0040ee2a) > 4
        %error "LONG_0040EE2A"
    %endif
    times 4 - ($ - %%insn_0040ee2a) db 0
    %%insn_0040ee2e:
    or ah,0x8 ; 0040EE2E 80CC08
    %if ($ - %%insn_0040ee2e) > 3
        %error "LONG_0040EE2E"
    %endif
    times 3 - ($ - %%insn_0040ee2e) db 0
    %%insn_0040ee31:
    mov [esp+0x10],eax ; 0040EE31 89442410
    %if ($ - %%insn_0040ee31) > 4
        %error "LONG_0040EE31"
    %endif
    times 4 - ($ - %%insn_0040ee31) db 0
    %%insn_0040ee35:
    jmp 0x40f3fa ; 0040EE35 E9C0050000
    %if ($ - %%insn_0040ee35) > 5
        %error "LONG_0040EE35"
    %endif
    times 5 - ($ - %%insn_0040ee35) db 0
    %%insn_0040ee3a:
    movsx eax,bl ; 0040EE3A 0FBEC3
    %if ($ - %%insn_0040ee3a) > 3
        %error "LONG_0040EE3A"
    %endif
    times 3 - ($ - %%insn_0040ee3a) db 0
    %%insn_0040ee3d:
    add eax,0xffffffffffffffbd ; 0040EE3D 83C0BD
    %if ($ - %%insn_0040ee3d) > 3
        %error "LONG_0040EE3D"
    %endif
    times 3 - ($ - %%insn_0040ee3d) db 0
    %%insn_0040ee40:
    cmp eax,0x35 ; 0040EE40 83F835
    %if ($ - %%insn_0040ee40) > 3
        %error "LONG_0040EE40"
    %endif
    times 3 - ($ - %%insn_0040ee40) db 0
    %%insn_0040ee43:
    ja 0x40f2e0 ; 0040EE43 0F8797040000
    %if ($ - %%insn_0040ee43) > 6
        %error "LONG_0040EE43"
    %endif
    times 6 - ($ - %%insn_0040ee43) db 0
    db 0x33, 0xC9 ; 0040EE49 33C9 | xor ecx,ecx | encoding preserved
    %%insn_0040ee4b:
    mov cl,[eax+0x40f510] ; 0040EE4B 8A8810F54000
    %if ($ - %%insn_0040ee4b) > 6
        %error "LONG_0040EE4B"
    %endif
    times 6 - ($ - %%insn_0040ee4b) db 0
    %%insn_0040ee51:
    jmp dword near [ecx*4+0x40f4cc] ; 0040EE51 FF248DCCF44000
    %if ($ - %%insn_0040ee51) > 7
        %error "LONG_0040EE51"
    %endif
    times 7 - ($ - %%insn_0040ee51) db 0
    %%insn_0040ee58:
    mov eax,[esp+0x10] ; 0040EE58 8B442410
    %if ($ - %%insn_0040ee58) > 4
        %error "LONG_0040EE58"
    %endif
    times 4 - ($ - %%insn_0040ee58) db 0
    %%insn_0040ee5c:
    test eax,0x830 ; 0040EE5C A930080000
    %if ($ - %%insn_0040ee5c) > 5
        %error "LONG_0040EE5C"
    %endif
    times 5 - ($ - %%insn_0040ee5c) db 0
    %%insn_0040ee61:
    jnz short 0x40ee6a ; 0040EE61 7507
    %if ($ - %%insn_0040ee61) > 2
        %error "LONG_0040EE61"
    %endif
    times 2 - ($ - %%insn_0040ee61) db 0
    %%insn_0040ee63:
    or ah,0x8 ; 0040EE63 80CC08
    %if ($ - %%insn_0040ee63) > 3
        %error "LONG_0040EE63"
    %endif
    times 3 - ($ - %%insn_0040ee63) db 0
    %%insn_0040ee66:
    mov [esp+0x10],eax ; 0040EE66 89442410
    %if ($ - %%insn_0040ee66) > 4
        %error "LONG_0040EE66"
    %endif
    times 4 - ($ - %%insn_0040ee66) db 0
    %%insn_0040ee6a:
    test dword [esp+0x10],0x810 ; 0040EE6A F744241010080000
    %if ($ - %%insn_0040ee6a) > 8
        %error "LONG_0040EE6A"
    %endif
    times 8 - ($ - %%insn_0040ee6a) db 0
    %%insn_0040ee72:
    jz short 0x40eead ; 0040EE72 7439
    %if ($ - %%insn_0040ee72) > 2
        %error "LONG_0040EE72"
    %endif
    times 2 - ($ - %%insn_0040ee72) db 0
    %%insn_0040ee74:
    lea edx,[esp+0x268] ; 0040EE74 8D942468020000
    %if ($ - %%insn_0040ee74) > 7
        %error "LONG_0040EE74"
    %endif
    times 7 - ($ - %%insn_0040ee74) db 0
    %%insn_0040ee7b:
    push edx ; 0040EE7B 52
    %if ($ - %%insn_0040ee7b) > 1
        %error "LONG_0040EE7B"
    %endif
    times 1 - ($ - %%insn_0040ee7b) db 0
    %%insn_0040ee7c:
    call 0x40f660 ; 0040EE7C E8DF070000
    %if ($ - %%insn_0040ee7c) > 5
        %error "LONG_0040EE7C"
    %endif
    times 5 - ($ - %%insn_0040ee7c) db 0
    %%insn_0040ee81:
    add esp,0x4 ; 0040EE81 83C404
    %if ($ - %%insn_0040ee81) > 3
        %error "LONG_0040EE81"
    %endif
    times 3 - ($ - %%insn_0040ee81) db 0
    %%insn_0040ee84:
    push eax ; 0040EE84 50
    %if ($ - %%insn_0040ee84) > 1
        %error "LONG_0040EE84"
    %endif
    times 1 - ($ - %%insn_0040ee84) db 0
    %%insn_0040ee85:
    lea eax,[esp+0x60] ; 0040EE85 8D442460
    %if ($ - %%insn_0040ee85) > 4
        %error "LONG_0040EE85"
    %endif
    times 4 - ($ - %%insn_0040ee85) db 0
    %%insn_0040ee89:
    push eax ; 0040EE89 50
    %if ($ - %%insn_0040ee89) > 1
        %error "LONG_0040EE89"
    %endif
    times 1 - ($ - %%insn_0040ee89) db 0
    %%insn_0040ee8a:
    call 0x412cd0 ; 0040EE8A E8413E0000
    %if ($ - %%insn_0040ee8a) > 5
        %error "LONG_0040EE8A"
    %endif
    times 5 - ($ - %%insn_0040ee8a) db 0
    db 0x8B, 0xE8 ; 0040EE8F 8BE8 | mov ebp,eax | encoding preserved
    %%insn_0040ee91:
    add esp,0x8 ; 0040EE91 83C408
    %if ($ - %%insn_0040ee91) > 3
        %error "LONG_0040EE91"
    %endif
    times 3 - ($ - %%insn_0040ee91) db 0
    %%insn_0040ee94:
    test ebp,ebp ; 0040EE94 85ED
    %if ($ - %%insn_0040ee94) > 2
        %error "LONG_0040EE94"
    %endif
    times 2 - ($ - %%insn_0040ee94) db 0
    %%insn_0040ee96:
    jnl short 0x40eec6 ; 0040EE96 7D2E
    %if ($ - %%insn_0040ee96) > 2
        %error "LONG_0040EE96"
    %endif
    times 2 - ($ - %%insn_0040ee96) db 0
    %%insn_0040ee98:
    lea edx,[esp+0x5c] ; 0040EE98 8D54245C
    %if ($ - %%insn_0040ee98) > 4
        %error "LONG_0040EE98"
    %endif
    times 4 - ($ - %%insn_0040ee98) db 0
    %%insn_0040ee9c:
    mov dword [esp+0x34],0x1 ; 0040EE9C C744243401000000
    %if ($ - %%insn_0040ee9c) > 8
        %error "LONG_0040EE9C"
    %endif
    times 8 - ($ - %%insn_0040ee9c) db 0
    %%insn_0040eea4:
    mov [esp+0x14],edx ; 0040EEA4 89542414
    %if ($ - %%insn_0040eea4) > 4
        %error "LONG_0040EEA4"
    %endif
    times 4 - ($ - %%insn_0040eea4) db 0
    %%insn_0040eea8:
    jmp 0x40f2e0 ; 0040EEA8 E933040000
    %if ($ - %%insn_0040eea8) > 5
        %error "LONG_0040EEA8"
    %endif
    times 5 - ($ - %%insn_0040eea8) db 0
    %%insn_0040eead:
    lea ecx,[esp+0x268] ; 0040EEAD 8D8C2468020000
    %if ($ - %%insn_0040eead) > 7
        %error "LONG_0040EEAD"
    %endif
    times 7 - ($ - %%insn_0040eead) db 0
    %%insn_0040eeb4:
    push ecx ; 0040EEB4 51
    %if ($ - %%insn_0040eeb4) > 1
        %error "LONG_0040EEB4"
    %endif
    times 1 - ($ - %%insn_0040eeb4) db 0
    %%insn_0040eeb5:
    call 0x40f620 ; 0040EEB5 E866070000
    %if ($ - %%insn_0040eeb5) > 5
        %error "LONG_0040EEB5"
    %endif
    times 5 - ($ - %%insn_0040eeb5) db 0
    %%insn_0040eeba:
    add esp,0x4 ; 0040EEBA 83C404
    %if ($ - %%insn_0040eeba) > 3
        %error "LONG_0040EEBA"
    %endif
    times 3 - ($ - %%insn_0040eeba) db 0
    %%insn_0040eebd:
    mov [esp+0x5c],al ; 0040EEBD 8844245C
    %if ($ - %%insn_0040eebd) > 4
        %error "LONG_0040EEBD"
    %endif
    times 4 - ($ - %%insn_0040eebd) db 0
    %%insn_0040eec1:
    mov ebp,0x1 ; 0040EEC1 BD01000000
    %if ($ - %%insn_0040eec1) > 5
        %error "LONG_0040EEC1"
    %endif
    times 5 - ($ - %%insn_0040eec1) db 0
    %%insn_0040eec6:
    lea edx,[esp+0x5c] ; 0040EEC6 8D54245C
    %if ($ - %%insn_0040eec6) > 4
        %error "LONG_0040EEC6"
    %endif
    times 4 - ($ - %%insn_0040eec6) db 0
    %%insn_0040eeca:
    mov [esp+0x14],edx ; 0040EECA 89542414
    %if ($ - %%insn_0040eeca) > 4
        %error "LONG_0040EECA"
    %endif
    times 4 - ($ - %%insn_0040eeca) db 0
    %%insn_0040eece:
    jmp 0x40f2e0 ; 0040EECE E90D040000
    %if ($ - %%insn_0040eece) > 5
        %error "LONG_0040EECE"
    %endif
    times 5 - ($ - %%insn_0040eece) db 0
    %%insn_0040eed3:
    lea eax,[esp+0x268] ; 0040EED3 8D842468020000
    %if ($ - %%insn_0040eed3) > 7
        %error "LONG_0040EED3"
    %endif
    times 7 - ($ - %%insn_0040eed3) db 0
    %%insn_0040eeda:
    push eax ; 0040EEDA 50
    %if ($ - %%insn_0040eeda) > 1
        %error "LONG_0040EEDA"
    %endif
    times 1 - ($ - %%insn_0040eeda) db 0
    %%insn_0040eedb:
    call 0x40f620 ; 0040EEDB E840070000
    %if ($ - %%insn_0040eedb) > 5
        %error "LONG_0040EEDB"
    %endif
    times 5 - ($ - %%insn_0040eedb) db 0
    %%insn_0040eee0:
    add esp,0x4 ; 0040EEE0 83C404
    %if ($ - %%insn_0040eee0) > 3
        %error "LONG_0040EEE0"
    %endif
    times 3 - ($ - %%insn_0040eee0) db 0
    %%insn_0040eee3:
    test eax,eax ; 0040EEE3 85C0
    %if ($ - %%insn_0040eee3) > 2
        %error "LONG_0040EEE3"
    %endif
    times 2 - ($ - %%insn_0040eee3) db 0
    %%insn_0040eee5:
    jz short 0x40ef21 ; 0040EEE5 743A
    %if ($ - %%insn_0040eee5) > 2
        %error "LONG_0040EEE5"
    %endif
    times 2 - ($ - %%insn_0040eee5) db 0
    %%insn_0040eee7:
    mov ecx,[eax+0x4] ; 0040EEE7 8B4804
    %if ($ - %%insn_0040eee7) > 3
        %error "LONG_0040EEE7"
    %endif
    times 3 - ($ - %%insn_0040eee7) db 0
    %%insn_0040eeea:
    test ecx,ecx ; 0040EEEA 85C9
    %if ($ - %%insn_0040eeea) > 2
        %error "LONG_0040EEEA"
    %endif
    times 2 - ($ - %%insn_0040eeea) db 0
    %%insn_0040eeec:
    jz short 0x40ef21 ; 0040EEEC 7433
    %if ($ - %%insn_0040eeec) > 2
        %error "LONG_0040EEEC"
    %endif
    times 2 - ($ - %%insn_0040eeec) db 0
    %%insn_0040eeee:
    mov edx,[esp+0x10] ; 0040EEEE 8B542410
    %if ($ - %%insn_0040eeee) > 4
        %error "LONG_0040EEEE"
    %endif
    times 4 - ($ - %%insn_0040eeee) db 0
    %%insn_0040eef2:
    test dh,0x8 ; 0040EEF2 F6C608
    %if ($ - %%insn_0040eef2) > 3
        %error "LONG_0040EEF2"
    %endif
    times 3 - ($ - %%insn_0040eef2) db 0
    %%insn_0040eef5:
    jz short 0x40ef0d ; 0040EEF5 7416
    %if ($ - %%insn_0040eef5) > 2
        %error "LONG_0040EEF5"
    %endif
    times 2 - ($ - %%insn_0040eef5) db 0
    %%insn_0040eef7:
    movsx ebp,word [eax] ; 0040EEF7 0FBF28
    %if ($ - %%insn_0040eef7) > 3
        %error "LONG_0040EEF7"
    %endif
    times 3 - ($ - %%insn_0040eef7) db 0
    %%insn_0040eefa:
    mov [esp+0x14],ecx ; 0040EEFA 894C2414
    %if ($ - %%insn_0040eefa) > 4
        %error "LONG_0040EEFA"
    %endif
    times 4 - ($ - %%insn_0040eefa) db 0
    %%insn_0040eefe:
    mov dword [esp+0x2c],0x1 ; 0040EEFE C744242C01000000
    %if ($ - %%insn_0040eefe) > 8
        %error "LONG_0040EEFE"
    %endif
    times 8 - ($ - %%insn_0040eefe) db 0
    %%insn_0040ef06:
    shr ebp,1 ; 0040EF06 D1ED
    %if ($ - %%insn_0040ef06) > 2
        %error "LONG_0040EF06"
    %endif
    times 2 - ($ - %%insn_0040ef06) db 0
    %%insn_0040ef08:
    jmp 0x40f2e0 ; 0040EF08 E9D3030000
    %if ($ - %%insn_0040ef08) > 5
        %error "LONG_0040EF08"
    %endif
    times 5 - ($ - %%insn_0040ef08) db 0
    %%insn_0040ef0d:
    movsx ebp,word [eax] ; 0040EF0D 0FBF28
    %if ($ - %%insn_0040ef0d) > 3
        %error "LONG_0040EF0D"
    %endif
    times 3 - ($ - %%insn_0040ef0d) db 0
    %%insn_0040ef10:
    mov dword [esp+0x2c],0x0 ; 0040EF10 C744242C00000000
    %if ($ - %%insn_0040ef10) > 8
        %error "LONG_0040EF10"
    %endif
    times 8 - ($ - %%insn_0040ef10) db 0
    %%insn_0040ef18:
    mov [esp+0x14],ecx ; 0040EF18 894C2414
    %if ($ - %%insn_0040ef18) > 4
        %error "LONG_0040EF18"
    %endif
    times 4 - ($ - %%insn_0040ef18) db 0
    %%insn_0040ef1c:
    jmp 0x40f2e0 ; 0040EF1C E9BF030000
    %if ($ - %%insn_0040ef1c) > 5
        %error "LONG_0040EF1C"
    %endif
    times 5 - ($ - %%insn_0040ef1c) db 0
    %%insn_0040ef21:
    mov edi,[0x41de88] ; 0040EF21 8B3D88DE4100
    %if ($ - %%insn_0040ef21) > 6
        %error "LONG_0040EF21"
    %endif
    times 6 - ($ - %%insn_0040ef21) db 0
    %%insn_0040ef27:
    or ecx,0xffffffffffffffff ; 0040EF27 83C9FF
    %if ($ - %%insn_0040ef27) > 3
        %error "LONG_0040EF27"
    %endif
    times 3 - ($ - %%insn_0040ef27) db 0
    db 0x33, 0xC0 ; 0040EF2A 33C0 | xor eax,eax | encoding preserved
    %%insn_0040ef2c:
    mov [esp+0x14],edi ; 0040EF2C 897C2414
    %if ($ - %%insn_0040ef2c) > 4
        %error "LONG_0040EF2C"
    %endif
    times 4 - ($ - %%insn_0040ef2c) db 0
    %%insn_0040ef30:
    repne scasb ; 0040EF30 F2AE
    %if ($ - %%insn_0040ef30) > 2
        %error "LONG_0040EF30"
    %endif
    times 2 - ($ - %%insn_0040ef30) db 0
    %%insn_0040ef32:
    not ecx ; 0040EF32 F7D1
    %if ($ - %%insn_0040ef32) > 2
        %error "LONG_0040EF32"
    %endif
    times 2 - ($ - %%insn_0040ef32) db 0
    %%insn_0040ef34:
    dec ecx ; 0040EF34 49
    %if ($ - %%insn_0040ef34) > 1
        %error "LONG_0040EF34"
    %endif
    times 1 - ($ - %%insn_0040ef34) db 0
    db 0x8B, 0xE9 ; 0040EF35 8BE9 | mov ebp,ecx | encoding preserved
    %%insn_0040ef37:
    jmp 0x40f2e0 ; 0040EF37 E9A4030000
    %if ($ - %%insn_0040ef37) > 5
        %error "LONG_0040EF37"
    %endif
    times 5 - ($ - %%insn_0040ef37) db 0
    %%insn_0040ef3c:
    mov eax,[esp+0x10] ; 0040EF3C 8B442410
    %if ($ - %%insn_0040ef3c) > 4
        %error "LONG_0040EF3C"
    %endif
    times 4 - ($ - %%insn_0040ef3c) db 0
    %%insn_0040ef40:
    test eax,0x830 ; 0040EF40 A930080000
    %if ($ - %%insn_0040ef40) > 5
        %error "LONG_0040EF40"
    %endif
    times 5 - ($ - %%insn_0040ef40) db 0
    %%insn_0040ef45:
    jnz short 0x40ef4e ; 0040EF45 7507
    %if ($ - %%insn_0040ef45) > 2
        %error "LONG_0040EF45"
    %endif
    times 2 - ($ - %%insn_0040ef45) db 0
    %%insn_0040ef47:
    or ah,0x8 ; 0040EF47 80CC08
    %if ($ - %%insn_0040ef47) > 3
        %error "LONG_0040EF47"
    %endif
    times 3 - ($ - %%insn_0040ef47) db 0
    %%insn_0040ef4a:
    mov [esp+0x10],eax ; 0040EF4A 89442410
    %if ($ - %%insn_0040ef4a) > 4
        %error "LONG_0040EF4A"
    %endif
    times 4 - ($ - %%insn_0040ef4a) db 0
    %%insn_0040ef4e:
    mov eax,[esp+0x18] ; 0040EF4E 8B442418
    %if ($ - %%insn_0040ef4e) > 4
        %error "LONG_0040EF4E"
    %endif
    times 4 - ($ - %%insn_0040ef4e) db 0
    %%insn_0040ef52:
    mov esi,0x7fffffff ; 0040EF52 BEFFFFFF7F
    %if ($ - %%insn_0040ef52) > 5
        %error "LONG_0040EF52"
    %endif
    times 5 - ($ - %%insn_0040ef52) db 0
    %%insn_0040ef57:
    cmp eax,0xffffffffffffffff ; 0040EF57 83F8FF
    %if ($ - %%insn_0040ef57) > 3
        %error "LONG_0040EF57"
    %endif
    times 3 - ($ - %%insn_0040ef57) db 0
    %%insn_0040ef5a:
    jz short 0x40ef5e ; 0040EF5A 7402
    %if ($ - %%insn_0040ef5a) > 2
        %error "LONG_0040EF5A"
    %endif
    times 2 - ($ - %%insn_0040ef5a) db 0
    db 0x8B, 0xF0 ; 0040EF5C 8BF0 | mov esi,eax | encoding preserved
    %%insn_0040ef5e:
    lea ecx,[esp+0x268] ; 0040EF5E 8D8C2468020000
    %if ($ - %%insn_0040ef5e) > 7
        %error "LONG_0040EF5E"
    %endif
    times 7 - ($ - %%insn_0040ef5e) db 0
    %%insn_0040ef65:
    push ecx ; 0040EF65 51
    %if ($ - %%insn_0040ef65) > 1
        %error "LONG_0040EF65"
    %endif
    times 1 - ($ - %%insn_0040ef65) db 0
    %%insn_0040ef66:
    call 0x40f620 ; 0040EF66 E8B5060000
    %if ($ - %%insn_0040ef66) > 5
        %error "LONG_0040EF66"
    %endif
    times 5 - ($ - %%insn_0040ef66) db 0
    db 0x8B, 0xC8 ; 0040EF6B 8BC8 | mov ecx,eax | encoding preserved
    %%insn_0040ef6d:
    mov eax,[esp+0x14] ; 0040EF6D 8B442414
    %if ($ - %%insn_0040ef6d) > 4
        %error "LONG_0040EF6D"
    %endif
    times 4 - ($ - %%insn_0040ef6d) db 0
    %%insn_0040ef71:
    add esp,0x4 ; 0040EF71 83C404
    %if ($ - %%insn_0040ef71) > 3
        %error "LONG_0040EF71"
    %endif
    times 3 - ($ - %%insn_0040ef71) db 0
    %%insn_0040ef74:
    mov [esp+0x14],ecx ; 0040EF74 894C2414
    %if ($ - %%insn_0040ef74) > 4
        %error "LONG_0040EF74"
    %endif
    times 4 - ($ - %%insn_0040ef74) db 0
    %%insn_0040ef78:
    test eax,0x810 ; 0040EF78 A910080000
    %if ($ - %%insn_0040ef78) > 5
        %error "LONG_0040EF78"
    %endif
    times 5 - ($ - %%insn_0040ef78) db 0
    %%insn_0040ef7d:
    jz short 0x40efb9 ; 0040EF7D 743A
    %if ($ - %%insn_0040ef7d) > 2
        %error "LONG_0040EF7D"
    %endif
    times 2 - ($ - %%insn_0040ef7d) db 0
    %%insn_0040ef7f:
    test ecx,ecx ; 0040EF7F 85C9
    %if ($ - %%insn_0040ef7f) > 2
        %error "LONG_0040EF7F"
    %endif
    times 2 - ($ - %%insn_0040ef7f) db 0
    %%insn_0040ef81:
    jnz short 0x40ef8d ; 0040EF81 750A
    %if ($ - %%insn_0040ef81) > 2
        %error "LONG_0040EF81"
    %endif
    times 2 - ($ - %%insn_0040ef81) db 0
    %%insn_0040ef83:
    mov ecx,[0x41de8c] ; 0040EF83 8B0D8CDE4100
    %if ($ - %%insn_0040ef83) > 6
        %error "LONG_0040EF83"
    %endif
    times 6 - ($ - %%insn_0040ef83) db 0
    %%insn_0040ef89:
    mov [esp+0x14],ecx ; 0040EF89 894C2414
    %if ($ - %%insn_0040ef89) > 4
        %error "LONG_0040EF89"
    %endif
    times 4 - ($ - %%insn_0040ef89) db 0
    db 0x8B, 0xD6 ; 0040EF8D 8BD6 | mov edx,esi | encoding preserved
    %%insn_0040ef8f:
    dec esi ; 0040EF8F 4E
    %if ($ - %%insn_0040ef8f) > 1
        %error "LONG_0040EF8F"
    %endif
    times 1 - ($ - %%insn_0040ef8f) db 0
    %%insn_0040ef90:
    test edx,edx ; 0040EF90 85D2
    %if ($ - %%insn_0040ef90) > 2
        %error "LONG_0040EF90"
    %endif
    times 2 - ($ - %%insn_0040ef90) db 0
    %%insn_0040ef92:
    mov dword [esp+0x2c],0x1 ; 0040EF92 C744242C01000000
    %if ($ - %%insn_0040ef92) > 8
        %error "LONG_0040EF92"
    %endif
    times 8 - ($ - %%insn_0040ef92) db 0
    db 0x8B, 0xC1 ; 0040EF9A 8BC1 | mov eax,ecx | encoding preserved
    %%insn_0040ef9c:
    jz short 0x40efae ; 0040EF9C 7410
    %if ($ - %%insn_0040ef9c) > 2
        %error "LONG_0040EF9C"
    %endif
    times 2 - ($ - %%insn_0040ef9c) db 0
    %%insn_0040ef9e:
    cmp word [eax],0x0 ; 0040EF9E 66833800
    %if ($ - %%insn_0040ef9e) > 4
        %error "LONG_0040EF9E"
    %endif
    times 4 - ($ - %%insn_0040ef9e) db 0
    %%insn_0040efa2:
    jz short 0x40efae ; 0040EFA2 740A
    %if ($ - %%insn_0040efa2) > 2
        %error "LONG_0040EFA2"
    %endif
    times 2 - ($ - %%insn_0040efa2) db 0
    %%insn_0040efa4:
    add eax,0x2 ; 0040EFA4 83C002
    %if ($ - %%insn_0040efa4) > 3
        %error "LONG_0040EFA4"
    %endif
    times 3 - ($ - %%insn_0040efa4) db 0
    db 0x8B, 0xD6 ; 0040EFA7 8BD6 | mov edx,esi | encoding preserved
    %%insn_0040efa9:
    dec esi ; 0040EFA9 4E
    %if ($ - %%insn_0040efa9) > 1
        %error "LONG_0040EFA9"
    %endif
    times 1 - ($ - %%insn_0040efa9) db 0
    %%insn_0040efaa:
    test edx,edx ; 0040EFAA 85D2
    %if ($ - %%insn_0040efaa) > 2
        %error "LONG_0040EFAA"
    %endif
    times 2 - ($ - %%insn_0040efaa) db 0
    %%insn_0040efac:
    jnz short 0x40ef9e ; 0040EFAC 75F0
    %if ($ - %%insn_0040efac) > 2
        %error "LONG_0040EFAC"
    %endif
    times 2 - ($ - %%insn_0040efac) db 0
    db 0x2B, 0xC1 ; 0040EFAE 2BC1 | sub eax,ecx | encoding preserved
    %%insn_0040efb0:
    sar eax,1 ; 0040EFB0 D1F8
    %if ($ - %%insn_0040efb0) > 2
        %error "LONG_0040EFB0"
    %endif
    times 2 - ($ - %%insn_0040efb0) db 0
    db 0x8B, 0xE8 ; 0040EFB2 8BE8 | mov ebp,eax | encoding preserved
    %%insn_0040efb4:
    jmp 0x40f2e0 ; 0040EFB4 E927030000
    %if ($ - %%insn_0040efb4) > 5
        %error "LONG_0040EFB4"
    %endif
    times 5 - ($ - %%insn_0040efb4) db 0
    %%insn_0040efb9:
    test ecx,ecx ; 0040EFB9 85C9
    %if ($ - %%insn_0040efb9) > 2
        %error "LONG_0040EFB9"
    %endif
    times 2 - ($ - %%insn_0040efb9) db 0
    %%insn_0040efbb:
    jnz short 0x40efc7 ; 0040EFBB 750A
    %if ($ - %%insn_0040efbb) > 2
        %error "LONG_0040EFBB"
    %endif
    times 2 - ($ - %%insn_0040efbb) db 0
    %%insn_0040efbd:
    mov ecx,[0x41de88] ; 0040EFBD 8B0D88DE4100
    %if ($ - %%insn_0040efbd) > 6
        %error "LONG_0040EFBD"
    %endif
    times 6 - ($ - %%insn_0040efbd) db 0
    %%insn_0040efc3:
    mov [esp+0x14],ecx ; 0040EFC3 894C2414
    %if ($ - %%insn_0040efc3) > 4
        %error "LONG_0040EFC3"
    %endif
    times 4 - ($ - %%insn_0040efc3) db 0
    db 0x8B, 0xD6 ; 0040EFC7 8BD6 | mov edx,esi | encoding preserved
    %%insn_0040efc9:
    dec esi ; 0040EFC9 4E
    %if ($ - %%insn_0040efc9) > 1
        %error "LONG_0040EFC9"
    %endif
    times 1 - ($ - %%insn_0040efc9) db 0
    %%insn_0040efca:
    test edx,edx ; 0040EFCA 85D2
    %if ($ - %%insn_0040efca) > 2
        %error "LONG_0040EFCA"
    %endif
    times 2 - ($ - %%insn_0040efca) db 0
    db 0x8B, 0xC1 ; 0040EFCC 8BC1 | mov eax,ecx | encoding preserved
    %%insn_0040efce:
    jz short 0x40efdd ; 0040EFCE 740D
    %if ($ - %%insn_0040efce) > 2
        %error "LONG_0040EFCE"
    %endif
    times 2 - ($ - %%insn_0040efce) db 0
    %%insn_0040efd0:
    cmp byte [eax],0x0 ; 0040EFD0 803800
    %if ($ - %%insn_0040efd0) > 3
        %error "LONG_0040EFD0"
    %endif
    times 3 - ($ - %%insn_0040efd0) db 0
    %%insn_0040efd3:
    jz short 0x40efdd ; 0040EFD3 7408
    %if ($ - %%insn_0040efd3) > 2
        %error "LONG_0040EFD3"
    %endif
    times 2 - ($ - %%insn_0040efd3) db 0
    %%insn_0040efd5:
    inc eax ; 0040EFD5 40
    %if ($ - %%insn_0040efd5) > 1
        %error "LONG_0040EFD5"
    %endif
    times 1 - ($ - %%insn_0040efd5) db 0
    db 0x8B, 0xD6 ; 0040EFD6 8BD6 | mov edx,esi | encoding preserved
    %%insn_0040efd8:
    dec esi ; 0040EFD8 4E
    %if ($ - %%insn_0040efd8) > 1
        %error "LONG_0040EFD8"
    %endif
    times 1 - ($ - %%insn_0040efd8) db 0
    %%insn_0040efd9:
    test edx,edx ; 0040EFD9 85D2
    %if ($ - %%insn_0040efd9) > 2
        %error "LONG_0040EFD9"
    %endif
    times 2 - ($ - %%insn_0040efd9) db 0
    %%insn_0040efdb:
    jnz short 0x40efd0 ; 0040EFDB 75F3
    %if ($ - %%insn_0040efdb) > 2
        %error "LONG_0040EFDB"
    %endif
    times 2 - ($ - %%insn_0040efdb) db 0
    db 0x2B, 0xC1 ; 0040EFDD 2BC1 | sub eax,ecx | encoding preserved
    db 0x8B, 0xE8 ; 0040EFDF 8BE8 | mov ebp,eax | encoding preserved
    %%insn_0040efe1:
    jmp 0x40f2e0 ; 0040EFE1 E9FA020000
    %if ($ - %%insn_0040efe1) > 5
        %error "LONG_0040EFE1"
    %endif
    times 5 - ($ - %%insn_0040efe1) db 0
    %%insn_0040efe6:
    lea eax,[esp+0x268] ; 0040EFE6 8D842468020000
    %if ($ - %%insn_0040efe6) > 7
        %error "LONG_0040EFE6"
    %endif
    times 7 - ($ - %%insn_0040efe6) db 0
    %%insn_0040efed:
    push eax ; 0040EFED 50
    %if ($ - %%insn_0040efed) > 1
        %error "LONG_0040EFED"
    %endif
    times 1 - ($ - %%insn_0040efed) db 0
    %%insn_0040efee:
    call 0x40f620 ; 0040EFEE E82D060000
    %if ($ - %%insn_0040efee) > 5
        %error "LONG_0040EFEE"
    %endif
    times 5 - ($ - %%insn_0040efee) db 0
    %%insn_0040eff3:
    mov cl,[esp+0x14] ; 0040EFF3 8A4C2414
    %if ($ - %%insn_0040eff3) > 4
        %error "LONG_0040EFF3"
    %endif
    times 4 - ($ - %%insn_0040eff3) db 0
    %%insn_0040eff7:
    add esp,0x4 ; 0040EFF7 83C404
    %if ($ - %%insn_0040eff7) > 3
        %error "LONG_0040EFF7"
    %endif
    times 3 - ($ - %%insn_0040eff7) db 0
    %%insn_0040effa:
    test cl,0x20 ; 0040EFFA F6C120
    %if ($ - %%insn_0040effa) > 3
        %error "LONG_0040EFFA"
    %endif
    times 3 - ($ - %%insn_0040effa) db 0
    %%insn_0040effd:
    jz short 0x40f014 ; 0040EFFD 7415
    %if ($ - %%insn_0040effd) > 2
        %error "LONG_0040EFFD"
    %endif
    times 2 - ($ - %%insn_0040effd) db 0
    %%insn_0040efff:
    mov cx,[esp+0x1c] ; 0040EFFF 668B4C241C
    %if ($ - %%insn_0040efff) > 5
        %error "LONG_0040EFFF"
    %endif
    times 5 - ($ - %%insn_0040efff) db 0
    %%insn_0040f004:
    mov dword [esp+0x34],0x1 ; 0040F004 C744243401000000
    %if ($ - %%insn_0040f004) > 8
        %error "LONG_0040F004"
    %endif
    times 8 - ($ - %%insn_0040f004) db 0
    %%insn_0040f00c:
    mov [eax],cx ; 0040F00C 668908
    %if ($ - %%insn_0040f00c) > 3
        %error "LONG_0040F00C"
    %endif
    times 3 - ($ - %%insn_0040f00c) db 0
    %%insn_0040f00f:
    jmp 0x40f2e0 ; 0040F00F E9CC020000
    %if ($ - %%insn_0040f00f) > 5
        %error "LONG_0040F00F"
    %endif
    times 5 - ($ - %%insn_0040f00f) db 0
    %%insn_0040f014:
    mov edx,[esp+0x1c] ; 0040F014 8B54241C
    %if ($ - %%insn_0040f014) > 4
        %error "LONG_0040F014"
    %endif
    times 4 - ($ - %%insn_0040f014) db 0
    %%insn_0040f018:
    mov dword [esp+0x34],0x1 ; 0040F018 C744243401000000
    %if ($ - %%insn_0040f018) > 8
        %error "LONG_0040F018"
    %endif
    times 8 - ($ - %%insn_0040f018) db 0
    %%insn_0040f020:
    mov [eax],edx ; 0040F020 8910
    %if ($ - %%insn_0040f020) > 2
        %error "LONG_0040F020"
    %endif
    times 2 - ($ - %%insn_0040f020) db 0
    %%insn_0040f022:
    jmp 0x40f2e0 ; 0040F022 E9B9020000
    %if ($ - %%insn_0040f022) > 5
        %error "LONG_0040F022"
    %endif
    times 5 - ($ - %%insn_0040f022) db 0
    %%insn_0040f027:
    mov dword [esp+0x44],0x1 ; 0040F027 C744244401000000
    %if ($ - %%insn_0040f027) > 8
        %error "LONG_0040F027"
    %endif
    times 8 - ($ - %%insn_0040f027) db 0
    %%insn_0040f02f:
    add bl,0x20 ; 0040F02F 80C320
    %if ($ - %%insn_0040f02f) > 3
        %error "LONG_0040F02F"
    %endif
    times 3 - ($ - %%insn_0040f02f) db 0
    %%insn_0040f032:
    mov edx,[esp+0x10] ; 0040F032 8B542410
    %if ($ - %%insn_0040f032) > 4
        %error "LONG_0040F032"
    %endif
    times 4 - ($ - %%insn_0040f032) db 0
    %%insn_0040f036:
    lea eax,[esp+0x5c] ; 0040F036 8D44245C
    %if ($ - %%insn_0040f036) > 4
        %error "LONG_0040F036"
    %endif
    times 4 - ($ - %%insn_0040f036) db 0
    %%insn_0040f03a:
    mov [esp+0x14],eax ; 0040F03A 89442414
    %if ($ - %%insn_0040f03a) > 4
        %error "LONG_0040F03A"
    %endif
    times 4 - ($ - %%insn_0040f03a) db 0
    %%insn_0040f03e:
    mov eax,[esp+0x18] ; 0040F03E 8B442418
    %if ($ - %%insn_0040f03e) > 4
        %error "LONG_0040F03E"
    %endif
    times 4 - ($ - %%insn_0040f03e) db 0
    %%insn_0040f042:
    or edx,0x40 ; 0040F042 83CA40
    %if ($ - %%insn_0040f042) > 3
        %error "LONG_0040F042"
    %endif
    times 3 - ($ - %%insn_0040f042) db 0
    %%insn_0040f045:
    test eax,eax ; 0040F045 85C0
    %if ($ - %%insn_0040f045) > 2
        %error "LONG_0040F045"
    %endif
    times 2 - ($ - %%insn_0040f045) db 0
    %%insn_0040f047:
    mov [esp+0x10],edx ; 0040F047 89542410
    %if ($ - %%insn_0040f047) > 4
        %error "LONG_0040F047"
    %endif
    times 4 - ($ - %%insn_0040f047) db 0
    %%insn_0040f04b:
    jnl short 0x40f057 ; 0040F04B 7D0A
    %if ($ - %%insn_0040f04b) > 2
        %error "LONG_0040F04B"
    %endif
    times 2 - ($ - %%insn_0040f04b) db 0
    %%insn_0040f04d:
    mov dword [esp+0x18],0x6 ; 0040F04D C744241806000000
    %if ($ - %%insn_0040f04d) > 8
        %error "LONG_0040F04D"
    %endif
    times 8 - ($ - %%insn_0040f04d) db 0
    %%insn_0040f055:
    jmp short 0x40f066 ; 0040F055 EB0F
    %if ($ - %%insn_0040f055) > 2
        %error "LONG_0040F055"
    %endif
    times 2 - ($ - %%insn_0040f055) db 0
    %%insn_0040f057:
    jnz short 0x40f066 ; 0040F057 750D
    %if ($ - %%insn_0040f057) > 2
        %error "LONG_0040F057"
    %endif
    times 2 - ($ - %%insn_0040f057) db 0
    %%insn_0040f059:
    cmp bl,0x67 ; 0040F059 80FB67
    %if ($ - %%insn_0040f059) > 3
        %error "LONG_0040F059"
    %endif
    times 3 - ($ - %%insn_0040f059) db 0
    %%insn_0040f05c:
    jnz short 0x40f066 ; 0040F05C 7508
    %if ($ - %%insn_0040f05c) > 2
        %error "LONG_0040F05C"
    %endif
    times 2 - ($ - %%insn_0040f05c) db 0
    %%insn_0040f05e:
    mov dword [esp+0x18],0x1 ; 0040F05E C744241801000000
    %if ($ - %%insn_0040f05e) > 8
        %error "LONG_0040F05E"
    %endif
    times 8 - ($ - %%insn_0040f05e) db 0
    %%insn_0040f066:
    mov eax,[esp+0x268] ; 0040F066 8B842468020000
    %if ($ - %%insn_0040f066) > 7
        %error "LONG_0040F066"
    %endif
    times 7 - ($ - %%insn_0040f066) db 0
    %%insn_0040f06d:
    mov edi,[esp+0x18] ; 0040F06D 8B7C2418
    %if ($ - %%insn_0040f06d) > 4
        %error "LONG_0040F06D"
    %endif
    times 4 - ($ - %%insn_0040f06d) db 0
    %%insn_0040f071:
    add eax,0x8 ; 0040F071 83C008
    %if ($ - %%insn_0040f071) > 3
        %error "LONG_0040F071"
    %endif
    times 3 - ($ - %%insn_0040f071) db 0
    %%insn_0040f074:
    mov [esp+0x268],eax ; 0040F074 89842468020000
    %if ($ - %%insn_0040f074) > 7
        %error "LONG_0040F074"
    %endif
    times 7 - ($ - %%insn_0040f074) db 0
    %%insn_0040f07b:
    mov ecx,[eax-0x8] ; 0040F07B 8B48F8
    %if ($ - %%insn_0040f07b) > 3
        %error "LONG_0040F07B"
    %endif
    times 3 - ($ - %%insn_0040f07b) db 0
    %%insn_0040f07e:
    mov [esp+0x4c],ecx ; 0040F07E 894C244C
    %if ($ - %%insn_0040f07e) > 4
        %error "LONG_0040F07E"
    %endif
    times 4 - ($ - %%insn_0040f07e) db 0
    %%insn_0040f082:
    mov edx,[eax-0x4] ; 0040F082 8B50FC
    %if ($ - %%insn_0040f082) > 3
        %error "LONG_0040F082"
    %endif
    times 3 - ($ - %%insn_0040f082) db 0
    %%insn_0040f085:
    mov eax,[esp+0x44] ; 0040F085 8B442444
    %if ($ - %%insn_0040f085) > 4
        %error "LONG_0040F085"
    %endif
    times 4 - ($ - %%insn_0040f085) db 0
    %%insn_0040f089:
    mov [esp+0x50],edx ; 0040F089 89542450
    %if ($ - %%insn_0040f089) > 4
        %error "LONG_0040F089"
    %endif
    times 4 - ($ - %%insn_0040f089) db 0
    %%insn_0040f08d:
    movsx ecx,bl ; 0040F08D 0FBECB
    %if ($ - %%insn_0040f08d) > 3
        %error "LONG_0040F08D"
    %endif
    times 3 - ($ - %%insn_0040f08d) db 0
    %%insn_0040f090:
    push eax ; 0040F090 50
    %if ($ - %%insn_0040f090) > 1
        %error "LONG_0040F090"
    %endif
    times 1 - ($ - %%insn_0040f090) db 0
    %%insn_0040f091:
    push edi ; 0040F091 57
    %if ($ - %%insn_0040f091) > 1
        %error "LONG_0040F091"
    %endif
    times 1 - ($ - %%insn_0040f091) db 0
    %%insn_0040f092:
    lea edx,[esp+0x64] ; 0040F092 8D542464
    %if ($ - %%insn_0040f092) > 4
        %error "LONG_0040F092"
    %endif
    times 4 - ($ - %%insn_0040f092) db 0
    %%insn_0040f096:
    push ecx ; 0040F096 51
    %if ($ - %%insn_0040f096) > 1
        %error "LONG_0040F096"
    %endif
    times 1 - ($ - %%insn_0040f096) db 0
    %%insn_0040f097:
    lea eax,[esp+0x58] ; 0040F097 8D442458
    %if ($ - %%insn_0040f097) > 4
        %error "LONG_0040F097"
    %endif
    times 4 - ($ - %%insn_0040f097) db 0
    %%insn_0040f09b:
    push edx ; 0040F09B 52
    %if ($ - %%insn_0040f09b) > 1
        %error "LONG_0040F09B"
    %endif
    times 1 - ($ - %%insn_0040f09b) db 0
    %%insn_0040f09c:
    push eax ; 0040F09C 50
    %if ($ - %%insn_0040f09c) > 1
        %error "LONG_0040F09C"
    %endif
    times 1 - ($ - %%insn_0040f09c) db 0
    %%insn_0040f09d:
    call dword near [0x41e628] ; 0040F09D FF1528E64100
    %if ($ - %%insn_0040f09d) > 6
        %error "LONG_0040F09D"
    %endif
    times 6 - ($ - %%insn_0040f09d) db 0
    %%insn_0040f0a3:
    mov esi,[esp+0x24] ; 0040F0A3 8B742424
    %if ($ - %%insn_0040f0a3) > 4
        %error "LONG_0040F0A3"
    %endif
    times 4 - ($ - %%insn_0040f0a3) db 0
    %%insn_0040f0a7:
    add esp,0x14 ; 0040F0A7 83C414
    %if ($ - %%insn_0040f0a7) > 3
        %error "LONG_0040F0A7"
    %endif
    times 3 - ($ - %%insn_0040f0a7) db 0
    %%insn_0040f0aa:
    and esi,0x80 ; 0040F0AA 81E680000000
    %if ($ - %%insn_0040f0aa) > 6
        %error "LONG_0040F0AA"
    %endif
    times 6 - ($ - %%insn_0040f0aa) db 0
    %%insn_0040f0b0:
    jz short 0x40f0c4 ; 0040F0B0 7412
    %if ($ - %%insn_0040f0b0) > 2
        %error "LONG_0040F0B0"
    %endif
    times 2 - ($ - %%insn_0040f0b0) db 0
    %%insn_0040f0b2:
    test edi,edi ; 0040F0B2 85FF
    %if ($ - %%insn_0040f0b2) > 2
        %error "LONG_0040F0B2"
    %endif
    times 2 - ($ - %%insn_0040f0b2) db 0
    %%insn_0040f0b4:
    jnz short 0x40f0c4 ; 0040F0B4 750E
    %if ($ - %%insn_0040f0b4) > 2
        %error "LONG_0040F0B4"
    %endif
    times 2 - ($ - %%insn_0040f0b4) db 0
    %%insn_0040f0b6:
    lea ecx,[esp+0x5c] ; 0040F0B6 8D4C245C
    %if ($ - %%insn_0040f0b6) > 4
        %error "LONG_0040F0B6"
    %endif
    times 4 - ($ - %%insn_0040f0b6) db 0
    %%insn_0040f0ba:
    push ecx ; 0040F0BA 51
    %if ($ - %%insn_0040f0ba) > 1
        %error "LONG_0040F0BA"
    %endif
    times 1 - ($ - %%insn_0040f0ba) db 0
    %%insn_0040f0bb:
    call dword near [0x41e634] ; 0040F0BB FF1534E64100
    %if ($ - %%insn_0040f0bb) > 6
        %error "LONG_0040F0BB"
    %endif
    times 6 - ($ - %%insn_0040f0bb) db 0
    %%insn_0040f0c1:
    add esp,0x4 ; 0040F0C1 83C404
    %if ($ - %%insn_0040f0c1) > 3
        %error "LONG_0040F0C1"
    %endif
    times 3 - ($ - %%insn_0040f0c1) db 0
    %%insn_0040f0c4:
    cmp bl,0x67 ; 0040F0C4 80FB67
    %if ($ - %%insn_0040f0c4) > 3
        %error "LONG_0040F0C4"
    %endif
    times 3 - ($ - %%insn_0040f0c4) db 0
    %%insn_0040f0c7:
    jnz short 0x40f0db ; 0040F0C7 7512
    %if ($ - %%insn_0040f0c7) > 2
        %error "LONG_0040F0C7"
    %endif
    times 2 - ($ - %%insn_0040f0c7) db 0
    %%insn_0040f0c9:
    test esi,esi ; 0040F0C9 85F6
    %if ($ - %%insn_0040f0c9) > 2
        %error "LONG_0040F0C9"
    %endif
    times 2 - ($ - %%insn_0040f0c9) db 0
    %%insn_0040f0cb:
    jnz short 0x40f0db ; 0040F0CB 750E
    %if ($ - %%insn_0040f0cb) > 2
        %error "LONG_0040F0CB"
    %endif
    times 2 - ($ - %%insn_0040f0cb) db 0
    %%insn_0040f0cd:
    lea edx,[esp+0x5c] ; 0040F0CD 8D54245C
    %if ($ - %%insn_0040f0cd) > 4
        %error "LONG_0040F0CD"
    %endif
    times 4 - ($ - %%insn_0040f0cd) db 0
    %%insn_0040f0d1:
    push edx ; 0040F0D1 52
    %if ($ - %%insn_0040f0d1) > 1
        %error "LONG_0040F0D1"
    %endif
    times 1 - ($ - %%insn_0040f0d1) db 0
    %%insn_0040f0d2:
    call dword near [0x41e62c] ; 0040F0D2 FF152CE64100
    %if ($ - %%insn_0040f0d2) > 6
        %error "LONG_0040F0D2"
    %endif
    times 6 - ($ - %%insn_0040f0d2) db 0
    %%insn_0040f0d8:
    add esp,0x4 ; 0040F0D8 83C404
    %if ($ - %%insn_0040f0d8) > 3
        %error "LONG_0040F0D8"
    %endif
    times 3 - ($ - %%insn_0040f0d8) db 0
    %%insn_0040f0db:
    cmp byte [esp+0x5c],0x2d ; 0040F0DB 807C245C2D
    %if ($ - %%insn_0040f0db) > 5
        %error "LONG_0040F0DB"
    %endif
    times 5 - ($ - %%insn_0040f0db) db 0
    %%insn_0040f0e0:
    jnz short 0x40f0f5 ; 0040F0E0 7513
    %if ($ - %%insn_0040f0e0) > 2
        %error "LONG_0040F0E0"
    %endif
    times 2 - ($ - %%insn_0040f0e0) db 0
    %%insn_0040f0e2:
    mov eax,[esp+0x10] ; 0040F0E2 8B442410
    %if ($ - %%insn_0040f0e2) > 4
        %error "LONG_0040F0E2"
    %endif
    times 4 - ($ - %%insn_0040f0e2) db 0
    %%insn_0040f0e6:
    or ah,0x1 ; 0040F0E6 80CC01
    %if ($ - %%insn_0040f0e6) > 3
        %error "LONG_0040F0E6"
    %endif
    times 3 - ($ - %%insn_0040f0e6) db 0
    %%insn_0040f0e9:
    mov [esp+0x10],eax ; 0040F0E9 89442410
    %if ($ - %%insn_0040f0e9) > 4
        %error "LONG_0040F0E9"
    %endif
    times 4 - ($ - %%insn_0040f0e9) db 0
    %%insn_0040f0ed:
    lea eax,[esp+0x5d] ; 0040F0ED 8D44245D
    %if ($ - %%insn_0040f0ed) > 4
        %error "LONG_0040F0ED"
    %endif
    times 4 - ($ - %%insn_0040f0ed) db 0
    %%insn_0040f0f1:
    mov [esp+0x14],eax ; 0040F0F1 89442414
    %if ($ - %%insn_0040f0f1) > 4
        %error "LONG_0040F0F1"
    %endif
    times 4 - ($ - %%insn_0040f0f1) db 0
    %%insn_0040f0f5:
    mov edi,[esp+0x14] ; 0040F0F5 8B7C2414
    %if ($ - %%insn_0040f0f5) > 4
        %error "LONG_0040F0F5"
    %endif
    times 4 - ($ - %%insn_0040f0f5) db 0
    %%insn_0040f0f9:
    or ecx,0xffffffffffffffff ; 0040F0F9 83C9FF
    %if ($ - %%insn_0040f0f9) > 3
        %error "LONG_0040F0F9"
    %endif
    times 3 - ($ - %%insn_0040f0f9) db 0
    db 0x33, 0xC0 ; 0040F0FC 33C0 | xor eax,eax | encoding preserved
    %%insn_0040f0fe:
    repne scasb ; 0040F0FE F2AE
    %if ($ - %%insn_0040f0fe) > 2
        %error "LONG_0040F0FE"
    %endif
    times 2 - ($ - %%insn_0040f0fe) db 0
    %%insn_0040f100:
    not ecx ; 0040F100 F7D1
    %if ($ - %%insn_0040f100) > 2
        %error "LONG_0040F100"
    %endif
    times 2 - ($ - %%insn_0040f100) db 0
    %%insn_0040f102:
    dec ecx ; 0040F102 49
    %if ($ - %%insn_0040f102) > 1
        %error "LONG_0040F102"
    %endif
    times 1 - ($ - %%insn_0040f102) db 0
    db 0x8B, 0xE9 ; 0040F103 8BE9 | mov ebp,ecx | encoding preserved
    %%insn_0040f105:
    jmp 0x40f2e0 ; 0040F105 E9D6010000
    %if ($ - %%insn_0040f105) > 5
        %error "LONG_0040F105"
    %endif
    times 5 - ($ - %%insn_0040f105) db 0
    %%insn_0040f10a:
    mov eax,[esp+0x10] ; 0040F10A 8B442410
    %if ($ - %%insn_0040f10a) > 4
        %error "LONG_0040F10A"
    %endif
    times 4 - ($ - %%insn_0040f10a) db 0
    %%insn_0040f10e:
    mov dword [esp+0x30],0xa ; 0040F10E C74424300A000000
    %if ($ - %%insn_0040f10e) > 8
        %error "LONG_0040F10E"
    %endif
    times 8 - ($ - %%insn_0040f10e) db 0
    %%insn_0040f116:
    or al,0x40 ; 0040F116 0C40
    %if ($ - %%insn_0040f116) > 2
        %error "LONG_0040F116"
    %endif
    times 2 - ($ - %%insn_0040f116) db 0
    %%insn_0040f118:
    mov [esp+0x10],eax ; 0040F118 89442410
    %if ($ - %%insn_0040f118) > 4
        %error "LONG_0040F118"
    %endif
    times 4 - ($ - %%insn_0040f118) db 0
    %%insn_0040f11c:
    jmp short 0x40f187 ; 0040F11C EB69
    %if ($ - %%insn_0040f11c) > 2
        %error "LONG_0040F11C"
    %endif
    times 2 - ($ - %%insn_0040f11c) db 0
    %%insn_0040f11e:
    mov dword [esp+0x30],0xa ; 0040F11E C74424300A000000
    %if ($ - %%insn_0040f11e) > 8
        %error "LONG_0040F11E"
    %endif
    times 8 - ($ - %%insn_0040f11e) db 0
    %%insn_0040f126:
    jmp short 0x40f187 ; 0040F126 EB5F
    %if ($ - %%insn_0040f126) > 2
        %error "LONG_0040F126"
    %endif
    times 2 - ($ - %%insn_0040f126) db 0
    %%insn_0040f128:
    mov dword [esp+0x18],0x8 ; 0040F128 C744241808000000
    %if ($ - %%insn_0040f128) > 8
        %error "LONG_0040F128"
    %endif
    times 8 - ($ - %%insn_0040f128) db 0
    %%insn_0040f130:
    mov dword [esp+0x38],0x7 ; 0040F130 C744243807000000
    %if ($ - %%insn_0040f130) > 8
        %error "LONG_0040F130"
    %endif
    times 8 - ($ - %%insn_0040f130) db 0
    %%insn_0040f138:
    jmp short 0x40f142 ; 0040F138 EB08
    %if ($ - %%insn_0040f138) > 2
        %error "LONG_0040F138"
    %endif
    times 2 - ($ - %%insn_0040f138) db 0
    %%insn_0040f13a:
    mov dword [esp+0x38],0x27 ; 0040F13A C744243827000000
    %if ($ - %%insn_0040f13a) > 8
        %error "LONG_0040F13A"
    %endif
    times 8 - ($ - %%insn_0040f13a) db 0
    %%insn_0040f142:
    mov al,[esp+0x10] ; 0040F142 8A442410
    %if ($ - %%insn_0040f142) > 4
        %error "LONG_0040F142"
    %endif
    times 4 - ($ - %%insn_0040f142) db 0
    %%insn_0040f146:
    mov dword [esp+0x30],0x10 ; 0040F146 C744243010000000
    %if ($ - %%insn_0040f146) > 8
        %error "LONG_0040F146"
    %endif
    times 8 - ($ - %%insn_0040f146) db 0
    %%insn_0040f14e:
    test al,0x80 ; 0040F14E A880
    %if ($ - %%insn_0040f14e) > 2
        %error "LONG_0040F14E"
    %endif
    times 2 - ($ - %%insn_0040f14e) db 0
    %%insn_0040f150:
    jz short 0x40f187 ; 0040F150 7435
    %if ($ - %%insn_0040f150) > 2
        %error "LONG_0040F150"
    %endif
    times 2 - ($ - %%insn_0040f150) db 0
    %%insn_0040f152:
    mov cl,[esp+0x38] ; 0040F152 8A4C2438
    %if ($ - %%insn_0040f152) > 4
        %error "LONG_0040F152"
    %endif
    times 4 - ($ - %%insn_0040f152) db 0
    %%insn_0040f156:
    mov byte [esp+0x22],0x30 ; 0040F156 C644242230
    %if ($ - %%insn_0040f156) > 5
        %error "LONG_0040F156"
    %endif
    times 5 - ($ - %%insn_0040f156) db 0
    %%insn_0040f15b:
    add cl,0x51 ; 0040F15B 80C151
    %if ($ - %%insn_0040f15b) > 3
        %error "LONG_0040F15B"
    %endif
    times 3 - ($ - %%insn_0040f15b) db 0
    %%insn_0040f15e:
    mov dword [esp+0x24],0x2 ; 0040F15E C744242402000000
    %if ($ - %%insn_0040f15e) > 8
        %error "LONG_0040F15E"
    %endif
    times 8 - ($ - %%insn_0040f15e) db 0
    %%insn_0040f166:
    mov [esp+0x23],cl ; 0040F166 884C2423
    %if ($ - %%insn_0040f166) > 4
        %error "LONG_0040F166"
    %endif
    times 4 - ($ - %%insn_0040f166) db 0
    %%insn_0040f16a:
    jmp short 0x40f187 ; 0040F16A EB1B
    %if ($ - %%insn_0040f16a) > 2
        %error "LONG_0040F16A"
    %endif
    times 2 - ($ - %%insn_0040f16a) db 0
    %%insn_0040f16c:
    mov al,[esp+0x10] ; 0040F16C 8A442410
    %if ($ - %%insn_0040f16c) > 4
        %error "LONG_0040F16C"
    %endif
    times 4 - ($ - %%insn_0040f16c) db 0
    %%insn_0040f170:
    mov dword [esp+0x30],0x8 ; 0040F170 C744243008000000
    %if ($ - %%insn_0040f170) > 8
        %error "LONG_0040F170"
    %endif
    times 8 - ($ - %%insn_0040f170) db 0
    %%insn_0040f178:
    test al,0x80 ; 0040F178 A880
    %if ($ - %%insn_0040f178) > 2
        %error "LONG_0040F178"
    %endif
    times 2 - ($ - %%insn_0040f178) db 0
    %%insn_0040f17a:
    jz short 0x40f187 ; 0040F17A 740B
    %if ($ - %%insn_0040f17a) > 2
        %error "LONG_0040F17A"
    %endif
    times 2 - ($ - %%insn_0040f17a) db 0
    %%insn_0040f17c:
    mov eax,[esp+0x10] ; 0040F17C 8B442410
    %if ($ - %%insn_0040f17c) > 4
        %error "LONG_0040F17C"
    %endif
    times 4 - ($ - %%insn_0040f17c) db 0
    %%insn_0040f180:
    or ah,0x2 ; 0040F180 80CC02
    %if ($ - %%insn_0040f180) > 3
        %error "LONG_0040F180"
    %endif
    times 3 - ($ - %%insn_0040f180) db 0
    %%insn_0040f183:
    mov [esp+0x10],eax ; 0040F183 89442410
    %if ($ - %%insn_0040f183) > 4
        %error "LONG_0040F183"
    %endif
    times 4 - ($ - %%insn_0040f183) db 0
    %%insn_0040f187:
    mov ebx,[esp+0x10] ; 0040F187 8B5C2410
    %if ($ - %%insn_0040f187) > 4
        %error "LONG_0040F187"
    %endif
    times 4 - ($ - %%insn_0040f187) db 0
    %%insn_0040f18b:
    test bh,0x80 ; 0040F18B F6C780
    %if ($ - %%insn_0040f18b) > 3
        %error "LONG_0040F18B"
    %endif
    times 3 - ($ - %%insn_0040f18b) db 0
    %%insn_0040f18e:
    jz short 0x40f1a2 ; 0040F18E 7412
    %if ($ - %%insn_0040f18e) > 2
        %error "LONG_0040F18E"
    %endif
    times 2 - ($ - %%insn_0040f18e) db 0
    %%insn_0040f190:
    lea edx,[esp+0x268] ; 0040F190 8D942468020000
    %if ($ - %%insn_0040f190) > 7
        %error "LONG_0040F190"
    %endif
    times 7 - ($ - %%insn_0040f190) db 0
    %%insn_0040f197:
    push edx ; 0040F197 52
    %if ($ - %%insn_0040f197) > 1
        %error "LONG_0040F197"
    %endif
    times 1 - ($ - %%insn_0040f197) db 0
    %%insn_0040f198:
    call 0x40f640 ; 0040F198 E8A3040000
    %if ($ - %%insn_0040f198) > 5
        %error "LONG_0040F198"
    %endif
    times 5 - ($ - %%insn_0040f198) db 0
    %%insn_0040f19d:
    add esp,0x4 ; 0040F19D 83C404
    %if ($ - %%insn_0040f19d) > 3
        %error "LONG_0040F19D"
    %endif
    times 3 - ($ - %%insn_0040f19d) db 0
    %%insn_0040f1a0:
    jmp short 0x40f204 ; 0040F1A0 EB62
    %if ($ - %%insn_0040f1a0) > 2
        %error "LONG_0040F1A0"
    %endif
    times 2 - ($ - %%insn_0040f1a0) db 0
    %%insn_0040f1a2:
    test bl,0x20 ; 0040F1A2 F6C320
    %if ($ - %%insn_0040f1a2) > 3
        %error "LONG_0040F1A2"
    %endif
    times 3 - ($ - %%insn_0040f1a2) db 0
    %%insn_0040f1a5:
    jz short 0x40f1da ; 0040F1A5 7433
    %if ($ - %%insn_0040f1a5) > 2
        %error "LONG_0040F1A5"
    %endif
    times 2 - ($ - %%insn_0040f1a5) db 0
    %%insn_0040f1a7:
    test bl,0x40 ; 0040F1A7 F6C340
    %if ($ - %%insn_0040f1a7) > 3
        %error "LONG_0040F1A7"
    %endif
    times 3 - ($ - %%insn_0040f1a7) db 0
    %%insn_0040f1aa:
    jz short 0x40f1c2 ; 0040F1AA 7416
    %if ($ - %%insn_0040f1aa) > 2
        %error "LONG_0040F1AA"
    %endif
    times 2 - ($ - %%insn_0040f1aa) db 0
    %%insn_0040f1ac:
    lea eax,[esp+0x268] ; 0040F1AC 8D842468020000
    %if ($ - %%insn_0040f1ac) > 7
        %error "LONG_0040F1AC"
    %endif
    times 7 - ($ - %%insn_0040f1ac) db 0
    %%insn_0040f1b3:
    push eax ; 0040F1B3 50
    %if ($ - %%insn_0040f1b3) > 1
        %error "LONG_0040F1B3"
    %endif
    times 1 - ($ - %%insn_0040f1b3) db 0
    %%insn_0040f1b4:
    call 0x40f620 ; 0040F1B4 E867040000
    %if ($ - %%insn_0040f1b4) > 5
        %error "LONG_0040F1B4"
    %endif
    times 5 - ($ - %%insn_0040f1b4) db 0
    db 0x0F, 0xBF, 0xC0 ; 0040F1B9 0FBFC0 | movsx eax,ax | encoding preserved
    %%insn_0040f1bc:
    add esp,0x4 ; 0040F1BC 83C404
    %if ($ - %%insn_0040f1bc) > 3
        %error "LONG_0040F1BC"
    %endif
    times 3 - ($ - %%insn_0040f1bc) db 0
    %%insn_0040f1bf:
    cdq ; 0040F1BF 99
    %if ($ - %%insn_0040f1bf) > 1
        %error "LONG_0040F1BF"
    %endif
    times 1 - ($ - %%insn_0040f1bf) db 0
    %%insn_0040f1c0:
    jmp short 0x40f204 ; 0040F1C0 EB42
    %if ($ - %%insn_0040f1c0) > 2
        %error "LONG_0040F1C0"
    %endif
    times 2 - ($ - %%insn_0040f1c0) db 0
    %%insn_0040f1c2:
    lea ecx,[esp+0x268] ; 0040F1C2 8D8C2468020000
    %if ($ - %%insn_0040f1c2) > 7
        %error "LONG_0040F1C2"
    %endif
    times 7 - ($ - %%insn_0040f1c2) db 0
    %%insn_0040f1c9:
    push ecx ; 0040F1C9 51
    %if ($ - %%insn_0040f1c9) > 1
        %error "LONG_0040F1C9"
    %endif
    times 1 - ($ - %%insn_0040f1c9) db 0
    %%insn_0040f1ca:
    call 0x40f620 ; 0040F1CA E851040000
    %if ($ - %%insn_0040f1ca) > 5
        %error "LONG_0040F1CA"
    %endif
    times 5 - ($ - %%insn_0040f1ca) db 0
    %%insn_0040f1cf:
    add esp,0x4 ; 0040F1CF 83C404
    %if ($ - %%insn_0040f1cf) > 3
        %error "LONG_0040F1CF"
    %endif
    times 3 - ($ - %%insn_0040f1cf) db 0
    %%insn_0040f1d2:
    and eax,0xffff ; 0040F1D2 25FFFF0000
    %if ($ - %%insn_0040f1d2) > 5
        %error "LONG_0040F1D2"
    %endif
    times 5 - ($ - %%insn_0040f1d2) db 0
    %%insn_0040f1d7:
    cdq ; 0040F1D7 99
    %if ($ - %%insn_0040f1d7) > 1
        %error "LONG_0040F1D7"
    %endif
    times 1 - ($ - %%insn_0040f1d7) db 0
    %%insn_0040f1d8:
    jmp short 0x40f204 ; 0040F1D8 EB2A
    %if ($ - %%insn_0040f1d8) > 2
        %error "LONG_0040F1D8"
    %endif
    times 2 - ($ - %%insn_0040f1d8) db 0
    %%insn_0040f1da:
    test bl,0x40 ; 0040F1DA F6C340
    %if ($ - %%insn_0040f1da) > 3
        %error "LONG_0040F1DA"
    %endif
    times 3 - ($ - %%insn_0040f1da) db 0
    %%insn_0040f1dd:
    jz short 0x40f1f2 ; 0040F1DD 7413
    %if ($ - %%insn_0040f1dd) > 2
        %error "LONG_0040F1DD"
    %endif
    times 2 - ($ - %%insn_0040f1dd) db 0
    %%insn_0040f1df:
    lea edx,[esp+0x268] ; 0040F1DF 8D942468020000
    %if ($ - %%insn_0040f1df) > 7
        %error "LONG_0040F1DF"
    %endif
    times 7 - ($ - %%insn_0040f1df) db 0
    %%insn_0040f1e6:
    push edx ; 0040F1E6 52
    %if ($ - %%insn_0040f1e6) > 1
        %error "LONG_0040F1E6"
    %endif
    times 1 - ($ - %%insn_0040f1e6) db 0
    %%insn_0040f1e7:
    call 0x40f620 ; 0040F1E7 E834040000
    %if ($ - %%insn_0040f1e7) > 5
        %error "LONG_0040F1E7"
    %endif
    times 5 - ($ - %%insn_0040f1e7) db 0
    %%insn_0040f1ec:
    add esp,0x4 ; 0040F1EC 83C404
    %if ($ - %%insn_0040f1ec) > 3
        %error "LONG_0040F1EC"
    %endif
    times 3 - ($ - %%insn_0040f1ec) db 0
    %%insn_0040f1ef:
    cdq ; 0040F1EF 99
    %if ($ - %%insn_0040f1ef) > 1
        %error "LONG_0040F1EF"
    %endif
    times 1 - ($ - %%insn_0040f1ef) db 0
    %%insn_0040f1f0:
    jmp short 0x40f204 ; 0040F1F0 EB12
    %if ($ - %%insn_0040f1f0) > 2
        %error "LONG_0040F1F0"
    %endif
    times 2 - ($ - %%insn_0040f1f0) db 0
    %%insn_0040f1f2:
    lea eax,[esp+0x268] ; 0040F1F2 8D842468020000
    %if ($ - %%insn_0040f1f2) > 7
        %error "LONG_0040F1F2"
    %endif
    times 7 - ($ - %%insn_0040f1f2) db 0
    %%insn_0040f1f9:
    push eax ; 0040F1F9 50
    %if ($ - %%insn_0040f1f9) > 1
        %error "LONG_0040F1F9"
    %endif
    times 1 - ($ - %%insn_0040f1f9) db 0
    %%insn_0040f1fa:
    call 0x40f620 ; 0040F1FA E821040000
    %if ($ - %%insn_0040f1fa) > 5
        %error "LONG_0040F1FA"
    %endif
    times 5 - ($ - %%insn_0040f1fa) db 0
    %%insn_0040f1ff:
    add esp,0x4 ; 0040F1FF 83C404
    %if ($ - %%insn_0040f1ff) > 3
        %error "LONG_0040F1FF"
    %endif
    times 3 - ($ - %%insn_0040f1ff) db 0
    db 0x33, 0xD2 ; 0040F202 33D2 | xor edx,edx | encoding preserved
    %%insn_0040f204:
    test bl,0x40 ; 0040F204 F6C340
    %if ($ - %%insn_0040f204) > 3
        %error "LONG_0040F204"
    %endif
    times 3 - ($ - %%insn_0040f204) db 0
    %%insn_0040f207:
    jz short 0x40f227 ; 0040F207 741E
    %if ($ - %%insn_0040f207) > 2
        %error "LONG_0040F207"
    %endif
    times 2 - ($ - %%insn_0040f207) db 0
    %%insn_0040f209:
    test edx,edx ; 0040F209 85D2
    %if ($ - %%insn_0040f209) > 2
        %error "LONG_0040F209"
    %endif
    times 2 - ($ - %%insn_0040f209) db 0
    %%insn_0040f20b:
    jg short 0x40f227 ; 0040F20B 7F1A
    %if ($ - %%insn_0040f20b) > 2
        %error "LONG_0040F20B"
    %endif
    times 2 - ($ - %%insn_0040f20b) db 0
    %%insn_0040f20d:
    jl short 0x40f213 ; 0040F20D 7C04
    %if ($ - %%insn_0040f20d) > 2
        %error "LONG_0040F20D"
    %endif
    times 2 - ($ - %%insn_0040f20d) db 0
    %%insn_0040f20f:
    test eax,eax ; 0040F20F 85C0
    %if ($ - %%insn_0040f20f) > 2
        %error "LONG_0040F20F"
    %endif
    times 2 - ($ - %%insn_0040f20f) db 0
    %%insn_0040f211:
    jnc short 0x40f227 ; 0040F211 7314
    %if ($ - %%insn_0040f211) > 2
        %error "LONG_0040F211"
    %endif
    times 2 - ($ - %%insn_0040f211) db 0
    %%insn_0040f213:
    neg eax ; 0040F213 F7D8
    %if ($ - %%insn_0040f213) > 2
        %error "LONG_0040F213"
    %endif
    times 2 - ($ - %%insn_0040f213) db 0
    %%insn_0040f215:
    adc edx,0x0 ; 0040F215 83D200
    %if ($ - %%insn_0040f215) > 3
        %error "LONG_0040F215"
    %endif
    times 3 - ($ - %%insn_0040f215) db 0
    db 0x8B, 0xF0 ; 0040F218 8BF0 | mov esi,eax | encoding preserved
    %%insn_0040f21a:
    neg edx ; 0040F21A F7DA
    %if ($ - %%insn_0040f21a) > 2
        %error "LONG_0040F21A"
    %endif
    times 2 - ($ - %%insn_0040f21a) db 0
    %%insn_0040f21c:
    or bh,0x1 ; 0040F21C 80CF01
    %if ($ - %%insn_0040f21c) > 3
        %error "LONG_0040F21C"
    %endif
    times 3 - ($ - %%insn_0040f21c) db 0
    db 0x8B, 0xFA ; 0040F21F 8BFA | mov edi,edx | encoding preserved
    %%insn_0040f221:
    mov [esp+0x10],ebx ; 0040F221 895C2410
    %if ($ - %%insn_0040f221) > 4
        %error "LONG_0040F221"
    %endif
    times 4 - ($ - %%insn_0040f221) db 0
    %%insn_0040f225:
    jmp short 0x40f22b ; 0040F225 EB04
    %if ($ - %%insn_0040f225) > 2
        %error "LONG_0040F225"
    %endif
    times 2 - ($ - %%insn_0040f225) db 0
    db 0x8B, 0xF0 ; 0040F227 8BF0 | mov esi,eax | encoding preserved
    db 0x8B, 0xFA ; 0040F229 8BFA | mov edi,edx | encoding preserved
    %%insn_0040f22b:
    test bh,0x80 ; 0040F22B F6C780
    %if ($ - %%insn_0040f22b) > 3
        %error "LONG_0040F22B"
    %endif
    times 3 - ($ - %%insn_0040f22b) db 0
    %%insn_0040f22e:
    jnz short 0x40f233 ; 0040F22E 7503
    %if ($ - %%insn_0040f22e) > 2
        %error "LONG_0040F22E"
    %endif
    times 2 - ($ - %%insn_0040f22e) db 0
    %%insn_0040f230:
    and edi,0x0 ; 0040F230 83E700
    %if ($ - %%insn_0040f230) > 3
        %error "LONG_0040F230"
    %endif
    times 3 - ($ - %%insn_0040f230) db 0
    %%insn_0040f233:
    mov ecx,[esp+0x18] ; 0040F233 8B4C2418
    %if ($ - %%insn_0040f233) > 4
        %error "LONG_0040F233"
    %endif
    times 4 - ($ - %%insn_0040f233) db 0
    %%insn_0040f237:
    test ecx,ecx ; 0040F237 85C9
    %if ($ - %%insn_0040f237) > 2
        %error "LONG_0040F237"
    %endif
    times 2 - ($ - %%insn_0040f237) db 0
    %%insn_0040f239:
    jnl short 0x40f242 ; 0040F239 7D07
    %if ($ - %%insn_0040f239) > 2
        %error "LONG_0040F239"
    %endif
    times 2 - ($ - %%insn_0040f239) db 0
    %%insn_0040f23b:
    mov ecx,0x1 ; 0040F23B B901000000
    %if ($ - %%insn_0040f23b) > 5
        %error "LONG_0040F23B"
    %endif
    times 5 - ($ - %%insn_0040f23b) db 0
    %%insn_0040f240:
    jmp short 0x40f249 ; 0040F240 EB07
    %if ($ - %%insn_0040f240) > 2
        %error "LONG_0040F240"
    %endif
    times 2 - ($ - %%insn_0040f240) db 0
    %%insn_0040f242:
    and ebx,0xfffffffffffffff7 ; 0040F242 83E3F7
    %if ($ - %%insn_0040f242) > 3
        %error "LONG_0040F242"
    %endif
    times 3 - ($ - %%insn_0040f242) db 0
    %%insn_0040f245:
    mov [esp+0x10],ebx ; 0040F245 895C2410
    %if ($ - %%insn_0040f245) > 4
        %error "LONG_0040F245"
    %endif
    times 4 - ($ - %%insn_0040f245) db 0
    db 0x8B, 0xD6 ; 0040F249 8BD6 | mov edx,esi | encoding preserved
    db 0x0B, 0xD7 ; 0040F24B 0BD7 | or edx,edi | encoding preserved
    %%insn_0040f24d:
    jnz short 0x40f257 ; 0040F24D 7508
    %if ($ - %%insn_0040f24d) > 2
        %error "LONG_0040F24D"
    %endif
    times 2 - ($ - %%insn_0040f24d) db 0
    %%insn_0040f24f:
    mov dword [esp+0x24],0x0 ; 0040F24F C744242400000000
    %if ($ - %%insn_0040f24f) > 8
        %error "LONG_0040F24F"
    %endif
    times 8 - ($ - %%insn_0040f24f) db 0
    %%insn_0040f257:
    lea eax,[esp+0x25b] ; 0040F257 8D84245B020000
    %if ($ - %%insn_0040f257) > 7
        %error "LONG_0040F257"
    %endif
    times 7 - ($ - %%insn_0040f257) db 0
    %%insn_0040f25e:
    mov [esp+0x14],eax ; 0040F25E 89442414
    %if ($ - %%insn_0040f25e) > 4
        %error "LONG_0040F25E"
    %endif
    times 4 - ($ - %%insn_0040f25e) db 0
    db 0x8B, 0xD1 ; 0040F262 8BD1 | mov edx,ecx | encoding preserved
    %%insn_0040f264:
    dec ecx ; 0040F264 49
    %if ($ - %%insn_0040f264) > 1
        %error "LONG_0040F264"
    %endif
    times 1 - ($ - %%insn_0040f264) db 0
    %%insn_0040f265:
    test edx,edx ; 0040F265 85D2
    %if ($ - %%insn_0040f265) > 2
        %error "LONG_0040F265"
    %endif
    times 2 - ($ - %%insn_0040f265) db 0
    %%insn_0040f267:
    mov [esp+0x18],ecx ; 0040F267 894C2418
    %if ($ - %%insn_0040f267) > 4
        %error "LONG_0040F267"
    %endif
    times 4 - ($ - %%insn_0040f267) db 0
    %%insn_0040f26b:
    jg short 0x40f273 ; 0040F26B 7F06
    %if ($ - %%insn_0040f26b) > 2
        %error "LONG_0040F26B"
    %endif
    times 2 - ($ - %%insn_0040f26b) db 0
    db 0x8B, 0xCE ; 0040F26D 8BCE | mov ecx,esi | encoding preserved
    db 0x0B, 0xCF ; 0040F26F 0BCF | or ecx,edi | encoding preserved
    %%insn_0040f271:
    jz short 0x40f2b7 ; 0040F271 7444
    %if ($ - %%insn_0040f271) > 2
        %error "LONG_0040F271"
    %endif
    times 2 - ($ - %%insn_0040f271) db 0
    %%insn_0040f273:
    mov eax,[esp+0x30] ; 0040F273 8B442430
    %if ($ - %%insn_0040f273) > 4
        %error "LONG_0040F273"
    %endif
    times 4 - ($ - %%insn_0040f273) db 0
    %%insn_0040f277:
    cdq ; 0040F277 99
    %if ($ - %%insn_0040f277) > 1
        %error "LONG_0040F277"
    %endif
    times 1 - ($ - %%insn_0040f277) db 0
    db 0x8B, 0xE8 ; 0040F278 8BE8 | mov ebp,eax | encoding preserved
    %%insn_0040f27a:
    push edx ; 0040F27A 52
    %if ($ - %%insn_0040f27a) > 1
        %error "LONG_0040F27A"
    %endif
    times 1 - ($ - %%insn_0040f27a) db 0
    %%insn_0040f27b:
    push ebp ; 0040F27B 55
    %if ($ - %%insn_0040f27b) > 1
        %error "LONG_0040F27B"
    %endif
    times 1 - ($ - %%insn_0040f27b) db 0
    %%insn_0040f27c:
    push edi ; 0040F27C 57
    %if ($ - %%insn_0040f27c) > 1
        %error "LONG_0040F27C"
    %endif
    times 1 - ($ - %%insn_0040f27c) db 0
    %%insn_0040f27d:
    push esi ; 0040F27D 56
    %if ($ - %%insn_0040f27d) > 1
        %error "LONG_0040F27D"
    %endif
    times 1 - ($ - %%insn_0040f27d) db 0
    %%insn_0040f27e:
    mov [esp+0x68],edx ; 0040F27E 89542468
    %if ($ - %%insn_0040f27e) > 4
        %error "LONG_0040F27E"
    %endif
    times 4 - ($ - %%insn_0040f27e) db 0
    %%insn_0040f282:
    call 0x412e30 ; 0040F282 E8A93B0000
    %if ($ - %%insn_0040f282) > 5
        %error "LONG_0040F282"
    %endif
    times 5 - ($ - %%insn_0040f282) db 0
    %%insn_0040f287:
    mov edx,[esp+0x58] ; 0040F287 8B542458
    %if ($ - %%insn_0040f287) > 4
        %error "LONG_0040F287"
    %endif
    times 4 - ($ - %%insn_0040f287) db 0
    db 0x8B, 0xD8 ; 0040F28B 8BD8 | mov ebx,eax | encoding preserved
    %%insn_0040f28d:
    push edx ; 0040F28D 52
    %if ($ - %%insn_0040f28d) > 1
        %error "LONG_0040F28D"
    %endif
    times 1 - ($ - %%insn_0040f28d) db 0
    %%insn_0040f28e:
    push ebp ; 0040F28E 55
    %if ($ - %%insn_0040f28e) > 1
        %error "LONG_0040F28E"
    %endif
    times 1 - ($ - %%insn_0040f28e) db 0
    %%insn_0040f28f:
    push edi ; 0040F28F 57
    %if ($ - %%insn_0040f28f) > 1
        %error "LONG_0040F28F"
    %endif
    times 1 - ($ - %%insn_0040f28f) db 0
    %%insn_0040f290:
    push esi ; 0040F290 56
    %if ($ - %%insn_0040f290) > 1
        %error "LONG_0040F290"
    %endif
    times 1 - ($ - %%insn_0040f290) db 0
    %%insn_0040f291:
    add ebx,0x30 ; 0040F291 83C330
    %if ($ - %%insn_0040f291) > 3
        %error "LONG_0040F291"
    %endif
    times 3 - ($ - %%insn_0040f291) db 0
    %%insn_0040f294:
    call 0x412dc0 ; 0040F294 E8273B0000
    %if ($ - %%insn_0040f294) > 5
        %error "LONG_0040F294"
    %endif
    times 5 - ($ - %%insn_0040f294) db 0
    %%insn_0040f299:
    cmp ebx,0x39 ; 0040F299 83FB39
    %if ($ - %%insn_0040f299) > 3
        %error "LONG_0040F299"
    %endif
    times 3 - ($ - %%insn_0040f299) db 0
    db 0x8B, 0xF0 ; 0040F29C 8BF0 | mov esi,eax | encoding preserved
    db 0x8B, 0xFA ; 0040F29E 8BFA | mov edi,edx | encoding preserved
    %%insn_0040f2a0:
    jng short 0x40f2a6 ; 0040F2A0 7E04
    %if ($ - %%insn_0040f2a0) > 2
        %error "LONG_0040F2A0"
    %endif
    times 2 - ($ - %%insn_0040f2a0) db 0
    %%insn_0040f2a2:
    add ebx,[esp+0x38] ; 0040F2A2 035C2438
    %if ($ - %%insn_0040f2a2) > 4
        %error "LONG_0040F2A2"
    %endif
    times 4 - ($ - %%insn_0040f2a2) db 0
    %%insn_0040f2a6:
    mov eax,[esp+0x14] ; 0040F2A6 8B442414
    %if ($ - %%insn_0040f2a6) > 4
        %error "LONG_0040F2A6"
    %endif
    times 4 - ($ - %%insn_0040f2a6) db 0
    %%insn_0040f2aa:
    mov ecx,[esp+0x18] ; 0040F2AA 8B4C2418
    %if ($ - %%insn_0040f2aa) > 4
        %error "LONG_0040F2AA"
    %endif
    times 4 - ($ - %%insn_0040f2aa) db 0
    %%insn_0040f2ae:
    mov [eax],bl ; 0040F2AE 8818
    %if ($ - %%insn_0040f2ae) > 2
        %error "LONG_0040F2AE"
    %endif
    times 2 - ($ - %%insn_0040f2ae) db 0
    %%insn_0040f2b0:
    dec eax ; 0040F2B0 48
    %if ($ - %%insn_0040f2b0) > 1
        %error "LONG_0040F2B0"
    %endif
    times 1 - ($ - %%insn_0040f2b0) db 0
    %%insn_0040f2b1:
    mov [esp+0x14],eax ; 0040F2B1 89442414
    %if ($ - %%insn_0040f2b1) > 4
        %error "LONG_0040F2B1"
    %endif
    times 4 - ($ - %%insn_0040f2b1) db 0
    %%insn_0040f2b5:
    jmp short 0x40f262 ; 0040F2B5 EBAB
    %if ($ - %%insn_0040f2b5) > 2
        %error "LONG_0040F2B5"
    %endif
    times 2 - ($ - %%insn_0040f2b5) db 0
    %%insn_0040f2b7:
    mov ecx,[esp+0x10] ; 0040F2B7 8B4C2410
    %if ($ - %%insn_0040f2b7) > 4
        %error "LONG_0040F2B7"
    %endif
    times 4 - ($ - %%insn_0040f2b7) db 0
    %%insn_0040f2bb:
    lea ebp,[esp+0x25b] ; 0040F2BB 8DAC245B020000
    %if ($ - %%insn_0040f2bb) > 7
        %error "LONG_0040F2BB"
    %endif
    times 7 - ($ - %%insn_0040f2bb) db 0
    db 0x2B, 0xE8 ; 0040F2C2 2BE8 | sub ebp,eax | encoding preserved
    %%insn_0040f2c4:
    inc eax ; 0040F2C4 40
    %if ($ - %%insn_0040f2c4) > 1
        %error "LONG_0040F2C4"
    %endif
    times 1 - ($ - %%insn_0040f2c4) db 0
    %%insn_0040f2c5:
    test ch,0x2 ; 0040F2C5 F6C502
    %if ($ - %%insn_0040f2c5) > 3
        %error "LONG_0040F2C5"
    %endif
    times 3 - ($ - %%insn_0040f2c5) db 0
    %%insn_0040f2c8:
    mov [esp+0x14],eax ; 0040F2C8 89442414
    %if ($ - %%insn_0040f2c8) > 4
        %error "LONG_0040F2C8"
    %endif
    times 4 - ($ - %%insn_0040f2c8) db 0
    %%insn_0040f2cc:
    jz short 0x40f2e0 ; 0040F2CC 7412
    %if ($ - %%insn_0040f2cc) > 2
        %error "LONG_0040F2CC"
    %endif
    times 2 - ($ - %%insn_0040f2cc) db 0
    %%insn_0040f2ce:
    cmp byte [eax],0x30 ; 0040F2CE 803830
    %if ($ - %%insn_0040f2ce) > 3
        %error "LONG_0040F2CE"
    %endif
    times 3 - ($ - %%insn_0040f2ce) db 0
    %%insn_0040f2d1:
    jnz short 0x40f2d7 ; 0040F2D1 7504
    %if ($ - %%insn_0040f2d1) > 2
        %error "LONG_0040F2D1"
    %endif
    times 2 - ($ - %%insn_0040f2d1) db 0
    %%insn_0040f2d3:
    test ebp,ebp ; 0040F2D3 85ED
    %if ($ - %%insn_0040f2d3) > 2
        %error "LONG_0040F2D3"
    %endif
    times 2 - ($ - %%insn_0040f2d3) db 0
    %%insn_0040f2d5:
    jnz short 0x40f2e0 ; 0040F2D5 7509
    %if ($ - %%insn_0040f2d5) > 2
        %error "LONG_0040F2D5"
    %endif
    times 2 - ($ - %%insn_0040f2d5) db 0
    %%insn_0040f2d7:
    dec eax ; 0040F2D7 48
    %if ($ - %%insn_0040f2d7) > 1
        %error "LONG_0040F2D7"
    %endif
    times 1 - ($ - %%insn_0040f2d7) db 0
    %%insn_0040f2d8:
    inc ebp ; 0040F2D8 45
    %if ($ - %%insn_0040f2d8) > 1
        %error "LONG_0040F2D8"
    %endif
    times 1 - ($ - %%insn_0040f2d8) db 0
    %%insn_0040f2d9:
    mov [esp+0x14],eax ; 0040F2D9 89442414
    %if ($ - %%insn_0040f2d9) > 4
        %error "LONG_0040F2D9"
    %endif
    times 4 - ($ - %%insn_0040f2d9) db 0
    %%insn_0040f2dd:
    mov byte [eax],0x30 ; 0040F2DD C60030
    %if ($ - %%insn_0040f2dd) > 3
        %error "LONG_0040F2DD"
    %endif
    times 3 - ($ - %%insn_0040f2dd) db 0
    %%insn_0040f2e0:
    mov eax,[esp+0x34] ; 0040F2E0 8B442434
    %if ($ - %%insn_0040f2e0) > 4
        %error "LONG_0040F2E0"
    %endif
    times 4 - ($ - %%insn_0040f2e0) db 0
    %%insn_0040f2e4:
    test eax,eax ; 0040F2E4 85C0
    %if ($ - %%insn_0040f2e4) > 2
        %error "LONG_0040F2E4"
    %endif
    times 2 - ($ - %%insn_0040f2e4) db 0
    %%insn_0040f2e6:
    jnz 0x40f3fa ; 0040F2E6 0F850E010000
    %if ($ - %%insn_0040f2e6) > 6
        %error "LONG_0040F2E6"
    %endif
    times 6 - ($ - %%insn_0040f2e6) db 0
    %%insn_0040f2ec:
    mov ebx,[esp+0x10] ; 0040F2EC 8B5C2410
    %if ($ - %%insn_0040f2ec) > 4
        %error "LONG_0040F2EC"
    %endif
    times 4 - ($ - %%insn_0040f2ec) db 0
    %%insn_0040f2f0:
    test bl,0x40 ; 0040F2F0 F6C340
    %if ($ - %%insn_0040f2f0) > 3
        %error "LONG_0040F2F0"
    %endif
    times 3 - ($ - %%insn_0040f2f0) db 0
    %%insn_0040f2f3:
    jz short 0x40f31f ; 0040F2F3 742A
    %if ($ - %%insn_0040f2f3) > 2
        %error "LONG_0040F2F3"
    %endif
    times 2 - ($ - %%insn_0040f2f3) db 0
    %%insn_0040f2f5:
    test bh,0x1 ; 0040F2F5 F6C701
    %if ($ - %%insn_0040f2f5) > 3
        %error "LONG_0040F2F5"
    %endif
    times 3 - ($ - %%insn_0040f2f5) db 0
    %%insn_0040f2f8:
    jz short 0x40f301 ; 0040F2F8 7407
    %if ($ - %%insn_0040f2f8) > 2
        %error "LONG_0040F2F8"
    %endif
    times 2 - ($ - %%insn_0040f2f8) db 0
    %%insn_0040f2fa:
    mov byte [esp+0x22],0x2d ; 0040F2FA C64424222D
    %if ($ - %%insn_0040f2fa) > 5
        %error "LONG_0040F2FA"
    %endif
    times 5 - ($ - %%insn_0040f2fa) db 0
    %%insn_0040f2ff:
    jmp short 0x40f317 ; 0040F2FF EB16
    %if ($ - %%insn_0040f2ff) > 2
        %error "LONG_0040F2FF"
    %endif
    times 2 - ($ - %%insn_0040f2ff) db 0
    %%insn_0040f301:
    test bl,0x1 ; 0040F301 F6C301
    %if ($ - %%insn_0040f301) > 3
        %error "LONG_0040F301"
    %endif
    times 3 - ($ - %%insn_0040f301) db 0
    %%insn_0040f304:
    jz short 0x40f30d ; 0040F304 7407
    %if ($ - %%insn_0040f304) > 2
        %error "LONG_0040F304"
    %endif
    times 2 - ($ - %%insn_0040f304) db 0
    %%insn_0040f306:
    mov byte [esp+0x22],0x2b ; 0040F306 C64424222B
    %if ($ - %%insn_0040f306) > 5
        %error "LONG_0040F306"
    %endif
    times 5 - ($ - %%insn_0040f306) db 0
    %%insn_0040f30b:
    jmp short 0x40f317 ; 0040F30B EB0A
    %if ($ - %%insn_0040f30b) > 2
        %error "LONG_0040F30B"
    %endif
    times 2 - ($ - %%insn_0040f30b) db 0
    %%insn_0040f30d:
    test bl,0x2 ; 0040F30D F6C302
    %if ($ - %%insn_0040f30d) > 3
        %error "LONG_0040F30D"
    %endif
    times 3 - ($ - %%insn_0040f30d) db 0
    %%insn_0040f310:
    jz short 0x40f31f ; 0040F310 740D
    %if ($ - %%insn_0040f310) > 2
        %error "LONG_0040F310"
    %endif
    times 2 - ($ - %%insn_0040f310) db 0
    %%insn_0040f312:
    mov byte [esp+0x22],0x20 ; 0040F312 C644242220
    %if ($ - %%insn_0040f312) > 5
        %error "LONG_0040F312"
    %endif
    times 5 - ($ - %%insn_0040f312) db 0
    %%insn_0040f317:
    mov dword [esp+0x24],0x1 ; 0040F317 C744242401000000
    %if ($ - %%insn_0040f317) > 8
        %error "LONG_0040F317"
    %endif
    times 8 - ($ - %%insn_0040f317) db 0
    %%insn_0040f31f:
    mov edi,[esp+0x28] ; 0040F31F 8B7C2428
    %if ($ - %%insn_0040f31f) > 4
        %error "LONG_0040F31F"
    %endif
    times 4 - ($ - %%insn_0040f31f) db 0
    %%insn_0040f323:
    mov ecx,[esp+0x24] ; 0040F323 8B4C2424
    %if ($ - %%insn_0040f323) > 4
        %error "LONG_0040F323"
    %endif
    times 4 - ($ - %%insn_0040f323) db 0
    db 0x2B, 0xFD ; 0040F327 2BFD | sub edi,ebp | encoding preserved
    db 0x2B, 0xF9 ; 0040F329 2BF9 | sub edi,ecx | encoding preserved
    %%insn_0040f32b:
    test bl,0xc ; 0040F32B F6C30C
    %if ($ - %%insn_0040f32b) > 3
        %error "LONG_0040F32B"
    %endif
    times 3 - ($ - %%insn_0040f32b) db 0
    %%insn_0040f32e:
    jnz short 0x40f34a ; 0040F32E 751A
    %if ($ - %%insn_0040f32e) > 2
        %error "LONG_0040F32E"
    %endif
    times 2 - ($ - %%insn_0040f32e) db 0
    %%insn_0040f330:
    mov esi,[esp+0x260] ; 0040F330 8BB42460020000
    %if ($ - %%insn_0040f330) > 7
        %error "LONG_0040F330"
    %endif
    times 7 - ($ - %%insn_0040f330) db 0
    %%insn_0040f337:
    lea eax,[esp+0x1c] ; 0040F337 8D44241C
    %if ($ - %%insn_0040f337) > 4
        %error "LONG_0040F337"
    %endif
    times 4 - ($ - %%insn_0040f337) db 0
    %%insn_0040f33b:
    push eax ; 0040F33B 50
    %if ($ - %%insn_0040f33b) > 1
        %error "LONG_0040F33B"
    %endif
    times 1 - ($ - %%insn_0040f33b) db 0
    %%insn_0040f33c:
    push esi ; 0040F33C 56
    %if ($ - %%insn_0040f33c) > 1
        %error "LONG_0040F33C"
    %endif
    times 1 - ($ - %%insn_0040f33c) db 0
    %%insn_0040f33d:
    push edi ; 0040F33D 57
    %if ($ - %%insn_0040f33d) > 1
        %error "LONG_0040F33D"
    %endif
    times 1 - ($ - %%insn_0040f33d) db 0
    %%insn_0040f33e:
    push dword 0x20 ; 0040F33E 6A20
    %if ($ - %%insn_0040f33e) > 2
        %error "LONG_0040F33E"
    %endif
    times 2 - ($ - %%insn_0040f33e) db 0
    %%insn_0040f340:
    call 0x40f5a0 ; 0040F340 E85B020000
    %if ($ - %%insn_0040f340) > 5
        %error "LONG_0040F340"
    %endif
    times 5 - ($ - %%insn_0040f340) db 0
    %%insn_0040f345:
    add esp,0x10 ; 0040F345 83C410
    %if ($ - %%insn_0040f345) > 3
        %error "LONG_0040F345"
    %endif
    times 3 - ($ - %%insn_0040f345) db 0
    %%insn_0040f348:
    jmp short 0x40f351 ; 0040F348 EB07
    %if ($ - %%insn_0040f348) > 2
        %error "LONG_0040F348"
    %endif
    times 2 - ($ - %%insn_0040f348) db 0
    %%insn_0040f34a:
    mov esi,[esp+0x260] ; 0040F34A 8BB42460020000
    %if ($ - %%insn_0040f34a) > 7
        %error "LONG_0040F34A"
    %endif
    times 7 - ($ - %%insn_0040f34a) db 0
    %%insn_0040f351:
    mov edx,[esp+0x24] ; 0040F351 8B542424
    %if ($ - %%insn_0040f351) > 4
        %error "LONG_0040F351"
    %endif
    times 4 - ($ - %%insn_0040f351) db 0
    %%insn_0040f355:
    lea ecx,[esp+0x1c] ; 0040F355 8D4C241C
    %if ($ - %%insn_0040f355) > 4
        %error "LONG_0040F355"
    %endif
    times 4 - ($ - %%insn_0040f355) db 0
    %%insn_0040f359:
    push ecx ; 0040F359 51
    %if ($ - %%insn_0040f359) > 1
        %error "LONG_0040F359"
    %endif
    times 1 - ($ - %%insn_0040f359) db 0
    %%insn_0040f35a:
    push esi ; 0040F35A 56
    %if ($ - %%insn_0040f35a) > 1
        %error "LONG_0040F35A"
    %endif
    times 1 - ($ - %%insn_0040f35a) db 0
    %%insn_0040f35b:
    lea eax,[esp+0x2a] ; 0040F35B 8D44242A
    %if ($ - %%insn_0040f35b) > 4
        %error "LONG_0040F35B"
    %endif
    times 4 - ($ - %%insn_0040f35b) db 0
    %%insn_0040f35f:
    push edx ; 0040F35F 52
    %if ($ - %%insn_0040f35f) > 1
        %error "LONG_0040F35F"
    %endif
    times 1 - ($ - %%insn_0040f35f) db 0
    %%insn_0040f360:
    push eax ; 0040F360 50
    %if ($ - %%insn_0040f360) > 1
        %error "LONG_0040F360"
    %endif
    times 1 - ($ - %%insn_0040f360) db 0
    %%insn_0040f361:
    call 0x40f5e0 ; 0040F361 E87A020000
    %if ($ - %%insn_0040f361) > 5
        %error "LONG_0040F361"
    %endif
    times 5 - ($ - %%insn_0040f361) db 0
    %%insn_0040f366:
    add esp,0x10 ; 0040F366 83C410
    %if ($ - %%insn_0040f366) > 3
        %error "LONG_0040F366"
    %endif
    times 3 - ($ - %%insn_0040f366) db 0
    %%insn_0040f369:
    test bl,0x8 ; 0040F369 F6C308
    %if ($ - %%insn_0040f369) > 3
        %error "LONG_0040F369"
    %endif
    times 3 - ($ - %%insn_0040f369) db 0
    %%insn_0040f36c:
    jz short 0x40f384 ; 0040F36C 7416
    %if ($ - %%insn_0040f36c) > 2
        %error "LONG_0040F36C"
    %endif
    times 2 - ($ - %%insn_0040f36c) db 0
    %%insn_0040f36e:
    test bl,0x4 ; 0040F36E F6C304
    %if ($ - %%insn_0040f36e) > 3
        %error "LONG_0040F36E"
    %endif
    times 3 - ($ - %%insn_0040f36e) db 0
    %%insn_0040f371:
    jnz short 0x40f384 ; 0040F371 7511
    %if ($ - %%insn_0040f371) > 2
        %error "LONG_0040F371"
    %endif
    times 2 - ($ - %%insn_0040f371) db 0
    %%insn_0040f373:
    lea ecx,[esp+0x1c] ; 0040F373 8D4C241C
    %if ($ - %%insn_0040f373) > 4
        %error "LONG_0040F373"
    %endif
    times 4 - ($ - %%insn_0040f373) db 0
    %%insn_0040f377:
    push ecx ; 0040F377 51
    %if ($ - %%insn_0040f377) > 1
        %error "LONG_0040F377"
    %endif
    times 1 - ($ - %%insn_0040f377) db 0
    %%insn_0040f378:
    push esi ; 0040F378 56
    %if ($ - %%insn_0040f378) > 1
        %error "LONG_0040F378"
    %endif
    times 1 - ($ - %%insn_0040f378) db 0
    %%insn_0040f379:
    push edi ; 0040F379 57
    %if ($ - %%insn_0040f379) > 1
        %error "LONG_0040F379"
    %endif
    times 1 - ($ - %%insn_0040f379) db 0
    %%insn_0040f37a:
    push dword 0x30 ; 0040F37A 6A30
    %if ($ - %%insn_0040f37a) > 2
        %error "LONG_0040F37A"
    %endif
    times 2 - ($ - %%insn_0040f37a) db 0
    %%insn_0040f37c:
    call 0x40f5a0 ; 0040F37C E81F020000
    %if ($ - %%insn_0040f37c) > 5
        %error "LONG_0040F37C"
    %endif
    times 5 - ($ - %%insn_0040f37c) db 0
    %%insn_0040f381:
    add esp,0x10 ; 0040F381 83C410
    %if ($ - %%insn_0040f381) > 3
        %error "LONG_0040F381"
    %endif
    times 3 - ($ - %%insn_0040f381) db 0
    %%insn_0040f384:
    mov eax,[esp+0x2c] ; 0040F384 8B44242C
    %if ($ - %%insn_0040f384) > 4
        %error "LONG_0040F384"
    %endif
    times 4 - ($ - %%insn_0040f384) db 0
    %%insn_0040f388:
    test eax,eax ; 0040F388 85C0
    %if ($ - %%insn_0040f388) > 2
        %error "LONG_0040F388"
    %endif
    times 2 - ($ - %%insn_0040f388) db 0
    %%insn_0040f38a:
    jz 0x40f426 ; 0040F38A 0F8496000000
    %if ($ - %%insn_0040f38a) > 6
        %error "LONG_0040F38A"
    %endif
    times 6 - ($ - %%insn_0040f38a) db 0
    %%insn_0040f390:
    test ebp,ebp ; 0040F390 85ED
    %if ($ - %%insn_0040f390) > 2
        %error "LONG_0040F390"
    %endif
    times 2 - ($ - %%insn_0040f390) db 0
    %%insn_0040f392:
    jng 0x40f426 ; 0040F392 0F8E8E000000
    %if ($ - %%insn_0040f392) > 6
        %error "LONG_0040F392"
    %endif
    times 6 - ($ - %%insn_0040f392) db 0
    %%insn_0040f398:
    mov esi,[esp+0x14] ; 0040F398 8B742414
    %if ($ - %%insn_0040f398) > 4
        %error "LONG_0040F398"
    %endif
    times 4 - ($ - %%insn_0040f398) db 0
    %%insn_0040f39c:
    lea ebx,[ebp-0x1] ; 0040F39C 8D5DFF
    %if ($ - %%insn_0040f39c) > 3
        %error "LONG_0040F39C"
    %endif
    times 3 - ($ - %%insn_0040f39c) db 0
    %%insn_0040f39f:
    mov ax,[esi] ; 0040F39F 668B06
    %if ($ - %%insn_0040f39f) > 3
        %error "LONG_0040F39F"
    %endif
    times 3 - ($ - %%insn_0040f39f) db 0
    %%insn_0040f3a2:
    lea edx,[esp+0x48] ; 0040F3A2 8D542448
    %if ($ - %%insn_0040f3a2) > 4
        %error "LONG_0040F3A2"
    %endif
    times 4 - ($ - %%insn_0040f3a2) db 0
    %%insn_0040f3a6:
    push eax ; 0040F3A6 50
    %if ($ - %%insn_0040f3a6) > 1
        %error "LONG_0040F3A6"
    %endif
    times 1 - ($ - %%insn_0040f3a6) db 0
    %%insn_0040f3a7:
    push edx ; 0040F3A7 52
    %if ($ - %%insn_0040f3a7) > 1
        %error "LONG_0040F3A7"
    %endif
    times 1 - ($ - %%insn_0040f3a7) db 0
    %%insn_0040f3a8:
    add esi,0x2 ; 0040F3A8 83C602
    %if ($ - %%insn_0040f3a8) > 3
        %error "LONG_0040F3A8"
    %endif
    times 3 - ($ - %%insn_0040f3a8) db 0
    %%insn_0040f3ab:
    call 0x412cd0 ; 0040F3AB E820390000
    %if ($ - %%insn_0040f3ab) > 5
        %error "LONG_0040F3AB"
    %endif
    times 5 - ($ - %%insn_0040f3ab) db 0
    %%insn_0040f3b0:
    add esp,0x8 ; 0040F3B0 83C408
    %if ($ - %%insn_0040f3b0) > 3
        %error "LONG_0040F3B0"
    %endif
    times 3 - ($ - %%insn_0040f3b0) db 0
    %%insn_0040f3b3:
    test eax,eax ; 0040F3B3 85C0
    %if ($ - %%insn_0040f3b3) > 2
        %error "LONG_0040F3B3"
    %endif
    times 2 - ($ - %%insn_0040f3b3) db 0
    %%insn_0040f3b5:
    jng short 0x40f3d9 ; 0040F3B5 7E22
    %if ($ - %%insn_0040f3b5) > 2
        %error "LONG_0040F3B5"
    %endif
    times 2 - ($ - %%insn_0040f3b5) db 0
    %%insn_0040f3b7:
    mov edx,[esp+0x260] ; 0040F3B7 8B942460020000
    %if ($ - %%insn_0040f3b7) > 7
        %error "LONG_0040F3B7"
    %endif
    times 7 - ($ - %%insn_0040f3b7) db 0
    %%insn_0040f3be:
    lea ecx,[esp+0x1c] ; 0040F3BE 8D4C241C
    %if ($ - %%insn_0040f3be) > 4
        %error "LONG_0040F3BE"
    %endif
    times 4 - ($ - %%insn_0040f3be) db 0
    %%insn_0040f3c2:
    push ecx ; 0040F3C2 51
    %if ($ - %%insn_0040f3c2) > 1
        %error "LONG_0040F3C2"
    %endif
    times 1 - ($ - %%insn_0040f3c2) db 0
    %%insn_0040f3c3:
    push edx ; 0040F3C3 52
    %if ($ - %%insn_0040f3c3) > 1
        %error "LONG_0040F3C3"
    %endif
    times 1 - ($ - %%insn_0040f3c3) db 0
    %%insn_0040f3c4:
    push eax ; 0040F3C4 50
    %if ($ - %%insn_0040f3c4) > 1
        %error "LONG_0040F3C4"
    %endif
    times 1 - ($ - %%insn_0040f3c4) db 0
    %%insn_0040f3c5:
    lea eax,[esp+0x54] ; 0040F3C5 8D442454
    %if ($ - %%insn_0040f3c5) > 4
        %error "LONG_0040F3C5"
    %endif
    times 4 - ($ - %%insn_0040f3c5) db 0
    %%insn_0040f3c9:
    push eax ; 0040F3C9 50
    %if ($ - %%insn_0040f3c9) > 1
        %error "LONG_0040F3C9"
    %endif
    times 1 - ($ - %%insn_0040f3c9) db 0
    %%insn_0040f3ca:
    call 0x40f5e0 ; 0040F3CA E811020000
    %if ($ - %%insn_0040f3ca) > 5
        %error "LONG_0040F3CA"
    %endif
    times 5 - ($ - %%insn_0040f3ca) db 0
    %%insn_0040f3cf:
    add esp,0x10 ; 0040F3CF 83C410
    %if ($ - %%insn_0040f3cf) > 3
        %error "LONG_0040F3CF"
    %endif
    times 3 - ($ - %%insn_0040f3cf) db 0
    db 0x8B, 0xCB ; 0040F3D2 8BCB | mov ecx,ebx | encoding preserved
    %%insn_0040f3d4:
    dec ebx ; 0040F3D4 4B
    %if ($ - %%insn_0040f3d4) > 1
        %error "LONG_0040F3D4"
    %endif
    times 1 - ($ - %%insn_0040f3d4) db 0
    %%insn_0040f3d5:
    test ecx,ecx ; 0040F3D5 85C9
    %if ($ - %%insn_0040f3d5) > 2
        %error "LONG_0040F3D5"
    %endif
    times 2 - ($ - %%insn_0040f3d5) db 0
    %%insn_0040f3d7:
    jnz short 0x40f39f ; 0040F3D7 75C6
    %if ($ - %%insn_0040f3d7) > 2
        %error "LONG_0040F3D7"
    %endif
    times 2 - ($ - %%insn_0040f3d7) db 0
    %%insn_0040f3d9:
    mov ebx,[esp+0x10] ; 0040F3D9 8B5C2410
    %if ($ - %%insn_0040f3d9) > 4
        %error "LONG_0040F3D9"
    %endif
    times 4 - ($ - %%insn_0040f3d9) db 0
    %%insn_0040f3dd:
    test bl,0x4 ; 0040F3DD F6C304
    %if ($ - %%insn_0040f3dd) > 3
        %error "LONG_0040F3DD"
    %endif
    times 3 - ($ - %%insn_0040f3dd) db 0
    %%insn_0040f3e0:
    jz short 0x40f3fa ; 0040F3E0 7418
    %if ($ - %%insn_0040f3e0) > 2
        %error "LONG_0040F3E0"
    %endif
    times 2 - ($ - %%insn_0040f3e0) db 0
    %%insn_0040f3e2:
    mov edx,[esp+0x260] ; 0040F3E2 8B942460020000
    %if ($ - %%insn_0040f3e2) > 7
        %error "LONG_0040F3E2"
    %endif
    times 7 - ($ - %%insn_0040f3e2) db 0
    %%insn_0040f3e9:
    lea ecx,[esp+0x1c] ; 0040F3E9 8D4C241C
    %if ($ - %%insn_0040f3e9) > 4
        %error "LONG_0040F3E9"
    %endif
    times 4 - ($ - %%insn_0040f3e9) db 0
    %%insn_0040f3ed:
    push ecx ; 0040F3ED 51
    %if ($ - %%insn_0040f3ed) > 1
        %error "LONG_0040F3ED"
    %endif
    times 1 - ($ - %%insn_0040f3ed) db 0
    %%insn_0040f3ee:
    push edx ; 0040F3EE 52
    %if ($ - %%insn_0040f3ee) > 1
        %error "LONG_0040F3EE"
    %endif
    times 1 - ($ - %%insn_0040f3ee) db 0
    %%insn_0040f3ef:
    push edi ; 0040F3EF 57
    %if ($ - %%insn_0040f3ef) > 1
        %error "LONG_0040F3EF"
    %endif
    times 1 - ($ - %%insn_0040f3ef) db 0
    %%insn_0040f3f0:
    push dword 0x20 ; 0040F3F0 6A20
    %if ($ - %%insn_0040f3f0) > 2
        %error "LONG_0040F3F0"
    %endif
    times 2 - ($ - %%insn_0040f3f0) db 0
    %%insn_0040f3f2:
    call 0x40f5a0 ; 0040F3F2 E8A9010000
    %if ($ - %%insn_0040f3f2) > 5
        %error "LONG_0040F3F2"
    %endif
    times 5 - ($ - %%insn_0040f3f2) db 0
    %%insn_0040f3f7:
    add esp,0x10 ; 0040F3F7 83C410
    %if ($ - %%insn_0040f3f7) > 3
        %error "LONG_0040F3F7"
    %endif
    times 3 - ($ - %%insn_0040f3f7) db 0
    %%insn_0040f3fa:
    mov edi,[esp+0x264] ; 0040F3FA 8BBC2464020000
    %if ($ - %%insn_0040f3fa) > 7
        %error "LONG_0040F3FA"
    %endif
    times 7 - ($ - %%insn_0040f3fa) db 0
    %%insn_0040f401:
    mov bl,[edi] ; 0040F401 8A1F
    %if ($ - %%insn_0040f401) > 2
        %error "LONG_0040F401"
    %endif
    times 2 - ($ - %%insn_0040f401) db 0
    %%insn_0040f403:
    inc edi ; 0040F403 47
    %if ($ - %%insn_0040f403) > 1
        %error "LONG_0040F403"
    %endif
    times 1 - ($ - %%insn_0040f403) db 0
    %%insn_0040f404:
    test bl,bl ; 0040F404 84DB
    %if ($ - %%insn_0040f404) > 2
        %error "LONG_0040F404"
    %endif
    times 2 - ($ - %%insn_0040f404) db 0
    %%insn_0040f406:
    mov [esp+0x40],bl ; 0040F406 885C2440
    %if ($ - %%insn_0040f406) > 4
        %error "LONG_0040F406"
    %endif
    times 4 - ($ - %%insn_0040f406) db 0
    %%insn_0040f40a:
    mov [esp+0x264],edi ; 0040F40A 89BC2464020000
    %if ($ - %%insn_0040f40a) > 7
        %error "LONG_0040F40A"
    %endif
    times 7 - ($ - %%insn_0040f40a) db 0
    %%insn_0040f411:
    jnz 0x40ebf5 ; 0040F411 0F85DEF7FFFF
    %if ($ - %%insn_0040f411) > 6
        %error "LONG_0040F411"
    %endif
    times 6 - ($ - %%insn_0040f411) db 0
    %%insn_0040f417:
    mov eax,[esp+0x1c] ; 0040F417 8B44241C
    %if ($ - %%insn_0040f417) > 4
        %error "LONG_0040F417"
    %endif
    times 4 - ($ - %%insn_0040f417) db 0
    %%insn_0040f41b:
    pop edi ; 0040F41B 5F
    %if ($ - %%insn_0040f41b) > 1
        %error "LONG_0040F41B"
    %endif
    times 1 - ($ - %%insn_0040f41b) db 0
    %%insn_0040f41c:
    pop esi ; 0040F41C 5E
    %if ($ - %%insn_0040f41c) > 1
        %error "LONG_0040F41C"
    %endif
    times 1 - ($ - %%insn_0040f41c) db 0
    %%insn_0040f41d:
    pop ebp ; 0040F41D 5D
    %if ($ - %%insn_0040f41d) > 1
        %error "LONG_0040F41D"
    %endif
    times 1 - ($ - %%insn_0040f41d) db 0
    %%insn_0040f41e:
    pop ebx ; 0040F41E 5B
    %if ($ - %%insn_0040f41e) > 1
        %error "LONG_0040F41E"
    %endif
    times 1 - ($ - %%insn_0040f41e) db 0
    %%insn_0040f41f:
    add esp,0x24c ; 0040F41F 81C44C020000
    %if ($ - %%insn_0040f41f) > 6
        %error "LONG_0040F41F"
    %endif
    times 6 - ($ - %%insn_0040f41f) db 0
    %%insn_0040f425:
    ret ; 0040F425 C3
    %if ($ - %%insn_0040f425) > 1
        %error "LONG_0040F425"
    %endif
    times 1 - ($ - %%insn_0040f425) db 0
    %%insn_0040f426:
    mov eax,[esp+0x14] ; 0040F426 8B442414
    %if ($ - %%insn_0040f426) > 4
        %error "LONG_0040F426"
    %endif
    times 4 - ($ - %%insn_0040f426) db 0
    %%insn_0040f42a:
    lea edx,[esp+0x1c] ; 0040F42A 8D54241C
    %if ($ - %%insn_0040f42a) > 4
        %error "LONG_0040F42A"
    %endif
    times 4 - ($ - %%insn_0040f42a) db 0
    %%insn_0040f42e:
    push edx ; 0040F42E 52
    %if ($ - %%insn_0040f42e) > 1
        %error "LONG_0040F42E"
    %endif
    times 1 - ($ - %%insn_0040f42e) db 0
    %%insn_0040f42f:
    push esi ; 0040F42F 56
    %if ($ - %%insn_0040f42f) > 1
        %error "LONG_0040F42F"
    %endif
    times 1 - ($ - %%insn_0040f42f) db 0
    %%insn_0040f430:
    push ebp ; 0040F430 55
    %if ($ - %%insn_0040f430) > 1
        %error "LONG_0040F430"
    %endif
    times 1 - ($ - %%insn_0040f430) db 0
    %%insn_0040f431:
    push eax ; 0040F431 50
    %if ($ - %%insn_0040f431) > 1
        %error "LONG_0040F431"
    %endif
    times 1 - ($ - %%insn_0040f431) db 0
    %%insn_0040f432:
    call 0x40f5e0 ; 0040F432 E8A9010000
    %if ($ - %%insn_0040f432) > 5
        %error "LONG_0040F432"
    %endif
    times 5 - ($ - %%insn_0040f432) db 0
    %%insn_0040f437:
    add esp,0x10 ; 0040F437 83C410
    %if ($ - %%insn_0040f437) > 3
        %error "LONG_0040F437"
    %endif
    times 3 - ($ - %%insn_0040f437) db 0
    %%insn_0040f43a:
    jmp short 0x40f3dd ; 0040F43A EBA1
    %if ($ - %%insn_0040f43a) > 2
        %error "LONG_0040F43A"
    %endif
    times 2 - ($ - %%insn_0040f43a) db 0
    %if ($ - %%fragment_start) != 2172
        %error "function fragment size drift: 0040EBC0"
    %endif
%endmacro
