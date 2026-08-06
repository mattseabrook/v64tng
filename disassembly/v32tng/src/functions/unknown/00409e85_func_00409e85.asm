; PE virtual entry 00409E85
; Ghidra working symbol: FUN_00409e85
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00409e85_part_00 0
    %%fragment_start:
func_00409e85:
    %%insn_00409e85:
    push ebp ; 00409E85 55
    %if ($ - %%insn_00409e85) > 1
        %error "LONG_00409E85"
    %endif
    times 1 - ($ - %%insn_00409e85) db 0
    db 0x8B, 0xEC ; 00409E86 8BEC | mov ebp,esp | encoding preserved
    %%insn_00409e88:
    sub esp,0xc ; 00409E88 83EC0C
    %if ($ - %%insn_00409e88) > 3
        %error "LONG_00409E88"
    %endif
    times 3 - ($ - %%insn_00409e88) db 0
    %%insn_00409e8b:
    mov eax,[0x41f5e8] ; 00409E8B A1E8F54100
    %if ($ - %%insn_00409e8b) > 5
        %error "LONG_00409E8B"
    %endif
    times 5 - ($ - %%insn_00409e8b) db 0
    %%insn_00409e90:
    add eax,[ebp+0x8] ; 00409E90 034508
    %if ($ - %%insn_00409e90) > 3
        %error "LONG_00409E90"
    %endif
    times 3 - ($ - %%insn_00409e90) db 0
    %%insn_00409e93:
    mov [ebp-0x4],eax ; 00409E93 8945FC
    %if ($ - %%insn_00409e93) > 3
        %error "LONG_00409E93"
    %endif
    times 3 - ($ - %%insn_00409e93) db 0
    %%insn_00409e96:
    mov ecx,[0x41f5f4] ; 00409E96 8B0DF4F54100
    %if ($ - %%insn_00409e96) > 6
        %error "LONG_00409E96"
    %endif
    times 6 - ($ - %%insn_00409e96) db 0
    %%insn_00409e9c:
    add ecx,[0x41f5e8] ; 00409E9C 030DE8F54100
    %if ($ - %%insn_00409e9c) > 6
        %error "LONG_00409E9C"
    %endif
    times 6 - ($ - %%insn_00409e9c) db 0
    %%insn_00409ea2:
    mov [ebp-0x8],ecx ; 00409EA2 894DF8
    %if ($ - %%insn_00409ea2) > 3
        %error "LONG_00409EA2"
    %endif
    times 3 - ($ - %%insn_00409ea2) db 0
    %%insn_00409ea5:
    cmp dword [ebp-0x4],0x20000 ; 00409EA5 817DFC00000200
    %if ($ - %%insn_00409ea5) > 7
        %error "LONG_00409EA5"
    %endif
    times 7 - ($ - %%insn_00409ea5) db 0
    %%insn_00409eac:
    jng short 0x409ede ; 00409EAC 7E30
    %if ($ - %%insn_00409eac) > 2
        %error "LONG_00409EAC"
    %endif
    times 2 - ($ - %%insn_00409eac) db 0
    %%insn_00409eae:
    mov edx,0x20000 ; 00409EAE BA00000200
    %if ($ - %%insn_00409eae) > 5
        %error "LONG_00409EAE"
    %endif
    times 5 - ($ - %%insn_00409eae) db 0
    %%insn_00409eb3:
    sub edx,[0x41f5e8] ; 00409EB3 2B15E8F54100
    %if ($ - %%insn_00409eb3) > 6
        %error "LONG_00409EB3"
    %endif
    times 6 - ($ - %%insn_00409eb3) db 0
    %%insn_00409eb9:
    mov [ebp-0xc],edx ; 00409EB9 8955F4
    %if ($ - %%insn_00409eb9) > 3
        %error "LONG_00409EB9"
    %endif
    times 3 - ($ - %%insn_00409eb9) db 0
    %%insn_00409ebc:
    mov eax,[ebp+0x8] ; 00409EBC 8B4508
    %if ($ - %%insn_00409ebc) > 3
        %error "LONG_00409EBC"
    %endif
    times 3 - ($ - %%insn_00409ebc) db 0
    %%insn_00409ebf:
    sub eax,[ebp-0xc] ; 00409EBF 2B45F4
    %if ($ - %%insn_00409ebf) > 3
        %error "LONG_00409EBF"
    %endif
    times 3 - ($ - %%insn_00409ebf) db 0
    %%insn_00409ec2:
    mov [ebp-0x4],eax ; 00409EC2 8945FC
    %if ($ - %%insn_00409ec2) > 3
        %error "LONG_00409EC2"
    %endif
    times 3 - ($ - %%insn_00409ec2) db 0
    %%insn_00409ec5:
    mov ecx,[ebp-0x4] ; 00409EC5 8B4DFC
    %if ($ - %%insn_00409ec5) > 3
        %error "LONG_00409EC5"
    %endif
    times 3 - ($ - %%insn_00409ec5) db 0
    %%insn_00409ec8:
    push ecx ; 00409EC8 51
    %if ($ - %%insn_00409ec8) > 1
        %error "LONG_00409EC8"
    %endif
    times 1 - ($ - %%insn_00409ec8) db 0
    %%insn_00409ec9:
    mov edx,[0x41f5f4] ; 00409EC9 8B15F4F54100
    %if ($ - %%insn_00409ec9) > 6
        %error "LONG_00409EC9"
    %endif
    times 6 - ($ - %%insn_00409ec9) db 0
    %%insn_00409ecf:
    push edx ; 00409ECF 52
    %if ($ - %%insn_00409ecf) > 1
        %error "LONG_00409ECF"
    %endif
    times 1 - ($ - %%insn_00409ecf) db 0
    %%insn_00409ed0:
    mov eax,[0x420a00] ; 00409ED0 A1000A4200
    %if ($ - %%insn_00409ed0) > 5
        %error "LONG_00409ED0"
    %endif
    times 5 - ($ - %%insn_00409ed0) db 0
    %%insn_00409ed5:
    push eax ; 00409ED5 50
    %if ($ - %%insn_00409ed5) > 1
        %error "LONG_00409ED5"
    %endif
    times 1 - ($ - %%insn_00409ed5) db 0
    %%insn_00409ed6:
    call 0x40ca10 ; 00409ED6 E8352B0000
    %if ($ - %%insn_00409ed6) > 5
        %error "LONG_00409ED6"
    %endif
    times 5 - ($ - %%insn_00409ed6) db 0
    %%insn_00409edb:
    add esp,0xc ; 00409EDB 83C40C
    %if ($ - %%insn_00409edb) > 3
        %error "LONG_00409EDB"
    %endif
    times 3 - ($ - %%insn_00409edb) db 0
    %%insn_00409ede:
    mov ecx,[ebp-0x4] ; 00409EDE 8B4DFC
    %if ($ - %%insn_00409ede) > 3
        %error "LONG_00409EDE"
    %endif
    times 3 - ($ - %%insn_00409ede) db 0
    %%insn_00409ee1:
    mov [0x41f5e8],ecx ; 00409EE1 890DE8F54100
    %if ($ - %%insn_00409ee1) > 6
        %error "LONG_00409EE1"
    %endif
    times 6 - ($ - %%insn_00409ee1) db 0
    %%insn_00409ee7:
    mov edx,[0x420a10] ; 00409EE7 8B15100A4200
    %if ($ - %%insn_00409ee7) > 6
        %error "LONG_00409EE7"
    %endif
    times 6 - ($ - %%insn_00409ee7) db 0
    %%insn_00409eed:
    sub edx,[ebp+0x8] ; 00409EED 2B5508
    %if ($ - %%insn_00409eed) > 3
        %error "LONG_00409EED"
    %endif
    times 3 - ($ - %%insn_00409eed) db 0
    %%insn_00409ef0:
    mov [0x420a10],edx ; 00409EF0 8915100A4200
    %if ($ - %%insn_00409ef0) > 6
        %error "LONG_00409EF0"
    %endif
    times 6 - ($ - %%insn_00409ef0) db 0
    %%insn_00409ef6:
    mov eax,[0x420a14] ; 00409EF6 A1140A4200
    %if ($ - %%insn_00409ef6) > 5
        %error "LONG_00409EF6"
    %endif
    times 5 - ($ - %%insn_00409ef6) db 0
    %%insn_00409efb:
    add eax,0x1 ; 00409EFB 83C001
    %if ($ - %%insn_00409efb) > 3
        %error "LONG_00409EFB"
    %endif
    times 3 - ($ - %%insn_00409efb) db 0
    %%insn_00409efe:
    mov [0x420a14],eax ; 00409EFE A3140A4200
    %if ($ - %%insn_00409efe) > 5
        %error "LONG_00409EFE"
    %endif
    times 5 - ($ - %%insn_00409efe) db 0
    %%insn_00409f03:
    mov eax,[ebp-0x8] ; 00409F03 8B45F8
    %if ($ - %%insn_00409f03) > 3
        %error "LONG_00409F03"
    %endif
    times 3 - ($ - %%insn_00409f03) db 0
    db 0x8B, 0xE5 ; 00409F06 8BE5 | mov esp,ebp | encoding preserved
    %%insn_00409f08:
    pop ebp ; 00409F08 5D
    %if ($ - %%insn_00409f08) > 1
        %error "LONG_00409F08"
    %endif
    times 1 - ($ - %%insn_00409f08) db 0
    %%insn_00409f09:
    ret ; 00409F09 C3
    %if ($ - %%insn_00409f09) > 1
        %error "LONG_00409F09"
    %endif
    times 1 - ($ - %%insn_00409f09) db 0
    %if ($ - %%fragment_start) != 133
        %error "function fragment size drift: 00409E85"
    %endif
%endmacro
