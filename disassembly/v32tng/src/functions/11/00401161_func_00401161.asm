; PE virtual entry 00401161
; Ghidra working symbol: FUN_00401161
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00401161_part_00 0
    %%fragment_start:
func_00401161:
    %%insn_00401161:
    push ebp ; 00401161 55
    %if ($ - %%insn_00401161) > 1
        %error "LONG_00401161"
    %endif
    times 1 - ($ - %%insn_00401161) db 0
    db 0x8B, 0xEC ; 00401162 8BEC | mov ebp,esp | encoding preserved
    %%insn_00401164:
    push ecx ; 00401164 51
    %if ($ - %%insn_00401164) > 1
        %error "LONG_00401164"
    %endif
    times 1 - ($ - %%insn_00401164) db 0
    %%insn_00401165:
    mov dword [ebp-0x4],0x0 ; 00401165 C745FC00000000
    %if ($ - %%insn_00401165) > 7
        %error "LONG_00401165"
    %endif
    times 7 - ($ - %%insn_00401165) db 0
    %%insn_0040116c:
    jmp short 0x401177 ; 0040116C EB09
    %if ($ - %%insn_0040116c) > 2
        %error "LONG_0040116C"
    %endif
    times 2 - ($ - %%insn_0040116c) db 0
    %%insn_0040116e:
    mov eax,[ebp-0x4] ; 0040116E 8B45FC
    %if ($ - %%insn_0040116e) > 3
        %error "LONG_0040116E"
    %endif
    times 3 - ($ - %%insn_0040116e) db 0
    %%insn_00401171:
    add eax,0x1 ; 00401171 83C001
    %if ($ - %%insn_00401171) > 3
        %error "LONG_00401171"
    %endif
    times 3 - ($ - %%insn_00401171) db 0
    %%insn_00401174:
    mov [ebp-0x4],eax ; 00401174 8945FC
    %if ($ - %%insn_00401174) > 3
        %error "LONG_00401174"
    %endif
    times 3 - ($ - %%insn_00401174) db 0
    %%insn_00401177:
    cmp dword [ebp-0x4],0x15 ; 00401177 837DFC15
    %if ($ - %%insn_00401177) > 4
        %error "LONG_00401177"
    %endif
    times 4 - ($ - %%insn_00401177) db 0
    %%insn_0040117b:
    jnl short 0x40119f ; 0040117B 7D22
    %if ($ - %%insn_0040117b) > 2
        %error "LONG_0040117B"
    %endif
    times 2 - ($ - %%insn_0040117b) db 0
    %%insn_0040117d:
    mov ecx,[ebp-0x4] ; 0040117D 8B4DFC
    %if ($ - %%insn_0040117d) > 3
        %error "LONG_0040117D"
    %endif
    times 3 - ($ - %%insn_0040117d) db 0
    %%insn_00401180:
    cmp dword [ecx*8+0x4223a4],0x0 ; 00401180 833CCDA423420000
    %if ($ - %%insn_00401180) > 8
        %error "LONG_00401180"
    %endif
    times 8 - ($ - %%insn_00401180) db 0
    %%insn_00401188:
    jz short 0x40119d ; 00401188 7413
    %if ($ - %%insn_00401188) > 2
        %error "LONG_00401188"
    %endif
    times 2 - ($ - %%insn_00401188) db 0
    %%insn_0040118a:
    mov edx,[ebp-0x4] ; 0040118A 8B55FC
    %if ($ - %%insn_0040118a) > 3
        %error "LONG_0040118A"
    %endif
    times 3 - ($ - %%insn_0040118a) db 0
    %%insn_0040118d:
    mov eax,[edx*8+0x4223a4] ; 0040118D 8B04D5A4234200
    %if ($ - %%insn_0040118d) > 7
        %error "LONG_0040118D"
    %endif
    times 7 - ($ - %%insn_0040118d) db 0
    %%insn_00401194:
    push eax ; 00401194 50
    %if ($ - %%insn_00401194) > 1
        %error "LONG_00401194"
    %endif
    times 1 - ($ - %%insn_00401194) db 0
    %%insn_00401195:
    call 0x40c9a0 ; 00401195 E806B80000
    %if ($ - %%insn_00401195) > 5
        %error "LONG_00401195"
    %endif
    times 5 - ($ - %%insn_00401195) db 0
    %%insn_0040119a:
    add esp,0x4 ; 0040119A 83C404
    %if ($ - %%insn_0040119a) > 3
        %error "LONG_0040119A"
    %endif
    times 3 - ($ - %%insn_0040119a) db 0
    %%insn_0040119d:
    jmp short 0x40116e ; 0040119D EBCF
    %if ($ - %%insn_0040119d) > 2
        %error "LONG_0040119D"
    %endif
    times 2 - ($ - %%insn_0040119d) db 0
    db 0x8B, 0xE5 ; 0040119F 8BE5 | mov esp,ebp | encoding preserved
    %%insn_004011a1:
    pop ebp ; 004011A1 5D
    %if ($ - %%insn_004011a1) > 1
        %error "LONG_004011A1"
    %endif
    times 1 - ($ - %%insn_004011a1) db 0
    %%insn_004011a2:
    ret ; 004011A2 C3
    %if ($ - %%insn_004011a2) > 1
        %error "LONG_004011A2"
    %endif
    times 1 - ($ - %%insn_004011a2) db 0
    %if ($ - %%fragment_start) != 66
        %error "function fragment size drift: 00401161"
    %endif
%endmacro
