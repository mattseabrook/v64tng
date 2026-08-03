; PE virtual entry 00406FAE
; Ghidra working symbol: FUN_00406fae
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00406fae_part_00 0
    %%fragment_start:
func_00406fae:
    %%insn_00406fae:
    push ebp ; 00406FAE 55
    %if ($ - %%insn_00406fae) > 1
        %error "LONG_00406FAE"
    %endif
    times 1 - ($ - %%insn_00406fae) db 0
    db 0x8B, 0xEC ; 00406FAF 8BEC | mov ebp,esp | encoding preserved
    %%insn_00406fb1:
    sub esp,0x10 ; 00406FB1 83EC10
    %if ($ - %%insn_00406fb1) > 3
        %error "LONG_00406FB1"
    %endif
    times 3 - ($ - %%insn_00406fb1) db 0
    %%insn_00406fb4:
    cmp dword [0x41f510],0x0 ; 00406FB4 833D10F5410000
    %if ($ - %%insn_00406fb4) > 7
        %error "LONG_00406FB4"
    %endif
    times 7 - ($ - %%insn_00406fb4) db 0
    %%insn_00406fbb:
    jnz short 0x406fc2 ; 00406FBB 7505
    %if ($ - %%insn_00406fbb) > 2
        %error "LONG_00406FBB"
    %endif
    times 2 - ($ - %%insn_00406fbb) db 0
    %%insn_00406fbd:
    jmp 0x407045 ; 00406FBD E983000000
    %if ($ - %%insn_00406fbd) > 5
        %error "LONG_00406FBD"
    %endif
    times 5 - ($ - %%insn_00406fbd) db 0
    %%insn_00406fc2:
    push dword 0x0 ; 00406FC2 6A00
    %if ($ - %%insn_00406fc2) > 2
        %error "LONG_00406FC2"
    %endif
    times 2 - ($ - %%insn_00406fc2) db 0
    %%insn_00406fc4:
    push dword 0x41f524 ; 00406FC4 6824F54100
    %if ($ - %%insn_00406fc4) > 5
        %error "LONG_00406FC4"
    %endif
    times 5 - ($ - %%insn_00406fc4) db 0
    %%insn_00406fc9:
    call dword near [0x4243b0] ; 00406FC9 FF15B0434200
    %if ($ - %%insn_00406fc9) > 6
        %error "LONG_00406FC9"
    %endif
    times 6 - ($ - %%insn_00406fc9) db 0
    %%insn_00406fcf:
    lea eax,[ebp-0x8] ; 00406FCF 8D45F8
    %if ($ - %%insn_00406fcf) > 3
        %error "LONG_00406FCF"
    %endif
    times 3 - ($ - %%insn_00406fcf) db 0
    %%insn_00406fd2:
    push eax ; 00406FD2 50
    %if ($ - %%insn_00406fd2) > 1
        %error "LONG_00406FD2"
    %endif
    times 1 - ($ - %%insn_00406fd2) db 0
    %%insn_00406fd3:
    lea ecx,[ebp-0x10] ; 00406FD3 8D4DF0
    %if ($ - %%insn_00406fd3) > 3
        %error "LONG_00406FD3"
    %endif
    times 3 - ($ - %%insn_00406fd3) db 0
    %%insn_00406fd6:
    push ecx ; 00406FD6 51
    %if ($ - %%insn_00406fd6) > 1
        %error "LONG_00406FD6"
    %endif
    times 1 - ($ - %%insn_00406fd6) db 0
    %%insn_00406fd7:
    lea edx,[ebp-0x4] ; 00406FD7 8D55FC
    %if ($ - %%insn_00406fd7) > 3
        %error "LONG_00406FD7"
    %endif
    times 3 - ($ - %%insn_00406fd7) db 0
    %%insn_00406fda:
    push edx ; 00406FDA 52
    %if ($ - %%insn_00406fda) > 1
        %error "LONG_00406FDA"
    %endif
    times 1 - ($ - %%insn_00406fda) db 0
    %%insn_00406fdb:
    lea eax,[ebp-0xc] ; 00406FDB 8D45F4
    %if ($ - %%insn_00406fdb) > 3
        %error "LONG_00406FDB"
    %endif
    times 3 - ($ - %%insn_00406fdb) db 0
    %%insn_00406fde:
    push eax ; 00406FDE 50
    %if ($ - %%insn_00406fde) > 1
        %error "LONG_00406FDE"
    %endif
    times 1 - ($ - %%insn_00406fde) db 0
    %%insn_00406fdf:
    mov ecx,[0x41f4f8] ; 00406FDF 8B0DF8F44100
    %if ($ - %%insn_00406fdf) > 6
        %error "LONG_00406FDF"
    %endif
    times 6 - ($ - %%insn_00406fdf) db 0
    %%insn_00406fe5:
    push ecx ; 00406FE5 51
    %if ($ - %%insn_00406fe5) > 1
        %error "LONG_00406FE5"
    %endif
    times 1 - ($ - %%insn_00406fe5) db 0
    %%insn_00406fe6:
    call dword near [0x4245fc] ; 00406FE6 FF15FC454200
    %if ($ - %%insn_00406fe6) > 6
        %error "LONG_00406FE6"
    %endif
    times 6 - ($ - %%insn_00406fe6) db 0
    %%insn_00406fec:
    mov edx,[ebp-0xc] ; 00406FEC 8B55F4
    %if ($ - %%insn_00406fec) > 3
        %error "LONG_00406FEC"
    %endif
    times 3 - ($ - %%insn_00406fec) db 0
    %%insn_00406fef:
    cmp edx,[ebp-0x4] ; 00406FEF 3B55FC
    %if ($ - %%insn_00406fef) > 3
        %error "LONG_00406FEF"
    %endif
    times 3 - ($ - %%insn_00406fef) db 0
    %%insn_00406ff2:
    jz short 0x406ffc ; 00406FF2 7408
    %if ($ - %%insn_00406ff2) > 2
        %error "LONG_00406FF2"
    %endif
    times 2 - ($ - %%insn_00406ff2) db 0
    %%insn_00406ff4:
    mov eax,[ebp-0x10] ; 00406FF4 8B45F0
    %if ($ - %%insn_00406ff4) > 3
        %error "LONG_00406FF4"
    %endif
    times 3 - ($ - %%insn_00406ff4) db 0
    %%insn_00406ff7:
    cmp eax,[ebp-0x8] ; 00406FF7 3B45F8
    %if ($ - %%insn_00406ff7) > 3
        %error "LONG_00406FF7"
    %endif
    times 3 - ($ - %%insn_00406ff7) db 0
    %%insn_00406ffa:
    jnz short 0x406fcf ; 00406FFA 75D3
    %if ($ - %%insn_00406ffa) > 2
        %error "LONG_00406FFA"
    %endif
    times 2 - ($ - %%insn_00406ffa) db 0
    %%insn_00406ffc:
    cmp dword [0x41f524],0xa ; 00406FFC 833D24F541000A
    %if ($ - %%insn_00406ffc) > 7
        %error "LONG_00406FFC"
    %endif
    times 7 - ($ - %%insn_00406ffc) db 0
    %%insn_00407003:
    jl short 0x406fcf ; 00407003 7CCA
    %if ($ - %%insn_00407003) > 2
        %error "LONG_00407003"
    %endif
    times 2 - ($ - %%insn_00407003) db 0
    %%insn_00407005:
    mov dword [0x41f510],0x0 ; 00407005 C70510F5410000000000
    %if ($ - %%insn_00407005) > 10
        %error "LONG_00407005"
    %endif
    times 10 - ($ - %%insn_00407005) db 0
    %%insn_0040700f:
    mov dword [0x41f520],0x0 ; 0040700F C70520F5410000000000
    %if ($ - %%insn_0040700f) > 10
        %error "LONG_0040700F"
    %endif
    times 10 - ($ - %%insn_0040700f) db 0
    %%insn_00407019:
    mov ecx,[0x41f520] ; 00407019 8B0D20F54100
    %if ($ - %%insn_00407019) > 6
        %error "LONG_00407019"
    %endif
    times 6 - ($ - %%insn_00407019) db 0
    %%insn_0040701f:
    mov [0x41f514],ecx ; 0040701F 890D14F54100
    %if ($ - %%insn_0040701f) > 6
        %error "LONG_0040701F"
    %endif
    times 6 - ($ - %%insn_0040701f) db 0
    %%insn_00407025:
    mov edx,[0x41f514] ; 00407025 8B1514F54100
    %if ($ - %%insn_00407025) > 6
        %error "LONG_00407025"
    %endif
    times 6 - ($ - %%insn_00407025) db 0
    %%insn_0040702b:
    mov [0x41f50c],edx ; 0040702B 89150CF54100
    %if ($ - %%insn_0040702b) > 6
        %error "LONG_0040702B"
    %endif
    times 6 - ($ - %%insn_0040702b) db 0
    %%insn_00407031:
    mov dword [0x41f518],0x0 ; 00407031 C70518F5410000000000
    %if ($ - %%insn_00407031) > 10
        %error "LONG_00407031"
    %endif
    times 10 - ($ - %%insn_00407031) db 0
    %%insn_0040703b:
    mov eax,[0x41f518] ; 0040703B A118F54100
    %if ($ - %%insn_0040703b) > 5
        %error "LONG_0040703B"
    %endif
    times 5 - ($ - %%insn_0040703b) db 0
    %%insn_00407040:
    mov [0x41f51c],eax ; 00407040 A31CF54100
    %if ($ - %%insn_00407040) > 5
        %error "LONG_00407040"
    %endif
    times 5 - ($ - %%insn_00407040) db 0
    db 0x8B, 0xE5 ; 00407045 8BE5 | mov esp,ebp | encoding preserved
    %%insn_00407047:
    pop ebp ; 00407047 5D
    %if ($ - %%insn_00407047) > 1
        %error "LONG_00407047"
    %endif
    times 1 - ($ - %%insn_00407047) db 0
    %%insn_00407048:
    ret ; 00407048 C3
    %if ($ - %%insn_00407048) > 1
        %error "LONG_00407048"
    %endif
    times 1 - ($ - %%insn_00407048) db 0
    %if ($ - %%fragment_start) != 155
        %error "function fragment size drift: 00406FAE"
    %endif
%endmacro
