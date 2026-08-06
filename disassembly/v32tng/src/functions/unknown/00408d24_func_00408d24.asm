; PE virtual entry 00408D24
; Ghidra working symbol: FUN_00408d24
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00408d24_part_00 0
    %%fragment_start:
func_00408d24:
    %%insn_00408d24:
    push ebp ; 00408D24 55
    %if ($ - %%insn_00408d24) > 1
        %error "LONG_00408D24"
    %endif
    times 1 - ($ - %%insn_00408d24) db 0
    db 0x8B, 0xEC ; 00408D25 8BEC | mov ebp,esp | encoding preserved
    %%insn_00408d27:
    push ecx ; 00408D27 51
    %if ($ - %%insn_00408d27) > 1
        %error "LONG_00408D27"
    %endif
    times 1 - ($ - %%insn_00408d27) db 0
    %%insn_00408d28:
    mov eax,[0x421404] ; 00408D28 A104144200
    %if ($ - %%insn_00408d28) > 5
        %error "LONG_00408D28"
    %endif
    times 5 - ($ - %%insn_00408d28) db 0
    %%insn_00408d2d:
    and al,0xfb ; 00408D2D 24FB
    %if ($ - %%insn_00408d2d) > 2
        %error "LONG_00408D2D"
    %endif
    times 2 - ($ - %%insn_00408d2d) db 0
    %%insn_00408d2f:
    mov [0x421404],eax ; 00408D2F A304144200
    %if ($ - %%insn_00408d2f) > 5
        %error "LONG_00408D2F"
    %endif
    times 5 - ($ - %%insn_00408d2f) db 0
    %%insn_00408d34:
    mov ecx,[ebp+0x8] ; 00408D34 8B4D08
    %if ($ - %%insn_00408d34) > 3
        %error "LONG_00408D34"
    %endif
    times 3 - ($ - %%insn_00408d34) db 0
    %%insn_00408d37:
    mov [0x4213c0],ecx ; 00408D37 890DC0134200
    %if ($ - %%insn_00408d37) > 6
        %error "LONG_00408D37"
    %endif
    times 6 - ($ - %%insn_00408d37) db 0
    %%insn_00408d3d:
    mov dx,[ebp+0xc] ; 00408D3D 668B550C
    %if ($ - %%insn_00408d3d) > 4
        %error "LONG_00408D3D"
    %endif
    times 4 - ($ - %%insn_00408d3d) db 0
    %%insn_00408d41:
    mov [0x421422],dx ; 00408D41 66891522144200
    %if ($ - %%insn_00408d41) > 7
        %error "LONG_00408D41"
    %endif
    times 7 - ($ - %%insn_00408d41) db 0
    %%insn_00408d48:
    mov eax,[ebp+0x10] ; 00408D48 8B4510
    %if ($ - %%insn_00408d48) > 3
        %error "LONG_00408D48"
    %endif
    times 3 - ($ - %%insn_00408d48) db 0
    %%insn_00408d4b:
    mov [0x421410],eax ; 00408D4B A310144200
    %if ($ - %%insn_00408d4b) > 5
        %error "LONG_00408D4B"
    %endif
    times 5 - ($ - %%insn_00408d4b) db 0
    %%insn_00408d50:
    mov ecx,[ebp+0x14] ; 00408D50 8B4D14
    %if ($ - %%insn_00408d50) > 3
        %error "LONG_00408D50"
    %endif
    times 3 - ($ - %%insn_00408d50) db 0
    %%insn_00408d53:
    mov [0x421414],ecx ; 00408D53 890D14144200
    %if ($ - %%insn_00408d53) > 6
        %error "LONG_00408D53"
    %endif
    times 6 - ($ - %%insn_00408d53) db 0
    %%insn_00408d59:
    mov dx,[ebp+0x18] ; 00408D59 668B5518
    %if ($ - %%insn_00408d59) > 4
        %error "LONG_00408D59"
    %endif
    times 4 - ($ - %%insn_00408d59) db 0
    %%insn_00408d5d:
    mov [0x421420],dx ; 00408D5D 66891520144200
    %if ($ - %%insn_00408d5d) > 7
        %error "LONG_00408D5D"
    %endif
    times 7 - ($ - %%insn_00408d5d) db 0
    %%insn_00408d64:
    mov word [0x4213c8],0x0 ; 00408D64 66C705C81342000000
    %if ($ - %%insn_00408d64) > 9
        %error "LONG_00408D64"
    %endif
    times 9 - ($ - %%insn_00408d64) db 0
    %%insn_00408d6d:
    mov eax,[ebp+0x18] ; 00408D6D 8B4518
    %if ($ - %%insn_00408d6d) > 3
        %error "LONG_00408D6D"
    %endif
    times 3 - ($ - %%insn_00408d6d) db 0
    %%insn_00408d70:
    and eax,0xffff ; 00408D70 25FFFF0000
    %if ($ - %%insn_00408d70) > 5
        %error "LONG_00408D70"
    %endif
    times 5 - ($ - %%insn_00408d70) db 0
    %%insn_00408d75:
    test eax,eax ; 00408D75 85C0
    %if ($ - %%insn_00408d75) > 2
        %error "LONG_00408D75"
    %endif
    times 2 - ($ - %%insn_00408d75) db 0
    %%insn_00408d77:
    jz short 0x408d9d ; 00408D77 7424
    %if ($ - %%insn_00408d77) > 2
        %error "LONG_00408D77"
    %endif
    times 2 - ($ - %%insn_00408d77) db 0
    %%insn_00408d79:
    push dword 0x10 ; 00408D79 6A10
    %if ($ - %%insn_00408d79) > 2
        %error "LONG_00408D79"
    %endif
    times 2 - ($ - %%insn_00408d79) db 0
    db 0x33, 0xC9 ; 00408D7B 33C9 | xor ecx,ecx | encoding preserved
    %%insn_00408d7d:
    mov cx,[0x421420] ; 00408D7D 668B0D20144200
    %if ($ - %%insn_00408d7d) > 7
        %error "LONG_00408D7D"
    %endif
    times 7 - ($ - %%insn_00408d7d) db 0
    %%insn_00408d84:
    push ecx ; 00408D84 51
    %if ($ - %%insn_00408d84) > 1
        %error "LONG_00408D84"
    %endif
    times 1 - ($ - %%insn_00408d84) db 0
    %%insn_00408d85:
    call 0x40a39f ; 00408D85 E815160000
    %if ($ - %%insn_00408d85) > 5
        %error "LONG_00408D85"
    %endif
    times 5 - ($ - %%insn_00408d85) db 0
    %%insn_00408d8a:
    add esp,0x4 ; 00408D8A 83C404
    %if ($ - %%insn_00408d8a) > 3
        %error "LONG_00408D8A"
    %endif
    times 3 - ($ - %%insn_00408d8a) db 0
    %%insn_00408d8d:
    push eax ; 00408D8D 50
    %if ($ - %%insn_00408d8d) > 1
        %error "LONG_00408D8D"
    %endif
    times 1 - ($ - %%insn_00408d8d) db 0
    %%insn_00408d8e:
    push dword 0x4213c8 ; 00408D8E 68C8134200
    %if ($ - %%insn_00408d8e) > 5
        %error "LONG_00408D8E"
    %endif
    times 5 - ($ - %%insn_00408d8e) db 0
    %%insn_00408d93:
    call 0x40ca10 ; 00408D93 E8783C0000
    %if ($ - %%insn_00408d93) > 5
        %error "LONG_00408D93"
    %endif
    times 5 - ($ - %%insn_00408d93) db 0
    %%insn_00408d98:
    add esp,0xc ; 00408D98 83C40C
    %if ($ - %%insn_00408d98) > 3
        %error "LONG_00408D98"
    %endif
    times 3 - ($ - %%insn_00408d98) db 0
    %%insn_00408d9b:
    jmp short 0x408db1 ; 00408D9B EB14
    %if ($ - %%insn_00408d9b) > 2
        %error "LONG_00408D9B"
    %endif
    times 2 - ($ - %%insn_00408d9b) db 0
    %%insn_00408d9d:
    push dword 0x10 ; 00408D9D 6A10
    %if ($ - %%insn_00408d9d) > 2
        %error "LONG_00408D9D"
    %endif
    times 2 - ($ - %%insn_00408d9d) db 0
    %%insn_00408d9f:
    push dword 0x4213c8 ; 00408D9F 68C8134200
    %if ($ - %%insn_00408d9f) > 5
        %error "LONG_00408D9F"
    %endif
    times 5 - ($ - %%insn_00408d9f) db 0
    %%insn_00408da4:
    mov edx,[0x4213c0] ; 00408DA4 8B15C0134200
    %if ($ - %%insn_00408da4) > 6
        %error "LONG_00408DA4"
    %endif
    times 6 - ($ - %%insn_00408da4) db 0
    %%insn_00408daa:
    push edx ; 00408DAA 52
    %if ($ - %%insn_00408daa) > 1
        %error "LONG_00408DAA"
    %endif
    times 1 - ($ - %%insn_00408daa) db 0
    %%insn_00408dab:
    call dword near [0x424594] ; 00408DAB FF1594454200
    %if ($ - %%insn_00408dab) > 6
        %error "LONG_00408DAB"
    %endif
    times 6 - ($ - %%insn_00408dab) db 0
    db 0x33, 0xC0 ; 00408DB1 33C0 | xor eax,eax | encoding preserved
    %%insn_00408db3:
    mov ax,[0x4213c8] ; 00408DB3 66A1C8134200
    %if ($ - %%insn_00408db3) > 6
        %error "LONG_00408DB3"
    %endif
    times 6 - ($ - %%insn_00408db3) db 0
    %%insn_00408db9:
    mov [ebp-0x4],eax ; 00408DB9 8945FC
    %if ($ - %%insn_00408db9) > 3
        %error "LONG_00408DB9"
    %endif
    times 3 - ($ - %%insn_00408db9) db 0
    %%insn_00408dbc:
    cmp dword [ebp-0x4],0x9267 ; 00408DBC 817DFC67920000
    %if ($ - %%insn_00408dbc) > 7
        %error "LONG_00408DBC"
    %endif
    times 7 - ($ - %%insn_00408dbc) db 0
    %%insn_00408dc3:
    jz short 0x408dc7 ; 00408DC3 7402
    %if ($ - %%insn_00408dc3) > 2
        %error "LONG_00408DC3"
    %endif
    times 2 - ($ - %%insn_00408dc3) db 0
    %%insn_00408dc5:
    jmp short 0x408de5 ; 00408DC5 EB1E
    %if ($ - %%insn_00408dc5) > 2
        %error "LONG_00408DC5"
    %endif
    times 2 - ($ - %%insn_00408dc5) db 0
    %%insn_00408dc7:
    push dword 0x4213c0 ; 00408DC7 68C0134200
    %if ($ - %%insn_00408dc7) > 5
        %error "LONG_00408DC7"
    %endif
    times 5 - ($ - %%insn_00408dc7) db 0
    %%insn_00408dcc:
    call 0x40c1bd ; 00408DCC E8EC330000
    %if ($ - %%insn_00408dcc) > 5
        %error "LONG_00408DCC"
    %endif
    times 5 - ($ - %%insn_00408dcc) db 0
    %%insn_00408dd1:
    add esp,0x4 ; 00408DD1 83C404
    %if ($ - %%insn_00408dd1) > 3
        %error "LONG_00408DD1"
    %endif
    times 3 - ($ - %%insn_00408dd1) db 0
    %%insn_00408dd4:
    mov dword [0x4213c4],0x40c261 ; 00408DD4 C705C413420061C24000
    %if ($ - %%insn_00408dd4) > 10
        %error "LONG_00408DD4"
    %endif
    times 10 - ($ - %%insn_00408dd4) db 0
    %%insn_00408dde:
    call 0x408d00 ; 00408DDE E81DFFFFFF
    %if ($ - %%insn_00408dde) > 5
        %error "LONG_00408DDE"
    %endif
    times 5 - ($ - %%insn_00408dde) db 0
    %%insn_00408de3:
    jmp short 0x408df2 ; 00408DE3 EB0D
    %if ($ - %%insn_00408de3) > 2
        %error "LONG_00408DE3"
    %endif
    times 2 - ($ - %%insn_00408de3) db 0
    %%insn_00408de5:
    push dword 0x41bb78 ; 00408DE5 6878BB4100
    %if ($ - %%insn_00408de5) > 5
        %error "LONG_00408DE5"
    %endif
    times 5 - ($ - %%insn_00408de5) db 0
    %%insn_00408dea:
    call 0x409760 ; 00408DEA E871090000
    %if ($ - %%insn_00408dea) > 5
        %error "LONG_00408DEA"
    %endif
    times 5 - ($ - %%insn_00408dea) db 0
    %%insn_00408def:
    add esp,0x4 ; 00408DEF 83C404
    %if ($ - %%insn_00408def) > 3
        %error "LONG_00408DEF"
    %endif
    times 3 - ($ - %%insn_00408def) db 0
    db 0x8B, 0xE5 ; 00408DF2 8BE5 | mov esp,ebp | encoding preserved
    %%insn_00408df4:
    pop ebp ; 00408DF4 5D
    %if ($ - %%insn_00408df4) > 1
        %error "LONG_00408DF4"
    %endif
    times 1 - ($ - %%insn_00408df4) db 0
    %%insn_00408df5:
    ret ; 00408DF5 C3
    %if ($ - %%insn_00408df5) > 1
        %error "LONG_00408DF5"
    %endif
    times 1 - ($ - %%insn_00408df5) db 0
    %if ($ - %%fragment_start) != 210
        %error "function fragment size drift: 00408D24"
    %endif
%endmacro
