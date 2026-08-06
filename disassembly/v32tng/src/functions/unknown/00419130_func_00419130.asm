; PE virtual entry 00419130
; Ghidra working symbol: FUN_00419130
; Role not yet verified; analyzer boundary is provisional.
; Generated losslessly; preserve byte identity after edits.

%macro emit_func_00419130_part_00 0
    %%fragment_start:
func_00419130:
    %%insn_00419130:
    push edi ; 00419130 57
    %if ($ - %%insn_00419130) > 1
        %error "LONG_00419130"
    %endif
    times 1 - ($ - %%insn_00419130) db 0
    %%insn_00419131:
    mov edi,[esp+0x8] ; 00419131 8B7C2408
    %if ($ - %%insn_00419131) > 4
        %error "LONG_00419131"
    %endif
    times 4 - ($ - %%insn_00419131) db 0
    db 0x33, 0xC9 ; 00419135 33C9 | xor ecx,ecx | encoding preserved
    %%insn_00419137:
    test edi,edi ; 00419137 85FF
    %if ($ - %%insn_00419137) > 2
        %error "LONG_00419137"
    %endif
    times 2 - ($ - %%insn_00419137) db 0
    %%insn_00419139:
    jnz short 0x41913f ; 00419139 7504
    %if ($ - %%insn_00419139) > 2
        %error "LONG_00419139"
    %endif
    times 2 - ($ - %%insn_00419139) db 0
    db 0x33, 0xC0 ; 0041913B 33C0 | xor eax,eax | encoding preserved
    %%insn_0041913d:
    pop edi ; 0041913D 5F
    %if ($ - %%insn_0041913d) > 1
        %error "LONG_0041913D"
    %endif
    times 1 - ($ - %%insn_0041913d) db 0
    %%insn_0041913e:
    ret ; 0041913E C3
    %if ($ - %%insn_0041913e) > 1
        %error "LONG_0041913E"
    %endif
    times 1 - ($ - %%insn_0041913e) db 0
    %%insn_0041913f:
    mov edx,[edi] ; 0041913F 8B17
    %if ($ - %%insn_0041913f) > 2
        %error "LONG_0041913F"
    %endif
    times 2 - ($ - %%insn_0041913f) db 0
    %%insn_00419141:
    push esi ; 00419141 56
    %if ($ - %%insn_00419141) > 1
        %error "LONG_00419141"
    %endif
    times 1 - ($ - %%insn_00419141) db 0
    %%insn_00419142:
    test edx,edx ; 00419142 85D2
    %if ($ - %%insn_00419142) > 2
        %error "LONG_00419142"
    %endif
    times 2 - ($ - %%insn_00419142) db 0
    %%insn_00419144:
    push ebx ; 00419144 53
    %if ($ - %%insn_00419144) > 1
        %error "LONG_00419144"
    %endif
    times 1 - ($ - %%insn_00419144) db 0
    %%insn_00419145:
    lea eax,[edi+0x4] ; 00419145 8D4704
    %if ($ - %%insn_00419145) > 3
        %error "LONG_00419145"
    %endif
    times 3 - ($ - %%insn_00419145) db 0
    %%insn_00419148:
    jz short 0x419154 ; 00419148 740A
    %if ($ - %%insn_00419148) > 2
        %error "LONG_00419148"
    %endif
    times 2 - ($ - %%insn_00419148) db 0
    %%insn_0041914a:
    mov edx,[eax] ; 0041914A 8B10
    %if ($ - %%insn_0041914a) > 2
        %error "LONG_0041914A"
    %endif
    times 2 - ($ - %%insn_0041914a) db 0
    %%insn_0041914c:
    inc ecx ; 0041914C 41
    %if ($ - %%insn_0041914c) > 1
        %error "LONG_0041914C"
    %endif
    times 1 - ($ - %%insn_0041914c) db 0
    %%insn_0041914d:
    add eax,0x4 ; 0041914D 83C004
    %if ($ - %%insn_0041914d) > 3
        %error "LONG_0041914D"
    %endif
    times 3 - ($ - %%insn_0041914d) db 0
    %%insn_00419150:
    test edx,edx ; 00419150 85D2
    %if ($ - %%insn_00419150) > 2
        %error "LONG_00419150"
    %endif
    times 2 - ($ - %%insn_00419150) db 0
    %%insn_00419152:
    jnz short 0x41914a ; 00419152 75F6
    %if ($ - %%insn_00419152) > 2
        %error "LONG_00419152"
    %endif
    times 2 - ($ - %%insn_00419152) db 0
    %%insn_00419154:
    lea eax,[ecx*4+0x4] ; 00419154 8D048D04000000
    %if ($ - %%insn_00419154) > 7
        %error "LONG_00419154"
    %endif
    times 7 - ($ - %%insn_00419154) db 0
    %%insn_0041915b:
    push eax ; 0041915B 50
    %if ($ - %%insn_0041915b) > 1
        %error "LONG_0041915B"
    %endif
    times 1 - ($ - %%insn_0041915b) db 0
    %%insn_0041915c:
    call 0x40cdc0 ; 0041915C E85F3CFFFF
    %if ($ - %%insn_0041915c) > 5
        %error "LONG_0041915C"
    %endif
    times 5 - ($ - %%insn_0041915c) db 0
    db 0x8B, 0xF0 ; 00419161 8BF0 | mov esi,eax | encoding preserved
    %%insn_00419163:
    add esp,0x4 ; 00419163 83C404
    %if ($ - %%insn_00419163) > 3
        %error "LONG_00419163"
    %endif
    times 3 - ($ - %%insn_00419163) db 0
    %%insn_00419166:
    test esi,esi ; 00419166 85F6
    %if ($ - %%insn_00419166) > 2
        %error "LONG_00419166"
    %endif
    times 2 - ($ - %%insn_00419166) db 0
    db 0x8B, 0xDE ; 00419168 8BDE | mov ebx,esi | encoding preserved
    %%insn_0041916a:
    jnz short 0x419176 ; 0041916A 750A
    %if ($ - %%insn_0041916a) > 2
        %error "LONG_0041916A"
    %endif
    times 2 - ($ - %%insn_0041916a) db 0
    %%insn_0041916c:
    push dword 0x9 ; 0041916C 6A09
    %if ($ - %%insn_0041916c) > 2
        %error "LONG_0041916C"
    %endif
    times 2 - ($ - %%insn_0041916c) db 0
    %%insn_0041916e:
    call 0x40dda0 ; 0041916E E82D4CFFFF
    %if ($ - %%insn_0041916e) > 5
        %error "LONG_0041916E"
    %endif
    times 5 - ($ - %%insn_0041916e) db 0
    %%insn_00419173:
    add esp,0x4 ; 00419173 83C404
    %if ($ - %%insn_00419173) > 3
        %error "LONG_00419173"
    %endif
    times 3 - ($ - %%insn_00419173) db 0
    %%insn_00419176:
    mov eax,[edi] ; 00419176 8B07
    %if ($ - %%insn_00419176) > 2
        %error "LONG_00419176"
    %endif
    times 2 - ($ - %%insn_00419176) db 0
    %%insn_00419178:
    test eax,eax ; 00419178 85C0
    %if ($ - %%insn_00419178) > 2
        %error "LONG_00419178"
    %endif
    times 2 - ($ - %%insn_00419178) db 0
    %%insn_0041917a:
    jz short 0x419193 ; 0041917A 7417
    %if ($ - %%insn_0041917a) > 2
        %error "LONG_0041917A"
    %endif
    times 2 - ($ - %%insn_0041917a) db 0
    %%insn_0041917c:
    push eax ; 0041917C 50
    %if ($ - %%insn_0041917c) > 1
        %error "LONG_0041917C"
    %endif
    times 1 - ($ - %%insn_0041917c) db 0
    %%insn_0041917d:
    add edi,0x4 ; 0041917D 83C704
    %if ($ - %%insn_0041917d) > 3
        %error "LONG_0041917D"
    %endif
    times 3 - ($ - %%insn_0041917d) db 0
    %%insn_00419180:
    call 0x419350 ; 00419180 E8CB010000
    %if ($ - %%insn_00419180) > 5
        %error "LONG_00419180"
    %endif
    times 5 - ($ - %%insn_00419180) db 0
    %%insn_00419185:
    mov [esi],eax ; 00419185 8906
    %if ($ - %%insn_00419185) > 2
        %error "LONG_00419185"
    %endif
    times 2 - ($ - %%insn_00419185) db 0
    %%insn_00419187:
    mov eax,[edi] ; 00419187 8B07
    %if ($ - %%insn_00419187) > 2
        %error "LONG_00419187"
    %endif
    times 2 - ($ - %%insn_00419187) db 0
    %%insn_00419189:
    add esp,0x4 ; 00419189 83C404
    %if ($ - %%insn_00419189) > 3
        %error "LONG_00419189"
    %endif
    times 3 - ($ - %%insn_00419189) db 0
    %%insn_0041918c:
    add esi,0x4 ; 0041918C 83C604
    %if ($ - %%insn_0041918c) > 3
        %error "LONG_0041918C"
    %endif
    times 3 - ($ - %%insn_0041918c) db 0
    %%insn_0041918f:
    test eax,eax ; 0041918F 85C0
    %if ($ - %%insn_0041918f) > 2
        %error "LONG_0041918F"
    %endif
    times 2 - ($ - %%insn_0041918f) db 0
    %%insn_00419191:
    jnz short 0x41917c ; 00419191 75E9
    %if ($ - %%insn_00419191) > 2
        %error "LONG_00419191"
    %endif
    times 2 - ($ - %%insn_00419191) db 0
    db 0x8B, 0xC3 ; 00419193 8BC3 | mov eax,ebx | encoding preserved
    %%insn_00419195:
    mov dword [esi],0x0 ; 00419195 C70600000000
    %if ($ - %%insn_00419195) > 6
        %error "LONG_00419195"
    %endif
    times 6 - ($ - %%insn_00419195) db 0
    %%insn_0041919b:
    pop ebx ; 0041919B 5B
    %if ($ - %%insn_0041919b) > 1
        %error "LONG_0041919B"
    %endif
    times 1 - ($ - %%insn_0041919b) db 0
    %%insn_0041919c:
    pop esi ; 0041919C 5E
    %if ($ - %%insn_0041919c) > 1
        %error "LONG_0041919C"
    %endif
    times 1 - ($ - %%insn_0041919c) db 0
    %%insn_0041919d:
    pop edi ; 0041919D 5F
    %if ($ - %%insn_0041919d) > 1
        %error "LONG_0041919D"
    %endif
    times 1 - ($ - %%insn_0041919d) db 0
    %%insn_0041919e:
    ret ; 0041919E C3
    %if ($ - %%insn_0041919e) > 1
        %error "LONG_0041919E"
    %endif
    times 1 - ($ - %%insn_0041919e) db 0
    %if ($ - %%fragment_start) != 111
        %error "function fragment size drift: 00419130"
    %endif
%endmacro
