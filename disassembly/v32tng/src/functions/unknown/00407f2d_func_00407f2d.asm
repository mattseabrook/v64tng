; PE virtual entry 00407F2D
; Ghidra working symbol: FUN_00407f2d
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00407f2d_part_00 0
    %%fragment_start:
func_00407f2d:
    %%insn_00407f2d:
    push ebp ; 00407F2D 55
    %if ($ - %%insn_00407f2d) > 1
        %error "LONG_00407F2D"
    %endif
    times 1 - ($ - %%insn_00407f2d) db 0
    db 0x8B, 0xEC ; 00407F2E 8BEC | mov ebp,esp | encoding preserved
    %%insn_00407f30:
    sub esp,0x40c ; 00407F30 81EC0C040000
    %if ($ - %%insn_00407f30) > 6
        %error "LONG_00407F30"
    %endif
    times 6 - ($ - %%insn_00407f30) db 0
    %%insn_00407f36:
    mov [ebp-0x40c],ecx ; 00407F36 898DF4FBFFFF
    %if ($ - %%insn_00407f36) > 6
        %error "LONG_00407F36"
    %endif
    times 6 - ($ - %%insn_00407f36) db 0
    %%insn_00407f3c:
    mov dword [ebp-0x408],0x0 ; 00407F3C C785F8FBFFFF00000000
    %if ($ - %%insn_00407f3c) > 10
        %error "LONG_00407F3C"
    %endif
    times 10 - ($ - %%insn_00407f3c) db 0
    %%insn_00407f46:
    jmp short 0x407f57 ; 00407F46 EB0F
    %if ($ - %%insn_00407f46) > 2
        %error "LONG_00407F46"
    %endif
    times 2 - ($ - %%insn_00407f46) db 0
    %%insn_00407f48:
    mov eax,[ebp-0x408] ; 00407F48 8B85F8FBFFFF
    %if ($ - %%insn_00407f48) > 6
        %error "LONG_00407F48"
    %endif
    times 6 - ($ - %%insn_00407f48) db 0
    %%insn_00407f4e:
    add eax,0x1 ; 00407F4E 83C001
    %if ($ - %%insn_00407f4e) > 3
        %error "LONG_00407F4E"
    %endif
    times 3 - ($ - %%insn_00407f4e) db 0
    %%insn_00407f51:
    mov [ebp-0x408],eax ; 00407F51 8985F8FBFFFF
    %if ($ - %%insn_00407f51) > 6
        %error "LONG_00407F51"
    %endif
    times 6 - ($ - %%insn_00407f51) db 0
    %%insn_00407f57:
    cmp dword [ebp-0x408],0x100 ; 00407F57 81BDF8FBFFFF00010000
    %if ($ - %%insn_00407f57) > 10
        %error "LONG_00407F57"
    %endif
    times 10 - ($ - %%insn_00407f57) db 0
    %%insn_00407f61:
    jnl short 0x407fd0 ; 00407F61 7D6D
    %if ($ - %%insn_00407f61) > 2
        %error "LONG_00407F61"
    %endif
    times 2 - ($ - %%insn_00407f61) db 0
    %%insn_00407f63:
    mov ecx,[ebp-0x408] ; 00407F63 8B8DF8FBFFFF
    %if ($ - %%insn_00407f63) > 6
        %error "LONG_00407F63"
    %endif
    times 6 - ($ - %%insn_00407f63) db 0
    %%insn_00407f69:
    imul ecx,ecx,0x3 ; 00407F69 6BC903
    %if ($ - %%insn_00407f69) > 3
        %error "LONG_00407F69"
    %endif
    times 3 - ($ - %%insn_00407f69) db 0
    %%insn_00407f6c:
    mov edx,[ebp-0x40c] ; 00407F6C 8B95F4FBFFFF
    %if ($ - %%insn_00407f6c) > 6
        %error "LONG_00407F6C"
    %endif
    times 6 - ($ - %%insn_00407f6c) db 0
    %%insn_00407f72:
    mov eax,[edx+0x44] ; 00407F72 8B4244
    %if ($ - %%insn_00407f72) > 3
        %error "LONG_00407F72"
    %endif
    times 3 - ($ - %%insn_00407f72) db 0
    %%insn_00407f75:
    mov edx,[ebp-0x408] ; 00407F75 8B95F8FBFFFF
    %if ($ - %%insn_00407f75) > 6
        %error "LONG_00407F75"
    %endif
    times 6 - ($ - %%insn_00407f75) db 0
    %%insn_00407f7b:
    mov al,[eax+ecx] ; 00407F7B 8A0408
    %if ($ - %%insn_00407f7b) > 3
        %error "LONG_00407F7B"
    %endif
    times 3 - ($ - %%insn_00407f7b) db 0
    %%insn_00407f7e:
    mov [ebp+edx*4-0x400],al ; 00407F7E 88849500FCFFFF
    %if ($ - %%insn_00407f7e) > 7
        %error "LONG_00407F7E"
    %endif
    times 7 - ($ - %%insn_00407f7e) db 0
    %%insn_00407f85:
    mov ecx,[ebp-0x408] ; 00407F85 8B8DF8FBFFFF
    %if ($ - %%insn_00407f85) > 6
        %error "LONG_00407F85"
    %endif
    times 6 - ($ - %%insn_00407f85) db 0
    %%insn_00407f8b:
    imul ecx,ecx,0x3 ; 00407F8B 6BC903
    %if ($ - %%insn_00407f8b) > 3
        %error "LONG_00407F8B"
    %endif
    times 3 - ($ - %%insn_00407f8b) db 0
    %%insn_00407f8e:
    mov edx,[ebp-0x40c] ; 00407F8E 8B95F4FBFFFF
    %if ($ - %%insn_00407f8e) > 6
        %error "LONG_00407F8E"
    %endif
    times 6 - ($ - %%insn_00407f8e) db 0
    %%insn_00407f94:
    mov eax,[edx+0x44] ; 00407F94 8B4244
    %if ($ - %%insn_00407f94) > 3
        %error "LONG_00407F94"
    %endif
    times 3 - ($ - %%insn_00407f94) db 0
    %%insn_00407f97:
    mov edx,[ebp-0x408] ; 00407F97 8B95F8FBFFFF
    %if ($ - %%insn_00407f97) > 6
        %error "LONG_00407F97"
    %endif
    times 6 - ($ - %%insn_00407f97) db 0
    %%insn_00407f9d:
    mov al,[eax+ecx+0x1] ; 00407F9D 8A440801
    %if ($ - %%insn_00407f9d) > 4
        %error "LONG_00407F9D"
    %endif
    times 4 - ($ - %%insn_00407f9d) db 0
    %%insn_00407fa1:
    mov [ebp+edx*4-0x3ff],al ; 00407FA1 88849501FCFFFF
    %if ($ - %%insn_00407fa1) > 7
        %error "LONG_00407FA1"
    %endif
    times 7 - ($ - %%insn_00407fa1) db 0
    %%insn_00407fa8:
    mov ecx,[ebp-0x408] ; 00407FA8 8B8DF8FBFFFF
    %if ($ - %%insn_00407fa8) > 6
        %error "LONG_00407FA8"
    %endif
    times 6 - ($ - %%insn_00407fa8) db 0
    %%insn_00407fae:
    imul ecx,ecx,0x3 ; 00407FAE 6BC903
    %if ($ - %%insn_00407fae) > 3
        %error "LONG_00407FAE"
    %endif
    times 3 - ($ - %%insn_00407fae) db 0
    %%insn_00407fb1:
    mov edx,[ebp-0x40c] ; 00407FB1 8B95F4FBFFFF
    %if ($ - %%insn_00407fb1) > 6
        %error "LONG_00407FB1"
    %endif
    times 6 - ($ - %%insn_00407fb1) db 0
    %%insn_00407fb7:
    mov eax,[edx+0x44] ; 00407FB7 8B4244
    %if ($ - %%insn_00407fb7) > 3
        %error "LONG_00407FB7"
    %endif
    times 3 - ($ - %%insn_00407fb7) db 0
    %%insn_00407fba:
    mov edx,[ebp-0x408] ; 00407FBA 8B95F8FBFFFF
    %if ($ - %%insn_00407fba) > 6
        %error "LONG_00407FBA"
    %endif
    times 6 - ($ - %%insn_00407fba) db 0
    %%insn_00407fc0:
    mov al,[eax+ecx+0x2] ; 00407FC0 8A440802
    %if ($ - %%insn_00407fc0) > 4
        %error "LONG_00407FC0"
    %endif
    times 4 - ($ - %%insn_00407fc0) db 0
    %%insn_00407fc4:
    mov [ebp+edx*4-0x3fe],al ; 00407FC4 88849502FCFFFF
    %if ($ - %%insn_00407fc4) > 7
        %error "LONG_00407FC4"
    %endif
    times 7 - ($ - %%insn_00407fc4) db 0
    %%insn_00407fcb:
    jmp 0x407f48 ; 00407FCB E978FFFFFF
    %if ($ - %%insn_00407fcb) > 5
        %error "LONG_00407FCB"
    %endif
    times 5 - ($ - %%insn_00407fcb) db 0
    %%insn_00407fd0:
    lea ecx,[ebp-0x400] ; 00407FD0 8D8D00FCFFFF
    %if ($ - %%insn_00407fd0) > 6
        %error "LONG_00407FD0"
    %endif
    times 6 - ($ - %%insn_00407fd0) db 0
    %%insn_00407fd6:
    push ecx ; 00407FD6 51
    %if ($ - %%insn_00407fd6) > 1
        %error "LONG_00407FD6"
    %endif
    times 1 - ($ - %%insn_00407fd6) db 0
    %%insn_00407fd7:
    push dword 0x100 ; 00407FD7 6800010000
    %if ($ - %%insn_00407fd7) > 5
        %error "LONG_00407FD7"
    %endif
    times 5 - ($ - %%insn_00407fd7) db 0
    %%insn_00407fdc:
    push dword 0x0 ; 00407FDC 6A00
    %if ($ - %%insn_00407fdc) > 2
        %error "LONG_00407FDC"
    %endif
    times 2 - ($ - %%insn_00407fdc) db 0
    %%insn_00407fde:
    push dword 0x0 ; 00407FDE 6A00
    %if ($ - %%insn_00407fde) > 2
        %error "LONG_00407FDE"
    %endif
    times 2 - ($ - %%insn_00407fde) db 0
    %%insn_00407fe0:
    mov edx,[0x42142c] ; 00407FE0 8B152C144200
    %if ($ - %%insn_00407fe0) > 6
        %error "LONG_00407FE0"
    %endif
    times 6 - ($ - %%insn_00407fe0) db 0
    %%insn_00407fe6:
    push edx ; 00407FE6 52
    %if ($ - %%insn_00407fe6) > 1
        %error "LONG_00407FE6"
    %endif
    times 1 - ($ - %%insn_00407fe6) db 0
    %%insn_00407fe7:
    mov eax,[0x42142c] ; 00407FE7 A12C144200
    %if ($ - %%insn_00407fe7) > 5
        %error "LONG_00407FE7"
    %endif
    times 5 - ($ - %%insn_00407fe7) db 0
    %%insn_00407fec:
    mov ecx,[eax] ; 00407FEC 8B08
    %if ($ - %%insn_00407fec) > 2
        %error "LONG_00407FEC"
    %endif
    times 2 - ($ - %%insn_00407fec) db 0
    %%insn_00407fee:
    call dword near [ecx+0x18] ; 00407FEE FF5118
    %if ($ - %%insn_00407fee) > 3
        %error "LONG_00407FEE"
    %endif
    times 3 - ($ - %%insn_00407fee) db 0
    %%insn_00407ff1:
    mov [ebp-0x404],eax ; 00407FF1 8985FCFBFFFF
    %if ($ - %%insn_00407ff1) > 6
        %error "LONG_00407FF1"
    %endif
    times 6 - ($ - %%insn_00407ff1) db 0
    %%insn_00407ff7:
    cmp dword [ebp-0x404],0x0 ; 00407FF7 83BDFCFBFFFF00
    %if ($ - %%insn_00407ff7) > 7
        %error "LONG_00407FF7"
    %endif
    times 7 - ($ - %%insn_00407ff7) db 0
    %%insn_00407ffe:
    jz short 0x408007 ; 00407FFE 7407
    %if ($ - %%insn_00407ffe) > 2
        %error "LONG_00407FFE"
    %endif
    times 2 - ($ - %%insn_00407ffe) db 0
    %%insn_00408000:
    mov eax,0x8 ; 00408000 B808000000
    %if ($ - %%insn_00408000) > 5
        %error "LONG_00408000"
    %endif
    times 5 - ($ - %%insn_00408000) db 0
    %%insn_00408005:
    jmp short 0x408009 ; 00408005 EB02
    %if ($ - %%insn_00408005) > 2
        %error "LONG_00408005"
    %endif
    times 2 - ($ - %%insn_00408005) db 0
    db 0x33, 0xC0 ; 00408007 33C0 | xor eax,eax | encoding preserved
    db 0x8B, 0xE5 ; 00408009 8BE5 | mov esp,ebp | encoding preserved
    %%insn_0040800b:
    pop ebp ; 0040800B 5D
    %if ($ - %%insn_0040800b) > 1
        %error "LONG_0040800B"
    %endif
    times 1 - ($ - %%insn_0040800b) db 0
    %%insn_0040800c:
    ret ; 0040800C C3
    %if ($ - %%insn_0040800c) > 1
        %error "LONG_0040800C"
    %endif
    times 1 - ($ - %%insn_0040800c) db 0
    %if ($ - %%fragment_start) != 224
        %error "function fragment size drift: 00407F2D"
    %endif
%endmacro
