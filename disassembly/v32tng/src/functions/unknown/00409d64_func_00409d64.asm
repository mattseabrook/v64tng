; PE virtual entry 00409D64
; Ghidra working symbol: FUN_00409d64
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00409d64_part_00 0
    %%fragment_start:
func_00409d64:
    %%insn_00409d64:
    push ebp ; 00409D64 55
    %if ($ - %%insn_00409d64) > 1
        %error "LONG_00409D64"
    %endif
    times 1 - ($ - %%insn_00409d64) db 0
    db 0x8B, 0xEC ; 00409D65 8BEC | mov ebp,esp | encoding preserved
    %%insn_00409d67:
    push dword 0xffffffffffffffff ; 00409D67 6AFF
    %if ($ - %%insn_00409d67) > 2
        %error "LONG_00409D67"
    %endif
    times 2 - ($ - %%insn_00409d67) db 0
    %%insn_00409d69:
    push dword 0x41a068 ; 00409D69 6868A04100
    %if ($ - %%insn_00409d69) > 5
        %error "LONG_00409D69"
    %endif
    times 5 - ($ - %%insn_00409d69) db 0
    %%insn_00409d6e:
    push dword 0x40db10 ; 00409D6E 6810DB4000
    %if ($ - %%insn_00409d6e) > 5
        %error "LONG_00409D6E"
    %endif
    times 5 - ($ - %%insn_00409d6e) db 0
    %%insn_00409d73:
    mov eax,[fs:0x0] ; 00409D73 64A100000000
    %if ($ - %%insn_00409d73) > 6
        %error "LONG_00409D73"
    %endif
    times 6 - ($ - %%insn_00409d73) db 0
    %%insn_00409d79:
    push eax ; 00409D79 50
    %if ($ - %%insn_00409d79) > 1
        %error "LONG_00409D79"
    %endif
    times 1 - ($ - %%insn_00409d79) db 0
    %%insn_00409d7a:
    mov [fs:0x0],esp ; 00409D7A 64892500000000
    %if ($ - %%insn_00409d7a) > 7
        %error "LONG_00409D7A"
    %endif
    times 7 - ($ - %%insn_00409d7a) db 0
    %%insn_00409d81:
    add esp,0xfffffffffffffff4 ; 00409D81 83C4F4
    %if ($ - %%insn_00409d81) > 3
        %error "LONG_00409D81"
    %endif
    times 3 - ($ - %%insn_00409d81) db 0
    %%insn_00409d84:
    push ebx ; 00409D84 53
    %if ($ - %%insn_00409d84) > 1
        %error "LONG_00409D84"
    %endif
    times 1 - ($ - %%insn_00409d84) db 0
    %%insn_00409d85:
    push esi ; 00409D85 56
    %if ($ - %%insn_00409d85) > 1
        %error "LONG_00409D85"
    %endif
    times 1 - ($ - %%insn_00409d85) db 0
    %%insn_00409d86:
    push edi ; 00409D86 57
    %if ($ - %%insn_00409d86) > 1
        %error "LONG_00409D86"
    %endif
    times 1 - ($ - %%insn_00409d86) db 0
    %%insn_00409d87:
    mov [ebp-0x18],esp ; 00409D87 8965E8
    %if ($ - %%insn_00409d87) > 3
        %error "LONG_00409D87"
    %endif
    times 3 - ($ - %%insn_00409d87) db 0
    %%insn_00409d8a:
    cmp dword [0x420a08],0x0 ; 00409D8A 833D080A420000
    %if ($ - %%insn_00409d8a) > 7
        %error "LONG_00409D8A"
    %endif
    times 7 - ($ - %%insn_00409d8a) db 0
    %%insn_00409d91:
    jnz short 0x409d98 ; 00409D91 7505
    %if ($ - %%insn_00409d91) > 2
        %error "LONG_00409D91"
    %endif
    times 2 - ($ - %%insn_00409d91) db 0
    %%insn_00409d93:
    jmp 0x409e6e ; 00409D93 E9D6000000
    %if ($ - %%insn_00409d93) > 5
        %error "LONG_00409D93"
    %endif
    times 5 - ($ - %%insn_00409d93) db 0
    %%insn_00409d98:
    cmp dword [0x420a10],0x20000 ; 00409D98 813D100A420000000200
    %if ($ - %%insn_00409d98) > 10
        %error "LONG_00409D98"
    %endif
    times 10 - ($ - %%insn_00409d98) db 0
    %%insn_00409da2:
    jnl 0x409e6e ; 00409DA2 0F8DC6000000
    %if ($ - %%insn_00409da2) > 6
        %error "LONG_00409DA2"
    %endif
    times 6 - ($ - %%insn_00409da2) db 0
    %%insn_00409da8:
    mov eax,[0x41f5e8] ; 00409DA8 A1E8F54100
    %if ($ - %%insn_00409da8) > 5
        %error "LONG_00409DA8"
    %endif
    times 5 - ($ - %%insn_00409da8) db 0
    %%insn_00409dad:
    sub eax,[0x41f5f0] ; 00409DAD 2B05F0F54100
    %if ($ - %%insn_00409dad) > 6
        %error "LONG_00409DAD"
    %endif
    times 6 - ($ - %%insn_00409dad) db 0
    %%insn_00409db3:
    mov [ebp-0x1c],eax ; 00409DB3 8945E4
    %if ($ - %%insn_00409db3) > 3
        %error "LONG_00409DB3"
    %endif
    times 3 - ($ - %%insn_00409db3) db 0
    %%insn_00409db6:
    cmp dword [ebp-0x1c],0x0 ; 00409DB6 837DE400
    %if ($ - %%insn_00409db6) > 4
        %error "LONG_00409DB6"
    %endif
    times 4 - ($ - %%insn_00409db6) db 0
    %%insn_00409dba:
    jnl short 0x409dcc ; 00409DBA 7D10
    %if ($ - %%insn_00409dba) > 2
        %error "LONG_00409DBA"
    %endif
    times 2 - ($ - %%insn_00409dba) db 0
    %%insn_00409dbc:
    mov ecx,0x20000 ; 00409DBC B900000200
    %if ($ - %%insn_00409dbc) > 5
        %error "LONG_00409DBC"
    %endif
    times 5 - ($ - %%insn_00409dbc) db 0
    %%insn_00409dc1:
    sub ecx,[0x41f5f0] ; 00409DC1 2B0DF0F54100
    %if ($ - %%insn_00409dc1) > 6
        %error "LONG_00409DC1"
    %endif
    times 6 - ($ - %%insn_00409dc1) db 0
    %%insn_00409dc7:
    mov [ebp-0x1c],ecx ; 00409DC7 894DE4
    %if ($ - %%insn_00409dc7) > 3
        %error "LONG_00409DC7"
    %endif
    times 3 - ($ - %%insn_00409dc7) db 0
    %%insn_00409dca:
    jmp short 0x409dda ; 00409DCA EB0E
    %if ($ - %%insn_00409dca) > 2
        %error "LONG_00409DCA"
    %endif
    times 2 - ($ - %%insn_00409dca) db 0
    %%insn_00409dcc:
    cmp dword [ebp-0x1c],0x4000 ; 00409DCC 817DE400400000
    %if ($ - %%insn_00409dcc) > 7
        %error "LONG_00409DCC"
    %endif
    times 7 - ($ - %%insn_00409dcc) db 0
    %%insn_00409dd3:
    jnl short 0x409dda ; 00409DD3 7D05
    %if ($ - %%insn_00409dd3) > 2
        %error "LONG_00409DD3"
    %endif
    times 2 - ($ - %%insn_00409dd3) db 0
    %%insn_00409dd5:
    jmp 0x409e74 ; 00409DD5 E99A000000
    %if ($ - %%insn_00409dd5) > 5
        %error "LONG_00409DD5"
    %endif
    times 5 - ($ - %%insn_00409dd5) db 0
    %%insn_00409dda:
    cmp dword [ebp-0x1c],0x4000 ; 00409DDA 817DE400400000
    %if ($ - %%insn_00409dda) > 7
        %error "LONG_00409DDA"
    %endif
    times 7 - ($ - %%insn_00409dda) db 0
    %%insn_00409de1:
    jng short 0x409dea ; 00409DE1 7E07
    %if ($ - %%insn_00409de1) > 2
        %error "LONG_00409DE1"
    %endif
    times 2 - ($ - %%insn_00409de1) db 0
    %%insn_00409de3:
    mov dword [ebp-0x1c],0x4000 ; 00409DE3 C745E400400000
    %if ($ - %%insn_00409de3) > 7
        %error "LONG_00409DE3"
    %endif
    times 7 - ($ - %%insn_00409de3) db 0
    %%insn_00409dea:
    mov dword [ebp-0x4],0x0 ; 00409DEA C745FC00000000
    %if ($ - %%insn_00409dea) > 7
        %error "LONG_00409DEA"
    %endif
    times 7 - ($ - %%insn_00409dea) db 0
    %%insn_00409df1:
    mov edx,[ebp-0x1c] ; 00409DF1 8B55E4
    %if ($ - %%insn_00409df1) > 3
        %error "LONG_00409DF1"
    %endif
    times 3 - ($ - %%insn_00409df1) db 0
    %%insn_00409df4:
    push edx ; 00409DF4 52
    %if ($ - %%insn_00409df4) > 1
        %error "LONG_00409DF4"
    %endif
    times 1 - ($ - %%insn_00409df4) db 0
    %%insn_00409df5:
    mov eax,[0x41f5f4] ; 00409DF5 A1F4F54100
    %if ($ - %%insn_00409df5) > 5
        %error "LONG_00409DF5"
    %endif
    times 5 - ($ - %%insn_00409df5) db 0
    %%insn_00409dfa:
    add eax,[0x41f5f0] ; 00409DFA 0305F0F54100
    %if ($ - %%insn_00409dfa) > 6
        %error "LONG_00409DFA"
    %endif
    times 6 - ($ - %%insn_00409dfa) db 0
    %%insn_00409e00:
    push eax ; 00409E00 50
    %if ($ - %%insn_00409e00) > 1
        %error "LONG_00409E00"
    %endif
    times 1 - ($ - %%insn_00409e00) db 0
    %%insn_00409e01:
    mov ecx,[0x4209fc] ; 00409E01 8B0DFC094200
    %if ($ - %%insn_00409e01) > 6
        %error "LONG_00409E01"
    %endif
    times 6 - ($ - %%insn_00409e01) db 0
    %%insn_00409e07:
    push ecx ; 00409E07 51
    %if ($ - %%insn_00409e07) > 1
        %error "LONG_00409E07"
    %endif
    times 1 - ($ - %%insn_00409e07) db 0
    %%insn_00409e08:
    call dword near [0x424594] ; 00409E08 FF1594454200
    %if ($ - %%insn_00409e08) > 6
        %error "LONG_00409E08"
    %endif
    times 6 - ($ - %%insn_00409e08) db 0
    %%insn_00409e0e:
    mov dword [ebp-0x4],0xffffffff ; 00409E0E C745FCFFFFFFFF
    %if ($ - %%insn_00409e0e) > 7
        %error "LONG_00409E0E"
    %endif
    times 7 - ($ - %%insn_00409e0e) db 0
    %%insn_00409e15:
    jmp short 0x409e34 ; 00409E15 EB1D
    %if ($ - %%insn_00409e15) > 2
        %error "LONG_00409E15"
    %endif
    times 2 - ($ - %%insn_00409e15) db 0
    %if ($ - %%fragment_start) != 179
        %error "function fragment size drift: 00409D64"
    %endif
%endmacro

%macro emit_func_00409d64_part_01 0
    %%fragment_start:
    %%insn_00409e34:
    mov edx,[0x41f5f0] ; 00409E34 8B15F0F54100
    %if ($ - %%insn_00409e34) > 6
        %error "LONG_00409E34"
    %endif
    times 6 - ($ - %%insn_00409e34) db 0
    %%insn_00409e3a:
    add edx,[ebp-0x1c] ; 00409E3A 0355E4
    %if ($ - %%insn_00409e3a) > 3
        %error "LONG_00409E3A"
    %endif
    times 3 - ($ - %%insn_00409e3a) db 0
    %%insn_00409e3d:
    mov [0x41f5f0],edx ; 00409E3D 8915F0F54100
    %if ($ - %%insn_00409e3d) > 6
        %error "LONG_00409E3D"
    %endif
    times 6 - ($ - %%insn_00409e3d) db 0
    %%insn_00409e43:
    mov eax,[0x420a10] ; 00409E43 A1100A4200
    %if ($ - %%insn_00409e43) > 5
        %error "LONG_00409E43"
    %endif
    times 5 - ($ - %%insn_00409e43) db 0
    %%insn_00409e48:
    add eax,[ebp-0x1c] ; 00409E48 0345E4
    %if ($ - %%insn_00409e48) > 3
        %error "LONG_00409E48"
    %endif
    times 3 - ($ - %%insn_00409e48) db 0
    %%insn_00409e4b:
    mov [0x420a10],eax ; 00409E4B A3100A4200
    %if ($ - %%insn_00409e4b) > 5
        %error "LONG_00409E4B"
    %endif
    times 5 - ($ - %%insn_00409e4b) db 0
    %%insn_00409e50:
    cmp dword [0x41f5f0],0x20000 ; 00409E50 813DF0F5410000000200
    %if ($ - %%insn_00409e50) > 10
        %error "LONG_00409E50"
    %endif
    times 10 - ($ - %%insn_00409e50) db 0
    %%insn_00409e5a:
    jl short 0x409e6e ; 00409E5A 7C12
    %if ($ - %%insn_00409e5a) > 2
        %error "LONG_00409E5A"
    %endif
    times 2 - ($ - %%insn_00409e5a) db 0
    %%insn_00409e5c:
    mov ecx,[0x41f5f0] ; 00409E5C 8B0DF0F54100
    %if ($ - %%insn_00409e5c) > 6
        %error "LONG_00409E5C"
    %endif
    times 6 - ($ - %%insn_00409e5c) db 0
    %%insn_00409e62:
    sub ecx,0x20000 ; 00409E62 81E900000200
    %if ($ - %%insn_00409e62) > 6
        %error "LONG_00409E62"
    %endif
    times 6 - ($ - %%insn_00409e62) db 0
    %%insn_00409e68:
    mov [0x41f5f0],ecx ; 00409E68 890DF0F54100
    %if ($ - %%insn_00409e68) > 6
        %error "LONG_00409E68"
    %endif
    times 6 - ($ - %%insn_00409e68) db 0
    %%insn_00409e6e:
    call dword near [0x42461c] ; 00409E6E FF151C464200
    %if ($ - %%insn_00409e6e) > 6
        %error "LONG_00409E6E"
    %endif
    times 6 - ($ - %%insn_00409e6e) db 0
    %%insn_00409e74:
    mov ecx,[ebp-0x10] ; 00409E74 8B4DF0
    %if ($ - %%insn_00409e74) > 3
        %error "LONG_00409E74"
    %endif
    times 3 - ($ - %%insn_00409e74) db 0
    %%insn_00409e77:
    mov [fs:0x0],ecx ; 00409E77 64890D00000000
    %if ($ - %%insn_00409e77) > 7
        %error "LONG_00409E77"
    %endif
    times 7 - ($ - %%insn_00409e77) db 0
    %%insn_00409e7e:
    pop edi ; 00409E7E 5F
    %if ($ - %%insn_00409e7e) > 1
        %error "LONG_00409E7E"
    %endif
    times 1 - ($ - %%insn_00409e7e) db 0
    %%insn_00409e7f:
    pop esi ; 00409E7F 5E
    %if ($ - %%insn_00409e7f) > 1
        %error "LONG_00409E7F"
    %endif
    times 1 - ($ - %%insn_00409e7f) db 0
    %%insn_00409e80:
    pop ebx ; 00409E80 5B
    %if ($ - %%insn_00409e80) > 1
        %error "LONG_00409E80"
    %endif
    times 1 - ($ - %%insn_00409e80) db 0
    db 0x8B, 0xE5 ; 00409E81 8BE5 | mov esp,ebp | encoding preserved
    %%insn_00409e83:
    pop ebp ; 00409E83 5D
    %if ($ - %%insn_00409e83) > 1
        %error "LONG_00409E83"
    %endif
    times 1 - ($ - %%insn_00409e83) db 0
    %%insn_00409e84:
    ret ; 00409E84 C3
    %if ($ - %%insn_00409e84) > 1
        %error "LONG_00409E84"
    %endif
    times 1 - ($ - %%insn_00409e84) db 0
    %if ($ - %%fragment_start) != 81
        %error "function fragment size drift: 00409E34"
    %endif
%endmacro
